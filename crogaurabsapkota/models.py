from django.db import models

class Contact(models.Model):
    name = models.CharField(unique=False, max_length=200, null=True)
    email = models.CharField(unique=False, max_length=200, null=True)
    message = models.CharField(unique=false, max_length=1000, null=false)
    is_done = models.BooleanField(default=false)
    created_on = models.DateTimeField( auto_now_add=True,)

    class Meta:
        ordering = ['-created_on']

    def __str__(self):
        return self.name