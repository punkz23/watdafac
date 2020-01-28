/*
 Navicat Premium Data Transfer

 Source Server         : iggy
 Source Server Type    : MySQL
 Source Server Version : 100406
 Source Host           : localhost:3306
 Source Schema         : ictms

 Target Server Type    : MySQL
 Target Server Version : 100406
 File Encoding         : 65001

 Date: 23/01/2020 18:09:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for affectedfamily_regions
-- ----------------------------
DROP TABLE IF EXISTS `affectedfamily_regions`;
CREATE TABLE `affectedfamily_regions`  (
  `region_code` int(9) NOT NULL AUTO_INCREMENT,
  `region_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `region_nick` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `region_director` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `psgc_rgn` char(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`region_code`) USING BTREE,
  UNIQUE INDEX `psgc_rgn`(`psgc_rgn`) USING BTREE,
  INDEX `region_name`(`region_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of affectedfamily_regions
-- ----------------------------
INSERT INTO `affectedfamily_regions` VALUES (1, 'NCR [National Capital Region]', 'NCR', '', '130000000');
INSERT INTO `affectedfamily_regions` VALUES (2, 'CAR [Cordillera Administrative Region]', 'CAR', '', '140000000');
INSERT INTO `affectedfamily_regions` VALUES (3, 'REGION I [Ilocos Region]', 'I', '', '010000000');
INSERT INTO `affectedfamily_regions` VALUES (4, 'REGION II [Cagayan Valley]', 'II', '', '020000000');
INSERT INTO `affectedfamily_regions` VALUES (5, 'REGION III [Central Luzon]', 'III', '', '030000000');
INSERT INTO `affectedfamily_regions` VALUES (6, 'REGION IV-A [CALABARZON]', 'IV-A', '', '040000000');
INSERT INTO `affectedfamily_regions` VALUES (7, 'REGION IV-B [MIMAROPA]', 'IV-B', '', '170000000');
INSERT INTO `affectedfamily_regions` VALUES (8, 'REGION V [Bicol Region]', 'V', '', '050000000');
INSERT INTO `affectedfamily_regions` VALUES (9, 'REGION VI [Western Visayas]', 'VI', '', '060000000');
INSERT INTO `affectedfamily_regions` VALUES (10, 'REGION VII [Central Visayas]', 'VII', '', '070000000');
INSERT INTO `affectedfamily_regions` VALUES (11, 'REGION VIII [Eastern Visayas]', 'VIII', '', '080000000');
INSERT INTO `affectedfamily_regions` VALUES (12, 'REGION IX [Zamboanga Peninsula]', 'IX', '', '090000000');
INSERT INTO `affectedfamily_regions` VALUES (13, 'REGION X [Northern Mindanao]', 'X', '', '100000000');
INSERT INTO `affectedfamily_regions` VALUES (14, 'REGION XI [Davao Region]', 'XI', '', '110000000');
INSERT INTO `affectedfamily_regions` VALUES (15, 'REGION XII [Soccsksargen]', 'XII', '', '120000000');
INSERT INTO `affectedfamily_regions` VALUES (16, 'REGION XIII [Caraga]', 'CARAGA', '', '160000000');
INSERT INTO `affectedfamily_regions` VALUES (17, 'ARMM [Autonomous Region in Muslim Mindanao]', 'ARMM', '', '150000000');
INSERT INTO `affectedfamily_regions` VALUES (18, 'Central Office', 'C.O.', NULL, '000000000');
INSERT INTO `affectedfamily_regions` VALUES (19, 'NIR - Negros Island Region', 'NIR', NULL, '180000000');

SET FOREIGN_KEY_CHECKS = 1;
