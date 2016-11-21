from django.shortcuts import render
from django.template import loader
from django.http import HttpResponse
from .models import Cathegory


def index(request):
    cathegories = Cathegory.objects.all()
    context = {
        'cathegories': cathegories,
    }
    template = loader.get_template('projekty/index.html')
    return HttpResponse(template.render(context, request))

