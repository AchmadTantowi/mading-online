-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2018 at 04:27 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mading_online_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `image` text,
  `content` text,
  `type_content` varchar(20) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `category`, `image`, `content`, `type_content`, `active`, `created_at`, `updated_at`) VALUES
(30, 'Info 1', 'Information', NULL, '<p>UAS Tanggal 28 Juli 2018</p>', NULL, 1, '2018-07-20 22:09:15', '2018-07-23 16:33:53'),
(31, 'Motivation', 'Quote', NULL, '<h1>Man Jadda Wa jadda</h1>', NULL, 1, '2018-07-20 22:10:14', '2018-07-27 19:38:43'),
(33, 'Kampus', 'Banner', 'Universitas_Al-Azhar_Indonesia_dan_Masjid_Agung_Al-Azhar_Terlihat_di_Parkir_Utama.jpg', 'taretrt', 'gambar', 1, '2018-07-23 16:36:51', '2018-07-23 16:36:51'),
(34, 'video lucu', 'Video', 'Video pendek dan menunjukkan kehidupan yang indah.mp4', 'a', 'video', 0, '2018-07-24 00:53:28', '2018-07-24 00:53:28'),
(35, 'Test video', 'Video', 'status whatsapp romantis durasi 30 detik.mp4', 'gfgdgdf', 'video', 0, '2018-07-24 06:07:00', '2018-07-24 06:07:00'),
(36, 'video lucu', 'Video', 'Video pendek dan menunjukkan kehidupan yang indah.mp4', NULL, 'video', 1, '2018-07-24 06:17:53', '2018-07-24 06:17:53'),
(37, 'video biasa', 'Video', 'Taehyung dropped his mic.mp3', 'Taehyung dropped his mic Taehyung dropped his mic Taehyung dropped his mic Taehyung dropped his mic Taehyung dropped his mic', 'video', 1, '2018-07-24 06:32:57', '2018-07-24 06:32:57'),
(38, 'video test 2', 'Video', 'Lucu Video kurang 1 menit.mp4', NULL, 'video', 0, '2018-07-24 06:47:47', '2018-07-24 06:47:47'),
(39, 'upload video', 'Video', 'Video pendek dan menunjukkan kehidupan yang indah.mp4', 'fgdgfgdfgd', 'video', 1, '2018-07-24 06:57:14', '2018-07-31 07:33:23'),
(40, 'Jadwal Sidang Akhir', 'Information', NULL, '<p>Sidang Akhir akan dilaksanakan pada tanggal 30 Juli - 4 Agustus 2018</p>', NULL, 1, '2018-07-24 06:59:40', '2018-07-24 06:59:40'),
(43, 'Test video 1', 'Video', 'Video pendek dan menunjukkan kehidupan yang indah.mp4', NULL, 'video', 0, '2018-07-24 07:02:53', '2018-07-24 07:02:53'),
(45, 'upload video', 'Video', 'Video pendek dan menunjukkan kehidupan yang indah.mp4', NULL, 'video', 0, '2018-07-27 21:09:30', '2018-07-27 21:09:30'),
(46, 'video cantik', 'Video', 'status whatsapp romantis durasi 30 detik.mp4', NULL, 'video', 0, '2018-07-31 07:08:02', '2018-07-31 07:08:02'),
(51, 'upload video', 'Video', 'Video pendek dan menunjukkan kehidupan yang indah.mp4', NULL, 'video', 0, '2018-07-31 07:18:20', '2018-07-31 07:18:20'),
(52, 'video', 'Video', 'status whatsapp romantis durasi 30 detik.mp4', NULL, 'video', 0, '2018-07-31 07:21:23', '2018-07-31 07:24:48'),
(53, 'upload video', 'Video', 'status whatsapp romantis durasi 30 detik.mp4', NULL, 'video', 0, '2018-07-31 07:25:21', '2018-07-31 07:25:44'),
(54, 'upload video', 'Video', 'status whatsapp romantis durasi 30 detik.mp4', NULL, 'video', 0, '2018-07-31 07:28:32', '2018-07-31 07:28:32'),
(55, 'gambar', 'Banner', 'Penguins.jpg', NULL, 'gambar', 1, '2018-08-01 19:06:44', '2018-08-01 19:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `image_contents`
--

CREATE TABLE `image_contents` (
  `id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_contents`
--

INSERT INTO `image_contents` (`id`, `content_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 6, 'Goals Phase 1.jpeg', '2018-07-06 23:27:40', '2018-07-06 23:27:40'),
(2, 6, 'Screen Shot 2018-06-06 at 14.56.03.png', '2018-07-06 23:27:40', '2018-07-06 23:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2018_06_18_075926_create_social_twitter_accounts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_twitter_accounts`
--

CREATE TABLE `social_twitter_accounts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_twitter_accounts`
--

INSERT INTO `social_twitter_accounts` (`id`, `user_id`, `provider_user_id`, `provider`, `created_at`, `updated_at`) VALUES
(1, 1, '869776780546023424', 'twitter', '2018-06-18 02:30:31', '2018-06-18 02:30:31'),
(2, 1, '1021645969039880192', 'twitter', '2018-07-24 01:26:31', '2018-07-24 01:26:31'),
(3, 4, '141650715', 'twitter', '2018-07-30 06:40:10', '2018-07-30 06:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Universitas Al Azhar', NULL, 'http://pbs.twimg.com/profile_images/1021744782895329282/phCMY0-k_normal.jpg', '65d90fc6d307590b14e9e1800d4e8eab', '9Sc9Di4SkyIiN0KaRzxFPFKrzYpsjv08yOCiOjyNA3g6E1rMrdLhvrMRM5sX', '2018-06-18 02:30:31', '2018-06-18 02:30:31'),
(3, 'Tiffany', 'tiffanynoor555@gmail.com', NULL, '$2y$10$jQztFacKDy2o.xiPquEyleyJUQrx4w3FrJR5GauX3IVveL1yqeXTi', 'aDdLEjptIAmdrNDqoZaS3UWH7YriyqX2BwffdOdZ7rki9ruCHlyuyP8ya32t', '2018-07-24 06:28:28', '2018-07-24 06:28:28'),
(4, 'Tiffany Noor', NULL, 'http://pbs.twimg.com/profile_images/562193469100134401/20Q7eTTh_normal.jpeg', 'ee1d21306cddf0e43641f1dc52d810be', 'venx0UaBeaf8I3XKrJEGzGsXLSV4M63p0DslZwZUfg17lvLzbfV81UpyJqW1', '2018-07-30 06:40:10', '2018-07-30 06:40:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_contents`
--
ALTER TABLE `image_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `social_twitter_accounts`
--
ALTER TABLE `social_twitter_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `image_contents`
--
ALTER TABLE `image_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `social_twitter_accounts`
--
ALTER TABLE `social_twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
