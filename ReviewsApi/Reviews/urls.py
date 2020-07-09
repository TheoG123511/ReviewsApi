from django.urls import path
from . import views
from rest_framework import routers

router = routers.DefaultRouter()
urlpatterns = [path('', views.DocsView.as_view()),
               path('all/<int:domain>/<str:api_key>/<str:order>', views.DisplayReviews.as_view())]
