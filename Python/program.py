from classes import Satalite,Channel
from utils import *

def get_name(link):
    index = link.rfind('/')
    name = link[index+1:-5]
    return name


def get_tracker_info_from_text(text):
    lines = text.strip().split('\n')
    d = {
        'rocket_name': None,
        'launch_date': None,
        'beacon_freq': None,
    }
    
    try:
        if len(lines) > 0:
            date_str = lines[0][-11:-1]
            date = datetime.strptime(date_str, "%Y-%m-%d").date()
            d['launch_date'] = date
            index = lines[0].find('launched with') + len('launched with')
            rocket_name = lines[0][index:-11].strip()
            d['rocket_name'] = rocket_name

        if len(lines) > 1:
            index = lines[1].find(':') + 1
            beacon_freq = list(map(str.strip, lines[1][index:].split('/')))
            d['beacon_freq'] = beacon_freq
    except ValueError as e:
        print("Error parsing date:", e)
        d['launch_date'] = ''

    return d

def get_tracker_info(link):
    try:
        soup = get_html(link, True)
        pos_el = soup.select("body > div > table > tbody > tr > td > table > tbody > tr > td > font > b > font")
        pos_text = pos_el[0].text
        index = pos_text.index('at') + len('at')
        pos1 = pos_text[index:].strip()
        if 'at' in pos1:
            pos1 = pos1.split('at')[-1].strip()  
        pos = pos1
        font_element = soup.select("body > div > table > tbody > tr > td > font")
        text = font_element[0].text
        result = get_tracker_info_from_text(text)
        result['pos'] = pos
        return result
    except Exception as e:
        print("Error:", e)
        return {'pos': ''}
    
def get_satalite_info(link):
    'document.querySelector("body > div > table > tbody > tr > td:nth-child(2) > table:nth-child(13)")'
    soup = get_html(link, True)
    table = soup.select("body > div > table > tbody > tr > td:nth-child(2) > table:nth-child(13)")
    
    try:
        table = table[0]  # Access the first element of the list
    except IndexError:
        print("Error: Table element not found")
        return []  # Return an empty list if table element is not found
    
    rows = table.find_all('tr')[2:-1]
    table_data = []
    for row in rows:
        row_data = []
        columns = row.find_all('td')
        for col in columns:
            row_data.append(col)
        table_data.append(row_data)
    
    freq = ''
    beam = ''
    SR = ''
    fec = ''
    channels = []
    for row in table_data:
        name = ''
        v_enc = ''
        lang = ''
        enc = ''
        url = ''
        channel_type = 'tv'
        for i, field in enumerate(row, start=10 - len(row)):
            try:
                if i == 0:
                    field = field.get_text(separator='\n')
                    lines = field.split('\n')
                    freq = lines[0].strip()
                    freq = freq[:-2] + ' ' + freq[-1]
                    if len(lines) >= 3:
                        beam = lines[2].strip()
                    else:
                        beam = None
                elif i == 1:
                    field = field.get_text(separator='\n')
                    lines = field.split('\n')
                    last_line = lines[-1]
                    if '/' in last_line:
                        fec = last_line
                        SR = lines[-2]
                    else:
                        fec = ''
                        SR = last_line
                elif i == 3:
                    links = field.find_all('a')
                    url = links[0]['href'] if len(links) > 0 else ''
                    if 'tvchannel' in url:
                        channel_type = 'tv'
                    elif 'radio' in url:
                        channel_type = 'radio'
                    else:
                        channel_type = 'provider'
                    field = field.get_text(separator='\n')
                    if '\n' in field:
                        fields = field.split('\n')
                        field = ' '.join([f for f in fields if len(f) > 1])
                    name = field
                elif i == 5:
                    lines = field.get_text(separator='\n').split('\n')
                    v_enc = lines[-1]
                elif i == 7:
                    lines = field.get_text(separator='\n').split()
                    lang = lines[-1] if len(lines) > 1 else ''
                elif i == 8:
                    enc = field.get_text(separator=' ')
            except IndexError:
                print("Error: ")
               
        
        ch = Channel(url, name, beam, freq, SR, fec, v_enc, lang, enc, channel_type)
        channels.append(ch)
    
    return channels



def extract_satalite_info(satalite_tracker_link, region=''): 
    satalite_name = get_name(satalite_tracker_link)
    satalite_page_link = f'{base_link}/{satalite_name}.html'
    tracker_info = get_tracker_info(satalite_tracker_link)
    launch_date = tracker_info.get('launch_date', '')
    rocket_name = tracker_info.get('rocket_name', '')
    pos = tracker_info.get('pos', '')
    beacon_freq = tracker_info.get('beacon_freq', '')
    channels = get_satalite_info(satalite_page_link)
    sat = Satalite(satalite_name, launch_date, rocket_name, pos, beacon_freq, region, channels)
    return sat

import concurrent.futures
from functools import partial

def process_link(link, region):
    print("link: ", link)
    sat = extract_satalite_info(link, region)
    with open('sat_info.csv', 'a') as f:
        f.write(str(sat))
        f.write('\n')

    with open('sat_channels.csv', 'a') as f:
        f.write(sat.get_channels_text())

def parallel_process(items):
    with concurrent.futures.ThreadPoolExecutor(max_workers=8) as executor:
        # Submit each task to the thread pool
        futures = [executor.submit(partial(process_link, link, region)) for link, region in items]
        # Wait for all tasks to complete
        for future in concurrent.futures.as_completed(futures):
            # Handle any exceptions that occurred during execution
            try:
                future.result()
            except Exception as e:
                print("An error occurred:", e)

if __name__ == "__main__":
    with open('sat_info.csv', 'w') as f:
        f.write(Satalite.get_headers())
        f.write('\n')

    with open('sat_channels.csv', 'w') as f:
        f.write(Satalite.get_channel_headers())
        f.write('\n')

    items = read_csv('satalite_links_info.csv')
    for link,region in items:
        process_link(link,region)
