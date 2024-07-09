CREATE DATABASE  IF NOT EXISTS `clinica_medicas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clinica_medicas`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: clinica_medicas
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultas` (
  `id_consulta` int NOT NULL,
  `data_consulta` date DEFAULT NULL,
  `hora_consulta` time DEFAULT NULL,
  PRIMARY KEY (`id_consulta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultas`
--

LOCK TABLES `consultas` WRITE;
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
INSERT INTO `consultas` VALUES (101,'2024-07-07','13:30:00'),(102,'2024-07-07','14:30:00'),(103,'2024-07-07','15:30:00'),(104,'2024-07-07','16:30:00'),(105,'2024-07-07','17:30:00'),(106,'2024-07-07','18:30:00'),(107,'2024-07-08','08:00:00'),(108,'2024-07-07','09:00:00'),(109,'2024-07-07','10:00:00'),(110,'2024-07-07','11:00:00'),(111,'2024-07-07','13:00:00'),(112,'2024-07-07','14:00:00'),(113,'2024-07-07','15:00:00'),(114,'2024-07-07','16:30:00'),(115,'2024-07-07','17:30:00'),(116,'2024-07-07','18:30:00'),(117,'2024-07-07','13:30:00'),(118,'2024-07-07','14:30:00'),(119,'2024-07-07','15:30:00'),(120,'2024-07-07','16:30:00'),(121,'2024-07-07','17:30:00'),(122,'2024-07-07','18:30:00'),(123,'2024-07-08','08:00:00'),(124,'2024-07-07','09:00:00'),(125,'2024-07-07','10:00:00'),(126,'2024-07-07','11:00:00'),(127,'2024-07-07','13:00:00'),(128,'2024-07-07','14:00:00'),(129,'2024-07-07','15:00:00'),(130,'2024-07-07','16:30:00'),(131,'2024-07-07','17:30:00'),(132,'2024-07-07','18:30:00');
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco_medico`
--

