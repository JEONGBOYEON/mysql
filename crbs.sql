-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: devops-rds.c7iudllookzy.ap-northeast-2.rds.amazonaws.com    Database: devops
-- ------------------------------------------------------
-- Server version	8.0.17

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
--
-- GTID state at the beginning of the backup 
--


--
-- Table structure for table `CAR`
--

DROP TABLE IF EXISTS `CAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAR` (
  `CODE` varchar(512) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `PRICE` int(11) NOT NULL,
  `COLOR` varchar(20) DEFAULT NULL,
  `FUEL` varchar(20) DEFAULT NULL,
  `DISPLACEMENT` int(11) DEFAULT NULL,
  `SIZE` varchar(20) DEFAULT NULL,
  `IMAGEURL` varchar(512) DEFAULT NULL,
  `CNT` int(11) DEFAULT (0),
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAR`
--

LOCK TABLES `CAR` WRITE;
/*!40000 ALTER TABLE `CAR` DISABLE KEYS */;
INSERT INTO `CAR` VALUES ('','new audi',0,'','휘발유',0,'경차',NULL,0),('12B3593','new audi',3500,'검정','경유',35000,'대형',NULL,15),('CRBS0006','제네시스',10000,'검정','하이브리드',3000,'소형',NULL,0),('CRBS0010','제네시스',100000,'검정','휘발유',3500,'중형',NULL,0);
/*!40000 ALTER TABLE `CAR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER` (
  `ID` varchar(30) NOT NULL,
  `NAME` varchar(10) NOT NULL,
  `PASSWORD` varchar(512) NOT NULL,
  `PHONENUMBER` varchar(512) DEFAULT NULL,
  `ISADMIN` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES ('123456','nkmj78','$2a$10$D4dO.Yhc1PM4UT43sYUGKuPhERrVcQalm2D8fUsNeE8MSKyP/UJ.C','123456',0),('123bb','boyeon','$2a$10$.Ns37cAPxHo5KPWvizk5y.iXgD/fKjVDGqRRBJGwY9X94Pub5K0dC','010-2345-1234',1),('567bb','bobo2','$2a$10$L8ztyY.2UB7kOi8fr8iMeecLmVDTTHOLG3Bu1DEeqw/.HA.dgqEx6','010-2345-9292',0),('789dd','bobo2','$2a$10$EMdEFcpsteSGlxbQprBkNOH5pdex/Xiuumxxzd9vX1.xMc62zvj96','010-2345-9292',0),('aaaa','aaaa','$2a$10$PCBdPehgmpX0aBjXzcjipOsqwlzOUoi/L5w2JVOWF1FimWAZ1tvAi','1234567',0),('auto','hanju','$2a$10$5tacJ5ZypIiIvSdaBrdlx.nditbNU2TE26amLowUlDf9E.f9EZQ8y','010',0),('bd','boyeon','$2a$10$bkior4PW8ZsK0a/H42K5uOnPBNB85ZNnLm.pYoP7B03Az.80d9.sO','010-2345-1234',1),('h2h2','h2h2h2','$2a$10$Vn46H/OZwYzXFJisgcn5MOfevrmSzfccNco5J4TIqPqkpmqWdQV9a','99999999',0),('nkmj78','nkmj78','$2a$10$uqGJUh6G1Nnkag3zoj90XOIx5gEiUuiSkMgBDm9wYoc5vHZD2HA8S','123456',0),('qwe','qwe','$2a$10$JkkbkUP9MoXZ4SzHXlWZK.u0qwHBATM.Qx6jicqF6BHnHszhawLWC','123456',0),('ssss','sss','$2a$10$xlh81x9tLoiGFcJqWM8Qc.OX8dK1gxLW.H8ADbNxgX3naf1Rga5Dy','1234556',0),('wwww','wwww','$2a$10$tkKqpEkpLb7lYdgE9sDuIe0R2dEt85mMs0AnGZWcBSkqhRQGR095K','123456',0),('zzz','zzz','$2a$10$yZmYrqe1691gXJTd11CUj.wKjH2/HHG1wuK9CkLLHtHY3pT1Z9siC','123',0);
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESERVATION`
--

DROP TABLE IF EXISTS `RESERVATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESERVATION` (
  `CUSTOMER_ID` varchar(512) NOT NULL,
  `CAR_CODE` varchar(512) NOT NULL,
  `STARTDATE` date NOT NULL,
  `ENDDATE` date NOT NULL,
  PRIMARY KEY (`CUSTOMER_ID`,`CAR_CODE`),
  KEY `CAR_CODE` (`CAR_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESERVATION`
--

LOCK TABLES `RESERVATION` WRITE;
/*!40000 ALTER TABLE `RESERVATION` DISABLE KEYS */;
INSERT INTO `RESERVATION` VALUES ('123456','CRBS0002','2020-03-10','2020-03-15'),('123456','CRBS0003','2020-03-14','2020-03-31'),('123bb','CRBS0002','2020-03-10','2020-03-15'),('auto','CRBS0010','2020-03-02','2020-03-15'),('sh1010','CRBS0002','2020-03-22','2020-03-23'),('sh1010','CRBS0010','2020-03-22','2020-03-24'),('sh10101','CRBS0002','2020-03-22','2020-03-23');
/*!40000 ALTER TABLE `RESERVATION` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-12 12:07:25
