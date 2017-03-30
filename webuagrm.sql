-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: webuagrm_development
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-02-20 21:40:30','2017-02-20 21:40:30');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Modulos','Lugares en los que usualmente se pasan las clases','2017-02-20 21:42:54','2017-02-20 21:42:54'),(2,'Fotocopiadoras','Todos los lugares en donde se pueden realizar fotocopias.','2017-02-20 21:43:06','2017-02-20 21:43:06'),(3,'Biblioteca','Bibliotecas de la universidad','2017-03-08 01:28:24','2017-03-08 01:28:24'),(4,'Canchas Deportivas','Canchas de futbol, basquet o cualquier otro tipo de cancha','2017-03-08 01:29:12','2017-03-08 01:29:12'),(5,'Administrativo','Todo tipo de establecimiento administrativo como ser Rectorado, vicerrectorado, Dubs, etc','2017-03-08 01:30:06','2017-03-08 01:30:06');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `establecimientos`
--

DROP TABLE IF EXISTS `establecimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `establecimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `numeracion` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `informacion` varchar(255) DEFAULT NULL,
  `latitud` varchar(255) DEFAULT NULL,
  `longitud` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `categorium_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `avatar_file_name` varchar(255) DEFAULT NULL,
  `avatar_content_type` varchar(255) DEFAULT NULL,
  `avatar_file_size` int(11) DEFAULT NULL,
  `avatar_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `establecimientos`
--

