CREATE TABLE IF NOT EXISTS Nationalite (
    nom VARCHAR PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Contributeur (
    IDContributeur INT PRIMARY KEY,
    Nom VARCHAR,
    Prenom VARCHAR,
    Date_naissance DATE,
    Nationalite VARCHAR,
    FOREIGN KEY (Nationalite) REFERENCES Nationalite(nom)
);

CREATE TABLE IF NOT EXISTS Auteur (
    IDContributeur INT PRIMARY KEY,
    FOREIGN KEY (IDContributeur) REFERENCES Contributeur(IDContributeur)
);

CREATE TABLE IF NOT EXISTS Acteur (
    IDContributeur INT PRIMARY KEY,
    FOREIGN KEY (IDContributeur) REFERENCES Contributeur(IDContributeur)
);

CREATE TABLE IF NOT EXISTS Realisateur (
    IDContributeur INT PRIMARY KEY,
    FOREIGN KEY (IDContributeur) REFERENCES Contributeur(IDContributeur)
);

CREATE TABLE IF NOT EXISTS Interprete (
    IDContributeur INT PRIMARY KEY,
    FOREIGN KEY (IDContributeur) REFERENCES Contributeur(IDContributeur)
);

CREATE TABLE IF NOT EXISTS Compositeur (
    IDContributeur INT PRIMARY KEY,
    FOREIGN KEY (IDContributeur) REFERENCES Contributeur(IDContributeur)
);

CREATE TABLE IF NOT EXISTS Genre (
    nom VARCHAR PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Editeur (
    IDEditeur INT PRIMARY KEY,
    nom VARCHAR
);

CREATE TABLE IF NOT EXISTS Ressources (
    Code INT PRIMARY KEY,
    Type VARCHAR,
    Titre VARCHAR,
    Date_apparition DATE,
    CodeClassification VARCHAR,
    IDEditeur INT,
    IDGenre VARCHAR,
    FOREIGN key (IDGenre) REFERENCES Genre (nom),
    FOREIGN KEY (IDEditeur) REFERENCES Editeur(IDEditeur)
);

CREATE TABLE IF NOT EXISTS AssocGenre (
    nom VARCHAR,
    Code INT ,
    primary key (nom, Code),
    FOREIGN KEY (nom) REFERENCES Genre(nom),
    FOREIGN KEY (Code) REFERENCES Ressources(Code)
);

-- Création de la table Livre
CREATE TABLE IF NOT EXISTS Livre (
  ISBN VARCHAR,
  Resume VARCHAR,
  IDRessources INT,
  PRIMARY KEY (ISBN, IDRessources),
  FOREIGN KEY (IDRessources) REFERENCES Ressources(Code)
);

-- Création de la table Film
CREATE TABLE IF NOT EXISTS Film (
  IDRessources INT,
  Langue VARCHAR,
  Longueur TIME,
  Synopsis VARCHAR,
  PRIMARY KEY (IDRessources),
  FOREIGN KEY (IDRessources) REFERENCES Ressources(Code)
);

-- Création de la table EnregistrementMusical
CREATE TABLE IF NOT EXISTS EnregistrementMusical (
  IDRessources INT,
  Longueur TIME,
  PRIMARY KEY (IDRessources),
  FOREIGN KEY (IDRessources) REFERENCES Ressources(Code)
);


-- Création de la table Personnel
CREATE TABLE IF NOT EXISTS Personnel (
  login VARCHAR,
  Adresse VARCHAR,
  MDP VARCHAR,
  Mail VARCHAR,
  PRIMARY KEY (login)
);

CREATE TABLE IF NOT EXISTS Adherent(
  Numcarte INT,
  Numtel VARCHAR,
  Adhesion VARCHAR CHECK (Adhesion IN ('Passée','Actuelle')),
  Nb_emprunt INT,
  Nb_sanction INT,
  Eligibilite VARCHAR CHECK (Eligibilite IN ('OK','Suspendu','Blacklisté')),
  login VARCHAR,
  MDP VARCHAR,
  Mail VARCHAR,
  PRIMARY KEY (Numcarte)
);



CREATE TABLE IF NOT EXISTS Etat(
  Etat VARCHAR,
  PRIMARY KEY (Etat)
);

CREATE TABLE IF NOT EXISTS Exemplaire(
  CodeDocument VARCHAR unique,
  NumExemplaire INT,
  Prix INT,
  Etat VARCHAR,
  Disponibilite VARCHAR,
  PRIMARY KEY (CodeDocument, NumExemplaire),
  FOREIGN KEY (NumExemplaire) REFERENCES Ressources(Code)
);



CREATE TABLE IF NOT EXISTS AssocPret(
  num_carte INT,
  CodeDocument VARCHAR,
  Datepret DATE,
  DureeMax int,
  DateRendu DATE,
  PRIMARY KEY (num_carte, CodeDocument),
  FOREIGN KEY (num_carte) REFERENCES Adherent(Numcarte),
  FOREIGN KEY (CodeDocument) REFERENCES Exemplaire(CodeDocument)
);

CREATE TABLE IF NOT EXISTS Sanction(
  IDSanction SERIAL PRIMARY KEY,
  IDAdherent INT,
  Type VARCHAR,
  DebutSuspension Date,
  DureeSuspension int,
  FOREIGN KEY (IDAdherent) REFERENCES Adherent(Numcarte)
);
