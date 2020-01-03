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
-- Table structure for table `kullanici`
--

DROP TABLE IF EXISTS `kullanici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kullanici` (
  `tc` bigint(11) NOT NULL,
  `dogum_tarihi` date DEFAULT NULL,
  `ad` varchar(50) DEFAULT NULL,
  `ikinciad` varchar(50) DEFAULT NULL,
  `soyad` varchar(50) DEFAULT NULL,
  `cinsiyet` char(1) DEFAULT NULL,
  PRIMARY KEY (`tc`),
  CONSTRAINT `cinsiyet` CHECK (((`cinsiyet` = _utf8mb4'e') or (`cinsiyet` = _utf8mb4'k') or (`cinsiyet` = _utf8mb4'E') or (`cinsiyet` = _utf8mb4'K')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kullanici`
--

LOCK TABLES `kullanici` WRITE;
/*!40000 ALTER TABLE `kullanici` DISABLE KEYS */;
INSERT INTO `kullanici` VALUES (1342890058,'1960-11-21','rukiye',' ','gümüş','k'),(6908240565,'1999-11-30','emin','','fidan','e'),(10210374321,'1979-07-30','yamaç','','koçovalı','e'),(10210379076,'1979-07-30','fatih','','toraman','e'),(10241163529,'1964-09-21','barış','levent','kara','e'),(11013127462,'1920-10-21','eda','','günes','k'),(11580302104,'1994-12-06','yakup','ardahan','bakır','e'),(12105301994,'1998-11-22','emin','','fidan','e'),(12631362711,'1992-08-21','ece','','tek','k'),(14559538165,'1979-01-30','emine','','polat','k'),(14616041334,'1933-03-09','şafak','tugay','uygun','e'),(14654684053,'1969-07-30','yasin',' ','ünsal','e'),(14692836938,'1979-02-23','kemal',' ','sezgen','e'),(15068061004,'1979-07-13','kamile','aygüsü ','öksüz','k'),(16434659108,'1993-03-04','sinan','ozan','döşeyici','e'),(17486309077,'1989-02-27','bülent','rahat','karataş','e'),(18029339474,'1978-02-03','ahmet','hakan','uzun','e'),(18169124390,'1974-10-25','sena','nur','öztürk','k'),(18885247978,'1974-08-21','buse',' ','tulpar','k'),(19140606648,'1986-09-08','rukiye',' ','gümüş','k'),(20498342377,'1943-06-04','bekir',' ','akdoğan','e'),(22995672551,'1943-04-02','engin',' ','kırca','e'),(25002816763,'1961-08-24','elifnaz',' ','acun','k'),(25028424723,'2010-11-30','barış','levent','kara','e'),(28874391805,'1992-12-13','fırat','ahmet','yonat','e'),(29258501022,'1993-03-11','kenan','ozan','gelen','e'),(29789157153,'1948-01-26','efe','metin','atahan','e'),(29865818149,'1992-12-05','mehmet','can','atay','e'),(31166225464,'1996-04-19','muhammed','anıl ','doğanay','e'),(31225381464,'1962-10-19','yusufcan','','nacar','e'),(32073956199,'1988-04-05','kamil','','işler','e'),(33128028135,'1962-10-19','bilgehan','','kaya','e'),(33346941739,'1967-05-01','nur',' ','topal','k'),(33828028135,'1988-05-11','bilgehan','','kaya','e'),(35265725714,'1980-11-10','yusuf','ali','doğan','e'),(37163116963,'1999-10-26','hüseyin','','dağ','e'),(37499215335,'1986-07-11','fadime','','topçu','k'),(39740432130,'1981-02-13','hamza','can','kaya','e'),(40480842542,'2009-05-07','yasin',' ','ünsal','e'),(42152406266,'1985-08-05','yasemin','','arıcı','k'),(42841507534,'1999-11-15','samet',' ','çerezci','e'),(44239603142,'1996-11-28','ekin','','abalıoğlu','e'),(45155225973,'1984-12-21','pınar',' ','cihangir','k'),(45457061118,'1984-05-24','doğukan',' ','argüç','e'),(45713623489,'1970-06-12','yaren','','tut','e'),(47097108704,'1942-09-16','egemen','','aydın','e'),(48058702925,'1991-03-04','sinan','ozan','döşeyici','e'),(50299642789,'1992-04-29','ronahi','','bağcı','e'),(51158188302,'1968-05-30','efe','metin','atahan','e'),(51896769946,'1987-02-21','kemal',' ','sezgen','e'),(52157836144,'1995-12-22','emre','','balkaya','e'),(56130824523,'2013-10-11','zülfikar','','öztürk','e'),(56130834523,'1998-06-05','talha','gökhan','aslan','e'),(57933343409,'1996-08-21','ece','','tek','k'),(58006133238,'1986-09-23','emre',' ','kaya','e'),(60149974919,'1980-12-04','nurdan',' ','güney','k'),(60529640619,'1955-06-23','samet','ilhan','özgün','e'),(62418425223,'1947-01-13','özlem',' ','karabulut','k'),(62418465223,'1957-06-11','ömer',' ','akçalı','e'),(62424718654,'1999-05-20','yavuz','selim','ılık','e'),(62651254383,'1989-04-20','kamile','aygüsü ','öksüz','k'),(62817654738,'1985-01-21','anıl','','aladağ','e'),(63980446305,'1990-12-27','aydilge','','doğan','k'),(64009655609,'2009-07-07','yasin',' ','ünsal','e'),(64027592634,'1980-03-19','okan',' ','kılıç','e'),(65982614109,'1976-08-11','kadir','can','geleş','e'),(66192448949,'1976-05-09','ozan',' ','çoşkun','e'),(67386208498,'1997-02-04','sinan','ozan','döşeyici','e'),(67481475626,'1992-04-01','lokman',' ','aslan','e'),(70025843486,'1998-12-22','şerife','','türksever','k'),(70296358329,'1989-12-11','bilal',' ','yolcu','e'),(70909154781,'1999-01-22','veysel','','yarcı','e'),(71879952101,'1977-12-20','bilal','','özkırış','e'),(74119022827,'1995-12-22','şerife','','bulut','k'),(74531787179,'1992-04-21','ece','','beğenir','k'),(75259825251,'1966-10-01','ozan',' ','çoşkun','e'),(75731442407,'1986-02-17','ahmet','anıl ','özsoy','e'),(77416994669,'1991-02-13','mehmet',' ','ışık','e'),(78150932180,'1982-12-08','emrehan','','arıkmert','e'),(78615782222,'1996-11-21','onur','can ','baş','e'),(78775071213,'1993-06-15','veysel','','yarcı','e'),(79242682484,'2001-04-02','ulaş','can ','saru','e'),(79440329184,'1988-10-19','ayten',' ','durmaz','k'),(79440629184,'1993-01-15','halime','beyza ','yılmaz','e'),(80357563072,'1985-02-13','emin','berke','aydın','e'),(80547991759,'1990-01-15','mustafa',' ','çakır','e'),(85058796722,'1971-12-10','şerife','','türksever','k'),(86305908853,'1976-03-04','arif','ozan','hasas','e'),(86305998853,'1983-12-15','mehmet','halil','toprak','e'),(86565879504,'1971-11-02','erdal','eren','bayar','e'),(88756698085,'1982-09-08','sinem',' ','kurt','k'),(91008936589,'1985-08-02','fırat','hilmi','kaplan','e'),(91810658258,'1991-11-28','yusufcan','','başaran','e'),(93127701940,'1988-12-24','kemal','kağan','orhan','e'),(93675558966,'1982-10-10','yusufcan','','nacar','e'),(95788821775,'1965-11-23','onur','can ','baş','e'),(96717917288,'1994-08-30','samet','ilhan','özgün','e'),(98818231799,'2001-11-20','anıl','eren','çelik','e'),(99491940904,'1985-05-23','ayberk','','candır','e'),(99492940904,'1996-08-20','can','','günindi','e'),(99644735108,'1998-06-09','oğulcan','','kahraman','e');
/*!40000 ALTER TABLE `kullanici` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-24 21:16:05
