-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `badmsg`
--

DROP TABLE IF EXISTS `badmsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `badmsg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `msg` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badmsg`
--

LOCK TABLES `badmsg` WRITE;
/*!40000 ALTER TABLE `badmsg` DISABLE KEYS */;
INSERT INTO `badmsg` VALUES (5,'Corrupt Company','Hello, we have a very profitable project that we believe you may be interested in participating in.'),(6,'Government Official','Please tell me more details.'),(12,'Corrupt Company','This project requires government support and funding, and we hope to work with you. We can provide some \"sponsorship\" to ensure that the project receives sufficient funding and support.'),(13,'Government Official',' I need more detailed information. What do you mean by \"sponsorship\"?'),(14,'Corrupt Company','These are some \"returns,\" and you can get certain profits, as well as other benefits after the project succeeds.'),(15,'Government Official','I need some time to consider. This seems somewhat unethical and illegal.'),(16,'Corrupt Company','We can ensure that this is completely legal. In addition, this is a standard practice in the industry.'),(17,'Government Official','Well, we can continue to discuss this project. However, I need to maintain transparency and fairness to ensure that all decisions are for the public interest.'),(18,'Corrupt Company','Of course, we also hope that the project can bring benefits to the public. Thank you for your cooperation, and we can continue to communicate detailed cooperation plans.');
/*!40000 ALTER TABLE `badmsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (53,'asdfghjkl','zxcvbnm,.'),(54,'Emma','R0s3bud7'),(55,'Liam','Jckpot9'),(56,'Olivia','Sunsh1ne8'),(57,'Noah','Cptain10'),(58,'Ava','B00tb00t9'),(59,'Ethan','M0nkey5'),(60,'Sophia','Dncing4'),(61,'Mason','Trveler8'),(62,'Isabella','Mgic8'),(63,'Lucas','F1rework9'),(64,'Mia','B3autiful6'),(65,'Jackson','L0vebird7'),(66,'Charlotte','Sn0wflake9'),(67,'Aiden','D1nosaur8'),(68,'Amelia','Pssword9'),(69,'Logan','Hppyday7'),(70,'Harper','Starlight8'),(71,'Elijah','R0cketman9'),(72,'Abigail','S3cret9'),(73,'Caleb','Pradise10'),(74,'Emily','B3llflower8'),(75,'Mason','Rinbow9'),(76,'Elizabeth','Cndyland7'),(77,'Oliver','T3nnisball10'),(78,'Avery','Cndlelight9'),(79,'Stephanie','P0ssword1234'),(80,'Nicholas','s0mePa55word'),(81,'Melanie','P0ssword5678'),(82,'Gregory','mypa55word'),(83,'Samantha','pa55word123'),(84,'William','P0ssword7890'),(85,'Abigail','0therpa55word'),(86,'Brandon','mypa55word123'),(87,'Christine','pa55word456'),(88,'David','Pa55word1234'),(89,'Elizabeth','myPa55word'),(90,'Jonathan','Pa55word5678'),(91,'Katherine','pa55word789'),(92,'Lauren','Pa55word0987'),(93,'Matthew','myPa55word123'),(94,'Natalie','Pa55word4567'),(95,'Olivia','pa55word890'),(96,'Patrick','Pa55word567'),(97,'Rachel','mypa55word890'),(98,'Scott','Pa55word234'),(99,'Tiffany','0therPa55word'),(100,'Victoria','Pa55word7890'),(101,'Zachary','myPa55word567'),(102,'Alexandra','Pa55word12345'),(103,'Benjamin','mypa55word678'),(104,'Courtney','Pa55word901'),(105,'Stephanie','P0ssword1234'),(106,'Nicholas','s0mePa55word'),(107,'Melanie','P0ssword5678'),(108,'Gregory','mypa55word'),(109,'Samantha','pa55word123'),(110,'William','P0ssword7890'),(111,'Abigail','0therpa55word'),(112,'Brandon','mypa55word123'),(113,'Christine','pa55word456'),(114,'David','Pa55word1234'),(115,'Elizabeth','myPa55word'),(116,'Jonathan','Pa55word5678'),(117,'Katherine','pa55word789'),(118,'Lauren','Pa55word0987'),(119,'Matthew','myPa55word123'),(120,'Natalie','Pa55word4567'),(121,'Olivia','pa55word890'),(122,'Patrick','Pa55word567'),(123,'Rachel','mypa55word890'),(124,'Scott','Pa55word234'),(125,'Tiffany','0therPa55word'),(126,'Victoria','Pa55word7890'),(127,'Zachary','myPa55word567'),(128,'Alexandra','Pa55word12345'),(129,'Benjamin','mypa55word678'),(130,'Courtney','Pa55word901'),(131,'Stephanie','P0ssword1234'),(132,'Nicholas','s0mePa55word'),(133,'Melanie','P0ssword5678'),(134,'Gregory','mypa55word'),(135,'Samantha','pa55word123'),(136,'William','P0ssword7890'),(137,'Abigail','0therpa55word'),(138,'Brandon','mypa55word123'),(139,'Christine','pa55word456'),(140,'David','Pa55word1234'),(141,'Elizabeth','myPa55word'),(142,'Jonathan','Pa55word5678'),(143,'Katherine','pa55word789'),(144,'Lauren','Pa55word0987'),(145,'Matthew','myPa55word123'),(146,'Natalie','Pa55word4567'),(147,'Olivia','pa55word890'),(148,'Patrick','Pa55word567'),(149,'Rachel','mypa55word890'),(150,'Scott','Pa55word234'),(151,'Tiffany','0therPa55word'),(152,'Victoria','Pa55word7890'),(153,'Zachary','myPa55word567'),(154,'Alexandra','Pa55word12345'),(155,'Benjamin','mypa55word678'),(156,'Courtney','Pa55word901'),(157,'A1D8M4I5N2','qwertyuiop'),(158,'Stephanie','P0ssword1234'),(159,'Nicholas','s0mePa55word'),(160,'Melanie','P0ssword5678'),(161,'Gregory','mypa55word'),(162,'Samantha','pa55word123'),(163,'William','P0ssword7890'),(164,'Abigail','0therpa55word'),(165,'Brandon','mypa55word123'),(166,'Christine','pa55word456'),(167,'David','Pa55word1234'),(168,'Elizabeth','myPa55word'),(169,'Jonathan','Pa55word5678'),(170,'Katherine','pa55word789'),(171,'Lauren','Pa55word0987'),(172,'Matthew','myPa55word123'),(173,'Natalie','Pa55word4567'),(174,'Olivia','pa55word890'),(175,'Patrick','Pa55word567'),(176,'Rachel','mypa55word890'),(177,'Scott','Pa55word234'),(178,'Tiffany','0therPa55word'),(179,'Victoria','Pa55word7890'),(180,'Zachary','myPa55word567'),(181,'Alexandra','Pa55word12345'),(182,'Benjamin','mypa55word678'),(183,'Courtney','Pa55word901'),(184,'A1D8M4I5N2','qwertyuiop'),(185,'Stephanie','P0ssword1234'),(186,'Nicholas','s0mePa55word'),(187,'Melanie','P0ssword5678'),(188,'Gregory','mypa55word'),(189,'Samantha','pa55word123'),(190,'William','P0ssword7890'),(191,'Abigail','0therpa55word'),(192,'Brandon','mypa55word123'),(193,'Christine','pa55word456'),(194,'David','Pa55word1234'),(195,'Elizabeth','myPa55word'),(196,'Jonathan','Pa55word5678'),(197,'Katherine','pa55word789'),(198,'Lauren','Pa55word0987'),(199,'Matthew','myPa55word123'),(200,'Natalie','Pa55word4567'),(201,'Olivia','pa55word890'),(202,'Patrick','Pa55word567'),(203,'Rachel','mypa55word890'),(204,'Scott','Pa55word234'),(205,'Tiffany','0therPa55word'),(206,'Victoria','Pa55word7890'),(207,'Zachary','myPa55word567'),(208,'Alexandra','Pa55word12345'),(209,'Benjamin','mypa55word678'),(210,'Courtney','Pa55word901'),(211,'Stephanie','P0ssword1234'),(212,'Nicholas','s0mePa55word'),(213,'Melanie','P0ssword5678'),(214,'Gregory','mypa55word'),(215,'Samantha','pa55word123'),(216,'William','P0ssword7890'),(217,'Abigail','0therpa55word'),(218,'Brandon','mypa55word123'),(219,'Christine','pa55word456'),(220,'David','Pa55word1234'),(221,'Elizabeth','myPa55word'),(222,'Jonathan','Pa55word5678'),(223,'Katherine','pa55word789'),(224,'Lauren','Pa55word0987'),(225,'Matthew','myPa55word123'),(226,'Natalie','Pa55word4567'),(227,'Olivia','pa55word890'),(228,'Patrick','Pa55word567'),(229,'Rachel','mypa55word890'),(230,'Scott','Pa55word234'),(231,'Tiffany','0therPa55word'),(232,'Victoria','Pa55word7890'),(233,'Zachary','myPa55word567'),(234,'Alexandra','Pa55word12345'),(235,'Benjamin','mypa55word678'),(236,'Courtney','Pa55word901');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msg`
--

DROP TABLE IF EXISTS `msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `msg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `msg` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msg`
--

