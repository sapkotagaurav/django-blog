from atexit import register
from django.contrib import admin
from .models import  Post, Category,Comments


class PostAdmin(admin.ModelAdmin):
    list_display = ('title', 'slug', 'status', 'created_on','category')
    list_filter = ('status','category')
    search_fields = ['title', 'blog',]
    prepopulated_fields = {'slug': ('title',)}


admin.site.register(Post, PostAdmin)
admin.site.register(Category)
admin.site.register(Comments)