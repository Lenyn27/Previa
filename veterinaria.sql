-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: veterinaria
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card` (
  `idcard` int NOT NULL,
  `id_Mascota` int NOT NULL,
  `nombre_mascota` varchar(25) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `sexo` varchar(15) DEFAULT NULL,
  `especie` varchar(25) DEFAULT NULL,
  `raza` varchar(25) DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `color_masc` varchar(15) DEFAULT NULL,
  `fecha_vacunacion` date DEFAULT NULL,
  `tipo_vacuna` varchar(25) DEFAULT NULL,
  `observaciones` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idcard`),
  KEY `id_Mascota` (`id_Mascota`),
  CONSTRAINT `card_ibfk_1` FOREIGN KEY (`id_Mascota`) REFERENCES `mascotas` (`idmascota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES (1,1,'Zeus',4,'Macho','Perro','Grandanes',54,'negro','2002-03-22','general','ninguna'),(2,1,'Pelusa',10,'Hembra','Perro','chihuahua',4,'rubio alvino','2002-04-22','general','tiene tos'),(3,2,'Patitas',9,'Hembra','Gato','Abisinio',6,'marron','2002-05-22','general','ninguna'),(4,3,'cheyco',8,'Macho','Perro','Chusco',12,'negraso','2002-06-22','general','ninguna'),(5,4,'Michifus',1,'Macho','gato','Balines',3,'Anaranjado','2002-07-22','general','ninguna'),(6,5,'tomas',10,'Macho','gato','chuscofino',7,'gris','2002-08-22','general','ninguna'),(7,5,'Felipe',6,'Macho','ave','loro',1,'verde','2002-09-22','general','caidaplumas ');
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascotas`
--

DROP TABLE IF EXISTS `mascotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mascotas` (
  `idmascota` int NOT NULL,
  `id_Propietario` int NOT NULL,
  `nombre_mascota` varchar(25) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `sexo` varchar(15) DEFAULT NULL,
  `especie` varchar(25) DEFAULT NULL,
  `raza` varchar(25) DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `color_masc` varchar(15) DEFAULT NULL,
  `vacunaciones` date DEFAULT NULL,
  PRIMARY KEY (`idmascota`),
  KEY `id_Propietario` (`id_Propietario`),
  CONSTRAINT `mascotas_ibfk_1` FOREIGN KEY (`id_Propietario`) REFERENCES `propietarios` (`idpropietario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascotas`
--

LOCK TABLES `mascotas` WRITE;
/*!40000 ALTER TABLE `mascotas` DISABLE KEYS */;
INSERT INTO `mascotas` VALUES (1,1,'Zeus',4,'Macho','Perro','Grandanes',54,'negro','2002-03-22'),(2,1,'Pelusa',10,'Hembra','Perro','chihuahua',4,'rubio alvino','2002-04-22'),(3,2,'Patitas',9,'Hembra','Gato','Abisinio',6,'marron','2002-05-22'),(4,3,'cheyco',8,'Macho','Perro','Chusco',12,'negraso','2002-06-22'),(5,4,'Michifus',1,'Macho','gato','Balines',3,'Anaranjado','2002-07-22'),(6,5,'tomas',10,'Macho','gato','chuscofino',7,'gris','2002-08-22'),(7,5,'Felipe',6,'Macho','ave','loro',1,'verde','2002-09-22');
/*!40000 ALTER TABLE `mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoveterinario`
--

DROP TABLE IF EXISTS `medicoveterinario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicoveterinario` (
  `idveterinario` int NOT NULL AUTO_INCREMENT,
  `nombre_veterinario` varchar(25) DEFAULT NULL,
  `apellido_veterinario` varchar(25) DEFAULT NULL,
  `celular` int DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `especialidad` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idveterinario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoveterinario`
--

LOCK TABLES `medicoveterinario` WRITE;
/*!40000 ALTER TABLE `medicoveterinario` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicoveterinario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietarios`
--

DROP TABLE IF EXISTS `propietarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propietarios` (
  `idpropietario` int NOT NULL,
  `nombre_propi` varchar(25) DEFAULT NULL,
  `apellido_propi` varchar(25) DEFAULT NULL,
  `direccion` varchar(25) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `celular` int DEFAULT NULL,
  PRIMARY KEY (`idpropietario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietarios`
--

LOCK TABLES `propietarios` WRITE;
/*!40000 ALTER TABLE `propietarios` DISABLE KEYS */;
INSERT INTO `propietarios` VALUES (1,'Alex','Winster','jr.la mauta 203','Alex@gmail.com',963852741),(2,'Martin','Perrez','jr.lima 2003','Martiper01@gmail.com',987654321),(3,'Lucho','Palacios','jr.la punta 207','Lucho@gmail.com',951632874),(4,'Milka','Rojas','jr.colectora 103','Milka@gmail.com',985263145),(5,'Ino','Acosta','jr.Alameda 301','Ino@gmail.com',987415623);
/*!40000 ALTER TABLE `propietarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 19:00:50
