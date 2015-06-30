-- MySQL dump 10.13  Distrib 5.6.24, for osx10.8 (x86_64)
--
-- Host: localhost    Database: SOCIALMOMS
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Current Database: `SOCIALMOMS`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `SOCIALMOMS` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `SOCIALMOMS`;

--
-- Table structure for table `Person_interest`
--

DROP TABLE IF EXISTS `Person_interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person_interest` (
  `person_id` int(11) NOT NULL,
  `interest_id` int(11) NOT NULL,
  `privacy_level` int(11) DEFAULT '0',
  UNIQUE KEY `person_id` (`person_id`,`interest_id`),
  KEY `interest_id` (`interest_id`),
  CONSTRAINT `person_interest_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `person_interest_ibfk_2` FOREIGN KEY (`interest_id`) REFERENCES `interests` (`interest_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Person_interest`
--

LOCK TABLES `Person_interest` WRITE;
/*!40000 ALTER TABLE `Person_interest` DISABLE KEYS */;
/*!40000 ALTER TABLE `Person_interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Person_posts`
--

DROP TABLE IF EXISTS `Person_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person_posts` (
  `person_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `date_posted` date NOT NULL,
  `privacy` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `person_id` (`person_id`,`post_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `person_posts_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `person_posts_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Person_posts`
--

LOCK TABLES `Person_posts` WRITE;
/*!40000 ALTER TABLE `Person_posts` DISABLE KEYS */;
INSERT INTO `Person_posts` VALUES (1,4,'2015-05-13',0),(1,5,'2015-05-13',0),(1,6,'2015-05-13',0),(1,7,'2015-05-13',0),(1,8,'2015-05-13',0),(1,14,'2015-05-13',0),(6,10,'2015-05-13',0),(8,12,'2015-05-13',0),(10,13,'2015-05-13',0),(11,11,'2015-05-13',0);
/*!40000 ALTER TABLE `Person_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child`
--

DROP TABLE IF EXISTS `child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child` (
  `child_id` int(11) NOT NULL AUTO_INCREMENT,
  `child_name` varchar(15) DEFAULT NULL,
  `Birthday` date NOT NULL,
  `gender` varchar(1) NOT NULL,
  PRIMARY KEY (`child_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child`
--

LOCK TABLES `child` WRITE;
/*!40000 ALTER TABLE `child` DISABLE KEYS */;
INSERT INTO `child` VALUES (1,'John','1991-04-11','M'),(2,'John','1991-04-11','M'),(3,'John','1991-04-11','M'),(4,'Kate','1990-08-28','F'),(5,'Kate','1990-08-28','F'),(6,'Kate','1990-08-28','F'),(7,'John','1991-04-11','M'),(8,'John','1991-04-11','M'),(9,'Kate','1991-08-28','F'),(10,'child','2010-01-01','M'),(11,'child2','2010-12-25','M'),(12,'John','1991-04-11','M'),(13,'John','1991-04-11','M'),(14,'John','1991-04-11','M'),(15,'Billy','2000-03-02','M');
/*!40000 ALTER TABLE `child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interests`
--

DROP TABLE IF EXISTS `interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interests` (
  `interest_id` int(11) NOT NULL AUTO_INCREMENT,
  `interest_name` varchar(15) NOT NULL,
  PRIMARY KEY (`interest_id`),
  UNIQUE KEY `interest_name` (`interest_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interests`
--

LOCK TABLES `interests` WRITE;
/*!40000 ALTER TABLE `interests` DISABLE KEYS */;
INSERT INTO `interests` VALUES (4,'Cooking'),(3,'Soccer'),(1,'Test'),(2,'Things');
/*!40000 ALTER TABLE `interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `person_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Steven','USA','New Jersey','West Long Branch'),(6,'Joe','USA','California','San Francisco'),(7,'Kyle','USA','California','San Fransico'),(8,'Bob','USA','New Jersey','Chatham'),(9,'Joe','USA','California','LA'),(10,'Kyle','USA','California','San Fransico'),(11,'Bob','USA','New Jersey','Chatham'),(12,'Joe','USA','California','LA'),(13,'Kyle','USA','California','San Fransico'),(14,'Bob','USA','New Jersey','Chatham'),(15,'jTextField1','jTextField2','jTextField3','jTextField4'),(16,'Dave','USA','New Jersey','New Providence'),(17,'John','USA','New York','New York');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_child`
--

DROP TABLE IF EXISTS `person_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_child` (
  `person_id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  UNIQUE KEY `person_id` (`person_id`,`child_id`),
  KEY `child_id` (`child_id`),
  CONSTRAINT `person_child_ibfk_3` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON UPDATE CASCADE,
  CONSTRAINT `person_child_ibfk_4` FOREIGN KEY (`child_id`) REFERENCES `child` (`child_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_child`
--

LOCK TABLES `person_child` WRITE;
/*!40000 ALTER TABLE `person_child` DISABLE KEYS */;
INSERT INTO `person_child` VALUES (1,13),(16,14),(1,15);
/*!40000 ALTER TABLE `person_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `contents` text,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'test','this is a test post'),(2,'test','test content'),(3,'title','content'),(4,'test','content\nEdited content'),(5,'another test','this is another test'),(6,'Testing','another interest test'),(7,'Testing','test again'),(8,'Testing','questing'),(9,'quick','hope this works'),(10,'TRY AGAIN','AGAIN'),(11,'Test Post','content'),(12,'test','content'),(13,'title','content'),(14,'interests test AGAIN','test again');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_interests`
--

DROP TABLE IF EXISTS `posts_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_interests` (
  `post_id` int(11) DEFAULT NULL,
  `interest_id` int(11) DEFAULT NULL,
  UNIQUE KEY `post_id` (`post_id`,`interest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_interests`
--

LOCK TABLES `posts_interests` WRITE;
/*!40000 ALTER TABLE `posts_interests` DISABLE KEYS */;
INSERT INTO `posts_interests` VALUES (-1,0),(1,0),(2,0),(3,0),(4,4),(5,0),(6,2),(7,0),(8,2),(9,0),(10,0),(11,0),(12,0),(13,0),(14,4);
/*!40000 ALTER TABLE `posts_interests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-30  7:28:12
