CREATE DATABASE  IF NOT EXISTS `employees` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `employees`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: employees
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `emppos`
--

DROP TABLE IF EXISTS `emppos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emppos` (
  `pos_id` int NOT NULL,
  `pos_name` varchar(45) NOT NULL,
  `dept_id` int NOT NULL,
  PRIMARY KEY (`pos_id`),
  KEY `1_idx` (`dept_id`),
  CONSTRAINT `1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emppos`
--

LOCK TABLES `emppos` WRITE;
/*!40000 ALTER TABLE `emppos` DISABLE KEYS */;
INSERT INTO `emppos` VALUES (1,'Accountant I',2),(2,'Accountant II',2),(3,'Accountant III',2),(4,'Senior Accountant',2),(5,'Sales Rep I',1),(6,'Sales Rep II',1),(7,'Sales Rep III',1),(8,'Senior Sales Rep III',1),(9,'DB Developer I',4),(10,'DB Developer II',4),(11,'DB Developer III',4),(12,'Senior DB Developer',4),(13,'DB Administrator I',4),(14,'DB Administrator II',4),(15,'DB Administrator III',4),(16,'Senior DB Administrator',4),(17,'Network Analyst I',4),(18,'Network Analyst II',4),(19,'Network Analyst III',4),(20,'Senior Network Analyst',4),(21,'Operations Analyst I',3),(22,'Operations Analyst II',3),(23,'Operations Analyst III',3),(24,'Senior Operations Analyst',3),(25,'Marketing Analyst I',5),(26,'Marketing Analyst II',5),(27,'Marketing Analyst III',5),(28,'Senior Marketing Analyst',5),(29,'HR Rep I',6),(30,'HR Rep II',6),(31,'HR Rep III',6),(32,'Senior HR Rep',6),(33,'Facilities Rep I',8),(34,'Facilities Rep II',8),(35,'Facilities Rep III',8),(36,'Senior Facilities Rep',8),(37,'Master Mechanic I',8),(38,'Master Mechanic II',8),(39,'Master Mechanic III',8),(40,'Senior Master Mechanic',8),(41,'Security Officer I',9),(42,'Security Officer II',9),(43,'Security Officer III',9),(44,'Senior Security Officer',9),(45,'Customer Service Agent I',10),(46,'Customer Service Agent II',10),(47,'Customer Service Agent III',10),(48,'Lead Customer Service Agent',10),(49,'Inventory Control Agent I',11),(50,'Inventory Control Agent II',11),(51,'Inventory Control Agent III',11),(52,'Senior Inventory Control Agent',11),(53,'Financial Analyst I',12),(54,'Financial Analyst II',12),(55,'Financial Analyst III',12),(56,'Senior Financial Analyst',12),(57,'Manager of Operations',7),(58,'Manager of Finance',7),(59,'Manager of Accounting',7),(60,'Manager of Facilities',7),(61,'Manager of Sales',7),(62,'Manager of Marketing',7),(63,'Manager of Customer Support',7),(64,'Manager of IT',7),(65,'Manager of HR',7),(66,'Manager of Security',7),(67,'Manager of Inventory',7),(68,'President',7);
/*!40000 ALTER TABLE `emppos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-25 15:19:22
