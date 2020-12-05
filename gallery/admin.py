from django.contrib import admin
from .models import Image


class ImageAdmin(admin.ModelAdmin):
    list_display = ('image_name', 'created_on')
    search_fields = ['image_name', 'image_des',]


admin.site.register(Image, ImageAdmin)
