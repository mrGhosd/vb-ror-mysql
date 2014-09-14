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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_informations`
--

LOCK TABLES `contact_informations` WRITE;
/*!40000 ALTER TABLE `contact_informations` DISABLE KEYS */;
INSERT INTO `contact_informations` VALUES (1,78,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw'),(2,79,NULL,NULL,NULL,NULL,NULL,NULL,'awdawd'),(3,80,NULL,NULL,NULL,NULL,NULL,NULL,'wadawda'),(4,81,NULL,NULL,NULL,NULL,NULL,NULL,'awdawda'),(5,82,NULL,NULL,NULL,NULL,NULL,NULL,'llawndlaw'),(6,83,NULL,NULL,NULL,NULL,NULL,NULL,'wlakdnalwk'),(7,84,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw'),(8,85,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw'),(9,86,NULL,NULL,NULL,NULL,NULL,NULL,'awlkdaklw'),(10,87,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw'),(11,88,NULL,NULL,NULL,NULL,NULL,NULL,'awdawd'),(12,89,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw'),(13,91,NULL,NULL,NULL,NULL,NULL,NULL,'фцвфц'),(14,93,NULL,NULL,NULL,NULL,NULL,NULL,'фцвфц'),(15,94,NULL,NULL,NULL,NULL,NULL,NULL,'akwjdnawkj'),(16,95,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw'),(17,100,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw'),(18,101,NULL,NULL,NULL,NULL,NULL,NULL,'wwadaw'),(19,104,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw'),(20,107,'awdawd',123456,'лфцовтф','флцовтфц','дфцлтвдфцт',89214438239,'vforvad@gmail.com'),(21,108,NULL,NULL,NULL,NULL,NULL,NULL,'vforvad@gmail.com'),(22,109,NULL,NULL,NULL,NULL,NULL,NULL,'vforvad@gmail.com'),(23,111,'',NULL,'','','',NULL,'awdaw'),(24,112,NULL,NULL,NULL,NULL,NULL,NULL,'vforvad@gmail.com'),(25,113,NULL,NULL,NULL,NULL,NULL,NULL,''),(26,114,NULL,NULL,NULL,NULL,NULL,NULL,'vforvad@gmail.com'),(27,115,NULL,NULL,NULL,NULL,NULL,NULL,'vforvad@gmail.com'),(28,116,NULL,NULL,NULL,NULL,NULL,NULL,''),(29,117,NULL,NULL,NULL,NULL,NULL,NULL,'vforvad@gmail.com'),(30,121,'awdawd',123456,'лфцовтф','флцовтфц','дфцлтвдфцт',89214438239,'vforvad@gmail.com'),(41,132,'dawdawdaw',123456,'дфцльвфдц','фцдьвфдц','фцдвьцфдв',89214438239,'vforvad@gmail.com'),(42,16,'',NULL,'','','',NULL,''),(43,1,'',NULL,'','','',NULL,''),(45,134,'',NULL,'','','',NULL,'vforvad@gmail.com'),(47,136,'',NULL,'','','',NULL,'vforvad@gmail.com'),(48,138,'',NULL,'','','',NULL,'another775@mail.ru'),(49,139,'',NULL,'','','',NULL,'another775@mail.ru'),(50,140,'',NULL,'','','',NULL,'another775@mail.ru'),(51,141,'',NULL,'','','',NULL,'vforvad@gmail.com'),(52,142,'',NULL,'','','',NULL,'vforvad@gmail.com'),(53,143,'',NULL,'','','',NULL,'vforvad@gmail.com'),(54,144,'',NULL,'','','',NULL,'vforvad@gmail.com'),(55,145,'',NULL,'','','',NULL,'vforvad@gmail.com'),(56,146,'',NULL,'','','',NULL,'vforvad@gmail.com'),(57,147,'',NULL,'','','',NULL,'vforvad@gmail.com'),(58,148,'',NULL,'','','',NULL,'awdawd'),(59,149,'',NULL,'','','',NULL,'vforvad@gmail.com'),(60,150,'',NULL,'','','',NULL,'vforvad@gmail.com'),(61,151,'',NULL,'','','',NULL,'awdawd'),(62,152,'',NULL,'','','',NULL,'awdawd'),(63,153,'',NULL,'','','',NULL,'vforvad@gmail.com'),(64,154,'',NULL,'','','',NULL,'awdwadwadwa@mail.ru'),(65,155,'',NULL,'','','',NULL,'awd,awdaw,@mail.ru'),(66,156,'',NULL,'','','',NULL,'awlkdmwlka@gmail.com'),(69,159,'',NULL,'','','',NULL,'awdawda@mail.ru'),(70,160,'',NULL,'','','',NULL,'awlkmdlawkm@gmail.com'),(71,161,'',NULL,'','','',NULL,'ajwdnajkwnd@gmail.com'),(72,162,'',NULL,'','','',NULL,'lwkadlakw@mail.ru'),(73,163,'',NULL,'','','',NULL,'awkldmawlk@gmail.com'),(74,164,'',NULL,'','','',NULL,'awkldmawlk@gmail.com'),(75,165,'',NULL,'','','',NULL,'vforvad@gmail.com');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_messages`
--

