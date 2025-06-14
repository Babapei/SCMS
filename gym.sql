/*
 Navicat Premium Data Transfer

 Source Server         : aaa
 Source Server Type    : MySQL
 Source Server Version : 80040
 Source Host           : localhost:3306
 Source Schema         : gangzi

 Target Server Type    : MySQL
 Target Server Version : 80040
 File Encoding         : 65001

 Date: 20/12/2024 22:47:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_account` int NOT NULL COMMENT '管理员账号',
  `admin_password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`admin_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1001, '123456');
INSERT INTO `admin` VALUES (1002, '123456');
INSERT INTO `admin` VALUES (1003, '123456');

-- ----------------------------
-- Table structure for class_order
-- ----------------------------
DROP TABLE IF EXISTS `class_order`;
CREATE TABLE `class_order`  (
  `class_order_id` int NOT NULL AUTO_INCREMENT COMMENT '报名表id',
  `class_id` int NULL DEFAULT NULL COMMENT '课程id',
  `class_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `coach` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '教练',
  `member_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '会员姓名',
  `member_account` int NULL DEFAULT NULL COMMENT '会员账号',
  `class_begin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '开课时间',
  PRIMARY KEY (`class_order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of class_order
-- ----------------------------
INSERT INTO `class_order` VALUES (12, 2401, '瑜伽', '王晨铭', '王向往', 202145417, '2024年8月2日18:00');
INSERT INTO `class_order` VALUES (14, 2403, '塑形2', '张佳琪', '王向往', 202145417, '2024年8月2日18:00');
INSERT INTO `class_order` VALUES (15, 2402, '塑形', '张佳琪', '王向往', 202145417, '2024年8月2日19:00');

-- ----------------------------
-- Table structure for class_table
-- ----------------------------
DROP TABLE IF EXISTS `class_table`;
CREATE TABLE `class_table`  (
  `class_id` int NOT NULL DEFAULT 0 COMMENT '课程id',
  `class_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `class_begin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '开课时间',
  `class_time` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程时长',
  `coach` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '教练',
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of class_table
-- ----------------------------
INSERT INTO `class_table` VALUES (2401, '瑜伽', '2024年8月2日18:00', '60', '王晨铭');
INSERT INTO `class_table` VALUES (2402, '塑形', '2024年8月2日19:00', '60', '张佳琪');
INSERT INTO `class_table` VALUES (2403, '塑形2', '2024年8月2日18:00', '60', '张佳琪');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `employee_account` int NOT NULL COMMENT '员工账号',
  `employee_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `employee_gender` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工性别',
  `employee_age` int NULL DEFAULT NULL COMMENT '员工年龄',
  `entry_time` date NULL DEFAULT NULL COMMENT '入职时间',
  `staff` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '职务',
  `employee_message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`employee_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (101006805, '张志豪', '男', 21, '2024-07-10', '保安', '');
INSERT INTO `employee` VALUES (101011870, '王志刚', '男', 22, '2024-07-10', '总经理', '执行总裁');
INSERT INTO `employee` VALUES (101018511, '韩世泽', '男', 20, '2024-07-10', '保安', '');
INSERT INTO `employee` VALUES (101021458, '富意涵', '女', 20, '2024-07-10', '教练', '');
INSERT INTO `employee` VALUES (101037222, '张佳琪', '女', 21, '2024-07-10', '教练', '身体塑形方向');
INSERT INTO `employee` VALUES (101037517, '曹瀚墨', '男', 22, '2024-07-10', '教练', '');
INSERT INTO `employee` VALUES (101041839, '赵家玉', '女', 21, '2024-07-10', '教练', '');
INSERT INTO `employee` VALUES (101066815, '张桐宇', '女', 20, '2024-07-10', '前台', '');
INSERT INTO `employee` VALUES (101067157, '王晨铭', '女', 21, '2024-07-10', '教练', '瑜伽方向');
INSERT INTO `employee` VALUES (101067482, '刘晓蓓', '女', 21, '2024-07-10', '财务', '');
INSERT INTO `employee` VALUES (101067553, '张天玮', '女', 21, '2024-07-10', '教练', '');

-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment`  (
  `equipment_id` int NOT NULL AUTO_INCREMENT COMMENT '器材id',
  `equipment_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '器材名称',
  `equipment_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '器材位置',
  `equipment_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '器材状态',
  `equipment_message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '器材备注信息',
  PRIMARY KEY (`equipment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES (1, '哑铃1', '1号房间', '正常', '');
INSERT INTO `equipment` VALUES (2, '杠铃1', '2号房间', '损坏', '待维修');
INSERT INTO `equipment` VALUES (3, '跑步机1', '2号房间', '维修中', '联系厂家维修');
INSERT INTO `equipment` VALUES (4, '跑步机2', '2号房间', '正常', '');
INSERT INTO `equipment` VALUES (5, '跑步机3', '2号房间', '正常', '');
INSERT INTO `equipment` VALUES (6, '杠铃1', '1号房间', '正常', '');
INSERT INTO `equipment` VALUES (7, '杠铃2', '1号房间', '正常', '');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `member_account` int NOT NULL COMMENT '会员账号',
  `member_password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '123456' COMMENT '会员密码',
  `member_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '会员姓名',
  `member_gender` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '会员性别',
  `member_age` int NULL DEFAULT NULL COMMENT '会员年龄',
  `member_height` int NULL DEFAULT NULL COMMENT '会员身高',
  `member_weight` int NULL DEFAULT NULL COMMENT '会员体重',
  `member_phone` bigint NULL DEFAULT NULL COMMENT '会员电话',
  `card_time` date NULL DEFAULT NULL COMMENT '办卡时间',
  `card_class` int NULL DEFAULT NULL COMMENT '购买课时',
  `card_next_class` int NULL DEFAULT NULL COMMENT '剩余课时',
  PRIMARY KEY (`member_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (202145417, '123456', '王向往', '男', 22, 182, 70, 18141760619, '2024-07-10', 20, 20);

-- 运动中心多样化课程批量插入
INSERT INTO `class_table` (`class_id`, `class_name`, `class_begin`, `class_time`, `coach`) VALUES
(2501, '篮球基础班', '2024年8月6日09:00', '90', '李强'),
(2502, '篮球进阶班', '2024年8月7日15:00', '90', '李强'),
(2503, '羽毛球训练', '2024年8月6日11:00', '60', '王磊'),
(2504, '乒乓球兴趣班', '2024年8月8日10:00', '60', '张伟'),
(2505, '游泳初级班', '2024年8月6日14:00', '60', '刘洋'),
(2506, '游泳提高班', '2024年8月7日16:00', '60', '刘洋'),
(2507, '健身塑形', '2024年8月6日17:00', '60', '张佳琪'),
(2508, '动感单车', '2024年8月7日18:00', '45', '李晓明'),
(2509, '瑜伽基础', '2024年8月8日09:00', '60', '王晨铭'),
(2510, '普拉提', '2024年8月8日11:00', '60', '陈思雨'),
(2511, '有氧操', '2024年8月8日13:00', '50', '赵丽'),
(2512, '拉丁舞', '2024年8月6日19:00', '60', '李娜'),
(2513, '街舞', '2024年8月7日19:00', '60', '孙浩'),
(2514, '少儿体适能', '2024年8月8日15:00', '45', '周敏'),
(2515, '产后修复', '2024年8月8日16:00', '60', '陈思雨'),
(2516, '康复理疗', '2024年8月6日13:00', '60', '王磊'),
(2517, '网球初级班', '2024年8月7日10:00', '90', '刘强'),
(2518, '足球兴趣班', '2024年8月8日17:00', '90', '张伟'),
(2519, '跆拳道', '2024年8月6日15:00', '60', '李晓明'),
(2520, '体能训练营', '2024年8月7日20:00', '90', '张伟');

SET FOREIGN_KEY_CHECKS = 1;
