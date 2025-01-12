from django.db import models
from django.contrib.auth.models import User

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    gender = models.CharField(max_length=10)
    birthdate = models.DateField()
    region = models.CharField(max_length=100)
    user_channels = models.ManyToManyField('Channel', related_name='users', blank=True)
    user_favorite_channels = models.ManyToManyField('Channel', related_name='fav_users', blank=True)
    user_networks = models.ManyToManyField('Network', related_name='users', blank=True)


class Satellite(models.Model):
    url = models.CharField(max_length=300)
    name = models.CharField(max_length=100)
    launch_date = models.DateField(blank=True)
    launching_rocket = models.CharField(max_length=100,blank=True)
    position = models.FloatField()
    position_direction = models.CharField(max_length=1)
    region = models.CharField(max_length=50)
    channels = models.ManyToManyField('Channel', related_name='satellites')
    networks = models.ManyToManyField('Network', related_name='satellites')


    def __str__(self):
        return self.name


class Channel(models.Model):
    url = models.CharField(max_length=255)
    name = models.CharField(max_length=150)
    beam = models.CharField(max_length=50, blank=True)
    frequency = models.IntegerField(blank=True)
    frequency_polarization = models.CharField(max_length=1, blank=True)
    symbol_rate = models.CharField(max_length=40, blank=True)
    forward_error_correction = models.CharField(max_length=200, blank=True)
    video_encoding = models.CharField(max_length=100, blank=True)
    language = models.CharField(max_length=20, blank=True)
    encryption = models.CharField(max_length=100, blank=True)
    ch_type = models.CharField(max_length=20)

    def __str__(self):
        return self.name
    

class Network(models.Model):
    url = models.CharField(max_length=255)
    name = models.CharField(max_length=150)
    language = models.CharField(max_length=20, blank=True)

    def __str__(self):
        return self.name

                               