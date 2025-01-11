class Channel:
    def __init__(self, url, name, beam, freq, sr, fec, v_enc, lang, enc,ch_type) -> None:
        self.url = url
        self.name = name
        self.beam = beam
        self.freq = freq
        self.sr = sr
        self.fec = fec
        self.v_enc = v_enc
        self.lang = lang
        self.enc = enc
        self.ch_type = ch_type

    @staticmethod
    def get_headers() -> str:
        return 'url,name,beam,freq,sr,fec,v_enc,lang,enc,ch_type'
    
    def __str__(self) -> str:
        return f'"{self.url}","{self.name}","{self.beam}","{self.freq}","{self.sr}","{self.fec}","{self.v_enc}","{self.lang}","{self.enc}","{self.ch_type}"'

    def __repr__(self) -> str:
        return self.__str__()


class Satalite:
    def __init__(self,
                 name='',
                 launch_date='',
                 launching_rocket='',
                 position='',
                 beacon_freq='',
                 region='',
                 channels='') -> None:
        self.name = name
        self.launch_date = launch_date
        self.launching_rocket = launching_rocket
        self.position = position
        self.beacon_freq = beacon_freq
        self.region = region
        self.channels = channels
    
    def __str__(self):
        return f'"{self.name}","{self.launch_date}","{self.launching_rocket}","{self.position}","{self.region}", "{self.beacon_freq}"'
    
    @staticmethod
    def get_headers() -> str:
        return 'name,launch_date,launching_rocket,position,region,beacon_freq'
    
    def __repr__(self) -> str:
        return self.__str__()
    
    def get_channels_text(self):
        text = ''
        for channel in self.channels:
            text += f'"{self.name}",' + str(channel) + '\n'
        return text
    
    @staticmethod
    def get_channel_headers():
        return 'sat_name,' + Channel.get_headers()

