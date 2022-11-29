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
-- Table structure for table `altura`
--

DROP TABLE IF EXISTS `altura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `altura` (
  `idalturaValor` int NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idalturaValor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `altura`
--

LOCK TABLES `altura` WRITE;
/*!40000 ALTER TABLE `altura` DISABLE KEYS */;
/*!40000 ALTER TABLE `altura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autoservicio`
--

DROP TABLE IF EXISTS `autoservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autoservicio` (
  `idautoservicio` int NOT NULL,
  `disponibilidad` varchar(45) NOT NULL,
  PRIMARY KEY (`idautoservicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoservicio`
--

LOCK TABLES `autoservicio` WRITE;
/*!40000 ALTER TABLE `autoservicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `autoservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colorlinea`
--

DROP TABLE IF EXISTS `colorlinea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colorlinea` (
  `idcolorlinea` int NOT NULL,
  `nombrecolor` varchar(45) NOT NULL,
  PRIMARY KEY (`idcolorlinea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colorlinea`
--

LOCK TABLES `colorlinea` WRITE;
/*!40000 ALTER TABLE `colorlinea` DISABLE KEYS */;
/*!40000 ALTER TABLE `colorlinea` ENABLE KEYS */;
UNLOCK TABLES;

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
  `materialCorte_idmaterialCorte1` int NOT NULL,
  PRIMARY KEY (`idCorteLaser`),
  KEY `fk_CorteLaser_NuevoTipoServicio1_idx` (`NuevoTipoServicio_idNuevoTipoServicio`),
  KEY `fk_CorteLaser_CostoServicio1_idx` (`CostoServicio_idCostoServicio`),
  KEY `fk_CorteLaser_TiempoRealizacion1_idx` (`TiempoRealizacion_idTiempoRealizacion`),
  KEY `fk_cortelaser_materialCorte1_idx` (`materialCorte_idmaterialCorte1`),
  CONSTRAINT `fk_CorteLaser_CostoServicio1` FOREIGN KEY (`CostoServicio_idCostoServicio`) REFERENCES `costoservicio` (`idCostoServicio`),
  CONSTRAINT `fk_cortelaser_materialCorte1` FOREIGN KEY (`materialCorte_idmaterialCorte1`) REFERENCES `materialcorte` (`idmaterialCorte`),
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
-- Table structure for table `densidadvalor`
--

DROP TABLE IF EXISTS `densidadvalor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `densidadvalor` (
  `iddensidadValor` int NOT NULL,
  `valor` int NOT NULL,
  PRIMARY KEY (`iddensidadValor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `densidadvalor`
--

LOCK TABLES `densidadvalor` WRITE;
/*!40000 ALTER TABLE `densidadvalor` DISABLE KEYS */;
/*!40000 ALTER TABLE `densidadvalor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimensiones`
--

DROP TABLE IF EXISTS `dimensiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimensiones` (
  `iddimensiones` int NOT NULL,
  `ancho` int NOT NULL,
  `alto` int NOT NULL,
  `cortelaser_idCorteLaser` int NOT NULL,
  PRIMARY KEY (`iddimensiones`),
  KEY `fk_dimensiones_cortelaser1_idx` (`cortelaser_idCorteLaser`),
  CONSTRAINT `fk_dimensiones_cortelaser1` FOREIGN KEY (`cortelaser_idCorteLaser`) REFERENCES `cortelaser` (`idCorteLaser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimensiones`
--

LOCK TABLES `dimensiones` WRITE;
/*!40000 ALTER TABLE `dimensiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `dimensiones` ENABLE KEYS */;
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
  `resolucion_idresolucion1` int NOT NULL,
  PRIMARY KEY (`idEscaneoDigital3D`),
  KEY `fk_EscaneoDigital3D_NuevoTipoServicio1_idx` (`NuevoTipoServicio_idNuevoTipoServicio`),
  KEY `fk_EscaneoDigital3D_CostoServicio1_idx` (`CostoServicio_idCostoServicio`),
  KEY `fk_EscaneoDigital3D_TiempoRealizacion1_idx` (`TiempoRealizacion_idTiempoRealizacion`),
  KEY `fk_escaneodigital3d_resolucion1_idx` (`resolucion_idresolucion1`),
  CONSTRAINT `fk_EscaneoDigital3D_CostoServicio1` FOREIGN KEY (`CostoServicio_idCostoServicio`) REFERENCES `costoservicio` (`idCostoServicio`),
  CONSTRAINT `fk_EscaneoDigital3D_NuevoTipoServicio1` FOREIGN KEY (`NuevoTipoServicio_idNuevoTipoServicio`) REFERENCES `nuevotiposervicio` (`idNuevoTipoServicio`),
  CONSTRAINT `fk_escaneodigital3d_resolucion1` FOREIGN KEY (`resolucion_idresolucion1`) REFERENCES `resolucion` (`idresolucion`),
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
-- Table structure for table `grosorcorte`
--

DROP TABLE IF EXISTS `grosorcorte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grosorcorte` (
  `idgrosorCorte` int NOT NULL,
  `nombregrosor` varchar(45) NOT NULL,
  `cortelaser_idCorteLaser` int NOT NULL,
  PRIMARY KEY (`idgrosorCorte`),
  KEY `fk_grosorCorte_cortelaser1_idx` (`cortelaser_idCorteLaser`),
  CONSTRAINT `fk_grosorCorte_cortelaser1` FOREIGN KEY (`cortelaser_idCorteLaser`) REFERENCES `cortelaser` (`idCorteLaser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grosorcorte`
--

LOCK TABLES `grosorcorte` WRITE;
/*!40000 ALTER TABLE `grosorcorte` DISABLE KEYS */;
/*!40000 ALTER TABLE `grosorcorte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grosorimpresion`
--

DROP TABLE IF EXISTS `grosorimpresion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grosorimpresion` (
  `idGrosorImpresion` int NOT NULL,
  `valor` varchar(45) NOT NULL,
  PRIMARY KEY (`idGrosorImpresion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grosorimpresion`
--

LOCK TABLES `grosorimpresion` WRITE;
/*!40000 ALTER TABLE `grosorimpresion` DISABLE KEYS */;
/*!40000 ALTER TABLE `grosorimpresion` ENABLE KEYS */;
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
  `altura_idalturaValor1` int NOT NULL,
  `materialImpresion_idmaterialImpresion` int NOT NULL,
  `autoservicio_idautoservicio1` int NOT NULL,
  `densidadValor_iddensidadValor1` int NOT NULL,
  `GrosorImpresion_idGrosorImpresion` int NOT NULL,
  PRIMARY KEY (`idImpresion3D`),
  KEY `fk_Impresion3D_NuevoTipoServicio1_idx` (`NuevoTipoServicio_idNuevoTipoServicio`),
  KEY `fk_Impresion3D_CostoServicio1_idx` (`CostoServicio_idCostoServicio`),
  KEY `fk_Impresion3D_TiempoRealizacion1_idx` (`TiempoRealizacion_idTiempoRealizacion`),
  KEY `fk_impresion3d_altura1_idx` (`altura_idalturaValor1`),
  KEY `fk_impresion3d_materialImpresion1_idx` (`materialImpresion_idmaterialImpresion`),
  KEY `fk_impresion3d_autoservicio1_idx` (`autoservicio_idautoservicio1`),
  KEY `fk_impresion3d_densidadValor1_idx` (`densidadValor_iddensidadValor1`),
  KEY `fk_impresion3d_GrosorImpresion1_idx` (`GrosorImpresion_idGrosorImpresion`),
  CONSTRAINT `fk_impresion3d_altura1` FOREIGN KEY (`altura_idalturaValor1`) REFERENCES `altura` (`idalturaValor`),
  CONSTRAINT `fk_impresion3d_autoservicio1` FOREIGN KEY (`autoservicio_idautoservicio1`) REFERENCES `autoservicio` (`idautoservicio`),
  CONSTRAINT `fk_Impresion3D_CostoServicio1` FOREIGN KEY (`CostoServicio_idCostoServicio`) REFERENCES `costoservicio` (`idCostoServicio`),
  CONSTRAINT `fk_impresion3d_densidadValor1` FOREIGN KEY (`densidadValor_iddensidadValor1`) REFERENCES `densidadvalor` (`iddensidadValor`),
  CONSTRAINT `fk_impresion3d_GrosorImpresion1` FOREIGN KEY (`GrosorImpresion_idGrosorImpresion`) REFERENCES `grosorimpresion` (`idGrosorImpresion`),
  CONSTRAINT `fk_impresion3d_materialImpresion1` FOREIGN KEY (`materialImpresion_idmaterialImpresion`) REFERENCES `materialimpresion` (`idmaterialImpresion`),
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
-- Table structure for table `materialcorte`
--

DROP TABLE IF EXISTS `materialcorte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materialcorte` (
  `idmaterialCorte` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idmaterialCorte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialcorte`
--

LOCK TABLES `materialcorte` WRITE;
/*!40000 ALTER TABLE `materialcorte` DISABLE KEYS */;
/*!40000 ALTER TABLE `materialcorte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialimpresion`
--

DROP TABLE IF EXISTS `materialimpresion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materialimpresion` (
  `idmaterialImpresion` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idmaterialImpresion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialimpresion`
--

LOCK TABLES `materialimpresion` WRITE;
/*!40000 ALTER TABLE `materialimpresion` DISABLE KEYS */;
/*!40000 ALTER TABLE `materialimpresion` ENABLE KEYS */;
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
-- Table structure for table `resolucion`
--

DROP TABLE IF EXISTS `resolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resolucion` (
  `idresolucion` int NOT NULL,
  `resolucion` varchar(45) NOT NULL,
  PRIMARY KEY (`idresolucion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resolucion`
--

LOCK TABLES `resolucion` WRITE;
/*!40000 ALTER TABLE `resolucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `resolucion` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'adrian','lopez','a@pucp.pe','adrian',1),(2,'angie','alejandro','angie@pucp.edu.pe','angie',2);
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
INSERT INTO `usuario_credentials` VALUES ('a@pucp.edu.pe','adrian','40985a72e8e05e30d232752d483ac8db04226d36631dd',1),('angie@pucp.edu.pe','angie','7d89a830019c2f064ea961173e339a6d576e11a6be3af',2);
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

-- Dump completed on 2022-11-29 13:58:24
