CREATE DATABASE  IF NOT EXISTS `swp391_se1726_g4` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `swp391_se1726_g4`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: swp391_se1726_g4
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `Cart_ID` int NOT NULL AUTO_INCREMENT,
  `Product_ID` int NOT NULL,
  `Product_Price` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Total_Cost` int DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  PRIMARY KEY (`Cart_ID`),
  KEY `FK__Cart__Product_ID__5070F446` (`Product_ID`),
  KEY `FK__Cart__User_ID__5165187F` (`User_ID`),
  CONSTRAINT `FK__Cart__Product_ID__5070F446` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`),
  CONSTRAINT `FK__Cart__User_ID__5165187F` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `case`
--

DROP TABLE IF EXISTS `case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `case` (
  `Case_ID` int NOT NULL AUTO_INCREMENT,
  `Case_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Images` longtext,
  `Status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Case_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case`
--

LOCK TABLES `case` WRITE;
/*!40000 ALTER TABLE `case` DISABLE KEYS */;
INSERT INTO `case` VALUES (1,'JETEK EM1',330000,'img/case/JETEK_EM1.jpg',1),(2,'Jetek Mini I8-22B',490000,'img/case/Jetek_Mini_I8_22B.png',1),(3,'XIGMATEK NYA 3F RGB',690000,'img/case/XIGMATEK_NYA_3F_RGB.png',1),(4,'1st Player XF Black',890000,'img/case/1st_Player_XF_Black.jpg',1),(5,'MIK TN10',990000,'img/case/MIK_TN10.jpg',1),(6,'Cougar Archon 2 Mesh White RGB',1150000,'img/case/Cougar_Archon_2_Mesh_White_RGB.jpg',1),(7,'MIK LV12 M BLACK',1230000,'img/case/MIK_LV12_M_BLACK.png',1),(8,'MIK LV12 M WHITE',1330000,'img/case/MIK_LV12_M_WHITE.png',1),(9,'MIK LV12 BLACK',1690000,'img/case/MIK_LV12_BLACK.png',1),(10,'Cougar DarkBlader X7 Midnight Green',1690000,'img/case/Cougar_DarkBlader_X7_Midnight_Green.png',1),(11,'JONSBO D31 MESH WHITE',231000,'img/case/jonsbo_d31_mesh_white.jpg',1),(12,'JONSBO D31 MESH BLACK',302000,'img/case/jonsbo_d31_mesh_black.jpg',1),(13,'GAMING HAWK F1 BLACK',504000,'img/case/hawk_f1_black.jpg',1),(14,'GAMING HAWK F1 WHITE',476000,'img/case/hawk_f1_white.jpg',1),(15,'CORSAIR 4000D AIRFLOW TG BLACK',674000,'img/case/corsair_4000d_airflow_tg_black.jpg',1),(16,'CORSAIR 4000D AIRFLOW TG WHITE',723000,'img/case/corsair_4000d_airflow_tg_white.jpg',1),(17,'COUGAR ARCHON 2 MESH BLACK RGB',456000,'img/case/COUGAR_ARCHON_2_MESH_BLACK_RGB.png',1),(18,'XIGMATEK ELITE ONE ARCTIC 3F',673000,'img/case/XIGMATEKELITE_ONE_ARCTIC_3F.png',1),(19,'VITRA POSEIDON R15 RGB BLACK',423000,'img/case/VITRA_POSEIDON_R15_RGB_BLACK.png',1),(20,'VITRA CERES V308 ARGB 1FRGB WHITE',833000,'img/case/VITRA_CERES_V308_ARGB_1FRGB_WHITE.png',1),(21,'VITRA CERES V305 G 3FRGB BLACK',732000,'img/case/VITRA_CERES_V305_G_3FRGB_BLACK.png',1),(22,'LIAN LI PC O11 DYNAMIC EVO WHITE',478000,'img/case/LIAN_LI_PC_O11_DYNAMIC_EVO_WHITE.png',1),(23,'INFINITY JIKAN',222000,'img/case/INFINITY_JIKAN.png',1),(24,'COUGAR DUOFACE RGB',543000,'img/case/COUGAR_DUOFACE_RGB.png',1),(25,'COUGAR DARKBLADER G ARGB',642000,'img/case/COUGAR_DARKBLADER_G_ARGB.png',1),(26,'COOLER MASTER MASTERBOX 520 ARGB WHITE',345000,'img/case/COOLER_MASTER_MASTERBOX_520_ARGB_WHITE.png',1),(27,'JONSBO C6 BLACK',231000,'img/case/JONSBO_C6_BLACK.png',1),(28,'JONSBO C6 HANDLE BLACK',356000,'img/case/JONSBO_C6_HANDLE_BLACK.png',1),(29,'JONSBO C6 HANDLE WHITE',423000,'img/case/JONSBO_C6_HANDLE_WHITE.png',1),(30,'JONSBO C6 WHITE',389000,'img/case/JONSBO_C6_WHITE.png',1),(31,'JONSBO N2 BLACK',342000,'img/case/JONSBO_N2_BLACK.png',1),(32,'JONSBO N2 WHITE',356000,'img/case/JONSBO_N2_WHITE.png',1),(33,'Lian Li A4 H2O X4',653000,'img/case/Lian_Li_A4_H2O_X4.png',1),(34,'LIAN LI PC O11 Dynamic Mini Air Black',562000,'img/case/LIAN_LI_PC_O11_Dynamic_Mini_Air_Black.png',1),(35,'Slath Mini ITX',478000,'img/case/Slath_Mini_ITX.png',1),(36,'Be Quiet Base 600',384000,'img/case/bequiet_base_600.jpg',1),(37,'DeepCool Macube 550',564000,'img/case/DeepCool_Macube_550.jpg',1),(38,'Dell Tower 3660',647000,'img/case/Dell_Tower_3660.jpg',1),(39,'JETEK EN15',123000,'img/case/JETEK_EN15.jpg',1),(40,'JETEK EN16',234000,'img/case/JETEK_EN16.jpg',1),(41,'Montech Air 100 Lite Black',325000,'img/case/montech_air_100_lite_black.png',1);
/*!40000 ALTER TABLE `case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_ID` int NOT NULL AUTO_INCREMENT,
  `category_Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`category_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Gaming',1),(2,'MiniPC',1),(3,'WorkStation',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpu`
--

