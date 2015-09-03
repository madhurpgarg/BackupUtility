-- MySQL dump 10.13  Distrib 5.5.28, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: skillsdb
-- ------------------------------------------------------
-- Server version	5.5.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `area_skill_map`
--

DROP TABLE IF EXISTS `area_skill_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area_skill_map` (
  `area_skill_map_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `area_id` bigint(20) NOT NULL,
  `skill_id` bigint(20) NOT NULL,
  PRIMARY KEY (`area_skill_map_id`),
  KEY `area_id_constants_fk11` (`area_id`),
  KEY `skill_id_fk1` (`skill_id`),
  CONSTRAINT `area_id_constants_fk11` FOREIGN KEY (`area_id`) REFERENCES `constants` (`id`),
  CONSTRAINT `skill_id_fk1` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_skill_map`
--

LOCK TABLES `area_skill_map` WRITE;
/*!40000 ALTER TABLE `area_skill_map` DISABLE KEYS */;
INSERT INTO `area_skill_map` VALUES (1,11,2),(2,11,4),(3,11,7),(4,11,9),(5,11,10),(6,11,11),(7,11,12),(8,11,13),(9,11,16),(10,11,17),(11,11,22),(12,11,23),(13,11,24),(14,11,26),(15,11,29),(16,11,30),(17,11,31),(18,11,32),(19,11,33),(20,11,34),(21,11,35),(22,11,36),(23,11,48),(24,11,49),(25,11,50),(26,11,53),(27,11,54),(28,11,56),(29,11,57),(30,11,59),(31,11,60),(32,11,65),(33,11,66),(34,11,68),(35,11,70),(36,11,71),(37,11,72),(38,11,74),(39,11,75),(40,11,77),(41,11,80),(42,11,85),(43,11,87),(44,11,89),(45,11,91),(46,11,94),(47,11,98),(48,11,102),(49,11,104),(50,11,105),(51,11,106),(52,11,108),(53,11,111),(54,11,113),(55,11,114),(56,11,115),(57,11,116),(58,11,117),(59,11,118),(60,11,119),(61,11,120),(62,11,121),(63,11,125),(64,11,126),(65,11,129),(66,11,135),(67,11,138),(68,11,140),(69,11,145),(70,11,152),(71,11,153),(72,11,159),(73,11,160),(74,11,163),(75,11,164),(76,11,169),(77,11,172),(78,11,173),(79,11,174),(80,11,176),(81,11,177),(82,11,178),(83,11,180),(84,11,183),(85,11,186),(86,11,187),(87,11,188),(88,11,189),(89,11,190),(90,11,196),(91,11,197),(92,11,200),(93,11,201),(94,11,203),(95,11,204),(96,11,208),(97,11,209),(98,11,210),(99,11,214),(100,11,215),(101,11,216),(102,11,217),(103,11,218),(104,11,219),(105,11,220),(106,11,221),(107,11,222),(108,11,223),(109,11,224),(110,11,225),(111,11,227),(112,11,228),(113,11,229),(114,11,230),(115,11,231),(116,11,232),(117,11,233),(118,11,234),(119,11,235),(120,11,236),(121,11,237),(122,11,238),(123,11,239),(124,12,1),(125,12,2),(126,12,3),(127,12,5),(128,12,7),(129,12,8),(130,12,9),(131,12,13),(132,12,14),(133,12,15),(134,12,17),(135,12,18),(136,12,19),(137,12,20),(138,12,21),(139,12,22),(140,12,37),(141,12,38),(142,12,39),(143,12,40),(144,12,41),(145,12,42),(146,12,43),(147,12,44),(148,12,45),(149,12,46),(150,12,47),(151,12,51),(152,12,58),(153,12,61),(154,12,62),(155,12,67),(156,12,69),(157,12,71),(158,12,84),(159,12,88),(160,12,90),(161,12,95),(162,12,100),(163,12,106),(164,12,107),(165,12,112),(166,12,122),(167,12,130),(168,12,133),(169,12,137),(170,12,139),(171,12,142),(172,12,143),(173,12,146),(174,12,147),(175,12,148),(176,12,150),(177,12,151),(178,12,154),(179,12,155),(180,12,156),(181,12,157),(182,12,158),(183,12,166),(184,12,167),(185,12,168),(186,12,170),(187,12,171),(188,12,172),(189,12,175),(190,12,179),(191,12,184),(192,12,185),(193,12,191),(194,12,192),(195,12,193),(196,12,194),(197,12,196),(198,12,198),(199,12,204),(200,12,205),(201,12,206),(202,12,207),(203,13,5),(204,13,7),(205,13,9),(206,13,13),(207,13,17),(208,13,18),(209,13,19),(210,13,20),(211,13,21),(212,13,25),(213,13,51),(214,13,58),(215,13,63),(216,13,67),(217,13,69),(218,13,71),(219,13,76),(220,13,78),(221,13,79),(222,13,90),(223,13,93),(224,13,95),(225,13,100),(226,13,106),(227,13,107),(228,13,112),(229,13,133),(230,13,136),(231,13,137),(232,13,143),(233,13,144),(234,13,146),(235,13,147),(236,13,151),(237,13,154),(238,13,155),(239,13,158),(240,13,166),(241,13,167),(242,13,171),(243,13,172),(244,13,175),(245,13,191),(246,13,192),(247,13,193),(248,13,194),(249,13,196),(250,13,204),(251,13,205),(252,13,206),(253,13,207),(254,14,5),(255,14,7),(256,14,9),(257,14,12),(258,14,13),(259,14,17),(260,14,18),(261,14,19),(262,14,20),(263,14,21),(264,14,51),(265,14,52),(266,14,55),(267,14,58),(268,14,67),(269,14,69),(270,14,71),(271,14,81),(272,14,82),(273,14,90),(274,14,93),(275,14,101),(276,14,106),(277,14,107),(278,14,109),(279,14,112),(280,14,128),(281,14,132),(282,14,134),(283,14,137),(284,14,141),(285,14,143),(286,14,144),(287,14,146),(288,14,147),(289,14,149),(290,14,151),(291,14,154),(292,14,155),(293,14,158),(294,14,165),(295,14,166),(296,14,171),(297,14,172),(298,14,175),(299,14,181),(300,14,191),(301,14,192),(302,14,193),(303,14,194),(304,14,195),(305,14,196),(306,14,205),(307,14,206),(308,14,207),(309,14,211),(310,14,226),(311,15,1),(312,15,2),(313,15,3),(314,15,5),(315,15,6),(316,15,7),(317,15,8),(318,15,9),(319,15,13),(320,15,14),(321,15,15),(322,15,17),(323,15,27),(324,15,28),(325,15,37),(326,15,38),(327,15,39),(328,15,40),(329,15,41),(330,15,42),(331,15,43),(332,15,44),(333,15,45),(334,15,46),(335,15,47),(336,15,58),(337,15,61),(338,15,62),(339,15,64),(340,15,71),(341,15,73),(342,15,82),(343,15,83),(344,15,88),(345,15,92),(346,15,96),(347,15,97),(348,15,99),(349,15,103),(350,15,106),(351,15,110),(352,15,112),(353,15,122),(354,15,123),(355,15,124),(356,15,127),(357,15,128),(358,15,130),(359,15,133),(360,15,139),(361,15,142),(362,15,155),(363,15,156),(364,15,161),(365,15,162),(366,15,166),(367,15,168),(368,15,170),(369,15,175),(370,15,182),(371,15,196),(372,15,202),(373,15,212),(374,15,213),(375,15,220);
/*!40000 ALTER TABLE `area_skill_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `constants`
--

DROP TABLE IF EXISTS `constants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `constants` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(100) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constants`
--

LOCK TABLES `constants` WRITE;
/*!40000 ALTER TABLE `constants` DISABLE KEYS */;
INSERT INTO `constants` VALUES (1,'Admin','AccessType'),(2,'Reporting Manager','AccessType'),(3,'Employee','AccessType'),(4,'Technical','SkillType'),(5,'Domain','SkillType'),(6,'Current','SK1'),(7,'Future','SK1'),(8,'Possess','SK3'),(9,'Good To Have','SK2'),(10,'Must Have','SK2'),(11,'Environment','Area'),(12,'Manual Testing','Area'),(13,'Performance Testing','Area'),(14,'Security Testing','Area'),(15,'Development','Area'),(16,'1-No Knowledge','Rating'),(17,'2-Trained','Rating'),(18,'3-Experienced','Rating'),(19,'4-Expert','Rating'),(20,'NA','Rating'),(21,'No Rating','Rating');
/*!40000 ALTER TABLE `constants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `emp_id` varchar(20) NOT NULL,
  `emp_name` varchar(250) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `rm_emp_id` varchar(20) DEFAULT NULL,
  `mail_id` varchar(100) NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `service_id_fk` (`service_id`),
  KEY `role_id_fk` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('1234','1234',1,1,'1','1234@vodafone.com'),('12345','1234',1,19,'Admin2','sasas@vodafone.com'),('90012345','ABC1 ABC1',7,20,'Admin2','ABC1.ABC1@vodafone.com'),('90062701','No Rating Resource',2,10,'90062715','no-rating.resource@vodafone.com'),('900627088','No Rating Resource',1,19,'9006271','rating.resource@vodafone.com'),('9006271','abc abc',2,19,'Admin2','abc.abc@vodafone.com'),('90062715','qwe qwe',3,10,'Admin2','qwe.qwe@vodafone.com'),('90062716','rty rty',3,10,'90062715','rty.rty@vodafone.com'),('90062717','xyz xyz',2,19,'Admin2','xyz.xyz@vodafone.com'),('90062718','Madhur Garg',1,19,'Admin2','madhur.garg@gmail.com'),('Admin1','Admin1',0,0,'0','ADMT.SkillsCatalogue@vodafone.com'),('Admin2','Admin2',0,0,'0','ADMT.SkillsCatalogue@vodafone.com'),('Admin3','Admin3',0,0,'0','ADMT.SkillsCatalogue@vodafone.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `emp_id` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `access_type` bigint(20) NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `access_type_fk` (`access_type`),
  CONSTRAINT `access_type_fk` FOREIGN KEY (`access_type`) REFERENCES `constants` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('12345','1234',3),('90012345','1234',2),('90062701','1234',3),('900627088','1234',3),('9006271','1234',2),('90062715','1234',2),('90062716','1234',3),('90062717','1234',3),('90062718','1234',3),('Admin1','1234',1),('Admin2','1234',2),('Admin3','1234',1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_skill_possess`
--

DROP TABLE IF EXISTS `resource_skill_possess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource_skill_possess` (
  `resource_skill_possess_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(20) NOT NULL,
  `skill_type` bigint(20) NOT NULL,
  `skill_category` bigint(20) DEFAULT NULL,
  `skill_subcategory` bigint(20) DEFAULT NULL,
  `rating` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resource_skill_possess_id`),
  KEY `skill_type_fk3` (`skill_type`),
  KEY `skill_category_fk2` (`skill_category`),
  KEY `skill_subcategory_fk2` (`skill_subcategory`),
  KEY `emp_id_fkk4` (`emp_id`),
  CONSTRAINT `emp_id_fkk4` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `skill_category_fk2` FOREIGN KEY (`skill_category`) REFERENCES `skills` (`skill_id`),
  CONSTRAINT `skill_subcategory_fk2` FOREIGN KEY (`skill_subcategory`) REFERENCES `skills` (`skill_id`),
  CONSTRAINT `skill_type_fk3` FOREIGN KEY (`skill_type`) REFERENCES `constants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_skill_possess`
--

LOCK TABLES `resource_skill_possess` WRITE;
/*!40000 ALTER TABLE `resource_skill_possess` DISABLE KEYS */;
INSERT INTO `resource_skill_possess` VALUES (1,'9006271',4,6,27,17),(2,'9006271',4,21,167,18),(3,'9006271',5,15,130,18),(4,'9006271',5,2,59,18),(5,'12345',5,1,37,16),(6,'12345',4,5,97,16);
/*!40000 ALTER TABLE `resource_skill_possess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_skill_rating`
--

DROP TABLE IF EXISTS `resource_skill_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource_skill_rating` (
  `resource_skill_rating_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(20) NOT NULL,
  `service_skill_map_id` bigint(20) NOT NULL,
  `rating` bigint(20) DEFAULT NULL,
  `resource_weightage` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resource_skill_rating_id`),
  KEY `emp_id_fk` (`emp_id`),
  KEY `service_skill_map_id` (`service_skill_map_id`),
  CONSTRAINT `emp_id_fk4` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `service_skil_map_id_fk` FOREIGN KEY (`service_skill_map_id`) REFERENCES `service_skill_map` (`service_skill_map_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_skill_rating`
--

LOCK TABLES `resource_skill_rating` WRITE;
/*!40000 ALTER TABLE `resource_skill_rating` DISABLE KEYS */;
INSERT INTO `resource_skill_rating` VALUES (1,'12345',1,17,100),(2,'90062718',1,17,100),(3,'12345',3,18,0),(4,'90062718',3,16,0),(5,'9006271',6,19,100),(6,'90062717',6,16,100),(7,'90062701',5,21,100),(8,'900627088',1,21,100),(9,'900627088',3,21,0),(10,'90012345',9,21,100);
/*!40000 ALTER TABLE `resource_skill_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL,
  `role_desc` varchar(250) DEFAULT NULL,
  `area_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  KEY `area_id_fk` (`area_id`),
  CONSTRAINT `area_id_fk` FOREIGN KEY (`area_id`) REFERENCES `constants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Env Engg-DBA','Environment::Env Engg-DBA',11),(2,'Env Engg-Unix','Environment::Env Engg-Unix',11),(3,'Env Engg-Wintel','Environment::Env Engg-Wintel',11),(4,'Env Engg-Siebel','Environment::Env Engg-Siebel',11),(5,'Env Engg-EAI/Middleware','Environment::Env Engg-EAI/Middleware',11),(6,'Env Engg-Network','Environment::Env Engg-Network',11),(7,'Env Lead- Unix Admin, Wintel, DBA, Network','Environment::Env Lead- Unix Admin, Wintel, DBA, Network',11),(8,'Env Lead - Siebel, EAI, Middleware','Environment::Env Lead - Siebel, EAI, Middleware',11),(9,'Env Manager','Environment::Env Manager',11),(10,'Manual Tester','Manual Testing::Manual Tester',12),(11,'Manual Test Lead','Manual Testing::Manual Test Lead',12),(12,'Manual Test Manager','Manual Testing::Manual Test Manager',12),(13,'Performance Tester','Perf Testing::Performance Tester',13),(14,'Performance Test Lead','Perf Testing::Performance Test Lead',13),(15,'Performance Test Manager','Perf Testing::Performance Test Manager',13),(16,'Security Tester','Security Testing::Security Tester',14),(17,'Security Test Lead','Security Testing::Security Test Lead',14),(18,'Security Test Manager','Security Testing::Security Test Manager',14),(19,'Developer','Development::Developer',15),(20,'Architect','Development::Architect',15);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_role_map`
--

DROP TABLE IF EXISTS `service_role_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_role_map` (
  `service_role_map_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `service_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`service_role_map_id`),
  KEY `service_id_fk2` (`service_id`),
  KEY `role_id_fk2` (`role_id`),
  CONSTRAINT `role_id_fk2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  CONSTRAINT `service_id_fk2` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_role_map`
--

LOCK TABLES `service_role_map` WRITE;
/*!40000 ALTER TABLE `service_role_map` DISABLE KEYS */;
INSERT INTO `service_role_map` VALUES (1,1,19),(2,1,4),(3,1,20),(4,2,4),(5,2,10),(6,2,19),(7,2,20),(8,2,5),(9,3,10),(10,3,11),(11,3,13),(12,3,12),(13,7,19),(14,7,20),(15,7,10),(16,7,11);
/*!40000 ALTER TABLE `service_role_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_skill_map`
--

DROP TABLE IF EXISTS `service_skill_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_skill_map` (
  `service_skill_map_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `service_role_map_id` bigint(20) DEFAULT NULL,
  `cfp_flag` bigint(20) DEFAULT NULL,
  `gm_flag` bigint(20) DEFAULT NULL,
  `skill_type` bigint(20) DEFAULT NULL,
  `skill_category` bigint(20) DEFAULT NULL,
  `skill_subcategory` bigint(20) DEFAULT NULL,
  `weightage` bigint(20) DEFAULT NULL,
  `expected_rating` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`service_skill_map_id`),
  KEY `service_role_map_id_fk` (`service_role_map_id`),
  KEY `skill_type1_fk` (`cfp_flag`),
  KEY `skill_type2_fk` (`gm_flag`),
  KEY `skill_type_fkk` (`skill_type`),
  KEY `skill_category_fk` (`skill_category`),
  KEY `skill_subcategory_fk` (`skill_subcategory`),
  CONSTRAINT `cfg_flag_fk` FOREIGN KEY (`cfp_flag`) REFERENCES `constants` (`id`),
  CONSTRAINT `gm_flag_fk` FOREIGN KEY (`gm_flag`) REFERENCES `constants` (`id`),
  CONSTRAINT `service_role_map_id_fk` FOREIGN KEY (`service_role_map_id`) REFERENCES `service_role_map` (`service_role_map_id`),
  CONSTRAINT `skill_category_fk` FOREIGN KEY (`skill_category`) REFERENCES `skills` (`skill_id`),
  CONSTRAINT `skill_subcategory_fk` FOREIGN KEY (`skill_subcategory`) REFERENCES `skills` (`skill_id`),
  CONSTRAINT `skill_type_fkk` FOREIGN KEY (`skill_type`) REFERENCES `constants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_skill_map`
--

LOCK TABLES `service_skill_map` WRITE;
/*!40000 ALTER TABLE `service_skill_map` DISABLE KEYS */;
INSERT INTO `service_skill_map` VALUES (1,1,6,9,4,9,92,100,18),(2,3,6,9,4,6,27,100,19),(3,1,6,9,4,11,58,0,16),(4,2,6,10,4,11,91,100,18),(5,5,6,10,4,7,133,100,19),(6,6,7,10,4,6,27,100,16),(7,10,6,9,4,9,172,100,18),(8,2,6,9,4,9,53,0,18),(9,14,6,9,4,9,92,100,19);
/*!40000 ALTER TABLE `service_skill_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `service_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(250) DEFAULT NULL,
  `service_desc` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Malta','Malta AD and AT'),(2,'IAUM','Identity Access User Management'),(3,'Italy','Italy Testing'),(4,'Germany','Germany Testing'),(5,'Hungary','Hungary Testing'),(6,'Turkey','Turkey Testing'),(7,'CZech','CZech'),(8,'NL Testing','NL Testing'),(9,'VRS','Vodafone Roaming Services'),(10,'UK','UK Testing');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `skill_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(250) DEFAULT NULL,
  `skill_type` bigint(20) DEFAULT NULL,
  `skill_desc` varchar(250) DEFAULT NULL,
  `skill_ref_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`skill_id`),
  KEY `skill_type_fk` (`skill_type`),
  CONSTRAINT `skill_type_fk` FOREIGN KEY (`skill_type`) REFERENCES `constants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'BSS - Billing',5,'BSS - Billing::Domain',NULL),(2,'BSS - Customer Relationship Management',5,'BSS - Customer Relationship Management::Domain',NULL),(3,'BSS - Decision Support Systems',5,'BSS - Decision Support Systems::Domain',NULL),(4,'BSS - Self-Service',5,'BSS - Self-Service::Domain',NULL),(5,'COTS',4,'COTS::Technical',NULL),(6,'Concepts',4,'Concepts::Technical',NULL),(7,'Database',4,'Database::Technical',NULL),(8,'Identity Management',5,'Identity Management::Domain',NULL),(9,'Language & Scripting',4,'Language & Scripting::Technical',NULL),(10,'Management',4,'Management::Technical',NULL),(11,'Middleware',4,'Middleware::Technical',NULL),(12,'Networks',4,'Networks::Technical',NULL),(13,'OS & Server',4,'OS & Server::Technical',NULL),(14,'OSS - Assurance',5,'OSS - Assurance::Domain',NULL),(15,'OSS - Fulfilment',5,'OSS - Fulfilment::Domain',NULL),(16,'Technical Support',4,'Technical Support::Technical',NULL),(17,'Telecom Generic',5,'Telecom Generic::Domain',NULL),(18,'Testing Best Practices',4,'Testing Best Practices::Technical',NULL),(19,'Testing Concepts',4,'Testing Concepts::Technical',NULL),(20,'Testing Generic',4,'Testing Generic::Technical',NULL),(21,'Testing Tools',4,'Testing Tools::Technical',NULL),(22,'Tools',4,'Tools::Technical',NULL),(23,'ADONIS(BPM)',4,'ADONIS(BPM)::Technical',11),(24,'AIX Admin',4,'AIX Admin::Technical',13),(25,'ASP & VBScript',4,'ASP & VBScript::Technical',9),(26,'Actuate Basics v6',4,'Actuate Basics v6::Technical',11),(27,'Agile Framework and Scrum',4,'Agile Framework and Scrum::Technical',6),(28,'Apache Web Server/Tomcat',4,'Apache Web Server/Tomcat::Technical',13),(29,'Aqualogic BPM Enterprise v6.0',4,'Aqualogic BPM Enterprise v6.0::Technical',11),(30,'Aqualogic Service Bus v2.6',4,'Aqualogic Service Bus v2.6::Technical',11),(31,'Artix v4.0 v4.1',4,'Artix v4.0 v4.1::Technical',12),(32,'Aspect CSS v7.1 v7.2',4,'Aspect CSS v7.1 v7.2::Technical',12),(33,'BPM Products',4,'BPM Products::Technical',11),(34,'BSS Basics',5,'BSS Basics::Domain',17),(35,'Backup and Recovery Management',4,'Backup and Recovery Management::Technical',16),(36,'Backup and Recovery',4,'Backup and Recovery::Technical',13),(37,'Billing - Accounts Receivable',5,'Billing - Accounts Receivable::Domain',1),(38,'Billing - Invoicing',5,'Billing - Invoicing::Domain',1),(39,'Billing - Mediation',5,'Billing - Mediation::Domain',1),(40,'Billing - Rating',5,'Billing - Rating::Domain',1),(41,'Billing-Bill Comparison',5,'Billing-Bill Comparison::Domain',1),(42,'Billing-CM',5,'Billing-CM::Domain',1),(43,'Billing-Collection',5,'Billing-Collection::Domain',1),(44,'Billing-Document Designer',5,'Billing-Document Designer::Domain',1),(45,'Billing-IN',5,'Billing-IN::Domain',1),(46,'Billing-Recharge System',5,'Billing-Recharge System::Domain',1),(47,'Billing-Usage Comparison',5,'Billing-Usage Comparison::Domain',1),(48,'Biztalk Server',4,'Biztalk Server::Technical',13),(49,'Broadvision enterprise v6.0',4,'Broadvision enterprise v6.0::Technical',11),(50,'Broadvision portal',4,'Broadvision portal::Technical',11),(51,'Build Management',4,'Build Management::Technical',20),(52,'C#',4,'C#::Technical',9),(53,'C, C#, Java, J2EEE, Java script, .Net troubleshooting',4,'C, C#, Java, J2EEE, Java script, .Net troubleshooting::Technical',9),(54,'C,C++,C#, Java, J2EE',4,'C,C++,C#, Java, J2EE::Technical',9),(55,'C/C++',4,'C/C++::Technical',9),(56,'CORBA, ORBIX',4,'CORBA, ORBIX::Technical',9),(57,'CTI client Genesys release v6.5 v7.0',4,'CTI client Genesys release v6.5 v7.0::Technical',11),(58,'Clarify CRM',4,'Clarify CRM::Technical',5),(59,'Clarify',5,'Clarify::Domain',2),(60,'Comptel Instant Link',4,'Comptel Instant Link::Technical',12),(61,'Contract Management',5,'Contract Management::Domain',2),(62,'Customer Account Management',5,'Customer Account Management::Domain',2),(63,'DBA (AWR Analysis)',4,'DBA (AWR Analysis)::Technical',7),(64,'Data quality analysis and improvement domain',4,'Data quality analysis and improvement domain::Technical',6),(65,'Databases Management',4,'Databases Management::Technical',7),(66,'Datastage',4,'Datastage::Technical',7),(67,'Defect Prevention Activities',4,'Defect Prevention Activities::Technical',18),(68,'EAI concepts and Integration',4,'EAI concepts and Integration::Technical',11),(69,'Early Validation Techniques',4,'Early Validation Techniques::Technical',18),(70,'Environment Tools',4,'Environment Tools::Technical',22),(71,'Fixed Line technologies and terminologies',5,'Fixed Line technologies and terminologies::Domain',17),(72,'Forte UDS &Forte Webenterprise and SUN UDS Suite',4,'Forte UDS &Forte Webenterprise and SUN UDS Suite::Technical',13),(73,'Glassfish Application Server',4,'Glassfish Application Server::Technical',13),(74,'Global 360 Enterprise 9.2',4,'Global 360 Enterprise 9.2::Technical',11),(75,'Global 360 workflow system 9.4',4,'Global 360 workflow system 9.4::Technical',11),(76,'HP BAC',4,'HP BAC::Technical',21),(77,'HP OSF1',4,'HP OSF1::Technical',13),(78,'HP QTP',4,'HP QTP::Technical',21),(79,'HP Site Scope',4,'HP Site Scope::Technical',21),(80,'HP Unix Admin',4,'HP Unix Admin::Technical',13),(81,'HP-UX',4,'HP-UX::Technical',13),(82,'HTML',4,'HTML::Technical',9),(83,'Hibernate',4,'Hibernate::Technical',9),(84,'IREG',4,'IREG::Technical',21),(85,'IVR Systems',5,'IVR Systems::Domain',4),(86,'InfoSec Standards (OWASP, PCI, SANS)',4,'InfoSec Standards (OWASP, PCI, SANS)::Technical',18),(87,'Interconnect v7.01.00',4,'Interconnect v7.01.00::Technical',12),(88,'Inventory Management',5,'Inventory Management::Domain',15),(89,'JBOSS',4,'JBOSS::Technical',11),(90,'JIRA',4,'JIRA::Technical',21),(91,'JMS',4,'JMS::Technical',11),(92,'J2EE',4,'Java & J2EE::Technical',9),(93,'Java',4,'Java::Technical',9),(94,'Jboss JBPM',4,'Jboss JBPM::Technical',11),(95,'Jmeter',4,'Jmeter::Technical',21),(96,'Junit',4,'Junit::Technical',9),(97,'LDAP',4,'LDAP::Technical',5),(98,'Latest Technology trends',4,'Latest Technology trends::Technical',16),(99,'Linux',4,'Linux::Technical',13),(100,'Loadrunner',4,'Loadrunner::Technical',21),(101,'MS SQL Server',4,'MS SQL Server::Technical',7),(102,'Map Info',4,'Map Info::Technical',11),(103,'Master Data Management Business Objects - End user',4,'Master Data Management Business Objects - End user::Technical',9),(104,'Microsoft Exchange 2003 Server',4,'Microsoft Exchange 2003 Server::Technical',13),(105,'Microsoft IIS 5.0',4,'Microsoft IIS 5.0::Technical',13),(106,'Mobile technologies and terminologies',5,'Mobile technologies and terminologies::Domain',17),(107,'Model Based Testing',4,'Model Based Testing::Technical',18),(108,'My SQL DBA',4,'My SQL DBA::Technical',7),(109,'MySQL',4,'MySQL::Technical',7),(110,'NetBeans',4,'NetBeans::Technical',9),(111,'Network Management Overview',4,'Network Management Overview::Technical',12),(112,'OSS BSS Basics',5,'OSS BSS Basics::Domain',17),(113,'OSS Basics',5,'OSS Basics::Domain',17),(114,'Oracle 10g DBA',4,'Oracle 10g DBA::Technical',7),(115,'Oracle 11g DBA',4,'Oracle 11g DBA::Technical',7),(116,'Oracle 9i DBA',4,'Oracle 9i DBA::Technical',7),(117,'Oracle BPI Publisher',4,'Oracle BPI Publisher::Technical',11),(118,'Oracle BPM 10.3.3',4,'Oracle BPM 10.3.3::Technical',11),(119,'Oracle BRM V7.3',5,'Oracle BRM V7.3::Domain',2),(120,'Oracle Databases',4,'Oracle Databases::Technical',7),(121,'Oracle Fusion Middleware 11g',4,'Oracle Fusion Middleware 11g::Technical',11),(122,'Oracle IDM',5,'Oracle IDM::Domain',8),(123,'Oracle Identity Manager 10g',4,'Oracle Identity Manager 10g::Technical',7),(124,'Oracle Identity Manager 11g',4,'Oracle Identity Manager 11g::Technical',7),(125,'Oracle Service Bus 10.3.0',4,'Oracle Service Bus 10.3.0::Technical',11),(126,'Oracle TimesTen',4,'Oracle TimesTen::Technical',7),(127,'Oracle eSSO',4,'Oracle eSSO::Technical',5),(128,'Oracle',4,'Oracle::Technical',7),(129,'Oracle, SQL, PL SQL, SQL Server',4,'Oracle, SQL, PL SQL, SQL Server::Technical',9),(130,'Order Management',5,'Order Management::Domain',15),(131,'Order/ Ticket Management',5,'Order/ Ticket Management::Domain',2),(132,'PHP',4,'PHP::Technical',9),(133,'PL/SQL',4,'PL/SQL::Technical',7),(134,'Penetration Testing',4,'Penetration Testing::Technical',19),(135,'Performance Optimization',4,'Performance Optimization::Technical',16),(136,'Performance Testing Concepts',4,'Performance Testing Concepts::Technical',19),(137,'Perl Scripting',4,'Perl Scripting::Technical',9),(138,'Perl, Shell Scripting',4,'Perl, Shell Scripting::Technical',9),(139,'Product Management',5,'Product Management::Domain',2),(140,'Project Management',4,'Project Management::Technical',10),(141,'Protocols (HTTP, TCP/IP, FTP, Cryptography)',4,'Protocols (HTTP, TCP/IP, FTP, Cryptography)::Technical',12),(142,'Provisioning',5,'Provisioning::Domain',15),(143,'Putty',4,'Putty::Technical',21),(144,'Python',4,'Python::Technical',9),(145,'Quality Center',4,'Quality Center::Technical',22),(146,'Quality Centre',4,'Quality Centre::Technical',21),(147,'Quality Management',4,'Quality Management::Technical',20),(148,'Quick Test Pro',4,'Quick Test Pro::Technical',21),(149,'RH-Linux',4,'RH-Linux::Technical',13),(150,'Rational Functional Tester',4,'Rational Functional Tester::Technical',21),(151,'Rational Quality Manager, Req Pro, Clear Quest',4,'Rational Quality Manager, Req Pro, Clear Quest::Technical',21),(152,'RedHat Enterprise Linux',4,'RedHat Enterprise Linux::Technical',13),(153,'Remedy',4,'Remedy::Technical',22),(154,'Risk Based Testing',4,'Risk Based Testing::Technical',18),(155,'Roaming',5,'Roaming::Domain',17),(156,'Role of Network Operations Centre (NOC)',5,'Role of Network Operations Centre (NOC)::Domain',14),(157,'SIGOS',4,'SIGOS::Technical',22),(158,'SOA Testing',4,'SOA Testing::Technical',19),(159,'SPP v8.0',4,'SPP v8.0::Technical',11),(160,'SQL / PL SQL',4,'SQL / PL SQL::Technical',7),(161,'SQL Developer',4,'SQL Developer::Technical',7),(162,'SQL Queries',4,'SQL Queries::Technical',7),(163,'SQL Server 2000 DBA',4,'SQL Server 2000 DBA::Technical',7),(164,'SQL Server Databases',4,'SQL Server Databases::Technical',7),(165,'Security Tools(HP WebInspect,HP Fortify,Android SDK, Android Bridge,Jd-gui,Dex-2-jar,Paros, Eclipse,Sql map,Burpsuite,IBM AppScan,Nessus, Web Scarab,Nmap,Acunetix,Brutus, ZAP, Wireshark, Open source scanners)',4,'Security Tools(HP WebInspect,HP Fortify,Android SDK, Android Bridge,Jd-gui,Dex-2-jar,Paros, Eclipse,Sql map,Burpsuite,IBM AppScan,Nessus, Web Scarab,Nmap,Acunetix,Brutus, ZAP, Wireshark, Open source scanners)::Technical',21),(166,'Seibel Sales and Ordering',4,'Seibel Sales and Ordering::Technical',5),(167,'Selenium',4,'Selenium::Technical',21),(168,'Self Service',5,'Self Service::Domain',2),(169,'Servers Management',4,'Servers Management::Technical',13),(170,'Service Management (QoS)',5,'Service Management (QoS)::Domain',14),(171,'Shared Services Model',4,'Shared Services Model::Technical',19),(172,'Shell Scripting',4,'Shell Scripting::Technical',9),(173,'Shell Scripting, Perl',4,'Shell Scripting, Perl::Technical',9),(174,'Siebel CRM 8.1.1.3',5,'Siebel CRM 8.1.1.3::Domain',2),(175,'Siebel CRM',4,'Siebel CRM::Technical',5),(176,'Siebel Integration Architecture and administration',5,'Siebel Integration Architecture and administration::Domain',2),(177,'Siebel VB v7.5',5,'Siebel VB v7.5::Domain',2),(178,'Siebel eScript v7.5',5,'Siebel eScript v7.5::Domain',2),(179,'Signalling SS#7 (ISUP, SCCP, MAP, CAP), GTP',4,'Signalling SS#7 (ISUP, SCCP, MAP, CAP), GTP::Technical',22),(180,'Solaris Admin',4,'Solaris Admin::Technical',13),(181,'Solaris',4,'Solaris::Technical',13),(182,'Spring',4,'Spring::Technical',9),(183,'Storage Management',4,'Storage Management::Technical',13),(184,'TADIG',4,'TADIG::Technical',22),(185,'TD57, IOT for TADIG',4,'TD57, IOT for TADIG::Technical',22),(186,'TIBCO Admin',4,'TIBCO Admin::Technical',11),(187,'TIBCO',4,'TIBCO::Technical',11),(188,'TOAD',4,'TOAD::Technical',7),(189,'TRU 64 Admin',4,'TRU 64 Admin::Technical',13),(190,'Telecom Network Management',4,'Telecom Network Management::Technical',12),(191,'Telecom Networks',4,'Telecom Networks::Technical',12),(192,'Test Automation Concepts',4,'Test Automation Concepts::Technical',19),(193,'Test Estimation',4,'Test Estimation::Technical',20),(194,'Test Management',4,'Test Management::Technical',20),(195,'Testing in Agile Projects',4,'Testing in Agile Projects::Technical',19),(196,'Threat Modeling',4,'Threat Modeling::Technical',19),(197,'Toad',4,'Toad::Technical',7),(198,'Tomcat Apache',4,'Tomcat Apache::Technical',13),(199,'Tracing Tools',4,'Tracing Tools::Technical',22),(200,'Troubleshooting and Performance Optimization',4,'Troubleshooting and Performance Optimization::Technical',16),(201,'Troubleshooting',4,'Troubleshooting::Technical',16),(202,'Tuxedo v10.3.0.0',4,'Tuxedo v10.3.0.0::Technical',11),(203,'UML',4,'UML::Technical',9),(204,'Unix Administration',4,'Unix Administration::Technical',13),(205,'Unix',4,'Unix::Technical',13),(206,'VISPL AT defined Reports',4,'VISPL AT defined Reports::Technical',20),(207,'VISPL AT defined Testing Deliverables',4,'VISPL AT defined Testing Deliverables::Technical',20),(208,'VISPL AT defined Testing Life Cycle and Processes',4,'VISPL AT defined Testing Life Cycle and Processes::Technical',20),(209,'Viewstar Enterprise 9.2',4,'Viewstar Enterprise 9.2::Technical',11),(210,'Virtual Switching System(VSS)',4,'Virtual Switching System(VSS)::Technical',12),(211,'Vmware',4,'Vmware::Technical',13),(212,'Vulnerability Assessment',4,'Vulnerability Assessment::Technical',19),(213,'Web SSO',4,'Web SSO::Technical',5),(214,'Web Services(SOAP)',4,'Web Services(SOAP)::Technical',9),(215,'Web Technologies (HTML, ASP, Portal, PHP)',4,'Web Technologies (HTML, ASP, Portal, PHP)::Technical',9),(216,'WebLogic Application Server 10.3.0',4,'WebLogic Application Server 10.3.0::Technical',11),(217,'WebMethods Enterprise Adapter Manager v4.6',4,'WebMethods Enterprise Adapter Manager v4.6::Technical',11),(218,'WebMethods',4,'WebMethods::Technical',11),(219,'Weblogic 8.1',4,'Weblogic 8.1::Technical',11),(220,'Weblogic 9.2',4,'Weblogic 9.2::Technical',11),(221,'Weblogic',4,'Weblogic::Technical',13),(222,'Webmethods Enterprise Integrator v4.6',4,'Webmethods Enterprise Integrator v4.6::Technical',11),(223,'Webserver(HTTP, HTTPD)',4,'Webserver(HTTP, HTTPD)::Technical',13),(224,'Webservices',4,'Webservices::Technical',11),(225,'Windows 2000, 2003, 2008, XP Advanced Server',4,'Windows 2000, 2003, 2008, XP Advanced Server::Technical',13),(226,'Windows',4,'Windows::Technical',13),(227,'Wintel Administration',4,'Wintel Administration::Technical',13),(228,'Workflow Management',4,'Workflow Management::Technical',11),(229,'XML,XSLT',4,'XML,XSLT::Technical',9),(230,'e.Report Designer Professional v6',4,'e.Report Designer Professional v6::Technical',11),(231,'e.Reporting v6',4,'e.Reporting v6::Technical',11),(232,'oracle Identity Manager 11gR1',4,'oracle Identity Manager 11gR1::Technical',11),(233,'webMethods Broker v5.0, v6.1',4,'webMethods Broker v5.0, v6.1::Technical',11),(234,'webMethods Developer v6.1',4,'webMethods Developer v6.1::Technical',11),(235,'webMethods Document Tracker v4.5',4,'webMethods Document Tracker v4.5::Technical',11),(236,'webMethods Integration Server v6.1',4,'webMethods Integration Server v6.1::Technical',11),(237,'webMethods Oracle Adapter v4.0',4,'webMethods Oracle Adapter v4.0::Technical',11),(238,'webMethods Siebel Adapter v4.2',4,'webMethods Siebel Adapter v4.2::Technical',11),(239,'weblogic 11g',4,'weblogic 11g::Technical',11);
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-02 18:12:37
