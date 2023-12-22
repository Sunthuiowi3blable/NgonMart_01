CREATE DATABASE  IF NOT EXISTS `online_store` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `online_store`;
-- MySQL dump 10.13  Distrib 5.7.11, for Win64 (x86_64)
--
-- Host: localhost    Database: online_store
-- ------------------------------------------------------
-- Server version	5.7.11-log

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

--
-- Table structure for table `chi_muc_gio_hang`
--

DROP TABLE IF EXISTS `chi_muc_gio_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chi_muc_gio_hang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `so_luong` int(11) NOT NULL,
  `ma_gio_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK49lmmclnjgb7eck20lwhv0cks` (`ma_gio_hang`),
  KEY `FKkd69a7wiulr4xgohxl0rlhth4` (`ma_san_pham`),
  CONSTRAINT `FK49lmmclnjgb7eck20lwhv0cks` FOREIGN KEY (`ma_gio_hang`) REFERENCES `gio_hang` (`id`),
  CONSTRAINT `FKkd69a7wiulr4xgohxl0rlhth4` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_muc_gio_hang`
--

LOCK TABLES `chi_muc_gio_hang` WRITE;
/*!40000 ALTER TABLE `chi_muc_gio_hang` DISABLE KEYS */;
INSERT INTO `chi_muc_gio_hang` VALUES (10,7,1,64),(11,1,1,54),(12,1,1,60),(13,2,1,56),(14,1,1,62),(15,1,2,88),(16,1,2,85);
/*!40000 ALTER TABLE `chi_muc_gio_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chi_tiet_don_hang`
--

DROP TABLE IF EXISTS `chi_tiet_don_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chi_tiet_don_hang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `don_gia` bigint(20) NOT NULL,
  `so_luong` int(11)  NULL,
  `ma_don_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9wl3houbukbxpixsut6uvojhy` (`ma_don_hang`),
  KEY `FK3ry84nmdxgoarx53qjxd671tk` (`ma_san_pham`),
  CONSTRAINT `FK3ry84nmdxgoarx53qjxd671tk` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`),
  CONSTRAINT `FK9wl3houbukbxpixsut6uvojhy` FOREIGN KEY (`ma_don_hang`) REFERENCES `don_hang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_don_hang`
--

LOCK TABLES `chi_tiet_don_hang` WRITE;
/*!40000 ALTER TABLE `chi_tiet_don_hang` DISABLE KEYS */;
INSERT INTO `chi_tiet_don_hang` VALUES (1,13980000,2,32,62),(2,25990000,1,32,57),(3,22490000,1,32,54);
/*!40000 ALTER TABLE `chi_tiet_don_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danh_muc`
--

DROP TABLE IF EXISTS `danh_muc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `danh_muc` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ten_danh_muc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danh_muc`
--

LOCK TABLES `danh_muc` WRITE;
/*!40000 ALTER TABLE `danh_muc` DISABLE KEYS */;
INSERT INTO `danh_muc` VALUES (1,'MÓN ĂN ĐẶC BIỆT'),(2,'ĐỒ ĂN TRƯA'),(3,'ĐỒ ĂN TỐI'),(4,'ĐỒ ĂN VẶT'),(5,'MÓN NHẬU NHÂM NHI'),(6,'BÁNH KẸO'),(7,'ĐỒ UỐNG CÓ CỒN'),(8,'NƯỚC GIẢI KHÁT'),(9,'CAFE VÀ TRÀ');
/*!40000 ALTER TABLE `danh_muc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `don_hang`
--

DROP TABLE IF EXISTS `don_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `don_hang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dia_chi_nhan` varchar(255) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `ho_ten_nguoi_nhan` varchar(255) DEFAULT NULL,
  `ngay_dat_hang` datetime DEFAULT NULL,
  `ngay_giao_hang` datetime DEFAULT NULL,
  `ngay_nhan_hang` datetime DEFAULT NULL,
  `sdt_nhan_hang` varchar(255) DEFAULT NULL,
  `trang_thai_don_hang` varchar(255) DEFAULT NULL,
  `ma_nguoi_dat` bigint(20) DEFAULT NULL,
  `ma_shipper` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnwjiboxao1uvw1siemkvs1jb9` (`ma_nguoi_dat`),
  KEY `FKgndcrlvetoudr3jaif9b7ay37` (`ma_shipper`),
  CONSTRAINT `FKgndcrlvetoudr3jaif9b7ay37` FOREIGN KEY (`ma_shipper`) REFERENCES `nguoi_dung` (`id`),
  CONSTRAINT `FKnwjiboxao1uvw1siemkvs1jb9` FOREIGN KEY (`ma_nguoi_dat`) REFERENCES `nguoi_dung` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `don_hang`
--

LOCK TABLES `don_hang` WRITE;
/*!40000 ALTER TABLE `don_hang` DISABLE KEYS */;
INSERT INTO `don_hang` VALUES (31,'bd','asdf','aaa','2018-12-01 14:38:26',NULL,NULL,'dsf','Đang chờ duyệt',NULL,NULL),(32,'fadf','asdf','aaa','2018-12-05 21:58:24',NULL,NULL,'13','created',2,NULL);
/*!40000 ALTER TABLE `don_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gio_hang`
--

DROP TABLE IF EXISTS `gio_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gio_hang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tong_tien` varchar(255) DEFAULT NULL,
  `ma_nguoi_dung` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKitverect56puwr47y7tyvy6er` (`ma_nguoi_dung`),
  CONSTRAINT `FKitverect56puwr47y7tyvy6er` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gio_hang`
--

LOCK TABLES `gio_hang` WRITE;
/*!40000 ALTER TABLE `gio_hang` DISABLE KEYS */;
INSERT INTO `gio_hang` VALUES (1,NULL,2),(2,NULL,1);
/*!40000 ALTER TABLE `gio_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hang_san_xuat`
--

DROP TABLE IF EXISTS `hang_san_xuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hang_san_xuat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ten_hang_san_xuat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hang_san_xuat`
--

LOCK TABLES `hang_san_xuat` WRITE;
/*!40000 ALTER TABLE `hang_san_xuat` DISABLE KEYS */;
INSERT INTO `hang_san_xuat` 
VALUES 
(2,'Công ty thực phẩm GreenFood'),
(3,'Công ty cổ phần giải khát'),
(4,'Cửa hàng NgonMart'),
(5,'Công ty TNHH Bia Rượu'),
(6,'Công ty thực phẩm Bắc Trung Nam'),
(7,'Bách Hóa Xanh'),
(8,'Công ty TNHH Cafe');

