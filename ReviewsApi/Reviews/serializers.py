from django.utils import timezone
from rest_framework import serializers
from .models import DomainName, Reviews, IpList, BlackList
import random


class ReviewsSerializer(serializers.ModelSerializer):
    """
        :synopsis: Classe qui permet de serializer et déserialisez des donnes provenant du model Reviews
    """
    class Meta:
        model = Reviews
        fields = ['id', 'name', 'email', 'reviews', 'star', 'date']
        read_only_fields = ['date', 'id', 'ip', 'domain']

    def create(self, validated_data):
        """
        :synopsis: Creer une nouvelle entrer dans la base de donnees et retourne le resultat
        :param validated_data: Les donnees envoyer par l'utilisateur lors de sa requete POST à la vue.
        :type validated_data: dict
        :return L'object inserer dans la base de données
        :rtype Reviews
        """
        try:
            validated_data["domain"] = DomainName.objects.get(id=self.context.get('domain'),
                                                              api_key=self.context.get('api_key'))
        except DomainName.DoesNotExist:
            return Reviews(**validated_data)
        try:
            validated_data['ip'] = IpList.objects.get(ip_address=self.context.get("ip"))
        except IpList.DoesNotExist:
            IpList(ip_address=self.context.get("ip")).save()
            validated_data['ip'] = IpList.objects.get(ip_address=self.context.get("ip"))
        except IpList.MultipleObjectsReturned:
            validated_data['ip'] = IpList.objects.filter(ip_address=self.context.get("ip"))[1]
        now = timezone.now()
        data = Reviews.objects.filter(date__range=(now + timezone.timedelta(days=-1), now))
        try:
            BlackList.objects.get(ip_address=validated_data['ip'].id)
            banned = 1
        except BlackList.DoesNotExist:
            banned = 0
        except BlackList.MultipleObjectsReturned:
            banned = 1
        finally:
            span = Reviews(**validated_data)
            span.id = random.randint(1, 6666666)
        if banned:
            return span
        if validated_data["domain"].reviews_day >= data.count():
            return Reviews.objects.create(**validated_data)
        else:
            return span
