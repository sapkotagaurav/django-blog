from . import views
from django.urls import path



urlpatterns = [
    
    path('', views.PostListAll.as_view(), name='home'),
    path('api/',views.BlogApiView.as_view(),name='api_home'),
    path('categories/<str:cate>',views.Categories, name='categories'),
    path('author/<str:author>',views.Author, name='author'),
    path('year/<int:year>',views.Year, name='year'),
    path('post/<slug:slug>', views.PostDetailView.as_view(), name='post_detail'),
    path("search/", views.Search, name="search"),
    path("addpost/", views.CreatePost.as_view(), name="addpost"),
    
]