/*!40000 ALTER TABLE `hang_san_xuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lien_he`
--

DROP TABLE IF EXISTS `lien_he`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lien_he` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_lien_he` varchar(255) DEFAULT NULL,
  `ngay_lien_he` datetime DEFAULT NULL,
  `ngay_tra_loi` datetime DEFAULT NULL,
  `noi_dung_lien_he` varchar(255) DEFAULT NULL,
  `noi_dung_tra_loi` varchar(255) DEFAULT NULL,
  `trang_thai` varchar(255) DEFAULT NULL,
  `ma_nguoi_tra_loi` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6jm47uh7f94pc3wix0duvedde` (`ma_nguoi_tra_loi`),
  CONSTRAINT `FK6jm47uh7f94pc3wix0duvedde` FOREIGN KEY (`ma_nguoi_tra_loi`) REFERENCES `nguoi_dung` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lien_he`
--

LOCK TABLES `lien_he` WRITE;
/*!40000 ALTER TABLE `lien_he` DISABLE KEYS */;
/*!40000 ALTER TABLE `lien_he` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoi_dung`
--

DROP TABLE IF EXISTS `nguoi_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nguoi_dung` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dia_chi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ho_ten` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoi_dung`
--

LOCK TABLES `nguoi_dung` WRITE;
/*!40000 ALTER TABLE `nguoi_dung` DISABLE KEYS */;
INSERT INTO `nguoi_dung` 
VALUES 
(1,NULL,'admin@gmail.com','NHÓM 5','$2a$10$/VFMNUPBKNVRMjxPFCYKZ.lKahoLQda0EaAxdqoun1w3DqwNLa2me','123456789'),
(2,NULL,'member@gmail.com','Đỗ Huyền','$2a$10$j7Upgupou72GBmukz0G6pOATk3wlCAgaoFCEqAhSvLToD/V/1wlpu','0927126441'),
(3,NULL,'shipper@gmail.com','Phạm Hiếu','$2a$10$u2B29HDxuWVYY3fUJ8R2qunNzXngfxij5GpvlFAEtIz3JpK/WFXF2','0377126436');

