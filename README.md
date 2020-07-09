# ReviewsApi
Api qui permet de gérer les avis sur un site internet, développer en utilisant Django REST

# Comment installer les dépendances ?
pip install -r requirements.txt

# Fichier à modifier
Aller dans le fichier settings.py et modifier la valeur de la variable :<br/>
# ALLOWED_HOSTS
Il faut aussi modifier les données de connexion à la base de données en modifiant les valeurs de la variable :<br/>
# DATABASES
Dans le fichier settings.py il faut aussi modifier la clef secrète.<br/>
Aller sur le site : https://djecrety.ir/, puis générer une nouvelle clef, enfin il suffit de coller la nouvelle clef dans la variable :<br/>
# SECRET_KEY
Cross-Origin Resource Sharing est activé sur l'api si on veut le supprimer il suffit de commenter les lignes suivantes en ajoutant un # devant.<br/>
Il ne faut pas oublier de changer le domain dans les variables CORS_ORIGIN_WHITELIST et CORS_ORIGIN_REGEX_WHITELIST.<br/>
# Les lignes a commenté :<br/><br/>
# CORS_ORIGIN_ALLOW_ALL = True
# CORS_ALLOW_CREDENTIALS = True
# CORS_ORIGIN_WHITELIST = ['http://localhost:8080', ]
# CORS_ORIGIN_REGEX_WHITELIST = ['http://localhost:8080', ]

# Fichier statique
Il faut supprimer le contenu du dossier "static" (ReviewsApi/static) puis lancer la commande :<br/>
python manage.py collectstatic