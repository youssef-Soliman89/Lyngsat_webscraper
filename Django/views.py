from typing import Any
from django.db.models.query import QuerySet
from .models import Satellite, Network, Channel, Profile
from django.views.generic import ListView, DetailView
from .forms import SatelliteSearchForm, NetworkSearchForm, ChannelSearchForm, SignUpForm, ProfileUpdateForm
from django.contrib.auth.forms import AuthenticationForm

from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.contrib.admin.views.decorators import staff_member_required
from django.db.models import Count

@login_required
def user_profile_view(request):
    profile = request.user.profile
    return render(request, 'accounts/profile_view.html', {'profile': profile})

@staff_member_required
def all_profiles_view(request):
    profiles = Profile.objects.all()
    return render(request, 'accounts/all_profiles.html', {'profiles': profiles})

def home(request):
    return render(request, 'home.html')

def user_login(request):
    if request.method == 'POST':
        form = AuthenticationForm(request, request.POST)
        if form.is_valid():
            user = form.get_user()
            login(request, user)
            return redirect('profile.view')
    else:
        form = AuthenticationForm()
    return render(request, 'accounts/login.html', {'form': form})

def user_logout(request):
    logout(request)
    return redirect('login')


def user_signup(request):
    if request.method == 'POST':
        form = SignUpForm(request.POST)
        if form.is_valid():
            user = form.save()
            # Optionally, create a profile for the user
            Profile.objects.create(user=user, gender=form.cleaned_data['gender'],
                                   birthdate=form.cleaned_data['birthdate'],
                                   region=form.cleaned_data['region'])
            login(request, user)
            return redirect('profile.view')
    else:
        form = SignUpForm()
    return render(request, 'accounts/signup.html', {'form': form})

def user_profile_update(request):
    user = request.user
    profile = Profile.objects.get(user=user)
    if request.method == 'POST':
        form = ProfileUpdateForm(request.POST, instance=profile)
        if form.is_valid():
            form.save()
            return redirect('profile.view')
    else:
        form = ProfileUpdateForm(instance=profile)
    return render(request, 'accounts/profile.html', {'form': form})

@login_required
def fav_channel_filter(request):
    user = request.user
    profile = Profile.objects.get(user=user)
    fav_channels = profile.user_favorite_channels.all()
    location = int(request.GET.get('location'))
    if location:
        position_start = location - 10
        position_end = location + 10
        fav_channels = fav_channels.filter(satellites__position__gte=position_start)
        fav_channels = fav_channels.filter(satellites__position__lte=position_end)
        fav_channels = fav_channels.distinct()
    return render(request, 'fav_channels.html', {'channels': fav_channels})