/*!40000 ALTER TABLE `nguoi_dung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoidung_vaitro`
--

DROP TABLE IF EXISTS `nguoidung_vaitro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nguoidung_vaitro` (
  `ma_nguoi_dung` bigint(20) NOT NULL,
  `ma_vai_tro` bigint(20) NOT NULL,
  PRIMARY KEY (`ma_nguoi_dung`,`ma_vai_tro`),
  KEY `FKig6jxd861mqv02a8pn68r43fr` (`ma_vai_tro`),
  CONSTRAINT `FKig6jxd861mqv02a8pn68r43fr` FOREIGN KEY (`ma_vai_tro`) REFERENCES `vai_tro` (`id`),
  CONSTRAINT `FKocavcnspu1wcvp2w0s4usfgbf` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung_vaitro`
--

LOCK TABLES `nguoidung_vaitro` WRITE;
/*!40000 ALTER TABLE `nguoidung_vaitro` DISABLE KEYS */;
INSERT INTO `nguoidung_vaitro` VALUES (1,1),(1,2),(2,2),(4,2),(3,3);
/*!40000 ALTER TABLE `nguoidung_vaitro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `san_pham`
--

DROP TABLE IF EXISTS `san_pham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `san_pham` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `don_gia` bigint(20) NOT NULL,
  `don_vi_ban` int(11) NOT NULL,
  `don_vi_kho` int(11) NOT NULL,
  `ten_san_pham` varchar(255) DEFAULT NULL,
  `thong_tin_chung` varchar(255) DEFAULT NULL,
  `ma_danh_muc` bigint(20) DEFAULT NULL,
  `ma_hang_sx` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqss6n6gtx6lhb7flcka9un18t` (`ma_danh_muc`),
  KEY `FKchvjvgjnq8lbt9mjtyfn5pksq` (`ma_hang_sx`),
  CONSTRAINT `FKchvjvgjnq8lbt9mjtyfn5pksq` FOREIGN KEY (`ma_hang_sx`) REFERENCES `hang_san_xuat` (`id`),
  CONSTRAINT `FKqss6n6gtx6lhb7flcka9un18t` FOREIGN KEY (`ma_danh_muc`) REFERENCES `danh_muc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_pham`
--

LOCK TABLES `san_pham` WRITE;
/*!40000 ALTER TABLE `san_pham` DISABLE KEYS */;
INSERT INTO `san_pham` 
VALUES 
(2,20000,0,100,'Dưa hấu tráng miệng','Tráng miệng sau bữa cơm gia đình với món dưa hấu tươi mát vừa thơm ngon lại cung cấp nhiều vitamin cho cơ thể.',2,4),
(3,20000,0,100,'Bánh mì thịt','Bánh mì thịt thơm ngon nóng hổi là một món ăn vô cùng quen thuộc. Sản phẩm gồm thịt, bơ, chả, pate nóng. Đặc biệt, rau dưa sẽ được để riêng nên các khách hàng dễ dàng order, không sợ nhầm lẫn đơn hàng!',2,4),
(4,35000,0,100,'Phở bò','Phở bò là món ăn đặc sản, thơm ngon nổi tiếng của vùng đất Hà thành. Bánh phở mềm mềm, nước dùng ngọt thanh, thịt bò tươi ngon, hành ngò thơm nức mũi khiến bạn chỉ nhìn thôi đã thấy thòm thèm.',2,4),
(5,35000,0,100,'Phở gà','Phở gà sẽ khiến thực khách mê mẩn bởi phần thịt gà mềm, chắc kết hợp với nước dùng ngọt thanh, đậm đà.',2,4),
(6,25000,0,100,'Cơm rang thập cẩm','Cơm rang thập cẩm là một món ăn quen thuộc với mỗi người, giúp ta thay đổi khẩu vị cơm trắng thông thường mà vẫn có đủ thành phần dinh dưỡng cần thiết cho bữa ăn.',2,4),
(7,10000,0,100,'Trứng ốp la','Trứng ốp la là món ăn phù hợp với mọi đối tượng, từ người già đến trẻ nhỏ đều thích.',2,4),
(8,20000,0,100,'Đậu que xào tỏi','Một đĩa đậu que xào tỏi tuy đơn giản nhưng lại mang đến bữa cơm ngon miệng và giàu chất xơ, vitamin nữa. ',2,4),
(9,25000,0,100,'Thịt kho trứng cút','Thịt kho trứng cút là món ăn quen thuộc trong mỗi bữa cơm gia đình. Từng miếng thịt ba chỉ và trứng cút đậm đà, hấp dẫn, kích thích vị giác của bất kỳ ai thưởng thức món ăn này. ',2,4),
(10,10000,0,100,'Canh bí xanh','Canh Bí Xanh Thịt Lợn Bằm có vị ngọt đậm đà, bí xanh thanh mát, nước cốt hầm chuẩn vị.',2,4),
(11,15000,0,100,'Cà pháo muối','Cà pháo muối - một món ăn dân dã, bình dị với nét đặc sắc rất riêng trong mâm cơm Việt. Miếng cà pháo muối xổi giòn bôm bốp, mặn mặn chua chua cũng đủ sức gây thương nhớ.',2,4),
(12,35000,0,100,'Súp lơ xào thịt bò','Bò xào súp lơ xanh sẽ là cách giúp chúng ta có thể sử dụng cùng lúc những dưỡng chất từ hai thực phẩm này để cơ thể khỏe mạnh, tăng cường sức đề kháng.',2,4),
(13,30000,0,100,'Bún chả','Bún chả là một món ăn của Việt Nam, bao gồm bún, chả thịt lợn nướng trên than hoa và bát nước mắm chua cay mặn ngọt.',2,4),


(14,30000,0,100,'Gà kho gừng','Món gà kho gừng đậm vị này sẽ cho bạn cảm nhận được mùi vị ngon, ngọt và dai của thịt gà xen lẫn vị nồng ấm cay cay của những lát gừng tươi, món này bạn ăn kèm với cơm trắng sẽ rất kích thích vị giác của bạn đấy.',3,4),
(15,20000,0,100,'Chả lá lốt','Chả lá lốt là món ăn được rất nhiều người yêu thích. Không chỉ thơm ngon mà tác dụng của lá lốt và thịt heo với sức khỏe là rất nhiều.',3,4),
(16,15000,0,100,'Đậu hũ sốt cà chua','Đậu hũ sốt cà chua là một trong những món ăn chay ngon phổ biến trong bữa cơm gia đình của người Việt với hương vị thơm ngon và rất bổ dưỡng.',3,4),
(17,10000,0,100,'Rau muống xào tỏi','Rau muống xào tỏi giòn ngon, hấp dẫn - một món ăn dân dã nhưng giàu giá trị dinh dưỡng.',3,4),
(18,25000,0,100,'Rau củ xào','Món rau củ xào thập cẩm không những có hương vị thanh mát, mà còn giúp bổ sung một lượng chất xơ và vitamin dồi dào cho cơ thể, giúp duy trì đường ruột khỏe mạnh và ngăn ngừa táo bón rất hiệu quả.',3,4),
(19,30000,0,100,'Thịt viên kho nước mắm','Món thịt viên kho nước mắm là một món ăn siêu hấp dẫn với phần nước sốt đậm đà, cay cay ngọt ngọt được thấm vào phần thịt, đây là món ăn lý tưởng để dùng cùng cơm.',3,4),
(20,40000,0,100,'Tôm rang thịt','Món này hấp dẫn bởi tôm và thịt heo ba rọi được rang thấm gia vị, ăn cùng cơm nóng sẽ rất tuyệt vời luôn đó.',3,4),
(24,20000,0,100,'Dưa hấu tráng miệng','Tráng miệng sau bữa cơm gia đình với món thạch dưa hấu tươi mát vừa thơm ngon lại cung cấp nhiều vitamin cho cơ thể.',3,4),
(22,25000,0,100,'Canh cải thìa nấu tôm','Món canh cải thìa nấu tôm khô với sắc xanh bắt mắt, nước canh ngon ngọt đậm đà hòa quyện với cải thìa giòn, tôm khô bùi bùi thấm vị thích miệng.',3,4),
(21,55000,0,100,'Cơm tấm sườn bì chả','Một đĩa cơm tấm truyền thống gồm có: 1 phần cơm, 1 phần sườn nướng, 1 phần bì lợn, 1 phần chả trứng và nước chấm ăn kèm.',3,4),
(23,35000,0,100,'Bún bò huế','Bún bò là một trong những đặc sản của xứ Huế, mặc dù món bún này phổ biến trên cả ba miền ở Việt Nam và cả người Việt tại hải ngoại. ',3,4),


