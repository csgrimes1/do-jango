#from django.shortcuts import render
from django.http import HttpResponse
from .models import Post, Comment
from django.views.decorators.cache import cache_page

@cache_page(60 * 15)
def index(request):
    posts = Post.objects.order_by('-created_on')[:10]
    output = ', '.join([p.title for p in posts])
    return HttpResponse(output)
