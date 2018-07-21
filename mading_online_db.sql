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

 Date: 21/07/2018 13:47:30
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
  `category` varchar(100) NOT NULL,
  `image` text,
  `content` text,
  `type_content` varchar(20) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contents
-- ----------------------------
BEGIN;
INSERT INTO `contents` VALUES (26, 'Video', 'Video', 'status whatsapp romantis durasi 30 detik.mp4', NULL, 'video', 1, '2018-07-21 05:05:18', '2018-07-21 05:16:54');
INSERT INTO `contents` VALUES (27, 'Video 2', 'Video', 'KANGEN WHATSAPP STATUS VIDEO 30DETIK.mp4', NULL, 'video', 0, '2018-07-21 05:05:35', '2018-07-21 05:05:35');
INSERT INTO `contents` VALUES (28, 'Banner', 'Banner', 'Halal bihalal.jpeg', NULL, 'gambar', 1, '2018-07-21 05:05:56', '2018-07-21 05:47:16');
INSERT INTO `contents` VALUES (29, 'Banner 2', 'Banner', 'Goals Phase 1.jpeg', NULL, 'gambar', 1, '2018-07-21 05:07:29', '2018-07-21 05:07:29');
INSERT INTO `contents` VALUES (30, 'Info 1', 'Information', NULL, '<p>Intervention Image has optional support for&nbsp;<a href=\"http://laravel.com/\">Laravel</a>&nbsp;and comes with a&nbsp;<strong>Service Provider and Facades</strong>&nbsp;for easy integration. The&nbsp;<code>vendor/autoload.php</code>&nbsp;is included by Laravel, so you don&#39;t have to require or autoload manually. Just see the instructions below.</p>', NULL, 1, '2018-07-21 05:09:15', '2018-07-21 05:09:15');
INSERT INTO `contents` VALUES (31, 'Quote', 'Quote', NULL, '<p>Dalam hidup, terkadang kita membutuhkan kata kata mutiara atau kata kata bijak kehidupan sebagai pengingat untuk bisa menjadi manusia yang lebih baik. Meskipun begitu, kita harus bisa mengamalkannya dengan perbuatan juga.</p>', NULL, 1, '2018-07-21 05:10:14', '2018-07-21 05:46:32');
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of social_twitter_accounts
-- ----------------------------
BEGIN;
INSERT INTO `social_twitter_accounts` VALUES (1, 1, '869776780546023424', 'twitter', '2018-06-18 09:30:31', '2018-06-18 09:30:31');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Achmad Tantowi', NULL, 'http://pbs.twimg.com/profile_images/869783174401753089/0x3ApbPQ_normal.jpg', '65d90fc6d307590b14e9e1800d4e8eab', '3z9G7pSM4QdOB0OC3arem3YWcCGE8iUrE29upzeSmDbnBVgrTIhOu91pKufX', '2018-06-18 09:30:31', '2018-06-18 09:30:31');
INSERT INTO `users` VALUES (2, 'Joko', 'joko@mail.com', NULL, '$2y$10$K/AtjmzYv3SnTsWxMFf1iuRmp7Fda9q7vHEaJcp9EN66ocseq/CyC', 'tq8Lss5cbaYLAxu1wknCmSY6e1t1zNfVhEMJ8bDV335ZjSb2ds96zK9AMQgi', '2018-06-18 09:38:05', '2018-06-18 09:38:05');
INSERT INTO `users` VALUES (5, 'Owaiiii', 'owai@mail.com', NULL, '$2y$10$/KVXkvGCc.q7JcLiPkRjsOe2FjTmYmyRehvF.D5LVO6JiB5fcFTiu', 'mnuIliae9cd9BX63YaTa6LT1dcqBO4Y9zgX9QFuVYqkhWrcCksbu5G20Gp0v', '2018-07-21 06:28:40', '2018-07-21 06:32:02');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