DROP TABLE IF EXISTS `endereco_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco_medico` (
  `id_end_medico` int NOT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `complemento` varchar(80) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(80) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `id_medico` int NOT NULL,
  PRIMARY KEY (`id_end_medico`),
  KEY `fk_end_id_medico` (`id_medico`),
  CONSTRAINT `fk_end_id_medico` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco_medico`
--

LOCK TABLES `endereco_medico` WRITE;
/*!40000 ALTER TABLE `endereco_medico` DISABLE KEYS */;
INSERT INTO `endereco_medico` VALUES (1,'Rua das Flores',123,'Apto 301','Jardim Primavera','São Paulo','SP','01234-567',201),(2,'Avenida Brasil',456,'Bloco B, Sala 45','Centro','Rio de Janeiro','RJ','12345-678',202),(3,'Rua do Sol',789,'Casa','Vila Nova','Belo Horizonte','MG','23456-789',203),(4,'Rua das Palmeiras',101,'Apto 502','Copacabana','Rio de Janeiro','RJ','34567-890',204);
/*!40000 ALTER TABLE `endereco_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `id_medico` int NOT NULL,
  `crm_medico` int NOT NULL,
  `nome_medico` varchar(80) DEFAULT NULL,
  `genero_medico` char(1) DEFAULT NULL,
  `especialidade_medica` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_medico`),
  UNIQUE KEY `crm_medico` (`crm_medico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (201,234455,'José Eduardo de Souza','M','Cardiologista'),(202,264455,'José Pedro da Silva','M','Cirurgião Cardiotorácico Pediátrico'),(203,294455,'Antônio de Salles','M','Neurocirurgião'),(204,324455,'Adriana de Oliveira Melo','F','Obstetra');
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `id_paciente` int NOT NULL,
  `cpf_paciente` varchar(15) DEFAULT NULL,
  `nome_paciente` varchar(80) DEFAULT NULL,
  `genero_paciente` char(1) DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  PRIMARY KEY (`id_paciente`),
  UNIQUE KEY `id_cpf` (`cpf_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (301,'123.456.789-01','João Silva','M','1985-02-10'),(302,'234.567.890-12','Maria Oliveira','F','1990-03-15'),(303,'345.678.901-23','Pedro Santos','M','1978-07-20'),(304,'456.789.012-34','Ana Costa','F','1988-11-25'),(305,'567.890.123-45','Carlos Pereira','M','1965-04-05'),(306,'678.901.234-56','Lucas Fernandes','M','1995-12-30'),(307,'789.012.345-67','Juliana Lima','F','1972-01-18'),(308,'890.123.456-78','Thiago Rocha','M','1980-06-22'),(309,'901.234.567-89','Fernanda Almeida','F','1993-09-10'),(310,'012.345.678-90','Rafael Barbosa','M','1983-08-14'),(311,'111.222.333-44','Eduardo Gomes','M','1977-05-03'),(312,'222.333.444-55','Marcos Teixeira','M','1991-10-25'),(313,'333.444.555-66','Bruno Moreira','M','1987-07-30'),(314,'444.555.666-77','Gabriel Sousa','M','1969-11-12'),(315,'555.666.777-88','Camila Cardoso','F','1996-03-08'),(316,'666.777.888-99','Felipe Carvalho','M','1982-12-17'),(317,'11111111111','João Silva','M','1980-01-01'),(318,'22222222222','José Santos','M','1985-02-15'),(319,'33333333333','Antônio Oliveira','M','1990-03-25'),(320,'44444444444','Carlos Pereira','M','1982-04-10'),(321,'55555555555','Paulo Rodrigues','M','1988-05-20'),(322,'66666666666','Pedro Almeida','M','1987-06-30'),(323,'77777777777','Luiz Souza','M','1984-07-05'),(324,'88888888888','Marcos Costa','M','1995-08-12'),(325,'99999999999','Ricardo Gomes','M','1992-09-22'),(326,'10101010101','Fernando Martins','M','1989-10-14'),(327,'12121212121','Ana Oliveira','F','1983-11-03'),(328,'13131313131','Maria Santos','F','1986-12-17'),(329,'14141414141','Juliana Pereira','F','1991-01-28'),(330,'15151515151','Carla Almeida','F','1981-02-09'),(331,'16161616161','Mariana Costa','F','1986-03-19'),(332,'17171717171','Patrícia Souza','F','1993-04-23');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receita_medica`
--

DROP TABLE IF EXISTS `receita_medica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receita_medica` (
  `id_receita_medica` int NOT NULL,
  `medicacao` varchar(100) DEFAULT NULL,
  `dosagem` varchar(100) DEFAULT NULL,
  `via_administracao` varchar(50) DEFAULT NULL,
  `forma_administracao` varchar(80) DEFAULT NULL,
  `tempo_uso` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_receita_medica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receita_medica`
--

LOCK TABLES `receita_medica` WRITE;
/*!40000 ALTER TABLE `receita_medica` DISABLE KEYS */;
INSERT INTO `receita_medica` VALUES (1,'Paracetamol','500mg','Oral','Comprimido','7 dias'),(2,'Amoxicilina','500mg','Oral','Cápsula','10 dias'),(3,'Ibuprofeno','400mg','Oral','Comprimido','5 dias'),(4,'Dipirona','500mg','Oral','Comprimido','3 dias'),(5,'Omeprazol','20mg','Oral','Cápsula','14 dias'),(6,'Dexametasona','2mg','Injetável','Ampola','7 dias'),(7,'Ranitidina','150mg','Oral','Comprimido','10 dias'),(8,'Insulina','10 unidades','Subcutânea','Ampola','Diariamente'),(9,'Losartana','50mg','Oral','Comprimido','30 dias'),(10,'Levotiroxina','100mcg','Oral','Comprimido','Indeterminado'),(11,'Atorvastatina','20mg','Oral','Comprimido','30 dias'),(12,'Metformina','850mg','Oral','Comprimido','Indeterminado'),(13,'Cefalexina','500mg','Oral','Cápsula','7 dias'),(14,'Loratadina','10mg','Oral','Comprimido','10 dias'),(15,'Salbutamol','100mcg','Inalatório','Aerossol','Necessário'),(16,'Sertralina','50mg','Oral','Comprimido','Indeterminado'),(17,'Diazepam','10mg','Oral','Comprimido','15 dias'),(18,'Morfina','10mg','Subcutânea','Ampola','Conforme necessidade'),(19,'Digoxina','0,25mg','Oral','Comprimido','Indeterminado'),(20,'Metotrexato','10mg','Oral','Comprimido','Semanal'),(21,'Rivotril','2mg','Oral','Comprimido','Conforme necessidade'),(22,'Eritromicina','500mg','Oral','Cápsula','7 dias'),(23,'Tramadol','50mg','Oral','Comprimido','Conforme necessidade'),(24,'Levodopa','250mg','Oral','Comprimido','Diariamente'),(25,'Metilfenidato','10mg','Oral','Comprimido','Diariamente'),(26,'Captopril','25mg','Oral','Comprimido','Indeterminado'),(27,'Enalapril','10mg','Oral','Comprimido','Indeterminado'),(28,'Furosemida','40mg','Oral','Comprimido','Diariamente'),(29,'Clonazepam','2mg','Oral','Comprimido','Conforme necessidade'),(30,'Prednisona','5mg','Oral','Comprimido','7 dias'),(31,'Levozine','25mg','Oral','Comprimido','Diariamente'),(32,'Budesonida','32mcg','Inalatório','Aerossol','Diariamente');
/*!40000 ALTER TABLE `receita_medica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relacao_consultas`
--

DROP TABLE IF EXISTS `relacao_consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relacao_consultas` (
  `id_relacao` int NOT NULL,
  `id_consulta` int DEFAULT NULL,
  `id_medico` int DEFAULT NULL,
  `id_paciente` int DEFAULT NULL,
  `id_receita` int DEFAULT NULL,
  PRIMARY KEY (`id_relacao`),
  KEY `fk_relacao_id_consulta` (`id_consulta`),
  KEY `fk_relacao_id_medico` (`id_medico`),
  KEY `fk_relacao_id_paciente` (`id_paciente`),
  KEY `fk_relacao_id_receita` (`id_receita`),
  CONSTRAINT `fk_relacao_id_consulta` FOREIGN KEY (`id_consulta`) REFERENCES `consultas` (`id_consulta`),
  CONSTRAINT `fk_relacao_id_medico` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`),
  CONSTRAINT `fk_relacao_id_paciente` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `fk_relacao_id_receita` FOREIGN KEY (`id_receita`) REFERENCES `receita_medica` (`id_receita_medica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relacao_consultas`
--

LOCK TABLES `relacao_consultas` WRITE;
/*!40000 ALTER TABLE `relacao_consultas` DISABLE KEYS */;
INSERT INTO `relacao_consultas` VALUES (1,101,201,301,1),(2,102,202,302,2),(3,103,203,303,3),(4,104,204,304,4),(5,105,201,305,5),(6,106,202,306,6),(7,107,203,307,7),(8,108,204,308,8),(9,109,201,309,9),(10,110,202,310,10),(11,111,203,311,11),(12,112,204,312,12),(13,113,201,313,13),(14,114,202,314,14),(15,115,203,315,15),(16,116,204,316,16),(17,117,201,317,17),(18,118,202,318,18),(19,119,203,319,19),(20,120,204,320,20),(21,121,201,321,21),(22,122,202,322,22),(23,123,203,323,23),(24,124,204,324,24),(25,125,201,325,25),(26,126,202,326,26),(27,127,203,327,27),(28,128,204,328,28),(29,129,201,329,29),(30,130,202,330,30),(31,131,203,331,31),(32,132,204,332,32);
/*!40000 ALTER TABLE `relacao_consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_medico`
--

DROP TABLE IF EXISTS `telefone_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone_medico` (
  `id_telefone_medico` int NOT NULL,
  `fone_residencial` varchar(15) DEFAULT NULL,
  `fone_celular` varchar(15) DEFAULT NULL,
  `id_medico` int DEFAULT NULL,
  PRIMARY KEY (`id_telefone_medico`),
  KEY `fk_fone_id_medico` (`id_medico`),
  CONSTRAINT `fk_fone_id_medico` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_medico`
--

LOCK TABLES `telefone_medico` WRITE;
/*!40000 ALTER TABLE `telefone_medico` DISABLE KEYS */;
INSERT INTO `telefone_medico` VALUES (1,'(11) 3456-7890','(11) 91234-5678',201),(2,'(21) 2345-6789','(21) 98765-4321',202),(3,'(31) 1234-5678','(31) 99876-5432',203),(4,'(41) 4567-8901','(41) 97654-3210',204);
/*!40000 ALTER TABLE `telefone_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_paciente`
--

DROP TABLE IF EXISTS `telefone_paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone_paciente` (
  `id_telefone_paciente` int NOT NULL,
  `fone_residencial` varchar(100) DEFAULT NULL,
  `fone_celular` varchar(50) DEFAULT NULL,
  `id_paciente` int NOT NULL,
  PRIMARY KEY (`id_telefone_paciente`),
  KEY `fk_fone_id_paciente` (`id_paciente`),
  CONSTRAINT `fk_fone_id_paciente` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_paciente`
--

LOCK TABLES `telefone_paciente` WRITE;
/*!40000 ALTER TABLE `telefone_paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefone_paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'clinica_medicas'
--

--
-- Dumping routines for database 'clinica_medicas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-06 23:16:05
