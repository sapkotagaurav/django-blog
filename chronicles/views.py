from django.shortcuts import redirect
from django.urls import reverse_lazy
from django.views import generic
from django.http import HttpResponse
from django.template import loader
from . import models
from . import forms

posts = models.Post.objects.filter(status=1).order_by('created_on').reverse()
years = []

for a in posts:
    years.append(a.created_on.year)
res = []
for year in years:
    if year not in res:
        res.append(year)


years = res

class PostListAll(generic.ListView):

    queryset = {'posts': posts,
                'cats': models.Category.objects.all(),
                'years': years}
    template_name = "blogs/index.html"
    context_object_name = 'queryset'

    


def Categories(request, cate):
    template = loader.get_template('blogs/cat.html')
    posts = models.Post.objects.filter(status=1).filter(
        category__category__contains=cate).order_by('created_on').reverse()
    cats = models.Category.objects.all()
    return HttpResponse(template.render({'cat': cate, 'posts': posts, 'cats':cats,'years':years},request))


def Year(request, year):
    template = loader.get_template('blogs/cat.html')
    cats = models.Category.objects.all()
    posts = models.Post.objects.filter(status=1).filter(
        created_on__year=year).order_by('created_on').reverse()
    return HttpResponse(template.render({'cat': str(year), 'posts': posts, 'years':years,'cats':cats},request))


def Search(request):
    template = loader.get_template('blogs/cat.html')
    cats = models.Category.objects.all()
    q = request.GET['q']
    posts = models.Post.objects.filter(status=1).filter(
        title__icontains=q).order_by('created_on') | models.Post.objects.filter(status=1).filter(
        blog__icontains=q).order_by('created_on').reverse()
    return HttpResponse(template.render({'cat': "results for: "+q, 'posts': posts, 'years':years,'cats':cats},request))


class PostDetailView(generic.DetailView):
    model = models.Post
    cats = models.Category.objects.all()
    template_name = "blogs/post_detail.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["cats"] = self.cats
        context["years"] = years
        context['posts']=posts
        return context

class CreatePost(generic.CreateView):
    form_class = forms.Post
    success_url = reverse_lazy('home')
    template_name = 'blogs/createblog.html'



    def form_valid(self, form):
        form.instance.author = self.request.user
        form.save()
        return redirect('home')
    