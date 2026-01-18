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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `eid` int NOT NULL,
  `efn` varchar(45) NOT NULL,
  `eln` varchar(45) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Bruce','Jones'),(2,'Wendy','Smith'),(3,'William','Penn'),(4,'Joan','Arc'),(5,'Albert','Einstein'),(6,'Marie','Currie'),(7,'Margaret','Williams'),(8,'John','Manchester'),(9,'John','Doe'),(10,'Jane','Same'),(11,'Tom','Smythe'),(12,'Kate','Abbott'),(13,'Bethune','Emily'),(14,'Joanne','Ovitt'),(15,'Doris','Flower'),(16,'Daniel','Wicks'),(17,'Samantha','Ovitt'),(18,'Taylor','Bigam'),(19,'Danielle','Dudders'),(20,'Foster','Donnelly'),(21,'Lily','Snyder'),(22,'Kat','Killinger'),(23,'Lawrence','Walker'),(24,'Ronald','Kimber'),(25,'Kurt','Sohn'),(26,'Allen','Greene'),(27,'Steve','Scuba'),(28,'Michael','Millet'),(29,'Chris','Jones'),(30,'Mac','LeMore'),(31,'Dennis','McDonald'),(32,'William','Winkler'),(33,'David','Jones'),(34,'Samantha','Clauson'),(35,'Johnny','Roberts'),(36,'Rachael','Hunter'),(37,'Ester','Baxter'),(38,'Timothy','Smith'),(39,'Franklin','Arts'),(40,'Anna','Caisse'),(41,'Eric','Olivares'),(42,'Thomas','Sampson'),(43,'James','Boiben'),(44,'Sally','Jane'),(45,'Amanda','Fintz'),(46,'Marc','Bartalone'),(47,'Brian','Parker'),(48,'Garth','Fitzgerald'),(49,'Barbara','Martin'),(50,'Homer','Reynolds'),(51,'Nikola','Tesla'),(52,'Sebastian','Alias'),(53,'Jake','Johnson'),(54,'Sam','Clues'),(55,'Bruce','Jones'),(56,'Guy','Downey'),(57,'Sung','Yong'),(58,'John','Brown'),(59,'Noah','White'),(60,'Josh','Green'),(61,'Joan','Jacobs'),(62,'Jennifer','Atrast'),(63,'Taylor','Bigam'),(64,'Danielle','Dudders'),(65,'Foster','Donnelly'),(66,'George','Quincy'),(67,'Kat','Killinger'),(68,'Bruce','Wayne'),(69,'Patrick','Parker'),(70,'Carlee','Kent'),(71,'Tony','Varone'),(72,'Amanda','Coulson'),(73,'David','Madison'),(74,'Brianne','DeVincent'),(75,'Richard','Teabeau'),(76,'William','Reynolds'),(77,'Kiley','Tran'),(78,'Alma','Conway'),(79,'James','Hujjiba'),(80,'Kyle','Aggot'),(81,'Heirich','Wagner'),(82,'Zen','Antoniti'),(83,'Tiala','Sumardar'),(84,'David','Jones'),(85,'Samantha','Clauson'),(86,'Johnny','Roberts'),(87,'Rachael','Hunter'),(88,'Ester','Baxter'),(89,'Timothy','Smith'),(90,'Franklin','Arts'),(91,'Anna','Caisse'),(92,'Eric','Olivares'),(93,'Thomas','Sampson'),(94,'Jason','John'),(95,'Tom','Jane'),(96,'Billy','Vale'),(97,'Joey','Laskowski'),(98,'Cole','Neary'),(99,'Luke','Colletti'),(100,'Emily','Bethune'),(101,'Joanne','Ovitt'),(102,'Doris','Flower'),(103,'Daniel','Wicks'),(104,'Samantha','Ovitt'),(105,'Fred','McPherson'),(106,'John','Mongler'),(107,'Dennis','McDonald'),(108,'Nathan','Value'),(109,'John','Smith'),(110,'Frank','Smith'),(111,'Rob','Bob'),(112,'Robert','Spring'),(113,'Tito','Summers'),(114,'Bo','Messier'),(115,'Bob','Cross'),(116,'Will','Samuel'),(117,'John','Evans'),(118,'Michelle','Michaels'),(119,'Juan','Simmons'),(120,'Jonathan','Lobe'),(121,'Jimmy','Jam'),(122,'Paul','Twoone'),(123,'Dave','Lincoln'),(124,'Mandy','McDonald'),(125,'Lawrence','Walker'),(126,'Ronald','Kimber'),(127,'Kurt','Sohn'),(128,'Mia','Wonder'),(129,'Allen','Greene'),(130,'Noah','Peterson'),(131,'Jamie','Jamieson'),(132,'Jordan','Berkowitz'),(133,'John','Brown'),(134,'Jessica','Jones'),(135,'Jake','Johnson'),(136,'Sam','Clues'),(137,'Bruce','Jones'),(138,'Frank','Canovatchel'),(139,'Guy','Downey'),(140,'Sung','Yong'),(141,'Bruce','Wayne'),(142,'Wilma','Willet'),(143,'Carlee','Kent'),(144,'Patrick','Parker'),(145,'Larry','Freeze'),(146,'Barry','White'),(147,'Jeff','Seid'),(148,'Mark','Wahlberg'),(149,'James','Boiben'),(150,'Aziz','Shavershain'),(151,'Henry','Quinn'),(152,'Rick','Grimes'),(153,'Robert','Byrd'),(154,'Sally','Jane'),(155,'Amanda','Fintz'),(156,'Marc','Bartalone'),(157,'Brian','Parker'),(158,'Steve','Bates'),(159,'Wallace','Penguin'),(160,'Jackson','Dunn'),(161,'Anthony','Larosa'),(162,'Hubert','Bowtie');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-29 15:14:28
