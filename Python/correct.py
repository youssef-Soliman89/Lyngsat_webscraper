"sat_name	url	name	beam	freq	sr	fec	v_enc	lang	enc	ch_type"
with open('sat_channels.csv', 'r') as f:
    lines = f.read().strip().split('\n')


base_link = 'https://www.lyngsat.com'

networks = dict()
channels = dict()
channel_to_sat = set()
network_to_sat = set()

for line in lines[1:]:
    fields = line.split(',')
    sat_name = fields[0].strip()
    url = fields[1].strip()
    ch_name = fields[2].strip()
    beam = fields[3].strip()
    freq = fields[4].strip()
    sr = fields[5].strip()
    fec = fields[6].strip()
    v_enc = fields[7].strip()
    lang = fields[8].strip()
    enc = fields[9].strip()
    ch_type = fields[10].strip()
    sat_url = f'{base_link}/tracker/{sat_name[1:-1]}.html'
    
    if url == '""':
        # probably a test field
        continue
    if 'provider' in ch_type:
        networks[url] = tuple(fields[1:])
        network_to_sat.add((sat_url,url))
    else:
        channels[url] = tuple(fields[1:])
        channel_to_sat.add((sat_url,url))


with open('networks.csv','w') as f:
    f.write("url,name,beam,freq,sr,fec,v_enc,lang,enc,ch_type\n")
    for item in networks.values():
        f.write(','.join(item))
        f.write("\n")
with open('channels.csv','w') as f:
    f.write("url,name,beam,freq,sr,fec,v_enc,lang,enc,ch_type\n")
    for item in channels.values():
         f.write(','.join(item))
         f.write("\n")
with open('sat_to_channels.csv','w') as f:
    f.write("sat_url,ch_url\n")
    for item in channel_to_sat:
         f.write(','.join(item))
         f.write("\n")
with open('sat_to_network.csv', 'w') as f:
    f.write("sat_url,net_url\n")
    for item in network_to_sat:
         f.write(','.join(item))
         f.write("\n")