-- Q1:INSERT - Ajouter un nouveau produit (Agrafeuse)
INSERT INTO Produit (RefProd, Design, PrixHT) 
VALUES (19, 'Agrafeuse', 50.6);

-- Q2:INSERT - Enregistrer une nouvelle facture (Numéro 8)
INSERT INTO Facture (Numfact, DatFact) 
VALUES (8, '2010-11-21');

-- Q3:UPDATE - Mettre à jour le prix de l'agrafeuse
UPDATE Produit 
SET PrixHT = 70.0 
WHERE RefProd = 19;

-- Q4:UPDATE - Corriger la date de la facture 6
UPDATE Facture 
SET DatFact = '2010-10-14' 
WHERE Numfact = 6;

-- Q5:UPDATE - Modifier la désignation du cahier (Ref 3)
UPDATE Produit 
SET Design = 'Carnet de notes' 
WHERE RefProd = 3;

-- Q6:DELETE - Supprimer le produit "Agrafeuse"

DELETE FROM Produit_Categorie WHERE RefProd = 19;
DELETE FROM Est_Facture WHERE RefProd = 19;
DELETE FROM Produit WHERE RefProd = 19;

-- Q7:DELETE - Supprimer la facture numéro 2

DELETE FROM Commande WHERE Numfact = 2;
DELETE FROM Est_Facture WHERE Numfact = 2;
DELETE FROM Facture WHERE Numfact = 2;