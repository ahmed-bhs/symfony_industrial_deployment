# <span style="color: darkgray;">Industrialisation du Web</span>

[![Build Status](https://travis-ci.org/Y0D4RK/web_in_dus.svg?branch=v2.0)](https://travis-ci.org/Y0D4RK/web_in_dus)

[See my Github Page](https://y0d4rk.github.io/web_in_dus/)

<em style="">--------</em>
<em style="">| <strong>Projet&nbsp;sous&nbsp;Symfony&nbsp;3.4.8&nbsp;&nbsp;&nbsp;</strong>|</em>
<em style="">--------</em>

<img src="http://www.xlwlx.fr/images/induWeb.png" width="250"/>

<h2 style="color: darkgray; margin: 10 0 10 0;">Qui suis-je ?</h2>

Cornette Gauthier aka Yodark - Un étudiant en 5ème année au sein de
[ESGI](http://www.esgi.fr) en filière Ingénierie du Web.

<h2 style="color: darkgray;">Guide étape 1 - Installation du projet</h2>

Installation de git flow
```bash
    sudo apt-get install git-flow
```
Création du projet avec Symfony CLI
```bash
    symfony new web_indus 3.4
```
```bash
    cd web_indus
```
Installation des vendors
```bash
    composer install
```
Initialisation de git flow
```bash
    git flow init
```
Vide le cache de Symfony
```bash
    sf3 cache:clear
```
Execution du serveur web local
```bash
    sf3 server:run
```
<h2 style="color: darkgray;">Guide étape 3 - Feature git flow</h2>

Nouvelle feature
```bash
    git flow feature start readme_add 
```
```bash
    nano readme.md 
```
Cloture la feature
```bash
    git commit -m "README.md updated"
```
```bash
    git flow feature finish readme_add
```
<h2 style="color: darkgray;">Guide étape 4 - Release git flow</h2>

Nouvelle release
```bash
    git flow release start 1.0
```
Cloture la release
```bash
    git flow release finish 1.0
```
Publication de la release sur github
```bash
    git push --tags v1.0
```
```bash
    git push origin master
```
<h2 style="color: darkgray;">Guide étape 5 - Hotfix git flow</h2>

Nouvelle hotfix
```bash
    git flow hotfix start v1.1
```
Cloture de la hotfix
```bash
    git flow hotfix finish v1.1
```

[<h2 style="color: darkgray;">Guide étape 6 - Capistrano</h2>](http://capistranorb.com/)

Capistrano est un outil d'automatisation de déploiement sur serveurs distants.
Il est capable d'executer des taches arbitraires et inclut un ensemble de flux de travail de déploiement par défault.

Les fichiers de configurations se trouvent dans le dossier "./config/"

Au sein de se dossier nous avons un fichier deploy.rb (Ruby) qui contient les différents paramètre nécessaire au déploiement. (A ajouter au gitignore - Google Dork).

