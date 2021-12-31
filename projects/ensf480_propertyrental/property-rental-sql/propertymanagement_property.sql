-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: propertymanagement
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `PType` varchar(255) DEFAULT NULL,
  `Bedrooms` int DEFAULT NULL,
  `Bathrooms` int DEFAULT NULL,
  `Furnished` tinyint(1) DEFAULT NULL,
  `cityQuadrant` varchar(255) DEFAULT NULL,
  `Fee` float DEFAULT NULL,
  `POwner` varchar(255) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `Fee_Monthly_Period` int NOT NULL,
  `State` varchar(255) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `POwner` (`POwner`),
  CONSTRAINT `property_ibfk_1` FOREIGN KEY (`POwner`) REFERENCES `account` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES ('Apartment',1,1,1,'SW',100,'4',1,100,'Suspended','testtown'),('Apartment',12,3,0,'SW',100,'r',2,100,'Active','testtown'),('Attached',2,3,0,'NW',100,'4',3,100,'Rented','Nowhere'),('Townhouse',2,2,0,'SE',100,'4',4,100,'Suspended','Nowhere'),('Attached',3,4,1,'SE',20,'4',5,3,'Rented','Middletown'),('Townhouse',1,1,0,'NW',20,'testLandlord',6,3,'Active','114 Street name, Towntown');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-10 18:43:38
