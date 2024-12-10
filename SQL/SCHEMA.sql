--creation de database
CREATE DATABASE IF NOT EXISTS `location-voitures`;

        --creation des tables

--creation de tableau clients
CREATE TABLE IF NOT EXISTS `clients` (
  `Num` int NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Adresse` varchar(255) DEFAULT NULL,
  `Tel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;    

--creation de tableau voitures
CREATE TABLE IF NOT EXISTS `voitures` (
  `NumImmatriculation` varchar(255) NOT NULL,
  `Marque` varchar(255) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `Annee` year DEFAULT NULL,
  PRIMARY KEY (`NumImmatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--creation de tableau contrats
CREATE TABLE IF NOT EXISTS `contrat` (
  `NumContrat` int NOT NULL,
  `DateDebut` date DEFAULT NULL,
  `DateFin` date DEFAULT NULL,
  `Duree` int DEFAULT NULL,
  `Num` int DEFAULT NULL,
  `NumImmatriculation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NumContrat`),
  KEY `Num` (`Num`),
  KEY `NumImmatriculation` (`NumImmatriculation`),
  CONSTRAINT `contrat_ibfk_1` FOREIGN KEY (`Num`) REFERENCES `clients` (`Num`),
  CONSTRAINT `contrat_ibfk_2` FOREIGN KEY (`NumImmatriculation`) REFERENCES `voitures` (`NumImmatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;