LOCK TABLES `contact_messages` WRITE;
/*!40000 ALTER TABLE `contact_messages` DISABLE KEYS */;
INSERT INTO `contact_messages` VALUES (1,'awdaw','awdaw','wadaw','awdaw','2014-06-26 06:21:10','2014-06-26 06:21:10'),(2,'awkjdaw daw lkmdkawlmd lkamwdlkm','lklkwamd@mail.ru','89214438239','akjwnd jakwn dnaw ndlawkn dkawn lkdnawlknd lkawndlkn alwkndlaw nldkanwl ndlawk ndlakwn dlkawnldnawndkalwdnkawndk','2014-08-16 13:22:03','2014-08-16 13:22:03'),(3,'awdawd','wadawd','wadawd','awdawdaw','2014-09-13 12:20:48','2014-09-13 12:20:48');
/*!40000 ALTER TABLE `contact_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_documents`
--

DROP TABLE IF EXISTS `contract_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL,
  `main_text` text,
  `enabled` tinyint(1) DEFAULT NULL,
  `contract_type` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_documents`
--

LOCK TABLES `contract_documents` WRITE;
/*!40000 ALTER TABLE `contract_documents` DISABLE KEYS */;
INSERT INTO `contract_documents` VALUES (1,'Договор.\\%\\{full_name\\}','awdawdawd',0,0,'2014-08-30 09:40:58','2014-08-30 09:40:58'),(2,'Договор.\\%\\{full_name\\}','awdawdawd',0,0,'2014-08-30 09:41:36','2014-08-30 09:41:36'),(3,'Договор.%{full_name}','фвфцдвфц',0,0,'2014-08-30 09:43:11','2014-08-30 09:43:11'),(4,'Договор.%{full_name}','Здравствуйте, %{full_name}! %{new_line}\r\nБлагодарим вас за использование нашей системы. %{new_line}\r\nИнформация о вашем займе: %{new_line}\r\nНомер займа: %{loan_id} %{new_line}\r\nСумма займа: %{loan_sum} %{new_line}\r\nСрок займа: %{loan_time} %{new_line}\r\nЕжемесячный платеж: %{month_pay} %{new_line}\r\n%{new_line}\r\nВаши реквизиты: %{new_line}\r\nСерия паспорта: %{pasport_seria} %{new_line}\r\nНомер паспорта: %{pasport_number} %{new_line}\r\nКем выдан: %{pasport_when} %{new_line}\r\nКогда: %{pasport_where} %{new_line}\r\nНомер телефона: %{user_phone} %{new_line}\r\nEmail: %{user_email} %{new_line}',1,1,'2014-08-30 09:43:15','2014-08-31 14:39:46');
/*!40000 ALTER TABLE `contract_documents` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposits`
--

LOCK TABLES `deposits` WRITE;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
INSERT INTO `deposits` VALUES (1,16,'12312412',7,NULL,'2014-07-12 21:21:15','2014-07-12 21:21:15'),(2,17,'12312412',7,NULL,'2014-07-12 21:23:34','2014-07-12 21:23:34'),(3,23,'2600000',7,NULL,'2014-07-13 11:40:41','2014-07-13 11:40:41'),(4,24,'2100000',7,NULL,'2014-07-13 11:42:54','2014-07-13 11:42:54'),(5,25,'1850000',7,NULL,'2014-07-13 12:12:13','2014-07-13 12:12:13'),(6,26,'1850000',7,NULL,'2014-07-13 19:37:16','2014-07-13 19:37:16'),(7,33,'2100000',7,NULL,'2014-07-17 21:33:10','2014-07-17 21:33:10'),(8,137,'2350000',7,NULL,'2014-08-10 15:18:40','2014-08-10 15:18:40'),(9,132,'2100000',15,NULL,'2014-08-10 18:35:16','2014-08-10 18:35:16'),(10,132,'2100000',15,NULL,'2014-08-10 18:36:12','2014-08-10 18:36:12'),(11,132,'1900000',15,NULL,'2014-08-10 18:36:17','2014-08-10 19:52:49'),(12,132,'2100000',15,NULL,'2014-08-10 18:38:56','2014-08-10 18:38:56'),(13,166,'2100000',7,NULL,'2014-09-14 16:44:10','2014-09-14 16:44:10');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (4,'Нормальный заголовок','lwakmdlkamw','2014-06-17 20:26:37','2014-08-16 12:34:49'),(5,'awdawdawd','Ya hz','2014-08-16 12:33:29','2014-08-16 12:33:29');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES (1,'awdaw','awdaw',0,0,'2014-06-13 21:48:33','2014-06-13 21:48:33'),(2,'Вадим','Годнота!',0,0,'2014-06-13 22:46:25','2014-06-13 22:46:25'),(5,' Отзыв Ашота',' Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота Отзыв Ашота',0,0,'2014-06-13 23:22:29','2014-06-13 23:22:29'),(7,'фцвфц','фцвфц',0,0,'2014-06-25 20:33:09','2014-06-25 20:33:09');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_repayments`
--

LOCK TABLES `loan_repayments` WRITE;
/*!40000 ALTER TABLE `loan_repayments` DISABLE KEYS */;
INSERT INTO `loan_repayments` VALUES (1,70,1000,'2014-08-10 12:14:43','2014-08-10 12:14:43'),(2,70,10000,'2014-08-10 12:19:06','2014-08-10 12:19:06'),(3,70,20000,'2014-08-10 13:44:47','2014-08-10 13:44:47'),(11,70,29000,'2014-08-12 20:57:06','2014-08-12 20:57:06'),(12,84,30000,'2014-09-11 08:02:32','2014-09-11 08:02:32');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` VALUES (7,69,'67500','2014-07-18 20:25:27','2015-07-18 20:25:27',NULL,0,NULL),(16,78,'58500','2014-07-18 20:30:57','2015-01-18 20:30:57',NULL,0,NULL),(17,79,'64500','2014-07-18 20:38:44','2015-07-18 20:38:44',NULL,0,NULL),(18,80,'73500','2014-07-19 14:46:36','2015-07-19 14:46:36',NULL,0,NULL),(19,81,'49500','2014-07-19 14:47:07','2015-01-19 14:47:07',NULL,0,NULL),(20,82,'81000','2014-07-19 14:57:46','2015-10-19 14:57:46',NULL,0,NULL),(21,83,'69000','2014-07-19 15:14:05','2015-07-19 15:14:05',NULL,0,NULL),(22,84,'67500','2014-07-19 17:16:36','2015-07-19 17:16:36',NULL,0,NULL),(23,85,'63000','2014-07-20 11:18:47','2015-07-20 11:18:47',NULL,0,NULL),(24,86,'66000','2014-07-20 11:22:05','2015-07-20 11:22:05',NULL,0,NULL),(25,87,'67500','2014-07-20 11:23:04','2015-07-20 11:23:04',NULL,0,NULL),(26,88,'69000','2014-07-20 11:24:14','2015-07-20 11:24:14',NULL,0,NULL),(27,89,'64500','2014-07-20 11:27:56','2015-07-20 11:27:56',NULL,0,NULL),(29,91,'67500','2014-07-20 11:33:16','2015-07-20 11:33:16',NULL,0,NULL),(31,93,'78000','2014-07-20 11:33:38','2015-10-20 11:33:38',NULL,0,NULL),(32,94,'66000','2014-07-20 12:37:56','2015-07-20 12:37:56',NULL,0,NULL),(33,95,'70500','2014-07-20 12:40:15','2015-07-20 12:40:15',NULL,0,NULL),(38,100,'64500','2014-07-20 12:47:13','2015-07-20 12:47:13',NULL,0,NULL),(39,101,'60000','2014-07-20 12:49:56','2015-01-20 12:49:56',NULL,0,NULL),(42,104,'73500','2014-07-20 12:50:22','2015-07-20 12:50:22',NULL,0,NULL),(45,107,'22500','2014-07-21 21:15:12','2014-10-21 21:15:12',NULL,0,NULL),(46,108,'57000','2014-07-26 19:43:17','2015-01-26 19:43:17',7,0,NULL),(47,109,'57000','2014-07-26 19:43:17','2015-01-26 19:43:17',NULL,0,NULL),(49,111,'70500','2014-07-26 21:14:28','2015-07-26 21:14:28',NULL,0,NULL),(50,112,'70500','2014-07-27 20:07:10','2015-07-27 20:07:10',NULL,0,NULL),(51,113,'69000','2014-07-27 20:09:30','2015-07-27 20:09:30',NULL,0,NULL),(52,114,'63000','2014-07-27 20:09:43','2015-07-27 20:09:43',NULL,0,NULL),(53,115,'60000','2014-07-27 20:11:15','2015-01-27 20:11:15',NULL,0,NULL),(54,116,'64500','2014-07-27 20:25:48','2015-07-27 20:25:48',NULL,0,NULL),(55,117,'76500','2014-07-27 20:26:25','2015-10-27 20:26:25',NULL,0,NULL),(59,121,'51000','2014-07-31 21:02:16','2015-01-31 21:02:16',7,0,NULL),(70,132,'58500','2014-08-04 20:57:21','2015-02-04 20:57:21',7,1,1),(72,134,'22500','2014-08-10 07:17:31','2014-11-10 07:17:31',NULL,0,NULL),(74,136,'22500','2014-08-10 07:19:30','2014-11-10 07:19:30',NULL,0,NULL),(75,138,'72000','2014-08-31 16:10:27','2015-08-31 16:10:27',NULL,0,NULL),(76,139,'72000','2014-08-31 16:10:27','2015-08-31 16:10:27',NULL,0,NULL),(77,140,'72000','2014-08-31 16:10:27','2015-08-31 16:10:27',NULL,0,NULL),(78,141,'22500','2014-08-31 16:12:37','2014-11-30 16:12:37',NULL,0,NULL),(79,142,'22500','2014-08-31 16:12:37','2014-11-30 16:12:37',NULL,0,NULL),(80,143,'22500','2014-08-31 16:12:37','2014-11-30 16:12:37',NULL,0,NULL),(81,144,'22500','2014-08-31 16:12:37','2014-11-30 16:12:37',NULL,0,NULL),(82,145,'22500','2014-08-31 16:12:37','2014-11-30 16:12:37',7,0,NULL),(83,146,'58500','2014-08-31 16:25:35','2015-02-28 16:25:35',7,0,NULL),(84,147,'64500','2014-08-31 16:26:23','2015-08-31 16:26:23',7,0,1),(85,148,'72000','2014-08-31 16:27:05','2015-08-31 16:27:05',7,0,NULL),(86,149,'75000','2014-08-31 16:28:48','2015-08-31 16:28:48',7,0,NULL),(87,150,'75000','2014-08-31 16:28:48','2015-08-31 16:28:48',7,0,NULL),(88,151,'66000','2014-08-31 16:29:30','2015-08-31 16:29:30',7,0,NULL),(89,152,'66000','2014-08-31 16:29:30','2015-08-31 16:29:30',7,0,NULL),(90,153,'64500','2014-09-11 08:13:27','2015-09-11 08:13:27',8,0,NULL),(91,154,'60000','2014-09-11 08:20:52','2015-03-11 08:20:52',7,0,NULL),(92,155,'58500','2014-09-11 08:29:24','2015-03-11 08:29:24',7,0,NULL),(93,156,'55500','2014-09-11 08:35:05','2015-03-11 08:35:05',7,0,NULL),(96,159,'63000','2014-09-11 21:40:31','2015-09-11 21:40:31',8,0,NULL),(97,160,'22500','2014-09-11 21:49:26','2014-12-11 21:49:26',NULL,0,NULL),(98,161,'22500','2014-09-11 21:50:06','2014-12-11 21:50:06',NULL,0,NULL),(99,162,'51000','2014-09-11 21:57:40','2015-03-11 21:57:40',8,0,NULL),(100,163,'64500','2014-09-11 22:16:27','2015-09-11 22:16:27',8,0,NULL),(101,164,'64500','2014-09-11 22:16:27','2015-09-11 22:16:27',8,0,NULL),(102,165,'79500','2014-09-14 16:15:49','2015-12-14 16:15:49',7,0,NULL);
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
INSERT INTO `nationalities` VALUES (1,'Русский'),(2,'Не русский');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (2,'awdawd','awdawdaw','http://vk.com',1,'picture_4.jpg','image/jpeg',29162,'2014-08-16 12:15:15','2014-08-16 12:15:16','2014-09-13 20:29:05'),(3,'awdawd','awdawdaw','awdawdaw',0,'picture_4.jpg','image/jpeg',29162,'2014-08-16 12:15:43','2014-08-16 12:15:43','2014-09-13 20:29:06'),(4,'awdawd','awdawdaw','awdawdaw',0,'picture_4.jpg','image/jpeg',29162,'2014-08-16 12:15:51','2014-08-16 12:15:51','2014-08-21 20:47:38');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passports`
--

