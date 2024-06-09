INSERT INTO Nationalite (nom) VALUES ('Française');
INSERT INTO Nationalite (nom) VALUES ('Allemande');
INSERT INTO Nationalite (nom) VALUES ('Italienne');
INSERT INTO Nationalite (nom) VALUES ('Espagnole');
INSERT INTO Nationalite (nom) VALUES ('Britannique');
INSERT INTO Nationalite (nom) VALUES ('Américaine');
INSERT INTO Nationalite (nom) VALUES ('Canadienne');
INSERT INTO Nationalite (nom) VALUES ('Australienne');
INSERT INTO Nationalite (nom) VALUES ('Néerlandaise');
INSERT INTO Nationalite (nom) VALUES ('Belge');


INSERT INTO Contributeur (IDContributeur, Nom, Prenom, Date_naissance, Nationalite) VALUES (1, 'Durand', 'Jacques', '1998-01-01', 'Française');
INSERT INTO Contributeur (IDContributeur, Nom, Prenom, Date_naissance, Nationalite) VALUES (2, 'Schmidt', 'Marie', '1997-07-12', 'Allemande');
INSERT INTO Contributeur (IDContributeur, Nom, Prenom, Date_naissance, Nationalite) VALUES (3, 'Bianchi', 'Luca', '1999-03-03', 'Italienne');
INSERT INTO Contributeur (IDContributeur, Nom, Prenom, Date_naissance, Nationalite) VALUES (4, 'Garcia', 'Pablo', '2000-05-05', 'Espagnole');
INSERT INTO Contributeur (IDContributeur, Nom, Prenom, Date_naissance, Nationalite) VALUES (5, 'Smith', 'Emily', '2001-08-08', 'Britannique');
INSERT INTO Contributeur (IDContributeur, Nom, Prenom, Date_naissance, Nationalite) VALUES (6, 'Johnson', 'William', '2002-12-12', 'Américaine');
INSERT INTO Contributeur (IDContributeur, Nom, Prenom, Date_naissance, Nationalite) VALUES (7, 'Davies', 'Jessica', '2003-06-06', 'Canadienne');
INSERT INTO Contributeur (IDContributeur, Nom, Prenom, Date_naissance, Nationalite) VALUES (8, 'Wong', 'Henry', '2004-09-09', 'Australienne');
INSERT INTO Contributeur (IDContributeur, Nom, Prenom, Date_naissance, Nationalite) VALUES (9, 'van den Berg', 'Sophie', '2005-02-02', 'Néerlandaise');
INSERT INTO Contributeur (IDContributeur, Nom, Prenom, Date_naissance, Nationalite) VALUES (10, 'De Smet', 'Benjamin', '2006-04-04', 'Belge');


INSERT INTO Auteur (IDContributeur) VALUES (1);
INSERT INTO Auteur (IDContributeur) VALUES (2);
INSERT INTO Auteur (IDContributeur) VALUES (3);
INSERT INTO Auteur (IDContributeur) VALUES (4);
INSERT INTO Auteur (IDContributeur) VALUES (5);
INSERT INTO Auteur (IDContributeur) VALUES (6);
INSERT INTO Auteur (IDContributeur) VALUES (7);
INSERT INTO Auteur (IDContributeur) VALUES (8);
INSERT INTO Auteur (IDContributeur) VALUES (9);
INSERT INTO Auteur (IDContributeur) VALUES (10);


INSERT INTO Acteur (IDContributeur) VALUES (1);
INSERT INTO Acteur (IDContributeur) VALUES (2);
INSERT INTO Acteur (IDContributeur) VALUES (3);
INSERT INTO Acteur (IDContributeur) VALUES (4);
INSERT INTO Acteur (IDContributeur) VALUES (5);
INSERT INTO Acteur (IDContributeur) VALUES (6);
INSERT INTO Acteur (IDContributeur) VALUES (7);
INSERT INTO Acteur (IDContributeur) VALUES (8);
INSERT INTO Acteur (IDContributeur) VALUES (9);
INSERT INTO Acteur (IDContributeur) VALUES (10);


