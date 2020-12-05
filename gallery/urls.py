from . import views
from django.urls import path



urlpatterns = [
    
    path('', views.Galleryall.as_view(), name='gallery'),
    path('<int:year>',views.yearView,name='galleryYear'),
    path('<int:year>/<int:month>',views.monthView,name='galleryMonth')

]
