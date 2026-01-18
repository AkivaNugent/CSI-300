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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-29 15:14:28