INSERT INTO Réalisateur (IDContributeur) VALUES (1);
INSERT INTO Réalisateur (IDContributeur) VALUES (2);
INSERT INTO Réalisateur (IDContributeur) VALUES (3);
INSERT INTO Réalisateur (IDContributeur) VALUES (4);
INSERT INTO Réalisateur (IDContributeur) VALUES (5);
INSERT INTO Réalisateur (IDContributeur) VALUES (6);
INSERT INTO Réalisateur (IDContributeur) VALUES (7);
INSERT INTO Réalisateur (IDContributeur) VALUES (8);
INSERT INTO Réalisateur (IDContributeur) VALUES (9);
INSERT INTO Réalisateur (IDContributeur) VALUES (10);


INSERT INTO Interprète (IDContributeur) VALUES (1);
INSERT INTO Interprète (IDContributeur) VALUES (2);
INSERT INTO Interprète (IDContributeur) VALUES (3);
INSERT INTO Interprète (IDContributeur) VALUES (4);
INSERT INTO Interprète (IDContributeur) VALUES (5);
INSERT INTO Interprète (IDContributeur) VALUES (6);
INSERT INTO Interprète (IDContributeur) VALUES (7);
INSERT INTO Interprète (IDContributeur) VALUES (8);
INSERT INTO Interprète (IDContributeur) VALUES (9);
INSERT INTO Interprète (IDContributeur) VALUES (10);


INSERT INTO Compositeur (IDContributeur) VALUES (1);
INSERT INTO Compositeur (IDContributeur) VALUES (2);
INSERT INTO Compositeur (IDContributeur) VALUES (3);
INSERT INTO Compositeur (IDContributeur) VALUES (4);
INSERT INTO Compositeur (IDContributeur) VALUES (5);
INSERT INTO Compositeur (IDContributeur) VALUES (6);
INSERT INTO Compositeur (IDContributeur) VALUES (7);
INSERT INTO Compositeur (IDContributeur) VALUES (8);
INSERT INTO Compositeur (IDContributeur) VALUES (9);
INSERT INTO Compositeur (IDContributeur) VALUES (10);


INSERT INTO Genre (nom) VALUES ('Comédie');
INSERT INTO Genre (nom) VALUES ('Drame');
INSERT INTO Genre (nom) VALUES ('Thriller');
INSERT INTO Genre (nom) VALUES ('Horreur');
INSERT INTO Genre (nom) VALUES ('Science-fiction');
INSERT INTO Genre (nom) VALUES ('Fantastique');
INSERT INTO Genre (nom) VALUES ('Animation');
INSERT INTO Genre (nom) VALUES ('Musical');
INSERT INTO Genre (nom) VALUES ('Romance');
INSERT INTO Genre (nom) VALUES ('Aventure');


INSERT INTO Editeur (IDEditeur, nom) VALUES (1, 'Editions du Seuil');
INSERT INTO Editeur (IDEditeur, nom) VALUES (2, 'Gallimard');
INSERT INTO Editeur (IDEditeur, nom) VALUES (3, 'Flammarion');
INSERT INTO Editeur (IDEditeur, nom) VALUES (4, 'Le Livre de Poche');
INSERT INTO Editeur (IDEditeur, nom) VALUES (5, 'Pocket');
INSERT INTO Editeur (IDEditeur, nom) VALUES (6, 'Albin Michel');
INSERT INTO Editeur (IDEditeur, nom) VALUES (7, 'Grasset');
INSERT INTO Editeur (IDEditeur, nom) VALUES (8, 'Larousse');
INSERT INTO Editeur (IDEditeur, nom) VALUES (9, 'Hachette');
INSERT INTO Editeur (IDEditeur, nom) VALUES (10, 'Le Robert');


