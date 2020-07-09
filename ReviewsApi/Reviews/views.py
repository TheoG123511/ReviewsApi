from django.shortcuts import get_list_or_404
from rest_framework import generics
from rest_framework.pagination import PageNumberPagination
from rest_framework.response import Response
from rest_framework.views import APIView
from .models import Reviews
from .serializers import ReviewsSerializer


class ReviewsSetPagination(PageNumberPagination):
    """
    :synopsis: Permet de gérer la pagination dans les resultats de l'api
        """
    page_size = 10
    page_size_query_param = 'page_size'
    max_page_size = 50


class DocsView(APIView):
    """
    :synopsis: RESTFul Documentation de l'api (lien utilisable)
    """
    # noinspection PyMethodMayBeStatic
    def get(self, request):
        apidocs = {"Add or view all reviews": request.build_absolute_uri('all/<int:domain>/<str:api_key>/<str:order>')}
        return Response(apidocs)


class DisplayReviews(generics.ListCreateAPIView):
    """:synopsis: Permet d'afficher les avis disponibles
        Methode disponible : GET ou POST
        """
    lookup_field = 'domain'
    model = Reviews
    serializer_class = ReviewsSerializer
    pagination_class = ReviewsSetPagination

    def get_queryset(self):
        sortDict = {"lastReviews": lambda: (queryset.filter(domain=idDomain, domain__api_key=api_key,
                                                            publish=True)).order_by('-date'),
                    "oldReviews": lambda: (queryset.filter(domain=idDomain, domain__api_key=api_key,
                                                           publish=True)).order_by('date'),
                    "highReviews": lambda: (queryset.filter(domain=idDomain, domain__api_key=api_key,
                                                            publish=True)).order_by('-star'),
                    "badReviews": lambda: (queryset.filter(domain=idDomain, domain__api_key=api_key,
                                                           publish=True)).order_by('star')}
        queryset = Reviews.objects.all()
        idDomain = self.kwargs['domain']
        api_key = self.kwargs['api_key']
        sortBy = self.kwargs['order']

        if idDomain and api_key and sortBy:
            try:
                queryset = sortDict[sortBy]()
            except KeyError:
                queryset = sortDict["lastReviews"]()
        return get_list_or_404(queryset)

    def get_serializer_context(self):
        context = super(DisplayReviews, self).get_serializer_context()
        x_forwarded_for = self.request.META.get('HTTP_X_FORWARDED_FOR')
        if x_forwarded_for:
            ip = x_forwarded_for.split(',')[0]
        else:
            ip = self.request.META.get('REMOTE_ADDR')
        context["ip"] = ip
        context["domain"] = self.kwargs['domain']
        context["api_key"] = self.kwargs['api_key']
        return context
