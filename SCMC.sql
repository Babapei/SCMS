-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fitness_club
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_account` int NOT NULL COMMENT '管理员账号',
  `admin_password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`admin_account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1001,'123456'),(1002,'123456'),(1003,'123456');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_order`
--

DROP TABLE IF EXISTS `class_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_order` (
  `class_order_id` int NOT NULL AUTO_INCREMENT COMMENT '报名表id',
  `class_id` int DEFAULT NULL COMMENT '课程id',
  `class_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '课程名称',
  `coach` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '教练',
  `member_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '会员姓名',
  `member_account` int DEFAULT NULL COMMENT '会员账号',
  `class_begin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '开课时间',
  PRIMARY KEY (`class_order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_order`
--

LOCK TABLES `class_order` WRITE;
/*!40000 ALTER TABLE `class_order` DISABLE KEYS */;
INSERT INTO `class_order` VALUES (12,2401,'瑜伽','王晨铭','王向往',202145417,'2024年8月2日18:00'),(16,2401,'瑜伽','王晨铭','王向往',202145417,'2024年8月2日18:00'),(17,2402,'塑形','张佳琪','王向往',202145417,'2024年8月2日19:00'),(18,2403,'塑形2','张佳琪','王向往',202145417,'2024年8月2日18:00'),(19,2501,'篮球基础班','李强','李晓明',202145418,'2024年8月6日09:00'),(20,2505,'游泳初级班','刘洋','李晓明',202145418,'2024年8月6日14:00'),(21,2502,'篮球进阶班','李强','张伟',202145419,'2024年8月7日15:00'),(22,2503,'羽毛球训练','王磊','张伟',202145419,'2024年8月6日11:00'),(23,2504,'乒乓球兴趣班','张伟','陈思雨',202145420,'2024年8月8日10:00'),(24,2509,'瑜伽基础','王晨铭','陈思雨',202145420,'2024年8月8日09:00'),(25,2506,'游泳提高班','刘洋','刘强',202145421,'2024年8月7日16:00'),(26,2517,'网球初级班','刘强','刘强',202145421,'2024年8月7日10:00'),(27,2511,'有氧操','赵丽','赵丽',202145422,'2024年8月8日13:00'),(28,2512,'拉丁舞','李娜','赵丽',202145422,'2024年8月6日19:00'),(29,2507,'健身塑形','张佳琪','孙浩',202145423,'2024年8月6日17:00'),(30,2513,'街舞','孙浩','孙浩',202145423,'2024年8月7日19:00'),(31,2508,'动感单车','李晓明','周敏',202145424,'2024年8月7日18:00'),(32,2514,'少儿体适能','周敏','周敏',202145424,'2024年8月8日15:00'),(33,2510,'普拉提','陈思雨','王磊',202145425,'2024年8月8日11:00'),(34,2515,'产后修复','陈思雨','王磊',202145425,'2024年8月8日16:00'),(35,2516,'康复理疗','王磊','李娜',202145426,'2024年8月6日13:00'),(36,2518,'足球兴趣班','张伟','李娜',202145426,'2024年8月8日17:00'),(37,2519,'跆拳道','李晓明','张敏',202145427,'2024年8月6日15:00'),(38,2520,'体能训练营','张伟','张敏',202145427,'2024年8月7日20:00'),(39,2501,'篮球基础班','李强','王刚',202145428,'2024年8月6日09:00'),(40,2505,'游泳初级班','刘洋','王刚',202145428,'2024年8月6日14:00'),(41,2502,'篮球进阶班','李强','李强',202145429,'2024年8月7日15:00'),(42,2503,'羽毛球训练','王磊','李强',202145429,'2024年8月6日11:00'),(43,2504,'乒乓球兴趣班','张伟','赵倩',202145430,'2024年8月8日10:00'),(44,2509,'瑜伽基础','王晨铭','赵倩',202145430,'2024年8月8日09:00'),(45,2506,'游泳提高班','刘洋','陈刚',202145431,'2024年8月7日16:00'),(46,2517,'网球初级班','刘强','陈刚',202145431,'2024年8月7日10:00'),(47,2511,'有氧操','赵丽','刘洋',202145432,'2024年8月8日13:00'),(48,2512,'拉丁舞','李娜','刘洋',202145432,'2024年8月6日19:00');
/*!40000 ALTER TABLE `class_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_table`
--

DROP TABLE IF EXISTS `class_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_table` (
  `class_id` int NOT NULL DEFAULT '0' COMMENT '课程id',
  `class_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '课程名称',
  `class_begin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '开课时间',
  `class_time` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '课程时长',
  `coach` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '教练',
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_table`
--

LOCK TABLES `class_table` WRITE;
/*!40000 ALTER TABLE `class_table` DISABLE KEYS */;
INSERT INTO `class_table` VALUES (2401,'瑜伽','2024年8月2日18:00','60','王晨铭'),(2402,'塑形','2024年8月2日19:00','60','张佳琪'),(2403,'塑形2','2024年8月2日18:00','60','张佳琪'),(2501,'篮球基础班','2024年8月6日09:00','90','李强'),(2502,'篮球进阶班','2024年8月7日15:00','90','李强'),(2503,'羽毛球训练','2024年8月6日11:00','60','王磊'),(2504,'乒乓球兴趣班','2024年8月8日10:00','60','张伟'),(2505,'游泳初级班','2024年8月6日14:00','60','刘洋'),(2506,'游泳提高班','2024年8月7日16:00','60','刘洋'),(2507,'健身塑形','2024年8月6日17:00','60','张佳琪'),(2508,'动感单车','2024年8月7日18:00','45','李晓明'),(2509,'瑜伽基础','2024年8月8日09:00','60','王晨铭'),(2510,'普拉提','2024年8月8日11:00','60','陈思雨'),(2511,'有氧操','2024年8月8日13:00','50','赵丽'),(2512,'拉丁舞','2024年8月6日19:00','60','李娜'),(2513,'街舞','2024年8月7日19:00','60','孙浩'),(2514,'少儿体适能','2024年8月8日15:00','45','周敏'),(2515,'产后修复','2024年8月8日16:00','60','陈思雨'),(2516,'康复理疗','2024年8月6日13:00','60','王磊'),(2517,'网球初级班','2024年8月7日10:00','90','刘强'),(2518,'足球兴趣班','2024年8月8日17:00','90','张伟'),(2519,'跆拳道','2024年8月6日15:00','60','李晓明'),(2520,'体能训练营','2024年8月7日20:00','90','张伟');
/*!40000 ALTER TABLE `class_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_account` int NOT NULL COMMENT '员工账号',
  `employee_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '员工姓名',
  `employee_gender` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '员工性别',
  `employee_age` int DEFAULT NULL COMMENT '员工年龄',
  `entry_time` date DEFAULT NULL COMMENT '入职时间',
  `staff` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '职务',
  `employee_message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`employee_account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (101006805,'张志豪','男',21,'2024-07-10','保安',''),(101011870,'王志刚','男',22,'2024-07-10','总经理','执行总裁'),(101018511,'韩世泽','男',20,'2024-07-10','保安',''),(101021458,'富意涵','女',20,'2024-07-10','教练',''),(101037222,'张佳琪','女',21,'2024-07-10','教练','身体塑形方向'),(101037517,'曹瀚墨','男',22,'2024-07-10','教练','篮球教学方向'),(101041839,'赵家玉','女',21,'2024-07-10','教练','羽毛球'),(101066815,'张桐宇','女',20,'2024-07-10','前台',''),(101067157,'王晨铭','女',21,'2024-07-10','教练','瑜伽方向'),(101067482,'刘晓蓓','女',21,'2024-07-10','财务',''),(101067553,'张天玮','女',21,'2024-07-10','教练',''),(101068001,'李强','男',30,'2024-07-11','教练','篮球方向'),(101068002,'王磊','男',32,'2024-07-11','教练','羽毛球/康复方向'),(101068003,'刘洋','男',28,'2024-07-11','教练','游泳方向'),(101068004,'张伟','男',35,'2024-07-11','教练','乒乓球/足球/体能'),(101068005,'李晓明','男',29,'2024-07-11','教练','动感单车/跆拳道'),(101068006,'李娜','女',27,'2024-07-11','教练','拉丁舞'),(101068007,'孙浩','男',26,'2024-07-11','教练','街舞'),(101068008,'周敏','女',25,'2024-07-11','教练','少儿体适能'),(101068009,'赵丽','女',28,'2024-07-11','教练','有氧操'),(101068010,'陈思雨','女',26,'2024-07-11','教练','普拉提/产后修复');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `equipment_id` int NOT NULL AUTO_INCREMENT COMMENT '器材id',
  `equipment_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '器材名称',
  `equipment_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '器材位置',
  `equipment_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '器材状态',
  `equipment_message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '器材备注信息',
  PRIMARY KEY (`equipment_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'哑铃1','1号房间','正常',''),(2,'杠铃1','2号房间','损坏','待维修'),(3,'跑步机1','2号房间','维修中','联系厂家维修'),(4,'跑步机2','2号房间','正常',''),(5,'跑步机3','2号房间','正常',''),(6,'杠铃1','1号房间','正常',''),(7,'杠铃2','1号房间','正常',''),(8,'篮球','篮球馆','正常','7号球，适合比赛'),(9,'羽毛球拍1','羽毛球馆','正常','碳素拍'),(10,'羽毛球拍2','羽毛球馆','正常','碳素拍'),(11,'乒乓球台1','乒乓球馆','正常',''),(12,'乒乓球台2','乒乓球馆','正常',''),(13,'游泳圈','游泳馆','正常','儿童专用'),(14,'救生杆','游泳馆','正常',''),(15,'瑜伽垫1','瑜伽教室','正常',''),(16,'瑜伽垫2','瑜伽教室','正常',''),(17,'普拉提球','普拉提教室','正常',''),(18,'拉伸带','健身房','正常',''),(19,'拉丁舞鞋','舞蹈教室','正常','多双'),(20,'音响设备','舞蹈教室','正常',''),(21,'康复理疗床','康复室','正常',''),(22,'泡沫轴','康复室','正常',''),(23,'足球','足球场','正常',''),(24,'网球拍','网球场','正常',''),(25,'跆拳道护具','跆拳道馆','正常','护头、护胸、护手'),(26,'体能训练梯','体能训练区','正常',''),(27,'壶铃','健身房','正常','多种重量'),(28,'哑铃2','1号房间','正常',''),(29,'杠铃2','2号房间','正常','');
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `member_account` int NOT NULL COMMENT '会员账号',
  `member_password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '123456' COMMENT '会员密码',
  `member_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '会员姓名',
  `member_gender` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '会员性别',
  `member_age` int DEFAULT NULL COMMENT '会员年龄',
  `member_height` int DEFAULT NULL COMMENT '会员身高',
  `member_weight` int DEFAULT NULL COMMENT '会员体重',
  `member_phone` bigint DEFAULT NULL COMMENT '会员电话',
  `card_time` date DEFAULT NULL COMMENT '办卡时间',
  `card_class` int DEFAULT NULL COMMENT '购买课时',
  `card_next_class` int DEFAULT NULL COMMENT '剩余课时',
  PRIMARY KEY (`member_account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (202127970,'123456','梅西','男',35,170,70,13699998888,'2025-06-14',40,40),(202134977,'123456','李晓明','女',28,165,55,13988887777,'2025-06-14',30,30),(202145417,'123456','王向往','男',22,182,70,18141760619,'2024-07-10',20,20),(202145418,'123456','李晓明','女',28,165,55,13988887777,'2024-06-15',30,25),(202145419,'123456','张伟','男',35,175,80,13712345678,'2024-05-20',50,40),(202145420,'123456','陈思雨','女',19,160,48,18866665555,'2024-07-01',10,8),(202145421,'123456','刘强','男',41,178,85,13699998888,'2024-07-11',40,35),(202145422,'123456','赵丽','女',25,168,60,18512344321,'2024-07-12',15,12),(202145423,'123456','孙浩','男',30,180,75,13911112222,'2024-06-20',25,20),(202145424,'123456','周敏','女',27,162,50,13722223333,'2024-07-05',20,18),(202145425,'123456','王磊','男',33,185,90,13833334444,'2024-07-09',35,30),(202145426,'123456','李娜','女',24,170,58,13944445555,'2024-07-08',18,15),(202145427,'123456','张敏','女',22,158,47,13955556666,'2024-07-13',12,10),(202145428,'123456','王刚','男',29,172,68,13966667777,'2024-07-14',22,20),(202145429,'123456','李强','男',31,179,82,13977778888,'2024-07-15',28,25),(202145430,'123456','赵倩','女',26,163,52,13988889999,'2024-07-16',16,14),(202145431,'123456','陈刚','男',38,181,88,13999990000,'2024-07-17',32,28),(202145432,'123456','刘洋','男',27,176,73,13811112222,'2024-07-18',20,18),(202189509,'123456','罗纳尔多','男',40,185,75,18512344321,'2025-06-14',60,60);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fitness_club'
--

--
-- Dumping routines for database 'fitness_club'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-14 21:03:58
