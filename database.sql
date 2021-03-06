-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinegarmentsdeal
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `ID` bigint NOT NULL,
  `Name` varchar(225) DEFAULT NULL,
  `Age` varchar(225) DEFAULT NULL,
  `Address` varchar(225) DEFAULT NULL,
  `ContactNo` varchar(225) DEFAULT NULL,
  `ProductChoice` varchar(225) DEFAULT NULL,
  `ItemCode` varchar(225) DEFAULT NULL,
  `MultipleItems` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Login` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (4,'Test','25','sdfvsfdv','9635124575',NULL,'200103',NULL,'root','root','2021-10-19 02:47:48','2021-10-19 02:47:48','Test@gmail.com'),(5,'Dummy','14','ssrf','9685751545',NULL,'200103',NULL,'root','root','2021-10-19 03:00:21','2021-10-19 03:00:21','Dummy123'),(6,'mohanish','25','asdfghjkl','7387220883',NULL,'1235',NULL,'root','root','2021-10-19 05:03:23','2021-10-19 05:03:37','mohanish'),(7,'as','26','aa','9000005555',NULL,'1235',NULL,'root','root','2021-10-19 05:41:57','2021-10-19 05:41:57','as'),(8,'Riddhi','26','asd','7897897897',NULL,'1234',NULL,'root','root','2021-10-19 05:56:48','2021-10-19 05:57:05','abc@gmail.com'),(9,'sd','as','sd','7845885996',NULL,'1234',NULL,'root','root','2021-11-16 13:50:12','2021-11-16 13:51:06','sd');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `ID` bigint NOT NULL,
  `login` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `role` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'Admin123','Admin@123','root','root','2021-10-10 04:11:47','2021-10-10 04:11:51',1),(2,'Manager123','Man@123',NULL,NULL,'2021-10-16 13:44:41','2021-10-10 04:21:44',2),(3,'Customer123','123',NULL,NULL,'2021-10-16 13:44:41','2021-10-10 06:44:04',3),(4,'Hariom123','123',NULL,NULL,'2021-10-16 13:44:41','2021-10-10 06:49:07',3),(5,'Test@gmail.com','Test@123',NULL,NULL,'2021-10-19 02:47:55','2021-10-19 02:47:55',3),(6,'Dummy123','Dum@123',NULL,NULL,'2021-10-19 03:00:29','2021-10-19 03:00:29',3),(7,'mohanish','mohanish',NULL,NULL,'2021-10-19 05:03:55','2021-10-19 05:03:55',3),(8,'as','sd',NULL,NULL,'2021-10-19 05:42:04','2021-10-19 05:42:04',3),(9,'sd','asd',NULL,NULL,'2021-11-16 13:51:19','2021-11-16 13:51:19',3);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `ID` bigint NOT NULL,
  `Name` varchar(225) DEFAULT NULL,
  `emailId` varchar(225) DEFAULT NULL,
  `contactNo` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `Login` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'Manager','Manager@gmail.com','9000005000','India','Manager123','Admin123','Admin123','2021-10-09 04:23:39','2021-10-08 04:21:44');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `ID` bigint NOT NULL,
  `paymentId` bigint DEFAULT NULL,
  `customerId` bigint DEFAULT NULL,
  `productId` bigint DEFAULT NULL,
  `paymentDate` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,9,1,'2021-11-16',150,NULL,NULL,'2021-11-16 13:51:19','2021-11-16 13:51:19','sd');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ID` bigint NOT NULL,
  `productName` varchar(225) DEFAULT NULL,
  `productQuantity` varchar(225) DEFAULT NULL,
  `productChoice` varchar(225) DEFAULT NULL,
  `itemCode` varchar(225) DEFAULT NULL,
  `Image` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `price` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Butter','1','Amul Butter','1234','butter.jpg','Admin123','Admin123','2021-11-16 13:37:58','2021-11-16 13:37:58',150),(2,'Cheese','1','Cheese','1235','Cheese.jpg','Admin123','Admin123','2021-11-16 13:38:41','2021-11-16 13:38:41',200),(3,'olive oil','1','oil','1236','olive oil.jpg','Admin123','Admin123','2021-11-16 13:39:11','2021-11-16 13:39:11',500),(4,'Vegetable','100','veggies','1237','veg.jpg','Admin123','Admin123','2021-11-16 13:39:48','2021-11-16 13:39:48',1500);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-16 19:28:26
