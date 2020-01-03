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
-- Table structure for table `ogrenci`
--

DROP TABLE IF EXISTS `ogrenci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ogrenci` (
  `ogrenci_id` int(11) NOT NULL,
  `bolum_id` int(11) DEFAULT NULL,
  `giris_tarihi` date DEFAULT NULL,
  `cikis_tarihi` date DEFAULT NULL,
  `gecmis` varchar(100) DEFAULT NULL,
  `ortalama` float DEFAULT NULL,
  `danisman_id` int(11) DEFAULT NULL,
  `tc_ogrenci` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`ogrenci_id`),
  KEY `bolum_id` (`bolum_id`),
  KEY `danisman_id` (`danisman_id`),
  KEY `tc_ogrenci` (`tc_ogrenci`),
  CONSTRAINT `ogrenci_ibfk_1` FOREIGN KEY (`bolum_id`) REFERENCES `bolum` (`bolum_id`),
  CONSTRAINT `ogrenci_ibfk_2` FOREIGN KEY (`danisman_id`) REFERENCES `ogretmen` (`ogretmen_id`),
  CONSTRAINT `ogrenci_ibfk_3` FOREIGN KEY (`tc_ogrenci`) REFERENCES `kullanici` (`tc`),
  CONSTRAINT `control` CHECK ((`giris_tarihi` < `cikis_tarihi`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogrenci`
--

LOCK TABLES `ogrenci` WRITE;
/*!40000 ALTER TABLE `ogrenci` DISABLE KEYS */;
INSERT INTO `ogrenci` VALUES (200,100,'2000-06-06','2004-06-06','',3,999,33128028135),(201,300,'2001-06-06','2005-06-06','',3,666,86305908853),(202,200,'1999-06-06','2002-06-06','',2.4,666,99492940904),(203,200,'2000-06-05','2002-06-06','',2.4,333,6908240565),(204,300,'2000-06-05','2004-06-06','',2.4,666,14692836938),(205,100,'1998-06-05','2002-06-06','',4,999,62651254383),(206,300,'2000-06-05','2006-06-06','',4,333,95788821775),(208,300,'2000-06-05','2004-10-10','',2.4,999,51158188302),(209,200,'1990-06-10','1997-10-10','',3,666,78775071213),(210,100,'1994-07-02','1998-10-10','',2.4,333,25028424723),(212,200,'1990-07-10','1995-10-23','',3,333,1342890058),(213,300,'1980-07-10','1984-11-01','',3,666,85058796722),(214,200,'1992-08-12','1996-11-27','',2.4,666,31225381464),(215,100,'1996-08-10','2000-11-14','',3,999,16434659108),(216,200,'1993-09-10','1997-10-21','',3,666,57933343409),(217,300,'1982-09-10','1986-10-02','',2.4,333,12105301994),(218,200,'1986-08-12','1990-10-03','',2.4,999,51896769946),(219,300,'1992-08-12','1996-10-03','',3,333,15068061004),(220,100,'1980-07-20','1984-09-03','',3,333,78615782222),(221,300,'1970-08-14','1974-09-02','',3,666,60529640619),(222,100,'2000-10-02','2004-09-05','',4,999,29789157153),(223,300,'1996-10-03','2000-09-05','',3,333,70909154781),(224,100,'1978-10-04','1982-09-06','',3,666,10241163529),(225,100,'1978-10-04','1982-09-06','',3,666,10241163529),(226,100,'1982-10-03','1986-09-10','',2.4,999,19140606648),(227,200,'1991-10-10','1995-09-13','',3,333,70025843486),(228,300,'1955-10-11','1959-09-20','',3,999,93675558966),(229,200,'1975-10-11','1979-09-20','',2.4,333,48058702925),(230,200,'1975-10-11','1979-09-20','',2.4,666,12631362711),(231,300,'1983-10-11','1987-04-12','',3,999,44239603142);
/*!40000 ALTER TABLE `ogrenci` ENABLE KEYS */;
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
