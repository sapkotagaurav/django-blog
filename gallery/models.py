from django.db import models

# Create your models here.
class Image(models.Model):
    image_name = models.CharField(max_length=50)
    created_on = models.DateTimeField( auto_now_add=True,)
    image_des = models.CharField(max_length=100)
    image_url = models.URLField(max_length=1000)
    image_imgur_suffix = models.CharField(max_length=15 ,null=True)
    image_thumbnail = models.URLField(max_length=1000, null=True)
    image_dimenX = models.IntegerField()
    image_dimenY = models.IntegerField()


    def __str__(self):
        return self.image_name


