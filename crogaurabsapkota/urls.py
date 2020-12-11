from django.contrib import admin
from django.urls import path, include
from . import views
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf import settings
from django.conf.urls.static import static
from django.conf.urls import url



urlpatterns = staticfiles_urlpatterns()

urlpatterns = [
    path('',views.index,),
    path('adminloginhere/', admin.site.urls),
    path("contact/", include('contact.urls')),
    path('blogs/', include('chronicles.urls')),
    path('gallery/', include('gallery.urls')),
]

handler404 = 'crogaurabsapkota.views.error404'

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,
                          document_root=settings.MEDIA_ROOT)

