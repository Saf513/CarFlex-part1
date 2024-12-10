SELECT 
    contrat.NumContrat, 
    clients.Nom, 
    clients.Adresse, 
    voitures.Marque
FROM 
    contrat
INNER JOIN clients ON contrat.Num = clients.Num
INNER JOIN voitures ON contrat.NumImmatriculation = voitures.NumImmatriculation;
