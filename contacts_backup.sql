-- MySQL dump 10.13  Distrib 8.4.6, for Linux (x86_64)
--
-- Host: localhost    Database: contacts
-- ------------------------------------------------------
-- Server version	8.4.6

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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `center` varchar(200) DEFAULT NULL,
  `firstNum` varchar(20) DEFAULT NULL,
  `secondNum` varchar(20) DEFAULT NULL,
  `position` varchar(150) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `jefe` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42282 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Orniel Rodríguez Pérez','OFICINA COMERCIAL JATIBONICO','52187141',NULL,'Operario Instalador C','osniel.rodriguez',0),(2,'Asiel Pérez Escobar','BRIGADA RED DE ABONADOS','52886675','','REPARADOR','',0),(3,'Darién Sánchez Ramírez','BRIGADA RED DE ABONADOS','52189010','','REPARADOR','',0),(4,'Javier Toledo Amengual','BRIGADA RED DE ABONADOS','52885860','','OP. C INSTAL. REPARADOR','',0),(5,'Juilo César Reina Hernández','BRIGADA RED DE ABONADOS','52189021',NULL,'OP. C INSTAL. REPARADOR','   ',0),(6,'Pedro Luis Concepción Marín','BRIGADA RED DE ABONADOS','52189575',NULL,'OP. C INSTAL. REPARADOR','  ',0),(7,'Edelkis Martín Hernández','BRIGADA RED DE ABONADOS','52189007','','OP. B INSTAL. REPARADOR','',0),(8,'Raúl Más Román','BRIGADA RED DE ABONADOS','52185198','','OP. B INSTAL. REPARADOR','',0),(717,'Ana Libania Ruiz Santana','CENTRO MULTISERVICIOS TRINIDAD','52886083','41996019','TEC. A EN GEST. DE REC. HUMANOS','ana.ruiz',0),(861,'Reinaldo Medina Montelier','UNIDAD PLANTA EXTERIOR','52885762','','JEFE DE UNIDAD','reinaldo.medina',0),(868,'Adrian Bustillo Madrigal','UNIDAD DE CONTROL DE LA OPERACION','52189565','','ESP. C EN TELEMATICA','adrian.bustillo',0),(900,'Luis Rolando Gonzalez Sanchez','DTSS','52883822','41327681','DIRECTOR TERRITORIAL','luisr.gonzalez',1),(912,'Yanela Perez Barceló','T.I','52850275','41322880','TEC. EN CIENCIAS INFORMATICAS','yanela.perez',0),(940,'Maura Rosa Rivera Sanchez','OFICINA COMERCIAL JATIBONICO','50941845','','JEFE DE CENTRO DE TELEC. C','maura.rivera',1),(953,'Odalys Gonzales Valdez','OFICINA COMERCIAL JATIBONICO','52880633','41882110','EJECUTIVO DE PUNTO DE VENTA','odalys.gonzalezvaldez',0),(986,'Rocio de Paula Rios Fuentes','CENTRO MULTISERVICIOS SANCTI SPIRITUS','52886677','41327312','EJECUTIVO DE PUNTO DE VENTA (EP)','rocio.rios',1),(1012,'Madelin Conde Rodriguez','UNIDAD PLANTA EXTERIOR','52189150','','PROBADOR DE CABLE','madelin.conde',0),(1098,'Osmara Cantero Pomares','CENTRO MULTISERVICIOS TRINIDAD','52881355','','EJECUTIVO DE PUNTO DE VENTA','omara.cantero',0),(1109,'Margot Marrero Pacheco','CENTRO MULTISERVICIOS FOMENTO','52885457','','JEFE DE UNIDAD','margot.marrero',1),(1135,'Carlos Manuel Gonzalez Pedroso','CTRO DE TELECOM ASOCIADO FOMENTO','52187040','','ESP. C EN TELEMATICA','carlos.gpedroso',0),(1180,'Yudel Isnel Abreu Hernandez','GPO. PLANEAMIENTO Y CTRL TEC INVERSIONES','52889286','','ESP. C EN TELEMATICA','yudel.abreu',0),(1188,'Hermis Manuel Perez Rojas','TALLER DE REPARACIONES','52885871','','JEFE DE TALLER','hermis.perez',1),(1197,'Rafael Ernesto Mazaira Fernandez','T.I','52888828','41328947','JEFE DE DEPARTAMENTO B','rafael.mazaira',1),(2310,'Elianys Castellanos Solenzal','GRUPO OPERACION Y MANTENIMIENTO','52189014','','TECNICO B EN TELEMATICA','elianys.castellanos',1),(17016,'Yaimara Ramirez Salas','CENTRO MULTISERVICIOS SANCTI SPIRITUS','52189031','','EJECUTIVO DE PUNTO DE VENTA (EP)','yaimara.ramirez',1),(17241,'Anais Ojito Leal','GPO. SOPORTE COMERCIAL','52189032','','ESPECIALISTA C COMERCIAL','anais.ojito',0),(20807,'Lisandra Acosta Hurtado','GPO. COMERCIALIZACION CORPORATIVO','','41332099','ESPECIALISTA C COMERCIAL','lisandra.acosta',0),(20925,'Thaumara Alvarez Martinez','OFICINA COMERCIAL YAGUAJAY','52884231','','JEFE DE UNIDAD','thaumara.alvarez',1),(21877,'Luisa Elena Figueroa Leon','UNIDAD ECONOMICA ADMINISTRATIVA','52184446','','JEFE DE UNIDAD','luisa.figueroa',1),(21881,'Yaquelin Reina Hernandez','UNIDAD ECONOMICA ADMINISTRATIVA','52886530','','ESP. B EN GEST. ECONOMICA','yaquelin.reina',0),(22751,'Diana Fernandez Gonzalez','T.I','52885784','41328947','JEFE DE GRUPO','diana.fernandez',1),(27083,'Maday de la Caridad Valle Ruiz','CENTRO MULTISERVICIOS TRINIDAD','52182044','','EJECUTIVO DE PUNTO DE VENTA','maday.valle',0),(28221,'Gladimir Caceres Mursuli','UNIDAD ECONOMICA ADMINISTRATIVA','','41329167','ESP. B EN GEST. ECONOMICA','gladimir.caceres',0),(28353,'Yaima Pino Sanchez','GRUPO DE CONTABILIDAD','52186442','41325027','ESP. B EN GEST. ECONOMICA','yaima.pino',0),(32135,'Yosvany Diaz Leon','T.I','59899316','41321662','ESP. C EN CIENCIAS INFORMATICAS','yosvany.diaz',0),(32726,'Grechel Yanez Dueñas','GRUPO OPERACION Y MANTENIMIENTO','52184449','41329830','TECNICO B EN TELEMATICA','grechel.yanez',0),(32730,'Sheyla Roque Pizarro','UNIDAD PLANTA EXTERIOR','52189013','','PROBADOR DE CABLE','sheyla.roque',0),(32732,'Josue Orellana Menendez','UNIDAD PLANTA EXTERIOR','52180143','41328899','TECNICO B EN TELEMATICA','josue.orellana',0),(34629,'Osvel Martin Cubela','T.I','','41322880','ESP. C EN CIENCIAS INFORMATICAS','osvel.martin',0),(34632,'Yoenny Abreu Bernal','T.I','52887430','41322880','TEC. EN CIENCIAS INFORMATICAS','yoenny.abreu',0),(34842,'Frandy Lizano Ruiz','BRIGADA RED DE ABONADOS','52189005','','OP. C INSTAL. REPARADOR','frandy.lizano',0),(34843,'Aly Pimienta Perez','BRIGADA RED DE ABONADOS','52125919','','OP. B INSTAL. REPARADOR','aly.pimienta',0),(34844,'Yander Rodríguez Prado','BRIGADA RED DE ABONADOS','52188710','','OP. B INSTAL. REPARADOR','yander.rodriguez',0),(34850,'Yusbel Echemendia Gonzalez','OFICINA COMERCIAL JATIBONICO','','41882615','ESP. C EN TELEMATICA ','yusbel.echemendia',0),(35322,'Kendry Quintana Garcia','CENTRO DE DIRECCION TERRITORIAL','52182482','','TECNICO B EN TELEMATICA','kendry.quintana',0),(36628,'Elizabeth Albalat Bandomo','CENTRO MULTISERVICIOS TRINIDAD','52881295','','EJECUTIVO DE PUNTO DE VENTA','elisabet.albalat',0),(37261,'Angel Antonio Lopez Torres','T.I','52886708','41322880','ESP. C EN CIENCIAS INFORMATICAS','angelantonio.lopez',0),(38083,'Yaribey Alfonso Perez','DPTO DE COORDINACION GENERAL','59889661','41328180','ESPEC. GRAL. C CIENCIA, TECNOL. INNOV','yaribey.alfonso',0),(39773,'Nadier Rodriguez Fabrega','UNIDAD PLANTA EXTERIOR','50407789','41336618','TECNICO B EN TELEMATICA','nadier.rodriguez',0),(40199,'Mario Jorge Rosendiz Rubio','T.I','52184436','41321662','ESP. C EN CIENCIAS INFORMATICAS','mario.rosendiz',0),(40759,'Siane Felicia Enriquez Villa','CENTRO MULTISERVICIOS TRINIDAD','52109661','','ESP. C EN TELEMATICA ','siane.enriquez',0),(41568,'Lizt Daniela Ibarra Ramirez','T.I','52888886','41323880','TEC. EN CIENCIAS INFORMATICAS','lizt.ibarra',0),(41573,'Maylin Isabel Delgado Gomez','GRUPO DE CONTABILIDAD','','41324699','ESP. B EN GEST. ECONOMICA','maylin.delgado',0),(41751,'Kenia Castaneda Izquierdo','T.I','52889104','41328930','TEC. EN CIENCIAS INFORMATICAS','keniac.izquierdo',0),(42014,'Francisco Rivero Cancio','DPTO DE COORDINACION GENERAL','50943838',NULL,'ESPECIALISTA B EN CIBERSEGURIDAD','francisco.rivero',0),(42268,'Daimel Diaz Garcia','T.I','52886783','     ','ESP. C EN CIENCIAS INFORMATICAS','daimel.diaz',0),(42279,'Delvis Quesada Lara','T.I','52184433','41329306','ADMIN DE RED','delvis.quesada',0);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-01 16:18:05
