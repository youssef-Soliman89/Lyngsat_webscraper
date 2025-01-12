from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from .models import Profile

class SignUpForm(UserCreationForm):
    email = forms.EmailField(max_length=254, help_text='Required. Inform a valid email address.')
    gender = forms.CharField(max_length=10)
    birthdate = forms.DateField(widget=forms.DateInput(attrs={'type': 'date'}))
    region = forms.CharField(max_length=100)

    class Meta:
        model = User
        fields = ('username', 'email', 'password1', 'password2', 'gender', 'birthdate', 'region')

class ProfileUpdateForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = ('gender', 'birthdate', 'region', 'user_channels','user_favorite_channels', 'user_networks')



class SatelliteSearchForm(forms.Form):
    SORT_CHOICES = (
        ('name', 'Name'),
        ('launch_date', 'Launch Date'),
        ('region', 'Region'),
        ('position', 'Position'),
        ('-networks_count', 'Network Count'),
        ('-channels_count', 'Channel Count'),
    )

    name = forms.CharField(required=False)
    launch_date_start = forms.DateField(required=False)
    launch_date_end = forms.DateField(required=False)
    launching_rocket = forms.CharField(required=False)
    region = forms.CharField(required=False)
    position_start = forms.FloatField(required=False)
    position_end = forms.FloatField(required=False)
    position_direction = forms.CharField(required=False)
    covered_channel_name = forms.CharField(required=False)
    covered_network_name = forms.CharField(required=False)
    order_by = forms.ChoiceField(choices=SORT_CHOICES, required=False)
    limit = forms.IntegerField(required=False)



class NetworkSearchForm(forms.Form):
    SORT_CHOICES = (
        ('name', 'Name'),
        ('language', 'Language'),
        ('-satellites_count', 'Satellite Count'),
        ('-users_count', 'Most Used'),
    )

    name = forms.CharField(required=False)
    language = forms.CharField(required=False)
    
    longitude_start = forms.FloatField(required=False)
    longitude_end = forms.FloatField(required=False)
    covering_satellite_name = forms.CharField(required=False)
    username = forms.CharField(required=False)

    order_by = forms.ChoiceField(choices=SORT_CHOICES, required=False)
    limit = forms.IntegerField(required=False)


class ChannelSearchForm(forms.Form):
    SORT_CHOICES = (
        ('name', 'Name'),
        ('beam', 'Beam'),
        ('frequency', 'Frequency'),
        ('symbol_rate', 'Symbol Rate (SR)'),
        ('forward_error_correction', 'Forward Error Correction (FEC)'),
        ('video_encoding', 'Video Encoding'),
        ('language', 'Language'),
        ('encryption', 'Encryption'),
        ('ch_type', 'Channel Type'),
        ('-satellites_count', 'Satellite Count'),
        ('-users_count', 'Most Used'),
        ('-fav_users_count', 'Most Favorited'),
    )

    # channel related info
    name = forms.CharField(required=False)
    beam = forms.CharField(required=False)
    frequency_start = forms.FloatField(required=False)
    frequency_end = forms.FloatField(required=False)
    frequency_polarization = forms.CharField(required=False)
    symbol_rate = forms.CharField(required=False)
    forward_error_correction = forms.CharField(required=False)
    video_encoding = forms.CharField(required=False)
    language = forms.CharField(required=False)
    encryption = forms.CharField(required=False)
    ch_type = forms.CharField(required=False)
    
    # satellite related info
    longitude_start = forms.FloatField(required=False)
    longitude_end = forms.FloatField(required=False)
    covering_satellite_name = forms.CharField(required=False)
    region = forms.CharField(required=False)

    # user related info
    username = forms.CharField(required=False)
    username_favorited = forms.CharField(required=False)

    order_by = forms.ChoiceField(choices=SORT_CHOICES, required=False)
    limit = forms.IntegerField(required=False)