INSERT INTO Ressources (Code, Type, Titre, Date_apparition, CodeClassification, IDEditeur, IDRessources) VALUES (1, 'Livre', 'Les Misérables', '1862-01-01', 'LIT', 1, 1);
INSERT INTO Ressources (Code, Type, Titre, Date_apparition, CodeClassification, IDEditeur, IDRessources) VALUES (2, 'Film', 'Le Parrain', '1972-03-14', 'FIL', 6, 2);
INSERT INTO Ressources (Code, Type, Titre, Date_apparition, CodeClassification, IDEditeur, IDRessources) VALUES (3, 'Album', 'Thriller', '1982-11-30', 'MUS', 9, 3);
INSERT INTO Ressources (Code, Type, Titre, Date_apparition, CodeClassification, IDEditeur, IDRessources) VALUES (4, 'Série TV', 'Game of Thrones', '2011-04-17', 'SER', 7, 4);
INSERT INTO Ressources (Code, Type, Titre, Date_apparition, CodeClassification, IDEditeur, IDRessources) VALUES (5, 'Jeux video', 'The Legend of Zelda', '1986-02-21', 'JEU', 10, 5);
INSERT INTO Ressources (Code, Type, Titre, Date_apparition, CodeClassification, IDEditeur, IDRessources) VALUES (6, 'BD', 'Tintin au Tibet', '1960-10-01', 'BD', 2, 6);
INSERT INTO Ressources (Code, Type, Titre, Date_apparition, CodeClassification, IDEditeur, IDRessources) VALUES (7, 'Musique', 'Beethoven Symphony No. 9', '1824-05-07', 'MUS', 4, 7);
INSERT INTO Ressources (Code, Type, Titre, Date_apparition, CodeClassification, IDEditeur, IDRessources) VALUES (8, 'Roman', 'Le Petit Prince', '1943-04-06', 'LIT', 3, 8);
INSERT INTO Ressources (Code, Type, Titre, Date_apparition, CodeClassification, IDEditeur, IDRessources) VALUES (9, 'Film', 'Inception', '2010-07-16', 'FIL', 5, 9);
INSERT INTO Ressources (Code, Type, Titre, Date_apparition, CodeClassification, IDEditeur, IDRessources) VALUES (10, 'Série TV', 'Breaking Bad', '2008-01-20', 'SER', 8, 10);


