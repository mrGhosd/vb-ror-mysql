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
-- Table structure for table `contact_information`
--

DROP TABLE IF EXISTS `contact_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_information` (
  `user_id` int(11) NOT NULL,
  `actual_adress` text NOT NULL,
  `phone_adress` int(11) NOT NULL,
  `mobile_phone` int(11) NOT NULL,
  `contact_person_surname` varchar(50) NOT NULL,
  `contact_person_name` varchar(50) NOT NULL,
  `contact_person_secondname` varchar(50) NOT NULL,
  `contact_person_phone` int(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_information`
--

LOCK TABLES `contact_information` WRITE;
/*!40000 ALTER TABLE `contact_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_information` ENABLE KEYS */;
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
-- Table structure for table `contribution_account`
--

DROP TABLE IF EXISTS `contribution_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contribution_account` (
  `depost_id` int(11) NOT NULL,
  `operation_summ` int(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `operation_date` date NOT NULL,
  `operation_time` time NOT NULL,
  `removed/brought` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contribution_account`
--

LOCK TABLES `contribution_account` WRITE;
/*!40000 ALTER TABLE `contribution_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `contribution_account` ENABLE KEYS */;
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
  `deposiе_current_summ` int(20) NOT NULL,
  `percent_id` int(11) NOT NULL,
  `begin_date` date NOT NULL,
  `response` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposits`
--

LOCK TABLES `deposits` WRITE;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `education_id` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
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
-- Table structure for table `loan_repayment`
--

DROP TABLE IF EXISTS `loan_repayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_repayment` (
  `loan_id` int(11) NOT NULL,
  `granted_summ` int(15) NOT NULL,
  `date_change` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_repayment`
--

LOCK TABLES `loan_repayment` WRITE;
/*!40000 ALTER TABLE `loan_repayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_repayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loans` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `loan_summ` int(20) NOT NULL,
  `begin_date` date NOT NULL,
  `end_date` date NOT NULL,
  `percent_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `response` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nationality`
--

DROP TABLE IF EXISTS `nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nationality` (
  `nationality_id` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationality`
--

LOCK TABLES `nationality` WRITE;
/*!40000 ALTER TABLE `nationality` DISABLE KEYS */;
/*!40000 ALTER TABLE `nationality` ENABLE KEYS */;
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
INSERT INTO `partners` VALUES (1,'ОАО \"Газпром\"','Бла-бла-бла, что за хуйня?!','http://vk.com',1,'umpbmy0rkW4.jpg','image/jpeg',29162,'2014-06-17 17:06:02','2014-06-17 17:06:02','2014-06-17 19:15:08');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passport`
--

DROP TABLE IF EXISTS `passport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passport` (
  `user_id` int(11) NOT NULL,
  `pasport_seria` int(11) NOT NULL,
  `pasport_number` int(11) NOT NULL,
  `pasport_when` date NOT NULL,
  `pasport_where` text NOT NULL,
  `pasport_code` int(11) NOT NULL,
  `definite_registration` text NOT NULL,
  `old_pasport_seria` int(11) NOT NULL,
  `old_pasport_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passport`
--

LOCK TABLES `passport` WRITE;
/*!40000 ALTER TABLE `passport` DISABLE KEYS */;
/*!40000 ALTER TABLE `passport` ENABLE KEYS */;
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
-- Table structure for table `relationship`
--

DROP TABLE IF EXISTS `relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationship` (
  `relashionship_id` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationship`
--

LOCK TABLES `relationship` WRITE;
/*!40000 ALTER TABLE `relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `relationship` ENABLE KEYS */;
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
-- Table structure for table `role_contract`
--

DROP TABLE IF EXISTS `role_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_contract` (
  `user_id` int(11) NOT NULL,
  `rank_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `military_unit` text NOT NULL,
  `unit_address` text NOT NULL,
  `duty_phone` int(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_contract`
--

LOCK TABLES `role_contract` WRITE;
/*!40000 ALTER TABLE `role_contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_kursant`
--

DROP TABLE IF EXISTS `role_kursant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_kursant` (
  `user_id` int(11) NOT NULL,
  `univercity_name` varchar(100) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `course` int(11) NOT NULL,
  `graduate_date` date NOT NULL,
  `course_post` text NOT NULL,
  `excelent_student` tinyint(1) NOT NULL,
  `debt` tinyint(1) NOT NULL,
  `contract` tinyint(1) NOT NULL,
  `duty_phone` int(11) NOT NULL,
  `education_phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_kursant`
--

LOCK TABLES `role_kursant` WRITE;
/*!40000 ALTER TABLE `role_kursant` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_kursant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_officer`
--

DROP TABLE IF EXISTS `role_officer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_officer` (
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `unit_number` int(11) NOT NULL,
  `unit_address` text NOT NULL,
  `duty_phone` int(21) NOT NULL,
  `rank_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_officer`
--

LOCK TABLES `role_officer` WRITE;
/*!40000 ALTER TABLE `role_officer` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_officer` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20140523215849'),('20140524123336'),('20140525184932'),('20140525201008'),('20140610165137'),('20140613200354'),('20140617164332'),('20140617192323'),('20140617203423'),('20140624200307'),('20140625175136'),('20140626201655'),('20140628151841');
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
-- Table structure for table `specialization`
--

DROP TABLE IF EXISTS `specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specialization` (
  `specialization_id` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialization`
--

LOCK TABLES `specialization` WRITE;
/*!40000 ALTER TABLE `specialization` DISABLE KEYS */;
/*!40000 ALTER TABLE `specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sport_mastery`
--

DROP TABLE IF EXISTS `sport_mastery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sport_mastery` (
  `sport_mastery_id` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sport_mastery`
--

LOCK TABLES `sport_mastery` WRITE;
/*!40000 ALTER TABLE `sport_mastery` DISABLE KEYS */;
/*!40000 ALTER TABLE `sport_mastery` ENABLE KEYS */;
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
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `secondname` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `date_of_birth` date NOT NULL,
  `place_of_birth` text NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `session` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Сокольцов','Вадим','Юрьевич',1,0,'1993-07-09','awdawdawdawdaw','1','1',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voen_pasport`
--

DROP TABLE IF EXISTS `voen_pasport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voen_pasport` (
  `user_id` int(11) NOT NULL,
  `voen_seria` int(11) NOT NULL,
  `voen_number` int(11) NOT NULL,
  `voen_where` text NOT NULL,
  `voen_when` date NOT NULL,
  `nationality_id` int(11) NOT NULL,
  `education_id` int(11) NOT NULL,
  `relashionship_id` int(11) NOT NULL,
  `specialization_id` int(11) NOT NULL,
  `sport_mastery_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voen_pasport`
--

LOCK TABLES `voen_pasport` WRITE;
/*!40000 ALTER TABLE `voen_pasport` DISABLE KEYS */;
/*!40000 ALTER TABLE `voen_pasport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-07 20:37:51
