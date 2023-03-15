CREATE DATABASE  IF NOT EXISTS `heroku_6b49aedb7855c0b` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `heroku_6b49aedb7855c0b`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: us-cdbr-east-05.cleardb.net    Database: heroku_6b49aedb7855c0b
-- ------------------------------------------------------
-- Server version	5.6.50-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Password` varchar(150) NOT NULL DEFAULT '12345',
  `Email` varchar(100) NOT NULL,
  `AdminType` varchar(45) NOT NULL DEFAULT 'Admin',
  `Created_At` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdminID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=725 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (644,'admin','Admin1','$2a$10$I5c3TryKMJiwj14QhWs1aeR3JFbi0KhoPw8Ar3RoxkT5LzY2XurCm','admin@gmail.com','Admin','2022-07-26 09:12:09'),(654,'admin','Super','$2a$10$dIGOUOG7ZxCVB.3bl1gKcusIgw5F5H2tphkEd3j5zgUUU5FyPE0Eq','superAdmin@gmail.com','Super Admin','2022-07-26 09:12:47'),(674,'Benny','Tan','$2a$10$VEXaqcbbG.5qCSmo9ReQQ..Mgf6/YgLvpg9asQiFu0FnUF020Y26.','benny.tan@airtumtec.com','Admin','2022-07-26 09:14:56'),(684,'Leroy','Hsu','$2a$10$S3GqcuxZ6.8aPaUUQ8Wueunsih43goBUMXIfBekXHf3e4C1jLQDI6','leroy.hsu@airtumtec.com','Admin','2022-07-26 09:16:17'),(704,'Kevin','Wong','$2a$10$gQ7ipu1W4itc1GBa9ixHweUniM4LzcjLJXaF1tz.9R/Rhc2sP/M4u','kevin.wong@airtumtec.com','Admin','2022-07-26 10:22:54'),(724,'Rio','Goh','$2a$10$zCQUzfupUKu99IcXZHI..O01bfejjVsfVcVqLJUrq0u2E8yFQ2YqW','riogoh@moc.sg','Super Admin','2022-07-28 09:17:04');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `BookingID` int(11) NOT NULL AUTO_INCREMENT,
  `Admin` int(11) DEFAULT NULL,
  `Employee` int(11) DEFAULT NULL,
  `Status` varchar(45) NOT NULL DEFAULT 'Pending',
  `ContractId` int(11) NOT NULL,
  `ScheduleDate` date NOT NULL,
  `cancelled_at` date DEFAULT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `fk_admin_idx` (`Admin`),
  KEY `fk_employee_idx` (`Employee`),
  KEY `fk_contract_idx` (`ContractId`),
  CONSTRAINT `fk_admin` FOREIGN KEY (`Admin`) REFERENCES `admin` (`AdminID`) ON DELETE SET NULL,
  CONSTRAINT `fk_bookingemployee` FOREIGN KEY (`Employee`) REFERENCES `employee` (`EmployeeID`) ON DELETE SET NULL,
  CONSTRAINT `fk_contract` FOREIGN KEY (`ContractId`) REFERENCES `contract` (`ContractID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69185 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (64784,704,694,'Assigned',1524,'2022-07-30',NULL),(64794,NULL,NULL,'Pending',1504,'2022-08-11',NULL),(64804,NULL,NULL,'Pending',1504,'2022-07-04',NULL),(64814,NULL,NULL,'Pending',1504,'2022-07-01',NULL),(64824,NULL,NULL,'Pending',1494,'2022-07-11',NULL),(64834,NULL,NULL,'Pending',1494,'2022-07-04',NULL),(64844,NULL,NULL,'Pending',1504,'2022-07-08',NULL),(64854,NULL,NULL,'Pending',1504,'2022-07-18',NULL),(64864,NULL,NULL,'Pending',1504,'2022-07-25',NULL),(64874,NULL,NULL,'Pending',1494,'2022-07-18',NULL),(65304,654,NULL,'Pending',1514,'2022-07-27',NULL),(65354,NULL,NULL,'Pending',1514,'2022-08-22',NULL),(65364,NULL,NULL,'Pending',1514,'2022-08-29',NULL),(65374,NULL,NULL,'Cancelled',1514,'2022-08-01','2022-07-27'),(65384,NULL,NULL,'Pending',1514,'2022-08-08',NULL),(65394,NULL,NULL,'Cancelled',1534,'2022-08-01','2022-08-04'),(65404,NULL,NULL,'Pending',1534,'2022-08-08',NULL),(65414,NULL,NULL,'Pending',1534,'2022-08-15',NULL),(65424,NULL,NULL,'Pending',1514,'2022-08-15',NULL),(65434,NULL,NULL,'Pending',1534,'2022-08-22',NULL),(65444,NULL,NULL,'Pending',1534,'2022-08-29',NULL),(65454,NULL,NULL,'Pending',1494,'2022-08-01',NULL),(65464,654,24,'Assigned',1494,'2022-08-08',NULL),(65474,NULL,NULL,'Pending',1494,'2022-08-15',NULL),(65484,NULL,NULL,'Pending',1494,'2022-08-22',NULL),(65494,NULL,NULL,'Pending',1494,'2022-08-29',NULL),(65504,NULL,NULL,'Pending',1524,'2022-08-06',NULL),(65514,NULL,NULL,'Pending',1524,'2022-08-27',NULL),(65524,NULL,NULL,'Pending',1524,'2022-08-13',NULL),(65534,NULL,NULL,'Pending',1524,'2022-08-20',NULL),(65544,644,614,'Assigned',1504,'2022-08-05',NULL),(65554,NULL,NULL,'Pending',1504,'2022-08-08',NULL),(65564,NULL,NULL,'Pending',1504,'2022-08-15',NULL),(65574,NULL,NULL,'Pending',1504,'2022-08-22',NULL),(65584,NULL,NULL,'Pending',1504,'2022-08-29',NULL),(65594,NULL,NULL,'Pending',1504,'2022-08-05',NULL),(65604,NULL,NULL,'Pending',1504,'2022-08-12',NULL),(65614,NULL,NULL,'Pending',1504,'2022-08-19',NULL),(65624,NULL,NULL,'Pending',1504,'2022-08-26',NULL),(65634,NULL,NULL,'Cancelled',1554,'2022-07-31','2022-07-27'),(65644,NULL,NULL,'Pending',1564,'2022-08-22',NULL),(65654,NULL,NULL,'Pending',1564,'2022-08-29',NULL),(65664,NULL,NULL,'Pending',1564,'2022-08-15',NULL),(65674,NULL,NULL,'Pending',1564,'2022-08-19',NULL),(65684,NULL,NULL,'Pending',1564,'2022-08-26',NULL),(65694,NULL,NULL,'Pending',1564,'2022-08-12',NULL),(65704,NULL,NULL,'Pending',1574,'2022-08-01',NULL),(65714,NULL,NULL,'Pending',1574,'2022-08-15',NULL),(65724,NULL,NULL,'Pending',1574,'2022-08-18',NULL),(65734,NULL,NULL,'Pending',1574,'2022-08-22',NULL),(65744,NULL,NULL,'Pending',1574,'2022-08-04',NULL),(65754,NULL,NULL,'Pending',1574,'2022-08-29',NULL),(65764,654,614,'Assigned',1574,'2022-08-08',NULL),(65774,NULL,NULL,'Pending',1574,'2022-08-11',NULL),(65784,NULL,NULL,'Pending',1574,'2022-08-25',NULL),(65794,NULL,NULL,'Pending',1584,'2022-08-09',NULL),(65804,NULL,NULL,'Pending',1584,'2022-08-02',NULL),(65814,NULL,NULL,'Pending',1584,'2022-08-23',NULL),(65824,NULL,NULL,'Cancelled',1584,'2022-08-30','2022-07-28'),(65834,NULL,NULL,'Pending',1584,'2022-08-16',NULL),(65924,NULL,NULL,'Pending',1604,'2022-08-22',NULL),(65934,NULL,NULL,'Pending',1604,'2022-08-15',NULL),(65944,NULL,NULL,'Pending',1604,'2022-08-29',NULL),(65954,NULL,NULL,'Pending',1614,'2022-08-31',NULL),(65964,NULL,NULL,'Pending',1614,'2022-08-22',NULL),(65974,NULL,NULL,'Pending',1614,'2022-08-15',NULL),(65984,644,24,'Completed',1614,'2022-08-01','2022-08-04'),(65994,NULL,NULL,'Pending',1614,'2022-08-08',NULL),(66004,NULL,NULL,'Pending',1614,'2022-08-10',NULL),(66014,NULL,NULL,'Pending',1614,'2022-08-24',NULL),(66024,NULL,NULL,'Pending',1614,'2022-08-29',NULL),(66034,NULL,NULL,'Pending',1614,'2022-08-17',NULL),(66044,NULL,NULL,'Pending',1614,'2022-08-03',NULL),(66054,NULL,NULL,'Pending',1624,'2022-08-29',NULL),(66064,NULL,NULL,'Pending',1624,'2022-08-15',NULL),(66074,NULL,NULL,'Pending',1624,'2022-08-08',NULL),(66084,NULL,NULL,'Pending',1624,'2022-08-22',NULL),(66094,NULL,NULL,'Cancelled',1634,'2022-08-29','2022-07-30'),(66104,NULL,NULL,'Pending',1634,'2022-08-15',NULL),(66114,NULL,NULL,'Pending',1634,'2022-08-22',NULL),(66124,NULL,NULL,'Pending',1634,'2022-08-08',NULL),(66754,NULL,NULL,'Pending',1644,'2022-08-17',NULL),(66764,NULL,NULL,'Cancelled',1644,'2022-08-24','2022-08-04'),(66774,NULL,NULL,'Pending',1644,'2022-08-10',NULL),(66784,NULL,NULL,'Pending',1644,'2022-08-31',NULL),(66794,NULL,NULL,'Pending',1654,'2022-08-22',NULL),(66804,NULL,NULL,'Cancelled',1654,'2022-08-29','2022-08-05'),(66814,NULL,NULL,'Pending',1654,'2022-08-15',NULL),(66824,NULL,NULL,'Pending',1654,'2022-08-10',NULL),(66834,NULL,NULL,'Pending',1654,'2022-08-17',NULL),(66844,NULL,NULL,'Pending',1654,'2022-08-31',NULL),(66854,NULL,NULL,'Pending',1654,'2022-08-24',NULL),(66864,704,24,'Assigned',1504,'2022-09-05',NULL),(66874,NULL,NULL,'Pending',1504,'2022-09-12',NULL),(66884,NULL,NULL,'Pending',1504,'2022-09-19',NULL),(66894,NULL,NULL,'Pending',1504,'2022-09-26',NULL),(66904,NULL,NULL,'Cancelled',1504,'2022-09-02','2022-08-05'),(66914,NULL,NULL,'Pending',1504,'2022-09-09',NULL),(66924,NULL,NULL,'Pending',1504,'2022-09-30',NULL),(66934,NULL,NULL,'Pending',1514,'2022-09-26',NULL),(66944,NULL,NULL,'Pending',1514,'2022-09-19',NULL),(66954,NULL,NULL,'Pending',1504,'2022-09-16',NULL),(66964,NULL,NULL,'Pending',1494,'2022-09-05',NULL),(66974,NULL,NULL,'Cancelled',1514,'2022-09-05','2022-08-05'),(66984,NULL,NULL,'Pending',1504,'2022-09-23',NULL),(66994,NULL,NULL,'Pending',1514,'2022-09-12',NULL),(67004,NULL,NULL,'Pending',1494,'2022-09-12',NULL),(67014,NULL,NULL,'Pending',1494,'2022-09-19',NULL),(67024,NULL,NULL,'Pending',1604,'2022-09-12',NULL),(67034,NULL,NULL,'Pending',1634,'2022-09-19',NULL),(67044,NULL,NULL,'Cancelled',1604,'2022-09-05','2022-08-15'),(67054,NULL,NULL,'Pending',1604,'2022-09-19',NULL),(67064,NULL,NULL,'Pending',1494,'2022-09-26',NULL),(67074,NULL,NULL,'Pending',1634,'2022-09-05',NULL),(67084,NULL,NULL,'Pending',1634,'2022-09-12',NULL),(67094,NULL,NULL,'Pending',1634,'2022-09-26',NULL),(67104,NULL,NULL,'Pending',1604,'2022-09-26',NULL),(67114,704,24,'Completed',1524,'2022-09-03','2022-08-15'),(67124,NULL,NULL,'Pending',1524,'2022-09-10',NULL),(67134,NULL,NULL,'Pending',1524,'2022-09-24',NULL),(67144,NULL,NULL,'Pending',1524,'2022-09-17',NULL),(67154,NULL,NULL,'Pending',1564,'2022-09-05',NULL),(67164,NULL,NULL,'Pending',1564,'2022-09-12',NULL),(67174,NULL,NULL,'Pending',1564,'2022-09-19',NULL),(67184,NULL,NULL,'Pending',1564,'2022-09-26',NULL),(67194,704,24,'Completed',1564,'2022-09-02','2022-08-10'),(67204,NULL,NULL,'Pending',1564,'2022-09-09',NULL),(67214,NULL,NULL,'Pending',1564,'2022-09-16',NULL),(67224,NULL,NULL,'Pending',1564,'2022-09-23',NULL),(67234,NULL,NULL,'Pending',1564,'2022-09-30',NULL),(67244,NULL,NULL,'Pending',1534,'2022-09-05',NULL),(67254,NULL,NULL,'Pending',1534,'2022-09-12',NULL),(67264,NULL,NULL,'Pending',1534,'2022-09-19',NULL),(67274,NULL,NULL,'Pending',1534,'2022-09-26',NULL),(67284,NULL,NULL,'Pending',1544,'2022-09-05',NULL),(67294,NULL,NULL,'Pending',1544,'2022-09-12',NULL),(67304,NULL,NULL,'Pending',1544,'2022-09-19',NULL),(67314,NULL,NULL,'Pending',1544,'2022-09-26',NULL),(67324,NULL,NULL,'Cancelled',1554,'2022-09-04','2022-08-10'),(67334,NULL,NULL,'Pending',1554,'2022-09-11',NULL),(67344,NULL,NULL,'Pending',1554,'2022-09-18',NULL),(67354,NULL,NULL,'Pending',1554,'2022-09-25',NULL),(67364,NULL,NULL,'Pending',1654,'2022-09-05',NULL),(67374,NULL,NULL,'Pending',1654,'2022-09-12',NULL),(67384,NULL,NULL,'Pending',1654,'2022-09-19',NULL),(67394,NULL,NULL,'Pending',1654,'2022-09-26',NULL),(67404,NULL,NULL,'Pending',1654,'2022-09-07',NULL),(67414,NULL,NULL,'Pending',1654,'2022-09-14',NULL),(67424,NULL,NULL,'Pending',1654,'2022-09-21',NULL),(67434,NULL,NULL,'Pending',1654,'2022-09-28',NULL),(67444,NULL,NULL,'Pending',1614,'2022-09-05',NULL),(67454,NULL,NULL,'Pending',1614,'2022-09-12',NULL),(67464,NULL,NULL,'Pending',1614,'2022-09-19',NULL),(67474,NULL,NULL,'Pending',1614,'2022-09-26',NULL),(67484,NULL,NULL,'Pending',1614,'2022-09-07',NULL),(67494,NULL,NULL,'Pending',1614,'2022-09-14',NULL),(67504,NULL,NULL,'Pending',1614,'2022-09-21',NULL),(67514,NULL,NULL,'Pending',1614,'2022-09-28',NULL),(67524,NULL,NULL,'Pending',1624,'2022-09-05',NULL),(67534,NULL,NULL,'Pending',1624,'2022-09-12',NULL),(67544,NULL,NULL,'Pending',1624,'2022-09-19',NULL),(67554,NULL,NULL,'Pending',1624,'2022-09-26',NULL),(67614,NULL,NULL,'Pending',1554,'2022-08-14',NULL),(67624,NULL,NULL,'Pending',1554,'2022-08-21',NULL),(67634,NULL,NULL,'Pending',1554,'2022-08-07',NULL),(67644,NULL,NULL,'Pending',1554,'2022-08-28',NULL),(67654,NULL,NULL,'Pending',1544,'2022-08-01',NULL),(67664,NULL,NULL,'Pending',1544,'2022-08-15',NULL),(67674,NULL,NULL,'Pending',1544,'2022-08-29',NULL),(67684,NULL,NULL,'Pending',1544,'2022-08-08',NULL),(67694,NULL,NULL,'Pending',1544,'2022-08-22',NULL),(67704,NULL,NULL,'Cancelled',1674,'2022-08-29','2022-08-15'),(67714,NULL,NULL,'Pending',1674,'2022-08-25',NULL),(67724,NULL,NULL,'Pending',1674,'2022-08-22',NULL),(67734,NULL,NULL,'Pending',1644,'2022-09-14',NULL),(67744,NULL,NULL,'Pending',1674,'2022-09-19',NULL),(67754,NULL,NULL,'Pending',1644,'2022-09-28',NULL),(67764,NULL,NULL,'Pending',1644,'2022-09-21',NULL),(67774,NULL,NULL,'Pending',1674,'2022-09-05',NULL),(67784,NULL,NULL,'Pending',1674,'2022-09-26',NULL),(67794,NULL,NULL,'Pending',1674,'2022-09-12',NULL),(67804,704,24,'Completed',1674,'2022-09-01','2022-08-16'),(67814,NULL,NULL,'Pending',1674,'2022-09-08',NULL),(67824,NULL,NULL,'Pending',1644,'2022-09-07',NULL),(67834,NULL,NULL,'Pending',1674,'2022-09-15',NULL),(67844,NULL,NULL,'Pending',1674,'2022-09-22',NULL),(67854,NULL,NULL,'Pending',1674,'2022-09-29',NULL),(67864,NULL,NULL,'Pending',1684,'2022-08-22',NULL),(67874,NULL,NULL,'Pending',1684,'2022-08-29',NULL),(67884,NULL,NULL,'Pending',1694,'2022-08-22',NULL),(67894,NULL,NULL,'Pending',1694,'2022-08-29',NULL),(67904,NULL,NULL,'Pending',1704,'2022-08-22',NULL),(67914,NULL,NULL,'Pending',1704,'2022-08-29',NULL),(67924,NULL,NULL,'Pending',1714,'2022-08-24',NULL),(67934,NULL,NULL,'Pending',1714,'2022-08-22',NULL),(67944,NULL,NULL,'Pending',1714,'2022-08-31',NULL),(67954,NULL,NULL,'Pending',1714,'2022-08-29',NULL),(67964,NULL,NULL,'Pending',1724,'2022-08-29',NULL),(67974,NULL,NULL,'Pending',1724,'2022-08-22',NULL),(67984,NULL,NULL,'Cancelled',1734,'2022-08-29','2022-08-15'),(67994,NULL,NULL,'Pending',1734,'2022-08-22',NULL),(68004,NULL,NULL,'Pending',1734,'2022-08-25',NULL),(68014,NULL,NULL,'Pending',1574,'2022-09-26',NULL),(68024,NULL,NULL,'Pending',1574,'2022-09-12',NULL),(68034,NULL,NULL,'Pending',1574,'2022-09-05',NULL),(68044,704,694,'Completed',1574,'2022-09-01','2022-08-16'),(68054,NULL,NULL,'Pending',1574,'2022-09-15',NULL),(68064,NULL,NULL,'Pending',1574,'2022-09-08',NULL),(68074,NULL,NULL,'Pending',1574,'2022-09-19',NULL),(68084,NULL,NULL,'Pending',1574,'2022-09-22',NULL),(68094,NULL,NULL,'Pending',1574,'2022-09-29',NULL),(68104,NULL,NULL,'Pending',1684,'2022-09-05',NULL),(68114,NULL,NULL,'Pending',1684,'2022-09-12',NULL),(68124,NULL,NULL,'Pending',1684,'2022-09-19',NULL),(68134,NULL,NULL,'Pending',1584,'2022-09-06',NULL),(68144,NULL,NULL,'Pending',1684,'2022-09-26',NULL),(68154,NULL,NULL,'Pending',1584,'2022-09-13',NULL),(68164,NULL,NULL,'Pending',1584,'2022-09-20',NULL),(68174,NULL,NULL,'Pending',1584,'2022-09-27',NULL),(68184,NULL,NULL,'Pending',1734,'2022-09-05',NULL),(68194,NULL,NULL,'Pending',1734,'2022-09-19',NULL),(68204,NULL,NULL,'Pending',1734,'2022-09-12',NULL),(68214,NULL,NULL,'Pending',1734,'2022-09-01',NULL),(68224,NULL,NULL,'Pending',1734,'2022-09-26',NULL),(68234,NULL,NULL,'Pending',1734,'2022-09-08',NULL),(68244,NULL,NULL,'Pending',1734,'2022-09-15',NULL),(68254,NULL,NULL,'Pending',1734,'2022-09-22',NULL),(68264,NULL,NULL,'Pending',1724,'2022-09-05',NULL),(68274,NULL,NULL,'Pending',1734,'2022-09-29',NULL),(68284,NULL,NULL,'Pending',1724,'2022-09-12',NULL),(68294,NULL,NULL,'Pending',1724,'2022-09-19',NULL),(68304,NULL,NULL,'Pending',1724,'2022-09-26',NULL),(68314,NULL,NULL,'Pending',1714,'2022-09-05',NULL),(68324,NULL,NULL,'Pending',1714,'2022-09-12',NULL),(68334,NULL,NULL,'Pending',1714,'2022-09-19',NULL),(68344,NULL,NULL,'Pending',1714,'2022-09-26',NULL),(68354,NULL,NULL,'Pending',1714,'2022-09-07',NULL),(68364,NULL,NULL,'Pending',1714,'2022-09-14',NULL),(68374,NULL,NULL,'Pending',1714,'2022-09-21',NULL),(68384,NULL,NULL,'Pending',1714,'2022-09-28',NULL),(68394,NULL,NULL,'Cancelled',1694,'2022-09-05','2022-08-16'),(68404,NULL,NULL,'Pending',1694,'2022-09-12',NULL),(68414,NULL,NULL,'Pending',1694,'2022-09-19',NULL),(68424,NULL,NULL,'Pending',1694,'2022-09-26',NULL),(68434,NULL,NULL,'Cancelled',1704,'2022-09-05','2022-08-16'),(68444,NULL,NULL,'Pending',1704,'2022-09-12',NULL),(68454,NULL,NULL,'Pending',1704,'2022-09-19',NULL),(68464,NULL,NULL,'Pending',1704,'2022-09-26',NULL),(68474,NULL,NULL,'Pending',1744,'2022-08-22',NULL),(68484,NULL,NULL,'Pending',1744,'2022-08-26',NULL),(68494,NULL,NULL,'Cancelled',1744,'2022-08-29','2022-08-16'),(68504,NULL,NULL,'Pending',1754,'2022-08-26',NULL),(68514,NULL,NULL,'Cancelled',1754,'2022-08-29','2022-08-16'),(68524,NULL,NULL,'Pending',1754,'2022-08-22',NULL),(68534,NULL,NULL,'Pending',1744,'2022-09-19',NULL),(68544,NULL,NULL,'Pending',1744,'2022-09-05',NULL),(68554,NULL,NULL,'Pending',1744,'2022-09-26',NULL),(68564,NULL,NULL,'Pending',1744,'2022-09-12',NULL),(68574,NULL,NULL,'Pending',1744,'2022-09-30',NULL),(68584,NULL,NULL,'Pending',1744,'2022-09-23',NULL),(68594,NULL,NULL,'Pending',1754,'2022-09-12',NULL),(68604,NULL,NULL,'Pending',1744,'2022-09-09',NULL),(68614,NULL,NULL,'Pending',1744,'2022-09-16',NULL),(68624,NULL,NULL,'Pending',1744,'2022-09-02',NULL),(68634,NULL,NULL,'Pending',1754,'2022-09-16',NULL),(68644,NULL,NULL,'Pending',1754,'2022-09-26',NULL),(68654,NULL,NULL,'Pending',1754,'2022-09-19',NULL),(68664,NULL,NULL,'Pending',1754,'2022-09-02',NULL),(68674,NULL,NULL,'Pending',1754,'2022-09-05',NULL),(68684,NULL,NULL,'Pending',1754,'2022-09-30',NULL),(68694,NULL,NULL,'Pending',1754,'2022-09-23',NULL),(68704,NULL,NULL,'Pending',1754,'2022-09-09',NULL),(68714,NULL,NULL,'Pending',1764,'2022-08-22',NULL),(68724,NULL,NULL,'Pending',1764,'2022-08-29',NULL),(68734,NULL,NULL,'Pending',1774,'2022-08-24',NULL),(68744,NULL,NULL,'Pending',1774,'2022-08-31',NULL),(68754,NULL,NULL,'Pending',1784,'2022-08-29',NULL),(68764,NULL,NULL,'Pending',1784,'2022-08-22',NULL),(68774,NULL,NULL,'Pending',1784,'2022-08-25',NULL),(68784,NULL,NULL,'Pending',1794,'2022-08-29',NULL),(68794,NULL,NULL,'Pending',1794,'2022-08-22',NULL),(68804,NULL,NULL,'Pending',1804,'2022-08-29',NULL),(68814,NULL,NULL,'Pending',1804,'2022-08-22',NULL),(68824,NULL,NULL,'Pending',1814,'2022-08-22',NULL),(68834,NULL,NULL,'Pending',1814,'2022-08-29',NULL),(68844,NULL,NULL,'Pending',1834,'2022-08-29',NULL),(68854,NULL,NULL,'Pending',1834,'2022-08-22',NULL),(68864,NULL,NULL,'Pending',1824,'2022-08-22',NULL),(68874,NULL,NULL,'Pending',1824,'2022-08-29',NULL),(68884,NULL,NULL,'Pending',1844,'2022-08-29',NULL),(68894,NULL,NULL,'Pending',1844,'2022-08-22',NULL),(68904,NULL,NULL,'Pending',1854,'2022-08-22',NULL),(68914,NULL,NULL,'Pending',1854,'2022-08-29',NULL),(68924,NULL,NULL,'Pending',1864,'2022-08-29',NULL),(68934,NULL,NULL,'Pending',1864,'2022-08-22',NULL),(68944,NULL,NULL,'Pending',1874,'2022-08-25',NULL),(68954,NULL,NULL,'Pending',1884,'2022-08-25',NULL),(68964,NULL,NULL,'Pending',1884,'2022-08-22',NULL),(68974,NULL,NULL,'Pending',1884,'2022-08-29',NULL),(68984,NULL,NULL,'Pending',1894,'2022-08-22',NULL),(68994,NULL,NULL,'Pending',1894,'2022-08-29',NULL),(69004,NULL,NULL,'Pending',1904,'2022-08-22',NULL),(69014,NULL,NULL,'Pending',1904,'2022-08-29',NULL),(69024,NULL,NULL,'Pending',1914,'2022-08-29',NULL),(69034,NULL,NULL,'Pending',1914,'2022-08-22',NULL),(69044,NULL,NULL,'Pending',1924,'2022-08-29',NULL),(69054,NULL,NULL,'Pending',1924,'2022-08-22',NULL),(69064,NULL,NULL,'Pending',1934,'2022-08-29',NULL),(69074,NULL,NULL,'Pending',1934,'2022-08-22',NULL),(69084,NULL,NULL,'Pending',1944,'2022-08-22',NULL),(69094,NULL,NULL,'Pending',1944,'2022-08-29',NULL),(69104,NULL,NULL,'Pending',1954,'2022-08-29',NULL),(69114,NULL,NULL,'Pending',1954,'2022-08-22',NULL),(69124,NULL,NULL,'Pending',1964,'2022-08-22',NULL),(69134,NULL,NULL,'Pending',1964,'2022-08-29',NULL),(69144,NULL,NULL,'Pending',1974,'2022-08-29',NULL),(69154,NULL,NULL,'Pending',1974,'2022-08-22',NULL),(69164,NULL,NULL,'Pending',1984,'2022-09-26',NULL),(69174,NULL,NULL,'Pending',1984,'2022-09-23',NULL),(69184,NULL,NULL,'Pending',1984,'2022-09-30',NULL);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancel_booking_abnormality`
--

DROP TABLE IF EXISTS `cancel_booking_abnormality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancel_booking_abnormality` (
  `CancelBookingAbn` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `AbnormalityStatus` varchar(45) NOT NULL DEFAULT 'Unresolved',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CancelBookingAbn`),
  KEY `UserId_fk2_idx` (`CustomerID`),
  CONSTRAINT `UserId_fk2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3705 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancel_booking_abnormality`
