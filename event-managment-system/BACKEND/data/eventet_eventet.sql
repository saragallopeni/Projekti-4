-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: eventet
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `eventet`
--

DROP TABLE IF EXISTS `eventet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulli` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pershkrimi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('UPCOMING','ONGOING','FINISHED','CANCELED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nisja` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perfundimi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_registration` datetime(3) NOT NULL,
  `end_registration` datetime(3) NOT NULL,
  `kapaciteti` int(11) NOT NULL,
  `vendndodhja` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mbajtja` enum('ONLINE','FIZIK') COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Eventet_id_key` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventet`
--

LOCK TABLES `eventet` WRITE;
/*!40000 ALTER TABLE `eventet` DISABLE KEYS */;
INSERT INTO `eventet` VALUES (1,'CYBER ZERO - The Premier Cybersecurity Conference&Expo in Western Balkans!','This is an event','UPCOMING','16:00','20:00','2024-01-25 00:00:00.000','2024-01-30 00:00:00.000',7,'Prishtine','ONLINE','1706113428481_photo.jpg'),(2,'AI Pulse - Tech Meetup: Building Safe AI ​','This is an event ','FINISHED','15:00','18:00','2024-01-10 00:00:00.000','2024-01-24 00:00:00.000',7,'Prishtine','FIZIK','1706175409096_photo.jpg'),(3,'Creatorclub111','This is an event','UPCOMING','12:00','19:00','2024-01-18 00:00:00.000','2024-01-26 00:00:00.000',4,'Prishtine','FIZIK','1706175720605_photo.jpg'),(4,'Febrero One Piece Treasure Cup','This is an event','UPCOMING','10:00','17:00','2024-01-18 00:00:00.000','2024-01-26 00:00:00.000',7,'Prishtine','FIZIK','1706175969074_photo.jpg');
/*!40000 ALTER TABLE `eventet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-25 12:14:00