(25,20000,0,100,'Bánh flan','Bánh flan có vị béo của trứng và mùi thơm từ sữa, khi ăn mềm tan trong miệng dễ dàng chinh phục khẩu vị của bất cứ ai, từ trẻ em cho tới người lớn',4,4),
(26,18000,0,100,'Bánh tráng trộn','Bánh tráng có vị cay nồng của muối tôm, chua chua của xoài và tắc, bùi bùi của lạc và độ dai của bánh tráng hòa quyện vào nhau một cách hài hòa khiến người ta ăn mãi không nguôi.',4,4),
(27,20000,0,100,'Bánh tráng nướng','Bánh tráng nướng - vỏ bánh giòn tan, các loại nhân bùi cay, béo ngậy, phải nói là siêu ngon.',4,4),
(28,15000,0,100,'Bánh trôi tàu','Bánh trôi tàu hấp dẫn thực khách nhờ lớp vỏ bánh mềm mượt bên ngoài mà dẻo dai bên trong, phần nhân mềm mại bùi bùi và nước đường thanh thanh',4,4),
(29,30000,0,100,'Nem lụi','Nem lụi là món nướng đặc sản của Nha Trang được nhiều người yêu thích. Từng chiếc nem bọc sả thơm lừng, ăn kèm với nước chấm tạo nên hương vị vô cùng khó quên.',4,4),
(30,25000,0,100,'Bánh xèo','Bánh xèo có bột bên ngoài, bên trong có nhân là tôm, thịt, giá đỗ, được rán màu vàng, đúc thành hình tròn hoặc gấp lại thành hình bán nguyệt',4,4),
(31,20000,0,100,'Cá viên chiên','Cá viên chiên có hương vị thơm ngon, hấp dẫn. Cá viên được chiên cẩn thận, vệ sinh. Phục vụ nhanh nhẹn, nhiệt tình. Giá cả bình dân, phải chăng.',4,4),
(32,30000,0,100,'Gỏi cuốn','Gỏi cuốn tôm thịt với thịt thơm béo, tôm dai ngon ngọt tự nhiên còn có thêm bún tươi, rau sống, trứng chiên được cuộn trong một lớp bánh tráng mỏng vừa, chấm cùng tương đen, nước mắm chua ngọt hay thử các loại nước chấm gỏi cuốn đều ngon cả.',4,4),
(33,25000,0,100,'Khoai tây chiên','Với vị giòn tan và thơm ngon, khoai tây chiên thường được làm làm món ăn kèm hoặc món tráng miệng.',4,4),
(34,25000,0,100,'Xoài lắc','Xoài lắc có đầy đủ các vị chua cay mặn ngọt hoà quyện với nhau kết hợp với những miếng xoài giòn tạo nên một món ăn vô cùng hấp dẫn.',4,4),
(35,30000,0,100,'Đậu hũ hạnh nhân','Đậu hũ hạnh nhân được xem là món ăn độc đáo nhất trong nhóm các món rau câu. Nước vắt ra từ hạt hạnh nhân tươi mang lại hương vị thơm nồng, đầy sức cuốn hút',4,4),
(36,35000,0,100,'Chân gà ngâm sả tắc','Chân gà ngâm sả tắc có vị chua nhẹ của tắc, thơm dịu của sả, cay nồng của ớt và giòn sần sật của chân gà sẽ kích thích vị giác khiến bạn ăn hoài không ngán.',4,4),


