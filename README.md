# Ze Super Concurrent de Doctolib, nommé... Doctolib !


Salut mon p'tit moussaillon !
Bienvenue sur le repository de la superbe application Rails de François Dasylva et Jeremy Rak !

Ce projet crée une base de donnée pour un site similaire à Doctolib.

Pour ce premier exercice, nous allons t'aider et te donner les models à créer :

    un model doctor, qui a comme attributs :
        un first_name, qui est un string
        un last_name, qui est un string
        un specialty, qui est un string
        un postal_code, qui est un integer
    un model patient, qui a comme attributs :
        un first_name, qui est un string
        un last_name, qui est un string
    un model appoitments, qui a comme attributs :
        un date, qui est un datetime

Un appointment ne peut avoir qu'un seul doctor, mais un doctor peut avoir plusieurs appointment. Un appointment ne peut avoir qu'un seul patient, mais un patient peut avoir plusieurs appointment. Enfin, un doctor peut avoir plusieurs patient, au travers des appointments, et vice versa.

## Instructions ##
Pour tester notre super appli, réalisez les processus suivants :
- git clone https://github.com/TheFSilver/Doctolib.git

pour copier notre répo sur votre machine
- cd Doctolib/

pour se déplacer dans le bon dossier
- bundle install

pour mettre à jour votre liste de gems
- rails db:migrate

pour que les migrations soient bien effectuées
- rails db:seed

pour pouvoir initialiser et remplir votre database !

Cher correcteur/correctrice, si vous avez bien executez toutes ces commandes, la base de données complète se trouve au chemin d'accès suivant :

```Doctolib/db/development.sqlite3 ```

Ouvrez-la avec <a href="http://sqlitebrowser.org/">DB Browser</a> ou <a href="http://sqlitestudio.pl/?act=download">SQLStudio</a>

### Concepteurs ###

Conçu en Ruby on Rails, ligne par ligne, par Jeremy R. ( <a href="https://github.com/skageraz">Skageraz</a> ) et François D. ( <a href="https://github.com/TheFSilver">TheFSilver</a> ).
