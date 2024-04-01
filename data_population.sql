drop database if exists sql_101;
create database if not exists sql_101;
use sql_101;
-- MySQL dump 10.13  Distrib 8.3.0, for Linux (aarch64)
--
-- Host: localhost    Database: sql_101
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `vin` varchar(255) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `PRODUCTION_YEAR` int DEFAULT NULL,
  PRIMARY KEY (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES ('1G1YZ23J9P5800003','Fiat','Punto',5700,1999),('1HGCM82633A004352','Volkswagen','Jetta',6420,2003),('1M8GDM9AXKP042788','Volkswagen','Golf',13000,2010),('GS723HDSAK2399002','Opel','Corsa',NULL,2007),('JF1BR93D7BG498281','Toyota','Avensis',11300,1999),('KLATF08Y1VB363636','Volkswagen','Golf',3270,1992),('LJCPCBLCX14500264','Ford','Focus',8000,2005),('WPOZZZ79ZTS372128','Ford','Fusion',12500,2008);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `ID` int DEFAULT NULL,
  `NAME` text,
  `COUNTRY_ID` int DEFAULT NULL,
  `POPULATION` int DEFAULT NULL,
  `AREA` int DEFAULT NULL,
  `RATING` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Paris',1,2243000,102,5),(2,'Marseille',1,850700,240,4),(3,'Lyon',1,484300,48,4),(4,'Berlin',2,3460000,888,3),(5,'Hamburg',2,1786000,755,3),(6,'Munich',2,1353000,310,4),(7,'Vaduz',3,5400,17,3),(8,'Madrid',4,3165000,605,5),(9,'Barcelona',4,1620000,102,5),(10,'Valencia',4,809000,135,3),(11,'Rome',5,2869000,1285,5),(12,'Milan',5,1337000,180,3);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `ID` int DEFAULT NULL,
  `NAME` text,
  `POPULATION` int DEFAULT NULL,
  `AREA` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'France',66600000,640680),(2,'Germany',80700000,357000),(3,'Liechtenstein',37340,160),(4,'Spain',46464000,505990),(5,'Italy',60795000,301300);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cycling`
--

DROP TABLE IF EXISTS `cycling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cycling` (
  `ID` int DEFAULT NULL,
  `PERSON` text,
  `COUNTRY` text,
  `YEAR` int DEFAULT NULL,
  `PLACE` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cycling`
--