(37,300000,0,100,'Khô bò','Được sản xuất bằng 100% thịt bò nhập khẩu từ Úc là món ăn hấp dẫn nhiều người bởi hương vị thịt bò đậm đà kết hợp với vị cay của ớt, đem đến cảm giác cay nồng nơi đầu lưỡi, tạo sự thích thú khi ăn',5,2),
(38,230000,0,100,'Khô heo cháy tỏi','Không chất bảo quản, không chất phụ gia.Đảm bảo vệ sinh an toàn thực phẩm theo quy trình khép kín “Từ trang trại đến bàn ăn”.',5,2),
(39,250000,0,100,'Khô gà','Khô gà lá chanh đã là món ăn đi vào đời sống thường ngày rồi, không chỉ riêng giới công sở- văn phòng, mà chúng ta còn ăn chung với cơm nè, với xôi nè, hay đơn giản là một món dùng lai rai với beer hay rượu tuỳ ý thích.',5,2),
(40,350000,0,100,'Khô mực','Khô mực là một trong những món ăn đặc trưng của văn hóa ẩm thực Việt Nam. Từ lâu, món ăn này đã trở thành một đặc sản được ưa chuộng và đánh giá cao bởi những hương vị đậm đà, thơm ngon cùng chất lượng tốt',5,2),
(41,40000,0,100,'Ốc luộc','Ốc chín vừa tới giòn dai, nước chấm ốc sánh, đậm đà tỏa mùi hương thơm của sả, lá chanh, ớt. Một món ăn bình dị gây thương nhớ vào mùa đông.',5,2),
(42,50000,0,100,'Thịt xiên','Đây là một món ăn hấp dẫn ngay khi đang nướng trên bếp than, với mùi thơm của thịt nướng chín cùng với những mùi thơm của gia vị tẩm ướp đặc biệt đánh thức khứu giác chúng ta',5,2),
(43,15000,0,100,'Chân gà nướng','Chân gà nướng muối ớt vừa giòn, mặn, cay, ăn thử một miếng vị ngon đậm đà. Tuy đây chỉ là món ăn bình dân nhưng ai cũng phải ứa nước miếng khi nhìn thấy.',5,2),
(44,35000,0,100,'Cút lộn xào me','Cút lộn xào me là món ăn vặt được rất nhiều người yêu thích. Vị bùi béo, chua thanh, ngọt dịu kết hợp với rau răm làm cho món ăn trở nên hấp dẫn không thể cưỡng lại.',5,2),
(45,40000,0,100,'Nem chua Thanh Hóa','Nem chua Thanh Hóa có vị chua ngọt, thơm ngon, khi ăn kèm với rau sống, ớt, chanh, tỏi sẽ tạo nên hương vị tuyệt vời. Món ăn này được ưa chuộng và phổ biến ở khắp các tỉnh miền Trung và Bắc Trung Bộ của Việt Nam.',5,2),
(46,250000,0,100,'Khô cá chỉ vàng','Nướng qua trên lửa than, thấy thịt cá vàng đều da cá phồng rộp lấy xuống xe nhỏ chấm với chút tương ớt đảm bảo ăn hoài không biết ngán.',5,2),
(47,220000,0,100,'Khô nhái','Khô Nhái: món nhậu không thể thiếu của người sành ăn. Đặc sản Miền Tây cung cấp loại khô Nhái thượng hạng ngon nhất thị trường, bỏ sỉ các nhà hàng giá gốc, giao hàng thu tiền tận nơi toàn quốc.',5,2),
(48,270000,0,100,'Khô trâu','Khô trâu, một trong những đặc sản nổi tiếng nhất của Campuchia. Với nguồn nguyên liệu ngon, cách chế biến truyền thống, đây là món quà quý cũng như món ăn chơi của những người sành ăn.',5,2),