DROP TABLE IF EXISTS `cpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpu` (
  `CPU_ID` int NOT NULL AUTO_INCREMENT,
  `CPU_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`CPU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpu`
--

LOCK TABLES `cpu` WRITE;
/*!40000 ALTER TABLE `cpu` DISABLE KEYS */;
INSERT INTO `cpu` VALUES (1,'INTEL Xeon Max 9462',3995000,1),(2,'INTEL I3 13100T',134000,1),(3,'INTEL I3 13100F',127000,1),(4,'AMD PRO ThreadRipper 5995X',3452000,1),(5,'AMD RYZEN 3 5300G',1300000,1),(6,'AMD RYZEN 3 3300X',1350000,1),(7,'AMD Ryzen 5 7600X',2990000,1),(8,'AMD Ryzen 7 7700',3790000,1),(9,'AMD Ryzen 9 7900X',529000,1),(10,'Intel Core i5-13500F',2120000,1),(11,'Intel Core i7-13700F',3640000,1),(12,'Intel Core i9-13900F',529000,1);
/*!40000 ALTER TABLE `cpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `Feedback_ID` int NOT NULL AUTO_INCREMENT,
  `User_ID` int DEFAULT NULL,
  `Product_ID` int DEFAULT NULL,
  `Create_Date` date DEFAULT NULL,
  `Content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Rating` double DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Feedback_ID`),
  KEY `FK__Feedback__User_I__5441852A` (`User_ID`),
  KEY `FK__Feedback__Produc__5535A963` (`Product_ID`),
  CONSTRAINT `FK__Feedback__Produc__5535A963` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`),
  CONSTRAINT `FK__Feedback__User_I__5441852A` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,2,1,'2023-06-20','Good product','img/feedback/XIGMATEK_NYA_3F_RGB_1.png',5,1),(2,3,1,'2023-06-21','Greate product','img/feedback/XIGMATEK_NYA_3F_RGB_2.png',3,1),(3,2,1,'2023-07-11','OMG PRODUCT SO GOOD','img/feedback/1689081834514.jpg',5,1),(6,2,1,'2023-07-12','Nice :)','img/feedback/1689166989665',5,1),(7,2,10,'2023-07-12','Greate','img/feedback/1689166996414',5,1),(8,2,17,'2023-07-12','OMG','img/feedback/1689167003716',5,1),(9,2,13,'2023-07-12','Slay','img/feedback/1689167010981',5,1),(10,2,33,'2023-07-12','Nice','img/feedback/1689167162703',5,1),(11,2,34,'2023-07-12','Okay','img/feedback/1689167176797',4,1),(12,2,35,'2023-07-12','Nice','img/feedback/1689167183309',4,1),(13,2,37,'2023-07-12','Wow','img/feedback/1689167191846',5,1),(14,2,54,'2023-07-12','OMGGGG','img/feedback/1689167379578',5,1),(15,2,47,'2023-07-12','Okay','img/feedback/1689167390171',4,1),(16,2,50,'2023-07-12','Sheeesh','img/feedback/1689167397869',5,1),(17,2,51,'2023-07-12','Greate','img/feedback/1689167404444',5,1),(18,3,10,'2023-07-12','Pretty solid','img/feedback/1689167550693',5,1),(19,3,13,'2023-07-12','Practically good','img/feedback/1689167560486',5,1),(20,3,33,'2023-07-12','Must buy','img/feedback/1689167581848',5,1),(21,3,34,'2023-07-12','Meh','img/feedback/1689167593821',4,1);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_response`
--

DROP TABLE IF EXISTS `feedback_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback_response` (
  `Response_ID` int NOT NULL AUTO_INCREMENT,
  `Feedback_ID` int DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  `Response_date` date DEFAULT NULL,
  `Response_content` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`Response_ID`),
  KEY `FK_Feedback_Response_Feedback_HE237402_idx` (`Feedback_ID`),
  KEY `FK_Feedback_Response_User_HE823740_idx` (`User_ID`),
  CONSTRAINT `FK_Feedback_Response_Feedback_HE237402` FOREIGN KEY (`Feedback_ID`) REFERENCES `feedback` (`Feedback_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Feedback_Response_User_HE823740` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_response`
--

