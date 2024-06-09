import psycopg2

conn = psycopg2.connect(dbname='dbai23a003',host='tuxa.sme.utc',user='ai23a003',password='8fGneFBM')
cur = conn.cursor()

def MajEtat():
    
    print ("Saisir le code du document à mettre à jour")
    
    Code = input()

    
    print("Quel est l'état du document ? 'Neuf', 'Bon', 'Abimé' ou 'Perdu' ?")
    
    Etat = input()
    
    
    sql = "Update Exemplaire set Etat='%s' where Exemplaire.CodeDocument = '%s'" %(Etat, Code)
    
    cur.execute(sql)
    conn.commit()
    
    return 0



def MajDispo():
    
    print ("Saisir le code du document à mettre à jour")
    
    Code = input()

    print ("Quelle est la nouvelle disponibilité du document ? 'Emprunté', 'Reservé' ou 'Libre' ?")
    
    Dispo = input()
    
    sql = "Update Exemplaire set Disponibilite = '%s' where Exemplaire.CodeDocument = '%s'" %(Dispo, Code)

    cur.execute(sql)
    conn.commit()
    
    return 0




def AjouterRessource():
    print("Voulez vous ajouter 1-Un livre, 2-Un film, 3-Un enregistrement musical ?")
    
    Type=input()
    
    if Type=='1':

        print ("Entrer l'ISBN de la ressource")
        
        ISBN = input()
        
        print("Ecrire un résumé du livre")
        
        Resume = input()
        
    
    elif Type=='2':

        
        print ("Dans quel langue est le film ?")
        
        Langue = input()
        
        print ("Quelle est la longueur du film ? (Au format hh:mm:ss)")
        
        TimeFilm=input()
        
        print ("Entrer un synopsis du film")
        
        Synopsis = input()
        
    elif Type ==  '3':

        
        print ("Quelle est la longueur de l'enregistrement ? (Au format hh:mm:ss)")
        
        TimeMus=input()
    
    else : 
        return "Mauvaise saisie"
    
    print("Entrer le code de la ressource à ajouter")
    
    Code = input()
    
    print ("Entrez le Titre de la ressource")
    
    Titre = input()
    
    print ("Entrer la date de parution au format 'AAAA-MM-JJ'")
    
    Date = input()
    
    print ("Entrer le code de classification") 
    
    CodeCl=input()
    
    print("Entrer le code de l'éditeur")
    
    Editeur=input()
    
    print("Entrer le code du genre ")
    
    Genre= input()

    sql = "INSERT INTO Ressources (Code, Type, Titre, Date_apparition, CodeClassification, IDEditeur, IDGenre) VALUES  (%s,'%s','%s','%s', '%s', %s,'%s') "%(Code, Type, Titre, Date, CodeCl, Editeur, Genre) 
    
    cur.execute(sql)
    
    conn.commit()

    if Type=='1':
        Type='Livre'
        
        sql = "INSERT INTO Livre (ISBN, Resume, IDRessources) VALUES ('%s', '%s', %s)"%(ISBN, Resume, Code)
        
        cur.execute(sql)
        conn.commit()

     
    elif Type=='2':
        Type= 'Film'
        
        sql= "INSERT INTO Film (Langue, Longueur, Synopsis, IDRessources) VALUES ('%s', '%s', '%s', %s)"%(Langue, TimeFilm, Synopsis, Code)
        cur.execute(sql)
        conn.commit()

    
    elif Type ==  '3':
        Type = 'Enregistrement musical'
        
        sql = "INSERT INTO EnregistrementMusical (Longueur, IDRessources) VALUES ('%s', %s)"%(TimeMus, Code)
        cur.execute(sql)
        conn.commit()
    
    return 0

