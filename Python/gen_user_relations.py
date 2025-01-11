import random

def get_user_emails(filename):
    data = []
    with open(filename, 'r') as f:
        lines =  f.read().strip().split('\n')
        for line in lines[1:]:
            fields = line.split(',')
            data.append({'email': fields[0], 'region': fields[-1]})
    return data

def get_region_to_url(filename):
    regions_to_urls = dict()
    with open(filename, 'r') as f:
        lines = f.read().strip().split('\n')
        for line in lines[1:]:
            fields = line.split(',')
            region = fields[-1]
            url = fields[0]
            if region not in regions_to_urls:
                regions_to_urls[region] = []
            
            regions_to_urls[region].append(url)
    return regions_to_urls


def generate_user_urls(filename, user_info, region_to_url):
    with open(filename, 'w') as f:
        f.write('email, url, fav\n')
        for item in user_info:
            email = item['email']
            region = item['region']
            urls = region_to_url[region]
            count = random.randint(1,10)
            chosen_urls = random.choices(urls, k=count)
            for c_url in chosen_urls:
                fav = random.randint(0,1)
                f.write(f'{email},{c_url},{fav}\n')

            

user_emails = get_user_emails('fake_users2.csv')
region_to_network = get_region_to_url('network_region.csv')
region_to_channel = get_region_to_url('channel_region.csv')


generate_user_urls('users_networks.csv',user_emails,region_to_network)
generate_user_urls('users_channels.csv',user_emails,region_to_channel)