LOCK TABLES `feedback_response` WRITE;
/*!40000 ALTER TABLE `feedback_response` DISABLE KEYS */;
INSERT INTO `feedback_response` VALUES (1,1,5,'2023-06-23','Thank you for choosing our product'),(2,2,5,'2023-07-15','Thank you for purchasing'),(3,3,5,'2023-07-15','Thank you'),(4,6,5,'2023-07-15','If there is a problem, please contact to us: ghub31291@gmail.com'),(5,7,5,'2023-07-15','Nice :)');
/*!40000 ALTER TABLE `feedback_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainboard`
--

DROP TABLE IF EXISTS `mainboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mainboard` (
  `Mainboard_ID` int NOT NULL AUTO_INCREMENT,
  `Mainboard_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Mainboard_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainboard`
--

LOCK TABLES `mainboard` WRITE;
/*!40000 ALTER TABLE `mainboard` DISABLE KEYS */;
INSERT INTO `mainboard` VALUES (1,'MAINBOARD ASUS PRIME H510M-K ',720000,1),(2,'MAINBOARD MSI H510M PRO-E',700000,1),(3,'MAINBOARD ASUS TUF GAMING B550M-PLUS WIFI II',160000,1),(4,'MAINBOARD ASUS PRIME H510M-K R2.0 - CSM (TRAY)',690000,1),(5,'MAINBOARD MSI PRO Z790-P WIFI DDR4',272000,1),(6,'MAINBOARD ASUS Prime Z790-A WiFi 6E',425000,1),(7,'Mainboard MSI PRO B660M-E DDR4',114000,1),(8,'ASUS PRIME Z790-P WIFI-CSM',499000,1),(9,'Gigabyte B550M K AM4 Micro-ATX',139000,1),(10,'Gigabyte B560 HD3 Intel',149000,1),(11,'Gigabyte Z790 AORUS ELITE AX',429000,1),(12,'MSI MPG B650 Edge WiFi AM5 ATX',499000,1),(13,'Asus PRIME B760M-A WIFI',255000,1),(14,'MSI PRO Z790-A WIFI',439000,1),(15,'ASUS B550-PLUS TUF Gaming Wi-Fi',259000,1);
/*!40000 ALTER TABLE `mainboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `User_ID` int DEFAULT NULL,
  `FullName` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `PhoneNumber` varchar(50) DEFAULT NULL,
  `Order_Date` date DEFAULT NULL,
  `Total_Cost` int DEFAULT NULL,
  `Payment` varchar(50) DEFAULT NULL,
  `Saler_ID` int DEFAULT NULL,
  `Order_Status` int DEFAULT NULL,
  `Note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `FK__Order__User_ID__59FA5E80` (`User_ID`),
  KEY `FK__Order__Order_Sta__5AEE82B9` (`Order_Status`),
  CONSTRAINT `FK__Order__Order_Sta__5AEE82B9` FOREIGN KEY (`Order_Status`) REFERENCES `order_status` (`Order_Status_ID`),
  CONSTRAINT `FK__Order__User_ID__59FA5E80` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (39,2,'Nguyễn Đức Mạnh','Bắc Ninh, Việt Nam','0365616718','2023-07-12',18709200,'VNPay',14,3,'Test note'),(40,2,'Nguyễn Đức Mạnh','Bắc Ninh, Việt Nam','0365616718','2023-07-12',17706600,'COD',4,3,''),(41,2,'Nguyễn Đức Mạnh','Bắc Ninh, Việt Nam','0365616718','2023-07-12',14777700,'VNPay',4,3,''),(42,3,'Phạm Cao Đức Minh','Hà Nội, Việt Nam','0868659100	','2023-07-12',18891600,'COD',4,3,'');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `Order_Detail_ID` int NOT NULL AUTO_INCREMENT,
  `Order_ID` int DEFAULT NULL,
  `Product_ID` int DEFAULT NULL,
  `Product_Price` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Total_Cost` int DEFAULT NULL,
  PRIMARY KEY (`Order_Detail_ID`),
  KEY `FK__Order_Det__Order__5DCAEF64` (`Order_ID`),
  KEY `FK__Order_Det__Produ__5EBF139D` (`Product_ID`),
  CONSTRAINT `FK__Order_Det__Order__5DCAEF64` FOREIGN KEY (`Order_ID`) REFERENCES `order` (`Order_ID`),
  CONSTRAINT `FK__Order_Det__Produ__5EBF139D` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (63,39,1,4871000,1,4871000),(64,39,10,7705000,1,7705000),(65,39,17,2842200,1,2842200),(66,39,13,3291000,1,3291000),(67,40,33,1461600,1,1461600),(68,40,34,6434000,1,6434000),(69,40,35,5871000,1,5871000),(70,40,37,3940000,1,3940000),(71,41,54,2870000,1,2870000),(72,41,47,3838950,1,3838950),(73,41,50,5594400,1,5594400),(74,41,51,2474350,1,2474350),(75,42,10,7705000,1,7705000),(76,42,13,3291000,1,3291000),(77,42,33,1461600,1,1461600),(78,42,34,6434000,1,6434000);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `Order_Status_ID` int NOT NULL AUTO_INCREMENT,
  `Order_Status_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Order_Status_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,'Pending',1),(2,'Processing',1),(3,'Completed',1),(4,'Canceled',1);
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset`
--

DROP TABLE IF EXISTS `password_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset` (
  `Reset_ID` int NOT NULL AUTO_INCREMENT,
  `User_ID` int DEFAULT NULL,
  `Reset_Password` longtext COLLATE utf8mb3_bin DEFAULT NULL,
  `Time_created` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Reset_ID`),
  KEY `FK_Password_Reset_User_HE091283_idx` (`User_ID`),
  CONSTRAINT `FK_Password_Reset_User_HE091283` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset`
--

LOCK TABLES `password_reset` WRITE;
/*!40000 ALTER TABLE `password_reset` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pc`
--

DROP TABLE IF EXISTS `pc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pc` (
  `Product_ID` int NOT NULL,
  `Mainboard_ID` int NOT NULL,
  `CPU_ID` int NOT NULL,
  `RAM_ID` int NOT NULL,
  `VGA_ID` int NOT NULL,
  `Storage_ID` int NOT NULL,
  `PSU_ID` int NOT NULL,
  `Case_ID` int NOT NULL,
  PRIMARY KEY (`Product_ID`),
  KEY `FK__PC__Mainboard_ID__47DBAE45` (`Mainboard_ID`),
  KEY `FK__PC__CPU_ID__48CFD27E` (`CPU_ID`),
  KEY `FK__PC__RAM_ID__49C3F6B7` (`RAM_ID`),
  KEY `FK__PC__VGA_ID__4AB81AF0` (`VGA_ID`),
  KEY `FK__PC__Storage_ID__4BAC3F29` (`Storage_ID`),
  KEY `FK__PC__PSU_ID__4CA06362` (`PSU_ID`),
  KEY `FK__PC__Case_ID__4D94879B` (`Case_ID`),
  CONSTRAINT `FK__PC__Case_ID__4D94879B` FOREIGN KEY (`Case_ID`) REFERENCES `case` (`Case_ID`),
  CONSTRAINT `FK__PC__CPU_ID__48CFD27E` FOREIGN KEY (`CPU_ID`) REFERENCES `cpu` (`CPU_ID`),
  CONSTRAINT `FK__PC__Mainboard_ID__47DBAE45` FOREIGN KEY (`Mainboard_ID`) REFERENCES `mainboard` (`Mainboard_ID`),
  CONSTRAINT `FK__PC__Product_ID__46E78A0C` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`),
  CONSTRAINT `FK__PC__PSU_ID__4CA06362` FOREIGN KEY (`PSU_ID`) REFERENCES `psu` (`PSU_ID`),
  CONSTRAINT `FK__PC__RAM_ID__49C3F6B7` FOREIGN KEY (`RAM_ID`) REFERENCES `ram` (`RAM_ID`),
  CONSTRAINT `FK__PC__Storage_ID__4BAC3F29` FOREIGN KEY (`Storage_ID`) REFERENCES `storage` (`Storage_ID`),
  CONSTRAINT `FK__PC__VGA_ID__4AB81AF0` FOREIGN KEY (`VGA_ID`) REFERENCES `vga` (`VGA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pc`
--

LOCK TABLES `pc` WRITE;
/*!40000 ALTER TABLE `pc` DISABLE KEYS */;
INSERT INTO `pc` VALUES (1,1,2,1,1,1,6,3),(2,2,3,4,5,2,7,5),(3,1,1,5,3,3,3,10),(4,3,4,2,4,1,4,12),(5,4,3,3,6,2,5,3),(6,5,6,4,8,4,7,4),(7,15,7,6,4,5,2,5),(8,12,3,7,5,6,3,6),(9,13,8,8,6,7,4,7),(10,14,4,9,8,3,6,8),(11,8,7,2,9,4,8,9),(12,9,9,3,1,5,9,10),(13,10,10,4,2,6,1,11),(14,11,12,5,3,8,2,12),(15,5,11,1,4,3,3,13),(16,6,4,2,5,2,10,14),(17,7,5,4,7,3,1,15),(18,2,6,5,8,4,3,16),(19,3,2,6,9,5,4,17),(20,4,3,4,10,6,5,18),(21,5,4,3,12,2,6,19),(22,6,7,5,13,3,7,20),(23,11,8,7,14,4,2,21),(24,12,5,8,11,7,3,22),(25,13,3,9,12,8,4,23),(26,14,1,2,13,2,6,24),(27,15,2,1,14,1,7,25),(28,6,3,7,11,2,8,26),(29,5,5,3,10,3,9,15),(30,7,6,4,6,7,1,17),(31,1,1,1,1,1,1,1),(32,2,2,2,2,2,2,2),(33,3,3,3,3,3,3,36),(34,4,4,4,4,4,4,37),(35,5,5,5,5,5,5,38),(36,6,6,6,6,6,6,39),(37,7,7,7,7,7,7,40),(38,8,8,8,8,8,8,41),(39,9,9,9,9,1,9,1),(40,10,10,1,10,2,10,2),(41,11,11,2,11,3,1,36),(42,12,12,3,12,4,2,37),(43,13,1,4,13,5,3,38),(44,14,2,5,14,6,4,39),(45,15,3,6,1,7,5,40),(46,1,4,7,2,8,6,27),(47,2,5,8,3,1,7,28),(48,3,6,9,4,2,8,29),(49,4,7,1,5,3,9,30),(50,5,8,2,6,4,10,31),(51,6,9,3,7,5,1,32),(52,7,10,4,8,6,2,33),(53,8,11,5,9,7,3,34),(54,9,12,6,10,8,4,35),(55,10,1,7,11,1,5,28),(56,11,2,8,12,2,6,29),(57,12,3,9,13,3,7,32),(58,13,4,1,14,4,8,33),(59,14,5,2,1,5,9,34),(60,15,6,3,2,6,10,27);
/*!40000 ALTER TABLE `pc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Product_ID` int NOT NULL AUTO_INCREMENT,
  `Product_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Description` longtext,
  `Status` tinyint(1) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Product_Status_ID` int DEFAULT NULL,
  `SalePercentage` double DEFAULT '0',
  `Category_ID` int DEFAULT NULL,
  PRIMARY KEY (`Product_ID`),
  KEY `FK_Product_Product_Status_HE170004_idx` (`Product_Status_ID`),
  KEY `FK_Product_Category_HE170011_idx` (`Category_ID`),
  CONSTRAINT `FK_Product_Category_HE170011` FOREIGN KEY (`Category_ID`) REFERENCES `category` (`category_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Product_Product_Status_HE170004` FOREIGN KEY (`Product_Status_ID`) REFERENCES `product_status` (`Product_Status_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'QuantumEdge','Dive into a cutting-edge gaming experience with QuantumEdge. This high-performance gaming PC combines advanced technology and lightning-fast processing for immersive gameplay like never before.',1,9,1,0,1),(2,'CyberByte','Unleash unparalleled power and precision with CyberByte. This gaming PC dominates the virtual battlefield with lightning-fast speeds and flawless execution, giving you the ultimate gaming edge.',1,11,2,10,1),(3,'TechNexus','Experience the convergence of technology and gaming prowess with TechNexus. This high-performance gaming PC offers seamless connectivity, lightning-fast processing, and immersive visuals, empowering gamers to push boundaries and dominate the virtual realm.',1,12,0,0,1),(4,'AeroCore','Take flight with AeroCore, the gaming PC that soars above the competition. With its powerful hardware, advanced cooling system, and aerodynamic design, AeroCore delivers unparalleled performance, ensuring every gaming session is a thrilling and seamless experience.',1,12,0,0,1),(5,'SynthWave',' Immerse yourself in the neon-drenched world of SynthWave. This gaming PC combines retro aesthetics with futuristic power, offering blazing-fast speeds, stunning visuals, and a nostalgic gaming experience that will transport you to a realm where old-school charm meets cutting-edge technology.',1,11,1,0,1),(6,'MegaByte','Unleash the power of MegaByte, the titan of gaming PCs. With its exceptional processing capacity and lightning-fast speeds, MegaByte tears through the most demanding games, delivering a larger-than-life gaming experience that immerses you in a world of unparalleled excitement and adventure.',1,11,0,0,1),(7,'TurboTech','Experience gaming at warp speed with TurboTech. This powerhouse gaming PC is fueled by turbocharged performance, offering blistering speeds, unrivaled responsiveness, and seamless gameplay, leaving your opponents in the dust and propelling you to victory.',1,10,2,20,1),(8,'NexusPrime','Step into the realm of gaming supremacy with NexusPrime. This gaming PC serves as the nexus of cutting-edge technology, delivering breathtaking graphics, lightning-fast processing, and seamless connectivity, ensuring you stay at the forefront of the gaming universe.',1,10,0,0,1),(9,'DynaPulse','Harness the dynamic power of DynaPulse, the gaming PC that pulsates with speed and precision. With its unmatched processing capabilities and powerful performance, DynaPulse delivers an adrenaline-fueled gaming experience, allowing you to unleash your true gaming potential.',1,10,0,0,1),(10,'BlazeForce',' Ignite your gaming passion with BlazeForce. This gaming PC sets the gaming world on fire, combining blazing-fast speeds, intense graphics, and immersive audio, enabling you to unleash your skills and dominate the gaming arena with an unstoppable force.',1,11,1,0,1),(11,'AlphaTech','Rise to alpha status with AlphaTech, the gaming PC that embodies power and sophistication. With its state-of-the-art components, cutting-edge features, and unmatched performance, AlphaTech empowers you to conquer every virtual challenge and emerge as the ultimate gaming champion.',1,14,0,0,1),(12,'PowerXcel','Experience unparalleled power and precision with PowerXcel. This gaming PC combines exceptional processing capabilities, high-speed connectivity, and stunning visuals to deliver an electrifying gaming experience that propels you to the top of the leaderboard.',1,15,1,0,1),(13,'ElectroByte',' Enter the realm of electrifying gaming with ElectroByte. This gaming PC harnesses lightning-fast processing and stunning graphics to create a gaming experience that sparks with excitement, immersing you in a world where every pixel comes alive.',1,14,0,0,1),(14,'SwiftSpark','Unleash your gaming potential with SwiftSpark, the gaming PC that ignites your performance. With its swift processing, seamless gameplay, and stunning visuals, SwiftSpark ensures that every gaming moment is a spark of brilliance.',1,17,0,0,1),(15,'HyperNova','Blast off into gaming greatness with HyperNova. This gaming PC harnesses the power of a cosmic explosion, offering exceptional performance, stunning graphics, and unrivaled speed, transporting you to the outer reaches of the gaming universe.',1,10,1,0,1),(16,'PixelForge','Craft your gaming masterpiece with PixelForge. This gaming PC delivers pixel-perfect visuals, exceptional processing power, and immersive gameplay, allowing you to forge your own path and create unforgettable gaming experiences.',1,11,0,0,1),(17,'CyberFusion','Immerse yourself in the fusion of cybernetic power and gaming excellence with CyberFusion. This gaming PC combines cutting-edge technology, lightning-fast speeds, and stunning visuals to create a seamless fusion of virtual worlds and unparalleled gaming adventures.',1,11,2,10,1),(18,'TechVortex','Step into the whirlwind of gaming prowess with TechVortex. This gaming PC harnesses lightning-fast speeds, immersive graphics, and seamless connectivity, propelling you into the heart of the action with unparalleled precision and performance.',1,12,0,0,1),(19,'QuantumPulse','Experience gaming with quantum precision and pulse-pounding speed with QuantumPulse. This high-performance gaming PC utilizes advanced quantum technology to deliver mind-bending processing power, stunning visuals, and lightning-fast response times, ensuring you stay ahead of the competition.',1,11,2,0,1),(20,'SynthTech','Immerse yourself in a retro-futuristic gaming experience with SynthTech. This gaming PC combines nostalgia-inducing aesthetics with cutting-edge technology, providing smooth gameplay, vibrant visuals, and a captivating synthwave soundtrack that transports you back in time while propelling you into the future of gaming.',1,10,0,0,1),(21,'MegaCore',' Unleash the might of MegaCore, the gaming PC powerhouse. With its exceptional processing capabilities and lightning-fast speeds, MegaCore delivers uncompromising performance, allowing you to conquer virtual worlds with ease and precision.',1,12,1,0,1),(22,'TurboBlaze','Ignite your gaming passion with TurboBlaze, the gaming PC that blazes a trail to victory. With turbocharged performance, blazing-fast speeds, and immersive visuals, TurboBlaze empowers you to push the limits, delivering an intense and exhilarating gaming experience.',1,12,1,0,1),(23,'NexusByte','Discover the perfect balance of power and connectivity with NexusByte. This gaming PC seamlessly blends high-performance components with advanced connectivity options, allowing you to unlock new gaming horizons, connect with fellow gamers, and dominate the virtual realm',1,11,0,0,1),(24,'DynaForce',' Unleash the force of gaming with DynaForce. This gaming PC packs a punch with its dynamic processing power and lightning-fast speeds, delivering an explosive gaming experience that propels you to new heights of performance and excitement.',1,10,2,15,1),(25,'RapidTech','Experience gaming at breakneck speeds with RapidTech. This high-speed gaming PC combines cutting-edge technology with exceptional performance, ensuring swift and seamless gameplay that keeps you at the forefront of the action.',1,10,0,0,1),(26,'AlphaByte','Rise to alpha status with AlphaByte, the gaming PC that commands respect. With its formidable processing power and advanced features, AlphaByte empowers you to dominate the gaming landscape, unleashing your true gaming potential and claiming your place as the alpha gamer.',1,12,1,0,1),(27,'PowerCore','Tap into unrivaled power and performance with PowerCore. This gaming PC harnesses raw processing power and superior graphics capabilities, enabling you to tackle the most demanding games with ease and precision, and unleashing a new level of gaming excellence.',1,13,0,0,1),(28,'ElectroPulse','Feel the electrifying energy of gaming with ElectroPulse. This gaming PC delivers lightning-fast processing, stunning visuals, and immersive audio, creating an electrifying gaming experience that sparks excitement and ignites your gaming passion.',1,14,2,10,1),(29,'SwiftTech',' Embrace the swiftness of gaming with SwiftTech. This gaming PC offers lightning-fast speeds, seamless gameplay, and fluid graphics, ensuring that your gaming experience is swift, responsive, and incredibly immersive.',1,15,2,20,1),(30,'HyperStream','Dive into a hyper-real gaming experience with HyperStream. This gaming PC delivers unparalleled speed and performance, immersing you in a world where every movement is lightning-quick, every detail is razor-sharp, and every game session is a thrilling adventure.',1,16,1,0,1),(31,'ElitePro Workstation','Experience professional-grade performance and reliability with the ElitePro Workstation. This powerhouse combines cutting-edge technology, exceptional processing power, and precision engineering to deliver an unmatched workstation experience for demanding professionals.',1,13,1,0,3),(32,'PowerForge Workstation','Unleash your creative potential with the PowerForge Workstation. Engineered for maximum productivity, this workstation combines relentless power, lightning-fast speeds, and advanced graphics capabilities, empowering you to tackle complex tasks with ease and unlock new levels of creativity.',1,11,1,0,3),(33,'OptimaTech Workstation','Achieve optimal performance and efficiency with the OptimaTech Workstation. This high-powered workstation is designed to deliver exceptional processing power, seamless multitasking, and reliable stability, making it the perfect companion for intensive workloads and resource-demanding tasks.',1,10,2,10,3),(34,'PrecisionMax Workstation','Experience precision and performance at its best with the PrecisionMax Workstation. This workstation is meticulously engineered to provide unmatched accuracy, top-tier processing capabilities, and advanced graphics, allowing professionals to push the boundaries of their work and achieve exceptional results.',1,9,1,0,3),(35,'ProVision Workstation','Gain a visionary edge with the ProVision Workstation. Equipped with cutting-edge technology and top-notch components, this workstation offers a robust and reliable platform for professionals to visualize, create, and innovate with utmost precision and efficiency.',1,11,1,0,3),(36,'WorkMaster Pro','Master your work with the WorkMaster Pro Workstation. This versatile powerhouse combines superior processing power, exceptional graphics, and comprehensive connectivity options, empowering professionals to tackle complex tasks, streamline workflows, and excel in their fields.',1,10,2,30,3),(37,'TechPro X Workstation','Experience the next level of professional computing with the TechPro X Workstation. Designed for demanding workloads and resource-intensive applications, this workstation delivers lightning-fast speeds, advanced performance, and unmatched reliability, ensuring professionals stay at the forefront of their industries.',1,7,2,20,3),(38,'EonWork Station','Step into a new era of productivity with the EonWork Station. This workstation combines futuristic design, exceptional processing capabilities, and innovative features, providing professionals with an immersive and efficient working environment to unlock their full potential.',1,10,2,15,3),(39,'MegaCore Workstation','Harness the mega power of the MegaCore Workstation. This high-performance workstation is built to handle complex tasks, intense workloads, and data-intensive applications, allowing professionals to achieve optimal productivity and tackle the most demanding projects with ease.',1,11,0,0,3),(40,'ProGenius Workstation','Tap into your genius with the ProGenius Workstation. This intelligently engineered workstation combines powerful performance, advanced features, and seamless connectivity, enabling professionals to unleash their creativity, optimize workflows, and bring their ideas to life with unmatched precision.',1,10,0,0,3),(41,'InnovatePro Workstation','Fuel innovation with the InnovatePro Workstation. This cutting-edge powerhouse is designed to inspire creativity, enhance collaboration, and drive breakthrough solutions, providing professionals with the tools they need to push boundaries, pioneer new ideas, and make a lasting impact.',1,8,0,0,3),(42,'TurboTech Workstation','Experience turbocharged performance with the TurboTech Workstation. Engineered for speed and efficiency, this workstation delivers lightning-fast processing, high-end graphics, and seamless multitasking capabilities, empowering professionals to turbocharge their productivity and achieve extraordinary results.',1,10,0,0,3),(43,'ApexWork Station','Reach the pinnacle of performance with the ApexWork Station. This top-tier workstation offers unparalleled processing power, exceptional graphics, and enterprise-level reliability, allowing professionals to scale new heights, tackle complex tasks, and elevate their work to new levels of excellence.',1,11,1,0,3),(44,'ProVisionX Workstation','Step into the future of professional computing with the ProVisionX Workstation. This advanced workstation combines cutting-edge technology, immersive visuals, and superior performance, offering professionals a platform to envision, create, and execute their projects with precision and confidence.',1,12,2,5,3),(45,'DynamoForce Workstation','Unleash dynamic force and performance with the DynamoForce Workstation. This workstation delivers lightning-fast speeds, unparalleled processing power, and robust reliability, empowering professionals to handle intensive workloads, process large datasets, and achieve exceptional results with ease.',1,13,1,0,3),(46,'NanoFusion Mini','Experience the fusion of power and compactness with the NanoFusion Mini. This mini PC packs a punch with its small form factor, delivering impressive performance, efficient multitasking, and seamless connectivity, making it the ideal companion for both work and entertainment on-the-go.',1,14,1,0,2),(47,'PocketTech MiniPC','Unleash the power of portability with the PocketTech MiniPC. This ultra-compact powerhouse offers exceptional performance and versatility in a pocket-sized package, allowing you to carry your workstation wherever you go, without compromising on power or functionality.',1,14,2,5,2),(48,'MicroMax Pro','Maximize your computing potential with the MicroMax Pro Mini PC. This pint-sized powerhouse combines powerful processing capabilities, advanced features, and expandable storage options, making it the perfect solution for space-conscious users who demand high performance in a compact form factor.',1,16,0,0,2),(49,'CompactCore Mini','Experience the core essentials of computing in a compact package with the CompactCore Mini. Designed for efficiency and convenience, this mini PC offers reliable performance, versatile connectivity, and a small footprint, making it an ideal choice for home or office setups where space is at a premium.',1,10,1,0,2),(50,'TinyTech MiniPC','Discover the big possibilities of the TinyTech MiniPC. Despite its small size, this mini PC delivers impressive performance, efficient multitasking, and seamless connectivity, enabling you to handle everyday computing tasks with ease while saving valuable desk space.',1,10,2,10,2),(51,'NanoBeam Mini','Harness the power of a miniaturized computing beam with the NanoBeam Mini. This mini PC combines sleek design, powerful processing, and versatile connectivity, allowing you to effortlessly beam through your daily computing tasks with efficiency and style.',1,11,2,15,2),(52,'MiniMax Ultra','Experience maximum performance in a mini form factor with the MiniMax Ultra. This mini PC offers a perfect blend of power and portability, delivering top-notch performance, expandability, and versatile connectivity options, making it an ideal choice for users who need high-end computing capabilities on-the-go.',1,13,1,0,2),(53,'MicroBlade Pro','Slice through your computing needs with the MicroBlade Pro Mini PC. This compact powerhouse features cutting-edge performance, robust features, and exceptional energy efficiency, making it the perfect solution for users who require both power and mobility in their computing setup.',1,14,1,0,2),(54,'PocketPower MiniPC','Carry the power of a full-fledged computer in your pocket with the PocketPower MiniPC. Despite its compact size, this mini PC packs a punch with its impressive processing power, storage options, and versatile connectivity, allowing you to stay productive no matter where you are.',1,9,2,30,2),(55,'NanoEdge Mini','Immerse yourself in a world of computing possibilities with the NanoEdge Mini. This mini PC features a stunning edge-to-edge display, powerful performance, and seamless connectivity, providing a captivating visual experience and optimal productivity in a space-saving design.',1,12,0,0,2),(56,'MicroFusion Pro','Unleash the fusion of power and compactness with the MicroFusion Pro Mini PC. Equipped with advanced features, high-performance components, and expandable storage, this mini PC offers a seamless computing experience without compromising on power or versatility.',1,11,0,0,2),(57,'CompactCube MiniPC','Think inside the box with the CompactCube MiniPC. This mini PC offers a space-saving design, reliable performance, and efficient multitasking capabilities, making it a perfect choice for users who desire a compact and clutter-free computing solution.',1,15,0,0,2),(58,'MiniMighty Pro','Embrace the might of the MiniMighty Pro Mini PC. Packed with powerful hardware, advanced features, and seamless connectivity options, this mini PC delivers exceptional performance and versatility, making it an ideal companion for intensive tasks and multimedia experiences.',1,14,1,0,2),(59,'MicroGlide Mini','Glide through your computing tasks with ease using the MicroGlide Mini. This compact and sleek mini PC combines smooth performance, efficient multitasking, and energy-saving features, providing a seamless computing experience in a small and stylish package.',1,13,2,10,2),(60,'PocketRocket MiniPC','Ignite your productivity with the PocketRocket MiniPC. Designed for users who require fast and efficient computing on-the-go, this mini PC delivers blazing-fast speeds, compact portability, and versatile connectivity, allowing you to achieve peak performance wherever you are.',1,11,2,15,2);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `Product_Images_ID` int NOT NULL AUTO_INCREMENT,
  `Product_ID` int DEFAULT NULL,
  `Images` longtext,
  PRIMARY KEY (`Product_Images_ID`),
  KEY `FK__Product_I__Produ__440B1D61` (`Product_ID`),
  CONSTRAINT `FK__Product_I__Produ__440B1D61` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,1,'img/product/XIGMATEK_NYA_3F_RGB_1.png'),(2,1,'img/product/XIGMATEK_NYA_3F_RGB_2.png'),(3,1,'img/product/XIGMATEK_NYA_3F_RGB_3.png'),(4,2,'img/product/MIK_TN10_1.jpg'),(5,2,'img/product/MIK_TN10_2.jpg'),(6,3,'img/product/Cougar_DarkBlader_X7_Midnight_Green_1.png'),(7,3,'img/product/Cougar_DarkBlader_X7_Midnight_Green_2.png'),(8,3,'img/product/Cougar_DarkBlader_X7_Midnight_Green_3.png'),(9,4,'img/product/JONSBO_D31_MESH_BLACK_1.jpg'),(10,4,'img/product/JONSBO_D31_MESH_BLACK_2.jpg'),(11,4,'img/product/JONSBO_D31_MESH_BLACK_3.jpg'),(12,5,'img/product/XIGMATEK_NYA_3F_RGB_1.png'),(13,5,'img/product/XIGMATEK_NYA_3F_RGB_2.png'),(14,5,'img/product/XIGMATEK_NYA_3F_RGB_3.png'),(15,6,'img/product/1st_Player_XF_Black_1.png'),(16,6,'img/product/1st_Player_XF_Black_2.png'),(17,6,'img/product/1st_Player_XF_Black_3.png'),(18,7,'img/product/MIK_TN10_1.jpg'),(19,7,'img/product/MIK_TN10_2.jpg'),(20,8,'img/product/Cougar_Archon_2_Mesh_White_RGB_1.jpg'),(21,8,'img/product/Cougar_Archon_2_Mesh_White_RGB_2.jpg'),(22,8,'img/product/Cougar_Archon_2_Mesh_White_RGB_3.jpg'),(23,9,'img/product/MIK_LV12_M_BLACK_1.png'),(24,9,'img/product/MIK_LV12_M_BLACK_2.png'),(25,9,'img/product/MIK_LV12_M_BLACK_3.png'),(26,10,'img/product/MIK_LV12_M_WHITE_1.png'),(27,10,'img/product/MIK_LV12_M_WHITE_2.png'),(28,10,'img/product/MIK_LV12_M_WHITE_3.png'),(29,11,'img/product/MIK_LV12_BLACK_1.png'),(30,11,'img/product/MIK_LV12_BLACK_2.png'),(31,11,'img/product/MIK_LV12_BLACK_3.png'),(32,12,'img/product/Cougar_DarkBlader_X7_Midnight_Green_1.png'),(33,12,'img/product/Cougar_DarkBlader_X7_Midnight_Green_2.png'),(34,12,'img/product/Cougar_DarkBlader_X7_Midnight_Green_3.png'),(35,13,'img/product/JONSBO_D31_MESH_WHITE_1.jpg'),(36,13,'img/product/JONSBO_D31_MESH_WHITE_2.jpg'),(37,13,'img/product/JONSBO_D31_MESH_WHITE_3.jpg'),(38,14,'img/product/JONSBO_D31_MESH_BLACK_1.jpg'),(39,14,'img/product/JONSBO_D31_MESH_BLACK_2.jpg'),(40,14,'img/product/JONSBO_D31_MESH_BLACK_3.jpg'),(41,15,'img/product/GAMING_HAWK_F1_BLACK_1.jpg'),(42,15,'img/product/GAMING_HAWK_F1_BLACK_2.jpg'),(43,15,'img/product/GAMING_HAWK_F1_BLACK_3.jpg'),(44,16,'img/product/GAMING_HAWK_F1_WHITE_1.jpg'),(45,16,'img/product/GAMING_HAWK_F1_WHITE_2.jpg'),(46,16,'img/product/GAMING_HAWK_F1_WHITE_3.jpg'),(47,17,'img/product/CORSAIR_4000D_AIRFLOW_TG_BLACK_1.png'),(48,17,'img/product/CORSAIR_4000D_AIRFLOW_TG_BLACK_2.png'),(49,17,'img/product/CORSAIR_4000D_AIRFLOW_TG_BLACK_3.png'),(50,18,'img/product/CORSAIR_4000D_AIRFLOW_TG_WHITE_1.jpg'),(51,18,'img/product/CORSAIR_4000D_AIRFLOW_TG_WHITE_2.jpg'),(52,18,'img/product/CORSAIR_4000D_AIRFLOW_TG_WHITE_3.jpg'),(53,19,'img/product/COUGAR_ARCHON_2_MESH_BLACK_RGB_1.jpg'),(54,19,'img/product/COUGAR_ARCHON_2_MESH_BLACK_RGB_2.jpg'),(55,19,'img/product/COUGAR_ARCHON_2_MESH_BLACK_RGB_3.jpg'),(56,20,'img/product/XIGMATEK_ELITE_ONE_ARCTIC_3F_1.png'),(57,20,'img/product/XIGMATEK_ELITE_ONE_ARCTIC_3F_2.png'),(58,20,'img/product/XIGMATEK_ELITE_ONE_ARCTIC_3F_3.png'),(59,21,'img/product/VITRA_POSEIDON_R15_RGB_BLACK_1.jpg'),(60,21,'img/product/VITRA_POSEIDON_R15_RGB_BLACK_2.jpg'),(61,21,'img/product/VITRA_POSEIDON_R15_RGB_BLACK_3.jpg'),(62,22,'img/product/VITRA_CERES_V308_ARGB_1FRGB_WHITE_1.jpg'),(63,22,'img/product/VITRA_CERES_V308_ARGB_1FRGB_WHITE_2.jpg'),(64,22,'img/product/VITRA_CERES_V308_ARGB_1FRGB_WHITE_3.jpg'),(65,23,'img/product/VITRA_CERES_V305_G_3FRGB_BLACK_1.jpg'),(66,23,'img/product/VITRA_CERES_V305_G_3FRGB_BLACK_2.jpg'),(67,23,'img/product/VITRA_CERES_V305_G_3FRGB_BLACK_3.jpg'),(68,24,'img/product/LIAN_LI_PC_O11_DYNAMIC_EVO_WHITE_1.jpg'),(69,24,'img/product/LIAN_LI_PC_O11_DYNAMIC_EVO_WHITE_2.jpg'),(70,24,'img/product/LIAN_LI_PC_O11_DYNAMIC_EVO_WHITE_3.jpg'),(71,25,'img/product/INFINITY_JIKAN_1.jpg'),(72,25,'img/product/INFINITY_JIKAN_2.jpg'),(73,26,'img/product/COUGAR_DUOFACE_RGB_1.png'),(74,26,'img/product/COUGAR_DUOFACE_RGB_2.png'),(75,26,'img/product/COUGAR_DUOFACE_RGB_3.png'),(76,27,'img/product/COUGAR_DARKBLADER_G_ARGB_1.jpg'),(77,27,'img/product/COUGAR_DARKBLADER_G_ARGB_2.jpg'),(78,27,'img/product/COUGAR_DARKBLADER_G_ARGB_3.jpg'),(79,28,'img/product/COOLER_MASTER_MASTERBOX_520_ARGB_WHITE_1.png'),(80,28,'img/product/COOLER_MASTER_MASTERBOX_520_ARGB_WHITE_2.png'),(81,28,'img/product/COOLER_MASTER_MASTERBOX_520_ARGB_WHITE_3.png'),(82,29,'img/product/CORSAIR_4000D_AIRFLOW_TG_BLACK_1.png'),(83,29,'img/product/CORSAIR_4000D_AIRFLOW_TG_BLACK_2.png'),(84,29,'img/product/CORSAIR_4000D_AIRFLOW_TG_BLACK_3.png'),(85,30,'img/product/COUGAR_ARCHON_2_MESH_BLACK_RGB_1.jpg'),(86,30,'img/product/COUGAR_ARCHON_2_MESH_BLACK_RGB_2.jpg'),(87,30,'img/product/COUGAR_ARCHON_2_MESH_BLACK_RGB_3.jpg'),(88,31,'img/product/JETEK_EM1_1.png'),(89,31,'img/product/JETEK_EM1_2.png'),(90,31,'img/product/JETEK_EM1_3.png'),(91,32,'img/product/Jetek_Mini_I8-22B_1.png'),(92,32,'img/product/Jetek_Mini_I8-22B_2.png'),(93,33,'img/product/Be_Quiet_Base_600_1.jpg'),(94,33,'img/product/Be_Quiet_Base_600_2.jpg'),(95,33,'img/product/Be_Quiet_Base_600_3.jpg'),(96,34,'img/product/DeepCool_Macube_550_1.jpg'),(97,34,'img/product/DeepCool_Macube_550_2.jpg'),(98,34,'img/product/DeepCool_Macube_550_3.jpg'),(99,35,'img/product/Dell_Tower_3660_1.jpg'),(100,35,'img/product/Dell_Tower_3660_2.jpg'),(101,35,'img/product/Dell_Tower_3660_3.jpg'),(102,36,'img/product/JETEK_EN15_1.jpg'),(103,36,'img/product/JETEK_EN15_2.jpg'),(104,36,'img/product/JETEK_EN15_3.jpg'),(105,37,'img/product/JETEK_EN16_1.jpg'),(106,37,'img/product/JETEK_EN16_2.jpg'),(107,37,'img/product/JETEK_EN16_3.jpg'),(108,38,'img/product/Montech_Air_100_Lite_Black_1.jpg'),(109,38,'img/product/Montech_Air_100_Lite_Black_2.jpg'),(110,38,'img/product/Montech_Air_100_Lite_Black_3.jpg'),(111,39,'img/product/JETEK_EM1_1.png'),(112,39,'img/product/JETEK_EM1_2.png'),(113,39,'img/product/JETEK_EM1_3.png'),(114,40,'img/product/Jetek_Mini_I8-22B_1.png'),(115,40,'img/product/Jetek_Mini_I8-22B_2.png'),(116,41,'img/product/Be_Quiet_Base_600_1.jpg'),(117,41,'img/product/Be_Quiet_Base_600_2.jpg'),(118,41,'img/product/Be_Quiet_Base_600_3.jpg'),(119,42,'img/product/DeepCool_Macube_550_1.jpg'),(120,42,'img/product/DeepCool_Macube_550_2.jpg'),(121,42,'img/product/DeepCool_Macube_550_3.jpg'),(122,43,'img/product/Dell_Tower_3660_1.jpg'),(123,43,'img/product/Dell_Tower_3660_2.jpg'),(124,43,'img/product/Dell_Tower_3660_3.jpg'),(125,44,'img/product/JETEK_EN15_1.jpg'),(126,44,'img/product/JETEK_EN15_2.jpg'),(127,44,'img/product/JETEK_EN15_3.jpg'),(128,45,'img/product/JETEK_EN16_1.jpg'),(129,45,'img/product/JETEK_EN16_2.jpg'),(130,45,'img/product/JETEK_EN16_3.jpg'),(131,46,'img/product/JONSBO_C6_BLACK_1.jpg'),(132,46,'img/product/JONSBO_C6_BLACK_2.jpg'),(133,46,'img/product/JONSBO_C6_BLACK_3.jpg'),(134,47,'img/product/JONSBO_C6_HANDLE_BLACK_1.jpg'),(135,47,'img/product/JONSBO_C6_HANDLE_BLACK_2.jpg'),(136,47,'img/product/JONSBO_C6_HANDLE_BLACK_3.jpg'),(137,48,'img/product/JONSBO_C6_HANDLE_WHITE_1.jpg'),(138,48,'img/product/JONSBO_C6_HANDLE_WHITE_2.jpg'),(139,48,'img/product/JONSBO_C6_HANDLE_WHITE_3.jpg'),(140,49,'img/product/JONSBO_C6_WHITE_1.jpg'),(141,49,'img/product/JONSBO_C6_WHITE_2.jpg'),(142,49,'img/product/JONSBO_C6_WHITE_3.jpg'),(143,50,'img/product/JONSBO_N2_BLACK_1.jpg'),(144,50,'img/product/JONSBO_N2_BLACK_2.jpg'),(145,50,'img/product/JONSBO_N2_BLACK_3.jpg'),(146,51,'img/product/JONSBO_N2_WHITE_1.jpg'),(147,51,'img/product/JONSBO_N2_WHITE_2.jpg'),(148,51,'img/product/JONSBO_N2_WHITE_3.jpg'),(149,52,'img/product/Lian_Li_A4_H2O_X4_1.jpg'),(150,52,'img/product/Lian_Li_A4_H2O_X4_2.jpg'),(151,53,'img/product/LIAN_LI_PC_O11_Dynamic_Mini_Air_Black_1.jpg'),(152,53,'img/product/LIAN_LI_PC_O11_Dynamic_Mini_Air_Black_2.jpg'),(153,53,'img/product/LIAN_LI_PC_O11_Dynamic_Mini_Air_Black_3.jpg'),(154,54,'img/product/Slath_Mini_ITX_1.jpg'),(155,54,'img/product/Slath_Mini_ITX_2.jpg'),(156,54,'img/product/Slath_Mini_ITX_3.jpg'),(157,55,'img/product/JONSBO_C6_HANDLE_BLACK_1.jpg'),(158,55,'img/product/JONSBO_C6_HANDLE_BLACK_2.jpg'),(159,55,'img/product/JONSBO_C6_HANDLE_BLACK_3.jpg'),(160,56,'img/product/JONSBO_C6_HANDLE_WHITE_1.jpg'),(161,56,'img/product/JONSBO_C6_HANDLE_WHITE_2.jpg'),(162,56,'img/product/JONSBO_C6_HANDLE_WHITE_3.jpg'),(163,57,'img/product/JONSBO_N2_WHITE_1.jpg'),(164,57,'img/product/JONSBO_N2_WHITE_2.jpg'),(165,57,'img/product/JONSBO_N2_WHITE_3.jpg'),(166,58,'img/product/Lian_Li_A4_H2O_X4_1.jpg'),(167,58,'img/product/Lian_Li_A4_H2O_X4_1.jpg'),(168,59,'img/product/LIAN_LI_PC_O11_Dynamic_Mini_Air_Black_1.jpg'),(169,59,'img/product/LIAN_LI_PC_O11_Dynamic_Mini_Air_Black_2.jpg'),(170,59,'img/product/LIAN_LI_PC_O11_Dynamic_Mini_Air_Black_3.jpg'),(171,60,'img/product/JONSBO_C6_BLACK_1.jpg'),(172,60,'img/product/JONSBO_C6_BLACK_2.jpg'),(173,60,'img/product/JONSBO_C6_BLACK_3.jpg');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_status`
--

DROP TABLE IF EXISTS `product_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_status` (
  `Product_Status_ID` int NOT NULL,
  `Product_Status_Name` varchar(50) COLLATE utf8mb3_bin DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Product_Status_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_status`
--

LOCK TABLES `product_status` WRITE;
/*!40000 ALTER TABLE `product_status` DISABLE KEYS */;
INSERT INTO `product_status` VALUES (0,'Normal',1),(1,'New',1),(2,'Sale',1);
/*!40000 ALTER TABLE `product_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psu`
--

DROP TABLE IF EXISTS `psu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psu` (
  `PSU_ID` int NOT NULL AUTO_INCREMENT,
  `PSU_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`PSU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psu`
--

LOCK TABLES `psu` WRITE;
/*!40000 ALTER TABLE `psu` DISABLE KEYS */;
INSERT INTO `psu` VALUES (1,'Jetek A200M',170000,1),(2,'Jetek 350W Elite V2',200000,1),(3,'Jetek J400',260000,1),(4,'1st Player PS-500FK',360000,1),(5,'Deepcool PF450D - 80 Plus',360000,1),(6,'Gigabyte P450B - 80 Plus Bronze',380000,1),(7,'FSP HV PRO 550W - 80 Plus Bronze',420000,1),(8,'Gigabyte P550B - 80 Plus Bronze',460000,1),(9,'Corsair AX1600i',551000,1),(10,'Gigabyte AORUS P1200W Platinum',425000,1);
/*!40000 ALTER TABLE `psu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ram`
--

DROP TABLE IF EXISTS `ram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ram` (
  `RAM_ID` int NOT NULL AUTO_INCREMENT,
  `RAM_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`RAM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ram`
--

LOCK TABLES `ram` WRITE;
/*!40000 ALTER TABLE `ram` DISABLE KEYS */;
INSERT INTO `ram` VALUES (1,'RAM DDR5 G.Skill Trident Z5 RGB',299000,1),(2,'RAM DDR5 TeamGroup T-Force Delta TUF RGB',255000,1),(3,'RAM DDR5 Adata XPG Lancer',249000,1),(4,'RAM DDR5 Kingston Fury Beast',149000,1),(5,'RAM DDR5 Kingston Fury Beast RGB',129000,1),(6,'RAM DDR4 G.Skill Ripjaws V',590000,1),(7,'Ram DDR4 PNY XLR8 Low Profile',550000,1),(8,'RAM DDR4 Kingston Fury Beast ',650000,1),(9,'RAM DDR4 Kingston Fury Beast RGB SE',650000,1);
/*!40000 ALTER TABLE `ram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `Role_ID` int NOT NULL AUTO_INCREMENT,
  `Role_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Role_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Customer'),(2,'Sale'),(3,'Support'),(4,'Admin');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slider` (
  `Slider_ID` int NOT NULL AUTO_INCREMENT,
  `Slider_Title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Slider_Image` longtext,
  `Backlink` longtext,
  `Note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Slider_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (1,'Slider_1','img/slider/banner-1.jpg',NULL,NULL,1),(2,'Slider_2','img/slider/banner-2.jpg',NULL,NULL,1),(3,'Slider_3','img/slider/banner-3.jpg',NULL,NULL,1),(4,'Slider_4','img/slider/banner-4.jpg',NULL,NULL,1),(5,'Slider_5','img/slider/banner-5.jpg',NULL,NULL,0);
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage`
--

DROP TABLE IF EXISTS `storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storage` (
  `Storage_ID` int NOT NULL AUTO_INCREMENT,
  `Storage_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Storage_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage`
--

LOCK TABLES `storage` WRITE;
/*!40000 ALTER TABLE `storage` DISABLE KEYS */;
INSERT INTO `storage` VALUES (1,'WD Blue',390000,1),(2,'WD Black',850000,1),(3,'WD Red',219000,1),(4,'Samsung 980 V8V1T0BW',600000,1),(5,'Samsung 970 EVO Plus',650000,1),(6,'Samsung 870 Qvo',110000,1),(7,'SSD Kingston A400 960GB SA400S37/960G',85000,1),(8,'MSI SPATIUM M390',940000,1);
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `User_ID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` longtext DEFAULT NULL,
  `Profile_picture` longtext,
  `Phone_Number` varchar(50) NOT NULL,
  `Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Role_ID` int DEFAULT NULL,
  PRIMARY KEY (`User_ID`),
  KEY `FK__User__Role_ID__267ABA7A` (`Role_ID`),
  CONSTRAINT `FK__User__Role_ID__267ABA7A` FOREIGN KEY (`Role_ID`) REFERENCES `roles` (`Role_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Cao Hoàng Việt','vietchhe170297@fpt.edu.vn','Viet11111',NULL,'0935091066	','Hà Nội, Việt Nam',1,4),(2,'Nguyễn Đức Mạnh','manhndhe170523@fpt.edu.vn','Manhdz2411',NULL,'0365616718','Bắc Ninh, Việt Nam',1,1),(3,'Phạm Cao Đức Minh','minhpcdhe170377@fpt.edu.vn','Minh12345',NULL,'0868659100	','Hà Nội, Việt Nam',1,1),(4,'Bùi Tiến Đạt','datbthe170585@fpt.edu.vn','Dat123456',NULL,'0389501823	','Hà Nội, Việt Nam',1,2),(5,'Nguyễn Duy Anh','anhndhe170163@fpt.edu.vn','Anh123456',NULL,'0836889919	','Hà Nội, Việt Nam',1,3),(13,'Nguyễn Đức Mạnh','manhduc150@yahoo.com','Manhdz2411',NULL,'0365616718','Hà Nội',1,1),(14,'Trần Văn B','saler123@gmail.com','Sale123456',NULL,'0123456789','Hà Nội',1,2),(15,'Nguyễn Đình Mạnh Linh','ndml123@gmail.com','Linh123456',NULL,'0123456789','Hà Nội',1,1),(18,'Nguyễn Đức Mạnh','manh24112003@gmail.com','Manhdz2411',NULL,'0365616718','Hà Nội, Việt Nam',1,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vga`
--

DROP TABLE IF EXISTS `vga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vga` (
  `VGA_ID` int NOT NULL AUTO_INCREMENT,
  `VGA_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`VGA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vga`
--

LOCK TABLES `vga` WRITE;
/*!40000 ALTER TABLE `vga` DISABLE KEYS */;
INSERT INTO `vga` VALUES (1,'GIGABYTE GeForce RTX 4090 GAMING OC 24G',2258000,1),(2,'ASUS Dual GeForce RTX 3060 White 8G GDDR6',362000,1),(3,'Gigabyte GeForce GTX 1660 SUPER OC 6GB GDDR6',225000,1),(4,'GIGABYTE AORUS GeForce RTX 4060 Ti ELITE 8G',619000,1),(5,'GIGABYTE AORUS GeForce RTX 4090 XTREME WATERFORCE 24G',2513000,1),(6,'GIGABYTE GeForce RTX 3060 Ti VISION OC 8G (LHR)',532000,1),(7,'GIGABYTE GeForce RTX 4060 Ti EAGLE 8G',532000,1),(8,'GIGABYTE GeForce RTX 4070 Ti AERO OC 12G',1235000,1),(9,'GIGABYTE Radeon RX 6600 XT GAMING OC 8G',555000,1),(10,'GIGABYTE Radeon RX 6700 XT GAMING OC 12G',1064000,1),(11,'ASUS TUF Gaming Radeon RX 6800 OC Edition 16GB GDDR6',1193000,1),(12,'GIGABYTE Radeon RX 7900 XT GAMING OC 20G',1277000,1),(13,'ASUS TUF Gaming Radeon RX 7900 XTX OC Edition 24GB GDDR6',1533000,1),(14,'GIGABYTE AORUS Radeon RX 6900 XT MASTER 16G',1703000,1);
/*!40000 ALTER TABLE `vga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `Wishlist_ID` int NOT NULL AUTO_INCREMENT,
  `User_ID` int DEFAULT NULL,
  `Product_ID` int DEFAULT NULL,
  PRIMARY KEY (`Wishlist_ID`),
  KEY `FK_Wishlist_User_HE179382_idx` (`User_ID`),
  KEY `FK_Wishlist_Product_HE108237_idx` (`Product_ID`),
  CONSTRAINT `FK_Wishlist_Product_HE108237` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Wishlist_User_HE179382` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (45,2,54),(47,2,47),(53,2,48),(55,2,32);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'swp391_se1726_g4'
--

--
-- Dumping routines for database 'swp391_se1726_g4'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-12 20:18:06

select * from roles;
select * from user;
select * from FAQ;
DROP TABLE IF EXISTS `FAQ`;
CREATE TABLE `FAQ` (
  `FAQ_ID` int NOT NULL AUTO_INCREMENT,
  `Question` nvarchar(256) DEFAULT NULL,
  `Answer` nvarchar(256) DEFAULT NULL,
  PRIMARY KEY (`FAQ_ID`)
) ;
select * from `user`;
select * from `order`;
select * from `order_detail`;
select * from `case`;
select * from `feedback`;
select * from `feedback_response`;

select date_format(Create_Date, '%b') 
from feedback where Create_Date > now() - interval 3 month 
group by date_format(Create_Date, '%b')
order by date_format(Create_Date, '%b') desc;

select count(feedback_response.Response_ID) from `feedback_response`, `feedback`
where feedback.Feedback_ID = feedback_response.Feedback_ID and feedback.Create_Date > now() - interval 3 month 
group by date_format(feedback.Create_Date, '%b')
order by date_format(feedback.Create_Date, '%b') desc;

select count(Feedback_ID) from `feedback` 
where Create_Date > now() - interval 3 month 
group by date_format(Create_Date, '%b')
order by date_format(Create_Date, '%b') desc;

SELECT month(Create_Date) , count(*) Feedback_ID from feedback group by month(Create_Date);
select * from `feedback` where Create_Date >= now()-interval 3 month group by date(Create_Date);
select date(Create_Date)
      where Create_Date > now() - INTERVAL 3 MONTH
      group by date(Create_Date);


select * from user;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';

update `mainboard` set Mainboard_Name = '"+name+"', Price ='322222222', Status = '1' where Mainboard_ID = "1";
update `case` set Case_Name = 'Case 1', Price ='70000000', Status = 1, Images = null where Case_ID = "1";