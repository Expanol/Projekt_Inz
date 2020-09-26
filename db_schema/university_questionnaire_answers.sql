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
-- Table structure for table `questionnaire_answers`
--

DROP TABLE IF EXISTS `questionnaire_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questionnaire_answers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `questionaire_id` int NOT NULL,
  `answers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionnaire_answers`
--

LOCK TABLES `questionnaire_answers` WRITE;
/*!40000 ALTER TABLE `questionnaire_answers` DISABLE KEYS */;
INSERT INTO `questionnaire_answers` VALUES (1,1,'[{\"question\":\"Jak oceniasz, w skali od 1 do 6, gdzie: 1 - bardzo \\u017ale, 6 - bardzo dobrze, przygotowanie prowadz\\u0105cego do zaj\\u0119\\u0107? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"2\"},{\"question\":\"Jak oceniasz, w skali od 1 do 6, gdzie: 1 - niezrozumia\\u0142e, 6 - zrozumia\\u0142e, jasno\\u015b\\u0107 przekazywanych na zaj\\u0119ciach tre\\u015bci? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"4\"},{\"question\":\"PJak oceniasz, od w skali od 1 do 6, gdzie: 1 - niepunktalny, 6 - punktualny, punktualno\\u015bc prowadz\\u0105cego? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"6\"},{\"question\":\"Jak oceniasz, od w skali od 1 do 6, gdzie: 1 - niewymagaj\\u0105cy, 6 - bardzo wymagaj\\u0105cy, poziom wymaga\\u0144 prowadz\\u0105cego? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"2\"},{\"question\":\"Je\\u017celi masz jakie\\u015b uwagi do zaj\\u0119\\u0107 lub prowadz\\u0105cego, prosz\\u0119 wpisz je poni\\u017cej.\",\"answer\":\"Text\"}]','2020-06-26 18:24:02',NULL),(2,1,'[{\"question\":\"Jak oceniasz, w skali od 1 do 6, gdzie: 1 - bardzo \\u017ale, 6 - bardzo dobrze, przygotowanie prowadz\\u0105cego do zaj\\u0119\\u0107? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"5\"},{\"question\":\"Jak oceniasz, w skali od 1 do 6, gdzie: 1 - niezrozumia\\u0142e, 6 - zrozumia\\u0142e, jasno\\u015b\\u0107 przekazywanych na zaj\\u0119ciach tre\\u015bci? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"4\"},{\"question\":\"PJak oceniasz, od w skali od 1 do 6, gdzie: 1 - niepunktalny, 6 - punktualny, punktualno\\u015bc prowadz\\u0105cego? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"5\"},{\"question\":\"Jak oceniasz, od w skali od 1 do 6, gdzie: 1 - niewymagaj\\u0105cy, 6 - bardzo wymagaj\\u0105cy, poziom wymaga\\u0144 prowadz\\u0105cego? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"4\"},{\"question\":\"Je\\u017celi masz jakie\\u015b uwagi do zaj\\u0119\\u0107 lub prowadz\\u0105cego, prosz\\u0119 wpisz je poni\\u017cej.\",\"answer\":\"asd\"}]','2020-06-26 19:11:47',NULL),(3,1,'[{\"question\":\"Jak oceniasz, w skali od 1 do 6, gdzie: 1 - bardzo \\u017ale, 6 - bardzo dobrze, przygotowanie prowadz\\u0105cego do zaj\\u0119\\u0107? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"3\"},{\"question\":\"Jak oceniasz, w skali od 1 do 6, gdzie: 1 - niezrozumia\\u0142e, 6 - zrozumia\\u0142e, jasno\\u015b\\u0107 przekazywanych na zaj\\u0119ciach tre\\u015bci? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"4\"},{\"question\":\"PJak oceniasz, od w skali od 1 do 6, gdzie: 1 - niepunktalny, 6 - punktualny, punktualno\\u015bc prowadz\\u0105cego? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"3\"},{\"question\":\"Jak oceniasz, od w skali od 1 do 6, gdzie: 1 - niewymagaj\\u0105cy, 6 - bardzo wymagaj\\u0105cy, poziom wymaga\\u0144 prowadz\\u0105cego? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"4\"},{\"question\":\"Je\\u017celi masz jakie\\u015b uwagi do zaj\\u0119\\u0107 lub prowadz\\u0105cego, prosz\\u0119 wpisz je poni\\u017cej.\",\"answer\":\"asd\"}]','2020-06-26 19:14:55',NULL),(4,1,'[{\"question\":\"Jak oceniasz, w skali od 1 do 6, gdzie: 1 - bardzo \\u017ale, 6 - bardzo dobrze, przygotowanie prowadz\\u0105cego do zaj\\u0119\\u0107? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"3\"},{\"question\":\"Jak oceniasz, w skali od 1 do 6, gdzie: 1 - niezrozumia\\u0142e, 6 - zrozumia\\u0142e, jasno\\u015b\\u0107 przekazywanych na zaj\\u0119ciach tre\\u015bci? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"4\"},{\"question\":\"PJak oceniasz, od w skali od 1 do 6, gdzie: 1 - niepunktalny, 6 - punktualny, punktualno\\u015bc prowadz\\u0105cego? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"3\"},{\"question\":\"Jak oceniasz, od w skali od 1 do 6, gdzie: 1 - niewymagaj\\u0105cy, 6 - bardzo wymagaj\\u0105cy, poziom wymaga\\u0144 prowadz\\u0105cego? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"4\"},{\"question\":\"Je\\u017celi masz jakie\\u015b uwagi do zaj\\u0119\\u0107 lub prowadz\\u0105cego, prosz\\u0119 wpisz je poni\\u017cej.\",\"answer\":\"asd\"}]','2020-06-26 19:15:24',NULL),(5,1,'[{\"question\":\"Jak oceniasz, w skali od 1 do 6, gdzie: 1 - bardzo \\u017ale, 6 - bardzo dobrze, przygotowanie prowadz\\u0105cego do zaj\\u0119\\u0107? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"6\"},{\"question\":\"Jak oceniasz, w skali od 1 do 6, gdzie: 1 - niezrozumia\\u0142e, 6 - zrozumia\\u0142e, jasno\\u015b\\u0107 przekazywanych na zaj\\u0119ciach tre\\u015bci? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"6\"},{\"question\":\"PJak oceniasz, od w skali od 1 do 6, gdzie: 1 - niepunktalny, 6 - punktualny, punktualno\\u015bc prowadz\\u0105cego? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"6\"},{\"question\":\"Jak oceniasz, od w skali od 1 do 6, gdzie: 1 - niewymagaj\\u0105cy, 6 - bardzo wymagaj\\u0105cy, poziom wymaga\\u0144 prowadz\\u0105cego? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"6\"},{\"question\":\"Je\\u017celi masz jakie\\u015b uwagi do zaj\\u0119\\u0107 lub prowadz\\u0105cego, prosz\\u0119 wpisz je poni\\u017cej.\",\"answer\":\"asd\"}]','2020-06-26 19:16:55',NULL),(6,1,'[{\"question\":\"Jak oceniasz, w skali od 1 do 6, gdzie: 1 - bardzo \\u017ale, 6 - bardzo dobrze, przygotowanie prowadz\\u0105cego do zaj\\u0119\\u0107? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"1\"},{\"question\":\"Jak oceniasz, w skali od 1 do 6, gdzie: 1 - niezrozumia\\u0142e, 6 - zrozumia\\u0142e, jasno\\u015b\\u0107 przekazywanych na zaj\\u0119ciach tre\\u015bci? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"3\"},{\"question\":\"PJak oceniasz, od w skali od 1 do 6, gdzie: 1 - niepunktalny, 6 - punktualny, punktualno\\u015bc prowadz\\u0105cego? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"5\"},{\"question\":\"Jak oceniasz, od w skali od 1 do 6, gdzie: 1 - niewymagaj\\u0105cy, 6 - bardzo wymagaj\\u0105cy, poziom wymaga\\u0144 prowadz\\u0105cego? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"2\"},{\"question\":\"Je\\u017celi masz jakie\\u015b uwagi do zaj\\u0119\\u0107 lub prowadz\\u0105cego, prosz\\u0119 wpisz je poni\\u017cej.\",\"answer\":\"asd\"}]','2020-06-26 19:20:25',NULL),(7,1,'[{\"question\":\"Jak oceniasz, w skali od 1 do 6, gdzie: 1 - bardzo \\u017ale, 6 - bardzo dobrze, przygotowanie prowadz\\u0105cego do zaj\\u0119\\u0107? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"1\"},{\"question\":\"Jak oceniasz, w skali od 1 do 6, gdzie: 1 - niezrozumia\\u0142e, 6 - zrozumia\\u0142e, jasno\\u015b\\u0107 przekazywanych na zaj\\u0119ciach tre\\u015bci? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"2\"},{\"question\":\"PJak oceniasz, od w skali od 1 do 6, gdzie: 1 - niepunktalny, 6 - punktualny, punktualno\\u015bc prowadz\\u0105cego? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"3\"},{\"question\":\"Jak oceniasz, od w skali od 1 do 6, gdzie: 1 - niewymagaj\\u0105cy, 6 - bardzo wymagaj\\u0105cy, poziom wymaga\\u0144 prowadz\\u0105cego? Zaznacz jedn\\u0105 odpowied\\u017a.\",\"answer\":\"4\"},{\"question\":\"Je\\u017celi masz jakie\\u015b uwagi do zaj\\u0119\\u0107 lub prowadz\\u0105cego, prosz\\u0119 wpisz je poni\\u017cej.\",\"answer\":\"123\"}]','2020-06-26 19:25:24',NULL);
/*!40000 ALTER TABLE `questionnaire_answers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-26 22:35:55
