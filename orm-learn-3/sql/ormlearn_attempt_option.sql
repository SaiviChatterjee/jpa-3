-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: ormlearn
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `attempt_option`
--

DROP TABLE IF EXISTS `attempt_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attempt_option` (
  `ao_id` int NOT NULL AUTO_INCREMENT,
  `ao_op_id` int DEFAULT NULL,
  `ao_aq_id` int DEFAULT NULL,
  `ao_selected` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ao_id`),
  KEY `ao_aq_fk_idx` (`ao_aq_id`),
  KEY `ao_op_fk_idx` (`ao_op_id`),
  CONSTRAINT `ao_aq_fk` FOREIGN KEY (`ao_aq_id`) REFERENCES `attempt_question` (`aq_id`),
  CONSTRAINT `ao_op_fk` FOREIGN KEY (`ao_op_id`) REFERENCES `options` (`op_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attempt_option`
--

LOCK TABLES `attempt_option` WRITE;
/*!40000 ALTER TABLE `attempt_option` DISABLE KEYS */;
INSERT INTO `attempt_option` VALUES (1,1,1,_binary '\0'),(2,2,1,_binary '\0'),(3,3,1,_binary ''),(4,4,1,_binary '\0'),(5,5,2,_binary ''),(6,6,2,_binary '\0'),(7,7,2,_binary '\0'),(8,8,2,_binary '\0'),(9,9,3,_binary ''),(10,10,3,_binary '\0'),(11,11,4,_binary '\0'),(12,12,4,_binary '\0'),(13,13,4,_binary '\0'),(14,14,4,_binary '');
/*!40000 ALTER TABLE `attempt_option` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-24 17:47:40
