# -*- coding: utf-8 -*-
from django.contrib.auth import authenticate
from django.shortcuts import render
from django.contrib.auth.models import User
from django.http import HttpResponse


def index(request):
    return render(request, 'login/index.html')

# tworzy użytkownika:
# u1 = User.objects.create_user('dkocur', 'dkocur987@gmail.com', '123456')

def userlogin(request):
    u_name = request.POST['form-username']
    u_pass = request.POST['form-password']

    user = authenticate(username=u_name, password = u_pass)

    if user is not None:
        return HttpResponse("Zalogowano")
    else:
        return HttpResponse("Nie zalogowano")