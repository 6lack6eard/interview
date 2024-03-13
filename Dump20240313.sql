CREATE DATABASE  IF NOT EXISTS `uat_test_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `uat_test_db`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 151.106.113.125    Database: uat_test_db
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `apidatas`
--

DROP TABLE IF EXISTS `apidatas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apidatas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `completed` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apidatas`
--

LOCK TABLES `apidatas` WRITE;
/*!40000 ALTER TABLE `apidatas` DISABLE KEYS */;
INSERT INTO `apidatas` VALUES (1,'1',NULL,NULL,'2024-03-13 10:28:37','2024-03-13 10:28:37'),(2,'0',NULL,NULL,'2024-03-13 10:30:13','2024-03-13 10:30:13'),(3,'0',NULL,NULL,'2024-03-13 10:30:39','2024-03-13 10:30:39'),(4,'8',NULL,'1','2024-03-13 10:31:53','2024-03-13 10:31:53'),(5,'2',NULL,'1','2024-03-13 10:33:10','2024-03-13 10:33:10'),(6,'8',NULL,'1','2024-03-13 10:34:45','2024-03-13 10:34:45');
/*!40000 ALTER TABLE `apidatas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_03_13_084227_create_posts_table',2),(6,'2024_03_13_101812_create_apidatas_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `post` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (90,13,'Dr.',NULL,'2024-03-13 10:02:04','2024-03-13 10:02:04'),(91,10,'Dr.',NULL,'2024-03-13 10:02:48','2024-03-13 10:02:48'),(92,3,'Miss',NULL,'2024-03-13 10:02:48','2024-03-13 10:02:48'),(93,19,'Mrs.',NULL,'2024-03-13 10:02:48','2024-03-13 10:02:48'),(94,18,'Miss',NULL,'2024-03-13 10:02:48','2024-03-13 10:02:48'),(95,30,'Dr.',NULL,'2024-03-13 10:02:49','2024-03-13 10:02:49'),(96,26,'Prof.',NULL,'2024-03-13 10:02:49','2024-03-13 10:02:49'),(97,24,'Ms.',NULL,'2024-03-13 10:02:49','2024-03-13 10:02:49'),(98,8,'Ms.',NULL,'2024-03-13 10:02:49','2024-03-13 10:02:49'),(99,15,'Prof.',NULL,'2024-03-13 10:02:49','2024-03-13 10:02:49'),(100,26,'Prof.',NULL,'2024-03-13 10:02:49','2024-03-13 10:02:49'),(101,4,'Ms.',NULL,'2024-03-13 10:02:50','2024-03-13 10:02:50'),(102,18,'Miss',NULL,'2024-03-13 10:02:50','2024-03-13 10:02:50'),(103,29,'Ms.',NULL,'2024-03-13 10:02:50','2024-03-13 10:02:50'),(104,20,'Dr.',NULL,'2024-03-13 10:02:50','2024-03-13 10:02:50'),(105,19,'Dr.',NULL,'2024-03-13 10:02:50','2024-03-13 10:02:50'),(106,4,'Prof.',NULL,'2024-03-13 10:02:50','2024-03-13 10:02:50'),(107,23,'Prof.',NULL,'2024-03-13 10:02:51','2024-03-13 10:02:51'),(108,5,'Dr.',NULL,'2024-03-13 10:02:51','2024-03-13 10:02:51'),(109,6,'Mrs.',NULL,'2024-03-13 10:02:51','2024-03-13 10:02:51'),(110,22,'Mr.',NULL,'2024-03-13 10:02:51','2024-03-13 10:02:51'),(111,14,'Dr.',NULL,'2024-03-13 10:02:51','2024-03-13 10:02:51'),(112,3,'Prof.',NULL,'2024-03-13 10:02:51','2024-03-13 10:02:51'),(113,26,'Mrs.',NULL,'2024-03-13 10:02:52','2024-03-13 10:02:52'),(114,20,'Miss',NULL,'2024-03-13 10:02:52','2024-03-13 10:02:52'),(115,24,'Mr.',NULL,'2024-03-13 10:02:52','2024-03-13 10:02:52'),(116,16,'Dr.',NULL,'2024-03-13 10:02:52','2024-03-13 10:02:52'),(117,26,'Mr.',NULL,'2024-03-13 10:02:52','2024-03-13 10:02:52'),(118,7,'Dr.',NULL,'2024-03-13 10:02:52','2024-03-13 10:02:52'),(119,2,'Dr.',NULL,'2024-03-13 10:02:53','2024-03-13 10:02:53'),(120,2,'Prof.',NULL,'2024-03-13 10:02:53','2024-03-13 10:02:53'),(121,14,'Prof.',NULL,'2024-03-13 10:02:53','2024-03-13 10:02:53'),(122,5,'Miss',NULL,'2024-03-13 10:02:53','2024-03-13 10:02:53'),(123,7,'Ms.',NULL,'2024-03-13 10:02:53','2024-03-13 10:02:53'),(124,25,'Dr.',NULL,'2024-03-13 10:02:53','2024-03-13 10:02:53'),(125,22,'Prof.',NULL,'2024-03-13 10:02:54','2024-03-13 10:02:54'),(126,16,'Miss',NULL,'2024-03-13 10:02:54','2024-03-13 10:02:54'),(127,10,'Prof.',NULL,'2024-03-13 10:02:54','2024-03-13 10:02:54'),(128,10,'Mr.',NULL,'2024-03-13 10:02:54','2024-03-13 10:02:54'),(129,27,'Dr.',NULL,'2024-03-13 10:02:54','2024-03-13 10:02:54'),(130,23,'Prof.',NULL,'2024-03-13 10:02:54','2024-03-13 10:02:54'),(131,29,'Dr.',NULL,'2024-03-13 10:02:55','2024-03-13 10:02:55'),(132,2,'Dr.',NULL,'2024-03-13 10:02:55','2024-03-13 10:02:55'),(133,25,'Dr.',NULL,'2024-03-13 10:02:55','2024-03-13 10:02:55'),(134,19,'Ms.',NULL,'2024-03-13 10:02:55','2024-03-13 10:02:55'),(135,13,'Prof.',NULL,'2024-03-13 10:02:55','2024-03-13 10:02:55'),(136,6,'Prof.',NULL,'2024-03-13 10:02:55','2024-03-13 10:02:55'),(137,13,'Mr.',NULL,'2024-03-13 10:02:56','2024-03-13 10:02:56'),(138,20,'Mr.',NULL,'2024-03-13 10:02:56','2024-03-13 10:02:56'),(139,18,'Prof.',NULL,'2024-03-13 10:02:56','2024-03-13 10:02:56'),(140,2,'Dr.',NULL,'2024-03-13 10:02:56','2024-03-13 10:02:56'),(141,10,'Prof.',NULL,'2024-03-13 10:02:56','2024-03-13 10:02:56'),(142,9,'Dr.',NULL,'2024-03-13 10:02:56','2024-03-13 10:02:56'),(143,8,'Mr.',NULL,'2024-03-13 10:02:57','2024-03-13 10:02:57'),(144,28,'Dr.',NULL,'2024-03-13 10:02:57','2024-03-13 10:02:57'),(145,1,'Prof.',NULL,'2024-03-13 10:02:57','2024-03-13 10:02:57'),(146,21,'Dr.',NULL,'2024-03-13 10:02:57','2024-03-13 10:02:57'),(147,10,'Dr.',NULL,'2024-03-13 10:02:57','2024-03-13 10:02:57'),(148,11,'Prof.',NULL,'2024-03-13 10:02:58','2024-03-13 10:02:58'),(149,7,'Mr.',NULL,'2024-03-13 10:02:58','2024-03-13 10:02:58'),(150,5,'Mr.',NULL,'2024-03-13 10:02:58','2024-03-13 10:02:58'),(151,6,'Miss',NULL,'2024-03-13 10:02:58','2024-03-13 10:02:58'),(152,29,'Miss',NULL,'2024-03-13 10:02:58','2024-03-13 10:02:58'),(153,20,'Dr.',NULL,'2024-03-13 10:02:59','2024-03-13 10:02:59'),(154,16,'Mrs.',NULL,'2024-03-13 10:02:59','2024-03-13 10:02:59'),(155,3,'Miss',NULL,'2024-03-13 10:02:59','2024-03-13 10:02:59'),(156,30,'Miss',NULL,'2024-03-13 10:02:59','2024-03-13 10:02:59'),(157,12,'Dr.',NULL,'2024-03-13 10:02:59','2024-03-13 10:02:59'),(158,16,'Dr.',NULL,'2024-03-13 10:03:00','2024-03-13 10:03:00'),(159,21,'Mr.',NULL,'2024-03-13 10:03:00','2024-03-13 10:03:00'),(160,12,'Prof.',NULL,'2024-03-13 10:03:00','2024-03-13 10:03:00'),(161,24,'Mr.',NULL,'2024-03-13 10:03:00','2024-03-13 10:03:00'),(162,3,'Dr.',NULL,'2024-03-13 10:03:00','2024-03-13 10:03:00'),(163,23,'Mr.',NULL,'2024-03-13 10:03:01','2024-03-13 10:03:01'),(164,22,'Miss',NULL,'2024-03-13 10:03:01','2024-03-13 10:03:01'),(165,7,'Dr.',NULL,'2024-03-13 10:03:01','2024-03-13 10:03:01'),(166,29,'Dr.',NULL,'2024-03-13 10:03:01','2024-03-13 10:03:01'),(167,19,'Mr.',NULL,'2024-03-13 10:03:01','2024-03-13 10:03:01'),(168,23,'Ms.',NULL,'2024-03-13 10:03:01','2024-03-13 10:03:01'),(169,22,'Mr.',NULL,'2024-03-13 10:03:01','2024-03-13 10:03:01'),(170,13,'Dr.',NULL,'2024-03-13 10:03:02','2024-03-13 10:03:02'),(171,21,'Prof.',NULL,'2024-03-13 10:03:02','2024-03-13 10:03:02'),(172,11,'Miss',NULL,'2024-03-13 10:03:03','2024-03-13 10:03:03'),(173,5,'Prof.',NULL,'2024-03-13 10:03:03','2024-03-13 10:03:03'),(174,24,'Prof.',NULL,'2024-03-13 10:03:03','2024-03-13 10:03:03'),(175,1,'Mr.',NULL,'2024-03-13 10:03:03','2024-03-13 10:03:03'),(176,24,'Dr.',NULL,'2024-03-13 10:03:03','2024-03-13 10:03:03'),(177,14,'Dr.',NULL,'2024-03-13 10:03:03','2024-03-13 10:03:03'),(178,3,'Prof.',NULL,'2024-03-13 10:03:04','2024-03-13 10:03:04'),(179,27,'Ms.',NULL,'2024-03-13 10:03:04','2024-03-13 10:03:04'),(180,22,'Prof.',NULL,'2024-03-13 10:03:04','2024-03-13 10:03:04'),(181,26,'Mrs.',NULL,'2024-03-13 10:03:04','2024-03-13 10:03:04'),(182,9,'Prof.',NULL,'2024-03-13 10:03:04','2024-03-13 10:03:04'),(183,24,'Prof.',NULL,'2024-03-13 10:03:05','2024-03-13 10:03:05'),(184,21,'Prof.',NULL,'2024-03-13 10:03:05','2024-03-13 10:03:05'),(185,4,'Dr.',NULL,'2024-03-13 10:03:05','2024-03-13 10:03:05'),(186,15,'Prof.',NULL,'2024-03-13 10:03:05','2024-03-13 10:03:05'),(187,27,'Prof.',NULL,'2024-03-13 10:03:05','2024-03-13 10:03:05'),(188,13,'Prof.',NULL,'2024-03-13 10:03:05','2024-03-13 10:03:05'),(189,24,'Dr.',NULL,'2024-03-13 10:03:06','2024-03-13 10:03:06'),(190,14,'Prof.',NULL,'2024-03-13 10:03:06','2024-03-13 10:03:06');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('N1DC2aMqdT39CmF3UchdRyqseYihrytHMN2sl5yj',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHYwMnRXTDVxaDBlY1prdEdwblVkVXlCZ01RcEJEQzNxd3JUZGxQMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGlEYXRhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1710326078);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Grant Harber III','jessica.moen@example.com','2024-03-13 08:55:20','$2y$12$GZKmSWSeEE.U2lV5CS9Hz.0k/6s1jhQGPaC73ccCWEXfjUteH1cmm','rJSFmUkTsh','2024-03-13 08:55:21','2024-03-13 08:55:21'),(2,'Ms. Bulah Schowalter II','rkub@example.org','2024-03-13 08:55:21','$2y$12$GZKmSWSeEE.U2lV5CS9Hz.0k/6s1jhQGPaC73ccCWEXfjUteH1cmm','O71Rp92tQ0','2024-03-13 08:55:21','2024-03-13 08:55:21'),(3,'Shannon Terry','kutch.lamar@example.net','2024-03-13 08:55:21','$2y$12$GZKmSWSeEE.U2lV5CS9Hz.0k/6s1jhQGPaC73ccCWEXfjUteH1cmm','9SnPRaSjvO','2024-03-13 08:55:22','2024-03-13 08:55:22'),(4,'Eusebio Hudson','luisa61@example.org','2024-03-13 08:55:21','$2y$12$GZKmSWSeEE.U2lV5CS9Hz.0k/6s1jhQGPaC73ccCWEXfjUteH1cmm','PbLsNUyr4p','2024-03-13 08:55:22','2024-03-13 08:55:22'),(5,'Darrick Bayer','evie.heathcote@example.com','2024-03-13 08:55:21','$2y$12$GZKmSWSeEE.U2lV5CS9Hz.0k/6s1jhQGPaC73ccCWEXfjUteH1cmm','00izFjAV2U','2024-03-13 08:55:22','2024-03-13 08:55:22'),(6,'Herminio Jacobs DVM','jazlyn.kessler@example.com','2024-03-13 09:01:03','$2y$12$p4vNfOJoKdZYcITLlOKbpeVe26IQ0Lb4qKPmlqd5JKxkKYIVv4of.','ip1bzK1054','2024-03-13 09:01:03','2024-03-13 09:01:03'),(7,'Dr. Al Boyle','jthiel@example.com','2024-03-13 09:01:03','$2y$12$p4vNfOJoKdZYcITLlOKbpeVe26IQ0Lb4qKPmlqd5JKxkKYIVv4of.','Mz0HpVCvJb','2024-03-13 09:01:04','2024-03-13 09:01:04'),(8,'Ethan Murazik','jast.emery@example.net','2024-03-13 09:01:03','$2y$12$p4vNfOJoKdZYcITLlOKbpeVe26IQ0Lb4qKPmlqd5JKxkKYIVv4of.','F86pFRFDHY','2024-03-13 09:01:04','2024-03-13 09:01:04'),(9,'Antwan Littel','hilda97@example.org','2024-03-13 09:01:03','$2y$12$p4vNfOJoKdZYcITLlOKbpeVe26IQ0Lb4qKPmlqd5JKxkKYIVv4of.','LHvlwsIfOK','2024-03-13 09:01:04','2024-03-13 09:01:04'),(10,'Amya Schuster V','oreilly.missouri@example.net','2024-03-13 09:01:03','$2y$12$p4vNfOJoKdZYcITLlOKbpeVe26IQ0Lb4qKPmlqd5JKxkKYIVv4of.','hZRT4By6j2','2024-03-13 09:01:04','2024-03-13 09:01:04'),(11,'Dr. Ryan Sipes','oran86@example.org','2024-03-13 09:01:37','$2y$12$LqjhbWQid1qJdYc7yjCBZ.4HHdp5uhsZRnoL8cJP.WQTlKghbUocO','SvYVfvHsTR','2024-03-13 09:01:37','2024-03-13 09:01:37'),(12,'Kavon Greenfelder','kglover@example.com','2024-03-13 09:01:37','$2y$12$LqjhbWQid1qJdYc7yjCBZ.4HHdp5uhsZRnoL8cJP.WQTlKghbUocO','XDh9gHuvr3','2024-03-13 09:01:38','2024-03-13 09:01:38'),(13,'Carroll Schiller','fhessel@example.org','2024-03-13 09:01:37','$2y$12$LqjhbWQid1qJdYc7yjCBZ.4HHdp5uhsZRnoL8cJP.WQTlKghbUocO','oExtSDDoGR','2024-03-13 09:01:38','2024-03-13 09:01:38'),(14,'Dasia Mitchell','rey41@example.com','2024-03-13 09:01:37','$2y$12$LqjhbWQid1qJdYc7yjCBZ.4HHdp5uhsZRnoL8cJP.WQTlKghbUocO','lbng5EqGx7','2024-03-13 09:01:38','2024-03-13 09:01:38'),(15,'Irving Nienow','wweimann@example.com','2024-03-13 09:01:37','$2y$12$LqjhbWQid1qJdYc7yjCBZ.4HHdp5uhsZRnoL8cJP.WQTlKghbUocO','kRyMn7RlO5','2024-03-13 09:01:38','2024-03-13 09:01:38'),(16,'Alena Berge','rgrady@example.net','2024-03-13 09:11:24','$2y$12$Ld7/virVK5CVDMPLmO9NJuTEfMH8kUMexD4zLvlKf.rCdCuSUOXD.','XJLdZX3qpX','2024-03-13 09:11:24','2024-03-13 09:11:24'),(17,'Dr. Christop Weber DVM','denis.orn@example.net','2024-03-13 09:11:24','$2y$12$Ld7/virVK5CVDMPLmO9NJuTEfMH8kUMexD4zLvlKf.rCdCuSUOXD.','IiKtYu9mp7','2024-03-13 09:11:24','2024-03-13 09:11:24'),(18,'Geraldine Gaylord','kullrich@example.net','2024-03-13 09:11:24','$2y$12$Ld7/virVK5CVDMPLmO9NJuTEfMH8kUMexD4zLvlKf.rCdCuSUOXD.','VXTSRTkqCI','2024-03-13 09:11:25','2024-03-13 09:11:25'),(19,'Columbus Bradtke IV','schneider.crystal@example.org','2024-03-13 09:11:24','$2y$12$Ld7/virVK5CVDMPLmO9NJuTEfMH8kUMexD4zLvlKf.rCdCuSUOXD.','2Sa43SERsR','2024-03-13 09:11:25','2024-03-13 09:11:25'),(20,'Wallace Lang','nikko.hessel@example.net','2024-03-13 09:11:24','$2y$12$Ld7/virVK5CVDMPLmO9NJuTEfMH8kUMexD4zLvlKf.rCdCuSUOXD.','AlbFJAWZAt','2024-03-13 09:11:25','2024-03-13 09:11:25'),(21,'Mae Kirlin','natalie.volkman@example.net','2024-03-13 09:17:47','$2y$12$.rbpwyfVR/1ujJubPuLsp.dX1gF.dUDkiQTFTemdMXLJdFsPUqNse','TzqV24We4m','2024-03-13 09:17:47','2024-03-13 09:17:47'),(22,'Jarod Zieme','xprohaska@example.net','2024-03-13 09:17:47','$2y$12$.rbpwyfVR/1ujJubPuLsp.dX1gF.dUDkiQTFTemdMXLJdFsPUqNse','wOTcONne25','2024-03-13 09:17:48','2024-03-13 09:17:48'),(23,'Duncan Schmeler','carter.eleanora@example.net','2024-03-13 09:17:47','$2y$12$.rbpwyfVR/1ujJubPuLsp.dX1gF.dUDkiQTFTemdMXLJdFsPUqNse','Z6EpiLWZvE','2024-03-13 09:17:48','2024-03-13 09:17:48'),(24,'Aric Conn','magnus15@example.org','2024-03-13 09:17:47','$2y$12$.rbpwyfVR/1ujJubPuLsp.dX1gF.dUDkiQTFTemdMXLJdFsPUqNse','rOw285RmxH','2024-03-13 09:17:48','2024-03-13 09:17:48'),(25,'Courtney Runolfsson','adouglas@example.net','2024-03-13 09:17:47','$2y$12$.rbpwyfVR/1ujJubPuLsp.dX1gF.dUDkiQTFTemdMXLJdFsPUqNse','vWwcbLU42c','2024-03-13 09:17:48','2024-03-13 09:17:48'),(26,'Mr. Manley Little IV','terrell.bartoletti@example.com','2024-03-13 10:01:23','$2y$12$yiJ9DuQJzru69o7x3c1gqec.fifVZCSGmZC87XD7SBdecZVHuXn/S','NU5e8WweCR','2024-03-13 10:01:23','2024-03-13 10:01:23'),(27,'Mr. Alford Marks','jaylen85@example.org','2024-03-13 10:01:23','$2y$12$yiJ9DuQJzru69o7x3c1gqec.fifVZCSGmZC87XD7SBdecZVHuXn/S','MEApgLXSfy','2024-03-13 10:01:23','2024-03-13 10:01:23'),(28,'Johathan Brown','spacocha@example.org','2024-03-13 10:01:23','$2y$12$yiJ9DuQJzru69o7x3c1gqec.fifVZCSGmZC87XD7SBdecZVHuXn/S','5BIDMZGRee','2024-03-13 10:01:24','2024-03-13 10:01:24'),(29,'Jedidiah O\'Hara','oberbrunner.duncan@example.org','2024-03-13 10:01:23','$2y$12$yiJ9DuQJzru69o7x3c1gqec.fifVZCSGmZC87XD7SBdecZVHuXn/S','l7qHeARa0U','2024-03-13 10:01:24','2024-03-13 10:01:24'),(30,'Stefanie Steuber','pattie24@example.org','2024-03-13 10:01:23','$2y$12$yiJ9DuQJzru69o7x3c1gqec.fifVZCSGmZC87XD7SBdecZVHuXn/S','VkbJ7GYMVJ','2024-03-13 10:01:24','2024-03-13 10:01:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-13 16:10:34
