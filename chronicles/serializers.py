from rest_framework import serializers
from django.contrib.auth.models import User
from ckeditor.fields import RichTextField
from .models import Category, STATUS, Post, Comments



class CommentSerialization(serializers.ModelSerializer):
    class Meta:
        model = Comments
        fields ='__all__'




class BlogSerializers(serializers.ModelSerializer):
    author = serializers.CharField(source='author.username');
    comment_of_blog = CommentSerialization(many=True)
    class Meta:
        model = Post
        fields='__all__'