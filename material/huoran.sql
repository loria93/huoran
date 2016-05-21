/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : huoran

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-05-21 11:20:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `huoran_user`
-- ----------------------------
DROP TABLE IF EXISTS `huoran_user`;
CREATE TABLE `huoran_user` (
  `UserId` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Age` int(4) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huoran_user
-- ----------------------------
INSERT INTO `huoran_user` VALUES ('00005c0e-47a8-4cee-a62f-bdd62150a122', 'Naozi', '123456', null, null, null);