def channel_search(request):
    if request.method == 'GET':
        form = ChannelSearchForm(request.GET)

        if form.is_valid():
            channels = Channel.objects.all()
            name = form.cleaned_data.get('name')
            beam = form.cleaned_data.get('beam')
            frequency_start = form.cleaned_data.get('frequency_start')
            frequency_end = form.cleaned_data.get('frequency_end')
            frequency_polarization = form.cleaned_data.get('frequency_polarization')
            symbol_rate = form.cleaned_data.get('symbol_rate')
            forward_error_correction = form.cleaned_data.get('forward_error_correction')
            video_encoding = form.cleaned_data.get('video_encoding')
            language = form.cleaned_data.get('language')
            encryption = form.cleaned_data.get('encryption')
            ch_type = form.cleaned_data.get('ch_type')
            
            
            position_start = form.cleaned_data.get('longitude_start')
            position_end = form.cleaned_data.get('longitude_end')
            covering_satellite_name = form.cleaned_data.get('covering_satellite_name')
            region = form.cleaned_data.get('region')
            
            username = form.cleaned_data.get('username')
            username_favorited = form.cleaned_data.get('username_favorited')

            
            limit = form.cleaned_data.get('limit')
            order_by = form.cleaned_data.get('order_by')

            if name:
                channels = channels.filter(name__icontains=name)
            if beam:
                channels = channels.filter(beam__icontains=beam)
            if frequency_start:
                channels = channels.filter(frequency__gte=frequency_start)
            if frequency_end:
                channels = channels.filter(frequency__lte=frequency_end)
            if frequency_polarization:
                channels = channels.filter(frequency_polarization__icontains=frequency_polarization)
            if symbol_rate:
                channels = channels.filter(symbol_rate__icontains=symbol_rate)
            if forward_error_correction:
                channels = channels.filter(forward_error_correction__icontains=forward_error_correction)
            if video_encoding:
                channels = channels.filter(video_encoding__icontains=video_encoding)
            if language:
                channels = channels.filter(language__icontains=language)
            if encryption:
                channels = channels.filter(encryption__icontains=encryption)
            if ch_type:
                channels = channels.filter(ch_type__icontains=ch_type)
            
            if covering_satellite_name:
                channels = channels.filter(satellites__name__icontains=covering_satellite_name)
            if position_start:
                channels = channels.filter(satellites__position__gte=position_start)
            if position_end:
                channels = channels.filter(satellites__position__lte=position_end)
            if region:
                channels = channels.filter(satellites__region__icontains=region)
            
            if username:
                channels = channels.filter(users__user__username__icontains=username)
            if username_favorited:
                channels = channels.filter(fav_users__user__username__icontains=username_favorited)
            
            channels = channels.distinct()
            if order_by:
                if 'fav_users_count' in order_by:
                    channels = channels.annotate(fav_users_count=Count('fav_users'))
                elif 'users_count' in order_by:
                    channels = channels.annotate(users_count=Count('users'))
                elif 'satellites_count' in order_by:
                    channels = channels.annotate(satellites_count=Count('satellites'))
                channels = channels.order_by(order_by)
            if limit and (limit < len(channels)):
                channels = channels[:limit]


        context = {
            'form': form,
            'channels': channels
        }
        return render(request, 'channel_search.html', context)


def network_search(request):
    if request.method == 'GET':
        form = NetworkSearchForm(request.GET)

        if form.is_valid():
            networks = Network.objects.all()

            name = form.cleaned_data.get('name')
            language = form.cleaned_data.get('language')

            position_start = form.cleaned_data.get('longitude_start')
            position_end = form.cleaned_data.get('longitude_end')
            covering_satellite_name = form.cleaned_data.get('covering_satellite_name')
            username = form.cleaned_data.get('username')
            
            
            
            limit = form.cleaned_data.get('limit')
            order_by = form.cleaned_data.get('order_by')

            if name:
                networks = networks.filter(name__icontains=name)
            if language:
                networks = networks.filter(language__icontains=language)
            if covering_satellite_name:
                networks = networks.filter(satellites__name__icontains=covering_satellite_name)
            if position_start:
                networks = networks.filter(satellites__position__gte=position_start)
            if position_end:
                networks = networks.filter(satellites__position__lte=position_end)
            if username:
                networks = networks.filter(users__user__username__icontains=username)

            networks = networks.distinct()
            if order_by:
                if 'satellites_count' in order_by:
                    networks = networks.annotate(satellites_count=Count('satellites'))
                elif 'users_count' in order_by:
                    networks = networks.annotate(users_count=Count('users'))

                networks = networks.order_by(order_by)
            if limit and (limit < len(networks)):
                networks = networks[:limit]

        context = {
            'form': form,
            'networks': networks
        }
        return render(request, 'network_search.html', context)


