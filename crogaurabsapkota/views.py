from django.http import HttpResponse
from django.template import loader
from django.core.mail import send_mail, BadHeaderError
from chronicles.models import Category, Post
from .models import Contact
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from django.core.mail import EmailMultiAlternatives




posts = Post.objects.filter(status=1).order_by('created_on')
years = []

for a in posts:
    years.append(a.created_on.year)
res = []
for year in years:
    if year not in res:
        res.append(year)


years = res


def index(request):
    template = loader.get_template('home.html')
    context = {'a': 1}
    return HttpResponse(template.render(context, request))


def contact(request):
    template = loader.get_template('contact.html')
    if request.method == "POST":
        name = request.POST.get('name')
        email = request.POST.get('email')
        message = request.POST.get('message')

        b =  Contact.objects.create(name=name,email=email,message=message)
        b.save()

        context = {'p': 1, 'posts': posts,
                   'cats': Category.objects.all(), 'years': years}
        return HttpResponse(template.render(context, request))


    else:
        context = {'p': 0, 'posts': posts,
                   'cats': Category.objects.all(), 'years': years}
        return HttpResponse(template.render(context, request))

    


def error404(request, exception):
    template = loader.get_template('404.html')
    context = {'status': 404, 'posts': posts,
               'cats': Category.objects.all(), 'years': years}
    return HttpResponse(template.render(context, request))
