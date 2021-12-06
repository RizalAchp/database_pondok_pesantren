from faker import Faker
from time import sleep

faker = Faker('id_ID')

while True:
     print(faker.pricetag())
     sleep(1.0)

