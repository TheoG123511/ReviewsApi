from django.contrib import admin
from .models import DomainName, Reviews, BlackList

# Register your models here.
admin.site.site_header = "Tableaux de bord - Administrateur"
admin.site.site_title = 'Bienvenue sur votre interface de gestion'
admin.site.index_title = "Bienvenue sur l'interface de gestion"


class BlackListAdmin(admin.ModelAdmin):
    """
    :synopsis: Classe qui permet d'afficher les donnees contenu dans la table BlackList
       """
    list_display = ('ip_address', 'reason', 'banned_by', 'banned_at')
    list_filter = ('ip_address', 'banned_by', 'banned_at')
    search_fields = ('reason', 'ip_address__ip_address', 'banned_by__username',)


class ReviewsAdmin(admin.ModelAdmin):
    """
    :synopsis: Classe qui permet d'afficher les donnees contenu dans la table Reviews
           """
    list_display = ('name', 'email', 'domain', 'reviews', 'star', 'publish', 'ip', 'date')
    list_filter = ('email', 'domain', 'star', 'publish', 'date', 'name', 'ip')
    # readonly_fields = ('ip',)
    search_fields = ('name', 'reviews', 'email', 'domain__url', 'ip__ip_address',)
    change_form_template = "admin/reviews_change_form.html"

    class Media:
        css = {
            "all": ("customReviews.css",)
        }

    def change_view(self, request, object_id, form_url='', extra_context=None):
        """
        :synopsis: Methode qui permet de modifier la page de modification d'un avis clients
        :param request: la rêquet de l'utilisateur
        :type request: object
        :param object_id: l'id de l'object dans la base de donnée consulter par l'utilisateur
        :type object_id: int
        :param form_url: l'url vers un formulaire
        :type form_url: str
        :param extra_context: Un dictionnaire contenant les donnees a passer au templates
        :type extra_context: dict
        :return: Une instance de la classe ReviewsAdmin
        :rtype: ReviewsAdmin:
                          """
        extra_context = extra_context or {}
        extra_context['data'] = self.getInfoAboutIp(object_id)
        return super(ReviewsAdmin, self).change_view(
            request, object_id, form_url, extra_context=extra_context,
        )

    # noinspection PyMethodMayBeStatic
    def getInfoAboutIp(self, object_id):
        """
        :synopsis: Methode qui permet de récuperer les infos sur l'ip qui à poster le message (si elle est ban ou non)
        :param object_id: l'id de l'object dans la base de donnée consulter par l'utilisateur
        :type object_id: int
        :return: True si l'ip est bannie
        :rtype: boolean:
        :return: False si l'ip n'est pas bannie
        :rtype: boolean:
                  """
        try:
            review = Reviews.objects.get(id=object_id)
            BlackList.objects.get(ip_address=review.ip)
            return True
        except BlackList.DoesNotExist:
            return False
        except BlackList.MultipleObjectsReturned:
            return False


class DomainNameAdmin(admin.ModelAdmin):
    """
    :synopsis: Classe qui permet d'afficher les donnees contenu dans la table DomainName
           """
    list_display = ('url', 'reviews_day', 'api_key', 'created_at')
    list_filter = ('created_at', 'reviews_day')
    search_fields = ('url', 'reviews_day', 'api_key')
    readonly_fields = ('created_at',)
    change_form_template = "admin/domain_change_form.html"


class IpListAdmin(admin.ModelAdmin):
    """
    :synopsis: Classe qui permet d'afficher les donnees contenu dans la table IpList
           """
    list_display = ('ip_address',)
    list_filter = ('ip_address',)


admin.site.register(Reviews, ReviewsAdmin)
admin.site.register(DomainName, DomainNameAdmin)
admin.site.register(BlackList, BlackListAdmin)
# admin.site.register(IpList, IpListAdmin)
