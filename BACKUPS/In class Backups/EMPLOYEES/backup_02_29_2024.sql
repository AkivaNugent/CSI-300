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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `eaid` int NOT NULL,
  `estreet` varchar(45) NOT NULL,
  `ecity` varchar(45) NOT NULL,
  `est` char(2) NOT NULL,
  `ezip` char(5) NOT NULL,
  `eid` int NOT NULL,
  PRIMARY KEY (`eaid`),
  KEY `fk_Address_Employee_idx` (`eid`),
  CONSTRAINT `fk_Address_Employee` FOREIGN KEY (`eid`) REFERENCES `employee` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'110 Main Street','Winooski','VT','05404',1),(2,'10 South Evan Road','Manchester','NH','03101',2),(3,'25 North Avenue','Rome','NY','13440',3),(4,'9875 East West Street','Providence','RI','02901',4),(5,'23 Los Alomos Road','Bangor','ME','04401',5),(6,'99 Brilliant Road','Montpelier','VT','05602',6),(7,'14 Highpoint Avenue','Albany','NY','12335',7),(8,'89-48 East 72nd Street','New York City','NY','10118',8),(9,'100 Unknown Drive','Lesserknown','NH','03456',9),(10,'987 Forward Avenue','Augusta','ME','04330',10),(11,'12 Lane Road','Colchester','VT','05439',11),(12,'17 Fordham Place','Hempstead','NY','11550',12),(13,'10 East willard street','Burlington','VT','05401',13),(14,'23 South Winner Road','Enosburg Falls','VT','05450',14),(15,'16 South Union Road','Halifax','MA','02338',15),(16,'8 North Genius Road','Plymouth','MA','02334',16),(17,'88 North Ovitt Road','Lisbon','NH','03101',17),(18,'23 Pants Rd','Boston','MA','04424',18),(19,'21 Yearling Circle','Wherewithall','NJ','18888',19),(20,'666 Rocky Rd','Dowling','HI','11100',20),(21,'23 Whats My Age Again Rd','Johnson','VT','05439',21),(22,'509 Woods Hollow Road','Westford','VT','05494',22),(23,'12 Gallant Street','Oswego','NY','19570',23),(24,'1 Middle Road','South Burlington','VT','21350',24),(25,'99 Jetson Avenue','Hempstead','NY','11550',25),(26,'19083 Paulson Place','Monoville','AK','45650',26),(27,'22 Fish Lane','Atlanta','GA','02345',27),(28,'1964 Disney Road','Orlando','FL','68429',28),(29,'60 Hall Road','East City','CT','21660',29),(30,'47 Known Ave','West Land','AK','93640',30),(31,'12 Ride Road','Hemmingsburg','UT','88123',31),(32,'1 Candy Lane','Sugar','WY','71943',32),(33,'38 South Main Street','North Brookfield','MA','01535',33),(34,'1 Pond Lane','Charlton','MA','04566',34),(35,'146 East Northeast Avenue','Topeka','KS','89562',35),(36,'987 Windy Drive','Santa Monica','CA','98960',36),(37,'4592 Drive Way','Orlando','FL','78523',37),(38,'182 Brook Hill Lane','Vernon Hills','IL','60061',38),(39,'103 Southern Street','Winooski','VT','05404',39),(40,'102 Cushman Street','Waterbury','CT','06704',40),(41,'120 Vista Street','San Antonio','TX','78213',41),(42,'186 Devoe Avenue','Yonkers','NY','10705',42),(43,'303 South Street','Multivast','TX','03784',43),(44,'312 North James Road','Alabaster','CT','06453',44),(45,'568 East Varsity Street','Albany','NY','13440',45),(46,'10284 West Advantage Avenue','Northport','CA','95832',46),(47,'745 Falcon Way Road','Portland','WA','68440',47),(48,'3392 US Route 5','Westminster','VT','05158',48),(49,'22 Cortland Place','Oxford','CT','06478',49),(50,'1 College Avenue','Factoryville','PA','18419',50),(51,'1 Tesla Street','East Shoreham','NY','11786',51),(52,'1531 Western Avenue','Seattle','WA','98101',52),(53,'450 College Street','Burlington','VT','05401',53),(54,'14 South Dr','Barton','ND','55404',54),(55,'89 Dogwood Dr','Townshend','VT','05114',55),(56,'69 Grains Way','Freeman Town','CA','44206',56),(57,'65 South Union','Burlington','VT','05401',57),(58,'25 South Road','Middletown','VA','15896',58),(59,'156 Fall Drive','Freewell','WA','08964',59),(60,'258 Chanler Street','Arrow','NY','06874',60),(61,'50 Rose Drive','Hartford','CT','06895',61),(62,'7888 Fort Drive','Worthfield','VA','07854',62),(63,'23 Pants Rd','Boston','MA','04424',63),(64,'21 Year Old Drive','WhereDoomed','NJ','08888',64),(65,'666 Rocky Rd','Dowling','HI','11100',65),(66,'1 Presidents Lane','Mount Vernon','VA','56897',66),(67,'509 Woods Hollow Road','Westford','VT','05494',67),(68,'1 Wayne Manor Road','Gotham City','NY','10118',68),(69,'75 SpiderMan Lane','Anothercity','CT','78459',69),(70,'25 Westinghouse Road','Augusta','ME','04330',70),(71,'1 Stark Towers','New York City','NY','10118',71),(72,'6 Feet Under','Nowhere','NY','11550',72),(73,'12 Clean Street','Madison','NY','12050',73),(74,'9 Turcotte Street','Attleboro','MA','02703',74),(75,'29 Beagle Club Road','Attleboro','MA','02703',75),(76,'13 Greenfield Street','Attleboro','MA','02703',76),(77,'2954 Pullen Ave','Fall River','MA','02720',77),(78,'56 Llama Road','Bangor','ME','04401',78),(79,'46 Somewhere St.','Bobsled','AZ','78956',79),(80,'7 Goneware Dr.','Acktid','MA','58792',80),(81,'18 Zelwa Place','Yelon','TX','22356',81),(82,'2 Beltham Boulevard','Taigrex','CA','33659',82),(83,'37 Faylon Dr.','Einsworth','AK','11550',83),(84,'38 South Main Street','North Brookfield','MA','01535',84),(85,'1 Pond Lane','Charlton','MA','04566',85),(86,'146 East Northeast Avenue','Topeka','KS','89562',86),(87,'987 Windy Drive','Santa Monica','CA','98960',87),(88,'4592 Drive Way','Orlando','FL','78523',88),(89,'182 Brook Hill Lane','Vernon Hills','IL','60061',89),(90,'103 Southern Street','Winooski','VT','05404',90),(91,'102 Cushman Street','Waterbury','CT','06704',91),(92,'120 Vista Street','San Antonio','TX','78213',92),(93,'186 Devoe Avenue','Yonkers','NY','10705',93),(94,'7 South Evan Road','Dover','NH','03820',94),(95,'5 Linda Avenue','Portsmouth','NH','03801',95),(96,'246 Soper Point Road','Old Forge','NY','13420',96),(97,'32 Cranbrooke Drive','Rochester','NY','13620',97),(98,'1 Risky Business Avenue','Here','VT','05489',98),(99,'2938 River Rd.','Schennectady','NY','13264',99),(100,'10 East Willard Street','Burlington','VT','05401',100),(101,'23 South Winner Road','Enosburg Falls','VT','05450',101),(102,'16 South Union Road','Halifax','MA','02338',102),(103,'8 North Genius Road','Plymouth','MA','02334',103),(104,'88 North Ovitt Road','Lisbon','NH','03101',104),(105,'123 Fake St.','Faketown','VT','05101',105),(106,'25 Winooski Falls Way','Winooski','VT','05404',106),(107,'326 Quarry Hill Dr.','S. Burlington','VT','05404',107),(108,'404 Notfound St.','Nowhere','VT','05404',108),(109,'1 Portal Street','Monkton','VT','05468',109),(110,'111 Main Street','Winooski','VT','05404',110),(111,'11 South Evan Road','Manchester','NH','03101',111),(112,'26 North Avenue','Rome','NY','13440',112),(113,'985 East West Street','Providence','RI','02901',113),(114,'265743214 Los Alomos Road','Bangor','ME','04401',114),(115,'42 Main Street','Worcester','MA','01601',115),(116,'1 Buck Street','Durham','NH','03824',116),(117,'30 Hayward Steet','Burlington','VT','05401',117),(118,'5 Cambell Court','Dover','NH','03820',118),(119,'32 Post Road','Bangor','ME','04401',119),(120,'64 Road Rage Lane','Wikita','VT','05859',120),(121,'999 NinteyNineNine','Bubbletown','VT','05205',121),(122,'One','Two','VT','05952',122),(123,'40 Wowzer drive','Hineburg','VT','05505',123),(124,'222 Megatown','Megaville','VT','05892',124),(125,'12 Gallant Street','Oswego','NY','19570',125),(126,'1 Middle Road','South Burlington','VT','21350',126),(127,'99 Jetson Avenue','Hempstead','NY','11550',127),(128,'777 Heaven Place','Heaven','NY','77777',128),(129,'19083 Paulson Place','Monoville','AK','45650',129),(130,'14 Round Circle','Utica','NY','12843',130),(131,'123 Fake Street','Burlington','MA','02348',131),(132,'90 Central Street','Natick','MA','01760',132),(133,'65 Pond Road','Bath','ME','65875',133),(134,'67 Lake Street','Portland','NH','12354',134),(135,'450 College Street','Burlington','VT','05401',135),(136,'14 South Dr','Barton','ND','55404',136),(137,'89 Dogwood Dr','Townshend','VT','05114',137),(138,'163 South Willard Street','Burlington','VT','05401',138),(139,'69 Grains Way','Freeman Town','CA','44206',139),(140,'65 South Union','Burlington','VT','05401',140),(141,'1 Wayne Manor Road','Gotham City','NY','10118',141),(142,'1 Amazonian trail','Amazon','VT','05401',142),(143,'25 Westinghouse Road ','Augusta','ME','04330',143),(144,'20 Ingram Street','Queens','NY','11428',144),(145,'4 Super Villain Road ','Gotham City','NY','11550',145),(146,'20 West Canal Street','Winooski','VT','05404',146),(147,'17 Andy Avenue','Swanton','VT','05488',147),(148,'154 Short Street','Highgate','VT','05459',148),(149,'303 South Street','Multivast','TX','03784',149),(150,'10 Main Street','Saint Albans','VT','05478',150),(151,'13 Dogwood Drive','East Hampton','CT','06424',151),(152,'2 Harlem Place','Atlanta','GA','25764',152),(153,'1 Sesame Street','Cooperstown','NY','11550',153),(154,'312 North James Road','Alabaster','CT','06453',154),(155,'568 East Varsity Street','Albany','NY','13440',155),(156,'10284 West Advantage Avenue','Northport','CA','95832',156),(157,'745 Falcon Way Road','Portland','WA','68440',157),(158,'496 Leftwing Circle','Cheshire','CT','06428',158),(159,'17 Coll Lane','Nowhere','KY','03342',159),(160,'20 Cherry Street','Providence','RI','02901',160),(161,'47 Celtics Ave','Boston','MA','79631',161),(162,'49 Hoyle Street','Norwood','MA','02062',162);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacttype`
--

DROP TABLE IF EXISTS `contacttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacttype` (
  `contact_id` int NOT NULL,
  `contact_desc` varchar(45) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacttype`
