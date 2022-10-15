from django.shortcuts import render
from django.views import generic
from .models import Post

# Create your views here
# Template from https://github.com/TheAbhijeet/Django_blog/blob/1/blog/views.py

class PostList(generic.ListView):
    queryset = Post.objects.filter(status=1).order_by('-created_on')
    template_name = 'index.html'

class PostDetail(generic.DetailView):
    model = Post
    template_name = 'post_detail.html'
