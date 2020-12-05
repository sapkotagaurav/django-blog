from django.shortcuts import render
from .models import Image
from django.views import generic
from django.template import loader
from django.http import HttpResponse



# Create your views here.
class Galleryall(generic.ListView):
    model = Image
    template_name = "gallery/index.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["year"] = "All Images"
        context["queryset"]= Image.objects.all().order_by('created_on')
        return context
    


def yearView(request, year):
    template = loader.get_template('gallery/index.html')
    queryset = Image.objects.filter(
        created_on__year=year).order_by('created_on')
    return HttpResponse(template.render({'year': str(year), 'queryset': queryset, },request))

def monthView(request, year,month):
    template = loader.get_template('gallery/index.html')
    queryset = Image.objects.filter(
        created_on__year=year, created_on__month=month).order_by('created_on')
    return HttpResponse(template.render({'year': str(year)+"/"+str(month), 'queryset': queryset, },request))

