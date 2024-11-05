-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!50606 SET @OLD_INNODB_STATS_AUTO_RECALC=@@INNODB_STATS_AUTO_RECALC */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=OFF */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mysql`;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `columns_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`User`,`Db`,`Table_name`,`Column_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component` (
  `component_id` int unsigned NOT NULL AUTO_INCREMENT,
  `component_group_id` int unsigned NOT NULL,
  `component_urn` text NOT NULL,
  PRIMARY KEY (`component_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='Components';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`User`,`Db`),
  KEY `User` (`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('localhost','performance_schema','mysql.session','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N'),('localhost','sys','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_roles`
--

DROP TABLE IF EXISTS `default_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_roles` (
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `DEFAULT_ROLE_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '%',
  `DEFAULT_ROLE_USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`HOST`,`USER`,`DEFAULT_ROLE_HOST`,`DEFAULT_ROLE_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Default roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_roles`
--

LOCK TABLES `default_roles` WRITE;
/*!40000 ALTER TABLE `default_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_cost`
--

DROP TABLE IF EXISTS `engine_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine_cost` (
  `engine_name` varchar(64) NOT NULL,
  `device_type` int NOT NULL,
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'io_block_read_cost' then 1.0 when _utf8mb3'memory_block_read_cost' then 0.25 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`,`engine_name`,`device_type`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_cost`
--

LOCK TABLES `engine_cost` WRITE;
/*!40000 ALTER TABLE `engine_cost` DISABLE KEYS */;
INSERT INTO `engine_cost` (`engine_name`, `device_type`, `cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('default',0,'io_block_read_cost',NULL,'2024-08-02 17:36:40',NULL),('default',0,'memory_block_read_cost',NULL,'2024-08-02 17:36:40',NULL);
/*!40000 ALTER TABLE `engine_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `ret` tinyint NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_grants`
--

DROP TABLE IF EXISTS `global_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_grants` (
  `USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `PRIV` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `WITH_GRANT_OPTION` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`USER`,`HOST`,`PRIV`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Extended global grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_grants`
--

LOCK TABLES `global_grants` WRITE;
/*!40000 ALTER TABLE `global_grants` DISABLE KEYS */;
INSERT INTO `global_grants` VALUES ('abc_xyz','%','APPLICATION_PASSWORD_ADMIN','Y'),('abc_xyz','%','AUDIT_ABORT_EXEMPT','Y'),('abc_xyz','%','AUDIT_ADMIN','Y'),('abc_xyz','%','AUTHENTICATION_POLICY_ADMIN','Y'),('abc_xyz','%','BACKUP_ADMIN','Y'),('abc_xyz','%','BINLOG_ADMIN','Y'),('abc_xyz','%','BINLOG_ENCRYPTION_ADMIN','Y'),('abc_xyz','%','CLONE_ADMIN','Y'),('abc_xyz','%','CONNECTION_ADMIN','Y'),('abc_xyz','%','ENCRYPTION_KEY_ADMIN','Y'),('abc_xyz','%','FIREWALL_EXEMPT','Y'),('abc_xyz','%','FLUSH_OPTIMIZER_COSTS','Y'),('abc_xyz','%','FLUSH_STATUS','Y'),('abc_xyz','%','FLUSH_TABLES','Y'),('abc_xyz','%','FLUSH_USER_RESOURCES','Y'),('abc_xyz','%','GROUP_REPLICATION_ADMIN','Y'),('abc_xyz','%','GROUP_REPLICATION_STREAM','Y'),('abc_xyz','%','INNODB_REDO_LOG_ARCHIVE','Y'),('abc_xyz','%','INNODB_REDO_LOG_ENABLE','Y'),('abc_xyz','%','PASSWORDLESS_USER_ADMIN','Y'),('abc_xyz','%','PERSIST_RO_VARIABLES_ADMIN','Y'),('abc_xyz','%','REPLICATION_APPLIER','Y'),('abc_xyz','%','REPLICATION_SLAVE_ADMIN','Y'),('abc_xyz','%','RESOURCE_GROUP_ADMIN','Y'),('abc_xyz','%','RESOURCE_GROUP_USER','Y'),('abc_xyz','%','ROLE_ADMIN','Y'),('abc_xyz','%','SENSITIVE_VARIABLES_OBSERVER','Y'),('abc_xyz','%','SERVICE_CONNECTION_ADMIN','Y'),('abc_xyz','%','SESSION_VARIABLES_ADMIN','Y'),('abc_xyz','%','SET_USER_ID','Y'),('abc_xyz','%','SHOW_ROUTINE','Y'),('abc_xyz','%','SYSTEM_USER','Y'),('abc_xyz','%','SYSTEM_VARIABLES_ADMIN','Y'),('abc_xyz','%','TABLE_ENCRYPTION_ADMIN','Y'),('abc_xyz','%','TELEMETRY_LOG_ADMIN','Y'),('abc_xyz','%','XA_RECOVER_ADMIN','Y'),('debian-sys-maint','localhost','APPLICATION_PASSWORD_ADMIN','Y'),('debian-sys-maint','localhost','AUDIT_ADMIN','Y'),('debian-sys-maint','localhost','AUTHENTICATION_POLICY_ADMIN','Y'),('debian-sys-maint','localhost','BACKUP_ADMIN','Y'),('debian-sys-maint','localhost','BINLOG_ADMIN','Y'),('debian-sys-maint','localhost','BINLOG_ENCRYPTION_ADMIN','Y'),('debian-sys-maint','localhost','CLONE_ADMIN','Y'),('debian-sys-maint','localhost','CONNECTION_ADMIN','Y'),('debian-sys-maint','localhost','ENCRYPTION_KEY_ADMIN','Y'),('debian-sys-maint','localhost','FLUSH_OPTIMIZER_COSTS','Y'),('debian-sys-maint','localhost','FLUSH_STATUS','Y'),('debian-sys-maint','localhost','FLUSH_TABLES','Y'),('debian-sys-maint','localhost','FLUSH_USER_RESOURCES','Y'),('debian-sys-maint','localhost','GROUP_REPLICATION_ADMIN','Y'),('debian-sys-maint','localhost','GROUP_REPLICATION_STREAM','Y'),('debian-sys-maint','localhost','INNODB_REDO_LOG_ARCHIVE','Y'),('debian-sys-maint','localhost','INNODB_REDO_LOG_ENABLE','Y'),('debian-sys-maint','localhost','PASSWORDLESS_USER_ADMIN','Y'),('debian-sys-maint','localhost','PERSIST_RO_VARIABLES_ADMIN','Y'),('debian-sys-maint','localhost','REPLICATION_APPLIER','Y'),('debian-sys-maint','localhost','REPLICATION_SLAVE_ADMIN','Y'),('debian-sys-maint','localhost','RESOURCE_GROUP_ADMIN','Y'),('debian-sys-maint','localhost','RESOURCE_GROUP_USER','Y'),('debian-sys-maint','localhost','ROLE_ADMIN','Y'),('debian-sys-maint','localhost','SENSITIVE_VARIABLES_OBSERVER','Y'),('debian-sys-maint','localhost','SERVICE_CONNECTION_ADMIN','Y'),('debian-sys-maint','localhost','SESSION_VARIABLES_ADMIN','Y'),('debian-sys-maint','localhost','SET_USER_ID','Y'),('debian-sys-maint','localhost','SHOW_ROUTINE','Y'),('debian-sys-maint','localhost','SYSTEM_USER','Y'),('debian-sys-maint','localhost','SYSTEM_VARIABLES_ADMIN','Y'),('debian-sys-maint','localhost','TABLE_ENCRYPTION_ADMIN','Y'),('debian-sys-maint','localhost','TELEMETRY_LOG_ADMIN','Y'),('debian-sys-maint','localhost','XA_RECOVER_ADMIN','Y'),('mysql.infoschema','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.infoschema','localhost','FIREWALL_EXEMPT','N'),('mysql.infoschema','localhost','SYSTEM_USER','N'),('mysql.session','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.session','localhost','AUTHENTICATION_POLICY_ADMIN','N'),('mysql.session','localhost','BACKUP_ADMIN','N'),('mysql.session','localhost','CLONE_ADMIN','N'),('mysql.session','localhost','CONNECTION_ADMIN','N'),('mysql.session','localhost','FIREWALL_EXEMPT','N'),('mysql.session','localhost','PERSIST_RO_VARIABLES_ADMIN','N'),('mysql.session','localhost','SESSION_VARIABLES_ADMIN','N'),('mysql.session','localhost','SYSTEM_USER','N'),('mysql.session','localhost','SYSTEM_VARIABLES_ADMIN','N'),('mysql.sys','localhost','AUDIT_ABORT_EXEMPT','N'),('mysql.sys','localhost','FIREWALL_EXEMPT','N'),('mysql.sys','localhost','SYSTEM_USER','N'),('root','localhost','APPLICATION_PASSWORD_ADMIN','Y'),('root','localhost','AUDIT_ABORT_EXEMPT','Y'),('root','localhost','AUDIT_ADMIN','Y'),('root','localhost','AUTHENTICATION_POLICY_ADMIN','Y'),('root','localhost','BACKUP_ADMIN','Y'),('root','localhost','BINLOG_ADMIN','Y'),('root','localhost','BINLOG_ENCRYPTION_ADMIN','Y'),('root','localhost','CLONE_ADMIN','Y'),('root','localhost','CONNECTION_ADMIN','Y'),('root','localhost','ENCRYPTION_KEY_ADMIN','Y'),('root','localhost','FIREWALL_EXEMPT','Y'),('root','localhost','FLUSH_OPTIMIZER_COSTS','Y'),('root','localhost','FLUSH_STATUS','Y'),('root','localhost','FLUSH_TABLES','Y'),('root','localhost','FLUSH_USER_RESOURCES','Y'),('root','localhost','GROUP_REPLICATION_ADMIN','Y'),('root','localhost','GROUP_REPLICATION_STREAM','Y'),('root','localhost','INNODB_REDO_LOG_ARCHIVE','Y'),('root','localhost','INNODB_REDO_LOG_ENABLE','Y'),('root','localhost','PASSWORDLESS_USER_ADMIN','Y'),('root','localhost','PERSIST_RO_VARIABLES_ADMIN','Y'),('root','localhost','REPLICATION_APPLIER','Y'),('root','localhost','REPLICATION_SLAVE_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_USER','Y'),('root','localhost','ROLE_ADMIN','Y'),('root','localhost','SENSITIVE_VARIABLES_OBSERVER','Y'),('root','localhost','SERVICE_CONNECTION_ADMIN','Y'),('root','localhost','SESSION_VARIABLES_ADMIN','Y'),('root','localhost','SET_USER_ID','Y'),('root','localhost','SHOW_ROUTINE','Y'),('root','localhost','SYSTEM_USER','Y'),('root','localhost','SYSTEM_VARIABLES_ADMIN','Y'),('root','localhost','TABLE_ENCRYPTION_ADMIN','Y'),('root','localhost','TELEMETRY_LOG_ADMIN','Y'),('root','localhost','XA_RECOVER_ADMIN','Y');
/*!40000 ALTER TABLE `global_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gtid_executed`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `gtid_executed` (
  `source_uuid` char(36) NOT NULL COMMENT 'uuid of the source where the transaction was originally executed.',
  `interval_start` bigint NOT NULL COMMENT 'First number of interval.',
  `interval_end` bigint NOT NULL COMMENT 'Last number of interval.',
  PRIMARY KEY (`source_uuid`,`interval_start`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (0,'Contents',0,''),(1,'Help Metadata',0,''),(2,'Data Types',0,''),(3,'Administration',0,''),(4,'Functions',0,''),(5,'Enterprise Encryption Functions',4,''),(6,'Language Structure',0,''),(7,'Geographic Features',0,''),(8,'MBR',7,''),(9,'WKT',7,''),(10,'Comparison Operators',4,''),(11,'Logical Operators',4,''),(12,'Flow Control Functions',4,''),(13,'Numeric Functions',4,''),(14,'Date and Time Functions',4,''),(15,'String Functions',4,''),(16,'Cast Functions and Operators',4,''),(17,'XML',4,''),(18,'Bit Functions',4,''),(19,'Encryption Functions',4,''),(20,'Locking Functions',4,''),(21,'Information Functions',4,''),(22,'Spatial Functions',4,''),(23,'WKT Functions',22,''),(24,'WKB Functions',22,''),(25,'Geometry Constructors',22,''),(26,'Geometry Property Functions',22,''),(27,'Point Property Functions',22,''),(28,'LineString Property Functions',22,''),(29,'Polygon Property Functions',22,''),(30,'GeometryCollection Property Functions',22,''),(31,'Geometry Relation Functions',22,''),(32,'MBR Functions',22,''),(33,'GTID',4,''),(34,'Aggregate Functions and Modifiers',4,''),(35,'GROUP BY Functions and Modifiers',4,''),(36,'Window Functions',4,''),(37,'Performance Schema Functions',4,''),(38,'Internal Functions',4,''),(39,'Miscellaneous Functions',4,''),(40,'Data Definition',0,''),(41,'Data Manipulation',0,''),(42,'Transactions',0,''),(43,'Replication Statements',0,''),(44,'Prepared Statements',0,''),(45,'Compound Statements',0,''),(46,'Account Management',0,''),(47,'Table Maintenance',0,''),(48,'Loadable Functions',0,''),(49,'Components',0,''),(50,'Plugins',0,''),(51,'Utility',0,''),(52,'Storage Engines',0,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (108,'%'),(264,'&'),(422,'(JSON'),(86,'*'),(84,'+'),(85,'-'),(423,'->'),(425,'->>'),(87,'/'),(75,':='),(59,'<'),(266,'<<'),(58,'<='),(56,'<=>'),(57,'<>'),(55,'='),(61,'>'),(60,'>='),(267,'>>'),(90,'ABS'),(881,'ACCOUNT'),(91,'ACOS'),(659,'ACTION'),(49,'ADD'),(120,'ADDDATE'),(121,'ADDTIME'),(915,'ADMIN'),(270,'AES_DECRYPT'),(271,'AES_ENCRYPT'),(581,'AFTER'),(247,'AGAINST'),(936,'AGGREGATE'),(582,'ALGORITHM'),(695,'ALL'),(50,'ALTER'),(583,'ANALYZE'),(62,'AND'),(528,'ANY_VALUE'),(660,'ARCHIVE'),(254,'ARRAY'),(724,'AS'),(466,'ASC'),(185,'ASCII'),(92,'ASIN'),(776,'ASSIGN_GTIDS_TO_ANONYMOUS_TRANSACTIONS'),(6,'ASYMMETRIC_DECRYPT'),(13,'ASYMMETRIC_DERIVE'),(7,'ASYMMETRIC_ENCRYPT'),(8,'ASYMMETRIC_SIGN'),(9,'ASYMMETRIC_VERIFY'),(643,'AT'),(93,'ATAN'),(94,'ATAN2'),(882,'ATTRIBUTE'),(913,'AUTHENTICATION'),(745,'AUTOCOMMIT'),(584,'AUTOEXTEND_SIZE'),(585,'AUTO_INCREMENT'),(460,'AVG'),(586,'AVG_ROW_LENGTH'),(757,'BACKUP'),(771,'BEFORE'),(746,'BEGIN'),(288,'BENCHMARK'),(63,'BETWEEN'),(186,'BIN'),(253,'BINARY'),(563,'BINLOG'),(529,'BIN_TO_UUID'),(462,'BIT_AND'),(269,'BIT_COUNT'),(187,'BIT_LENGTH'),(463,'BIT_OR'),(464,'BIT_XOR'),(17,'BOOL'),(18,'BOOLEAN'),(230,'BOTH'),(647,'BTREE'),(467,'BY'),(42,'BYTE'),(971,'CACHE'),(689,'CALL'),(499,'CAN_ACCESS_COLUMN'),(500,'CAN_ACCESS_DATABASE'),(501,'CAN_ACCESS_TABLE'),(502,'CAN_ACCESS_USER'),(503,'CAN_ACCESS_VIEW'),(661,'CASCADE'),(76,'CASE'),(255,'CAST'),(862,'CATALOG_NAME'),(95,'CEIL'),(96,'CEILING'),(747,'CHAIN'),(883,'CHALLENGE_RESPONSE'),(587,'CHANGE'),(564,'CHANNEL'),(43,'CHAR'),(39,'CHARACTER'),(189,'CHARACTER_LENGTH'),(289,'CHARSET'),(188,'CHAR_LENGTH'),(588,'CHECK'),(589,'CHECKSUM'),(884,'CIPHER'),(863,'CLASS_ORIGIN'),(916,'CLIENT'),(944,'CLONE'),(697,'CLOSE'),(65,'COALESCE'),(965,'CODE'),(290,'COERCIBILITY'),(546,'COLLATE'),(291,'COLLATION'),(590,'COLUMN'),(591,'COLUMNS'),(864,'COLUMN_NAME'),(551,'COMMENT'),(748,'COMMIT'),(760,'COMMITTED'),(662,'COMPACT'),(552,'COMPLETION'),(940,'COMPONENT'),(272,'COMPRESS'),(663,'COMPRESSED'),(592,'COMPRESSION'),(190,'CONCAT'),(191,'CONCAT_WS'),(711,'CONCURRENT'),(859,'CONDITION'),(593,'CONNECTION'),(292,'CONNECTION_ID'),(749,'CONSISTENT'),(594,'CONSTRAINT'),(865,'CONSTRAINT_CATALOG'),(866,'CONSTRAINT_NAME'),(867,'CONSTRAINT_SCHEMA'),(860,'CONTINUE'),(97,'CONV'),(260,'CONVERT'),(122,'CONVERT_TZ'),(98,'COS'),(99,'COT'),(465,'COUNT'),(100,'CRC32'),(51,'CREATE'),(10,'CREATE_ASYMMETRIC_PRIV_KEY'),(11,'CREATE_ASYMMETRIC_PUB_KEY'),(14,'CREATE_DH_PARAMETERS'),(12,'CREATE_DIGEST'),(740,'CROSS'),(664,'CSV'),(484,'CUME_DIST'),(123,'CURDATE'),(885,'CURRENT'),(124,'CURRENT_DATE'),(293,'CURRENT_ROLE'),(125,'CURRENT_TIME'),(126,'CURRENT_TIMESTAMP'),(294,'CURRENT_USER'),(857,'CURSOR'),(868,'CURSOR_NAME'),(127,'CURTIME'),(595,'DATA'),(295,'DATABASE'),(949,'DATABASES'),(636,'DATAFILE'),(36,'DATE'),(128,'DATEDIFF'),(256,'DATETIME'),(129,'DATE_ADD'),(144,'DATE_FORMAT'),(130,'DATE_SUB'),(131,'DAY'),(145,'DAYNAME'),(146,'DAYOFMONTH'),(147,'DAYOFWEEK'),(148,'DAYOFYEAR'),(132,'DAY_HOUR'),(133,'DAY_MINUTE'),(134,'DAY_SECOND'),(848,'DEALLOCATE'),(28,'DEC'),(31,'DECIMAL'),(849,'DECLARE'),(2,'DEFAULT'),(839,'DEFAULT_AUTH'),(553,'DEFINER'),(653,'DEFINITION'),(101,'DEGREES'),(703,'DELAYED'),(596,'DELAY_KEY_WRITE'),(665,'DELETE'),(485,'DENSE_RANK'),(468,'DESC'),(982,'DESCRIBE'),(654,'DESCRIPTION'),(869,'DIAGNOSTICS'),(597,'DIRECTORY'),(554,'DISABLE'),(598,'DISCARD'),(461,'DISTINCT'),(725,'DISTINCTROW'),(88,'DIV'),(555,'DO'),(599,'DROP'),(739,'DUAL'),(726,'DUMPFILE'),(704,'DUPLICATE'),(666,'DYNAMIC'),(77,'ELSE'),(850,'ELSEIF'),(192,'ELT'),(556,'ENABLE'),(712,'ENCLOSED'),(547,'ENCRYPTION'),(78,'END'),(644,'ENDS'),(600,'ENGINE'),(950,'ENGINES'),(565,'ERROR'),(951,'ERRORS'),(239,'ESCAPE'),(713,'ESCAPED'),(557,'EVENT'),(963,'EVENTS'),(645,'EVERY'),(696,'EXCEPT'),(601,'EXCHANGE'),(847,'EXECUTE'),(642,'EXISTS'),(861,'EXIT'),(102,'EXP'),(248,'EXPANSION'),(886,'EXPIRE'),(983,'EXPLAIN'),(972,'EXPORT'),(193,'EXPORT_SET'),(934,'EXTENDED'),(682,'EXTENT_SIZE'),(149,'EXTRACT'),(424,'EXTRACTION)'),(261,'EXTRACTVALUE'),(887,'FACTOR'),(888,'FAILED_LOGIN_ATTEMPTS'),(15,'FALSE'),(932,'FAST'),(667,'FEDERATED'),(858,'FETCH'),(194,'FIELD'),(714,'FIELDS'),(917,'FILE'),(683,'FILE_BLOCK_SIZE'),(805,'FILTER'),(195,'FIND_IN_SET'),(889,'FINISH'),(602,'FIRST'),(486,'FIRST_VALUE'),(29,'FIXED'),(32,'FLOAT4'),(33,'FLOAT8'),(103,'FLOOR'),(973,'FLUSH'),(566,'FOR'),(741,'FORCE'),(603,'FOREIGN'),(196,'FORMAT'),(495,'FORMAT_BYTES'),(496,'FORMAT_PICO_TIME'),(296,'FOUND_ROWS'),(231,'FROM'),(197,'FROM_BASE64'),(150,'FROM_DAYS'),(151,'FROM_UNIXTIME'),(668,'FULL'),(604,'FULLTEXT'),(169,'FUNCTION'),(974,'GENERAL'),(336,'GEOMCOLLECTION'),(337,'GEOMETRYCOLLECTION'),(870,'GET'),(504,'GET_DD_COLUMN_PRIVILEGES'),(505,'GET_DD_CREATE_OPTIONS'),(506,'GET_DD_INDEX_SUB_PART_LENGTH'),(152,'GET_FORMAT'),(283,'GET_LOCK'),(761,'GLOBAL'),(918,'GRANT'),(952,'GRANTS'),(66,'GREATEST'),(576,'GROUP'),(530,'GROUPING'),(469,'GROUP_CONCAT'),(454,'GTID_SUBSET'),(455,'GTID_SUBTRACT'),(698,'HANDLER'),(727,'HAVING'),(669,'HEAP'),(5,'HELP'),(0,'HELP_DATE'),(1,'HELP_VERSION'),(198,'HEX'),(705,'HIGH_PRIORITY'),(890,'HISTORY'),(648,'HOST'),(953,'HOSTS'),(135,'HOUR'),(136,'HOUR_MINUTE'),(137,'HOUR_SECOND'),(297,'ICU_VERSION'),(722,'IDENTIFIED'),(81,'IF'),(82,'IFNULL'),(706,'IGNORE'),(777,'IGNORE_SERVER_IDS'),(605,'IMPORT'),(67,'IN'),(52,'INDEX'),(954,'INDEXES'),(533,'INET6_ATON'),(534,'INET6_NTOA'),(531,'INET_ATON'),(532,'INET_NTOA'),(715,'INFILE'),(914,'INITIAL'),(637,'INITIAL_SIZE'),(891,'INITIATE'),(426,'INLINE'),(742,'INNER'),(567,'INNODB'),(199,'INSERT'),(606,'INSERT_METHOD'),(941,'INSTALL'),(568,'INSTANCE'),(200,'INSTR'),(19,'INT1'),(22,'INT2'),(23,'INT3'),(25,'INT4'),(27,'INT8'),(26,'INTEGER'),(507,'INTERNAL_AUTO_INCREMENT'),(508,'INTERNAL_AVG_ROW_LENGTH'),(510,'INTERNAL_CHECKSUM'),(509,'INTERNAL_CHECK_TIME'),(511,'INTERNAL_DATA_FREE'),(512,'INTERNAL_DATA_LENGTH'),(513,'INTERNAL_DD_CHAR_LENGTH'),(514,'INTERNAL_GET_COMMENT_OR_ERROR'),(515,'INTERNAL_GET_ENABLED_ROLE_JSON'),(516,'INTERNAL_GET_HOSTNAME'),(517,'INTERNAL_GET_USERNAME'),(518,'INTERNAL_GET_VIEW_WARNING_OR_ERROR'),(519,'INTERNAL_INDEX_COLUMN_CARDINALITY'),(520,'INTERNAL_INDEX_LENGTH'),(521,'INTERNAL_IS_ENABLED_ROLE'),(522,'INTERNAL_IS_MANDATORY_ROLE'),(523,'INTERNAL_KEYS_DISABLED'),(524,'INTERNAL_MAX_DATA_LENGTH'),(525,'INTERNAL_TABLE_ROWS'),(526,'INTERNAL_UPDATE_TIME'),(710,'INTERSECT'),(68,'INTERVAL'),(707,'INTO'),(607,'INVISIBLE'),(840,'IO_THREAD'),(69,'IS'),(71,'ISNULL'),(762,'ISOLATION'),(892,'ISSUER'),(284,'IS_FREE_LOCK'),(535,'IS_IPV4'),(536,'IS_IPV4_COMPAT'),(537,'IS_IPV4_MAPPED'),(538,'IS_IPV6'),(285,'IS_USED_LOCK'),(539,'IS_UUID'),(527,'IS_VISIBLE_DD_OBJECT'),(851,'ITERATE'),(728,'JOIN'),(257,'JSON'),(416,'JSON_ARRAY'),(472,'JSON_ARRAYAGG'),(434,'JSON_ARRAY_APPEND'),(435,'JSON_ARRAY_INSERT'),(419,'JSON_CONTAINS'),(420,'JSON_CONTAINS_PATH'),(444,'JSON_DEPTH'),(421,'JSON_EXTRACT'),(436,'JSON_INSERT'),(428,'JSON_KEYS'),(445,'JSON_LENGTH'),(437,'JSON_MERGE'),(438,'JSON_MERGE_PATCH'),(439,'JSON_MERGE_PRESERVE'),(417,'JSON_OBJECT'),(473,'JSON_OBJECTAGG'),(429,'JSON_OVERLAPS'),(451,'JSON_PRETTY'),(418,'JSON_QUOTE'),(440,'JSON_REMOVE'),(441,'JSON_REPLACE'),(449,'JSON_SCHEMA_VALID'),(450,'JSON_SCHEMA_VALIDATION_REPORT'),(430,'JSON_SEARCH'),(442,'JSON_SET'),(452,'JSON_STORAGE_FREE'),(453,'JSON_STORAGE_SIZE'),(448,'JSON_TABLE'),(446,'JSON_TYPE'),(443,'JSON_UNQUOTE'),(447,'JSON_VALID'),(431,'JSON_VALUE'),(53,'KEY'),(569,'KEYRING'),(608,'KEYS'),(609,'KEY_BLOCK_SIZE'),(979,'KILL'),(487,'LAG'),(699,'LAST'),(153,'LAST_DAY'),(298,'LAST_INSERT_ID'),(488,'LAST_VALUE'),(201,'LCASE'),(489,'LEAD'),(232,'LEADING'),(72,'LEAST'),(852,'LEAVE'),(980,'LEAVES'),(202,'LEFT'),(203,'LENGTH'),(763,'LEVEL'),(223,'LIKE'),(690,'LIMIT'),(716,'LINES'),(338,'LINESTRING'),(104,'LN'),(717,'LOAD'),(204,'LOAD_FILE'),(718,'LOCAL'),(154,'LOCALTIME'),(155,'LOCALTIMESTAMP'),(205,'LOCATE'),(610,'LOCK'),(105,'LOG'),(107,'LOG10'),(106,'LOG2'),(577,'LOGFILE'),(772,'LOGS'),(47,'LONG'),(48,'LONGBINARY'),(853,'LOOP'),(206,'LOWER'),(691,'LOW_PRIORITY'),(207,'LPAD'),(208,'LTRIM'),(156,'MAKEDATE'),(157,'MAKETIME'),(209,'MAKE_SET'),(570,'MASTER'),(778,'MASTER_AUTO_POSITION'),(779,'MASTER_BIND'),(780,'MASTER_COMPRESSION_ALGORITHMS'),(781,'MASTER_CONNECT_RETRY'),(782,'MASTER_HEARTBEAT_PERIOD'),(783,'MASTER_HOST'),(784,'MASTER_LOG_FILE'),(785,'MASTER_LOG_POS'),(786,'MASTER_PASSWORD'),(787,'MASTER_PORT'),(458,'MASTER_POS_WAIT'),(788,'MASTER_RETRY_COUNT'),(789,'MASTER_SSL'),(790,'MASTER_SSL_CA'),(791,'MASTER_SSL_CERT'),(792,'MASTER_SSL_CIPHER'),(793,'MASTER_SSL_CRL'),(794,'MASTER_SSL_CRLPATH'),(795,'MASTER_SSL_KEY'),(796,'MASTER_SSL_VERIFY_SERVER_CERT'),(797,'MASTER_TLS_CIPHERSUITES'),(798,'MASTER_TLS_VERSION'),(799,'MASTER_USER'),(800,'MASTER_ZSTD_COMPRESSION_LEVEL'),(249,'MATCH'),(474,'MAX'),(893,'MAX_CONNECTIONS_PER_HOUR'),(894,'MAX_QUERIES_PER_HOUR'),(611,'MAX_ROWS'),(684,'MAX_SIZE'),(895,'MAX_UPDATES_PER_HOUR'),(896,'MAX_USER_CONNECTIONS'),(395,'MBRCONTAINS'),(396,'MBRCOVEREDBY'),(397,'MBRCOVERS'),(398,'MBRDISJOINT'),(399,'MBREQUALS'),(400,'MBRINTERSECTS'),(401,'MBROVERLAPS'),(402,'MBRTOUCHES'),(403,'MBRWITHIN'),(273,'MD5'),(933,'MEDIUM'),(432,'MEMBER'),(729,'MEMORY'),(670,'MERGE'),(871,'MESSAGE_TEXT'),(158,'MICROSECOND'),(210,'MID'),(24,'MIDDLEINT'),(475,'MIN'),(138,'MINUTE'),(139,'MINUTE_SECOND'),(612,'MIN_ROWS'),(89,'MOD'),(250,'MODE'),(613,'MODIFY'),(140,'MONTH'),(159,'MONTHNAME'),(671,'MRG_MYISAM'),(339,'MULTILINESTRING'),(340,'MULTIPOINT'),(341,'MULTIPOLYGON'),(955,'MUTEX'),(672,'MYISAM'),(872,'MYSQL_ERRNO'),(655,'NAME'),(948,'NAMES'),(540,'NAME_CONST'),(40,'NATIONAL'),(743,'NATURAL'),(41,'NCHAR'),(673,'NDB'),(674,'NDBCLUSTER'),(801,'NETWORK_NAMESPACE'),(897,'NEVER'),(700,'NEXT'),(571,'NO'),(685,'NODEGROUP'),(898,'NONE'),(64,'NOT'),(160,'NOW'),(931,'NO_WRITE_TO_BINLOG'),(490,'NTH_VALUE'),(491,'NTILE'),(70,'NULL'),(83,'NULLIF'),(873,'NUMBER'),(30,'NUMERIC'),(44,'NVARCHAR'),(211,'OCT'),(212,'OCTET_LENGTH'),(433,'OF'),(730,'OFFSET'),(899,'OLD'),(558,'ON'),(548,'ONLY'),(701,'OPEN'),(614,'OPTIMIZE'),(975,'OPTIMIZER_COSTS'),(919,'OPTION'),(900,'OPTIONAL'),(719,'OPTIONALLY'),(579,'OPTIONS'),(73,'OR'),(213,'ORD'),(470,'ORDER'),(656,'ORGANIZATION'),(744,'OUTER'),(731,'OUTFILE'),(649,'OWNER'),(615,'PACK_KEYS'),(616,'PARSER'),(675,'PARTIAL'),(617,'PARTITION'),(618,'PARTITIONING'),(619,'PASSWORD'),(901,'PASSWORD_LOCK_TIME'),(427,'PATH)'),(492,'PERCENT_RANK'),(161,'PERIOD_ADD'),(162,'PERIOD_DIFF'),(945,'PERSIST'),(946,'PERSIST_ONLY'),(109,'PI'),(942,'PLUGIN'),(966,'PLUGINS'),(841,'PLUGIN_DIR'),(342,'POINT'),(343,'POLYGON'),(650,'PORT'),(214,'POSITION'),(110,'POW'),(111,'POWER'),(34,'PRECISION'),(768,'PREPARE'),(559,'PRESERVE'),(702,'PREV'),(620,'PRIMARY'),(920,'PRIVILEGES'),(802,'PRIVILEGE_CHECKS_USER'),(578,'PROCEDURE'),(921,'PROCESS'),(956,'PROCESSLIST'),(967,'PROFILE'),(968,'PROFILES'),(925,'PROXY'),(497,'PS_CURRENT_THREAD_ID'),(498,'PS_THREAD_ID'),(773,'PURGE'),(163,'QUARTER'),(251,'QUERY'),(692,'QUICK'),(215,'QUOTE'),(112,'RADIANS'),(113,'RAND'),(902,'RANDOM'),(274,'RANDOM_BYTES'),(493,'RANK'),(549,'READ'),(35,'REAL'),(621,'REBUILD'),(769,'RECOVER'),(572,'REDO_LOG'),(676,'REDUNDANT'),(657,'REFERENCE'),(677,'REFERENCES'),(241,'REGEXP'),(243,'REGEXP_INSTR'),(244,'REGEXP_LIKE'),(245,'REGEXP_REPLACE'),(246,'REGEXP_SUBSTR'),(903,'REGISTRATION'),(976,'RELAY'),(969,'RELAYLOG'),(803,'RELAY_LOG_FILE'),(804,'RELAY_LOG_POS'),(750,'RELEASE'),(286,'RELEASE_ALL_LOCKS'),(287,'RELEASE_LOCK'),(573,'RELOAD'),(622,'REMOVE'),(560,'RENAME'),(623,'REORGANIZE'),(624,'REPAIR'),(216,'REPEAT'),(764,'REPEATABLE'),(217,'REPLACE'),(838,'REPLICA'),(970,'REPLICAS'),(806,'REPLICATE_DO_DB'),(807,'REPLICATE_DO_TABLE'),(808,'REPLICATE_IGNORE_DB'),(809,'REPLICATE_IGNORE_TABLE'),(810,'REPLICATE_REWRITE_DB'),(811,'REPLICATE_WILD_DO_TABLE'),(812,'REPLICATE_WILD_IGNORE_TABLE'),(813,'REPLICATION'),(904,'REQUIRE'),(774,'RESET'),(878,'RESIGNAL'),(928,'RESOURCE'),(981,'RESTART'),(680,'RESTRICT'),(905,'RETAIN'),(855,'RETURN'),(874,'RETURNED_SQLSTATE'),(937,'RETURNS'),(906,'REUSE'),(218,'REVERSE'),(926,'REVOKE'),(219,'RIGHT'),(242,'RLIKE'),(907,'ROLE'),(299,'ROLES_GRAPHML'),(574,'ROLLBACK'),(114,'ROUND'),(708,'ROW'),(723,'ROWS'),(300,'ROW_COUNT'),(625,'ROW_FORMAT'),(494,'ROW_NUMBER'),(220,'RPAD'),(221,'RTRIM'),(756,'SAVEPOINT'),(561,'SCHEDULE'),(301,'SCHEMA'),(957,'SCHEMAS'),(875,'SCHEMA_NAME'),(141,'SECOND'),(164,'SEC_TO_TIME'),(709,'SELECT'),(471,'SEPARATOR'),(3,'SERIAL'),(765,'SERIALIZABLE'),(580,'SERVER'),(766,'SESSION'),(302,'SESSION_USER'),(550,'SET'),(275,'SHA'),(276,'SHA1'),(277,'SHA2'),(732,'SHARE'),(958,'SHOW'),(922,'SHUTDOWN'),(115,'SIGN'),(880,'SIGNAL'),(258,'SIGNED'),(116,'SIN'),(562,'SLAVE'),(541,'SLEEP'),(977,'SLOW'),(751,'SNAPSHOT'),(651,'SOCKET'),(938,'SONAME'),(222,'SOUNDEX'),(224,'SOUNDS'),(814,'SOURCE'),(815,'SOURCE_AUTO_POSITION'),(816,'SOURCE_BIND'),(817,'SOURCE_COMPRESSION_ALGORITHMS'),(818,'SOURCE_CONNECT_RETRY'),(819,'SOURCE_HEARTBEAT_PERIOD'),(820,'SOURCE_HOST'),(821,'SOURCE_LOG_FILE'),(822,'SOURCE_LOG_POS'),(823,'SOURCE_PASSWORD'),(824,'SOURCE_PORT'),(459,'SOURCE_POS_WAIT'),(825,'SOURCE_RETRY_COUNT'),(826,'SOURCE_SSL'),(827,'SOURCE_SSL_CA'),(828,'SOURCE_SSL_CERT'),(829,'SOURCE_SSL_CIPHER'),(830,'SOURCE_SSL_CRL'),(831,'SOURCE_SSL_CRLPATH'),(832,'SOURCE_SSL_KEY'),(833,'SOURCE_SSL_VERIFY_SERVER_CERT'),(834,'SOURCE_TLS_CIPHERSUITES'),(835,'SOURCE_TLS_VERSION'),(836,'SOURCE_USER'),(837,'SOURCE_ZSTD_COMPRESSION_LEVEL'),(225,'SPACE'),(626,'SPATIAL'),(879,'SQLSTATE'),(842,'SQL_AFTER_GTIDS'),(843,'SQL_AFTER_MTS_GAPS'),(844,'SQL_BEFORE_GTIDS'),(733,'SQL_BIG_RESULT'),(734,'SQL_BUFFER_RESULT'),(735,'SQL_CALC_FOUND_ROWS'),(775,'SQL_LOG_BIN'),(736,'SQL_NO_CACHE'),(737,'SQL_SMALL_RESULT'),(845,'SQL_THREAD'),(117,'SQRT'),(908,'SSL'),(752,'START'),(720,'STARTING'),(646,'STARTS'),(278,'STATEMENT_DIGEST'),(279,'STATEMENT_DIGEST_TEXT'),(627,'STATS_AUTO_RECALC'),(628,'STATS_PERSISTENT'),(629,'STATS_SAMPLE_PAGES'),(959,'STATUS'),(476,'STD'),(477,'STDDEV'),(478,'STDDEV_POP'),(479,'STDDEV_SAMP'),(846,'STOP'),(964,'STORAGE'),(678,'STORED'),(738,'STRAIGHT_JOIN'),(240,'STRCMP'),(939,'STRING'),(165,'STR_TO_DATE'),(365,'ST_AREA'),(344,'ST_ASBINARY'),(408,'ST_ASGEOJSON'),(346,'ST_ASTEXT'),(345,'ST_ASWKB'),(347,'ST_ASWKT'),(373,'ST_BUFFER'),(374,'ST_BUFFER_STRATEGY'),(366,'ST_CENTROID'),(410,'ST_COLLECT'),(384,'ST_CONTAINS'),(375,'ST_CONVEXHULL'),(385,'ST_CROSSES'),(376,'ST_DIFFERENCE'),(349,'ST_DIMENSION'),(386,'ST_DISJOINT'),(387,'ST_DISTANCE'),(411,'ST_DISTANCE_SPHERE'),(359,'ST_ENDPOINT'),(350,'ST_ENVELOPE'),(388,'ST_EQUALS'),(367,'ST_EXTERIORRING'),(389,'ST_FRECHETDISTANCE'),(404,'ST_GEOHASH'),(306,'ST_GEOMCOLLFROMTEXT'),(321,'ST_GEOMCOLLFROMWKB'),(307,'ST_GEOMETRYCOLLECTIONFROMTEXT'),(322,'ST_GEOMETRYCOLLECTIONFROMWKB'),(308,'ST_GEOMETRYFROMTEXT'),(323,'ST_GEOMETRYFROMWKB'),(371,'ST_GEOMETRYN'),(351,'ST_GEOMETRYTYPE'),(409,'ST_GEOMFROMGEOJSON'),(309,'ST_GEOMFROMTEXT'),(324,'ST_GEOMFROMWKB'),(390,'ST_HAUSDORFFDISTANCE'),(368,'ST_INTERIORRINGN'),(377,'ST_INTERSECTION'),(391,'ST_INTERSECTS'),(360,'ST_ISCLOSED'),(352,'ST_ISEMPTY'),(353,'ST_ISSIMPLE'),(412,'ST_ISVALID'),(405,'ST_LATFROMGEOHASH'),(355,'ST_LATITUDE'),(361,'ST_LENGTH'),(310,'ST_LINEFROMTEXT'),(325,'ST_LINEFROMWKB'),(378,'ST_LINEINTERPOLATEPOINT'),(379,'ST_LINEINTERPOLATEPOINTS'),(311,'ST_LINESTRINGFROMTEXT'),(326,'ST_LINESTRINGFROMWKB'),(406,'ST_LONGFROMGEOHASH'),(356,'ST_LONGITUDE'),(413,'ST_MAKEENVELOPE'),(312,'ST_MLINEFROMTEXT'),(327,'ST_MLINEFROMWKB'),(314,'ST_MPOINTFROMTEXT'),(329,'ST_MPOINTFROMWKB'),(316,'ST_MPOLYFROMTEXT'),(331,'ST_MPOLYFROMWKB'),(313,'ST_MULTILINESTRINGFROMTEXT'),(328,'ST_MULTILINESTRINGFROMWKB'),(315,'ST_MULTIPOINTFROMTEXT'),(330,'ST_MULTIPOINTFROMWKB'),(317,'ST_MULTIPOLYGONFROMTEXT'),(332,'ST_MULTIPOLYGONFROMWKB'),(372,'ST_NUMGEOMETRIES'),(369,'ST_NUMINTERIORRING'),(370,'ST_NUMINTERIORRINGS'),(362,'ST_NUMPOINTS'),(392,'ST_OVERLAPS'),(380,'ST_POINTATDISTANCE'),(407,'ST_POINTFROMGEOHASH'),(318,'ST_POINTFROMTEXT'),(333,'ST_POINTFROMWKB'),(363,'ST_POINTN'),(319,'ST_POLYFROMTEXT'),(334,'ST_POLYFROMWKB'),(320,'ST_POLYGONFROMTEXT'),(335,'ST_POLYGONFROMWKB'),(414,'ST_SIMPLIFY'),(354,'ST_SRID'),(364,'ST_STARTPOINT'),(348,'ST_SWAPXY'),(381,'ST_SYMDIFFERENCE'),(393,'ST_TOUCHES'),(382,'ST_TRANSFORM'),(383,'ST_UNION'),(415,'ST_VALIDATE'),(394,'ST_WITHIN'),(357,'ST_X'),(358,'ST_Y'),(876,'SUBCLASS_ORIGIN'),(166,'SUBDATE'),(909,'SUBJECT'),(226,'SUBSTR'),(227,'SUBSTRING'),(228,'SUBSTRING_INDEX'),(167,'SUBTIME'),(480,'SUM'),(923,'SUPER'),(168,'SYSDATE'),(658,'SYSTEM'),(303,'SYSTEM_USER'),(54,'TABLE'),(759,'TABLES'),(630,'TABLESPACE'),(877,'TABLE_NAME'),(118,'TAN'),(688,'TEMPORARY'),(721,'TERMINATED'),(79,'THEN'),(929,'THREAD_PRIORITY'),(38,'TIME'),(170,'TIMEDIFF'),(37,'TIMESTAMP'),(171,'TIMESTAMPADD'),(172,'TIMESTAMPDIFF'),(259,'TIMEZONE'),(173,'TIME_FORMAT'),(174,'TIME_TO_SEC'),(575,'TLS'),(638,'TO'),(229,'TO_BASE64'),(175,'TO_DAYS'),(176,'TO_SECONDS'),(984,'TRADITIONAL'),(233,'TRAILING'),(753,'TRANSACTION'),(985,'TREE'),(687,'TRIGGER'),(960,'TRIGGERS'),(234,'TRIM'),(16,'TRUE'),(119,'TRUNCATE'),(631,'TYPE'),(235,'UCASE'),(910,'UNBOUNDED'),(767,'UNCOMMITTED'),(280,'UNCOMPRESS'),(281,'UNCOMPRESSED_LENGTH'),(639,'UNDO'),(236,'UNHEX'),(943,'UNINSTALL'),(632,'UNION'),(633,'UNIQUE'),(177,'UNIX_TIMESTAMP'),(927,'UNKNOWN'),(758,'UNLOCK'),(911,'UNREGISTER'),(20,'UNSIGNED'),(854,'UNTIL'),(681,'UPDATE'),(262,'UPDATEXML'),(634,'UPGRADE'),(237,'UPPER'),(924,'USAGE'),(686,'USE'),(304,'USER'),(978,'USER_RESOURCES'),(935,'USE_FRM'),(693,'USING'),(178,'UTC_DATE'),(179,'UTC_TIME'),(180,'UTC_TIMESTAMP'),(542,'UUID'),(543,'UUID_SHORT'),(544,'UUID_TO_BIN'),(282,'VALIDATE_PASSWORD_STRENGTH'),(4,'VALUE'),(545,'VALUES'),(45,'VARCHARACTER'),(947,'VARIABLE'),(961,'VARIABLES'),(483,'VARIANCE'),(46,'VARYING'),(481,'VAR_POP'),(482,'VAR_SAMP'),(930,'VCPU'),(305,'VERSION'),(641,'VIEW'),(679,'VIRTUAL'),(635,'VISIBLE'),(640,'WAIT'),(456,'WAIT_FOR_EXECUTED_GTID_SET'),(457,'WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS'),(962,'WARNINGS'),(181,'WEEK'),(182,'WEEKDAY'),(183,'WEEKOFYEAR'),(238,'WEIGHT_STRING'),(80,'WHEN'),(694,'WHERE'),(856,'WHILE'),(252,'WITH'),(754,'WORK'),(652,'WRAPPER'),(755,'WRITE'),(912,'X509'),(770,'XA'),(74,'XOR'),(142,'YEAR'),(184,'YEARWEEK'),(143,'YEAR_MONTH'),(21,'ZEROFILL'),(265,'^'),(263,'|'),(268,'~');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int unsigned NOT NULL,
  `help_keyword_id` int unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (0,0),(1,1),(2,2),(485,2),(502,2),(503,2),(510,2),(513,2),(514,2),(522,2),(523,2),(547,2),(554,2),(592,2),(610,2),(612,2),(618,2),(620,2),(2,3),(522,3),(2,4),(547,4),(554,4),(608,4),(609,4),(3,5),(700,5),(4,6),(5,7),(6,8),(7,9),(8,10),(9,11),(10,12),(11,13),(12,14),(13,15),(14,15),(13,16),(14,16),(16,17),(17,17),(16,18),(240,18),(16,19),(16,20),(20,20),(22,20),(23,20),(25,20),(26,20),(242,20),(16,21),(20,21),(22,21),(23,21),(25,21),(26,21),(18,22),(19,23),(19,24),(20,25),(20,26),(242,26),(630,26),(22,27),(23,28),(23,29),(522,29),(23,30),(24,31),(242,31),(630,31),(25,32),(26,33),(26,34),(26,35),(630,35),(28,36),(129,36),(131,36),(242,36),(30,37),(165,37),(31,38),(163,38),(242,38),(33,39),(35,39),(502,39),(503,39),(510,39),(513,39),(514,39),(522,39),(551,39),(552,39),(555,39),(638,39),(639,39),(641,39),(645,39),(33,40),(35,40),(33,41),(34,42),(34,43),(184,43),(242,43),(35,44),(35,45),(35,46),(44,47),(44,48),(53,49),(510,49),(511,49),(524,49),(610,49),(53,50),(502,50),(503,50),(504,50),(505,50),(506,50),(507,50),(508,50),(509,50),(510,50),(511,50),(512,50),(610,50),(615,50),(621,50),(53,51),(513,51),(514,51),(515,51),(516,51),(517,51),(518,51),(519,51),(520,51),(521,51),(522,51),(524,51),(525,51),(526,51),(611,51),(612,51),(622,51),(630,51),(641,51),(649,51),(650,51),(651,51),(652,51),(653,51),(654,51),(656,51),(53,52),(510,52),(516,52),(522,52),(530,52),(557,52),(641,52),(667,52),(689,52),(692,52),(53,53),(510,53),(522,53),(523,53),(547,53),(53,54),(510,54),(522,54),(535,54),(539,54),(540,54),(546,54),(548,54),(558,54),(625,54),(626,54),(627,54),(628,54),(629,54),(641,54),(654,54),(683,54),(54,55),(79,55),(55,56),(56,57),(57,58),(58,59),(59,60),(60,61),(61,62),(75,62),(61,63),(62,63),(62,64),(66,64),(69,64),(71,64),(74,64),(232,64),(234,64),(513,64),(514,64),(515,64),(521,64),(611,64),(612,64),(63,65),(510,65),(64,66),(65,67),(66,67),(240,67),(555,67),(644,67),(647,67),(648,67),(667,67),(677,67),(67,68),(131,68),(515,68),(610,68),(612,68),(68,69),(69,69),(70,69),(71,69),(70,70),(71,70),(523,70),(72,71),(73,72),(76,73),(521,73),(77,74),(78,75),(80,76),(593,76),(80,77),(593,77),(80,78),(572,78),(590,78),(593,78),(594,78),(597,78),(598,78),(600,78),(80,79),(593,79),(594,79),(80,80),(593,80),(81,81),(513,81),(514,81),(515,81),(521,81),(527,81),(528,81),(529,81),(533,81),(534,81),(535,81),(538,81),(594,81),(610,81),(611,81),(612,81),(613,81),(614,81),(617,81),(631,81),(694,81),(82,82),(83,83),(84,84),(85,85),(86,85),(87,86),(88,87),(89,88),(90,89),(109,89),(91,90),(92,91),(93,92),(94,93),(95,94),(96,95),(97,96),(98,97),(99,98),(100,99),(101,100),(102,101),(103,102),(104,103),(105,104),(106,105),(107,106),(108,107),(109,108),(110,109),(111,110),(112,111),(113,112),(114,113),(115,114),(116,115),(117,116),(118,117),(119,118),(120,119),(510,119),(540,119),(121,120),(122,121),(123,122),(124,123),(125,124),(126,125),(127,126),(128,127),(130,128),(131,129),(131,130),(133,130),(131,131),(134,131),(610,131),(612,131),(131,132),(131,133),(131,134),(131,135),(143,135),(131,136),(131,137),(131,138),(150,138),(131,139),(131,140),(151,140),(131,141),(157,141),(131,142),(179,142),(242,142),(131,143),(132,144),(135,145),(136,146),(137,147),(138,148),(139,149),(140,150),(141,151),(142,152),(144,153),(145,154),(146,155),(147,156),(148,157),(149,158),(152,159),(153,160),(154,161),(155,162),(156,163),(158,164),(159,165),(160,166),(161,167),(162,168),(163,169),(165,169),(214,169),(505,169),(518,169),(519,169),(531,169),(532,169),(630,169),(631,169),(641,169),(652,169),(664,169),(665,169),(164,170),(166,171),(167,172),(168,173),(169,174),(170,175),(171,176),(172,177),(173,178),(174,179),(175,180),(176,181),(177,182),(178,183),(180,184),(181,185),(182,186),(183,187),(185,188),(186,189),(187,190),(188,191),(189,192),(190,193),(191,194),(192,195),(193,196),(697,196),(698,196),(699,196),(194,197),(195,198),(196,199),(547,199),(548,199),(549,199),(197,200),(198,201),(199,202),(557,202),(200,203),(201,204),(202,205),(203,206),(204,207),(205,208),(206,209),(207,210),(208,211),(209,212),(210,213),(211,214),(212,215),(213,216),(598,216),(214,217),(521,217),(551,217),(552,217),(554,217),(610,217),(619,217),(215,218),(216,219),(557,219),(217,220),(218,221),(219,222),(220,223),(232,223),(641,223),(647,223),(648,223),(220,224),(221,225),(222,226),(223,227),(224,228),(225,229),(226,230),(226,231),(542,231),(546,231),(555,231),(641,231),(644,231),(647,231),(648,231),(667,231),(677,231),(226,232),(226,233),(226,234),(227,235),(228,236),(229,237),(230,238),(231,239),(233,240),(234,241),(235,242),(236,243),(237,244),(238,245),(239,246),(240,247),(240,248),(240,249),(240,250),(555,250),(240,251),(691,251),(240,252),(510,252),(516,252),(522,252),(610,252),(612,252),(615,252),(690,252),(241,253),(242,253),(573,253),(574,253),(642,253),(643,253),(690,253),(242,254),(242,255),(242,256),(242,257),(697,257),(698,257),(699,257),(242,258),(242,259),(243,260),(244,261),(245,262),(246,263),(247,264),(248,265),(249,266),(250,267),(251,268),(252,269),(253,270),(254,271),(255,272),(256,273),(257,274),(258,275),(258,276),(259,277),(260,278),(261,279),(262,280),(263,281),(264,282),(265,283),(266,284),(267,285),(268,286),(269,287),(270,288),(271,289),(638,289),(639,289),(272,290),(273,291),(641,291),(646,291),(274,292),(275,293),(276,294),(504,294),(515,294),(277,295),(502,295),(503,295),(513,295),(514,295),(520,295),(527,295),(528,295),(641,295),(649,295),(650,295),(278,296),(279,297),(280,298),(281,299),(282,300),(607,300),(283,301),(502,301),(503,301),(513,301),(514,301),(527,301),(528,301),(641,301),(649,301),(650,301),(284,302),(285,303),(286,304),(520,304),(582,304),(583,304),(610,304),(612,304),(614,304),(616,304),(617,304),(622,304),(656,304),(287,305),(288,306),(288,307),(289,308),(289,309),(290,310),(290,311),(291,312),(291,313),(292,314),(292,315),(293,316),(293,317),(294,318),(295,319),(295,320),(296,321),(296,322),(297,323),(297,324),(298,325),(298,326),(299,327),(299,328),(300,329),(300,330),(301,331),(301,332),(302,333),(303,334),(303,335),(304,336),(305,337),(306,338),(307,339),(308,340),(309,341),(310,342),(311,343),(312,344),(312,345),(313,346),(313,347),(314,348),(315,349),(316,350),(317,351),(318,352),(319,353),(320,354),(321,355),(322,356),(323,357),(324,358),(325,359),(326,360),(327,361),(328,362),(329,363),(330,364),(331,365),(332,366),(333,367),(334,368),(335,369),(335,370),(336,371),(337,372),(338,373),(339,374),(340,375),(341,376),(342,377),(343,378),(344,379),(345,380),(346,381),(347,382),(348,383),(349,384),(350,385),(351,386),(352,387),(353,388),(354,389),(355,390),(356,391),(357,392),(358,393),(359,394),(360,395),(361,396),(362,397),(363,398),(364,399),(365,400),(366,401),(367,402),(368,403),(369,404),(370,405),(371,406),(372,407),(373,408),(374,409),(375,410),(376,411),(377,412),(378,413),(379,414),(380,415),(381,416),(382,417),(383,418),(384,419),(385,420),(386,421),(387,422),(388,422),(387,423),(387,424),(388,425),(388,426),(388,427),(389,428),(390,429),(391,430),(392,431),(393,432),(393,433),(394,434),(395,435),(396,436),(397,437),(398,438),(399,439),(400,440),(401,441),(402,442),(403,443),(404,444),(405,445),(406,446),(407,447),(408,448),(409,449),(410,450),(411,451),(412,452),(413,453),(414,454),(415,455),(416,456),(417,457),(418,458),(419,459),(420,460),(420,461),(425,461),(426,461),(429,461),(430,461),(435,461),(544,461),(550,461),(555,461),(560,461),(421,462),(422,463),(423,464),(424,465),(425,465),(662,465),(687,465),(426,466),(555,466),(426,467),(510,467),(522,467),(542,467),(551,467),(552,467),(553,467),(555,467),(559,467),(610,467),(612,467),(426,468),(555,468),(697,468),(698,468),(699,468),(426,469),(426,470),(510,470),(542,470),(553,470),(555,470),(558,470),(559,470),(561,470),(426,471),(427,472),(428,473),(429,474),(430,475),(431,476),(432,477),(433,478),(434,479),(435,480),(436,481),(437,482),(438,483),(439,484),(440,485),(441,486),(442,487),(443,488),(444,489),(445,490),(446,491),(447,492),(448,493),(449,494),(450,495),(451,496),(452,497),(453,498),(454,499),(455,500),(456,501),(457,502),(458,503),(459,504),(460,505),(461,506),(462,507),(463,508),(464,509),(465,510),(466,511),(467,512),(468,513),(469,514),(470,515),(471,516),(472,517),(473,518),(474,519),(475,520),(476,521),(477,522),(478,523),(479,524),(480,525),(481,526),(482,527),(483,528),(484,529),(486,530),(487,531),(488,532),(489,533),(490,534),(491,535),(492,536),(493,537),(494,538),(495,539),(496,540),(497,541),(498,542),(499,543),(500,544),(501,545),(547,545),(554,545),(561,545),(502,546),(503,546),(510,546),(513,546),(514,546),(522,546),(502,547),(503,547),(510,547),(513,547),(514,547),(522,547),(502,548),(503,548),(562,548),(563,548),(564,548),(565,548),(571,548),(572,548),(502,549),(503,549),(545,549),(562,549),(563,549),(564,549),(565,549),(570,549),(571,549),(572,549),(690,549),(502,550),(503,550),(510,550),(513,550),(514,550),(522,550),(523,550),(547,550),(551,550),(552,550),(554,550),(555,550),(559,550),(562,550),(563,550),(564,550),(565,550),(576,550),(608,550),(609,550),(610,550),(618,550),(619,550),(620,550),(624,550),(637,550),(638,550),(639,550),(640,550),(641,550),(645,550),(504,551),(510,551),(515,551),(516,551),(522,551),(524,551),(610,551),(612,551),(504,552),(515,552),(504,553),(515,553),(504,554),(510,554),(515,554),(621,554),(622,554),(504,555),(515,555),(543,555),(600,555),(504,556),(510,556),(515,556),(621,556),(622,556),(504,557),(515,557),(529,557),(651,557),(504,558),(506,558),(515,558),(523,558),(557,558),(504,559),(515,559),(504,560),(510,560),(511,560),(539,560),(616,560),(504,561),(515,561),(504,562),(515,562),(581,562),(583,562),(585,562),(679,562),(681,562),(693,562),(506,563),(644,563),(688,563),(506,564),(577,564),(579,564),(580,564),(581,564),(582,564),(583,564),(584,564),(585,564),(677,564),(680,564),(681,564),(690,564),(506,565),(690,565),(506,566),(555,566),(577,566),(579,566),(580,566),(581,566),(582,566),(583,566),(584,566),(585,566),(602,566),(605,566),(606,566),(619,566),(624,566),(641,566),(677,566),(680,566),(681,566),(690,566),(697,566),(698,566),(699,566),(506,567),(522,567),(641,567),(506,568),(569,568),(506,569),(506,570),(573,570),(574,570),(575,570),(577,570),(642,570),(643,570),(668,570),(693,570),(506,571),(522,571),(523,571),(506,572),(506,573),(615,573),(506,574),(562,574),(563,574),(564,574),(565,574),(566,574),(567,574),(568,574),(572,574),(506,575),(507,576),(517,576),(524,576),(555,576),(621,576),(622,576),(623,576),(624,576),(507,577),(517,577),(524,577),(508,578),(518,578),(519,578),(531,578),(532,578),(641,578),(653,578),(672,578),(673,578),(509,579),(520,579),(509,580),(520,580),(533,580),(510,581),(510,582),(510,583),(625,583),(697,583),(698,583),(699,583),(510,584),(511,584),(522,584),(524,584),(510,585),(510,586),(522,586),(510,587),(577,587),(578,587),(579,587),(510,588),(522,588),(626,588),(510,589),(522,589),(627,589),(510,590),(510,591),(522,591),(551,591),(641,591),(647,591),(648,591),(510,592),(522,592),(510,593),(522,593),(691,593),(697,593),(698,593),(699,593),(510,594),(522,594),(510,595),(520,595),(522,595),(551,595),(510,596),(522,596),(510,597),(522,597),(510,598),(610,598),(510,599),(511,599),(527,599),(528,599),(529,599),(530,599),(531,599),(532,599),(533,599),(534,599),(535,599),(536,599),(537,599),(538,599),(588,599),(589,599),(610,599),(613,599),(614,599),(623,599),(631,599),(510,600),(511,600),(522,600),(524,600),(536,600),(641,600),(660,600),(690,600),(510,601),(510,602),(522,602),(545,602),(510,603),(520,603),(522,603),(523,603),(510,604),(516,604),(522,604),(510,605),(546,605),(551,605),(510,606),(522,606),(510,607),(516,607),(522,607),(510,608),(641,608),(667,608),(510,609),(522,609),(510,610),(555,610),(569,610),(570,610),(610,610),(612,610),(690,610),(510,611),(522,611),(510,612),(522,612),(510,613),(610,613),(510,614),(628,614),(510,615),(522,615),(510,616),(516,616),(522,616),(510,617),(522,617),(542,617),(547,617),(551,617),(554,617),(555,617),(557,617),(689,617),(692,617),(510,618),(510,619),(520,619),(582,619),(583,619),(610,619),(612,619),(619,619),(510,620),(510,621),(510,622),(510,623),(510,624),(629,624),(510,625),(522,625),(510,626),(516,626),(521,626),(534,626),(510,627),(522,627),(510,628),(522,628),(510,629),(522,629),(510,630),(511,630),(524,630),(536,630),(510,631),(622,631),(510,632),(553,632),(560,632),(510,633),(510,634),(626,634),(510,635),(516,635),(522,635),(511,636),(524,636),(511,637),(524,637),(511,638),(566,638),(567,638),(568,638),(573,638),(574,638),(577,638),(579,638),(619,638),(511,639),(524,639),(536,639),(606,639),(511,640),(524,640),(512,641),(526,641),(538,641),(513,642),(514,642),(515,642),(521,642),(527,642),(528,642),(529,642),(533,642),(534,642),(535,642),(538,642),(610,642),(611,642),(612,642),(613,642),(614,642),(617,642),(631,642),(694,642),(515,643),(515,644),(515,645),(515,646),(516,647),(520,648),(520,649),(520,650),(520,651),(520,652),(521,653),(521,654),(521,655),(521,656),(521,657),(534,657),(521,658),(534,658),(622,658),(522,659),(523,659),(522,660),(522,661),(523,661),(535,661),(538,661),(522,662),(522,663),(522,664),(551,664),(522,665),(523,665),(542,665),(522,666),(522,667),(522,668),(641,668),(647,668),(648,668),(674,668),(684,668),(522,669),(522,670),(522,671),(522,672),(522,673),(522,674),(522,675),(522,676),(522,677),(523,677),(615,677),(522,678),(522,679),(523,680),(535,680),(538,680),(523,681),(547,681),(555,681),(559,681),(524,682),(524,683),(524,684),(524,685),(524,686),(557,686),(701,686),(525,687),(537,687),(641,687),(535,688),(541,689),(542,690),(545,690),(553,690),(555,690),(558,690),(559,690),(561,690),(644,690),(677,690),(542,691),(547,691),(551,691),(552,691),(554,691),(559,691),(570,691),(542,692),(626,692),(629,692),(542,693),(557,693),(587,693),(666,693),(542,694),(545,694),(559,694),(647,694),(648,694),(667,694),(544,695),(550,695),(555,695),(560,695),(580,695),(581,695),(610,695),(615,695),(617,695),(618,695),(620,695),(689,695),(692,695),(544,696),(553,696),(620,696),(545,697),(601,697),(545,698),(606,698),(545,699),(545,700),(545,701),(604,701),(641,701),(669,701),(545,702),(547,703),(549,703),(554,703),(547,704),(547,705),(555,705),(547,706),(551,706),(552,706),(555,706),(557,706),(559,706),(617,706),(692,706),(547,707),(553,707),(554,707),(555,707),(692,707),(547,708),(561,708),(547,709),(548,709),(553,709),(554,709),(555,709),(697,709),(698,709),(699,709),(550,710),(553,710),(551,711),(552,711),(551,712),(551,713),(551,714),(641,714),(647,714),(648,714),(551,715),(552,715),(551,716),(552,716),(551,717),(692,717),(551,718),(552,718),(570,718),(625,718),(628,718),(629,718),(690,718),(551,719),(551,720),(551,721),(552,722),(610,722),(612,722),(552,723),(555,724),(557,724),(570,724),(610,724),(612,724),(615,724),(555,725),(555,726),(555,727),(555,728),(557,728),(555,729),(555,730),(555,731),(555,732),(555,733),(555,734),(555,735),(555,736),(555,737),(555,738),(557,738),(556,739),(557,740),(557,741),(621,741),(623,741),(557,742),(557,743),(557,744),(562,745),(563,745),(564,745),(565,745),(562,746),(563,746),(564,746),(565,746),(572,746),(590,746),(562,747),(563,747),(564,747),(565,747),(562,748),(563,748),(564,748),(565,748),(572,748),(562,749),(563,749),(564,749),(565,749),(572,749),(562,750),(563,750),(564,750),(565,750),(566,750),(567,750),(568,750),(572,750),(562,751),(563,751),(564,751),(565,751),(572,751),(562,752),(563,752),(564,752),(565,752),(572,752),(582,752),(583,752),(562,753),(563,753),(564,753),(565,753),(571,753),(562,754),(563,754),(564,754),(565,754),(562,755),(563,755),(564,755),(565,755),(570,755),(571,755),(572,755),(566,756),(567,756),(568,756),(569,757),(569,758),(570,758),(610,758),(612,758),(570,759),(641,759),(669,759),(684,759),(690,759),(571,760),(571,761),(637,761),(682,761),(686,761),(571,762),(571,763),(571,764),(571,765),(571,766),(637,766),(682,766),(686,766),(571,767),(572,768),(586,768),(588,768),(589,768),(572,769),(572,770),(573,771),(574,771),(573,772),(574,772),(641,772),(642,772),(643,772),(690,772),(573,773),(574,773),(575,774),(580,774),(581,774),(693,774),(694,774),(576,775),(577,776),(579,776),(577,777),(579,777),(577,778),(577,779),(577,780),(577,781),(577,782),(577,783),(577,784),(577,785),(577,786),(577,787),(577,788),(577,789),(577,790),(577,791),(577,792),(577,793),(577,794),(577,795),(577,796),(577,797),(577,798),(577,799),(577,800),(577,801),(579,801),(577,802),(579,802),(577,803),(579,803),(577,804),(579,804),(578,805),(578,806),(578,807),(578,808),(578,809),(578,810),(578,811),(578,812),(578,813),(579,813),(615,813),(579,814),(579,815),(579,816),(579,817),(579,818),(579,819),(579,820),(579,821),(579,822),(579,823),(579,824),(579,825),(579,826),(579,827),(579,828),(579,829),(579,830),(579,831),(579,832),(579,833),(579,834),(579,835),(579,836),(579,837),(580,838),(582,838),(584,838),(680,838),(693,838),(582,839),(583,839),(582,840),(583,840),(584,840),(585,840),(582,841),(583,841),(582,842),(583,842),(582,843),(583,843),(582,844),(583,844),(582,845),(583,845),(584,845),(585,845),(584,846),(585,846),(587,847),(615,847),(588,848),(589,848),(592,849),(602,849),(605,849),(606,849),(594,850),(595,851),(596,852),(597,853),(598,854),(599,855),(600,856),(602,857),(603,858),(605,859),(606,860),(606,861),(607,862),(608,862),(609,862),(607,863),(608,863),(609,863),(607,864),(608,864),(609,864),(607,865),(608,865),(609,865),(607,866),(608,866),(609,866),(607,867),(608,867),(609,867),(607,868),(608,868),(609,868),(607,869),(607,870),(607,871),(608,871),(609,871),(607,872),(608,872),(609,872),(607,873),(607,874),(607,875),(608,875),(609,875),(607,876),(608,876),(609,876),(607,877),(608,877),(609,877),(608,878),(608,879),(609,879),(609,880),(610,881),(612,881),(610,882),(612,882),(610,883),(610,884),(612,884),(610,885),(612,885),(619,885),(610,886),(612,886),(610,887),(610,888),(612,888),(610,889),(610,890),(612,890),(610,891),(610,892),(612,892),(610,893),(612,893),(610,894),(612,894),(610,895),(612,895),(610,896),(612,896),(610,897),(612,897),(610,898),(615,898),(618,898),(620,898),(610,899),(610,900),(612,900),(610,901),(612,901),(610,902),(612,902),(619,902),(610,903),(610,904),(612,904),(610,905),(619,905),(610,906),(612,906),(610,907),(611,907),(612,907),(613,907),(615,907),(618,907),(620,907),(610,908),(612,908),(610,909),(612,909),(610,910),(612,910),(610,911),(610,912),(612,912),(612,913),(612,914),(615,915),(615,916),(615,917),(615,918),(617,918),(615,919),(617,919),(615,920),(617,920),(671,920),(690,920),(615,921),(615,922),(696,922),(615,923),(615,924),(617,925),(617,926),(617,927),(621,928),(622,928),(623,928),(624,928),(621,929),(622,929),(621,930),(622,930),(625,931),(628,931),(629,931),(690,931),(626,932),(626,933),(629,934),(647,934),(648,934),(667,934),(684,934),(629,935),(630,936),(630,937),(630,938),(630,939),(632,940),(634,940),(632,941),(633,941),(633,942),(635,942),(641,942),(634,943),(635,943),(636,944),(637,945),(694,945),(637,946),(637,947),(640,948),(641,949),(658,949),(659,949),(641,950),(661,950),(641,951),(662,951),(641,952),(666,952),(641,953),(679,953),(690,953),(641,954),(641,955),(660,955),(641,956),(674,956),(641,957),(658,957),(659,957),(641,958),(642,958),(643,958),(644,958),(645,958),(646,958),(647,958),(648,958),(649,958),(650,958),(651,958),(652,958),(653,958),(654,958),(656,958),(658,958),(659,958),(660,958),(661,958),(662,958),(663,958),(664,958),(665,958),(666,958),(667,958),(668,958),(669,958),(670,958),(671,958),(672,958),(673,958),(674,958),(675,958),(676,958),(677,958),(678,958),(679,958),(680,958),(681,958),(682,958),(683,958),(684,958),(685,958),(686,958),(687,958),(641,959),(660,959),(665,959),(668,959),(673,959),(680,959),(681,959),(682,959),(683,959),(690,959),(641,960),(685,960),(641,961),(686,961),(641,962),(687,962),(644,963),(663,963),(677,963),(661,964),(664,965),(672,965),(670,966),(675,967),(676,968),(677,969),(678,970),(689,971),(692,971),(690,972),(690,973),(690,974),(690,975),(690,976),(690,977),(690,978),(691,979),(692,980),(695,981),(697,982),(698,982),(699,982),(697,983),(698,983),(699,983),(697,984),(698,984),(699,984),(697,985),(698,985),(699,985);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topic`
--

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
INSERT INTO `help_topic` VALUES (629,'REPAIR TABLE',47,'Syntax:\nREPAIR [NO_WRITE_TO_BINLOG | LOCAL]\n    TABLE tbl_name [, tbl_name] ...\n    [QUICK] [EXTENDED] [USE_FRM]\n\nREPAIR TABLE repairs a possibly corrupted table, for certain storage\nengines only.\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nAlthough normally you should never have to run REPAIR TABLE, if\ndisaster strikes, this statement is very likely to get back all your\ndata from a MyISAM table. If your tables become corrupted often, try to\nfind the reason for it, to eliminate the need to use REPAIR TABLE. See\nhttps://dev.mysql.com/doc/refman/8.0/en/crashing.html, and\nhttps://dev.mysql.com/doc/refman/8.0/en/myisam-table-problems.html.\n\nREPAIR TABLE checks the table to see whether an upgrade is required. If\nso, it performs the upgrade, following the same rules as CHECK TABLE\n... FOR UPGRADE. See [HELP CHECK TABLE], for more information.\n\n*Important*:\n\no Make a backup of a table before performing a table repair operation;\n  under some circumstances the operation might cause data loss.\n  Possible causes include but are not limited to file system errors.\n  See https://dev.mysql.com/doc/refman/8.0/en/backup-and-recovery.html.\n\no If the server exits during a REPAIR TABLE operation, it is essential\n  after restarting it that you immediately execute another REPAIR TABLE\n  statement for the table before performing any other operations on it.\n  In the worst case, you might have a new clean index file without\n  information about the data file, and then the next operation you\n  perform could overwrite the data file. This is an unlikely but\n  possible scenario that underscores the value of making a backup\n  first.\n\no In the event that a table on the source becomes corrupted and you run\n  REPAIR TABLE on it, any resulting changes to the original table are\n  not propagated to replicas.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/repair-table.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/repair-table.html'),(630,'CREATE FUNCTION LOADABLE FUNCTION',48,'Syntax:\nCREATE [AGGREGATE] FUNCTION [IF NOT EXISTS] function_name\n    RETURNS {STRING|INTEGER|REAL|DECIMAL}\n    SONAME shared_library_name\n\nThis statement loads the loadable function named function_name. (CREATE\nFUNCTION is also used to created stored functions; see [HELP CREATE\nPROCEDURE].)\n\nA loadable function is a way to extend MySQL with a new function that\nworks like a native (built-in) MySQL function such as ABS() or\nCONCAT(). See Adding a Loadable Function\n(https://dev.mysql.com/doc/extending-mysql/8.0/en/adding-loadable-funct\nion.html).\n\nfunction_name is the name that should be used in SQL statements to\ninvoke the function. The RETURNS clause indicates the type of the\nfunction\'s return value. DECIMAL is a legal value after RETURNS, but\ncurrently DECIMAL functions return string values and should be written\nlike STRING functions.\n\nIF NOT EXISTS prevents an error from occurring if there already exists\na loadable function with the same name. It does not prevent an error\nfrom occurring if there already exists a built-in function having the\nsame name. IF NOT EXISTS is supported for CREATE FUNCTION statements\nbeginning with MySQL 8.0.29. See also\nhttps://dev.mysql.com/doc/refman/8.0/en/function-resolution.html#functi\non-name-resolution.\n\nThe AGGREGATE keyword, if given, signifies that the function is an\naggregate (group) function. An aggregate function works exactly like a\nnative MySQL aggregate function such as SUM() or COUNT().\n\nshared_library_name is the base name of the shared library file\ncontaining the code that implements the function. The file must be\nlocated in the plugin directory. This directory is given by the value\nof the plugin_dir system variable. For more information, see\nhttps://dev.mysql.com/doc/refman/8.0/en/function-loading.html.\n\nCREATE FUNCTION requires the INSERT privilege for the mysql system\nschema because it adds a row to the mysql.func system table to register\nthe function.\n\nCREATE FUNCTION also adds the function to the Performance Schema\nuser_defined_functions table that provides runtime information about\ninstalled loadable functions. See\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-user-defined\n-functions-table.html.\n\n*Note*:\n\nLike the mysql.func system table, the Performance Schema\nuser_defined_functions table lists loadable functions installed using\nCREATE FUNCTION. Unlike the mysql.func table, the\nuser_defined_functions table also lists loadable functions installed\nautomatically by server components or plugins. This difference makes\nuser_defined_functions preferable to mysql.func for checking which\nloadable functions are installed.\n\nDuring the normal startup sequence, the server loads functions\nregistered in the mysql.func table. If the server is started with the\n--skip-grant-tables option, functions registered in the table are not\nloaded and are unavailable.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/create-function-loadable.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/create-function-loadable.html'),(631,'DROP FUNCTION LOADABLE FUNCTION',48,'Syntax:\nDROP FUNCTION [IF EXISTS] function_name\n\nThis statement drops the loadable function named function_name. (DROP\nFUNCTION is also used to drop stored functions; see [HELP DROP\nPROCEDURE].)\n\nDROP FUNCTION is the complement of CREATE FUNCTION. It requires the\nDELETE privilege for the mysql system schema because it removes the row\nfrom the mysql.func system table that registers the function.\n\nDROP FUNCTION also removes the function from the Performance Schema\nuser_defined_functions table that provides runtime information about\ninstalled loadable functions. See\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-user-defined\n-functions-table.html.\n\nDuring the normal startup sequence, the server loads functions\nregistered in the mysql.func table. Because DROP FUNCTION removes the\nmysql.func row for the dropped function, the server does not load the\nfunction during subsequent restarts.\n\nDROP FUNCTION cannot be used to drop a loadable function that is\ninstalled automatically by components or plugins rather than by using\nCREATE FUNCTION. Such a function is also dropped automatically, when\nthe component or plugin that installed it is uninstalled.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/drop-function-loadable.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/drop-function-loadable.html'),(632,'INSTALL COMPONENT',49,'Syntax:\nINSTALL COMPONENT component_name  [, component_name ...\n     [SET variable = expr [, variable = expr] ...] \n  \n  variable: {\n    {GLOBAL | @@GLOBAL.} [component_prefix.]system_var_name\n  | {PERSIST | @@PERSIST.} [component_prefix.]system_var_name\n}\n\nThis statement installs one or more components, which become active\nimmediately. A component provides services that are available to the\nserver and other components; see\nhttps://dev.mysql.com/doc/refman/8.0/en/components.html. INSTALL\nCOMPONENT requires the INSERT privilege for the mysql.component system\ntable because it adds a row to that table to register the component.\n\nExample:\n\nINSTALL COMPONENT \'file://component1\', \'file://component2\';\n\nA component is named using a URN that begins with file:// and indicates\nthe base name of the library file that implements the component,\nlocated in the directory named by the plugin_dir system variable.\nComponent names do not include any platform-dependent file name suffix\nsuch as .so or .dll. (These naming details are subject to change\nbecause component name interpretation is itself performed by a service\nand the component infrastructure makes it possible to replace the\ndefault service implementation with alternative implementations.)\n\nINSTALL COMPONENT (from 8.0.33) permits setting the values of component\nsystem variables when you install one or more components. The SET\nclause enables you to specify variable values precisely when they are\nneeded, without the inconvenience or limitations associated with other\nforms of assignment. Specifically, you can also set component variables\nwith these alternatives:\n\no At server startup using options on the command line or in an option\n  file, but doing so involves a server restart. The values do not take\n  effect until you install the component. You can specify an invalid\n  variable name for a component on the command line without triggering\n  an error.\n\no Dynamically while the server is running by means of the SET\n  statement, which enables you to modify operation of the server\n  without having to stop and restart it. Setting a read-only variable\n  is not permitted.\n\nThe optional SET clause applies a value, or values, only to the\ncomponent specified in the INSTALL COMPONENT statement, rather than to\nall subsequent installations of that component. SET GLOBAL|PERSIST\nworks for all types of variables, including read-only variables,\nwithout having to restart the server. A component system variable that\nyou set using INSTALL COMPONENT takes precedence over any conflicting\nvalue coming from the command line or an option file.\n\nExample:\n\nINSTALL COMPONENT \'file://component1\', \'file://component2\' \n    SET GLOBAL component1.var1 = 12 + 3, PERSIST component2.var2 = \'strings\';\n\nOmitting PERSIST or GLOBAL is equivalent to specifying GLOBAL.\n\nSpecifying PERSIST for any variable in SET silently executes SET\nPERSIST_ONLY immediately after INSTALL COMPONENT loads the components,\nbut before updating the mysql.component table. If SET PERSIST_ONLY\nfails, then the server unloads all of the previously loaded new\ncomponents without persisting anything to mysql.component.\n\nThe SET clause accepts only valid variable names of the component being\ninstalled and emits an error message for all invalid names. Subqueries,\nstored functions, and aggregate functions are not permitted as part of\nthe value expression. If you install a single component, it is not\nnecessary to prefix the variable name with the component name.\n\n*Note*:\n\nWhile specifying a variable value using the SET clause is similar to\nthat of the command line---it is available immediately at variable\nregistration---there is a distinct difference in how the SET clause\nhandles invalid numerical values for boolean variables. For example, if\nyou set a boolean variable to 11 (component1.boolvar = 11), you see the\nfollowing behavior:\n\no SET clause yields true\n\no Command line yields false (11 is neither ON nor 1)\n\nIf any error occurs, the statement fails and has no effect. For\nexample, this happens if a component name is erroneous, a named\ncomponent does not exist or is already installed, or component\ninitialization fails.\n\nA loader service handles component loading, which includes adding\ninstalled components to the mysql.component system table that serves as\na registry. For subsequent server restarts, any components listed in\nmysql.component are loaded by the loader service during the startup\nsequence. This occurs even if the server is started with the\n--skip-grant-tables option.\n\nIf a component depends on services not present in the registry and you\nattempt to install the component without also installing the component\nor components that provide the services on which it depends, an error\noccurs:\n\nERROR 3527 (HY000): Cannot satisfy dependency for service \'component_a\'\nrequired by component \'component_b\'.\n\nTo avoid this problem, either install all components in the same\nstatement, or install the dependent component after installing any\ncomponents on which it depends.\n\n*Note*:\n\nFor keyring components, do not use INSTALL COMPONENT. Instead,\nconfigure keyring component loading using a manifest file. See\nhttps://dev.mysql.com/doc/refman/8.0/en/keyring-component-installation.\nhtml.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/install-component.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/install-component.html'),(633,'INSTALL PLUGIN',50,'Syntax:\nINSTALL PLUGIN plugin_name SONAME \'shared_library_name\'\n\nThis statement installs a server plugin. It requires the INSERT\nprivilege for the mysql.plugin system table because it adds a row to\nthat table to register the plugin.\n\nplugin_name is the name of the plugin as defined in the plugin\ndescriptor structure contained in the library file (see Plugin Data\nStructures\n(https://dev.mysql.com/doc/extending-mysql/8.0/en/plugin-data-structure\ns.html)). Plugin names are not case-sensitive. For maximal\ncompatibility, plugin names should be limited to ASCII letters, digits,\nand underscore because they are used in C source files, shell command\nlines, M4 and Bourne shell scripts, and SQL environments.\n\nshared_library_name is the name of the shared library that contains the\nplugin code. The name includes the file name extension (for example,\nlibmyplugin.so, libmyplugin.dll, or libmyplugin.dylib).\n\nThe shared library must be located in the plugin directory (the\ndirectory named by the plugin_dir system variable). The library must be\nin the plugin directory itself, not in a subdirectory. By default,\nplugin_dir is the plugin directory under the directory named by the\npkglibdir configuration variable, but it can be changed by setting the\nvalue of plugin_dir at server startup. For example, set its value in a\nmy.cnf file:\n\n[mysqld]\nplugin_dir=/path/to/plugin/directory\n\nIf the value of plugin_dir is a relative path name, it is taken to be\nrelative to the MySQL base directory (the value of the basedir system\nvariable).\n\nINSTALL PLUGIN loads and initializes the plugin code to make the plugin\navailable for use. A plugin is initialized by executing its\ninitialization function, which handles any setup that the plugin must\nperform before it can be used. When the server shuts down, it executes\nthe deinitialization function for each plugin that is loaded so that\nthe plugin has a chance to perform any final cleanup.\n\nINSTALL PLUGIN also registers the plugin by adding a line that\nindicates the plugin name and library file name to the mysql.plugin\nsystem table. During the normal startup sequence, the server loads and\ninitializes plugins registered in mysql.plugin. This means that a\nplugin is installed with INSTALL PLUGIN only once, not every time the\nserver starts. If the server is started with the --skip-grant-tables\noption, plugins registered in the mysql.plugin table are not loaded and\nare unavailable.\n\nA plugin library can contain multiple plugins. For each of them to be\ninstalled, use a separate INSTALL PLUGIN statement. Each statement\nnames a different plugin, but all of them specify the same library\nname.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/install-plugin.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/install-plugin.html'),(634,'UNINSTALL COMPONENT',49,'Syntax:\nUNINSTALL COMPONENT component_name [, component_name ] ...\n\nThis statement deactivates and uninstalls one or more components. A\ncomponent provides services that are available to the server and other\ncomponents; see\nhttps://dev.mysql.com/doc/refman/8.0/en/components.html. UNINSTALL\nCOMPONENT is the complement of INSTALL COMPONENT. It requires the\nDELETE privilege for the mysql.component system table because it\nremoves the row from that table that registers the component. UNINSTALL\nCOMPONENT does not undo persisted variables, including the variables\npersisted using INSTALL COMPONENT ... SET PERSIST.\n\nExample:\n\nUNINSTALL COMPONENT \'file://component1\', \'file://component2\';\n\nFor information about component naming, see [HELP INSTALL COMPONENT].\n\nIf any error occurs, the statement fails and has no effect. For\nexample, this happens if a component name is erroneous, a named\ncomponent is not installed, or cannot be uninstalled because other\ninstalled components depend on it.\n\nA loader service handles component unloading, which includes removing\nuninstalled components from the mysql.component system table that\nserves as a registry. As a result, unloaded components are not loaded\nduring the startup sequence for subsequent server restarts.\n\n*Note*:\n\nThis statement has no effect for keyring components, which are loaded\nusing a manifest file and cannot be uninstalled. See\nhttps://dev.mysql.com/doc/refman/8.0/en/keyring-component-installation.\nhtml.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/uninstall-component.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/uninstall-component.html'),(635,'UNINSTALL PLUGIN',49,'Syntax:\nUNINSTALL PLUGIN plugin_name\n\nThis statement removes an installed server plugin. UNINSTALL PLUGIN is\nthe complement of INSTALL PLUGIN. It requires the DELETE privilege for\nthe mysql.plugin system table because it removes the row from that\ntable that registers the plugin.\n\nplugin_name must be the name of some plugin that is listed in the\nmysql.plugin table. The server executes the plugin\'s deinitialization\nfunction and removes the row for the plugin from the mysql.plugin\nsystem table, so that subsequent server restarts do not load and\ninitialize the plugin. UNINSTALL PLUGIN does not remove the plugin\'s\nshared library file.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/uninstall-plugin.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/uninstall-plugin.html'),(636,'CLONE',49,'Syntax:\nCLONE clone_action\n\nclone_action: {\n    LOCAL DATA DIRECTORY [=] \'clone_dir\';\n  | INSTANCE FROM \'user\'@\'host\':port\n    IDENTIFIED BY \'password\'\n    [DATA DIRECTORY [=] \'clone_dir\']\n    [REQUIRE [NO] SSL]\n}\n\nThe CLONE statement is used to clone data locally or from a remote\nMySQL server instance. To use CLONE syntax, the clone plugin must be\ninstalled. See\nhttps://dev.mysql.com/doc/refman/8.0/en/clone-plugin.html.\n\nCLONE LOCAL DATA DIRECTORY syntax clones data from the local MySQL data\ndirectory to a directory on the same server or node where the MySQL\nserver instance runs. The \'clone_dir\' directory is the full path of the\nlocal directory that data is cloned to. An absolute path is required.\nThe specified directory must not exist, but the specified path must be\nan existent path. The MySQL server requires the necessary write access\nto create the specified directory. For more information, see\nhttps://dev.mysql.com/doc/refman/8.0/en/clone-plugin-local.html.\n\nCLONE INSTANCE syntax clones data from a remote MySQL server instance\n(the donor) and transfers it to the MySQL instance where the cloning\noperation was initiated (the recipient).\n\no user is the clone user on the donor MySQL server instance.\n\no host is the hostname address of the donor MySQL server instance.\n  Internet Protocol version 6 (IPv6) address format is not supported.\n  An alias to the IPv6 address can be used instead. An IPv4 address can\n  be used as is.\n\no port is the port number of the donor MySQL server instance. (The X\n  Protocol port specified by mysqlx_port is not supported. Connecting\n  to the donor MySQL server instance through MySQL Router is also not\n  supported.)\n\no IDENTIFIED BY \'password\' specifies the password of the clone user on\n  the donor MySQL server instance.\n\no DATA DIRECTORY [=] \'clone_dir\' is an optional clause used to specify\n  a directory on the recipient for the data you are cloning. Use this\n  option if you do not want to remove existing data in the recipient\n  data directory. An absolute path is required, and the directory must\n  not exist. The MySQL server must have the necessary write access to\n  create the directory.\n\n  When the optional DATA DIRECTORY [=] \'clone_dir\' clause is not used,\n  a cloning operation removes existing data in the recipient data\n  directory, replaces it with the cloned data, and automatically\n  restarts the server afterward.\n\no [REQUIRE [NO] SSL] explicitly specifies whether an encrypted\n  connection is to be used or not when transferring cloned data over\n  the network. An error is returned if the explicit specification\n  cannot be satisfied. If an SSL clause is not specified, clone\n  attempts to establish an encrypted connection by default, falling\n  back to an insecure connection if the secure connection attempt\n  fails. A secure connection is required when cloning encrypted data\n  regardless of whether this clause is specified. For more information,\n  see\n  https://dev.mysql.com/doc/refman/8.0/en/clone-plugin-remote.html#clon\n  e-plugin-remote-ssl.\n\nFor additional information about cloning data from a remote MySQL\nserver instance, see\nhttps://dev.mysql.com/doc/refman/8.0/en/clone-plugin-remote.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/clone.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/clone.html'),(637,'SET',3,'Syntax:\nSET variable = expr [, variable = expr] ...\n\nvariable: {\n    user_var_name\n  | param_name\n  | local_var_name\n  | {GLOBAL | @@GLOBAL.} system_var_name\n  | {PERSIST | @@PERSIST.} system_var_name\n  | {PERSIST_ONLY | @@PERSIST_ONLY.} system_var_name\n  | [SESSION | @@SESSION. | @@] system_var_name\n}\n\nSET syntax for variable assignment enables you to assign values to\ndifferent types of variables that affect the operation of the server or\nclients:\n\no User-defined variables. See\n  https://dev.mysql.com/doc/refman/8.0/en/user-variables.html.\n\no Stored procedure and function parameters, and stored program local\n  variables. See\n  https://dev.mysql.com/doc/refman/8.0/en/stored-program-variables.html\n  .\n\no System variables. See\n  https://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html.\n  System variables also can be set at server startup, as described in\n  https://dev.mysql.com/doc/refman/8.0/en/using-system-variables.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/set-variable.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/set-variable.html'),(638,'SET CHARACTER SET',3,'Syntax:\nSET {CHARACTER SET | CHARSET}\n    {\'charset_name\' | DEFAULT}\n\nThis statement maps all strings sent between the server and the current\nclient with the given mapping. SET CHARACTER SET sets three session\nsystem variables: character_set_client and character_set_results are\nset to the given character set, and character_set_connection to the\nvalue of character_set_database. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html.\n\ncharset_name may be quoted or unquoted.\n\nThe default character set mapping can be restored by using the value\nDEFAULT. The default depends on the server configuration.\n\nSome character sets cannot be used as the client character set.\nAttempting to use them with SET CHARACTER SET produces an error. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html#charset\n-connection-impermissible-client-charset.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/set-character-set.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/set-character-set.html'),(639,'SET CHARSET',3,'Syntax:\nSET {CHARACTER SET | CHARSET}\n    {\'charset_name\' | DEFAULT}\n\nThis statement maps all strings sent between the server and the current\nclient with the given mapping. SET CHARACTER SET sets three session\nsystem variables: character_set_client and character_set_results are\nset to the given character set, and character_set_connection to the\nvalue of character_set_database. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html.\n\ncharset_name may be quoted or unquoted.\n\nThe default character set mapping can be restored by using the value\nDEFAULT. The default depends on the server configuration.\n\nSome character sets cannot be used as the client character set.\nAttempting to use them with SET CHARACTER SET produces an error. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html#charset\n-connection-impermissible-client-charset.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/set-character-set.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/set-character-set.html'),(640,'SET NAMES',3,'Syntax:\nSET NAMES {\'charset_name\'\n    [COLLATE \'collation_name\'] | DEFAULT}\n\nThis statement sets the three session system variables\ncharacter_set_client, character_set_connection, and\ncharacter_set_results to the given character set. Setting\ncharacter_set_connection to charset_name also sets collation_connection\nto the default collation for charset_name. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html.\n\nThe optional COLLATE clause may be used to specify a collation\nexplicitly. If given, the collation must one of the permitted\ncollations for charset_name.\n\ncharset_name and collation_name may be quoted or unquoted.\n\nThe default mapping can be restored by using a value of DEFAULT. The\ndefault depends on the server configuration.\n\nSome character sets cannot be used as the client character set.\nAttempting to use them with SET NAMES produces an error. See\nhttps://dev.mysql.com/doc/refman/8.0/en/charset-connection.html#charset\n-connection-impermissible-client-charset.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/set-names.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/set-names.html'),(641,'SHOW',3,'SHOW has many forms that provide information about databases, tables,\ncolumns, or status information about the server. This section describes\nthose following:\n\nSHOW {BINARY | MASTER} LOGS\nSHOW BINLOG EVENTS [IN \'log_name\'] [FROM pos] [LIMIT [offset,] row_count]\nSHOW {CHARACTER SET | CHARSET} [like_or_where]\nSHOW COLLATION [like_or_where]\nSHOW [FULL] COLUMNS FROM tbl_name [FROM db_name] [like_or_where]\nSHOW CREATE DATABASE db_name\nSHOW CREATE EVENT event_name\nSHOW CREATE FUNCTION func_name\nSHOW CREATE PROCEDURE proc_name\nSHOW CREATE TABLE tbl_name\nSHOW CREATE TRIGGER trigger_name\nSHOW CREATE VIEW view_name\nSHOW DATABASES [like_or_where]\nSHOW ENGINE engine_name {STATUS | MUTEX}\nSHOW [STORAGE] ENGINES\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW EVENTS\nSHOW FUNCTION CODE func_name\nSHOW FUNCTION STATUS [like_or_where]\nSHOW GRANTS FOR user\nSHOW INDEX FROM tbl_name [FROM db_name]\nSHOW MASTER STATUS\nSHOW OPEN TABLES [FROM db_name] [like_or_where]\nSHOW PLUGINS\nSHOW PROCEDURE CODE proc_name\nSHOW PROCEDURE STATUS [like_or_where]\nSHOW PRIVILEGES\nSHOW [FULL] PROCESSLIST\nSHOW PROFILE [types] [FOR QUERY n] [OFFSET n] [LIMIT n]\nSHOW PROFILES\nSHOW RELAYLOG EVENTS [IN \'log_name\'] [FROM pos] [LIMIT [offset,] row_count]\nSHOW {REPLICAS | SLAVE HOSTS}\nSHOW {REPLICA | SLAVE} STATUS [FOR CHANNEL channel]\nSHOW [GLOBAL | SESSION] STATUS [like_or_where]\nSHOW TABLE STATUS [FROM db_name] [like_or_where]\nSHOW [FULL] TABLES [FROM db_name] [like_or_where]\nSHOW TRIGGERS [FROM db_name] [like_or_where]\nSHOW [GLOBAL | SESSION] VARIABLES [like_or_where]\nSHOW WARNINGS [LIMIT [offset,] row_count]\n\nlike_or_where: {\n    LIKE \'pattern\'\n  | WHERE expr\n}\n\nIf the syntax for a given SHOW statement includes a LIKE \'pattern\'\npart, \'pattern\' is a string that can contain the SQL % and _ wildcard\ncharacters. The pattern is useful for restricting statement output to\nmatching values.\n\nSeveral SHOW statements also accept a WHERE clause that provides more\nflexibility in specifying which rows to display. See\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nIn SHOW statement results, user names and host names are quoted using\nbackticks (`).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show.html'),(642,'SHOW BINARY LOGS',3,'Syntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [HELP PURGE BINARY LOGS], that shows\nhow to determine which logs can be purged. SHOW BINARY LOGS requires\nthe REPLICATION CLIENT privilege (or the deprecated SUPER privilege).\n\nEncrypted binary log files have a 512-byte file header that stores\ninformation required for encryption and decryption of the file. This is\nincluded in the file size displayed by SHOW BINARY LOGS. The Encrypted\ncolumn shows whether or not the binary log file is encrypted. Binary\nlog encryption is active if binlog_encryption=ON is set for the server.\nExisting binary log files are not encrypted or decrypted if binary log\nencryption is activated or deactivated while the server is running.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+-----------+\n| Log_name      | File_size | Encrypted |\n+---------------+-----------+-----------+\n| binlog.000015 |    724935 |       Yes |\n| binlog.000016 |    733481 |       Yes |\n+---------------+-----------+-----------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-binary-logs.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-binary-logs.html'),(643,'SHOW MASTER LOGS',3,'Syntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [HELP PURGE BINARY LOGS], that shows\nhow to determine which logs can be purged. SHOW BINARY LOGS requires\nthe REPLICATION CLIENT privilege (or the deprecated SUPER privilege).\n\nEncrypted binary log files have a 512-byte file header that stores\ninformation required for encryption and decryption of the file. This is\nincluded in the file size displayed by SHOW BINARY LOGS. The Encrypted\ncolumn shows whether or not the binary log file is encrypted. Binary\nlog encryption is active if binlog_encryption=ON is set for the server.\nExisting binary log files are not encrypted or decrypted if binary log\nencryption is activated or deactivated while the server is running.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+-----------+\n| Log_name      | File_size | Encrypted |\n+---------------+-----------+-----------+\n| binlog.000015 |    724935 |       Yes |\n| binlog.000016 |    733481 |       Yes |\n+---------------+-----------+-----------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-binary-logs.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-binary-logs.html'),(644,'SHOW BINLOG EVENTS',3,'Syntax:\nSHOW BINLOG EVENTS\n   [IN \'log_name\']\n   [FROM pos]\n   [LIMIT [offset,] row_count]\n\nShows the events in the binary log. If you do not specify \'log_name\',\nthe first binary log is displayed. SHOW BINLOG EVENTS requires the\nREPLICATION SLAVE privilege.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-binlog-events.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-binlog-events.html'),(645,'SHOW CHARACTER SET',3,'Syntax:\nSHOW {CHARACTER SET | CHARSET}\n    [LIKE \'pattern\' | WHERE expr]\n\nThe SHOW CHARACTER SET statement shows all available character sets.\nThe LIKE clause, if present, indicates which character set names to\nmatch. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html. For\nexample:\n\nmysql> SHOW CHARACTER SET LIKE \'latin%\';\n+---------+-----------------------------+-------------------+--------+\n| Charset | Description                 | Default collation | Maxlen |\n+---------+-----------------------------+-------------------+--------+\n| latin1  | cp1252 West European        | latin1_swedish_ci |      1 |\n| latin2  | ISO 8859-2 Central European | latin2_general_ci |      1 |\n| latin5  | ISO 8859-9 Turkish          | latin5_turkish_ci |      1 |\n| latin7  | ISO 8859-13 Baltic          | latin7_general_ci |      1 |\n+---------+-----------------------------+-------------------+--------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-character-set.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-character-set.html'),(646,'SHOW COLLATION',3,'Syntax:\nSHOW COLLATION\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement lists collations supported by the server. By default,\nthe output from SHOW COLLATION includes all available collations. The\nLIKE clause, if present, indicates which collation names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html. For\nexample:\n\nmysql> SHOW COLLATION WHERE Charset = \'latin1\';\n+-------------------+---------+----+---------+----------+---------+\n| Collation         | Charset | Id | Default | Compiled | Sortlen |\n+-------------------+---------+----+---------+----------+---------+\n| latin1_german1_ci | latin1  |  5 |         | Yes      |       1 |\n| latin1_swedish_ci | latin1  |  8 | Yes     | Yes      |       1 |\n| latin1_danish_ci  | latin1  | 15 |         | Yes      |       1 |\n| latin1_german2_ci | latin1  | 31 |         | Yes      |       2 |\n| latin1_bin        | latin1  | 47 |         | Yes      |       1 |\n| latin1_general_ci | latin1  | 48 |         | Yes      |       1 |\n| latin1_general_cs | latin1  | 49 |         | Yes      |       1 |\n| latin1_spanish_ci | latin1  | 94 |         | Yes      |       1 |\n+-------------------+---------+----+---------+----------+---------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-collation.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-collation.html'),(647,'SHOW COLUMNS',3,'Syntax:\nSHOW [EXTENDED] [FULL] {COLUMNS | FIELDS}\n    {FROM | IN} tbl_name\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW COLUMNS displays information about the columns in a given table.\nIt also works for views. SHOW COLUMNS displays information only for\nthose columns for which you have some privilege.\n\nmysql> SHOW COLUMNS FROM City;\n+-------------+----------+------+-----+---------+----------------+\n| Field       | Type     | Null | Key | Default | Extra          |\n+-------------+----------+------+-----+---------+----------------+\n| ID          | int(11)  | NO   | PRI | NULL    | auto_increment |\n| Name        | char(35) | NO   |     |         |                |\n| CountryCode | char(3)  | NO   | MUL |         |                |\n| District    | char(20) | NO   |     |         |                |\n| Population  | int(11)  | NO   |     | 0       |                |\n+-------------+----------+------+-----+---------+----------------+\n\nAn alternative to tbl_name FROM db_name syntax is db_name.tbl_name.\nThese two statements are equivalent:\n\nSHOW COLUMNS FROM mytable FROM mydb;\nSHOW COLUMNS FROM mydb.mytable;\n\nThe optional EXTENDED keyword causes the output to include information\nabout hidden columns that MySQL uses internally and are not accessible\nby users.\n\nThe optional FULL keyword causes the output to include the column\ncollation and comments, as well as the privileges you have for each\ncolumn.\n\nThe LIKE clause, if present, indicates which column names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nThe data types may differ from what you expect them to be based on a\nCREATE TABLE statement because MySQL sometimes changes data types when\nyou create or alter a table. The conditions under which this occurs are\ndescribed in\nhttps://dev.mysql.com/doc/refman/8.0/en/silent-column-changes.html.\n\nSHOW COLUMNS displays the following values for each table column:\n\no Field\n\n  The name of the column.\n\no Type\n\n  The column data type.\n\no Collation\n\n  The collation for nonbinary string columns, or NULL for other\n  columns. This value is displayed only if you use the FULL keyword.\n\no Null\n\n  The column nullability. The value is YES if NULL values can be stored\n  in the column, NO if not.\n\no Key\n\n  Whether the column is indexed:\n\n  o If Key is empty, the column either is not indexed or is indexed\n    only as a secondary column in a multiple-column, nonunique index.\n\n  o If Key is PRI, the column is a PRIMARY KEY or is one of the columns\n    in a multiple-column PRIMARY KEY.\n\n  o If Key is UNI, the column is the first column of a UNIQUE index. (A\n    UNIQUE index permits multiple NULL values, but you can tell whether\n    the column permits NULL by checking the Null field.)\n\n  o If Key is MUL, the column is the first column of a nonunique index\n    in which multiple occurrences of a given value are permitted within\n    the column.\n\n  If more than one of the Key values applies to a given column of a\n  table, Key displays the one with the highest priority, in the order\n  PRI, UNI, MUL.\n\n  A UNIQUE index may be displayed as PRI if it cannot contain NULL\n  values and there is no PRIMARY KEY in the table. A UNIQUE index may\n  display as MUL if several columns form a composite UNIQUE index;\n  although the combination of the columns is unique, each column can\n  still hold multiple occurrences of a given value.\n\no Default\n\n  The default value for the column. This is NULL if the column has an\n  explicit default of NULL, or if the column definition includes no\n  DEFAULT clause.\n\no Extra\n\n  Any additional information that is available about a given column.\n  The value is nonempty in these cases:\n\n  o auto_increment for columns that have the AUTO_INCREMENT attribute.\n\n  o on update CURRENT_TIMESTAMP for TIMESTAMP or DATETIME columns that\n    have the ON UPDATE CURRENT_TIMESTAMP attribute.\n\n  o VIRTUAL GENERATED or STORED GENERATED for generated columns.\n\n  o DEFAULT_GENERATED for columns that have an expression default\n    value.\n\no Privileges\n\n  The privileges you have for the column. This value is displayed only\n  if you use the FULL keyword.\n\no Comment\n\n  Any comment included in the column definition. This value is\n  displayed only if you use the FULL keyword.\n\nTable column information is also available from the INFORMATION_SCHEMA\nCOLUMNS table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-columns-tabl\ne.html. The extended information about hidden columns is available only\nusing SHOW EXTENDED COLUMNS; it cannot be obtained from the COLUMNS\ntable.\n\nYou can list a table\'s columns with the mysqlshow db_name tbl_name\ncommand.\n\nThe DESCRIBE statement provides information similar to SHOW COLUMNS.\nSee https://dev.mysql.com/doc/refman/8.0/en/describe.html.\n\nThe SHOW CREATE TABLE, SHOW TABLE STATUS, and SHOW INDEX statements\nalso provide information about tables. See [HELP SHOW].\n\nIn MySQL 8.0.30 and later, SHOW COLUMNS includes the table\'s generated\ninvisible primary key, if it has one, by default. You can cause this\ninformation to be suppressed in the statement\'s output by setting\nshow_gipk_in_create_table_and_information_schema = OFF. For more\ninformation, see\nhttps://dev.mysql.com/doc/refman/8.0/en/create-table-gipks.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-columns.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-columns.html'),(648,'SHOW FIELDS',3,'Syntax:\nSHOW [EXTENDED] [FULL] {COLUMNS | FIELDS}\n    {FROM | IN} tbl_name\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW COLUMNS displays information about the columns in a given table.\nIt also works for views. SHOW COLUMNS displays information only for\nthose columns for which you have some privilege.\n\nmysql> SHOW COLUMNS FROM City;\n+-------------+----------+------+-----+---------+----------------+\n| Field       | Type     | Null | Key | Default | Extra          |\n+-------------+----------+------+-----+---------+----------------+\n| ID          | int(11)  | NO   | PRI | NULL    | auto_increment |\n| Name        | char(35) | NO   |     |         |                |\n| CountryCode | char(3)  | NO   | MUL |         |                |\n| District    | char(20) | NO   |     |         |                |\n| Population  | int(11)  | NO   |     | 0       |                |\n+-------------+----------+------+-----+---------+----------------+\n\nAn alternative to tbl_name FROM db_name syntax is db_name.tbl_name.\nThese two statements are equivalent:\n\nSHOW COLUMNS FROM mytable FROM mydb;\nSHOW COLUMNS FROM mydb.mytable;\n\nThe optional EXTENDED keyword causes the output to include information\nabout hidden columns that MySQL uses internally and are not accessible\nby users.\n\nThe optional FULL keyword causes the output to include the column\ncollation and comments, as well as the privileges you have for each\ncolumn.\n\nThe LIKE clause, if present, indicates which column names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nThe data types may differ from what you expect them to be based on a\nCREATE TABLE statement because MySQL sometimes changes data types when\nyou create or alter a table. The conditions under which this occurs are\ndescribed in\nhttps://dev.mysql.com/doc/refman/8.0/en/silent-column-changes.html.\n\nSHOW COLUMNS displays the following values for each table column:\n\no Field\n\n  The name of the column.\n\no Type\n\n  The column data type.\n\no Collation\n\n  The collation for nonbinary string columns, or NULL for other\n  columns. This value is displayed only if you use the FULL keyword.\n\no Null\n\n  The column nullability. The value is YES if NULL values can be stored\n  in the column, NO if not.\n\no Key\n\n  Whether the column is indexed:\n\n  o If Key is empty, the column either is not indexed or is indexed\n    only as a secondary column in a multiple-column, nonunique index.\n\n  o If Key is PRI, the column is a PRIMARY KEY or is one of the columns\n    in a multiple-column PRIMARY KEY.\n\n  o If Key is UNI, the column is the first column of a UNIQUE index. (A\n    UNIQUE index permits multiple NULL values, but you can tell whether\n    the column permits NULL by checking the Null field.)\n\n  o If Key is MUL, the column is the first column of a nonunique index\n    in which multiple occurrences of a given value are permitted within\n    the column.\n\n  If more than one of the Key values applies to a given column of a\n  table, Key displays the one with the highest priority, in the order\n  PRI, UNI, MUL.\n\n  A UNIQUE index may be displayed as PRI if it cannot contain NULL\n  values and there is no PRIMARY KEY in the table. A UNIQUE index may\n  display as MUL if several columns form a composite UNIQUE index;\n  although the combination of the columns is unique, each column can\n  still hold multiple occurrences of a given value.\n\no Default\n\n  The default value for the column. This is NULL if the column has an\n  explicit default of NULL, or if the column definition includes no\n  DEFAULT clause.\n\no Extra\n\n  Any additional information that is available about a given column.\n  The value is nonempty in these cases:\n\n  o auto_increment for columns that have the AUTO_INCREMENT attribute.\n\n  o on update CURRENT_TIMESTAMP for TIMESTAMP or DATETIME columns that\n    have the ON UPDATE CURRENT_TIMESTAMP attribute.\n\n  o VIRTUAL GENERATED or STORED GENERATED for generated columns.\n\n  o DEFAULT_GENERATED for columns that have an expression default\n    value.\n\no Privileges\n\n  The privileges you have for the column. This value is displayed only\n  if you use the FULL keyword.\n\no Comment\n\n  Any comment included in the column definition. This value is\n  displayed only if you use the FULL keyword.\n\nTable column information is also available from the INFORMATION_SCHEMA\nCOLUMNS table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-columns-tabl\ne.html. The extended information about hidden columns is available only\nusing SHOW EXTENDED COLUMNS; it cannot be obtained from the COLUMNS\ntable.\n\nYou can list a table\'s columns with the mysqlshow db_name tbl_name\ncommand.\n\nThe DESCRIBE statement provides information similar to SHOW COLUMNS.\nSee https://dev.mysql.com/doc/refman/8.0/en/describe.html.\n\nThe SHOW CREATE TABLE, SHOW TABLE STATUS, and SHOW INDEX statements\nalso provide information about tables. See [HELP SHOW].\n\nIn MySQL 8.0.30 and later, SHOW COLUMNS includes the table\'s generated\ninvisible primary key, if it has one, by default. You can cause this\ninformation to be suppressed in the statement\'s output by setting\nshow_gipk_in_create_table_and_information_schema = OFF. For more\ninformation, see\nhttps://dev.mysql.com/doc/refman/8.0/en/create-table-gipks.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-columns.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-columns.html'),(649,'SHOW CREATE DATABASE',3,'Syntax:\nSHOW CREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name\n\nShows the CREATE DATABASE statement that creates the named database. If\nthe SHOW statement includes an IF NOT EXISTS clause, the output too\nincludes such a clause. SHOW CREATE SCHEMA is a synonym for SHOW CREATE\nDATABASE.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-database.html\n\n','mysql> SHOW CREATE DATABASE test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET utf8mb4\n                 COLLATE utf8mb4_0900_ai_ci */ /*!80014 DEFAULT ENCRYPTION=\'N\' */\n\nmysql> SHOW CREATE SCHEMA test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET utf8mb4\n                 COLLATE utf8mb4_0900_ai_ci */ /*!80014 DEFAULT ENCRYPTION=\'N\' */\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-database.html'),(650,'SHOW CREATE SCHEMA',3,'Syntax:\nSHOW CREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name\n\nShows the CREATE DATABASE statement that creates the named database. If\nthe SHOW statement includes an IF NOT EXISTS clause, the output too\nincludes such a clause. SHOW CREATE SCHEMA is a synonym for SHOW CREATE\nDATABASE.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-database.html\n\n','mysql> SHOW CREATE DATABASE test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET utf8mb4\n                 COLLATE utf8mb4_0900_ai_ci */ /*!80014 DEFAULT ENCRYPTION=\'N\' */\n\nmysql> SHOW CREATE SCHEMA test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET utf8mb4\n                 COLLATE utf8mb4_0900_ai_ci */ /*!80014 DEFAULT ENCRYPTION=\'N\' */\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-database.html'),(651,'SHOW CREATE EVENT',3,'Syntax:\nSHOW CREATE EVENT event_name\n\nThis statement displays the CREATE EVENT statement needed to re-create\na given event. It requires the EVENT privilege for the database from\nwhich the event is to be shown. For example (using the same event\ne_daily defined and then altered in [HELP SHOW EVENTS]):\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-event.html\n\n','mysql> SHOW CREATE EVENT myschema.e_daily\\G\n*************************** 1. row ***************************\n               Event: e_daily\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n           time_zone: SYSTEM\n        Create Event: CREATE DEFINER=`jon`@`ghidora` EVENT `e_daily`\n                        ON SCHEDULE EVERY 1 DAY\n                        STARTS CURRENT_TIMESTAMP + INTERVAL 6 HOUR\n                        ON COMPLETION NOT PRESERVE\n                        ENABLE\n                        COMMENT \'Saves total number of sessions then\n                                clears the table each day\'\n                        DO BEGIN\n                          INSERT INTO site_activity.totals (time, total)\n                            SELECT CURRENT_TIMESTAMP, COUNT(*)\n                              FROM site_activity.sessions;\n                          DELETE FROM site_activity.sessions;\n                        END\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-event.html'),(652,'SHOW CREATE FUNCTION',3,'Syntax:\nSHOW CREATE FUNCTION func_name\n\nThis statement is similar to SHOW CREATE PROCEDURE but for stored\nfunctions. See [HELP SHOW CREATE PROCEDURE].\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-function.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-create-function.html'),(653,'SHOW CREATE PROCEDURE',3,'Syntax:\nSHOW CREATE PROCEDURE proc_name\n\nThis statement is a MySQL extension. It returns the exact string that\ncan be used to re-create the named stored procedure. A similar\nstatement, SHOW CREATE FUNCTION, displays information about stored\nfunctions (see [HELP SHOW CREATE FUNCTION]).\n\nTo use either statement, you must be the user named as the routine\nDEFINER, have the SHOW_ROUTINE privilege, have the SELECT privilege at\nthe global level, or have the CREATE ROUTINE, ALTER ROUTINE, or EXECUTE\nprivilege granted at a scope that includes the routine. The value\ndisplayed for the Create Procedure or Create Function field is NULL if\nyou have only CREATE ROUTINE, ALTER ROUTINE, or EXECUTE.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-procedure.html\n\n','mysql> SHOW CREATE PROCEDURE test.citycount\\G\n*************************** 1. row ***************************\n           Procedure: citycount\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n    Create Procedure: CREATE DEFINER=`me`@`localhost`\n                      PROCEDURE `citycount`(IN country CHAR(3), OUT cities INT)\n                      BEGIN\n                        SELECT COUNT(*) INTO cities FROM world.city\n                        WHERE CountryCode = country;\n                      END\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nmysql> SHOW CREATE FUNCTION test.hello\\G\n*************************** 1. row ***************************\n            Function: hello\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n     Create Function: CREATE DEFINER=`me`@`localhost`\n                      FUNCTION `hello`(s CHAR(20))\n                      RETURNS char(50) CHARSET utf8mb4\n                      DETERMINISTIC\n                      RETURN CONCAT(\'Hello, \',s,\'!\')\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-procedure.html'),(654,'SHOW CREATE TABLE',3,'Syntax:\nSHOW CREATE TABLE tbl_name\n\nShows the CREATE TABLE statement that creates the named table. To use\nthis statement, you must have some privilege for the table. This\nstatement also works with views.\n\nAs of MySQL 8.0.16, MySQL implements CHECK constraints and SHOW CREATE\nTABLE displays them. All CHECK constraints are displayed as table\nconstraints. That is, a CHECK constraint originally specified as part\nof a column definition displays as a separate clause not part of the\ncolumn definition. Example:\n\nmysql> CREATE TABLE t1 (\n         i1 INT CHECK (i1 <> 0),      -- column constraint\n         i2 INT,\n         CHECK (i2 > i1),             -- table constraint\n         CHECK (i2 <> 0) NOT ENFORCED -- table constraint, not enforced\n       );\n\nmysql> SHOW CREATE TABLE t1\\G\n*************************** 1. row ***************************\n       Table: t1\nCreate Table: CREATE TABLE `t1` (\n  `i1` int DEFAULT NULL,\n  `i2` int DEFAULT NULL,\n  CONSTRAINT `t1_chk_1` CHECK ((`i1` <> 0)),\n  CONSTRAINT `t1_chk_2` CHECK ((`i2` > `i1`)),\n  CONSTRAINT `t1_chk_3` CHECK ((`i2` <> 0)) /*!80016 NOT ENFORCED */\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci\n\nSHOW CREATE TABLE quotes table and column names according to the value\nof the sql_quote_show_create option. See\nhttps://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html.\n\nWhen altering the storage engine of a table, table options that are not\napplicable to the new storage engine are retained in the table\ndefinition to enable reverting the table with its previously defined\noptions to the original storage engine, if necessary. For example, when\nchanging the storage engine from InnoDB to MyISAM, options specific to\nInnoDB, such as ROW_FORMAT=COMPACT, are retained, as shown here:\n\nmysql> CREATE TABLE t1 (c1 INT PRIMARY KEY) ROW_FORMAT=COMPACT ENGINE=InnoDB;\nmysql> ALTER TABLE t1 ENGINE=MyISAM;\nmysql> SHOW CREATE TABLE t1\\G\n*************************** 1. row ***************************\n       Table: t1\nCreate Table: CREATE TABLE `t1` (\n  `c1` int NOT NULL,\n  PRIMARY KEY (`c1`)\n) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT\n\nWhen creating a table with strict mode disabled, the storage engine\'s\ndefault row format is used if the specified row format is not\nsupported. The actual row format of the table is reported in the\nRow_format column in response to SHOW TABLE STATUS. SHOW CREATE TABLE\nshows the row format that was specified in the CREATE TABLE statement.\n\nIn MySQL 8.0.30 and later, SHOW CREATE TABLE includes the definition of\nthe table\'s generated invisible primary key, if it has such a key, by\ndefault. You can cause this information to be suppressed in the\nstatement\'s output by setting\nshow_gipk_in_create_table_and_information_schema = OFF. For more\ninformation, see\nhttps://dev.mysql.com/doc/refman/8.0/en/create-table-gipks.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-table.html\n\n','mysql> SHOW CREATE TABLE t\\G\n*************************** 1. row ***************************\n       Table: t\nCreate Table: CREATE TABLE `t` (\n  `id` int NOT NULL AUTO_INCREMENT,\n  `s` char(60) DEFAULT NULL,\n  PRIMARY KEY (`id`)\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci\n','https://dev.mysql.com/doc/refman/8.0/en/show-create-table.html'),(655,'SHOW CREATE TRIGGER',3,'Syntax:\nSHOW CREATE TRIGGER trigger_name\n\nThis statement shows the CREATE TRIGGER statement that creates the\nnamed trigger. This statement requires the TRIGGER privilege for the\ntable associated with the trigger.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-trigger.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-create-trigger.html'),(656,'SHOW CREATE USER',3,'Syntax:\nSHOW CREATE USER user\n\nThis statement shows the CREATE USER statement that creates the named\nuser. An error occurs if the user does not exist. The statement\nrequires the SELECT privilege for the mysql system schema, except to\nsee information for the current user. For the current user, the SELECT\nprivilege for the mysql.user system table is required for display of\nthe password hash in the IDENTIFIED AS clause; otherwise, the hash\ndisplays as <secret>.\n\nTo name the account, use the format described in\nhttps://dev.mysql.com/doc/refman/8.0/en/account-names.html. The host\nname part of the account name, if omitted, defaults to \'%\'. It is also\npossible to specify CURRENT_USER or CURRENT_USER() to refer to the\naccount associated with the current session.\n\nPassword hash values displayed in the IDENTIFIED WITH clause of output\nfrom SHOW CREATE USER may contain unprintable characters that have\nadverse effects on terminal displays and in other environments.\nEnabling the print_identified_with_as_hex system variable (available as\nof MySQL 8.0.17) causes SHOW CREATE USER to display such hash values as\nhexadecimal strings rather than as regular string literals. Hash values\nthat do not contain unprintable characters still display as regular\nstring literals, even with this variable enabled.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-user.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-create-user.html'),(657,'SHOW CREATE VIEW',3,'Syntax:\nSHOW CREATE VIEW view_name\n\nThis statement shows the CREATE VIEW statement that creates the named\nview.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-create-view.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-create-view.html'),(658,'SHOW DATABASES',3,'Syntax:\nSHOW {DATABASES | SCHEMAS}\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW DATABASES lists the databases on the MySQL server host. SHOW\nSCHEMAS is a synonym for SHOW DATABASES. The LIKE clause, if present,\nindicates which database names to match. The WHERE clause can be given\nto select rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nYou see only those databases for which you have some kind of privilege,\nunless you have the global SHOW DATABASES privilege. You can also get\nthis list using the mysqlshow command.\n\nIf the server was started with the --skip-show-database option, you\ncannot use this statement at all unless you have the SHOW DATABASES\nprivilege.\n\nMySQL implements databases as directories in the data directory, so\nthis statement simply lists directories in that location. However, the\noutput may include names of directories that do not correspond to\nactual databases.\n\nDatabase information is also available from the INFORMATION_SCHEMA\nSCHEMATA table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-schemata-tab\nle.html.\n\n*Caution*:\n\nBecause any static global privilege is considered a privilege for all\ndatabases, any static global privilege enables a user to see all\ndatabase names with SHOW DATABASES or by examining the SCHEMATA table\nof INFORMATION_SCHEMA, except databases that have been restricted at\nthe database level by partial revokes.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-databases.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-databases.html'),(659,'SHOW SCHEMAS',3,'Syntax:\nSHOW {DATABASES | SCHEMAS}\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW DATABASES lists the databases on the MySQL server host. SHOW\nSCHEMAS is a synonym for SHOW DATABASES. The LIKE clause, if present,\nindicates which database names to match. The WHERE clause can be given\nto select rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nYou see only those databases for which you have some kind of privilege,\nunless you have the global SHOW DATABASES privilege. You can also get\nthis list using the mysqlshow command.\n\nIf the server was started with the --skip-show-database option, you\ncannot use this statement at all unless you have the SHOW DATABASES\nprivilege.\n\nMySQL implements databases as directories in the data directory, so\nthis statement simply lists directories in that location. However, the\noutput may include names of directories that do not correspond to\nactual databases.\n\nDatabase information is also available from the INFORMATION_SCHEMA\nSCHEMATA table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-schemata-tab\nle.html.\n\n*Caution*:\n\nBecause any static global privilege is considered a privilege for all\ndatabases, any static global privilege enables a user to see all\ndatabase names with SHOW DATABASES or by examining the SCHEMATA table\nof INFORMATION_SCHEMA, except databases that have been restricted at\nthe database level by partial revokes.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-databases.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-databases.html'),(660,'SHOW ENGINE',3,'Syntax:\nSHOW ENGINE engine_name {STATUS | MUTEX}\n\nSHOW ENGINE displays operational information about a storage engine. It\nrequires the PROCESS privilege. The statement has these variants:\n\nSHOW ENGINE INNODB STATUS\nSHOW ENGINE INNODB MUTEX\nSHOW ENGINE PERFORMANCE_SCHEMA STATUS\n\nSHOW ENGINE INNODB STATUS displays extensive information from the\nstandard InnoDB Monitor about the state of the InnoDB storage engine.\nFor information about the standard monitor and other InnoDB Monitors\nthat provide information about InnoDB processing, see\nhttps://dev.mysql.com/doc/refman/8.0/en/innodb-monitors.html.\n\nSHOW ENGINE INNODB MUTEX displays InnoDB mutex and rw-lock statistics.\n\n*Note*:\n\nInnoDB mutexes and rwlocks can also be monitored using Performance\nSchema tables. See\nhttps://dev.mysql.com/doc/refman/8.0/en/monitor-innodb-mutex-waits-perf\normance-schema.html.\n\nMutex statistics collection is configured dynamically using the\nfollowing options:\n\no To enable the collection of mutex statistics, run:\n\nSET GLOBAL innodb_monitor_enable=\'latch\';\n\no To reset mutex statistics, run:\n\nSET GLOBAL innodb_monitor_reset=\'latch\';\n\no To disable the collection of mutex statistics, run:\n\nSET GLOBAL innodb_monitor_disable=\'latch\';\n\nCollection of mutex statistics for SHOW ENGINE INNODB MUTEX can also be\nenabled by setting innodb_monitor_enable=\'all\', or disabled by setting\ninnodb_monitor_disable=\'all\'.\n\nSHOW ENGINE INNODB MUTEX output has these columns:\n\no Type\n\n  Always InnoDB.\n\no Name\n\n  For mutexes, the Name field reports only the mutex name. For rwlocks,\n  the Name field reports the source file where the rwlock is\n  implemented, and the line number in the file where the rwlock is\n  created. The line number is specific to your version of MySQL.\n\no Status\n\n  The mutex status. This field reports the number of spins, waits, and\n  calls. Statistics for low-level operating system mutexes, which are\n  implemented outside of InnoDB, are not reported.\n\n  o spins indicates the number of spins.\n\n  o waits indicates the number of mutex waits.\n\n  o calls indicates how many times the mutex was requested.\n\nSHOW ENGINE INNODB MUTEX does not list mutexes and rw-locks for each\nbuffer pool block, as the amount of output would be overwhelming on\nsystems with a large buffer pool. SHOW ENGINE INNODB MUTEX does,\nhowever, print aggregate BUF_BLOCK_MUTEX spin, wait, and call values\nfor buffer pool block mutexes and rw-locks. SHOW ENGINE INNODB MUTEX\nalso does not list any mutexes or rw-locks that have never been waited\non (os_waits=0). Thus, SHOW ENGINE INNODB MUTEX only displays\ninformation about mutexes and rw-locks outside of the buffer pool that\nhave caused at least one OS-level wait.\n\nUse SHOW ENGINE PERFORMANCE_SCHEMA STATUS to inspect the internal\noperation of the Performance Schema code:\n\nmysql> SHOW ENGINE PERFORMANCE_SCHEMA STATUS\\G\n...\n*************************** 3. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.size\nStatus: 76\n*************************** 4. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.count\nStatus: 10000\n*************************** 5. row ***************************\n  Type: performance_schema\n  Name: events_waits_history.memory\nStatus: 760000\n...\n*************************** 57. row ***************************\n  Type: performance_schema\n  Name: performance_schema.memory\nStatus: 26459600\n...\n\nThis statement is intended to help the DBA understand the effects that\ndifferent Performance Schema options have on memory requirements.\n\nName values consist of two parts, which name an internal buffer and a\nbuffer attribute, respectively. Interpret buffer names as follows:\n\no An internal buffer that is not exposed as a table is named within\n  parentheses. Examples: (pfs_cond_class).size,\n  (pfs_mutex_class).memory.\n\no An internal buffer that is exposed as a table in the\n  performance_schema database is named after the table, without\n  parentheses. Examples: events_waits_history.size,\n  mutex_instances.count.\n\no A value that applies to the Performance Schema as a whole begins with\n  performance_schema. Example: performance_schema.memory.\n\nBuffer attributes have these meanings:\n\no size is the size of the internal record used by the implementation,\n  such as the size of a row in a table. size values cannot be changed.\n\no count is the number of internal records, such as the number of rows\n  in a table. count values can be changed using Performance Schema\n  configuration options.\n\no For a table, tbl_name.memory is the product of size and count. For\n  the Performance Schema as a whole, performance_schema.memory is the\n  sum of all the memory used (the sum of all other memory values).\n\nIn some cases, there is a direct relationship between a Performance\nSchema configuration parameter and a SHOW ENGINE value. For example,\nevents_waits_history_long.count corresponds to\nperformance_schema_events_waits_history_long_size. In other cases, the\nrelationship is more complex. For example, events_waits_history.count\ncorresponds to performance_schema_events_waits_history_size (the number\nof rows per thread) multiplied by\nperformance_schema_max_thread_instances ( the number of threads).\n\nSHOW ENGINE NDB STATUS If the server has the NDB storage engine\nenabled, SHOW ENGINE NDB STATUS displays cluster status information\nsuch as the number of connected data nodes, the cluster connectstring,\nand cluster binary log epochs, as well as counts of various Cluster API\nobjects created by the MySQL Server when connected to the cluster.\nSample output from this statement is shown here:\n\nmysql> SHOW ENGINE NDB STATUS;\n+------------+-----------------------+--------------------------------------------------+\n| Type       | Name                  | Status                                           |\n+------------+-----------------------+--------------------------------------------------+\n| ndbcluster | connection            | cluster_node_id=7,\n  connected_host=198.51.100.103, connected_port=1186, number_of_data_nodes=4,\n  number_of_ready_data_nodes=3, connect_count=0                                         |\n| ndbcluster | NdbTransaction        | created=6, free=0, sizeof=212                    |\n| ndbcluster | NdbOperation          | created=8, free=8, sizeof=660                    |\n| ndbcluster | NdbIndexScanOperation | created=1, free=1, sizeof=744                    |\n| ndbcluster | NdbIndexOperation     | created=0, free=0, sizeof=664                    |\n| ndbcluster | NdbRecAttr            | created=1285, free=1285, sizeof=60               |\n| ndbcluster | NdbApiSignal          | created=16, free=16, sizeof=136                  |\n| ndbcluster | NdbLabel              | created=0, free=0, sizeof=196                    |\n| ndbcluster | NdbBranch             | created=0, free=0, sizeof=24                     |\n| ndbcluster | NdbSubroutine         | created=0, free=0, sizeof=68                     |\n| ndbcluster | NdbCall               | created=0, free=0, sizeof=16                     |\n| ndbcluster | NdbBlob               | created=1, free=1, sizeof=264                    |\n| ndbcluster | NdbReceiver           | created=4, free=0, sizeof=68                     |\n| ndbcluster | binlog                | latest_epoch=155467, latest_trans_epoch=148126,\n  latest_received_binlog_epoch=0, latest_handled_binlog_epoch=0,\n  latest_applied_binlog_epoch=0                                                         |\n+------------+-----------------------+--------------------------------------------------+\n\nThe Status column in each of these rows provides information about the\nMySQL server\'s connection to the cluster and about the cluster binary\nlog\'s status, respectively. The Status information is in the form of\ncomma-delimited set of name/value pairs.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-engine.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-engine.html'),(661,'SHOW ENGINES',3,'Syntax:\nSHOW [STORAGE] ENGINES\n\nSHOW ENGINES displays status information about the server\'s storage\nengines. This is particularly useful for checking whether a storage\nengine is supported, or to see what the default engine is.\n\nFor information about MySQL storage engines, see\nhttps://dev.mysql.com/doc/refman/8.0/en/innodb-storage-engine.html, and\nhttps://dev.mysql.com/doc/refman/8.0/en/storage-engines.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-engines.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-engines.html'),(662,'SHOW ERRORS',3,'Syntax:\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW COUNT(*) ERRORS\n\nSHOW ERRORS is a diagnostic statement that is similar to SHOW WARNINGS,\nexcept that it displays information only for errors, rather than for\nerrors, warnings, and notes.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\nhttps://dev.mysql.com/doc/refman/8.0/en/select.html.\n\nThe SHOW COUNT(*) ERRORS statement displays the number of errors. You\ncan also retrieve this number from the error_count variable:\n\nSHOW COUNT(*) ERRORS;\nSELECT @@error_count;\n\nSHOW ERRORS and error_count apply only to errors, not warnings or\nnotes. In other respects, they are similar to SHOW WARNINGS and\nwarning_count. In particular, SHOW ERRORS cannot display information\nfor more than max_error_count messages, and error_count can exceed the\nvalue of max_error_count if the number of errors exceeds\nmax_error_count.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-errors.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-errors.html'),(663,'SHOW EVENTS',3,'Syntax:\nSHOW EVENTS\n    [{FROM | IN} schema_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement displays information about Event Manager events, which\nare discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/event-scheduler.html. It\nrequires the EVENT privilege for the database from which the events are\nto be shown.\n\nIn its simplest form, SHOW EVENTS lists all of the events in the\ncurrent schema:\n\nmysql> SELECT CURRENT_USER(), SCHEMA();\n+----------------+----------+\n| CURRENT_USER() | SCHEMA() |\n+----------------+----------+\n| jon@ghidora    | myschema |\n+----------------+----------+\n1 row in set (0.00 sec)\n\nmysql> SHOW EVENTS\\G\n*************************** 1. row ***************************\n                  Db: myschema\n                Name: e_daily\n             Definer: jon@ghidora\n           Time zone: SYSTEM\n                Type: RECURRING\n          Execute at: NULL\n      Interval value: 1\n      Interval field: DAY\n              Starts: 2018-08-08 11:06:34\n                Ends: NULL\n              Status: ENABLED\n          Originator: 1\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nTo see events for a specific schema, use the FROM clause. For example,\nto see events for the test schema, use the following statement:\n\nSHOW EVENTS FROM test;\n\nThe LIKE clause, if present, indicates which event names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-events.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-events.html'),(664,'SHOW FUNCTION CODE',3,'Syntax:\nSHOW FUNCTION CODE func_name\n\nThis statement is similar to SHOW PROCEDURE CODE but for stored\nfunctions. See [HELP SHOW PROCEDURE CODE].\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-function-code.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-function-code.html'),(665,'SHOW FUNCTION STATUS',3,'Syntax:\nSHOW FUNCTION STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement is similar to SHOW PROCEDURE STATUS but for stored\nfunctions. See [HELP SHOW PROCEDURE STATUS].\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-function-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-function-status.html'),(666,'SHOW GRANTS',3,'Syntax:\nSHOW GRANTS\n    [FOR user_or_role\n        [USING role [, role] ...]]\n\nuser_or_role: {\n    user (see )\n  | role (see .\n}\n\nThis statement displays the privileges and roles that are assigned to a\nMySQL user account or role, in the form of GRANT statements that must\nbe executed to duplicate the privilege and role assignments.\n\n*Note*:\n\nTo display nonprivilege information for MySQL accounts, use the SHOW\nCREATE USER statement. See [HELP SHOW CREATE USER].\n\nSHOW GRANTS requires the SELECT privilege for the mysql system schema,\nexcept to display privileges and roles for the current user.\n\nTo name the account or role for SHOW GRANTS, use the same format as for\nthe GRANT statement (for example, \'jeffrey\'@\'localhost\'):\n\nmysql> SHOW GRANTS FOR \'jeffrey\'@\'localhost\';\n+------------------------------------------------------------------+\n| Grants for jeffrey@localhost                                     |\n+------------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `jeffrey`@`localhost`                      |\n| GRANT SELECT, INSERT, UPDATE ON `db1`.* TO `jeffrey`@`localhost` |\n+------------------------------------------------------------------+\n\nThe host part, if omitted, defaults to \'%\'. For additional information\nabout specifying account and role names, see\nhttps://dev.mysql.com/doc/refman/8.0/en/account-names.html, and\nhttps://dev.mysql.com/doc/refman/8.0/en/role-names.html.\n\nTo display the privileges granted to the current user (the account you\nare using to connect to the server), you can use any of the following\nstatements:\n\nSHOW GRANTS;\nSHOW GRANTS FOR CURRENT_USER;\nSHOW GRANTS FOR CURRENT_USER();\n\nIf SHOW GRANTS FOR CURRENT_USER (or any equivalent syntax) is used in\ndefiner context, such as within a stored procedure that executes with\ndefiner rather than invoker privileges, the grants displayed are those\nof the definer and not the invoker.\n\nIn MySQL 8.0 compared to previous series, SHOW GRANTS no longer\ndisplays ALL PRIVILEGES in its global-privileges output because the\nmeaning of ALL PRIVILEGES at the global level varies depending on which\ndynamic privileges are defined. Instead, SHOW GRANTS explicitly lists\neach granted global privilege:\n\nmysql> SHOW GRANTS FOR \'root\'@\'localhost\';\n+---------------------------------------------------------------------+\n| Grants for root@localhost                                           |\n+---------------------------------------------------------------------+\n| GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, RELOAD,         |\n| SHUTDOWN, PROCESS, FILE, REFERENCES, INDEX, ALTER, SHOW DATABASES,  |\n| SUPER, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION   |\n| SLAVE, REPLICATION CLIENT, CREATE VIEW, SHOW VIEW, CREATE ROUTINE,  |\n| ALTER ROUTINE, CREATE USER, EVENT, TRIGGER, CREATE TABLESPACE,      |\n| CREATE ROLE, DROP ROLE ON *.* TO `root`@`localhost` WITH GRANT      |\n| OPTION                                                              |\n| GRANT PROXY ON \'\'@\'\' TO `root`@`localhost` WITH GRANT OPTION        |\n+---------------------------------------------------------------------+\n\nApplications that process SHOW GRANTS output should be adjusted\naccordingly.\n\nAt the global level, GRANT OPTION applies to all granted static global\nprivileges if granted for any of them, but applies individually to\ngranted dynamic privileges. SHOW GRANTS displays global privileges this\nway:\n\no One line listing all granted static privileges, if there are any,\n  including WITH GRANT OPTION if appropriate.\n\no One line listing all granted dynamic privileges for which GRANT\n  OPTION is granted, if there are any, including WITH GRANT OPTION.\n\no One line listing all granted dynamic privileges for which GRANT\n  OPTION is not granted, if there are any, without WITH GRANT OPTION.\n\nWith the optional USING clause, SHOW GRANTS enables you to examine the\nprivileges associated with roles for the user. Each role named in the\nUSING clause must be granted to the user.\n\nSuppose that user u1 is assigned roles r1 and r2, as follows:\n\nCREATE ROLE \'r1\', \'r2\';\nGRANT SELECT ON db1.* TO \'r1\';\nGRANT INSERT, UPDATE, DELETE ON db1.* TO \'r2\';\nCREATE USER \'u1\'@\'localhost\' IDENTIFIED BY \'u1pass\';\nGRANT \'r1\', \'r2\' TO \'u1\'@\'localhost\';\n\nSHOW GRANTS without USING shows the granted roles:\n\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\';\n+---------------------------------------------+\n| Grants for u1@localhost                     |\n+---------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`      |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost` |\n+---------------------------------------------+\n\nAdding a USING clause causes the statement to also display the\nprivileges associated with each role named in the clause:\n\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r1\';\n+---------------------------------------------+\n| Grants for u1@localhost                     |\n+---------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`      |\n| GRANT SELECT ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost` |\n+---------------------------------------------+\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r2\';\n+-------------------------------------------------------------+\n| Grants for u1@localhost                                     |\n+-------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`                      |\n| GRANT INSERT, UPDATE, DELETE ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost`                 |\n+-------------------------------------------------------------+\nmysql> SHOW GRANTS FOR \'u1\'@\'localhost\' USING \'r1\', \'r2\';\n+---------------------------------------------------------------------+\n| Grants for u1@localhost                                             |\n+---------------------------------------------------------------------+\n| GRANT USAGE ON *.* TO `u1`@`localhost`                              |\n| GRANT SELECT, INSERT, UPDATE, DELETE ON `db1`.* TO `u1`@`localhost` |\n| GRANT `r1`@`%`,`r2`@`%` TO `u1`@`localhost`                         |\n+---------------------------------------------------------------------+\n\n*Note*:\n\nA privilege granted to an account is always in effect, but a role is\nnot. The active roles for an account can differ across and within\nsessions, depending on the value of the activate_all_roles_on_login\nsystem variable, the account default roles, and whether SET ROLE has\nbeen executed within a session.\n\nMySQL 8.0.16 and higher supports partial revokes of global privileges,\nsuch that a global privilege can be restricted from applying to\nparticular schemas (see\nhttps://dev.mysql.com/doc/refman/8.0/en/partial-revokes.html). To\nindicate which global schema privileges have been revoked for\nparticular schemas, SHOW GRANTS output includes REVOKE statements:\n\nmysql> SET PERSIST partial_revokes = ON;\nmysql> CREATE USER u1;\nmysql> GRANT SELECT, INSERT, DELETE ON *.* TO u1;\nmysql> REVOKE SELECT, INSERT ON mysql.* FROM u1;\nmysql> REVOKE DELETE ON world.* FROM u1;\nmysql> SHOW GRANTS FOR u1;\n+--------------------------------------------------+\n| Grants for u1@%                                  |\n+--------------------------------------------------+\n| GRANT SELECT, INSERT, DELETE ON *.* TO `u1`@`%`  |\n| REVOKE SELECT, INSERT ON `mysql`.* FROM `u1`@`%` |\n| REVOKE DELETE ON `world`.* FROM `u1`@`%`         |\n+--------------------------------------------------+\n\nSHOW GRANTS does not display privileges that are available to the named\naccount but are granted to a different account. For example, if an\nanonymous account exists, the named account might be able to use its\nprivileges, but SHOW GRANTS does not display them.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-grants.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-grants.html'),(667,'SHOW INDEX',3,'Syntax:\nSHOW [EXTENDED] {INDEX | INDEXES | KEYS}\n    {FROM | IN} tbl_name\n    [{FROM | IN} db_name]\n    [WHERE expr]\n\nSHOW INDEX returns table index information. The format resembles that\nof the SQLStatistics call in ODBC. This statement requires some\nprivilege for any column in the table.\n\nmysql> SHOW INDEX FROM City\\G\n*************************** 1. row ***************************\n        Table: city\n   Non_unique: 0\n     Key_name: PRIMARY\n Seq_in_index: 1\n  Column_name: ID\n    Collation: A\n  Cardinality: 4188\n     Sub_part: NULL\n       Packed: NULL\n         Null:\n   Index_type: BTREE\n      Comment:\nIndex_comment:\n      Visible: YES\n   Expression: NULL\n*************************** 2. row ***************************\n        Table: city\n   Non_unique: 1\n     Key_name: CountryCode\n Seq_in_index: 1\n  Column_name: CountryCode\n    Collation: A\n  Cardinality: 232\n     Sub_part: NULL\n       Packed: NULL\n         Null:\n   Index_type: BTREE\n      Comment:\nIndex_comment:\n      Visible: YES\n   Expression: NULL\n\nAn alternative to tbl_name FROM db_name syntax is db_name.tbl_name.\nThese two statements are equivalent:\n\nSHOW INDEX FROM mytable FROM mydb;\nSHOW INDEX FROM mydb.mytable;\n\nThe optional EXTENDED keyword causes the output to include information\nabout hidden indexes that MySQL uses internally and are not accessible\nby users.\n\nThe WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nSHOW INDEX returns the following fields:\n\no Table\n\n  The name of the table.\n\no Non_unique\n\n  0 if the index cannot contain duplicates, 1 if it can.\n\no Key_name\n\n  The name of the index. If the index is the primary key, the name is\n  always PRIMARY.\n\no Seq_in_index\n\n  The column sequence number in the index, starting with 1.\n\no Column_name\n\n  The column name. See also the description for the Expression column.\n\no Collation\n\n  How the column is sorted in the index. This can have values A\n  (ascending), D (descending), or NULL (not sorted).\n\no Cardinality\n\n  An estimate of the number of unique values in the index. To update\n  this number, run ANALYZE TABLE or (for MyISAM tables) myisamchk -a.\n\n  Cardinality is counted based on statistics stored as integers, so the\n  value is not necessarily exact even for small tables. The higher the\n  cardinality, the greater the chance that MySQL uses the index when\n  doing joins.\n\no Sub_part\n\n  The index prefix. That is, the number of indexed characters if the\n  column is only partly indexed, NULL if the entire column is indexed.\n\n  *Note*:\n\n  Prefix limits are measured in bytes. However, prefix lengths for\n  index specifications in CREATE TABLE, ALTER TABLE, and CREATE INDEX\n  statements are interpreted as number of characters for nonbinary\n  string types (CHAR, VARCHAR, TEXT) and number of bytes for binary\n  string types (BINARY, VARBINARY, BLOB). Take this into account when\n  specifying a prefix length for a nonbinary string column that uses a\n  multibyte character set.\n\n  For additional information about index prefixes, see\n  https://dev.mysql.com/doc/refman/8.0/en/column-indexes.html, and\n  [HELP CREATE INDEX].\n\no Packed\n\n  Indicates how the key is packed. NULL if it is not.\n\no Null\n\n  Contains YES if the column may contain NULL values and \'\' if not.\n\no Index_type\n\n  The index method used (BTREE, FULLTEXT, HASH, RTREE).\n\no Comment\n\n  Information about the index not described in its own column, such as\n  disabled if the index is disabled.\n\no Index_comment\n\n  Any comment provided for the index with a COMMENT attribute when the\n  index was created.\n\no Visible\n\n  Whether the index is visible to the optimizer. See\n  https://dev.mysql.com/doc/refman/8.0/en/invisible-indexes.html.\n\no Expression\n\n  MySQL 8.0.13 and higher supports functional key parts (see\n  https://dev.mysql.com/doc/refman/8.0/en/create-index.html#create-inde\n  x-functional-key-parts), which affects both the Column_name and\n  Expression columns:\n\n  o For a nonfunctional key part, Column_name indicates the column\n    indexed by the key part and Expression is NULL.\n\n  o For a functional key part, Column_name column is NULL and\n    Expression indicates the expression for the key part.\n\nInformation about table indexes is also available from the\nINFORMATION_SCHEMA STATISTICS table. See\nhttps://dev.mysql.com/doc/refman/8.0/en/information-schema-statistics-t\nable.html. The extended information about hidden indexes is available\nonly using SHOW EXTENDED INDEX; it cannot be obtained from the\nSTATISTICS table.\n\nYou can list a table\'s indexes with the mysqlshow -k db_name tbl_name\ncommand.\n\nIn MySQL 8.0.30 and later, SHOW INDEX includes the table\'s generated\ninvisible key, if it has one, by default. You can cause this\ninformation to be suppressed in the statement\'s output by setting\nshow_gipk_in_create_table_and_information_schema = OFF. For more\ninformation, see\nhttps://dev.mysql.com/doc/refman/8.0/en/create-table-gipks.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-index.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-index.html'),(668,'SHOW MASTER STATUS',3,'Syntax:\nSHOW MASTER STATUS\n\nThis statement provides status information about the binary log files\nof the source server. It requires the REPLICATION CLIENT privilege (or\nthe deprecated SUPER privilege).\n\nExample:\n\nmysql> SHOW MASTER STATUS\\G\n*************************** 1. row ***************************\n             File: source-bin.000002\n         Position: 1307\n     Binlog_Do_DB: test\n Binlog_Ignore_DB: manual, mysql\nExecuted_Gtid_Set: 3E11FA47-71CA-11E1-9E33-C80AA9429562:1-5\n1 row in set (0.00 sec)\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-master-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-master-status.html'),(669,'SHOW OPEN TABLES',3,'Syntax:\nSHOW OPEN TABLES\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW OPEN TABLES lists the non-TEMPORARY tables that are currently open\nin the table cache. See\nhttps://dev.mysql.com/doc/refman/8.0/en/table-cache.html. The FROM\nclause, if present, restricts the tables shown to those present in the\ndb_name database. The LIKE clause, if present, indicates which table\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-open-tables.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-open-tables.html'),(670,'SHOW PLUGINS',3,'Syntax:\nSHOW PLUGINS\n\nSHOW PLUGINS displays information about server plugins.\n\nExample of SHOW PLUGINS output:\n\nmysql> SHOW PLUGINS\\G\n*************************** 1. row ***************************\n   Name: binlog\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 2. row ***************************\n   Name: CSV\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 3. row ***************************\n   Name: MEMORY\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 4. row ***************************\n   Name: MyISAM\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n...\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-plugins.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-plugins.html'),(671,'SHOW PRIVILEGES',3,'Syntax:\nSHOW PRIVILEGES\n\nSHOW PRIVILEGES shows the list of system privileges that the MySQL\nserver supports. The privileges displayed include all static\nprivileges, and all currently registered dynamic privileges.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-privileges.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-privileges.html'),(672,'SHOW PROCEDURE CODE',3,'Syntax:\nSHOW PROCEDURE CODE proc_name\n\nThis statement is a MySQL extension that is available only for servers\nthat have been built with debugging support. It displays a\nrepresentation of the internal implementation of the named stored\nprocedure. A similar statement, SHOW FUNCTION CODE, displays\ninformation about stored functions (see [HELP SHOW FUNCTION CODE]).\n\nTo use either statement, you must be the user named as the routine\nDEFINER, have the SHOW_ROUTINE privilege, or have the SELECT privilege\nat the global level.\n\nIf the named routine is available, each statement produces a result\nset. Each row in the result set corresponds to one \"instruction\" in the\nroutine. The first column is Pos, which is an ordinal number beginning\nwith 0. The second column is Instruction, which contains an SQL\nstatement (usually changed from the original source), or a directive\nwhich has meaning only to the stored-routine handler.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-procedure-code.html\n\n','mysql> DELIMITER //\nmysql> CREATE PROCEDURE p1 ()\n       BEGIN\n         DECLARE fanta INT DEFAULT 55;\n         DROP TABLE t2;\n         LOOP\n           INSERT INTO t3 VALUES (fanta);\n           END LOOP;\n         END//\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SHOW PROCEDURE CODE p1//\n+-----+----------------------------------------+\n| Pos | Instruction                            |\n+-----+----------------------------------------+\n|   0 | set fanta@0 55                         |\n|   1 | stmt 9 \"DROP TABLE t2\"                 |\n|   2 | stmt 5 \"INSERT INTO t3 VALUES (fanta)\" |\n|   3 | jump 2                                 |\n+-----+----------------------------------------+\n4 rows in set (0.00 sec)\n\nmysql> CREATE FUNCTION test.hello (s CHAR(20))\n       RETURNS CHAR(50) DETERMINISTIC\n       RETURN CONCAT(\'Hello, \',s,\'!\');\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SHOW FUNCTION CODE test.hello;\n+-----+---------------------------------------+\n| Pos | Instruction                           |\n+-----+---------------------------------------+\n|   0 | freturn 254 concat(\'Hello, \',s@0,\'!\') |\n+-----+---------------------------------------+\n1 row in set (0.00 sec)\n','https://dev.mysql.com/doc/refman/8.0/en/show-procedure-code.html'),(673,'SHOW PROCEDURE STATUS',3,'Syntax:\nSHOW PROCEDURE STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nThis statement is a MySQL extension. It returns characteristics of a\nstored procedure, such as the database, name, type, creator, creation\nand modification dates, and character set information. A similar\nstatement, SHOW FUNCTION STATUS, displays information about stored\nfunctions (see [HELP SHOW FUNCTION STATUS]).\n\nTo use either statement, you must be the user named as the routine\nDEFINER, have the SHOW_ROUTINE privilege, have the SELECT privilege at\nthe global level, or have the CREATE ROUTINE, ALTER ROUTINE, or EXECUTE\nprivilege granted at a scope that includes the routine.\n\nThe LIKE clause, if present, indicates which procedure or function\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-procedure-status.html\n\n','mysql> SHOW PROCEDURE STATUS LIKE \'sp1\'\\G\n*************************** 1. row ***************************\n                  Db: test\n                Name: sp1\n                Type: PROCEDURE\n             Definer: testuser@localhost\n            Modified: 2018-08-08 13:54:11\n             Created: 2018-08-08 13:54:11\n       Security_type: DEFINER\n             Comment:\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nmysql> SHOW FUNCTION STATUS LIKE \'hello\'\\G\n*************************** 1. row ***************************\n                  Db: test\n                Name: hello\n                Type: FUNCTION\n             Definer: testuser@localhost\n            Modified: 2020-03-10 11:10:03\n             Created: 2020-03-10 11:10:03\n       Security_type: DEFINER\n             Comment:\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n','https://dev.mysql.com/doc/refman/8.0/en/show-procedure-status.html'),(674,'SHOW PROCESSLIST',3,'Syntax:\nSHOW [FULL] PROCESSLIST\n\n*Important*:\n\nThe INFORMATION SCHEMA implementation of SHOW PROCESSLIST is deprecated\nand subject to removal in a future MySQL release. It is recommended to\nuse the Performance Schema implementation of SHOW PROCESSLIST instead.\n\nThe MySQL process list indicates the operations currently being\nperformed by the set of threads executing within the server. The SHOW\nPROCESSLIST statement is one source of process information. For a\ncomparison of this statement with other sources, see\nhttps://dev.mysql.com/doc/refman/8.0/en/processlist-access.html#process\nlist-sources.\n\n*Note*:\n\nAs of MySQL 8.0.22, an alternative implementation for SHOW PROCESSLIST\nis available based on the Performance Schema processlist table, which,\nunlike the default SHOW PROCESSLIST implementation, does not require a\nmutex and has better performance characteristics. For details, see\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-processlist-\ntable.html.\n\nIf you have the PROCESS privilege, you can see all threads, even those\nbelonging to other users. Otherwise (without the PROCESS privilege),\nnonanonymous users have access to information about their own threads\nbut not threads for other users, and anonymous users have no access to\nthread information.\n\nWithout the FULL keyword, SHOW PROCESSLIST displays only the first 100\ncharacters of each statement in the Info field.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-processlist.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-processlist.html'),(675,'SHOW PROFILE',3,'Syntax:\nSHOW PROFILE [type [, type] ... ]\n    [FOR QUERY n]\n    [LIMIT row_count [OFFSET offset]]\n\ntype: {\n    ALL\n  | BLOCK IO\n  | CONTEXT SWITCHES\n  | CPU\n  | IPC\n  | MEMORY\n  | PAGE FAULTS\n  | SOURCE\n  | SWAPS\n}\n\nThe SHOW PROFILE and SHOW PROFILES statements display profiling\ninformation that indicates resource usage for statements executed\nduring the course of the current session.\n\n*Note*:\n\nThe SHOW PROFILE and SHOW PROFILES statements are deprecated; expect\nthem to be removed in a future MySQL release. Use the Performance\nSchema instead; see\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-query-profil\ning.html.\n\nTo control profiling, use the profiling session variable, which has a\ndefault value of 0 (OFF). Enable profiling by setting profiling to 1 or\nON:\n\nmysql> SET profiling = 1;\n\nSHOW PROFILES displays a list of the most recent statements sent to the\nserver. The size of the list is controlled by the\nprofiling_history_size session variable, which has a default value of\n15. The maximum value is 100. Setting the value to 0 has the practical\neffect of disabling profiling.\n\nAll statements are profiled except SHOW PROFILE and SHOW PROFILES, so\nneither of those statements appears in the profile list. Malformed\nstatements are profiled. For example, SHOW PROFILING is an illegal\nstatement, and a syntax error occurs if you try to execute it, but it\nshows up in the profiling list.\n\nSHOW PROFILE displays detailed information about a single statement.\nWithout the FOR QUERY n clause, the output pertains to the most\nrecently executed statement. If FOR QUERY n is included, SHOW PROFILE\ndisplays information for statement n. The values of n correspond to the\nQuery_ID values displayed by SHOW PROFILES.\n\nThe LIMIT row_count clause may be given to limit the output to\nrow_count rows. If LIMIT is given, OFFSET offset may be added to begin\nthe output offset rows into the full set of rows.\n\nBy default, SHOW PROFILE displays Status and Duration columns. The\nStatus values are like the State values displayed by SHOW PROCESSLIST,\nalthough there might be some minor differences in interpretation for\nthe two statements for some status values (see\nhttps://dev.mysql.com/doc/refman/8.0/en/thread-information.html).\n\nOptional type values may be specified to display specific additional\ntypes of information:\n\no ALL displays all information\n\no BLOCK IO displays counts for block input and output operations\n\no CONTEXT SWITCHES displays counts for voluntary and involuntary\n  context switches\n\no CPU displays user and system CPU usage times\n\no IPC displays counts for messages sent and received\n\no MEMORY is not currently implemented\n\no PAGE FAULTS displays counts for major and minor page faults\n\no SOURCE displays the names of functions from the source code, together\n  with the name and line number of the file in which the function\n  occurs\n\no SWAPS displays swap counts\n\nProfiling is enabled per session. When a session ends, its profiling\ninformation is lost.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-profile.html\n\n','mysql> SELECT @@profiling;\n+-------------+\n| @@profiling |\n+-------------+\n|           0 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> SET profiling = 1;\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> DROP TABLE IF EXISTS t1;\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nmysql> CREATE TABLE T1 (id INT);\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SHOW PROFILES;\n+----------+----------+--------------------------+\n| Query_ID | Duration | Query                    |\n+----------+----------+--------------------------+\n|        0 | 0.000088 | SET PROFILING = 1        |\n|        1 | 0.000136 | DROP TABLE IF EXISTS t1  |\n|        2 | 0.011947 | CREATE TABLE t1 (id INT) |\n+----------+----------+--------------------------+\n3 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE;\n+----------------------+----------+\n| Status               | Duration |\n+----------------------+----------+\n| checking permissions | 0.000040 |\n| creating table       | 0.000056 |\n| After create         | 0.011363 |\n| query end            | 0.000375 |\n| freeing items        | 0.000089 |\n| logging slow query   | 0.000019 |\n| cleaning up          | 0.000005 |\n+----------------------+----------+\n7 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE FOR QUERY 1;\n+--------------------+----------+\n| Status             | Duration |\n+--------------------+----------+\n| query end          | 0.000107 |\n| freeing items      | 0.000008 |\n| logging slow query | 0.000015 |\n| cleaning up        | 0.000006 |\n+--------------------+----------+\n4 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE CPU FOR QUERY 2;\n+----------------------+----------+----------+------------+\n| Status               | Duration | CPU_user | CPU_system |\n+----------------------+----------+----------+------------+\n| checking permissions | 0.000040 | 0.000038 |   0.000002 |\n| creating table       | 0.000056 | 0.000028 |   0.000028 |\n| After create         | 0.011363 | 0.000217 |   0.001571 |\n| query end            | 0.000375 | 0.000013 |   0.000028 |\n| freeing items        | 0.000089 | 0.000010 |   0.000014 |\n| logging slow query   | 0.000019 | 0.000009 |   0.000010 |\n| cleaning up          | 0.000005 | 0.000003 |   0.000002 |\n+----------------------+----------+----------+------------+\n7 rows in set (0.00 sec)\n','https://dev.mysql.com/doc/refman/8.0/en/show-profile.html'),(676,'SHOW PROFILES',3,'Syntax:\nSHOW PROFILES\n\nThe SHOW PROFILES statement, together with SHOW PROFILE, displays\nprofiling information that indicates resource usage for statements\nexecuted during the course of the current session. For more\ninformation, see [HELP SHOW PROFILE].\n\n*Note*:\n\nThe SHOW PROFILE and SHOW PROFILES statements are deprecated; expect it\nto be removed in a future MySQL release. Use the Performance Schema\ninstead; see\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-query-profil\ning.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-profiles.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-profiles.html'),(677,'SHOW RELAYLOG EVENTS',3,'Syntax:\nSHOW RELAYLOG EVENTS\n    [IN \'log_name\']\n    [FROM pos]\n    [LIMIT [offset,] row_count]\n    [channel_option]\n\nchannel_option:\n    FOR CHANNEL channel\n\nShows the events in the relay log of a replica. If you do not specify\n\'log_name\', the first relay log is displayed. This statement has no\neffect on the source. SHOW RELAYLOG EVENTS requires the REPLICATION\nSLAVE privilege.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-relaylog-events.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-relaylog-events.html'),(678,'SHOW REPLICAS',3,'Syntax:\n{SHOW REPLICAS}\n\nDisplays a list of replicas currently registered with the source. From\nMySQL 8.0.22, use SHOW REPLICAS in place of SHOW SLAVE HOSTS, which is\ndeprecated from that release. In releases before MySQL 8.0.22, use SHOW\nSLAVE HOSTS. SHOW REPLICAS requires the REPLICATION SLAVE privilege.\n\nSHOW REPLICAS should be executed on a server that acts as a replication\nsource. The statement displays information about servers that are or\nhave been connected as replicas, with each row of the result\ncorresponding to one replica server, as shown here:\n\nmysql> SHOW REPLICAS;\n+------------+-----------+------+-----------+--------------------------------------+\n| Server_id  | Host      | Port | Source_id | Replica_UUID                         |\n+------------+-----------+------+-----------+--------------------------------------+\n|         10 | iconnect2 | 3306 |         3 | 14cb6624-7f93-11e0-b2c0-c80aa9429562 |\n|         21 | athena    | 3306 |         3 | 07af4990-f41f-11df-a566-7ac56fdaf645 |\n+------------+-----------+------+-----------+--------------------------------------+\n\no Server_id: The unique server ID of the replica server, as configured\n  in the replica server\'s option file, or on the command line with\n  --server-id=value.\n\no Host: The host name of the replica server, as specified on the\n  replica with the --report-host option. This can differ from the\n  machine name as configured in the operating system.\n\no User: The replica server user name, as specified on the replica with\n  the --report-user option. Statement output includes this column only\n  if the source server is started with the --show-replica-auth-info or\n  --show-slave-auth-info option.\n\no Password: The replica server password, as specified on the replica\n  with the --report-password option. Statement output includes this\n  column only if the source server is started with the\n  --show-replica-auth-info or --show-slave-auth-info option.\n\no Port: The port on the source to which the replica server is\n  listening, as specified on the replica with the --report-port option.\n\n  A zero in this column means that the replica port (--report-port) was\n  not set.\n\no Source_id: The unique server ID of the source server that the replica\n  server is replicating from. This is the server ID of the server on\n  which SHOW REPLICAS is executed, so this same value is listed for\n  each row in the result.\n\no Replica_UUID: The globally unique ID of this replica, as generated on\n  the replica and found in the replica\'s auto.cnf file.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-replicas.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-replicas.html'),(679,'SHOW SLAVE HOSTS',3,'Syntax:\n{SHOW SLAVE HOSTS | SHOW REPLICAS}\n\nDisplays a list of replicas currently registered with the source. From\nMySQL 8.0.22, SHOW SLAVE HOSTS is deprecated and the alias SHOW\nREPLICAS should be used instead. The statement works in the same way as\nbefore, only the terminology used for the statement and its output has\nchanged. Both versions of the statement update the same status\nvariables when used. Please see the documentation for SHOW REPLICAS for\na description of the statement.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-slave-hosts.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-slave-hosts.html'),(680,'SHOW REPLICA STATUS',3,'Syntax:\nSHOW {REPLICA | SLAVE} STATUS [FOR CHANNEL channel]\n\nThis statement provides status information on essential parameters of\nthe replica threads. From MySQL 8.0.22, use SHOW REPLICA STATUS in\nplace of SHOW SLAVE STATUS, which is deprecated from that release. In\nreleases before MySQL 8.0.22, use SHOW SLAVE STATUS. The statement\nrequires the REPLICATION CLIENT privilege (or the deprecated SUPER\nprivilege).\n\nSHOW REPLICA STATUS is nonblocking. When run concurrently with STOP\nREPLICA, SHOW REPLICA STATUS returns without waiting for STOP REPLICA\nto finish shutting down the replication SQL (applier) thread or\nreplication I/O (receiver) thread (or both). This permits use in\nmonitoring and other applications where getting an immediate response\nfrom SHOW REPLICA STATUS is more important than ensuring that it\nreturned the latest data. The SLAVE keyword was replaced with REPLICA\nin MySQL 8.0.22.\n\nIf you issue this statement using the mysql client, you can use a \\G\nstatement terminator rather than a semicolon to obtain a more readable\nvertical layout:\n\nmysql> SHOW REPLICA STATUS\\G\n*************************** 1. row ***************************\n             Replica_IO_State: Waiting for source to send event\n                  Source_Host: 127.0.0.1\n                  Source_User: root\n                  Source_Port: 13000\n                Connect_Retry: 1\n              Source_Log_File: master-bin.000001\n          Read_Source_Log_Pos: 927\n               Relay_Log_File: slave-relay-bin.000002\n                Relay_Log_Pos: 1145\n        Relay_Source_Log_File: master-bin.000001\n           Replica_IO_Running: Yes\n          Replica_SQL_Running: Yes\n              Replicate_Do_DB:\n          Replicate_Ignore_DB:\n           Replicate_Do_Table:\n       Replicate_Ignore_Table:\n      Replicate_Wild_Do_Table:\n  Replicate_Wild_Ignore_Table:\n                   Last_Errno: 0\n                   Last_Error:\n                 Skip_Counter: 0\n          Exec_Source_Log_Pos: 927\n              Relay_Log_Space: 1355\n              Until_Condition: None\n               Until_Log_File:\n                Until_Log_Pos: 0\n           Source_SSL_Allowed: No\n           Source_SSL_CA_File:\n           Source_SSL_CA_Path:\n              Source_SSL_Cert:\n            Source_SSL_Cipher:\n               Source_SSL_Key:\n        Seconds_Behind_Source: 0\nSource_SSL_Verify_Server_Cert: No\n                Last_IO_Errno: 0\n                Last_IO_Error:\n               Last_SQL_Errno: 0\n               Last_SQL_Error:\n  Replicate_Ignore_Server_Ids:\n             Source_Server_Id: 1\n                  Source_UUID: 73f86016-978b-11ee-ade5-8d2a2a562feb\n             Source_Info_File: mysql.slave_master_info\n                    SQL_Delay: 0\n          SQL_Remaining_Delay: NULL\n    Replica_SQL_Running_State: Replica has read all relay log; waiting for more updates\n           Source_Retry_Count: 10\n                  Source_Bind:\n      Last_IO_Error_Timestamp:\n     Last_SQL_Error_Timestamp:\n               Source_SSL_Crl:\n           Source_SSL_Crlpath:\n           Retrieved_Gtid_Set: 73f86016-978b-11ee-ade5-8d2a2a562feb:1-3\n            Executed_Gtid_Set: 73f86016-978b-11ee-ade5-8d2a2a562feb:1-3\n                Auto_Position: 1\n         Replicate_Rewrite_DB:\n                 Channel_Name:\n           Source_TLS_Version:\n       Source_public_key_path:\n        Get_Source_public_key: 0\n            Network_Namespace:\n\nThe Performance Schema provides tables that expose replication\ninformation. This is similar to the information available from the SHOW\nREPLICA STATUS statement, but represented in table form. For details,\nsee\nhttps://dev.mysql.com/doc/refman/8.0/en/performance-schema-replication-\ntables.html.\n\nFrom MySQL 8.0.27, you can set the GTID_ONLY option on the CHANGE\nREPLICATION SOURCE TO statement to stop a replication channel from\npersisting file names and file positions in the replication metadata\nrepositories. With this setting, file positions for the source binary\nlog file and the relay log file are tracked in memory. The SHOW REPLICA\nSTATUS statement still displays file positions in normal use. However,\nbecause the file positions are not being regularly updated in the\nconnection metadata repository and the applier metadata repository\nexcept in a few situations, they are likely to be out of date if the\nserver is restarted.\n\nFor a replication channel with the GTID_ONLY setting after a server\nstart, the read and applied file positions for the source binary log\nfile (Read_Source_Log_Pos and Exec_Source_Log_Pos) are set to zero, and\nthe file names (Source_Log_File and Relay_Source_Log_File) are set to\nINVALID. The relay log file name (Relay_Log_File) is set according to\nthe relay_log_recovery setting, either a new file that was created at\nserver start or the first relay log file present. The file position\n(Relay_Log_Pos) is set to position 4, and GTID auto-skip is used to\nskip any transactions in the file that were already applied.\n\nWhen the receiver thread contacts the source and gets valid position\ninformation, the read position (Read_Source_Log_Pos) and file name\n(Source_Log_File) are updated with the correct data and become valid.\nWhen the applier thread applies a transaction from the source, or skips\nan already executed transaction, the executed position\n(Exec_Source_Log_Pos) and file name (Relay_Source_Log_File) are updated\nwith the correct data and become valid. The relay log file position\n(Relay_Log_Pos) is also updated at that time.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-replica-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-replica-status.html'),(681,'SHOW SLAVE STATUS',3,'Syntax:\nSHOW {SLAVE | REPLICA} STATUS [FOR CHANNEL channel]\n\nThis statement provides status information on essential parameters of\nthe replica threads. From MySQL 8.0.22, SHOW SLAVE STATUS is deprecated\nand the alias SHOW REPLICA STATUS should be used instead. The statement\nworks in the same way as before, only the terminology used for the\nstatement and its output has changed. Both versions of the statement\nupdate the same status variables when used. Please see the\ndocumentation for SHOW REPLICA STATUS for a description of the\nstatement.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-slave-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-slave-status.html'),(682,'SHOW STATUS',3,'Syntax:\nSHOW [GLOBAL | SESSION] STATUS\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW STATUS provides server status information (see\nhttps://dev.mysql.com/doc/refman/8.0/en/server-status-variables.html).\nThis statement does not require any privilege. It requires only the\nability to connect to the server.\n\nStatus variable information is also available from these sources:\n\no Performance Schema tables. See\n  https://dev.mysql.com/doc/refman/8.0/en/performance-schema-status-var\n  iable-tables.html.\n\no The mysqladmin extended-status command. See\n  https://dev.mysql.com/doc/refman/8.0/en/mysqladmin.html.\n\nFor SHOW STATUS, a LIKE clause, if present, indicates which variable\nnames to match. A WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nSHOW STATUS accepts an optional GLOBAL or SESSION variable scope\nmodifier:\n\no With a GLOBAL modifier, the statement displays the global status\n  values. A global status variable may represent status for some aspect\n  of the server itself (for example, Aborted_connects), or the\n  aggregated status over all connections to MySQL (for example,\n  Bytes_received and Bytes_sent). If a variable has no global value,\n  the session value is displayed.\n\no With a SESSION modifier, the statement displays the status variable\n  values for the current connection. If a variable has no session\n  value, the global value is displayed. LOCAL is a synonym for SESSION.\n\no If no modifier is present, the default is SESSION.\n\nThe scope for each status variable is listed at\nhttps://dev.mysql.com/doc/refman/8.0/en/server-status-variables.html.\n\nEach invocation of the SHOW STATUS statement uses an internal temporary\ntable and increments the global Created_tmp_tables value.\n\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern:\n\nmysql> SHOW STATUS LIKE \'Key%\';\n+--------------------+----------+\n| Variable_name      | Value    |\n+--------------------+----------+\n| Key_blocks_used    | 14955    |\n| Key_read_requests  | 96854827 |\n| Key_reads          | 162040   |\n| Key_write_requests | 7589728  |\n| Key_writes         | 3813196  |\n+--------------------+----------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-status.html'),(683,'SHOW TABLE STATUS',3,'Syntax:\nSHOW TABLE STATUS\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLE STATUS works likes SHOW TABLES, but provides a lot of\ninformation about each non-TEMPORARY table. You can also get this list\nusing the mysqlshow --status db_name command. The LIKE clause, if\npresent, indicates which table names to match. The WHERE clause can be\ngiven to select rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-table-status.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-table-status.html'),(684,'SHOW TABLES',3,'Syntax:\nSHOW [EXTENDED] [FULL] TABLES\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TABLES lists the non-TEMPORARY tables in a given database. You can\nalso get this list using the mysqlshow db_name command. The LIKE\nclause, if present, indicates which table names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nMatching performed by the LIKE clause is dependent on the setting of\nthe lower_case_table_names system variable.\n\nThe optional EXTENDED modifier causes SHOW TABLES to list hidden tables\ncreated by failed ALTER TABLE statements. These temporary tables have\nnames beginning with #sql and can be dropped using DROP TABLE.\n\nThis statement also lists any views in the database. The optional FULL\nmodifier causes SHOW TABLES to display a second output column with\nvalues of BASE TABLE for a table, VIEW for a view, or SYSTEM VIEW for\nan INFORMATION_SCHEMA table.\n\nIf you have no privileges for a base table or view, it does not show up\nin the output from SHOW TABLES or mysqlshow db_name.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-tables.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-tables.html'),(685,'SHOW TRIGGERS',3,'Syntax:\nSHOW TRIGGERS\n    [{FROM | IN} db_name]\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW TRIGGERS lists the triggers currently defined for tables in a\ndatabase (the default database unless a FROM clause is given). This\nstatement returns results only for databases and tables for which you\nhave the TRIGGER privilege. The LIKE clause, if present, indicates\nwhich table names (not trigger names) to match and causes the statement\nto display triggers for those tables. The WHERE clause can be given to\nselect rows using more general conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nFor the ins_sum trigger defined in\nhttps://dev.mysql.com/doc/refman/8.0/en/triggers.html, the output of\nSHOW TRIGGERS is as shown here:\n\nmysql> SHOW TRIGGERS LIKE \'acc%\'\\G\n*************************** 1. row ***************************\n             Trigger: ins_sum\n               Event: INSERT\n               Table: account\n           Statement: SET @sum = @sum + NEW.amount\n              Timing: BEFORE\n             Created: 2018-08-08 10:10:12.61\n            sql_mode: ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,\n                      NO_ZERO_IN_DATE,NO_ZERO_DATE,\n                      ERROR_FOR_DIVISION_BY_ZERO,\n                      NO_ENGINE_SUBSTITUTION\n             Definer: me@localhost\ncharacter_set_client: utf8mb4\ncollation_connection: utf8mb4_0900_ai_ci\n  Database Collation: utf8mb4_0900_ai_ci\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-triggers.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-triggers.html'),(686,'SHOW VARIABLES',3,'Syntax:\nSHOW [GLOBAL | SESSION] VARIABLES\n    [LIKE \'pattern\' | WHERE expr]\n\nSHOW VARIABLES shows the values of MySQL system variables (see\nhttps://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html).\nThis statement does not require any privilege. It requires only the\nability to connect to the server.\n\nSystem variable information is also available from these sources:\n\no Performance Schema tables. See\n  https://dev.mysql.com/doc/refman/8.0/en/performance-schema-system-var\n  iable-tables.html.\n\no The mysqladmin variables command. See\n  https://dev.mysql.com/doc/refman/8.0/en/mysqladmin.html.\n\nFor SHOW VARIABLES, a LIKE clause, if present, indicates which variable\nnames to match. A WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttps://dev.mysql.com/doc/refman/8.0/en/extended-show.html.\n\nSHOW VARIABLES accepts an optional GLOBAL or SESSION variable scope\nmodifier:\n\no With a GLOBAL modifier, the statement displays global system variable\n  values. These are the values used to initialize the corresponding\n  session variables for new connections to MySQL. If a variable has no\n  global value, no value is displayed.\n\no With a SESSION modifier, the statement displays the system variable\n  values that are in effect for the current connection. If a variable\n  has no session value, the global value is displayed. LOCAL is a\n  synonym for SESSION.\n\no If no modifier is present, the default is SESSION.\n\nThe scope for each system variable is listed at\nhttps://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html.\n\nSHOW VARIABLES is subject to a version-dependent display-width limit.\nFor variables with very long values that are not completely displayed,\nuse SELECT as a workaround. For example:\n\nSELECT @@GLOBAL.innodb_data_file_path;\n\nMost system variables can be set at server startup (read-only variables\nsuch as version_comment are exceptions). Many can be changed at runtime\nwith the SET statement. See\nhttps://dev.mysql.com/doc/refman/8.0/en/using-system-variables.html,\nand [HELP SET].\n\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern. To obtain the row for a\nspecific variable, use a LIKE clause as shown:\n\nSHOW VARIABLES LIKE \'max_join_size\';\nSHOW SESSION VARIABLES LIKE \'max_join_size\';\n\nTo get a list of variables whose name match a pattern, use the %\nwildcard character in a LIKE clause:\n\nSHOW VARIABLES LIKE \'%size%\';\nSHOW GLOBAL VARIABLES LIKE \'%size%\';\n\nWildcard characters can be used in any position within the pattern to\nbe matched. Strictly speaking, because _ is a wildcard that matches any\nsingle character, you should escape it as \\_ to match it literally. In\npractice, this is rarely necessary.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-variables.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-variables.html'),(687,'SHOW WARNINGS',3,'Syntax:\nSHOW WARNINGS [LIMIT [offset,] row_count]\nSHOW COUNT(*) WARNINGS\n\nSHOW WARNINGS is a diagnostic statement that displays information about\nthe conditions (errors, warnings, and notes) resulting from executing a\nstatement in the current session. Warnings are generated for DML\nstatements such as INSERT, UPDATE, and LOAD DATA as well as DDL\nstatements such as CREATE TABLE and ALTER TABLE.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\nhttps://dev.mysql.com/doc/refman/8.0/en/select.html.\n\nSHOW WARNINGS is also used following EXPLAIN, to display the extended\ninformation generated by EXPLAIN. See\nhttps://dev.mysql.com/doc/refman/8.0/en/explain-extended.html.\n\nSHOW WARNINGS displays information about the conditions resulting from\nexecution of the most recent nondiagnostic statement in the current\nsession. If the most recent statement resulted in an error during\nparsing, SHOW WARNINGS shows the resulting conditions, regardless of\nstatement type (diagnostic or nondiagnostic).\n\nThe SHOW COUNT(*) WARNINGS diagnostic statement displays the total\nnumber of errors, warnings, and notes. You can also retrieve this\nnumber from the warning_count system variable:\n\nSHOW COUNT(*) WARNINGS;\nSELECT @@warning_count;\n\nA difference in these statements is that the first is a diagnostic\nstatement that does not clear the message list. The second, because it\nis a SELECT statement is considered nondiagnostic and does clear the\nmessage list.\n\nA related diagnostic statement, SHOW ERRORS, shows only error\nconditions (it excludes warnings and notes), and SHOW COUNT(*) ERRORS\nstatement displays the total number of errors. See [HELP SHOW ERRORS].\nGET DIAGNOSTICS can be used to examine information for individual\nconditions. See [HELP GET DIAGNOSTICS].\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/show-warnings.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/show-warnings.html'),(688,'BINLOG',3,'Syntax:\nBINLOG \'str\'\n\nBINLOG is an internal-use statement. It is generated by the mysqlbinlog\nprogram as the printable representation of certain events in binary log\nfiles. (See https://dev.mysql.com/doc/refman/8.0/en/mysqlbinlog.html.)\nThe \'str\' value is a base 64-encoded string the that server decodes to\ndetermine the data change indicated by the corresponding event.\n\nTo execute BINLOG statements when applying mysqlbinlog output, a user\naccount requires the BINLOG_ADMIN privilege (or the deprecated SUPER\nprivilege), or the REPLICATION_APPLIER privilege plus the appropriate\nprivileges to execute each log event.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/binlog.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/binlog.html'),(689,'CACHE INDEX',3,'Syntax:\nCACHE INDEX {\n      tbl_index_list [, tbl_index_list] ...\n    | tbl_name PARTITION (partition_list)\n  }\n  IN key_cache_name\n\ntbl_index_list:\n  tbl_name [{INDEX|KEY} (index_name[, index_name] ...)]\n\npartition_list: {\n    partition_name[, partition_name] ...\n  | ALL\n}\n\nThe CACHE INDEX statement assigns table indexes to a specific key\ncache. It applies only to MyISAM tables, including partitioned MyISAM\ntables. After the indexes have been assigned, they can be preloaded\ninto the cache if desired with LOAD INDEX INTO CACHE.\n\nThe following statement assigns indexes from the tables t1, t2, and t3\nto the key cache named hot_cache:\n\nmysql> CACHE INDEX t1, t2, t3 IN hot_cache;\n+---------+--------------------+----------+----------+\n| Table   | Op                 | Msg_type | Msg_text |\n+---------+--------------------+----------+----------+\n| test.t1 | assign_to_keycache | status   | OK       |\n| test.t2 | assign_to_keycache | status   | OK       |\n| test.t3 | assign_to_keycache | status   | OK       |\n+---------+--------------------+----------+----------+\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/cache-index.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/cache-index.html'),(690,'FLUSH',3,'Syntax:\nFLUSH [NO_WRITE_TO_BINLOG | LOCAL] {\n    flush_option [, flush_option] ...\n  | tables_option\n}\n\nflush_option: {\n    BINARY LOGS\n  | ENGINE LOGS\n  | ERROR LOGS\n  | GENERAL LOGS\n  | HOSTS\n  | LOGS\n  | PRIVILEGES\n  | OPTIMIZER_COSTS\n  | RELAY LOGS [FOR CHANNEL channel]\n  | SLOW LOGS\n  | STATUS\n  | USER_RESOURCES\n}\n\ntables_option: {\n    table_synonym\n  | table_synonym tbl_name [, tbl_name] ...\n  | table_synonym WITH READ LOCK\n  | table_synonym tbl_name [, tbl_name] ... WITH READ LOCK\n  | table_synonym tbl_name [, tbl_name] ... FOR EXPORT\n}\n\ntable_synonym: {\n    TABLE\n  | TABLES\n}\n\nThe FLUSH statement has several variant forms that clear or reload\nvarious internal caches, flush tables, or acquire locks. Each FLUSH\noperation requires the privileges indicated in its description.\n\n*Note*:\n\nIt is not possible to issue FLUSH statements within stored functions or\ntriggers. However, you may use FLUSH in stored procedures, so long as\nthese are not called from stored functions or triggers. See\nhttps://dev.mysql.com/doc/refman/8.0/en/stored-program-restrictions.html\n.\n\nBy default, the server writes FLUSH statements to the binary log so\nthat they replicate to replicas. To suppress logging, specify the\noptional NO_WRITE_TO_BINLOG keyword or its alias LOCAL.\n\n*Note*:\n\nFLUSH LOGS, FLUSH BINARY LOGS, FLUSH TABLES WITH READ LOCK (with or\nwithout a table list), and FLUSH TABLES tbl_name ... FOR EXPORT are not\nwritten to the binary log in any case because they would cause problems\nif replicated to a replica.\n\nThe FLUSH statement causes an implicit commit. See\nhttps://dev.mysql.com/doc/refman/8.0/en/implicit-commit.html.\n\nThe mysqladmin utility provides a command-line interface to some flush\noperations, using commands such as flush-hosts, flush-logs,\nflush-privileges, flush-status, and flush-tables. See\nhttps://dev.mysql.com/doc/refman/8.0/en/mysqladmin.html.\n\nSending a SIGHUP or SIGUSR1 signal to the server causes several flush\noperations to occur that are similar to various forms of the FLUSH\nstatement. Signals can be sent by the root system account or the system\naccount that owns the server process. This enables the flush operations\nto be performed without having to connect to the server, which requires\na MySQL account that has privileges sufficient for those operations.\nSee https://dev.mysql.com/doc/refman/8.0/en/unix-signal-response.html.\n\nThe RESET statement is similar to FLUSH. See [HELP RESET], for\ninformation about using RESET with replication.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/flush.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/flush.html'),(691,'KILL',3,'Syntax:\nKILL [CONNECTION | QUERY] processlist_id\n\nEach connection to mysqld runs in a separate thread. You can kill a\nthread with the KILL processlist_id statement.\n\nThread processlist identifiers can be determined from the ID column of\nthe INFORMATION_SCHEMA PROCESSLIST table, the Id column of SHOW\nPROCESSLIST output, and the PROCESSLIST_ID column of the Performance\nSchema threads table. The value for the current thread is returned by\nthe CONNECTION_ID() function.\n\nKILL permits an optional CONNECTION or QUERY modifier:\n\no KILL CONNECTION is the same as KILL with no modifier: It terminates\n  the connection associated with the given processlist_id, after\n  terminating any statement the connection is executing.\n\no KILL QUERY terminates the statement the connection is currently\n  executing, but leaves the connection itself intact.\n\nThe ability to see which threads are available to be killed depends on\nthe PROCESS privilege:\n\no Without PROCESS, you can see only your own threads.\n\no With PROCESS, you can see all threads.\n\nThe ability to kill threads and statements depends on the\nCONNECTION_ADMIN privilege and the deprecated SUPER privilege:\n\no Without CONNECTION_ADMIN or SUPER, you can kill only your own threads\n  and statements.\n\no With CONNECTION_ADMIN or SUPER, you can kill all threads and\n  statements, except that to affect a thread or statement that is\n  executing with the SYSTEM_USER privilege, your own session must\n  additionally have the SYSTEM_USER privilege.\n\nYou can also use the mysqladmin processlist and mysqladmin kill\ncommands to examine and kill threads.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/kill.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/kill.html'),(692,'LOAD INDEX',3,'Syntax:\nLOAD INDEX INTO CACHE\n  tbl_index_list [, tbl_index_list] ...\n\ntbl_index_list:\n  tbl_name\n    [PARTITION (partition_list)]\n    [{INDEX|KEY} (index_name[, index_name] ...)]\n    [IGNORE LEAVES]\n\npartition_list: {\n    partition_name[, partition_name] ...\n  | ALL\n}\n\nThe LOAD INDEX INTO CACHE statement preloads a table index into the key\ncache to which it has been assigned by an explicit CACHE INDEX\nstatement, or into the default key cache otherwise.\n\nLOAD INDEX INTO CACHE applies only to MyISAM tables, including\npartitioned MyISAM tables. In addition, indexes on partitioned tables\ncan be preloaded for one, several, or all partitions.\n\nThe IGNORE LEAVES modifier causes only blocks for the nonleaf nodes of\nthe index to be preloaded.\n\nIGNORE LEAVES is also supported for partitioned MyISAM tables.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/load-index.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/load-index.html'),(693,'RESET',3,'Syntax:\nRESET reset_option [, reset_option] ...\n\nreset_option: {\n    MASTER\n  | REPLICA\n  | SLAVE\n}\n\nThe RESET statement is used to clear the state of various server\noperations. You must have the RELOAD privilege to execute RESET.\n\nFor information about the RESET PERSIST statement that removes\npersisted global system variables, see [HELP RESET PERSIST].\n\nRESET acts as a stronger version of the FLUSH statement. See [HELP\nFLUSH].\n\nThe RESET statement causes an implicit commit. See\nhttps://dev.mysql.com/doc/refman/8.0/en/implicit-commit.html.\n\nThe following list describes the permitted RESET statement reset_option\nvalues:\n\no RESET MASTER\n\n  Deletes all binary logs listed in the index file, resets the binary\n  log index file to be empty, and creates a new binary log file.\n\no RESET REPLICA\n\n  Makes the replica forget its replication position in the source\n  binary logs. Also resets the relay log by deleting any existing relay\n  log files and beginning a new one. Use RESET REPLICA in place of\n  RESET SLAVE from MySQL 8.0.22.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/reset.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/reset.html'),(694,'RESET PERSIST',3,'Syntax:\nRESET PERSIST [[IF EXISTS] system_var_name]\n\nRESET PERSIST removes persisted global system variable settings from\nthe mysqld-auto.cnf option file in the data directory. Removing a\npersisted system variable causes the variable no longer to be\ninitialized from mysqld-auto.cnf at server startup. For more\ninformation about persisting system variables and the mysqld-auto.cnf\nfile, see\nhttps://dev.mysql.com/doc/refman/8.0/en/persisted-system-variables.html\n.\n\nPrior to MySQL 8.0.32, this statement did not work with variables whose\nname contained a dot character (.), such as MyISAM multiple key cache\nvariables and variables registered by components. (Bug #33417357)\n\nThe privileges required for RESET PERSIST depend on the type of system\nvariable to be removed:\n\no For dynamic system variables, this statement requires the\n  SYSTEM_VARIABLES_ADMIN privilege (or the deprecated SUPER privilege).\n\no For read-only system variables, this statement requires the\n  SYSTEM_VARIABLES_ADMIN and PERSIST_RO_VARIABLES_ADMIN privileges.\n\nSee\nhttps://dev.mysql.com/doc/refman/8.0/en/system-variable-privileges.html\n.\n\nDepending on whether the variable name and IF EXISTS clauses are\npresent, the RESET PERSIST statement has these forms:\n\no To remove all persisted variables from mysqld-auto.cnf, use RESET\n  PERSIST without naming any system variable:\n\nRESET PERSIST;\n\n  You must have privileges for removing both dynamic and read-only\n  system variables if mysqld-auto.cnf contains both kinds of variables.\n\no To remove a specific persisted variable from mysqld-auto.cnf, name it\n  in the statement:\n\nRESET PERSIST system_var_name;\n\n  This includes plugin system variables, even if the plugin is not\n  currently installed. If the variable is not present in the file, an\n  error occurs.\n\no To remove a specific persisted variable from mysqld-auto.cnf, but\n  produce a warning rather than an error if the variable is not present\n  in the file, add an IF EXISTS clause to the previous syntax:\n\nRESET PERSIST IF EXISTS system_var_name;\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/reset-persist.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/reset-persist.html'),(695,'RESTART',3,'Syntax:\nRESTART\n\nThis statement stops and restarts the MySQL server. It requires the\nSHUTDOWN privilege.\n\nOne use for RESTART is when it is not possible or convenient to gain\ncommand-line access to the MySQL server on the server host to restart\nit. For example, SET PERSIST_ONLY can be used at runtime to make\nconfiguration changes to system variables that can be set only at\nserver startup, but the server must still be restarted for those\nchanges to take effect. The RESTART statement provides a way to do so\nfrom within client sessions, without requiring command-line access on\nthe server host.\n\n*Note*:\n\nAfter executing a RESTART statement, the client can expect the current\nconnection to be lost. If auto-reconnect is enabled, the connection is\nreestablished after the server restarts. Otherwise, the connection must\nbe reestablished manually.\n\nA successful RESTART operation requires mysqld to be running in an\nenvironment that has a monitoring process available to detect a server\nshutdown performed for restart purposes:\n\no In the presence of a monitoring process, RESTART causes mysqld to\n  terminate such that the monitoring process can determine that it\n  should start a new mysqld instance.\n\no If no monitoring process is present, RESTART fails with an error.\n\nThese platforms provide the necessary monitoring support for the\nRESTART statement:\n\no Windows, when mysqld is started as a Windows service or standalone.\n  (mysqld forks, and one process acts as a monitor to the other, which\n  acts as the server.)\n\no Unix and Unix-like systems that use systemd or mysqld_safe to manage\n  mysqld.\n\nTo configure a monitoring environment such that mysqld enables the\nRESTART statement:\n\n1. Set the MYSQLD_PARENT_PID environment variable to the value of the\n   process ID of the process that starts mysqld, before starting\n   mysqld.\n\n2. When mysqld performs a shutdown due to use of the RESTART statement,\n   it returns exit code 16.\n\n3. When the monitoring process detects an exit code of 16, it starts\n   mysqld again. Otherwise, it exits.\n\nHere is a minimal example as implemented in the bash shell:\n\n#!/bin/bash\n\nexport MYSQLD_PARENT_PID=$$\n\nexport MYSQLD_RESTART_EXIT=16\n\nwhile true ; do\n  bin/mysqld mysqld options here\n  if [ $? -ne $MYSQLD_RESTART_EXIT ]; then\n    break\n  fi\ndone\n\nOn Windows, the forking used to implement RESTART makes determining the\nserver process to attach to for debugging more difficult. To alleviate\nthis, starting the server with --gdb suppresses forking, in addition to\nits other actions done to set up a debugging environment. In non-debug\nsettings, --no-monitor may be used for the sole purpose of suppressing\nforking the monitor process. For a server started with either --gdb or\n--no-monitor, executing RESTART causes the server to simply exit\nwithout restarting.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/restart.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/restart.html'),(696,'SHUTDOWN',3,'Syntax:\nSHUTDOWN\n\nThis statement stops the MySQL server. It requires the SHUTDOWN\nprivilege.\n\nSHUTDOWN provides an SQL-level interface to the same functionality\navailable using the mysqladmin shutdown command or the mysql_shutdown()\n(https://dev.mysql.com/doc/c-api/8.0/en/mysql-shutdown.html) C API\nfunction. A successful SHUTDOWN sequence consists of checking the\nprivileges, validating the arguments, and sending an OK packet to the\nclient. Then the server is shut down.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/shutdown.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/shutdown.html'),(697,'EXPLAIN',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/explain.html'),(698,'DESCRIBE',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/explain.html'),(699,'DESC',51,'Syntax:\n{EXPLAIN | DESCRIBE | DESC}\n    tbl_name [col_name | wild]\n\n{EXPLAIN | DESCRIBE | DESC}\n    [explain_type]\n    {explainable_stmt | FOR CONNECTION connection_id}\n\n{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement\n\nexplain_type: {\n    FORMAT = format_name\n}\n\nformat_name: {\n    TRADITIONAL\n  | JSON\n  | TREE\n}\n\nexplainable_stmt: {\n    SELECT statement\n  | TABLE statement\n  | DELETE statement\n  | INSERT statement\n  | REPLACE statement\n  | UPDATE statement\n}\n\nThe DESCRIBE and EXPLAIN statements are synonyms. In practice, the\nDESCRIBE keyword is more often used to obtain information about table\nstructure, whereas EXPLAIN is used to obtain a query execution plan\n(that is, an explanation of how MySQL would execute a query).\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/explain.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/explain.html'),(700,'HELP STATEMENT',51,'Syntax:\nHELP \'search_string\'\n\nThe HELP statement returns online information from the MySQL Reference\nManual. Its proper operation requires that the help tables in the mysql\ndatabase be initialized with help topic information (see\nhttps://dev.mysql.com/doc/refman/8.0/en/server-side-help-support.html).\n\nThe HELP statement searches the help tables for the given search string\nand displays the result of the search. The search string is not\ncase-sensitive.\n\nThe search string can contain the wildcard characters % and _. These\nhave the same meaning as for pattern-matching operations performed with\nthe LIKE operator. For example, HELP \'rep%\' returns a list of topics\nthat begin with rep.\n\nThe HELP statement does not require a terminator such as ; or \\G.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/help.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/help.html'),(701,'USE',51,'Syntax:\nUSE db_name\n\nThe USE statement tells MySQL to use the named database as the default\n(current) database for subsequent statements. This statement requires\nsome privilege for the database or some object within it.\n\nThe named database remains the default until the end of the session or\nanother USE statement is issued:\n\nUSE db1;\nSELECT COUNT(*) FROM mytable;   # selects from db1.mytable\nUSE db2;\nSELECT COUNT(*) FROM mytable;   # selects from db2.mytable\n\nThe database name must be specified on a single line. Newlines in\ndatabase names are not supported.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/use.html\n\n','','https://dev.mysql.com/doc/refman/8.0/en/use.html'),(702,'MERGE',52,'The MERGE storage engine, also known as the MRG_MyISAM engine, is a\ncollection of identical MyISAM tables that can be used as one.\n\"Identical\" means that all tables have identical column data types and\nindex information. You cannot merge MyISAM tables in which the columns\nare listed in a different order, do not have exactly the same data\ntypes in corresponding columns, or have the indexes in different order.\nHowever, any or all of the MyISAM tables can be compressed with\nmyisampack. See\nhttps://dev.mysql.com/doc/refman/8.0/en/myisampack.html. Differences\nbetween tables such as these do not matter:\n\no Names of corresponding columns and indexes can differ.\n\no Comments for tables, columns, and indexes can differ.\n\no Table options such as AVG_ROW_LENGTH, MAX_ROWS, or PACK_KEYS can\n  differ.\n\nURL: https://dev.mysql.com/doc/refman/8.0/en/merge-storage-engine.html\n\n','mysql> CREATE TABLE t1 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> CREATE TABLE t2 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> INSERT INTO t1 (message) VALUES (\'Testing\'),(\'table\'),(\'t1\');\nmysql> INSERT INTO t2 (message) VALUES (\'Testing\'),(\'table\'),(\'t2\');\nmysql> CREATE TABLE total (\n    ->    a INT NOT NULL AUTO_INCREMENT,\n    ->    message CHAR(20), INDEX(a))\n    ->    ENGINE=MERGE UNION=(t1,t2) INSERT_METHOD=LAST;\n','https://dev.mysql.com/doc/refman/8.0/en/merge-storage-engine.html');
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `innodb_index_stats`
--

/*!40000 ALTER TABLE `innodb_index_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('abc_xyz','albums','PRIMARY','2024-08-03 05:20:58','n_diff_pfx01',0,1,'id'),('abc_xyz','albums','PRIMARY','2024-08-03 05:20:58','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('abc_xyz','albums','PRIMARY','2024-08-03 05:20:58','size',1,NULL,'Number of pages in the index'),('abc_xyz','comments','PRIMARY','2024-09-04 04:45:52','n_diff_pfx01',25,1,'id'),('abc_xyz','comments','PRIMARY','2024-09-04 04:45:52','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('abc_xyz','comments','PRIMARY','2024-09-04 04:45:52','size',1,NULL,'Number of pages in the index'),('abc_xyz','datamessage','PRIMARY','2024-09-13 22:43:28','n_diff_pfx01',29,1,'id'),('abc_xyz','datamessage','PRIMARY','2024-09-13 22:43:28','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('abc_xyz','datamessage','PRIMARY','2024-09-13 22:43:28','size',1,NULL,'Number of pages in the index'),('abc_xyz','frienddata','PRIMARY','2024-09-13 22:43:37','n_diff_pfx01',15,1,'id'),('abc_xyz','frienddata','PRIMARY','2024-09-13 22:43:37','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('abc_xyz','frienddata','PRIMARY','2024-09-13 22:43:37','size',1,NULL,'Number of pages in the index'),('abc_xyz','images','PRIMARY','2024-09-13 22:28:39','n_diff_pfx01',66,1,'id'),('abc_xyz','images','PRIMARY','2024-09-13 22:28:39','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('abc_xyz','images','PRIMARY','2024-09-13 22:28:39','size',1,NULL,'Number of pages in the index'),('abc_xyz','memeberinroomchat','PRIMARY','2024-09-04 14:59:02','n_diff_pfx01',64,1,'id'),('abc_xyz','memeberinroomchat','PRIMARY','2024-09-04 14:59:02','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('abc_xyz','memeberinroomchat','PRIMARY','2024-09-04 14:59:02','size',1,NULL,'Number of pages in the index'),('abc_xyz','post','PRIMARY','2024-09-13 22:28:39','n_diff_pfx01',52,2,'id'),('abc_xyz','post','PRIMARY','2024-09-13 22:28:39','n_leaf_pages',2,NULL,'Number of leaf pages in the index'),('abc_xyz','post','PRIMARY','2024-09-13 22:28:39','size',3,NULL,'Number of pages in the index'),('abc_xyz','roomchat','PRIMARY','2024-09-04 15:00:55','n_diff_pfx01',11,1,'id'),('abc_xyz','roomchat','PRIMARY','2024-09-04 15:00:55','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('abc_xyz','roomchat','PRIMARY','2024-09-04 15:00:55','size',1,NULL,'Number of pages in the index'),('abc_xyz','socialgroup','PRIMARY','2024-09-13 22:46:27','n_diff_pfx01',14,1,'id'),('abc_xyz','socialgroup','PRIMARY','2024-09-13 22:46:27','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('abc_xyz','socialgroup','PRIMARY','2024-09-13 22:46:27','size',1,NULL,'Number of pages in the index'),('abc_xyz','usergroup','PRIMARY','2024-09-13 22:47:05','n_diff_pfx01',22,1,'id'),('abc_xyz','usergroup','PRIMARY','2024-09-13 22:47:05','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('abc_xyz','usergroup','PRIMARY','2024-09-13 22:47:05','size',1,NULL,'Number of pages in the index'),('abc_xyz','userprofile','PRIMARY','2024-09-13 22:10:07','n_diff_pfx01',22,1,'id'),('abc_xyz','userprofile','PRIMARY','2024-09-13 22:10:07','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('abc_xyz','userprofile','PRIMARY','2024-09-13 22:10:07','size',1,NULL,'Number of pages in the index'),('mysql','component','PRIMARY','2024-08-02 17:36:40','n_diff_pfx01',0,1,'component_id'),('mysql','component','PRIMARY','2024-08-02 17:36:40','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('mysql','component','PRIMARY','2024-08-02 17:36:40','size',1,NULL,'Number of pages in the index'),('sys','sys_config','PRIMARY','2024-08-02 17:36:41','n_diff_pfx01',6,1,'variable'),('sys','sys_config','PRIMARY','2024-08-02 17:36:41','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sys','sys_config','PRIMARY','2024-08-02 17:36:41','size',1,NULL,'Number of pages in the index');
/*!40000 ALTER TABLE `innodb_index_stats` ENABLE KEYS */;

--
-- Dumping data for table `innodb_table_stats`
--

/*!40000 ALTER TABLE `innodb_table_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('abc_xyz','albums','2024-08-03 05:20:58',0,1,0),('abc_xyz','comments','2024-09-04 04:45:52',25,1,0),('abc_xyz','datamessage','2024-09-13 22:43:28',29,1,0),('abc_xyz','frienddata','2024-09-13 22:43:37',15,1,0),('abc_xyz','images','2024-09-13 22:28:39',66,1,0),('abc_xyz','memeberinroomchat','2024-09-04 14:59:02',64,1,0),('abc_xyz','post','2024-09-13 22:28:39',52,3,0),('abc_xyz','roomchat','2024-09-04 15:00:55',11,1,0),('abc_xyz','socialgroup','2024-09-13 22:46:27',14,1,0),('abc_xyz','usergroup','2024-09-13 22:47:05',22,1,0),('abc_xyz','userprofile','2024-09-13 22:10:07',22,1,0),('mysql','component','2024-08-02 17:36:40',0,1,0),('sys','sys_config','2024-08-02 17:36:41',6,1,0);
/*!40000 ALTER TABLE `innodb_table_stats` ENABLE KEYS */;

--
-- Table structure for table `password_history`
--

DROP TABLE IF EXISTS `password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_history` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Password_timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Password` text COLLATE utf8mb3_bin,
  PRIMARY KEY (`Host`,`User`,`Password_timestamp` DESC)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Password history for user accounts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_history`
--

LOCK TABLES `password_history` WRITE;
/*!40000 ALTER TABLE `password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin`
--

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
INSERT INTO `plugin` VALUES ('auth_socket','auth_socket.so');
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procs_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8mb3_bin NOT NULL,
  `Grantor` varchar(288) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Db`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Procedure privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procs_priv`
--

LOCK TABLES `procs_priv` WRITE;
/*!40000 ALTER TABLE `procs_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `procs_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxies_priv`
--

DROP TABLE IF EXISTS `proxies_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxies_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Proxied_host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Proxied_user` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT '0',
  `Grantor` varchar(288) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User proxy privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxies_priv`
--

LOCK TABLES `proxies_priv` WRITE;
/*!40000 ALTER TABLE `proxies_priv` DISABLE KEYS */;
INSERT INTO `proxies_priv` VALUES ('localhost','root','','',1,'boot@','2024-08-02 17:36:40');
/*!40000 ALTER TABLE `proxies_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_asynchronous_connection_failover`
--

DROP TABLE IF EXISTS `replication_asynchronous_connection_failover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_asynchronous_connection_failover` (
  `Channel_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The replication channel name that connects source and replica.',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The source hostname that the replica will attempt to switch over the replication connection to in case of a failure.',
  `Port` int unsigned NOT NULL COMMENT 'The source port that the replica will attempt to switch over the replication connection to in case of a failure.',
  `Network_namespace` char(64) NOT NULL COMMENT 'The source network namespace that the replica will attempt to switch over the replication connection to in case of a failure. If its value is empty, connections use the default (global) namespace.',
  `Weight` tinyint unsigned NOT NULL COMMENT 'The order in which the replica shall try to switch the connection over to when there are failures. Weight can be set to a number between 1 and 100, where 100 is the highest weight and 1 the lowest.',
  `Managed_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'The name of the group which this server belongs to.',
  PRIMARY KEY (`Channel_name`,`Host`,`Port`,`Network_namespace`,`Managed_name`),
  KEY `Channel_name` (`Channel_name`,`Managed_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The source configuration details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_asynchronous_connection_failover`
--

LOCK TABLES `replication_asynchronous_connection_failover` WRITE;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover` DISABLE KEYS */;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_asynchronous_connection_failover_managed`
--

DROP TABLE IF EXISTS `replication_asynchronous_connection_failover_managed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_asynchronous_connection_failover_managed` (
  `Channel_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The replication channel name that connects source and replica.',
  `Managed_name` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'The name of the source which needs to be managed.',
  `Managed_type` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'Determines the managed type.',
  `Configuration` json DEFAULT NULL COMMENT 'The data to help manage group. For Managed_type = GroupReplication, Configuration value should contain {"Primary_weight": 80, "Secondary_weight": 60}, so that it assigns weight=80 to PRIMARY of the group, and weight=60 for rest of the members in mysql.replication_asynchronous_connection_failover table.',
  PRIMARY KEY (`Channel_name`,`Managed_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The managed source configuration details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_asynchronous_connection_failover_managed`
--

LOCK TABLES `replication_asynchronous_connection_failover_managed` WRITE;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover_managed` DISABLE KEYS */;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover_managed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_group_configuration_version`
--

DROP TABLE IF EXISTS `replication_group_configuration_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_group_configuration_version` (
  `name` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The configuration name.',
  `version` bigint unsigned NOT NULL COMMENT 'The version of the configuration name.',
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The group configuration version.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_group_configuration_version`
--

LOCK TABLES `replication_group_configuration_version` WRITE;
/*!40000 ALTER TABLE `replication_group_configuration_version` DISABLE KEYS */;
INSERT INTO `replication_group_configuration_version` VALUES ('replication_group_member_actions',1);
/*!40000 ALTER TABLE `replication_group_configuration_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_group_member_actions`
--

DROP TABLE IF EXISTS `replication_group_member_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_group_member_actions` (
  `name` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The action name.',
  `event` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The event that will trigger the action.',
  `enabled` tinyint(1) NOT NULL COMMENT 'Whether the action is enabled.',
  `type` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The action type.',
  `priority` tinyint unsigned NOT NULL COMMENT 'The order on which the action will be run, value between 1 and 100, lower values first.',
  `error_handling` char(64) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'On errors during the action will be handled: IGNORE, CRITICAL.',
  PRIMARY KEY (`name`,`event`),
  KEY `event` (`event`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The member actions configuration.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_group_member_actions`
--

LOCK TABLES `replication_group_member_actions` WRITE;
/*!40000 ALTER TABLE `replication_group_member_actions` DISABLE KEYS */;
INSERT INTO `replication_group_member_actions` VALUES ('mysql_disable_super_read_only_if_primary','AFTER_PRIMARY_ELECTION',1,'INTERNAL',1,'IGNORE'),('mysql_start_failover_channels_if_primary','AFTER_PRIMARY_ELECTION',1,'INTERNAL',10,'CRITICAL');
/*!40000 ALTER TABLE `replication_group_member_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_edges`
--

DROP TABLE IF EXISTS `role_edges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_edges` (
  `FROM_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `FROM_USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `TO_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `TO_USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `WITH_ADMIN_OPTION` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`FROM_HOST`,`FROM_USER`,`TO_HOST`,`TO_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Role hierarchy and role grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_edges`
--

LOCK TABLES `role_edges` WRITE;
/*!40000 ALTER TABLE `role_edges` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_edges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_cost`
--

DROP TABLE IF EXISTS `server_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_cost` (
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'disk_temptable_create_cost' then 20.0 when _utf8mb3'disk_temptable_row_cost' then 0.5 when _utf8mb3'key_compare_cost' then 0.05 when _utf8mb3'memory_temptable_create_cost' then 1.0 when _utf8mb3'memory_temptable_row_cost' then 0.1 when _utf8mb3'row_evaluate_cost' then 0.1 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_cost`
--

LOCK TABLES `server_cost` WRITE;
/*!40000 ALTER TABLE `server_cost` DISABLE KEYS */;
INSERT INTO `server_cost` (`cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('disk_temptable_create_cost',NULL,'2024-08-02 17:36:40',NULL),('disk_temptable_row_cost',NULL,'2024-08-02 17:36:40',NULL),('key_compare_cost',NULL,'2024-08-02 17:36:40',NULL),('memory_temptable_create_cost',NULL,'2024-08-02 17:36:40',NULL),('memory_temptable_row_cost',NULL,'2024-08-02 17:36:40',NULL),('row_evaluate_cost',NULL,'2024-08-02 17:36:40',NULL);
/*!40000 ALTER TABLE `server_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slave_master_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_master_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint unsigned NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'The host name of the source.',
  `User_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The user name used to connect to the master.',
  `User_password` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The password used to connect to the master.',
  `Port` int unsigned NOT NULL COMMENT 'The network port used to connect to the master.',
  `Connect_retry` int unsigned NOT NULL COMMENT 'The period (in seconds) that the slave will wait before trying to reconnect to the master.',
  `Enabled_ssl` tinyint(1) NOT NULL COMMENT 'Indicates whether the server supports SSL connections.',
  `Ssl_ca` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The file used for the Certificate Authority (CA) certificate.',
  `Ssl_capath` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The path to the Certificate Authority (CA) certificates.',
  `Ssl_cert` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the SSL certificate file.',
  `Ssl_cipher` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the cipher in use for the SSL connection.',
  `Ssl_key` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the SSL key file.',
  `Ssl_verify_server_cert` tinyint(1) NOT NULL COMMENT 'Whether to verify the server certificate.',
  `Heartbeat` float NOT NULL,
  `Bind` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Displays which interface is employed when connecting to the MySQL server',
  `Ignored_server_ids` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The number of server IDs to be ignored, followed by the actual server IDs',
  `Uuid` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The master server uuid.',
  `Retry_count` bigint unsigned NOT NULL COMMENT 'Number of reconnect attempts, to the master, before giving up.',
  `Ssl_crl` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The file used for the Certificate Revocation List (CRL)',
  `Ssl_crlpath` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The path used for Certificate Revocation List (CRL) files',
  `Enabled_auto_position` tinyint(1) NOT NULL COMMENT 'Indicates whether GTIDs will be used to retrieve events from the master.',
  `Channel_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  `Tls_version` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Tls version',
  `Public_key_path` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The file containing public key of master server.',
  `Get_public_key` tinyint(1) NOT NULL COMMENT 'Preference to get public key from master.',
  `Network_namespace` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Network namespace used for communication with the master server.',
  `Master_compression_algorithm` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'Compression algorithm supported for data transfer between source and replica.',
  `Master_zstd_compression_level` int unsigned NOT NULL COMMENT 'Compression level associated with zstd compression algorithm.',
  `Tls_ciphersuites` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Ciphersuites used for TLS 1.3 communication with the master server.',
  `Source_connection_auto_failover` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Indicates whether the channel connection failover is enabled.',
  `Gtid_only` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Indicates if this channel only uses GTIDs and does not persist positions.',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Master Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_relay_log_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_relay_log_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int DEFAULT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int unsigned DEFAULT NULL,
  `Id` int unsigned DEFAULT NULL COMMENT 'Internal Id that uniquely identifies this record.',
  `Channel_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  `Privilege_checks_username` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'Username part of PRIVILEGE_CHECKS_USER.',
  `Privilege_checks_hostname` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'Hostname part of PRIVILEGE_CHECKS_USER.',
  `Require_row_format` tinyint(1) NOT NULL COMMENT 'Indicates whether the channel shall only accept row based events.',
  `Require_table_primary_key_check` enum('STREAM','ON','OFF','GENERATE') NOT NULL DEFAULT 'STREAM' COMMENT 'Indicates what is the channel policy regarding tables without primary keys on create and alter table queries',
  `Assign_gtids_to_anonymous_transactions_type` enum('OFF','LOCAL','UUID') NOT NULL DEFAULT 'OFF' COMMENT 'Indicates whether the channel will generate a new GTID for anonymous transactions. OFF means that anonymous transactions will remain anonymous. LOCAL means that anonymous transactions will be assigned a newly generated GTID based on server_uuid. UUID indicates that anonymous transactions will be assigned a newly generated GTID based on Assign_gtids_to_anonymous_transactions_value',
  `Assign_gtids_to_anonymous_transactions_value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT 'Indicates the UUID used while generating GTIDs for anonymous transactions',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Relay Log Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_worker_info`
--

DROP TABLE IF EXISTS `slave_worker_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slave_worker_info` (
  `Id` int unsigned NOT NULL,
  `Relay_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Relay_log_pos` bigint unsigned NOT NULL,
  `Master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_relay_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Checkpoint_relay_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_master_log_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Checkpoint_master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_seqno` int unsigned NOT NULL,
  `Checkpoint_group_size` int unsigned NOT NULL,
  `Checkpoint_group_bitmap` blob NOT NULL,
  `Channel_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'The channel on which the replica is connected to a source. Used in Multisource Replication',
  PRIMARY KEY (`Channel_name`,`Id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Worker Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slave_worker_info`
--

LOCK TABLES `slave_worker_info` WRITE;
/*!40000 ALTER TABLE `slave_worker_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `slave_worker_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Grantor` varchar(288) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`User`,`Db`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Table privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables_priv`
--

LOCK TABLES `tables_priv` WRITE;
/*!40000 ALTER TABLE `tables_priv` DISABLE KEYS */;
INSERT INTO `tables_priv` VALUES ('localhost','mysql','mysql.session','user','boot@','2024-08-02 17:36:41','Select',''),('localhost','sys','mysql.sys','sys_config','root@localhost','2024-08-02 17:36:41','Select','');
/*!40000 ALTER TABLE `tables_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone`
--

LOCK TABLES `time_zone` WRITE;
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint NOT NULL,
  `Correction` int NOT NULL,
  PRIMARY KEY (`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_leap_second`
--

LOCK TABLES `time_zone_leap_second` WRITE;
/*!40000 ALTER TABLE `time_zone_leap_second` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_leap_second` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_name`
--

LOCK TABLES `time_zone_name` WRITE;
/*!40000 ALTER TABLE `time_zone_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_time` bigint NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition`
--

LOCK TABLES `time_zone_transition` WRITE;
/*!40000 ALTER TABLE `time_zone_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  `Offset` int NOT NULL DEFAULT '0',
  `Is_DST` tinyint unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition_type`
--

LOCK TABLES `time_zone_transition_type` WRITE;
/*!40000 ALTER TABLE `time_zone_transition_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int unsigned NOT NULL DEFAULT '0',
  `max_updates` int unsigned NOT NULL DEFAULT '0',
  `max_connections` int unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int unsigned NOT NULL DEFAULT '0',
  `plugin` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT 'caching_sha2_password',
  `authentication_string` text COLLATE utf8mb3_bin,
  `password_expired` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `password_last_changed` timestamp NULL DEFAULT NULL,
  `password_lifetime` smallint unsigned DEFAULT NULL,
  `account_locked` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_role_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Drop_role_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Password_reuse_history` smallint unsigned DEFAULT NULL,
  `Password_reuse_time` smallint unsigned DEFAULT NULL,
  `Password_require_current` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `User_attributes` json DEFAULT NULL,
  PRIMARY KEY (`Host`,`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Users and global privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('%','abc_xyz','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'caching_sha2_password','$A$005$ktP|Ig4t,<5Nq{:zN9Ag4a5KUKYltYgPNoU.doFkP6.cZUAy/Of4nSC6l2','N','2024-08-03 03:54:06',NULL,'N','Y','Y',NULL,NULL,NULL,NULL),('localhost','debian-sys-maint','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'caching_sha2_password','$A$005$@2W\\o?o3IZ	%.oaC_q`eua.3b.fUoeE9Qi3weEun2QFofRKpsDNYu2ovbWcBk7','N','2024-08-02 17:36:41',NULL,'N','Y','Y',NULL,NULL,NULL,NULL),('localhost','mysql.infoschema','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2024-08-02 17:36:41',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.session','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2024-08-02 17:36:41',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2024-08-02 17:36:41',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','root','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'auth_socket','','N','2024-08-02 17:36:40',NULL,'N','Y','Y',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mysql'
--

--
-- Dumping routines for database 'mysql'
--

--
-- Table structure for table `general_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint unsigned NOT NULL,
  `server_id` int unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumblob NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COMMENT='General log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slow_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int NOT NULL,
  `rows_examined` int NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int NOT NULL,
  `insert_id` int NOT NULL,
  `server_id` int unsigned NOT NULL,
  `sql_text` mediumblob NOT NULL,
  `thread_id` bigint unsigned NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8mb3 COMMENT='Slow log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `abc_xyz`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `abc_xyz` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `abc_xyz`;

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

--
-- Dumping events for database 'abc_xyz'
--

--
-- Dumping routines for database 'abc_xyz'
--
/*!50003 DROP PROCEDURE IF EXISTS `proc_comment_create_comment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_comment_create_comment`(
	in p_iduser int,
    in p_idpost int,
    in p_createddate datetime,
    in p_description varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    out p_return decimal,
    out p_message varchar(255)
)
proc_comment_create_comment:BEGIN
	DECLARE count_before decimal ;
    DECLARE count_after decimal;
    declare count_check DECIMAL;
    
    set p_return = 0;
 
		select count(*) into count_before from comments;
		insert into comments(iduser, idpost, description, createddate, deleted, totallike) VALUES (p_iduser, p_idpost, p_description, p_createddate, 0, 0);
		select count(*) into count_after from comments;
		
		if count_before < count_after then 
			select a.id into p_return from comments a where a.id = (
				select max(id) from comments
			);
            set p_message = 'Thành công';
		else
			set  p_return = -1;
            set p_message = 'Thất bại';
            LEAVE proc_comment_create_comment;
		end if; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_comment_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_comment_delete`(
	in p_id int,
    out p_return decimal,
    out p_message varchar(255)
)
proc_comment_delete:BEGIN
declare v_count int ;
    set v_count = 0;
    select count(*) into v_count from comments where id = p_id and deleted = 0;
    if v_count <= 0 then
		set p_return = -1; 
        set p_message = 'Không tìm thấy thông tin bình luận';
		leave proc_comment_delete;
    end if;
    
    update comments set deleted =1 where id = p_id and deleted = 0;
    set p_return = 1; 
	set p_message = 'Thành công';
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_comment_edit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_comment_edit`(
	in p_id int, 
    in p_description varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    out p_return decimal,
    out p_message varchar(255)
)
proc_comment_edit:BEGIN
	declare v_count int ;
    set v_count = 0;
    select count(*) into v_count from comments where id = p_id and deleted = 0;
    if v_count <= 0 then
		set p_return = -1; 
        set p_message = 'Không tìm thấy thông tin người dùng';
		leave proc_comment_edit;
    end if;
    
    update comments set decription = p_description where id = p_id and deleted = 0;
    set p_return = 1; 
	set p_message = 'Thành công';
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_deleted_post_by_auth_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_deleted_post_by_auth_user`(
	in p_id int,  
    out p_return decimal,
    out p_message varchar(255)
)
proc_deleted_post_by_auth_user:BEGIN
	declare v_count int;
	set v_count = 0;
    
    select count(*) into v_count from post where id = p_id   and deleted = 0; 
    if v_count <= 0 then
		set p_return = -1;
        set p_message = "ko tim thay";
    end if;
    
    update post set deleted = 1 where id = p_id   and deleted = 0;
    commit;
    set p_return = 1;
    set p_message = "";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_delete_image_by_id_post` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_delete_image_by_id_post`(in p_idpost int)
BEGIN
    update images set deleted = 1 where idpost = p_idpost;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_delete_post` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_delete_post`(
	in p_id int, 
    out p_return decimal,
    out p_message varchar(255)
)
proc_delete_post:BEGIN
	declare v_count int;
	set v_count = 0;
    
    select count(*) into v_count from post where id = p_id;
    if v_count <= 0 then
		set p_return = -1;
        set p_message = "ko tim thay";
    end if;
    
    delete from post where id = p_id;
    set p_return = 1;
	set p_message = "";
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_frienddata_accept` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_frienddata_accept`(
	in p_idfrienddata int, 
	out p_return decimal,
    out p_message varchar(255)
)
proc_frienddata_accept:BEGIN
	declare v_count int;
		set v_count = 0;
        
        select count(*) into v_count from frienddata where  id = p_idfrienddata and status = 1;
        if v_count <= 0 then
			set p_return = -1;
            set p_message = 'Yêu cầu không tồn tại';
            leave proc_frienddata_accept;
        end if; 
        
        update frienddata set status = 2 where id = p_idfrienddata and status = 1;
        commit;
        set p_return = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_frienddata_reject` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_frienddata_reject`(
	in p_idfrienddata int, 
	out p_return decimal,
    out p_message varchar(255)
)
proc_frienddata_reject:BEGIN
	declare v_count int;
		set v_count = 0;
        
        select count(*) into v_count from frienddata where  id = p_idfrienddata and status = 1;
        if v_count <= 0 then
			set p_return = -1;
            set p_message = 'Yêu cầu không tồn tại';
            leave proc_frienddata_reject;
        end if; 
        
        update frienddata set status = 3 where id = p_idfrienddata and status = 1;
        commit;
        set p_return = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_friend_get_list_request_make_friend` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_friend_get_list_request_make_friend`(
	in p_iduser int, 
	out p_return decimal,
    out p_message varchar(255)
)
BEGIN
	set p_return = 0;
	select a.id as id ,b.id as iduser, b.displayname as displayname, b.username as username, b.avatar as avatar, a.status as status from frienddata a
		left join userprofile b on b.id = a.iduser
		where a.idfriend = p_iduser and status = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_friend_make_friend` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_friend_make_friend`(
	in p_userid int, 
    in p_idfriend int,
    in p_createddate datetime,
    out p_return decimal,
    out p_message varchar(255)
)
proc_friend_make_friend:BEGIN
	DECLARE count_before decimal ;
    DECLARE count_after decimal;
    declare count_check DECIMAL;
    
    select count(*) into count_check from frienddata where (iduser = p_userid and idfriend = p_idfriend and status = 1) or (iduser = p_idfriend and idfriend = p_userid and status = 1);
    if count_check > 0 then
		set  p_return = -1;
            set p_message = 'Đã tồn tại yêu cầu kết bạn';
            LEAVE proc_friend_make_friend;
    end if;
    
    select count(*) into count_check from frienddata where (iduser = p_userid and idfriend = p_idfriend and status = 2) or (iduser = p_idfriend and idfriend = p_userid and status = 2);
    if count_check > 0 then
		set  p_return = -1;
		set p_message = 'Đã là bạn bè';
		LEAVE proc_friend_make_friend;
    end if;
    
    set p_return = 0;
		select count(*) into count_before from frienddata;
		insert into frienddata(iduser, idfriend, createddate, status) VALUES (p_userid, p_idfriend, p_createddate, '1');
		select count(*) into count_after from frienddata;
		
		if count_before < count_after then 
			select a.id into p_return from frienddata a where a.id = (
				select max(id) from frienddata
			);
            set p_message = 'Thành công';
		else
			set  p_return = -1;
            set p_message = 'Thất bại';
            LEAVE proc_friend_make_friend;
		end if; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_friend_make_relationship` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_friend_make_relationship`(
	in p_userid int,
    in p_idfriend int, 
	out p_return decimal,
    out p_message varchar(255)
)
proc_friend_make_relationship:BEGIN
	DECLARE count_before decimal ;
    DECLARE count_after decimal;
    declare count_check DECIMAL;
    
    set p_return = 0;
		select count(*) into count_before from frienddata;
		insert into frienddata(userid, userfriend, status) VALUES (p_userid, p_userfriend, '1');
		select count(*) into count_after from frienddata;
		
		if count_before < count_after then 
			select a.id into p_return from frienddata a where a.id = (
				select max(id) from frienddata
			); 
            set p_message = 'Thành công';
		else
			set  p_return = -1;
            set p_message = 'Thất bại';
            LEAVE proc_friend_make_relationship;
		end if; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_get_comment_by_idpost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_get_comment_by_idpost`(
	in p_idpost int, 
    out p_return decimal,
    out p_message varchar(255)
)
BEGIN
	select a.id as id, a.iduser as iduser, a.idpost as idpost, a.description as description, a.createddate as createddate, a.deleted as deleted,
		b.avatar as avatar, b.username as username,  b.displayname as displayname,a.totallike as totallike from comments a 
		left join userprofile b on b.id = a.iduser
    where idpost = p_idpost and a.deleted = 0;
    set p_return = 1;
    set p_message = '';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_get_image_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_get_image_by_id`(
	in p_idpost int, 
    in p_iduser int,
    out p_return DECIMAL, 
    out p_message VARCHAR(500) 
)
proc_get_image_by_id:BEGIN
    select id, iduser,idpost, ifnull(idalbum, 0) as idalbum, description, createddate, deleted, url from images where iduser = p_iduser and idpost = p_idpost order by id asc;
    set p_return = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_get_userpprofile_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_get_userpprofile_by_id`(
	in p_id int, 
    out p_return DECIMAL, 
    out p_message VARCHAR(500) 
)
proc_login:BEGIN
	declare v_count decimal;
    set v_count = 0;
    select count(*) into v_count from userprofile where id = p_id and deleted = 0;
    
    if v_count < 0 then
		set p_return = -1;
        set p_message = 'Không tìm thấy người dùng';
		LEAVE proc_login;
    end if ;
    
    set p_return = 1;
    select * from userprofile where id = p_id and deleted = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_group_request_join_group` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_group_request_join_group`(
	in p_idgroup int, 
    in p_iduser int,
    out p_return decimal,
    out p_message varchar(255)
)
proc_group_request_join_group:BEGIN
	DECLARE count_before decimal ;
    DECLARE count_after decimal;
    declare count_check DECIMAL;
    declare v_grouptype varchar(30);
    
    select count(*) into count_check from usergroup where iduser = p_iduser and idgroup = p_idgroup and status = 1;
    if count_check > 0 then 
		set p_return = -1;
        set p_message = 'Đã gửi yêu cầu';
        LEAVE proc_group_request_join_group;
    end if;
    
    select count(*) into count_check from usergroup where iduser = p_iduser and idgroup = p_idgroup and status = 1;
    if count_check > 0 then 
		set p_return = -1;
        set p_message = 'Đã tham gia';
        LEAVE proc_group_request_join_group;
    end if;
    
    select count(*) into count_check from socialgroup where id = p_idgroup and deleted = 0;
    if count_check <= 0 then 
		set p_return = -1;
        set p_message = 'Nhóm không tồn tại';
        LEAVE proc_group_request_join_group;
    end if;
    
    select grouptype into v_grouptype from socialgroup where id = p_idgroup and deleted = 0;
    
    set p_return = 0;
		select count(*) into count_before from usergroup;
        if v_grouptype = 'PRI' then 
			insert into usergroup(iduser, idgroup, status, roleingroup) VALUES (p_iduser, p_idgroup, '1', 'MEMBER');
        else 
			insert into usergroup(iduser, idgroup, status, roleingroup) VALUES (p_iduser, p_idgroup, '2', 'MEMBER');
        end if ; 
		select count(*) into count_after from usergroup;
		
		if count_before < count_after then 
			select a.id into p_return from usergroup a where a.id = (
				select max(id) from usergroup
			);
            if v_grouptype = 'PRI' then 
				set p_message = 'Gửi yêu cầu thành công';
			else 
				set p_message = 'Thành công';
			end if ; 
            
		else
			set  p_return = -1;
            set p_message = 'Thất bại';
            LEAVE proc_group_request_join_group;
		end if; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_insert_image` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_insert_image`(
	in p_iduser int,
    in p_idpost int,
    in p_idalbum int, 
    in p_description longtext,
    in p_createddate datetime,
    in p_url varchar(255), 
    out p_return DECIMAL, 
    out p_message VARCHAR(500) 
)
proc_insert_image:BEGIN
    DECLARE count_before decimal ;
    DECLARE count_after decimal;
    declare count_check DECIMAL;
    
    
    select count(*) into count_before from images;
	insert into images(iduser, idpost, idalbum, description, createddate, deleted, url) VALUES (p_iduser, p_idpost, p_idalbum, p_description, p_createddate, 0, p_url);
	select count(*) into count_after from images;
		
	if count_before < count_after then 
		select a.id into p_return from images a where a.id = (
			select max(id) from images
		);

		set p_message = 'Thành công';
	else
		set  p_return = -1;
		set p_message = 'Thất bại';
		LEAVE proc_insert_image;
	end if; 
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_like_comment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_like_comment`(
    in p_idcomment int, 
	out p_return decimal,
    out p_message varchar(255)
)
proc_like_comment:BEGIN
    declare v_count_like int; 
    declare v_count int;
    select count(*) into v_count from comments where id = p_idcomment and deleted = 0;
    if v_count < 0 then
		set p_return = -1;
        set p_message = "Không tìm thấy BL";
		leave proc_like_comment;
    end if; 
    
    select totallike into v_count_like from comments where id = p_idcomment and deleted = 0;
    set v_count_like = v_count_like + 1;
     
    update comments set totallike = v_count_like where id = p_idcomment and deleted = 0;
	commit;
    set p_return = v_count_like; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_login`(
	in p_username varchar(255),
    in p_password varchar(255), 
    out p_return DECIMAL, 
    out p_message VARCHAR(500)
)
proc_login:BEGIN
	DECLARE v_check_account_exsits decimal;
    START TRANSACTION; 
    set p_return = 0; 
	select count(*) into v_check_account_exsits from userprofile a where a.username = p_username and a.password = p_password and a.deleted = 0; 
    IF v_check_account_exsits < 1  THEN 
        set p_return = -1; 
        set p_message = 'Tài khoản hoặc mật khẩu không đúng'; 
        LEAVE proc_login; 
    end if; 
    set p_return = 1;  
    select * from userprofile a where a.username = p_username and a.password = p_password and a.deleted = 0; 
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_message_get_in_room` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_message_get_in_room`(
	in p_idroom int,
    out p_return DECIMAL, 
    out p_message VARCHAR(500) 
)
proc_message_get_in_room:BEGIN 
	declare v_count decimal;
    set v_count = 0;
    select count(*) into v_count from datamessage where idroom = p_idroom and deleted = 0;
    
    if v_count < 0 then
		set p_return = -1;
        set p_message = 'Không tìm thấy tin nhắn';
		LEAVE proc_message_get_in_room;
    end if ;
    
    set p_return = 1;
	select a.id as id, a.message as message, a.createddate as createddate,
		a.idusersend as idusersend, b1.avatar as avatarusersend, b1.displayname as displaynamesend, b1.username as usernamesend, 
		a.iduserrecieve as iduserrecieve, b2.avatar as avataruserrecieve, b2.displayname as displaynamerecieve, b2.username as usernamerecieve , a.urlattach as urlattach
    from datamessage a 
		left join userprofile b1 on b1.id = a.idusersend
        left join userprofile b2 on b2.id = a.iduserrecieve
		where a.idroom = p_idroom and a.deleted  = 0 order by a.id desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_message_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_message_insert`(
	in p_idusersend int,
    in p_iduserrecieve int,
    in p_idroom int, 
    in p_messagesend varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    in p_urlattach varchar(255),
    in p_createddate datetime, 
	out p_return decimal,
    out p_message varchar(255)
)
proc_message_insert:BEGIN
	DECLARE count_before decimal ;
    DECLARE count_after decimal;
    declare count_check DECIMAL;
    
    set p_return = 0;
		select count(*) into count_before from datamessage;
		insert into datamessage(idusersend, iduserrecieve ,idroom, message, urlattach,createddate, deleted) VALUES (p_idusersend, p_iduserrecieve, p_idroom, p_messagesend, p_urlattach,p_createddate, 0);
		select count(*) into count_after from datamessage;
		
		if count_before < count_after then 
			select a.id into p_return from datamessage a where a.id = (
				select max(id) from datamessage
			); 
            set p_message = 'Thành công';
		else
			set  p_return = -1;
            set p_message = 'Thất bại';
            LEAVE proc_message_insert;
		end if; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_post_edit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_post_edit`(
	in p_idpost int,
    in p_iduser int,
    in p_description VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,  
	out p_return decimal,
    out p_message varchar(255)
)
proc_post_edit:BEGIN
	
    declare v_count int;
    
    select count(*) into v_count from post where id = p_idpost and iduser = p_iduser and deleted = 0;
    if v_count <= 0 then 
		set p_return = -1;
        set p_message = "Không tìm thấy bài viết!";
		leave proc_post_edit;
    end if;
    
    update post set description = p_description where id = p_idpost and deleted = 0;
	commit;
    set p_return = 1;
END-- Active: 1723733502275@@34.27.84.77@3306@abc_xyz ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_post_insert_newfeed` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_post_insert_newfeed`(
	in p_idgroup int,
    in p_iduser int,
    in p_description text,
    in p_createddate datetime,
    out p_return decimal,
    out p_message varchar(255)
)
proc_post_insert_newfeed:BEGIN
    DECLARE count_before decimal ;
    DECLARE count_after decimal;
    declare count_check DECIMAL;
    
	select count(*) into count_before from post;
	insert into post(idgroup, iduser, description, createddate, totallike, totalshare, status, deleted) VALUES (p_idgroup, p_iduser,p_description, p_createddate, 0, 0, '2', 0);
	select count(*) into count_after from post;    
    
    if count_before < count_after then 
			select a.id into p_return from post a where a.id = (
				select max(id) from post
			);

            set p_message = 'Thành công';
		else
			set  p_return = -1;
            set p_message = 'Thất bại';
            LEAVE proc_post_insert_newfeed;
		end if; 
        commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_post_like` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_post_like`(
	in p_idpost int, 
	out p_return int,
    out p_message varchar(255)
)
proc_post_like:BEGIN
	declare v_count_like int; 
    declare v_total_like int; 
    declare v_count int;
    select count(*) into v_count from post where id = p_idpost and deleted = 0;
    if v_count < 0 then
		set p_return = -1;
        set p_message = "Không tìm thấy bài viết!";
		leave proc_post_like;
    end if; 
    
    select IFNULL(totallike,0) into v_count_like from post where id = p_idpost and deleted = 0;
    set v_total_like = v_count_like + 1;
    set p_return = v_total_like;
     
    update post set totallike = v_total_like where id = p_idpost and deleted = 0;
	commit;
     select IFNULL(totallike, 0) into p_return from post where id = p_idpost and deleted = 0;
    
END-- Active: 1723733502275@@34.27.84.77@3306@abc_xyz ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_room_char_create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_room_char_create`(
	in p_idcreateduser int, 
    in p_toiduser int,
    in p_createddate datetime,
    in p_roomname text,
	out p_return decimal,
    out p_message varchar(255)
)
proc_room_char_create:BEGIN
	DECLARE count_before decimal ;
    DECLARE count_after decimal;
    declare count_check DECIMAL;
	declare v_count int;
    declare v_check int;
    

    set p_return = 0;
		select count(*) into count_before from roomchat;
		insert into roomchat(roomname, createddate, deleted, idcreateduser) VALUES (p_roomname, p_createddate, 0, p_idcreateduser);
		select count(*) into count_after from roomchat;
         
		if count_before < count_after then 
			select a.id into p_return from roomchat a where a.id = (
				select max(id) from roomchat
			); 
            insert into memeberinroomchat(iduser, joinat, deleted, idroom) values(p_idcreateduser, p_createddate, 0, p_return);
            insert into memeberinroomchat(iduser, joinat, deleted, idroom) values(p_toiduser, p_createddate, 0, p_return);
            set p_message = 'Thành công'; 
		else
			set  p_return = -1;
            set p_message = 'Thất bại';
            LEAVE proc_room_char_create;
		end if; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_room_chat_get` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_room_chat_get`(  
	in p_iduser int,   
    out p_return DECIMAL, 
    out p_message VARCHAR(500)  
)
proc_room_chat_get:BEGIN  
	declare v_count int ;
    set v_count = 0;
    set p_message = '';
    select count(*) into v_count from memeberinroomchat a where a.iduser = p_iduser;
    if v_count <= 0 then
		set p_return = -1;
        set p_message = 'Không tìm thấy room';
		LEAVE proc_room_chat_get;
    end if ;
	
      
    select distinct * from (
		select temp.id as id, ifnull(temp.idpartner, 0) as idpartner, temp.lastmessage as lastmessage, ifnull(temp.lasttimesend, CURRENT_TIMESTAMP) as lasttimesend, 
			usf.displayname as displayname, usf.avatar as avatar, usf.username as username  
		from (   
			select a.id as id,     
			case 
				when p_iduser = ifnull(b1.idusersend, 0) then b1.iduserrecieve     
				when p_iduser = ifnull(b1.iduserrecieve, 0)  then b1.idusersend
			else mem.iduser
			end idpartner, b1.message as lastmessage, b1.createddate as lasttimesend   
			from roomchat a     
			left join memeberinroomchat mem on mem.idroom = a.id and mem.iduser <> p_iduser
			left join ( select * from datamessage mess where mess.idusersend = p_iduser or mess.iduserrecieve = p_iduser order by id desc limit 1    ) b1 on a.id = b1.idroom    where a.deleted = 0     
			) temp     left join userprofile usf on usf.id =  temp.idpartner 
			where temp.idpartner is not null and temp.idpartner > 0
    ) ds
        ;  
	set p_return = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_search_post_option` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_search_post_option`( 
    in p_userposting VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci, 
    in p_description varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    in p_iduser int, 
    in p_idgroup int,
    IN P_TOTAL_RECORD_INPAGE INT,
    IN P_BEGIN_RECORD INT,
    out p_total_record decimal
)
BEGIN
set p_total_record = 0;
	select count(c.id) INTO p_total_record from (
        select a.id as id, a.iduser as iduser ,b.displayname as displayname, a.description as description, a.totallike as totallike, a.createddate as createddate
		
    from post a 
		left join userprofile b on a.iduser = b.id 
        where a.deleted = 0 
		and (p_iduser is null or ((p_iduser is not null and a.iduser = p_iduser) or (p_iduser is not null and a.iduser = 0)))
        and (p_idgroup is null or ((p_idgroup is not null and a.idgroup = p_idgroup)))
        and (p_userposting is null or (p_userposting is not null and b.displayname like concat('%', p_userposting, '%')))
        and (p_description is null or (p_description is not null and a.description like concat('%', p_description, '%')))
    ) c;
    
    
    select * from (
		select a.id as id, a.iduser as iduser ,b.displayname as displayname, a.description as description, a.totallike as totallike, a.createddate as createddate	
    from post a 
		left join userprofile b on a.iduser = b.id 
        where a.deleted = 0 
		and (p_iduser is null or ((p_iduser is not null and a.iduser = p_iduser)))
        and (p_idgroup is null or ((p_idgroup is not null and a.idgroup = p_idgroup)))
        and (p_userposting is null or (p_userposting is not null and b.displayname like concat('%', p_userposting, '%')))
        and (p_description is null or (p_description is not null and a.description like concat('%', p_description, '%')))
    ) alldata order by alldata.id desc;
       
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_socialgroup_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_socialgroup_delete`(
	in p_idadmin int, 
    in p_idgroup int, 
	out p_return decimal,
    out p_message varchar(255)
)
proc_socialgroup_delete:BEGIN
	declare v_count int;
		set v_count = 0;
        
        select count(*) into v_count from socialgroup where  id = p_idgroup and deleted = 0;
        if v_count <= 0 then
			set p_return = -1;
            set p_message = 'Nhóm không tồn tại';
            leave proc_socialgroup_delete;
        end if;
        
        select count(*) into v_count from socialgroup where idusercreated = p_idadmin and id = p_idgroup and deleted = 0; 
        if v_count <= 0 then
			set p_return = -1;
            set p_message = 'Bạn không có quyền ADMIN';
            leave proc_socialgroup_delete;
        end if;
        
        update socialgroup set deleted = 1 where  idusercreated = p_idadmin and id = p_idgroup and deleted = 0; 
        update usergroup set status = 3 where idgroup = p_idgroup;
        commit;
        set p_return = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_socialgroup_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_socialgroup_insert`(
	in p_idusercreated int, 
    in p_groupname varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    in p_createddate datetime,
    in p_typegroup varchar(10),
    in p_background varchar(255),
	out p_return decimal,
    out p_message varchar(255)
)
proc_socialgroup_insert:BEGIN
	DECLARE count_before decimal ;
    DECLARE count_after decimal;
    declare count_check DECIMAL;
    
    set p_return = 0;
		select count(*) into count_before from socialgroup;
		insert into socialgroup(idusercreated, groupname, createddate, typegroup, deleted, background) VALUES (p_idusercreated, p_groupname, p_createddate, p_typegroup, 0, p_background);
		select count(*) into count_after from socialgroup;
		
		if count_before < count_after then 
			select a.id into p_return from socialgroup a where a.id = (
				select max(id) from socialgroup
			);
            insert into usergroup(iduser, idgroup, status, roleingroup) values(p_idusercreated, p_return, '2', 'ADMIN');
            set p_message = 'Thành công';
		else
			set  p_return = -1;
            set p_message = 'Thất bại';
            LEAVE proc_socialgroup_insert;
		end if; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_socialgroup_search_option` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_socialgroup_search_option`(
	in p_id int,
    in p_groupname VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci, 
    in p_useradmin int,
    in p_usermember int,
    IN P_TOTAL_RECORD_INPAGE INT,
    IN P_BEGIN_RECORD INT,
    out p_total_record decimal
)
BEGIN
set p_total_record = 0;
	select count(c.id) INTO p_total_record from (
        select a.id as id, a.groupname as groupname, a.typegroup as typegroup from socialgroup a where a.deleted = 0
		and (p_id is null or ((p_id is not null and a.id = p_id) or (p_id is not null and a.id = 0)))
        and (p_groupname is null or (p_groupname is not null and a.groupname like concat('%', p_groupname, '%')))
    ) c;
	select a.id as id, a.groupname as groupname, a.typegroup as typegroup, a.idusercreated as idusercreated, a.background as background, a.createddate as createddate from socialgroup a 
		left join usergroup b on a.id = b.idgroup
		where a.deleted = 0
		and (p_id is null or ((p_id is not null and a.id = p_id) or (p_id is not null and a.id = 0)))
        and (p_groupname is null or (p_groupname is not null and a.groupname like concat('%', p_groupname, '%'))) 
        and (p_useradmin is null or ((p_useradmin is not null and a.idusercreated = p_useradmin) or (p_useradmin is not null and a.idusercreated = 0)))
        and (p_usermember is null or ((p_usermember is not null and b.iduser = p_usermember) or (p_usermember is not null and b.iduser = 0)))
        order by a.id desc 
        LIMIT P_BEGIN_RECORD, P_TOTAL_RECORD_INPAGE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_update_image` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_update_image`(
	in p_idimage int,
    in p_idpost int, 
    in p_iduser int,
    in p_idalbum int,
    in p_url longtext, 
	out p_return decimal,
    out p_message varchar(255)
)
proc_update_image:BEGIN
	declare v_count int;
	select count(*) into v_count from images where id = p_idimage and iduser = p_iduser and idpost = p_idpost and deleted = 0;
    if v_count <= 0 then
		set p_return = -1;
        set p_message = 'Không tìm thấy ảnh';
        leave proc_update_image;
    end if;
    
    update images set url = p_url, idalbum = p_idalbum where id = p_idimage and iduser = p_iduser and idpost = p_idpost and deleted = 0;
    set p_return = 1;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_usergroup_admin_approve` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_usergroup_admin_approve`(
	in p_idadmingroup int, 
    in p_idgroup int,
    in p_idusergroup int,
	out p_return decimal,
    out p_message varchar(255)
)
proc_usergroup_admin_approve:BEGIN
		declare v_count int;
		set v_count = 0;
        
        select count(*) into v_count from socialgroup where  id = p_idgroup and deleted = 0;
        if v_count <= 0 then
			set p_return = -1;
            set p_message = 'Nhóm không tồn tại';
            leave proc_usergroup_admin_approve;
        end if;
        
        select count(*) into v_count from socialgroup where idusercreated = p_idadmingroup and id = p_idgroup and deleted = 0; 
        if v_count <= 0 then
			set p_return = -1;
            set p_message = 'Bạn không có quyền ADMIN';
            leave proc_usergroup_admin_approve;
        end if;
        
        select count(*) into v_count from usergroup where iduser = p_idusergroup and idgroup = p_idgroup and (status = 1 or status = 2);
        if v_count <= 0 then
			set p_return = -1;
            set p_message = 'Không tìm thấy bản ghi';
            leave proc_usergroup_admin_approve;
        end if;

        update usergroup set status = 2 where iduser = p_idusergroup and idgroup = p_idgroup and (status = 1 or status = 2);
        commit;
        set p_return = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_usergroup_reject` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_usergroup_reject`(
	in p_idadmingroup int, 
    in p_idgroup int,
    in p_idusergroup int,
	out p_return decimal,
    out p_message varchar(255)
)
proc_usergroup_reject:BEGIN
	declare v_count int;
		set v_count = 0;
        
        select count(*) into v_count from socialgroup where  id = p_idgroup and deleted = 0;
        if v_count <= 0 then
			set p_return = -1;
            set p_message = 'Nhóm không tồn tại';
            leave proc_usergroup_reject;
        end if;
        
        select count(*) into v_count from socialgroup where idusercreated = p_idadmingroup and id = p_idgroup and deleted = 0; 
        if v_count <= 0 then
			set p_return = -1;
            set p_message = 'Bạn không có quyền ADMIN';
            leave proc_usergroup_reject;
        end if;
        
        select count(*) into v_count from usergroup where iduser = p_idusergroup and idgroup = p_idgroup and (status = 1 or status = 2);
        if v_count <= 0 then
			set p_return = -1;
            set p_message = 'Không tìm thấy bản ghi';
            leave proc_usergroup_reject;
        end if;

        update usergroup set status = 3 where iduser = p_idusergroup and idgroup = p_idgroup  and (status = 1 or status = 2);
        commit;
        set p_return = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_usergroup_search_option` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_usergroup_search_option`(
    in p_idgroup int,
    in p_status varchar(30),
	in p_username VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci, 
    in p_displayname varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
    IN P_TOTAL_RECORD_INPAGE INT,
    IN P_BEGIN_RECORD INT,
    out p_total_record decimal
)
BEGIN
	set p_total_record = 0;
	select count(c.id) INTO p_total_record from (
        select a.id as id, a.iduser as iduser, a.roleingroup as roleingroup, a.status as status, a.idgroup as idgroup from usergroup a
		left join userprofile b on a.iduser = b.id 
		where 1 = 1 
		and (p_idgroup is null or (p_idroup is not null and a.idgroup = p_idgroup))
        and (p_status is null or (p_status is not null and a.status = p_status))
        and (p_username is null or (p_username is not null and b.username like concat('%', p_username, '%')))
        and (p_displayname is null or (p_displayname is not null and b.displayname like concat('%', p_displayname, '%')))
    ) c;

	select a.id as id, a.iduser as iduser, a.roleingroup as roleingroup, a.status as status, a.idgroup as idgroup, b.avatar as avatar from usergroup a
		left join userprofile b on a.iduser = b.id 
		where 1 = 1 
		and (p_idgroup is null or (p_idroup is not null and a.idgroup = p_idgroup))
        and (p_status is null or (p_status is not null and a.status = p_status))
        and (p_username is null or (p_username is not null and b.username like concat('%', p_username, '%')))
        and (p_displayname is null or (p_displayname is not null and b.displayname like concat('%', p_displayname, '%')))
        LIMIT P_BEGIN_RECORD, P_TOTAL_RECORD_INPAGE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_userprofile_edit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_userprofile_edit`( 
	in p_id int,
    in p_email varchar(255),
    in p_phonenumber VARCHAR(25),
    in p_displayname varchar(255),
    in p_avatar varchar(255), 
	in p_education varchar(255),
    in p_gender varchar(255),
    in p_job varchar(255),
    out p_return decimal,
    out p_message varchar(255)
)
proc_userprofile_edit:BEGIN
	declare v_count int;
    set v_count = 0;
    
    select count(*) into v_count from userprofile where id = p_id and deleted = 0;
    if v_count = 0 then
		set p_return = -1; 
        set p_message = 'Không tìm thấy thông tin người dùng';
		leave proc_userprofile_edit;
    end if;
    
    update userprofile set email = p_email, phonenumber = p_phonenumber, displayname = p_displayname, avatar = p_avatar, education = p_education, gender = p_gender, job = p_job where id = p_id and deleted = 0;
    set p_return = 1; 
	set p_message = 'Thành công';
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_userprofile_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_userprofile_insert`(
	in p_username varchar(255),
    in p_password VARCHAR(255),
    in p_email varchar(255),
    in p_phonenumber VARCHAR(25),
    in p_displayname varchar(255),
    in p_avatar varchar(255),
    in p_createddate DATE, 
	in p_role varchar(255),
    in p_education varchar(255),
    in p_gender varchar(255),
    in p_job varchar(255),
    out p_return decimal,
    out p_message varchar(255)
)
proc_userprofile_insert:BEGIN
    DECLARE count_before decimal ;
    DECLARE count_after decimal;
    declare count_check DECIMAL;
    
    set p_return = 0;
 -- check tai khoan
        set count_check = 0; 
        select COUNT(*) into count_check from userprofile a where a.username = p_username and a.deleted = 0;
        IF count_check > 0 then
            set  p_return = -1;
            set p_message = 'Tài khoản đã tồn tại';
            LEAVE proc_userprofile_insert; 
        end if;
-- check email 
        select COUNT(*) into count_check from userprofile a where a.phonenumber = p_email and a.deleted = 0;
        IF count_check > 0 then
            set  p_return = -1;
            set p_message = 'Email đã tồn tại';
            LEAVE proc_userprofile_insert; 
        end if;
	-- check sdt
        select COUNT(*) into count_check from userprofile a where a.email = p_phonenumber and a.deleted = 0;
        IF count_check > 0 then
            set  p_return = -1;
            set p_message = 'Số điện thoại đã tồn tại';
            LEAVE proc_userprofile_insert; 
        end if;

		select count(*) into count_before from userprofile;
		insert into userprofile(username, password, email, phonenumber, displayname, avatar, createddate, deleted, role, education, gender, job) VALUES (p_username, p_password, p_email, p_phonenumber, p_displayname, p_avatar, p_createddate, 0, p_role, p_education, p_gender, p_job);
		select count(*) into count_after from userprofile;
		
		if count_before < count_after then 
			select a.id into p_return from userprofile a where a.id = (
				select max(id) from userprofile
			);
            set p_message = 'Thành công';
		else
			set  p_return = -1;
            set p_message = 'Thất bại';
            LEAVE proc_userprofile_insert;
		end if; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_userprofile_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_userprofile_list`(
	in p_curentid int
)
BEGIN
    select * from userprofile where deleted = 0 and id <> p_curentid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_userprofile_search_option` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`abc_xyz`@`%` PROCEDURE `proc_userprofile_search_option`(
	in p_currentid int,
	in p_id int,
    in p_username VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci, 
    in  p_displayname VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,  
    in p_isfriend varchar(255),
    IN P_TOTAL_RECORD_INPAGE INT,
    IN P_BEGIN_RECORD INT,
    out p_total_record decimal
)
BEGIN

/*
	status 0: chua la ban, 1. userpartner chua phan hoi, 2. ban chua phan hoi, 3. da ket ban, 4.da huy ket ban
*/
set p_total_record = 0;
	select count(c.id) INTO p_total_record from (
        select a.id as id, a.username as username, a.displayname as displayname, a.avatar as avatar,
		case 
			when ifnull(b1.id, 0) = 0 and ifnull(b2.id, 0) = 0  then 0
            when ifnull(b1.id, 0) > 0 and b1.status = 1 then 1
            when ifnull(b2.id, 0) > 0 and b2.status = 1 then 2
            when ifnull(b1.id, 0) > 0 and b1.status = 2 then 3
            when ifnull(b2.id, 0) > 0 and b2.status = 2 then 3
		end friendstatus,
        case 
			when ifnull(b1.id, 0) = 0 and ifnull(b2.id, 0) = 0  then 0
            when ifnull(b1.id, 0) > 0 and b1.status = 1 then b1.id
            when ifnull(b2.id, 0) > 0 and b2.status = 1 then b2.id
            when ifnull(b1.id, 0) > 0 and b1.status = 2 then b1.id
            when ifnull(b2.id, 0) > 0 and b2.status = 2 then b2.id
		end idfrienddata
    from userprofile a  
		left join frienddata b1 on b1.iduser = a.id and b1.idfriend = p_currentid
        left join frienddata b2 on b2.idfriend = a.id and b2.iduser = p_currentid
		where a.deleted = 0 and a.id <> p_currentid
			and (p_id is null or ((p_id is not null and a.id = p_id) or (p_id is not null and a.id = 0)))
			and (p_username is null or (p_username is not null and a.username like concat('%', p_username, '%'))) 
			and (p_displayname is null or (p_displayname is not null and a.displayname like concat('%', p_displayname, '%'))) 
            and (p_isfriend is null 
                or ( p_isfriend is not null and p_isfriend = 'ALL' ) 
                or ( p_isfriend is not null and p_isfriend = 'UNKNOWN' and (ifnull(b1.id, 0) = 0 and ifnull(b2.id, 0) = 0) )
                or ( p_isfriend is not null and p_isfriend = 'FRIEND' and ((ifnull(b1.id, 0) > 0 and b1.status = 2) or (ifnull(b2.id, 0) > 0 and b2.status = 2)) ) 
                or ( p_isfriend is not null and p_isfriend = 'REQ' and ((ifnull(b1.id, 0) > 0 and b1.status = 1)) ) 
                or ( p_isfriend is not null and p_isfriend = 'WAITING' and ((ifnull(b2.id, 0) > 0 and b2.status = 1)) ) 
            )
            -- and (p_isfriend is null or (
			-- 		p_isfriend is not null and p_isfriend = 'UNKNOW' and (ifnull(b1.id, 0) = 0 and ifnull(b2.id, 0) = 0)
			-- 	) 
            -- )
            -- and (p_isfriend is null or (
			-- 		p_isfriend is not null and p_isfriend = 'FRIEND' and ((ifnull(b1.id, 0) > 0 and b1.status = 2) or (ifnull(b2.id, 0) > 0 and b2.status = 2))
			-- 	) 
            -- )
            -- and (p_isfriend is null or (
			-- 		p_isfriend is not null and p_isfriend = 'REQ' and ((ifnull(b1.id, 0) > 0 and b1.status = 1))
			-- 	) 
            -- )  
            -- and (p_isfriend is null or (
			-- 		p_isfriend is not null and p_isfriend = 'WAITING' and ((ifnull(b2.id, 0) > 0 and b2.status = 1))
			-- 	) 
            -- ) 
        order by a.id desc 
    ) c;
    
	select a.id as id, a.username as username, a.displayname as displayname, a.avatar as avatar,
		case 
			when ifnull(b1.id, 0) = 0 and ifnull(b2.id, 0) = 0  then 0
            when ifnull(b1.id, 0) > 0 and b1.status = 1 then 1
            when ifnull(b2.id, 0) > 0 and b2.status = 1 then 2
            when ifnull(b1.id, 0) > 0 and b1.status = 2 then 3
            when ifnull(b2.id, 0) > 0 and b2.status = 2 then 3
		end friendstatus,
        case 
			when ifnull(b1.id, 0) = 0 and ifnull(b2.id, 0) = 0  then 0
            when ifnull(b1.id, 0) > 0 and b1.status = 1 then b1.id
            when ifnull(b2.id, 0) > 0 and b2.status = 1 then b2.id
            when ifnull(b1.id, 0) > 0 and b1.status = 2 then b1.id
            when ifnull(b2.id, 0) > 0 and b2.status = 2 then b2.id
		end idfrienddata
    from userprofile a  
		left join frienddata b1 on b1.iduser = a.id and b1.idfriend = p_currentid
        left join frienddata b2 on b2.idfriend = a.id and b2.iduser = p_currentid
		where a.deleted = 0 and a.id <> p_currentid
			and (p_id is null or ((p_id is not null and a.id = p_id) or (p_id is not null and a.id = 0)))
			and (p_username is null or (p_username is not null and a.username like concat('%', p_username, '%'))) 
			and (p_displayname is null or (p_displayname is not null and a.displayname like concat('%', p_displayname, '%'))) 
            and (p_isfriend is null 
                or ( p_isfriend is not null and p_isfriend = 'ALL' ) 
                or ( p_isfriend is not null and p_isfriend = 'UNKNOWN' and (ifnull(b1.id, 0) = 0 and ifnull(b2.id, 0) = 0) )
                or ( p_isfriend is not null and p_isfriend = 'FRIEND' and ((ifnull(b1.id, 0) > 0 and b1.status = 2) or (ifnull(b2.id, 0) > 0 and b2.status = 2)) ) 
                or ( p_isfriend is not null and p_isfriend = 'REQ' and ((ifnull(b1.id, 0) > 0 and b1.status = 1)) ) 
                or ( p_isfriend is not null and p_isfriend = 'WAITING' and ((ifnull(b2.id, 0) > 0 and b2.status = 1)) ) 
            )
            -- and (p_isfriend is null or (
			-- 		p_isfriend is not null and p_isfriend = 'UNKNOW' and (ifnull(b1.id, 0) = 0 and ifnull(b2.id, 0) = 0)
			-- 	) 
            -- )
            -- and (p_isfriend is null or (
			-- 		p_isfriend is not null and p_isfriend = 'FRIEND' and ((ifnull(b1.id, 0) > 0 and b1.status = 2) or (ifnull(b2.id, 0) > 0 and b2.status = 2))
			-- 	) 
            -- )
            -- and (p_isfriend is null or (
			-- 		p_isfriend is not null and p_isfriend = 'REQ' and ((ifnull(b1.id, 0) > 0 and b1.status = 1))
			-- 	) 
            -- )  
            -- and (p_isfriend is null or (
			-- 		p_isfriend is not null and p_isfriend = 'WAITING' and ((ifnull(b2.id, 0) > 0 and b2.status = 1))
			-- 	) 
            -- ) 
        order by a.id desc 
        LIMIT P_BEGIN_RECORD, P_TOTAL_RECORD_INPAGE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=@OLD_INNODB_STATS_AUTO_RECALC */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-26  2:22:27