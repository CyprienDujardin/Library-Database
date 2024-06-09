# Projet AI23 Groupe3 



Rayan Chergui, Louis Coulon, Alexandre Ventura, Cyprien Dujardin


Système de gestion d'une bibliothèque : 

Vous êtes chargés de concevoir un système de gestion pour une bibliothèque municipale qui souhaite informatiser ses activités : catalogage, consultations, gestion des utilisateurs, prêts, etc.

La bibliothèque offre un accès à un large choix de ressources de différents types (livres, films, et enregistrement musicaux). Une ressource, quelque soit son type, a un code unique, un titre, une liste de contributeurs, une date d'apparition, un éditeur, un genre et un code de classification qui permet de la localiser dans la bibliothèque. Un contributeur est caractérisé par son nom, son prénom, sa date de naissance et sa nationalité. Dans le cas d'un livre, les contributeurs sont les auteurs du document. Dans le cas d'une œuvre musicale, on distinguera compositeurs et interprètes. De même, on distinguera les réalisateurs et les acteurs pour les films. On souhaite également conserver des informations spécifiques suivant le type du document, par exemple : l'ISBN d'un livre et son résumé, la langue des documents écrits et des films, la longueur d'un film ou d'une œuvre musicale, le synopsis d'un film, etc. Enfin, les ressources dont dispose la bibliothèque peuvent être disponibles en plusieurs exemplaires, chacun dans un état différent : neuf, bon, abîmé ou perdu.

Chaque membre du personnel de la bibliothèque dispose d'un compte utilisateur (login et mot de passe) qui lui permet d'accéder aux fonctions d'administration du système. Chaque membre est caractérisé par son nom, son prénom, son adresse et son adresse e-mail.

Les adhérents de la bibliothèque disposent, eux aussi, d'un compte utilisateur (login et mot de passe) ainsi que d'une carte d'adhérent qui leur permettent d'emprunter des documents. Un adhérent est caractérisé par son nom, prénom, date de naissance, adresse, adresse e-mail et numéro de téléphone. La bibliothèque souhaite garder trace de toutes les adhésions, actuelles et passées.

Pour pouvoir emprunter un document, un adhérent à besoin de s'authentifier. Chaque prêt est caractérisé par une date de prêt et une durée de prêt. Un document ne peut être emprunté que s'il est disponible et en bon état. Un adhèrent ne peut emprunter simultanément qu'un nombre limité d'œuvres, chacune pour une durée limitée. Un adhérent sera sanctionné pour les retards dans le retour d'un ouvrage, ainsi que s'il dégrade l'état de celui-ci. Tout retard dans la restitution des documents empruntés entraîne une suspension du droit de prêt d'une durée égale au nombre de jours de retard. En cas de perte ou détérioration grave d'un document, la suspension du droit de prêt est maintenue jusqu'à ce que l'adhérent rembourse le document. Enfin, la bibliothèque peut choisir de blacklister un adhérent en cas de sanctions répétées.
