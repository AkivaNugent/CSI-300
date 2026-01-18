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
-- Table structure for table `empcontact`
--

DROP TABLE IF EXISTS `empcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empcontact` (
  `eid` int NOT NULL,
  `contact_id` int NOT NULL,
  `contact` varchar(45) NOT NULL,
  PRIMARY KEY (`eid`,`contact_id`),
  KEY `fk_Employee_has_Contact_Contact1_idx` (`contact_id`),
  KEY `fk_Employee_has_Contact_Employee1_idx` (`eid`),
  CONSTRAINT `fk_Employee_has_Contact_Contact1` FOREIGN KEY (`contact_id`) REFERENCES `contacttype` (`contact_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Employee_has_Contact_Employee1` FOREIGN KEY (`eid`) REFERENCES `employee` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empcontact`
--

LOCK TABLES `empcontact` WRITE;
/*!40000 ALTER TABLE `empcontact` DISABLE KEYS */;
INSERT INTO `empcontact` VALUES (1,1,'802-365-8678'),(1,2,'BruceJones01@neb.com'),(2,1,'802-365-3449'),(2,2,'WendySmith@neb.com'),(3,1,'802-365-8546'),(3,2,'WilliamPenn@neb.com'),(4,1,'802-365-4054'),(4,2,'JoanArc@neb.com'),(5,1,'802-365-7644'),(5,2,'AlbertEinstein@neb.com'),(6,1,'802-365-9520'),(6,2,'MarieCurrie@neb.com'),(7,1,'802-365-7883'),(7,2,'MargaretThatcher@neb.com'),(8,1,'802-365-5899'),(8,2,'John D.Manchester@neb.com'),(9,1,'802-365-3755'),(9,2,'JohnDoe@neb.com'),(10,1,'802-365-8303'),(10,2,'JaneSame@neb.com'),(11,1,'802-365-2080'),(11,2,'TomSmythe@neb.com'),(12,1,'802-365-3156'),(12,2,'KateAbbott@neb.com'),(13,1,'802-365-5586'),(13,2,'BethuneEmily@neb.com'),(20,1,'802-365-4607'),(20,2,'FosterDonnelly@neb.com'),(21,1,'802-365-6143'),(21,2,'LilySnyder@neb.com'),(22,1,'802-365-1431'),(22,2,'KatKillinger@neb.com'),(26,1,'802-365-1372'),(26,2,'AllenGreene@neb.com'),(27,1,'802-365-3578'),(27,2,'SteveScuba@neb.com'),(28,1,'802-365-7496'),(28,2,'MickeyMouse@neb.com'),(29,1,'802-365-3620'),(29,2,'ChrisJones@neb.com'),(30,1,'802-365-4212'),(30,2,'MacLeMore@neb.com'),(31,1,'802-365-9717'),(31,2,'DennisMcDonald@neb.com'),(32,1,'802-365-7829'),(32,2,'WilliamWonka@neb.com'),(33,1,'802-365-2064'),(33,2,'DavidJones@neb.com'),(36,1,'802-365-2321'),(36,2,'RachaelHunter@neb.com'),(37,1,'802-365-2496'),(37,2,'EsterBaxter@neb.com'),(39,1,'802-365-1398'),(39,2,'FranklinArts@neb.com'),(40,1,'802-365-1733'),(40,2,'AnnaCaisse@neb.com'),(41,1,'802-365-6453'),(41,2,'EricOlivares@neb.com'),(42,1,'802-365-1432'),(42,2,'ThomasSampson@neb.com'),(45,1,'802-365-7594'),(45,2,'AmandaFintz@neb.com'),(46,1,'802-365-2530'),(46,2,'MarcBartalone@neb.com'),(47,1,'802-365-1464'),(47,2,'BrianParker@neb.com'),(48,1,'802-365-5725'),(48,2,'GarthFitzgerald@neb.com'),(49,1,'802-365-7377'),(49,2,'BarbaraMartin@neb.com'),(50,1,'802-365-3872'),(50,2,'HomerReynolds@neb.com'),(51,1,'802-365-1671'),(51,2,'NikolaTesla@neb.com'),(52,1,'802-365-6660'),(52,2,'SebastianAlias@neb.com'),(53,1,'802-365-7963'),(53,2,'JakeJohnson@neb.com'),(55,1,'802-365-8759'),(55,2,'BruceJones@neb.com'),(56,1,'802-365-3208'),(56,2,'GuyDowney@neb.com'),(57,1,'802-365-7620'),(57,2,'SungFugong@neb.com'),(58,1,'802-365-6369'),(58,2,'JohnBrown01@neb.com'),(59,1,'802-365-2592'),(59,2,'PeterWhite@neb.com'),(60,1,'802-365-1449'),(60,2,'JoshGreen@neb.com'),(61,1,'802-365-3168'),(61,2,'JoanJacobs@neb.com'),(62,1,'802-365-6775'),(62,2,'JenniferAtrast@neb.com'),(63,1,'802-365-4478'),(63,2,'TaylorBigam@neb.com'),(64,1,'802-365-2915'),(64,2,'DanielleDudders@neb.com'),(66,1,'802-365-2989'),(66,2,'GeorgeWashington@neb.com'),(68,1,'802-365-2405'),(68,2,'BruceWayne@neb.com'),(69,1,'802-365-5204'),(69,2,'PeterParker01@neb.com'),(70,1,'802-365-3421'),(70,2,'CarleeKent01@neb.com'),(71,1,'802-365-1401'),(71,2,'TonyStark@neb.com'),(72,1,'802-365-4286'),(72,2,'AgentCoulson@neb.com'),(73,1,'802-365-4409'),(73,2,'OscarMadison@neb.com'),(74,1,'802-365-2079'),(74,2,'BrianneDeVincent@neb.com'),(75,1,'802-365-2361'),(75,2,'RichardTeabeau@neb.com'),(76,1,'802-365-2790'),(76,2,'WilliamReynolds@neb.com'),(77,1,'802-365-8194'),(77,2,'KennedyTran@neb.com'),(78,1,'802-365-7372'),(78,2,'AlmaConway@neb.com'),(79,1,'802-365-2976'),(79,2,'JamesHujjiba@neb.com'),(80,1,'802-365-6329'),(80,2,'KileAggot@neb.com'),(81,1,'802-365-5971'),(81,2,'HeirichWanger@neb.com'),(82,1,'802-365-9375'),(82,2,'ZenAntonitii@neb.com'),(83,1,'802-365-4508'),(83,2,'TialaSumardar@neb.com'),(85,1,'802-365-4705'),(85,2,'SamanthaClauson@neb.com'),(86,1,'802-365-4478'),(86,2,'JohnnyRoberts@neb.com'),(89,1,'802-365-7603'),(89,2,'TimothySmith@neb.com'),(94,1,'802-365-8164'),(94,2,'JasonJohn@neb.com'),(95,1,'802-365-4450'),(95,2,'TomJane@neb.com'),(96,1,'802-365-6888'),(96,2,'BillyVale@neb.com'),(97,1,'802-365-9203'),(97,2,'JoeyLaskowski@neb.com'),(98,1,'802-365-4425'),(98,2,'YourName@neb.com'),(99,1,'802-365-2339'),(99,2,'LukeColletti@neb.com'),(100,1,'802-365-8093'),(100,2,'EmilyBethune@neb.com'),(101,1,'802-365-3066'),(101,2,'JoanneOvitt@neb.com'),(102,1,'802-365-5707'),(102,2,'DorisFlower@neb.com'),(103,1,'802-365-5386'),(103,2,'DanielWicks@neb.com'),(104,1,'802-365-8055'),(104,2,'SamanthaOvitt@neb.com'),(105,1,'802-365-3492'),(105,2,'FakeyMcPhoney@neb.com'),(106,1,'802-365-8086'),(106,2,'JohnMongler@neb.com'),(107,1,'802-365-9894'),(107,2,'DudeMcBro@neb.com'),(108,1,'802-365-4639'),(108,2,'NullyValue@neb.com'),(109,1,'802-365-4917'),(109,2,'JohnSmith@neb.com'),(110,1,'802-365-1248'),(110,2,'FrankTank@neb.com'),(111,1,'802-365-3966'),(111,2,'RobBob@neb.com'),(112,1,'802-365-8939'),(112,2,'SpongeBob@neb.com'),(113,1,'802-365-3002'),(113,2,'TitoSummers@neb.com'),(114,1,'802-365-8850'),(114,2,'BoMessier@neb.com'),(115,1,'802-365-5141'),(115,2,'BobCross@neb.com'),(116,1,'802-365-6484'),(116,2,'WillSamuel@neb.com'),(117,1,'802-365-6740'),(117,2,'JohnEvans@neb.com'),(118,1,'802-365-5069'),(118,2,'MichelleMichael@neb.com'),(119,1,'802-365-1553'),(119,2,'JuanSucro@neb.com'),(120,1,'802-365-8585'),(120,2,'JonathanLobe@neb.com'),(121,1,'802-365-6272'),(121,2,'JimmyJam@neb.com'),(122,1,'802-365-6233'),(122,2,'OnetwoTwoone@neb.com'),(123,1,'802-365-9969'),(123,2,'AbeLincoln@neb.com'),(124,1,'802-365-9848'),(124,2,'MegaMan@neb.com'),(125,1,'802-365-2733'),(125,2,'LawrenceWalker@neb.com'),(126,1,'802-365-2548'),(126,2,'RonaldKimber@neb.com'),(127,1,'802-365-1785'),(127,2,'KurtSohn@neb.com'),(128,1,'802-365-5183'),(128,2,'MyWonder@neb.com'),(130,1,'802-365-3631'),(130,2,'PaulPetros@neb.com'),(131,1,'802-365-3993'),(131,2,'JamieJamieson@neb.com'),(132,1,'802-365-8569'),(132,2,'JordanBerkowitz@neb.com'),(133,1,'802-365-3021'),(133,2,'JohnBrown02@neb.com'),(134,1,'802-365-9545'),(134,2,'JessicaJacket@neb.com'),(136,1,'802-365-1710'),(136,2,'SamClues@neb.com'),(138,1,'802-365-9914'),(138,2,'FrankCanovatchel@neb.com'),(142,1,'802-365-8308'),(142,2,'WonderWoman@neb.com'),(143,1,'802-365-8741'),(143,2,'CarleeKent02@neb.com'),(144,1,'802-365-5344'),(144,2,'PeterParker02@neb.com'),(145,1,'802-365-6692'),(145,2,'MisterFreeze@neb.com'),(146,1,'802-365-8339'),(146,2,'BarryWhite@neb.com'),(147,1,'802-365-7334'),(147,2,'JeffSeid@neb.com'),(148,1,'802-365-6946'),(148,2,'MarkWahlberg@neb.com'),(149,1,'802-365-8964'),(149,2,'JamesBoiben@neb.com'),(150,1,'802-365-9756'),(150,2,'AzizShavershain@neb.com'),(151,1,'802-365-6213'),(151,2,'HenryQuinn@neb.com'),(152,1,'802-365-9713'),(152,2,'RickGrimes@neb.com'),(153,1,'802-365-7993'),(153,2,'RobertByrd@neb.com'),(154,1,'802-365-9874'),(154,2,'SallyJane@neb.com'),(158,1,'802-365-7989'),(158,2,'SteveBates@neb.com'),(159,1,'802-365-8109'),(159,2,'WallacePenguin@neb.com'),(160,1,'802-365-3074'),(160,2,'JackDaniels@neb.com'),(161,1,'802-365-4051'),(161,2,'AnthonyLarosa@neb.com'),(162,1,'802-365-7455'),(162,2,'HubertBowtie@neb.com');
/*!40000 ALTER TABLE `empcontact` ENABLE KEYS */;
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
