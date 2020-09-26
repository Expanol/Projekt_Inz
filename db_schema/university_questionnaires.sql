-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: university
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
-- Table structure for table `questionnaires`
--

DROP TABLE IF EXISTS `questionnaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questionnaires` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionnaires`
--

LOCK TABLES `questionnaires` WRITE;
/*!40000 ALTER TABLE `questionnaires` DISABLE KEYS */;
INSERT INTO `questionnaires` VALUES (1,'Ankieta do wypełnienia','[{\"type\": \"radio\", \"answers\": [\"1\", \"2\", \"3\", \"4\", \"5\", \"6\"], \"question\": \"Jak oceniasz, w skali od 1 do 6, gdzie: 1 - bardzo źle, 6 - bardzo dobrze, przygotowanie prowadzącego do zajęć? Zaznacz jedną odpowiedź.\"}, {\"type\": \"radio\", \"answers\": [\"1\", \"2\", \"3\", \"4\", \"5\", \"6\"], \"question\": \"Jak oceniasz, w skali od 1 do 6, gdzie: 1 - niezrozumiałe, 6 - zrozumiałe, jasność przekazywanych na zajęciach treści? Zaznacz jedną odpowiedź.\"}, {\"type\": \"radio\", \"answers\": [\"1\", \"2\", \"3\", \"4\", \"5\", \"6\"], \"question\": \"PJak oceniasz, od w skali od 1 do 6, gdzie: 1 - niepunktalny, 6 - punktualny, punktualnośc prowadzącego? Zaznacz jedną odpowiedź.\"}, {\"type\": \"radio\", \"answers\": [\"1\", \"2\", \"3\", \"4\", \"5\", \"6\"], \"question\": \"Jak oceniasz, od w skali od 1 do 6, gdzie: 1 - niewymagający, 6 - bardzo wymagający, poziom wymagań prowadzącego? Zaznacz jedną odpowiedź.\"}, {\"type\": \"textarea\", \"question\": \"Jeżeli masz jakieś uwagi do zajęć lub prowadzącego, proszę wpisz je poniżej.\"}]','2020-06-26 18:53:21','2020-06-26 18:53:21',1);
/*!40000 ALTER TABLE `questionnaires` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-26 22:35:56
