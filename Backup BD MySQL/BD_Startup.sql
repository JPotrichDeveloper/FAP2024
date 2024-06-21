-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: startup
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
-- Table structure for table `membros`
--

DROP TABLE IF EXISTS `membros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membros` (
  `membro_id` int NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`membro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membros`
--

LOCK TABLES `membros` WRITE;
/*!40000 ALTER TABLE `membros` DISABLE KEYS */;
INSERT INTO `membros` VALUES (1,'Leonardo Dicaprio','Engenheiro de Machine Learning'),(2,'Will Smith','Arquiteto de dados'),(3,'Johnny Depp','Desenvolvedor Python'),(4,'Keanu Reeves','Designer de interface do usuário'),(5,'Tom Cruise','Desenvolvedor Full Stack'),(6,'Jackie Chan','Desenvolvedor Java Script'),(7,'Al Pacino','Engenheiro de Nuvem'),(8,'Robert Downey Jr.','Scrum Master'),(9,'Brad Pitt','Engenheiro de DevOps'),(10,'Dwayne Johnson','Desenvolvedor Java');
/*!40000 ALTER TABLE `membros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarefas`
--

DROP TABLE IF EXISTS `tarefas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarefas` (
  `tarefa_id` int NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `membro_fk` int DEFAULT NULL,
  PRIMARY KEY (`tarefa_id`),
  KEY `membro_id` (`membro_fk`),
  CONSTRAINT `tarefas_ibfk_1` FOREIGN KEY (`membro_fk`) REFERENCES `membros` (`membro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarefas`
--

LOCK TABLES `tarefas` WRITE;
/*!40000 ALTER TABLE `tarefas` DISABLE KEYS */;
INSERT INTO `tarefas` VALUES (1,'Executar testes e experimentos de aprendizado de máquina',1),(2,'Fiscalizar e executar obras e serviços',2),(3,'Escrever códigos eficazes e escaláveis',3),(4,'fazer um protótipo e enviar o que foi feito para o time de desenvolvimento',4),(5,'implementação de códigos para o back-end e front-end',5),(6,'escrever e manter os códigos em JavaScript funcionais',6),(7,'gerenciar a infraestrutura em nuvem de uma organização',7),(8,'garantir que o Time Scrum se oriente pelos valores e práticas do Scrum',8),(9,'provisionamento e gerenciamento de infraestrutura',9),(10,'Codifica e realiza os testes, prepara documentação e produz manuais de operação\n',10);
/*!40000 ALTER TABLE `tarefas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'startup'
--

--
-- Dumping routines for database 'startup'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-20 17:20:24
