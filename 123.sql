CREATE DATABASE  IF NOT EXISTS `computerdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `computerdb`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: computerdb
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `baskets`
--

DROP TABLE IF EXISTS `baskets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `baskets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valueTovar` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baskets`
--

LOCK TABLES `baskets` WRITE;
/*!40000 ALTER TABLE `baskets` DISABLE KEYS */;
INSERT INTO `baskets` VALUES (1,0,'2019-02-11 10:18:27','2019-02-11 13:27:15');
/*!40000 ALTER TABLE `baskets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video` int(11) DEFAULT NULL,
  `CategoryName` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `processor` int(11) DEFAULT NULL,
  `Links` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_CATEGORIES` (`CategoryName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,2,'Видеокарты','2019-02-03 14:27:53','2019-02-11 07:02:25',NULL,'Videos'),(2,NULL,'Процессоры','2019-02-04 18:28:21','2019-02-04 19:05:51',3,'Processors');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `core_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_CORE_STORE` (`key`,`value`,`type`,`environment`,`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'db_model_core_store','{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}','object',NULL,NULL),(2,'db_model_users-permissions_user','{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false}}','object',NULL,NULL),(3,'db_model_users-permissions_permission','{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}}','object',NULL,NULL),(4,'db_model_users-permissions_role','{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"isVirtual\":true}}','object',NULL,NULL),(5,'db_model_upload_file','{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"sha256\":{\"type\":\"string\",\"configurable\":false},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"public_id\":{\"type\":\"string\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(6,'db_model_upload_file_morph','{\"upload_file_id\":{\"type\":\"integer\"},\"related_id\":{\"type\":\"integer\"},\"related_type\":{\"type\":\"text\"},\"field\":{\"type\":\"text\"}}','object',NULL,NULL),(7,'plugin_content-manager_schema','{\"generalSettings\":{\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10},\"models\":{\"plugins\":{\"upload\":{\"file\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Hash\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"hash\",\"sortable\":true,\"searchable\":true},{\"label\":\"Sha256\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"sha256\",\"sortable\":true,\"searchable\":true},{\"label\":\"Ext\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"ext\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"upload_file\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"file\",\"description\":\"\"},\"globalName\":\"UploadFile\",\"associations\":[{\"alias\":\"related\",\"type\":\"collection\",\"related\":[\"Processor\",\"Video\"],\"nature\":\"manyMorphToOne\",\"autoPopulate\":true,\"filter\":\"field\"}],\"label\":\"File\",\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"sha256\":{\"type\":\"string\",\"configurable\":false},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"public_id\":{\"type\":\"string\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false}},\"relations\":{\"related\":{\"alias\":\"related\",\"type\":\"collection\",\"related\":[\"Processor\",\"Video\"],\"nature\":\"manyMorphToOne\",\"autoPopulate\":true,\"filter\":\"field\",\"description\":\"\",\"label\":\"Related\",\"displayedAttribute\":\"id\"}},\"editDisplay\":{\"availableFields\":{\"size\":{\"label\":\"Size\",\"type\":\"string\",\"description\":\"\",\"name\":\"size\",\"editable\":true,\"placeholder\":\"\"},\"ext\":{\"label\":\"Ext\",\"type\":\"string\",\"description\":\"\",\"name\":\"ext\",\"editable\":true,\"placeholder\":\"\"},\"sha256\":{\"label\":\"Sha256\",\"type\":\"string\",\"description\":\"\",\"name\":\"sha256\",\"editable\":true,\"placeholder\":\"\"},\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"hash\":{\"label\":\"Hash\",\"type\":\"string\",\"description\":\"\",\"name\":\"hash\",\"editable\":true,\"placeholder\":\"\"},\"url\":{\"label\":\"Url\",\"type\":\"string\",\"description\":\"\",\"name\":\"url\",\"editable\":true,\"placeholder\":\"\"},\"provider\":{\"label\":\"Provider\",\"type\":\"string\",\"description\":\"\",\"name\":\"provider\",\"editable\":true,\"placeholder\":\"\"},\"public_id\":{\"label\":\"Public_id\",\"type\":\"string\",\"description\":\"\",\"name\":\"public_id\",\"editable\":true,\"placeholder\":\"\"},\"mime\":{\"label\":\"Mime\",\"type\":\"string\",\"description\":\"\",\"name\":\"mime\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"name\",\"hash\",\"sha256\",\"ext\",\"mime\",\"size\",\"url\",\"provider\",\"public_id\"],\"relations\":[]},\"labelPlural\":\"Files\",\"fields\":{\"size\":{\"label\":\"Size\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"size\",\"sortable\":true,\"searchable\":true},\"ext\":{\"label\":\"Ext\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"ext\",\"sortable\":true,\"searchable\":true},\"sha256\":{\"label\":\"Sha256\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"sha256\",\"sortable\":true,\"searchable\":true},\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"hash\":{\"label\":\"Hash\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"hash\",\"sortable\":true,\"searchable\":true},\"url\":{\"label\":\"Url\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"url\",\"sortable\":true,\"searchable\":true},\"provider\":{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},\"public_id\":{\"label\":\"Public_id\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"public_id\",\"sortable\":true,\"searchable\":true},\"mime\":{\"label\":\"Mime\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"mime\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"UploadFile\",\"sort\":\"ASC\",\"connection\":\"default\",\"defaultSort\":\"id\"}},\"users-permissions\":{\"permission\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true},{\"label\":\"Controller\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"controller\",\"sortable\":true,\"searchable\":true},{\"label\":\"Action\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"action\",\"sortable\":true,\"searchable\":true},{\"label\":\"Enabled\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"enabled\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"users-permissions_permission\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"permission\",\"description\":\"\"},\"globalName\":\"UsersPermissionsPermission\",\"associations\":[{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"permissions\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"label\":\"Permission\",\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}},\"relations\":{\"role\":{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"permissions\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Role\",\"displayedAttribute\":\"name\"}},\"editDisplay\":{\"availableFields\":{\"type\":{\"label\":\"Type\",\"type\":\"string\",\"description\":\"\",\"name\":\"type\",\"editable\":true,\"placeholder\":\"\"},\"controller\":{\"label\":\"Controller\",\"type\":\"string\",\"description\":\"\",\"name\":\"controller\",\"editable\":true,\"placeholder\":\"\"},\"action\":{\"label\":\"Action\",\"type\":\"string\",\"description\":\"\",\"name\":\"action\",\"editable\":true,\"placeholder\":\"\"},\"enabled\":{\"label\":\"Enabled\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"enabled\",\"editable\":true,\"placeholder\":\"\"},\"policy\":{\"label\":\"Policy\",\"type\":\"string\",\"description\":\"\",\"name\":\"policy\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"type\",\"controller\",\"action\",\"enabled\",\"policy\"],\"relations\":[\"role\"]},\"labelPlural\":\"Permissions\",\"fields\":{\"type\":{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true},\"controller\":{\"label\":\"Controller\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"controller\",\"sortable\":true,\"searchable\":true},\"action\":{\"label\":\"Action\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"action\",\"sortable\":true,\"searchable\":true},\"enabled\":{\"label\":\"Enabled\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"enabled\",\"sortable\":true,\"searchable\":true},\"policy\":{\"label\":\"Policy\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"policy\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"UsersPermissionsPermission\",\"sort\":\"ASC\",\"connection\":\"default\",\"defaultSort\":\"id\"},\"role\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Description\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true},{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"users-permissions_role\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"role\",\"description\":\"\"},\"globalName\":\"UsersPermissionsRole\",\"associations\":[{\"alias\":\"permissions\",\"type\":\"collection\",\"collection\":\"permission\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"},{\"alias\":\"users\",\"type\":\"collection\",\"collection\":\"user\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"label\":\"Role\",\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"isVirtual\":true}},\"relations\":{\"permissions\":{\"alias\":\"permissions\",\"type\":\"collection\",\"collection\":\"permission\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Permissions\",\"displayedAttribute\":\"type\"},\"users\":{\"alias\":\"users\",\"type\":\"collection\",\"collection\":\"user\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Users\",\"displayedAttribute\":\"username\"}},\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"description\":{\"label\":\"Description\",\"type\":\"string\",\"description\":\"\",\"name\":\"description\",\"editable\":true,\"placeholder\":\"\"},\"type\":{\"label\":\"Type\",\"type\":\"string\",\"description\":\"\",\"name\":\"type\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"name\",\"description\",\"type\"],\"relations\":[\"permissions\",\"users\"]},\"labelPlural\":\"Roles\",\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"description\":{\"label\":\"Description\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true},\"type\":{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"UsersPermissionsRole\",\"sort\":\"ASC\",\"connection\":\"default\",\"defaultSort\":\"id\"},\"user\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true},{\"label\":\"Confirmed\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"confirmed\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"users-permissions_user\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"user\",\"description\":\"\"},\"globalName\":\"UsersPermissionsUser\",\"associations\":[{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"users\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"label\":\"User\",\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false}},\"relations\":{\"role\":{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"users\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Role\",\"displayedAttribute\":\"name\"}},\"editDisplay\":{\"availableFields\":{\"username\":{\"label\":\"Username\",\"type\":\"string\",\"description\":\"\",\"name\":\"username\",\"editable\":true,\"placeholder\":\"\"},\"email\":{\"label\":\"Email\",\"type\":\"email\",\"description\":\"\",\"name\":\"email\",\"editable\":true,\"placeholder\":\"\"},\"password\":{\"label\":\"Password\",\"type\":\"password\",\"description\":\"\",\"name\":\"password\",\"editable\":true,\"placeholder\":\"\"},\"confirmed\":{\"label\":\"Confirmed\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"confirmed\",\"editable\":true,\"placeholder\":\"\"},\"blocked\":{\"label\":\"Blocked\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"blocked\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"username\",\"email\",\"password\",\"confirmed\",\"blocked\"],\"relations\":[\"role\"]},\"labelPlural\":\"Users\",\"fields\":{\"username\":{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},\"email\":{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},\"password\":{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true},\"confirmed\":{\"label\":\"Confirmed\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"confirmed\",\"sortable\":true,\"searchable\":true},\"blocked\":{\"label\":\"Blocked\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"blocked\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"UsersPermissionsUser\",\"sort\":\"ASC\",\"connection\":\"default\",\"defaultSort\":\"id\"}}},\"blocked\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Title\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"title\",\"sortable\":true,\"searchable\":true},{\"default\":\"\",\"type\":\"text\",\"name\":\"content\",\"label\":\"Content\",\"searchable\":true,\"sortable\":true},{\"default\":\"\",\"type\":\"text\",\"name\":\"oglav\",\"label\":\"Oglav\",\"searchable\":true,\"sortable\":true},{\"default\":\"\",\"type\":\"text\",\"name\":\"text_one\",\"label\":\"Text_one\",\"searchable\":true,\"sortable\":true},{\"default\":\"\",\"type\":\"text\",\"name\":\"text_two\",\"label\":\"Text_two\",\"searchable\":true,\"sortable\":true},{\"default\":\"\",\"type\":\"text\",\"name\":\"text_five\",\"label\":\"Text_five\",\"searchable\":true,\"sortable\":true},{\"default\":\"\",\"type\":\"text\",\"name\":\"text_three\",\"label\":\"Text_three\",\"searchable\":true,\"sortable\":true},{\"default\":\"\",\"type\":\"text\",\"name\":\"text_six\",\"label\":\"Text_six\",\"searchable\":true,\"sortable\":true},{\"default\":\"\",\"type\":\"text\",\"name\":\"text_four\",\"label\":\"Text_four\",\"searchable\":true,\"sortable\":true},{\"default\":\"\",\"type\":\"text\",\"name\":\"text_seven\",\"label\":\"Text_seven\",\"searchable\":true,\"sortable\":true}],\"search\":true,\"collectionName\":\"posts\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"blocked\",\"description\":\"\"},\"globalName\":\"Blocked\",\"associations\":[],\"label\":\"Blocked\",\"attributes\":{\"title\":{\"default\":\"\",\"type\":\"string\"},\"content\":{\"default\":\"\",\"type\":\"text\"},\"oglav\":{\"default\":\"\",\"type\":\"text\"},\"text_one\":{\"default\":\"\",\"type\":\"text\"},\"text_two\":{\"default\":\"\",\"type\":\"text\"},\"text_three\":{\"default\":\"\",\"type\":\"text\"},\"text_four\":{\"default\":\"\",\"type\":\"text\"},\"text_five\":{\"default\":\"\",\"type\":\"text\"},\"text_seven\":{\"default\":\"\",\"type\":\"text\"},\"text_six\":{\"default\":\"\",\"type\":\"text\"}},\"relations\":{},\"editDisplay\":{\"availableFields\":{\"text_five\":{\"label\":\"Text_five\",\"type\":\"text\",\"description\":\"\",\"name\":\"text_five\",\"editable\":true,\"placeholder\":\"\"},\"oglav\":{\"label\":\"Oglav\",\"type\":\"text\",\"description\":\"\",\"name\":\"oglav\",\"editable\":true,\"placeholder\":\"\"},\"text_three\":{\"label\":\"Text_three\",\"type\":\"text\",\"description\":\"\",\"name\":\"text_three\",\"editable\":true,\"placeholder\":\"\"},\"text_six\":{\"label\":\"Text_six\",\"type\":\"text\",\"description\":\"\",\"name\":\"text_six\",\"editable\":true,\"placeholder\":\"\"},\"text_one\":{\"label\":\"Text_one\",\"type\":\"text\",\"description\":\"\",\"name\":\"text_one\",\"editable\":true,\"placeholder\":\"\"},\"text_four\":{\"label\":\"Text_four\",\"type\":\"text\",\"description\":\"\",\"name\":\"text_four\",\"editable\":true,\"placeholder\":\"\"},\"title\":{\"label\":\"Title\",\"type\":\"string\",\"description\":\"\",\"name\":\"title\",\"editable\":true,\"placeholder\":\"\"},\"content\":{\"label\":\"Content\",\"type\":\"text\",\"description\":\"\",\"name\":\"content\",\"editable\":true,\"placeholder\":\"\"},\"text_two\":{\"label\":\"Text_two\",\"type\":\"text\",\"description\":\"\",\"name\":\"text_two\",\"editable\":true,\"placeholder\":\"\"},\"text_seven\":{\"label\":\"Text_seven\",\"type\":\"text\",\"description\":\"\",\"name\":\"text_seven\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"title\",\"__col-md-6__2u84he\",\"oglav\",\"text_one\",\"text_two\",\"text_three\",\"text_four\",\"text_five\",\"text_seven\",\"text_six\"],\"relations\":[]},\"labelPlural\":\"Blockeds\",\"fields\":{\"text_five\":{\"label\":\"Text_five\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"text_five\",\"sortable\":true,\"searchable\":true},\"oglav\":{\"label\":\"Oglav\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"oglav\",\"sortable\":true,\"searchable\":true},\"text_three\":{\"label\":\"Text_three\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"text_three\",\"sortable\":true,\"searchable\":true},\"text_six\":{\"label\":\"Text_six\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"text_six\",\"sortable\":true,\"searchable\":true},\"text_one\":{\"label\":\"Text_one\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"text_one\",\"sortable\":true,\"searchable\":true},\"text_four\":{\"label\":\"Text_four\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"text_four\",\"sortable\":true,\"searchable\":true},\"title\":{\"label\":\"Title\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"title\",\"sortable\":true,\"searchable\":true},\"content\":{\"label\":\"Content\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"content\",\"sortable\":true,\"searchable\":true},\"text_two\":{\"label\":\"Text_two\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"text_two\",\"sortable\":true,\"searchable\":true},\"text_seven\":{\"label\":\"Text_seven\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"text_seven\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Blocked\",\"sort\":\"ASC\",\"connection\":\"default\",\"defaultSort\":\"id\"},\"category\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"default\":\"\",\"type\":\"string\",\"name\":\"CategoryName\",\"label\":\"CategoryName\",\"searchable\":true,\"sortable\":true},{\"default\":\"\",\"type\":\"string\",\"name\":\"Links\",\"label\":\"Links\",\"searchable\":true,\"sortable\":true}],\"search\":true,\"collectionName\":\"categories\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"category\",\"description\":\"\"},\"globalName\":\"Category\",\"associations\":[{\"alias\":\"video\",\"type\":\"collection\",\"collection\":\"video\",\"via\":\"category\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true},{\"alias\":\"processor\",\"type\":\"model\",\"model\":\"processor\",\"via\":\"category\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true}],\"label\":\"Category\",\"attributes\":{\"video\":{\"collection\":\"video\",\"via\":\"category\",\"isVirtual\":true},\"CategoryName\":{\"default\":\"\",\"type\":\"string\"},\"Links\":{\"default\":\"\",\"type\":\"string\"},\"processor\":{\"model\":\"processor\",\"via\":\"category\"}},\"relations\":{\"video\":{\"alias\":\"video\",\"type\":\"collection\",\"collection\":\"video\",\"via\":\"category\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Video\",\"displayedAttribute\":\"graficchips\"},\"processor\":{\"alias\":\"processor\",\"type\":\"model\",\"model\":\"processor\",\"via\":\"category\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Processor\",\"displayedAttribute\":\"Title\"}},\"editDisplay\":{\"availableFields\":{\"CategoryName\":{\"label\":\"CategoryName\",\"type\":\"string\",\"description\":\"\",\"name\":\"CategoryName\",\"editable\":true,\"placeholder\":\"\"},\"Links\":{\"label\":\"Links\",\"type\":\"string\",\"description\":\"\",\"name\":\"Links\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"CategoryName\",\"Links\"],\"relations\":[\"video\",\"processor\"]},\"labelPlural\":\"Categories\",\"fields\":{\"CategoryName\":{\"label\":\"CategoryName\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"CategoryName\",\"sortable\":true,\"searchable\":true},\"Links\":{\"label\":\"Links\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"Links\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Category\",\"sort\":\"ASC\",\"connection\":\"default\",\"defaultSort\":\"id\"},\"video\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"default\":\"\",\"type\":\"string\",\"name\":\"Title\",\"label\":\"Title\",\"searchable\":true,\"sortable\":true},{\"label\":\"Graficchips\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"graficchips\",\"sortable\":true,\"searchable\":true},{\"label\":\"ValueMemory\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"ValueMemory\",\"sortable\":true,\"searchable\":true},{\"default\":\"\",\"type\":\"string\",\"name\":\"DopPower\",\"label\":\"DopPower\",\"searchable\":true,\"sortable\":true},{\"default\":\"\",\"type\":\"string\",\"name\":\"Razemy\",\"label\":\"Razemy\",\"searchable\":true,\"sortable\":true},{\"default\":\"\",\"type\":\"string\",\"name\":\"Interface\",\"label\":\"Interface\",\"searchable\":true,\"sortable\":true},{\"default\":\"\",\"type\":\"string\",\"name\":\"TypeMemory\",\"label\":\"TypeMemory\",\"searchable\":true,\"sortable\":true},{\"default\":\"\",\"type\":\"string\",\"name\":\"ShinuMemory\",\"label\":\"ShinuMemory\",\"searchable\":true,\"sortable\":true}],\"search\":true,\"collectionName\":\"videos\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"video\",\"description\":\"\"},\"globalName\":\"Video\",\"associations\":[{\"alias\":\"category\",\"type\":\"model\",\"model\":\"category\",\"via\":\"video\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true},{\"alias\":\"itemsattributs\",\"type\":\"model\",\"model\":\"itemsattributs\",\"via\":\"video\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true},{\"alias\":\"image\",\"type\":\"model\",\"model\":\"file\",\"via\":\"related\",\"nature\":\"oneToManyMorph\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"upload\",\"filter\":\"field\"},{\"alias\":\"proisvoditename\",\"type\":\"model\",\"model\":\"proisvoditename\",\"via\":\"video\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true}],\"label\":\"Video\",\"attributes\":{\"graficchips\":{\"default\":\"\",\"type\":\"string\"},\"ValueMemory\":{\"default\":\"\",\"type\":\"string\"},\"ShinuMemory\":{\"default\":\"\",\"type\":\"string\"},\"TypeMemory\":{\"default\":\"\",\"type\":\"string\"},\"Interface\":{\"default\":\"\",\"type\":\"string\"},\"DopPower\":{\"default\":\"\",\"type\":\"string\"},\"Razemy\":{\"default\":\"\",\"type\":\"string\"},\"category\":{\"model\":\"category\",\"via\":\"video\"},\"itemsattributs\":{\"model\":\"itemsattributs\",\"via\":\"video\"},\"image\":{\"model\":\"file\",\"via\":\"related\",\"plugin\":\"upload\",\"required\":false},\"Title\":{\"default\":\"\",\"type\":\"string\"},\"proisvoditename\":{\"model\":\"proisvoditename\",\"via\":\"video\"}},\"relations\":{\"category\":{\"alias\":\"category\",\"type\":\"model\",\"model\":\"category\",\"via\":\"video\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Category\",\"displayedAttribute\":\"CategoryName\"},\"itemsattributs\":{\"alias\":\"itemsattributs\",\"type\":\"model\",\"model\":\"itemsattributs\",\"via\":\"video\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Itemsattributs\",\"displayedAttribute\":\"id\"},\"image\":{\"alias\":\"image\",\"type\":\"model\",\"model\":\"file\",\"via\":\"related\",\"nature\":\"oneToManyMorph\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"upload\",\"filter\":\"field\",\"description\":\"\",\"label\":\"Image\",\"displayedAttribute\":\"name\"},\"proisvoditename\":{\"alias\":\"proisvoditename\",\"type\":\"model\",\"model\":\"proisvoditename\",\"via\":\"video\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Proisvoditename\",\"displayedAttribute\":\"Name\"}},\"editDisplay\":{\"availableFields\":{\"DopPower\":{\"label\":\"DopPower\",\"type\":\"string\",\"description\":\"\",\"name\":\"DopPower\",\"editable\":true,\"placeholder\":\"\"},\"Razemy\":{\"label\":\"Razemy\",\"type\":\"string\",\"description\":\"\",\"name\":\"Razemy\",\"editable\":true,\"placeholder\":\"\"},\"ValueMemory\":{\"label\":\"ValueMemory\",\"type\":\"string\",\"description\":\"\",\"name\":\"ValueMemory\",\"editable\":true,\"placeholder\":\"\"},\"Title\":{\"label\":\"Title\",\"type\":\"string\",\"description\":\"\",\"name\":\"Title\",\"editable\":true,\"placeholder\":\"\"},\"Interface\":{\"label\":\"Interface\",\"type\":\"string\",\"description\":\"\",\"name\":\"Interface\",\"editable\":true,\"placeholder\":\"\"},\"TypeMemory\":{\"label\":\"TypeMemory\",\"type\":\"string\",\"description\":\"\",\"name\":\"TypeMemory\",\"editable\":true,\"placeholder\":\"\"},\"image\":{\"description\":\"\",\"editable\":true,\"label\":\"Image\",\"multiple\":false,\"name\":\"image\",\"placeholder\":\"\",\"type\":\"file\",\"disabled\":false},\"ShinuMemory\":{\"label\":\"ShinuMemory\",\"type\":\"string\",\"description\":\"\",\"name\":\"ShinuMemory\",\"editable\":true,\"placeholder\":\"\"},\"graficchips\":{\"label\":\"Graficchips\",\"type\":\"string\",\"description\":\"\",\"name\":\"graficchips\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"Title\",\"graficchips\",\"ValueMemory\",\"__col-md-6__i7gjgr\",\"ShinuMemory\",\"TypeMemory\",\"Interface\",\"__col-md-4__h18606\",\"DopPower\",\"Razemy\",\"image\",\"__col-md-6__830\"],\"relations\":[\"category\",\"itemsattributs\",\"proisvoditename\"]},\"labelPlural\":\"Videos\",\"fields\":{\"graficchips\":{\"label\":\"Graficchips\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"graficchips\",\"sortable\":true,\"searchable\":true},\"ValueMemory\":{\"label\":\"ValueMemory\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"ValueMemory\",\"sortable\":true,\"searchable\":true},\"ShinuMemory\":{\"label\":\"ShinuMemory\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"ShinuMemory\",\"sortable\":true,\"searchable\":true},\"TypeMemory\":{\"label\":\"TypeMemory\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"TypeMemory\",\"sortable\":true,\"searchable\":true},\"Interface\":{\"label\":\"Interface\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"Interface\",\"sortable\":true,\"searchable\":true},\"DopPower\":{\"label\":\"DopPower\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"DopPower\",\"sortable\":true,\"searchable\":true},\"Razemy\":{\"label\":\"Razemy\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"Razemy\",\"sortable\":true,\"searchable\":true},\"Title\":{\"label\":\"Title\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"Title\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Video\",\"sort\":\"ASC\",\"connection\":\"default\",\"defaultSort\":\"id\"},\"itemsattributs\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"New\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"new\",\"sortable\":true,\"searchable\":true},{\"label\":\"Top\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"top\",\"sortable\":true,\"searchable\":true},{\"label\":\"SortItems\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"SortItems\",\"sortable\":true,\"searchable\":true},{\"label\":\"Price\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"price\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"itemsattributs\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"itemsattributs\",\"description\":\"\"},\"globalName\":\"Itemsattributs\",\"associations\":[{\"alias\":\"video\",\"type\":\"model\",\"model\":\"video\",\"via\":\"itemsattributs\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true},{\"alias\":\"processor\",\"type\":\"model\",\"model\":\"processor\",\"via\":\"itemsattributs\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true}],\"label\":\"Itemsattributs\",\"attributes\":{\"new\":{\"default\":\"\",\"type\":\"integer\"},\"top\":{\"default\":\"\",\"type\":\"integer\"},\"SortItems\":{\"default\":\"\",\"type\":\"integer\"},\"price\":{\"default\":\"\",\"type\":\"integer\"},\"video\":{\"model\":\"video\",\"via\":\"itemsattributs\"},\"processor\":{\"model\":\"processor\",\"via\":\"itemsattributs\"}},\"relations\":{\"video\":{\"alias\":\"video\",\"type\":\"model\",\"model\":\"video\",\"via\":\"itemsattributs\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Video\",\"displayedAttribute\":\"graficchips\"},\"processor\":{\"alias\":\"processor\",\"type\":\"model\",\"model\":\"processor\",\"via\":\"itemsattributs\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Processor\",\"displayedAttribute\":\"Title\"}},\"editDisplay\":{\"availableFields\":{\"new\":{\"label\":\"New\",\"type\":\"integer\",\"description\":\"\",\"name\":\"new\",\"editable\":true,\"placeholder\":\"\"},\"top\":{\"label\":\"Top\",\"type\":\"integer\",\"description\":\"\",\"name\":\"top\",\"editable\":true,\"placeholder\":\"\"},\"SortItems\":{\"label\":\"SortItems\",\"type\":\"integer\",\"description\":\"\",\"name\":\"SortItems\",\"editable\":true,\"placeholder\":\"\"},\"price\":{\"label\":\"Price\",\"type\":\"integer\",\"description\":\"\",\"name\":\"price\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"new\",\"top\",\"SortItems\",\"price\"],\"relations\":[\"video\",\"processor\"]},\"labelPlural\":\"Itemsattributs\",\"fields\":{\"new\":{\"label\":\"New\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"new\",\"sortable\":true,\"searchable\":true},\"top\":{\"label\":\"Top\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"top\",\"sortable\":true,\"searchable\":true},\"SortItems\":{\"label\":\"SortItems\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"SortItems\",\"sortable\":true,\"searchable\":true},\"price\":{\"label\":\"Price\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"price\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Itemsattributs\",\"sort\":\"ASC\",\"connection\":\"default\",\"defaultSort\":\"id\"},\"proisvoditename\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"Name\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"proisvoditenames\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"proisvoditename\",\"description\":\"\"},\"globalName\":\"Proisvoditename\",\"associations\":[{\"alias\":\"video\",\"type\":\"model\",\"model\":\"video\",\"via\":\"proisvoditename\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true},{\"alias\":\"processor\",\"type\":\"model\",\"model\":\"processor\",\"via\":\"proisvoditename\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true}],\"label\":\"Proisvoditename\",\"attributes\":{\"Name\":{\"default\":\"\",\"type\":\"string\"},\"video\":{\"model\":\"video\",\"via\":\"proisvoditename\"},\"processor\":{\"model\":\"processor\",\"via\":\"proisvoditename\"}},\"relations\":{\"video\":{\"alias\":\"video\",\"type\":\"model\",\"model\":\"video\",\"via\":\"proisvoditename\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Video\",\"displayedAttribute\":\"graficchips\"},\"processor\":{\"alias\":\"processor\",\"type\":\"model\",\"model\":\"processor\",\"via\":\"proisvoditename\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Processor\",\"displayedAttribute\":\"Title\"}},\"editDisplay\":{\"availableFields\":{\"Name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"Name\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"Name\"],\"relations\":[\"video\",\"processor\"]},\"labelPlural\":\"Proisvoditenames\",\"fields\":{\"Name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"Name\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Proisvoditename\",\"sort\":\"ASC\",\"connection\":\"default\",\"defaultSort\":\"id\"},\"processor\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Title\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"Title\",\"sortable\":true,\"searchable\":true},{\"label\":\"Familyprocessor\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"familyprocessor\",\"sortable\":true,\"searchable\":true},{\"label\":\"Pokolenyyprocessor\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"pokolenyyprocessor\",\"sortable\":true,\"searchable\":true},{\"label\":\"Kolovo_yader\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"kolovo_yader\",\"sortable\":true,\"searchable\":true},{\"default\":\"\",\"type\":\"string\",\"name\":\"TypeMemory\",\"label\":\"TypeMemory\",\"searchable\":true,\"sortable\":true},{\"default\":\"\",\"type\":\"string\",\"name\":\"chastotaout\",\"label\":\"Chastotaout\",\"searchable\":true,\"sortable\":true}],\"search\":true,\"collectionName\":\"processors\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"processor\",\"description\":\"\"},\"globalName\":\"Processor\",\"associations\":[{\"alias\":\"proisvoditename\",\"type\":\"model\",\"model\":\"proisvoditename\",\"via\":\"processor\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true},{\"alias\":\"itemsattributs\",\"type\":\"model\",\"model\":\"itemsattributs\",\"via\":\"processor\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true},{\"alias\":\"image\",\"type\":\"model\",\"model\":\"file\",\"via\":\"related\",\"nature\":\"oneToManyMorph\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"upload\",\"filter\":\"field\"},{\"alias\":\"category\",\"type\":\"model\",\"model\":\"category\",\"via\":\"processor\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true}],\"label\":\"Processor\",\"attributes\":{\"Title\":{\"default\":\"\",\"type\":\"string\"},\"familyprocessor\":{\"default\":\"\",\"type\":\"string\"},\"pokolenyyprocessor\":{\"default\":\"\",\"type\":\"string\"},\"kolovo_yader\":{\"default\":\"\",\"type\":\"integer\"},\"TypeMemory\":{\"default\":\"\",\"type\":\"string\"},\"chastotaout\":{\"default\":\"\",\"type\":\"string\"},\"proisvoditename\":{\"model\":\"proisvoditename\",\"via\":\"processor\"},\"itemsattributs\":{\"model\":\"itemsattributs\",\"via\":\"processor\"},\"image\":{\"model\":\"file\",\"via\":\"related\",\"plugin\":\"upload\",\"required\":false},\"category\":{\"model\":\"category\",\"via\":\"processor\"}},\"relations\":{\"proisvoditename\":{\"alias\":\"proisvoditename\",\"type\":\"model\",\"model\":\"proisvoditename\",\"via\":\"processor\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Proisvoditename\",\"displayedAttribute\":\"Name\"},\"itemsattributs\":{\"alias\":\"itemsattributs\",\"type\":\"model\",\"model\":\"itemsattributs\",\"via\":\"processor\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Itemsattributs\",\"displayedAttribute\":\"id\"},\"image\":{\"alias\":\"image\",\"type\":\"model\",\"model\":\"file\",\"via\":\"related\",\"nature\":\"oneToManyMorph\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"upload\",\"filter\":\"field\",\"description\":\"\",\"label\":\"Image\",\"displayedAttribute\":\"name\"},\"category\":{\"alias\":\"category\",\"type\":\"model\",\"model\":\"category\",\"via\":\"processor\",\"nature\":\"oneToOne\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Category\",\"displayedAttribute\":\"CategoryName\"}},\"editDisplay\":{\"availableFields\":{\"Title\":{\"label\":\"Title\",\"type\":\"string\",\"description\":\"\",\"name\":\"Title\",\"editable\":true,\"placeholder\":\"\"},\"familyprocessor\":{\"label\":\"Familyprocessor\",\"type\":\"string\",\"description\":\"\",\"name\":\"familyprocessor\",\"editable\":true,\"placeholder\":\"\"},\"kolovo_yader\":{\"label\":\"Kolovo_yader\",\"type\":\"integer\",\"description\":\"\",\"name\":\"kolovo_yader\",\"editable\":true,\"placeholder\":\"\"},\"TypeMemory\":{\"label\":\"TypeMemory\",\"type\":\"string\",\"description\":\"\",\"name\":\"TypeMemory\",\"editable\":true,\"placeholder\":\"\"},\"chastotaout\":{\"label\":\"Chastotaout\",\"type\":\"string\",\"description\":\"\",\"name\":\"chastotaout\",\"editable\":true,\"placeholder\":\"\"},\"image\":{\"description\":\"\",\"editable\":true,\"label\":\"Image\",\"multiple\":false,\"name\":\"image\",\"placeholder\":\"\",\"type\":\"file\",\"disabled\":false}},\"fields\":[\"Title\",\"familyprocessor\",\"kolovo_yader\",\"__col-md-6__8up3m8\",\"TypeMemory\",\"chastotaout\",\"image\"],\"relations\":[\"proisvoditename\",\"itemsattributs\",\"category\"]},\"labelPlural\":\"Processors\",\"fields\":{\"Title\":{\"label\":\"Title\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"Title\",\"sortable\":true,\"searchable\":true},\"familyprocessor\":{\"label\":\"Familyprocessor\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"familyprocessor\",\"sortable\":true,\"searchable\":true},\"pokolenyyprocessor\":{\"label\":\"Pokolenyyprocessor\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"pokolenyyprocessor\",\"sortable\":true,\"searchable\":true},\"kolovo_yader\":{\"label\":\"Kolovo_yader\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"kolovo_yader\",\"sortable\":true,\"searchable\":true},\"TypeMemory\":{\"label\":\"TypeMemory\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"TypeMemory\",\"sortable\":true,\"searchable\":true},\"chastotaout\":{\"label\":\"Chastotaout\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"chastotaout\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Processor\",\"sort\":\"ASC\",\"connection\":\"default\",\"defaultSort\":\"id\"},\"basket\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"ValueTovar\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"valueTovar\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"baskets\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"basket\",\"description\":\"\"},\"globalName\":\"Basket\",\"associations\":[],\"label\":\"Basket\",\"attributes\":{\"valueTovar\":{\"default\":\"\",\"type\":\"integer\"}},\"relations\":{},\"editDisplay\":{\"availableFields\":{\"valueTovar\":{\"label\":\"ValueTovar\",\"type\":\"integer\",\"description\":\"\",\"name\":\"valueTovar\",\"editable\":true,\"placeholder\":\"\"}},\"fields\":[\"valueTovar\"],\"relations\":[]},\"labelPlural\":\"Baskets\",\"fields\":{\"valueTovar\":{\"label\":\"ValueTovar\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"valueTovar\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Basket\",\"sort\":\"ASC\",\"connection\":\"default\",\"defaultSort\":\"id\"}},\"layout\":{\"user\":{\"actions\":{\"create\":\"User.create\",\"update\":\"User.update\",\"destroy\":\"User.destroy\",\"deleteall\":\"User.destroyAll\"},\"attributes\":{\"username\":{\"className\":\"col-md-6\"},\"email\":{\"className\":\"col-md-6\"},\"provider\":{\"className\":\"d-none\"},\"resetPasswordToken\":{\"className\":\"d-none\"},\"role\":{\"className\":\"d-none\"}}},\"blocked\":{\"attributes\":{\"oglav\":{\"appearance\":\"\"},\"text_one\":{\"appearance\":\"\"},\"text_two\":{\"appearance\":\"\"},\"text_three\":{\"appearance\":\"\"},\"text_four\":{\"appearance\":\"\"},\"text_five\":{\"appearance\":\"\"},\"text_seven\":{\"appearance\":\"\"},\"text_six\":{\"appearance\":\"\"}}},\"category\":{\"attributes\":{\"Жесткий диск\":{\"appearance\":\"\"},\"SSD\":{\"appearance\":\"\"},\"Система охлаждения\":{\"appearance\":\"\"},\"CategoryName\":{\"appearance\":\"\"},\"Оперативная Память\":{\"appearance\":\"\"},\"DVD\":{\"appearance\":\"\"},\"Метеринская плата\":{\"appearance\":\"\"},\"Блок Питание\":{\"appearance\":\"\"},\"Links\":{\"appearance\":\"\"},\"Видеокарты\":{\"appearance\":\"\"},\"Процессоры\":{\"appearance\":\"\"}}},\"video\":{\"attributes\":{\"new\":{\"appearance\":\"\"},\"DopPower\":{\"appearance\":\"\"},\"SortItems\":{\"appearance\":\"\"},\"Razemy\":{\"appearance\":\"\"},\"price\":{\"appearance\":\"\"},\"ValueMemory\":{\"appearance\":\"\"},\"top\":{\"appearance\":\"\"},\"Title\":{\"appearance\":\"\"},\"Interface\":{\"appearance\":\"\"},\"TypeMemory\":{\"appearance\":\"\"},\"ShinuMemory\":{\"appearance\":\"\"},\"graficchips\":{\"appearance\":\"\"}}},\"itemsattributs\":{\"attributes\":{\"new\":{\"appearance\":\"\"},\"top\":{\"appearance\":\"\"},\"SortItems\":{\"appearance\":\"\"},\"price\":{\"appearance\":\"\"}}},\"proisvoditename\":{\"attributes\":{\"Name\":{\"appearance\":\"\"}}},\"processor\":{\"attributes\":{\"Title\":{\"appearance\":\"\"},\"familyprocessor\":{\"appearance\":\"\"},\"pokolenyyprocessor\":{\"appearance\":\"\"},\"kolovo_yader\":{\"appearance\":\"\"},\"TypeMemory\":{\"appearance\":\"\"},\"chastotaout\":{\"appearance\":\"\"}}},\"basket\":{\"attributes\":{\"valueTovar\":{\"appearance\":\"\"}}}}}','object','',''),(8,'core_application','{\"name\":\"Default Application\",\"description\":\"This API is going to be awesome!\"}','object','',''),(9,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"comments\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-official\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"redirect_uri\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"}}','object','',''),(10,'plugin_email_provider','{\"provider\":\"sendmail\",\"name\":\"Sendmail\",\"auth\":{\"sendmail_default_from\":{\"label\":\"Sendmail Default From\",\"type\":\"text\"},\"sendmail_default_replyto\":{\"label\":\"Sendmail Default Reply-To\",\"type\":\"text\"}}}','object','development',''),(11,'plugin_upload_provider','{\"provider\":\"local\",\"name\":\"Local server\",\"enabled\":true,\"sizeLimit\":1000000}','object','development',''),(12,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"refresh\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"­Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square-o\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(13,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":true,\"email_confirmation_redirection\":\"http://localhost:1337/admin\",\"default_role\":\"authenticated\"}','object','',''),(14,'db_model_posts','{\"title\":{\"default\":\"\",\"type\":\"string\"},\"content\":{\"default\":\"\",\"type\":\"text\"},\"oglav\":{\"default\":\"\",\"type\":\"text\"},\"text_one\":{\"default\":\"\",\"type\":\"text\"},\"text_two\":{\"default\":\"\",\"type\":\"text\"},\"text_three\":{\"default\":\"\",\"type\":\"text\"},\"text_four\":{\"default\":\"\",\"type\":\"text\"},\"text_five\":{\"default\":\"\",\"type\":\"text\"},\"text_seven\":{\"default\":\"\",\"type\":\"text\"},\"text_six\":{\"default\":\"\",\"type\":\"text\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(15,'plugin_email_provider','{\"provider\":\"sendmail\",\"name\":\"Sendmail\",\"auth\":{\"sendmail_default_from\":{\"label\":\"Sendmail Default From\",\"type\":\"text\"},\"sendmail_default_replyto\":{\"label\":\"Sendmail Default Reply-To\",\"type\":\"text\"}}}','object','production',''),(16,'plugin_email_provider','{\"provider\":\"sendmail\",\"name\":\"Sendmail\",\"auth\":{\"sendmail_default_from\":{\"label\":\"Sendmail Default From\",\"type\":\"text\"},\"sendmail_default_replyto\":{\"label\":\"Sendmail Default Reply-To\",\"type\":\"text\"}}}','object','staging',''),(17,'db_model_items','{\"image\":{\"model\":\"file\",\"via\":\"related\",\"plugin\":\"upload\",\"required\":false},\"NameItem\":{\"default\":\"\",\"type\":\"text\"},\"TypeTitle\":{\"default\":\"\",\"type\":\"string\"},\"price\":{\"default\":1,\"type\":\"integer\",\"required\":true,\"max\":999999},\"SortItems\":{\"default\":\"\",\"type\":\"integer\"},\"processor\":{\"default\":\"\",\"type\":\"text\"},\"graficChip\":{\"default\":\"\",\"type\":\"string\"},\"proizvoditel\":{\"default\":\"\",\"type\":\"string\"},\"shinu\":{\"default\":\"\",\"type\":\"string\"},\"memoryOZY\":{\"default\":\"\",\"type\":\"string\"},\"typeMemory\":{\"default\":\"\",\"type\":\"string\"},\"graficProcessor\":{\"default\":\"\",\"type\":\"string\"},\"razemy\":{\"default\":\"\",\"type\":\"text\"},\"naznachenye\":{\"default\":\"\",\"type\":\"text\"},\"Interfece\":{\"default\":\"\",\"type\":\"string\"},\"dopPower\":{\"default\":\"\",\"type\":\"text\"},\"PokolenyProcessor\":{\"default\":\"\",\"type\":\"text\"},\"KolovoPotokov\":{\"default\":\"\",\"type\":\"integer\"},\"Yadro\":{\"default\":\"\",\"type\":\"integer\"},\"Chastota\":{\"default\":\"\",\"type\":\"text\"},\"new\":{\"default\":\"\",\"type\":\"integer\"},\"top\":{\"default\":\"\",\"type\":\"integer\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(18,'db_model_maxert','{}','object',NULL,NULL),(19,'db_model_categories','{\"video\":{\"collection\":\"video\",\"via\":\"category\",\"isVirtual\":true},\"CategoryName\":{\"default\":\"\",\"type\":\"string\"},\"Links\":{\"default\":\"\",\"type\":\"string\"},\"processor\":{\"model\":\"processor\",\"via\":\"category\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(20,'db_model_videos','{\"new\":{\"default\":\"\",\"type\":\"integer\"},\"top\":{\"default\":\"\",\"type\":\"integer\"},\"graficchips\":{\"default\":\"\",\"type\":\"string\"},\"ValueMemory\":{\"default\":\"\",\"type\":\"string\"},\"ShinuMemory\":{\"default\":\"\",\"type\":\"string\"},\"TypeMemory\":{\"default\":\"\",\"type\":\"string\"},\"Interface\":{\"default\":\"\",\"type\":\"string\"},\"price\":{\"default\":\"\",\"type\":\"integer\"},\"DopPower\":{\"default\":\"\",\"type\":\"string\"},\"Razemy\":{\"default\":\"\",\"type\":\"string\"},\"SortItems\":{\"default\":\"\",\"type\":\"integer\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(21,'db_model_video','{\"graficchips\":{\"default\":\"\",\"type\":\"string\"},\"ValueMemory\":{\"default\":\"\",\"type\":\"string\"},\"ShinuMemory\":{\"default\":\"\",\"type\":\"string\"},\"TypeMemory\":{\"default\":\"\",\"type\":\"string\"},\"Interface\":{\"default\":\"\",\"type\":\"string\"},\"DopPower\":{\"default\":\"\",\"type\":\"string\"},\"Razemy\":{\"default\":\"\",\"type\":\"string\"},\"category\":{\"model\":\"category\",\"via\":\"video\"},\"itemsattributs\":{\"model\":\"itemsattributs\",\"via\":\"video\"},\"image\":{\"model\":\"file\",\"via\":\"related\",\"plugin\":\"upload\",\"required\":false},\"Title\":{\"default\":\"\",\"type\":\"string\"},\"proisvoditename\":{\"model\":\"proisvoditename\",\"via\":\"video\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(22,'db_model_itemsattributs','{\"new\":{\"default\":\"\",\"type\":\"integer\"},\"top\":{\"default\":\"\",\"type\":\"integer\"},\"SortItems\":{\"default\":\"\",\"type\":\"integer\"},\"price\":{\"default\":\"\",\"type\":\"integer\"},\"video\":{\"model\":\"video\",\"via\":\"itemsattributs\"},\"processor\":{\"model\":\"processor\",\"via\":\"itemsattributs\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(23,'db_model_proisvoditels','{\"proisvoditel\":{\"default\":\"\",\"type\":\"string\"},\"blocked\":{\"model\":\"video\",\"via\":\"proisvoditelName\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(24,'db_model_proisvoditenames','{\"Name\":{\"default\":\"\",\"type\":\"string\"},\"video\":{\"model\":\"video\",\"via\":\"proisvoditename\"},\"processor\":{\"model\":\"processor\",\"via\":\"proisvoditename\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(25,'db_model_processors','{\"Title\":{\"default\":\"\",\"type\":\"string\"},\"familyprocessor\":{\"default\":\"\",\"type\":\"string\"},\"pokolenyyprocessor\":{\"default\":\"\",\"type\":\"string\"},\"kolovo_yader\":{\"default\":\"\",\"type\":\"integer\"},\"TypeMemory\":{\"default\":\"\",\"type\":\"string\"},\"chastotaout\":{\"default\":\"\",\"type\":\"string\"},\"proisvoditename\":{\"model\":\"proisvoditename\",\"via\":\"processor\"},\"itemsattributs\":{\"model\":\"itemsattributs\",\"via\":\"processor\"},\"image\":{\"model\":\"file\",\"via\":\"related\",\"plugin\":\"upload\",\"required\":false},\"category\":{\"model\":\"category\",\"via\":\"processor\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(26,'db_model_filters','{\"NameFilters\":{\"default\":\"\",\"type\":\"string\"},\"videos\":{\"collection\":\"video\",\"dominant\":true,\"via\":\"filters\",\"attribute\":\"video\",\"column\":\"id\",\"isVirtual\":true},\"processors\":{\"collection\":\"processor\",\"via\":\"filters\",\"isVirtual\":true},\"videoAll\":{\"model\":\"video\",\"via\":\"filtersAll\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL),(27,'db_model_filters_videos__videos_filters','{\"video_id\":{\"type\":\"integer\"},\"filter_id\":{\"type\":\"integer\"}}','object',NULL,NULL),(28,'db_model_baskets','{\"valueTovar\":{\"default\":\"\",\"type\":\"integer\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}','object',NULL,NULL);
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NameFilters` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category` int(11) DEFAULT NULL,
  `videoAll` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_FILTERS` (`NameFilters`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters`
--

LOCK TABLES `filters` WRITE;
/*!40000 ALTER TABLE `filters` DISABLE KEYS */;
INSERT INTO `filters` VALUES (1,'Графический чип:','2019-02-11 06:13:09','2019-02-11 06:41:48',NULL,NULL),(2,'Тип памяти:','2019-02-11 06:14:02','2019-02-11 06:37:33',NULL,NULL),(3,'Объем памяти:','2019-02-11 06:14:44','2019-02-11 06:37:41',NULL,NULL);
/*!40000 ALTER TABLE `filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters_videos__videos_filters`
--

DROP TABLE IF EXISTS `filters_videos__videos_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `filters_videos__videos_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters_videos__videos_filters`
--

LOCK TABLES `filters_videos__videos_filters` WRITE;
/*!40000 ALTER TABLE `filters_videos__videos_filters` DISABLE KEYS */;
INSERT INTO `filters_videos__videos_filters` VALUES (1,1,1),(2,2,1),(3,3,1),(4,1,2),(5,2,2),(6,3,2),(7,1,3),(8,2,3),(9,3,3);
/*!40000 ALTER TABLE `filters_videos__videos_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemsattributs`
--

DROP TABLE IF EXISTS `itemsattributs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `itemsattributs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `new` int(11) DEFAULT NULL,
  `top` int(11) DEFAULT NULL,
  `SortItems` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `video` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `processor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemsattributs`
--

LOCK TABLES `itemsattributs` WRITE;
/*!40000 ALTER TABLE `itemsattributs` DISABLE KEYS */;
INSERT INTO `itemsattributs` VALUES (1,1,0,1,3000,1,'2019-02-03 13:20:18','2019-02-11 06:42:24',NULL),(2,0,0,0,5000,2,'2019-02-03 13:20:55','2019-02-11 06:43:42',NULL),(3,0,1,0,8999,3,'2019-02-03 14:50:04','2019-02-11 06:44:04',NULL),(4,1,1,1,7005,NULL,'2019-02-03 17:02:20','2019-02-11 07:27:08',2),(5,1,0,1,3200,NULL,'2019-02-03 17:14:17','2019-02-11 07:33:36',2),(6,1,1,1,7899,NULL,'2019-02-11 07:28:03','2019-02-11 07:33:36',NULL);
/*!40000 ALTER TABLE `itemsattributs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maxert`
--

DROP TABLE IF EXISTS `maxert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `maxert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maxert`
--

LOCK TABLES `maxert` WRITE;
/*!40000 ALTER TABLE `maxert` DISABLE KEYS */;
/*!40000 ALTER TABLE `maxert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `text_two` longtext,
  `oglav` longtext,
  `text_one` longtext,
  `text_four` longtext,
  `text_six` longtext,
  `text_seven` longtext,
  `text_three` longtext,
  `text_five` longtext,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_POSTS` (`title`,`content`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Главная','-это сервис, позволяющий быстро  собрать компьютер по своим критериям.','2018-12-09 19:14:25','2019-01-19 14:32:15','Нажимай на нужную деталь','- это сервис,позволяющий быстро собрать компьютер по своим критериям','Начни собирать компьютер прямо сейчас',NULL,NULL,NULL,NULL,NULL),(3,'О нас',NULL,'2019-02-11 15:06:55','2019-02-11 15:47:43','Нам доверяют','Поможем выбрать, не дадим скучать!\nНаша задача состоит не только в том, чтобы просто продать нужный товар, но и в том, чтобы информировать и просвещать покупателя. Для этого мы снимаем видеообзоры новинок, готовим статьи и новости. Вооружившись всесторонней информацией об интересном устройстве и его главных конкурентах, вы сможете самостоятельно принять взвешенное решение о покупке именно того товара, который вам нужен.','Нашей главной целью и основополагающим принципом в работе является удовлетворенность клиентов — как розничных покупателей, так и организаций. С некоторыми компаниями мы сотрудничаем уже более 10 лет. При решении любых вопросов мы всегда на вашей стороне, потому что понимаем — наше будущее на 100% в ваших руках.\n','Мы стремимся предоставить максимум полезной информации о продаваемых товарах. Сайт Rozetka.ua снабжен простыми и эффективными инструментами подбора товаров по техническим характеристикам. Например, в категории «Видеокарты» вы можете задать сортировку по 8 важным параметрам. Мы готовы предложить 100% совместимые сопутствующие товары, аксессуары и расходные материалы.\n',NULL,NULL,'Для удобства выбора\n',NULL),(4,'Контакты',NULL,'2019-02-11 15:50:01','2019-02-11 15:50:01','Cайт:','Адрес:','вулиця Манізера, 4, Харків, Харківська область, 61000','Контакты:','Максим','Контактное лицо:','ct-college.net','0958943500');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processors`
--

DROP TABLE IF EXISTS `processors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `processors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `familyprocessor` varchar(255) DEFAULT NULL,
  `pokolenyyprocessor` varchar(255) DEFAULT NULL,
  `kolovo_yader` int(11) DEFAULT NULL,
  `TypeMemory` varchar(255) DEFAULT NULL,
  `chastotaout` varchar(255) DEFAULT NULL,
  `proisvoditename` int(11) DEFAULT NULL,
  `itemsattributs` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category` int(11) DEFAULT NULL,
  `filters` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_PROCESSORS` (`Title`,`familyprocessor`,`pokolenyyprocessor`,`TypeMemory`,`chastotaout`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processors`
--

LOCK TABLES `processors` WRITE;
/*!40000 ALTER TABLE `processors` DISABLE KEYS */;
INSERT INTO `processors` VALUES (2,'Процессор Intel Core i5-8400 2.8GHz/8GT/s/9MB (BX80684I58400) s1151 BOX','Intel Core i5','Coffee Lake (восьмое)',6,'DDR4','2800 МГц',4,5,'2019-02-03 17:01:32','2019-02-11 07:33:36',2,NULL),(3,'Процессор Intel Pentium Gold G4560 3.5GHz/8GT/s/3MB (BX80677G4560) s1151 BOX','Intel Pentium Dual-Core','Kaby Lake (седьмое)',2,'DDR3L/DDR4','3500 МГц',4,6,'2019-02-03 17:14:36','2019-02-11 07:28:03',2,NULL);
/*!40000 ALTER TABLE `processors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proisvoditenames`
--

DROP TABLE IF EXISTS `proisvoditenames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proisvoditenames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `video` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `processor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_PROISVODITENAMES` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proisvoditenames`
--

LOCK TABLES `proisvoditenames` WRITE;
/*!40000 ALTER TABLE `proisvoditenames` DISABLE KEYS */;
INSERT INTO `proisvoditenames` VALUES (1,'Asus',1,'2019-02-03 16:19:29','2019-02-11 06:42:24',NULL),(2,'Palit',2,'2019-02-03 16:19:57','2019-02-11 06:43:42',NULL),(3,'MSI',3,'2019-02-03 16:20:03','2019-02-11 06:44:04',NULL),(4,'Intel',NULL,'2019-02-03 17:01:50','2019-02-11 07:33:36',2);
/*!40000 ALTER TABLE `proisvoditenames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `upload_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `sha256` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `public_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_UPLOAD_FILE` (`name`,`hash`,`sha256`,`ext`,`mime`,`size`,`url`,`provider`,`public_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
INSERT INTO `upload_file` VALUES (1,'Hearthstone Screenshot 07-19-18 01.04.51.png','94566985bfec46059dde10b7c112a7a2','fl6B4OOJOaKbmZKhntSEHfENgD7WtZIta00Bs-9etcA','.png','image/png','2799.78','/uploads/94566985bfec46059dde10b7c112a7a2.png','local',NULL,'2018-12-09 19:14:25','2018-12-09 19:14:25'),(2,'asus_cod_bo4_rog_strix_rtx2080ti_images_9031878875.jpg','d01ca06ed54f4c269658d04e465538bf','DWmOkrsFKzQK4QqQaVl4tQR9SV4M5h7gt-2q0n8yQxI','.jpg','image/jpeg','84.79','/uploads/d01ca06ed54f4c269658d04e465538bf.jpg','local',NULL,'2019-01-19 10:29:41','2019-01-19 10:29:41'),(3,'asus_cod_bo4_rog_strix_rtx2080ti_images_9031878875.jpg','e9878e2d66884df3a51aa9c52d4143f2','DWmOkrsFKzQK4QqQaVl4tQR9SV4M5h7gt-2q0n8yQxI','.jpg','image/jpeg','84.79','/uploads/e9878e2d66884df3a51aa9c52d4143f2.jpg','local',NULL,'2019-01-19 13:07:54','2019-01-19 13:07:54'),(4,'asus_gtx_1060_dual_o3g_images_10321311843.jpg','c5483ea28dab420f8323be11d4ff064d','j5SPl0YYhKHyEqbzefnga0ykv1tNJBhm2zmss1UmdNo','.jpg','image/jpeg','69.97','/uploads/c5483ea28dab420f8323be11d4ff064d.jpg','local',NULL,'2019-01-19 13:30:56','2019-01-19 13:30:56'),(5,'his_hs_570r8lcnr_images_8682571133.jpg','a9ad3da1dba64d80bf1c4bcec9cf678c','M1Lvb0g6y49YGjXjtxVMq9kAbZ2kjIIwDi2MrLCwgHo','.jpg','image/jpeg','102.23','/uploads/a9ad3da1dba64d80bf1c4bcec9cf678c.jpg','local',NULL,'2019-01-19 15:50:51','2019-01-19 15:50:52'),(6,'asus_gtx_1060_dual_o3g_images_10321311843.jpg','cd9d9a0e6a234752b77b16cc4eaecae6','j5SPl0YYhKHyEqbzefnga0ykv1tNJBhm2zmss1UmdNo','.jpg','image/jpeg','69.97','/uploads/cd9d9a0e6a234752b77b16cc4eaecae6.jpg','local',NULL,'2019-01-20 08:07:22','2019-01-20 08:07:22'),(7,'asus_gtx_1060_dual_o3g_images_10321311843.jpg','1204fecff59546bbbc6f118a0035c2ba','j5SPl0YYhKHyEqbzefnga0ykv1tNJBhm2zmss1UmdNo','.jpg','image/jpeg','69.97','/uploads/1204fecff59546bbbc6f118a0035c2ba.jpg','local',NULL,'2019-01-20 09:10:05','2019-01-20 09:10:07'),(8,'asus_cod_bo4_rog_strix_rtx2080ti_images_9031878875.jpg','dbe4235972b140e58bb878b910f7b01e','DWmOkrsFKzQK4QqQaVl4tQR9SV4M5h7gt-2q0n8yQxI','.jpg','image/jpeg','84.79','/uploads/dbe4235972b140e58bb878b910f7b01e.jpg','local',NULL,'2019-02-03 13:56:43','2019-02-03 13:56:45'),(9,'asus_gtx_1060_dual_o3g_images_10321311843.jpg','e11616d8510546f0be7f6b9f8de4af37','j5SPl0YYhKHyEqbzefnga0ykv1tNJBhm2zmss1UmdNo','.jpg','image/jpeg','69.97','/uploads/e11616d8510546f0be7f6b9f8de4af37.jpg','local',NULL,'2019-02-03 13:56:55','2019-02-03 13:56:56'),(10,'copy_msi_rx_580_armor_4g_oc_58f61eb44286f_images_1966013396.jpg','a9f3a8e8c4b142b0bcae6a28f0a28e80','tIT9gOQtYMMxI7_S7+NRiK+JSAcJuODBDZZH4gNR9QE','.jpg','image/jpeg','393.54','/uploads/a9f3a8e8c4b142b0bcae6a28f0a28e80.jpg','local',NULL,'2019-02-03 14:49:04','2019-02-03 14:49:05'),(11,'intel_core_i5_8400_images_2238123958.jpg','975e09d8b5a540febe3cecb7e769b6c0','D87tjPlR_hu+UwPfBF0jDXCY+vntFiAas8uOZgBz7pQ','.jpg','image/jpeg','136.23','/uploads/975e09d8b5a540febe3cecb7e769b6c0.jpg','local',NULL,'2019-02-03 17:02:55','2019-02-03 17:02:55'),(12,'intel_pentium_gold_g4560_images_3574184127.jpg','d98290e3a3f242c8ae5289d652109cff','_82e8EuFxL9YLjsARZUkcAmojflc9tvVdIc4UEcAgIk','.jpg','image/jpeg','1440.18','/uploads/d98290e3a3f242c8ae5289d652109cff.jpg','local',NULL,'2019-02-03 17:14:37','2019-02-03 17:14:37');
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `upload_file_morph` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_UPLOAD_FILE_MORPH` (`related_type`,`field`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
INSERT INTO `upload_file_morph` VALUES (1,1,1,'posts','cover'),(2,2,1,'items','image'),(3,4,2,'items','image'),(4,5,3,'items','image'),(5,6,4,'items','image'),(6,7,5,'items','image'),(7,8,1,'video','image'),(8,9,2,'video','image'),(9,10,3,'video','image'),(10,11,2,'processors','image'),(11,12,3,'processors','image');
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users-permissions_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_PERMISSION` (`type`,`controller`,`action`,`policy`)
) ENGINE=InnoDB AUTO_INCREMENT=568 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'content-manager','contentmanager','models',1,'',1),(2,'content-manager','contentmanager','find',1,'',1),(3,'content-manager','contentmanager','count',1,'',1),(4,'content-manager','contentmanager','findone',1,'',1),(5,'content-manager','contentmanager','create',1,'',1),(6,'content-manager','contentmanager','update',1,'',1),(7,'content-manager','contentmanager','updatesettings',1,'',1),(8,'content-manager','contentmanager','delete',1,'',1),(9,'content-manager','contentmanager','deleteall',1,'',1),(10,'content-type-builder','contenttypebuilder','getmodels',1,'',1),(11,'content-type-builder','contenttypebuilder','getmodel',1,'',1),(12,'content-type-builder','contenttypebuilder','getconnections',1,'',1),(13,'content-type-builder','contenttypebuilder','createmodel',1,'',1),(14,'content-type-builder','contenttypebuilder','updatemodel',1,'',1),(15,'content-type-builder','contenttypebuilder','deletemodel',1,'',1),(16,'content-type-builder','contenttypebuilder','autoreload',1,'',1),(17,'content-type-builder','contenttypebuilder','checktableexists',1,'',1),(18,'email','email','send',1,'',1),(19,'email','email','getenvironments',1,'',1),(20,'email','email','getsettings',1,'',1),(21,'email','email','updatesettings',1,'',1),(22,'settings-manager','settingsmanager','menu',1,'',1),(23,'settings-manager','settingsmanager','environments',1,'',1),(24,'settings-manager','settingsmanager','languages',1,'',1),(25,'settings-manager','settingsmanager','databases',1,'',1),(26,'settings-manager','settingsmanager','database',1,'',1),(27,'settings-manager','settingsmanager','databasemodel',1,'',1),(28,'settings-manager','settingsmanager','get',1,'',1),(29,'settings-manager','settingsmanager','update',1,'',1),(30,'settings-manager','settingsmanager','createlanguage',1,'',1),(31,'settings-manager','settingsmanager','deletelanguage',1,'',1),(32,'settings-manager','settingsmanager','createdatabase',1,'',1),(33,'settings-manager','settingsmanager','updatedatabase',1,'',1),(34,'settings-manager','settingsmanager','deletedatabase',1,'',1),(35,'settings-manager','settingsmanager','autoreload',1,'',1),(36,'upload','upload','upload',1,'',1),(37,'upload','upload','getenvironments',1,'',1),(38,'upload','upload','getsettings',1,'',1),(39,'upload','upload','updatesettings',1,'',1),(40,'upload','upload','find',1,'',1),(41,'upload','upload','findone',1,'',1),(42,'upload','upload','count',1,'',1),(43,'upload','upload','destroy',1,'',1),(44,'upload','upload','search',1,'',1),(45,'users-permissions','auth','callback',1,'',1),(46,'users-permissions','auth','changepassword',1,'',1),(47,'users-permissions','auth','connect',1,'',1),(48,'users-permissions','auth','forgotpassword',1,'',1),(49,'users-permissions','auth','register',1,'',1),(50,'users-permissions','auth','emailconfirmation',1,'',1),(51,'users-permissions','user','find',1,'',1),(52,'users-permissions','user','me',1,'',1),(53,'users-permissions','user','findone',1,'',1),(54,'users-permissions','user','create',1,'',1),(55,'users-permissions','user','update',1,'',1),(56,'users-permissions','user','destroy',1,'',1),(57,'users-permissions','user','destroyall',1,'',1),(58,'users-permissions','userspermissions','createrole',1,'',1),(59,'users-permissions','userspermissions','deleteprovider',1,'',1),(60,'users-permissions','userspermissions','deleterole',1,'',1),(61,'users-permissions','userspermissions','getpermissions',1,'',1),(62,'users-permissions','userspermissions','getpolicies',1,'',1),(63,'users-permissions','userspermissions','getrole',1,'',1),(64,'users-permissions','userspermissions','getroles',1,'',1),(65,'users-permissions','userspermissions','getroutes',1,'',1),(66,'users-permissions','userspermissions','index',1,'',1),(67,'users-permissions','userspermissions','init',1,'',1),(68,'users-permissions','userspermissions','searchusers',1,'',1),(69,'users-permissions','userspermissions','updaterole',1,'',1),(70,'users-permissions','userspermissions','getemailtemplate',1,'',1),(71,'users-permissions','userspermissions','updateemailtemplate',1,'',1),(72,'users-permissions','userspermissions','getadvancedsettings',1,'',1),(73,'users-permissions','userspermissions','updateadvancedsettings',1,'',1),(74,'users-permissions','userspermissions','getproviders',1,'',1),(75,'users-permissions','userspermissions','updateproviders',1,'',1),(76,'content-manager','contentmanager','models',0,'',2),(77,'content-manager','contentmanager','find',0,'',2),(78,'content-manager','contentmanager','count',0,'',2),(79,'content-manager','contentmanager','findone',0,'',2),(80,'content-manager','contentmanager','create',0,'',2),(81,'content-manager','contentmanager','update',0,'',2),(82,'content-manager','contentmanager','updatesettings',0,'',2),(83,'content-manager','contentmanager','delete',0,'',2),(84,'content-manager','contentmanager','deleteall',0,'',2),(85,'content-type-builder','contenttypebuilder','getmodels',0,'',2),(86,'content-type-builder','contenttypebuilder','getmodel',0,'',2),(87,'content-type-builder','contenttypebuilder','getconnections',0,'',2),(88,'content-type-builder','contenttypebuilder','createmodel',0,'',2),(89,'content-type-builder','contenttypebuilder','updatemodel',0,'',2),(90,'content-type-builder','contenttypebuilder','deletemodel',0,'',2),(91,'content-type-builder','contenttypebuilder','autoreload',1,'',2),(92,'content-type-builder','contenttypebuilder','checktableexists',0,'',2),(93,'email','email','send',0,'',2),(94,'email','email','getenvironments',0,'',2),(95,'email','email','getsettings',0,'',2),(96,'email','email','updatesettings',0,'',2),(97,'settings-manager','settingsmanager','menu',0,'',2),(98,'settings-manager','settingsmanager','environments',0,'',2),(99,'settings-manager','settingsmanager','languages',0,'',2),(100,'settings-manager','settingsmanager','databases',0,'',2),(101,'settings-manager','settingsmanager','database',0,'',2),(102,'settings-manager','settingsmanager','databasemodel',0,'',2),(103,'settings-manager','settingsmanager','get',0,'',2),(104,'settings-manager','settingsmanager','update',0,'',2),(105,'settings-manager','settingsmanager','createlanguage',0,'',2),(106,'settings-manager','settingsmanager','deletelanguage',0,'',2),(107,'settings-manager','settingsmanager','createdatabase',0,'',2),(108,'settings-manager','settingsmanager','updatedatabase',0,'',2),(109,'settings-manager','settingsmanager','deletedatabase',0,'',2),(110,'settings-manager','settingsmanager','autoreload',1,'',2),(111,'upload','upload','upload',0,'',2),(112,'upload','upload','getenvironments',0,'',2),(113,'upload','upload','getsettings',0,'',2),(114,'upload','upload','updatesettings',0,'',2),(115,'upload','upload','find',0,'',2),(116,'upload','upload','findone',0,'',2),(117,'upload','upload','count',0,'',2),(118,'upload','upload','destroy',0,'',2),(119,'upload','upload','search',0,'',2),(120,'users-permissions','auth','callback',0,'',2),(121,'users-permissions','auth','changepassword',0,'',2),(122,'users-permissions','auth','connect',1,'',2),(123,'users-permissions','auth','forgotpassword',0,'',2),(124,'users-permissions','auth','register',0,'',2),(125,'users-permissions','auth','emailconfirmation',0,'',2),(126,'users-permissions','user','find',0,'',2),(127,'users-permissions','user','me',1,'',2),(128,'users-permissions','user','findone',0,'',2),(129,'users-permissions','user','create',0,'',2),(130,'users-permissions','user','update',0,'',2),(131,'users-permissions','user','destroy',0,'',2),(132,'users-permissions','user','destroyall',0,'',2),(133,'users-permissions','userspermissions','createrole',0,'',2),(134,'users-permissions','userspermissions','deleteprovider',0,'',2),(135,'users-permissions','userspermissions','deleterole',0,'',2),(136,'users-permissions','userspermissions','getpermissions',0,'',2),(137,'users-permissions','userspermissions','getpolicies',0,'',2),(138,'users-permissions','userspermissions','getrole',0,'',2),(139,'users-permissions','userspermissions','getroles',0,'',2),(140,'users-permissions','userspermissions','getroutes',0,'',2),(141,'users-permissions','userspermissions','index',0,'',2),(142,'users-permissions','userspermissions','init',1,'',2),(143,'users-permissions','userspermissions','searchusers',0,'',2),(144,'users-permissions','userspermissions','updaterole',0,'',2),(145,'users-permissions','userspermissions','getemailtemplate',0,'',2),(146,'users-permissions','userspermissions','updateemailtemplate',0,'',2),(147,'users-permissions','userspermissions','getadvancedsettings',0,'',2),(148,'users-permissions','userspermissions','updateadvancedsettings',0,'',2),(149,'users-permissions','userspermissions','getproviders',0,'',2),(150,'users-permissions','userspermissions','updateproviders',0,'',2),(151,'content-manager','contentmanager','models',0,'',3),(152,'content-manager','contentmanager','find',0,'',3),(153,'content-manager','contentmanager','count',0,'',3),(154,'content-manager','contentmanager','findone',0,'',3),(155,'content-manager','contentmanager','create',0,'',3),(156,'content-manager','contentmanager','update',0,'',3),(157,'content-manager','contentmanager','updatesettings',0,'',3),(158,'content-manager','contentmanager','delete',0,'',3),(159,'content-manager','contentmanager','deleteall',0,'',3),(160,'content-type-builder','contenttypebuilder','getmodels',0,'',3),(161,'content-type-builder','contenttypebuilder','getmodel',0,'',3),(162,'content-type-builder','contenttypebuilder','getconnections',0,'',3),(163,'content-type-builder','contenttypebuilder','createmodel',0,'',3),(164,'content-type-builder','contenttypebuilder','updatemodel',0,'',3),(165,'content-type-builder','contenttypebuilder','deletemodel',0,'',3),(166,'content-type-builder','contenttypebuilder','autoreload',1,'',3),(167,'content-type-builder','contenttypebuilder','checktableexists',0,'',3),(168,'email','email','send',0,'',3),(169,'email','email','getenvironments',0,'',3),(170,'email','email','getsettings',0,'',3),(171,'email','email','updatesettings',0,'',3),(172,'settings-manager','settingsmanager','menu',0,'',3),(173,'settings-manager','settingsmanager','environments',0,'',3),(174,'settings-manager','settingsmanager','languages',0,'',3),(175,'settings-manager','settingsmanager','databases',0,'',3),(176,'settings-manager','settingsmanager','database',0,'',3),(177,'settings-manager','settingsmanager','databasemodel',0,'',3),(178,'settings-manager','settingsmanager','get',0,'',3),(179,'settings-manager','settingsmanager','update',0,'',3),(180,'settings-manager','settingsmanager','createlanguage',0,'',3),(181,'settings-manager','settingsmanager','deletelanguage',0,'',3),(182,'settings-manager','settingsmanager','createdatabase',0,'',3),(183,'settings-manager','settingsmanager','updatedatabase',0,'',3),(184,'settings-manager','settingsmanager','deletedatabase',0,'',3),(185,'settings-manager','settingsmanager','autoreload',1,'',3),(186,'upload','upload','upload',0,'',3),(187,'upload','upload','getenvironments',0,'',3),(188,'upload','upload','getsettings',0,'',3),(189,'upload','upload','updatesettings',0,'',3),(190,'upload','upload','find',0,'',3),(191,'upload','upload','findone',0,'',3),(192,'upload','upload','count',0,'',3),(193,'upload','upload','destroy',0,'',3),(194,'upload','upload','search',0,'',3),(195,'users-permissions','auth','callback',1,'',3),(196,'users-permissions','auth','changepassword',1,'',3),(197,'users-permissions','auth','connect',1,'',3),(198,'users-permissions','auth','forgotpassword',1,'',3),(199,'users-permissions','auth','register',1,'',3),(200,'users-permissions','auth','emailconfirmation',1,'',3),(201,'users-permissions','user','find',0,'',3),(202,'users-permissions','user','me',1,'',3),(203,'users-permissions','user','findone',0,'',3),(204,'users-permissions','user','create',0,'',3),(205,'users-permissions','user','update',0,'',3),(206,'users-permissions','user','destroy',0,'',3),(207,'users-permissions','user','destroyall',0,'',3),(208,'users-permissions','userspermissions','createrole',0,'',3),(209,'users-permissions','userspermissions','deleteprovider',0,'',3),(210,'users-permissions','userspermissions','deleterole',0,'',3),(211,'users-permissions','userspermissions','getpermissions',0,'',3),(212,'users-permissions','userspermissions','getpolicies',0,'',3),(213,'users-permissions','userspermissions','getrole',0,'',3),(214,'users-permissions','userspermissions','getroles',0,'',3),(215,'users-permissions','userspermissions','getroutes',0,'',3),(216,'users-permissions','userspermissions','index',0,'',3),(217,'users-permissions','userspermissions','init',1,'',3),(218,'users-permissions','userspermissions','searchusers',0,'',3),(219,'users-permissions','userspermissions','updaterole',0,'',3),(220,'users-permissions','userspermissions','getemailtemplate',0,'',3),(221,'users-permissions','userspermissions','updateemailtemplate',0,'',3),(222,'users-permissions','userspermissions','getadvancedsettings',0,'',3),(223,'users-permissions','userspermissions','updateadvancedsettings',0,'',3),(224,'users-permissions','userspermissions','getproviders',0,'',3),(225,'users-permissions','userspermissions','updateproviders',0,'',3),(253,'application','blocked','find',1,'',1),(254,'application','blocked','findone',1,'',1),(255,'application','blocked','count',1,'',1),(256,'application','blocked','create',1,'',1),(257,'application','blocked','update',1,'',1),(258,'application','blocked','destroy',1,'',1),(259,'application','blocked','createrelation',1,'',1),(260,'application','blocked','updaterelation',1,'',1),(261,'application','blocked','destroyrelation',1,'',1),(262,'application','blocked','find',1,'',2),(263,'application','blocked','findone',1,'',2),(264,'application','blocked','count',1,'',2),(265,'application','blocked','create',1,'',2),(266,'application','blocked','update',1,'',2),(267,'application','blocked','destroy',1,'',2),(268,'application','blocked','createrelation',1,'',2),(269,'application','blocked','updaterelation',1,'',2),(270,'application','blocked','destroyrelation',1,'',2),(271,'application','blocked','find',1,'',3),(272,'application','blocked','findone',1,'',3),(273,'application','blocked','count',1,'',3),(274,'application','blocked','create',1,'',3),(275,'application','blocked','update',1,'',3),(276,'application','blocked','destroy',1,'',3),(277,'application','blocked','createrelation',1,'',3),(278,'application','blocked','updaterelation',1,'',3),(279,'application','blocked','destroyrelation',1,'',3),(352,'application','category','find',1,'',1),(353,'application','category','findone',1,'',1),(354,'application','category','count',1,'',1),(355,'application','category','create',1,'',1),(356,'application','category','update',1,'',1),(357,'application','category','createrelation',1,'',1),(358,'application','category','updaterelation',1,'',1),(359,'application','category','find',0,'',2),(360,'application','category','destroyrelation',1,'',1),(361,'application','category','destroy',1,'',1),(362,'application','category','findone',0,'',2),(363,'application','category','count',0,'',2),(364,'application','category','create',0,'',2),(365,'application','category','update',0,'',2),(366,'application','category','destroy',0,'',2),(367,'application','category','createrelation',0,'',2),(368,'application','category','updaterelation',0,'',2),(369,'application','category','destroyrelation',0,'',2),(370,'application','category','find',1,'',3),(371,'application','category','findone',1,'',3),(372,'application','category','count',1,'',3),(373,'application','category','create',1,'',3),(374,'application','category','update',1,'',3),(375,'application','category','destroy',1,'',3),(376,'application','category','createrelation',1,'',3),(377,'application','category','updaterelation',1,'',3),(378,'application','category','destroyrelation',1,'',3),(379,'application','video','find',1,'',1),(380,'application','video','findone',1,'',1),(381,'application','video','count',1,'',1),(382,'application','video','create',1,'',1),(383,'application','video','update',1,'',1),(384,'application','video','destroy',1,'',1),(385,'application','video','createrelation',1,'',1),(386,'application','video','destroyrelation',1,'',1),(387,'application','video','find',0,'',2),(388,'application','video','updaterelation',1,'',1),(389,'application','video','findone',0,'',2),(390,'application','video','count',0,'',2),(391,'application','video','create',0,'',2),(392,'application','video','update',0,'',2),(393,'application','video','destroy',0,'',2),(394,'application','video','createrelation',0,'',2),(395,'application','video','updaterelation',0,'',2),(396,'application','video','destroyrelation',0,'',2),(397,'application','video','find',1,'',3),(398,'application','video','findone',1,'',3),(399,'application','video','count',1,'',3),(400,'application','video','create',1,'',3),(401,'application','video','update',1,'',3),(402,'application','video','destroy',1,'',3),(403,'application','video','createrelation',1,'',3),(404,'application','video','updaterelation',1,'',3),(405,'application','video','destroyrelation',1,'',3),(406,'application','itemsattributs','find',1,'',1),(407,'application','itemsattributs','findone',1,'',1),(408,'application','itemsattributs','count',1,'',1),(409,'application','itemsattributs','create',1,'',1),(410,'application','itemsattributs','update',1,'',1),(411,'application','itemsattributs','destroy',1,'',1),(412,'application','itemsattributs','createrelation',1,'',1),(413,'application','itemsattributs','updaterelation',1,'',1),(414,'application','itemsattributs','destroyrelation',1,'',1),(415,'application','itemsattributs','find',0,'',2),(416,'application','itemsattributs','findone',0,'',2),(417,'application','itemsattributs','count',0,'',2),(418,'application','itemsattributs','update',0,'',2),(419,'application','itemsattributs','destroy',0,'',2),(420,'application','itemsattributs','createrelation',0,'',2),(421,'application','itemsattributs','updaterelation',0,'',2),(422,'application','itemsattributs','destroyrelation',0,'',2),(423,'application','itemsattributs','find',1,'',3),(424,'application','itemsattributs','findone',1,'',3),(425,'application','itemsattributs','count',1,'',3),(426,'application','itemsattributs','create',0,'',2),(427,'application','itemsattributs','create',1,'',3),(428,'application','itemsattributs','update',1,'',3),(429,'application','itemsattributs','destroy',1,'',3),(430,'application','itemsattributs','createrelation',1,'',3),(431,'application','itemsattributs','updaterelation',1,'',3),(432,'application','itemsattributs','destroyrelation',1,'',3),(460,'application','proisvoditename','find',1,'',1),(461,'application','proisvoditename','findone',1,'',1),(462,'application','proisvoditename','count',1,'',1),(463,'application','proisvoditename','create',1,'',1),(464,'application','proisvoditename','update',1,'',1),(465,'application','proisvoditename','createrelation',1,'',1),(466,'application','proisvoditename','updaterelation',1,'',1),(467,'application','proisvoditename','destroyrelation',1,'',1),(468,'application','proisvoditename','find',0,'',2),(469,'application','proisvoditename','destroy',1,'',1),(470,'application','proisvoditename','findone',0,'',2),(471,'application','proisvoditename','count',0,'',2),(472,'application','proisvoditename','create',0,'',2),(473,'application','proisvoditename','update',0,'',2),(474,'application','proisvoditename','destroy',0,'',2),(475,'application','proisvoditename','createrelation',0,'',2),(476,'application','proisvoditename','updaterelation',0,'',2),(477,'application','proisvoditename','destroyrelation',0,'',2),(478,'application','proisvoditename','findone',1,'',3),(479,'application','proisvoditename','find',1,'',3),(480,'application','proisvoditename','count',1,'',3),(481,'application','proisvoditename','create',1,'',3),(482,'application','proisvoditename','update',1,'',3),(483,'application','proisvoditename','destroy',1,'',3),(484,'application','proisvoditename','createrelation',1,'',3),(485,'application','proisvoditename','updaterelation',1,'',3),(486,'application','proisvoditename','destroyrelation',1,'',3),(487,'application','processor','findone',1,'',1),(488,'application','processor','count',1,'',1),(489,'application','processor','createrelation',1,'',1),(490,'application','processor','destroy',1,'',1),(491,'application','processor','updaterelation',1,'',1),(492,'application','processor','create',1,'',1),(493,'application','processor','update',1,'',1),(494,'application','processor','destroyrelation',1,'',1),(495,'application','processor','find',1,'',1),(496,'application','processor','find',0,'',2),(497,'application','processor','findone',0,'',2),(498,'application','processor','count',0,'',2),(499,'application','processor','create',0,'',2),(500,'application','processor','update',0,'',2),(501,'application','processor','destroy',0,'',2),(502,'application','processor','createrelation',0,'',2),(503,'application','processor','updaterelation',0,'',2),(504,'application','processor','destroyrelation',0,'',2),(505,'application','processor','find',1,'',3),(506,'application','processor','findone',1,'',3),(507,'application','processor','count',1,'',3),(508,'application','processor','create',1,'',3),(509,'application','processor','update',1,'',3),(510,'application','processor','destroy',1,'',3),(511,'application','processor','createrelation',1,'',3),(512,'application','processor','updaterelation',1,'',3),(513,'application','processor','destroyrelation',1,'',3),(541,'application','basket','findone',1,'',1),(542,'application','basket','create',1,'',1),(543,'application','basket','destroy',1,'',1),(544,'application','basket','createrelation',1,'',1),(545,'application','basket','count',1,'',1),(546,'application','basket','find',1,'',1),(547,'application','basket','update',1,'',1),(548,'application','basket','destroyrelation',1,'',1),(549,'application','basket','updaterelation',1,'',1),(550,'application','basket','find',0,'',2),(551,'application','basket','findone',0,'',2),(552,'application','basket','count',0,'',2),(553,'application','basket','create',0,'',2),(554,'application','basket','update',0,'',2),(555,'application','basket','destroy',0,'',2),(556,'application','basket','createrelation',0,'',2),(557,'application','basket','updaterelation',0,'',2),(558,'application','basket','destroyrelation',0,'',2),(559,'application','basket','find',1,'',3),(560,'application','basket','findone',1,'',3),(561,'application','basket','count',1,'',3),(562,'application','basket','create',1,'',3),(563,'application','basket','update',1,'',3),(564,'application','basket','destroy',1,'',3),(565,'application','basket','createrelation',1,'',3),(566,'application','basket','updaterelation',1,'',3),(567,'application','basket','destroyrelation',1,'',3);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users-permissions_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_ROLE` (`name`,`description`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Administrator','These users have all access in the project.','root'),(2,'Authenticated','Default role given to authenticated user.','authenticated'),(3,'Public','Default role given to unauthenticated user.','public');
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users-permissions_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_USER` (`username`,`provider`,`resetPasswordToken`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
INSERT INTO `users-permissions_user` VALUES (1,'Maxim','max97-12@ukr.net','local','$2a$10$f7jduHouf3dhMZ1Dk7h57uH59VWVWhRTPY8yTX3csWuuCRbFFX0Sm',NULL,1,0,1);
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `new` int(11) DEFAULT NULL,
  `top` int(11) DEFAULT NULL,
  `graficchips` varchar(255) DEFAULT NULL,
  `ValueMemory` varchar(255) DEFAULT NULL,
  `ShinuMemory` varchar(255) DEFAULT NULL,
  `TypeMemory` varchar(255) DEFAULT NULL,
  `Interface` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `DopPower` varchar(255) DEFAULT NULL,
  `Razemy` varchar(255) DEFAULT NULL,
  `SortItems` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `itemsattributs` int(11) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `proisvoditelName` int(11) DEFAULT NULL,
  `proisvoditename` int(11) DEFAULT NULL,
  `filters` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_VIDEO` (`graficchips`,`ValueMemory`,`ShinuMemory`,`TypeMemory`,`Interface`,`DopPower`,`Razemy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,NULL,NULL,'GeForce GTX 1050 Ti','4 ГБ','128 бит','GDDR5','PCI-Express x16 3.0',NULL,'6 pin','DVI, Display Port, HDMI',NULL,1,'2019-02-03 13:18:36','2019-02-11 06:42:24',1,'Asus PCI-Ex GeForce GTX 1050 Ti ROG Strix 4GB GDDR5 (128bit) (1290/7008) (2 x DVI, HDMI, DisplayPort) (STRIX-GTX1050TI-4G-GAMING)',NULL,1,1),(2,NULL,NULL,'GeForce GTX 1060','6 ГБ','192 бит','GDDR5','PCI-Express x16 3.0',NULL,'6 pin','DVI, Display Port, HDMI',NULL,1,'2019-02-03 13:22:07','2019-02-11 06:43:42',2,'Palit PCI-Ex GeForce GTX 1060 Dual 6GB GDDR5 (192bit) (1506/8000) (DVI, HDMI, 3 x DisplayPort) (NE51060015J9-1061D)',NULL,2,1),(3,NULL,NULL,'RX 580','8 ГБ','256 бит','GDDR5','PCI-Express x16 3.0',NULL,'8 pin','DVI , Display Port , HDMI',NULL,1,'2019-02-03 14:47:25','2019-02-11 06:44:03',3,'MSI PCI-Ex Radeon RX 580 ARMOR 8G OC GDDR5 (256bit) (1366/8000) (DVI, 2 x HDMI, 2 x DisplayPort) (RX 580 ARMOR 8G OC)',NULL,3,1);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `new` int(11) DEFAULT NULL,
  `top` int(11) DEFAULT NULL,
  `graficchips` varchar(255) DEFAULT NULL,
  `ValueMemory` varchar(255) DEFAULT NULL,
  `ShinuMemory` varchar(255) DEFAULT NULL,
  `TypeMemory` varchar(255) DEFAULT NULL,
  `Interface` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `DopPower` varchar(255) DEFAULT NULL,
  `Razemy` varchar(255) DEFAULT NULL,
  `SortItems` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `SEARCH_VIDEOS` (`graficchips`,`ValueMemory`,`ShinuMemory`,`TypeMemory`,`Interface`,`DopPower`,`Razemy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-12  4:13:28
