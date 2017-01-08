# coding=utf-8
from django.db.models import Count
from django.http import HttpResponseRedirect
from django.shortcuts import render, redirect, get_object_or_404
from django.template import loader
from django.http import HttpResponse, JsonResponse
from django.urls import reverse
import string, random
from django.conf import settings
from django.core import serializers


from django.contrib.staticfiles.templatetags.staticfiles import static
from django.utils.datetime_safe import strftime

from projekty import parser
from .models import Cathegory, Project, File, Tag, Component, Comment
from django.utils import timezone

def index(request):
    cathegories = Cathegory.objects.all()
    latest_projects_list = Project.objects.order_by('-date_added')[:5]
    most_commented_projects = Project.objects.annotate(num_comments=Count('comment')).order_by('-num_comments')[:5]

    context = {
        'cathegories': cathegories,
        'latest_projects_list': latest_projects_list,
        'most_commented_projects': most_commented_projects,
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

    userid = request.user.id

    parsed_text = parser.parse_project(project_text)

    new_project = Project(title=project_title, short_description=project_short_desc, cathegory_id=project_cathegory, text=parsed_text, user_id=userid, date_added=timezone.now())
    new_project.save()

    if new_project.pk is not None:
        # upload miniatury zdjęcia dla projektu
        thumbnail = request.FILES['project-thumbnail'] if 'project-thumbnail' in request.FILES else False
        if(thumbnail):
            handle_uploaded_file(new_project.pk, request.FILES['project-thumbnail'])

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
        'project_id': project_id,
        'project_title': project.title,
        'project_cathegory': project.cathegory,
        'project_short_desc': project.short_description,
        'project_text': project.text,
        'components': project.component_set.all(),
        'comments': project.comment_set.all(),
        'tags': project.tag_set.all(),
        'project_author': project.user,
    }

    template = loader.get_template('projekty/showproject.html')
    return HttpResponse(template.render(context, request))


def getcomments(request):
    if request.method == 'POST':
        project_id = request.POST['project_id']
        project = Project.objects.get(pk=project_id)

        comment_list = []

        if project is not None:
            for comment in project.comment_set.all().order_by('-date_added'):
                single_comment = {
                    'comment_id': comment.id,
                    'comment_author': comment.user.username,
                    'comment_text': comment.text,
                    'comment_date': strftime(comment.date_added, '%Y-%m-%d %H:%M:%S'),
                }
                comment_list.append(single_comment)

            return JsonResponse(comment_list, safe=False)
        else:
            return JsonResponse("")
    else:
        return JsonResponse("")

def postcomment(request):
    if request.method == 'POST':
        project_id = request.POST['project_id']
        comment_text = request.POST['comment_text']

        project = Project.objects.get(pk=project_id)
        if project is not None and request.user.is_authenticated():
            new_comment = Comment(date_added=timezone.now(), project_id=project_id, text=comment_text, user_id=request.user.id)
            new_comment.save()
            return JsonResponse({'result':True})
        else:
            return JsonResponse({'result': False})
    else:
        return JsonResponse({'result': False})


def show_by_cathegory(request, cathegory_id):
    cathegory = Cathegory.objects.get(pk=cathegory_id)
    projects_in_cathegory = Project.objects.filter(cathegory_id=cathegory.id).order_by('-date_added')


    context = {
        'cathegory': cathegory,
        'cathegory_projects': projects_in_cathegory,
    }

    template = loader.get_template('projekty/show_by_cathegory.html')
    return HttpResponse(template.render(context, request))

def myprojects(request):
    template = loader.get_template('projekty/myprojects.html')
    context = {}

    if request.user.is_authenticated():
        user_projects = Project.objects.filter(user_id=request.user.id)
        context['user_projects'] = user_projects

    return HttpResponse(template.render(context, request))

def search(request):
    query = request.GET['query']

    matching_results_title = Project.objects.filter(title__icontains=query).distinct()
    matching_results_desc = Project.objects.filter(short_description__icontains=query).distinct()
    matching_results_tags = Project.objects.filter(tag__text__icontains=query).distinct()

    matching_results = matching_results_title | matching_results_desc | matching_results_tags

    context = {
        'query_str': query,
        'projects_result': matching_results,
    }

    template = loader.get_template('projekty/search.html')
    return HttpResponse(template.render(context, request))



def handle_uploaded_file(project_id, file):
    if(file is not None):
        filename = get_random_string(8) + file.name
        file_path = settings.MEDIA_URL + filename

        with open(file_path, 'wb+') as destination:
            for chunk in file.chunks():
                destination.write(chunk)

        project = Project.objects.get(pk = project_id)
        if(project is not None):
            project.thumbnail_url = static('projekty/media/') + filename
            project.save()


def get_random_string(length):
    return ''.join(random.SystemRandom().choice(string.ascii_uppercase + string.digits) for _ in range(length))