def satellite_search(request):
    if request.method == 'GET':
        form = SatelliteSearchForm(request.GET)
        satellites = Satellite.objects.all()

        if form.is_valid():
            satellites = Satellite.objects.all()

            name = form.cleaned_data.get('name')
            launch_date_start = form.cleaned_data.get('launch_date_start')
            launch_date_end = form.cleaned_data.get('launch_date_end')
            region = form.cleaned_data.get('region')
            position_start = form.cleaned_data.get('position_start')
            position_end = form.cleaned_data.get('position_end')
            position_direction = form.cleaned_data.get('position_direction')
            covered_channel_name = form.cleaned_data.get('covered_channel_name')
            covered_network_name = form.cleaned_data.get('covered_network_name')
            limit = form.cleaned_data.get('limit')
            order_by = form.cleaned_data.get('order_by')
            
            if name:
                satellites = satellites.filter(name__icontains=name)
            if launch_date_start:
                satellites = satellites.filter(launch_date__gte=launch_date_start)
            if launch_date_end:
                satellites = satellites.filter(launch_date__lte=launch_date_end)
            if region:
                satellites = satellites.filter(region__icontains=region)
            if position_start:
                satellites = satellites.filter(position__gte=position_start)
            if position_end:
                satellites = satellites.filter(position__lte=position_end)
            if position_direction:
                satellites = satellites.filter(position_direction__icontains=position_direction)
            if covered_network_name:
                satellites = satellites.filter(networks__name__icontains=covered_network_name)
            if covered_channel_name:
                satellites = satellites.filter(channels__name__icontains=covered_channel_name)
            
            satellites = satellites.distinct()
            if order_by:
                if 'networks_count' in order_by:
                    satellites = satellites.annotate(networks_count=Count('networks'))
                elif 'channels_count' in order_by:
                    satellites = satellites.annotate(channels_count=Count('channels'))
                satellites = satellites.order_by(order_by)
            if limit and (limit < len(satellites)):
                satellites = satellites[:limit]

        context = {
            'form': form,
            'satellites': satellites
        }
        return render(request, 'satellite_search.html', context)


def top_channels_by_language_view(request):
    languages = Channel.objects.values_list('language', flat=True).distinct()
    top_channels_by_language = {}
    for language in languages:
        if language != '':
            top_channels = Channel.objects.filter(language=language).annotate(satellite_count=Count('satellites')).order_by('-satellite_count')[:5]
            top_channels_by_language[language] = top_channels
    return render(request, 'top_channels_by_language.html', {'top_channels_by_language': top_channels_by_language})


def top_growing_satellites_view(request):
    top_satellites = Satellite.objects.all()
    top_satellites = top_satellites.annotate(channel_count=Count('channels'))
    top_satellites = top_satellites.distinct()
    top_satellites = top_satellites.order_by('-channel_count', 'launch_date')
    top_satellites = top_satellites[:5]
    return render(request, 'top_growing_satellites.html', {'top_satellites': top_satellites})

def top_rockets_view(request):
    top_rockets = Satellite.objects.values('launching_rocket')
    top_rockets = top_rockets.annotate(satellite_count=Count('launching_rocket'))
    top_rockets = top_rockets.distinct()
    top_rockets = top_rockets.order_by('-satellite_count')
    top_rockets = top_rockets[:5]
    print(top_rockets)
    return render(request, 'top_rockets.html', {'top_rockets': top_rockets})


# Create your views here.
class SatelliteListView(ListView):
    model = Satellite
    context_object_name = 'satellites'
    template_name = 'satellite_list.html'

    def get_queryset(self) -> QuerySet[Any]:
        return Satellite.objects.all()
    
class SatelliteDetailView(DetailView):
    model = Satellite
    context_object_name = 'satellite'
    template_name = 'satellite_detail.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        satellite = self.get_object()
        context['related_channels'] = satellite.channels.all()
        context['related_networks'] = satellite.networks.all()
        return context


class ChannelListView(ListView):
    model = Channel
    context_object_name = 'channels'
    template_name = 'channel_list.html'

    def get_queryset(self) -> QuerySet[Any]:
        return Channel.objects.all()
    
class ChannelDetailView(DetailView):
    model = Channel
    context_object_name = 'channel'
    template_name = 'channel_detail.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        channel = self.get_object()
        context['related_satellites'] = channel.satellites.all()
        return context



class NetworkListView(ListView):
    model = Network
    context_object_name = 'networks'
    template_name = 'network_list.html'

    def get_queryset(self) -> QuerySet[Any]:
        return Network.objects.all()
    
class NetworkDetailView(DetailView):
    model = Network
    context_object_name = 'network'
    template_name = 'network_detail.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        channel = self.get_object()
        context['related_satellites'] = channel.satellites.all()
        return context