INSERT INTO AssocGenre (nom, #Code) VALUES ('Drame', 2);
INSERT INTO AssocGenre (nom, #Code) VALUES ('Thriller', 3);
INSERT INTO AssocGenre (nom, #Code) VALUES ('Horreur', 4);
INSERT INTO AssocGenre (nom, #Code) VALUES ('Science-fiction', 5);
INSERT INTO AssocGenre (nom, #Code) VALUES ('Fantastique', 6);
INSERT INTO AssocGenre (nom, #Code) VALUES ('Animation', 7);
INSERT INTO AssocGenre (nom, #Code) VALUES ('Musical', 8);
INSERT INTO AssocGenre (nom, #Code) VALUES ('Romance', 9);
INSERT INTO AssocGenre (nom, #Code) VALUES ('Aventure', 10);
INSERT INTO AssocGenre (nom, #Code) VALUES ('Comédie', 1);


INSERT INTO Livre (#ISBN, Résumé, IDRessources) VALUES ('978-2253110285', 'Histoire de Jean Valjean, ex-forçat devenu maire de Montreuil-sur-Mer', 1);
INSERT INTO Livre (#ISBN, Résumé, IDRessources) VALUES ('978-2253011673', 'Un prince de l''espace qui apprend à la Terre à aimer et à se respecter', 8);
INSERT INTO Livre (#ISBN, Résumé, IDRessources) VALUES ('978-2253004538', 'Une enquête menée par le commissaire Maigret', 3);
INSERT INTO Livre (#ISBN, Résumé, IDRessources) VALUES ('978-2253025779', 'Roman autobiographique de l''écrivain Henry Miller', 5);
INSERT INTO Livre (#ISBN, Résumé, IDRessources) VALUES ('978-2253050450', 'Le combat de l''homme contre l''absurdité de la vie', 7);
INSERT INTO Livre (#ISBN, Résumé, IDRessources) VALUES ('978-2253070366', 'Récit de la déportation et de la survie de l''auteur dans les camps de concentration', 6);
INSERT INTO Livre (#ISBN, Résumé, IDRessources) VALUES ('978-2253017706', 'Histoire d''un groupe de personnages durant la Guerre de Sécession', 2);
INSERT INTO Livre (#ISBN, Résumé, IDRessources) VALUES ('978-2253022571', 'Un groupe d''individus se retrouve pris au piège dans un labyrinthe géant', 9);
INSERT INTO Livre (#ISBN, Résumé, IDRessources) VALUES ('978-2253034130', 'Une dystopie où la société est divisée en cinq factions', 4);
INSERT INTO Livre (#ISBN, Résumé, IDRessources) VALUES ('978-2253011178', 'L''histoire de deux sœurs qui découvrent leurs pouvoirs magiques', 10);


INSERT INTO Film (Langue, Longueur, Synopsis, IDRessources) VALUES ('Français', '03:48:00', 'L''histoire de Jean Valjean, ex-forçat devenu maire de Montreuil-sur-Mer', 1);
INSERT INTO Film (Langue, Longueur, Synopsis, IDRessources) VALUES ('Anglais', '02:55:00', 'L''histoire de la famille Corleone', 2);
INSERT INTO Film (Langue, Longueur, Synopsis, IDRessources) VALUES ('Anglais', '01:42:00', 'Un groupe d''individus se retrouve pris au piège dans un labyrinthe géant', 3);
INSERT INTO Film (Langue, Longueur, Synopsis, IDRessources) VALUES ('Anglais', '01:53:00', 'Un scientifique crée un serum qui lui donne la capacité de se déplacer à travers le temps', 4);
INSERT INTO Film (Langue, Longueur, Synopsis, IDRessources) VALUES ('Anglais', '02:30:00', 'Une jeune fille découvre qu''elle est une princesse et possède des pouvoirs magiques', 5);
INSERT INTO Film (Langue, Longueur, Synopsis, IDRessources) VALUES ('Français', '02:12:00', 'Récit de la déportation et de la survie de l''auteur dans les camps de concentration', 6);
INSERT INTO Film (Langue, Longueur, Synopsis, IDRessources) VALUES ('Français', '02:07:00', 'Un groupe de personnages durant la Guerre de Sécession', 7);
INSERT INTO Film (Langue, Longueur, Synopsis, IDRessources) VALUES ('Anglais', '01:47:00', 'Un prince de l''espace qui apprend à la Terre à aimer et à se respecter', 8);
INSERT INTO Film (Langue, Longueur, Synopsis, IDRessources) VALUES ('Anglais', '02:20:00', 'Une dystopie où la société est divisée en cinq factions', 9);
INSERT INTO Film (Langue, Longueur, Synopsis, IDRessources) VALUES ('Anglais', '03:05:00', 'Le combat de l''homme contre l''absurdité de la vie', 10);


INSERT INTO EnregistrementMusical (Longueur, IDRessources) VALUES ('01:45:00', 1);
INSERT INTO EnregistrementMusical (Longueur, IDRessources) VALUES ('01:30:00', 2);
INSERT INTO EnregistrementMusical (Longueur, IDRessources) VALUES ('02:15:00', 3);
INSERT INTO EnregistrementMusical (Longueur, IDRessources) VALUES ('01:50:00', 4);
INSERT INTO EnregistrementMusical (Longueur, IDRessources) VALUES ('02:00:00', 5);
INSERT INTO EnregistrementMusical (Longueur, IDRessources) VALUES ('01:55:00', 6);
INSERT INTO EnregistrementMusical (Longueur, IDRessources) VALUES ('01:40:00', 7);
INSERT INTO EnregistrementMusical (Longueur, IDRessources) VALUES ('02:05:00', 8);
INSERT INTO EnregistrementMusical (Longueur, IDRessources) VALUES ('01:35:00', 9);
INSERT INTO EnregistrementMusical (Longueur, IDRessources) VALUES ('02:10:00', 10);


INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('toto1234', '4 rue de la Paix, 75000 Paris', 'motdepasse123', 'toto@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('johndoe123', '2 rue des Fleurs, 75000 Paris', 'password123', 'johndoe@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('paulsmith456', '1 rue de la Plage, 75000 Paris', 'paulsmith456', 'paulsmith@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('maryjane789', '3 rue du Jardin, 75000 Paris', 'maryjane789', 'maryjane@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('jackdaniels', '5 avenue des Arbres, 75000 Paris', 'jackdaniels', 'jackdaniels@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('bobmarley123', '6 avenue des Fleurs, 75000 Paris', 'bobmarley123', 'bobmarley@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('katyperry456', '7 rue de la Plage, 75000 Paris', 'katyperry456', 'katyperry@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('adele789', '8 avenue des Arbres, 75000 Paris', 'adele789', 'adele@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('ladygaga123', '9 rue du Jardin, 75000 Paris', 'ladygaga123', 'ladygaga@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('brunomars456', '10 avenue des Fleurs, 75000 Paris', 'brunomars456', 'brunomars@gmail.com');


INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('rihanna123', '11 rue de la Paix, 75000 Paris', 'rihanna123', 'rihanna@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('justinbieber456', '12 avenue des Fleurs, 75000 Paris', 'justinbieber456', 'justinbieber@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('beyonce789', '13 rue de la Plage, 75000 Paris', 'beyonce789', 'beyonce@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('drake123', '14 avenue des Arbres, 75000 Paris', 'drake123', 'drake@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('taylorswift456', '15 rue du Jardin, 75000 Paris', 'taylorswift456', 'taylorswift@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('kendricklamar789', '16 rue de la Paix, 75000 Paris', 'kendricklamar789', 'kendricklamar@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('kanye123', '17 avenue des Fleurs, 75000 Paris', 'kanye123', 'kanye@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('edsheeran456', '18 rue de la Plage, 75000 Paris', 'edsheeran456', 'edsheeran@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('theweeknd789', '19 avenue des Arbres, 75000 Paris', 'theweeknd789', 'theweeknd@gmail.com');
INSERT INTO Compte (#login, Adresse, MDP, Mail) VALUES ('mileycyrus123', '20 rue du Jardin, 75000 Paris', 'mileycyrus123', 'mileycyrus@gmail.com');


INSERT INTO Personnel (#login, Adresse, MDP, Mail) VALUES ('toto1234', '4 rue de la Paix, 75000 Paris', 'motdepasse123', 'toto@gmail.com');
INSERT INTO Personnel (#login, Adresse, MDP, Mail) VALUES ('johndoe123', '2 rue des Fleurs, 75000 Paris', 'password123', 'johndoe@gmail.com');
INSERT INTO Personnel (#login, Adresse, MDP, Mail) VALUES ('paulsmith456', '1 rue de la Plage, 75000 Paris', 'paulsmith456', 'paulsmith@gmail.com');
INSERT INTO Personnel (#login, Adresse, MDP, Mail) VALUES ('maryjane789', '3 rue du Jardin, 75000 Paris', 'maryjane789', 'maryjane@gmail.com');
INSERT INTO Personnel (#login, Adresse, MDP, Mail) VALUES ('jackdaniels', '5 avenue des Arbres, 75000 Paris', 'jackdaniels', 'jackdaniels@gmail.com');
INSERT INTO Personnel (#login, Adresse, MDP, Mail) VALUES ('bobmarley123', '6 avenue des Fleurs, 75000 Paris', 'bobmarley123', 'bobmarley@gmail.com');
INSERT INTO Personnel (#login, Adresse, MDP, Mail) VALUES ('katyperry456', '7 rue de la Plage, 75000 Paris', 'katyperry456', 'katyperry@gmail.com');
INSERT INTO Personnel (#login, Adresse, MDP, Mail) VALUES ('adele789', '8 avenue des Arbres, 75000 Paris', 'adele789', 'adele@gmail.com');
INSERT INTO Personnel (#login, Adresse, MDP, Mail) VALUES ('ladygaga123', '9 rue du Jardin, 75000 Paris', 'ladygaga123', 'ladygaga@gmail.com');
INSERT INTO Personnel (#login, Adresse, MDP, Mail) VALUES ('brunomars456', '10 avenue des Fleurs, 75000 Paris', 'brunomars456', 'brunomars@gmail.com');


INSERT INTO Adhérent (#Numcarte, Numtel, Adhésion, Nb_emprunt, Nb_sanction, Eligibilité, login, MDP, Mail) VALUES (11, '0123456789', '2022-01-01', 0, 0, 'Oui', 'rihanna123', 'rihanna123', 'rihanna@gmail.com');
INSERT INTO Adhérent (#Numcarte, Numtel, Adhésion, Nb_emprunt, Nb_sanction, Eligibilité, login, MDP, Mail) VALUES (12, '0987654321', '2022-02-01', 0, 0, 'Oui', 'justinbieber456', 'justinbieber456', 'justinbieber@gmail.com');
INSERT INTO Adhérent (#Numcarte, Numtel, Adhésion, Nb_emprunt, Nb_sanction, Eligibilité, login, MDP, Mail) VALUES (13, '0147258369', '2022-03-01', 0, 0, 'Oui', 'beyonce789', 'beyonce789', 'beyonce@gmail.com');
INSERT INTO Adhérent (#Numcarte, Numtel, Adhésion, Nb_emprunt, Nb_sanction, Eligibilité, login, MDP, Mail) VALUES (14, '0369258147', '2022-04-01', 0, 0, 'Oui', 'drake123', 'drake123', 'drake@gmail.com');
INSERT INTO Adhérent (#Numcarte, Numtel, Adhésion, Nb_emprunt, Nb_sanction, Eligibilité, login, MDP, Mail) VALUES (15, '1472583690', '2022-05-01', 0, 0, 'Oui', 'taylorswift456', 'taylorswift456', 'taylorswift@gmail.com');
INSERT INTO Adhérent (#Numcarte, Numtel, Adhésion, Nb_emprunt, Nb_sanction, Eligibilité, login, MDP, Mail) VALUES (16, '2581473690', '2022-06-01', 0, 0, 'Oui', 'kendricklamar789', 'kendricklamar789', 'kendricklamar@gmail.com');
INSERT INTO Adhérent (#Numcarte, Numtel, Adhésion, Nb_emprunt, Nb_sanction, Eligibilité, login, MDP, Mail) VALUES (17, '3690258147', '2022-07-01', 0, 0, 'Oui', 'kanye123', 'kanye123', 'kanye@gmail.com');
INSERT INTO Adhérent (#Numcarte, Numtel, Adhésion, Nb_emprunt, Nb_sanction, Eligibilité, login, MDP, Mail) VALUES (18, '3692581470', '2022-08-01', 0, 0, 'Oui', 'edsheeran456', 'edsheeran456', 'edsheeran@gmail.com');
INSERT INTO Adhérent (#Numcarte, Numtel, Adhésion, Nb_emprunt, Nb_sanction, Eligibilité, login, MDP, Mail) VALUES (19, '4758369258', '2022-09-01', 0, 0, 'Oui', 'theweeknd789', 'theweeknd789', 'theweeknd@gmail.com');
INSERT INTO Adhérent (#Numcarte, Numtel, Adhésion, Nb_emprunt, Nb_sanction, Eligibilité, login, MDP, Mail) VALUES (20, '2583691475', '2022-10-01', 0, 0, 'Oui', 'mileycyrus123', 'mileycyrus123', 'mileycyrus@gmail.com');

INSERT INTO Etat (Etat) VALUES ('Bon état');
INSERT INTO Etat (Etat) VALUES ('Très bon état');
INSERT INTO Etat (Etat) VALUES ('Usé');


INSERT INTO Exemplaire (CodeDocument, NumExemplaire, Prix, Etat, Disponibilité) VALUES ('XYZ123', 1, 10, 'Bon état', 'Disponible');
INSERT INTO Exemplaire (CodeDocument, NumExemplaire, Prix, Etat, Disponibilité) VALUES ('ABC456', 1, 15, 'Très bon état', 'Disponible');
INSERT INTO Exemplaire (CodeDocument, NumExemplaire, Prix, Etat, Disponibilité) VALUES ('DEF789', 1, 5, 'Usé', 'Disponible');
INSERT INTO Exemplaire (CodeDocument, NumExemplaire, Prix, Etat, Disponibilité) VALUES ('GHI246', 1, 25, 'Bon état', 'Indisponible');
INSERT INTO Exemplaire (CodeDocument, NumExemplaire, Prix, Etat, Disponibilité) VALUES ('JKL159', 1, 20, 'Très bon état', 'Indisponible');
INSERT INTO Exemplaire (CodeDocument, NumExemplaire, Prix, Etat, Disponibilité) VALUES ('MNO753', 1, 10, 'Usé', 'Indisponible');
INSERT INTO Exemplaire (CodeDocument, NumExemplaire, Prix, Etat, Disponibilité) VALUES ('PQR357', 1, 15, 'Bon état', 'En réparation');
INSERT INTO Exemplaire (CodeDocument, NumExemplaire, Prix, Etat, Disponibilité) VALUES ('PQR357', 1, 15, 'Bon état', 'En réparation');
INSERT INTO Exemplaire (CodeDocument, NumExemplaire, Prix, Etat, Disponibilité) VALUES ('STU852', 1, 25, 'Très bon état', 'Perdu');
INSERT INTO Exemplaire (CodeDocument, NumExemplaire, Prix, Etat, Disponibilité) VALUES ('VWX147', 1, 20, 'Usé', 'Non renouvelable');


INSERT INTO AssocPrêt (#num_carte, #CodeDocument, Datepret, DuréeMax, DateRendu) VALUES (1, 'XYZ123', '2022-01-01', '14 days', NULL);
INSERT INTO AssocPrêt (#num_carte, #CodeDocument, Datepret, DuréeMax, DateRendu) VALUES (2, 'ABC456', '2022-02-01', '14 days', NULL);
INSERT INTO AssocPrêt (#num_carte, #CodeDocument, Datepret, DuréeMax, DateRendu) VALUES (3, 'DEF789', '2022-03-01', '14 days', NULL);
INSERT INTO AssocPrêt (#num_carte, #CodeDocument, Datepret, DuréeMax, DateRendu) VALUES (4, 'GHI246', '2022-04-01', '14 days', NULL);
INSERT INTO AssocPrêt (#num_carte, #CodeDocument, Datepret, DuréeMax, DateRendu) VALUES (5, 'JKL159', '2022-05-01', '14 days', NULL);
INSERT INTO AssocPrêt (#num_carte, #CodeDocument, Datepret, DuréeMax, DateRendu) VALUES (6, 'MNO753', '2022-06-01', '14 days', NULL);
INSERT INTO AssocPrêt (#num_carte, #CodeDocument, Datepret, DuréeMax, DateRendu) VALUES (7, 'PQR357', '2022-07-01', '14 days', NULL);
INSERT INTO AssocPrêt (#num_carte, #CodeDocument, Datepret, DuréeMax, DateRendu) VALUES (8, 'STU852', '2022-08-01', '14 days', NULL);
INSERT INTO AssocPrêt (#num_carte, #CodeDocument, Datepret, DuréeMax, DateRendu) VALUES (9, 'VWX147', '2022-09-01', '14 days', NULL);
INSERT INTO AssocPrêt (#num_carte, #CodeDocument, Datepret, DuréeMax, DateRendu) VALUES (10, 'YZA258', '2022-10-01', '14 days', NULL);


INSERT INTO Sanction (Type, Emprunt, Début suspension, Durée suspension, IDAdhérent) VALUES ('Retard', 'XYZ123', '2022-01-01', '14 days', 1);
INSERT INTO Sanction (Type, Emprunt, Début suspension, Durée suspension, IDAdhérent) VALUES ('Retard', 'ABC456', '2022-02-01', '14 days', 2);
INSERT INTO Sanction (Type, Emprunt, Début suspension, Durée suspension, IDAdhérent) VALUES ('Perte', 'DEF789', '2022-03-01', '14 days', 3);
INSERT INTO Sanction (Type, Emprunt, Début suspension, Durée suspension, IDAdhérent) VALUES ('Retard', 'GHI246', '2022-04-01', '14 days', 4);
INSERT INTO Sanction (Type, Emprunt, Début suspension, Durée suspension, IDAdhérent) VALUES ('Retard', 'JKL159', '2022-05-01', '14 days', 5);
INSERT INTO Sanction (Type, Emprunt, Début suspension, Durée suspension, IDAdhérent) VALUES ('Perte', 'MNO753', '2022-06-01', '14 days', 6);
INSERT INTO Sanction (Type, Emprunt, Début suspension, Durée suspension, IDAdhérent) VALUES ('Retard', 'PQR357', '2022-07-01', '14 days', 7);
INSERT INTO Sanction (Type, Emprunt, Début suspension, Durée suspension, IDAdhérent) VALUES ('Retard', 'STU852', '2022-08-01', '14 days', 8);
INSERT INTO Sanction (Type, Emprunt, Début suspension, Durée suspension, IDAdhérent) VALUES ('Retard', 'VWX147', '2022-09-01', '14 days', 9);
INSERT INTO Sanction (Type, Emprunt, Début suspension, Durée suspension, IDAdhérent) VALUES ('Perte', 'YZA258', '2022-10-01', '14 days', 10);

