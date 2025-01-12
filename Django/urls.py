from django.urls import path
from . import views

urlpatterns = [
    path('satellite/', views.SatelliteListView.as_view(), name='satellite.list'),
    path('satellite/<int:pk>', views.SatelliteDetailView.as_view(), name='satellite.detail'),
    path('satellite/search/', views.satellite_search, name='satellite.search'),
    path('network/', views.NetworkListView.as_view(), name='network.list'),
    path('network/<int:pk>', views.NetworkDetailView.as_view(), name='network.detail'),
    path('network/search/', views.network_search, name='network.search'),
    path('channel/', views.ChannelListView.as_view(), name='channel.list'),
    path('channel/<int:pk>', views.ChannelDetailView.as_view(), name='channel.detail'),
    path('channel/search/', views.channel_search, name='channel.search'),
    path('channel/fav/', views.fav_channel_filter, name='filter_favorite_channels'),
    path('login/', views.user_login, name='login'),
    path('logout/', views.user_logout, name='logout'),
    path('signup/', views.user_signup, name='signup'),
    path('profile/update', views.user_profile_update, name='profile.update'),
    path('profile/', views.user_profile_view, name='profile.view'),
    path('profile/all', views.all_profiles_view, name='profiles.viewall'),
    path('top-rockets/', views.top_rockets_view, name='top_rockets'),
    path('top-growing-satellites/', views.top_growing_satellites_view, name='top_growing_satellites'),
    path('top-channels-by-language/', views.top_channels_by_language_view, name='top_channels_by_language'),
    path('', views.home, name='home'),
]