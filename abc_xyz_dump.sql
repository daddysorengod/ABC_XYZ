-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: abc_xyz
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.20.04.1

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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `id` int NOT NULL AUTO_INCREMENT,
  `iduser` int DEFAULT NULL,
  `idpost` int DEFAULT NULL,
  `albumname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `creaeteddate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `idpost` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `createddate` datetime NOT NULL,
  `deleted` int NOT NULL,
  `totallike` int(10) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,2,1,'comment gi cha dc','2024-08-06 21:44:05',0,0000000000),(2,0,0,'àdsafdssafdasdfas','2024-08-10 16:55:50',0,0000000000),(3,3,1,'test comment 1','2024-08-10 16:57:27',0,0000000000),(4,3,1,'test 2','2024-08-10 17:03:05',0,0000000000),(5,3,1,'thật z hả','2024-08-10 17:05:33',0,0000000000),(6,3,1,'hay quạ bà con ơi','2024-08-10 17:09:28',0,0000000000),(7,3,2,'oke đấy chứ','2024-08-11 06:13:56',0,0000000000),(8,3,1,'dâdada','2024-08-11 06:49:54',0,0000000000),(9,3,1,'djt con may','2024-08-11 07:19:01',0,0000000000),(10,9,7,'test comment','2024-08-11 08:42:27',0,0000000000),(11,9,7,'thật z sao','2024-08-11 08:43:25',0,0000000000),(12,9,8,'ádfasfafsafasasfasfasfasfasfasfas','2024-08-11 08:47:39',0,0000000000),(13,9,8,'ai đó comment bài tui đi','2024-08-11 08:47:52',0,0000000000),(14,15,39,'Đẹp quá','2024-08-11 10:53:23',0,0000000000),(15,9,39,'vô cùng ý nghĩa bài viết hay','2024-08-11 15:51:01',0,0000000000),(16,9,41,'bài viết hay','2024-08-15 16:55:11',0,0000000000),(17,9,43,'test comment','2024-08-15 17:14:36',0,0000000006),(18,9,43,'???','2024-08-15 17:15:14',0,0000000001),(19,9,43,'hay quá đi ','2024-08-15 17:24:49',0,0000000001),(20,9,42,'okiela','2024-08-15 17:58:15',0,0000000001),(21,9,40,'3131','2024-08-15 19:26:18',0,0000000001),(22,10,45,'a','2024-09-04 03:07:11',0,0000000000),(23,13,26,'oto dep','2024-09-04 03:57:01',0,0000000000),(24,13,49,'ô tô đẹp quá\n','2024-09-04 04:04:23',0,0000000000),(25,18,39,'ho dep','2024-09-04 04:45:53',0,0000000000),(26,21,49,'xe đẹp quá\n','2024-09-13 10:08:58',0,0000000000),(27,26,65,'Cùng góp sức','2024-09-13 23:23:19',0,0000000001),(28,26,66,'đẹp','2024-09-14 01:23:27',0,0000000000);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datamessage`
--

DROP TABLE IF EXISTS `datamessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datamessage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idusersend` int NOT NULL,
  `idroom` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `createddate` datetime DEFAULT NULL,
  `deleted` int DEFAULT NULL,
  `iduserrecieve` int DEFAULT NULL,
  `urlattach` varchar(255) DEFAULT NULL,
  `datamessagecol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datamessage`
--

LOCK TABLES `datamessage` WRITE;
/*!40000 ALTER TABLE `datamessage` DISABLE KEYS */;
INSERT INTO `datamessage` VALUES (66,9,31,'test gửi ảnh ọt','2024-08-15 18:42:26',0,14,'test gửi ảnh ọt',NULL),(67,9,31,'','2024-08-15 18:42:26',0,14,'',NULL),(68,9,31,'','2024-08-15 18:42:26',0,14,'',NULL),(69,9,31,'21213112','2024-08-15 18:48:07',0,14,'21213112',NULL),(70,9,31,'32113123','2024-08-15 18:48:10',0,14,'32113123',NULL),(71,9,31,'ádfsafascxxxcv','2024-08-15 18:48:14',0,14,'ádfsafascxxxcv',NULL),(72,9,31,'323dsds','2024-08-15 18:48:58',0,14,'323dsds',NULL),(73,9,31,'434343','2024-08-15 18:49:06',0,14,'434343',NULL),(74,9,31,'','2024-08-15 18:55:10',0,14,'',NULL),(75,9,31,'','2024-08-15 18:55:11',0,14,'',NULL),(76,9,31,'','2024-08-15 19:02:40',0,14,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fhovercode-production.svg?alt=media&token=7bdac073-82c7-40bb-aa57-664d975bedd6',NULL),(77,9,31,'','2024-08-15 19:02:40',0,14,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fhovercode.svg?alt=media&token=ac80bbcf-a8fd-4593-a991-efbc1ac44f1f',NULL),(78,9,31,'12332','2024-08-15 19:03:26',0,14,NULL,NULL),(79,9,31,'','2024-08-15 19:04:03',0,14,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2FFrame%201234569798.jpg?alt=media&token=43107a9b-1173-4477-b4fc-ae2e0225b576',NULL),(80,9,31,'','2024-08-15 19:04:03',0,14,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2FMemes%20No%20Copyright%20Free%20to%20use%20on%20YouTube%20videos..mp4?alt=media&token=d989afff-b1d5-4dbc-a340-2d801e5d6832',NULL),(81,9,31,'312dsqsa','2024-08-15 19:04:03',0,14,NULL,NULL),(82,5,31,'ok','2024-08-18 14:32:34',0,14,NULL,NULL),(83,13,33,'','2024-09-04 02:41:28',0,4,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F454921543_3469780456498629_5161172117621186273_n.jpg?alt=media&token=4890fa52-dc12-4725-894a-0857baa31e4f',NULL),(84,13,31,'alo\n','2024-09-04 03:22:20',0,14,NULL,NULL),(85,14,31,'aloo\n','2024-09-04 03:22:52',0,13,NULL,NULL),(86,13,34,'ALO\n','2024-09-04 03:32:32',0,9,NULL,NULL),(87,5,30,'alo alo','2024-09-04 14:37:02',0,2,NULL,NULL),(88,5,30,'lololo\n','2024-09-04 14:37:22',0,2,NULL,NULL),(89,5,31,'vãi lìn nick t đc này','2024-09-04 14:45:43',0,14,NULL,NULL),(90,17,38,'alo\n','2024-09-04 14:58:11',0,5,NULL,NULL),(91,19,39,'11\n','2024-09-04 14:59:11',0,17,NULL,NULL),(92,17,40,'toi muon mua xe','2024-09-04 15:01:02',0,11,NULL,NULL),(93,21,41,'aa','2024-09-13 10:10:00',0,5,NULL,NULL),(94,26,42,'Chào cậu','2024-09-13 22:43:29',0,25,NULL,NULL),(95,25,42,'Hiiii','2024-09-13 22:44:44',0,26,NULL,NULL),(96,26,42,'chào cậu','2024-09-14 01:22:24',0,25,NULL,NULL);
/*!40000 ALTER TABLE `datamessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frienddata`
--

DROP TABLE IF EXISTS `frienddata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frienddata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `idfriend` int NOT NULL,
  `status` varchar(10) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frienddata`
--

LOCK TABLES `frienddata` WRITE;
/*!40000 ALTER TABLE `frienddata` DISABLE KEYS */;
INSERT INTO `frienddata` VALUES (21,9,16,'1','2024-08-13 19:44:06'),(22,9,15,'1','2024-08-13 19:44:06'),(23,9,14,'1','2024-08-13 19:44:08'),(24,9,12,'1','2024-08-13 19:44:09'),(25,6,9,'2','2024-08-13 19:45:59'),(26,7,9,'2','2024-08-13 19:46:04'),(27,8,9,'3','2024-08-13 19:46:06'),(28,9,13,'2','2024-08-13 19:51:00'),(29,9,11,'2','2024-08-13 19:51:00'),(30,12,11,'2','2024-09-04 03:34:06'),(31,18,11,'1','2024-09-04 04:51:35'),(32,11,15,'1','2024-09-04 04:53:18'),(33,13,21,'1','2024-09-13 10:17:04'),(34,13,20,'1','2024-09-13 10:17:07'),(35,26,25,'1','2024-09-13 22:43:37'),(36,26,23,'1','2024-09-14 01:23:43'),(37,26,24,'1','2024-09-14 01:23:46');
/*!40000 ALTER TABLE `frienddata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `iduser` int DEFAULT '0',
  `idpost` int DEFAULT '0',
  `idalbum` int DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `createddate` datetime NOT NULL,
  `deleted` int NOT NULL,
  `url` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,2,1,0,NULL,'2024-08-04 16:00:14',0,'23232323232'),(2,8,2,NULL,NULL,'2024-08-10 15:49:31',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fimg-brazil.png?alt=media&token=4f0b0675-ae8d-4b0a-bf4f-a21f48370260'),(3,8,3,NULL,NULL,'2024-08-10 15:50:45',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fimg-brazil.png?alt=media&token=4f0b0675-ae8d-4b0a-bf4f-a21f48370260'),(4,8,4,NULL,NULL,'2024-08-10 15:51:58',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fbanned.jpg?alt=media&token=39264b38-9970-4f7c-b4a9-067d1ac45d48'),(5,8,5,NULL,NULL,'2024-08-10 15:52:24',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fbanned.jpg?alt=media&token=39264b38-9970-4f7c-b4a9-067d1ac45d48'),(6,3,6,NULL,NULL,'2024-08-11 08:05:45',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Favatar.jpg?alt=media&token=54b3d8ce-ec73-4e3f-963e-f27868f99796'),(7,3,7,NULL,NULL,'2024-08-11 08:06:44',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Favatar.jpg?alt=media&token=54b3d8ce-ec73-4e3f-963e-f27868f99796'),(8,9,8,NULL,NULL,'2024-08-11 08:47:22',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Favatar.jpg?alt=media&token=c97f88a1-13a3-434a-8c50-bfb5ae253103'),(9,9,8,NULL,NULL,'2024-08-11 08:47:22',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fball-brazil.png?alt=media&token=1fe44a1b-cdf9-4e61-a6a4-d183e2a9870b'),(10,9,8,NULL,NULL,'2024-08-11 08:47:22',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fbanned.jpg?alt=media&token=b1fad396-5a90-4555-8ace-e6b5004f2f9f'),(11,9,9,NULL,NULL,'2024-08-11 09:08:00',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F453540464_894452942712290_9160963830425399928_n.jpg?alt=media&token=73d99329-d18f-4c98-b6d7-2fb25dba4023'),(12,9,10,NULL,NULL,'2024-08-11 09:15:23',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Flogo-utt-1200-628.jpg?alt=media&token=24e6bf18-3701-4a94-8386-2f5f518c7edd'),(13,9,11,NULL,NULL,'2024-08-11 09:28:32',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fbanned.jpg?alt=media&token=078aebff-76fa-4ab0-abf3-c2664a4832ad'),(14,10,12,NULL,NULL,'2024-08-11 09:52:22',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2FA%CC%89nh%20chu%CC%A3p%20ma%CC%80n%20hi%CC%80nh%20(2).png?alt=media&token=a209fa18-d49c-4871-a504-b3cdca60b8ca'),(15,10,13,NULL,NULL,'2024-08-11 09:54:23',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fimages.jfif?alt=media&token=b82b9db3-17e2-427e-9cc5-c8a7c309a779'),(16,9,14,NULL,NULL,'2024-08-11 09:55:25',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fman-city-vs-mu-quy-do-run-ray-den-etihad-552.jpg?alt=media&token=eb7c5286-fb9e-4b04-aec8-b5ec83369aaa'),(17,10,15,NULL,NULL,'2024-08-11 09:59:32',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fman-city-man-united-sieu-cup-anh-7-1723306966134372420352.webp?alt=media&token=f1bf9717-db7d-435b-a122-cbf7ada66a86'),(18,11,16,NULL,NULL,'2024-08-11 10:02:56',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fthoi-tiet-10-8-17231959048311932348546.webp?alt=media&token=138c4e73-b3e3-4b67-8de9-c40beae4dc31'),(19,11,17,NULL,NULL,'2024-08-11 10:04:30',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F30-mon-ngon-nuc-long-nhat-dinh-phai-thu-khi-toi-ha-noi-phan-4.webp?alt=media&token=ae90d179-2c87-4ab0-9db4-57c3d3155253'),(20,11,18,NULL,NULL,'2024-08-11 10:09:37',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fcom.jpg?alt=media&token=0c5c8060-72a7-4d85-b300-c1693f8e40a4'),(21,11,19,NULL,NULL,'2024-08-11 10:10:16',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F453741706_10226334534455299_4101238214367662857_n.jpg?alt=media&token=06ac9d28-06cb-4564-a6bb-b6aa75ec8c6b'),(22,11,20,NULL,NULL,'2024-08-11 10:11:52',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fbun.jpg?alt=media&token=eb3b3349-17f6-4f69-a4a0-44cb10878939'),(23,12,21,NULL,NULL,'2024-08-11 10:19:00',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F5eb69551-8e04-4b3e-b4a9-aa6e87a394d9.jpg?alt=media&token=d9acc6c1-518f-4d3c-bde6-1ecbba962a4d'),(24,12,22,NULL,NULL,'2024-08-11 10:21:45',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F454899187_1753891845138448_1424266852147247652_n.jpg?alt=media&token=182e0474-875f-453f-baca-675b6a3e6c65'),(25,12,23,NULL,NULL,'2024-08-11 10:22:11',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F454899187_1753891845138448_1424266852147247652_n.jpg?alt=media&token=1a1115de-b606-4c88-b3b9-4c7e1b9a7385'),(26,12,24,NULL,NULL,'2024-08-11 10:23:27',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F455015846_516555840881984_9063803457229362365_n.jpg?alt=media&token=8f53cb9a-9309-4b2d-9ce7-a994e5a56f75'),(27,12,25,NULL,NULL,'2024-08-11 10:24:46',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F454830489_10221555860200856_2971616849717286064_n.jpg?alt=media&token=9d19347b-1426-4bb5-a48b-bd9d62c0e2dc'),(28,13,26,NULL,NULL,'2024-08-11 10:28:03',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fvinfast-vf7.png?alt=media&token=73b971e8-5d36-46dd-b179-ddbe6edb4a80'),(29,13,27,NULL,NULL,'2024-08-11 10:30:00',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2FIMG_8825.png?alt=media&token=909b0f8e-720a-4622-ab39-babfc57c7e95'),(30,13,28,NULL,NULL,'2024-08-11 10:34:05',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F455030906_4016279615322507_6813249910999296742_n.jpg?alt=media&token=9254074d-ac60-44b0-8c2f-c922752e18c0'),(31,13,29,NULL,NULL,'2024-08-11 10:34:57',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F455029426_1679894916170413_2439287200907936566_n.jpg?alt=media&token=3fe56d4e-a99d-45e8-94a7-68de195435a8'),(32,13,30,NULL,NULL,'2024-08-11 10:35:31',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F454934089_122167678508209328_9030518173616530157_n.jpg?alt=media&token=c7ab5e79-67e6-4c91-8ea2-a249e3e35807'),(33,14,31,NULL,NULL,'2024-08-11 10:39:08',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fwave-alpha-2024-dac-biet-den-nham_0d120b75a17b45b983aca4dd296647f9_master.webp?alt=media&token=8324bfb9-9229-461d-af8e-89e0ae85b150'),(34,14,32,NULL,NULL,'2024-08-11 10:40:44',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2FHonda-Vision-110-2023-TheThao-1.jpg?alt=media&token=d567d5ec-4320-4868-9294-4afe10be6ffb'),(35,14,33,NULL,NULL,'2024-08-11 10:43:43',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F454921543_3469780456498629_5161172117621186273_n.jpg?alt=media&token=291b544b-1f94-44bb-888e-fc97c5692a8c'),(36,14,34,NULL,NULL,'2024-08-11 10:44:54',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F454500097_452527751094467_7012798707090741796_n.jpg?alt=media&token=09598537-5254-4fce-861f-9467588961df'),(37,14,35,NULL,NULL,'2024-08-11 10:46:03',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F454648667_3868707463405571_6424300480744654052_n.jpg?alt=media&token=c339e9eb-9075-43ed-b97d-a9313bd870a5'),(38,14,36,NULL,NULL,'2024-08-11 10:48:28',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F454498272_499522312729053_3251442509095165723_n.jpg?alt=media&token=53db0aa8-4084-449e-9112-691e99841f96'),(39,15,37,NULL,NULL,'2024-08-11 10:50:02',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fho-tay-o-dau-2.jpg?alt=media&token=61ba2e68-ef10-472f-b795-6557c8ef49e3'),(40,15,38,NULL,NULL,'2024-08-11 10:50:46',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fho-tay-o-dau-5.jpg?alt=media&token=2ec350f7-4db8-4050-82e5-b2a5a7535b57'),(41,15,39,NULL,NULL,'2024-08-11 10:52:47',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fho-tay-o-dau-4.jpg?alt=media&token=209d97f8-66f8-4013-902b-044ce77a6de1'),(42,13,40,NULL,NULL,'2024-08-12 03:56:37',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F453741706_10226334534455299_4101238214367662857_n.jpg?alt=media&token=a23fb4cc-e65b-42ba-8744-70265b6575a3'),(43,9,41,NULL,NULL,'2024-08-13 17:07:51',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2FMemes%20No%20Copyright%20Free%20to%20use%20on%20YouTube%20videos..mp4?alt=media&token=458b30ff-a67c-4f7d-ab33-ced54fae47a2'),(44,9,41,NULL,NULL,'2024-08-13 17:07:51',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F453540464_894452942712290_9160963830425399928_n.jpg?alt=media&token=2be26c9a-d2a5-4d6e-85b1-5c853f5ac9ee'),(45,9,42,NULL,NULL,'2024-08-15 17:09:43',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2FMemes%20No%20Copyright%20Free%20to%20use%20on%20YouTube%20videos..mp4?alt=media&token=458b30ff-a67c-4f7d-ab33-ced54fae47a2'),(46,9,42,NULL,NULL,'2024-08-15 17:09:43',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F453540464_894452942712290_9160963830425399928_n.jpg?alt=media&token=2be26c9a-d2a5-4d6e-85b1-5c853f5ac9ee'),(47,9,43,NULL,NULL,'2024-08-15 17:10:15',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2FMemes%20No%20Copyright%20Free%20to%20use%20on%20YouTube%20videos..mp4?alt=media&token=458b30ff-a67c-4f7d-ab33-ced54fae47a2'),(48,9,43,NULL,NULL,'2024-08-15 17:10:15',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F453540464_894452942712290_9160963830425399928_n.jpg?alt=media&token=2be26c9a-d2a5-4d6e-85b1-5c853f5ac9ee'),(49,9,1,NULL,NULL,'2024-08-15 17:12:46',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2FMemes%20No%20Copyright%20Free%20to%20use%20on%20YouTube%20videos..mp4?alt=media&token=458b30ff-a67c-4f7d-ab33-ced54fae47a2'),(50,9,1,NULL,NULL,'2024-08-15 17:12:46',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F453540464_894452942712290_9160963830425399928_n.jpg?alt=media&token=2be26c9a-d2a5-4d6e-85b1-5c853f5ac9ee'),(51,9,1,NULL,NULL,'2024-08-15 17:14:07',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Flogo-greedy.png?alt=media&token=cd4d4aae-ebc7-40ce-a7ad-a3195a5e48f8'),(52,13,44,NULL,NULL,'2024-09-04 02:40:10',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2FIMG_8825.png?alt=media&token=9e46716c-6417-42b7-b585-57a750cf01d1'),(53,17,45,NULL,NULL,'2024-09-04 03:03:17',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2FIMG_8825.png?alt=media&token=3466b80c-99d8-4e64-bafe-96ff29681767'),(54,5,46,NULL,NULL,'2024-09-04 03:14:49',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2FFrame%201597880627.png?alt=media&token=64c921d9-364f-47b3-8133-af7a443fe60b'),(55,11,47,NULL,NULL,'2024-09-04 03:35:51',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2FIMG_8825.png?alt=media&token=914b451c-5df9-404f-af92-b245aaf733ff'),(56,14,48,NULL,NULL,'2024-09-04 03:38:28',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2FIMG_8825.png?alt=media&token=565726f1-7d78-4c00-ba18-8bfb955a4f6c'),(57,11,49,NULL,NULL,'2024-09-04 03:39:54',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2FIMG_8825.png?alt=media&token=02531264-adf1-424f-be10-295a18ee219d'),(58,13,53,NULL,NULL,'2024-09-13 15:07:39',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F459119477_538174338560147_453328036252338671_n.jpg?alt=media&token=30cf3440-7c95-4231-8768-29aca40aeb28'),(59,13,54,NULL,NULL,'2024-09-13 17:08:22',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F459119477_538174338560147_453328036252338671_n.jpg?alt=media&token=a52cae1f-4f44-4530-8a14-167f7e388ac6'),(60,23,55,NULL,NULL,'2024-09-13 22:11:34',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2Fhanoi.jpg?alt=media&token=527b9ab8-3abb-4b7d-9150-f6eb45b4c32a'),(61,23,56,NULL,NULL,'2024-09-13 22:13:46',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F12aa.jpg?alt=media&token=2f223e0a-d778-4347-9de9-07465cfd4b0a'),(62,23,57,NULL,NULL,'2024-09-13 22:15:34',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F450016649_775799471433202_1300959579579086172_n.jpg?alt=media&token=aeea742f-8bb2-4a2b-b9b5-b8d6e4e05915'),(63,23,58,NULL,NULL,'2024-09-13 22:16:30',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F449083949_770131878666628_5372765923203834880_n.jpg?alt=media&token=d5c3f4fb-c5ed-460f-bdce-6ada20afcc47'),(64,11,59,NULL,NULL,'2024-09-13 22:21:16',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2FIMG_8825.png?alt=media&token=625fe816-de6d-475f-af90-64eccde1725c'),(65,24,60,NULL,NULL,'2024-09-13 22:27:00',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F279928104_7370804832994102_7375370536200408028_n.jpg?alt=media&token=24db7bd7-a7cd-45fe-a1a0-e63fa7b4b0ed'),(66,24,61,NULL,NULL,'2024-09-13 22:28:40',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F426196428_722058603465735_1044040550256001738_n.jpg?alt=media&token=397b911d-faad-41d0-afd0-ced40574b4a5'),(67,25,62,NULL,NULL,'2024-09-13 22:37:50',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F131044056_3539901386092745_7105698845323293780_n.jpg?alt=media&token=6f42ad32-3e49-4a1c-b6a2-5b3154df3adc'),(68,25,63,NULL,NULL,'2024-09-13 22:39:09',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F299718041_674235897389948_6141453863680075660_n.jpg?alt=media&token=a1457576-e1c3-4645-bda5-2d31bf30b387'),(69,26,64,NULL,NULL,'2024-09-13 22:42:51',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F1.jpg?alt=media&token=270831a0-6b50-4a3d-b04c-f13adc1cc53e'),(70,26,65,NULL,NULL,'2024-09-13 22:48:01',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F459119477_538174338560147_453328036252338671_n.jpg?alt=media&token=2c1ba470-07e2-4c20-9e4b-2ce60ef0a5c7'),(71,26,66,NULL,NULL,'2024-09-14 01:23:09',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F222.jfif?alt=media&token=c774ec25-2d08-4da1-8ee3-bce7e1545e71');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memeberinroomchat`
--

DROP TABLE IF EXISTS `memeberinroomchat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memeberinroomchat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `joinat` datetime DEFAULT NULL,
  `deleted` int DEFAULT NULL,
  `idroom` int DEFAULT NULL,
  `memeberinroomchatcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memeberinroomchat`
