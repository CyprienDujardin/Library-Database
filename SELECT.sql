--Recherche d'un document en fonction d'un genre
SELECT Ressources.*
FROM Ressources
INNER JOIN AssocGenre ON Ressources.Code = AssocGenre.Code
WHERE AssocGenre.nom = 'Science-fiction';


--Recherche d'une ressource par titre
SELECT *
FROM Ressources
WHERE Titre = 'nom de la ressource';


--Recherche d'un exemplaire disponible de la ressource Code <1>
SELECT Exemplaire.CodeDocument
FROM Exemplaire
LEFT JOIN AssocPret ON Exemplaire.CodeDocument = AssocPret.CodeDocument
WHERE AssocPret.CodeDocument IS NULL AND Exemplaire.NumExemplaire = 1;


--Recherche des contributeurs qui sont auteurs
SELECT Contributeur.*
FROM Contributeur
INNER JOIN Auteur ON Contributeur.IDContributeur = Auteur.IDContributeur;


--Stats emprunts
SELECT CodeDocument, COUNT(*) AS 'emprunts'
FROM AssocPret
GROUP BY CodeDocument
ORDER BY 'emprunts' ASC;
