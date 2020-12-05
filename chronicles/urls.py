from . import views
from django.urls import path



urlpatterns = [
    
    path('', views.PostListAll.as_view(), name='home'),
    path('categories/<str:cate>',views.Categories, name='categories'),
    path('year/<int:year>',views.Year, name='year'),
    path('post/<slug:slug>', views.PostDetailView.as_view(), name='post_detail'),
    path("search/", views.Search, name="search")
    
]
