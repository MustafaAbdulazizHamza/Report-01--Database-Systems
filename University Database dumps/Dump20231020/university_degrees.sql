-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: university
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `degrees`
--

DROP TABLE IF EXISTS `degrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `degrees` (
  `degree_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `advisor_id` int NOT NULL,
  `Database_Systems` decimal(4,2) NOT NULL,
  `Data_Structures` decimal(4,2) NOT NULL,
  `Math` decimal(4,2) NOT NULL,
  `Cybersecurity` decimal(4,2) NOT NULL,
  `Network_Infrastructure` decimal(4,2) NOT NULL,
  PRIMARY KEY (`degree_id`),
  UNIQUE KEY `unique_IDs` (`student_id`,`advisor_id`),
  KEY `f2` (`advisor_id`),
  CONSTRAINT `f1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `f2` FOREIGN KEY (`advisor_id`) REFERENCES `advisors` (`teacher_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degrees`
--

LOCK TABLES `degrees` WRITE;
/*!40000 ALTER TABLE `degrees` DISABLE KEYS */;
INSERT INTO `degrees` VALUES (1,1,1,90.00,95.00,85.00,90.00,85.00),(2,2,5,85.00,90.00,80.00,90.00,80.00),(3,3,3,95.00,90.00,85.00,95.00,90.00),(4,4,4,80.00,85.00,80.00,85.00,80.00),(5,5,5,90.00,95.00,85.00,90.00,85.00),(6,6,1,85.00,90.00,0.00,90.00,80.00),(7,7,5,95.00,90.00,85.00,95.00,90.00),(8,8,5,80.00,85.00,80.00,85.00,80.00),(9,9,4,90.00,95.00,85.00,90.00,85.00),(10,10,5,85.00,90.00,80.00,90.00,80.00);
/*!40000 ALTER TABLE `degrees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-20 17:22:21
