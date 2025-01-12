from models import Satellite

def insert_satellites(csv_file):
    with open(csv_file, 'r') as f:
        lines = f.read().strip().split('\n')
    for line in lines[1:2]:
        fields = line.split(',')
        url = fields[0]
        name = fields[1]
        launch_date = fields[2]
        launching_rocket = fields[3]
        position = fields[4][:-1]
        position_direction = fields[4][-1]
        region = fields[5]
        satellite = Satellite(
                    url=url,
                    name=name,
                    launch_date=launch_date,
                    launching_rocket=launching_rocket,
                    position=position,
                    position_direction = position_direction,
                    region=region
                )
        satellite.save()

insert_satellites('satellites.csv')