# coding=utf-8
from django.shortcuts import render, redirect
from django.template import loader
from django.http import HttpResponse
from .models import Cathegory, Project, File, Tag, Component, Comment


def index(request):
    cathegories = Cathegory.objects.all()
    latest_projects_list = Project.objects.all()

    context = {
        'cathegories': cathegories,
        'latest_projects_list': latest_projects_list,
    }

    template = loader.get_template('projekty/index.html')

    return HttpResponse(template.render(context, request))

def addproject(request):
    cathegories = Cathegory.objects.all()

    context = {
        'cathegories': cathegories,
    }

    template = loader.get_template('projekty/addproject.html')

    return HttpResponse(template.render(context, request))