/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MariaDB
 Source Server Version : 100132
 Source Host           : localhost:3306
 Source Schema         : mading_online_db

 Target Server Type    : MariaDB
 Target Server Version : 100132
 File Encoding         : 65001

 Date: 08/07/2018 20:07:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for contents
-- ----------------------------
DROP TABLE IF EXISTS `contents`;
CREATE TABLE `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contents
-- ----------------------------
BEGIN;
INSERT INTO `contents` VALUES (1, 'tes', '<p>tes</p>', '2018-06-27 03:48:09', '2018-06-27 03:48:09');
INSERT INTO `contents` VALUES (2, 'oke', '<p><strong>sdsd</strong></p>\r\n\r\n<p><strong>dsdsdsd</strong></p>\r\n\r\n<p><strong><s>xcxc</s></strong></p>', '2018-06-27 03:48:43', '2018-06-27 03:48:43');
INSERT INTO `contents` VALUES (3, 'rtrt', '<p>ssdsd</p>\r\n\r\n<p>sdsd</p>\r\n\r\n<p>wewe</p>', '2018-06-27 03:49:04', '2018-06-27 03:49:04');
INSERT INTO `contents` VALUES (4, 'lkllk', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>sd</td>\r\n			<td>df</td>\r\n		</tr>\r\n		<tr>\r\n			<td>xcxc</td>\r\n			<td>we</td>\r\n		</tr>\r\n		<tr>\r\n			<td>c</td>\r\n			<td>as</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '2018-06-27 03:56:57', '2018-06-27 03:56:57');
INSERT INTO `contents` VALUES (6, 'okeoke', '<p>sdsdsds</p>', '2018-07-07 06:27:40', '2018-07-07 06:27:40');
COMMIT;

-- ----------------------------
-- Table structure for image_contents
-- ----------------------------
DROP TABLE IF EXISTS `image_contents`;
CREATE TABLE `image_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of image_contents
-- ----------------------------
BEGIN;
INSERT INTO `image_contents` VALUES (1, 6, 'Goals Phase 1.jpeg', '2018-07-07 06:27:40', '2018-07-07 06:27:40');
INSERT INTO `image_contents` VALUES (2, 6, 'Screen Shot 2018-06-06 at 14.56.03.png', '2018-07-07 06:27:40', '2018-07-07 06:27:40');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (6, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (7, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (8, '2018_06_18_075926_create_social_twitter_accounts_table', 1);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for social_twitter_accounts
-- ----------------------------
DROP TABLE IF EXISTS `social_twitter_accounts`;
CREATE TABLE `social_twitter_accounts` (
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of social_twitter_accounts
-- ----------------------------
BEGIN;
INSERT INTO `social_twitter_accounts` VALUES (1, '869776780546023424', 'twitter', '2018-06-18 09:30:31', '2018-06-18 09:30:31');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Achmad Tantowi', NULL, 'http://pbs.twimg.com/profile_images/869783174401753089/0x3ApbPQ_normal.jpg', '65d90fc6d307590b14e9e1800d4e8eab', 'SoMsJyLyb7qv1m3i6WZWwbzi5JSC7i182TWkPvucZWHPt3d64Rzvcrc3mkOK', '2018-06-18 09:30:31', '2018-06-18 09:30:31');
INSERT INTO `users` VALUES (2, 'Joko', 'joko@mail.com', NULL, '$2y$10$K/AtjmzYv3SnTsWxMFf1iuRmp7Fda9q7vHEaJcp9EN66ocseq/CyC', 'QYQNi6WY8IWdgMenwr0iMW9ltIVSNjwS2JPFTuX5Tcc6EX2kCzsOTIddL2A0', '2018-06-18 09:38:05', '2018-06-18 09:38:05');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