--

LOCK TABLES `cancel_booking_abnormality` WRITE;
/*!40000 ALTER TABLE `cancel_booking_abnormality` DISABLE KEYS */;
INSERT INTO `cancel_booking_abnormality` VALUES (1594,814,'Resolved','2022-07-26 05:57:59'),(1614,814,'Resolved','2022-07-26 06:48:21'),(1634,814,'Resolved','2022-07-26 07:02:50'),(1654,814,'Resolved','2022-07-26 09:47:50'),(1674,814,'Resolved','2022-07-26 13:39:40'),(1684,1334,'Unresolved','2022-07-28 10:17:39'),(1694,1334,'Unresolved','2022-07-28 12:42:47'),(1704,1344,'Resolved','2022-08-04 13:02:55'),(1714,1054,'Unresolved','2022-08-04 13:02:55'),(1724,1214,'Unresolved','2022-08-04 13:02:55'),(1744,1054,'Unresolved','2022-08-04 13:11:08'),(1754,1214,'Unresolved','2022-08-04 13:11:08'),(1764,1344,'Resolved','2022-08-04 13:11:09'),(1784,1054,'Unresolved','2022-08-04 13:11:15'),(1794,1344,'Resolved','2022-08-04 13:11:15'),(1804,1214,'Unresolved','2022-08-04 13:11:15'),(1824,1054,'Unresolved','2022-08-04 13:11:23'),(1834,1214,'Unresolved','2022-08-04 13:11:23'),(1854,1344,'Resolved','2022-08-04 13:11:23'),(1864,814,'Resolved','2022-08-04 13:43:35'),(1874,1054,'Unresolved','2022-08-04 13:43:35'),(1884,1404,'Resolved','2022-08-04 13:43:35'),(1894,1214,'Unresolved','2022-08-04 13:43:36'),(1904,1344,'Resolved','2022-08-04 13:43:36'),(1914,1404,'Resolved','2022-08-04 13:44:46'),(1924,814,'Resolved','2022-08-04 13:44:45'),(1934,1344,'Resolved','2022-08-04 13:44:46'),(1944,1054,'Unresolved','2022-08-04 13:44:46'),(1954,1214,'Unresolved','2022-08-04 13:44:49'),(1964,1214,'Unresolved','2022-08-04 13:45:16'),(1974,1344,'Resolved','2022-08-04 13:45:16'),(1984,814,'Resolved','2022-08-04 13:45:16'),(1994,1054,'Unresolved','2022-08-04 13:45:16'),(2004,1404,'Resolved','2022-08-04 13:45:16'),(2014,1214,'Unresolved','2022-08-04 14:30:15'),(2024,1054,'Unresolved','2022-08-04 14:30:15'),(2034,814,'Resolved','2022-08-04 14:30:15'),(2044,1344,'Resolved','2022-08-04 14:30:16'),(2054,1404,'Resolved','2022-08-04 14:30:16'),(2064,1214,'Unresolved','2022-08-04 14:41:51'),(2074,1054,'Unresolved','2022-08-04 14:41:51'),(2084,814,'Resolved','2022-08-04 14:41:51'),(2094,1404,'Resolved','2022-08-04 14:41:51'),(2104,1344,'Resolved','2022-08-04 14:41:51'),(2114,1054,'Unresolved','2022-08-04 14:45:37'),(2124,1214,'Unresolved','2022-08-04 14:45:37'),(2134,1344,'Resolved','2022-08-04 14:45:37'),(2144,1404,'Resolved','2022-08-04 14:45:38'),(2154,814,'Resolved','2022-08-04 14:45:38'),(2164,1344,'Resolved','2022-08-04 14:47:42'),(2174,1214,'Unresolved','2022-08-04 14:47:42'),(2184,1054,'Unresolved','2022-08-04 14:47:42'),(2194,814,'Resolved','2022-08-04 14:47:42'),(2204,1404,'Resolved','2022-08-04 14:47:42'),(2214,814,'Resolved','2022-08-04 14:48:28'),(2224,1344,'Resolved','2022-08-04 14:48:28'),(2234,1054,'Unresolved','2022-08-04 14:48:28'),(2244,1214,'Unresolved','2022-08-04 14:48:28'),(2254,1404,'Resolved','2022-08-04 14:48:28'),(2264,1344,'Resolved','2022-08-04 14:55:14'),(2274,1214,'Unresolved','2022-08-04 14:55:14'),(2284,814,'Resolved','2022-08-04 14:55:14'),(2294,1404,'Resolved','2022-08-04 14:55:14'),(2304,1054,'Unresolved','2022-08-04 14:55:14'),(2314,1344,'Resolved','2022-08-04 14:56:31'),(2324,1404,'Resolved','2022-08-04 14:56:32'),(2334,1054,'Unresolved','2022-08-04 14:56:32'),(2344,814,'Resolved','2022-08-04 14:56:32'),(2354,1214,'Unresolved','2022-08-04 14:56:33'),(2364,1404,'Resolved','2022-08-04 15:10:34'),(2374,1214,'Unresolved','2022-08-04 15:10:34'),(2384,1344,'Resolved','2022-08-04 15:10:34'),(2394,814,'Resolved','2022-08-04 15:10:34'),(2404,1054,'Unresolved','2022-08-04 15:10:34'),(2414,1054,'Unresolved','2022-08-04 15:13:27'),(2424,1214,'Unresolved','2022-08-04 15:13:27'),(2434,1404,'Resolved','2022-08-04 15:13:27'),(2444,1344,'Resolved','2022-08-04 15:13:27'),(2454,814,'Resolved','2022-08-04 15:13:27'),(2464,1344,'Resolved','2022-08-04 15:15:17'),(2474,814,'Resolved','2022-08-04 15:15:16'),(2484,1214,'Unresolved','2022-08-04 15:15:17'),(2494,1054,'Unresolved','2022-08-04 15:15:17'),(2504,1404,'Resolved','2022-08-04 15:15:18'),(2514,1054,'Unresolved','2022-08-04 15:15:40'),(2524,814,'Resolved','2022-08-04 15:15:40'),(2534,1404,'Resolved','2022-08-04 15:15:40'),(2544,1344,'Resolved','2022-08-04 15:15:40'),(2554,1214,'Unresolved','2022-08-04 15:15:40'),(2564,1344,'Resolved','2022-08-04 15:15:43'),(2574,1054,'Unresolved','2022-08-04 15:15:43'),(2584,814,'Resolved','2022-08-04 15:15:43'),(2594,1214,'Unresolved','2022-08-04 15:15:43'),(2604,1404,'Resolved','2022-08-04 15:15:43'),(2614,1054,'Unresolved','2022-08-04 15:16:15'),(2624,814,'Resolved','2022-08-04 15:16:15'),(2634,1344,'Resolved','2022-08-04 15:16:15'),(2644,1214,'Unresolved','2022-08-04 15:16:15'),(2654,1404,'Resolved','2022-08-04 15:16:15'),(2664,814,'Resolved','2022-08-04 15:16:50'),(2674,1344,'Resolved','2022-08-04 15:16:50'),(2684,1214,'Unresolved','2022-08-04 15:16:50'),(2694,1404,'Resolved','2022-08-04 15:16:50'),(2704,1054,'Unresolved','2022-08-04 15:16:50'),(2714,814,'Resolved','2022-08-04 15:17:06'),(2724,1344,'Resolved','2022-08-04 15:17:06'),(2734,1214,'Unresolved','2022-08-04 15:17:06'),(2744,1054,'Unresolved','2022-08-04 15:17:06'),(2754,1404,'Resolved','2022-08-04 15:17:06'),(2764,1214,'Unresolved','2022-08-04 15:18:39'),(2774,814,'Resolved','2022-08-04 15:18:39'),(2784,1404,'Resolved','2022-08-04 15:18:39'),(2794,1054,'Unresolved','2022-08-04 15:18:39'),(2804,1344,'Resolved','2022-08-04 15:18:39'),(2814,1214,'Unresolved','2022-08-04 15:33:44'),(2824,1404,'Resolved','2022-08-04 15:33:44'),(2834,1054,'Unresolved','2022-08-04 15:33:44'),(2844,814,'Resolved','2022-08-04 15:33:44'),(2854,1344,'Resolved','2022-08-04 15:33:44'),(2864,814,'Resolved','2022-08-04 15:33:56'),(2874,1214,'Unresolved','2022-08-04 15:33:56'),(2884,1054,'Unresolved','2022-08-04 15:33:56'),(2894,1404,'Resolved','2022-08-04 15:33:56'),(2904,1344,'Resolved','2022-08-04 15:33:56'),(2914,1214,'Unresolved','2022-08-04 15:45:20'),(2924,1404,'Resolved','2022-08-04 15:45:20'),(2934,1344,'Resolved','2022-08-04 15:45:20'),(2944,1054,'Unresolved','2022-08-04 15:45:20'),(2954,814,'Resolved','2022-08-04 15:45:20'),(2964,1054,'Unresolved','2022-08-04 15:46:12'),(2974,814,'Resolved','2022-08-04 15:46:12'),(2984,1344,'Resolved','2022-08-04 15:46:12'),(2994,1214,'Unresolved','2022-08-04 15:46:12'),(3004,1404,'Resolved','2022-08-04 15:46:12'),(3014,1414,'Resolved','2022-08-05 07:04:10'),(3024,814,'Resolved','2022-08-05 07:04:33'),(3034,1414,'Resolved','2022-08-05 07:04:34'),(3044,1054,'Unresolved','2022-08-05 07:04:34'),(3054,1344,'Resolved','2022-08-05 07:04:34'),(3064,1214,'Unresolved','2022-08-05 07:04:34'),(3074,1404,'Resolved','2022-08-05 07:04:34'),(3084,814,'Resolved','2022-08-06 16:34:36'),(3094,1214,'Unresolved','2022-08-06 16:34:36'),(3104,1344,'Resolved','2022-08-06 16:34:36'),(3114,1414,'Resolved','2022-08-06 16:34:36'),(3124,1054,'Unresolved','2022-08-06 16:34:36'),(3134,1404,'Resolved','2022-08-06 16:34:36'),(3144,814,'Unresolved','2022-08-10 14:06:42'),(3154,1214,'Unresolved','2022-08-10 14:06:42'),(3164,1054,'Unresolved','2022-08-10 14:06:42'),(3174,1344,'Resolved','2022-08-10 14:06:42'),(3184,1414,'Resolved','2022-08-10 14:06:42'),(3194,1404,'Resolved','2022-08-10 14:06:42'),(3204,1054,'Unresolved','2022-08-15 13:31:13'),(3214,814,'Unresolved','2022-08-15 13:31:13'),(3224,1414,'Unresolved','2022-08-15 13:31:13'),(3234,1214,'Unresolved','2022-08-15 13:31:13'),(3244,1454,'Unresolved','2022-08-15 13:31:13'),(3254,1344,'Resolved','2022-08-15 13:31:13'),(3264,1404,'Resolved','2022-08-15 13:31:13'),(3274,814,'Unresolved','2022-08-15 14:18:20'),(3284,1054,'Unresolved','2022-08-15 14:18:20'),(3294,1214,'Unresolved','2022-08-15 14:18:20'),(3304,1344,'Resolved','2022-08-15 14:18:20'),(3314,1404,'Unresolved','2022-08-15 14:18:20'),(3324,1414,'Unresolved','2022-08-15 14:18:20'),(3334,1494,'Resolved','2022-08-15 14:18:20'),(3344,1454,'Unresolved','2022-08-15 14:18:20'),(3354,814,'Unresolved','2022-08-15 14:19:31'),(3364,1214,'Unresolved','2022-08-15 14:19:31'),(3374,1454,'Unresolved','2022-08-15 14:19:31'),(3384,1344,'Unresolved','2022-08-15 14:19:31'),(3394,1404,'Unresolved','2022-08-15 14:19:31'),(3404,1054,'Unresolved','2022-08-15 14:19:31'),(3414,1414,'Unresolved','2022-08-15 14:19:31'),(3424,1494,'Resolved','2022-08-15 14:19:31'),(3434,814,'Unresolved','2022-08-16 01:50:38'),(3444,1054,'Unresolved','2022-08-16 01:50:38'),(3454,1344,'Unresolved','2022-08-16 01:50:38'),(3464,1414,'Unresolved','2022-08-16 01:50:38'),(3474,1494,'Resolved','2022-08-16 01:50:38'),(3484,1454,'Unresolved','2022-08-16 01:50:38'),(3494,1214,'Unresolved','2022-08-16 01:50:38'),(3504,1404,'Unresolved','2022-08-16 01:50:38'),(3514,814,'Unresolved','2022-08-16 02:18:15'),(3524,1054,'Unresolved','2022-08-16 02:18:15'),(3534,1524,'Unresolved','2022-08-16 02:18:15'),(3544,1544,'Unresolved','2022-08-16 02:18:15'),(3554,1214,'Unresolved','2022-08-16 02:18:15'),(3564,1404,'Unresolved','2022-08-16 02:18:15'),(3574,1494,'Resolved','2022-08-16 02:18:15'),(3584,1414,'Unresolved','2022-08-16 02:18:15'),(3594,1344,'Unresolved','2022-08-16 02:18:15'),(3604,1454,'Unresolved','2022-08-16 02:18:15'),(3614,814,'Unresolved','2022-08-16 02:19:36'),(3624,1054,'Unresolved','2022-08-16 02:19:36'),(3634,1214,'Unresolved','2022-08-16 02:19:36'),(3644,1344,'Unresolved','2022-08-16 02:19:36'),(3654,1524,'Unresolved','2022-08-16 02:19:36'),(3664,1404,'Unresolved','2022-08-16 02:19:36'),(3674,1544,'Unresolved','2022-08-16 02:19:36'),(3684,1454,'Unresolved','2022-08-16 02:19:36'),(3694,1494,'Unresolved','2022-08-16 02:19:36'),(3704,1414,'Unresolved','2022-08-16 02:19:36');
/*!40000 ALTER TABLE `cancel_booking_abnormality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `ClassID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(100) NOT NULL,
  `ClassPricing` decimal(7,2) NOT NULL,
  `ClassDes` varchar(255) NOT NULL,
  PRIMARY KEY (`ClassID`),
  UNIQUE KEY `ClassID_UNIQUE` (`ClassID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'Premium',40.00,'Housekeepers are fully trained and proficient in all aspect of housekeeping. Housekeepers have a minimum of 3 years of experience in housekeeping and is equipped with disinfection know how'),(2,'Superior',30.00,'Housekeepers are trained in most aspects of housekeeping. Please refer to the list of housekeepers to select the services you require.  Housekeepers have a minimum of 2 years of experience in housekeeping and is equipped with disinfection know how'),(3,'Affordable',20.00,'Housekeepers are trained in basic housekeeping and are able to complete all housekeeping tasks. Housekeepers can be newly joined but are trained in house and are certified competent');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `ContractID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer` int(11) NOT NULL,
  `StartDate` date NOT NULL,
  `Package` int(11) NOT NULL,
  `DayOfService` char(3) NOT NULL,
  `DayOfService2` char(3) DEFAULT NULL,
  `TimeOfService` time NOT NULL,
  `EstimatedPricing` decimal(7,2) NOT NULL,
  `ExtraNotes` varchar(255) DEFAULT NULL,
  `NoOfRooms` int(11) NOT NULL,
  `NoOfBathrooms` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Class` int(11) NOT NULL,
  `Rate` int(11) NOT NULL,
  `ExtraService` int(11) NOT NULL DEFAULT '0',
  `contractStatus` varchar(45) NOT NULL DEFAULT 'active',
  `Created_At` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PostalCode` int(11) NOT NULL,
  PRIMARY KEY (`ContractID`),
  KEY `fk_customer_idx` (`Customer`),
  KEY `fk_package_idx` (`Package`),
  KEY `fk_class_idx` (`Class`),
  KEY `fk_rate_idx` (`Rate`),
  CONSTRAINT `fk_class` FOREIGN KEY (`Class`) REFERENCES `class` (`ClassID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_contractpackage` FOREIGN KEY (`Package`) REFERENCES `package` (`PackageID`),
  CONSTRAINT `fk_customer` FOREIGN KEY (`Customer`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE,
  CONSTRAINT `fk_rate` FOREIGN KEY (`Rate`) REFERENCES `rates` (`RatesID`)
) ENGINE=InnoDB AUTO_INCREMENT=1985 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (1494,814,'2022-07-30',1,'Mon','-','08:30:00',480.00,'-',1,1,'Bukit Batok St 32, #03-279, #03-279#03-279',1,1,0,'active','2022-07-26 15:16:41',650334),(1504,1054,'2022-08-04',2,'Mon','Sat','08:30:00',820.00,'-',1,1,'Pasir Ris street 21BLK 253 #08-227',3,6,0,'inactive','2022-07-26 15:20:26',510253),(1514,1054,'2022-08-11',1,'Mon',NULL,'12:30:00',560.00,'-',1,1,'Pasir Ris street 21BLK 253 #08-227',3,5,0,'active','2022-07-26 15:20:51',510253),(1524,814,'2022-07-30',1,'Sat','-','08:30:00',440.00,'-',1,1,'Bukit Batok St 32, #03-279, #03-279#03-279',2,1,0,'active','2022-07-26 15:45:09',650334),(1534,814,'2022-07-30',1,'Mon','-','08:30:00',480.00,'-',1,1,'Bukit Batok St 32, #03-279, #03-279#03-279',1,1,0,'active','2022-07-26 17:23:08',650334),(1544,1334,'2022-07-31',1,'Mon','-','08:30:00',485.00,' Exclude Additional Services: Window Cleaning (Additonal S$100)',3,2,'3 Ang Mo Kio St 62',2,1,0,'active','2022-07-27 03:33:20',569139),(1554,1334,'2022-07-31',1,'Sun','-','08:30:00',440.00,'-',1,1,'3 Ang Mo Kio St 62',2,1,0,'active','2022-07-27 03:34:16',569139),(1564,814,'2022-08-11',2,'Mon','Fri','08:30:00',800.00,'-',1,1,'Bukit Batok St 32, #03-279, #03-279#03-279',2,4,0,'active','2022-07-27 14:01:53',650334),(1574,1344,'2022-08-01',2,'Mon','Thu','08:30:00',777.00,' I would appreciate it if a cleaner can help with carpet cleaning too.  Exclude Additional Services: Window Cleaning (Additonal S$100)',1,1,'fgsdfgdfg',1,3,0,'active','2022-07-28 06:24:35',730899),(1584,1344,'2022-08-01',1,'Tue','-','08:30:00',480.00,'-',2,1,'fgsdfgdfg',1,1,0,'active','2022-07-28 06:28:51',730899),(1604,1054,'2022-08-10',1,'Mon','-','08:30:00',580.00,' Exclude Additional Services: Ironing (Additonal S$45)',4,2,'Pasir Ris street 21BLK 253 #08-227',1,1,0,'active','2022-07-28 12:55:41',510253),(1614,1054,'2022-08-01',2,'Mon','Wed','08:30:00',625.00,'-',4,1,'Pasir Ris street 21BLK 253 #08-227',1,1,0,'active','2022-07-28 12:56:12',510253),(1624,1054,'2022-08-04',1,'Mon',NULL,'08:30:00',625.00,'-',6,3,'Pasir Ris street 21BLK 253 #08-227',1,1,0,'active','2022-07-28 12:56:42',510253),(1634,1214,'2022-08-03',1,'Mon',NULL,'08:30:00',440.00,'-',1,1,'Woodlands Drive 50BLK 899A #06-248',2,1,0,'active','2022-07-30 17:13:32',730899),(1644,1404,'2022-08-08',1,'Wed',NULL,'08:30:00',500.00,' Exclude Additional Services: Ironing (Additonal S$45)',2,2,'blk 899A Woodlands Drive 42 #05-897',2,1,0,'active','2022-08-04 13:32:18',730899),(1654,1414,'2022-08-09',2,'Mon','Wed','08:30:00',900.00,' Exclude Additional Services: Ironing (Additonal S$45)',2,1,'Woodlands Drive 50BLK 899A #06-248',2,4,0,'active','2022-08-05 06:35:18',730899),(1674,1454,'2022-08-19',2,'Mon','Thu','08:30:00',485.00,' Exclude Additional Services: Window Cleaning (Additonal S$100)',1,1,'Yishun Drive 50 899A',2,1,0,'active','2022-08-15 13:21:54',730899),(1684,814,'2022-08-19',1,'Mon',NULL,'08:30:00',400.00,'-',1,1,'Bukit Batok St 32, #03-279, #03-279#03-279',1,1,0,'active','2022-08-15 13:55:43',650334),(1694,814,'2022-08-19',1,'Mon','-','08:30:00',440.00,'-',1,1,'Bukit Batok St 32, #03-279, #03-279#03-279',2,1,0,'active','2022-08-15 13:55:55',650334),(1704,814,'2022-08-19',1,'Mon',NULL,'08:30:00',480.00,'-',1,1,'Bukit Batok St 32, #03-279, #03-279#03-279',3,1,0,'active','2022-08-15 13:56:04',650334),(1714,814,'2022-08-19',2,'Mon','Wed','08:30:00',440.00,'-',1,1,'Bukit Batok St 32, #03-279, #03-279#03-279',2,1,0,'active','2022-08-15 13:56:21',650334),(1724,814,'2022-08-19',1,'Mon',NULL,'08:30:00',400.00,'-',1,1,'Bukit Batok St 32, #03-279, #03-279#03-279',1,1,0,'active','2022-08-15 13:57:25',650334),(1734,1494,'2022-08-19',2,'Mon','Thu','12:30:00',540.00,' Exclude Additional Services: Ironing (Additonal S$45)',1,1,'Yishun Drive 50 899A',2,1,0,'active','2022-08-15 14:11:11',730899),(1744,1524,'2022-08-20',2,'Mon','Fri','12:30:00',515.00,' Exclude Additional Services: Window Cleaning (Additonal S$100)',2,1,'Yishun Drive 50BLK 899A #06-248',2,3,0,'active','2022-08-16 01:57:04',730899),(1754,1544,'2022-08-20',2,'Mon','Fri','12:30:00',845.00,' Exclude Additional Services: Window Cleaning (Additonal S$100)',2,1,'Yishun Drive 50899A',2,4,0,'active','2022-08-16 02:10:29',750899),(1764,1554,'2022-08-20',1,'Mon','-','08:30:00',400.00,'-',1,1,'Woodlands Drive 50899A',3,1,0,'active','2022-08-16 04:47:36',730899),(1774,1554,'2022-08-20',1,'Wed','-','08:30:00',440.00,'-',1,1,'Yishun Drive 50 899A',2,1,0,'active','2022-08-16 04:48:10',730899),(1784,1554,'2022-08-20',2,'Mon','Thu','08:30:00',570.00,'-',1,1,'Woodlands Drive 50899A',2,7,0,'active','2022-08-16 04:48:38',730899),(1794,1554,'2022-08-20',1,'Mon','-','12:30:00',440.00,'-',1,1,'Admirality Drive 50899A',2,1,0,'active','2022-08-16 04:49:04',730899),(1804,1554,'2022-08-20',1,'Mon','-','08:30:00',400.00,'-',1,1,'Woodlands Drive 50899A',3,1,0,'active','2022-08-16 04:49:29',730899),(1814,1554,'2022-08-20',1,'Mon','-','08:30:00',570.00,'-',1,1,'Woodlands Drive 50899A',2,7,0,'active','2022-08-16 04:49:47',730899),(1824,1554,'2022-08-20',1,'Mon','-','08:30:00',400.00,'-',1,1,'Woodlands Drive 50899A',3,1,0,'active','2022-08-16 04:50:04',730899),(1834,1554,'2022-08-20',1,'Mon','-','08:30:00',400.00,'-',1,1,'Woodlands Drive 50899A',3,1,0,'active','2022-08-16 04:50:05',730899),(1844,1554,'2022-08-20',1,'Mon','-','08:30:00',400.00,'-',1,1,'Woodlands Drive 50899A',3,1,0,'active','2022-08-16 04:50:05',730899),(1854,1554,'2022-08-20',1,'Mon','-','08:30:00',440.00,'-',1,1,'Woodlands Drive 50899A',2,1,0,'active','2022-08-16 04:51:18',730899),(1864,1584,'2022-08-20',1,'Mon','-','08:30:00',440.00,'-',1,1,'Woodlands Drive 50899A',2,1,0,'active','2022-08-16 04:53:55',730899),(1874,1584,'2022-08-20',1,'Thu','-','08:30:00',400.00,'-',1,1,'Woodlands Drive 50899A',3,1,0,'active','2022-08-16 04:54:12',730899),(1884,1584,'2022-08-20',2,'Mon','Thu','08:30:00',440.00,'-',1,1,'Woodlands Drive 50899A',2,1,0,'active','2022-08-16 04:54:33',730899),(1894,1584,'2022-08-20',1,'Mon','-','08:30:00',430.00,'-',1,1,'Woodlands Drive 50899A',3,3,0,'active','2022-08-16 04:54:53',730899),(1904,1584,'2022-08-20',1,'Mon','-','08:30:00',440.00,'-',1,1,'Woodlands Drive 50899A',2,1,0,'active','2022-08-16 04:55:07',730899),(1914,1584,'2022-08-20',1,'Mon','-','08:30:00',400.00,'-',1,1,'Woodlands Drive 50899A',3,1,0,'active','2022-08-16 04:55:21',730899),(1924,1584,'2022-08-20',1,'Mon','-','08:30:00',440.00,'-',1,1,'Woodlands Drive 50899A',2,1,0,'active','2022-08-16 04:55:34',730899),(1934,814,'2022-08-20',1,'Mon','-','08:30:00',400.00,'-',1,1,'Bukit Batok St 32, #03-279, #03-279#03-279',3,1,0,'active','2022-08-16 05:06:14',650334),(1944,814,'2022-08-20',1,'Mon','-','08:30:00',440.00,'-',1,1,'Bukit Batok St 32, #03-279, #03-279#03-279',2,1,0,'active','2022-08-16 05:06:33',650334),(1954,814,'2022-08-20',1,'Mon','-','08:30:00',440.00,'-',1,1,'Bukit Batok St 32, #03-279, #03-279#03-279',2,1,0,'active','2022-08-16 05:06:35',650334),(1964,814,'2022-08-20',1,'Mon','-','08:30:00',400.00,'-',1,1,'Bukit Batok St 32, #03-279, #03-279#03-279',3,1,0,'active','2022-08-16 05:07:05',650334),(1974,814,'2022-08-21',1,'Mon','-','08:30:00',480.00,'-',1,1,'Bukit Batok St 32, #03-279, #03-279#03-279',1,1,0,'active','2022-08-16 05:12:00',650334),(1984,814,'2022-09-23',2,'Mon','Fri','08:30:00',460.00,'-',4,1,'Bukit Batok St 32, #03-279, #03-279#03-279',3,5,0,'active','2022-09-19 05:24:41',650334);
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_abnormality`
--

DROP TABLE IF EXISTS `contract_abnormality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract_abnormality` (
  `ContractAbnId` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `TotalAbnContracts` int(11) NOT NULL,
  `AbnormalStatus` varchar(45) NOT NULL DEFAULT 'Abnormal',
  PRIMARY KEY (`ContractAbnId`),
  KEY `user_fk_idx` (`UserID`),
  CONSTRAINT `user_fk` FOREIGN KEY (`UserID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=555 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_abnormality`
--

LOCK TABLES `contract_abnormality` WRITE;
/*!40000 ALTER TABLE `contract_abnormality` DISABLE KEYS */;
INSERT INTO `contract_abnormality` VALUES (524,814,9,'Abnormal'),(534,1054,5,'Resolved'),(544,1554,10,'Abnormal'),(554,1584,7,'Abnormal');
/*!40000 ALTER TABLE `contract_abnormality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Password` varchar(150) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `PhoneNumber` int(11) NOT NULL,
  `PostalCode` int(11) NOT NULL,
  `Status` varchar(45) NOT NULL DEFAULT 'active',
  `Verified` tinyint(1) NOT NULL,
  `Created_At` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=1585 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (814,'Muhamad Nur Farhan','Bin Mashudi','$2a$10$DHaG1xTxKPwnKLyWSAXwE.59.8wLsA/aw4b2jVMWvLlAmPNdzuV1G','farhanmashudi@gmail.com','Bukit Batok St 32, #03-279, #03-279#03-279',88165231,650334,'active',1,'2022-07-16 14:10:52'),(1054,'shuyang','chen','$2a$10$por/uUEyR7DE0SU3a.23Ke75gZ053e.P7DhwSeOnrSXHBGOZZcrt.','chenshuyang0@gmail.com','Pasir Ris street 21\nBLK 253 #08-227',91341234,510253,'active',1,'2022-07-25 05:18:20'),(1214,'Ramesh','Seeni','$2a$10$6s6.8IWCqfs3miIpdMOaCe4Cq7KuSx.w3cPn837GT6OPXsc7Nc5QO','rameshmonika18@gmail.com','Woodlands Drive 50\nBLK 899A #06-248',88579586,730899,'active',1,'2022-07-27 03:14:45'),(1244,'Muhamad Nur Farhan','Bin Mashudi','$2a$10$sDt2vRMAh44aEzj8/vQsZObYD1BsEht4cpwyzMzgEab5WaI3Mrtlm','colab73639@altpano.com','Bukit Batok St 32, #03-279, #03-279\n#03-279',88165231,650334,'inactive',0,'2022-07-27 03:25:59'),(1314,'Muhamad Nur Farhan','Bin Mashudi','$2a$10$ERImCU7XNDaii29Zs.zwUue9npJUq7kn/gMmlzZQVZ1ZeSw3/bo9O','pipsucayda@vusra.com','Bukit Batok St 32, #03-279, #03-279\n#03-279',88165231,650334,'inactive',1,'2022-07-27 03:30:16'),(1334,'Leroy','David','$2a$10$FF6oiQyIrV9oO0E8cpkYCuyWd.m.nn8OtYGXMDVHiP2cPZPx/fuXi','rio.goh@airtumtec.com','3 Ang Mo Kio St 62',98348861,569139,'active',1,'2022-07-27 03:31:41'),(1344,'ian','tam','$2a$10$UDtYvuPJComWzKO/tPORgOy0WdENnJm9aF.0eOqoQkSzMeETAi45K','infant41@tadipexs.com','fgsdfgdfg',88579586,730899,'active',1,'2022-07-28 05:51:27'),(1404,'zayni','malik','$2a$10$KEAtQYSGTXOIUHdR7EMm5.a8ACi.ViiKRF2.mNL9Vv8J6yyv/eLOe','zotoruly@fxcoral.biz','blk 899A Woodlands Drive 42 #05-897',88471625,730899,'active',1,'2022-08-04 13:31:16'),(1414,'harry','style','$2a$10$oRhDWRiBTCO9r22lk.tBP.qH4VCoEr8o5P23s0Lx1ug6/Gkkg4fdS','huhalavi@ema-sofia.eu','Woodlands Drive 50BLK 899A #06-248',88471626,730899,'suspend',1,'2022-08-05 06:30:08'),(1454,'vedo','lim','$2a$10$vijZW.5grBNnGlW4n6xst.EdmN1MQxeLtUmH.VcHwCkdhNkCc/6EG','dogyvedo@ema-sofia.eu','Woodlands Drive 50\n899A',88471625,730899,'active',1,'2022-08-15 13:19:39'),(1464,'John','Lee','$2a$10$05S9DUsznKXigeg95IIiV.mlSdtYeTCgZuqHYpLLYymBKHamSBaJG','bowitof227@safe-cart.com','Bukit Batok St 32, #03-279, #03-279\n#03-279',88165231,650334,'inactive',1,'2022-08-15 14:03:51'),(1474,'Lee','John','$2a$10$NweuseaGXO.dHTT1Mtzw4OCKs324Mee7KOxBSaPCCBsKjvxD6p4Ea','deyducupsa@vusra.com','Bukit Batok St 32, #03-279, #03-279\n#03-279',88165231,650334,'inactive',1,'2022-08-15 14:05:02'),(1484,'Sarah','Lee','$2a$10$U.cnMBpDZ6rGzGuw6UGa1.Y4Owr5u/LaIIu3uYBQwHuz8Wv33yAvG','kywajiny@kellychibale-researchgroup-uct.com','Blk 543 Chua Chu kang #03-279',88165231,650543,'inactive',1,'2022-08-15 14:06:54'),(1494,'ema','low','$2a$10$0uhXLs7HZUmIPWYQeo96Guau4B5OZdVsclblkcoNHSX/qHFgZ3Tf6','cyleka@ema-sofia.eu','Woodlands Drive 50\n 899A',88471625,730899,'active',1,'2022-08-15 14:08:46'),(1524,'ema','sofia','$2a$10$TV4tGYL375KSCqtKML4LauLOoVydDaD7kfRezkCQMERft56i.qIuK','beribo@forexnews.bg','Woodlands Drive 50\nBLK 899A #06-248',88471625,730899,'active',1,'2022-08-16 01:54:18'),(1544,'fi','le','$2a$10$ILRPhQhPiKdp6NJKMGvCZOAvEd.K00aTv5QSezdpbbwTGyUETHFZK','fiwyvize@teleg.eu','Woodlands Drive 50\n899A',88471625,730899,'active',1,'2022-08-16 02:07:41'),(1554,'jill','hump','$2a$10$KcLGCQ.m90A9d0GxoMhc2eH7I0QWkPWkS6IwUKBl96NK866T724qq','hilumipy@forexnews.bg','Woodlands Drive 50\n899A',88471625,730899,'active',1,'2022-08-16 04:46:51'),(1584,'kola','saif','$2a$10$QuBpjHQaUKHsQrQJRd8LxOycRC4wwXza1VvnfsaE.zDKGy/TERKcC','xofukola@ema-sofia.eu','Woodlands Drive 50\n899A',88471625,730899,'active',1,'2022-08-16 04:53:10');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeID` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeName` varchar(100) NOT NULL,
  `EmployeeDes` varchar(255) NOT NULL,
  `EmployeeImageCloudinaryFileId` varchar(255) NOT NULL,
  `EmployeeImgUrl` varchar(255) NOT NULL,
  `Skillsets` varchar(255) NOT NULL,
  `MobileNo` int(11) NOT NULL,
  PRIMARY KEY (`EmployeeID`),
  UNIQUE KEY `EmployeeID_UNIQUE` (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=875 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (24,'May Thazin','Housekeeper','employee/d0sbxyommmly7ldrolaw','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658755030/employee/d0sbxyommmly7ldrolaw.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',98579279),(614,'Shiu Kwai Pheng','HouseKeeper','employee/iwtepuuwv6gkp74unp9b','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658502894/employee/iwtepuuwv6gkp74unp9b.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes\r\n',85150600),(674,'Cheong Yoke Cheng','Housekeeper','employee/i3gsgwto40fr7tlyosb0','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658738708/employee/i3gsgwto40fr7tlyosb0.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping,, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',97101593),(684,'Htet Htet Pyi','Housekeeper','employee/otlaatrkcfnxyrerxplg','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658739044/employee/otlaatrkcfnxyrerxplg.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',98902746),(694,'Kay Zin Tun','Housekeeper','employee/djctcgmo3jfowvdwnelx','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658739241/employee/djctcgmo3jfowvdwnelx.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',98923102),(704,'Khin Pa Pa Win','Housekeeper','employee/zj4ng2uoysjls7mzrlrk','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658739357/employee/zj4ng2uoysjls7mzrlrk.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes\r\n',83074548),(714,'Lau Lai Ngoh','Housekeeper','employee/qygjcgpoxqcxssabziie','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658739414/employee/qygjcgpoxqcxssabziie.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',96440498),(724,'Lee Poh Geok','Housekeeper','employee/g74rkpa0f9teyv86peoi','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658739514/employee/g74rkpa0f9teyv86peoi.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',83681915),(734,'Low Choon Moi','Housekeeper','employee/h2hwaorhxggee8cu2v57','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658739620/employee/h2hwaorhxggee8cu2v57.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',98203277),(744,'Low Choon Siang','Housekeeper','employee/nunw79jicb9riqltdvhs','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658739679/employee/nunw79jicb9riqltdvhs.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',93898151),(754,'Low Sui Hua','Housekeeper','employee/tea7ajs5qsvwtn6tugeq','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658739764/employee/tea7ajs5qsvwtn6tugeq.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',93279179),(764,'May Zune Oo','Housekeeper','employee/v4ecq1kdowhcyvfg0viu','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658740917/employee/v4ecq1kdowhcyvfg0viu.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',84365526),(784,'Naw Yu Lee Paw','Housekeeper','employee/zborfa6eaqdaiqvprat9','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658741067/employee/zborfa6eaqdaiqvprat9.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',84391167),(814,'Ngwe Ngwe Oo','Housekeeper','employee/hnhqrv5j9ackkhttqo57','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658741428/employee/hnhqrv5j9ackkhttqo57.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',87564292),(824,'Phyu Phyu Ei','Housekeeper','employee/quazgx2fqdcivqw2k1ai','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658741462/employee/quazgx2fqdcivqw2k1ai.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',90847494),(834,'Shoon Lei Wai','Housekeeper','employee/vjn1dv1nb0r6rvwiy9ft','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658741577/employee/vjn1dv1nb0r6rvwiy9ft.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',91214349),(844,'Tay Beng Sai','Housekeeper','employee/q4wjzow0zxg1hyrf9qla','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658741618/employee/q4wjzow0zxg1hyrf9qla.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',96337115),(854,'Thin Myat Zaw','Housekeeper','employee/wfqfmlsj6uaedvdmymcn','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658741661/employee/wfqfmlsj6uaedvdmymcn.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',84551687),(864,'Zhang Yuzhen','Operations Executive','employee/sjwhgzmy1a7guy8dqcno','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658741722/employee/sjwhgzmy1a7guy8dqcno.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',81249982),(874,'Zhang Yingying','Housekeeper','employee/m1oainovxsghyswnowc3','https://res.cloudinary.com/dxwbzmypx/image/upload/v1658741770/employee/m1oainovxsghyswnowc3.jpg','Washroom washing, Carpet vacuuming, Sweeping and mopping, Dusting of fixtures, Making of the bed, Laundry, Washing dishes',98988740);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extraservice`
--

DROP TABLE IF EXISTS `extraservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extraservice` (
  `ExtraServiceID` int(11) NOT NULL AUTO_INCREMENT,
  `ExtraServiceName` varchar(45) NOT NULL,
  `ExtraServicePrice` decimal(7,2) NOT NULL,
  `ExtraServiceDes` varchar(250) NOT NULL,
  PRIMARY KEY (`ExtraServiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extraservice`
--

LOCK TABLES `extraservice` WRITE;
/*!40000 ALTER TABLE `extraservice` DISABLE KEYS */;
INSERT INTO `extraservice` VALUES (1,'Ironing',45.00,'*Limited to 8 pieces'),(4,'Window Cleaning',100.00,'*From $100');
/*!40000 ALTER TABLE `extraservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package` (
  `PackageID` int(11) NOT NULL AUTO_INCREMENT,
  `PackageDes` varchar(255) NOT NULL,
  `PackageName` varchar(100) NOT NULL,
  PRIMARY KEY (`PackageID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,'Once a week, 4 times a month','Mulberry'),(2,'Twice a week, 8 times a month','Sassafras');
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rates` (
  `RatesID` int(11) NOT NULL AUTO_INCREMENT,
  `RateName` varchar(100) NOT NULL,
  `RatePrice` decimal(7,2) NOT NULL,
  `Package` int(11) NOT NULL,
  PRIMARY KEY (`RatesID`),
  KEY `fk_package_idx` (`Package`),
  CONSTRAINT `fk_package` FOREIGN KEY (`Package`) REFERENCES `package` (`PackageID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (1,'969',320.00,1),(2,'969',620.00,2),(3,'970 – 1130',350.00,1),(4,'970 – 1130',680.00,2),(5,'1131 – 1335',380.00,1),(6,'1131 – 1335',740.00,2),(7,'1336 – 1600',450.00,1),(8,'1336 – 1600',880.00,2),(10,'Above 1600',900.00,2);
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `ScheduleID` int(11) NOT NULL AUTO_INCREMENT,
  `ScheduleDate` date NOT NULL,
  `TimeSlot` time NOT NULL,
  `Employee` int(11) NOT NULL,
  PRIMARY KEY (`ScheduleID`),
  KEY `fk_employee_idx` (`Employee`),
  CONSTRAINT `fk_employee` FOREIGN KEY (`Employee`) REFERENCES `employee` (`EmployeeID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1505 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (24,'2022-06-09','12:30:00',24),(74,'2022-06-03','08:30:00',24),(154,'2022-06-11','08:30:00',24),(204,'2022-06-05','08:30:00',24),(244,'2022-06-21','08:30:00',24),(284,'2022-06-29','08:30:00',24),(344,'2022-07-11','08:30:00',24),(374,'2022-07-17','08:30:00',24),(414,'2022-07-18','12:30:00',24),(444,'2022-07-20','08:30:00',24),(464,'2022-07-22','12:30:00',24),(584,'2022-08-02','12:30:00',614),(594,'2022-07-25','08:30:00',24),(644,'2022-07-30','08:30:00',24),(654,'2022-07-30','08:30:00',614),(664,'2022-07-30','08:30:00',674),(674,'2022-07-29','12:30:00',24),(684,'2022-07-29','12:30:00',614),(694,'2022-07-26','08:30:00',24),(704,'2022-07-30','08:30:00',764),(714,'2022-07-30','08:30:00',784),(724,'2022-07-30','08:30:00',854),(734,'2022-07-30','08:30:00',694),(744,'2022-07-29','08:30:00',674),(754,'2022-08-08','08:30:00',24),(764,'2022-08-08','12:30:00',614),(774,'2022-08-01','08:30:00',24),(784,'2022-08-01','12:30:00',614),(794,'2022-08-05','08:30:00',614),(804,'2022-08-05','08:30:00',674),(814,'2022-08-05','08:30:00',24),(824,'2022-08-05','08:30:00',684),(834,'2022-08-05','12:30:00',694),(844,'2022-08-05','12:30:00',704),(854,'2022-08-05','12:30:00',714),(864,'2022-08-05','12:30:00',724),(874,'2022-09-02','08:30:00',614),(884,'2022-09-02','08:30:00',24),(894,'2022-09-02','08:30:00',674),(904,'2022-09-02','12:30:00',684),(914,'2022-09-02','12:30:00',704),(924,'2022-09-02','12:30:00',694),(934,'2022-09-02','12:30:00',714),(944,'2022-09-02','08:30:00',724),(954,'2022-09-02','08:30:00',734),(964,'2022-09-03','08:30:00',24),(974,'2022-09-03','08:30:00',674),(984,'2022-09-03','08:30:00',614),(994,'2022-09-03','08:30:00',694),(1004,'2022-09-03','08:30:00',684),(1014,'2022-08-04','08:30:00',24),(1024,'2022-08-04','08:30:00',614),(1034,'2022-08-04','12:30:00',24),(1044,'2022-08-04','12:30:00',614),(1054,'2022-08-31','08:30:00',614),(1064,'2022-08-31','08:30:00',24),(1074,'2022-09-03','08:30:00',704),(1084,'2022-09-03','08:30:00',714),(1094,'2022-09-03','12:30:00',714),(1104,'2022-09-03','12:30:00',704),(1114,'2022-08-09','08:30:00',24),(1124,'2022-08-09','12:30:00',24),(1134,'2022-08-09','12:30:00',614),(1144,'2022-09-02','08:30:00',684),(1154,'2022-09-02','12:30:00',24),(1164,'2022-08-11','08:30:00',614),(1174,'2022-08-11','08:30:00',684),(1194,'2022-09-05','08:30:00',24),(1204,'2022-09-05','08:30:00',614),(1214,'2022-09-05','12:30:00',614),(1224,'2022-09-05','12:30:00',24),(1234,'2022-09-01','12:30:00',24),(1244,'2022-09-01','08:30:00',24),(1254,'2022-09-01','12:30:00',674),(1264,'2022-09-01','12:30:00',614),(1274,'2022-09-01','12:30:00',684),(1284,'2022-09-01','08:30:00',714),(1294,'2022-09-01','08:30:00',704),(1304,'2022-09-01','12:30:00',694),(1314,'2022-09-01','08:30:00',614),(1324,'2022-09-01','08:30:00',684),(1334,'2022-09-01','08:30:00',674),(1344,'2022-09-01','08:30:00',694),(1354,'2022-09-01','12:30:00',704),(1364,'2022-08-20','08:30:00',684),(1374,'2022-08-20','08:30:00',614),(1384,'2022-08-20','08:30:00',24),(1394,'2022-08-20','08:30:00',674),(1404,'2022-08-20','12:30:00',684),(1414,'2022-08-20','12:30:00',24),(1424,'2022-08-20','12:30:00',614),(1434,'2022-08-20','12:30:00',674),(1444,'2022-08-21','08:30:00',684),(1454,'2022-08-21','08:30:00',674),(1464,'2022-08-21','08:30:00',614),(1474,'2022-08-21','08:30:00',24),(1484,'2022-08-21','08:30:00',704),(1494,'2022-08-21','08:30:00',714),(1504,'2022-08-21','08:30:00',694);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_verification`
--

DROP TABLE IF EXISTS `user_verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_verification` (
  `UserVerificationID` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `UniqueString` varchar(150) NOT NULL,
  `CreatedAt` bigint(20) NOT NULL,
  `ExpiresAt` bigint(20) NOT NULL,
  PRIMARY KEY (`UserVerificationID`),
  KEY `fk_customerId_idx` (`UserId`),
  CONSTRAINT `fk_customerId` FOREIGN KEY (`UserId`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=565 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_verification`
--

LOCK TABLES `user_verification` WRITE;
/*!40000 ALTER TABLE `user_verification` DISABLE KEYS */;
INSERT INTO `user_verification` VALUES (544,1214,'$2a$10$cJpdMusaEg7vmRCAgkcLGu/YhtJgGTTIMt7a3234Q3fCcGKjmQNIm',1658891686132,1658913286132),(564,1244,'$2a$10$lgzd0RXAQOEpodwtHiatheKoV7AXpMTRo/F7AZR/guuyCNe9Z/Kba',1658892359117,1658913959117);
/*!40000 ALTER TABLE `user_verification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-15 22:57:12
