from django.contrib import admin
from django.urls import path, include
from . import views
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf import settings
from django.conf.urls.static import static



urlpatterns = staticfiles_urlpatterns()

urlpatterns = [
    path('',views.index,),
    path('a/d/m/i/n/l/o/g/i/n/h/e/r/e/', admin.site.urls),
    path('accounts/', include('django.contrib.auth.urls')),
    path("contact/", include('contact.urls')),
    path('blogs/', include('chronicles.urls')),
    path('gallery/', include('gallery.urls')),
]

handler404 = 'crogaurabsapkota.views.error404'

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,
                          document_root=settings.MEDIA_ROOT)

