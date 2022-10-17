# Template from https://github.com/TheAbhijeet/Django_blog/blob/1/blog/urls.py

from . import views
from django.urls import path

urlpatterns = [
    path('', views.PostList.as_view(), name='home'),
    #path('<slug:slug>/', views.PostDetail.as_view(), name='post_detail'),
    path('<slug:slug>/', views.post_detail, name='post_detail'),
] 
