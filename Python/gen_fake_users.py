import csv
import random
from faker import Faker

fake = Faker()

def generate_fake_user():
    email = fake.email()
    username = fake.user_name()
    gender = random.choice(['Male', 'Female'])
    birthdate = fake.date_of_birth(minimum_age=18, maximum_age=90).strftime('%Y-%m-%d')
    region =  random.choice(['asia', 'europe', 'atlantic', 'america'])
    return [email, username, gender, birthdate, region]

num_users = 100

user_data = [generate_fake_user() for _ in range(num_users)]

with open('fake_users2.csv', 'w', newline='') as csvfile:
    csv_writer = csv.writer(csvfile)
    csv_writer.writerow(['Email', 'Username', 'Gender', 'Birthdate', 'Region'])
    csv_writer.writerows(user_data)

print("Fake user data has been generated and saved to fake_users.csv")