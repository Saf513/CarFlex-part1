
--modifier un client
UPDATE clients
SET Name = 'Safia Khoulaid'
WHERE Num = 1;


--modifier voiture
UPDATE voitures
SET Annee=2024;
WHERE NumImmatriculation = 1233XYZ;

--ajouter column danss le tableau de clients
ALTER TABLE clients
ADD dateInscreption INT;