(49,78000,0,100,'KitKat','Bánh Kit kat trà xanh được phủ 1 lớp chocolate trà xanh bánh mang hương vị trà xanh thơm ngon độc đáo đặc trưng của Nhật.',6,7),
(50,56000,0,100,'Kẹo sing-gum Cool Air hương bạc hà khuynh diệp','Cho hơi thở thơm mát, giúp sảng khoái tinh thần. Kẹo sing-gum Cool Air hương bạc hà khuynh diệp hũ 146g giúp bạn thơm miệng, tự tin giao tiếp. ',6,7),
(51,180000,0,100,'Bánh Mochi','Bánh Mochi Đài Loan 2kg là một sản phẩm bánh truyền thống của Đài Loan, được sản xuất từ các thành phần chất lượng cao và đảm bảo hương vị tuyệt vời cho người dùng.',6,7),
(52,15000,0,100,'MIX','Bánh que Mix vị ớt cay gói 60g của thương hiệu bánh que Mix có nguồn gốc nội địa Thái Lan với hương vị ớt cay cay tạo cảm giác kích thích khi ăn.',6,7),
(53,25000,0,100,'Bento','Vị cay Thái và mùi thơm hấp dẫn của mực tẩm sẽ kích thích vị giác người dùng. Sản phẩm được chế biến từ những con mực tươi ngon, đảm bảo chất lượng và cung cấp năng lượng cho cơ thể sau thời gian làm việc dài.',6,7),
(54,18000,0,100,'Bánh que Glico Pocky','Bánh que Glico được đánh giá cao về chất lượng, hương vị đa dạng, vị bánh giòm rụm được phủ socola cực hấp dẫn.',6,7),
(55,10000,0,100,'Snack Bí Đỏ','Snack bí đỏ giòn ngon, thơm thơm vị bò nướng kích thích vị giác vô cùng. Snack bí đỏ vị bò nướng Oishi gói 32g hấp dẫn, phù hợp vừa xem phim, vừa nghe nhạc vừa nhâm nhi thưởng thức.',6,7),
(56,38000,0,100,'Bánh kem trứng Custas','Bánh bông lan thơm mềm, xôm xốp, dai ngon hấp dẫn. Bánh kem trứng Custas hộp 470g (20 cái) với lớp kem trứng béo ngậy bên trong lớp bánh bông lan, tạo nên hương vị độc đáo. ',6,7),
(57,10000,0,100,'Snack Tôm Cay','Snack tôm cay đặc biệt Oishi với những miếng bánh giòn tan, thơm ngon kết hợp với vị tôm đậm đà, cay nồng, kích thích vị giác.',6,7),
(58,25000,0,100,'Ostar','Snack khoai tây giòn thơm ngon với độ dày vừa phải, khi ăn cảm giác tan trong miệng thích thú. Snack khoai tây vị kim chi Hàn Quốc ostar với hương vị kim chi Hàn Quốc lạ miệng thơm ngon, tiện lợi thích hợp đọc sách, xem phim và ăn. Snack OStar là thương hiệu Hàn Quốc.',6,7),
(59,56000,0,100,'Xoài sấy dẻo','Xoài sấy được lựa chọn từ những quả chín, ngọt, đem đi sấy dẻo - sử dụng nhiệt độ cao làm bốc hơi lượng nước có trong sản phẩm, xoài sấy dẻo 100g nhai dẻo dai, vui miệng, thích hợp để ăn vặt, thưởng trà xem phim.',6,7),
(60,48000,0,100,'Mít sấy Rộp Rộp','Mít sấy giòn giòn và vẫn giữ được độ ngọt tự nhiên của trái mít chín, mít sấy Rộp Rộp gói 100g chính hãng, thơm ngon, đã được loại bỏ hạt, xốp xốp, vị tự nhiên.',6,7),
(61,45000,0,100,'Chuối sấy','Chuối sấy là loại trái cây sấy giòn giòn, giữ được độ ngọt tự nhiên của chuối chín, chuối sấy Rộp Rộp 100g tiện lợi, loại bỏ hạt, có vị xốp xốp nhưng không mất đi hương vị tự nhiên của nó.',6,7),
(62,18000,0,100,'Hạt hướng dương vị ngũ vị hương','Hạt khô thơm thơm, khi ăn thì béo, bùi, vỏ hạt còn mặn mặn khi cắn rất kích thích vị giác. Hạt hướng dương vị ngũ vị hương Chacheer gói 130g thơm ngon, phù hợp cho những dịp lễ tết',6,7),
(63,105000,0,100,'Hạt hạnh nhân Mỹ','Hạt hạnh nhân Mỹ Your Superfood gói 200g nhỏ gọn, tiện lợi, giàu dĩnh dưỡng, giúp bổ sung nhiều vtamin và đem đến hương vị quyến rũ từ lớp nhân giòn tan.',6,7),
(64,60000,0,100,'Hạt điều phô mai','Hạt điều Vinahe rang giòn rụm có vị phô mai thơm ngon, kích thích vị giác khiến người ăn thích thú. ',6,7),
(65,40000,0,100,'Khoai môn sấy','Khoai môn thật thơm ngon, dinh dưỡng lại còn có màu tím hấp dẫn, phù hợp với mọi người, khoai môn sấy Rộp Rộp100g thơm thơm, giòn giòn, ngọt tự nhiên, dễ ăn phù hợp ăn tráng miệng, uống trà... ',6,7),
(66,45000,0,100,'Khoai lang vàng sấy','Là một trong những món ăn vặt, tráng miệng qune thuộc, hấp dẫn với những miếng khoai lang thật thơm ngon, dinh dưỡng, khoai lang vàng sấy Rộp Rộp 100g tiết kiệm, giá tốt cho gia đình, có độ ngọt vừa phải.',6,7),
(67,50000,0,100,'Bánh gạo lứt sấy','Bánh gạo lứt giòn giòn, đậm hương  vị bên trong từng miếng. Gạo lứt sấy rong biển Ba Bông Sen gói 200g tiện lợi, thích hợp ăn vặt. Bạn có thể sử dụng trực tiếp.',6,7),
(68,25000,0,100,'Bánh gạo Ichi','Bánh gạo Ichi vị shouyu mật ong là lựa chọn hoàn hảo cho các buổi tiệc ngọt. Bánh gạo rất dinh dưỡng, đồng thời có thể ăn vặt cũng rất phù hợp để thư giãn và đọc sách.',6,7),
(69,40000,0,100,'Bánh choco-Pie','Bánh Choco-Pie với vị mềm dẻo thơm lừng vị socola sẽ là một sản phẩm vô cùng hấp dẫn dành cho bạn và gia đình.',6,7),
(70,30000,0,100,'Bánh quy cosy','Bánh quy Cosy giòm rụm, hương vị thơm ngon với nhiều loại bánh mới lạ, hấp dẫn.',6,7),
(71,20000,0,100,'Kẹo coffee','Mỗi ngày ăn 1 viên kẹo coffee giúp não bộ hoạt động minh mẫn hơn, cho máu lưu thông đều để giữ huyết áp ổn định, giải toả căng thẳng, stress.',6,7),
(72,12000,0,100,'Kẹo Dynamite bạc hà','Kẹo bạc hà nhân sô cô la Dynamite có mùi vị bạc hà the mát bên ngoài, bên trong có lớp nhân sô cô la thơm lừng, tan chảy trong miệng, hòa quyện tạo nên một cảm giác khó quên trong lần thử đầu tiên.',6,7),


