from django.shortcuts import redirect
from django.urls import reverse, reverse_lazy
from django.views import generic
from django.http import HttpResponse
from django.template import loader
from rest_framework.views import APIView
from rest_framework.response import Response
from . import models
from . import forms
from.serializers import BlogSerializers

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


def Author(request, author):
    template = loader.get_template('blogs/cat.html')
    cats = models.Category.objects.all()
    posts = models.Post.objects.filter(status=1).filter(
        author__username=author).order_by('created_on').reverse()
    return HttpResponse(template.render({'cat': str(author), 'posts': posts, 'years':years,'cats':cats},request))


def Search(request):
    template = loader.get_template('blogs/cat.html')
    cats = models.Category.objects.all()
    q = request.GET['q']
    posts = models.Post.objects.filter(status=1).filter(
        title__icontains=q).order_by('created_on') | models.Post.objects.filter(status=1).filter(
        blog__icontains=q).order_by('created_on').reverse()
    return HttpResponse(template.render({'cat': "results for: "+q, 'posts': posts, 'years':years,'cats':cats},request))


class PostDetailView(generic.edit.FormMixin, generic.DetailView):
    model = models.Post
    cats = models.Category.objects.all()
    form_class = forms.Comment
    template_name = "blogs/post_detail.html"

    def get_success_url(self):
        return reverse('post_detail',kwargs={'slug':self.object.slug})



    def get_context_data(self, **kwargs):
        context = super(PostDetailView, self).get_context_data(**kwargs)
        context["cats"] = self.cats
        context["years"] = years
        context['posts']=posts
        context['comments'] = self.object.comment_of_blog.all()
        context['form'] = forms.Comment
        return context

    def post(self, request, *args, **kwargs):
        
        self.object = self.get_object()
        form = self.get_form()
        form.instance.author = form.instance.author if form.instance.author else "a"
        if form.is_valid():
            return self.form_valid(form)
        else:
            return self.form_invalid(form)

    def form_valid(self, form):
        form.instance.author =  form.instance.author if self.request.user.is_anonymous else self.request.user
        
        form.instance.post = self.get_object()
        form.save()
        return super(PostDetailView, self).form_valid(form)

class CreatePost(generic.CreateView):
    form_class = forms.Post
    success_url = reverse_lazy('home')
    template_name = 'blogs/createblog.html'



    def form_valid(self, form):
        form.instance.author = self.request.user
        form.save()
        return redirect('home')



class BlogApiView(APIView):
    def get(self,request):
        blogs = models.Post.objects.all()
        serializer = BlogSerializers(blogs,many=True)
        return Response({"blogs":serializer.data})
    