def Sanction():
    choix="0"
    while(choix != "3"):
        print("Que voulez-vous faire ? \n 1- Sanctionner un adherent \n 2- Retirer une sanction d'un adherent \n 3-Quitter \n")
        choix = input()
        if choix == "3":
            return
        print("Quel est l'Id de l'adherent")
        idAdherent = int(input())
        sql= "Select login from adherent where Numcarte='%d' ;" %idAdherent
        cur.execute(sql)
        row = cur.fetchone()

        if row == []:
            print("Cet adherent n'existe pas \n")

        elif choix == "1":
            print("Quel sanction ? \n ")
            sanction = input()
            print("Date de début : ")
            date = input()
            print("Nombre de jour")
            jour = int(input())
            sql = "INSERT INTO Sanction VALUES ('%s','%s','%s',%d); UPDATE Adherent set Nb_sanction  = (Nb_sanction +1) WHERE Numcarte = %d" %(idAdherent,sanction,date,jour,idAdherent) # IdSanction est un serial
            cur.execute(sql)
            conn.commit()

        elif choix == "2":
            print("Id de la sanction à supprimer")
            idSanction = int(input())
            sql = "DELETE FROM Sanction WHERE idSanction = '%s';UPDATE Adherent set Nb_sanction  = (Nb_sanction +1) WHERE Numcarte = %d" %(idSanction,idAdherent) 
            cur.execute(sql)   
            conn.commit()


print ("êtes vous 1- Administrateur ou 2-Adhérent ?")
Num = input ()

Admin=False
Adh=False

if Num=='1':
        print ("Entrer votre login")
        log = input ()

        print ("Entrer votre mot de passe")
        mdp=input()

        sql= "Select login from Personnel where login='%s';" %log

        cur.execute(sql)
        row = cur.fetchone()

        print("row : ")
        print(row)

        if row == []:
            print("Erreur de login")

        else:
            sql = "Select MDP from personnel where login = '%s' ;" %log

            cur.execute(sql)
            row = cur.fetchone()
            
            while row[0] != mdp:
                print("Erreur de mot de passe, veuillez réessayer")
                mdp = input()

            else :
                Admin= True
else :
        print ("Entrer votre login")
        log = input ()

        print ("Entrer votre mot de passe")
        mdp=input()

        sql= "Select login from Adherent where login = '%s' ;" %log

        cur.execute(sql)
        row = cur.fetchone()

        if row == []:
            print("Erreur de login voulez vous creer un compte ?")

        else:
            sql = "Select MDP from Adherent where login = '%s' ;" %log

            cur.execute(sql)
            row = cur.fetchone()

            while row[0] != mdp:
                print("Erreur de mot de passe, veuillez réessayer")
                mdp = input()

            else :
                 Adh = True
                 
               
def emprunter():
    # Récuperer Numcarte
    sql= "Select Numcarte from Adherent where login = '%s'" %log
    cur.execute(sql)
    row = cur.fetchone()
    Numcarte = row[0]

    # Demander le code du doc
    print("Entrer le code de l'exemplaire à emprunter")
    Code = input()

    # Vérification de l'existence de l'exemplaire
    sql = "Select * from Exemplaire where CodeDocument = '%s'" % Code
    cur.execute(sql)
    row = cur.fetchone()
    if row == []:
       print("Cet exemplaire n'existe pas")
       return

    # Vérifier que le document est disponible
    sql = "SELECT Disponibilite FROM Exemplaire WHERE CodeDocument = '%s'" % Code
    cur.execute(sql)
    row = cur.fetchone()
    if row[0] != "Libre":
        print("Le document n'est pas disponible")
        return

    # Vérifier que l'adherent n'a pas atteint sa limite d'emprunts
    sql = "SELECT Nb_emprunt FROM Adherent WHERE Numcarte = %s" % Numcarte
    cur.execute(sql)
    row = cur.fetchone()
    if row[0] >= 3:
        print("Vous avez déjà atteint votre limite d'emprunts")
        return

    # Vérifier que l'adherent est éligible
    sql = "SELECT Eligibilite FROM Adherent WHERE Numcarte = %s" % Numcarte
    cur.execute(sql)
    row = cur.fetchone()
    if row[0] != "OK":
        print("Vousn ne pouvez pas emprunter")
        return

    # Enregistrer l'emprunt
    sql = "INSERT INTO AssocPret (#num_carte, #CodeDocument, Datepret, DureeMax, DateRendu)  VALUES (%s, '%s', current_timestamp, 14, NULL)" % (Numcarte, Code)
    cur.execute(sql)
    conn.commit()

    # Mettre à jour la disponibilité du document
    sql = "UPDATE Exemplaire SET Disponibilite = 'Emprunté' WHERE CodeDocument = '%s'" % Code
    cur.execute(sql)
    conn.commit()

    # Mettre à jour le nombre d'emprunts de l'adhérent
    sql = "UPDATE Adherent SET Nb_emprunt = Nb_emprunt + 1 WHERE CodeDocument = '%s'" % Code
    cur.execute(sql)
    conn.commit()
    print("Emprunt enregistré")
    return

