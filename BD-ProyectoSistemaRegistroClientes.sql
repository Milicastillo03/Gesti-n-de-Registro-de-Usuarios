-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemaregistroclientes
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `id_Administrador` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  PRIMARY KEY (`id_Administrador`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'Mili2903','1234');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_Clientes` int NOT NULL AUTO_INCREMENT,
  `dni` varchar(30) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_Clientes`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'88635282','Milagros','Castillo','987387163','2024-11-09 18:04:34'),(2,'44982365','Mario','Peña','3705031574','2024-11-09 19:05:37'),(3,'29896737','Marcial','Aquino','3704555','2024-11-13 14:00:34'),(4,'220987','Lucia','Cardozo','37046789','2024-11-13 14:15:21'),(5,'2222','Marcelo','Castillo','3704714835','2024-11-13 14:22:42'),(6,'123456789','Camila','Perez','37059221','2024-11-13 14:29:45');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cobro`
--

DROP TABLE IF EXISTS `cobro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cobro` (
  `id_Cobro` int NOT NULL AUTO_INCREMENT,
  `clientes` varchar(50) DEFAULT NULL,
  `maquinas` varchar(50) DEFAULT NULL,
  `reparacion` varchar(50) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_Cobro`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cobro`
--

LOCK TABLES `cobro` WRITE;
/*!40000 ALTER TABLE `cobro` DISABLE KEYS */;
INSERT INTO `cobro` VALUES (1,'Milagros','Maquina Informacion','Reparacion Informacion',15000.00,'2024-11-12 19:46:25'),(2,'Milagros','Maquina Informacion','Reparacion Informacion',10000.00,'2024-11-12 19:53:31'),(3,'Milagros','Maquina Informacion','Reparacion Informacion',15000.00,'2024-11-12 22:22:09'),(4,'Milagros','Maquina Informacion','Reparacion Informacion',15000.00,'2024-11-12 22:25:28'),(5,'Milagros','Maquina Informacion','Reparacion Informacion',60000.00,'2024-11-12 22:54:09'),(6,'','Maquina Informacion','Reparacion Informacion',50000.00,'2024-11-13 03:10:25'),(7,'Milagros','Maquina Informacion','Reparacion Informacion',50000.00,'2024-11-13 03:11:52'),(8,'Milagros','Maquina Informacion','Reparacion Informacion',50000.00,'2024-11-13 03:13:44'),(9,'Milagros','Maquina Informacion','Reparacion Informacion',50000.00,'2024-11-13 03:14:59'),(10,'Milagros','Maquina Informacion','Reparacion Informacion',10000.00,'2024-11-13 03:18:10'),(11,'Milagros','Maquina Informacion','Reparacion Informacion',0.00,'2024-11-13 03:24:50'),(12,'Mario','Maquina Informacion','Reparacion Informacion',10000.00,'2024-11-13 03:35:36'),(13,'Lucia','Maquina Informacion','Reparacion Informacion',8000.00,'2024-11-13 14:17:30');
/*!40000 ALTER TABLE `cobro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuracion`
--

DROP TABLE IF EXISTS `configuracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuracion` (
  `id_Configuracion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_Configuracion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracion`
--

LOCK TABLES `configuracion` WRITE;
/*!40000 ALTER TABLE `configuracion` DISABLE KEYS */;
INSERT INTO `configuracion` VALUES (1,'Bobinados Castillo','Empresa dedicada a la reparación de maquinaria','3705031574','Salta 5135, Formosa Capital'),(2,'Bobinados Castillo','Empresa dedicada a la reparación de maquinaria','3705031574','Salta 5135, Formosa Capital');
/*!40000 ALTER TABLE `configuracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle`
--

DROP TABLE IF EXISTS `detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle` (
  `id_Detalle` int NOT NULL AUTO_INCREMENT,
  `codigo_Reparacion` varchar(100) NOT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `id_Cobros` int DEFAULT NULL,
  PRIMARY KEY (`id_Detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle`
--

LOCK TABLES `detalle` WRITE;
/*!40000 ALTER TABLE `detalle` DISABLE KEYS */;
INSERT INTO `detalle` VALUES (1,'1234','1',10000.00,1),(2,'12','1',5000.00,1),(3,'1234','1',10000.00,1),(4,'1','1',5000.00,1),(5,'1234','1',10000.00,0),(6,'1','1',50000.00,0),(7,'1','1',50000.00,0),(8,'1','1',50000.00,0),(9,'1','1',50000.00,0),(10,'1','1',50000.00,1),(11,'1','1',10000.00,1),(12,'1','1',0.00,0),(13,'1','1',10000.00,0),(14,'1','1',8000.00,0);
/*!40000 ALTER TABLE `detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maquinas`
--

DROP TABLE IF EXISTS `maquinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maquinas` (
  `id_Maquinas` int NOT NULL AUTO_INCREMENT,
  `clientes` int DEFAULT NULL,
  `Numero_de_serie` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_Maquinas`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maquinas`
--

LOCK TABLES `maquinas` WRITE;
/*!40000 ALTER TABLE `maquinas` DISABLE KEYS */;
INSERT INTO `maquinas` VALUES (1,1,'830e','bosch','amoladora','1'),(2,88635282,'983h','bosch','amoladora','1'),(3,1,'jncejd3','bosch','amoladora','1'),(4,1,'jncejd3','bosch','amoladora','1'),(5,88635282,'98237h','Bosch','amoladaora','1'),(6,1,'98237h','Bosch','amoladaora','1'),(7,1,'82e2','bosch','amoladora','1'),(8,1,'82e2','bosch','amoladora','1'),(9,1,'82e2','bosch','amoladora','1'),(10,1,'82e2','bosch','amoladora','1'),(11,1,'82e2','bosch','amoladora','1'),(12,1,'82e2','bosch','amoladora','1'),(13,1,'82e2','bosch','amoladora','1'),(14,1,'82e2','bosch','amoladora','1'),(15,1,'82e2','bosch','amoladora','1'),(16,1,'82e2','bosch','amoladora','1'),(17,1,'82e2','bosch','amoladora','1'),(18,2,'sjcwjfe','kdnfcvlk','lkcjldsi','1'),(19,2,'fghrt4','Dewalt','rotomartillo','4'),(20,2,'983h','Total','taladro','3'),(21,2,'983h','Total','Cierra Circular','5'),(22,2,'983h','Powertec','taladro','4'),(23,1,'123','Sthill','percutor','3'),(24,3,'111','Makita','Cierra','1'),(25,4,'1010','Brisa','Plancha','0'),(26,5,'1234567','Makita','amoladora','2'),(27,6,'0987','Liliana','Ventilador','0');
/*!40000 ALTER TABLE `maquinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reparacion`
--

DROP TABLE IF EXISTS `reparacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reparacion` (
  `id_Reparacion` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `descripcion` text,
  `precio` decimal(10,2) NOT NULL,
  `maquinas` int DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_Reparacion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reparacion`
--

LOCK TABLES `reparacion` WRITE;
/*!40000 ALTER TABLE `reparacion` DISABLE KEYS */;
INSERT INTO `reparacion` VALUES (1,'1234','REPARADO','Cambio de llave',10000.00,1,'2024-11-11 14:26:12'),(3,'12345','NO REPARADO','No se consigue repuesto',0.00,2,'2024-11-11 20:37:22'),(4,'12','REPARADO','Carbones',5000.00,3,'2024-11-11 21:00:54'),(5,'123','REPARADO','Carbones',50000.00,4,'2024-11-11 21:11:49'),(6,'555','NO REPARADO','Carcaza Rota',0.00,5,'2024-11-11 22:25:54'),(7,'1111','REPARADO','Bobinado',55000.00,24,'2024-11-13 14:02:40'),(8,'222','REPARADO','fusible',8000.00,25,'2024-11-13 14:16:42'),(9,'00001','REPARADO','Campo',20000.00,26,'2024-11-13 14:24:08'),(10,'00002','REPARADO','Limpieza',6000.00,27,'2024-11-13 14:31:01');
/*!40000 ALTER TABLE `reparacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-14 10:29:35
