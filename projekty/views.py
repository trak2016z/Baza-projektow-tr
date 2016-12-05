# coding=utf-8
from django.http import HttpResponseRedirect
from django.shortcuts import render, redirect, get_object_or_404
from django.template import loader
from django.http import HttpResponse
from django.urls import reverse

from .models import Cathegory, Project, File, Tag, Component, Comment
from django.utils import timezone


def index(request):
    cathegories = Cathegory.objects.all()
    latest_projects_list = Project.objects.order_by('-date_added')[:5]

    context = {
        'cathegories': cathegories,
        'latest_projects_list': latest_projects_list,
    }

    template = loader.get_template('projekty/index.html')

    return HttpResponse(template.render(context, request))

def addproject(request):
    cathegories = Cathegory.objects.all()
    latest_projects_list = Project.objects.order_by('-date_added')[:5]

    context = {
        'cathegories': cathegories,
        'latest_projects_list': latest_projects_list,
    }

    template = loader.get_template('projekty/addproject.html')

    return HttpResponse(template.render(context, request))

def postproject(request):
    project_title = request.POST['project-title']
    project_cathegory = request.POST['project-cathegory']
    project_short_desc = request.POST['project-short-desc']
    project_text = request.POST['project-text']

    component_names = request.POST.getlist('components[]')
    component_quantity = request.POST.getlist('componentsQuantity[]')

    tags = request.POST['project-tags']

    # DODAC SPRAWDZENIE ID AKTUALNEGO UZYTKOWNIKA I WPIS JAKO PARAMETR
    new_project = Project(title=project_title, short_description=project_short_desc, cathegory_id=project_cathegory, text=project_text, user_id=2, date_added=timezone.now())
    new_project.save()

    if new_project.pk is not None:
        # dodaje komponenty dla projektu
        for index, item in enumerate(component_names):
            if index < len(component_quantity):
                name = component_names[index]
                qnt = component_quantity[index]

                new_component = Component(project_id=new_project.pk, quantity=qnt, description=name)
                new_component.save()


        # dodaje tagi dla projektu
        tag_list = tags.split( )
        for tag in tag_list:
            new_tag = Tag(project_id=new_project.pk, text=tag)
            new_tag.save()

    else:
        # dodać obsługę sytuacji kiedy nie dodano projektu
        pass


    return HttpResponseRedirect(reverse('showproject', args=(new_project.pk,)))


def showproject(request, project_id):
    project = get_object_or_404(Project, pk=project_id)

    context = {
        'project_title': project.title,
        'project_cathegory': project.cathegory,
        'project_short_desc': project.short_description,
        'project_text': project.text,
        'components': project.component_set.all(),
        'comments': project.comment_set.all(),
        'tags': project.tag_set.all()
    }

    template = loader.get_template('projekty/showproject.html')
    return HttpResponse(template.render(context, request))