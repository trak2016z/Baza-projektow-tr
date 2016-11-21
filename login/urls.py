from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^userlogin/$', views.userlogin, name='userlogin'),
    url(r'^userlogout/$', views.userlogout, name='userlogout'),
    url(r'^register/$', views.register, name='register'),
]