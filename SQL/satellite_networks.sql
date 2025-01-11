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
-- Table structure for table `networks`
--

DROP TABLE IF EXISTS `networks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `networks` (
  `url` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `language` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networks`
--

LOCK TABLES `networks` WRITE;
/*!40000 ALTER TABLE `networks` DISABLE KEYS */;
INSERT INTO `networks` VALUES ('https://www.lyngsat.com/packages/Alem-TV.html','Älem TV',''),('https://www.lyngsat.com/packages/Azam-TV-46E.html','Azam TV',''),('https://www.lyngsat.com/packages/BeIn-26E.html','Aljazeera',''),('https://www.lyngsat.com/packages/Bell-TV-82W.html','Bell TV',''),('https://www.lyngsat.com/packages/Canais-Globo.html','Canais Globo',''),('https://www.lyngsat.com/packages/Canal---Reunion.html','Canal + Réunion',''),('https://www.lyngsat.com/packages/CDM.html','CDM',''),('https://www.lyngsat.com/packages/CHC.html','CHC',''),('https://www.lyngsat.com/packages/Digicel-Play.html','Digicel Play',''),('https://www.lyngsat.com/packages/DigitAlb.html','DigitAlb',''),('https://www.lyngsat.com/packages/Dish-Mexico.html','Dish Mexico',''),('https://www.lyngsat.com/packages/Dish-USA-61W.html','Dish USA',''),('https://www.lyngsat.com/packages/Dish-USA-73W.html','Dish USA',''),('https://www.lyngsat.com/packages/DishHome.html','DishHome',''),('https://www.lyngsat.com/packages/Easy-TV-Cote-dIvoire.html','Easy TV Côte d\'Ivoire',''),('https://www.lyngsat.com/packages/Fransat.html','Fransat',''),('https://www.lyngsat.com/packages/INTV.html','INTV',''),('https://www.lyngsat.com/packages/Managed-Satellite-Distribution.html','Managed Satellite Distribution',''),('https://www.lyngsat.com/packages/Medianet.html','Medianet',''),('https://www.lyngsat.com/packages/Neosat.html','Neosat',''),('https://www.lyngsat.com/packages/New-World.html','New World',''),('https://www.lyngsat.com/packages/NTV-Plus-Vostok.html','NTV Plus Vostok',''),('https://www.lyngsat.com/packages/Otau-TV.html','Otau TV',''),('https://www.lyngsat.com/packages/Parabole-Reunion.html','Parabole Réunion',''),('https://www.lyngsat.com/packages/Sirius-XM-Satellite-Radio-115W.html','Sirius XM Satellite Radio',''),('https://www.lyngsat.com/packages/Sirius-XM-Satellite-Radio-85W.html','Sirius XM Satellite Radio',''),('https://www.lyngsat.com/packages/SiTV.html','SiTV',''),('https://www.lyngsat.com/packages/Sky-Brasil.html','Sky Brasil',''),('https://www.lyngsat.com/packages/Sky-Mexico-79W.html','Sky México',''),('https://www.lyngsat.com/packages/Sky-New-Zealand.html','Sky New Zealand',''),('https://www.lyngsat.com/packages/Sky-Pacific.html','Sky Pacific',''),('https://www.lyngsat.com/packages/Sky-PerfecTV-128E.html','Sky PerfecTV!',''),('https://www.lyngsat.com/packages/Telekarta-80E.html','Telekarta',''),('https://www.lyngsat.com/packages/Top-V-120E.html','Top V',''),('https://www.lyngsat.com/packages/Top-V-125E.html','Top V',''),('https://www.lyngsat.com/packages/Trikolor-56E.html','Trikolor',''),('https://www.lyngsat.com/packages/TuVes-HD.html','TuVes HD',''),('https://www.lyngsat.com/packages/TVD.html','TVD',''),('https://www.lyngsat.com/providers/--/Bricast.html','Bricast',''),('https://www.lyngsat.com/providers/--/CCTV.html','CCTV',''),('https://www.lyngsat.com/providers/--/China-National-Radio.html','China National Radio',''),('https://www.lyngsat.com/providers/--/EClutch.html','EClutch',''),('https://www.lyngsat.com/providers/--/Rai-Way-Sicilia-1.html','Rai Way Sicilia 1',''),('https://www.lyngsat.com/providers/ae/Du.html','Du',''),('https://www.lyngsat.com/providers/ae/SS-Creative-Solutions.html','SS Creative Solutions',''),('https://www.lyngsat.com/providers/ae/Twofour54.html','Twofour54',''),('https://www.lyngsat.com/providers/am/TRBNA.html','TRBNA',''),('https://www.lyngsat.com/providers/ao/TPA.html','TPA',''),('https://www.lyngsat.com/providers/ar/Artear.html','Artear',''),('https://www.lyngsat.com/providers/au/ABC-Melbourne.html','ABC Melbourne',''),('https://www.lyngsat.com/providers/au/ABC-NSW.html','ABC NSW',''),('https://www.lyngsat.com/providers/au/ABC-NT.html','ABC NT',''),('https://www.lyngsat.com/providers/au/ABC-Queensland.html','ABC Queensland',''),('https://www.lyngsat.com/providers/au/ABC-SA.html','ABC SA',''),('https://www.lyngsat.com/providers/au/ABC-Sydney.html','ABC Sydney',''),('https://www.lyngsat.com/providers/au/ABC-Victoria.html','ABC Victoria',''),('https://www.lyngsat.com/providers/au/ABC-WA.html','ABC WA',''),('https://www.lyngsat.com/providers/au/MySat.html','MySat',''),('https://www.lyngsat.com/providers/bg/Vivacom-MCPC.html','Vivacom MCPC',''),('https://www.lyngsat.com/providers/br/Band-Amazonas.html','Band Amazonas',''),('https://www.lyngsat.com/providers/br/Band-Bahia.html','Band Bahia',''),('https://www.lyngsat.com/providers/br/Band-Campinas.html','Band Campinas',''),('https://www.lyngsat.com/providers/br/Band-Minas.html','Band Minas',''),('https://www.lyngsat.com/providers/br/Band-Parana.html','Band Paraná',''),('https://www.lyngsat.com/providers/br/Band-Rio-Interior.html','Band Rio Interior',''),('https://www.lyngsat.com/providers/br/Band-RS.html','Band RS',''),('https://www.lyngsat.com/providers/br/Band-SP-Interior.html','Band SP Interior',''),('https://www.lyngsat.com/providers/br/Band-Vale.html','Band Vale',''),('https://www.lyngsat.com/providers/br/Big-Brother-Brasil.html','Big Brother Brasil',''),('https://www.lyngsat.com/providers/br/Boa-Vontade-TV.html','Boa Vontade TV',''),('https://www.lyngsat.com/providers/br/Box-Brazil.html','Box Brazil',''),('https://www.lyngsat.com/providers/br/Canais-Globo.html','Canais Globo',''),('https://www.lyngsat.com/providers/br/Fish-TV.html','Fish TV',''),('https://www.lyngsat.com/providers/br/Fundacao-Cultural-Riograndense.html','Fundação Cultural Riograndense',''),('https://www.lyngsat.com/providers/br/Grupo-Bandeirantes.html','Grupo Bandeirantes',''),('https://www.lyngsat.com/providers/br/Igreja-Crista-Maranata.html','Igreja Cristã Maranata',''),('https://www.lyngsat.com/providers/br/IMPD-TV-Rondonia.html','IMPD TV Rondônia',''),('https://www.lyngsat.com/providers/br/IMPD-TV-Worldwide.html','IMPD TV Worldwide',''),('https://www.lyngsat.com/providers/br/IMPD-TV.html','IMPD TV',''),('https://www.lyngsat.com/providers/br/Inter-TV.html','Inter TV',''),('https://www.lyngsat.com/providers/br/NET.html','NET',''),('https://www.lyngsat.com/providers/br/RBI-TV.html','RBI TV',''),('https://www.lyngsat.com/providers/br/Rede-21.html','Rede 21',''),('https://www.lyngsat.com/providers/br/Rede-Amazonica.html','Rede Amazônica',''),('https://www.lyngsat.com/providers/br/Rede-Bahia.html','Rede Bahia',''),('https://www.lyngsat.com/providers/br/Rede-Centro-Oeste.html','Rede Centro Oeste',''),('https://www.lyngsat.com/providers/br/Rede-CNT-Rio-de-Janeiro.html','Rede CNT Rio de Janeiro',''),('https://www.lyngsat.com/providers/br/Rede-Mais.html','Rede Mais',''),('https://www.lyngsat.com/providers/br/Rede-Massa.html','Rede Massa',''),('https://www.lyngsat.com/providers/br/Rede-Pampa-de-Radios.html','Rede Pampa de Rádios',''),('https://www.lyngsat.com/providers/br/SBT-Rio.html','SBT Rio',''),('https://www.lyngsat.com/providers/br/SIC-TV.html','SIC TV',''),('https://www.lyngsat.com/providers/br/TV-A-Critica.html','TV A Crítica',''),('https://www.lyngsat.com/providers/br/TV-Alterosa.html','TV Alterosa',''),('https://www.lyngsat.com/providers/br/TV-Antena-10.html','TV Antena 10',''),('https://www.lyngsat.com/providers/br/TV-Aparecida.html','TV Aparecida',''),('https://www.lyngsat.com/providers/br/TV-Assembleia-Piaui.html','TV Assembléia Piauí',''),('https://www.lyngsat.com/providers/br/TV-Barriga-Verde.html','TV Barriga Verde',''),('https://www.lyngsat.com/providers/br/TV-Cancao-Nova.html','TV Canção Nova',''),('https://www.lyngsat.com/providers/br/TV-Cidade-Fortaleza.html','TV Cidade Fortaleza',''),('https://www.lyngsat.com/providers/br/TV-Cidade-Verde-Piaui.html','TV Cidade Verde Piauí',''),('https://www.lyngsat.com/providers/br/TV-Correio.html','TV Correio',''),('https://www.lyngsat.com/providers/br/TV-Cultura-do-Para.html','TV Cultura do Pará',''),('https://www.lyngsat.com/providers/br/TV-Encontro-das-Aguas.html','TV Encontro das Águas',''),('https://www.lyngsat.com/providers/br/TV-Gazeta-Alagoas.html','TV Gazeta Alagoas',''),('https://www.lyngsat.com/providers/br/TV-Gazeta-Sao-Paulo.html','TV Gazeta São Paulo',''),('https://www.lyngsat.com/providers/br/TV-Guararapes.html','TV Guararapes',''),('https://www.lyngsat.com/providers/br/TV-Jangadeiro.html','TV Jangadeiro',''),('https://www.lyngsat.com/providers/br/TV-Mais-Familia.html','TV Mais Família',''),('https://www.lyngsat.com/providers/br/TV-Mirante.html','TV Mirante',''),('https://www.lyngsat.com/providers/br/TV-Pai-Eterno.html','TV Pai Eterno',''),('https://www.lyngsat.com/providers/br/TV-Pampa.html','TV Pampa',''),('https://www.lyngsat.com/providers/br/TV-PE.html','TV PE',''),('https://www.lyngsat.com/providers/br/TV-Serra-Dourada.html','TV Serra Dourada',''),('https://www.lyngsat.com/providers/br/TV-Sul-Bahia.html','TV Sul Bahia',''),('https://www.lyngsat.com/providers/br/TV-Taroba-Cascavel.html','TV Tarobá Cascavel',''),('https://www.lyngsat.com/providers/br/TV-Thathi-Campinas.html','TV Thathi Campinas',''),('https://www.lyngsat.com/providers/br/TV-Thathi-Vale.html','TV Thathi Vale',''),('https://www.lyngsat.com/providers/br/TV-Tropical.html','TV Tropical',''),('https://www.lyngsat.com/providers/br/Woohoo.html','Woohoo',''),('https://www.lyngsat.com/providers/bt/BBS.html','BBS',''),('https://www.lyngsat.com/providers/ca/GEM-Group.html','GEM Group',''),('https://www.lyngsat.com/providers/cl/Teletrak.html','Teletrak',''),('https://www.lyngsat.com/providers/cl/TV-Nacional-de-Chile.html','TV Nacional de Chile',''),('https://www.lyngsat.com/providers/cm/CRTV.html','CRTV',''),('https://www.lyngsat.com/providers/cn/CCTV.html','CCTV',''),('https://www.lyngsat.com/providers/cn/CETV.html','CETV',''),('https://www.lyngsat.com/providers/cn/CGTN.html','CGTN',''),('https://www.lyngsat.com/providers/cn/China-Radio-International.html','China Radio International',''),('https://www.lyngsat.com/providers/cn/JSBC.html','JSBC',''),('https://www.lyngsat.com/providers/cn/Nei-Monggol-TV.html','Nei Monggol TV',''),('https://www.lyngsat.com/providers/cn/Shanghai-Media-Group.html','Shanghai Media Group',''),('https://www.lyngsat.com/providers/cn/Sichuan-TV.html','Sichuan TV',''),('https://www.lyngsat.com/providers/cn/Voice-of-Strait.html','Voice of Strait',''),('https://www.lyngsat.com/providers/cn/Xinjiang-TV.html','Xinjiang TV',''),('https://www.lyngsat.com/providers/cn/Xizang-TV.html','Xizang TV',''),('https://www.lyngsat.com/providers/co/Caracol-TV.html','Caracol TV',''),('https://www.lyngsat.com/providers/cr/Enlace.html','Enlace',''),('https://www.lyngsat.com/providers/cr/Repretel.html','Repretel',''),('https://www.lyngsat.com/providers/de/North-Telecom.html','North Telecom',''),('https://www.lyngsat.com/providers/do/Antena-7.html','Antena 7',''),('https://www.lyngsat.com/providers/do/Sertel.html','Sertel',''),('https://www.lyngsat.com/providers/dz/TDA.html','TDA',''),('https://www.lyngsat.com/providers/fj/Walesi.html','Walesi',''),('https://www.lyngsat.com/providers/fr/Persiana-Media-Group.html','Persiana Media Group',''),('https://www.lyngsat.com/providers/fr/RFI.html','RFI',''),('https://www.lyngsat.com/providers/fr/TV5Monde.html','TV5Monde',''),('https://www.lyngsat.com/providers/hk/AsiaSat.html','AsiaSat',''),('https://www.lyngsat.com/providers/hk/SpeedCast.html','SpeedCast',''),('https://www.lyngsat.com/providers/hn/Suyapa-TV.html','Suyapa TV',''),('https://www.lyngsat.com/providers/hn/Televicentro.html','Televicentro',''),('https://www.lyngsat.com/providers/id/Metra-TV.html','Metra TV',''),('https://www.lyngsat.com/providers/in/AIR.html','AIR',''),('https://www.lyngsat.com/providers/in/Doordarshan.html','Doordarshan',''),('https://www.lyngsat.com/providers/in/Indiasign.html','Indiasign',''),('https://www.lyngsat.com/providers/in/Indo-Teleports.html','Indo Teleports',''),('https://www.lyngsat.com/providers/in/New-Delhi-TV.html','New Delhi TV',''),('https://www.lyngsat.com/providers/in/Planetcast.html','Planetcast',''),('https://www.lyngsat.com/providers/in/Raj-TV-Network.html','Raj TV Network',''),('https://www.lyngsat.com/providers/in/Sahara-Samay.html','Sahara Samay',''),('https://www.lyngsat.com/providers/in/Sun-TV-Network.html','Sun TV Network',''),('https://www.lyngsat.com/providers/in/Tata-Communications.html','Tata Communications',''),('https://www.lyngsat.com/providers/it/IKO-MG.html','IKO MG',''),('https://www.lyngsat.com/providers/jm/SportsMax.html','SportsMax',''),('https://www.lyngsat.com/providers/jp/NHK-World-Network.html','NHK World Network',''),('https://www.lyngsat.com/providers/jp/Sky-PerfecTV.html','Sky PerfecTV!',''),('https://www.lyngsat.com/providers/ke/KTN.html','KTN',''),('https://www.lyngsat.com/providers/ke/RMS-Radio.html','RMS Radio',''),('https://www.lyngsat.com/providers/ke/Signet.html','Signet',''),('https://www.lyngsat.com/providers/ke/StarTimes-TV-Kenya.html','StarTimes TV Kenya',''),('https://www.lyngsat.com/providers/kr/MBC-America.html','MBC America',''),('https://www.lyngsat.com/providers/la/LaoSat.html','LaoSat',''),('https://www.lyngsat.com/providers/lu/Intelsat.html','Intelsat',''),('https://www.lyngsat.com/providers/lu/SES.html','SES',''),('https://www.lyngsat.com/providers/ma/Hit-Radio.html','Hit Radio',''),('https://www.lyngsat.com/providers/ml/ORTM.html','ORTM',''),('https://www.lyngsat.com/providers/mm/MWD-Digital-TV.html','MWD Digital TV',''),('https://www.lyngsat.com/providers/mx/Canal-10-Chiapas.html','Canal 10 Chiapas',''),('https://www.lyngsat.com/providers/mx/Canal-del-Congreso-451.html','Canal del Congreso 45.1',''),('https://www.lyngsat.com/providers/mx/Grupo-Radio-Centro.html','Grupo Radio Centro',''),('https://www.lyngsat.com/providers/mx/Maria-Vision.html','María+Visión',''),('https://www.lyngsat.com/providers/mx/Televisa-Networks.html','Televisa Networks',''),('https://www.lyngsat.com/providers/mx/Televisa.html','Televisa',''),('https://www.lyngsat.com/providers/mx/TV-Mexiquense.html','TV Méxiquense',''),('https://www.lyngsat.com/providers/ng/Silverbird-TV.html','Silverbird TV',''),('https://www.lyngsat.com/providers/ni/Albavision.html','Albavisión',''),('https://www.lyngsat.com/providers/np/Kantipur-Media-Group.html','Kantipur Media Group',''),('https://www.lyngsat.com/providers/nz/Freeview.html','Freeview',''),('https://www.lyngsat.com/providers/nz/Pasifika-TV.html','Pasifika TV',''),('https://www.lyngsat.com/providers/pe/CRP-Radios.html','CRP Radios',''),('https://www.lyngsat.com/providers/pe/Grupo-ATV.html','Grupo ATV',''),('https://www.lyngsat.com/providers/pe/Grupo-RPP.html','Grupo RPP',''),('https://www.lyngsat.com/providers/pe/IRTP.html','IRTP',''),('https://www.lyngsat.com/providers/pe/Latina.html','Latina',''),('https://www.lyngsat.com/providers/ph/ABS-CBN.html','ABS-CBN',''),('https://www.lyngsat.com/providers/ph/GMA-Network.html','GMA Network',''),('https://www.lyngsat.com/providers/ph/Peoples-TV.html','People\'s TV',''),('https://www.lyngsat.com/providers/ph/Solar-Entertainment.html','Solar Entertainment',''),('https://www.lyngsat.com/providers/ph/TV-5-Network.html','TV 5 Network',''),('https://www.lyngsat.com/providers/ph/Viva-Entertainment.html','Viva Entertainment',''),('https://www.lyngsat.com/providers/ph/Zoe-Broadcasting-Network.html','Zoe Broadcasting Network',''),('https://www.lyngsat.com/providers/pk/AVT-Channels.html','AVT Channels',''),('https://www.lyngsat.com/providers/pk/Dunya-Media-Group.html','Dunya Media Group',''),('https://www.lyngsat.com/providers/pk/Express.html','Express',''),('https://www.lyngsat.com/providers/pk/Geo-TV-Network.html','Geo TV Network',''),('https://www.lyngsat.com/providers/pk/Hum-Network.html','Hum Network',''),('https://www.lyngsat.com/providers/pk/KTN-Network.html','KTN Network',''),('https://www.lyngsat.com/providers/pk/PTV-Network.html','PTV Network',''),('https://www.lyngsat.com/providers/pk/Radio-Pakistan.html','Radio Pakistan',''),('https://www.lyngsat.com/providers/pk/Suno-FM.html','Suno FM',''),('https://www.lyngsat.com/providers/pk/TeleNest.html','TeleNest',''),('https://www.lyngsat.com/providers/pk/VU-TV-Network.html','VU TV Network',''),('https://www.lyngsat.com/providers/pt/RTP.html','RTP',''),('https://www.lyngsat.com/providers/ru/Gazprom-Space-Systems.html','Gazprom Space Systems',''),('https://www.lyngsat.com/providers/ru/RSCC.html','RSCC',''),('https://www.lyngsat.com/providers/ru/RTRS-1.html','RTRS 1',''),('https://www.lyngsat.com/providers/ru/RTRS-2.html','RTRS 2',''),('https://www.lyngsat.com/providers/ru/RTRS-Belgorod.html','RTRS Belgorod',''),('https://www.lyngsat.com/providers/ru/RTRS-Bryansk.html','RTRS Bryansk',''),('https://www.lyngsat.com/providers/ru/RTRS-Chelyabinsk.html','RTRS Chelyabinsk',''),('https://www.lyngsat.com/providers/ru/RTRS-Kaluga.html','RTRS Kaluga',''),('https://www.lyngsat.com/providers/ru/RTRS-Karelija.html','RTRS Karelija',''),('https://www.lyngsat.com/providers/ru/RTRS-Krasnodar.html','RTRS Krasnodar',''),('https://www.lyngsat.com/providers/ru/RTRS-Krasnoyarsk.html','RTRS Krasnoyarsk',''),('https://www.lyngsat.com/providers/ru/RTRS-Murmansk.html','RTRS Murmansk',''),('https://www.lyngsat.com/providers/ru/RTRS-Rostov.html','RTRS Rostov',''),('https://www.lyngsat.com/providers/ru/RTRS-Saratov.html','RTRS Saratov',''),('https://www.lyngsat.com/providers/ru/RTRS-Smolensk.html','RTRS Smolensk',''),('https://www.lyngsat.com/providers/ru/RTRS-Sochi.html','RTRS Sochi',''),('https://www.lyngsat.com/providers/ru/RTRS-Stavropol.html','RTRS Stavropol',''),('https://www.lyngsat.com/providers/ru/RTRS-Tomsk.html','RTRS Tomsk',''),('https://www.lyngsat.com/providers/ru/RTRS-Tula.html','RTRS Tula',''),('https://www.lyngsat.com/providers/ru/RTRS-Tyumen.html','RTRS Tyumen',''),('https://www.lyngsat.com/providers/ru/RTRS-Voronezh.html','RTRS Voronezh',''),('https://www.lyngsat.com/providers/ru/RTRS-Yakutia.html','RTRS Yakutia',''),('https://www.lyngsat.com/providers/ru/RTRS-Yamal.html','RTRS Yamal',''),('https://www.lyngsat.com/providers/ru/RTRS-Yaroslavl.html','RTRS Yaroslavl',''),('https://www.lyngsat.com/providers/ru/RTRS-Yugoria.html','RTRS Yugoria',''),('https://www.lyngsat.com/providers/ru/RTRS.html','RTRS',''),('https://www.lyngsat.com/providers/ru/Russkiy-Mir.html','Russkiy Mir',''),('https://www.lyngsat.com/providers/rw/Rwanda-TV.html','Rwanda TV',''),('https://www.lyngsat.com/providers/sa/Arabsat.html','Arabsat',''),('https://www.lyngsat.com/providers/sa/Saudi-Broadcasting-Authority.html','Saudi Broadcasting Authority',''),('https://www.lyngsat.com/providers/so/DalSat-Global.html','DalSat Global',''),('https://www.lyngsat.com/providers/tg/New-World-TV.html','New World TV',''),('https://www.lyngsat.com/providers/tg/TVT.html','TVT',''),('https://www.lyngsat.com/providers/tn/ASBU-Bouquet.html','ASBU Bouquet',''),('https://www.lyngsat.com/providers/tw/Chunghwa-Telecom.html','Chunghwa Telecom',''),('https://www.lyngsat.com/providers/tw/NER-Taipei.html','NER Taipei',''),('https://www.lyngsat.com/providers/tw/TAS.html','TAS',''),('https://www.lyngsat.com/providers/tz/IPP-Media.html','IPP Media',''),('https://www.lyngsat.com/providers/tz/TBC.html','TBC',''),('https://www.lyngsat.com/providers/uk/Arqiva.html','Arqiva',''),('https://www.lyngsat.com/providers/uk/BBC-World-Service.html','BBC World Service',''),('https://www.lyngsat.com/providers/uk/BFBS.html','BFBS',''),('https://www.lyngsat.com/providers/uk/Freeview.html','Freeview',''),('https://www.lyngsat.com/providers/uk/Wide-Network-Solutions.html','Wide Network Solutions',''),('https://www.lyngsat.com/providers/us/A-E-Networks.html','A+E Networks',''),('https://www.lyngsat.com/providers/us/Alhurra-TV.html','Alhurra TV',''),('https://www.lyngsat.com/providers/us/AMC-Networks.html','AMC Networks',''),('https://www.lyngsat.com/providers/us/American-Forces-Network.html','American Forces Network',''),('https://www.lyngsat.com/providers/us/Anuvu.html','Anuvu',''),('https://www.lyngsat.com/providers/us/Bally-Sports.html','Bally Sports',''),('https://www.lyngsat.com/providers/us/Big-Ten-Network.html','Big Ten Network',''),('https://www.lyngsat.com/providers/us/Bloomberg-TV.html','Bloomberg TV',''),('https://www.lyngsat.com/providers/us/C-SPAN.html','C-SPAN',''),('https://www.lyngsat.com/providers/us/CNN.html','CNN',''),('https://www.lyngsat.com/providers/us/CruiseSat.html','CruiseSat',''),('https://www.lyngsat.com/providers/us/CTN.html','CTN (USA)',''),('https://www.lyngsat.com/providers/us/Encompass.html','Encompass',''),('https://www.lyngsat.com/providers/us/ESPN.html','ESPN',''),('https://www.lyngsat.com/providers/us/EWTN.html','EWTN',''),('https://www.lyngsat.com/providers/us/GCI.html','GCI',''),('https://www.lyngsat.com/providers/us/HBO-Network-Latinoamerica.html','HBO Network Latinoamérica',''),('https://www.lyngsat.com/providers/us/HBO-The-Works.html','HBO The Works',''),('https://www.lyngsat.com/providers/us/Herring-Networks.html','Herring Networks',''),('https://www.lyngsat.com/providers/us/In-Demand.html','In Demand',''),('https://www.lyngsat.com/providers/us/ION-Media-Networks.html','ION Media Networks',''),('https://www.lyngsat.com/providers/us/Media-Comm.html','Media-Comm',''),('https://www.lyngsat.com/providers/us/MLB-Network.html','MLB Network',''),('https://www.lyngsat.com/providers/us/NASA-TV.html','NASA TV',''),('https://www.lyngsat.com/providers/us/NBC-Universal.html','NBC Universal',''),('https://www.lyngsat.com/providers/us/Paramount-International-Networks.html','Paramount International Networks',''),('https://www.lyngsat.com/providers/us/Paramount-Networks-Americas.html','Paramount Networks Americas',''),('https://www.lyngsat.com/providers/us/ShopHQ.html','ShopHQ',''),('https://www.lyngsat.com/providers/us/Showtime-HD-East-Plex-2.html','Showtime HD East Plex 2',''),('https://www.lyngsat.com/providers/us/Starz.html','Starz',''),('https://www.lyngsat.com/providers/us/Trinity-Broadcasting.html','Trinity Broadcasting',''),('https://www.lyngsat.com/providers/us/Turner.html','Turner',''),('https://www.lyngsat.com/providers/us/Univision.html','Univisión',''),('https://www.lyngsat.com/providers/us/VoA.html','VoA',''),('https://www.lyngsat.com/providers/us/Voice-of-America.html','Voice of America',''),('https://www.lyngsat.com/providers/us/Walt-Disney-TV.html','Walt Disney TV',''),('https://www.lyngsat.com/providers/us/Warner-Bros-Discovery.html','Warner Bros. Discovery',''),('https://www.lyngsat.com/providers/ve/SiBCI.html','SiBCI',''),('https://www.lyngsat.com/providers/vn/VTV.html','VTV',''),('https://www.lyngsat.com/providers/zm/TopStar.html','TopStar',''),('https://www.lyngsat.com/providers/zm/ZNBC.html','ZNBC','');
/*!40000 ALTER TABLE `networks` ENABLE KEYS */;
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