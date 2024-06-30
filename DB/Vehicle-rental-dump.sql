-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: vehicle_rental
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `vehicleTypeName` varchar(255) NOT NULL,
  `vehicleModelName` varchar(255) NOT NULL,
  `vehicleModelId` int NOT NULL,
  `vehicleTypeId` int NOT NULL,
  `wheelId` int NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vehicleModelId` (`vehicleModelId`),
  KEY `vehicleTypeId` (`vehicleTypeId`),
  KEY `wheelId` (`wheelId`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`vehicleModelId`) REFERENCES `vehiclemodels` (`id`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`vehicleTypeId`) REFERENCES `vehicletypes` (`id`),
  CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`wheelId`) REFERENCES `wheels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (9,'Manish','Prasad','SUV','Model X',2,2,2,'2024-05-26 18:30:00','2024-06-04 18:30:00'),(10,'Manish','Prasad','Sedan','Model S',1,1,1,'2024-06-19 18:30:00','2024-07-04 18:30:00');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiclemodels`
--

DROP TABLE IF EXISTS `vehiclemodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiclemodels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vehicleModel` varchar(255) NOT NULL,
  `vehicleTypeId` int NOT NULL,
  `wheelId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vehicleTypeId` (`vehicleTypeId`),
  KEY `wheelId` (`wheelId`),
  CONSTRAINT `vehiclemodels_ibfk_1` FOREIGN KEY (`vehicleTypeId`) REFERENCES `vehicletypes` (`id`),
  CONSTRAINT `vehiclemodels_ibfk_2` FOREIGN KEY (`wheelId`) REFERENCES `wheels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiclemodels`
--

LOCK TABLES `vehiclemodels` WRITE;
/*!40000 ALTER TABLE `vehiclemodels` DISABLE KEYS */;
INSERT INTO `vehiclemodels` VALUES (1,'Model S',1,1),(2,'Model X',2,2),(3,'Ninja ZX-6R',3,3),(4,'F-150',4,4);
/*!40000 ALTER TABLE `vehiclemodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicletypes`
--

DROP TABLE IF EXISTS `vehicletypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicletypes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vehicleType` varchar(255) NOT NULL,
  `wheelId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wheelId` (`wheelId`),
  CONSTRAINT `vehicletypes_ibfk_1` FOREIGN KEY (`wheelId`) REFERENCES `wheels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicletypes`
--

LOCK TABLES `vehicletypes` WRITE;
/*!40000 ALTER TABLE `vehicletypes` DISABLE KEYS */;
INSERT INTO `vehicletypes` VALUES (1,'Sedan',1),(2,'SUV',2),(3,'Motorbike',3),(4,'Truck',4);
/*!40000 ALTER TABLE `vehicletypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wheels`
--

DROP TABLE IF EXISTS `wheels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wheels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `noOfWheels` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wheels`
--

LOCK TABLES `wheels` WRITE;
/*!40000 ALTER TABLE `wheels` DISABLE KEYS */;
INSERT INTO `wheels` VALUES (1,4),(2,4),(3,2),(4,6);
/*!40000 ALTER TABLE `wheels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'vehicle_rental'
--

--
-- Dumping routines for database 'vehicle_rental'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-01  0:23:13
