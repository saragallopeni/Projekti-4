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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emri` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mbiemri` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shteti` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qyteti` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roli` enum('Organizues','Pjesemarres') COLLATE utf8mb4_unicode_ci NOT NULL,
  `eventId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `User_id_key` (`id`),
  UNIQUE KEY `User_email_key` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Loretta','Joinson','609-240-1285','United States','Trenton','ljoinsonj@prweb.com','Organizues',1),(2,'Kessia','Danelet','890-337-4121','Russia','Roshchino','kdanelet0@thetimes.co.uk','Organizues',NULL),(3,'Gabi','Albany','981-871-0897','Russia','Zaplavnoye','galbany1@hatena.ne.jp','Organizues',NULL),(4,'Jorge','Littlepage','680-643-4013','China','Nirji','jlittlepage2@go.com','Pjesemarres',NULL),(5,'Anne-marie','Radborn','135-112-3211','Thailand','Thung Khru','aradborn3@ow.ly','Organizues',NULL),(6,'Jinny','Huckstepp','418-927-1240','Benin','Hinvi','jhuckstepp4@amazonaws.com','Organizues',3),(7,'Hilda','Dealy','661-911-4787','Czech Republic','Jesenice','hdealy5@last.fm','Pjesemarres',NULL),(8,'Bartlett','Rishman','855-316-8774','Peru','Pimentel','brishman6@cam.ac.uk','Pjesemarres',NULL),(9,'Floyd','Moulding','518-872-9971','Lebanon','Jdaidet el Matn','fmoulding7@sciencedirect.com','Organizues',NULL),(10,'Nada','Fairbrass','939-845-4262','Czech Republic','Ostravice','nfairbrass8@hexun.com','Organizues',NULL),(11,'Sibyl','Burghill','383-531-0607','Colombia','Morales','sburghill9@privacy.gov.au','Organizues',NULL),(12,'Karyl','Worledge','300-105-0234','China','Xiangshi','kworledgea@studiopress.com','Organizues',3),(13,'Katha','Gilfether','542-508-8505','China','Xinji','kgilfetherb@spiegel.de','Pjesemarres',NULL),(14,'Karon','Budik','465-912-5234','Russia','Meget','kbudikc@walmart.com','Organizues',NULL),(15,'Carney','Oxenford','981-834-1715','Indonesia','Cijangkar','coxenfordd@wp.com','Pjesemarres',NULL),(16,'Christina','Georger','352-391-1603','Macedonia','Pirava','cgeorgere@nytimes.com','Organizues',NULL),(17,'Maire','MacHarg','366-928-2057','China','Qingshan','mmachargf@nhs.uk','Organizues',NULL),(18,'Alfreda','Hunnam','410-720-5409','Croatia','Rijeka','ahunnamg@bloglovin.com','Organizues',NULL),(19,'Marilee','Sturte','997-785-5998','China','Nanshui','msturteh@istockphoto.com','Organizues',NULL),(20,'Roshelle','Aleveque','770-616-8321','Albania','Zharrëz','ralevequei@ezinearticles.com','Organizues',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