(73,26000,0,100,'Heineken Bạc','Heineken Bạc 330ml thơm ngon hương vị bia tuyệt hảo, cân bằng và êm dịu, thiết kế đẹp mắt, cho người dùng cảm giác sang trọng, nâng tầm đẳng cấp.',7,5),
(74,18000,0,100,'Bia Tiger','Bia Tiger nâu lon 330ml có hương vị độc đáo và rất riêng của Tiger, đậm đà kết hợp với vị ngọt tự nhiên của lúa mạch.',7,5),
(75,15000,0,100,'Bia Sài Gòn','Bia Sài Gòn Lager 330ml có hương vị đậm đà, thơm ngon, cùng hương thơm ngũ cốc dễ chịu giúp bạn thăng hoa hơn,sản khoái hơn tỏng những cuộc vui cùng gia đình và bạn bè.',7,5),
(76,12000,0,100,'Bia 333','Bia 333 330ml chất lượng bảo đảm an toàn từ thương hiệu nổi tiếng lâu đời tại Việt Nam cho những cuộc vui kéo dài, sảng khoái bên gia đình, bạn bè và những chiến hữu.',7,5),
(77,18000,0,100,'Strongbow Đào','Strongbow vị đào có vị chua ngọt thơm hương đào tự nhiên cho bạn cảm giác lâng lâng hứng khởi sau mỗi lần uống.',7,5),
(78,17000,0,100,'Strongbow Dâu đen','Strongbow dâu đen lon 330ml ngọt dịu, thanh mát và chát nhẹ đặc trưng của táo cùng độ men vừa phải đủ để lâng lâng hứng khởi.',7,5),
(79,17000,0,100,'Strongbow Dâu','Strongbow dâu lon 330ml là sự kết hợp tinh tế giữa hương quả lựu, mâm xôi,quả lý và dâu tây, nước táo lên men',7,5),
(80,17000,0,100,'Strongbow Táo','Nước táo lên men Strongbow Gold Appel lon 330ml là nước uống có cồn ngọt dịu được lên men trực tiếp từ trái cây và hậu vị sang trọng kéo dài .',7,5),
(81,12000,0,100,'Bia Huda','bia Huda 330ml​ có màu vàng óng, mùi thơm đặc trưng, hương vị đậm đà, hấp dẫn vị giác.Sản phẩm từ thương hiệu bia Huda chất lượng với công nghệ bia Đan Mạch',7,5),
(82,11000,0,100,'Bia Việt','Bia Việt lưu giữ tinh túy của hoa bia và mang đến cảm giác sảng khoái bất tận khi thưởng thức',7,5),
(83,56000,0,100,'Rượu soju','Rượu soju Chumchurum vị táo 12% 360ml với hương thơm của gạo nếp, xen lẫn vị táo thanh ngọt tươi mát, hấp dẫn, kích thích vị giác cho bạn những cuộc vui sảng khoái cùng gia đình, bạn bè và đồng nghiệp',7,5),
(84,68000,0,100,'Rượu gạo','Rượu gạo là đồ uống có cồn mang hương vị truyền thống quen thuộc. Được chưng cất từ ngũ cốc lên men có thể là rượu nếp hoặc rượu tẻ',7,5),


(85,15000,0,100,'Cocacola','Lon nhỏ vừa uống, thích hợp với người ít vận động. Hương vị truyền thống thêm ngon.Thành phần Nước bão hòa CO2, siro bắp với fluctose cao, màu thực phẩm, chất điều chỉnh độ acid, hương tự nhiên, caffeine.',8,3),
(86,15000,0,100,'Pepsi','Nước ngọt Pepsi bổ sung năng lượng làm việc mỗi ngày, xua tan căng thẳng mệt mỏi',8,3),
(87,12000,0,100,'Revive trắng','ước bù khoáng Revive là sản phẩm nước giải khát dinh dưỡng đóng chai, hỗ trợ cung cấp năng lượng cùng các dưỡng chất thiết yếu cho cơ thể. Nước Revive vô cùng thích hợp đối với các đối tượng đang trong quá trình tập luyện thể thao với khả năng hỗ trợ bổ sung nước, cung cấp năng lượng và đánh bay cảm giác mệt mỏi, giúp hồi phục thể lực cho cơ thể.',8,3),
(88,12000,0,100,'Sprite','Nước giải khát hương chanh tự nhiên Sprite do Csfood phân phối được sản xuất từ những thành phần nguyên liệu đảm bảo an toàn với hương chanh tự nhiên cùng phương pháp pha chế độc đáo, đem lại cho bạn trải nghiệm vị giác mới lạ và an toàn.',8,3),
(89,18000,0,100,'Tăng lực Redbull','Nước tăng lực Redbull tại thị trường Việt Nam. Red bull đem lại cho người tiêu dùng dễ chịu trong những giờ làm việc căng thẳng hay khi mệt mỏi.',8,3),
(90,13000,0,100,'Fanta vị nho','Nước ngọt vị nho chua chua ngọt ngọt, tươi mát, có thêm gas càng tăng thêm cảm giác sảng khoái.Nước ngọt Fanta làm giảm cơn khát, xua tan căng thẳng và mệt mỏi, thích hợp với các hoạt động ngoài trời, thể dục thể thao,...',8,3),
(91,15000,0,100,'Soda chanh 7 Up','Soda chanh 7 Up 320ml thơm ngon hấp dẫn với nước ép chanh thật, dồi dào, cung cấp vitamin C cho cơ thể, đặc biệt không đường không calo an toàn cho sức khỏe',8,3),
(92,15000,0,100,'Nước tăng lực Wake Up 247','Nước tăng lực Wake Up 247 vị cà phê 330ml có mùi vị thơm ngon, sảng khoái cùng hương cà phê thơm dễ chịu. Sản phẩm nước tăng lực chính hãng từ thương hiệu nước tăng lực Wake up 247',8,3),
(93,11000,0,100,'Nước khoáng Lavie','Nước khoáng La Vie là sự kết hợp tuyệt vời giữa nguồn nước trong lành với 06 loại khoáng thiên nhiên, cần thiết cho hoạt động cơ thể mỗi ngày.',8,3),
(94,10000,0,100,'Trà xanh hương chanh tuyết bạc hà C2 Freeze','Trà xanh hương chanh tuyết bạc hà C2 Freeze 455ml vị ngon nguyên chất từ lá trà cao nguyên 100% và chanh tuyết bạc hà lạnh the mát, chua ngọt sảng khoái, mát lạnh cực thích thú',8,3),
(95,20000,0,100,'Nước dừa dứa non Cocoxim','Nước dừa dứa non Cocoxim 330ml cho bạn tận hưởng cảm giác thư thái sảng khoái vô cùng dễ chịu,  mang vị ngọt thanh mát của Dừa Xiêm, xen lẫn hương thơm dịu nhẹ mùi lá dứa, tự nhiên và thuần túy',8,3),
(96,15000,0,100,'Nutriboost hương dâu','Dòng sản phẩm sữa hương trái cây thơm ngon, bổ dưỡng, sữa trái cây Nutri Boost hương dâu giúp cơ thể bổ sung năng lượng, vitamin và khoáng chất rất có lợi cho cơ thể, xua tan cơn khát và mệt mỏi, tăng cường sức khỏe.',8,3),
(97,15000,0,100,'Nước cam có tép Teppy','Chiết xuất từ những quả cam mọng nước cùng với những tép cam tươi hấp dẫn tự nhiên. Và được sản xuất theo công nghệ hiện đại, không chất độc hại không ảnh hưởng đến sức khỏe người tiêu dùng.',8,3),
(98,13000,0,100,'Trà ô long Tea Plus','Trà ô long Tea Plus giúp làm lắng nhẹ những cơn ưu tư mang đến cảm giác nhẹ nhàng. Thưởng thức nước trà ngay mỗi ngày để cuộc sống thêm nhẹ.',8,3),
(99,11000,0,100,'Nước trái cây Ice vị đào','Nước Trái Cây Ice+ Vị Đào 490ml là thức uống giải khát được nhiều người yêu thích, mang đến cảm giác sảng khoái, tươi mới sau những giờ phút làm việc mệt mỏi hoặc sau khi chơi thể thao.',8,3),