LOCK TABLES `msg` WRITE;
/*!40000 ALTER TABLE `msg` DISABLE KEYS */;
INSERT INTO `msg` VALUES (179,'Tom','Hi everyone, how are things progressing with our work lately?'),(180,'Kate','Our project is going according to plan and progressing smoothly.'),(181,'John','Yes, we have completed some key tasks and it looks promising.'),(182,'Lucy','I have a fun idea. We could play some games at the office gathering next month. What do you think?'),(183,'Tom','That sounds great! We can have some relaxing moments and relieve work stress. Does anyone have other good ideas?'),(185,'John','We can organize a team-building activity to help improve teamwork skills.'),(186,'Kate','That\'s a good idea. We can participate in some team sports or challenges, which will help improve team cohesion.'),(187,'Lucy','That sounds awesome! We can hold these activities outside of work hours so everyone can participate.'),(188,'Tom','Okay, we will discuss these ideas further at the next meeting. Are there any other questions or suggestions?'),(189,'John','Our office needs more plants and green spaces. This will help improve the working environment.'),(190,'Kate','That\'s a good point. We can add some plants and flowers to the office.'),(191,'Lucy','We can also add some fragrances or candles to make the office more comfortable.'),(192,'Tom','Okay, we can consider making some small changes in the office to improve the working environment. Thanks for everyone\'s suggestions and participation.');
/*!40000 ALTER TABLE `msg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-04  7:37:44
