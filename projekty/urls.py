from django.conf.urls import url, include

from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^(?P<project_id>[0-9]+)/$', views.showproject, name='showproject'),
    url(r'^addproject/$', views.addproject, name='addproject'),
    url(r'^postproject/$', views.postproject, name='postproject'),
    url(r'login/', include('login.urls')),

]