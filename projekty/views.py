# coding=utf-8
from django.shortcuts import render, redirect
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

def addproject(request):
    if(not request.user.is_authenticated()):
        return redirect('login:index')
    else:
        return HttpResponse("Tu będzie dodawanie projektu")