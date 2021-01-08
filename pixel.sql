/*
 Navicat Premium Data Transfer

 Source Server         : mysql habbo
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : 51.210.100.90:3306
 Source Schema         : pixel

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 06/10/2020 17:11:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for furniture
-- ----------------------------
DROP TABLE IF EXISTS `furniture`;
CREATE TABLE `furniture`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `furnidata_name` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `width` int(11) NOT NULL DEFAULT 1,
  `length` int(11) NOT NULL DEFAULT 1,
  `height` double NOT NULL DEFAULT 0,
  `allow_stack` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1',
  `allow_sit` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `allow_walk` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `interaction_type` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'default',
  `interaction_count` int(11) NOT NULL DEFAULT 1,
  `multi_height` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `rotations` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of furniture
-- ----------------------------
INSERT INTO `furniture` VALUES (1, 'school_platform', 1, 1, 0, '1', '0', '1', 'default', 3, '0.5;1;1.5;2', '0');

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `base_id` int(11) NULL DEFAULT NULL,
  `owner` int(11) NULL DEFAULT NULL,
  `room` int(11) NULL DEFAULT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `z` double NULL DEFAULT NULL,
  `rot` int(255) NULL DEFAULT NULL,
  `extra_data` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES (60, 1, 1, 1, 4, 3, 0, 0, '0');
INSERT INTO `items` VALUES (61, 1, 1, 1, 4, 5, 0, 0, '0');
INSERT INTO `items` VALUES (62, 1, 1, 1, 7, 3, 0, 0, '0');
INSERT INTO `items` VALUES (63, 1, 1, 1, 7, 6, 0, 0, '0');
INSERT INTO `items` VALUES (64, 1, 1, 1, 9, 7, 0, 0, '0');
INSERT INTO `items` VALUES (65, 1, 1, 1, 4, 5, 0.5, 0, '0');
INSERT INTO `items` VALUES (66, 1, 1, 1, 4, 5, 1, 0, '0');
INSERT INTO `items` VALUES (67, 1, 1, 1, 4, 5, 1.5, 0, '0');
INSERT INTO `items` VALUES (68, 1, 1, 0, 11, 2, 0, 4, '0');
INSERT INTO `items` VALUES (69, 1, 1, 0, 9, 5, 0, 2, '0');

-- ----------------------------
-- Table structure for room_models
-- ----------------------------
DROP TABLE IF EXISTS `room_models`;
CREATE TABLE `room_models`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `model_map` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `door_x` int(255) NULL DEFAULT NULL,
  `door_y` int(255) NULL DEFAULT NULL,
  `door_z` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of room_models
-- ----------------------------
INSERT INTO `room_models` VALUES (1, 'model_1', 'Cyyyyyn\r\nx11111n\r\nx11111n\r\nD11111n\r\nx11111n\r\nx11111', 3, 0, 0);
INSERT INTO `room_models` VALUES (2, 'model_2', 'Cyyyyyyyyyyyyyyyyn\r\nx1111111111111111n\r\nD1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111', 2, 0, 0);

-- ----------------------------
-- Table structure for rooms
-- ----------------------------
DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `model` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `owner` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of rooms
-- ----------------------------
INSERT INTO `rooms` VALUES (1, 'Development', 'model_2', 1);

-- ----------------------------
-- Table structure for server_landing_views
-- ----------------------------
DROP TABLE IF EXISTS `server_landing_views`;
CREATE TABLE `server_landing_views`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `landing.title.1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `landing.text.1` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `landing.title.2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `landing.text.2` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of server_landing_views
-- ----------------------------
INSERT INTO `server_landing_views` VALUES (1, 'Title 1', 'Text 1', 'Title 2', 'Text 2');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `auth_ticket` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `look` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `motto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `credits` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Fusion', '$2y$10$EyEt/xUDInsfO4VBFPeWj.wx/27sT0X88dK6trTD8VBOSQEXlJVP.', 'manuel.andreatta.01@gmail.com', '8jSPp5RfdE22jMaq', 'hr-100-1407-61.hd-209-1.ch-215-66.lg-270-82.sh-290-64-110', 'Benvenuto su HabboJS', 0);
INSERT INTO `users` VALUES (3, 'Cosis', '$2y$10$0be3VfckIneZMFiPnWlgM.7OlOVlOLYhOuXyKeuTaD75qgkTZdnve', 'cosimocelestegoglia@virgilio.it', 'ZpQTNWlZy3hsWTv3', 'hd-3093-1.hr-3278-35.fa-1209-1410.ch-255-110.lg-3116-96.sh-295-92', 'Benvenuto su HabboJS', 0);
INSERT INTO `users` VALUES (4, 'tester', '$2y$10$glN7mVhtq2CC/QgfCNHz7eklsy6d6HMH7aZGz4WjjZS1DiSoCmSaC', 'asd@sad.it', 'U46428KweZF2dO3r', 'hr-100-1407-61.hd-209-1.ch-215-66.lg-270-82.sh-290-64-110', 'Benvenuto su HabboJS', 0);
INSERT INTO `users` VALUES (5, '50Special', '$2y$10$xBAsjgvxYLqZq/6cTnQxQuF047kFL.Ps629BgbGBvc/B0K9F5Ye1O', 'thomas.andreatta.96@gmail.com', '47ScIFWRqxszdqXr', 'hr-100-1407-61.hd-209-1.ch-215-66.lg-270-82.sh-290-64-110', 'Benvenuto su HabboJS', 0);
INSERT INTO `users` VALUES (6, 'tester2', '$2y$10$.fGsqlcu96V5wSNWOB0y9en2MUQbCUS2q/dmp72giNuZx9TkS0UvS', 'tester2', 'LMpoZxgtSVNRTdQC', 'hr-100-1407-61.hd-209-1.ch-215-66.lg-270-82.sh-290-64-110', 'Benvenuto su HabboJS', 0);

SET FOREIGN_KEY_CHECKS = 1;
