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

 Date: 18/07/2018 00:23:37
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contents
-- ----------------------------
BEGIN;
INSERT INTO `contents` VALUES (7, 'Penyejuk jiwa', 'Quote', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', NULL, 1, '2018-07-09 14:47:49', '2018-07-09 14:47:49');
INSERT INTO `contents` VALUES (9, 'Selamat Datang di Website Universitas Pamulang', 'Information', NULL, '<p>Kami Menyambut baik dengan adanya Website Universitas Pamulang yang baru, dengan harapan dipublikasinya website ini kampus berharap : Peningkatan layanan pendidikan kepada mahasiswa/i, orangtua, dan masyarakat pada umumnya semakin meningkat. Sebaliknya orangtua dapat mengakses informasi tentang kegiatan akademik dan non akademik putra &ndash; puterinya di kampus ini.</p>', NULL, 1, '2018-07-09 14:53:02', '2018-07-09 14:53:02');
INSERT INTO `contents` VALUES (10, 'Pengukuhan guru besar', 'Banner', 'web-banner-guru-besar.jpg', NULL, 'gambar', 1, '2018-07-09 23:33:34', '2018-07-09 23:33:34');
INSERT INTO `contents` VALUES (11, 'Kluster utama', 'Banner', 'web-banner-prestasi-penelitian.jpg', NULL, 'gambar', 1, '2018-07-09 23:48:03', '2018-07-09 23:48:03');
INSERT INTO `contents` VALUES (12, 'Halal bihalal', 'Banner', 'WhatsApp Image 2018-07-11 at 1.37.22 PM.jpeg', NULL, 'gambar', 1, '2018-07-12 03:26:52', '2018-07-12 03:26:52');
INSERT INTO `contents` VALUES (13, 'kunci sukses', 'Quote', NULL, '<p>key of success adalah kunci kesuksean</p>', NULL, 1, '2018-07-17 16:40:17', '2018-07-17 16:40:17');
INSERT INTO `contents` VALUES (14, 'tres', 'Banner', 'logo-edu-black.png', NULL, 'gambar', 1, '2018-07-17 16:51:26', '2018-07-17 16:51:26');
INSERT INTO `contents` VALUES (16, 'qwqw', 'Banner', 'status whatsapp romantis durasi 30 detik.mp4', NULL, 'video', 1, '2018-07-17 17:02:03', '2018-07-17 17:02:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Achmad Tantowi', NULL, 'http://pbs.twimg.com/profile_images/869783174401753089/0x3ApbPQ_normal.jpg', '65d90fc6d307590b14e9e1800d4e8eab', '3z9G7pSM4QdOB0OC3arem3YWcCGE8iUrE29upzeSmDbnBVgrTIhOu91pKufX', '2018-06-18 09:30:31', '2018-06-18 09:30:31');
INSERT INTO `users` VALUES (2, 'Joko', 'joko@mail.com', NULL, '$2y$10$K/AtjmzYv3SnTsWxMFf1iuRmp7Fda9q7vHEaJcp9EN66ocseq/CyC', '6PpENCytNMSrjhe9piXYhQq8JHlwUk29y1w7ZH5XQZ9SxVyCWDluc5G5SUVe', '2018-06-18 09:38:05', '2018-06-18 09:38:05');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
