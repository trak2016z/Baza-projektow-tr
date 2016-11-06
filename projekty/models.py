# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals

from django.db import models


class Cathegory(models.Model):
    text = models.CharField(unique=True, max_length=60)

    def __str__(self):
        return self.text

    class Meta:
        managed = False
        db_table = 'cathegory'


class Comment(models.Model):
    text = models.TextField()
    date_added = models.DateTimeField()
    user = models.ForeignKey('User', models.DO_NOTHING)
    project = models.ForeignKey('Project', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'comment'


class Component(models.Model):
    quantity = models.IntegerField()
    description = models.CharField(max_length=70)
    project = models.ForeignKey('Project', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'component'


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class File(models.Model):
    url = models.CharField(unique=True, max_length=45)
    text = models.CharField(max_length=80, blank=True, null=True)
    description = models.CharField(max_length=150, blank=True, null=True)
    file_type = models.CharField(max_length=45)
    project = models.ForeignKey('Project', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'file'


class Project(models.Model):
    title = models.CharField(max_length=80)
    short_description = models.CharField(max_length=250, blank=True, null=True)
    text = models.TextField()
    date_added = models.DateTimeField()
    cathegory = models.ForeignKey(Cathegory, models.DO_NOTHING)
    user = models.ForeignKey('User', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'project'


class Tag(models.Model):
    text = models.CharField(max_length=40)
    project = models.ForeignKey(Project, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'tag'


class User(models.Model):
    login = models.CharField(unique=True, max_length=45)
    password = models.CharField(max_length=45)
    email = models.CharField(unique=True, max_length=50)
    role = models.CharField(max_length=25)
    name = models.CharField(max_length=50, blank=True, null=True)
    last_name = models.CharField(max_length=50, blank=True, null=True)
    country = models.CharField(max_length=50, blank=True, null=True)
    date_registered = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'user'