def reserver():
    # Récuperer Numcarte
    sql= "Select Numcarte from Adherent where login = '%s';"%log
    cur.execute(sql)
    row = cur.fetchone()
    Numcarte = row[0]

    # Demander le code du doc
    print("Entrer le code de l'exemplaire à réserver")
    Code = input()

    # Vérification de l'existence de l'exemplaire
    sql = "Select * from Exemplaire where CodeDocument = '%s'" %Code
    cur.execute(sql)
    row = cur.fetchone()
    if row == []:
        print("Cet exemplaire n'existe pas")
        return

    # Vérifier que le document est disponible
    sql = "SELECT Disponibilite FROM Exemplaire WHERE CodeDocument = '%s'" % Code
    cur.execute(sql)
    row = cur.fetchone()
    if row[0] != "Libre":
        print( "Le document n'est pas disponible")
        return

    # Vérifier que l'adherent n'a pas atteint sa limite d'emprunts
    sql = "SELECT Nb_emprunt FROM Adherent WHERE Numcarte = %s" % Numcarte
    cur.execute(sql)
    row = cur.fetchone()
    if row[0] >= 3:
        print("Vous avez déjà atteint votre limite d'emprunts")
        return

    # Vérifier que l'adherent est éligible
    sql = "SELECT Eligibilite FROM Adherent WHERE Numcarte = %s" % Numcarte
    cur.execute(sql)
    row = cur.fetchone()
    if row[0] != "OK":
        print("Vousn ne pouvez pas réserver")
        return

    # Mise à jour de la disponibilité du document
    sql = "Update Exemplaire set Disponibilite = 'Reserve' where CodeDocument = '%s'" % Code
    cur.execute(sql)
    conn.commit()
    print("Réservation effectuée avec succès")

def consulter_exemplaires():
    # Demander le code du doc
    print("Entrer le code du document à consulter")
    Code = input()
    
    sql = "SELECT * FROM Ressources R INNER JOIN Exemplaire E ON E.NumExemplaire = R.Code WHERE R.Code = %s"%Code
    cur.execute(sql)
    rows = cur.fetchall()
    print(rows)
    for row in rows:
        print(row)



if Admin == True :
    while (True):
        print ("Voulez vous :\n 1- Sanctionner un adhérent \n 2-Ajouter une ressource \n 3-Mettre à jour l'état d'un exemplaire \n 4-Mettre à jour la disponibilité d'un exemplaire \n Quitter \n")
        choix= input()
        if choix == '1':
            Sanction()
        elif choix == '2':
            AjouterRessource()
        elif choix == '3':
            MajEtat()
        elif choix == '4':
            MajDispo()
        else:
            break


elif Adh == True:
    while (True):
        print ("Voulez vous :\n 1- Emprunter \n 2-Reserver \n 3- Consulter les exemplaire \n 4- Quitter\n")
        choix= input()
        if choix == '1' :
            emprunter()
        elif choix == '2':
            reserver()
        elif choix == '3':
            consulter_exemplaires()
        else:
            break

print("Au revoir")

conn.close()
