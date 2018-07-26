# Ze Super Concurrent de Doctolib, nommé... Doctolib !


Salut mon p'tit moussaillon !
Bienvenue sur le repository de la superbe application Rails de François Dasylva et Jeremy Rak !

Ce projet crée une base de donnée pour un site similaire à Doctolib.

Pour le premier exercice, les models ont été créé comme suit :

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

Puis pour le deuxième exercice, deux tables ont été créées ainsi :

    city : un docteur, un patient, et un rendez-vous appartiennent tous à une city. Une city peut avoir plusieurs docteurs, patients, et rendez-vous
    Nous avons retiré la ligne specialty de la table doctor et l'avons remplacé par un model à part entière : un model specialty. Un docteur aurait plusieurs specialty, et une specialty pourrait concerner plusieurs doctor


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
