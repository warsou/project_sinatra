# project_sinatra

* affiche une page de saisie des potins
* permet d'enregistrer un potin
* permet d'afficher une page détaillée pour un potin choisi
* permet de modifier l'auteurice et/ou le contenu d'un potin


***
@@ -31,9 +32,11 @@ Se placer dans le dossier `thp-05-01-sinatra-gossip-master`. Installer les gemme
~~~bash
$ cd path/to/thp-05-01-sinatra-gossip-master
$ bundle install
$ ruby app.rb
$ shotgun -p 4567 # ou autre port de ton choix
~~~

Ouvrir un navigateur internet et ouvrir [la page servie par `shotgun`](http://localhost:4567)

***

## Configuration requise
@@ -70,6 +73,8 @@ Other ?

## Historique des versions

* version 00.30 : permet d'éditer un potin
* version 00.25 : liens circulaires
* version 00.20 : affiche un gossip si on rentre son ID dans l'URL
* version 00.10 : affiche à l'accueil la liste des potins déjà enregistrés
* version 00.03 : permet à l'individu de saisir et d'enregistrer un potin
