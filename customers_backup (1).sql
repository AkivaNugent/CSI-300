CREATE DATABASE  IF NOT EXISTS `customers` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `customers`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: customers
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `add_id` int NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `st` char(2) NOT NULL,
  `zip` char(5) NOT NULL,
  PRIMARY KEY (`add_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'110 Main Street','Winooski','VT','05404'),(2,'10 South Evan Road','Manchester','NH','03101'),(3,'25 North Avenue','Rome','NY','13440'),(4,'9875 East West Street','Providence','RI','02901'),(5,'23 Los Alomos Road','Bangor','ME','04401'),(6,'99 Brilliant Road','Montpelier','VT','05602'),(7,'14 Highpoint Avenue','Albany','NY','12335'),(8,'89-48 East 72nd Street','New York City','NY','10118'),(9,'100 Unknown Drive','Lesserknown','NH','03456'),(10,'987 Forward Avenue','Augusta','ME','04330'),(11,'12 Lane Road','Colchester','VT','05439'),(12,'17 Fordham Place','Hempstead','NY','11550'),(13,'10 East Willard Street','Burlington','VT','05401'),(14,'23 South Winner Road','Enosburg Falls','VT','05450'),(15,'16 South Union Road','Halifax','MA','02338'),(16,'8 North Genius Road','Plymouth','MA','02334'),(17,'88 North Ovitt Road','Lisbon','NH','03101'),(18,'23 Pants Rd','Boston','MA','04424'),(19,'21 Year Old Drive','WhereDoomed','NJ','66666'),(20,'777 Rocky Rd','DownUnder','NV','11100'),(21,'23 Whats My Age Again Rd','Johnson','VT','05439'),(22,'509 Woods Hollow Road','Westford','VT','05494'),(23,'12 Galaxy Faraway','Outerspace','NY','05403'),(24,'1 Middle Road','South Burlington','VT','21350'),(25,'1 Trump Plaza','New York','NY','11550'),(26,'19083 Park Place','Monopoly','Ak','45650'),(27,'22 Fish Lane','Atlanta','GA','22345'),(28,'1964 Disney Road','Orlando','FL','68429'),(29,'60 Hall Road','East City','CT','21660'),(30,'47 Known Ave','West Land','AK','93640'),(31,'12 Ride Road','Hemmingsburg','AK','51230'),(32,'1 Candy Lane','Sugar','WY','71943'),(33,'38 South Main Street','North Brookfield','MA','01535'),(34,'1 Pond Lane','Charlton','MA','01501'),(35,'146 East Northeast Avenue','Topeka','KS','89562'),(36,'987 Windy Drive','Santa Monica','CA','98960'),(37,'4592 Drive Way','Orlando','FL','78523'),(38,'182 Brook Hill Lane','Vernon Hills','IL','60061'),(39,'103 Southern Street','Winooski','VT','05404'),(40,'102 Cushman Street','Waterbury','CT','05704'),(41,'120 Vista Street','San Antonio','TX','78213'),(42,'186 Devoe Avenue','Yonkers','NY','10705'),(43,'303 South Street','Multivast','TX','73784'),(44,'312 North James Road','Alabaster','CT','06453'),(45,'568 East Varsity Street','Albany','NY','13440'),(46,'10284 West Advantage Avenue','Northport','CA','95832'),(47,'745 Falcon Way Road','Portland','WA','68440'),(48,'3392 US Route 5','Westminster','VT','05158'),(49,'22 Cortland Place','Oxford','CT','06478'),(50,'1 College Avenue','Factoryville','PA','18419'),(51,'1 Tesla Street','East Shoreham','NY','11786'),(52,'1531 Western Avenue','Seattle','WA','98101'),(53,'450 College Street','Burlington','VT','05401'),(54,'14 South Pole Dr','North Pole','ND','65404'),(55,'89 Dogwood Dr','Townshend','VT','05404'),(56,'69 Groovy Way','Funky Town','CA','94206'),(57,'65 South Union','Burlington','VT','05401'),(58,'25 South Road','Middletown','VA','25896'),(59,'156 Fall Drive','Freewell','WA','89640'),(60,'258 Chanler Street','Arrow','NY','11574'),(61,'50 Rose Drive','Hartford','CT','06895'),(62,'7888 Fort Drive','Worthfield','VA','78541'),(63,'34 Batman Blvd','Gotham City','NY','10118'),(64,'75 SpiderMan Lane','Anothercity','CT','08459'),(65,'987 Super Man Street','Augusta','ME','04330'),(66,'1 Stark Towers','New York City','NY','10118'),(67,'6 Feet Under','Nowhere','NY','11550'),(68,'12 Clean Street','Madison','NY','15501'),(69,'9 Turcotte Street','Attleboro','MA','02703'),(70,'29 Beagle Club Road','Attleboro','MA','02703'),(71,'13 Greenfield Street','Attleboro','MA','02703'),(72,'2954 Pullen Ave','Fall River','MA','02720'),(73,'56 Llama Road','Bangor','ME','04401'),(74,'46 Somewhere St.','Bobsled','AZ','78956'),(75,'7 Goneware Dr.','Acktid','MA','01792'),(76,'18 Zelwa Place','Yelon','TX','22356'),(77,'2 Beltham Boulevard','Taigrex','CA','33659'),(78,'37 Faylon Dr.','Einsworth','AK','11550'),(79,'146 East Northeast Avenue','Topeka','KS','85236'),(80,'987 Windy Drive','Santa Monica','CA','98563'),(81,'4592 Drive Way','Orlando','FL','56894'),(82,'7 South Evan Road','Dover','NH','03820'),(83,'5 Linda Avenue','Portsmouth','NH','03801'),(84,'246 Soper Point Road','Old Forge','NY','13420'),(85,'32 Cranbrooke Drive','Rochester','NY','13620'),(86,'1 Risky Business Avenue','here','VT','05489'),(87,'2938 River Rd.','Schenectady','NY','13264'),(88,'123 Fake St.','Faketown','VT','05101'),(89,'25 Winooski Falls Way','Winooski','VT','05404'),(90,'326 Quarry Hill Dr.','S. Burlington','VT','05404'),(91,'404 Notfound St.','Nowhere','VT','05004'),(92,'1 mySt.','myTown','VT','05111'),(93,'111 Main Street','Winooski','VT','05404'),(94,'11 South Evan Road','Manchester','NH','03101'),(95,'26 North Avenue','Rome','NY','13440'),(96,'985 East West Street','Providence','RI','02901'),(97,'265743214 Los Alomos Road','Bangor','ME','04401'),(98,'42 Main Street','Worcester','MA','01601'),(99,'1 Buck Street','Durham','NH','03824'),(100,'30 Hayward Steet','Burlington','VT','05401'),(101,'5 Cambell Court','Dover','NH','03820'),(102,'32 Post Road','Bangor','ME','04401'),(103,'64 Road Rage Lane','Wikita','VT','05859'),(104,'999 NinteyNineNine','Bubbletown','VT','05205'),(105,'One','Two','VT','05952'),(106,'40 Wowzer drive','Hineburg','VT','05505'),(107,'222 Megatown','Megaville','VT','05892'),(108,'777 Newhaven Place','Heaven','NY','77777'),(109,'14 Round Circle','Utica','NY','12843'),(110,'123 Fake Street','Burlington','MA','02348'),(111,'90 Central Street','Natick','MA','1760'),(112,'65 Pond Road','Bath','ME','65875'),(113,'67 Lake Street','Portland','NH','12354'),(114,'163 South Willard Street','Burlington','VT','05401'),(115,'1 Wayne Manor Road','Gotham City','NY','11550'),(116,'1 Amazonian trail','Amazon','VT','05901'),(117,'25 Not Superman\'s House Road ','Metropolis','CA','91550'),(118,'20 Ingram Street','Queens','NY','11428'),(119,'4 Super Villain Road ','Gotham City','NY','11550'),(120,'20 West Canal Street','Winooski','VT','05404'),(121,'17 Andy Avenue','Swanton','VT','05488'),(122,'154 Short Street','Highgate','VT','05459'),(123,'10 Main Street','Saint Albans','VT','05478'),(124,'13 Dogwood Drive','East Hampton','CT','06424'),(125,'2 Harlem Place','Atlanta','GA','25764'),(126,'1 Sesame Street','Cooperstown','NY','11550'),(127,'496 Leftwing Circle','Cheshire','CT','06428'),(128,'17 Coll Lane','Nowhere','KY','53342'),(129,'20 Cherry Street','Providence','RI','02901'),(130,'47 Celtics Ave','Boston','MA','79631'),(131,'49 Hoyle Street','Norwood','MA','02062');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresstype`
--

DROP TABLE IF EXISTS `addresstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresstype` (
  `add_type_id` int NOT NULL,
  `add_type` varchar(255) NOT NULL,
  PRIMARY KEY (`add_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresstype`
--

LOCK TABLES `addresstype` WRITE;
/*!40000 ALTER TABLE `addresstype` DISABLE KEYS */;
INSERT INTO `addresstype` VALUES (111,'Billing Address'),(222,'Mailing Address'),(333,'Shipping Address');
/*!40000 ALTER TABLE `addresstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `contact_id` int NOT NULL,
  `contact_type` varchar(255) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (11,'Personal E-Mail Address'),(22,'Business E-Mail Address'),(33,'Home Phone Number'),(44,'Cell Phone Number'),(55,'Business Phone Number');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custlogin`
--

DROP TABLE IF EXISTS `custlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custlogin` (
  `cid` int NOT NULL,
  `cusername` varchar(255) NOT NULL,
  `cpswd` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`),
  CONSTRAINT `FK1_CUSTLog` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custlogin`
--

LOCK TABLES `custlogin` WRITE;
/*!40000 ALTER TABLE `custlogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `custlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cid` int NOT NULL,
  `cfn` varchar(255) NOT NULL,
  `cln` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Bruce','Jones'),(2,'Wendy','Smith'),(3,'William','Penn'),(4,'Joan','Arc'),(5,'Albert','Einstein'),(6,'Marie','Currie'),(7,'Margaret','Thatcher'),(8,'John','Manchester'),(9,'John','Doe'),(10,'Jane','Same'),(11,'Tom','Smythe'),(12,'Kate','Abbott'),(13,'Bethune','Emily'),(14,'Ovitt','Joanne'),(15,'Flower','Daisy'),(16,'Dumber','Dumb'),(17,'Samantha','Ovitt'),(18,'Taylor','Bigam'),(19,'Dudlee','Dudders'),(20,'Foster','Dood'),(21,'Lily','Snyder'),(22,'Kat','Killinger'),(23,'Luke','Skywalker'),(24,'Road','Kill'),(25,'Derek','Jeter'),(26,'Pass','Go'),(27,'Steve','Scuba'),(28,'Mickey','Mouse'),(29,'Chris','Jones'),(30,'Mac','LeMore'),(31,'Dag','Nabbit'),(32,'William','Wonka'),(33,'David','Jones'),(34,'Santa','Claws'),(35,'Johnny','Rocket'),(36,'Michael','Hunt'),(37,'Easter','Bunny'),(38,'Smith','Timothy'),(39,'Arts','Franklin'),(40,'Caisse','Anna'),(41,'Olivares','Eric'),(42,'Sampson','Thomas'),(43,'James','Boiben'),(44,'Sally','Jane'),(45,'Amanda','Fintz'),(46,'Marc','Bartalone'),(47,'Brian','Parker'),(48,'Garth','Fitzgerald'),(49,'Barbara','Martin'),(50,'Homer','Reynolds'),(51,'Nikola','Tesla'),(52,'Sebastian','Alias'),(53,'Jake','Johnson'),(54,'Santa','Clause'),(55,'Bruce','Jones'),(56,'Guy','Getdown'),(57,'Sung','Fugong'),(58,'John','Brown'),(59,'Peter','White'),(60,'Josh','Green'),(61,'Joan','Jacobs'),(62,'Jennifer','Atrast');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customeraddresstype`
--

DROP TABLE IF EXISTS `customeraddresstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customeraddresstype` (
  `cid` int NOT NULL,
  `add_id` int NOT NULL,
  `add_type_id` int NOT NULL,
  PRIMARY KEY (`cid`,`add_id`,`add_type_id`),
  KEY `FK2_CUSTADD` (`add_id`),
  KEY `FK3_CUSTADD` (`add_type_id`),
  CONSTRAINT `FK1_CUSTADD` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK2_CUSTADD` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK3_CUSTADD` FOREIGN KEY (`add_type_id`) REFERENCES `addresstype` (`add_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customeraddresstype`
--

LOCK TABLES `customeraddresstype` WRITE;
/*!40000 ALTER TABLE `customeraddresstype` DISABLE KEYS */;
INSERT INTO `customeraddresstype` VALUES (1,1,111),(1,1,222),(2,2,222),(3,3,222),(3,3,333),(4,4,111),(4,4,222),(5,5,222),(6,6,222),(6,6,333),(7,7,111),(7,7,222),(8,8,222),(9,9,222),(9,9,333),(10,10,111),(10,10,222),(11,11,222),(12,12,222),(12,12,333),(13,13,111),(13,13,222),(14,14,222),(15,15,222),(15,15,333),(16,16,111),(16,16,222),(17,17,222),(18,18,222),(18,18,333),(19,19,111),(19,19,222),(20,20,222),(21,21,222),(21,21,333),(22,22,111),(22,22,222),(23,23,222),(24,24,222),(24,24,333),(25,25,111),(25,25,222),(26,26,222),(27,27,222),(27,27,333),(28,28,111),(28,28,222),(29,29,222),(30,30,222),(30,30,333),(31,31,111),(31,31,222),(32,32,222),(33,33,222),(33,33,333),(34,34,111),(34,34,222),(35,35,222),(36,36,222),(36,36,333),(37,37,111),(37,37,222),(38,38,222),(39,39,222),(39,39,333),(40,40,111),(40,40,222),(41,41,222),(42,42,222),(42,42,333),(43,43,111),(43,43,222),(44,44,222),(45,45,222),(45,45,333),(46,46,111),(46,46,222),(47,47,222),(48,48,222),(48,48,333),(49,49,111),(49,49,222),(50,50,222),(51,51,222),(51,51,333),(52,52,111),(52,52,222),(53,53,222),(54,54,222),(54,54,333),(55,55,111),(55,55,222),(56,56,222),(57,57,222),(57,57,333),(58,58,111),(58,58,222),(59,59,222),(60,60,222),(60,60,333),(61,61,111),(61,61,222),(62,62,222),(62,63,333),(2,66,333),(3,67,111),(4,69,333),(5,70,111),(6,72,333),(8,75,333),(9,76,111),(10,78,333),(11,79,111),(12,81,333),(14,84,333),(15,85,111),(17,87,333),(18,88,111),(20,90,333),(21,91,111),(23,93,333),(24,94,111),(26,96,333),(27,97,111),(29,99,333),(30,100,111),(31,102,333),(32,103,111),(33,105,333),(35,108,333),(39,109,111),(36,111,333),(38,114,333),(41,117,333),(42,121,111),(44,123,333),(45,124,111),(46,126,333),(47,127,111),(49,129,333),(50,130,111);
/*!40000 ALTER TABLE `customeraddresstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customercontact`
--

DROP TABLE IF EXISTS `customercontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customercontact` (
  `cid` int NOT NULL,
  `contact_id` int NOT NULL,
  `contact` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`,`contact_id`),
  KEY `FK2_CUSTContact` (`contact_id`),
  CONSTRAINT `FK1_CUSTContact` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK2_CUSTContact` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`contact_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customercontact`
--

LOCK TABLES `customercontact` WRITE;
/*!40000 ALTER TABLE `customercontact` DISABLE KEYS */;
INSERT INTO `customercontact` VALUES (1,11,'BruceJones01@yahoo.com'),(1,33,'802-464-7770'),(2,11,'WendySmith@gmail.com'),(2,44,'603-311-7935'),(3,11,'WilliamPenn@fairpoint.com'),(3,55,'518-165-6424'),(4,11,'JoanArc@comcast.com'),(4,33,'401-111-4715'),(5,11,'AlbertEinstein@yahoo.com'),(5,44,'207-671-4368'),(6,11,'MarieCurrie@gmail.com'),(6,55,'802-394-6040'),(7,11,'MargaretThatcher@fairpoint.com'),(7,33,'518-365-2880'),(8,11,'JohnManchester@comcast.com'),(8,44,'518-207-8436'),(9,11,'JohnDoe@yahoo.com'),(9,55,'603-164-4556'),(10,11,'JaneSame@gmail.com'),(10,33,'207-490-1235'),(11,11,'TomSmythe@fairpoint.com'),(11,44,'802-893-9896'),(12,11,'KateAbbott@comcast.com'),(12,55,'518-435-5994'),(13,11,'BethuneEmily@yahoo.com'),(13,33,'802-249-8690'),(14,11,'OvittJoanne@gmail.com'),(14,44,'802-770-8028'),(15,11,'FlowerDaisy@fairpoint.com'),(15,55,'617-716-8413'),(16,11,'DumberDumb@comcast.com'),(16,33,'617-912-3210'),(17,11,'OvittSamantha@yahoo.com'),(17,44,'603-212-6677'),(18,11,'TaylorBigam@gmail.com'),(18,55,'617-808-2708'),(19,11,'DudleeDudders@fairpoint.com'),(19,33,'609-750-6890'),(20,11,'FosterDood@comcast.com'),(20,44,'775-207-8432'),(21,11,'LilySnyder@yahoo.com'),(21,55,'802-933-6060'),(22,11,'KatKillinger@gmail.com'),(22,33,'802-897-4446'),(23,11,'LukeSkywalker@fairpoint.com'),(23,44,'518-190-2914'),(24,11,'RoadKill@comcast.com'),(24,55,'802-922-1305'),(25,11,'DerekJeter@yahoo.com'),(25,33,'518-184-2376'),(26,11,'PassGo@gmail.com'),(26,44,'907-115-4492'),(27,11,'SteveScuba@fairpoint.com'),(27,55,'770-162-3074'),(28,11,'MickeyMouse@comcast.com'),(28,33,'786-931-1660'),(29,11,'ChrisJones@yahoo.com'),(29,44,'203-932-2566'),(30,11,'MacLeMore@gmail.com'),(30,55,'907-332-5510'),(31,11,'DagNabbit@fairpoint.com'),(31,33,'859-579-9627'),(32,11,'WilliamWonka@comcast.com'),(32,44,'307-251-1546'),(33,11,'DavidJones@yahoo.com'),(33,55,'617-310-6630'),(34,11,'SantaClaws@gmail.com'),(34,33,'617-237-1868'),(35,11,'JohnnyRocket@fairpoint.com'),(35,44,'913-206-7235'),(36,11,'MichaelHunt@comcast.com'),(36,55,'714-948-1298'),(37,11,'EasterBunny@yahoo.com'),(37,33,'786-700-2553'),(38,11,'SmithTimothy@gmail.com'),(38,44,'630-897-6330'),(39,11,'ArtsFranklin@fairpoint.com'),(39,55,'802-731-7686'),(40,11,'CaisseAnna@comcast.com'),(40,33,'203-270-8223'),(41,11,'OlivaresEric@yahoo.com'),(41,44,'281-750-9152'),(42,11,'SampsonThomas@gmail.com'),(42,55,'518-811-8639'),(43,11,'JamesBoiben@yahoo.com'),(43,33,'281-594-3798'),(44,11,'SallyJane@gmail.com'),(44,44,'203-503-4488'),(45,11,'AmandaFintz@yahoo.com'),(45,55,'518-939-2205'),(46,11,'MarcBartalone@gmail.com'),(46,33,'714-356-5110'),(47,11,'BrianParker@yahoo.com'),(47,44,'425-711-6537'),(48,11,'GarthFitzgerald@gmail.com'),(48,55,'802-196-7824'),(49,11,'BarbaraMartin@yahoo.com'),(49,33,'203-996-5218'),(50,11,'HomerReynolds@gmail.com'),(50,44,'217-929-2097'),(51,11,'NikolaTesla@yahoo.com'),(51,55,'518-567-2896'),(52,11,'SebastianAlias@gmail.com'),(52,33,'425-355-8046'),(53,11,'JakeJohnson@yahoo.com'),(53,44,'802-150-7891'),(54,11,'SantaClause@gmail.com'),(54,55,'701-889-8071'),(55,11,'BruceJones02@yahoo.com'),(55,33,'802-386-1172'),(56,11,'GuyGetdown@gmail.com'),(56,44,'714-871-8478'),(57,11,'SungFugong@yahoo.com'),(57,55,'802-338-2844'),(58,11,'JohnBrown@gmail.com'),(58,33,'804-450-2921'),(59,11,'PeterWhite@yahoo.com'),(59,44,'425-341-4402'),(60,11,'JoshGreen@gmail.com'),(60,55,'518-459-9078'),(61,11,'JoanJacobs@yahoo.com'),(61,33,'203-914-9322'),(62,11,'JenniferAtrast@gmail.com'),(62,44,'804-768-8717');
/*!40000 ALTER TABLE `customercontact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-22  9:31:07