--

LOCK TABLES `memeberinroomchat` WRITE;
/*!40000 ALTER TABLE `memeberinroomchat` DISABLE KEYS */;
INSERT INTO `memeberinroomchat` VALUES (2,12,'2024-08-12 02:45:50',0,7,NULL),(4,14,'2024-08-11 19:46:30',0,8,NULL),(5,9,'2024-08-11 19:49:08',0,9,NULL),(6,15,'2024-08-11 19:49:08',0,9,NULL),(7,16,'2024-08-11 19:51:34',0,10,NULL),(8,15,'2024-08-11 19:51:34',0,10,NULL),(9,9,'2024-08-12 03:24:29',0,11,NULL),(10,15,'2024-08-12 03:24:29',0,11,NULL),(11,9,'2024-08-11 20:27:14',0,12,NULL),(12,15,'2024-08-11 20:27:14',0,12,NULL),(13,9,'2024-08-11 20:28:28',0,13,NULL),(14,14,'2024-08-11 20:28:28',0,13,NULL),(15,9,'2024-08-11 20:28:42',0,14,NULL),(16,13,'2024-08-11 20:28:42',0,14,NULL),(17,9,'2024-08-11 20:30:18',0,15,NULL),(18,13,'2024-08-11 20:30:18',0,15,NULL),(19,9,'2024-08-11 20:34:57',0,16,NULL),(20,16,'2024-08-11 20:34:57',0,16,NULL),(21,16,'2024-08-11 20:35:03',0,17,NULL),(22,9,'2024-08-11 20:35:03',0,17,NULL),(23,16,'2024-08-11 20:39:53',0,18,NULL),(24,9,'2024-08-11 20:39:53',0,18,NULL),(25,16,'2024-08-11 20:42:13',0,19,NULL),(26,9,'2024-08-11 20:42:13',0,19,NULL),(27,9,'2024-08-11 20:45:44',0,20,NULL),(28,16,'2024-08-11 20:45:44',0,20,NULL),(29,9,'2024-08-11 20:52:46',0,21,NULL),(30,15,'2024-08-11 20:52:46',0,21,NULL),(31,16,'2024-08-11 21:12:11',0,22,NULL),(32,2,'2024-08-11 21:12:11',0,22,NULL),(33,16,'2024-08-11 21:12:22',0,23,NULL),(34,3,'2024-08-11 21:12:22',0,23,NULL),(35,16,'2024-08-11 21:12:25',0,24,NULL),(36,3,'2024-08-11 21:12:25',0,24,NULL),(37,16,'2024-08-11 21:12:28',0,25,NULL),(38,3,'2024-08-11 21:12:28',0,25,NULL),(39,16,'2024-08-11 21:13:05',0,26,NULL),(40,2,'2024-08-11 21:13:05',0,26,NULL),(41,16,'2024-08-11 21:13:21',0,27,NULL),(42,3,'2024-08-11 21:13:21',0,27,NULL),(43,16,'2024-08-11 21:13:32',0,28,NULL),(44,4,'2024-08-11 21:13:32',0,28,NULL),(45,16,'2024-08-11 21:13:35',0,29,NULL),(46,5,'2024-08-11 21:13:35',0,29,NULL),(47,16,'2024-08-11 21:16:58',0,30,NULL),(48,2,'2024-08-11 21:16:58',0,30,NULL),(49,13,'2024-08-12 01:35:14',0,31,NULL),(50,14,'2024-08-12 01:35:14',0,31,NULL),(51,14,'2024-08-12 01:45:28',0,32,NULL),(52,3,'2024-08-12 01:45:28',0,32,NULL),(53,14,'2024-08-12 01:45:28',0,33,NULL),(54,4,'2024-08-12 01:45:28',0,33,NULL),(55,9,'2024-08-15 16:57:40',0,34,NULL),(56,5,'2024-08-15 16:57:40',0,34,NULL),(57,9,'2024-08-15 16:57:40',0,35,NULL),(58,5,'2024-08-15 16:57:40',0,35,NULL),(59,13,'2024-09-04 03:59:59',0,36,NULL),(60,12,'2024-09-04 03:59:59',0,36,NULL),(61,20,'2024-09-04 14:56:11',0,37,NULL),(62,5,'2024-09-04 14:56:11',0,37,NULL),(63,17,'2024-09-04 14:57:56',0,38,NULL),(64,5,'2024-09-04 14:57:56',0,38,NULL),(65,19,'2024-09-04 14:59:02',0,39,NULL),(66,17,'2024-09-04 14:59:02',0,39,NULL),(67,17,'2024-09-04 15:00:55',0,40,NULL),(68,11,'2024-09-04 15:00:55',0,40,NULL),(69,21,'2024-09-13 10:09:29',0,41,NULL),(70,5,'2024-09-13 10:09:29',0,41,NULL),(71,26,'2024-09-13 22:43:13',0,42,NULL),(72,25,'2024-09-13 22:43:13',0,42,NULL);
/*!40000 ALTER TABLE `memeberinroomchat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idgroup` int DEFAULT NULL,
  `iduser` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `createddate` datetime NOT NULL,
  `totallike` int DEFAULT NULL,
  `totalshare` int DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `deleted` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (9,NULL,9,'[KHỞI CÔNG KHỐI NHÀ ĐA NĂNG 11 TẦNG]\nChiều ngày 3/8, Trường Đại học Công nghệ GTVT đã tổ chức Lễ khởi công dự án Khối nhà đa năng 11 tầng.  Cùng với diện tích đất vừa được UBND Thành phố Hà Nội giao gần 1.4ha và hệ thống cơ sở vật chất, trang thiết bị đã được đầu tư, Tòa nhà 11 tầng hứa hẹn sẽ đem đến một môi trường giảng dạy, học tập, nghiên cứu và làm việc khang trang, hiện đại, chuyên nghiệp cho cán bộ, giảng viên, người học của Nhà trường. \nTheo kế hoạch, công trình sẽ được đưa vào khai thác sử dụng sau 1 năm thi công./.','2024-08-11 09:08:00',8,0,'2',0),(11,8,9,'Đồ án hay ','2024-08-11 09:28:32',0,0,'2',0),(12,NULL,10,'Hôm nay học bài','2024-08-11 09:52:22',0,0,'2',0),(13,NULL,10,'Man City hạ Man Utd bằng loạt luân lưu Siêu Cup Anh','2024-08-11 09:54:23',0,0,'2',0),(14,9,9,'Tối qua, Manchester United đã đối đầu với Manchester City trong trận Siêu cúp Anh 2024. Trận đấu diễn ra trên sân Wembley và kết thúc với tỷ số hòa 1-1 sau 90 phút thi đấu chính thức. Manchester United là đội mở tỷ số ở phút 82 nhờ pha lập công của Garnacho. Tuy nhiên, chỉ ít phút sau đó, Bernardo Silva đã gỡ hòa cho Man City ở phút 89.\n\nTrận đấu sau đó được quyết định bằng loạt sút luân lưu. Cả hai đội đều thực hiện tốt các loạt sút của mình, nhưng MU đã phải nhận thất bại 6-7 khi Jadon Sancho và Jonny Evans đá hỏng. Manchester City đã giành được Siêu cúp Anh sau 5 năm chờ đợi​','2024-08-11 09:55:25',0,0,'2',0),(15,NULL,10,'Tận dụng sai lầm của đối thủ, Man City gỡ hòa nhờ cú đá của Savinho. Lượt thứ năm khép lại bất phân thắng bại với cú đá của thủ thành Ederson. Sau đó, mỗi bên sút thêm được ba lượt. Matheus Nunes, Ruben Dias và Akanji bên phía Man City đều thành công. Còn Man Utd, chỉ Scott McTominay và Martinez hoàn thành nhiệm vụ, trước khi lão tướng Jonny Evans đá lên trời ở lượt thứ tám.','2024-08-11 09:59:32',0,0,'2',0),(16,NULL,11,'Dự báo thời tiết chi tiết hôm nay 10-8:\nHà Nội có mây, ngày nắng nóng và nắng nóng gay gắt, chiều tối và đêm mưa dông. Nhiệt độ thấp nhất 28-30 độ C, cao nhất 36-38 độ C.','2024-08-11 10:02:56',0,0,'2',0),(17,NULL,11,'Bún riêu là món ăn của bất kể thời tiết nào; dù là những ngày hè nóng nực hay những ngày đông giá lạnh, bát bún riêu cua đồng vẫn dễ dàng lấy lòng thực khách sành ăn.\nVị đậm đà của cua đồng hoà quyện cùng vị chua thanh thanh của cà chua và vị đằm của mắm tắm tôm khiến ai ăn một lần cũng sẽ nhớ mãi. Tôi đặc biệt thích món ăn này và có vài quán ruột nhất định tới mỗi khi về Hà Nội. Để tôi giới thiệu ngay cho bạn nhé!','2024-08-11 10:04:30',0,0,'2',0),(18,10,11,'CƠM NHẬT CHẤT LƯỢNG CAO ĐỒNG GIÁ 50kkk\nMấy bác mê cơm nhật mà muốn ăn giá hời bình dân thì note quán này nha. Do quán mở kiểu mô hình gia đình nên giá khá ổn áp. Quán bán full menu có 6 loại thuiii. Rcm mọi người gọi cơm bò gyudon vs cơm gà teriraky ở đây nha. Topping gà thì xử lí khéo mềm đậm đà ( nhớ note xin nhiều sốt nha sốt này ngon thần thánh lắm ) đặc biệt gà không bị khô ăn vẫn yumi mọng nước','2024-08-11 10:09:37',0,0,'2',0),(19,10,11,'Hương vị thu của Hà Nội mỗi sớm cuối tuần \n#phởđấtviệt','2024-08-11 10:10:16',0,0,'2',1),(20,10,11,'Nay đi ngang qua quán Bún thang - Phở Gà ăn cũng ok\nNước dùng khá tròn vị và đầy đặn \nQuán cũng sạch sẽ,mát mẻ\nĐịa chỉ : Số 70 Nguyễn Khuyến - Văn miếu','2024-08-11 10:11:52',0,0,'2',0),(21,NULL,12,'Sử dụng thảo dược tươi 100% đến từ Hàn mang lại hiệu quả cao hơn cho,giúp da có thể thẩm thấu tốt hơn ','2024-08-11 10:19:00',0,0,'2',0),(22,10,12,'Em pass cushion clio mesh glow màu 03 kèm lõi refill 200k, em mới dặm test 2 lần thôi ạ.','2024-08-11 10:21:45',0,0,'2',0),(23,11,12,'Em pass cushion clio mesh glow màu 03 kèm lõi refill 200k, em mới dặm test 2 lần thôi ạ.','2024-08-11 10:22:11',0,0,'2',0),(24,11,12,'mình đc tặng nhma ko dùng pass lại ạ\ntoner pad 200 🐟\nseẻum 300 🐟\nlấy cả 2 freeship','2024-08-11 10:23:27',0,0,'2',0),(25,11,12,'Em cần pass , do muốn trải nghiệm thêm nhiều hãng, mua shop uy tín có tem shop đầy đủ, cá nhân mua nên yên tâm ạ! Tình trạng y hình không chỉnh sửa, đầy đủ hộp, ưu tiên fix cho bạn nào từng mua và mua từ 2 món ạ! Đảm bảo auth 10000%, ship đúng hàng!\nEm cám ơn ạ!','2024-08-11 10:24:46',0,0,'2',0),(26,NULL,13,'VF 7 là dòng xe thuần điện phân khúc C-SUV đầy tranh mạnh mẽ và cao cấp ở thị trường Việt Nam. VF 7 được trang bị hàng loạt các trang bị an toàn cao cấp, cùng với diện mạo được thiết kế mạnh mẽ & sang trọng, đã mang đến cho khách hàng những trải nghiệm thực tế thật ấn tượng. ','2024-08-11 10:28:03',0,0,'2',0),(27,NULL,13,'VF3 thuộc phân khúc xe cỡ nhỏ (Mini car) và là mẫu xe cỡ nhỏ thuần điện đầu tiên được VinFast nghiên cứu phát triển. Dựa trên những đặc tính và thói quen giao thông của người tiêu dùng Việt Nam. Ngoại thất sở hữu ngôn ngữ thiết kế cá tính, mang kiểu dáng SUV hầm hố, khác biệt với dải sản phẩm của VinFast vốn mang thiết kế mềm mại nên vì vậy VinFast VF3 cũng sẽ có nhiều phiên bản màu sắc theo cá tính khách hàng','2024-08-11 10:30:00',0,0,'2',1),(28,12,13,'Accent AT tiêu chuẩn 2023\nOdo 1 vạn km, bao zin từng milimet\nGiá chào 4xx \nXem xe Nguyễn Chánh - Cầu Giấy - HN\nCall: 0966.395.116','2024-08-11 10:34:05',0,0,'2',0),(29,12,13,'𝐒𝐢𝐞̂𝐮 𝐩𝐡𝐚̂̉𝐦 𝐜𝐚̣̂𝐩 𝐛𝐞̂́𝐧\nMercedes E180 Odo 32.000Km\n•••••••••••••••••••••••••••••••••••••••••••••••••••••\nSản xuất 2021 đăng ký tên tư nhân 1 chủ lần đầu năm 2022 Form mới nhất hiện nay\nCam kết không đâm đụng, không ngập nước, km zin.\nBao ckeck test toàn quốc \nGiá bán chỉ 1 tỷ xxx triệu đồng ( tiết kiệm so với xe mới hơn 800 triệu đồng )\nLH: 0344316323\nXem xe tại TP Thái Nguyên','2024-08-11 10:34:56',0,0,'2',0),(30,12,13,'500tr chốt nhanh trong ngày. 4 vạn 2019 máy ngon mướt\nXe bao zin máy móc check tại hãng\nXe mình của mình bán.','2024-08-11 10:35:31',0,0,'2',0),(31,NULL,14,'Hãng xe máy Nhật BảnHondagiới thiệuWave Alphaphiên bản mới cho thị trường Việt Nam vào sáng ngày 11/7. Mẫu xe số bán chạy của Honda phát triển theo phong cách cổ điển.\n\nWave Alpha 2025 lạ mắt với hai màu mới, xám và xanh, gam màu đặc trưng trong bảng màu retro. Hai màu mới này hướng tới những lựa chọn khác nhau của khách hàng. Xám - hướng đến khách hàng trẻ theo đuổi phong cách hoài cổ, nhưng vẫn giữ nét trẻ trung, năng động. Trong khi màu xanh thu hút các chàng trai, cô gái yêu thích thời trang, theo chia sẻ của nhà sản xuất.','2024-08-11 10:39:08',0,0,'2',1),(32,NULL,14,'Vision 2023 dùng khối động cơ eSP 110 cc, 4 kỳ, xy-lanh đơn và làm mát bằng không khí. Việc áp dụng khung dập hàn laser thế hệ mới eSAF giúp trọng lượng nhẹ hơn thế hệ trước. Các tiện ích đi kèm gồm: khóa thông minh Smart Key, cốp đựng đồ 15,8 lít, hộc đựng đồ phía trước có nắp đậy. Xe trang bị cổng sạc USB ở hộc đựng đồ phía trước.','2024-08-11 10:40:44',0,0,'2',0),(33,13,14,'Nhà em bán xe honda wave 110cc đời 2020 chính chủ xe đi ít chạy đúng 16000km lốp theo xe cả đôi máy bao zin êm như mới chạy bốc full chức năng, xe đang bẩn chưa rửa rửa đi sẽ đẹp hơn... giá 13triệu500 bớt lộc ạ, ai cần lh sdt e ','2024-08-11 10:43:43',0,0,'2',1),(34,13,14,'GD CÓ CHÁU ĐÃ HỌC XONG CẤP 3\nNAY MUỐN ĐỔI XE MỚI CHO CHÁU  \nCẦN BÁN LẠI CHIẾC XE SIRIUS 50CC\nXE DKY NĂM 2022,CHÍNH CHỦ,BIỂN ĐẸP\nZIN ĐÉT TỪ ĐẦU ĐẾN CUỐI,XE VỀ CHỈ VIỆC ĐI,VÌ CÁC CHÁU ÍT TUỔI NÊN THƯỜNG BẢO DƯỠNG ĐỊNH KỲ.\nGIÁ RẺ HƠN MUA MỚI RẤT RẤT NHIỀU\nCHỈ CÓ MẤY TRIỆU THÔI NHÉ\nLH NGƯỜI NHÀ CHÁU 0768.292.399\nĐC: BALA HÀ ĐÔNG HN.','2024-08-11 10:44:54',0,0,'2',1),(35,13,14,'WaveA110 sx 2022 biển HN\nĐc cửa hàng xe máy Quang Hải\n163 Định Công Thượng. HM HN\nCall 0974526789','2024-08-11 10:46:03',0,0,'2',0),(36,14,14,'Cần pass hoặc trade hbt 5000 sang tornado 800 \nGiá 1mx, tình trạng mới 99%\nGdtt HN','2024-08-11 10:48:28',2,0,'2',0),(37,NULL,15,'Hồ Tây thuộc Quận Tây Hồ, thành phố Hà Nội, cách khu vực trung tâm thành phố khoảng 11km, đem lại sự tiện lợi cho du khách khi di chuyển đến đây. Nơi đây được biết đến với nhiều tên gọi khác nhau như: Hồ Kim Ngưu, Dâm Đàm, Lãng Bạc, Đầm Xác Cáo, Đoài Hồ. Với diện tích 500ha, đây là hồ nước ngọt tự nhiên lớn nhất Thủ đô, có chu vi khoảng 14.8km. ','2024-08-11 10:50:02',0,0,'2',0),(38,NULL,15,'Chùa Trấn Quốc nằm trên một hòn đảo xanh giữa Hồ Tây, là ngôi chùa nổi tiếng tại Hà Nội. Với hơn 1500 tuổi, chùa Trấn Quốc cũng là ngôi chùa cổ nhất tại Thủ đô, đóng vai trò là trung tâm Phật giáo của Thăng Long – Hà Nội. ','2024-08-11 10:50:46',0,0,'2',0),(39,15,15,'Đầm sen Hồ Tây ở đâu? Nằm gần công viên nước Hồ Tây, để đến đây bạn có thể đi theo hướng tới công viên nước và hỏi người dân xung quanh để đến được đầm sen. Tại đây, bạn không chỉ được thư giãn trong không khí trong lành và hương sen thoang thoảng mà còn được thưởng thức trà sen tươi sạch và check in sống ảo cực chill.','2024-08-11 10:52:47',0,0,'2',1),(40,NULL,13,'HOM NAY TOI MUON AN','2024-08-12 03:56:37',1,0,'2',1),(41,NULL,9,'MEME ','2024-08-13 17:07:51',0,0,'2',1),(42,NULL,9,'MEME ','2024-08-15 17:09:43',2,0,'2',1),(43,NULL,9,'MEME DATA USER','2024-08-15 17:10:15',4,0,'2',1),(44,NULL,13,'Hà Nội, ngày 16/05/2024 – VinFast công bố đã có 27.649 đơn đăng ký mua xe VF 3 chỉ sau 66 giờ mở bán nhận đặt cọc sớm, đạt kỷ lục chưa từng có trên thị trường ô tô. Đặc biệt 100% đơn hàng không được hoàn, hủy, chuyển nhượng khẳng định sức hút ấn tượng, xứng tầm là “mẫu xe quốc dân” tại Việt Nam.\n\nVinFast vô cùng biết ơn tình cảm và sự yêu thương của khách hàng với dòng sản phẩm VF 3 nói riêng và thương hiệu VinFast nói chung. Dự kiến, những chiếc VinFast VF 3 đầu tiên sẽ được bàn giao cho khách hàng từ tháng 8/2024 và sẽ có tối thiểu 20.000 xe VF3 được bàn giao trong năm 2024.','2024-09-04 02:40:10',0,0,'2',1),(45,NULL,17,'Hà Nội, ngày 16/05/2024 – VinFast công bố đã có 27.649 đơn đăng ký mua xe VF 3 chỉ sau 66 giờ mở bán nhận đặt cọc sớm, đạt kỷ lục chưa từng có trên thị trường ô tô. Đặc biệt 100% đơn hàng không được hoàn, hủy, chuyển nhượng khẳng định sức hút ấn tượng, xứng tầm là “mẫu xe quốc dân” tại Việt Nam.\n\nVinFast vô cùng biết ơn tình cảm và sự yêu thương của khách hàng với dòng sản phẩm VF 3 nói riêng và thương hiệu VinFast nói chung. Dự kiến, những chiếc VinFast VF 3 đầu tiên sẽ được bàn giao cho khách hàng từ tháng 8/2024 và sẽ có tối thiểu 20.000 xe VF3 được bàn giao trong năm 2024.','2024-09-04 03:03:17',0,0,'2',0),(46,NULL,5,'oke like xu','2024-09-04 03:14:49',0,0,'2',0),(47,16,11,'Hà Nội, ngày 16/05/2024 – VinFast công bố đã có 27.649 đơn đăng ký mua xe VF 3 chỉ sau 66 giờ mở bán nhận đặt cọc sớm, đạt kỷ lục chưa từng có trên thị trường ô tô. Đặc biệt 100% đơn hàng không được hoàn, hủy, chuyển nhượng khẳng định sức hút ấn tượng, xứng tầm là “mẫu xe quốc dân” tại Việt Nam.\n\nVinFast vô cùng biết ơn tình cảm và sự yêu thương của khách hàng với dòng sản phẩm VF 3 nói riêng và thương hiệu VinFast nói chung. Dự kiến, những chiếc VinFast VF 3 đầu tiên sẽ được bàn giao cho khách hàng từ tháng 8/2024 và sẽ có tối thiểu 20.000 xe VF3 được bàn giao trong năm 2024.','2024-09-04 03:35:51',0,0,'2',1),(48,NULL,14,'Hà Nội, ngày 16/05/2024 – VinFast công bố đã có 27.649 đơn đăng ký mua xe VF 3 chỉ sau 66 giờ mở bán nhận đặt cọc sớm, đạt kỷ lục chưa từng có trên thị trường ô tô. Đặc biệt 100% đơn hàng không được hoàn, hủy, chuyển nhượng khẳng định sức hút ấn tượng, xứng tầm là “mẫu xe quốc dân” tại Việt Nam.\n\nVinFast vô cùng biết ơn tình cảm và sự yêu thương của khách hàng với dòng sản phẩm VF 3 nói riêng và thương hiệu VinFast nói chung. Dự kiến, những chiếc VinFast VF 3 đầu tiên sẽ được bàn giao cho khách hàng từ tháng 8/2024 và sẽ có tối thiểu 20.000 xe VF3 được bàn giao trong năm 2024.','2024-09-04 03:38:28',4,0,'2',1),(49,NULL,11,'Hà Nội, ngày 16/05/2024 – VinFast công bố đã có 27.649 đơn đăng ký mua xe VF 3 chỉ sau 66 giờ mở bán nhận đặt cọc sớm, đạt kỷ lục chưa từng có trên thị trường ô tô. Đặc biệt 100% đơn hàng không được hoàn, hủy, chuyển nhượng khẳng định sức hút ấn tượng, xứng tầm là “mẫu xe quốc dân” tại Việt Nam.\n\nVinFast vô cùng biết ơn tình cảm và sự yêu thương của khách hàng với dòng sản phẩm VF 3 nói riêng và thương hiệu VinFast nói chung. Dự kiến, những chiếc VinFast VF 3 đầu tiên sẽ được bàn giao cho khách hàng từ tháng 8/2024 và sẽ có tối thiểu 20.000 xe VF3 được bàn giao trong năm 2024.','2024-09-04 03:39:54',3,0,'2',0),(50,NULL,5,'ádada','2024-09-04 04:01:08',1,0,'2',0),(51,NULL,17,'111','2024-09-04 14:58:47',0,0,'2',1),(52,NULL,13,'Hà Nội, ngày 16/05/2024 – VinFast công bố đã có 27.649 đơn đăng ký mua xe VF 3 chỉ sau 66 giờ mở bán nhận đặt cọc sớm, đạt kỷ lục chưa từng có trên thị trường ô tô. Đặc biệt 100% đơn hàng không được hoàn, hủy, chuyển nhượng khẳng định sức hút ấn tượng, xứng tầm là “mẫu xe quốc dân” tại Việt Nam. VinFast vô cùng biết ơn tình cảm và sự yêu thương của khách hàng với dòng sản phẩm VF 3 nói riêng và thương hiệu VinFast nói chung. Dự kiến, những chiếc VinFast VF 3 đầu tiên sẽ được bàn giao cho khách hàng từ tháng 8/2024 và sẽ có tối thiểu 20.000 xe VF3 được bàn giao trong năm 2024.','2024-09-13 12:40:32',0,0,'2',0),(53,NULL,13,'Cứu hộ mùa lũ😀','2024-09-13 15:07:39',3,0,'2',0),(54,NULL,13,'a','2024-09-13 17:08:22',0,0,'2',0),(55,NULL,23,'LỊCH TRÌNH MỘT BUỔI SÁNG MÙA THU CHO NGƯỜI U MÊ HÀ NỘI ĐÂY NHÉ 🌥️','2024-09-13 22:11:33',4,0,'2',0),(56,NULL,23,'| Hà Nội cuối tuần | \nVà mỗi lần em ý “Anh ơiiiii em đóiiiii!!!”','2024-09-13 22:13:46',1,0,'2',0),(57,17,23,'Những điều khiến mình tiếc nuối nếu phải xa Hà Nội','2024-09-13 22:15:34',1,0,'2',0),(58,17,23,'Top 50 lý do tui iu Hà Nội ✨','2024-09-13 22:16:30',0,0,'2',0),(59,16,11,'Hà Nội, ngày 16/05/2024 – VinFast công bố đã có 27.649 đơn đăng ký mua xe VF 3 chỉ sau 66 giờ mở bán nhận đặt cọc sớm, đạt kỷ lục chưa từng có trên thị trường ô tô. Đặc biệt 100% đơn hàng không được hoàn, hủy, chuyển nhượng khẳng định sức hút ấn tượng, xứng tầm là “mẫu xe quốc dân” tại Việt Nam. VinFast vô cùng biết ơn tình cảm và sự yêu thương của khách hàng với dòng sản phẩm VF 3 nói riêng và thương hiệu VinFast nói chung. Dự kiến, những chiếc VinFast VF 3 đầu tiên sẽ được bàn giao cho khách hàng từ tháng 8/2024 và sẽ có tối thiểu 20.000 xe VF3 được bàn giao trong năm 2024.','2024-09-13 22:21:16',0,0,'2',0),(60,NULL,24,'ERLING HAALAND CÓ PHÙ HỢP VỚI MAN CITY?\nTrở thành tiền đạo cắm của Manchester City tưởng như sẽ là công việc dễ dàng nhất trong bóng đá. Đây là đội bóng kiểm soát bóng nhiều nhất, chạm bóng trong vòng cấm nhiều nhất và ghi nhiều bàn thắng nhất Premier League mùa này. Chỉ cần đứng đúng chỗ và bàn thắng sẽ tới, phải không?','2024-09-13 22:27:00',0,0,'2',0),(61,18,24,'Thừa nhận rằng chúng ta đang cảm thấy tiếc cho Son Heung Min 🇰🇷💔','2024-09-13 22:28:40',1,0,'2',0),(62,NULL,25,'| 16 . 12 . 2020 - 30 PHIM TÌNH CẢM KHÔNG THỂ BỎ QUA TRONG MÙA ĐÔNG LẠNH |','2024-09-13 22:37:50',0,0,'2',0),(63,19,25,'Gởi list phim này ở đây, ai nghỉ lễ hông đi chơi thì cày tạm.','2024-09-13 22:39:09',1,0,'2',0),(64,20,26,'Xinh xẻo quả mấy bê munchkin siêu cute\ncó ai thích các siêu phẩm này k ạ cá cực kì hợp lý ạ bao ngầu bao xịn bao thơm','2024-09-13 22:42:51',1,0,'2',0),(65,22,26,'Cùng chung tay ủng hộ bà con vùng bão YAGI ','2024-09-13 22:48:01',2,0,'2',0),(66,NULL,26,'đẹp','2024-09-14 01:23:09',1,0,'2',0),(67,22,26,'Ủng hộ','2024-09-14 01:24:10',1,0,'2',0);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomchat`
--

DROP TABLE IF EXISTS `roomchat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomchat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `roomname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `createddate` datetime DEFAULT NULL,
  `deleted` int DEFAULT NULL,
  `idcreateduser` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomchat`
--

LOCK TABLES `roomchat` WRITE;
/*!40000 ALTER TABLE `roomchat` DISABLE KEYS */;
INSERT INTO `roomchat` VALUES (30,'','2024-08-11 21:16:58',0,16),(31,'','2024-08-12 01:35:14',0,13),(32,'','2024-08-12 01:45:28',0,14),(33,'','2024-08-12 01:45:28',0,14),(34,'','2024-08-15 16:57:40',0,9),(35,'','2024-08-15 16:57:40',0,9),(36,'','2024-09-04 03:59:59',0,13),(37,'','2024-09-04 14:56:11',0,20),(38,'','2024-09-04 14:57:56',0,17),(39,'','2024-09-04 14:59:02',0,19),(40,'','2024-09-04 15:00:55',0,17),(41,'','2024-09-13 10:09:29',0,21),(42,'','2024-09-13 22:43:13',0,26);
/*!40000 ALTER TABLE `roomchat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialgroup`
--

DROP TABLE IF EXISTS `socialgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socialgroup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idusercreated` int NOT NULL,
  `groupname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `createddate` datetime NOT NULL,
  `typegroup` varchar(10) NOT NULL,
  `deleted` int NOT NULL,
  `background` varchar(255) DEFAULT NULL,
  `socialgroupcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialgroup`
--

LOCK TABLES `socialgroup` WRITE;
/*!40000 ALTER TABLE `socialgroup` DISABLE KEYS */;
INSERT INTO `socialgroup` VALUES (8,9,'Đồ án K71 UTT','2024-08-11 09:16:06','PUB',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F453540464_894452942712290_9160963830425399928_n.jpg?alt=media&token=599fdd29-df71-48dc-a2c5-1f65ba6fe981',NULL),(9,9,'Nhóm siêu hay nè','2024-08-11 09:40:14','PUB',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fball-brazil.png?alt=media&token=f4d324cb-821f-4ebb-8a05-c428be8bcda5',NULL),(10,11,'Hội review đồ ăn ngon Hà Nội','2024-08-11 10:06:42','PUB',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fball-brazil.png?alt=media&token=f4d324cb-821f-4ebb-8a05-c428be8bcda5',NULL),(11,12,'Hội săn sale mĩ phẩm chính hãng giá rẻ','2024-08-11 10:19:59','PUB',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F5eb69551-8e04-4b3e-b4a9-aa6e87a394d9.jpg?alt=media&token=293837bd-6b6e-4542-b723-f55c2fc34bcb',NULL),(12,13,'Nhóm thanh lý ô tô cũ giá rẻ','2024-08-11 10:30:37','PUB',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2FIMG_8825.png?alt=media&token=1c6e2601-732d-4afa-bc68-b338844beb5e',NULL),(13,14,'Thanh lý xe wave giá đẹp','2024-08-11 10:41:16','PUB',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fwave-alpha-2024-dac-biet-den-nham_0d120b75a17b45b983aca4dd296647f9_master.webp?alt=media&token=186dd549-9bb2-4dc2-804c-15f16ec62a43',NULL),(14,14,'Thanh lý vợt cầu lông uy tín','2024-08-11 10:47:52','PUB',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F1000z-4.jpg?alt=media&token=b6c61f62-255d-4d01-829f-0c25349b9934',NULL),(15,15,'Đi chơi ở đâu Hà Nội','2024-08-11 10:51:04','PUB',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fball-brazil.png?alt=media&token=f4d324cb-821f-4ebb-8a05-c428be8bcda5',NULL),(16,11,'HỘI XE OTO DEP HANOI','2024-09-04 03:35:22','PUB',0,'https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fvinfast-vf7.png?alt=media&token=9891d51d-813e-4a60-b2c3-eaa7736c6720',NULL),(17,23,'Hà Nội Ăn Gì','2024-09-13 22:14:35','PUB',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F456904626_802762902070192_747376381863267356_n.jpg?alt=media&token=46288b5c-220d-4fcb-84d4-527282e7899e',NULL),(18,24,'Bóng đá 24/7','2024-09-13 22:27:27','PUB',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F111111.jfif?alt=media&token=4a1a03c1-a356-4a4a-a336-1dfc644726b4',NULL),(19,25,'Phim hay mỗi ngày ','2024-09-13 22:38:21','PUB',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F131044056_3539901386092745_7105698845323293780_n.jpg?alt=media&token=1db62441-78df-40d0-b570-0b97cc514ca4',NULL),(20,26,'Tiệm thú cưng','2024-09-13 22:42:22','PUB',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F122432.jpg?alt=media&token=20440748-312a-448e-bdce-3fdbe1722ced',NULL),(21,26,'VIVU Hà Nội Mùa Thu','2024-09-13 22:46:28','PUB',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F12aa.jpg?alt=media&token=4254f360-1e4a-45bd-afd4-a6bb07cb0dc5',NULL),(22,26,'Ủng hộ bão YaGi','2024-09-13 22:47:05','PUB',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F459119477_538174338560147_453328036252338671_n.jpg?alt=media&token=78b027cc-9983-48cd-9e79-b24873d5635f',NULL),(23,26,'BẢO VỆ','2024-09-14 01:24:40','PUB',0,'https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F12aa.jpg?alt=media&token=ca16821b-e94b-4183-bbbe-001125425c0f',NULL);
/*!40000 ALTER TABLE `socialgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroup`
--

DROP TABLE IF EXISTS `usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usergroup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `idgroup` int NOT NULL,
  `status` varchar(10) NOT NULL,
  `roleingroup` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroup`
--

LOCK TABLES `usergroup` WRITE;
/*!40000 ALTER TABLE `usergroup` DISABLE KEYS */;
INSERT INTO `usergroup` VALUES (1,2,1,'2','ADMIN'),(2,3,2,'2','ADMIN'),(3,3,3,'2','ADMIN'),(4,3,4,'2','ADMIN'),(5,3,5,'2','ADMIN'),(6,3,6,'2','ADMIN'),(7,3,7,'2','ADMIN'),(8,9,8,'2','ADMIN'),(9,9,9,'2','ADMIN'),(10,11,10,'2','ADMIN'),(11,12,11,'2','ADMIN'),(12,13,12,'2','ADMIN'),(13,14,13,'2','ADMIN'),(14,14,14,'2','ADMIN'),(15,15,15,'2','ADMIN'),(16,11,16,'2','ADMIN'),(17,23,17,'2','ADMIN'),(18,24,18,'2','ADMIN'),(19,25,19,'2','ADMIN'),(20,26,20,'2','ADMIN'),(21,26,21,'2','ADMIN'),(22,26,22,'2','ADMIN'),(23,26,23,'2','ADMIN');
/*!40000 ALTER TABLE `usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprofile`
--

DROP TABLE IF EXISTS `userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userprofile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phonenumber` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `displayname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `createddate` date NOT NULL,
  `deleted` int NOT NULL,
  `role` varchar(45) DEFAULT NULL,
  `education` text,
  `gender` varchar(45) DEFAULT NULL,
  `job` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprofile`
--

LOCK TABLES `userprofile` WRITE;
/*!40000 ALTER TABLE `userprofile` DISABLE KEYS */;
INSERT INTO `userprofile` VALUES (2,'admin','8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918','admin@gmail.com','0123111223','admin','https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2Fwave-alpha-2024-dac-biet-den-nham_0d120b75a17b45b983aca4dd296647f9_master.webp?alt=media&token=3d5a29fc-7cff-4c11-ac1e-0c12f1761200','2024-08-03',0,'LO','123','1231','23'),(3,'test5','c92e99bf9e1fb95f792e057ea019564acae28ce4214f4a84f7dc6ba6526455e2','vvdao096@gmail.com','0942858890','test5','https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fman-city-vs-mu-quy-do-run-ray-den-etihad-552.jpg?alt=media&token=35f0c308-77bd-4da0-8a6b-0fba268b4f6a','2024-08-04',0,'string','123','123','123'),(4,'string','473287f8298dba7163a897908958f7c0eae733e25d2e027992ea2edc9bed2fa8','string@gmail.com','0210402104','string','https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F106393896_113070130460891_1011606804751031818_n.jpg?alt=media&token=22b0abcb-9a40-4c46-b9b4-0ba906250692','2024-08-10',0,'string','323','123','123'),(5,'test1','c92e99bf9e1fb95f792e057ea019564acae28ce4214f4a84f7dc6ba6526455e2','vvdao096@gmail.com','0942858890','abc','https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fman-city-vs-mu-quy-do-run-ray-den-etihad-552.jpg?alt=media&token=35f0c308-77bd-4da0-8a6b-0fba268b4f6a','2024-08-10',0,'user','32','311','22'),(6,'test2','186ae4a1c136a93aeb4988e9953260e2951895b25b2edf7f429c17a67ee6205c','ado@gmail.com','09428589923','test1','https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fman-city-vs-mu-quy-do-run-ray-den-etihad-552.jpg?alt=media&token=35f0c308-77bd-4da0-8a6b-0fba268b4f6a','2024-08-10',0,'user','441','23we','33'),(7,'test3','186ae4a1c136a93aeb4988e9953260e2951895b25b2edf7f429c17a67ee6205c','ado@gmail.com','09428589923','test2','https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fman-city-vs-mu-quy-do-run-ray-den-etihad-552.jpg?alt=media&token=35f0c308-77bd-4da0-8a6b-0fba268b4f6a','2024-08-10',0,'user','qwe','dq','wq'),(8,'test4','53a44dc04c9ae72c9ab4d31999319fdb4581477ef6c806db9ffad80ade199d77','vvdao09@gmail.com','09428588900','test3','https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fman-city-vs-mu-quy-do-run-ray-den-etihad-552.jpg?alt=media&token=35f0c308-77bd-4da0-8a6b-0fba268b4f6a','2024-08-10',0,'user','fq','eqwew','223'),(9,'NAQ2k','c92e99bf9e1fb95f792e057ea019564acae28ce4214f4a84f7dc6ba6526455e2','vht@gmail.com','0942858890','Nguyễn Quang Anh','https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fman-city-vs-mu-quy-do-run-ray-den-etihad-552.jpg?alt=media&token=35f0c308-77bd-4da0-8a6b-0fba268b4f6a','2024-08-11',0,'user','ĐHCNGVT','Nam','IT'),(10,'Qanh601','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','Quang123@gmail.com','0123456789','Nguyễn Anh Quang','https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F450016649_775799471433202_1300959579579086172_n.jpg?alt=media&token=3ac00635-8ca9-4c1b-aac8-0b89864fd77f','2024-08-11',0,'user','','',''),(11,'Huy123','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','Huy123@gmail.com','0829323483','Nguyễn Huy','https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F222.jfif?alt=media&token=54c1cb13-83bb-41f7-a767-e8ddd53630a5','2024-08-11',0,'user','UTT','Nam','Sinh Viên'),(12,'Linh123','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','Linh123@gmail.com','0198383831','Trần Hà Linh','https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fman-city-vs-mu-quy-do-run-ray-den-etihad-552.jpg?alt=media&token=35f0c308-77bd-4da0-8a6b-0fba268b4f6a','2024-08-11',0,'user',NULL,NULL,NULL),(13,'Hiếu123','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','hieu123@gmail.com','0921737127','Trần Hiếu','https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F111111.jfif?alt=media&token=8fa85242-49e5-4cee-8181-b7cfaaecb6ee','2024-08-11',0,'user','UTT','','Sinh viên'),(14,'Minh Long','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','long123@gmail.com','0932488234','Hồ Minh Long','https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F454498272_499522312729053_3251442509095165723_n.jpg?alt=media&token=444c0889-093b-4f20-9899-d15ba32e9e8c','2024-08-11',0,'user','','',''),(15,'Tra123','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','tra123@gmail.com','0938423184','Trà Điệp','https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F122432.jpg?alt=media&token=8d03465e-e8b4-4107-a2bd-b7fcc4e0c39b','2024-08-11',0,'user','','',''),(16,'test_1','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','test_1@gmail.com','032131312312','test_1','https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2Fman-city-vs-mu-quy-do-run-ray-den-etihad-552.jpg?alt=media&token=2efd7d1d-5212-4821-91c9-61bf1c9a1884','2024-08-11',0,'user','ok','ok','ok'),(17,'q123','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','q1234@gmail.com','0192838381','quang','https://firebasestorage.googleapis.com/v0/b/fe-social.appspot.com/o/files%2F453741706_10226334534455299_4101238214367662857_n.jpg?alt=media&token=49faf43b-3913-493c-a39f-c92214b91bca','2024-09-04',0,'user','','',''),(18,'quang456','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','quang456@gmail.com','0982747289','Quang Nguyen','https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F455030906_4016279615322507_6813249910999296742_n.jpg?alt=media&token=73f20dea-0fcd-4047-b625-6eb8a1709cb9','2024-09-04',0,'user','','',''),(19,'h1234','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','hieuaa@gmail.com','021838217121','Duy Hiếu','https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F279928104_7370804832994102_7375370536200408028_n.jpg?alt=media&token=fddc4c4f-b606-4903-b7e4-3273acda167b','2024-09-04',0,'user',NULL,NULL,NULL),(20,'yolo','311fe3feed16b9cd8df0f8b1517be5cb86048707df4889ba8dc37d4d68866d02','vvdao0921@gmail.com','093281232223','yolo','https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F455029426_1679894916170413_2439287200907936566_n.jpg?alt=media&token=31b0c032-9efc-469e-b69e-84a12838b8a3','2024-09-04',0,'user','','',''),(21,'ninh123','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','ninh123@gmail.com','0929393039','Do Phuong Ninh','https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2Fhanoi.jpg?alt=media&token=9dbb7560-fbca-4f2e-a22f-845cce38fd0a','2024-09-13',0,'user','','',''),(22,'test6','bc7b8bf12b95a8dc8c34deef98e8c955d6bd60e74a56817f8accb43d445aa540','test@gmail.com','0921213112','test','','2024-09-13',0,'user',NULL,NULL,NULL),(23,'hai123','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','hai123@gmail.com','0982727272','Nguyen Hai','https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F222.jfif?alt=media&token=9cfd212d-7654-44b4-8bde-c29c193519de','2024-09-13',0,'user','','',''),(24,'thien123','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','thien123@gmail.com','023921848218','Duy Thien','https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2F459119477_538174338560147_453328036252338671_n.jpg?alt=media&token=d3d6c6e0-e22c-4d76-8170-d88ad35cdf62','2024-09-13',0,'user','','',''),(25,'anh123','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','anh123@gmail.com','02134921848','Ngoc Anh','https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2Fho-tay-o-dau-2.jpg?alt=media&token=771417a6-b82c-4b09-b4fe-9dbabf589a40','2024-09-13',0,'user','','',''),(26,'bao123','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','bao123@gmail.com','219392182148','Bao Tran','https://firebasestorage.googleapis.com/v0/b/fire-base-storage-b5c8c.appspot.com/o/files%2Fman-city-man-united-sieu-cup-anh-7-1723306966134372420352.webp?alt=media&token=52f06d77-f14f-416b-b301-1e2328beef58','2024-09-13',0,'user','','','');
/*!40000 ALTER TABLE `userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-25 10:07:58
