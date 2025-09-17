/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: batteryDB
-- ------------------------------------------------------
-- Server version	11.8.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `battery`
--

DROP TABLE IF EXISTS `battery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `battery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marka` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `amper` int(11) DEFAULT NULL,
  `amp` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battery`
--

LOCK TABLES `battery` WRITE;
/*!40000 ALTER TABLE `battery` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `battery` VALUES
(16,'Bosch',300.00,15,207,175,190,52,470,'https://image.ceneostatic.pl/data/products/2305504/p-bosch-silver-s4-52ah-470a-p.jpg'),
(17,'Bosch',350.00,15,242,175,190,60,540,'https://webcdn.intercars.eu/files/396626/0_092_s40_050_%2316.jpg'),
(18,'Bosch',550.00,15,278,175,190,70,760,'https://webcdn.intercars.eu/files/396626/0_092_s4e_081_%233.jpg'),
(19,'Varta',250.00,14,207,175,190,52,470,'https://a.allegroimg.com/s512/112de8/7cac05ba462f98d4f564a5478a15/AKUMULATOR-SAMOCHODOWY-VARTA-BLUE-DYNAMIC-52AH-470A-C22'),
(20,'Varta',320.00,14,242,175,190,60,540,'https://webcdn.intercars.eu/files/002719/b560408054_%234.jpg'),
(21,'Exide',330.00,15,242,175,190,60,540,'https://a.allegroimg.com/s512/115ec7/fe1542e9448aacaf496db6b6c0dc/Akumulator-Exide-Excell-60Ah-540A-EB602-P'),
(22,'Varta',600.00,13,353,175,190,95,800,'https://m.media-amazon.com/images/I/811tnlwhcxL._UF1000,1000_QL80_.jpg');
/*!40000 ALTER TABLE `battery` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-09-15 14:17:28
