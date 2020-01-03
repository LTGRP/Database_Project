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
-- Table structure for table `basvuru`
--

DROP TABLE IF EXISTS `basvuru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basvuru` (
  `tc` bigint(11) NOT NULL,
  `is_ilani_id` int(11) NOT NULL,
  PRIMARY KEY (`tc`,`is_ilani_id`),
  KEY `is_ilani_id` (`is_ilani_id`),
  CONSTRAINT `basvuru_ibfk_1` FOREIGN KEY (`tc`) REFERENCES `kullanici` (`tc`),
  CONSTRAINT `basvuru_ibfk_2` FOREIGN KEY (`is_ilani_id`) REFERENCES `is_ilani` (`is_ilani_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basvuru`
--

LOCK TABLES `basvuru` WRITE;
/*!40000 ALTER TABLE `basvuru` DISABLE KEYS */;
INSERT INTO `basvuru` VALUES (10210379076,1400),(14616041334,1400),(45713623489,1400),(33128028135,1401);
/*!40000 ALTER TABLE `basvuru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolum`
--

DROP TABLE IF EXISTS `bolum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bolum` (
  `bolum_id` int(11) NOT NULL,
  `bolum_isim` varchar(50) DEFAULT NULL,
  `universite_isim` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bolum_id`),
  KEY `universite_isim` (`universite_isim`),
  CONSTRAINT `bolum_ibfk_1` FOREIGN KEY (`universite_isim`) REFERENCES `universite` (`universite_isim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolum`
--

LOCK TABLES `bolum` WRITE;
/*!40000 ALTER TABLE `bolum` DISABLE KEYS */;
INSERT INTO `bolum` VALUES (100,'iç mimarlık','dokuz eylül'),(200,'matematik','boğaziçi'),(300,'bilgisayar mühendisliği','ege');
/*!40000 ALTER TABLE `bolum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `company_name` varchar(50) NOT NULL,
  `sektor` varchar(50) DEFAULT NULL,
  `lokasyon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('aygaz','enerji','istanbul'),('deva','sağlık','ankara'),('enka','inşaat','bursa'),('eti','gıda','eskişehir'),('migros','perakende','istanbul'),('türk hava yolları','havacılık','kayseri'),('vestel','bilişim','izmir');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departman`
--

DROP TABLE IF EXISTS `departman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departman` (
  `departman_id` int(11) NOT NULL,
  `dep_pozisyon` varchar(50) DEFAULT NULL,
  `dep_meslek` varchar(50) DEFAULT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`departman_id`),
  KEY `company_name` (`company_name`),
  CONSTRAINT `departman_ibfk_1` FOREIGN KEY (`company_name`) REFERENCES `company` (`company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departman`
--

LOCK TABLES `departman` WRITE;
/*!40000 ALTER TABLE `departman` DISABLE KEYS */;
INSERT INTO `departman` VALUES (123,'yazılım geliştirme','bilgisayar mühendisi','vestel'),(246,'satış danışmanı','kasiyer','migros'),(492,'uzman mühendis','gıda mühendisi','eti'),(984,'ceo','inşaat mühendisi','enka'),(1968,'eczane','eczacı','deva'),(3936,'insan kaynakları','insan kaynakları uzmanı ','aygaz'),(7872,'görüntü işleme','yazılım mühendisi','vestel');
/*!40000 ALTER TABLE `departman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ders`
--

DROP TABLE IF EXISTS `ders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ders` (
  `ders_id` int(11) NOT NULL,
  `ders_ismi` varchar(50) DEFAULT NULL,
  `ders_kredisi` int(11) NOT NULL,
  `ogretmen_id` int(11) NOT NULL,
  PRIMARY KEY (`ders_id`),
  KEY `ogretmen_id` (`ogretmen_id`),
  CONSTRAINT `ders_ibfk_1` FOREIGN KEY (`ogretmen_id`) REFERENCES `ogretmen` (`ogretmen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ders`
--

LOCK TABLES `ders` WRITE;
/*!40000 ALTER TABLE `ders` DISABLE KEYS */;
INSERT INTO `ders` VALUES (1,'matematik-1',6,666),(2,'fizik-1',6,333),(3,'fizik-2',6,333),(4,'matematik-2',6,666),(5,'matematik-2',6,999),(6,'kimya-1',5,333),(7,'tarih',4,666);
/*!40000 ALTER TABLE `ders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `ssn` int(11) NOT NULL,
  `tarih` date DEFAULT NULL,
  `departman_id` int(11) DEFAULT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `tc_employee` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`ssn`),
  KEY `departman_id` (`departman_id`),
  KEY `company_name` (`company_name`),
  KEY `tc_employee` (`tc_employee`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`departman_id`) REFERENCES `departman` (`departman_id`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`company_name`) REFERENCES `company` (`company_name`),
  CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`tc_employee`) REFERENCES `kullanici` (`tc`),
  CONSTRAINT `tarih_control` CHECK ((`tarih` <> NULL))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (100,'2015-04-04',123,'vestel',45713623489),(200,'2017-05-28',123,'vestel',93127701940),(201,'2017-06-29',246,'migros',45155225973),(202,'2017-03-02',1968,'deva',62418465223),(203,'2017-04-12',3936,'aygaz',79440629184),(204,'2017-05-24',492,'eti',56130834523),(205,'2017-04-26',984,'enka',33828028135),(206,'2017-03-08',7872,'vestel',86305998853),(207,'2017-04-05',123,'vestel',99491940904),(208,'2017-06-30',492,'eti',62418425223),(209,'2017-11-24',3936,'aygaz',79440329184),(210,'2017-12-19',984,'enka',56130824523),(300,'2018-01-01',123,'vestel',64027592634),(301,'2018-01-02',246,'migros',80357563072),(302,'2018-01-03',492,'eti',47097108704),(303,'2018-01-03',984,'enka',45713623489),(304,'2018-01-03',1968,'deva',91008936589),(305,'2018-01-04',3936,'aygaz',39740432130),(306,'2018-01-05',7872,'vestel',77416994669),(307,'2018-02-06',246,'migros',18169124390),(308,'2018-02-07',984,'enka',86565879504),(401,'2019-04-01',7872,'vestel',37163116963),(402,'2019-04-02',492,'eti',98818231799),(403,'2019-04-04',123,'vestel',71879952101),(404,'2019-04-12',3936,'aygaz',80547991759),(405,'2019-04-13',246,'migros',60149974919),(406,'2019-04-14',1968,'deva',22995672551),(407,'2019-04-15',123,'vestel',33346941739),(408,'2019-04-15',1968,'deva',20498342377),(409,'2019-05-04',7872,'vestel',75259825251),(410,'2019-05-25',246,'migros',18029339474),(411,'2019-05-26',984,'enka',66192448949),(412,'2019-05-14',123,'vestel',14616041334),(413,'2019-06-07',3936,'aygaz',67481475626),(414,'2019-07-22',492,'eti',70296358329),(415,'2019-08-14',246,'migros',29865818149),(416,'2019-01-03',1968,'deva',11580302104),(417,'2019-02-28',984,'enka',28874391805);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eski_employee`
--

DROP TABLE IF EXISTS `eski_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eski_employee` (
  `tc` bigint(11) NOT NULL,
  `ssn` int(11) NOT NULL,
  `ad` varchar(50) DEFAULT NULL,
  `soyad` varchar(50) DEFAULT NULL,
  `pozisyon` varchar(50) DEFAULT NULL,
  `departman` varchar(50) DEFAULT NULL,
  `baslama_tarihi` date DEFAULT NULL,
  `bitis_tarihi` date DEFAULT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tc`),
  KEY `company_name` (`company_name`),
  CONSTRAINT `eski_employee_ibfk_1` FOREIGN KEY (`company_name`) REFERENCES `company` (`company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eski_employee`
--

LOCK TABLES `eski_employee` WRITE;
/*!40000 ALTER TABLE `eski_employee` DISABLE KEYS */;
INSERT INTO `eski_employee` VALUES (15155225973,203,'ramiz','karaeski','inşaat mühendisi','mühendislik','1960-06-02','2013-05-01','enka'),(45155225971,201,'cengiz','atay','ceo','yönetici','1960-06-02','2018-05-01','eti');
/*!40000 ALTER TABLE `eski_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gelen_mesajlar`
--

DROP TABLE IF EXISTS `gelen_mesajlar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gelen_mesajlar` (
  `mesaj_id` int(11) NOT NULL,
  `alan_kullanici` bigint(11) NOT NULL,
  `gonderen_id` bigint(11) NOT NULL,
  `mesaj_text` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`mesaj_id`),
  KEY `mesajlar` (`alan_kullanici`),
  CONSTRAINT `gelen_mesajlar_ibfk_1` FOREIGN KEY (`alan_kullanici`) REFERENCES `kullanici` (`tc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gelen_mesajlar`
--

LOCK TABLES `gelen_mesajlar` WRITE;
/*!40000 ALTER TABLE `gelen_mesajlar` DISABLE KEYS */;
INSERT INTO `gelen_mesajlar` VALUES (1,10210374321,230,'merhaba'),(2,12105301994,240,'günaydın'),(3,14692836938,250,'görüşürüz');
/*!40000 ALTER TABLE `gelen_mesajlar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giden_mesajlar`
--

DROP TABLE IF EXISTS `giden_mesajlar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giden_mesajlar` (
  `mesaj_id` int(11) NOT NULL,
  `alan_id` bigint(11) NOT NULL,
  `gonderen_kullanici` bigint(11) NOT NULL,
  `mesaj_text` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`mesaj_id`),
  KEY `mesajlar` (`gonderen_kullanici`),
  CONSTRAINT `giden_mesajlar_ibfk_1` FOREIGN KEY (`gonderen_kullanici`) REFERENCES `kullanici` (`tc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giden_mesajlar`
--

LOCK TABLES `giden_mesajlar` WRITE;
/*!40000 ALTER TABLE `giden_mesajlar` DISABLE KEYS */;
INSERT INTO `giden_mesajlar` VALUES (1,230,10210374321,'merhaba'),(2,240,12105301994,'günaydın'),(3,250,14692836938,'görüşürüz');
/*!40000 ALTER TABLE `giden_mesajlar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_company_ilan`
--

DROP TABLE IF EXISTS `is_company_ilan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `is_company_ilan` (
  `company_name` varchar(50) NOT NULL,
  `is_ilani_id` int(11) NOT NULL,
  PRIMARY KEY (`company_name`,`is_ilani_id`),
  KEY `is_ilani_id` (`is_ilani_id`),
  CONSTRAINT `is_company_ilan_ibfk_1` FOREIGN KEY (`company_name`) REFERENCES `company` (`company_name`),
  CONSTRAINT `is_company_ilan_ibfk_2` FOREIGN KEY (`is_ilani_id`) REFERENCES `is_ilani` (`is_ilani_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_company_ilan`
--

LOCK TABLES `is_company_ilan` WRITE;
/*!40000 ALTER TABLE `is_company_ilan` DISABLE KEYS */;
INSERT INTO `is_company_ilan` VALUES ('vestel',1400),('enka',1401),('deva',1402),('eti',1403);
/*!40000 ALTER TABLE `is_company_ilan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_deneyim`
--

DROP TABLE IF EXISTS `is_deneyim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `is_deneyim` (
  `is_deneyim_id` int(11) NOT NULL,
  `tc` bigint(11) NOT NULL,
  `sirket_isim` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`is_deneyim_id`),
  KEY `tc` (`tc`),
  CONSTRAINT `is_deneyim_ibfk_1` FOREIGN KEY (`tc`) REFERENCES `kullanici` (`tc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_deneyim`
--

LOCK TABLES `is_deneyim` WRITE;
/*!40000 ALTER TABLE `is_deneyim` DISABLE KEYS */;
INSERT INTO `is_deneyim` VALUES (132,45713623489,'aras'),(500,60149974919,'migros'),(501,22995672551,'deva'),(502,33346941739,'vestel'),(503,70296358329,'eti'),(504,28874391805,'torku');
/*!40000 ALTER TABLE `is_deneyim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_ilani`
--

DROP TABLE IF EXISTS `is_ilani`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `is_ilani` (
  `is_ilani_id` int(11) NOT NULL,
  `is_ilani_text` varchar(300) DEFAULT NULL,
  `is_flag` tinyint(1) DEFAULT NULL,
  `is_name` varchar(50) DEFAULT NULL,
  `egitim_flag` tinyint(1) DEFAULT NULL,
  `egitim_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`is_ilani_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_ilani`
--

LOCK TABLES `is_ilani` WRITE;
/*!40000 ALTER TABLE `is_ilani` DISABLE KEYS */;
INSERT INTO `is_ilani` VALUES (1400,'abc',1,'part-time',1,'lisans'),(1401,'',1,'part-time',0,''),(1402,'',0,'full-time',1,'lisans'),(1403,'',0,'part-time',0,'');
/*!40000 ALTER TABLE `is_ilani` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `odev`
--

DROP TABLE IF EXISTS `odev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `odev` (
  `odev_id` int(11) NOT NULL,
  `odev_notu` int(11) DEFAULT NULL,
  `ders_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`odev_id`),
  KEY `ders_id` (`ders_id`),
  CONSTRAINT `odev_ibfk_1` FOREIGN KEY (`ders_id`) REFERENCES `ders` (`ders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odev`
--

LOCK TABLES `odev` WRITE;
/*!40000 ALTER TABLE `odev` DISABLE KEYS */;
INSERT INTO `odev` VALUES (10,100,2),(12,12,5),(14,44,5),(16,54,6),(18,23,6),(20,100,3),(22,110,1),(24,123,2),(26,33,7),(28,66,4);
/*!40000 ALTER TABLE `odev` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `ogrenci_ders`
--

DROP TABLE IF EXISTS `ogrenci_ders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ogrenci_ders` (
  `ders_id` int(11) NOT NULL,
  `ogrenci_id` int(11) NOT NULL,
  PRIMARY KEY (`ders_id`,`ogrenci_id`),
  KEY `ogrenci_id` (`ogrenci_id`),
  CONSTRAINT `ogrenci_ders_ibfk_1` FOREIGN KEY (`ders_id`) REFERENCES `ders` (`ders_id`),
  CONSTRAINT `ogrenci_ders_ibfk_2` FOREIGN KEY (`ogrenci_id`) REFERENCES `ogrenci` (`ogrenci_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogrenci_ders`
--

LOCK TABLES `ogrenci_ders` WRITE;
/*!40000 ALTER TABLE `ogrenci_ders` DISABLE KEYS */;
INSERT INTO `ogrenci_ders` VALUES (4,200),(6,202),(2,203),(3,203),(7,204),(1,205),(3,205),(2,206),(5,210),(6,210),(6,215),(1,216),(1,217),(5,220),(7,222),(6,223),(4,230),(7,230);
/*!40000 ALTER TABLE `ogrenci_ders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogrenci_staj`
--

DROP TABLE IF EXISTS `ogrenci_staj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ogrenci_staj` (
  `staj_id` int(11) DEFAULT NULL,
  `ogrenci_id` int(11) DEFAULT NULL,
  KEY `staj_id` (`staj_id`),
  KEY `ogrenci_id` (`ogrenci_id`),
  CONSTRAINT `ogrenci_staj_ibfk_1` FOREIGN KEY (`staj_id`) REFERENCES `staj` (`staj_id`),
  CONSTRAINT `ogrenci_staj_ibfk_2` FOREIGN KEY (`ogrenci_id`) REFERENCES `ogrenci` (`ogrenci_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogrenci_staj`
--

LOCK TABLES `ogrenci_staj` WRITE;
/*!40000 ALTER TABLE `ogrenci_staj` DISABLE KEYS */;
INSERT INTO `ogrenci_staj` VALUES (100,200),(102,201),(102,202),(103,203),(104,204),(104,205),(105,206),(107,208),(108,209),(109,210);
/*!40000 ALTER TABLE `ogrenci_staj` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `staj`
--

DROP TABLE IF EXISTS `staj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staj` (
  `staj_id` int(11) NOT NULL,
  `sirket_ismi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`staj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staj`
--

LOCK TABLES `staj` WRITE;
/*!40000 ALTER TABLE `staj` DISABLE KEYS */;
INSERT INTO `staj` VALUES (100,'vestel'),(101,'arkas'),(102,'enka'),(103,'torku'),(104,'garanti'),(105,'yapıkredi'),(106,'bim'),(107,'tansaş'),(108,'logo'),(109,'aras kargo'),(110,'akbank'),(111,'oyak');
/*!40000 ALTER TABLE `staj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universite`
--

DROP TABLE IF EXISTS `universite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `universite` (
  `universite_isim` varchar(50) NOT NULL,
  `lokasyon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`universite_isim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universite`
--

LOCK TABLES `universite` WRITE;
/*!40000 ALTER TABLE `universite` DISABLE KEYS */;
INSERT INTO `universite` VALUES ('boğaziçi','istanbul'),('dokuz eylül','izmir'),('ege','izmir');
/*!40000 ALTER TABLE `universite` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-25 10:38:52
