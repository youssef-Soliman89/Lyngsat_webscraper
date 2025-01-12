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
-- Table structure for table `satellite_networks`
--

DROP TABLE IF EXISTS `satellite_networks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `satellite_networks` (
  `satellite_id` varchar(250) NOT NULL,
  `network_id` varchar(250) NOT NULL,
  PRIMARY KEY (`satellite_id`,`network_id`),
  KEY `network_id` (`network_id`),
  CONSTRAINT `satellite_networks_ibfk_1` FOREIGN KEY (`satellite_id`) REFERENCES `satellites` (`url`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `satellite_networks_ibfk_2` FOREIGN KEY (`network_id`) REFERENCES `networks` (`url`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satellite_networks`
--

LOCK TABLES `satellite_networks` WRITE;
/*!40000 ALTER TABLE `satellite_networks` DISABLE KEYS */;
INSERT INTO `satellite_networks` VALUES ('https://www.lyngsat.com/tracker/TurkmenAlem-MonacoSat.html','https://www.lyngsat.com/packages/Alem-TV.html'),('https://www.lyngsat.com/tracker/Azerspace-1.html','https://www.lyngsat.com/packages/Azam-TV-46E.html'),('https://www.lyngsat.com/tracker/Eshail-1.html','https://www.lyngsat.com/packages/BeIn-26E.html'),('https://www.lyngsat.com/tracker/Nimiq-4.html','https://www.lyngsat.com/packages/Bell-TV-82W.html'),('https://www.lyngsat.com/tracker/Star-One-D1.html','https://www.lyngsat.com/packages/Canais-Globo.html'),('https://www.lyngsat.com/tracker/Eutelsat-16A.html','https://www.lyngsat.com/packages/Canal---Reunion.html'),('https://www.lyngsat.com/tracker/ChinaSat-6E.html','https://www.lyngsat.com/packages/CDM.html'),('https://www.lyngsat.com/tracker/ChinaSat-6E.html','https://www.lyngsat.com/packages/CHC.html'),('https://www.lyngsat.com/tracker/JCSAT-4B.html','https://www.lyngsat.com/packages/Digicel-Play.html'),('https://www.lyngsat.com/tracker/Eutelsat-16A.html','https://www.lyngsat.com/packages/DigitAlb.html'),('https://www.lyngsat.com/tracker/QuetzSat-1.html','https://www.lyngsat.com/packages/Dish-Mexico.html'),('https://www.lyngsat.com/tracker/EchoStar-16.html','https://www.lyngsat.com/packages/Dish-USA-61W.html'),('https://www.lyngsat.com/tracker/Nimiq-5.html','https://www.lyngsat.com/packages/Dish-USA-73W.html'),('https://www.lyngsat.com/tracker/Amos-4.html','https://www.lyngsat.com/packages/DishHome.html'),('https://www.lyngsat.com/tracker/SES-4.html','https://www.lyngsat.com/packages/Easy-TV-Cote-dIvoire.html'),('https://www.lyngsat.com/tracker/Eutelsat-5-West-B.html','https://www.lyngsat.com/packages/Fransat.html'),('https://www.lyngsat.com/tracker/Arsat-2.html','https://www.lyngsat.com/packages/INTV.html'),('https://www.lyngsat.com/tracker/SES-21.html','https://www.lyngsat.com/packages/Managed-Satellite-Distribution.html'),('https://www.lyngsat.com/tracker/ChinaSat-11.html','https://www.lyngsat.com/packages/Medianet.html'),('https://www.lyngsat.com/tracker/BulgariaSat-1.html','https://www.lyngsat.com/packages/Neosat.html'),('https://www.lyngsat.com/tracker/Eutelsat-16A.html','https://www.lyngsat.com/packages/New-World.html'),('https://www.lyngsat.com/tracker/Express-AT1.html','https://www.lyngsat.com/packages/NTV-Plus-Vostok.html'),('https://www.lyngsat.com/tracker/KazSat-3.html','https://www.lyngsat.com/packages/Otau-TV.html'),('https://www.lyngsat.com/tracker/Eutelsat-16A.html','https://www.lyngsat.com/packages/Parabole-Reunion.html'),('https://www.lyngsat.com/tracker/Sirius-XM-5.html','https://www.lyngsat.com/packages/Sirius-XM-Satellite-Radio-115W.html'),('https://www.lyngsat.com/tracker/XM-3.html','https://www.lyngsat.com/packages/Sirius-XM-Satellite-Radio-85W.html'),('https://www.lyngsat.com/tracker/AsiaSat-6-Thaicom-7.html','https://www.lyngsat.com/packages/SiTV.html'),('https://www.lyngsat.com/tracker/Sky-Brasil-1.html','https://www.lyngsat.com/packages/Sky-Brasil.html'),('https://www.lyngsat.com/tracker/Sky-Mexico-1.html','https://www.lyngsat.com/packages/Sky-Mexico-79W.html'),('https://www.lyngsat.com/tracker/Optus-D2.html','https://www.lyngsat.com/packages/Sky-New-Zealand.html'),('https://www.lyngsat.com/tracker/Intelsat-19.html','https://www.lyngsat.com/packages/Sky-Pacific.html'),('https://www.lyngsat.com/tracker/JCSAT-3A.html','https://www.lyngsat.com/packages/Sky-PerfecTV-128E.html'),('https://www.lyngsat.com/tracker/Express-80.html','https://www.lyngsat.com/packages/Telekarta-80E.html'),('https://www.lyngsat.com/tracker/AsiaSat-6-Thaicom-7.html','https://www.lyngsat.com/packages/Top-V-120E.html'),('https://www.lyngsat.com/tracker/ChinaSat-6D.html','https://www.lyngsat.com/packages/Top-V-125E.html'),('https://www.lyngsat.com/tracker/Express-AT1.html','https://www.lyngsat.com/packages/Trikolor-56E.html'),('https://www.lyngsat.com/tracker/Telstar-12-Vantage.html','https://www.lyngsat.com/packages/TuVes-HD.html'),('https://www.lyngsat.com/tracker/Hispasat-74W-1.html','https://www.lyngsat.com/packages/TVD.html'),('https://www.lyngsat.com/tracker/BRIsat.html','https://www.lyngsat.com/providers/--/Bricast.html'),('https://www.lyngsat.com/tracker/ChinaSat-9B.html','https://www.lyngsat.com/providers/--/CCTV.html'),('https://www.lyngsat.com/tracker/ChinaSat-6E.html','https://www.lyngsat.com/providers/--/China-National-Radio.html'),('https://www.lyngsat.com/tracker/Eutelsat-16A.html','https://www.lyngsat.com/providers/--/EClutch.html'),('https://www.lyngsat.com/tracker/Eutelsat-5-West-B.html','https://www.lyngsat.com/providers/--/Rai-Way-Sicilia-1.html'),('https://www.lyngsat.com/tracker/Al-Yah-1.html','https://www.lyngsat.com/providers/ae/Du.html'),('https://www.lyngsat.com/tracker/Paksat-1R.html','https://www.lyngsat.com/providers/ae/SS-Creative-Solutions.html'),('https://www.lyngsat.com/tracker/Al-Yah-1.html','https://www.lyngsat.com/providers/ae/Twofour54.html'),('https://www.lyngsat.com/tracker/Eutelsat-70B.html','https://www.lyngsat.com/providers/am/TRBNA.html'),('https://www.lyngsat.com/tracker/Intelsat-37e.html','https://www.lyngsat.com/providers/ao/TPA.html'),('https://www.lyngsat.com/tracker/Intelsat-34.html','https://www.lyngsat.com/providers/ar/Artear.html'),('https://www.lyngsat.com/tracker/Optus-D2.html','https://www.lyngsat.com/providers/au/ABC-Melbourne.html'),('https://www.lyngsat.com/tracker/Optus-D2.html','https://www.lyngsat.com/providers/au/ABC-NSW.html'),('https://www.lyngsat.com/tracker/Optus-D2.html','https://www.lyngsat.com/providers/au/ABC-NT.html'),('https://www.lyngsat.com/tracker/Optus-D2.html','https://www.lyngsat.com/providers/au/ABC-Queensland.html'),('https://www.lyngsat.com/tracker/Optus-D2.html','https://www.lyngsat.com/providers/au/ABC-SA.html'),('https://www.lyngsat.com/tracker/Optus-D2.html','https://www.lyngsat.com/providers/au/ABC-Sydney.html'),('https://www.lyngsat.com/tracker/Optus-D2.html','https://www.lyngsat.com/providers/au/ABC-Victoria.html'),('https://www.lyngsat.com/tracker/Optus-D2.html','https://www.lyngsat.com/providers/au/ABC-WA.html'),('https://www.lyngsat.com/tracker/Horizons-3e.html','https://www.lyngsat.com/providers/au/MySat.html'),('https://www.lyngsat.com/tracker/Eutelsat-8-West-B.html','https://www.lyngsat.com/providers/bg/Vivacom-MCPC.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Band-Amazonas.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Band-Bahia.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Band-Campinas.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Band-Minas.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Band-Parana.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Band-Rio-Interior.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Band-RS.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Band-SP-Interior.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Band-Vale.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Big-Brother-Brasil.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Boa-Vontade-TV.html'),('https://www.lyngsat.com/tracker/Intelsat-14.html','https://www.lyngsat.com/providers/br/Box-Brazil.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Canais-Globo.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Fish-TV.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Fundacao-Cultural-Riograndense.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Grupo-Bandeirantes.html'),('https://www.lyngsat.com/tracker/Intelsat-34.html','https://www.lyngsat.com/providers/br/Igreja-Crista-Maranata.html'),('https://www.lyngsat.com/tracker/ABS-3A.html','https://www.lyngsat.com/providers/br/IMPD-TV-Rondonia.html'),('https://www.lyngsat.com/tracker/ABS-3A.html','https://www.lyngsat.com/providers/br/IMPD-TV-Worldwide.html'),('https://www.lyngsat.com/tracker/ABS-3A.html','https://www.lyngsat.com/providers/br/IMPD-TV.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Inter-TV.html'),('https://www.lyngsat.com/tracker/Star-One-D1.html','https://www.lyngsat.com/providers/br/NET.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/RBI-TV.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Rede-21.html'),('https://www.lyngsat.com/tracker/Intelsat-14.html','https://www.lyngsat.com/providers/br/Rede-Amazonica.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Rede-Bahia.html'),('https://www.lyngsat.com/tracker/Intelsat-37e.html','https://www.lyngsat.com/providers/br/Rede-Centro-Oeste.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/Rede-CNT-Rio-de-Janeiro.html'),('https://www.lyngsat.com/tracker/Intelsat-14.html','https://www.lyngsat.com/providers/br/Rede-Mais.html'),('https://www.lyngsat.com/tracker/Star-One-D1.html','https://www.lyngsat.com/providers/br/Rede-Massa.html'),('https://www.lyngsat.com/tracker/SES-4.html','https://www.lyngsat.com/providers/br/Rede-Pampa-de-Radios.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/SBT-Rio.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/SIC-TV.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/TV-A-Critica.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/TV-Alterosa.html'),('https://www.lyngsat.com/tracker/SES-4.html','https://www.lyngsat.com/providers/br/TV-Antena-10.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/TV-Aparecida.html'),('https://www.lyngsat.com/tracker/Star-One-D1.html','https://www.lyngsat.com/providers/br/TV-Assembleia-Piaui.html'),('https://www.lyngsat.com/tracker/Intelsat-37e.html','https://www.lyngsat.com/providers/br/TV-Barriga-Verde.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/TV-Cancao-Nova.html'),('https://www.lyngsat.com/tracker/SES-4.html','https://www.lyngsat.com/providers/br/TV-Cidade-Fortaleza.html'),('https://www.lyngsat.com/tracker/SES-4.html','https://www.lyngsat.com/providers/br/TV-Cidade-Verde-Piaui.html'),('https://www.lyngsat.com/tracker/SES-4.html','https://www.lyngsat.com/providers/br/TV-Correio.html'),('https://www.lyngsat.com/tracker/Star-One-D1.html','https://www.lyngsat.com/providers/br/TV-Cultura-do-Para.html'),('https://www.lyngsat.com/tracker/Star-One-D1.html','https://www.lyngsat.com/providers/br/TV-Encontro-das-Aguas.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/TV-Gazeta-Alagoas.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/TV-Gazeta-Sao-Paulo.html'),('https://www.lyngsat.com/tracker/Intelsat-14.html','https://www.lyngsat.com/providers/br/TV-Guararapes.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/TV-Jangadeiro.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/TV-Mais-Familia.html'),('https://www.lyngsat.com/tracker/Star-One-D1.html','https://www.lyngsat.com/providers/br/TV-Mirante.html'),('https://www.lyngsat.com/tracker/Intelsat-14.html','https://www.lyngsat.com/providers/br/TV-Pai-Eterno.html'),('https://www.lyngsat.com/tracker/SES-4.html','https://www.lyngsat.com/providers/br/TV-Pampa.html'),('https://www.lyngsat.com/tracker/Star-One-D1.html','https://www.lyngsat.com/providers/br/TV-PE.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/TV-Serra-Dourada.html'),('https://www.lyngsat.com/tracker/Intelsat-37e.html','https://www.lyngsat.com/providers/br/TV-Sul-Bahia.html'),('https://www.lyngsat.com/tracker/Intelsat-14.html','https://www.lyngsat.com/providers/br/TV-Taroba-Cascavel.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/TV-Thathi-Campinas.html'),('https://www.lyngsat.com/tracker/Star-One-C3.html','https://www.lyngsat.com/providers/br/TV-Thathi-Vale.html'),('https://www.lyngsat.com/tracker/SES-4.html','https://www.lyngsat.com/providers/br/TV-Tropical.html'),('https://www.lyngsat.com/tracker/Intelsat-14.html','https://www.lyngsat.com/providers/br/Woohoo.html'),('https://www.lyngsat.com/tracker/G-Sat-9.html','https://www.lyngsat.com/providers/bt/BBS.html'),('https://www.lyngsat.com/tracker/Al-Yah-1.html','https://www.lyngsat.com/providers/ca/GEM-Group.html'),('https://www.lyngsat.com/tracker/Telstar-14R.html','https://www.lyngsat.com/providers/cl/Teletrak.html'),('https://www.lyngsat.com/tracker/Intelsat-21.html','https://www.lyngsat.com/providers/cl/TV-Nacional-de-Chile.html'),('https://www.lyngsat.com/tracker/Eutelsat-8-West-B.html','https://www.lyngsat.com/providers/cm/CRTV.html'),('https://www.lyngsat.com/tracker/ChinaSat-6D.html','https://www.lyngsat.com/providers/cn/CCTV.html'),('https://www.lyngsat.com/tracker/ChinaSat-6E.html','https://www.lyngsat.com/providers/cn/CCTV.html'),('https://www.lyngsat.com/tracker/ChinaSat-9.html','https://www.lyngsat.com/providers/cn/CCTV.html'),('https://www.lyngsat.com/tracker/Intelsat-34.html','https://www.lyngsat.com/providers/cn/CCTV.html'),('https://www.lyngsat.com/tracker/ChinaSat-6E.html','https://www.lyngsat.com/providers/cn/CETV.html'),('https://www.lyngsat.com/tracker/ChinaSat-6E.html','https://www.lyngsat.com/providers/cn/CGTN.html'),('https://www.lyngsat.com/tracker/Intelsat-19.html','https://www.lyngsat.com/providers/cn/China-Radio-International.html'),('https://www.lyngsat.com/tracker/ChinaSat-6E.html','https://www.lyngsat.com/providers/cn/JSBC.html'),('https://www.lyngsat.com/tracker/ChinaSat-6E.html','https://www.lyngsat.com/providers/cn/Nei-Monggol-TV.html'),('https://www.lyngsat.com/tracker/ChinaSat-6D.html','https://www.lyngsat.com/providers/cn/Shanghai-Media-Group.html'),('https://www.lyngsat.com/tracker/ChinaSat-6E.html','https://www.lyngsat.com/providers/cn/Shanghai-Media-Group.html'),('https://www.lyngsat.com/tracker/ChinaSat-6E.html','https://www.lyngsat.com/providers/cn/Sichuan-TV.html'),('https://www.lyngsat.com/tracker/ChinaSat-12.html','https://www.lyngsat.com/providers/cn/Voice-of-Strait.html'),('https://www.lyngsat.com/tracker/ChinaSat-6D.html','https://www.lyngsat.com/providers/cn/Xinjiang-TV.html'),('https://www.lyngsat.com/tracker/ChinaSat-6D.html','https://www.lyngsat.com/providers/cn/Xizang-TV.html'),('https://www.lyngsat.com/tracker/Intelsat-21.html','https://www.lyngsat.com/providers/co/Caracol-TV.html'),('https://www.lyngsat.com/tracker/Intelsat-21.html','https://www.lyngsat.com/providers/cr/Enlace.html'),('https://www.lyngsat.com/tracker/Intelsat-34.html','https://www.lyngsat.com/providers/cr/Repretel.html'),('https://www.lyngsat.com/tracker/Al-Yah-1.html','https://www.lyngsat.com/providers/de/North-Telecom.html'),('https://www.lyngsat.com/tracker/Intelsat-14.html','https://www.lyngsat.com/providers/do/Antena-7.html'),('https://www.lyngsat.com/tracker/Intelsat-14.html','https://www.lyngsat.com/providers/do/Sertel.html'),('https://www.lyngsat.com/tracker/Alcomsat-1.html','https://www.lyngsat.com/providers/dz/TDA.html'),('https://www.lyngsat.com/tracker/Eutelsat-172B.html','https://www.lyngsat.com/providers/fj/Walesi.html'),('https://www.lyngsat.com/tracker/TurkmenAlem-MonacoSat.html','https://www.lyngsat.com/providers/fr/Persiana-Media-Group.html'),('https://www.lyngsat.com/tracker/Eutelsat-8-West-B.html','https://www.lyngsat.com/providers/fr/RFI.html'),('https://www.lyngsat.com/tracker/Intelsat-17.html','https://www.lyngsat.com/providers/fr/TV5Monde.html'),('https://www.lyngsat.com/tracker/AsiaSat-9.html','https://www.lyngsat.com/providers/hk/AsiaSat.html'),('https://www.lyngsat.com/tracker/Telstar-18-Vantage.html','https://www.lyngsat.com/providers/hk/SpeedCast.html'),('https://www.lyngsat.com/tracker/Intelsat-14.html','https://www.lyngsat.com/providers/hn/Suyapa-TV.html'),('https://www.lyngsat.com/tracker/Intelsat-14.html','https://www.lyngsat.com/providers/hn/Televicentro.html'),('https://www.lyngsat.com/tracker/Telkom-3S.html','https://www.lyngsat.com/providers/id/Metra-TV.html'),('https://www.lyngsat.com/tracker/G-Sat-18.html','https://www.lyngsat.com/providers/in/AIR.html'),('https://www.lyngsat.com/tracker/G-Sat-18.html','https://www.lyngsat.com/providers/in/Doordarshan.html'),('https://www.lyngsat.com/tracker/Intelsat-17.html','https://www.lyngsat.com/providers/in/Indiasign.html'),('https://www.lyngsat.com/tracker/Intelsat-17.html','https://www.lyngsat.com/providers/in/Indo-Teleports.html'),('https://www.lyngsat.com/tracker/Intelsat-17.html','https://www.lyngsat.com/providers/in/New-Delhi-TV.html'),('https://www.lyngsat.com/tracker/Intelsat-17.html','https://www.lyngsat.com/providers/in/Planetcast.html'),('https://www.lyngsat.com/tracker/ChinaSat-12.html','https://www.lyngsat.com/providers/in/Raj-TV-Network.html'),('https://www.lyngsat.com/tracker/AsiaSat-7.html','https://www.lyngsat.com/providers/in/Sahara-Samay.html'),('https://www.lyngsat.com/tracker/Intelsat-17.html','https://www.lyngsat.com/providers/in/Sun-TV-Network.html'),('https://www.lyngsat.com/tracker/Intelsat-17.html','https://www.lyngsat.com/providers/in/Tata-Communications.html'),('https://www.lyngsat.com/tracker/Galaxy-18.html','https://www.lyngsat.com/providers/it/IKO-MG.html'),('https://www.lyngsat.com/tracker/Intelsat-34.html','https://www.lyngsat.com/providers/jm/SportsMax.html'),('https://www.lyngsat.com/tracker/Intelsat-19.html','https://www.lyngsat.com/providers/jp/NHK-World-Network.html'),('https://www.lyngsat.com/tracker/Intelsat-21.html','https://www.lyngsat.com/providers/jp/NHK-World-Network.html'),('https://www.lyngsat.com/tracker/JCSAT-4B.html','https://www.lyngsat.com/providers/jp/Sky-PerfecTV.html'),('https://www.lyngsat.com/tracker/Intelsat-22.html','https://www.lyngsat.com/providers/ke/KTN.html'),('https://www.lyngsat.com/tracker/Intelsat-39.html','https://www.lyngsat.com/providers/ke/RMS-Radio.html'),('https://www.lyngsat.com/tracker/Amos-17.html','https://www.lyngsat.com/providers/ke/Signet.html'),('https://www.lyngsat.com/tracker/Eutelsat-10B.html','https://www.lyngsat.com/providers/ke/StarTimes-TV-Kenya.html'),('https://www.lyngsat.com/tracker/Galaxy-37-Horizons-4.html','https://www.lyngsat.com/providers/kr/MBC-America.html'),('https://www.lyngsat.com/tracker/LaoSat-1.html','https://www.lyngsat.com/providers/la/LaoSat.html'),('https://www.lyngsat.com/tracker/Intelsat-19.html','https://www.lyngsat.com/providers/lu/Intelsat.html'),('https://www.lyngsat.com/tracker/Intelsat-21.html','https://www.lyngsat.com/providers/lu/Intelsat.html'),('https://www.lyngsat.com/tracker/SES-21.html','https://www.lyngsat.com/providers/lu/SES.html'),('https://www.lyngsat.com/tracker/Arabsat-5C.html','https://www.lyngsat.com/providers/ma/Hit-Radio.html'),('https://www.lyngsat.com/tracker/Intelsat-37e.html','https://www.lyngsat.com/providers/ml/ORTM.html'),('https://www.lyngsat.com/tracker/LaoSat-1.html','https://www.lyngsat.com/providers/mm/MWD-Digital-TV.html'),('https://www.lyngsat.com/tracker/Eutelsat-115-West-B.html','https://www.lyngsat.com/providers/mx/Canal-10-Chiapas.html'),('https://www.lyngsat.com/tracker/Eutelsat-115-West-B.html','https://www.lyngsat.com/providers/mx/Canal-del-Congreso-451.html'),('https://www.lyngsat.com/tracker/Eutelsat-115-West-B.html','https://www.lyngsat.com/providers/mx/Grupo-Radio-Centro.html'),('https://www.lyngsat.com/tracker/Intelsat-21.html','https://www.lyngsat.com/providers/mx/Maria-Vision.html'),('https://www.lyngsat.com/tracker/Intelsat-34.html','https://www.lyngsat.com/providers/mx/Televisa-Networks.html'),('https://www.lyngsat.com/tracker/Galaxy-19.html','https://www.lyngsat.com/providers/mx/Televisa.html'),('https://www.lyngsat.com/tracker/QuetzSat-1.html','https://www.lyngsat.com/providers/mx/TV-Mexiquense.html'),('https://www.lyngsat.com/tracker/Azerspace-1.html','https://www.lyngsat.com/providers/ng/Silverbird-TV.html'),('https://www.lyngsat.com/tracker/Intelsat-34.html','https://www.lyngsat.com/providers/ni/Albavision.html'),('https://www.lyngsat.com/tracker/Apstar-7.html','https://www.lyngsat.com/providers/np/Kantipur-Media-Group.html'),('https://www.lyngsat.com/tracker/Optus-D2.html','https://www.lyngsat.com/providers/nz/Freeview.html'),('https://www.lyngsat.com/tracker/Intelsat-19.html','https://www.lyngsat.com/providers/nz/Pasifika-TV.html'),('https://www.lyngsat.com/tracker/Intelsat-14.html','https://www.lyngsat.com/providers/pe/CRP-Radios.html'),('https://www.lyngsat.com/tracker/Intelsat-14.html','https://www.lyngsat.com/providers/pe/Grupo-ATV.html'),('https://www.lyngsat.com/tracker/Intelsat-14.html','https://www.lyngsat.com/providers/pe/Grupo-RPP.html'),('https://www.lyngsat.com/tracker/Intelsat-14.html','https://www.lyngsat.com/providers/pe/IRTP.html'),('https://www.lyngsat.com/tracker/Intelsat-14.html','https://www.lyngsat.com/providers/pe/Latina.html'),('https://www.lyngsat.com/tracker/Intelsat-19.html','https://www.lyngsat.com/providers/ph/ABS-CBN.html'),('https://www.lyngsat.com/tracker/SES-22.html','https://www.lyngsat.com/providers/ph/GMA-Network.html'),('https://www.lyngsat.com/tracker/Telstar-18-Vantage.html','https://www.lyngsat.com/providers/ph/GMA-Network.html'),('https://www.lyngsat.com/tracker/Telstar-18-Vantage.html','https://www.lyngsat.com/providers/ph/Peoples-TV.html'),('https://www.lyngsat.com/tracker/Telstar-18-Vantage.html','https://www.lyngsat.com/providers/ph/Solar-Entertainment.html'),('https://www.lyngsat.com/tracker/Telstar-18-Vantage.html','https://www.lyngsat.com/providers/ph/TV-5-Network.html'),('https://www.lyngsat.com/tracker/Telstar-18-Vantage.html','https://www.lyngsat.com/providers/ph/Viva-Entertainment.html'),('https://www.lyngsat.com/tracker/Telstar-18-Vantage.html','https://www.lyngsat.com/providers/ph/Zoe-Broadcasting-Network.html'),('https://www.lyngsat.com/tracker/Paksat-1R.html','https://www.lyngsat.com/providers/pk/AVT-Channels.html'),('https://www.lyngsat.com/tracker/Paksat-1R.html','https://www.lyngsat.com/providers/pk/Dunya-Media-Group.html'),('https://www.lyngsat.com/tracker/Paksat-1R.html','https://www.lyngsat.com/providers/pk/Express.html'),('https://www.lyngsat.com/tracker/Paksat-1R.html','https://www.lyngsat.com/providers/pk/Geo-TV-Network.html'),('https://www.lyngsat.com/tracker/Paksat-1R.html','https://www.lyngsat.com/providers/pk/Hum-Network.html'),('https://www.lyngsat.com/tracker/Paksat-1R.html','https://www.lyngsat.com/providers/pk/KTN-Network.html'),('https://www.lyngsat.com/tracker/Paksat-1R.html','https://www.lyngsat.com/providers/pk/PTV-Network.html'),('https://www.lyngsat.com/tracker/Paksat-1R.html','https://www.lyngsat.com/providers/pk/Radio-Pakistan.html'),('https://www.lyngsat.com/tracker/Paksat-1R.html','https://www.lyngsat.com/providers/pk/Suno-FM.html'),('https://www.lyngsat.com/tracker/Paksat-1R.html','https://www.lyngsat.com/providers/pk/TeleNest.html'),('https://www.lyngsat.com/tracker/Paksat-1R.html','https://www.lyngsat.com/providers/pk/VU-TV-Network.html'),('https://www.lyngsat.com/tracker/Intelsat-901.html','https://www.lyngsat.com/providers/pt/RTP.html'),('https://www.lyngsat.com/tracker/Yamal-401.html','https://www.lyngsat.com/providers/ru/Gazprom-Space-Systems.html'),('https://www.lyngsat.com/tracker/Express-103.html','https://www.lyngsat.com/providers/ru/RSCC.html'),('https://www.lyngsat.com/tracker/Express-AM6.html','https://www.lyngsat.com/providers/ru/RSCC.html'),('https://www.lyngsat.com/tracker/Express-AM8.html','https://www.lyngsat.com/providers/ru/RSCC.html'),('https://www.lyngsat.com/tracker/Express-AM6.html','https://www.lyngsat.com/providers/ru/RTRS-1.html'),('https://www.lyngsat.com/tracker/Express-AM7.html','https://www.lyngsat.com/providers/ru/RTRS-1.html'),('https://www.lyngsat.com/tracker/Express-AMU3.html','https://www.lyngsat.com/providers/ru/RTRS-1.html'),('https://www.lyngsat.com/tracker/Express-AMU7.html','https://www.lyngsat.com/providers/ru/RTRS-1.html'),('https://www.lyngsat.com/tracker/Yamal-401.html','https://www.lyngsat.com/providers/ru/RTRS-1.html'),('https://www.lyngsat.com/tracker/Yamal-601.html','https://www.lyngsat.com/providers/ru/RTRS-1.html'),('https://www.lyngsat.com/tracker/Express-AM6.html','https://www.lyngsat.com/providers/ru/RTRS-2.html'),('https://www.lyngsat.com/tracker/Express-AM7.html','https://www.lyngsat.com/providers/ru/RTRS-2.html'),('https://www.lyngsat.com/tracker/Yamal-601.html','https://www.lyngsat.com/providers/ru/RTRS-2.html'),('https://www.lyngsat.com/tracker/Express-AM6.html','https://www.lyngsat.com/providers/ru/RTRS-Belgorod.html'),('https://www.lyngsat.com/tracker/Express-AM6.html','https://www.lyngsat.com/providers/ru/RTRS-Bryansk.html'),('https://www.lyngsat.com/tracker/Yamal-601.html','https://www.lyngsat.com/providers/ru/RTRS-Chelyabinsk.html'),('https://www.lyngsat.com/tracker/Express-AM7.html','https://www.lyngsat.com/providers/ru/RTRS-Kaluga.html'),('https://www.lyngsat.com/tracker/Express-AM7.html','https://www.lyngsat.com/providers/ru/RTRS-Karelija.html'),('https://www.lyngsat.com/tracker/Express-AM6.html','https://www.lyngsat.com/providers/ru/RTRS-Krasnodar.html'),('https://www.lyngsat.com/tracker/Yamal-401.html','https://www.lyngsat.com/providers/ru/RTRS-Krasnoyarsk.html'),('https://www.lyngsat.com/tracker/Express-AM7.html','https://www.lyngsat.com/providers/ru/RTRS-Murmansk.html'),('https://www.lyngsat.com/tracker/Express-AM6.html','https://www.lyngsat.com/providers/ru/RTRS-Rostov.html'),('https://www.lyngsat.com/tracker/Yamal-601.html','https://www.lyngsat.com/providers/ru/RTRS-Saratov.html'),('https://www.lyngsat.com/tracker/Express-AM6.html','https://www.lyngsat.com/providers/ru/RTRS-Smolensk.html'),('https://www.lyngsat.com/tracker/Express-AM6.html','https://www.lyngsat.com/providers/ru/RTRS-Sochi.html'),('https://www.lyngsat.com/tracker/Express-AM7.html','https://www.lyngsat.com/providers/ru/RTRS-Stavropol.html'),('https://www.lyngsat.com/tracker/Yamal-401.html','https://www.lyngsat.com/providers/ru/RTRS-Tomsk.html'),('https://www.lyngsat.com/tracker/Express-AM7.html','https://www.lyngsat.com/providers/ru/RTRS-Tula.html'),('https://www.lyngsat.com/tracker/Yamal-601.html','https://www.lyngsat.com/providers/ru/RTRS-Tyumen.html'),('https://www.lyngsat.com/tracker/Express-AM7.html','https://www.lyngsat.com/providers/ru/RTRS-Voronezh.html'),('https://www.lyngsat.com/tracker/Express-AMU3.html','https://www.lyngsat.com/providers/ru/RTRS-Yakutia.html'),('https://www.lyngsat.com/tracker/Yamal-601.html','https://www.lyngsat.com/providers/ru/RTRS-Yamal.html'),('https://www.lyngsat.com/tracker/Express-AM6.html','https://www.lyngsat.com/providers/ru/RTRS-Yaroslavl.html'),('https://www.lyngsat.com/tracker/Yamal-601.html','https://www.lyngsat.com/providers/ru/RTRS-Yugoria.html'),('https://www.lyngsat.com/tracker/Express-AM6.html','https://www.lyngsat.com/providers/ru/RTRS.html'),('https://www.lyngsat.com/tracker/Express-AM7.html','https://www.lyngsat.com/providers/ru/RTRS.html'),('https://www.lyngsat.com/tracker/Express-AMU3.html','https://www.lyngsat.com/providers/ru/RTRS.html'),('https://www.lyngsat.com/tracker/Express-AMU7.html','https://www.lyngsat.com/providers/ru/RTRS.html'),('https://www.lyngsat.com/tracker/Yamal-401.html','https://www.lyngsat.com/providers/ru/RTRS.html'),('https://www.lyngsat.com/tracker/Yamal-601.html','https://www.lyngsat.com/providers/ru/RTRS.html'),('https://www.lyngsat.com/tracker/Express-103.html','https://www.lyngsat.com/providers/ru/Russkiy-Mir.html'),('https://www.lyngsat.com/tracker/Eutelsat-10B.html','https://www.lyngsat.com/providers/rw/Rwanda-TV.html'),('https://www.lyngsat.com/tracker/Arabsat-5C.html','https://www.lyngsat.com/providers/sa/Arabsat.html'),('https://www.lyngsat.com/tracker/Al-Yah-1.html','https://www.lyngsat.com/providers/sa/Saudi-Broadcasting-Authority.html'),('https://www.lyngsat.com/tracker/Arabsat-5C.html','https://www.lyngsat.com/providers/so/DalSat-Global.html'),('https://www.lyngsat.com/tracker/Eutelsat-10B.html','https://www.lyngsat.com/providers/tg/New-World-TV.html'),('https://www.lyngsat.com/tracker/Eutelsat-10B.html','https://www.lyngsat.com/providers/tg/TVT.html'),('https://www.lyngsat.com/tracker/Arabsat-5C.html','https://www.lyngsat.com/providers/tn/ASBU-Bouquet.html'),('https://www.lyngsat.com/tracker/AsiaSat-9.html','https://www.lyngsat.com/providers/tw/Chunghwa-Telecom.html'),('https://www.lyngsat.com/tracker/ST-2.html','https://www.lyngsat.com/providers/tw/Chunghwa-Telecom.html'),('https://www.lyngsat.com/tracker/ST-2.html','https://www.lyngsat.com/providers/tw/NER-Taipei.html'),('https://www.lyngsat.com/tracker/ST-2.html','https://www.lyngsat.com/providers/tw/TAS.html'),('https://www.lyngsat.com/tracker/Intelsat-22.html','https://www.lyngsat.com/providers/tz/IPP-Media.html'),('https://www.lyngsat.com/tracker/Intelsat-22.html','https://www.lyngsat.com/providers/tz/TBC.html'),('https://www.lyngsat.com/tracker/Al-Yah-1.html','https://www.lyngsat.com/providers/uk/Arqiva.html'),('https://www.lyngsat.com/tracker/Intelsat-19.html','https://www.lyngsat.com/providers/uk/BBC-World-Service.html'),('https://www.lyngsat.com/tracker/Intelsat-34.html','https://www.lyngsat.com/providers/uk/BBC-World-Service.html'),('https://www.lyngsat.com/tracker/NSS-12.html','https://www.lyngsat.com/providers/uk/BFBS.html'),('https://www.lyngsat.com/tracker/Telstar-12-Vantage.html','https://www.lyngsat.com/providers/uk/Freeview.html'),('https://www.lyngsat.com/tracker/TurkmenAlem-MonacoSat.html','https://www.lyngsat.com/providers/uk/Wide-Network-Solutions.html'),('https://www.lyngsat.com/tracker/Galaxy-30.html','https://www.lyngsat.com/providers/us/A-E-Networks.html'),('https://www.lyngsat.com/tracker/NSS-12.html','https://www.lyngsat.com/providers/us/Alhurra-TV.html'),('https://www.lyngsat.com/tracker/Galaxy-30.html','https://www.lyngsat.com/providers/us/AMC-Networks.html'),('https://www.lyngsat.com/tracker/Intelsat-18.html','https://www.lyngsat.com/providers/us/American-Forces-Network.html'),('https://www.lyngsat.com/tracker/Intelsat-35e.html','https://www.lyngsat.com/providers/us/American-Forces-Network.html'),('https://www.lyngsat.com/tracker/NSS-12.html','https://www.lyngsat.com/providers/us/American-Forces-Network.html'),('https://www.lyngsat.com/tracker/NSS-9.html','https://www.lyngsat.com/providers/us/American-Forces-Network.html'),('https://www.lyngsat.com/tracker/Intelsat-18.html','https://www.lyngsat.com/providers/us/Anuvu.html'),('https://www.lyngsat.com/tracker/Intelsat-35e.html','https://www.lyngsat.com/providers/us/Anuvu.html'),('https://www.lyngsat.com/tracker/NSS-12.html','https://www.lyngsat.com/providers/us/Anuvu.html'),('https://www.lyngsat.com/tracker/Telstar-14R.html','https://www.lyngsat.com/providers/us/Anuvu.html'),('https://www.lyngsat.com/tracker/Galaxy-33.html','https://www.lyngsat.com/providers/us/Bally-Sports.html'),('https://www.lyngsat.com/tracker/Galaxy-33.html','https://www.lyngsat.com/providers/us/Big-Ten-Network.html'),('https://www.lyngsat.com/tracker/Intelsat-34.html','https://www.lyngsat.com/providers/us/Bloomberg-TV.html'),('https://www.lyngsat.com/tracker/Galaxy-30.html','https://www.lyngsat.com/providers/us/C-SPAN.html'),('https://www.lyngsat.com/tracker/Intelsat-34.html','https://www.lyngsat.com/providers/us/CNN.html'),('https://www.lyngsat.com/tracker/ABS-3A.html','https://www.lyngsat.com/providers/us/CruiseSat.html'),('https://www.lyngsat.com/tracker/Intelsat-21.html','https://www.lyngsat.com/providers/us/CTN.html'),('https://www.lyngsat.com/tracker/Galaxy-37-Horizons-4.html','https://www.lyngsat.com/providers/us/Encompass.html'),('https://www.lyngsat.com/tracker/Intelsat-17.html','https://www.lyngsat.com/providers/us/Encompass.html'),('https://www.lyngsat.com/tracker/Galaxy-18.html','https://www.lyngsat.com/providers/us/ESPN.html'),('https://www.lyngsat.com/tracker/Intelsat-21.html','https://www.lyngsat.com/providers/us/ESPN.html'),('https://www.lyngsat.com/tracker/Intelsat-34.html','https://www.lyngsat.com/providers/us/ESPN.html'),('https://www.lyngsat.com/tracker/Galaxy-33.html','https://www.lyngsat.com/providers/us/EWTN.html'),('https://www.lyngsat.com/tracker/Galaxy-30.html','https://www.lyngsat.com/providers/us/GCI.html'),('https://www.lyngsat.com/tracker/Galaxy-37-Horizons-4.html','https://www.lyngsat.com/providers/us/GCI.html'),('https://www.lyngsat.com/tracker/Intelsat-21.html','https://www.lyngsat.com/providers/us/HBO-Network-Latinoamerica.html'),('https://www.lyngsat.com/tracker/Intelsat-34.html','https://www.lyngsat.com/providers/us/HBO-Network-Latinoamerica.html'),('https://www.lyngsat.com/tracker/Galaxy-33.html','https://www.lyngsat.com/providers/us/HBO-The-Works.html'),('https://www.lyngsat.com/tracker/Galaxy-37-Horizons-4.html','https://www.lyngsat.com/providers/us/Herring-Networks.html'),('https://www.lyngsat.com/tracker/SES-22.html','https://www.lyngsat.com/providers/us/In-Demand.html'),('https://www.lyngsat.com/tracker/SES-22.html','https://www.lyngsat.com/providers/us/ION-Media-Networks.html'),('https://www.lyngsat.com/tracker/Galaxy-33.html','https://www.lyngsat.com/providers/us/Media-Comm.html'),('https://www.lyngsat.com/tracker/Galaxy-18.html','https://www.lyngsat.com/providers/us/MLB-Network.html'),('https://www.lyngsat.com/tracker/Galaxy-37-Horizons-4.html','https://www.lyngsat.com/providers/us/NASA-TV.html'),('https://www.lyngsat.com/tracker/Galaxy-30.html','https://www.lyngsat.com/providers/us/NBC-Universal.html'),('https://www.lyngsat.com/tracker/Intelsat-19.html','https://www.lyngsat.com/providers/us/Paramount-International-Networks.html'),('https://www.lyngsat.com/tracker/Intelsat-21.html','https://www.lyngsat.com/providers/us/Paramount-Networks-Americas.html'),('https://www.lyngsat.com/tracker/Galaxy-30.html','https://www.lyngsat.com/providers/us/ShopHQ.html'),('https://www.lyngsat.com/tracker/Galaxy-30.html','https://www.lyngsat.com/providers/us/Showtime-HD-East-Plex-2.html'),('https://www.lyngsat.com/tracker/Galaxy-33.html','https://www.lyngsat.com/providers/us/Starz.html'),('https://www.lyngsat.com/tracker/Galaxy-37-Horizons-4.html','https://www.lyngsat.com/providers/us/Starz.html'),('https://www.lyngsat.com/tracker/Galaxy-18.html','https://www.lyngsat.com/providers/us/Trinity-Broadcasting.html'),('https://www.lyngsat.com/tracker/Galaxy-30.html','https://www.lyngsat.com/providers/us/Turner.html'),('https://www.lyngsat.com/tracker/Intelsat-21.html','https://www.lyngsat.com/providers/us/Turner.html'),('https://www.lyngsat.com/tracker/Intelsat-34.html','https://www.lyngsat.com/providers/us/Turner.html'),('https://www.lyngsat.com/tracker/Galaxy-18.html','https://www.lyngsat.com/providers/us/Univision.html'),('https://www.lyngsat.com/tracker/NSS-12.html','https://www.lyngsat.com/providers/us/VoA.html'),('https://www.lyngsat.com/tracker/Eutelsat-70B.html','https://www.lyngsat.com/providers/us/Voice-of-America.html'),('https://www.lyngsat.com/tracker/Telstar-12-Vantage.html','https://www.lyngsat.com/providers/us/Voice-of-America.html'),('https://www.lyngsat.com/tracker/Galaxy-18.html','https://www.lyngsat.com/providers/us/Walt-Disney-TV.html'),('https://www.lyngsat.com/tracker/Intelsat-34.html','https://www.lyngsat.com/providers/us/Walt-Disney-TV.html'),('https://www.lyngsat.com/tracker/Eutelsat-21B.html','https://www.lyngsat.com/providers/us/Warner-Bros-Discovery.html'),('https://www.lyngsat.com/tracker/Galaxy-37-Horizons-4.html','https://www.lyngsat.com/providers/us/Warner-Bros-Discovery.html'),('https://www.lyngsat.com/tracker/Intelsat-19.html','https://www.lyngsat.com/providers/us/Warner-Bros-Discovery.html'),('https://www.lyngsat.com/tracker/Intelsat-21.html','https://www.lyngsat.com/providers/us/Warner-Bros-Discovery.html'),('https://www.lyngsat.com/tracker/Intelsat-14.html','https://www.lyngsat.com/providers/ve/SiBCI.html'),('https://www.lyngsat.com/tracker/Apstar-6C.html','https://www.lyngsat.com/providers/vn/VTV.html'),('https://www.lyngsat.com/tracker/Eutelsat-8-West-B.html','https://www.lyngsat.com/providers/zm/TopStar.html'),('https://www.lyngsat.com/tracker/Intelsat-33e.html','https://www.lyngsat.com/providers/zm/ZNBC.html');
/*!40000 ALTER TABLE `satellite_networks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-04 17:45:34
