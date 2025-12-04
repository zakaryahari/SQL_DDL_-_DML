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

-- Q8:SELECT - Afficher tous les produits disponibles
SELECT * FROM Produit;

-- Q9:WHERE - Produits avec un prix > 2.30 DH
SELECT * FROM Produit 
WHERE PrixHT > 2.30;

-- Q10:BETWEEN - Produits avec un prix entre 50 et 5000 DH
SELECT * FROM Produit 
WHERE PrixHT BETWEEN 50 AND 5000;

-- Q11:DATE - Factures enregistrées avant le 16 octobre 2020
SELECT * FROM Facture 
WHERE DatFact < '2020-10-16';

-- Q12:SELECT Col - Noms des produits entre 500 et 7500 DH
SELECT Design FROM Produit 
WHERE PrixHT BETWEEN 500 AND 7500;

-- Q13:SELECT Col - Noms des produits en stock avec prix < 2000 DH
SELECT Design FROM Produit 
WHERE PrixHT < 2000;

-- Q14:SELECT Col - Afficher tous les numéros de facture
SELECT Numfact FROM Facture;

-- Q15:WHERE - Quantités facturées pour le produit référence 5
SELECT Qte FROM Est_Facture 
WHERE RefProd = 5;

-- Q16:COUNT - Nombre total de produits disponibles
SELECT COUNT(*) AS Total_Produits FROM Produit;

-- Q17:ORDER BY - Produits du moins cher au plus cher
SELECT Design, PrixHT FROM Produit 
ORDER BY PrixHT ASC;

-- Q18:LIMIT/ORDER - Le produit le plus cher
SELECT * FROM Produit 
ORDER BY PrixHT DESC 
LIMIT 1;

-- Q19:LIMIT/ORDER - Le produit le moins cher
SELECT * FROM Produit 
ORDER BY PrixHT ASC 
LIMIT 1;