from django.contrib import admin

from .models import Comment, Component, Cathegory, AuthUser, File, Project, Tag

# Register your models here.

admin.site.register(Comment)
admin.site.register(Component)
admin.site.register(Cathegory)
admin.site.register(AuthUser)
admin.site.register(File)
admin.site.register(Project)
admin.site.register(Tag)
