/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : testdb

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2021-03-16 23:11:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for addaddress
-- ----------------------------
DROP TABLE IF EXISTS `addaddress`;
CREATE TABLE `addaddress` (
  `_id` int(5) NOT NULL,
  `weixinID` int(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of addaddress
-- ----------------------------
INSERT INTO `addaddress` VALUES ('9', '999', 'aaaaaaaaaaa', '510000');

-- ----------------------------
-- Table structure for home
-- ----------------------------
DROP TABLE IF EXISTS `home`;
CREATE TABLE `home` (
  `_id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `discription` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `imgPath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` varchar(25) NOT NULL,
  PRIMARY KEY (`_id`,`title`,`discription`,`imgPath`,`price`),
  KEY `title` (`title`),
  KEY `discription` (`discription`),
  KEY `_id` (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9768 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of home
-- ----------------------------
INSERT INTO `home` VALUES ('1', '商品01号', 'demo111商品详情', 'https://bkimg.cdn.bcebos.com/pic/7dd98d1001e939013c6aea1776ec54e736d196aa?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U5Mg==,g_7,xp_5,yp_5/format,f_auto', '111');
INSERT INTO `home` VALUES ('2', '商品02号', 'demo222商品详情', 'https://bkimg.cdn.bcebos.com/pic/0eb30f2442a7d933325836b1a54bd11372f00104?x-bce-https://bkimg.cdn.bcebos.com/pic/5bafa40f4bfbfbed5e89f3b976f0f736aec31f20?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5/format,f_auto', '222');
INSERT INTO `home` VALUES ('3', '商品03号', 'demo333商品详情', 'https://bkimg.cdn.bcebos.com/pic/4034970a304e251f451a082fa986c9177e3e537c?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5/format,f_auto', '333');
INSERT INTO `home` VALUES ('4', '商品04号', 'demo444商品详情', 'https://bkimg.cdn.bcebos.com/pic/0824ab18972bd407ccdf3c2a75899e510eb309c9?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5/format,f_auto', '444');
INSERT INTO `home` VALUES ('5', '商品05号', 'demo555商品详情', 'https://bkimg.cdn.bcebos.com/pic/8435e5dde71190ef35ef9e94c01b9d16fdfa6060?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '555');
INSERT INTO `home` VALUES ('6', '商品06号', 'demo666商品详情', 'https://bkimg.cdn.bcebos.com/pic/95eef01f3a292df56bb06427b3315c6034a87395?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5/format,f_auto', '666');
INSERT INTO `home` VALUES ('7', '商品07号', 'demo777商品详情', 'https://bkimg.cdn.bcebos.com/pic/d1160924ab18972be37fae87e8cd7b899e510a31?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '777');
INSERT INTO `home` VALUES ('8', '商品08号', 'demo888商品详情', 'https://bkimg.cdn.bcebos.com/pic/5d6034a85edf8db13e9ed2290723dd54574e74cf?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '888');
INSERT INTO `home` VALUES ('9', '商品09号', 'demo999商品详情', 'https://bkimg.cdn.bcebos.com/pic/8435e5dde71190ef35ef9e94c01b9d16fdfa6060?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '999');

-- ----------------------------
-- Table structure for productp2
-- ----------------------------
DROP TABLE IF EXISTS `productp2`;
CREATE TABLE `productp2` (
  `_id` int(5) DEFAULT NULL,
  `title` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `discription` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `imgPath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `price` varchar(25) DEFAULT NULL,
  KEY `ID` (`_id`,`title`,`discription`,`imgPath`,`price`),
  CONSTRAINT `ID` FOREIGN KEY (`_id`, `title`, `discription`, `imgPath`, `price`) REFERENCES `home` (`_id`, `title`, `discription`, `imgPath`, `price`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of productp2
-- ----------------------------
INSERT INTO `productp2` VALUES ('1', '商品01号', 'demo111商品详情', 'https://bkimg.cdn.bcebos.com/pic/7dd98d1001e939013c6aea1776ec54e736d196aa?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U5Mg==,g_7,xp_5,yp_5/format,f_auto', 'x1', '111');
INSERT INTO `productp2` VALUES ('2', '商品02号', 'demo222商品详情', 'https://bkimg.cdn.bcebos.com/pic/0eb30f2442a7d933325836b1a54bd11372f00104?x-bce-https://bkimg.cdn.bcebos.com/pic/5bafa40f4bfbfbed5e89f3b976f0f736aec31f20?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5/format,f_auto', 'x2', '222');
INSERT INTO `productp2` VALUES ('3', '商品03号', 'demo333商品详情', 'https://bkimg.cdn.bcebos.com/pic/4034970a304e251f451a082fa986c9177e3e537c?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5/format,f_auto', 'x3', '333');
INSERT INTO `productp2` VALUES ('4', '商品04号', 'demo444商品详情', 'https://bkimg.cdn.bcebos.com/pic/0824ab18972bd407ccdf3c2a75899e510eb309c9?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5/format,f_auto', 'x4', '444');
INSERT INTO `productp2` VALUES ('5', '商品05号', 'demo555商品详情', 'https://bkimg.cdn.bcebos.com/pic/8435e5dde71190ef35ef9e94c01b9d16fdfa6060?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', 'x5', '555');
INSERT INTO `productp2` VALUES ('6', '商品06号', 'demo666商品详情', 'https://bkimg.cdn.bcebos.com/pic/95eef01f3a292df56bb06427b3315c6034a87395?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5/format,f_auto', 'x6', '666');
INSERT INTO `productp2` VALUES ('7', '商品07号', 'demo777商品详情', 'https://bkimg.cdn.bcebos.com/pic/d1160924ab18972be37fae87e8cd7b899e510a31?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', 'x7', '777');
INSERT INTO `productp2` VALUES ('8', '商品08号', 'demo888商品详情', 'https://bkimg.cdn.bcebos.com/pic/5d6034a85edf8db13e9ed2290723dd54574e74cf?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', 'x8', '888');
INSERT INTO `productp2` VALUES ('9', '商品09号', 'demo999商品详情', 'https://bkimg.cdn.bcebos.com/pic/8435e5dde71190ef35ef9e94c01b9d16fdfa6060?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', 'x9', '999');

-- ----------------------------
-- Table structure for productp3
-- ----------------------------
DROP TABLE IF EXISTS `productp3`;
CREATE TABLE `productp3` (
  `_id` int(5) DEFAULT NULL,
  `title` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `discription` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `imgPath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  KEY `ID` (`_id`,`title`,`discription`,`imgPath`),
  KEY `productp3_ibfk_1` (`_id`,`title`,`discription`,`imgPath`,`price`),
  CONSTRAINT `productp3_ibfk_1` FOREIGN KEY (`_id`, `title`, `discription`, `imgPath`, `price`) REFERENCES `home` (`_id`, `title`, `discription`, `imgPath`, `price`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of productp3
-- ----------------------------
INSERT INTO `productp3` VALUES ('1', '商品01号', 'demo111商品详情', 'https://bkimg.cdn.bcebos.com/pic/7dd98d1001e939013c6aea1776ec54e736d196aa?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U5Mg==,g_7,xp_5,yp_5/format,f_auto', '111');
INSERT INTO `productp3` VALUES ('2', '商品02号', 'demo222商品详情', 'https://bkimg.cdn.bcebos.com/pic/0eb30f2442a7d933325836b1a54bd11372f00104?x-bce-https://bkimg.cdn.bcebos.com/pic/5bafa40f4bfbfbed5e89f3b976f0f736aec31f20?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5/format,f_auto', '222');
INSERT INTO `productp3` VALUES ('3', '商品03号', 'demo333商品详情', 'https://bkimg.cdn.bcebos.com/pic/4034970a304e251f451a082fa986c9177e3e537c?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5/format,f_auto', '333');
INSERT INTO `productp3` VALUES ('4', '商品04号', 'demo444商品详情', 'https://bkimg.cdn.bcebos.com/pic/0824ab18972bd407ccdf3c2a75899e510eb309c9?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5/format,f_auto', '444');
INSERT INTO `productp3` VALUES ('5', '商品05号', 'demo555商品详情', 'https://bkimg.cdn.bcebos.com/pic/8435e5dde71190ef35ef9e94c01b9d16fdfa6060?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '555');
INSERT INTO `productp3` VALUES ('6', '商品06号', 'demo666商品详情', 'https://bkimg.cdn.bcebos.com/pic/95eef01f3a292df56bb06427b3315c6034a87395?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5/format,f_auto', '666');
INSERT INTO `productp3` VALUES ('7', '商品07号', 'demo777商品详情', 'https://bkimg.cdn.bcebos.com/pic/d1160924ab18972be37fae87e8cd7b899e510a31?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '777');
INSERT INTO `productp3` VALUES ('8', '商品08号', 'demo888商品详情', 'https://bkimg.cdn.bcebos.com/pic/5d6034a85edf8db13e9ed2290723dd54574e74cf?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '888');
INSERT INTO `productp3` VALUES ('9', '商品09号', 'demo999商品详情', 'https://bkimg.cdn.bcebos.com/pic/8435e5dde71190ef35ef9e94c01b9d16fdfa6060?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '999');
