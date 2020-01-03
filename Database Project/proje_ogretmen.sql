-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proje
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `ogretmen`
--

DROP TABLE IF EXISTS `ogretmen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ogretmen` (
  `ogretmen_id` int(11) NOT NULL,
  `ogretmen_isim` varchar(50) DEFAULT NULL,
  `bolum_id` int(11) DEFAULT NULL,
  `universite_isim` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ogretmen_id`),
  KEY `bolum_id` (`bolum_id`),
  KEY `universite_isim` (`universite_isim`),
  CONSTRAINT `ogretmen_ibfk_1` FOREIGN KEY (`bolum_id`) REFERENCES `bolum` (`bolum_id`),
  CONSTRAINT `ogretmen_ibfk_2` FOREIGN KEY (`universite_isim`) REFERENCES `universite` (`universite_isim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogretmen`
--

LOCK TABLES `ogretmen` WRITE;
/*!40000 ALTER TABLE `ogretmen` DISABLE KEYS */;
INSERT INTO `ogretmen` VALUES (333,'fatma soygüden',100,'dokuz eylül'),(666,' habibe arayan ',200,'boğaziçi'),(999,' alparslan kibar ',300,'ege');
/*!40000 ALTER TABLE `ogretmen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-24 21:16:04
