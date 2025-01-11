CREATE DATABASE  IF NOT EXISTS `satellite` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `satellite`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: satellite
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `email` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('ahale@example.org','iharper','female','1974-08-04','europe'),('boonemark@example.com','rroberts','male','1971-02-17','asia'),('brian81@example.net','bmurray','female','1947-04-11','asia'),('brianbarry@example.org','mortonjeffrey','male','1975-04-05','asia'),('brittany70@example.net','martin76','female','1984-04-18','asia'),('brownjohn@example.com','brittany29','male','1994-01-25','asia'),('bryanwalsh@example.com','miranda26','female','1989-05-06','atlantic'),('cmartin@example.org','sara74','male','1952-04-13','atlantic'),('courtneythomas@example.org','jessica78','female','1954-12-14','asia'),('cwatkins@example.com','utaylor','female','1936-06-19','asia'),('davidyoung@example.com','michelle42','male','2000-12-18','america'),('dbanks@example.com','christophergarcia','female','2006-03-16','europe'),('deborahchandler@example.org','monicagray','female','1961-03-02','europe'),('dianahodges@example.org','schneiderallen','female','2004-05-16','europe'),('ecurry@example.com','susanhuffman','male','1980-03-26','asia'),('eddie78@example.org','michaelbarajas','female','1951-04-12','asia'),('emilyshelton@example.com','nicolewright','female','1968-04-08','america'),('eric38@example.com','ashley28','male','1998-11-26','asia'),('eric65@example.net','daniel25','male','1980-01-09','europe'),('eric81@example.com','keith72','male','1958-10-23','atlantic'),('erin18@example.com','johnboyd','female','1972-03-12','europe'),('gphelps@example.org','rgriffith','female','1963-03-05','asia'),('halltara@example.net','hansencheryl','male','1976-03-16','atlantic'),('heather57@example.net','lindsaymartin','male','1959-09-14','america'),('hillbrenda@example.com','fmedina','male','1979-01-31','america'),('hroberts@example.org','christopherhart','male','1953-05-11','atlantic'),('ianmartinez@example.org','tammy08','female','1980-07-13','atlantic'),('ihall@example.org','wrightjerry','female','1944-09-29','europe'),('inavarro@example.com','laurenoconnor','male','1992-02-03','america'),('jacob50@example.net','murphythomas','female','1998-03-03','atlantic'),('jacquelinehunter@example.org','bsmith','female','1996-05-01','asia'),('jamie06@example.net','bobby10','female','1940-05-29','america'),('jennifer17@example.net','catherine02','male','1967-05-13','europe'),('joseph59@example.net','deborahbridges','female','2005-05-27','asia'),('joshuacook@example.net','adriana95','female','1995-02-20','america'),('katherine76@example.com','cheryltaylor','male','2003-06-19','atlantic'),('kelly35@example.net','hramirez','female','1966-10-17','america'),('kellyhall@example.com','stephaniejones','male','1966-12-09','america'),('knightbrandy@example.org','qcarr','female','1933-12-21','europe'),('kristin27@example.net','greentrevor','female','1934-04-02','america'),('kruegerellen@example.net','goodmanscott','female','1969-11-13','atlantic'),('kshah@example.com','matacarrie','female','1980-09-26','atlantic'),('lauren24@example.org','katherinephillips','female','1984-11-28','europe'),('lawsonmark@example.org','kara64','male','1954-09-19','asia'),('lisaarmstrong@example.com','gregory74','female','1967-05-31','atlantic'),('ljones@example.com','xfreeman','female','1954-07-25','asia'),('lorihunt@example.net','sharonyoung','male','1984-09-12','europe'),('madams@example.org','dmann','male','1987-08-19','atlantic'),('martinronald@example.org','donna43','female','1996-09-03','europe'),('masoncathy@example.net','oortiz','female','1995-02-12','america'),('mcdanielrachel@example.net','ufox','male','1986-11-29','america'),('mgamble@example.com','cheath','male','1995-02-13','asia'),('michaelgonzalez@example.org','ashleyjones','female','2000-06-29','europe'),('michaeljones@example.com','emarshall','female','1958-02-27','europe'),('mistymartinez@example.org','nhenry','female','1977-04-23','asia'),('moorediana@example.com','joneskristopher','female','1980-09-13','america'),('mooresteven@example.net','cordovamegan','male','1951-10-17','atlantic'),('mshaffer@example.net','ylittle','male','1976-06-26','europe'),('nathaniel15@example.org','danielmays','male','1945-09-03','asia'),('nhatfield@example.net','patrick11','male','1986-10-31','atlantic'),('nmitchell@example.com','williamsonkathleen','female','1964-12-10','atlantic'),('nsolis@example.com','tammygarrett','female','1983-10-03','america'),('paigemccarthy@example.net','josephjackson','female','1974-02-07','europe'),('pamela97@example.net','ruizjames','female','1995-09-30','atlantic'),('panderson@example.com','randerson','male','2002-01-11','asia'),('parkpatrick@example.net','fwhite','male','1939-08-06','europe'),('parsonsconnie@example.com','kristymorrow','male','2000-05-05','atlantic'),('patricia10@example.org','joneszachary','male','1952-06-22','america'),('pcollins@example.com','rhardy','male','1952-06-12','atlantic'),('powellbrent@example.net','millerjohn','male','1957-01-08','europe'),('raymondcarlson@example.org','rogersjason','female','1977-01-24','america'),('rhorton@example.com','odominguez','female','1941-07-22','america'),('ruizcarol@example.org','andrea83','male','1944-04-02','europe'),('ryan51@example.net','jaredwilliams','male','1977-08-13','europe'),('sbullock@example.org','olivia07','female','1955-10-22','asia'),('sguerrero@example.com','gloriakeller','female','1946-04-10','asia'),('simpsonrobert@example.net','lorihernandez','male','1999-12-29','europe'),('staceypeck@example.org','tiffany53','female','1974-07-20','europe'),('starkbrian@example.com','christophergardner','female','1985-12-25','asia'),('steven54@example.com','michael85','male','1990-10-22','asia'),('tclark@example.net','kimberlycastro','female','1956-03-23','europe'),('thomassingleton@example.org','dakota89','female','1983-04-10','america'),('thompsonsarah@example.org','nrobinson','female','1968-08-23','asia'),('timothy80@example.com','steven16','male','1983-09-13','atlantic'),('timothy82@example.com','morgantaylor','male','1949-03-17','atlantic'),('timothytucker@example.org','velasquezangel','male','1952-09-30','america'),('ubarrett@example.net','jake68','male','1992-06-22','asia'),('ustrong@example.net','jasoncurtis','female','1996-10-15','asia'),('vasquezchristina@example.net','jesusperez','female','1965-05-25','atlantic'),('vbaker@example.com','allison00','female','1962-10-14','atlantic'),('veronicajoseph@example.com','jamieduncan','male','1938-05-13','europe'),('whitemorgan@example.com','yodom','female','1981-07-11','asia'),('williamsmark@example.net','gordonkevin','male','1939-08-27','asia'),('wongchristina@example.net','shortmichael','female','1955-05-26','asia'),('wrightyolanda@example.org','qrogers','male','1952-12-20','atlantic'),('xharmon@example.com','amy75','male','1986-07-30','asia'),('xshort@example.org','tiffanybrown','female','1964-08-16','asia'),('yvega@example.net','laura02','male','1937-01-19','atlantic'),('zglenn@example.net','charles36','female','1982-01-19','asia'),('zstanley@example.net','vwebb','female','2003-07-04','europe');
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

-- Dump completed on 2024-04-04 17:45:35
