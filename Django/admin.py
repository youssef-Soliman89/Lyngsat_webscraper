from django.contrib import admin
from .models import Network, Satellite, Channel
# Register your models here.

class ChannelInline(admin.TabularInline):
    model = Satellite.channels.through  # This is the intermediary model for the many-to-many relationship
    extra = 1  # Number of empty forms to display by default

class SatelliteAdmin(admin.ModelAdmin):
    list_display = ('name',)
    inlines = [ChannelInline]


admin.site.register(Satellite, SatelliteAdmin)


class NetworkAdmin(admin.ModelAdmin):
    list_display = ('name',)

admin.site.register(Network, NetworkAdmin)

class ChannelAdmin(admin.ModelAdmin):
    list_display = ('name',)

admin.site.register(Channel, ChannelAdmin)