(100,25000,0,100,'Cafe nâu','Cafe nâu là món cà phê thuần Việt, được pha từ cà phê, sữa đặc và đá. Nâu đá có màu Nâu nên gọi là Nâu',9,8),
(101,20000,0,100,'Cafe đen','Cà phê đen chứa hàm lượng caffeine cao giúp cải thiện đáng kể khả năng đốt cháy chất béo trong quá trình tập luyện.',9,8),
(102,30000,0,100,'Cafe cốt dừa','Cà phê cốt dừa là sự một kết hợp tuyệt vời giữa sự béo ngậy ngọt ngào của sữa dừa và vị đăng đắng đầu lưỡi với mùi hương đặc trưng của cafe',9,8),
(103,30000,0,100,'Cafe bạc xỉu','Bạc xỉu khá giống với cà phê sữa nhưng chỉ khác ở chỗ nếu cà phê sữa thì phần cà phê nhiều hơn phần sữa thì bạc xỉu lại ngược lại là phần sữa nhiều hơn phần cafe.',9,8),
(104,35000,0,100,'Cafe phin','Cà phê phin đặc biệt ở chỗ người ta có thể thưởng thức chậm rãi từ mùi thơm quyến rũ của cà phê rang xay đúng độ đến vị đắng nhẹ, đậm đà của từng giọt thấm nơi đầu lưỡi,... ',9,8),
(105,15000,0,100,'Trà chanh truyền thống','Trà chanh truyền thống là thức uống được nhiều người yêu thích nhờ vị chua ngọt, thanh mát và thỏa mãn nhu cầu giải nhiệt, giải khát trong những ngày nóng.',9,8),
(106,15000,0,100,'Trà tắc nha đam','Trà tắc có vị chua chua ngọt ngọt kết hợp vị giòn mát của nha đam sẽ khiến bạn ngây ngất và mê mẩn thức uống này.',9,8),
(107,30000,0,100,'Trà sen vàng','Trà sen vàng không những thơm ngon còn có thể giúp cải thiện sức khỏe của xương và răng. ',9,8),
(108,30000,0,100,'Trà đào cam sả','Đào và cam chứa lượng lớn vitamin C, sả có tính kháng khuẩn hòa quyện với nước trà, giúp bạn dễ ngủ, giải nhiệt, giải cảm rất tốt.',9,8),
(109,27000,0,100,'Trà dâu tây','Vị chua chua, ngọt ngọt của những miếng dâu tây có màu đỏ bắt mắt hòa quyện cùng mùi thơm của trà lài và nước tắc tạo nên thức uống giải khát "trứ danh" hấp dẫn người dùng.',9,8),


(110,23990000,0,100,'Macbook Air 13 128GB MQD32SA/A (2017)','hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình',1,2),
(111,23990000,0,100,'Macbook Air 13 128GB MQD32SA/A (2017)','hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình',1,2),
(112,23990000,0,100,'Macbook Air 13 128GB MQD32SA/A (2017)','hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình',1,2),
(113,23990000,0,100,'Macbook Air 13 128GB MQD32SA/A (2017)','hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình',1,2),
(114,23990000,0,100,'Macbook Air 13 128GB MQD32SA/A (2017)','hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình',1,2),
(115,23990000,0,100,'Macbook Air 13 128GB MQD32SA/A (2017)','hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình',1,2),
(116,23990000,0,100,'Macbook Air 13 128GB MQD32SA/A (2017)','hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình',1,2),
(117,23990000,0,100,'Macbook Air 13 128GB MQD32SA/A (2017)','hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình',1,2),
(118,23990000,0,100,'Macbook Air 13 128GB MQD32SA/A (2017)','hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình',1,2),
(119,23990000,0,100,'Macbook Air 13 128GB MQD32SA/A (2017)','hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình',1,2);

/*!40000 ALTER TABLE `san_pham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vai_tro`
--

DROP TABLE IF EXISTS `vai_tro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vai_tro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ten_vai_tro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vai_tro`
--

LOCK TABLES `vai_tro` WRITE;
/*!40000 ALTER TABLE `vai_tro` DISABLE KEYS */;
INSERT INTO `vai_tro` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_MEMBER'),(3,'ROLE_SHIPPER');
/*!40000 ALTER TABLE `vai_tro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-09 23:29:30
