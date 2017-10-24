-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: c9
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2017-10-11 18:38:12','2017-10-11 18:38:12'),(2,NULL,1,'Category 2','category-2','2017-10-11 18:38:12','2017-10-11 18:38:12');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'',1),(2,1,'author_id','text','Author',1,0,1,1,0,1,'',2),(3,1,'category_id','text','Category',1,0,1,1,1,0,'',3),(4,1,'title','text','Title',1,1,1,1,1,1,'',4),(5,1,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',5),(6,1,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),(7,1,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(8,1,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',8),(9,1,'meta_description','text_area','meta_description',1,0,1,1,1,1,'',9),(10,1,'meta_keywords','text_area','meta_keywords',1,0,1,1,1,1,'',10),(11,1,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(12,1,'created_at','timestamp','created_at',0,1,1,0,0,0,'',12),(13,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',13),(14,2,'id','number','id',1,0,0,0,0,0,'',1),(15,2,'author_id','text','author_id',1,0,0,0,0,0,'',2),(16,2,'title','text','title',1,1,1,1,1,1,'',3),(17,2,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',4),(18,2,'body','rich_text_box','body',1,0,1,1,1,1,'',5),(19,2,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"}}',6),(20,2,'meta_description','text','meta_description',1,0,1,1,1,1,'',7),(21,2,'meta_keywords','text','meta_keywords',1,0,1,1,1,1,'',8),(22,2,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(23,2,'created_at','timestamp','created_at',1,1,1,0,0,0,'',10),(24,2,'updated_at','timestamp','updated_at',1,0,0,0,0,0,'',11),(25,2,'image','image','image',0,1,1,1,1,1,'',12),(26,3,'id','number','id',1,0,0,0,0,0,'',1),(27,3,'name','text','name',1,1,1,1,1,1,'',2),(28,3,'email','text','email',1,1,1,1,1,1,'',3),(29,3,'password','password','password',0,0,0,1,1,0,'',4),(30,3,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}',10),(31,3,'remember_token','text','remember_token',0,0,0,0,0,0,'',5),(32,3,'created_at','timestamp','created_at',0,1,1,0,0,0,'',6),(33,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(34,3,'avatar','image','avatar',0,1,1,1,1,1,'',8),(35,5,'id','number','id',1,0,0,0,0,0,'',1),(36,5,'name','text','name',1,1,1,1,1,1,'',2),(37,5,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(38,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(39,4,'id','number','id',1,0,0,0,0,0,'',1),(40,4,'parent_id','select_dropdown','parent_id',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(41,4,'order','text','order',1,1,1,1,1,1,'{\"default\":1}',3),(42,4,'name','text','name',1,1,1,1,1,1,'',4),(43,4,'slug','text','slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(44,4,'created_at','timestamp','created_at',0,0,1,0,0,0,'',6),(45,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(46,6,'id','number','id',1,0,0,0,0,0,'',1),(47,6,'name','text','Name',1,1,1,1,1,1,'',2),(48,6,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(49,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(50,6,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(51,1,'seo_title','text','seo_title',0,1,1,1,1,1,'',14),(52,1,'featured','checkbox','featured',1,1,1,1,1,1,'',15),(53,3,'role_id','text','role_id',1,1,1,1,1,1,'',9),(54,7,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(55,7,'back','image','Back',0,1,1,1,1,1,NULL,2),(56,7,'img','image','Img',0,1,1,1,1,1,NULL,3),(57,7,'body','rich_text_box','Body',0,1,1,1,1,1,NULL,4),(58,7,'file','file','File',0,1,1,1,1,1,NULL,5),(59,7,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,6),(60,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(61,8,'id','text','Id',1,1,1,1,0,0,NULL,1),(62,8,'num','text','Num',0,1,1,1,1,1,NULL,2),(63,8,'data','date','Data',0,1,1,1,1,1,NULL,3),(64,8,'im','text','Im',0,1,1,1,1,1,NULL,4),(65,8,'vznos','text','Vznos',0,1,1,1,1,1,NULL,5),(66,8,'sved','text','Sved',0,1,1,1,1,1,NULL,6),(67,8,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,7),(68,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,8),(69,9,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(70,9,'title','text','Title',0,1,1,1,1,1,NULL,2),(71,9,'body','rich_text_box','Body',0,1,1,1,1,1,NULL,3),(72,9,'img','image','Img',0,1,1,1,1,1,NULL,4),(73,9,'file','file','File',0,1,1,1,1,1,NULL,5),(74,9,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,6),(75,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(76,10,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(77,10,'title','text','Title',0,1,1,1,1,1,NULL,2),(78,10,'body','rich_text_box','Body',0,1,1,1,1,1,NULL,3),(79,10,'img','image','Img',0,1,1,1,1,1,NULL,4),(80,10,'file','file','File',0,1,1,1,1,1,NULL,5),(81,10,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,6),(82,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(83,11,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(84,11,'title','text','Title',0,1,1,1,1,1,NULL,2),(85,11,'body','rich_text_box','Body',0,1,1,1,1,1,NULL,3),(86,11,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(87,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(88,12,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(89,12,'title','text','Title',0,1,1,1,1,1,NULL,2),(90,12,'body','rich_text_box','Body',0,1,1,1,1,1,NULL,3),(91,12,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(92,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(93,13,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(94,13,'title','text','Title',0,1,1,1,1,1,NULL,2),(95,13,'body','rich_text_box','Body',0,1,1,1,1,1,NULL,3),(96,13,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(97,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(98,14,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(99,14,'title','text','Title',0,1,1,1,1,1,NULL,2),(100,14,'body','rich_text_box','Body',0,1,1,1,1,1,NULL,3),(101,14,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(102,14,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(103,15,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(104,15,'num','text','Num',0,1,1,1,1,1,NULL,2),(105,15,'date','date','Date',0,1,1,1,1,1,NULL,3),(106,15,'inf','text','Inf',0,1,1,1,1,1,NULL,4),(107,15,'date_out','date','Date Out',0,1,1,1,1,1,NULL,5),(108,15,'osn','text','Osn',0,1,1,1,1,1,NULL,6),(109,15,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,7),(110,15,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,8);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,'2017-10-11 18:38:11','2017-10-11 18:38:11'),(2,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,'2017-10-11 18:38:11','2017-10-11 18:38:11'),(3,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,'2017-10-11 18:38:11','2017-10-11 18:38:11'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,'2017-10-11 18:38:11','2017-10-11 18:38:11'),(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,'2017-10-11 18:38:11','2017-10-11 18:38:11'),(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,'2017-10-11 18:38:11','2017-10-11 18:38:11'),(7,'reestrs','reestrs','Reestr','Reestrs',NULL,'App\\Reestr',NULL,NULL,NULL,1,0,'2017-10-13 10:18:26','2017-10-13 10:18:26'),(8,'retables','retables','Retable','Retables',NULL,'App\\Retable',NULL,NULL,NULL,1,0,'2017-10-18 19:26:32','2017-10-18 19:26:32'),(9,'vsts','vsts','Vst','Vsts',NULL,'App\\Vst',NULL,NULL,NULL,1,0,'2017-10-20 13:37:42','2017-10-20 13:37:42'),(10,'pols','pols','Pol','Pols',NULL,'App\\Pol',NULL,NULL,NULL,1,0,'2017-10-20 13:43:44','2017-10-20 13:43:44'),(11,'usl1s','usl1s','Usl1','Usl1s',NULL,'App\\Usl1',NULL,NULL,NULL,1,0,'2017-10-24 11:55:05','2017-10-24 11:55:05'),(12,'usl2s','usl2s','Usl2','Usl2s',NULL,'App\\Usl2',NULL,NULL,NULL,1,0,'2017-10-24 11:55:17','2017-10-24 11:55:17'),(13,'usl3s','usl3s','Usl3','Usl3s',NULL,'App\\Usl3',NULL,NULL,NULL,1,0,'2017-10-24 11:55:27','2017-10-24 11:55:27'),(14,'usl4s','usl4s','Usl4','Usl4s',NULL,'App\\Usl4',NULL,NULL,NULL,1,0,'2017-10-24 11:55:36','2017-10-24 11:55:36'),(15,'outs','outs','Out','Outs',NULL,'App\\Out',NULL,NULL,NULL,1,0,'2017-10-24 17:08:30','2017-10-24 17:08:30');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (9,1,'Menu Builder','','_self','voyager-list',NULL,8,1,'2017-10-11 18:38:12','2017-10-24 17:40:20','voyager.menus.index',NULL),(10,1,'Database','','_self','voyager-data',NULL,8,2,'2017-10-11 18:38:12','2017-10-24 17:40:20','voyager.database.index',NULL),(11,1,'Compass','/admin/compass','_self','voyager-compass',NULL,8,3,'2017-10-11 18:38:12','2017-10-24 17:40:20',NULL,NULL),(12,1,'Hooks','/admin/hooks','_self','voyager-hook',NULL,8,4,'2017-10-11 18:38:12','2017-10-24 17:40:20',NULL,NULL),(14,1,'Реестр членов на главной','/admin/reestrs','_self','voyager-group','#000000',NULL,6,'2017-10-20 13:38:54','2017-10-24 17:40:22',NULL,''),(15,1,'Реестр членов СРО','/admin/retables','_self','voyager-people','#000000',NULL,4,'2017-10-20 13:39:43','2017-10-24 17:40:22',NULL,''),(16,1,'Порядок вступления на главной','/admin/vsts','_self','voyager-double-right','#000000',NULL,7,'2017-10-20 13:40:39','2017-10-24 17:40:20',NULL,''),(17,1,'Положение об уплате взносов','/admin/pols','_self','voyager-dollar','#000000',NULL,8,'2017-10-20 13:46:30','2017-10-24 17:40:20',NULL,''),(18,1,'Описание первой услуги','/admin/usl1s','_self','voyager-browser','#000000',NULL,9,'2017-10-24 11:56:26','2017-10-24 17:47:17',NULL,''),(19,1,'Описание второй услуги','/admin/usl2s','_self','voyager-browser','#000000',NULL,10,'2017-10-24 11:56:45','2017-10-24 17:47:24',NULL,''),(20,1,'Описание третьей услуги','/admin/usl3s','_self','voyager-browser','#000000',NULL,11,'2017-10-24 11:56:55','2017-10-24 17:47:31',NULL,''),(21,1,'Описание четвертой услуги','/admin/usl4s','_self','voyager-browser','#000000',NULL,12,'2017-10-24 11:57:20','2017-10-24 17:47:37',NULL,''),(22,1,'Реестр членов СРО : выбывшие члены','/admin/outs','_self','voyager-bag','#000000',NULL,5,'2017-10-24 17:09:06','2017-10-24 17:46:59',NULL,'');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2017-10-11 18:38:12','2017-10-11 18:38:12');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_01_01_000000_create_pages_table',1),(6,'2016_01_01_000000_create_posts_table',1),(7,'2016_02_15_204651_create_categories_table',1),(8,'2016_05_19_173453_create_menu_table',1),(9,'2016_10_21_190000_create_roles_table',1),(10,'2016_10_21_190000_create_settings_table',1),(11,'2016_11_30_135954_create_permission_table',1),(12,'2016_11_30_141208_create_permission_role_table',1),(13,'2016_12_26_201236_data_types__add__server_side',1),(14,'2017_01_13_000000_add_route_to_menu_items_table',1),(15,'2017_01_14_005015_create_translations_table',1),(16,'2017_01_15_000000_add_permission_group_id_to_permissions_table',1),(17,'2017_01_15_000000_create_permission_groups_table',1),(18,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(19,'2017_03_06_000000_add_controller_to_data_types_table',1),(20,'2017_04_11_000000_alter_post_nullable_fields_table',1),(21,'2017_04_21_000000_add_order_to_data_rows_table',1),(22,'2017_07_05_210000_add_policyname_to_data_types_table',1),(23,'2017_08_05_000000_add_group_to_settings_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outs`
--

DROP TABLE IF EXISTS `outs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num` text COLLATE utf8_unicode_ci,
  `date` text COLLATE utf8_unicode_ci,
  `inf` text COLLATE utf8_unicode_ci,
  `date_out` text COLLATE utf8_unicode_ci,
  `osn` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outs`
--

LOCK TABLES `outs` WRITE;
/*!40000 ALTER TABLE `outs` DISABLE KEYS */;
INSERT INTO `outs` VALUES (1,'012','2011-04-15','Общество с ограниченной ответственностью «Проектная компания «Кампо» регистрационная запись в ЕГРЮЛ от 27.11.2007 ОГРН 1076672044107 фактический адрес: 620026, Россия, г. Екатеринбург, ул. Народной Воли, д.69, кв. 36 ИНН 6672254536, директор Кочнев Алексей Геннадьевич','2014-02-28','Неисполнение уставных требований','2017-10-24 17:10:09','2017-10-24 17:10:09'),(2,'035','2011-04-15','Общество с ограниченной ответственностью «Экология, бизнес и устойчивое развитие» регистрационная запись в ЕГРЮЛ от 07.03.2007 ОГРН 1076670009008 фактический адрес: 620067, РФ, Свердловская область, г Екатеринбург, ул.Уральская, д. 80, к. 4, тел: (343) 3 41-05-92 ИНН 6670167662, генеральный директор Епифанова Наталья Владимировна','2014-02-28','Неисполнение уставных требований','2017-10-24 17:10:46','2017-10-24 17:10:46'),(3,'024','2011-04-15','Общество с ограниченной ответственностью «Инженерные изыскания» (ООО «Инженерные изыскания») регистрационная запись в ЕГРЮЛ от 31.07.2009 ОГРН 1069659051769 фактический адрес: 620027, РФ, Свердловская область, г. Екатеринбург, ул. Мамина-Сибиряка, 36-401,тел: (343) 388-04-78 ИНН 6659139083, директор Данилов Михаил Юрьевич','2014-02-28','Неисполнение уставных требований','2017-10-24 17:11:18','2017-10-24 17:11:18'),(4,'020','2011-04-15','Общество с ограниченной ответственностью «Экологические Технологии» (ООО «Экологические Технологии») регистрационная запись в ЕГРЮЛ от 30.07.2010 г. ОГРН 1106670022227 фактический адрес: 620075, г. Екатеринбург, ул. Восточная, д.56, оф. 26, тел. (343) 334-84-88 ИНН 7728168971, директор Комендант Григорий Тедэушевич','2014-02-28','Неисполнение уставных требований','2017-10-24 17:11:55','2017-10-24 17:11:55'),(5,'015','2011-04-15','Общество с ограниченной ответственностью «Системы управления отходами и экологические проекты» (ООО «СУЭП-ЭкоПрофи») регистрационная запись в ЕГРЮЛ от 21.10.2009 г. ОГРН 1096670028839 фактический адрес: 620014, г. Екатеринбург, ул. Чернышевского,16,оф. 717, тел.(343)376-61-87 ИНН 6670269505, директор Короткин Евгений Маркович','2014-02-28','Неисполнение уставных требований','2017-10-24 17:12:32','2017-10-24 17:12:32'),(6,'027','2011-04-15','Открытое акционерное общество «Уральский завод авто-текстильных изделий» (ОАО «Урал-АТИ») регистрационная запись в ЕГРЮЛ от 12.07.1993 г. ОГРН 1026600628141 фактический адрес: 624261, Россия, Свердловская область, г. Асбест, ул. Плеханова, 64, тел. (34365)6-56-16 ИНН 6603000474, генеральный директор Исаков Виктор Анатольевич','2014-02-28','Неисполнение уставных требований','2017-10-24 17:13:04','2017-10-24 17:13:04'),(7,'026','2011-04-15','Муниципальное Унитарное Предприятие «Водопроводно-канализационное хозяйство» (МУП «Водоканал») регистрационная запись в ЕГРЮЛ от 04.04.1995 г. ОГРН 1026601725831 фактический адрес: 624130, Свердловская область, г. Новоуральск, ул. Автозаводская,29, тел. (34370)2-38-85 ИНН 6629007749, директор Ильин Петр Александрович','2014-02-28','Неисполнение уставных требований','2017-10-24 17:13:35','2017-10-24 17:13:35'),(8,'013','2011-04-15','Индивидуальный предприниматель Пичугина Наталья Анатольевна регистрационная запись в ЕГРИП от 16.07.2002 ОГРН 304667223900055 фактический адрес: 620075, г. Екатеринбург, ул. Малышева, 84-350, тел. (+7)922-295-9200 ИНН 666000081527','2011-12-20','Заявление о выходе от 19.12.2011','2017-10-24 17:14:06','2017-10-24 17:14:06'),(9,'004','2011-04-15','Муниципальное Унитарное Предприятие «Благоустройство» (МУП «Благоустройство») регистрационная запись в ЕГРЮЛ от 25.07.2003 ОГРН 1036600221800 фактический адрес: 623530, Свердловская область, г. Богданович, ул. Мира, 10, тел.(34376)2-30-82 ИНН 6605007940,директор Мальцев Олег Викторович','2012-08-10','Заявление о выходе от 09.08.2012','2017-10-24 17:14:34','2017-10-24 17:14:34');
/*!40000 ALTER TABLE `outs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2017-10-11 18:38:12','2017-10-11 18:38:12');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_groups`
--

LOCK TABLES `permission_groups` WRITE;
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(2,'browse_database',NULL,'2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(3,'browse_media',NULL,'2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(4,'browse_compass',NULL,'2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(5,'browse_menus','menus','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(6,'read_menus','menus','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(7,'edit_menus','menus','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(8,'add_menus','menus','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(9,'delete_menus','menus','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(10,'browse_pages','pages','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(11,'read_pages','pages','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(12,'edit_pages','pages','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(13,'add_pages','pages','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(14,'delete_pages','pages','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(15,'browse_roles','roles','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(16,'read_roles','roles','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(17,'edit_roles','roles','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(18,'add_roles','roles','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(19,'delete_roles','roles','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(20,'browse_users','users','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(21,'read_users','users','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(22,'edit_users','users','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(23,'add_users','users','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(24,'delete_users','users','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(25,'browse_posts','posts','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(26,'read_posts','posts','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(27,'edit_posts','posts','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(28,'add_posts','posts','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(29,'delete_posts','posts','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(30,'browse_categories','categories','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(31,'read_categories','categories','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(32,'edit_categories','categories','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(33,'add_categories','categories','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(34,'delete_categories','categories','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(35,'browse_settings','settings','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(36,'read_settings','settings','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(37,'edit_settings','settings','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(38,'add_settings','settings','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(39,'delete_settings','settings','2017-10-11 18:38:12','2017-10-11 18:38:12',NULL),(40,'browse_reestrs','reestrs','2017-10-13 10:18:26','2017-10-13 10:18:26',NULL),(41,'read_reestrs','reestrs','2017-10-13 10:18:26','2017-10-13 10:18:26',NULL),(42,'edit_reestrs','reestrs','2017-10-13 10:18:26','2017-10-13 10:18:26',NULL),(43,'add_reestrs','reestrs','2017-10-13 10:18:26','2017-10-13 10:18:26',NULL),(44,'delete_reestrs','reestrs','2017-10-13 10:18:26','2017-10-13 10:18:26',NULL),(45,'browse_retables','retables','2017-10-18 19:26:32','2017-10-18 19:26:32',NULL),(46,'read_retables','retables','2017-10-18 19:26:32','2017-10-18 19:26:32',NULL),(47,'edit_retables','retables','2017-10-18 19:26:32','2017-10-18 19:26:32',NULL),(48,'add_retables','retables','2017-10-18 19:26:32','2017-10-18 19:26:32',NULL),(49,'delete_retables','retables','2017-10-18 19:26:32','2017-10-18 19:26:32',NULL),(50,'browse_vsts','vsts','2017-10-20 13:37:42','2017-10-20 13:37:42',NULL),(51,'read_vsts','vsts','2017-10-20 13:37:42','2017-10-20 13:37:42',NULL),(52,'edit_vsts','vsts','2017-10-20 13:37:42','2017-10-20 13:37:42',NULL),(53,'add_vsts','vsts','2017-10-20 13:37:42','2017-10-20 13:37:42',NULL),(54,'delete_vsts','vsts','2017-10-20 13:37:42','2017-10-20 13:37:42',NULL),(55,'browse_pols','pols','2017-10-20 13:43:44','2017-10-20 13:43:44',NULL),(56,'read_pols','pols','2017-10-20 13:43:44','2017-10-20 13:43:44',NULL),(57,'edit_pols','pols','2017-10-20 13:43:44','2017-10-20 13:43:44',NULL),(58,'add_pols','pols','2017-10-20 13:43:44','2017-10-20 13:43:44',NULL),(59,'delete_pols','pols','2017-10-20 13:43:44','2017-10-20 13:43:44',NULL),(60,'browse_usl1s','usl1s','2017-10-24 11:55:05','2017-10-24 11:55:05',NULL),(61,'read_usl1s','usl1s','2017-10-24 11:55:05','2017-10-24 11:55:05',NULL),(62,'edit_usl1s','usl1s','2017-10-24 11:55:05','2017-10-24 11:55:05',NULL),(63,'add_usl1s','usl1s','2017-10-24 11:55:05','2017-10-24 11:55:05',NULL),(64,'delete_usl1s','usl1s','2017-10-24 11:55:05','2017-10-24 11:55:05',NULL),(65,'browse_usl2s','usl2s','2017-10-24 11:55:17','2017-10-24 11:55:17',NULL),(66,'read_usl2s','usl2s','2017-10-24 11:55:17','2017-10-24 11:55:17',NULL),(67,'edit_usl2s','usl2s','2017-10-24 11:55:17','2017-10-24 11:55:17',NULL),(68,'add_usl2s','usl2s','2017-10-24 11:55:17','2017-10-24 11:55:17',NULL),(69,'delete_usl2s','usl2s','2017-10-24 11:55:17','2017-10-24 11:55:17',NULL),(70,'browse_usl3s','usl3s','2017-10-24 11:55:27','2017-10-24 11:55:27',NULL),(71,'read_usl3s','usl3s','2017-10-24 11:55:27','2017-10-24 11:55:27',NULL),(72,'edit_usl3s','usl3s','2017-10-24 11:55:27','2017-10-24 11:55:27',NULL),(73,'add_usl3s','usl3s','2017-10-24 11:55:27','2017-10-24 11:55:27',NULL),(74,'delete_usl3s','usl3s','2017-10-24 11:55:27','2017-10-24 11:55:27',NULL),(75,'browse_usl4s','usl4s','2017-10-24 11:55:36','2017-10-24 11:55:36',NULL),(76,'read_usl4s','usl4s','2017-10-24 11:55:36','2017-10-24 11:55:36',NULL),(77,'edit_usl4s','usl4s','2017-10-24 11:55:36','2017-10-24 11:55:36',NULL),(78,'add_usl4s','usl4s','2017-10-24 11:55:36','2017-10-24 11:55:36',NULL),(79,'delete_usl4s','usl4s','2017-10-24 11:55:36','2017-10-24 11:55:36',NULL),(80,'browse_outs','outs','2017-10-24 17:08:30','2017-10-24 17:08:30',NULL),(81,'read_outs','outs','2017-10-24 17:08:30','2017-10-24 17:08:30',NULL),(82,'edit_outs','outs','2017-10-24 17:08:30','2017-10-24 17:08:30',NULL),(83,'add_outs','outs','2017-10-24 17:08:30','2017-10-24 17:08:30',NULL),(84,'delete_outs','outs','2017-10-24 17:08:30','2017-10-24 17:08:30',NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pols`
--

DROP TABLE IF EXISTS `pols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pols` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `img` text COLLATE utf8_unicode_ci,
  `file` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pols`
--

LOCK TABLES `pols` WRITE;
/*!40000 ALTER TABLE `pols` DISABLE KEYS */;
/*!40000 ALTER TABLE `pols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2017-10-11 18:38:12','2017-10-11 18:38:12'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2017-10-11 18:38:12','2017-10-11 18:38:12'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2017-10-11 18:38:12','2017-10-11 18:38:12'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2017-10-11 18:38:12','2017-10-11 18:38:12');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reestrs`
--

DROP TABLE IF EXISTS `reestrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reestrs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `back` text COLLATE utf8_unicode_ci,
  `img` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `file` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reestrs`
--

LOCK TABLES `reestrs` WRITE;
/*!40000 ALTER TABLE `reestrs` DISABLE KEYS */;
INSERT INTO `reestrs` VALUES (1,'reestrs/October2017/bg-3.jpg','reestrs/October2017/featured-image-1.png','<p>Членами Партнерства могут быть российские и иностранные юридические лица и индивидуальные предприниматели, осуществляющие деятельность в сфере обеспечения промышленной и экологической безопасности; подчиняющиеся требованиям настоящего Положения, Устава Партнерства и законодательства, дополнительным требованиям к порядку обеспечения имущественной ответственности, а также Правилам саморегулирования и иным правилам обязательного характера, содержащимся во внутренних документах Партнерства; в установленном порядке внесшие вступительный взнос, взнос в компенсационный фонд, регулярно оплачивающий членские взносы.&nbsp;&nbsp;</p>','[{\"download_link\":\"reestrs\\/October2017\\/msRjjB79w4CdhiuHbmhK.docx\",\"original_name\":\"\\u0441\\u043f\\u0438\\u0441\\u043e\\u043a \\u0447\\u043b\\u0435\\u043d\\u043e\\u0432 \\u0421\\u0420\\u041e 2015.docx\"}]','2017-10-13 10:20:00','2017-10-20 10:39:13');
/*!40000 ALTER TABLE `reestrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retables`
--

DROP TABLE IF EXISTS `retables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `im` text COLLATE utf8_unicode_ci,
  `vznos` text COLLATE utf8_unicode_ci,
  `sved` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retables`
--

LOCK TABLES `retables` WRITE;
/*!40000 ALTER TABLE `retables` DISABLE KEYS */;
INSERT INTO `retables` VALUES (4,1,'2011-04-15','Закрытое акционерное общество «Золото Северного Урала» (ЗАО «Золото Северного Урала») регистрационная запись в ЕГРЮЛ от 25.11.2002 г. ОГРН 1026601184170 фактический адрес: 624460, РФ, Свердловская область, г. Краснотурьинск, ул. Карпинского, дом 4, тел. (34384) 91-900 ИНН 6617001534, Управляющий директор Новиков Андрей Викторович','3000','e-mail: novikov@zsu.polymetal.ru Свидетельство о фин. гарантиях № 040 до 03.03.2015','2017-10-24 16:40:56','2017-10-24 16:40:56'),(5,36,'2014-02-27','Общество с ограниченной ответственностью Научно-производственный центр «ЮМАН» (ООО НПЦ «ЮМАН») регистрационная запись в ЕГРЮЛ от 05.05.2011 г. ОГРН 1118617000336 фактический адрес: 628416, Россия, Тюменская область, ХМАО-Югра, г. Сургут, ул. Григория Кукуевицкого, д. 10/2, тел. (3462) 35-01-01, 45-71-71 ИНН 8617029830, генеральный директор Лупунчук Маргарита Юрьевна','3000','e-mail: uman@wsnet.ru Контактное лицо: Исполнительный директор Лупунчук Ярослав Михайлович Свидетельство о фин. гарантиях № 038 до 14.03.2015','2017-10-24 16:42:11','2017-10-24 16:42:11'),(6,34,'2014-02-14','Общество с ограниченной ответственностью Проектное Бюро «Эйвас» (ООО ПБ «Эйвас») регистрационная запись в ЕГРЮЛ от 19.11.2013 г. ОГРН 1136679016330 юридический адрес: 620085, Россия, г. Екатеринбург, ул. Ляпустина, 6,49, тел. (343)278-68-08 ИНН 6679041030, директор Дегтерева Ангелина Леонидовна','3000','e-mail: enp44@mail.ru Свидетельство о фин. гарантиях № 037 до 17.02.2015','2017-10-24 16:48:09','2017-10-24 16:48:09'),(7,33,'2013-12-03','Общество с ограниченной ответственностью «Центр аварийно-спасательных операций» (ООО «ЦАСО») регистрационная запись в ЕГРЮЛ от 17.05.2007 ОГРН 1072463005361 фактический адрес: 660119, Россия, Красноярский край, г. Красноярск, ул. 40 Лет Победы, 15, тел. (391) 232-00-53 ИНН 2463087468, генеральный директор Бурцев Алексей Викторович','3000','e-mail: spasateli@gmail.com Свидетельство о фин. гарантиях № 036 до 04.12.2015','2017-10-24 16:48:54','2017-10-24 16:48:54'),(8,24,'2013-09-20','Общество с ограниченной ответственностью “Урал Процесс Инжиниринг Компания (УПЕК)» регистрационная запись в ЕГРЮЛ от 19.09.2002 г. ОГРН 1026605233412 фактический адрес: Российская Федерация, 620014, г. Екатеринбург, ул. Шейнкмана, 20 – 3 этаж тел. (343)371-03-15, 371-06-64 ИНН 6661102242, генеральный директор Халемский Арон Михайлович','3000','e-mail: fortex-upec@mail.ru Свидетельство о фин. гарантиях № 035 до 19.09.2014','2017-10-24 16:49:32','2017-10-24 16:49:32'),(9,32,'2013-07-01','Общество с ограниченной ответственностью «Алеут-служба специальных работ» (ООО «Алеут-служба специальных работ») регистрационная запись в ЕГРЮЛ от 03.03.2005 ОГРН 1056602653260 фактический адрес: 620102, Свердловская область, г.Екатеринбург, ул. Серафимы Дерябиной,д.17, к.29, тел. (+7) 9222230765 ИНН 6658201596, директор Мурзин Николай Эдуардович','3000','e-mail: uralspas@gmail.com','2017-10-24 16:50:12','2017-10-24 16:50:12'),(10,23,'2013-07-01','Частное учреждение Центр гражданской защиты и пожарной безопасности «Уралспас-Югра» регистрационная запись в ЕГРЮЛ от 16.07.2008 г. ОГРН 1088600001137 фактический адрес: 620042, Свердловская обл., г.Екатеринбург, ул. Восстания, 114А, оф.11,(343)333-86-43 ИНН 8601035965, Начальник Центра Лахтюк Григорий Васильевич','3000','e-mail: uralspas.ygra@yandex.ru Ответственный за работу с СРО НП «МАПЭБ» Зам.директора Бровин Андрей Григорьевич Свидетельство о фин. гарантиях № 034 до 30.06.2015','2017-10-24 16:50:48','2017-10-24 16:50:48'),(11,31,'2013-06-10','Общество с ограниченной ответственностью Проектная Группа «СамараЗемРесурс» (ООО ПГ «СамараЗемРесурс») регистрационная запись в ЕГРЮЛ от 12.09.2010 г. ОГРН 1106312006217 фактический адрес: 443050, Самарская область, г. Самара, Смышляевское шоссе, д.1а, оф. 100, тел.89631161456,89171648586 ИНН 6312099853, директор Каталов Алексей Викторович','3000','e-mail: samaraZR@mail.ru','2017-10-24 16:51:20','2017-10-24 16:51:20'),(12,21,'2013-06-10','Общество с ограниченной ответственностью Предприятие «ЭКО» (ООО Предприятие «ЭКО») регистрационная запись в ЕГРЮЛ от 18.02.2003 г. ОГРН 1036603494510 юридический адрес: 620078, РФ, Свердловская область, г.Екатеринбург, ул. Мира, д. 31, кв.32, тел. (343)262-97-61 ИНН 6660061040, Президент Свиридов Алексей Владиславович','3000','e-mail: asv1972@mail.ru','2017-10-24 16:51:47','2017-10-24 16:51:47'),(13,29,'2012-07-25','Общество с ограниченной ответственностью «Технологии переработки нефти» (ООО “Технологии переработки нефти») регистрационная запись в ЕГРЮЛ от 22.11.2010 г. ОГРН 1106658019148 фактический адрес: 620028, г. Екатеринбург, ул. Кирова, д.32А литер 50 А, тел.(343)2206022, 89221986765 ИНН 6658371848, Генеральный директор Ташланов Андрей Дмитриевич','3000','e-mail: 2206022@mail.ru','2017-10-24 16:52:24','2017-10-24 16:52:24'),(14,28,'2012-07-25','Общество с ограниченной ответственностью «Газовые промышленные технологии» (ООО «ГАЗПРОМТЕХНОЛОГИЯ») регистрационная запись в ЕГРЮЛ от 27.10.2011 г. ОГРН 1117232050561 фактический адрес: 625007, Тюменская область, г.Тюмень, ул. Широтная, 17 «А», оф. 23, тел.(343)377-52-83 ИНН 7203269899, Генеральный директор Бордусенко Олег Михайлович','3000','e-mail: vvkrickiy@mail.ru Контактное лицо: Исполнительный директор Крицкий Виктор Владиславович моб.тел. (+7)912-645-22-25','2017-10-24 16:53:09','2017-10-24 16:53:09'),(15,30,'2012-07-25','Общество с ограниченной ответственностью «Торговый дом «ОКПУР» (ООО «Торговый дом «ОКПУР») регистрационная запись в ЕГРЮЛ от 28.04.2006 ОГРН 1065904103022 юридический адрес: 620014, г.Екатеринбург, Набережная Рабочей молодежи, 45, тел. (343)368-40-52 ИНН 5904142865, Генеральный директор Бартель Алексей Владимирович','3000','e-mail: okpur-irbit@mail.ru','2017-10-24 16:53:37','2017-10-24 16:53:37'),(16,3,'2011-10-11','Закрытое акционерное общество «Управление по промышленной и экологической безопасности» (ЗАО «УПЭБ») Регистрационная запись в ЕГРЮЛ от 31.03.2010 ОГРН 1106672004680 Фактический адрес: 620075, Свердловская обл., г.Екатеринбург, ул. Мамина-Сибиряка, д.145, оф. 464, тел.(343)350-93-00 ИНН 6672312636, Генеральный директор Пичугина Наталья Анатольевна','3000','e-mail:eco30@yandex.ru','2017-10-24 16:54:12','2017-10-24 16:54:12'),(17,7,'2011-07-10','Общество с ограниченной ответственностью «Экологическое нормирование и проектирование» (ООО «ЭНП») Регистрационная запись в ЕГРЮЛ от 27.11.2007 ОГРН 1076674030950 Юридический адрес: 620085, г.Екатеринбург, ул. Агрономическая, 6-16 ИНН 6674237462, директор Ройзен Игорь Григорьевич','3000','e-mail: enp44@mail.ru','2017-10-24 16:54:44','2017-10-24 16:54:44'),(18,17,'2011-04-15','Общество с ограниченной ответственностью «Бюро экологического проектирования» (ООО «БЭП») Регистрационная запись в ЕГРЮЛ от 18.01.2008 ОГРН 1086612000166 Фактический адрес: 623400, Свердловская обл., г. Каменск-Уральский, ул. Белинского, д.1, тел. (3439)305-188 ИНН 6612025235, директор Белова Татьяна Александровна','3000','e-mail:bep-ural@mail.ru','2017-10-24 16:55:11','2017-10-24 16:55:11'),(19,14,'2011-04-15','Муниципальное унитарное предприятие «Комбинат благоустройства» (МУП «КБЛ») Регистрационная запись в ЕГРЮЛ от 17.12.2002 ОГРН 1026601767994 Фактический адрес: 624000, Свердловская обл., г.Лесной, ул. Мамина-Сибиряка, 6, тел. (34342)3-10-62 ИНН 6630000138, директор Бадин Юрий Валентинович','3000','e-mail: mupkbl@mail.ru','2017-10-24 16:55:38','2017-10-24 16:55:38'),(20,25,'2011-04-15','Общество с ограниченной ответственностью «Березовский рудник» (ООО «Березовский рудник») Регистрационная запись в ЕГРЮЛ от 21.06.2012 ОГРН 1026600670051 Фактический адрес: 623703, РФ, Свердловская обл., г. Березовский, Березовский тракт, 1, тел. (34369)4-45-96 ИНН 6604011599, Генеральный директор Набиуллин Фарит Минниахметович','3000','e-mail: info@ooobru.ru','2017-10-24 16:56:10','2017-10-24 16:56:10'),(21,18,'2011-04-15','Общество с ограниченной ответственностью Компания «ЭкоУрал» (ООО Компания «ЭкоУрал») Регистрационная запись в ЕГРЮЛ от 21.10.2010 ОГРН 1106674018330 Фактический адрес: 620010, г.Екатеринбург, пер. Хабиногорский, д.31, к.26, тел.89826150149 ИНН 6674364590, директор Абакумов Владимир Николаевич','3000','-','2017-10-24 16:56:33','2017-10-24 16:56:33'),(22,19,'2011-04-15','Общество с ограниченной ответственностью «Диан-Холод» (ООО «Диан-Холод») Регистрационная запись в ЕГРЮЛ от 05.05.2005 ОГРН 1056604038040 Фактический адрес: 620149, г.Екатеринбург, пер. Громова, д. 140, оф. 112, тел. (343)3-444-666 ИНН 6671169253, директор Постовалов Дмитрий Васильевич','3000','e-mail: dian-holod@mail.ru','2017-10-24 16:57:02','2017-10-24 16:57:02'),(23,22,'2011-04-15','Свердловское областное отделение Общественной организации – Международная академия наук экологии, безопасности человека и природы (СОООО «МАНЭБ») регистрационная запись в ЕГРЮЛ от 07.04.2003 ОГРН 1036605626815 Фактический адрес: 620144, г.Екатеринбург, ул. Куйбышева, д.30, к. 3301, тел.(343)257-16-76 ИНН 6671132221, Председатель Правления Семячков Александр Иванович','3000','e-mail: Semyachkov.A@ursmu.ru ursmu.ru','2017-10-24 16:57:46','2017-10-24 16:57:46'),(24,16,'2011-04-15','Общество с ограниченной ответственностью «Экотехнологии 2005» (ООО «Экотехнологии 2005») регистрационная запись в ЕГРЮЛ от 24.09.2009 ОГРН 1096659009699 фактический адрес: 620039, Россия, Свердловская обл., г.Екатеринбург, ул. Донбасская, 8, оф.6, тел.(343)333-48-62 ИНН 6659194743, Генеральный директор Сойхер Гульнария Рафитовна','3000','e-mail: soiher_g@mail.ru','2017-10-24 16:58:12','2017-10-24 16:58:12'),(25,11,'2011-04-15','Индивидуальный предприниматель Габова Ирина Яковлевна (ИП Габова) регистрационная запись в ЕГРЮЛ от 16.12.2010 ОГРН 310667035000010 фактический адрес: 620066, г.Екатеринбург, ул. Блюхера, 65-19, тел. (+7)906-8153858, (+7)9126211420 ИНН 662320407964','3000','e-mail: irinagabova@yandex.ru','2017-10-24 16:58:39','2017-10-24 16:58:39'),(26,9,'2011-04-15','Общество с ограниченной ответственностью Научно-техническое предприятие «Индустриальная экология» (ООО НТП «ИНДЭКО») регистрационная запись в ЕГРЮЛ от 26.11.2009 ОГРН 1069670165432 фактический адрес: Свердловская обл., г.Екатеринбург, пер. Отдельный, д. 5А – 10, тел.(343)371-63-83 ИНН 6670158107, директор Деменко Михаил Валентинович','3000','e-mail: indeco@usp.ru','2017-10-24 16:59:07','2017-10-24 16:59:07'),(27,10,'2011-04-15','Общество с ограниченной ответственностью «ЭкоРазвитие» (ООО «ЭкоРазвитие») регистрационная запись в ЕГРЮЛ от 08.09.2009 ОГРН 1096672015384 фактический адрес: 620014, г. Екатеринбург, ул. Хомякова, 2, оф. 216, тел. (343)213-17-66 ИНН 6672302451, генеральный директор Виноградов Алексей Вячеславович','3000','e-mail: ecoevolution@mail.ru сайт: www.eсoev.ru','2017-10-24 16:59:37','2017-10-24 16:59:37'),(28,6,'2011-04-15','Общество с ограниченной ответственностью «Уральская Военно-Экологическая Компания» (ООО «УралВЭК») регистрационная запись в ЕГРЮЛ от 24.06. 2010 ОГРН 1036604791607 фактический адрес: 620141, Свердловская обл., г. Екатеринбург, ул. Армавирская, 35, оф. 1, тел. (343)372-64-15 ИНН 6673084157, Генеральный директор Минягин Михаил Севастьянович','3000','е-mail:urvek@yandex.ru','2017-10-24 17:00:10','2017-10-24 17:00:10'),(29,5,'2011-04-15','Общество с ограниченной ответственностью Проектно-консалтинговый центр «РИФЕЙ-Экология» (ООО ПКЦ «РИФЕЙ-Экология») регистрационная запись в ЕГРЮЛ от 13.05.2010 ОГРН 1106670014505 фактический адрес: 620078, г.Екатеринбург, пер. Отдельный, д.5, оф. 305, тел. (343) 375-94-06 ИНН 6670293949, директор Почейкина Ольга Васильевна','3000','е-mail: rif66@rif-eco.com','2017-10-24 17:00:34','2017-10-24 17:00:34'),(30,2,'2011-04-15','Общество с ограниченной ответственностью «Поток» регистрационная запись в ЕГРЮЛ от 13.04.1992 ОГРН 1026601126287 фактический адрес: 624351, Свердловская обл., г. Качканар, ул. Привокзальная, 17. тел. (34341)6-44-98 ИНН 6615000704, директор Зудов Александр Григорьевич','3000','е-mail: potok-tbo@mail.ru','2017-10-24 17:00:58','2017-10-24 17:00:58'),(31,8,'2010-12-17','Муниципальное бюджетное учреждение «Управление хозяйством Невьянского городского округа» (МБУ «УХ НГО») регистрационная запись в ЕГРЮЛ от 10.06.2010 ОГРН 1046601180240 фактический адрес: г.Невьянск, ул. Ленина, д.11, тел. (34356) 2-19-63, ИНН 6621010299, директор Спаи Василий Николаевич','3000','е-mail: uh_ngo@mail.ru','2017-10-24 17:01:34','2017-10-24 17:01:34');
/*!40000 ALTER TABLE `retables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2017-10-11 18:38:12','2017-10-11 18:38:12'),(2,'user','Normal User','2017-10-11 18:38:12','2017-10-11 18:38:12');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','СРО','','text',1,'Site'),(2,'site.description','Site Description','Межрегиональная ассоциация по промышленной и экологической безопасности','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','settings/October2017/6.jpg','','image',5,'Admin'),(6,'admin.title','Admin Title','СРО','','text',1,'Admin'),(7,'admin.description','Admin Description','Добро пожаловать в панель администратора!','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',1,'pt','Post','2017-10-11 18:38:13','2017-10-11 18:38:13'),(2,'data_types','display_name_singular',2,'pt','Página','2017-10-11 18:38:13','2017-10-11 18:38:13'),(3,'data_types','display_name_singular',3,'pt','Utilizador','2017-10-11 18:38:13','2017-10-11 18:38:13'),(4,'data_types','display_name_singular',4,'pt','Categoria','2017-10-11 18:38:13','2017-10-11 18:38:13'),(5,'data_types','display_name_singular',5,'pt','Menu','2017-10-11 18:38:13','2017-10-11 18:38:13'),(6,'data_types','display_name_singular',6,'pt','Função','2017-10-11 18:38:13','2017-10-11 18:38:13'),(7,'data_types','display_name_plural',1,'pt','Posts','2017-10-11 18:38:13','2017-10-11 18:38:13'),(8,'data_types','display_name_plural',2,'pt','Páginas','2017-10-11 18:38:13','2017-10-11 18:38:13'),(9,'data_types','display_name_plural',3,'pt','Utilizadores','2017-10-11 18:38:13','2017-10-11 18:38:13'),(10,'data_types','display_name_plural',4,'pt','Categorias','2017-10-11 18:38:13','2017-10-11 18:38:13'),(11,'data_types','display_name_plural',5,'pt','Menus','2017-10-11 18:38:13','2017-10-11 18:38:13'),(12,'data_types','display_name_plural',6,'pt','Funções','2017-10-11 18:38:13','2017-10-11 18:38:13'),(13,'categories','slug',1,'pt','categoria-1','2017-10-11 18:38:13','2017-10-11 18:38:13'),(14,'categories','name',1,'pt','Categoria 1','2017-10-11 18:38:13','2017-10-11 18:38:13'),(15,'categories','slug',2,'pt','categoria-2','2017-10-11 18:38:13','2017-10-11 18:38:13'),(16,'categories','name',2,'pt','Categoria 2','2017-10-11 18:38:13','2017-10-11 18:38:13'),(17,'pages','title',1,'pt','Olá Mundo','2017-10-11 18:38:13','2017-10-11 18:38:13'),(18,'pages','slug',1,'pt','ola-mundo','2017-10-11 18:38:13','2017-10-11 18:38:13'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2017-10-11 18:38:13','2017-10-11 18:38:13'),(20,'menu_items','title',1,'pt','Painel de Controle','2017-10-11 18:38:13','2017-10-11 18:38:13'),(21,'menu_items','title',2,'pt','Media','2017-10-11 18:38:13','2017-10-11 18:38:13'),(22,'menu_items','title',3,'pt','Publicações','2017-10-11 18:38:13','2017-10-11 18:38:13'),(23,'menu_items','title',4,'pt','Utilizadores','2017-10-11 18:38:13','2017-10-11 18:38:13'),(24,'menu_items','title',5,'pt','Categorias','2017-10-11 18:38:13','2017-10-11 18:38:13'),(25,'menu_items','title',6,'pt','Páginas','2017-10-11 18:38:13','2017-10-11 18:38:13'),(26,'menu_items','title',7,'pt','Funções','2017-10-11 18:38:13','2017-10-11 18:38:13'),(27,'menu_items','title',8,'pt','Ferramentas','2017-10-11 18:38:13','2017-10-11 18:38:13'),(28,'menu_items','title',9,'pt','Menus','2017-10-11 18:38:13','2017-10-11 18:38:13'),(29,'menu_items','title',10,'pt','Base de dados','2017-10-11 18:38:13','2017-10-11 18:38:13'),(30,'menu_items','title',13,'pt','Configurações','2017-10-11 18:38:13','2017-10-11 18:38:13');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/default.png','$2y$10$hLobJ0Yijqh.oLWm.lRZ0.eUPLiN/BD9guBug2vEXhBeCWWhz.R1.','tgiL1fDvWrgPoK72YtAsQUPtq01khUSvnKuKmeqDpBY7C8MCHTKSY4bjy0wb','2017-10-11 18:38:12','2017-10-11 18:38:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usl1s`
--

DROP TABLE IF EXISTS `usl1s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usl1s` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usl1s`
--

LOCK TABLES `usl1s` WRITE;
/*!40000 ALTER TABLE `usl1s` DISABLE KEYS */;
INSERT INTO `usl1s` VALUES (1,'КОНСУЛЬТАЦИИ И РАЗЪЯСНЕНИЯ ПО СИСТЕМЕ УПРАВЛЕНИЯ ПРОМЫШЛЕННОЙ БЕЗОПАСНОСТЬЮ','<p>1 &mdash; политика эксплуатирующих организаций в области промышленной безопасности;</p>\r\n<p>2 &mdash; положение о системе управления промышленной безопасностью;</p>\r\n<p>&nbsp;</p>\r\n<p>3 &mdash; положение о производственном контроле над соблюдением требований</p>\r\n<p>промышленной безопасности на опасных производственных объектах;</p>\r\n<p>4 &mdash; планирование мероприятий по снижению риска аварий на опасных производственных</p>\r\n<p>объектах;</p>\r\n<p>5 &mdash; обеспечение функционирование системы управления промышленной безопасностью,</p>\r\n<p>предусмотренные положением о системе управления промышленной безопасностью.</p>','2017-10-24 12:06:00','2017-10-24 12:11:01');
/*!40000 ALTER TABLE `usl1s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usl2s`
--

DROP TABLE IF EXISTS `usl2s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usl2s` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usl2s`
--

LOCK TABLES `usl2s` WRITE;
/*!40000 ALTER TABLE `usl2s` DISABLE KEYS */;
INSERT INTO `usl2s` VALUES (1,'КОНСУЛЬТАЦИИ ЭКСПЛУАТИРУЮЩИХ ОРГАНИЗАЦИЙ В ОБЛАСТИ ПРОМБЕЗОПАСНОСТИ','<p>1 &mdash; цели и обязательства эксплуатирующих организаций по снижению риска аварий на</p>\r\n<p>опасных производственных объектах;</p>\r\n<p>2 &mdash; обязательства эксплуатирующих организаций по проведению консультаций с</p>\r\n<p>работниками опасных производственных объектов и их представителями по вопросам</p>\r\n<p>обеспечения промышленной безопасности;</p>\r\n<p>3 &mdash; обязательства эксплуатирующих организаций по совершенствованию системы</p>\r\n<p>управления промышленной безопасностью.</p>\r\n<p>4 &mdash; политика эксплуатирующих организаций в области промышленной безопасности их</p>\r\n<p>утверждение руководителями эксплуатирующих организаций и размещение на сайте</p>\r\n<p>эксплуатирующих организаций в информационно-телекоммуникационной сетях</p>\r\n<p>&laquo;Интернет&raquo; (при наличии сайтов) либо публикации в средствах массовой информации в</p>\r\n<p>течение 30 календарных дней со дня его утверждения.</p>','2017-10-24 13:26:04','2017-10-24 13:26:04');
/*!40000 ALTER TABLE `usl2s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usl3s`
--

DROP TABLE IF EXISTS `usl3s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usl3s` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usl3s`
--

LOCK TABLES `usl3s` WRITE;
/*!40000 ALTER TABLE `usl3s` DISABLE KEYS */;
INSERT INTO `usl3s` VALUES (1,'КОНСУЛЬТАЦИИ ПО СИСТЕМЕ УПРАВЛЕНИЯ ПРОМЫШЛЕННОЙ БЕЗОПАСНОСТЬЮ','<p>1 &mdash; задачи эксплуатирующих организаций в области промышленной безопасности;</p>\r\n<p>2 &mdash; структура системы управления промышленной безопасностью и ее место в общей</p>\r\n<p>системе управления эксплуатирующих организаций;</p>\r\n<p>3 &mdash; перечень опасных производственных объектов, на которые распространяется</p>\r\n<p>действие системы управления промышленной безопасностью;</p>\r\n<p>4 &mdash; функции, права и обязанности руководителей эксплуатирующих организаций, их</p>\r\n<p>заместителей, работников в области промышленной безопасности;</p>\r\n<p>5 &mdash; проведения очных консультаций с работниками опасных производственных объектов</p>\r\n<p>и их представителями по вопросам обеспечения промышленной безопасности;</p>\r\n<p>6 &mdash; организация материального и финансового обеспечения мероприятий,</p>\r\n<p>осуществляемых в рамках системы управления промышленной безопасностью;</p>\r\n<p>7 &mdash; порядок планирования работ, осуществляемых в рамках системы управления</p>\r\n<p>промышленной безопасностью, и перечень документов планирования мероприятий по</p>\r\n<p>снижению риска аварий на опасных производственных объектах;</p>\r\n<p>8 &mdash; порядок проведения анализа функционирования системы управления промышленной</p>\r\n<p>безопасностью, разработки и осуществления корректирующих мероприятий,</p>\r\n<p>направленных на устранение выявленных несоответствий требованиям промышленной</p>\r\n<p>безопасности и повышение уровня промышленной безопасности;</p>\r\n<p>9 &mdash; информационное обеспечение в рамках системы управления промышленной</p>\r\n<p>безопасностью;</p>\r\n<p>10 &mdash; порядок проведения предаттестационной подготовки и аттестации в области</p>\r\n<p>промышленной безопасности руководителей и работников эксплуатирующих</p>\r\n<p>организаций;</p>\r\n<p>11 &mdash; порядок проведения обучения и проверки знаний работников в области</p>\r\n<p>промышленной безопасности;</p>\r\n<p>12 &mdash; документационное обеспечение мероприятий, осуществляемых в рамках системы</p>\r\n<p>управления промышленной безопасностью;</p>\r\n<p>13 &mdash; порядок работы с подрядными организациями, осуществляющими деятельность на</p>\r\n<p>опасных производственных объектах;</p>\r\n<p>&nbsp;</p>\r\n<p>14 &mdash; обеспечение безопасности опытного применения технических устройств в случаях,</p>\r\n<p>предусмотренных Федеральным законом &laquo;О промышленной безопасности опасных</p>\r\n<p>производственных объектов&raquo;;</p>\r\n<p>15 &mdash; порядок идентификации опасностей и оценки риска возникновения аварий.</p>\r\n<p>16 &mdash; Разъяснения положение о производственном контроле над соблюдением</p>\r\n<p>требований промышленной безопасности на опасных производственных объектах в</p>\r\n<p>соответствии с требованиями, установленными постановлением Правительства</p>\r\n<p>Российской Федерации от 10 марта 1999 г. № 263 &laquo;Об организации и осуществлении</p>\r\n<p>производственного контроле над соблюдением требований промышленной безопасности</p>\r\n<p>на опасном производственном объекте&raquo;.</p>','2017-10-24 13:26:33','2017-10-24 13:26:33');
/*!40000 ALTER TABLE `usl3s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usl4s`
--

DROP TABLE IF EXISTS `usl4s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usl4s` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usl4s`
--

LOCK TABLES `usl4s` WRITE;
/*!40000 ALTER TABLE `usl4s` DISABLE KEYS */;
INSERT INTO `usl4s` VALUES (1,'СЕРТИФИКАЦИЯ СИСТЕМ МЕНЕДЖМЕНТА БЕЗОПАСНОСТИ ПИЩЕВОЙ ПРОДУКЦИИ','<p>СРО НП МАПЭБ консультирует по вопросам сертификации организаций, которые</p>\r\n<p>разработали, внедрили и обеспечили результативное функционирование Системы</p>\r\n<p>менеджмента безопасности пищевой продукции &laquo;Анализ рисков в контрольных</p>\r\n<p>критических точках&raquo;.</p>\r\n<p>Эта модель обеспечения производства безопасной пищевой продукции в латинице</p>\r\n<p>обозначается HAССP, в кириллице &mdash; ХАССП.</p>\r\n<p>Система ХАССП &mdash; совокупность организационной структуры документов,</p>\r\n<p>производственных процессов и ресурсов, необходимых для реализации ХАССП (англ.</p>\r\n<p>НАССР &mdash; анализ рисков и критические контрольные точки) &mdash; концепции,</p>\r\n<p>предусматривающей систематическую идентификацию, оценку и управление факторами,</p>\r\n<p>существенно влияющими на безопасность продукции.</p>\r\n<p>В ЕС, США, Канаде, Австралии и других разви&shy;тых странах Система ХАССП обязательна для</p>\r\n<p>всех пищевых и прирав&shy;ненных к ним предприятий .</p>\r\n<p>1 июля 2013 г. вступил в силу Технический регламент Таможен&shy;ного союза TP ТС 021/2011</p>\r\n<p>&laquo;О БЕЗО&shy;ПАСНОСТИ ПИЩЕВОЙ ПРОДУКЦИИ&raquo;, предписывающий:</p>\r\n<p>&laquo;При осуществлении процессов производства (изготовления) пище&shy;вой продукции,</p>\r\n<p>связанных с требо&shy;ваниями безопасности такой про&shy;дукции, изготовитель должен</p>\r\n<p>разработать, внедрить и поддерживать процедуры, основанные на принци&shy;пах ХАССП&raquo;.</p>\r\n<p>Согласно п. 3 ст. 11 TP ТС 021/2011&laquo;О безопасности пищевой продукции&raquo;, предприятия</p>\r\n<p>Рос&shy;сии, Белоруссии и Казахстана обязаны внедрять Систе&shy;му ХАССП.</p>\r\n<p>Также СРО НП МАПЭБ предлагает профессиональные консалтинговые услуги по</p>\r\n<p>разработке и внедрению системы менеджмента качества (СМК), в соответствии с</p>\r\n<p>требованиями стандарта ISO 9001:2015 (ГОСТ Р ИСО 9001-2015).</p>\r\n<p>Привлечение внешних консультантов необходимо для ускорения работ и минимизации</p>\r\n<p>ошибок, а, следовательно, затрат на разработку и внедрение системы менеджмента</p>\r\n<p>качества собственными силами.</p>\r\n<p>Объем работ по разработке и внедрению СМК, а также сроки их выполнения, зависят от</p>\r\n<p>размеров компании (количество филиалов, численность сотрудников), количества и</p>\r\n<p>сложности бизнес-процессов, степени готовности персонала и т.д.</p>','2017-10-24 13:27:46','2017-10-24 13:27:46');
/*!40000 ALTER TABLE `usl4s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vsts`
--

DROP TABLE IF EXISTS `vsts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vsts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `img` text COLLATE utf8_unicode_ci,
  `file` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vsts`
--

LOCK TABLES `vsts` WRITE;
/*!40000 ALTER TABLE `vsts` DISABLE KEYS */;
INSERT INTO `vsts` VALUES (1,'Порядок вступления','<p>Юридические лица и индивидуальные предприниматели, желающие вступить в Партнерство, подают в Совет Партнерства письменное заявление о вступлении в Партнерство по форме согласно Приложению 1 к настоящему Положению с приложением документов, указанных в п.3.2 настоящего Положения. Заявление должно содержать согласие Заявителя на соблюдение положений Устава Партнерства, дополнительных требований к порядку обеспечения имущественной ответственности, а также стандартов и правил, содержащихся во внутренних документах Партнерства</p>','vsts/October2017/bulb.png','[{\"download_link\":\"vsts\\/October2017\\/eQhVIB9M1eY5vabSl2lP.pdf\",\"original_name\":\"Polozhenie_o_chlenstve_v_SRO_NP_MAPEB.pdf\"}]','2017-10-20 14:09:00','2017-10-22 15:11:01');
/*!40000 ALTER TABLE `vsts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-24 18:44:27
