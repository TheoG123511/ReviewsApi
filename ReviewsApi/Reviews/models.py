from django.db import models
from django.utils import timezone
from django.core.validators import MaxValueValidator, MinValueValidator
from django.conf import settings


class DomainName(models.Model):
    """:synopsis: Classe qui permet de creer la table DomainName dans la base de donnees
                  """
    url = models.CharField(max_length=255, verbose_name='Url du site')
    reviews_day = models.PositiveSmallIntegerField(default=5, verbose_name='Nombre d\'avis par Jour et par Ip')
    api_key = models.CharField(max_length=255, verbose_name='Clée d\'api du site')
    created_at = models.DateTimeField(default=timezone.now, verbose_name="Date d'ajout")

    class Meta:
        verbose_name = "Mes Site"
        ordering = ['created_at']

    def __str__(self):
        """:synopsis: Méthode défini dans tous les modèles et
                       qui permet de reconnaître facilement les différents objets
                       """
        return self.url


class Reviews(models.Model):
    """:synopsis: Classe qui permet de creer la table Reviews dans la base de donnees
                  """
    name = models.CharField(max_length=56, verbose_name='Nom')
    email = models.EmailField(verbose_name='Email')
    reviews = models.TextField(verbose_name='Commentaire')
    domain = models.ForeignKey('DomainName', on_delete=models.CASCADE, verbose_name='Provient du site')
    star = models.PositiveSmallIntegerField(default=5, validators=[MaxValueValidator(5), MinValueValidator(1)],
                                            verbose_name='Nombre d\'étoile(s)')
    publish = models.BooleanField(default=False, verbose_name='L\'avis est public')
    ip = models.ForeignKey('IpList', on_delete=models.CASCADE)
    date = models.DateTimeField(default=timezone.now, verbose_name="Date d'ajout")

    class Meta:
        verbose_name = "Avis Client"
        ordering = ['name', 'star']

    def __str__(self):
        """:synopsis: Méthode défini dans tous les modèles et
                       qui permet de reconnaître facilement les différents objets
                       """
        return self.name


class BlackList(models.Model):
    """:synopsis: Classe qui permet de creer la table BlackList dans la base de donnees
                      """
    ip_address = models.ForeignKey('IpList', on_delete=models.CASCADE, verbose_name='Addresse ip')
    reason = models.TextField(verbose_name='Raison du bannisement')
    banned_by = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, verbose_name='Bannie par')
    banned_at = models.DateTimeField(default=timezone.now, verbose_name="Date d'ajout")

    class Meta:
        verbose_name = "Liste Noir"
        ordering = ['ip_address', 'banned_at']

    def __str__(self):
        """:synopsis: Méthode défini dans tous les modèles et
                       qui permet de reconnaître facilement les différents objets
                       """
        return self.ip_address.ip_address

    def reason_preview(self):
        return self.reason[:50]


class IpList(models.Model):
    """:synopsis: Classe qui permet de creer la table IpList dans la base de donnees
                          """
    ip_address = models.CharField(max_length=50)

    class Meta:
        verbose_name = "Post Avis Ip Log"
        ordering = ['ip_address']

    def __str__(self):
        """:synopsis: Méthode défini dans tous les modèles et
                       qui permet de reconnaître facilement les différents objets
                       """
        return self.ip_address