--

LOCK TABLES `contacttype` WRITE;
/*!40000 ALTER TABLE `contacttype` DISABLE KEYS */;
INSERT INTO `contacttype` VALUES (1,'Office Phone'),(2,'Company E-Mail Address');
/*!40000 ALTER TABLE `contacttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `dept_id` int NOT NULL,
  `dept_name` varchar(45) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Sales'),(2,'Accounting'),(3,'Operations'),(4,'IT'),(5,'Marketing'),(6,'Human Resources'),(7,'Management'),(8,'Facilities'),(9,'Security'),(10,'Customer Support'),(11,'Inventory Control'),(12,'Finance');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `empcontact` VALUES (1,1,'802-365-8678'),(1,2,'BruceJones01@neb.com'),(2,1,'802-365-3449'),(2,2,'WendySmith@neb.com'),(3,1,'802-365-8546'),(3,2,'WilliamPenn@neb.com'),(4,1,'802-365-4054'),(4,2,'JoanArc@neb.com'),(5,1,'802-365-7644'),(5,2,'AlbertEinstein@neb.com'),(6,1,'802-365-9520'),(6,2,'MarieCurrie@neb.com'),(7,1,'802-365-7883'),(7,2,'MargaretThatcher@neb.com'),(8,1,'802-365-5899'),(8,2,'John D.Manchester@neb.com'),(9,1,'802-365-3755'),(9,2,'JohnDoe@neb.com'),(10,1,'802-365-8303'),(10,2,'JaneSame@neb.com'),(11,1,'802-365-2080'),(11,2,'TomSmythe@neb.com'),(12,1,'802-365-3156'),(12,2,'KateAbbott@neb.com'),(13,1,'802-365-5586'),(13,2,'BethuneEmily@neb.com'),(14,1,'802-365-6566'),(14,2,'JoanneOvitt@neb.com'),(15,1,'802-365-7363'),(15,2,'DorisFlower@neb.com'),(16,1,'802-365-9062'),(16,2,'DanielWicks@neb.com'),(17,1,'802-365-7390'),(17,2,'SamanthaOvitt@neb.com'),(18,1,'802-365-1768'),(18,2,'TaylorBigam@neb.com'),(19,1,'802-365-7205'),(19,2,'DanielleDudders@neb.com'),(20,1,'802-365-4607'),(20,2,'FosterDonnelly@neb.com'),(21,1,'802-365-6143'),(21,2,'LilySnyder@neb.com'),(22,1,'802-365-1431'),(22,2,'KatKillinger@neb.com'),(23,1,'802-365-5243'),(23,2,'LawrenceWalker@neb.com'),(24,1,'802-365-4826'),(24,2,'RonaldKimber@neb.com'),(25,1,'802-365-7485'),(25,2,'KurtSohn@neb.com'),(26,1,'802-365-1372'),(26,2,'AllenGreene@neb.com'),(27,1,'802-365-3578'),(27,2,'SteveScuba@neb.com'),(28,1,'802-365-7496'),(28,2,'MickeyMouse@neb.com'),(29,1,'802-365-3620'),(29,2,'ChrisJones@neb.com'),(30,1,'802-365-4212'),(30,2,'MacLeMore@neb.com'),(31,1,'802-365-9717'),(31,2,'DennisMcDonald@neb.com'),(32,1,'802-365-7829'),(32,2,'WilliamWonka@neb.com'),(33,1,'802-365-2064'),(33,2,'DavidJones@neb.com'),(34,1,'802-365-4265'),(34,2,'SamanthaClauson@neb.com'),(35,1,'802-365-2750'),(35,2,'JohnnyRoberts@neb.com'),(36,1,'802-365-2321'),(36,2,'RachaelHunter@neb.com'),(37,1,'802-365-2496'),(37,2,'EsterBaxter@neb.com'),(38,1,'802-365-9095'),(38,2,'TimothySmith@neb.com'),(39,1,'802-365-1398'),(39,2,'FranklinArts@neb.com'),(40,1,'802-365-1733'),(40,2,'AnnaCaisse@neb.com'),(41,1,'802-365-6453'),(41,2,'EricOlivares@neb.com'),(42,1,'802-365-1432'),(42,2,'ThomasSampson@neb.com'),(43,1,'802-365-5096'),(43,2,'JamesBoiben@neb.com'),(44,1,'802-365-5383'),(44,2,'SallyJane@neb.com'),(45,1,'802-365-7594'),(45,2,'AmandaFintz@neb.com'),(46,1,'802-365-2530'),(46,2,'MarcBartalone@neb.com'),(47,1,'802-365-1464'),(47,2,'BrianParker@neb.com'),(48,1,'802-365-5725'),(48,2,'GarthFitzgerald@neb.com'),(49,1,'802-365-7377'),(49,2,'BarbaraMartin@neb.com'),(50,1,'802-365-3872'),(50,2,'HomerReynolds@neb.com'),(51,1,'802-365-1671'),(51,2,'NikolaTesla@neb.com'),(52,1,'802-365-6660'),(52,2,'SebastianAlias@neb.com'),(53,1,'802-365-7963'),(53,2,'JakeJohnson@neb.com'),(54,1,'802-365-7584'),(54,2,'SamClues@neb.com'),(55,1,'802-365-8759'),(55,2,'BruceJones@neb.com'),(56,1,'802-365-3208'),(56,2,'GuyDowney@neb.com'),(57,1,'802-365-7620'),(57,2,'SungFugong@neb.com'),(58,1,'802-365-6369'),(58,2,'JohnBrown01@neb.com'),(59,1,'802-365-2592'),(59,2,'PeterWhite@neb.com'),(60,1,'802-365-1449'),(60,2,'JoshGreen@neb.com'),(61,1,'802-365-3168'),(61,2,'JoanJacobs@neb.com'),(62,1,'802-365-6775'),(62,2,'JenniferAtrast@neb.com'),(63,1,'802-365-4478'),(63,2,'TaylorBigam@neb.com'),(64,1,'802-365-2915'),(64,2,'DanielleDudders@neb.com'),(65,1,'802-365-5111'),(65,2,'FosterDonnelly@neb.com'),(66,1,'802-365-2989'),(66,2,'GeorgeWashington@neb.com'),(67,1,'802-365-7928'),(67,2,'KatKillinger@neb.com'),(68,1,'802-365-2405'),(68,2,'BruceWayne@neb.com'),(69,1,'802-365-5204'),(69,2,'PeterParker01@neb.com'),(70,1,'802-365-3421'),(70,2,'CarleeKent01@neb.com'),(71,1,'802-365-1401'),(71,2,'TonyStark@neb.com'),(72,1,'802-365-4286'),(72,2,'AgentCoulson@neb.com'),(73,1,'802-365-4409'),(73,2,'OscarMadison@neb.com'),(74,1,'802-365-2079'),(74,2,'BrianneDeVincent@neb.com'),(75,1,'802-365-2361'),(75,2,'RichardTeabeau@neb.com'),(76,1,'802-365-2790'),(76,2,'WilliamReynolds@neb.com'),(77,1,'802-365-8194'),(77,2,'KennedyTran@neb.com'),(78,1,'802-365-7372'),(78,2,'AlmaConway@neb.com'),(79,1,'802-365-2976'),(79,2,'JamesHujjiba@neb.com'),(80,1,'802-365-6329'),(80,2,'KileAggot@neb.com'),(81,1,'802-365-5971'),(81,2,'HeirichWanger@neb.com'),(82,1,'802-365-9375'),(82,2,'ZenAntonitii@neb.com'),(83,1,'802-365-4508'),(83,2,'TialaSumardar@neb.com'),(84,1,'802-365-4613'),(84,2,'DavidJones@neb.com'),(85,1,'802-365-4705'),(85,2,'SamanthaClauson@neb.com'),(86,1,'802-365-4478'),(86,2,'JohnnyRoberts@neb.com'),(87,1,'802-365-9859'),(87,2,'RachaelHunter@neb.com'),(88,1,'802-365-3574'),(88,2,'EsterBaxter@neb.com'),(89,1,'802-365-7603'),(89,2,'TimothySmith@neb.com'),(90,1,'802-365-7657'),(90,2,'FranklinArts@neb.com'),(91,1,'802-365-5226'),(91,2,'AnnaCaisse@neb.com'),(92,1,'802-365-9988'),(92,2,'EricOlivares@neb.com'),(93,1,'802-365-4782'),(93,2,'ThomasSampson@neb.com'),(94,1,'802-365-8164'),(94,2,'JasonJohn@neb.com'),(95,1,'802-365-4450'),(95,2,'TomJane@neb.com'),(96,1,'802-365-6888'),(96,2,'BillyVale@neb.com'),(97,1,'802-365-9203'),(97,2,'JoeyLaskowski@neb.com'),(98,1,'802-365-4425'),(98,2,'YourName@neb.com'),(99,1,'802-365-2339'),(99,2,'LukeColletti@neb.com'),(100,1,'802-365-8093'),(100,2,'EmilyBethune@neb.com'),(101,1,'802-365-3066'),(101,2,'JoanneOvitt@neb.com'),(102,1,'802-365-5707'),(102,2,'DorisFlower@neb.com'),(103,1,'802-365-5386'),(103,2,'DanielWicks@neb.com'),(104,1,'802-365-8055'),(104,2,'SamanthaOvitt@neb.com'),(105,1,'802-365-3492'),(105,2,'FakeyMcPhoney@neb.com'),(106,1,'802-365-8086'),(106,2,'JohnMongler@neb.com'),(107,1,'802-365-9894'),(107,2,'DudeMcBro@neb.com'),(108,1,'802-365-4639'),(108,2,'NullyValue@neb.com'),(109,1,'802-365-4917'),(109,2,'JohnSmith@neb.com'),(110,1,'802-365-1248'),(110,2,'FrankTank@neb.com'),(111,1,'802-365-3966'),(111,2,'RobBob@neb.com'),(112,1,'802-365-8939'),(112,2,'SpongeBob@neb.com'),(113,1,'802-365-3002'),(113,2,'TitoSummers@neb.com'),(114,1,'802-365-8850'),(114,2,'BoMessier@neb.com'),(115,1,'802-365-5141'),(115,2,'BobCross@neb.com'),(116,1,'802-365-6484'),(116,2,'WillSamuel@neb.com'),(117,1,'802-365-6740'),(117,2,'JohnEvans@neb.com'),(118,1,'802-365-5069'),(118,2,'MichelleMichael@neb.com'),(119,1,'802-365-1553'),(119,2,'JuanSucro@neb.com'),(120,1,'802-365-8585'),(120,2,'JonathanLobe@neb.com'),(121,1,'802-365-6272'),(121,2,'JimmyJam@neb.com'),(122,1,'802-365-6233'),(122,2,'OnetwoTwoone@neb.com'),(123,1,'802-365-9969'),(123,2,'AbeLincoln@neb.com'),(124,1,'802-365-9848'),(124,2,'MegaMan@neb.com'),(125,1,'802-365-2733'),(125,2,'LawrenceWalker@neb.com'),(126,1,'802-365-2548'),(126,2,'RonaldKimber@neb.com'),(127,1,'802-365-1785'),(127,2,'KurtSohn@neb.com'),(128,1,'802-365-5183'),(128,2,'MyWonder@neb.com'),(129,1,'802-365-1941'),(129,2,'AllenGreene@neb.com'),(130,1,'802-365-3631'),(130,2,'PaulPetros@neb.com'),(131,1,'802-365-3993'),(131,2,'JamieJamieson@neb.com'),(132,1,'802-365-8569'),(132,2,'JordanBerkowitz@neb.com'),(133,1,'802-365-3021'),(133,2,'JohnBrown02@neb.com'),(134,1,'802-365-9545'),(134,2,'JessicaJacket@neb.com'),(135,1,'802-365-8074'),(135,2,'JakeJohnson@neb.com'),(136,1,'802-365-1710'),(136,2,'SamClues@neb.com'),(137,1,'802-365-8040'),(137,2,'BruceJones@neb.com'),(138,1,'802-365-9914'),(138,2,'FrankCanovatchel@neb.com'),(139,1,'802-365-2304'),(139,2,'GuyDowney@neb.com'),(140,1,'802-365-5498'),(140,2,'SungFugong@neb.com'),(141,1,'802-365-2304'),(141,2,'BruceWayne@neb.com'),(142,1,'802-365-8308'),(142,2,'WonderWoman@neb.com'),(143,1,'802-365-8741'),(143,2,'CarleeKent02@neb.com'),(144,1,'802-365-5344'),(144,2,'PeterParker02@neb.com'),(145,1,'802-365-6692'),(145,2,'MisterFreeze@neb.com'),(146,1,'802-365-8339'),(146,2,'BarryWhite@neb.com'),(147,1,'802-365-7334'),(147,2,'JeffSeid@neb.com'),(148,1,'802-365-6946'),(148,2,'MarkWahlberg@neb.com'),(149,1,'802-365-8964'),(149,2,'JamesBoiben@neb.com'),(150,1,'802-365-9756'),(150,2,'AzizShavershain@neb.com'),(151,1,'802-365-6213'),(151,2,'HenryQuinn@neb.com'),(152,1,'802-365-9713'),(152,2,'RickGrimes@neb.com'),(153,1,'802-365-7993'),(153,2,'RobertByrd@neb.com'),(154,1,'802-365-9874'),(154,2,'SallyJane@neb.com'),(155,1,'802-365-9268'),(155,2,'AmandaFintz@neb.com'),(156,1,'802-365-4735'),(156,2,'MarcBartalone@neb.com'),(157,1,'802-365-1577'),(157,2,'BrianParker@neb.com'),(158,1,'802-365-7989'),(158,2,'SteveBates@neb.com'),(159,1,'802-365-8109'),(159,2,'WallacePenguin@neb.com'),(160,1,'802-365-3074'),(160,2,'JackDaniels@neb.com'),(161,1,'802-365-4051'),(161,2,'AnthonyLarosa@neb.com'),(162,1,'802-365-7455'),(162,2,'HubertBowtie@neb.com');
/*!40000 ALTER TABLE `empcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emphistory`
--

DROP TABLE IF EXISTS `emphistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emphistory` (
  `eid` int NOT NULL,
  `pos_id` int NOT NULL,
  `start_date` datetime NOT NULL,
  `salary` int NOT NULL,
  `comments` varchar(255) NOT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`eid`,`pos_id`,`start_date`),
  KEY `4_idx` (`status_id`),
  KEY `5_idx` (`eid`),
  KEY `6_idx` (`pos_id`),
  CONSTRAINT `4` FOREIGN KEY (`status_id`) REFERENCES `historystatus` (`status_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `5` FOREIGN KEY (`eid`) REFERENCES `employee` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `6` FOREIGN KEY (`pos_id`) REFERENCES `emppos` (`pos_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emphistory`
--

LOCK TABLES `emphistory` WRITE;
/*!40000 ALTER TABLE `emphistory` DISABLE KEYS */;
INSERT INTO `emphistory` VALUES (1,1,'2022-11-19 00:00:00',45000,'Hope this one works out',222222),(2,1,'2022-07-26 00:00:00',45000,'Hope this one works out',222222),(3,2,'2022-02-03 00:00:00',45000,'Hope this one works out',222222),(4,2,'2022-04-30 00:00:00',45000,'Hope this one works out',222222),(5,3,'2024-03-25 00:00:00',45000,'Hope this one works out',222222),(6,3,'2022-07-26 00:00:00',45000,'Hope this one works out',222222),(7,4,'2022-09-19 00:00:00',45000,'Hope this one works out',222222),(8,4,'2022-04-24 00:00:00',45000,'Hope this one works out',222222),(9,5,'2023-08-30 00:00:00',45000,'Hope this one works out',222222),(10,5,'2023-11-27 00:00:00',45000,'Hope this one works out',222222),(11,6,'2022-11-10 00:00:00',45000,'Hope this one works out',222222),(12,6,'2023-02-11 00:00:00',45000,'Hope this one works out',222222),(13,7,'2022-08-16 00:00:00',45000,'Hope this one works out',222222),(14,11,'2022-05-16 00:00:00',45000,'Hope this one works out',222222),(15,8,'2022-07-10 00:00:00',45000,'Hope this one works out',222222),(16,4,'2022-11-02 00:00:00',45000,'Hope this one works out',222222),(17,9,'2022-09-08 00:00:00',45000,'Hope this one works out',222222),(18,7,'2023-08-14 00:00:00',43000,'Hope this one works out',222222),(19,7,'2024-01-16 00:00:00',43000,'Hope this one works out',222222),(20,8,'2023-08-03 00:00:00',43000,'Hope this one works out',222222),(21,9,'2022-06-27 00:00:00',43000,'Hope this one works out',222222),(22,10,'2024-12-08 00:00:00',43000,'Hope this one works out',222222),(23,52,'2022-01-05 00:00:00',45000,'Hope this one works out',222222),(24,48,'2022-08-01 00:00:00',45000,'Hope this one works out',222222),(25,67,'2024-03-15 00:00:00',45000,'Hope this one works out',222222),(26,62,'2024-01-09 00:00:00',45000,'Hope this one works out',222222),(27,66,'2023-02-27 00:00:00',45000,'Hope this one works out',222222),(28,49,'2022-10-29 00:00:00',30000,'Hope this one works out',222222),(29,55,'2022-12-06 00:00:00',55000,'Hope this one works out',222222),(30,39,'2022-11-23 00:00:00',80000,'Hope this one works out',222222),(31,57,'2022-01-12 00:00:00',75000,'Hope this one works out',222222),(32,24,'2022-07-15 00:00:00',110000,'Hope this one works out',222222),(33,36,'2023-01-21 00:00:00',45000,'Hope this one works out',222222),(34,50,'2023-10-12 00:00:00',27500,'Hope this one works out',222222),(35,20,'2022-10-05 00:00:00',56000,'Hope this one works out',222222),(36,45,'2023-02-28 00:00:00',42000,'Hope this one works out',222222),(37,28,'2022-06-10 00:00:00',88000,'Hope this one works out',222222),(38,7,'2022-10-09 00:00:00',32000,'Hope this one works out',222222),(39,8,'2023-08-06 00:00:00',32000,'Hope this one works out',222222),(40,9,'2022-08-02 00:00:00',32000,'Hope this one works out',222222),(41,10,'2022-10-07 00:00:00',60000,'Hope this one works out',222222),(42,11,'2023-11-14 00:00:00',43000,'Hope this one works out',222222),(43,7,'2022-03-25 00:00:00',43000,'Hope this one works out',222222),(44,7,'2022-12-09 00:00:00',43000,'Hope this one works out',222222),(45,8,'2022-04-30 00:00:00',43000,'Hope this one works out',222222),(46,9,'2023-02-06 00:00:00',43000,'Hope this one works out',222222),(47,10,'2023-07-12 00:00:00',43000,'Hope this one works out',222222),(48,10,'2024-03-04 00:00:00',45000,'Hope this one works out',222222),(49,26,'2024-03-03 00:00:00',45000,'Hope this one works out',222222),(50,28,'2022-10-03 00:00:00',45000,'Hope this one works out',222222),(51,34,'2022-05-05 00:00:00',45000,'Hope this one works out',222222),(52,18,'2022-10-29 00:00:00',45000,'Hope this one works out',222222),(53,1,'2023-07-05 00:00:00',35000,'Hope this one works out',222222),(54,5,'2022-08-02 00:00:00',40000,'Hope this one works out',222222),(55,9,'2024-09-15 00:00:00',85000,'Hope this one works out',222222),(56,10,'2024-05-22 00:00:00',90000,'Hope this one works out',222222),(57,20,'2023-10-23 00:00:00',105000,'Hope this one works out',222222),(58,1,'2023-08-18 00:00:00',45000,'Hope this one works out',222222),(59,2,'2022-02-20 00:00:00',65000,'Hope this one works out',222222),(60,3,'2022-01-19 00:00:00',35000,'Hope this one works out',222222),(61,4,'2024-10-15 00:00:00',65000,'Hope this one works out',222222),(62,5,'2022-03-11 00:00:00',35000,'Hope this one works out',222222),(63,4,'2024-01-12 00:00:00',65000,'Hope this one works out',222222),(64,11,'2022-07-23 00:00:00',55000,'Hope this one works out',222222),(65,9,'2022-04-29 00:00:00',35000,'Hope this one works out',222222),(66,2,'2022-10-12 00:00:00',70000,'Hope this one works out',222222),(67,5,'2022-11-04 00:00:00',45000,'Hope this one works out',222222),(68,12,'2024-10-17 00:00:00',90000,'Hope this one works out',222222),(69,22,'2023-02-02 00:00:00',55000,'Hope this one works out',222222),(70,48,'2022-04-17 00:00:00',55000,'Hope this one works out',222222),(71,57,'2022-10-23 00:00:00',55000,'Hope this one works out',222222),(72,6,'2024-01-30 00:00:00',35000,'Hope this one works out',222222),(73,9,'2022-05-23 00:00:00',80000,'Hope this one works out',222222),(74,24,'2022-05-25 00:00:00',72000,'Hope this one works out',222222),(75,17,'2023-07-20 00:00:00',82143,'Hope this one works out',222222),(76,51,'2022-09-13 00:00:00',20000,'Hope this one works out',222222),(77,54,'2022-08-16 00:00:00',76000,'Hope this one works out',222222),(78,5,'2022-10-14 00:00:00',65000,'Hope this one works out',222222),(79,5,'2022-05-08 00:00:00',40000,'Hope this one works out',222222),(80,6,'2022-08-20 00:00:00',66000,'Hope this one works out',222222),(81,6,'2022-07-26 00:00:00',62000,'Hope this one works out',222222),(82,6,'2023-04-25 00:00:00',61000,'Hope this one works out',222222),(83,8,'2023-08-04 00:00:00',46000,'Hope this one works out',222222),(84,2,'2022-11-09 00:00:00',32000,'Hope this one works out',222222),(85,6,'2022-09-13 00:00:00',44000,'Hope this one works out',222222),(86,10,'2022-12-15 00:00:00',45000,'Hope this one works out',222222),(87,12,'2022-12-21 00:00:00',38000,'Hope this one works out',222222),(88,9,'2022-10-11 00:00:00',68000,'Hope this one works out',222222),(89,5,'2022-03-02 00:00:00',450000,'Hope this one works out',222222),(90,4,'2022-03-29 00:00:00',490000,'Hope this one works out',222222),(91,8,'2023-07-25 00:00:00',9999999,'Hope this one works out',222222),(92,8,'2022-04-29 00:00:00',120000,'Hope this one works out',222222),(93,7,'2024-08-21 00:00:00',42075,'Hope this one works out',222222),(94,6,'2024-09-06 00:00:00',42100,'Hope this one works out',222222),(95,5,'2024-11-26 00:00:00',42125,'Hope this one works out',222222),(96,4,'2023-11-25 00:00:00',42150,'Hope this one works out',222222),(97,3,'2023-04-13 00:00:00',42175,'Hope this one works out',222222),(98,29,'2023-10-26 00:00:00',46500,'Hope this one works out',222222),(99,49,'2023-01-06 00:00:00',22000,'Hope this one works out',222222),(100,42,'2022-07-29 00:00:00',37000,'Hope this one works out',222222),(101,21,'2022-04-21 00:00:00',51000,'Hope this one works out',222222),(102,9,'2024-04-24 00:00:00',77000,'Hope this one works out',222222),(103,16,'2022-09-27 00:00:00',115000,'Hope this one works out',222222),(104,17,'2024-03-09 00:00:00',80000,'Hope this one works out',222222),(105,18,'2022-12-28 00:00:00',83000,'Hope this one works out',222222),(106,19,'2022-11-26 00:00:00',100000,'Hope this one works out',222222),(107,20,'2023-09-17 00:00:00',110000,'Hope this one works out',222222),(108,29,'2024-11-16 00:00:00',50000,'Hope this one works out',222222),(109,41,'2024-03-23 00:00:00',35000,'Hope this one works out',222222),(110,44,'2022-08-17 00:00:00',65000,'Hope this one works out',222222),(111,30,'2023-11-15 00:00:00',55000,'Hope this one works out',222222),(112,51,'2023-05-01 00:00:00',45000,'Hope this one works out',222222),(113,1,'2022-05-06 00:00:00',50000,'Hope this one works out',222222),(114,2,'2024-08-08 00:00:00',60000,'Hope this one works out',222222),(115,3,'2022-10-09 00:00:00',100000,'Hope this one works out',222222),(116,4,'2022-03-20 00:00:00',55000,'Hope this one works out',222222),(117,5,'2022-09-25 00:00:00',75000,'Hope this one works out',222222),(118,31,'2023-01-02 00:00:00',58000,'Hope this one works out',222222),(119,20,'2022-04-23 00:00:00',120000,'Hope this one works out',222222),(120,44,'2022-05-03 00:00:00',47000,'Hope this one works out',222222),(121,22,'2022-05-18 00:00:00',63500,'Hope this one works out',222222),(122,64,'2023-06-25 00:00:00',74000,'Hope this one works out',222222),(123,26,'2023-01-25 00:00:00',82000,'Hope this one works out',222222),(124,20,'2022-02-23 00:00:00',120000,'Hope this one works out',222222),(125,60,'2023-12-11 00:00:00',64000,'Hope this one works out',222222),(126,8,'2022-05-29 00:00:00',60000,'Hope this one works out',222222),(127,49,'2023-08-07 00:00:00',20000,'Hope this one works out',222222),(128,52,'2024-07-24 00:00:00',45000,'Hope this one works out',222222),(129,61,'2022-02-20 00:00:00',35000,'Hope this one works out',222222),(130,62,'2022-05-02 00:00:00',25000,'Hope this one works out',222222),(131,54,'2024-07-03 00:00:00',41500,'Hope this one works out',222222),(132,57,'2022-02-28 00:00:00',49000,'Hope this one works out',222222),(133,52,'2024-07-01 00:00:00',29000,'Hope this one works out',222222),(134,29,'2024-11-06 00:00:00',40500,'Hope this one works out',222222),(135,36,'2023-04-09 00:00:00',48000,'Hope this one works out',222222),(136,47,'2022-10-25 00:00:00',56000,'Hope this one works out',222222),(137,34,'2024-05-11 00:00:00',31000,'Hope this one works out',222222),(138,68,'2022-05-19 00:00:00',99999,'Hope this one works out',222222),(139,44,'2023-01-13 00:00:00',99999,'Hope this one works out',222222),(140,20,'2023-07-24 00:00:00',2,'Hope this one works out',222222),(141,52,'2023-05-01 00:00:00',99999,'Hope this one works out',222222),(142,63,'2022-02-23 00:00:00',16,'Hope this one works out',222222),(143,5,'2022-11-24 00:00:00',45000,'Hope this one works out',222222),(144,5,'2022-10-05 00:00:00',45000,'Hope this one works out',222222),(145,6,'2023-06-15 00:00:00',45000,'Hope this one works out',222222),(146,3,'2022-04-03 00:00:00',45000,'Hope this one works out',222222),(147,2,'2024-09-20 00:00:00',45000,'Hope this one works out',222222),(148,19,'2022-09-26 00:00:00',45000,'Hope this one works out',222222),(149,44,'2022-11-17 00:00:00',45000,'Hope this one works out',222222),(150,62,'2022-10-06 00:00:00',45000,'Hope this one works out',222222),(151,29,'2022-06-03 00:00:00',45000,'Hope this one works out',222222),(152,26,'2023-03-28 00:00:00',45000,'Hope this one works out',222222),(153,12,'2024-07-17 00:00:00',30000,'Hope this one works out',222222),(154,5,'2022-12-30 00:00:00',75000,'Hope this one works out',222222),(155,7,'2024-08-18 00:00:00',99999,'Hope this one works out',222222),(156,31,'2022-02-11 00:00:00',15000,'Hope this one works out',222222),(157,10,'2022-02-10 00:00:00',45000,'Hope this one works out',222222),(158,1,'2024-08-24 00:00:00',45000,'Hope this one works out',222222),(159,2,'2024-12-25 00:00:00',45000,'Hope this one works out',222222),(160,3,'2022-01-26 00:00:00',45000,'Hope this one works out',222222),(161,4,'2023-10-16 00:00:00',45000,'Hope this one works out',222222),(162,5,'2022-01-05 00:00:00',45000,'Hope this one works out',222222);
/*!40000 ALTER TABLE `emphistory` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `historystatus`
--

DROP TABLE IF EXISTS `historystatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historystatus` (
  `status_id` int NOT NULL,
  `status_desc` varchar(45) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historystatus`
--

LOCK TABLES `historystatus` WRITE;
/*!40000 ALTER TABLE `historystatus` DISABLE KEYS */;
INSERT INTO `historystatus` VALUES (1,'Unknown'),(111111,'Promotion'),(222222,'New Hire'),(333333,'Position Terminated'),(444444,'Changed Dept.'),(555555,'Retired'),(666666,'Demoted'),(777777,'Left Company'),(888888,'Annual Raise'),(999999,'Employee Terminated');
/*!40000 ALTER TABLE `historystatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salpos`
--

DROP TABLE IF EXISTS `salpos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salpos` (
  `pos_id` int NOT NULL,
  `sal_id` int NOT NULL,
  `sal_date` datetime NOT NULL,
  `sal_value` int NOT NULL,
  PRIMARY KEY (`pos_id`,`sal_id`,`sal_date`),
  KEY `2_idx` (`sal_id`),
  KEY `3_idx` (`pos_id`),
  CONSTRAINT `2` FOREIGN KEY (`sal_id`) REFERENCES `saltype` (`sal_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `3` FOREIGN KEY (`pos_id`) REFERENCES `emppos` (`pos_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salpos`
--

LOCK TABLES `salpos` WRITE;
/*!40000 ALTER TABLE `salpos` DISABLE KEYS */;
INSERT INTO `salpos` VALUES (1,1,'2022-04-30 00:00:00',22950),(1,1,'2023-04-30 00:00:00',25500),(1,1,'2023-10-31 00:00:00',30000),(1,2,'2022-04-30 00:00:00',30600),(1,2,'2023-04-30 00:00:00',34000),(1,2,'2023-10-31 00:00:00',40000),(2,1,'2022-04-03 00:00:00',26775),(2,1,'2023-04-03 00:00:00',29750),(2,1,'2023-10-03 00:00:00',35000),(2,2,'2022-04-03 00:00:00',34425),(2,2,'2023-04-03 00:00:00',38250),(2,2,'2023-10-03 00:00:00',45000),(3,1,'2022-04-03 00:00:00',34425),(3,1,'2023-04-03 00:00:00',38250),(3,1,'2023-10-03 00:00:00',45000),(3,2,'2023-04-03 00:00:00',46750),(3,2,'2023-10-03 00:00:00',55000),(4,1,'2022-04-03 00:00:00',42075),(4,1,'2023-04-03 00:00:00',46750),(4,1,'2023-10-03 00:00:00',55000),(4,2,'2022-04-03 00:00:00',49725),(4,2,'2023-04-03 00:00:00',55250),(4,2,'2023-10-03 00:00:00',65000),(5,1,'2022-04-03 00:00:00',22950),(5,1,'2023-04-03 00:00:00',25500),(5,1,'2023-10-03 00:00:00',30000),(5,2,'2022-04-03 00:00:00',30600),(5,2,'2023-04-03 00:00:00',34000),(5,2,'2023-10-03 00:00:00',40000),(6,1,'2022-06-07 00:00:00',26775),(6,1,'2023-06-07 00:00:00',29750),(6,1,'2023-12-07 00:00:00',35000),(6,2,'2022-06-07 00:00:00',34425),(6,2,'2023-06-07 00:00:00',38250),(6,2,'2023-12-07 00:00:00',45000),(7,1,'2022-06-07 00:00:00',34425),(7,1,'2023-06-07 00:00:00',38250),(7,1,'2023-12-07 00:00:00',45000),(7,2,'2022-06-07 00:00:00',42075),(7,2,'2023-06-07 00:00:00',46750),(7,2,'2023-12-07 00:00:00',55000),(8,1,'2022-06-07 00:00:00',42075),(8,1,'2023-06-07 00:00:00',46750),(8,1,'2023-12-07 00:00:00',55000),(8,2,'2022-06-07 00:00:00',49725),(8,2,'2023-06-07 00:00:00',55250),(8,2,'2023-12-07 00:00:00',65000),(9,1,'2022-06-07 00:00:00',57375),(9,1,'2023-06-07 00:00:00',63750),(9,1,'2023-12-07 00:00:00',75000),(9,2,'2022-06-07 00:00:00',65025),(9,2,'2023-06-07 00:00:00',72250),(9,2,'2023-12-07 00:00:00',85000),(10,1,'2022-06-07 00:00:00',61200),(10,1,'2023-06-07 00:00:00',68000),(10,1,'2023-12-07 00:00:00',80000),(10,2,'2022-06-07 00:00:00',68850),(10,2,'2023-06-07 00:00:00',76500),(10,2,'2023-12-07 00:00:00',90000),(11,1,'2023-04-03 00:00:00',72250),(11,1,'2023-10-03 00:00:00',85000),(11,2,'2022-04-03 00:00:00',72675),(11,2,'2023-04-03 00:00:00',80750),(11,2,'2023-10-03 00:00:00',95000),(12,1,'2022-04-03 00:00:00',68850),(12,1,'2023-04-03 00:00:00',76500),(12,1,'2023-10-03 00:00:00',90000),(12,2,'2022-04-03 00:00:00',76500),(12,2,'2023-04-03 00:00:00',85000),(12,2,'2023-10-03 00:00:00',100000),(13,1,'2022-04-03 00:00:00',65025),(13,1,'2023-04-03 00:00:00',72250),(13,1,'2023-10-03 00:00:00',85000),(13,2,'2023-04-03 00:00:00',80750),(13,2,'2023-10-03 00:00:00',95000),(14,1,'2022-04-03 00:00:00',68850),(14,1,'2023-04-03 00:00:00',76500),(14,1,'2023-10-03 00:00:00',90000),(14,2,'2022-04-03 00:00:00',76500),(14,2,'2023-04-03 00:00:00',85000),(14,2,'2023-10-03 00:00:00',100000),(15,1,'2022-04-03 00:00:00',72675),(15,1,'2023-04-03 00:00:00',80750),(15,1,'2023-10-03 00:00:00',95000),(15,2,'2022-04-03 00:00:00',80325),(15,2,'2023-04-03 00:00:00',89250),(15,2,'2023-10-03 00:00:00',105000),(16,1,'2023-04-03 00:00:00',93500),(16,1,'2023-10-03 00:00:00',110000),(16,2,'2022-04-03 00:00:00',91800),(16,2,'2023-04-03 00:00:00',102000),(16,2,'2023-10-03 00:00:00',120000),(17,1,'2022-06-07 00:00:00',57375),(17,1,'2023-06-07 00:00:00',63750),(17,1,'2023-12-07 00:00:00',75000),(17,2,'2022-06-07 00:00:00',65025),(17,2,'2023-06-07 00:00:00',72250),(17,2,'2023-12-07 00:00:00',85000),(18,1,'2022-06-07 00:00:00',61200),(18,1,'2023-06-07 00:00:00',68000),(18,1,'2023-12-07 00:00:00',80000),(18,2,'2022-06-07 00:00:00',68850),(18,2,'2023-06-07 00:00:00',76500),(18,2,'2023-12-07 00:00:00',90000),(19,1,'2022-06-07 00:00:00',72675),(19,1,'2023-06-07 00:00:00',80750),(19,1,'2023-12-07 00:00:00',95000),(19,2,'2022-06-07 00:00:00',80325),(19,2,'2023-06-07 00:00:00',89250),(19,2,'2023-12-07 00:00:00',105000),(20,1,'2022-06-07 00:00:00',76500),(20,1,'2023-06-07 00:00:00',85000),(20,1,'2023-12-07 00:00:00',100000),(20,2,'2022-06-07 00:00:00',91800),(20,2,'2023-06-07 00:00:00',102000),(20,2,'2023-12-07 00:00:00',120000),(21,1,'2022-06-07 00:00:00',38250),(21,1,'2023-06-07 00:00:00',42500),(21,1,'2023-12-07 00:00:00',50000),(21,2,'2022-06-07 00:00:00',45900),(21,2,'2023-06-07 00:00:00',51000),(21,2,'2023-12-07 00:00:00',60000),(22,1,'2023-04-30 00:00:00',46750),(22,1,'2023-10-31 00:00:00',55000),(22,2,'2022-04-30 00:00:00',49725),(22,2,'2023-04-30 00:00:00',55250),(22,2,'2023-10-31 00:00:00',65000),(23,1,'2022-04-03 00:00:00',45900),(23,1,'2023-04-03 00:00:00',51000),(23,1,'2023-10-03 00:00:00',60000),(23,2,'2022-04-03 00:00:00',53550),(23,2,'2023-04-03 00:00:00',59500),(23,2,'2023-10-03 00:00:00',70000),(24,1,'2022-04-03 00:00:00',49725),(24,1,'2023-04-03 00:00:00',55250),(24,1,'2023-10-03 00:00:00',65000),(24,2,'2023-04-03 00:00:00',63750),(24,2,'2023-10-03 00:00:00',75000),(25,1,'2022-04-03 00:00:00',53550),(25,1,'2023-04-03 00:00:00',59500),(25,1,'2023-10-03 00:00:00',70000),(25,2,'2022-04-03 00:00:00',61200),(25,2,'2023-04-03 00:00:00',68000),(25,2,'2023-10-03 00:00:00',80000),(26,1,'2022-04-03 00:00:00',57375),(26,1,'2023-04-03 00:00:00',63750),(26,1,'2023-10-03 00:00:00',75000),(26,2,'2022-04-03 00:00:00',65025),(26,2,'2023-04-03 00:00:00',72250),(26,2,'2023-10-03 00:00:00',85000),(27,1,'2022-06-07 00:00:00',61200),(27,1,'2023-06-07 00:00:00',68000),(27,1,'2023-12-07 00:00:00',80000),(27,2,'2022-06-07 00:00:00',68850),(27,2,'2023-06-07 00:00:00',76500),(27,2,'2023-12-07 00:00:00',90000),(28,1,'2022-06-07 00:00:00',65025),(28,1,'2023-06-07 00:00:00',72250),(28,1,'2023-12-07 00:00:00',85000),(28,2,'2022-06-07 00:00:00',72675),(28,2,'2023-06-07 00:00:00',80750),(28,2,'2023-12-07 00:00:00',95000),(29,1,'2022-06-07 00:00:00',30600),(29,1,'2023-06-07 00:00:00',34000),(29,1,'2023-12-07 00:00:00',40000),(29,2,'2022-06-07 00:00:00',38250),(29,2,'2023-06-07 00:00:00',42500),(29,2,'2023-12-07 00:00:00',50000),(30,1,'2022-06-07 00:00:00',34425),(30,1,'2023-06-07 00:00:00',38250),(30,1,'2023-12-07 00:00:00',45000),(30,2,'2022-06-07 00:00:00',42075),(30,2,'2023-06-07 00:00:00',46750),(30,2,'2023-12-07 00:00:00',55000),(31,1,'2022-06-07 00:00:00',38250),(31,1,'2023-06-07 00:00:00',42500),(31,1,'2023-12-07 00:00:00',50000),(31,2,'2022-06-07 00:00:00',45900),(31,2,'2023-06-07 00:00:00',51000),(31,2,'2023-12-07 00:00:00',60000),(32,1,'2023-04-30 00:00:00',46750),(32,1,'2023-10-31 00:00:00',55000),(32,2,'2022-04-30 00:00:00',49725),(32,2,'2023-04-30 00:00:00',55250),(32,2,'2023-10-31 00:00:00',65000),(33,1,'2022-04-03 00:00:00',19125),(33,1,'2023-04-03 00:00:00',21250),(33,1,'2023-10-03 00:00:00',25000),(33,2,'2022-04-03 00:00:00',26775),(33,2,'2023-04-03 00:00:00',29750),(33,2,'2023-10-03 00:00:00',35000),(34,1,'2022-04-03 00:00:00',22950),(34,1,'2023-04-03 00:00:00',25500),(34,1,'2023-10-03 00:00:00',30000),(34,2,'2023-04-03 00:00:00',34000),(34,2,'2023-10-03 00:00:00',40000),(35,1,'2022-04-03 00:00:00',26775),(35,1,'2023-04-03 00:00:00',29750),(35,1,'2023-10-03 00:00:00',35000),(35,2,'2022-04-03 00:00:00',34425),(35,2,'2023-04-03 00:00:00',38250),(35,2,'2023-10-03 00:00:00',45000),(36,1,'2022-04-03 00:00:00',30600),(36,1,'2023-04-03 00:00:00',34000),(36,1,'2023-10-03 00:00:00',40000),(36,2,'2022-04-03 00:00:00',38250),(36,2,'2023-04-03 00:00:00',42500),(36,2,'2023-10-03 00:00:00',50000),(37,1,'2022-06-07 00:00:00',30600),(37,1,'2023-06-07 00:00:00',34000),(37,1,'2023-12-07 00:00:00',40000),(37,2,'2022-06-07 00:00:00',38250),(37,2,'2023-06-07 00:00:00',42500),(37,2,'2023-12-07 00:00:00',50000),(38,1,'2022-06-07 00:00:00',34425),(38,1,'2023-06-07 00:00:00',38250),(38,1,'2023-12-07 00:00:00',45000),(38,2,'2022-06-07 00:00:00',42075),(38,2,'2023-06-07 00:00:00',46750),(38,2,'2023-12-07 00:00:00',55000),(39,1,'2022-06-07 00:00:00',38250),(39,1,'2023-06-07 00:00:00',42500),(39,1,'2023-12-07 00:00:00',50000),(39,2,'2022-06-07 00:00:00',45900),(39,2,'2023-06-07 00:00:00',51000),(39,2,'2023-12-07 00:00:00',60000),(40,1,'2022-06-07 00:00:00',42075),(40,1,'2023-06-07 00:00:00',46750),(40,1,'2023-12-07 00:00:00',55000),(40,2,'2022-06-07 00:00:00',49725),(40,2,'2023-06-07 00:00:00',55250),(40,2,'2023-12-07 00:00:00',65000),(41,1,'2022-06-07 00:00:00',19125),(41,1,'2023-06-07 00:00:00',21250),(41,1,'2023-12-07 00:00:00',25000),(41,2,'2022-06-07 00:00:00',26775),(41,2,'2023-06-07 00:00:00',29750),(41,2,'2023-12-07 00:00:00',35000),(42,1,'2022-04-30 00:00:00',22950),(42,1,'2023-04-30 00:00:00',25500),(42,1,'2023-10-31 00:00:00',30000),(42,2,'2022-04-30 00:00:00',30600),(42,2,'2023-04-30 00:00:00',34000),(42,2,'2023-10-31 00:00:00',40000),(43,1,'2022-04-03 00:00:00',26775),(43,1,'2023-04-03 00:00:00',29750),(43,1,'2023-10-03 00:00:00',35000),(43,2,'2022-04-03 00:00:00',34425),(43,2,'2023-04-03 00:00:00',38250),(43,2,'2023-10-03 00:00:00',45000),(44,1,'2022-04-03 00:00:00',30600),(44,1,'2023-04-03 00:00:00',34000),(44,1,'2023-10-03 00:00:00',40000),(44,2,'2022-04-03 00:00:00',38250),(44,2,'2023-04-03 00:00:00',42500),(44,2,'2023-10-03 00:00:00',50000),(45,1,'2022-04-03 00:00:00',30600),(45,1,'2023-04-03 00:00:00',34000),(45,1,'2023-10-03 00:00:00',40000),(45,2,'2022-04-03 00:00:00',38250),(45,2,'2023-04-03 00:00:00',42500),(45,2,'2023-10-03 00:00:00',50000),(46,1,'2022-04-03 00:00:00',34425),(46,1,'2023-04-03 00:00:00',38250),(46,1,'2023-10-03 00:00:00',45000),(46,2,'2022-04-03 00:00:00',42075),(46,2,'2023-04-03 00:00:00',46750),(46,2,'2023-10-03 00:00:00',55000),(47,1,'2022-06-07 00:00:00',38250),(47,1,'2023-06-07 00:00:00',42500),(47,1,'2023-12-07 00:00:00',50000),(47,2,'2022-06-07 00:00:00',45900),(47,2,'2023-06-07 00:00:00',51000),(47,2,'2023-12-07 00:00:00',60000),(48,1,'2022-06-07 00:00:00',42075),(48,1,'2023-06-07 00:00:00',46750),(48,1,'2023-12-07 00:00:00',55000),(48,2,'2022-06-07 00:00:00',49725),(48,2,'2023-06-07 00:00:00',55250),(48,2,'2023-12-07 00:00:00',65000),(49,1,'2022-06-07 00:00:00',15300),(49,1,'2023-06-07 00:00:00',17000),(49,1,'2023-12-07 00:00:00',20000),(49,2,'2022-06-07 00:00:00',22950),(49,2,'2023-06-07 00:00:00',25500),(49,2,'2023-12-07 00:00:00',30000),(50,1,'2022-06-07 00:00:00',15300),(50,1,'2023-06-07 00:00:00',17000),(50,1,'2023-12-07 00:00:00',20000),(50,2,'2022-06-07 00:00:00',22950),(50,2,'2023-06-07 00:00:00',25500),(50,2,'2023-12-07 00:00:00',30000),(51,1,'2022-06-07 00:00:00',15300),(51,1,'2023-06-07 00:00:00',17000),(51,1,'2023-12-07 00:00:00',20000),(51,2,'2022-06-07 00:00:00',22950),(51,2,'2023-06-07 00:00:00',25500),(51,2,'2023-12-07 00:00:00',30000),(52,1,'2022-04-30 00:00:00',15300),(52,1,'2023-04-30 00:00:00',17000),(52,1,'2023-10-31 00:00:00',20000),(52,2,'2022-04-30 00:00:00',22950),(52,2,'2023-04-30 00:00:00',25500),(52,2,'2023-10-31 00:00:00',30000),(53,1,'2022-04-03 00:00:00',48960),(53,1,'2023-04-03 00:00:00',54400),(53,1,'2023-10-03 00:00:00',64000),(53,2,'2022-04-03 00:00:00',56610),(53,2,'2023-04-03 00:00:00',62900),(53,2,'2023-10-03 00:00:00',74000),(54,1,'2022-04-03 00:00:00',57375),(54,1,'2023-04-03 00:00:00',63750),(54,1,'2023-10-03 00:00:00',75000),(54,2,'2022-04-03 00:00:00',65025),(54,2,'2023-04-03 00:00:00',72250),(54,2,'2023-10-03 00:00:00',85000),(55,1,'2022-04-03 00:00:00',65025),(55,1,'2023-04-03 00:00:00',72250),(55,1,'2023-10-03 00:00:00',85000),(55,2,'2022-04-03 00:00:00',72675),(55,2,'2023-04-03 00:00:00',80750),(55,2,'2023-10-03 00:00:00',95000),(56,1,'2022-04-03 00:00:00',72675),(56,1,'2023-04-03 00:00:00',80750),(56,1,'2023-10-03 00:00:00',95000),(56,2,'2022-04-03 00:00:00',80325),(56,2,'2023-04-03 00:00:00',89250),(56,2,'2023-10-03 00:00:00',105000),(57,1,'2022-06-07 00:00:00',48960),(57,1,'2023-06-07 00:00:00',54400),(57,1,'2023-12-07 00:00:00',64000),(57,2,'2022-06-07 00:00:00',56610),(57,2,'2023-06-07 00:00:00',62900),(57,2,'2023-12-07 00:00:00',74000),(58,1,'2022-06-07 00:00:00',48960),(58,1,'2023-06-07 00:00:00',54400),(58,1,'2023-12-07 00:00:00',64000),(58,2,'2022-06-07 00:00:00',56610),(58,2,'2023-06-07 00:00:00',62900),(58,2,'2023-12-07 00:00:00',74000),(59,1,'2022-06-07 00:00:00',48960),(59,1,'2023-06-07 00:00:00',54400),(59,1,'2023-12-07 00:00:00',64000),(59,2,'2022-06-07 00:00:00',56610),(59,2,'2023-06-07 00:00:00',62900),(59,2,'2023-12-07 00:00:00',74000),(60,1,'2022-06-07 00:00:00',48960),(60,1,'2023-06-07 00:00:00',54400),(60,1,'2023-12-07 00:00:00',64000),(60,2,'2022-06-07 00:00:00',56610),(60,2,'2023-06-07 00:00:00',62900),(60,2,'2023-12-07 00:00:00',74000),(61,1,'2022-06-07 00:00:00',48960),(61,1,'2023-06-07 00:00:00',54400),(61,1,'2023-12-07 00:00:00',64000),(61,2,'2022-06-07 00:00:00',56610),(61,2,'2023-06-07 00:00:00',62900),(61,2,'2023-12-07 00:00:00',74000),(62,1,'2022-04-30 00:00:00',48960),(62,1,'2023-04-30 00:00:00',54400),(62,1,'2023-10-31 00:00:00',64000),(62,2,'2022-04-30 00:00:00',56610),(62,2,'2023-04-30 00:00:00',62900),(62,2,'2023-10-31 00:00:00',74000),(63,1,'2022-04-03 00:00:00',48960),(63,1,'2023-04-03 00:00:00',54400),(63,1,'2023-10-03 00:00:00',64000),(63,2,'2022-04-03 00:00:00',56610),(63,2,'2023-04-03 00:00:00',62900),(63,2,'2023-10-03 00:00:00',74000),(64,1,'2022-04-03 00:00:00',48960),(64,1,'2023-04-03 00:00:00',54400),(64,1,'2023-10-03 00:00:00',64000),(64,2,'2022-04-03 00:00:00',56610),(64,2,'2023-04-03 00:00:00',62900),(64,2,'2023-10-03 00:00:00',74000),(65,1,'2022-04-03 00:00:00',48960),(65,1,'2023-04-03 00:00:00',54400),(65,1,'2023-10-03 00:00:00',64000),(65,2,'2022-04-03 00:00:00',56610),(65,2,'2023-04-03 00:00:00',62900),(65,2,'2023-10-03 00:00:00',74000),(66,1,'2022-04-03 00:00:00',48960),(66,1,'2023-04-03 00:00:00',54400),(66,1,'2023-10-03 00:00:00',64000),(66,2,'2022-04-03 00:00:00',56610),(66,2,'2023-04-03 00:00:00',62900),(66,2,'2023-10-03 00:00:00',74000),(67,1,'2022-06-07 00:00:00',48960),(67,1,'2023-06-07 00:00:00',54400),(67,1,'2023-12-07 00:00:00',64000),(67,2,'2022-06-07 00:00:00',56610);
/*!40000 ALTER TABLE `salpos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saltype`
--

DROP TABLE IF EXISTS `saltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saltype` (
  `sal_id` int NOT NULL,
  `sal_desc` varchar(45) NOT NULL,
  PRIMARY KEY (`sal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saltype`
--

LOCK TABLES `saltype` WRITE;
/*!40000 ALTER TABLE `saltype` DISABLE KEYS */;
INSERT INTO `saltype` VALUES (1,'Low Range'),(2,'High Range');
/*!40000 ALTER TABLE `saltype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-29 15:11:57
