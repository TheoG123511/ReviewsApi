# Generated by Django 3.0.7 on 2020-07-06 19:08

from django.conf import settings
import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('Reviews', '0002_blacklist_domainname_iplist_reviews'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='blacklist',
            options={'ordering': ['ip_address', 'banned_at'], 'verbose_name': 'Liste Noir'},
        ),
        migrations.AlterModelOptions(
            name='domainname',
            options={'ordering': ['created_at'], 'verbose_name': 'Mes Site'},
        ),
        migrations.AlterModelOptions(
            name='iplist',
            options={'ordering': ['ip_address'], 'verbose_name': 'Post Avis Ip Log'},
        ),
        migrations.AlterModelOptions(
            name='reviews',
            options={'ordering': ['name', 'star'], 'verbose_name': 'Avis Client'},
        ),
        migrations.AddField(
            model_name='domainname',
            name='api_key',
            field=models.CharField(max_length=255, null=True, verbose_name="Clée d'api du site"),
        ),
        migrations.AlterField(
            model_name='blacklist',
            name='banned_by',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='Bannie par'),
        ),
        migrations.AlterField(
            model_name='blacklist',
            name='ip_address',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Reviews.IpList', verbose_name='Addresse ip'),
        ),
        migrations.AlterField(
            model_name='blacklist',
            name='reason',
            field=models.TextField(verbose_name='Raison du bannisement'),
        ),
        migrations.AlterField(
            model_name='domainname',
            name='reviews_day',
            field=models.PositiveSmallIntegerField(default=5, verbose_name="Nombre d'avis par Jour et par Ip"),
        ),
        migrations.AlterField(
            model_name='domainname',
            name='url',
            field=models.CharField(max_length=255, verbose_name='Url du site'),
        ),
        migrations.AlterField(
            model_name='reviews',
            name='domain',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Reviews.DomainName', verbose_name='Provient du site'),
        ),
        migrations.AlterField(
            model_name='reviews',
            name='email',
            field=models.EmailField(max_length=254, verbose_name='Email'),
        ),
        migrations.AlterField(
            model_name='reviews',
            name='name',
            field=models.CharField(max_length=56, verbose_name='Nom'),
        ),
        migrations.AlterField(
            model_name='reviews',
            name='publish',
            field=models.BooleanField(default=False, verbose_name="L'avis est public"),
        ),
        migrations.AlterField(
            model_name='reviews',
            name='reviews',
            field=models.TextField(verbose_name='Commentaire'),
        ),
        migrations.AlterField(
            model_name='reviews',
            name='star',
            field=models.PositiveSmallIntegerField(default=5, validators=[django.core.validators.MaxValueValidator(5), django.core.validators.MinValueValidator(1)], verbose_name="Nombre d'étoile(s)"),
        ),
    ]
