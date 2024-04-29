-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: localhost    Database: schoolmanagementproject
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `assessmentTable`
--

DROP TABLE IF EXISTS `assessmentTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessmentTable` (
  `gradeID` int NOT NULL,
  `enrollmentID` int NOT NULL,
  `gradeNumberID` int NOT NULL,
  `date_completed` date NOT NULL,
  PRIMARY KEY (`gradeID`),
  KEY `fk_aT_enrollment_id_idx` (`enrollmentID`),
  KEY `fk_at_grade_num_id_idx` (`gradeNumberID`),
  CONSTRAINT `fk_aT_enrollment_id` FOREIGN KEY (`enrollmentID`) REFERENCES `enrollmentTable` (`enrollmentID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_at_grade_num_id` FOREIGN KEY (`gradeNumberID`) REFERENCES `gradeCalculatorTable` (`gradeNumberID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessmentTable`
--

LOCK TABLES `assessmentTable` WRITE;
/*!40000 ALTER TABLE `assessmentTable` DISABLE KEYS */;
INSERT INTO `assessmentTable` VALUES (300,1,501,'2024-04-19'),(301,2,500,'2024-04-19'),(302,3,502,'2024-04-19'),(303,4,503,'2024-04-19'),(304,5,500,'2024-04-19'),(305,6,501,'2024-04-19'),(306,7,504,'2024-04-19'),(307,8,501,'2024-04-19'),(308,9,503,'2024-04-19'),(309,10,500,'2024-04-19'),(310,11,500,'2024-04-19'),(311,12,503,'2024-04-19'),(312,13,502,'2024-04-19'),(313,14,501,'2024-04-19'),(314,15,501,'2024-04-19'),(315,16,500,'2024-04-19'),(316,17,501,'2024-04-19'),(317,18,502,'2024-04-19'),(318,19,503,'2024-04-19'),(319,20,504,'2024-04-19'),(320,1,500,'2024-02-19'),(321,2,500,'2024-02-19'),(322,3,503,'2024-02-19'),(323,4,501,'2024-02-19'),(324,5,502,'2024-02-19'),(325,6,505,'2024-02-19'),(326,7,503,'2024-02-19'),(327,8,502,'2024-02-19'),(328,9,502,'2024-02-19'),(329,10,501,'2024-02-19'),(330,11,502,'2024-02-19'),(331,12,501,'2024-02-19'),(332,13,503,'2024-02-19'),(333,14,502,'2024-02-19'),(334,15,500,'2024-02-19'),(335,16,502,'2024-02-19'),(336,17,502,'2024-02-19'),(337,18,503,'2024-02-19'),(338,19,502,'2024-02-19'),(339,20,504,'2024-02-19');
/*!40000 ALTER TABLE `assessmentTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `behaviourModuleTable`
--

DROP TABLE IF EXISTS `behaviourModuleTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `behaviourModuleTable` (
  `behaviourID` int NOT NULL,
  `studentID` int NOT NULL,
  `positvePoint` int DEFAULT '0',
  `negativePoint` int DEFAULT '0',
  `totalScore` int DEFAULT '0',
  PRIMARY KEY (`behaviourID`),
  KEY `fk_bMT_student_id_idx` (`studentID`),
  CONSTRAINT `fk_bMT_student_id` FOREIGN KEY (`studentID`) REFERENCES `studentTable` (`studentID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `behaviourModuleTable`
--

LOCK TABLES `behaviourModuleTable` WRITE;
/*!40000 ALTER TABLE `behaviourModuleTable` DISABLE KEYS */;
INSERT INTO `behaviourModuleTable` VALUES (1,1001,4,5,-1),(2,1002,10,0,10),(3,1003,5,5,0),(4,1004,2,10,-8),(5,1005,15,0,15),(6,1006,0,0,0),(7,1007,1,0,1),(8,1008,2,0,2),(9,1017,13,12,1),(10,1018,5,3,2),(11,1019,10,1,9),(12,1020,16,5,11),(13,1025,25,3,22),(14,1026,20,2,18),(15,1027,20,3,17),(16,1028,30,0,30),(17,1029,0,14,-14),(18,1030,7,5,2),(19,1031,4,6,-2),(20,1032,8,3,5);
/*!40000 ALTER TABLE `behaviourModuleTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `classregisterview`
--

DROP TABLE IF EXISTS `classregisterview`;
/*!50001 DROP VIEW IF EXISTS `classregisterview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `classregisterview` AS SELECT 
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `predicted_grade`,
 1 AS `assessment_grade`,
 1 AS `predicted_grade_Num`,
 1 AS `assessment_grade_Num`,
 1 AS `compare`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `classTable`
--

DROP TABLE IF EXISTS `classTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classTable` (
  `classID` int NOT NULL,
  `className` varchar(45) NOT NULL,
  `teacherID` int NOT NULL,
  PRIMARY KEY (`classID`),
  KEY `fk_cT_teacher_id_idx` (`teacherID`),
  CONSTRAINT `fk_cT_teacher_id` FOREIGN KEY (`teacherID`) REFERENCES `teacherTable` (`teacherID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classTable`
--

LOCK TABLES `classTable` WRITE;
/*!40000 ALTER TABLE `classTable` DISABLE KEYS */;
INSERT INTO `classTable` VALUES (900,'10A/Eng',1),(901,'10B/Eng',2),(902,'10C/Eng',1),(903,'10D/Eng',2),(904,'10E/Eng',2),(905,'11A/Eng',1),(906,'11B/Eng',2),(907,'11C/Eng',2),(908,'11D/Eng',1),(909,'11E/Eng',2),(910,'10A/Maths',3),(911,'10B/Maths',4),(912,'10C/Maths',3),(913,'10D/Maths',4),(914,'10E/Maths',4),(915,'11A/Maths',4),(916,'11B/Maths',3),(917,'11C/Maths',4),(918,'11D/Maths',4),(919,'11E/Maths',3),(920,'10A/Sci',5),(921,'10B/Sci',5),(922,'10C/Sci',6),(923,'10D/Sci',5),(924,'10E/Sci',6),(925,'11A/Sci',6),(926,'11B/Sci',6),(927,'11C/Sci',5),(928,'11D/Sci',6),(929,'11E/Sci',6),(930,'10A/Geog',7),(931,'10B/Geog',8),(932,'10C/Geog',8),(933,'11A/Geog',8),(934,'11B/Geog',8),(935,'11C/Geog',7),(936,'10A/Hist',9),(937,'10B/Hist',9),(938,'10C/Hist',10),(939,'11A/Hist',10),(940,'11B/Hist',10),(941,'11C/Hist',10),(942,'10A/CS',11),(943,'10B/CS',12),(944,'11A/CS',11),(945,'11B/CS',12),(946,'10A/PE',13),(947,'10B/PE',14),(948,'11A/PE',13),(949,'11B/PE',14);
/*!40000 ALTER TABLE `classTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `classteacher_view`
--

DROP TABLE IF EXISTS `classteacher_view`;
/*!50001 DROP VIEW IF EXISTS `classteacher_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `classteacher_view` AS SELECT 
 1 AS `title`,
 1 AS `lastname`,
 1 AS `className`,
 1 AS `departmentname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `countstudents`
--

DROP TABLE IF EXISTS `countstudents`;
/*!50001 DROP VIEW IF EXISTS `countstudents`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `countstudents` AS SELECT 
 1 AS `COUNT(sT.yearGroup)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `departmentTable`
--

DROP TABLE IF EXISTS `departmentTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departmentTable` (
  `departmentID` int NOT NULL,
  `departmentName` varchar(45) NOT NULL,
  PRIMARY KEY (`departmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departmentTable`
--

LOCK TABLES `departmentTable` WRITE;
/*!40000 ALTER TABLE `departmentTable` DISABLE KEYS */;
INSERT INTO `departmentTable` VALUES (101,'English'),(102,'Mathematics'),(103,'Science'),(104,'Geography'),(105,'History'),(106,'Computing'),(107,'PE');
/*!40000 ALTER TABLE `departmentTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollmentTable`
--

DROP TABLE IF EXISTS `enrollmentTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollmentTable` (
  `enrollmentID` int NOT NULL,
  `studentID` int NOT NULL,
  `classID` int DEFAULT NULL,
  PRIMARY KEY (`enrollmentID`),
  KEY `fk_eT_class_id_idx` (`classID`),
  KEY `fk_eT_student_id_idx` (`studentID`),
  CONSTRAINT `fk_eT_class_id` FOREIGN KEY (`classID`) REFERENCES `classTable` (`classID`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `fk_eT_student_id` FOREIGN KEY (`studentID`) REFERENCES `studentTable` (`studentID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollmentTable`
--

LOCK TABLES `enrollmentTable` WRITE;
/*!40000 ALTER TABLE `enrollmentTable` DISABLE KEYS */;
INSERT INTO `enrollmentTable` VALUES (1,1001,900),(2,1002,901),(3,1003,902),(4,1004,903),(5,1005,904),(6,1006,900),(7,1007,901),(8,1008,902),(9,1017,903),(10,1018,904),(11,1019,900),(12,1020,901),(13,1025,902),(14,1026,903),(15,1027,904),(16,1028,900),(17,1029,901),(18,1030,902),(19,1031,903),(20,1032,904);
/*!40000 ALTER TABLE `enrollmentTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formEnrollmentTable`
--

DROP TABLE IF EXISTS `formEnrollmentTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formEnrollmentTable` (
  `formEnrollmentID` int NOT NULL AUTO_INCREMENT,
  `studentID` int NOT NULL,
  `formGroupID` int NOT NULL,
  PRIMARY KEY (`formEnrollmentID`),
  KEY `fk_fek_form_group_id_idx` (`formGroupID`),
  KEY `fk_fet_student_id_idx` (`studentID`),
  CONSTRAINT `fk_fek_form_group_id` FOREIGN KEY (`formGroupID`) REFERENCES `formGroupTable` (`formGroupID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_fet_student_id` FOREIGN KEY (`studentID`) REFERENCES `studentTable` (`studentID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formEnrollmentTable`
--

LOCK TABLES `formEnrollmentTable` WRITE;
/*!40000 ALTER TABLE `formEnrollmentTable` DISABLE KEYS */;
INSERT INTO `formEnrollmentTable` VALUES (1,1001,1),(2,1002,1),(3,1003,1),(4,1004,1),(5,1005,2),(6,1006,2),(7,1007,2),(8,1008,2),(9,1017,3),(10,1018,3),(11,1019,3),(12,1020,3),(13,1025,4),(14,1026,4),(15,1027,4),(16,1028,4),(17,1029,5),(18,1030,5),(19,1031,5),(20,1032,5);
/*!40000 ALTER TABLE `formEnrollmentTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formGroupTable`
--

DROP TABLE IF EXISTS `formGroupTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formGroupTable` (
  `formGroupID` int NOT NULL,
  `teacherID` int NOT NULL,
  `formGroupName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`formGroupID`),
  KEY `fk_fGT_teacher_id_idx` (`teacherID`),
  CONSTRAINT `fk_fGT_teacher_id` FOREIGN KEY (`teacherID`) REFERENCES `teacherTable` (`teacherID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formGroupTable`
--

LOCK TABLES `formGroupTable` WRITE;
/*!40000 ALTER TABLE `formGroupTable` DISABLE KEYS */;
INSERT INTO `formGroupTable` VALUES (1,2,'10FG1'),(2,4,'10FG2'),(3,6,'10FG3'),(4,8,'10FG4'),(5,10,'10FG5');
/*!40000 ALTER TABLE `formGroupTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradeCalculatorTable`
--

DROP TABLE IF EXISTS `gradeCalculatorTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gradeCalculatorTable` (
  `gradeNumberID` int NOT NULL,
  `grade` varchar(4) NOT NULL,
  `numOfGrade` int NOT NULL,
  PRIMARY KEY (`gradeNumberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradeCalculatorTable`
--

LOCK TABLES `gradeCalculatorTable` WRITE;
/*!40000 ALTER TABLE `gradeCalculatorTable` DISABLE KEYS */;
INSERT INTO `gradeCalculatorTable` VALUES (500,'A',6),(501,'B',5),(502,'C',4),(503,'D',3),(504,'E',2),(505,'U',1);
/*!40000 ALTER TABLE `gradeCalculatorTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `headofdept_view`
--

DROP TABLE IF EXISTS `headofdept_view`;
/*!50001 DROP VIEW IF EXISTS `headofdept_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `headofdept_view` AS SELECT 
 1 AS `title`,
 1 AS `lastname`,
 1 AS `departmentname`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `headOfDeptTable`
--

DROP TABLE IF EXISTS `headOfDeptTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `headOfDeptTable` (
  `hodID` int NOT NULL,
  `departmentID` int NOT NULL,
  `teacherID` int NOT NULL,
  PRIMARY KEY (`hodID`),
  KEY `fk_hod_department_id_idx` (`departmentID`),
  KEY `fk_hod_teacher_id_idx` (`teacherID`),
  CONSTRAINT `fk_hod_department_id` FOREIGN KEY (`departmentID`) REFERENCES `departmentTable` (`departmentID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_hod_teacher_id` FOREIGN KEY (`teacherID`) REFERENCES `teacherTable` (`teacherID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `headOfDeptTable`
--

LOCK TABLES `headOfDeptTable` WRITE;
/*!40000 ALTER TABLE `headOfDeptTable` DISABLE KEYS */;
INSERT INTO `headOfDeptTable` VALUES (1,101,1),(2,102,3),(3,103,5),(4,104,7),(5,105,9),(6,106,11),(7,107,13);
/*!40000 ALTER TABLE `headOfDeptTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `interventionview`
--

DROP TABLE IF EXISTS `interventionview`;
/*!50001 DROP VIEW IF EXISTS `interventionview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `interventionview` AS SELECT 
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `predicted_grade_Num`,
 1 AS `assessment_grade_Num`,
 1 AS `PerformancePoint`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `predictedGradeTable`
--

DROP TABLE IF EXISTS `predictedGradeTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `predictedGradeTable` (
  `predictedID` int NOT NULL,
  `enrollmentID` int NOT NULL,
  `gradeNumberID` int NOT NULL,
  PRIMARY KEY (`predictedID`),
  KEY `fk_pGT_enroll_id_idx` (`enrollmentID`),
  KEY `fk_pGT_grade_num_id_idx` (`gradeNumberID`),
  CONSTRAINT `fk_pGT_enroll_id` FOREIGN KEY (`enrollmentID`) REFERENCES `enrollmentTable` (`enrollmentID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_pGT_grade_num_id` FOREIGN KEY (`gradeNumberID`) REFERENCES `gradeCalculatorTable` (`gradeNumberID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predictedGradeTable`
--

LOCK TABLES `predictedGradeTable` WRITE;
/*!40000 ALTER TABLE `predictedGradeTable` DISABLE KEYS */;
INSERT INTO `predictedGradeTable` VALUES (1,1,500),(2,2,502),(3,3,503),(4,4,504),(5,5,501),(6,6,503),(7,7,504),(8,8,500),(9,9,501),(10,10,501),(11,11,502),(12,12,503),(13,13,504),(14,14,502),(15,15,504),(16,16,500),(17,17,502),(18,18,501),(19,19,503),(20,20,502);
/*!40000 ALTER TABLE `predictedGradeTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_daily`
--

DROP TABLE IF EXISTS `report_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_daily` (
  `reportID` int NOT NULL AUTO_INCREMENT,
  `StuID` int DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `score` int DEFAULT NULL,
  `Last_Update` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`reportID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_daily`
--

LOCK TABLES `report_daily` WRITE;
/*!40000 ALTER TABLE `report_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentTable`
--

DROP TABLE IF EXISTS `studentTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentTable` (
  `studentID` int NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `yearGroup` int NOT NULL,
  `gender` varchar(1) NOT NULL,
  `dateOfBirth` date DEFAULT '1900-01-01',
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentTable`
--

LOCK TABLES `studentTable` WRITE;
/*!40000 ALTER TABLE `studentTable` DISABLE KEYS */;
INSERT INTO `studentTable` VALUES (1001,'Rose','Jenkins',10,'F','2008-09-26'),(1002,'Emily','Johnson',10,'F','2009-04-15'),(1003,'Michael','Williams',10,'M','2009-06-03'),(1004,'Sophia','Brown',10,'F','2009-08-20'),(1005,'Jacob','Jones',10,'M','2008-10-11'),(1006,'Olivia','Davis',10,'F','2009-01-04'),(1007,'Matthew','Miller',10,'M','2009-03-19'),(1008,'Emma','Wilson',10,'F','2009-05-27'),(1009,'Daniel','Moore',11,'M','2007-07-10'),(1010,'Ava','Taylor',11,'F','2007-09-25'),(1011,'William','Anderson',11,'M','2007-11-30'),(1012,'Mia','Thomas',11,'F','2008-02-14'),(1013,'James','Jackson',11,'M','2008-04-09'),(1014,'Isabella','White',11,'F','2008-06-26'),(1015,'Benjamin','Harris',11,'M','2008-08-08'),(1016,'Charlotte','Martin',11,'F','2007-10-17'),(1017,'Ethan','Thompson',10,'M','2008-12-23'),(1018,'Amelia','Garcia',10,'F','2009-03-05'),(1019,'Alexander','Martinez',10,'M','2009-05-12'),(1020,'Abigail','Robinson',10,'F','2009-07-28'),(1021,'Liam','Wilson',11,'M','2007-10-04'),(1022,'Grace','Thompson',11,'F','2007-12-12'),(1023,'Lucas','Clark',11,'M','2008-02-27'),(1024,'Chloe','Lewis',11,'F','2008-04-18'),(1025,'Elijah','Walker',10,'M','2009-06-26'),(1026,'Lily','Hall',10,'F','2008-09-02'),(1027,'Mason','Allen',10,'M','2008-11-20'),(1028,'Zoe','Young',10,'F','2009-01-07'),(1029,'Logan','Hill',10,'M','2009-03-15'),(1030,'Sophie','Scott',10,'F','2009-05-23'),(1031,'Noah','King',10,'M','2009-08-09'),(1032,'Aiden','Baker',10,'M','2008-10-27'),(1033,'Madison','Green',11,'F','2007-12-31'),(1034,'Carter','Adams',11,'M','2008-03-17'),(1035,'Harper','Nelson',11,'F','2008-05-25'),(1036,'Henry','Rivera',11,'M','2008-08-01'),(1037,'Aria','Parker',11,'F','2007-10-19'),(1038,'Gabriel','Evans',11,'M','2007-12-28'),(1039,'Sofia','Morris',11,'F','2008-02-13'),(1040,'Jackson','Ross',11,'M','2008-04-02');
/*!40000 ALTER TABLE `studentTable` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addStudent_FormGroup` AFTER INSERT ON `studenttable` FOR EACH ROW BEGIN
	INSERT INTO formEnrollmentTable
    (studentID,formGroupID)
    VALUES
    (NEW.studentID,FLOOR(RAND() * 5)+1);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `teacherTable`
--

DROP TABLE IF EXISTS `teacherTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacherTable` (
  `teacherID` int NOT NULL,
  `title` varchar(4) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `departmentID` int NOT NULL,
  PRIMARY KEY (`teacherID`),
  KEY `fk_tT_department_id_idx` (`departmentID`),
  CONSTRAINT `fk_tT_department_id` FOREIGN KEY (`departmentID`) REFERENCES `departmentTable` (`departmentID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacherTable`
--

LOCK TABLES `teacherTable` WRITE;
/*!40000 ALTER TABLE `teacherTable` DISABLE KEYS */;
INSERT INTO `teacherTable` VALUES (1,'Miss','Kate','Smith',101),(2,'Mrs','Emily','Johnson',101),(3,'Mr','Michael','Williams',102),(4,'Ms','Sophia','Brown',102),(5,'Mr','Jacob','Jones',103),(6,'Mrs','Olivia','Davis',103),(7,'Mr','Matthew','Miller',104),(8,'Mrs','Emma','Wilson',104),(9,'Mr','Daniel','Moore',105),(10,'Ms','Ava','Taylor',105),(11,'Mr','William','Anderson',106),(12,'Ms','Isabella','White',106),(13,'Mr','Benjamin','Harris',107),(14,'Mrs','Charlotte','Martin',107);
/*!40000 ALTER TABLE `teacherTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `viewclassresults`
--

DROP TABLE IF EXISTS `viewclassresults`;
/*!50001 DROP VIEW IF EXISTS `viewclassresults`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewclassresults` AS SELECT 
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `predicted_grade`,
 1 AS `assessment_grade`,
 1 AS `compareGrade(gCT1.numOfGrade, gCT.numOfGrade)`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'schoolmanagementproject'
--

--
-- Dumping routines for database 'schoolmanagementproject'
--
/*!50003 DROP FUNCTION IF EXISTS `compareGrade` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `compareGrade`(predict INT, grade INT) RETURNS varchar(20) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE compare INT;
    DECLARE gradeStatus VARCHAR(20);
    SET compare = grade - predict;
    IF compare = 1 THEN
    SET gradeStatus = '1 Above Target';
	ELSEIF compare = 2 THEN
    SET gradeStatus = '2 Above Target';
    ELSEIF compare = 3 THEN
    SET gradeStatus = '3 Above Target';
	ELSEIF compare = 4 THEN
    SET gradeStatus = '4 Above Target';
	ELSEIF compare = 5 THEN
    SET gradeStatus = '5 Above Target';
    ELSEIF compare = -1 THEN
    SET gradeStatus = '-1 Below Target';
    ELSEIF compare = -2 THEN
    SET gradeStatus = '-2 Below Target';
    ELSEIF compare = -3 THEN
    SET gradeStatus = '-3 Below Target';
    ELSEIF compare = -4 THEN
    SET gradeStatus = '-4 Below Target';
    ELSEIF compare = -5 THEN
    SET gradeStatus = '-5 Below Target';
    ELSE
    SET gradeStatus = 'On Target';
    END IF;
RETURN (gradeStatus);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `compareGradeNum` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `compareGradeNum`(predict INT, grade INT) RETURNS int
    DETERMINISTIC
BEGIN
	DECLARE compare INT;

    SET compare = grade - predict;
  
RETURN (compare);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addStaff` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addStaff`(IN teacherID INT,IN title VARCHAR(4),IN firstname VARCHAR(45),IN lastname VARCHAR(45),In departmentID INT)
BEGIN
	INSERT INTO teacherTable
    (teacherID, title, firstname,lastname,departmentID)
    VALUE
    (teacherID, title, firstname,lastname,departmentID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addStudent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addStudent`(IN studentID INT,IN firstname VARCHAR(45),IN lastname VARCHAR(45),IN yeargroup INT,IN gender VARCHAR(1),IN dateOfBirth DATE)
BEGIN
	INSERT INTO studentTable
    (studentID,firstname,lastname,yeargroup,gender,dateOfBirth)
    VALUE
    (studentID,firstname,lastname,yeargroup,gender,dateOfBirth);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addToBehaviourModule` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addToBehaviourModule`(IN PoN VARCHAR(10),IN firstname VARCHAR(45),IN lastname VARCHAR(45))
BEGIN
    UPDATE behaviourModuleTable bMT
    
    INNER JOIN studentTable sT 
    ON bMT.studentID = sT.studentID
    
    SET bMT.positvePoint = bMT.positvePoint + 1
    WHERE LOWER(PoN) = 'positive' AND sT.firstname = firstname AND sT.lastname = lastname;
    
    UPDATE behaviourModuleTable bMT
    
    INNER JOIN studentTable sT ON bMT.studentID = sT.studentID
    
    SET bMT.negativePoint = bMT.negativePoint + 1
    WHERE LOWER(PoN) = 'negative' AND sT.firstname = firstname AND sT.lastname = lastname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addToClass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addToClass`(IN enrollmentID INT, IN studentID INT, IN classID INT, IN predictedID INT, IN gradeNumberID INT)
BEGIN
    INSERT INTO enrollmentTable
		(enrollmentID,studentID,classID)
	VALUE
		(enrollmentID,studentID,classID);
        
	INSERT INTO predicatedGradeTable
		(predictedID,enrollmentID,gradeNumberID)
	VALUE
		(predictedID,enrollmentID,gradeNumberID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteStaff` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteStaff`(IN tID INT)
BEGIN
	DELETE FROM teacherTable tT
    WHERE
    tT.teacherID = tID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteStudent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteStudent`(IN sID INT)
BEGIN
	DELETE FROM studentTable sT
    WHERE
    sT.studentID = sID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `interventionView` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `interventionView`()
BEGIN
	DECLARE message VARCHAR(100);
    SELECT CONCAT(firstname," ",lastname," is ",PerformancePoint," below target. Phone Call Home") x
    FROM interventionview;

    SET message = x;
    
    SELECT message;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `viewFormGroup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `viewFormGroup`()
BEGIN
	SELECT
	sT.firstname,
	sT.lastname,
    fGT.formGroupName,
	bMT.positvePoint AS Positive_Points,
	bMT.negativePoint AS Negative_Points,
    bMT.totalScore AS Total_Score   
	FROM
	studentTable sT
	INNER JOIN
	behaviourModuleTable bMT ON bMT.studentID = sT.studentID
    INNER JOIN
    formEnrollmentTable fMT ON bMT.studentID = fMT.studentID
    INNER JOIN
	formGroupTable fGT ON fMT.formGroupID = fGT.formGroupID
    
    ORDER BY (fGT.formGroupName);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `viewNameRegister` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `viewNameRegister`(IN cID INT,IN Date_C DATE)
BEGIN
	SELECT
	sT.firstname,
	sT.lastname,
	gCT1.grade AS predicted_grade,
	gCT.grade AS assessment_grade
        
	FROM
	studentTable sT
	INNER JOIN
	enrollmentTable eT ON eT.studentID = sT.studentID
	INNER JOIN
	classTable cT ON eT.classID = cT.classID
	INNER JOIN
	assessmentTable asT ON eT.enrollmentID = asT.enrollmentID
	INNER JOIN
	predictedGradeTable pGT ON asT.enrollmentID = pGT.enrollmentID
	INNER JOIN
	gradeCalculatorTable gCT ON gCT.gradeNumberID = asT.gradeNumberID
	INNER JOIN
	gradeCalculatorTable gCT1 ON gCT1.gradeNumberID = pGT.gradeNumberID

	WHERE
    cT.classID = cID and asT.date_completed = Date_C;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `viewYearGroup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `viewYearGroup`(IN yG INT)
BEGIN
    SELECT
    firstname,
	lastname,
	yearGroup

	FROM
    studentTable sT

	WHERE
    sT.yearGroup = yG;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `classregisterview`
--

/*!50001 DROP VIEW IF EXISTS `classregisterview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `classregisterview` AS select `sT`.`firstname` AS `firstname`,`sT`.`lastname` AS `lastname`,`gCT1`.`grade` AS `predicted_grade`,`gCT`.`grade` AS `assessment_grade`,`gCT1`.`numOfGrade` AS `predicted_grade_Num`,`gCT`.`numOfGrade` AS `assessment_grade_Num`,`compareGradeNum`(`gCT1`.`numOfGrade`,`gCT`.`numOfGrade`) AS `compare` from ((((((`studenttable` `sT` join `enrollmenttable` `eT` on((`eT`.`studentID` = `sT`.`studentID`))) join `classtable` `cT` on((`eT`.`classID` = `cT`.`classID`))) join `assessmenttable` `asT` on((`eT`.`enrollmentID` = `asT`.`enrollmentID`))) join `predictedgradetable` `pGT` on((`asT`.`enrollmentID` = `pGT`.`enrollmentID`))) join `gradecalculatortable` `gCT` on((`gCT`.`gradeNumberID` = `asT`.`gradeNumberID`))) join `gradecalculatortable` `gCT1` on((`gCT1`.`gradeNumberID` = `pGT`.`gradeNumberID`))) where ((`sT`.`yearGroup` = 10) and (`cT`.`className` like '10%') and (`cT`.`className` like '%Eng')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `classteacher_view`
--

/*!50001 DROP VIEW IF EXISTS `classteacher_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `classteacher_view` AS select `tT`.`title` AS `title`,`tT`.`lastname` AS `lastname`,`cT`.`className` AS `className`,`dT`.`departmentName` AS `departmentname` from ((`teachertable` `tT` join `classtable` `cT` on((`tT`.`teacherID` = `cT`.`teacherID`))) join `departmenttable` `dT` on((`dT`.`departmentID` = `tT`.`departmentID`))) order by `cT`.`className` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `countstudents`
--

/*!50001 DROP VIEW IF EXISTS `countstudents`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `countstudents` AS select count(`sT`.`yearGroup`) AS `COUNT(sT.yearGroup)` from `studenttable` `sT` where (`sT`.`yearGroup` = 10) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `headofdept_view`
--

/*!50001 DROP VIEW IF EXISTS `headofdept_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `headofdept_view` AS select `tT`.`title` AS `title`,`tT`.`lastname` AS `lastname`,`dT`.`departmentName` AS `departmentname` from ((`headofdepttable` `hodT` join `departmenttable` `dT` on((`dT`.`departmentID` = `hodT`.`departmentID`))) join `teachertable` `tT` on((`tT`.`teacherID` = `hodT`.`teacherID`))) order by `dT`.`departmentName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `interventionview`
--

/*!50001 DROP VIEW IF EXISTS `interventionview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `interventionview` AS select `sT`.`firstname` AS `firstname`,`sT`.`lastname` AS `lastname`,`gCT1`.`grade` AS `predicted_grade_Num`,`gCT`.`grade` AS `assessment_grade_Num`,`compareGradeNum`(`gCT1`.`numOfGrade`,`gCT`.`numOfGrade`) AS `PerformancePoint` from ((((((`studenttable` `sT` join `enrollmenttable` `eT` on((`eT`.`studentID` = `sT`.`studentID`))) join `classtable` `cT` on((`eT`.`classID` = `cT`.`classID`))) join `assessmenttable` `asT` on((`eT`.`enrollmentID` = `asT`.`enrollmentID`))) join `predictedgradetable` `pGT` on((`asT`.`enrollmentID` = `pGT`.`enrollmentID`))) join `gradecalculatortable` `gCT` on((`gCT`.`gradeNumberID` = `asT`.`gradeNumberID`))) join `gradecalculatortable` `gCT1` on((`gCT1`.`gradeNumberID` = `pGT`.`gradeNumberID`))) where (`compareGradeNum`(`gCT1`.`numOfGrade`,`gCT`.`numOfGrade`) <= -(1)) order by `cT`.`classID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewclassresults`
--

/*!50001 DROP VIEW IF EXISTS `viewclassresults`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewclassresults` AS select `sT`.`firstname` AS `firstname`,`sT`.`lastname` AS `lastname`,`gCT1`.`grade` AS `predicted_grade`,`gCT`.`grade` AS `assessment_grade`,`compareGrade`(`gCT1`.`numOfGrade`,`gCT`.`numOfGrade`) AS `compareGrade(gCT1.numOfGrade, gCT.numOfGrade)` from ((((((`studenttable` `sT` join `enrollmenttable` `eT` on((`eT`.`studentID` = `sT`.`studentID`))) join `classtable` `cT` on((`eT`.`classID` = `cT`.`classID`))) join `assessmenttable` `asT` on((`eT`.`enrollmentID` = `asT`.`enrollmentID`))) join `predictedgradetable` `pGT` on((`asT`.`enrollmentID` = `pGT`.`enrollmentID`))) join `gradecalculatortable` `gCT` on((`gCT`.`gradeNumberID` = `asT`.`gradeNumberID`))) join `gradecalculatortable` `gCT1` on((`gCT1`.`gradeNumberID` = `pGT`.`gradeNumberID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-23 17:39:01
