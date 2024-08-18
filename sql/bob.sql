-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: L2USER
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `SPORT`
--

DROP TABLE IF EXISTS `SPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SPORT` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPORT`
--

LOCK TABLES `SPORT` WRITE;
/*!40000 ALTER TABLE `SPORT` DISABLE KEYS */;
INSERT INTO `SPORT` VALUES (1,'Boxe'),(2,'aqua gym'),(3,'aqua bike'),(4,'équitation sur hippocampe'),(5,'tennis'),(6,'surf'),(7,'musculation'),(8,'plongé sur terre'),(9,'chasse à la méduse');
/*!40000 ALTER TABLE `SPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` VALUES (1,'Etoile','Patrick',40,'patrickletoile@bikinibottom.oc'),(2,'Eponge','Bob',27,'bobleponge@bikinibottom.oc'),(3,'Calamar','Carlos',27,'carloslecalamar@bikinibottom.oc'),(4,'Crabe','Krabs',27,'krabslecrabe@bikinibottom.oc'),(5,'Ecureuil','Sandy',45,'sandylecureuil@bikinibottom.oc'),(6,'Plankton','Sheldon',45,'sheldonleplakton@bikinibottom.oc');
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_SPORT`
--

DROP TABLE IF EXISTS `USER_SPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_SPORT` (
  `id_user` int(11) DEFAULT NULL,
  `id_sport` int(11) DEFAULT NULL,
  KEY `id_user` (`id_user`),
  KEY `id_sport` (`id_sport`),
  CONSTRAINT `USER_SPORT_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `USER` (`id`),
  CONSTRAINT `USER_SPORT_ibfk_2` FOREIGN KEY (`id_sport`) REFERENCES `SPORT` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_SPORT`
--

LOCK TABLES `USER_SPORT` WRITE;
/*!40000 ALTER TABLE `USER_SPORT` DISABLE KEYS */;
INSERT INTO `USER_SPORT` VALUES (5,7),(2,9),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8);
/*!40000 ALTER TABLE `USER_SPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VOITURE`
--

DROP TABLE IF EXISTS `VOITURE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VOITURE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `immatriculation` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marque` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modele` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `VOITURE_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `USER` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VOITURE`
--

LOCK TABLES `VOITURE` WRITE;
/*!40000 ALTER TABLE `VOITURE` DISABLE KEYS */;
INSERT INTO `VOITURE` VALUES (1,'2-60','crabe-croustillant','burger',2),(2,'Xx-crabe-xX','hot wheels','GMR-64',4),(3,'3-44','crabe-croustillant','burger',1),(4,'7-21','crabe-croustillant','burger',3),(5,'F1ut3','hot wheels','GMR-62',3);
/*!40000 ALTER TABLE `VOITURE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-07 15:32:21
