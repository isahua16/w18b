-- MariaDB dump 10.19  Distrib 10.11.3-MariaDB, for osx10.16 (x86_64)
--
-- Host: localhost    Database: w18b
-- ------------------------------------------------------
-- Server version	10.11.3-MariaDB

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_UN` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES
('Emily_Johnson','XyZ123!@','2023-05-22 03:16:40',1),
('Benjamin_Anderson','P@ssw0rd789','2023-05-22 03:16:40',2),
('Sophia_Ramirez','Secure2023#','2023-05-22 03:16:40',3),
('Alexander_Wilson','Starlight77$','2023-05-22 03:16:40',4),
('Olivia_Thompson','SecretPass123','2023-05-22 03:16:40',5);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES
('Bluetooth Wireless Headphones',49.99,'Enjoy high-quality audio and seamless connectivity with these Bluetooth wireless headphones. Experience immersive sound and take calls on the go with built-in microphone and controls.',11),
('Fitness Tracker Watch',39.99,'Keep track of your health and fitness goals with this sleek and reliable fitness tracker watch. Monitor your heart rate, track steps and calories burned, and receive notifications right on your wrist.',12),
('Portable Bluetooth Speaker',29.99,'Take your music anywhere with this compact and powerful portable Bluetooth speaker. Enjoy rich, vibrant sound and wirelessly connect your devices for up to 8 hours of playtime.',13),
('Smart Home Security Camera',89.99,'Enhance your home security with this advanced smart camera. Monitor your property in real-time, receive alerts on your phone, and even communicate with visitors through the built-in microphone and speaker.',14),
('Electric Coffee Grinder',19.99,'Brew the perfect cup of coffee with this electric coffee grinder. Customize your grind size and enjoy the freshest coffee by grinding your beans just before brewing.',15),
('Waterproof Sports Watch',59.99,'Stay active and stylish with this durable waterproof sports watch. With multiple sports modes, heart rate monitoring, and a sleek design, it\'s the perfect companion for your workouts.',16),
('Compact Digital Camera',129.99,'Capture stunning photos and videos with this compact digital camera. With high-resolution imaging, optical zoom, and intuitive controls, it\'s perfect for both beginners and enthusiasts.',17),
('Wireless Charging Pad',24.99,'Simplify your charging experience with this sleek wireless charging pad. Just place your compatible device on the pad, and enjoy convenient and fast wireless charging.',18),
('Stainless Steel Cookware Set',79.99,'Upgrade your kitchen with this high-quality stainless steel cookware set. With a variety of pots and pans, you\'ll have everything you need to prepare delicious meals with ease.',19),
('Robot Vacuum Cleaner',199.99,'Keep your floors clean effortlessly with this intelligent robot vacuum cleaner. It navigates your home, automatically detects dirt and dust, and efficiently cleans every corner, saving you time and effort.',20);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `created_at` timestamp NULL DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_FK` (`customer_id`),
  CONSTRAINT `order_FK` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES
('2023-05-06 03:28:45',1,1),
('2023-05-22 03:28:45',2,2),
('2023-04-29 03:28:45',3,3),
('2023-05-11 03:28:45',4,4),
('2023-05-21 03:28:45',5,5),
('2023-05-21 03:28:45',6,2),
('2023-05-21 03:28:45',7,2),
('2023-05-21 03:28:45',8,2),
('2023-05-21 03:28:45',9,3),
('2023-05-21 03:28:45',10,3),
('2023-05-21 03:28:45',11,3),
('2023-05-21 03:28:45',12,5),
('2023-05-21 03:28:45',13,5),
('2023-05-21 03:28:45',14,1),
('2023-05-21 03:28:45',15,1);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned DEFAULT NULL,
  `order_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_item_FK` (`item_id`),
  KEY `order_item_FK_1` (`order_id`),
  CONSTRAINT `order_item_FK` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_item_FK_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES
(1,11,1),
(2,12,2),
(3,13,3),
(4,14,4),
(5,15,5),
(6,16,1),
(7,17,2),
(8,18,3),
(9,19,4),
(10,20,5),
(11,11,4),
(12,12,4),
(13,13,5),
(14,14,3),
(15,15,3),
(16,16,6),
(17,17,7),
(18,18,8),
(19,19,9),
(20,20,10),
(21,11,11),
(22,12,12),
(23,13,13),
(24,14,14),
(25,15,15),
(26,16,6),
(27,17,6),
(28,18,7),
(29,19,9),
(30,20,11),
(31,11,15),
(32,12,12),
(33,13,13),
(34,14,13),
(35,15,14),
(36,16,8),
(37,17,8),
(38,18,8),
(39,19,8),
(40,20,8);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'w18b'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-21 22:23:00