LOCK TABLES `cycling` WRITE;
/*!40000 ALTER TABLE `cycling` DISABLE KEYS */;
INSERT INTO `cycling` VALUES (1,'Clara Hughes','Canada',1996,3),(2,'Christa Luding-Rothenburger','East Germany',1988,2),(3,'Lizzie Armitstead','Great Britain',2012,2),(4,'Guo Shuang','China',2008,3),(5,'Sabine Spitz','Germany',2004,3),(6,'Paola Pezzo','Italy',1996,1),(7,'Lori-Ann Muenzer','Canada',2004,1),(8,'Oksana Grishina','Russia',2000,2);
/*!40000 ALTER TABLE `cycling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birth_year` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Alfred Hitchcock',1899),(2,'Steven Spielberg',1946),(3,'Woody Allen',1935),(4,'Quentin Tarantino',1963),(5,'Pedro Almodóvar',1949);
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `DEPARTMENT` text,
  `FIRST_NAME` text,
  `LAST_NAME` text,
  `YEAR` int DEFAULT NULL,
  `SALARY` int DEFAULT NULL,
  `POSITION` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('IT','Olivia','Pearson',2011,3000,'Trainee'),('IT','Olivia','Pearson',2012,3000,'Trainee'),('IT','Olivia','Pearson',2012,4200,'Junior Developer'),('IT','Olivia','Pearson',2013,4900,'Junior Developer'),('IT','Olivia','Pearson',2014,8100,'Senior Developer'),('Management','Jack','Johnson',2011,4300,'Junior Project Manager'),('Management','Jack','Johnson',2012,5100,'Project Manager'),('Management','Jack','Johnson',2013,7200,'Senior Project Manager'),('Management','Jack','Johnson',2014,7600,'Senior Project Manager'),('Management','Jack','Johnson',2015,9500,'Head of Department'),('IT','Harry','Taylor',2015,2700,'Trainee'),('Human Resources','Lily','Bennett',2013,1900,'Junior HR Specialist'),('Human Resources','Lily','Bennett',2014,2300,'HR Specialist'),('Human Resources','Lily','Bennett',2015,3650,'Senior HR Specialist'),('Accounting','Charlie','Johnson',2010,2000,'Junior Accountant'),('Accounting','Charlie','Johnson',2011,2000,'Junior Accountant'),('Accounting','Charlie','Johnson',2012,2500,'Accountant'),('Accounting','Charlie','Johnson',2013,3200,'Accountant'),('Accounting','Charlie','Johnson',2014,3700,'Senior Accountant'),('Accounting','Charlie','Johnson',2015,4200,'Senior Accountant'),('IT','Jacob','King',2013,3400,'Trainee'),('IT','Jacob','King',2014,4100,'Junior Developer'),('IT','Jacob','King',2015,5900,'Developer'),('Accounting','Jessica','Poole',2014,3800,'Senior Accountant'),('Accounting','Jessica','Poole',2015,4300,'Senior Accountant'),('Management','Ethan','Black',2013,5100,'Project Manager'),('Management','Ethan','Black',2014,5900,'Project Manager'),('Management','Ethan','Black',2015,6300,'Senior Project Manager'),('Help Desk','Ella','Watson',2013,1400,'Trainee'),('Help Desk','Ella','Watson',2014,1900,'Customer Service Assistant'),('Help Desk','Ella','Watson',2015,2300,'Customer Service Assistant'),('Human Resources','Sophia','Hunt',2011,2100,'HR Junior Specialist'),('Marketing','Amelia','Wright',2014,2100,'Trainee'),('Marketing','Amelia','Wright',2015,2300,'Junior SEO Specialist'),('Marketing','Lucy','Green',2013,2000,'Trainee'),('Marketing','Ruby','Chapman',2012,2500,'Trainee'),('Marketing','Ruby','Chapman',2013,3400,'Junior SEO Specialist'),('Marketing','Ruby','Chapman',2014,3900,'SEO Specialist'),('Marketing','Ruby','Chapman',2015,5400,'Senior SEO Specialist'),('Help Desk','Brian','Murphy',2012,1500,'Trainee'),('Help Desk','Brian','Murphy',2013,2000,'Customer Service Assistant'),('Help Desk','Brian','Murphy',2014,2500,'Customer Service Assistant'),('Help Desk','Brian','Murphy',2015,3700,'Customer Service Specialist'),('Management','Eva','Saunders',2011,2100,'Trainee'),('Management','Eva','Saunders',2012,4100,'Junior Project Manager'),('Management','Eva','Saunders',2013,4600,'Junior Project Manager'),('Management','Eva','Saunders',2014,5300,'Project Manager'),('Management','Eva','Saunders',2015,6100,'Senior Project Manager');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `ID` int DEFAULT NULL,
  `NAME` text,
  `ROOM_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'kettle',4),(2,'fridge',5),(3,'tv',8),(5,'kettle',7),(6,'radio',7),(7,'computer',7),(8,'toaster',1),(9,'toaster',1),(12,'kettle',2),(13,'tv',3),(14,'microwave',9),(15,'computer',10);
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hiking_trip`
--

DROP TABLE IF EXISTS `hiking_trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hiking_trip` (
  `ID` int DEFAULT NULL,
  `MOUNTAIN_ID` int DEFAULT NULL,
  `DAYS` int DEFAULT NULL,
  `PRICE` int DEFAULT NULL,
  `LENGTH` int DEFAULT NULL,
  `DIFFICULTY` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hiking_trip`
--

LOCK TABLES `hiking_trip` WRITE;
/*!40000 ALTER TABLE `hiking_trip` DISABLE KEYS */;
INSERT INTO `hiking_trip` VALUES (1,1,3,1000,30,3),(2,1,1,300,5,1),(3,2,3,1200,20,2),(4,2,7,2300,50,4),(5,3,4,1200,35,4),(6,4,14,5300,90,5),(7,5,7,2500,45,4),(8,6,3,1100,32,3),(9,7,2,600,21,2),(10,8,2,600,23,3);
/*!40000 ALTER TABLE `hiking_trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mountain`
--

DROP TABLE IF EXISTS `mountain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mountain` (
  `ID` int DEFAULT NULL,
  `NAME` text,
  `HEIGHT` int DEFAULT NULL,
  `COUNTRY_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mountain`
--

LOCK TABLES `mountain` WRITE;
/*!40000 ALTER TABLE `mountain` DISABLE KEYS */;
INSERT INTO `mountain` VALUES (1,'Mont Blanc',4808,1),(2,'Barre des Ecrins',4100,1),(3,'Zugspitze',2962,2),(4,'Schneefernerkopf',2874,2),(5,'Naafkopf',2570,3),(6,'Mulhacen',3478,4),(7,'Corno Grande',2912,5),(8,'Monte Amaro',2793,5);
/*!40000 ALTER TABLE `mountain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `PRODUCTION_YEAR` int DEFAULT NULL,
  `DIRECTOR_ID` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Psycho',1960,1),(2,'Saving Private Ryan',1998,2),(3,'Schindler\'s List',1993,2),(4,'Midnight in Paris',2011,3),(5,'Sweet and Lowdown',1993,3),(6,'Pulp fiction',1994,4),(7,'Talk to her',2002,5),(8,'The skin I live in',2011,5);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `ID` int DEFAULT NULL,
  `ROOM_NUMBER` int DEFAULT NULL,
  `BEDS` int DEFAULT NULL,
  `FLOOR` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,101,2,1),(2,102,2,1),(3,103,3,1),(4,104,3,1),(5,201,1,2),(6,202,2,2),(7,203,3,2),(8,204,3,2),(9,205,4,2),(10,301,4,3),(11,302,1,3),(12,303,2,3),(13,401,3,4),(14,402,1,4),(15,403,1,4);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skating`
--

DROP TABLE IF EXISTS `skating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skating` (
  `ID` int DEFAULT NULL,
  `PERSON` text,
  `COUNTRY` text,
  `YEAR` int DEFAULT NULL,
  `PLACE` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skating`
--

LOCK TABLES `skating` WRITE;
/*!40000 ALTER TABLE `skating` DISABLE KEYS */;
INSERT INTO `skating` VALUES (1,'Clara Hughes','Canada',2006,1),(2,'Christa Luding-Rothenburger','East Germany',1988,1),(3,'Michel Muder','Netherlands',2014,1),(4,'Anni Friesinger','Germany',2002,1),(5,'Keiichiro Nagashima','Japan',2014,2),(6,'Lee Kang-seok','Korea',2006,3),(7,'Hiroyasu Shimizu','Japan',1998,1),(8,'Uwe Jens-Mey','Germany',1992,1);
/*!40000 ALTER TABLE `skating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `ID` int DEFAULT NULL,
  `NAME` text,
  `ROOM_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Jack Pearson',8),(2,'Charlie Black',NULL),(3,'Ethan Wright',15),(4,'Mary Benett',NULL),(5,'Brian Saunders',8),(6,'Ella Watson',8),(7,'Jacob Chapman',NULL),(8,'Charlotte Wood',1),(9,'Emily Lane',1),(10,'Freya Hart',10),(11,'Megan Mcdonald',10),(12,'Noah Rose',5),(13,'Oscar Walls',10),(14,'Luke Wild',11),(15,'Benjamin Slade',10);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip`
--

DROP TABLE IF EXISTS `trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trip` (
  `ID` int DEFAULT NULL,
  `CITY_ID` int DEFAULT NULL,
  `DAYS` int DEFAULT NULL,
  `PRICE` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip`
--

LOCK TABLES `trip` WRITE;
/*!40000 ALTER TABLE `trip` DISABLE KEYS */;
INSERT INTO `trip` VALUES (1,1,3,1200),(2,1,7,2000),(3,2,7,1800),(4,2,14,3800),(5,3,5,1400),(6,4,5,1750),(7,5,1,300),(8,6,3,950),(9,6,10,2900),(10,7,5,1350),(11,8,5,1650),(12,9,7,1700),(13,10,11,3100),(14,11,14,3450),(15,12,21,5100);
/*!40000 ALTER TABLE `trip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-01  0:40:02

