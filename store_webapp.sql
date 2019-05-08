/*
 Navicat Premium Data Transfer

 Source Server         : Elaniin
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : store_webapp

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 07/05/2019 22:24:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for carritos
-- ----------------------------
DROP TABLE IF EXISTS `carritos`;
CREATE TABLE `carritos`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_orden` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_producto` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of carritos
-- ----------------------------
INSERT INTO `carritos` VALUES (1, '98945942', '6', 'Mosquito Repellent Bracelets', 1, '10.50', 'There\'s no better way to ruin a beach bonfire or backyard barbecue than with mosquitos swarming around you. These mosquito repellent bracelets are the perfect way to keep the bugs at bay ', '2019-05-07 22:09:42', '2019-05-07 22:09:42');
INSERT INTO `carritos` VALUES (2, '45942259', '6', 'Mosquito Repellent Bracelets', 1, '10.50', 'There\'s no better way to ruin a beach bonfire or backyard barbecue than with mosquitos swarming around you. These mosquito repellent bracelets are the perfect way to keep the bugs at bay ', '2019-05-07 22:22:30', '2019-05-07 22:22:30');
INSERT INTO `carritos` VALUES (3, '45942259', '5', 'Playz Growing Crystal Creations', 1, '27', 'If you think growing majestic crystals in your bedroom is just for kids, you are dead wrong. This ultra-nerdy, nostalgic crystal growing lab is made for adults, too.', '2019-05-07 22:22:44', '2019-05-07 22:22:44');
INSERT INTO `carritos` VALUES (4, '45942259', '4', 'The Art Of Talking To Yourself', 1, '12', 'If you\'re thinking you might feel a little odd giving someone a self-help book, this book is so much more than that — it\'s more like a self-empowerment book. ', '2019-05-07 22:22:48', '2019-05-07 22:22:48');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2019_05_04_181324_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_05_05_062015_create_products_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_05_07_223340_create_carritos_table', 1);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Shoe Organizer', '15', 'Keeping track of all your shoes can be difficult, so start cleaning up your floors with the Simple Houseware hanging shoe organizer. ', '2019-05-07 22:04:38', '2019-05-07 22:04:38');
INSERT INTO `products` VALUES (2, 'Gummy Bear anatomy puzzle', '26.75', 'a Gummy Bear-shaped torture chamber filled with the small animal that died trying to escape it.', '2019-05-07 22:05:02', '2019-05-07 22:05:02');
INSERT INTO `products` VALUES (3, 'Aria Starr Dead Sea Mud Mask', '8', 'Using ingredients like Dead Sea mud, aloe, and Kaolin clay, this Aria Starr mask pulls out blackheads, balances oil production, and helps to heal whiteheads. It detoxifies and exfoliates while shrinking pores, and because of its careful, moisturizing ingredients, it\'s safe on overly dry or sensitive skin, too. ', '2019-05-07 22:05:35', '2019-05-07 22:05:35');
INSERT INTO `products` VALUES (4, 'The Art Of Talking To Yourself', '12', 'If you\'re thinking you might feel a little odd giving someone a self-help book, this book is so much more than that — it\'s more like a self-empowerment book. ', '2019-05-07 22:06:20', '2019-05-07 22:06:20');
INSERT INTO `products` VALUES (5, 'Playz Growing Crystal Creations', '27', 'If you think growing majestic crystals in your bedroom is just for kids, you are dead wrong. This ultra-nerdy, nostalgic crystal growing lab is made for adults, too.', '2019-05-07 22:07:24', '2019-05-07 22:07:24');
INSERT INTO `products` VALUES (6, 'Mosquito Repellent Bracelets', '10.50', 'There\'s no better way to ruin a beach bonfire or backyard barbecue than with mosquitos swarming around you. These mosquito repellent bracelets are the perfect way to keep the bugs at bay ', '2019-05-07 22:09:01', '2019-05-07 22:09:01');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
