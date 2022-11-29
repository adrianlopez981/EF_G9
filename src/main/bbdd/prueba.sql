-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: sala_veo
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `cortelaser`
--

DROP TABLE IF EXISTS `cortelaser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cortelaser` (
  `idCorteLaser` int NOT NULL AUTO_INCREMENT,
  `url_imagen` varchar(45) NOT NULL,
  `NuevoTipoServicio_idNuevoTipoServicio` int DEFAULT NULL,
  `CostoServicio_idCostoServicio` int DEFAULT NULL,
  `TiempoRealizacion_idTiempoRealizacion` int DEFAULT NULL,
  `dimensiones_iddimensiones` int NOT NULL,
  `materialCorte_idmaterialCorte` int NOT NULL,
  `grosorCorte_idgrosorCorte` int NOT NULL,
  `colorlinea_idcolorlinea` int NOT NULL,
  PRIMARY KEY (`idCorteLaser`),
  KEY `fk_CorteLaser_NuevoTipoServicio1_idx` (`NuevoTipoServicio_idNuevoTipoServicio`),
  KEY `fk_CorteLaser_CostoServicio1_idx` (`CostoServicio_idCostoServicio`),
  KEY `fk_CorteLaser_TiempoRealizacion1_idx` (`TiempoRealizacion_idTiempoRealizacion`),
  KEY `fk_cortelaser_dimensiones1_idx` (`dimensiones_iddimensiones`),
  KEY `fk_cortelaser_materialCorte1_idx` (`materialCorte_idmaterialCorte`),
  KEY `fk_cortelaser_grosorCorte1_idx` (`grosorCorte_idgrosorCorte`),
  KEY `fk_cortelaser_colorlinea1_idx` (`colorlinea_idcolorlinea`),
  CONSTRAINT `fk_cortelaser_colorlinea1` FOREIGN KEY (`colorlinea_idcolorlinea`) REFERENCES `mydb`.`colorlinea` (`idcolorlinea`),
  CONSTRAINT `fk_CorteLaser_CostoServicio1` FOREIGN KEY (`CostoServicio_idCostoServicio`) REFERENCES `costoservicio` (`idCostoServicio`),
  CONSTRAINT `fk_cortelaser_dimensiones1` FOREIGN KEY (`dimensiones_iddimensiones`) REFERENCES `mydb`.`dimensiones` (`iddimensiones`),
  CONSTRAINT `fk_cortelaser_grosorCorte1` FOREIGN KEY (`grosorCorte_idgrosorCorte`) REFERENCES `mydb`.`grosorcorte` (`idgrosorCorte`),
  CONSTRAINT `fk_cortelaser_materialCorte1` FOREIGN KEY (`materialCorte_idmaterialCorte`) REFERENCES `mydb`.`materialcorte` (`idmaterialCorte`),
  CONSTRAINT `fk_CorteLaser_NuevoTipoServicio1` FOREIGN KEY (`NuevoTipoServicio_idNuevoTipoServicio`) REFERENCES `nuevotiposervicio` (`idNuevoTipoServicio`),
  CONSTRAINT `fk_CorteLaser_TiempoRealizacion1` FOREIGN KEY (`TiempoRealizacion_idTiempoRealizacion`) REFERENCES `tiemporealizacion` (`idTiempoRealizacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cortelaser`
--

LOCK TABLES `cortelaser` WRITE;
/*!40000 ALTER TABLE `cortelaser` DISABLE KEYS */;
/*!40000 ALTER TABLE `cortelaser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costoservicio`
--

DROP TABLE IF EXISTS `costoservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `costoservicio` (
  `idCostoServicio` int NOT NULL AUTO_INCREMENT,
  `total_costo` int NOT NULL,
  PRIMARY KEY (`idCostoServicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costoservicio`
--

LOCK TABLES `costoservicio` WRITE;
/*!40000 ALTER TABLE `costoservicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `costoservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escaneodigital3d`
--

DROP TABLE IF EXISTS `escaneodigital3d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escaneodigital3d` (
  `idEscaneoDigital3D` int NOT NULL AUTO_INCREMENT,
  `largo` decimal(10,0) NOT NULL,
  `ancho` decimal(10,0) NOT NULL,
  `altura` decimal(10,0) NOT NULL,
  `NuevoTipoServicio_idNuevoTipoServicio` int DEFAULT NULL,
  `CostoServicio_idCostoServicio` int DEFAULT NULL,
  `TiempoRealizacion_idTiempoRealizacion` int DEFAULT NULL,
  `resolucion_idresolucion` int NOT NULL,
  PRIMARY KEY (`idEscaneoDigital3D`),
  KEY `fk_EscaneoDigital3D_NuevoTipoServicio1_idx` (`NuevoTipoServicio_idNuevoTipoServicio`),
  KEY `fk_EscaneoDigital3D_CostoServicio1_idx` (`CostoServicio_idCostoServicio`),
  KEY `fk_EscaneoDigital3D_TiempoRealizacion1_idx` (`TiempoRealizacion_idTiempoRealizacion`),
  KEY `fk_escaneodigital3d_resolucion1_idx` (`resolucion_idresolucion`),
  CONSTRAINT `fk_EscaneoDigital3D_CostoServicio1` FOREIGN KEY (`CostoServicio_idCostoServicio`) REFERENCES `costoservicio` (`idCostoServicio`),
  CONSTRAINT `fk_EscaneoDigital3D_NuevoTipoServicio1` FOREIGN KEY (`NuevoTipoServicio_idNuevoTipoServicio`) REFERENCES `nuevotiposervicio` (`idNuevoTipoServicio`),
  CONSTRAINT `fk_escaneodigital3d_resolucion1` FOREIGN KEY (`resolucion_idresolucion`) REFERENCES `mydb`.`resolucion` (`idresolucion`),
  CONSTRAINT `fk_EscaneoDigital3D_TiempoRealizacion1` FOREIGN KEY (`TiempoRealizacion_idTiempoRealizacion`) REFERENCES `tiemporealizacion` (`idTiempoRealizacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escaneodigital3d`
--

LOCK TABLES `escaneodigital3d` WRITE;
/*!40000 ALTER TABLE `escaneodigital3d` DISABLE KEYS */;
/*!40000 ALTER TABLE `escaneodigital3d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impresion3d`
--

DROP TABLE IF EXISTS `impresion3d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `impresion3d` (
  `idImpresion3D` int NOT NULL AUTO_INCREMENT,
  `url_imagen` varchar(45) NOT NULL,
  `NuevoTipoServicio_idNuevoTipoServicio` int DEFAULT NULL,
  `CostoServicio_idCostoServicio` int DEFAULT NULL,
  `TiempoRealizacion_idTiempoRealizacion` int DEFAULT NULL,
  `grosor_idgrosor` int NOT NULL,
  `densidadValor_iddensidadValor` int NOT NULL,
  `altura_idalturaValor` int NOT NULL,
  `autoservicio_idautoservicio` int NOT NULL,
  PRIMARY KEY (`idImpresion3D`),
  KEY `fk_Impresion3D_NuevoTipoServicio1_idx` (`NuevoTipoServicio_idNuevoTipoServicio`),
  KEY `fk_Impresion3D_CostoServicio1_idx` (`CostoServicio_idCostoServicio`),
  KEY `fk_Impresion3D_TiempoRealizacion1_idx` (`TiempoRealizacion_idTiempoRealizacion`),
  KEY `fk_impresion3d_grosor1_idx` (`grosor_idgrosor`),
  KEY `fk_impresion3d_densidadValor1_idx` (`densidadValor_iddensidadValor`),
  KEY `fk_impresion3d_altura1_idx` (`altura_idalturaValor`),
  KEY `fk_impresion3d_autoservicio1_idx` (`autoservicio_idautoservicio`),
  CONSTRAINT `fk_impresion3d_altura1` FOREIGN KEY (`altura_idalturaValor`) REFERENCES `mydb`.`altura` (`idalturaValor`),
  CONSTRAINT `fk_impresion3d_autoservicio1` FOREIGN KEY (`autoservicio_idautoservicio`) REFERENCES `mydb`.`autoservicio` (`idautoservicio`),
  CONSTRAINT `fk_Impresion3D_CostoServicio1` FOREIGN KEY (`CostoServicio_idCostoServicio`) REFERENCES `costoservicio` (`idCostoServicio`),
  CONSTRAINT `fk_impresion3d_densidadValor1` FOREIGN KEY (`densidadValor_iddensidadValor`) REFERENCES `mydb`.`densidadvalor` (`iddensidadValor`),
  CONSTRAINT `fk_impresion3d_grosor1` FOREIGN KEY (`grosor_idgrosor`) REFERENCES `mydb`.`grosor` (`idgrosor`),
  CONSTRAINT `fk_Impresion3D_NuevoTipoServicio1` FOREIGN KEY (`NuevoTipoServicio_idNuevoTipoServicio`) REFERENCES `nuevotiposervicio` (`idNuevoTipoServicio`),
  CONSTRAINT `fk_Impresion3D_TiempoRealizacion1` FOREIGN KEY (`TiempoRealizacion_idTiempoRealizacion`) REFERENCES `tiemporealizacion` (`idTiempoRealizacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impresion3d`
--

LOCK TABLES `impresion3d` WRITE;
/*!40000 ALTER TABLE `impresion3d` DISABLE KEYS */;
/*!40000 ALTER TABLE `impresion3d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nuevotiposervicio`
--

DROP TABLE IF EXISTS `nuevotiposervicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nuevotiposervicio` (
  `idNuevoTipoServicio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idNuevoTipoServicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nuevotiposervicio`
--

LOCK TABLES `nuevotiposervicio` WRITE;
/*!40000 ALTER TABLE `nuevotiposervicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuevotiposervicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nuevotiposervicio_has_usuario`
--

DROP TABLE IF EXISTS `nuevotiposervicio_has_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nuevotiposervicio_has_usuario` (
  `NuevoTipoServicio_idNuevoTipoServicio` int NOT NULL,
  `Usuario_idUsuario` int NOT NULL,
  `idServicioxUsuario` varchar(45) NOT NULL,
  PRIMARY KEY (`idServicioxUsuario`),
  KEY `fk_NuevoTipoServicio_has_Usuario_Usuario1_idx` (`Usuario_idUsuario`),
  KEY `fk_NuevoTipoServicio_has_Usuario_NuevoTipoServicio1_idx` (`NuevoTipoServicio_idNuevoTipoServicio`),
  CONSTRAINT `fk_NuevoTipoServicio_has_Usuario_NuevoTipoServicio1` FOREIGN KEY (`NuevoTipoServicio_idNuevoTipoServicio`) REFERENCES `nuevotiposervicio` (`idNuevoTipoServicio`),
  CONSTRAINT `fk_NuevoTipoServicio_has_Usuario_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nuevotiposervicio_has_usuario`
--

LOCK TABLES `nuevotiposervicio_has_usuario` WRITE;
/*!40000 ALTER TABLE `nuevotiposervicio_has_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuevotiposervicio_has_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiemporealizacion`
--

DROP TABLE IF EXISTS `tiemporealizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tiemporealizacion` (
  `idTiempoRealizacion` int NOT NULL AUTO_INCREMENT,
  `totalTiempo` int NOT NULL,
  PRIMARY KEY (`idTiempoRealizacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiemporealizacion`
--

LOCK TABLES `tiemporealizacion` WRITE;
/*!40000 ALTER TABLE `tiemporealizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiemporealizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipousuario`
--

DROP TABLE IF EXISTS `tipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipousuario` (
  `idTipoUsuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipoUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipousuario`
--

LOCK TABLES `tipousuario` WRITE;
/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
INSERT INTO `tipousuario` VALUES (1,'interno'),(2,'externo');
/*!40000 ALTER TABLE `tipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `TipoUsuario_idTipoUsuario` int NOT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `fk_Usuario_TipoUsuario1_idx` (`TipoUsuario_idTipoUsuario`),
  CONSTRAINT `fk_Usuario_TipoUsuario1` FOREIGN KEY (`TipoUsuario_idTipoUsuario`) REFERENCES `tipousuario` (`idTipoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_credentials`
--

DROP TABLE IF EXISTS `usuario_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_credentials` (
  `correo` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `contraseña_hashed` varchar(45) NOT NULL,
  `usuario_idUsuario` int NOT NULL,
  PRIMARY KEY (`usuario_idUsuario`),
  CONSTRAINT `fk_usuario_credentials_usuario1` FOREIGN KEY (`usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_credentials`
--

LOCK TABLES `usuario_credentials` WRITE;
/*!40000 ALTER TABLE `usuario_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sala_veo'
--

--
-- Dumping routines for database 'sala_veo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-29 13:12:38
