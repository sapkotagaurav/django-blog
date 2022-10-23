from django.db import models
from django.contrib.auth.models import User
from ckeditor.fields import RichTextField
from django.utils.text import slugify

STATUS =((0,"Draft"),(1,"Public"))

class Category(models.Model):


    category = models.CharField(max_length=20, default='uncategorized')

    def __str__(self):
        return self.category
    class Meta:
        verbose_name = ("Category")
        verbose_name_plural = ("Categories")
        ordering =['category']

    


class Post(models.Model):
    title = models.CharField(unique=True, max_length=200)
    description = models.CharField(unique=False, max_length=200, null=True)
    slug = models.SlugField(max_length=200, unique=True)
    author = models.ForeignKey(User, related_name='blog_posts', on_delete=models.CASCADE)
    created_on = models.DateTimeField( auto_now_add=True,)
    category = models.ForeignKey(Category, verbose_name='Category',related_name='Post', on_delete=models.CASCADE)
    blog = RichTextField()
    cover = models.URLField(max_length=200, default='https://i.imgur.com/KdX8Fpu.jpg')
    updated_on = models.DateTimeField(auto_now=True)
    status = models.IntegerField(choices=STATUS, default=0)


    class Meta:
        ordering = ['-created_on']

    def __str__(self):
        return self.title
    
    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        super(Post, self).save(*args, **kwargs)

    def __unicode__(self):
        return

class Comments(models.Model):
    post = models.ForeignKey(to=Post,related_name="comment_of_blog",on_delete=models.CASCADE)
    comment = RichTextField()
    author = models.CharField(blank=False, max_length=50)
    created_on = models.DateTimeField( auto_now_add=True,)
    status = models.IntegerField(choices=STATUS, default=1)
    parent = models.ForeignKey('self', null=True, blank=True, related_name='replies', on_delete=models.CASCADE)

    def __str__(self) -> str:
        rep = "Reply" if self.parent else "main"
        return f"Comment by {self.author} in {self.post}, {rep}, {self.id}"
