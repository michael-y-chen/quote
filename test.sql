-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (armv7l)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.5.53-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes` (
  `symbol` varchar(18) NOT NULL,
  `name` varchar(128) NOT NULL,
  `last` double DEFAULT NULL,
  `change` double DEFAULT NULL,
  `pctchange` double DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `tradetime` datetime DEFAULT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotes`
--

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
INSERT INTO `quotes` VALUES ('AAPL','Apple Inc',145.42,-3.56,-2.39,72219195,'2017-06-12 18:03:00'),('AMD','Adv Micro Devices',12.09,-0.19,-1.55,125643297,'2017-06-12 18:04:00'),('AMZN','Amazon.Com Inc',964.91,-13.4,-1.37,9438600,'2017-06-12 18:03:00'),('CSCO','Cisco Systems Inc',31.25,-0.12,-0.38,25783400,'2017-06-12 18:02:00'),('EA','Electronic Arts Inc',108.9,-1.56,-1.41,5822000,'2017-06-12 18:00:00'),('F','Ford Motor Company',11.28,0.15,1.35,38472102,'2017-06-12 17:53:00'),('FB','Facebook Inc',148.44,-1.16,-0.78,33152699,'2017-06-12 18:00:00'),('GE','General Electric Company',28.94,1,3.58,139003297,'2017-06-12 18:04:00'),('GM','General Motors Company',34.68,0.34,0.99,14304899,'2017-06-12 17:06:00'),('GOOGL','Alphabet Class A',961.81,-8.31,-0.86,4198000,'2017-06-12 18:04:00'),('IBM','International Business Machines',155.18,1.08,0.7,6464800,'2017-06-12 17:47:00'),('NVDA','Nvidia Corporation',149.97,0.37,0.25,42311801,'2017-06-12 18:04:00'),('P','Pandora Media Inc',7.87,-0.65,-7.63,31016299,'2017-06-12 17:50:00'),('SNAP','Snap Inc',18.2,0.12,0.66,16160100,'2017-06-12 18:02:00'),('T','AT&T Inc',39.07,0.28,0.72,22779799,'2017-06-12 17:41:00'),('TSLA','Tesla Inc',359.01,1.69,0.47,10508800,'2017-06-12 18:02:00'),('TWTR','Twitter Inc',17.04,0.14,0.83,20490801,'2017-06-12 18:03:00'),('V','Visa Inc',93.5,-1.06,-1.12,15604300,'2017-06-12 17:48:00'),('VZ','Verizon Communications Inc',47.19,0.47,1.01,18929000,'2017-06-12 17:59:00'),('YHOO','Yahoo! Inc',53.12,-0.9,-1.67,57719301,'2017-06-12 17:39:00');
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchlist`
--

DROP TABLE IF EXISTS `watchlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watchlist` (
  `symbol` varchar(18) NOT NULL,
  `user` varchar(128) NOT NULL,
  PRIMARY KEY (`symbol`,`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchlist`
--

LOCK TABLES `watchlist` WRITE;
/*!40000 ALTER TABLE `watchlist` DISABLE KEYS */;
INSERT INTO `watchlist` VALUES ('AAPL','1'),('GOOGL','1'),('VZ','1');
/*!40000 ALTER TABLE `watchlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-10 23:02:04
