-- MySQL dump 10.13  Distrib 5.6.17, for osx10.7 (x86_64)
--
-- Host: localhost    Database: vb_site
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `callbacks`
--

DROP TABLE IF EXISTS `callbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `callbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `call_surname` varchar(255) DEFAULT NULL,
  `call_name` varchar(255) DEFAULT NULL,
  `call_second_name` varchar(255) DEFAULT NULL,
  `call_email` varchar(255) DEFAULT NULL,
  `call_phone` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `callbacks`
--

LOCK TABLES `callbacks` WRITE;
/*!40000 ALTER TABLE `callbacks` DISABLE KEYS */;
INSERT INTO `callbacks` VALUES (1,'AWDAW','WDA','wadaw','wadaw','wadaw','2014-06-27 07:14:27','2014-06-27 07:14:27'),(2,'awdaw','wadaw','wadaw','awdaw','awdaw','2014-06-27 08:32:31','2014-06-27 08:32:31'),(3,'awdaw','awdaw','awdaw','wad','awd','2014-06-27 08:34:55','2014-06-27 08:34:55'),(4,'','','','','','2014-06-27 18:38:11','2014-06-27 18:38:11'),(5,'Сокольцов','Вадим','Юрьевич ','vforvad@gmail.com','89214438239','2014-06-27 18:47:16','2014-06-27 18:47:16'),(6,'dadaw','wadaw','awdaw','awdaw','awdwa','2014-06-28 13:54:38','2014-06-28 13:54:38'),(7,'awdaw','adaw','awda','ad','awd','2014-06-28 13:55:16','2014-06-28 13:55:16');
/*!40000 ALTER TABLE `callbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_informations`
--

DROP TABLE IF EXISTS `contact_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `actual_adress` text,
  `phone_adress` int(11) DEFAULT NULL,
  `contact_person_surname` varchar(50) DEFAULT NULL,
  `contact_person_name` varchar(50) DEFAULT NULL,
  `contact_person_secondname` varchar(50) DEFAULT NULL,
  `contact_person_phone` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_informations`
--

LOCK TABLES `contact_informations` WRITE;
/*!40000 ALTER TABLE `contact_informations` DISABLE KEYS */;
INSERT INTO `contact_informations` VALUES (1,78,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw'),(2,79,NULL,NULL,NULL,NULL,NULL,NULL,'awdawd'),(3,80,NULL,NULL,NULL,NULL,NULL,NULL,'wadawda'),(4,81,NULL,NULL,NULL,NULL,NULL,NULL,'awdawda'),(5,82,NULL,NULL,NULL,NULL,NULL,NULL,'llawndlaw'),(6,83,NULL,NULL,NULL,NULL,NULL,NULL,'wlakdnalwk'),(7,84,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw'),(8,85,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw'),(9,86,NULL,NULL,NULL,NULL,NULL,NULL,'awlkdaklw'),(10,87,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw'),(11,88,NULL,NULL,NULL,NULL,NULL,NULL,'awdawd'),(12,89,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw'),(13,91,NULL,NULL,NULL,NULL,NULL,NULL,'фцвфц'),(14,93,NULL,NULL,NULL,NULL,NULL,NULL,'фцвфц'),(15,94,NULL,NULL,NULL,NULL,NULL,NULL,'akwjdnawkj'),(16,95,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw'),(17,100,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw'),(18,101,NULL,NULL,NULL,NULL,NULL,NULL,'wwadaw'),(19,104,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw'),(20,107,'awdawd',123456,'лфцовтф','флцовтфц','дфцлтвдфцт',89214438239,'vforvad@gmail.com'),(21,108,NULL,NULL,NULL,NULL,NULL,NULL,'vforvad@gmail.com'),(22,109,NULL,NULL,NULL,NULL,NULL,NULL,'vforvad@gmail.com'),(23,111,'',NULL,'','','',NULL,'awdaw'),(24,112,NULL,NULL,NULL,NULL,NULL,NULL,'vforvad@gmail.com'),(25,113,NULL,NULL,NULL,NULL,NULL,NULL,''),(26,114,NULL,NULL,NULL,NULL,NULL,NULL,'vforvad@gmail.com'),(27,115,NULL,NULL,NULL,NULL,NULL,NULL,'vforvad@gmail.com'),(28,116,NULL,NULL,NULL,NULL,NULL,NULL,''),(29,117,NULL,NULL,NULL,NULL,NULL,NULL,'vforvad@gmail.com'),(30,121,'awdawd',123456,'лфцовтф','флцовтфц','дфцлтвдфцт',89214438239,'vforvad@gmail.com'),(41,132,'dawdawdaw',123456,'дфцльвфдц','фцдьвфдц','фцдвьцфдв',89214438239,'vforvad@gmail.com'),(42,16,'',NULL,'','','',NULL,''),(43,1,'',NULL,'','','',NULL,''),(45,134,'',NULL,'','','',NULL,'vforvad@gmail.com'),(46,135,'',NULL,'','','',NULL,'vforvad@gmail.com'),(47,136,'',NULL,'','','',NULL,'vforvad@gmail.com');
/*!40000 ALTER TABLE `contact_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_message` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_messages`
--

LOCK TABLES `contact_messages` WRITE;
/*!40000 ALTER TABLE `contact_messages` DISABLE KEYS */;
INSERT INTO `contact_messages` VALUES (1,'awdaw','awdaw','wadaw','awdaw','2014-06-26 06:21:10','2014-06-26 06:21:10');
/*!40000 ALTER TABLE `contact_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contribution_accounts`
--

DROP TABLE IF EXISTS `contribution_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contribution_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deposit_id` int(11) NOT NULL,
  `operation_summ` int(15) NOT NULL,
  `removed_brought` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contribution_accounts`
--

LOCK TABLES `contribution_accounts` WRITE;
/*!40000 ALTER TABLE `contribution_accounts` DISABLE KEYS */;
INSERT INTO `contribution_accounts` VALUES (1,10,100000,0,'2014-08-10 19:50:43','2014-08-10 19:50:43'),(2,11,100000,0,'2014-08-10 19:52:49','2014-08-10 19:52:49');
/*!40000 ALTER TABLE `contribution_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposits`
--

DROP TABLE IF EXISTS `deposits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deposits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `deposit_current_summ` varchar(256) NOT NULL,
  `percent_id` int(11) NOT NULL,
  `response` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposits`
--

LOCK TABLES `deposits` WRITE;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
INSERT INTO `deposits` VALUES (1,16,'12312412',7,NULL,'2014-07-12 21:21:15','2014-07-12 21:21:15'),(2,17,'12312412',7,NULL,'2014-07-12 21:23:34','2014-07-12 21:23:34'),(3,23,'2600000',7,NULL,'2014-07-13 11:40:41','2014-07-13 11:40:41'),(4,24,'2100000',7,NULL,'2014-07-13 11:42:54','2014-07-13 11:42:54'),(5,25,'1850000',7,NULL,'2014-07-13 12:12:13','2014-07-13 12:12:13'),(6,26,'1850000',7,NULL,'2014-07-13 19:37:16','2014-07-13 19:37:16'),(7,33,'2100000',7,NULL,'2014-07-17 21:33:10','2014-07-17 21:33:10'),(8,137,'2350000',7,NULL,'2014-08-10 15:18:40','2014-08-10 15:18:40'),(9,132,'2100000',15,NULL,'2014-08-10 18:35:16','2014-08-10 18:35:16'),(10,132,'2100000',15,NULL,'2014-08-10 18:36:12','2014-08-10 18:36:12'),(11,132,'1900000',15,NULL,'2014-08-10 18:36:17','2014-08-10 19:52:49'),(12,132,'2100000',15,NULL,'2014-08-10 18:38:56','2014-08-10 18:38:56');
/*!40000 ALTER TABLE `deposits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educations`
--

DROP TABLE IF EXISTS `educations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `educations` (
  `id` int(11) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educations`
--

LOCK TABLES `educations` WRITE;
/*!40000 ALTER TABLE `educations` DISABLE KEYS */;
INSERT INTO `educations` VALUES (1,'Высшее');
/*!40000 ALTER TABLE `educations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `answer` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (4,'awlkdalkwmd','lwakmdlkamw','2014-06-17 20:26:37','2014-06-17 20:26:37');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_author` varchar(255) DEFAULT NULL,
  `feedback_text` text,
  `feedback_for` int(11) DEFAULT '0',
  `feedback_against` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES (1,'awdaw','awdaw',0,0,'2014-06-13 21:48:33','2014-06-13 21:48:33'),(2,'Вадим','Годнота!',0,0,'2014-06-13 22:46:25','2014-06-13 22:46:25'),(3,'Ашот','Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота',0,0,'2014-06-13 23:21:59','2014-06-13 23:21:59'),(4,'Фцвфц',' Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота',0,0,'2014-06-13 23:22:20','2014-06-13 23:22:20'),(5,' Отзыв Ашота',' Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота',0,0,'2014-06-13 23:22:29','2014-06-13 23:22:29'),(6,'Вадим','Годнота!',0,0,'2014-06-24 20:30:45','2014-06-24 20:30:45'),(7,'фцвфц','фцвфц',0,0,'2014-06-25 20:33:09','2014-06-25 20:33:09'),(8,'Очень не очень','фцдвфцодлвофц',0,0,'2014-06-27 15:12:45','2014-06-27 15:12:45');
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_repayments`
--

DROP TABLE IF EXISTS `loan_repayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_repayments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_id` int(11) NOT NULL,
  `granted_summ` int(15) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_repayments`
--

LOCK TABLES `loan_repayments` WRITE;
/*!40000 ALTER TABLE `loan_repayments` DISABLE KEYS */;
INSERT INTO `loan_repayments` VALUES (1,70,1000,'2014-08-10 12:14:43','2014-08-10 12:14:43'),(2,70,10000,'2014-08-10 12:19:06','2014-08-10 12:19:06'),(3,70,20000,'2014-08-10 13:44:47','2014-08-10 13:44:47'),(11,70,29000,'2014-08-12 20:57:06','2014-08-12 20:57:06');
/*!40000 ALTER TABLE `loan_repayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `loan_sum` varchar(255) NOT NULL,
  `begin_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `percent_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `response` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` VALUES (7,69,'67500','2014-07-18 20:25:27','2015-07-18 20:25:27',NULL,0,NULL),(16,78,'58500','2014-07-18 20:30:57','2015-01-18 20:30:57',NULL,0,NULL),(17,79,'64500','2014-07-18 20:38:44','2015-07-18 20:38:44',NULL,0,NULL),(18,80,'73500','2014-07-19 14:46:36','2015-07-19 14:46:36',NULL,0,NULL),(19,81,'49500','2014-07-19 14:47:07','2015-01-19 14:47:07',NULL,0,NULL),(20,82,'81000','2014-07-19 14:57:46','2015-10-19 14:57:46',NULL,0,NULL),(21,83,'69000','2014-07-19 15:14:05','2015-07-19 15:14:05',NULL,0,NULL),(22,84,'67500','2014-07-19 17:16:36','2015-07-19 17:16:36',NULL,0,NULL),(23,85,'63000','2014-07-20 11:18:47','2015-07-20 11:18:47',NULL,0,NULL),(24,86,'66000','2014-07-20 11:22:05','2015-07-20 11:22:05',NULL,0,NULL),(25,87,'67500','2014-07-20 11:23:04','2015-07-20 11:23:04',NULL,0,NULL),(26,88,'69000','2014-07-20 11:24:14','2015-07-20 11:24:14',NULL,0,NULL),(27,89,'64500','2014-07-20 11:27:56','2015-07-20 11:27:56',NULL,0,NULL),(29,91,'67500','2014-07-20 11:33:16','2015-07-20 11:33:16',NULL,0,NULL),(31,93,'78000','2014-07-20 11:33:38','2015-10-20 11:33:38',NULL,0,NULL),(32,94,'66000','2014-07-20 12:37:56','2015-07-20 12:37:56',NULL,0,NULL),(33,95,'70500','2014-07-20 12:40:15','2015-07-20 12:40:15',NULL,0,NULL),(38,100,'64500','2014-07-20 12:47:13','2015-07-20 12:47:13',NULL,0,NULL),(39,101,'60000','2014-07-20 12:49:56','2015-01-20 12:49:56',NULL,0,NULL),(42,104,'73500','2014-07-20 12:50:22','2015-07-20 12:50:22',NULL,0,NULL),(45,107,'22500','2014-07-21 21:15:12','2014-10-21 21:15:12',NULL,0,NULL),(46,108,'57000','2014-07-26 19:43:17','2015-01-26 19:43:17',7,0,NULL),(47,109,'57000','2014-07-26 19:43:17','2015-01-26 19:43:17',NULL,0,NULL),(49,111,'70500','2014-07-26 21:14:28','2015-07-26 21:14:28',NULL,0,NULL),(50,112,'70500','2014-07-27 20:07:10','2015-07-27 20:07:10',NULL,0,NULL),(51,113,'69000','2014-07-27 20:09:30','2015-07-27 20:09:30',NULL,0,NULL),(52,114,'63000','2014-07-27 20:09:43','2015-07-27 20:09:43',NULL,0,NULL),(53,115,'60000','2014-07-27 20:11:15','2015-01-27 20:11:15',NULL,0,NULL),(54,116,'64500','2014-07-27 20:25:48','2015-07-27 20:25:48',NULL,0,NULL),(55,117,'76500','2014-07-27 20:26:25','2015-10-27 20:26:25',NULL,0,NULL),(59,121,'51000','2014-07-31 21:02:16','2015-01-31 21:02:16',7,0,NULL),(70,132,'58500','2014-08-04 20:57:21','2015-02-04 20:57:21',7,1,1),(72,134,'22500','2014-08-10 07:17:31','2014-11-10 07:17:31',NULL,0,NULL),(73,135,'22500','2014-08-10 07:19:30','2014-11-10 07:19:30',NULL,0,NULL),(74,136,'22500','2014-08-10 07:19:30','2014-11-10 07:19:30',NULL,0,NULL);
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nationalities`
--

DROP TABLE IF EXISTS `nationalities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nationalities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationalities`
--

LOCK TABLES `nationalities` WRITE;
/*!40000 ALTER TABLE `nationalities` DISABLE KEYS */;
INSERT INTO `nationalities` VALUES (1,'Русский'),(2,'Русский');
/*!40000 ALTER TABLE `nationalities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partner_title` varchar(255) DEFAULT NULL,
  `partner_description` text,
  `partner_url` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'ОАО \"Газпром\"','Бла-бла-бла, что за хуйня?!','http://vk.com',1,'umpbmy0rkW4.jpg','image/jpeg',29162,'2014-06-17 17:06:02','2014-06-17 17:06:02','2014-06-17 19:15:08');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passports`
--

DROP TABLE IF EXISTS `passports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pasport_seria` int(11) DEFAULT NULL,
  `pasport_number` int(11) DEFAULT NULL,
  `pasport_when` date DEFAULT NULL,
  `pasport_where` text,
  `pasport_code` int(11) DEFAULT NULL,
  `definite_registration` text,
  `old_pasport_seria` int(11) DEFAULT NULL,
  `old_pasport_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passports`
--

LOCK TABLES `passports` WRITE;
/*!40000 ALTER TABLE `passports` DISABLE KEYS */;
INSERT INTO `passports` VALUES (1,93,1234,1234,'2014-09-10','цвфц',1234456,'фуцвфцвфц',123455,123456),(2,94,23242,1234,'2014-09-10','awdawda',1234456,'adwadaw',123455,123456),(3,95,1234,1234,'2014-09-10','awdawda',1234456,'awd',123455,123456),(4,100,1234,1234,'2014-09-10','awdawda',1234456,'awalwnklawd',123455,123456),(7,104,1234,1234,'2014-09-10','awdawda',1234456,'awda',123455,123456),(10,107,1234,1234,'2014-09-10','awdawda',1234456,'awalwnklawd',123455,123456),(12,111,1234,1234,'2014-09-10','awdawda',1234456,'awalwnklawd',123455,123456),(13,121,1234,1234,'2014-09-10','awdawda',1234456,'awalwnklawd',123455,123456),(24,132,1234,12345,'2009-07-08','awdawdaw',12345,'awdawdaw',1234,1234),(27,16,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(28,1,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(30,134,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(31,135,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(32,136,NULL,NULL,NULL,'',NULL,'',NULL,NULL);
/*!40000 ALTER TABLE `passports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `percents`
--

DROP TABLE IF EXISTS `percents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `percents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` double NOT NULL,
  `begin_date` date NOT NULL,
  `end_date` date NOT NULL,
  `max_summ` int(11) NOT NULL,
  `min_summ` int(11) NOT NULL,
  `max_time` int(11) NOT NULL,
  `min_time` int(11) NOT NULL,
  `loan_or_deposit` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `percents`
--

LOCK TABLES `percents` WRITE;
/*!40000 ALTER TABLE `percents` DISABLE KEYS */;
INSERT INTO `percents` VALUES (1,0,'2011-09-12','2015-11-12',90000,15000,18,6,0),(2,0,'2011-09-12','2015-11-12',90000,15000,18,6,1),(3,0,'2011-09-12','2015-11-12',90000,15000,18,6,0),(4,0,'2011-09-12','2015-11-12',90000,15000,18,6,0),(5,0,'2011-09-12','2015-11-12',90000,15000,18,6,0),(6,0,'2011-09-12','2015-11-12',90000,15000,18,6,0),(7,0.42,'2011-09-12','2015-11-12',90000,15000,12,6,0);
/*!40000 ALTER TABLE `percents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relashionships`
--

DROP TABLE IF EXISTS `relashionships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relashionships` (
  `id` int(11) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relashionships`
--

LOCK TABLES `relashionships` WRITE;
/*!40000 ALTER TABLE `relashionships` DISABLE KEYS */;
INSERT INTO `relashionships` VALUES (1,'Не женат');
/*!40000 ALTER TABLE `relashionships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relative_degree`
--

DROP TABLE IF EXISTS `relative_degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relative_degree` (
  `relationship_degree_id` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relative_degree`
--

LOCK TABLES `relative_degree` WRITE;
/*!40000 ALTER TABLE `relative_degree` DISABLE KEYS */;
/*!40000 ALTER TABLE `relative_degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relatives`
--

DROP TABLE IF EXISTS `relatives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relatives` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `secondname` varchar(50) NOT NULL,
  `relative_degree_id` int(11) NOT NULL,
  `phone` int(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relatives`
--

LOCK TABLES `relatives` WRITE;
/*!40000 ALTER TABLE `relatives` DISABLE KEYS */;
/*!40000 ALTER TABLE `relatives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_contracts`
--

DROP TABLE IF EXISTS `role_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_contracts` (
  `user_id` int(11) DEFAULT NULL,
  `rank_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `military_unit` text,
  `unit_address` text,
  `duty_phone` int(21) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_contracts`
--

LOCK TABLES `role_contracts` WRITE;
/*!40000 ALTER TABLE `role_contracts` DISABLE KEYS */;
INSERT INTO `role_contracts` VALUES (132,NULL,NULL,'','',NULL,1),(134,NULL,NULL,'','',NULL,2),(135,NULL,NULL,'','',NULL,3),(136,NULL,NULL,'','',NULL,4);
/*!40000 ALTER TABLE `role_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_kursants`
--

DROP TABLE IF EXISTS `role_kursants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_kursants` (
  `user_id` int(11) DEFAULT NULL,
  `univercity_name` varchar(100) DEFAULT NULL,
  `faculty` varchar(50) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `graduate_date` date DEFAULT NULL,
  `course_post` text,
  `excelent_student` tinyint(1) DEFAULT NULL,
  `debt` tinyint(1) DEFAULT NULL,
  `contract` tinyint(1) DEFAULT NULL,
  `duty_phone` int(11) DEFAULT NULL,
  `education_phone` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_kursants`
--

LOCK TABLES `role_kursants` WRITE;
/*!40000 ALTER TABLE `role_kursants` DISABLE KEYS */;
INSERT INTO `role_kursants` VALUES (132,'awdawdaw','lkawmdlkmawl',1,'2015-07-28','awldnwalkda',1,1,1,123456,123456,10),(121,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,11),(1,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,12),(134,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,14),(135,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,15),(136,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,16);
/*!40000 ALTER TABLE `role_kursants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_officers`
--

DROP TABLE IF EXISTS `role_officers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_officers` (
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `unit_number` int(11) DEFAULT NULL,
  `unit_address` text,
  `duty_phone` int(21) DEFAULT NULL,
  `rank_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_officers`
--

LOCK TABLES `role_officers` WRITE;
/*!40000 ALTER TABLE `role_officers` DISABLE KEYS */;
INSERT INTO `role_officers` VALUES (132,NULL,NULL,'',NULL,NULL,1),(134,NULL,NULL,'',NULL,NULL,2),(135,NULL,NULL,'',NULL,NULL,3),(136,NULL,NULL,'',NULL,NULL,4);
/*!40000 ALTER TABLE `role_officers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Курсант','2014-07-27 20:19:31','2014-07-27 20:19:31'),(2,'Контракт','2014-07-27 20:19:38','2014-07-27 20:19:38'),(3,'Офицер','2014-07-27 20:19:45','2014-07-27 20:19:45');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140523215849'),('20140524123336'),('20140525184932'),('20140525201008'),('20140610165137'),('20140613200354'),('20140617164332'),('20140617192323'),('20140617203423'),('20140624200307'),('20140625175136'),('20140626201655'),('20140628151841'),('20140712151701'),('20140727195325'),('20140802122817'),('20140804174303'),('20140810113015'),('20140810190014');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shares`
--

DROP TABLE IF EXISTS `shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `share_title` varchar(255) DEFAULT NULL,
  `share_text` text,
  `enabled` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shares`
--

LOCK TABLES `shares` WRITE;
/*!40000 ALTER TABLE `shares` DISABLE KEYS */;
INSERT INTO `shares` VALUES (1,'Новая акция','<p>Описание этой новой акции</p>',0,'2014-06-17 20:59:40','2014-06-17 21:17:13'),(2,'Новая акция №2','<p>Описание этой новой акции</p>\r\n<p>Продолжение описания данной акции</p>',1,'2014-06-17 21:00:34','2014-06-17 21:00:34');
/*!40000 ALTER TABLE `shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specializations`
--

DROP TABLE IF EXISTS `specializations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specializations` (
  `id` int(11) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specializations`
--

LOCK TABLES `specializations` WRITE;
/*!40000 ALTER TABLE `specializations` DISABLE KEYS */;
INSERT INTO `specializations` VALUES (1,'Экономист');
/*!40000 ALTER TABLE `specializations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sport_masteries`
--

DROP TABLE IF EXISTS `sport_masteries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sport_masteries` (
  `id` int(11) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sport_masteries`
--

LOCK TABLES `sport_masteries` WRITE;
/*!40000 ALTER TABLE `sport_masteries` DISABLE KEYS */;
INSERT INTO `sport_masteries` VALUES (1,'Не имею');
/*!40000 ALTER TABLE `sport_masteries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_pages`
--

DROP TABLE IF EXISTS `static_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_pages`
--

LOCK TABLES `static_pages` WRITE;
/*!40000 ALTER TABLE `static_pages` DISABLE KEYS */;
INSERT INTO `static_pages` VALUES (1,'Почему мы?','why_we','<p>Нас выбирают, потому что с нами безопасно, выгодно и просто работать. Процентные ставки кредитных и страховых продуктов стремятся к нулю, в то время как ставки по вкладам стремятся к бесконечности. При получении кредита мы не требуем присутствия поручителя и справок о доходах. Все очень легко и просто, договора чисты, нет никаких скрытых комиссий. Мы обеспечиваем полную безопасность и конфиденциальность принятой от клиента информации. Немаловажным плюсом при работе с ВОЕНБАНКОМ является интернет-сервис</p>','2014-06-25 00:21:14','2014-06-25 00:21:14'),(2,'О компании','about_us	','<p>ВОЕНБАНК это финансовая организация, которая модет помочь людям при возникновении у них денежных затруднений. Мы занимаемся кредитованием, размещением быстрорастущих вкладов и страхованием, на более чем выгодных условиях, не имеющих аналога на рынке МФИ. </p> <p>ВОЕНБАНК хочет сделать мир финансов для своих клиентов проще, удобнее и прозрачнее. Для этого компания выстраивает максимально качественный и приятный сервис европейского уровня. Наша миссия: созидать и совершенствовать свои услуги, работая честно на благо наших клиентов и Российской федерации. Мы стремимся стать полноценным банком - надежной опорой для людей и помочь им наслаждаться приятным моментом на море или покупкой в магазине, не задумываясь о деньгах. </p> <p>ВОЕНБАНК привлекателен своим предложением для народа. Инновационные идеи, профессионализм сотрудников, безопасность, ценовая политика и качественный сервис так же являются сильными сторонами компании. ВОЕНБАНК обеспечивает индивидуальный подход к каждому клиенту и предоставляет оптимальные условия по действующим услугам. Общение с опытными специалистами ВОЕНБАНКа позволит сохранить личное время клиента. </p> <p class=\"main_idea\">Целевой аудиторией ВОЕНБАНКа являются представители вооруженных сил, гражданской обороны и государственных служб Российской Федерации: Армия, МЧС, Полиция.</p> <p>Нашим отличием от конкурентов является высокий профессионализм сотрудников, инновационный онлайн сервис и четковыраженная нацеленность на специфичность аудитории. К конкурентам мы относимся с уважением равнодушно, так как больше думаем о правильном развитии своей организации и о наших клиентах. </p> <p>«Семь раз отмерь, один раз отрежь». Самое главное для нас это качество. Прежде чем сделать шаг вперед, мы тщательно все продумываем. Наша команда дорожит своей репутацией и мы стремимся сделать клиента довольнм нашими услугами. Ценным для нас являются инновации: то, что другие постигнут и введут в использование завтра, ВОЕНБАНК уже сделал вчера. Наша компания желает процветания нашим защитникам, и с радостью выручит каждого. Мы хотим, чтобы наши клиенты с патриотизмом служили нашей любимой стране, не думая о денежных трудностях. О них подумаем мы! ВОЕНБАНК не забудет защитников Российской Федерации. </p>','2014-06-25 00:21:14','2014-06-25 00:21:14'),(3,'Сервис','service','<p>ВОЕНБАНК принимает ориентир у западных коллег, где рынок МФИ развит куда более обширно, нежели в РФ. Поэтому наш сервис включает в себя бесплатный телефон горячей линии, работу курьеров, услуги погашения кредитов через терминалы оплаты и многое другое. Для того, чтобы получить деньги не требуется посещать офис, а достаточно оставить заявку на сайте или позвонить по телефону. Специалисты в кратчайшие сроки ответят клиентам на вопросы.</p>','2014-06-25 00:21:14','2014-06-25 00:21:14');
/*!40000 ALTER TABLE `static_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `stock_text` text CHARACTER SET utf8,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES (6,'awdawda','sefeafwa','bmw.jpg','image/jpeg',1952063,'2014-05-31 22:16:44','2014-05-31 22:16:45','2014-06-20 18:01:14',0),(8,'adaw','adaw','IMG_0293.jpg','image/jpeg',2077495,'2014-05-31 22:18:00','2014-05-31 22:18:01','2014-06-12 21:39:57',0),(12,'Новость №3','Текст новости №3','slide_vb3.png','image/png',365726,'2014-06-12 21:40:44','2014-06-12 21:40:45','2014-06-20 18:01:16',1),(13,'Новость №4','Текст новости №4','slide_vb4.png','image/png',139835,'2014-06-12 21:41:01','2014-06-12 21:41:02','2014-06-20 18:01:16',1),(14,'Новость №5','Текст новости №5','slide_vb5.png','image/png',475785,'2014-06-12 21:41:19','2014-06-12 21:41:19','2014-06-20 18:01:17',1);
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types_of_post`
--

DROP TABLE IF EXISTS `types_of_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types_of_post` (
  `post_id` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types_of_post`
--

LOCK TABLES `types_of_post` WRITE;
/*!40000 ALTER TABLE `types_of_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `types_of_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types_of_rank`
--

DROP TABLE IF EXISTS `types_of_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types_of_rank` (
  `rank_id` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types_of_rank`
--

LOCK TABLES `types_of_rank` WRITE;
/*!40000 ALTER TABLE `types_of_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `types_of_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `role_id` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role_change`
--

DROP TABLE IF EXISTS `user_role_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role_change` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `begin_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role_change`
--

LOCK TABLES `user_role_change` WRITE;
/*!40000 ALTER TABLE `user_role_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `secondname` varchar(50) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `place_of_birth` text,
  `login` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `avatar_file_name` varchar(255) DEFAULT NULL,
  `avatar_content_type` varchar(255) DEFAULT NULL,
  `avatar_file_size` int(11) DEFAULT NULL,
  `avatar_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Сокольцов','Вадим','Юрьевич',1,0,'1993-07-09','awdawdawdawdaw','1','1',1,NULL,'_NO.jpg','image/jpeg',110197,'2014-08-09 23:15:03'),(23,'asdawd','wadawd','wdadaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wadawda',NULL,NULL,NULL,NULL),(24,'Сокольцов','Вадим','Юрьевич',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL),(25,'фдлцвдфц','дфдлвфдц','длцфдвцдф',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL),(27,'фцвдфцвлд','Вадим','Юрьевич',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Сокольцов','Вадим','Юрьевич',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL),(30,'Сокольцов','Вадим','Юрьевич',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL),(31,'alkdm','laldkmawl','lawmdlawml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'alwmdlaw',NULL,NULL,NULL,NULL),(33,'lwkelk','kandlwa','lkadlaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'laawdaw',NULL,NULL,NULL,NULL),(34,'awdaw','awld','awlda',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL),(35,'adaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL),(36,'adaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL),(37,'adaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL),(38,'awdwa','adaw','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12312',NULL,NULL,NULL,NULL),(39,'awdwa','adaw','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12312',NULL,NULL,NULL,NULL),(40,'awdaw','wadaw','wadawd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'adaw',NULL,NULL,NULL,NULL),(41,'awd','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12312',NULL,NULL,NULL,NULL),(42,'adaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL),(43,'nb bvvhgvhg','gjhkjhkjhkjh','khkhkjhkjhjkh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'jhbjhbk',NULL,NULL,NULL,NULL),(44,'SWDAA','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dawdaw',NULL,NULL,NULL,NULL),(69,'sdaefsefs','adawdaw','awdawkdj',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'akwdakjw',NULL,NULL,NULL,NULL),(78,'adawd','awdawda','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL),(79,'awdwa','awdawd','awdawd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL),(80,'asdawdaw','awdwad','wadaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL),(81,'awdaw','awdawdaw','awdawd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdawdaw',NULL,NULL,NULL,NULL),(82,'jkalkdawl','walkdawl','kawjdakwl',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lwakdlakw',NULL,NULL,NULL,NULL),(83,'eksjajwkd','lkwadlaw','wajdnalwn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wlkadawlk',NULL,NULL,NULL,NULL),(84,'adwa','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL),(85,'awdaw','adawda','adwad',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL),(86,'akdanw','lkwadlak','walkdalkw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lakwdlakw',NULL,NULL,NULL,NULL),(87,'awda','wadaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL),(88,'awdaw','adawd','awdawd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL),(89,'adaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL),(91,'фвфц','фцвфц','фцвфц',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'фцвфц',NULL,NULL,NULL,NULL),(93,'фцвцф','фцвфц','фцвфц',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'цфвфц',NULL,NULL,NULL,NULL),(94,'akdjnwa','kwankdjawk','kwadkawn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wkdjand',NULL,NULL,NULL,NULL),(95,'awlkdawl','awldawl','awldawl',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awldknawl',NULL,NULL,NULL,NULL),(100,'awdaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL),(101,'awdaw','wadaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12312',NULL,NULL,NULL,NULL),(104,'awdaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL),(107,'Сокольцов','Вадим','Юрьевич',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL),(108,'фцвфц','цвцф','фцвфц',1,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL),(109,'фцвфц','цвцф','фцвфц',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL),(111,'awdaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL),(112,'Сокольцов','Вадим','Юрьевич',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL),(113,'Сокольцов','awdaw','awdawd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL),(114,'awdaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL),(115,'awdaw','awdaw','awdaw',NULL,1,'1993-07-09','Тверь',NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL),(116,'adjwna','awld','wadaw',3,1,NULL,'',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL),(117,'awdaw','awdaw','awdaw',1,1,'1993-07-09','Тверь',NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL),(121,'Нургалиев','Ашот','Ахбиктекович',1,1,'1993-07-09','Тверь','2','2',121,'89214438239','IMG_0294.jpg','image/jpeg',153544,'2014-08-04 18:26:27'),(132,'Сокольцов ','Вадим','Юрьевич',1,1,'1993-07-09','Тверь','3','3',132,'9214438239','uporotyy-chuvak_13086069_orig_.jpeg','image/jpeg',15668,'2014-08-08 20:41:24'),(134,'ЛЕХА','ЛЕХА','ЛЕХА',1,1,'1993-07-09','Тверь',NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL),(135,'ЛЕХА','ЛЕХА','ЛЕХА',3,0,'1993-07-09','Тверь',NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL),(136,'ЛЕХА','ЛЕХА','ЛЕХА',3,0,'1993-07-09','Тверь',NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL),(137,'Нургалиев','Ахтулбек','Мафасаичев',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voen_pasports`
--

DROP TABLE IF EXISTS `voen_pasports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voen_pasports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `voen_seria` int(11) DEFAULT NULL,
  `voen_number` int(11) DEFAULT NULL,
  `voen_where` text,
  `voen_when` date DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `education_id` int(11) DEFAULT NULL,
  `relashionship_id` int(11) DEFAULT NULL,
  `specialization_id` int(11) DEFAULT NULL,
  `sport_mastery_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voen_pasports`
--

LOCK TABLES `voen_pasports` WRITE;
/*!40000 ALTER TABLE `voen_pasports` DISABLE KEYS */;
INSERT INTO `voen_pasports` VALUES (1,104,1234,12345,'awdaw','2010-10-09',1,1,1,1,1),(4,107,1234,12345,'awdaw','2010-10-09',1,1,1,1,1),(5,111,1234,12345,'awdaw','2010-10-09',1,1,1,1,1),(6,121,1234,12345,'awdaw','2010-10-09',1,1,1,1,1),(17,132,1234,123456,'sdszcszcz','2003-08-21',1,1,1,1,1),(18,16,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(19,1,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(21,134,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(22,135,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(23,136,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `voen_pasports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-15  1:17:27
