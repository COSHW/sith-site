from django.urls import path

from . import views

urlpatterns = [
   path('', views.index, name='index'),
   path('table', views.table, name='table'),
   path('input', views.recruit_page, name='input'),
   path('redirect', views.redirect_func, name='redirect'),
   path('send', views.send, name='send'),
   path('error', views.error, name='error'),
   path('sith/choice', views.choice, name='choice'),
   path('sith/account', views.account, name='account'),
   path('sith/make_shadow_hand', views.shadow_hand, name='shadow_hand'),
]