LOCK TABLES `passports` WRITE;
/*!40000 ALTER TABLE `passports` DISABLE KEYS */;
INSERT INTO `passports` VALUES (1,93,1234,1234,'2014-09-10','цвфц',1234456,'фуцвфцвфц',123455,123456),(2,94,23242,1234,'2014-09-10','awdawda',1234456,'adwadaw',123455,123456),(3,95,1234,1234,'2014-09-10','awdawda',1234456,'awd',123455,123456),(4,100,1234,1234,'2014-09-10','awdawda',1234456,'awalwnklawd',123455,123456),(7,104,1234,1234,'2014-09-10','awdawda',1234456,'awda',123455,123456),(10,107,1234,1234,'2014-09-10','awdawda',1234456,'awalwnklawd',123455,123456),(12,111,1234,1234,'2014-09-10','awdawda',1234456,'awalwnklawd',123455,123456),(13,121,1234,1234,'2014-09-10','awdawda',1234456,'awalwnklawd',123455,123456),(24,132,1234,12345,'2009-07-08','awdawdaw',12345,'awdawdaw',1234,1234),(27,16,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(28,1,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(30,134,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(32,136,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(33,138,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(34,139,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(35,140,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(36,141,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(37,142,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(38,143,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(39,144,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(40,145,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(41,146,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(42,147,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(43,148,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(44,149,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(45,150,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(46,151,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(47,152,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(48,153,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(49,154,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(50,155,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(51,156,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(54,159,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(55,160,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(56,161,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(57,162,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(58,163,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(59,164,NULL,NULL,NULL,'',NULL,'',NULL,NULL),(60,165,NULL,NULL,NULL,'',NULL,'',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `percents`
--

LOCK TABLES `percents` WRITE;
/*!40000 ALTER TABLE `percents` DISABLE KEYS */;
INSERT INTO `percents` VALUES (1,0,'2011-09-12','2015-11-12',90000,15000,18,6,0),(2,0,'2011-09-12','2015-11-12',90000,15000,18,6,1),(4,0,'2011-09-12','2015-11-12',90000,15000,18,6,0),(5,0,'2011-09-12','2015-11-12',90000,15000,18,6,0),(6,0,'2011-09-12','2015-11-12',90000,15000,18,6,0),(7,0.42,'2011-09-12','2015-11-12',90000,15000,12,6,0),(8,0.89,'1990-01-12','2029-01-12',3000000,10000,36,3,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_contracts`
--

LOCK TABLES `role_contracts` WRITE;
/*!40000 ALTER TABLE `role_contracts` DISABLE KEYS */;
INSERT INTO `role_contracts` VALUES (132,NULL,NULL,'','',NULL,1),(134,NULL,NULL,'','',NULL,2),(136,NULL,NULL,'','',NULL,4),(138,NULL,NULL,'','',NULL,5),(139,NULL,NULL,'','',NULL,6),(140,NULL,NULL,'','',NULL,7),(141,NULL,NULL,'','',NULL,8),(142,NULL,NULL,'','',NULL,9),(143,NULL,NULL,'','',NULL,10),(144,NULL,NULL,'','',NULL,11),(145,NULL,NULL,'','',NULL,12),(146,NULL,NULL,'','',NULL,13),(147,NULL,NULL,'','',NULL,14),(148,NULL,NULL,'','',NULL,15),(149,NULL,NULL,'','',NULL,16),(150,NULL,NULL,'','',NULL,17),(151,NULL,NULL,'','',NULL,18),(152,NULL,NULL,'','',NULL,19),(153,NULL,NULL,'','',NULL,20),(154,NULL,NULL,'','',NULL,21),(155,NULL,NULL,'','',NULL,22),(156,NULL,NULL,'','',NULL,23),(159,NULL,NULL,'','',NULL,26),(160,NULL,NULL,'','',NULL,27),(161,NULL,NULL,'','',NULL,28),(162,NULL,NULL,'','',NULL,29),(163,NULL,NULL,'','',NULL,30),(164,NULL,NULL,'','',NULL,31),(165,NULL,NULL,'','',NULL,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_kursants`
--

LOCK TABLES `role_kursants` WRITE;
/*!40000 ALTER TABLE `role_kursants` DISABLE KEYS */;
INSERT INTO `role_kursants` VALUES (132,'awdawdaw','lkawmdlkmawl',1,'2015-07-28','awldnwalkda',1,1,1,123456,123456,10),(121,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,11),(1,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,12),(134,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,14),(136,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,16),(138,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,17),(139,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,18),(140,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,19),(141,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,20),(142,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,21),(143,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,22),(144,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,23),(145,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,24),(146,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,25),(147,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,26),(148,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,27),(149,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,28),(150,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,29),(151,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,30),(152,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,31),(153,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,32),(154,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,33),(155,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,34),(156,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,35),(159,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,38),(160,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,39),(161,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,40),(162,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,41),(163,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,42),(164,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,43),(165,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_officers`
--

LOCK TABLES `role_officers` WRITE;
/*!40000 ALTER TABLE `role_officers` DISABLE KEYS */;
INSERT INTO `role_officers` VALUES (132,NULL,NULL,'',NULL,NULL,1),(134,NULL,NULL,'',NULL,NULL,2),(136,NULL,NULL,'',NULL,NULL,4),(138,NULL,NULL,'',NULL,NULL,5),(139,NULL,NULL,'',NULL,NULL,6),(140,NULL,NULL,'',NULL,NULL,7),(141,NULL,NULL,'',NULL,NULL,8),(142,NULL,NULL,'',NULL,NULL,9),(143,NULL,NULL,'',NULL,NULL,10),(144,NULL,NULL,'',NULL,NULL,11),(145,NULL,NULL,'',NULL,NULL,12),(146,NULL,NULL,'',NULL,NULL,13),(147,NULL,NULL,'',NULL,NULL,14),(148,NULL,NULL,'',NULL,NULL,15),(149,NULL,NULL,'',NULL,NULL,16),(150,NULL,NULL,'',NULL,NULL,17),(151,NULL,NULL,'',NULL,NULL,18),(152,NULL,NULL,'',NULL,NULL,19),(153,NULL,NULL,'',NULL,NULL,20),(154,NULL,NULL,'',NULL,NULL,21),(155,NULL,NULL,'',NULL,NULL,22),(156,NULL,NULL,'',NULL,NULL,23),(159,NULL,NULL,'',NULL,NULL,26),(160,NULL,NULL,'',NULL,NULL,27),(161,NULL,NULL,'',NULL,NULL,28),(162,NULL,NULL,'',NULL,NULL,29),(163,NULL,NULL,'',NULL,NULL,30),(164,NULL,NULL,'',NULL,NULL,31),(165,NULL,NULL,'',NULL,NULL,32);
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
  `active` tinyint(1) DEFAULT '0',
  `default_chosen` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Курсант','2014-07-27 20:19:31','2014-09-11 21:57:24',1,1),(2,'В/С Контрактной Службы','2014-07-27 20:19:38','2014-09-11 21:56:59',1,0),(3,'Офицер','2014-07-27 20:19:45','2014-09-11 21:57:06',1,0),(8,'Пенсионер','2014-09-10 08:43:16','2014-09-10 08:43:25',0,0),(9,'фотвлфцдтвлфц','2014-09-11 07:42:12','2014-09-11 07:42:12',0,0),(10,'lawkmdlkaw','2014-09-11 07:44:01','2014-09-11 07:44:01',0,0),(11,'lawkmdlkaw','2014-09-11 07:44:13','2014-09-11 07:44:13',0,0),(12,'awdawda','2014-09-11 07:44:50','2014-09-11 07:44:50',0,0),(13,'awdawdaw','2014-09-11 07:46:09','2014-09-11 07:46:09',0,0),(14,'awdawdaw','2014-09-11 07:46:33','2014-09-11 07:46:33',0,0),(15,';lk;okl;l','2014-09-11 07:47:44','2014-09-11 07:47:44',0,0),(16,'pijlaw;d;a','2014-09-11 07:49:14','2014-09-11 07:49:14',0,0),(17,'awdawdaw','2014-09-11 07:50:39','2014-09-11 07:50:39',0,0);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_percents`
--

DROP TABLE IF EXISTS `roles_percents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_percents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `percent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_percents`
--

LOCK TABLES `roles_percents` WRITE;
/*!40000 ALTER TABLE `roles_percents` DISABLE KEYS */;
INSERT INTO `roles_percents` VALUES (3,1,8),(4,2,7),(5,3,7),(6,8,7),(7,16,8),(8,17,8);
/*!40000 ALTER TABLE `roles_percents` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20140523215849'),('20140524123336'),('20140525184932'),('20140525201008'),('20140610165137'),('20140613200354'),('20140617164332'),('20140617192323'),('20140617203423'),('20140624200307'),('20140625175136'),('20140626201655'),('20140628151841'),('20140712151701'),('20140727195325'),('20140802122817'),('20140804174303'),('20140810113015'),('20140810190014'),('20140829184606'),('20140905185936'),('20140909183759'),('20140910081642'),('20140911214214');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shares`
--

LOCK TABLES `shares` WRITE;
/*!40000 ALTER TABLE `shares` DISABLE KEYS */;
INSERT INTO `shares` VALUES (1,'Новая акция','<p>Описание этой новой акции</p>',1,'2014-06-17 20:59:40','2014-08-16 12:51:50'),(2,'Новая акция №2','<p>Описание этой новой акции</p>\r\n<p>Продолжение описания данной акции</p>',1,'2014-06-17 21:00:34','2014-06-17 21:00:34'),(5,'wdawdaw','awdawklamwd lawkd lmawl mawl mdlawmdlamwdlmawldmlamdawmd awlmdlk amawmdmawlkm dlawdaw',1,'2014-08-16 12:55:10','2014-08-16 12:55:10');
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
INSERT INTO `stocks` VALUES (6,'Теперь нормальный заголовок','sefeafwa','bmw.jpg','image/jpeg',1952063,'2014-05-31 22:16:44','2014-05-31 22:16:45','2014-09-14 15:30:58',0),(12,'Новость №3','Текст новости №3','slide_vb3.png','image/png',365726,'2014-06-12 21:40:44','2014-06-12 21:40:45','2014-06-20 18:01:16',1),(13,'Новость №4','Текст новости №4','slide_vb4.png','image/png',139835,'2014-06-12 21:41:01','2014-06-12 21:41:02','2014-06-20 18:01:16',1),(14,'Новость №5','Текст новости №5','slide_vb5.png','image/png',475785,'2014-06-12 21:41:19','2014-06-12 21:41:19','2014-08-16 11:37:45',1);
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
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Сокольцов','Вадим','Юрьевич',1,0,'1993-07-09','awdawdawdawdaw','1','1',1,NULL,'_NO.jpg','image/jpeg',110197,'2014-08-09 23:15:03','f7a0589e2982ea802939a62bce61ddb04f0ea062',NULL,NULL),(23,'asdawd','wadawd','wdadaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wadawda',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'Сокольцов','Вадим','Юрьевич',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'фдлцвдфц','дфдлвфдц','длцфдвцдф',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'фцвдфцвлд','Вадим','Юрьевич',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Сокольцов','Вадим','Юрьевич',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'Сокольцов','Вадим','Юрьевич',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'alkdm','laldkmawl','lawmdlawml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'alwmdlaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'lwkelk','kandlwa','lkadlaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'laawdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'awdaw','awld','awlda',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'adaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'adaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'adaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'awdwa','adaw','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12312',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'awdwa','adaw','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12312',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'awdaw','wadaw','wadawd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'adaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'awd','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12312',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'adaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'nb bvvhgvhg','gjhkjhkjhkjh','khkhkjhkjhjkh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'jhbjhbk',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'SWDAA','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dawdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,'sdaefsefs','adawdaw','awdawkdj',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'akwdakjw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,'adawd','awdawda','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,'awdwa','awdawd','awdawd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,'asdawdaw','awdwad','wadaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,'awdaw','awdawdaw','awdawd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdawdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,'jkalkdawl','walkdawl','kawjdakwl',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lwakdlakw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,'eksjajwkd','lkwadlaw','wajdnalwn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wlkadawlk',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,'adwa','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,'awdaw','adawda','adwad',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,'akdanw','lkwadlak','walkdalkw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lakwdlakw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,'awda','wadaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(88,'awdaw','adawd','awdawd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(89,'adaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(91,'фвфц','фцвфц','фцвфц',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'фцвфц',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(93,'фцвцф','фцвфц','фцвфц',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'цфвфц',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94,'akdjnwa','kwankdjawk','kwadkawn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wkdjand',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,'awlkdawl','awldawl','awldawl',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awldknawl',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,'awdaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,'awdaw','wadaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12312',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(104,'awdaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(107,'Сокольцов','Вадим','Юрьевич',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(108,'фцвфц','цвцф','фцвфц',1,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(109,'фцвфц','цвцф','фцвфц',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(111,'awdaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(112,'Сокольцов','Вадим','Юрьевич',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(113,'Сокольцов','awdaw','awdawd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(114,'awdaw','awdaw','awdaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(115,'awdaw','awdaw','awdaw',NULL,1,'1993-07-09','Тверь',NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(116,'adjwna','awld','wadaw',3,1,NULL,'',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(117,'awdaw','awdaw','awdaw',1,1,'1993-07-09','Тверь',NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(121,'Нургалиев','Ашот','Ахбиктекович',1,1,'1993-07-09','Тверь','2','2',121,'89214438239','IMG_0294.jpg','image/jpeg',153544,'2014-08-04 18:26:27','6c11399e198c0945b9669fc3742cdadf88b1423a',NULL,NULL),(132,'Сокольцов ','Вадим','Юрьевич',1,1,'1993-07-09','Тверь','3','3',132,'9214438239','uporotyy-chuvak_13086069_orig_.jpeg','image/jpeg',15668,'2014-08-08 20:41:24','341cdc545a02ffa1be001372b3de9998809b9d12',NULL,'2014-09-14 15:33:40'),(134,'ЛЕХА','ЛЕХА','ЛЕХА',1,1,'1993-07-09','Тверь',NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(136,'ЛЕХА','ЛЕХА','ЛЕХА',3,0,'1993-07-09','Тверь',NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(137,'Нургалиев','Ахтулбек','Мафасаичев',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(138,'ЛФоцтвлфоц','лофцтвлофцло','фцловтлофцло',1,1,'1993-07-09','aoiwjdoaiwj',NULL,NULL,NULL,'+79214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(139,'ЛФоцтвлфоц','лофцтвлофцло','фцловтлофцло',1,1,'1993-07-09','aoiwjdoaiwj',NULL,NULL,NULL,'+79214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(140,'ЛФоцтвлфоц','лофцтвлофцло','фцловтлофцло',1,1,'1993-07-09','aoiwjdoaiwj',NULL,NULL,NULL,'+79214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(141,'awdawda','wadawdaw','awdawdaw',1,1,'1993-07-09','awdawdaw',NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(142,'awdawda','wadawdaw','awdawdaw',1,1,'1993-07-09','awdawdaw',NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(143,'awdawda','wadawdaw','awdawdaw',1,1,'1993-07-09','awdawdaw','5','5',NULL,'89214438239',NULL,NULL,NULL,NULL,'a410bb7bfda08c2966f8914578ddb6ff3d401826',NULL,NULL),(144,'awdawda','wadawdaw','awdawdaw',1,1,'1993-07-09','awdawdaw',NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(145,'awdawda','wadawdaw','awdawdaw',1,1,'1993-07-09','awdawdaw',NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(146,'щшфцовщфшц','дфлцвдфцл','дцфовдфцдлв',1,1,'1993-07-09','дфлцьвдфлц',NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(147,'Сокольцов ','фдцлвьфдлц','дфцлвдлфц',1,0,'1993-07-09','awdawdawdawdaw','4','4',NULL,'+79214438239',NULL,NULL,NULL,NULL,'d4f5773a0db3f6c8b6b256caf56b3a0fbfc3f223',NULL,NULL),(148,'фьвдфцд','дфьцдвьфцд','дфьцдвьфцдл',1,0,'1993-07-09','awdawdawdawdaw',NULL,NULL,NULL,'+79214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(149,'jawndawkn','lkwldakwml','lawmdlmawlkd',1,1,'1993-07-09','aoiwjdoaiwj',NULL,NULL,NULL,'+79214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(150,'jawndawkn','lkwldakwml','lawmdlmawlkd',1,1,'1993-07-09','aoiwjdoaiwj',NULL,NULL,NULL,'+79214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(151,'asdlkawml','lawkmdlkawmlk','lawmdlkamwlk',1,1,'1993-07-09','Тверь',NULL,NULL,NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(152,'asdlkawml','lawkmdlkawmlk','lawmdlkamwlk',1,1,'1993-07-09','Тверь','11','11',152,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(153,'Сокольцов','фцвфцв','фцвфцвфц',1,0,'1990-08-02','awdaw','6','6',NULL,'89214438239',NULL,NULL,NULL,NULL,'0cef41608bb552a4f50b6108408b142c640df30c',NULL,NULL),(154,'awdawd','awdawd','wadawda',3,0,'1990-08-02','oawdawljdaw','7','7',NULL,'89214438239',NULL,NULL,NULL,NULL,'41f8e9f9f19f9bee203ecc63d31dba953ec45308',NULL,NULL),(155,'awdawd','awdawd','awdawdaw',2,0,'1922-02-02','awdlkawmdlkaw','8','8',NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(156,'lakwmdlkawm','mlkawmdlkaw','lkamwlkdmawlmd',2,0,'1922-02-02','alwdmlkawml','01','01',NULL,'89214438239',NULL,NULL,NULL,NULL,'c065d63d15ac4d6f37b14139d2e9871635cadfe0',NULL,NULL),(159,'awdlawmlkd','alwkmdlakwmdl','lawkmdlawmdlaw',1,1,'1993-07-09','awjdalwkj',NULL,NULL,NULL,'lkawmdlkawmdlkaw',NULL,NULL,NULL,NULL,NULL,'2014-09-11 21:48:36','2014-09-11 21:48:36'),(160,'akwjdn','lkamwdlkaw','lkmawlkdmlkaw',NULL,1,'2000-01-01','aklwdmlkawmd',NULL,NULL,NULL,'+79214438239',NULL,NULL,NULL,NULL,NULL,'2014-09-11 21:49:52','2014-09-11 21:49:52'),(161,'jkadnawkj','jawndawnlk','awjkdawndjaw',NULL,1,'2000-01-01','kajwdnkjawnd','161110920142109','5p7gDhA',NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,'2014-09-11 21:50:33','2014-09-11 21:50:33'),(162,'akwjndkajw','jknakwjdnkajw','kjnwakjndkjaw',1,1,'1993-07-09','ajwndawl','1621110920142109','cAx1aZQ',NULL,'89214438239',NULL,NULL,NULL,NULL,'b580422bc198b8c3d85b3c03dc0f88fe96512319','2014-09-11 21:58:28','2014-09-11 22:16:20'),(163,'akwjdnajw','lkawlkdmawl','lamwdkmakwl',1,1,'2002-02-09','alkwdlakw','1631110920142209','3kP4FiA',NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,'2014-09-11 22:16:57','2014-09-11 22:16:57'),(164,'akwjdnajw','lkawlkdmawl','lamwdkmakwl',1,1,'2002-02-09','alkwdlakw','1641110920142209','ITyNiyA',NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,'2014-09-11 22:19:33','2014-09-11 22:19:33'),(165,'lawmdlakwmd','klawmdlkawm','alwmdlkawmd',3,1,'2014-09-01','lkawmdlkamwld','1653140920141609','GbfHZWg',NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,'2014-09-14 16:16:17','2014-09-14 16:16:17'),(166,'kjasdkjwa','kjankdjawk','akdnakwjdkj',NULL,NULL,NULL,NULL,'166140920141609','9Hsgr_A',NULL,'89214438239',NULL,NULL,NULL,NULL,NULL,'2014-09-14 16:44:10','2014-09-14 16:44:10');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voen_pasports`
--

LOCK TABLES `voen_pasports` WRITE;
/*!40000 ALTER TABLE `voen_pasports` DISABLE KEYS */;
INSERT INTO `voen_pasports` VALUES (1,104,1234,12345,'awdaw','2010-10-09',1,1,1,1,1),(4,107,1234,12345,'awdaw','2010-10-09',1,1,1,1,1),(5,111,1234,12345,'awdaw','2010-10-09',1,1,1,1,1),(6,121,1234,12345,'awdaw','2010-10-09',1,1,1,1,1),(17,132,1234,123456,'sdszcszcz','2003-08-21',1,1,1,1,1),(18,16,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(19,1,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(21,134,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(23,136,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(24,138,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(25,139,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(26,140,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(27,141,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(28,142,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(29,143,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(30,144,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(31,145,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(32,146,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(33,147,NULL,NULL,'',NULL,1,1,1,1,1),(34,148,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(35,149,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(36,150,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(37,151,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(38,152,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(39,153,NULL,NULL,'',NULL,NULL,1,NULL,1,1),(40,154,NULL,NULL,'',NULL,1,1,NULL,1,0),(41,155,NULL,NULL,'',NULL,1,1,NULL,1,0),(42,156,NULL,NULL,'',NULL,2,1,NULL,1,1),(45,159,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(46,160,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(47,161,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(48,162,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(49,163,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(50,164,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(51,165,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2014-09-14 20:55:12
