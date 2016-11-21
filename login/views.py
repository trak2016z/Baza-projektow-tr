# -*- coding: utf-8 -*-
from django.contrib.auth import authenticate
from django.shortcuts import render
from django.contrib.auth.models import User
from projekty.models import AuthUser
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


def register(request):
    login = request.POST['username']
    password = request.POST['password']
    password_repeat = request.POST['password_repeat']
    e_mail = request.POST['email']
    firstname = request.POST['firstname']
    lastname = request.POST['lastname']

    if password == password_repeat:
        try:
            us = AuthUser.objects.get(username = login)
            return HttpResponse("uzytkownik istnieje")
        except AuthUser.DoesNotExist:
            try:
                usr = AuthUser.objects.get(email=e_mail)
                return HttpResponse("mail wykorzystany")
            except:
                user = User.objects.create_user(login, e_mail, password)
                if user is not None:
                    user.first_name = firstname
                    user.last_name = lastname
                    user.save()
                    return HttpResponse("Zarejestrowano")

    return HttpResponse("Nie zarejestrowano")