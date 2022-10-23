from django import forms
from .models import Comments, Post
from django.contrib.auth.models import User


class Post(forms.ModelForm):
    
    class Meta:
        model = Post
        fields = ("title","description","category","blog","cover","status")
        widgets = {
        }

class Comment(forms.ModelForm):
    
    class Meta:
        model = Comments
        fields =("author","comment",)