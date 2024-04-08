CREATE DATABASE  IF NOT EXISTS `db_resolviendo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_resolviendo`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: db_resolviendo
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `id_comentario` int NOT NULL AUTO_INCREMENT,
  `id_pregunta` int NOT NULL,
  `id_usuario` int NOT NULL,
  `id_comentario_padre` int DEFAULT NULL,
  `comentario` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `id_pregunta` (`id_pregunta`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta` (`id_pregunta`),
  CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `id_curso` int NOT NULL AUTO_INCREMENT,
  `nombre_curso` varchar(255) NOT NULL,
  `descripcion` varchar(300) DEFAULT NULL,
  `id_universidad` int NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id_curso`),
  KEY `id_universidad` (`id_universidad`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`id_universidad`) REFERENCES `universidad` (`id_universidad`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Habilidad Verbal','Texto Generico sobre Habilidad Verbal',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(2,'Habilidad Logico Matemática','Texto Generico sobre Habilidad Logico Matemática',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(3,'Aritmética','Texto Generico sobre Aritmética',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(4,'Geometría','Texto Generico sobre Geometría',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(5,'Algebra','Texto Generico sobre Algebra',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(6,'Trigonometría','Texto Generico sobre Trigonometría',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(7,'Lenguaje','Texto Generico sobre Lenguaje',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(8,'Literatura','Texto Generico sobre Literatura',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(9,'Psicología','Texto Generico sobre',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(10,'Educación Cívica','Texto Generico sobre',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(11,'Historia del Perú','Texto Generico sobre',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(12,'Historia Universal','Texto Generico sobre',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(13,'Geografía','Texto Generico sobre',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(14,'Economía','Texto Generico sobre',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(15,'Filosofía','Texto Generico sobre',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(16,'Física','Texto Generico sobre',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(17,'Química','Texto Generico sobre',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(18,'Biología','Texto Generico sobre',1,'2023-10-27 07:57:15','2023-10-27 07:57:15');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id_login` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id_login`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregunta`
--

DROP TABLE IF EXISTS `pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pregunta` (
  `id_pregunta` int NOT NULL AUTO_INCREMENT,
  `enunciado` varchar(255) NOT NULL,
  `enunciado_imagen` varchar(255) DEFAULT NULL,
  `desarrollo` varchar(255) NOT NULL,
  `desarrollo_imagen` varchar(255) DEFAULT NULL,
  `id_tema` int NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id_pregunta`),
  KEY `id_tema` (`id_tema`),
  CONSTRAINT `pregunta_ibfk_1` FOREIGN KEY (`id_tema`) REFERENCES `tema` (`id_tema`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta`
--

LOCK TABLES `pregunta` WRITE;
/*!40000 ALTER TABLE `pregunta` DISABLE KEYS */;
INSERT INTO `pregunta` VALUES (1,'\"En el bosque, de aromas y de músicas lleno,la magnolia florece delicada y ligera cual vellón que en las zarzas enredado estuviera o cual copo de espuma sobre lago sereno\". A partir de los versos citados del poema «La magnolia», del peruano José Santos Ch',NULL,'En el verso “cual vellón que en las zarzas enredado estuviera” es una comparación o símil ya que se usa el conector cual para hacer la comparación explícita',NULL,1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(2,'En la tragedia Romeo y Julieta de William Shakespeare, dos importantes familias, los Capuleto y los Montesco, se enfrentan por el poder. Romeo, quien se ha prendado de Julieta, deberá enfrentarse a duelo con Teobaldo, por causa de la muerte de Mercucio. A',NULL,'En la tragedia Romeo y Julieta, el protagonista demuestra su lealtad hacia Mercucio cuando mata al culpable de su muerte, Teobaldo, el primo de Julieta.',NULL,2,'2023-10-27 07:57:15','2023-10-27 07:57:15');
/*!40000 ALTER TABLE `pregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuesta`
--

DROP TABLE IF EXISTS `respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respuesta` (
  `id_respuesta` int NOT NULL AUTO_INCREMENT,
  `id_pregunta` int NOT NULL,
  `respuesta` varchar(255) NOT NULL,
  `respuesta_imagen` varchar(255) DEFAULT NULL,
  `correcta` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id_respuesta`),
  KEY `id_pregunta` (`id_pregunta`),
  CONSTRAINT `respuesta_ibfk_1` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta` (`id_pregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuesta`
--

LOCK TABLES `respuesta` WRITE;
/*!40000 ALTER TABLE `respuesta` DISABLE KEYS */;
INSERT INTO `respuesta` VALUES (1,1,'«cual vellón que en las zarzas enredado estuviera» - símil',NULL,1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(2,1,'«la magnolia florece delicada y ligera» - hipérbole',NULL,0,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(3,1,'«en el bosque, de aromas y de músicas lleno» - anáfora',NULL,0,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(4,1,'«cual copo de espuma sobre lago sereno» - hipérbaton',NULL,0,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(5,2,'un amor incondicional por su amada Julieta',NULL,0,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(6,2,'un temor insospechado por el duelo a librar',NULL,0,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(7,2,'un gran sentimiento de lealtad por su amigo',NULL,1,'2023-10-27 07:57:16','2023-10-27 07:57:16'),(8,2,'una gran inquietud por la muerte de Mercucio',NULL,0,'2023-10-27 07:57:16','2023-10-27 07:57:16');
/*!40000 ALTER TABLE `respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tema`
--

DROP TABLE IF EXISTS `tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tema` (
  `id_tema` int NOT NULL AUTO_INCREMENT,
  `nombre_tema` varchar(30) NOT NULL,
  `id_curso` int NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id_tema`),
  KEY `id_curso` (`id_curso`),
  CONSTRAINT `tema_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tema`
--

LOCK TABLES `tema` WRITE;
/*!40000 ALTER TABLE `tema` DISABLE KEYS */;
INSERT INTO `tema` VALUES (1,'Teoría literaria',8,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(2,'Renacimiento europeo',8,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(3,'Posmodernismo peruano',8,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(4,'Literatura de la conquista',8,'2023-10-27 07:57:15','2023-10-27 07:57:15');
/*!40000 ALTER TABLE `tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universidad`
--

DROP TABLE IF EXISTS `universidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `universidad` (
  `id_universidad` int NOT NULL AUTO_INCREMENT,
  `nombre_universidad` varchar(255) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id_universidad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universidad`
--

LOCK TABLES `universidad` WRITE;
/*!40000 ALTER TABLE `universidad` DISABLE KEYS */;
INSERT INTO `universidad` VALUES (1,'Universidad Nacional Mayor de San Marcos','2023-10-27 07:57:15','2023-10-27 07:57:15'),(2,'Pontificia Universidad Católica del Perú','2023-10-27 07:57:15','2023-10-27 07:57:15'),(3,'Universidad Nacional de Ingeniería','2023-10-27 07:57:15','2023-10-27 07:57:15');
/*!40000 ALTER TABLE `universidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `premium` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Carlos','Carlos_1','Carlos_1@gmail.com','123456',1,'2023-10-27 07:57:15','2023-10-27 07:57:15'),(2,'Josue','Jos','Josuemontes@gmail.com','josue123',0,'2023-10-27 07:57:15','2023-10-27 07:57:15');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_respuesta`
--

DROP TABLE IF EXISTS `usuario_respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_respuesta` (
  `id_usuario_respuesta` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `id_respuesta` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id_usuario_respuesta`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_respuesta` (`id_respuesta`),
  CONSTRAINT `usuario_respuesta_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `usuario_respuesta_ibfk_2` FOREIGN KEY (`id_respuesta`) REFERENCES `respuesta` (`id_respuesta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_respuesta`
--

LOCK TABLES `usuario_respuesta` WRITE;
/*!40000 ALTER TABLE `usuario_respuesta` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_respuesta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-27  5:51:39