LOCK TABLES `establecimientos` WRITE;
/*!40000 ALTER TABLE `establecimientos` DISABLE KEYS */;
INSERT INTO `establecimientos` VALUES (1,'Modulo 236','236','236','Modulo de la Facultad de Cs de la computacion y telecomunicaciones','-17.776146','-63.195082','',1,'2017-02-20 22:09:10','2017-03-29 18:58:10','DSC_1417.JPG','image/jpeg',3489644,'2017-03-29 17:58:14'),(5,'Lab. Ing. Civil','221','221','Laboratorio de Ingenieria Civil','-17.773637','-63.194682',NULL,1,'2017-03-08 01:49:24','2017-03-29 19:01:58','DSC_1429.JPG','image/jpeg',2651566,'2017-03-29 17:58:40'),(6,'Modulo 220','220','220','Modulo 220','-17.773676','-63.194966',NULL,1,'2017-03-08 01:53:46','2017-03-08 02:15:02',NULL,NULL,NULL,NULL),(7,'Archivo Central','231','231','Editorial Universitaria - Archivo Central Ex oficinas de la FICCT','-17.773458','-63.195624',NULL,1,'2017-03-08 01:55:41','2017-03-29 19:06:59',NULL,NULL,NULL,NULL),(8,'Modulo 201','201','216','Instalaciones Publicas y unidades administrativas de la UAGRM','-17.774742','-63.193497',NULL,1,'2017-03-08 02:03:14','2017-03-29 18:57:01','DSC_1429.JPG','image/jpeg',2651566,'2017-03-29 17:59:37'),(9,'Modulo 202','202','202','Facultad de Politecnica','-17.775572','-63.193684',NULL,1,'2017-03-08 02:04:50','2017-03-29 19:08:22',NULL,NULL,NULL,NULL),(10,'Módulo 212','212','212','Modulo 212','-17.775579','-63.194295',NULL,1,'2017-03-08 02:20:05','2017-03-29 19:41:13','DSC_1422.JPG','image/jpeg',3260327,'2017-03-29 19:38:36'),(11,'Modulo 223','223','224','Facultad de Politecnica','-17.774839','-63.194511',NULL,1,'2017-03-08 02:22:07','2017-03-08 02:22:07',NULL,NULL,NULL,NULL),(12,'Fc. Contaduría Pública','213','213','Modulo 213 Facultad de Auditoria Financiera y Contaduria Publica','-17.776210','-63.194160',NULL,1,'2017-03-08 02:24:13','2017-03-29 19:24:45','DSC_1421.JPG','image/jpeg',3208433,'2017-03-29 19:24:44'),(13,'Modulo 224','224','228','Módulos de la Facultad de Tecnologia','-17.775276','-63.194463',NULL,1,'2017-03-08 02:29:49','2017-03-29 19:26:38','DSC_1419.JPG','image/jpeg',2996655,'2017-03-29 19:26:37'),(14,'Tecnología','244','244','Oficianes centrales de la Facultad de Tecnologia','-17.775465','-63.195578',NULL,1,'2017-03-08 02:32:58','2017-03-29 19:29:08','DSC_1424.JPG','image/jpeg',3492291,'2017-03-29 19:29:08'),(15,'Biblioteca Tecnologia','234','234','Biblioteca de la facultad de tecnologia','-17.775154','-63.195054',NULL,3,'2017-03-08 02:34:30','2017-03-29 19:31:53','DSC_1425.JPG','image/jpeg',3274159,'2017-03-29 19:31:52'),(16,'Modulo 125','125','125','Centro de Investigaciones FICCT','-17.778835','-63.190411',NULL,1,'2017-03-08 02:36:05','2017-03-08 02:36:05',NULL,NULL,NULL,NULL),(17,'Modulo 124','124','124','Modulo Campus 124','-17.778663','-63.190408',NULL,1,'2017-03-08 02:36:43','2017-03-08 17:55:19',NULL,NULL,NULL,NULL),(18,'Postgrado Tecnologia','','','Escuela de Postgrado de tecnologia','-17.7782165','-63.1905441',NULL,5,'2017-03-08 02:42:56','2017-03-08 02:42:56',NULL,NULL,NULL,NULL),(19,'Registro y admisiones','','','Departamento de Registro y Admisiones','-17.777501','-63.190509',NULL,5,'2017-03-08 02:43:41','2017-03-08 02:43:41',NULL,NULL,NULL,NULL),(20,'El Caballito','','Caballito','El caballito universitario, un punto de encuentro usado por los estudiantes','-17.777923','-63.190559',NULL,1,'2017-03-08 02:46:56','2017-03-08 02:46:56',NULL,NULL,NULL,NULL),(21,'Modulo 211','211','218','Modulo 211 Tambien llamado 218','-17.774208','-63.194051',NULL,1,'2017-03-29 19:50:32','2017-03-29 19:58:15','DSC_1428.JPG','image/jpeg',3111778,'2017-03-29 19:50:31'),(22,'Celina','111','111','Edificio Celina','-17.7755273','-63.1832022',NULL,1,'2017-03-29 21:52:07','2017-03-29 21:52:07','DSC_1426.JPG','image/jpeg',2581596,'2017-03-29 21:52:06'),(23,'Casa Frente','001','001','Test','-17.8512268','-63.260657',NULL,1,'2017-03-30 02:28:10','2017-03-30 02:28:10','DSC_1426.JPG','image/jpeg',2581596,'2017-03-30 02:28:09');
/*!40000 ALTER TABLE `establecimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `contenido` varchar(255) DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `hora` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multimedia`
--

DROP TABLE IF EXISTS `multimedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multimedia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multimedia`
--

LOCK TABLES `multimedia` WRITE;
/*!40000 ALTER TABLE `multimedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `multimedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20170212200557'),('20170214013533'),('20170214020004'),('20170214024054'),('20170215224544'),('20170220214521'),('20170228015529'),('20170228015630');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'acarroyo94@gmail.com','$2a$11$AphRopNv/GPESdqp74yhhO29CEAtuRCOniTJ44gvWjS74s0RNXwAC',NULL,NULL,NULL,22,'2017-03-30 12:49:24','2017-03-30 01:44:18','127.0.0.1','192.168.43.16','2017-02-20 21:41:27','2017-03-30 12:49:24',NULL,NULL,NULL,NULL);
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

-- Dump completed on 2017-03-30 11:56:08
