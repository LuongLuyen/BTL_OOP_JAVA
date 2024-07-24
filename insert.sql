-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: btloopjava
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `shortDescription` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `transport` varchar(225) NOT NULL,
  `category` varchar(150) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,'Áo Sơ Mi Nam Dài Tay Cổ Bẻ Form Rộng Thời Trang Hàn','https://down-vn.img.susercontent.com/file/sg-11134211-7qvd2-lffbx7p9vsyv95','Hoàn thành','ao-nam',100000),(2,1,'Áo Khoác Bóng Chày Có Mũ Trùm Dáng Rộng Màu Gradient Phong Cách Đường Phố Hàn Quốc Cá Tính Faru099','https://down-vn.img.susercontent.com/file/30ad440ebef02e3b4a754f667166483a','Đã hủy','ao-nam',100000),(3,2,'Áo Sơ Mi Nam Dài Tay Cổ Bẻ Form Rộng Thời Trang Hàn','https://down-vn.img.susercontent.com/file/sg-11134211-7qvd2-lffbx7p9vsyv95','Đang giao','ao-nam',100000),(4,2,'Áo Khoác Bóng Chày Có Mũ Trùm Dáng Rộng Màu Gradient Phong Cách Đường Phố Hàn Quốc Cá Tính Faru099','https://down-vn.img.susercontent.com/file/30ad440ebef02e3b4a754f667166483a','Đã hủy','ao-nam',100000),(5,1,'Quần dài thể thao dáng rộng phong cách Hồng Kông thời trang thu đông 2023 dành cho nam','https://down-vn.img.susercontent.com/file/9d540a27a8b6ee769b61df57e99c33f1','Hoàn thành','quan-dai',350000),(7,2,'Quần short đùi trơn unisex ZUTEE thể thao basic nam nữ phong cách đường phố Hàn Quốc ullzang','https://down-vn.img.susercontent.com/file/c3ea98e7aae1b7a4f9be91983a5ab888','','quan-dui',200000),(12,1,'Áo thun nam cổ tròn vải cotton mát mẫu áo phông nam tay ngắn form rộng được mua nhiều nhất','https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llkmqz5y6n9rb8','Hoàn thành','ao-thun',300000);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `shortDescription` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `status` varchar(225) NOT NULL,
  `category` varchar(150) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Áo Sơ Mi Nam Dài Tay Cổ Bẻ Form Rộng Thời Trang Hàn','https://down-vn.img.susercontent.com/file/sg-11134211-7qvd2-lffbx7p9vsyv95','100','ao-so-mi',299000),(2,1,'Áo thun nam cổ tròn vải cotton mát mẫu áo phông nam tay ngắn form rộng được mua nhiều nhất','https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llkmqz5y6n9rb8','200','ao-thun',300000),(3,1,'Áo polo nam ngắn tay trơn thương hiệu 360 Boutique trắng đen chất liệu cao cấp - POTOL415','https://down-vn.img.susercontent.com/file/20806c891297463bc0f1bb025782e623','190','ao-polo',199000),(4,1,'Áo khoác ngoài, áo gió chống nước chống gió 2 lớp mỏng form rộng phong cách Hàn Quốc','https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llawubdih3nse8','200','ao-khoac',599000),(5,1,'Quần short đùi trơn unisex ZUTEE thể thao basic nam nữ phong cách đường phố Hàn Quốc ullzang','https://down-vn.img.susercontent.com/file/c3ea98e7aae1b7a4f9be91983a5ab888','200','quan-dui',200000),(6,1,'Quần dài thể thao dáng rộng phong cách Hồng Kông thời trang thu đông 2023 dành cho nam','https://down-vn.img.susercontent.com/file/9d540a27a8b6ee769b61df57e99c33f1','200','quan-dai',350000);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `fullName` varchar(127) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'NguyenVanA','123','Nguyễn Văn A'),(2,'NguyenVanB','123','Nguyễn Văn B');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-24 11:05:06
