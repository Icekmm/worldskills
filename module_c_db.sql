-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2023 at 07:25 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `module_c_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`id`, `username`, `password`, `last_login_at`, `created_at`, `updated_at`) VALUES
(1, 'admin1', '$2y$10$gdMnWclgEBgDpJmmeJzVhuDEgX7sXcIAI/v/QvPaI28QRPHwrEKPK', '2023-12-19 14:24:40', '2022-10-05 13:55:40', '2023-12-19 14:24:40'),
(2, 'admin2', '$2y$10$Hyij3PAlYMV/0brQpIhwF.ptKIaDexuWeQoofY6xmrRCMIR5jleG6', NULL, '2022-10-05 15:27:52', '2022-10-05 15:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `title`, `slug`, `description`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Demo Game 1', 'demo-game-1', 'This is demo game 1', 3, '2022-10-09 15:32:41', '2022-10-09 15:32:41', NULL),
(2, 'Demo Game 2', 'demo-game-2', 'This is demo game 2', 4, '2022-10-09 16:50:36', '2022-10-09 16:50:36', NULL),
(3, 'Demo Game 3', 'demo-game-3', 'This is demo game 3', 4, '2022-10-09 16:45:29', '2022-10-09 16:45:29', NULL),
(4, 'Demo Game 4', 'demo-game-4', 'This is demo game 4', 4, '2022-10-09 17:43:25', '2022-10-09 17:43:25', NULL),
(5, 'Demo Game 5', 'demo-game-5', 'This is demo game 5', 4, '2022-10-09 17:41:21', '2022-10-09 17:41:21', NULL),
(30, 'Demo Game 30', 'demo-game-30', 'This is demo game 30', 4, '2022-10-09 22:49:41', '2022-10-09 22:49:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `game_versions`
--

CREATE TABLE `game_versions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_versions`
--

INSERT INTO `game_versions` (`id`, `game_id`, `version`, `storage_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'v1', 'games/1/v1/', '2022-10-09 15:32:41', '2022-10-09 15:32:41', '2022-10-09 15:45:41'),
(2, 1, 'v2', 'games/1/v2/', '2022-10-09 15:45:41', '2022-10-09 15:45:41', NULL),
(3, 2, 'v1', 'games/2/v1/', '2022-10-09 16:50:36', '2022-10-09 16:50:36', NULL),
(4, 3, 'v1', 'games/3/v1/', '2022-10-09 16:45:29', '2022-10-09 16:45:29', NULL),
(5, 4, 'v1', 'games/4/v1/', '2022-10-09 17:43:25', '2022-10-09 17:43:25', NULL),
(6, 5, 'v1', 'games/5/v1/', '2022-10-09 17:41:21', '2022-10-09 17:41:21', NULL),
(7, 6, 'v1', 'games/6/v1/', '2022-10-09 17:39:17', '2022-10-09 17:39:17', NULL),
(31, 30, 'v1', 'games/30/v1/', '2022-10-09 22:49:41', '2022-10-09 22:49:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_10_03_175349_create_administrators_table', 1),
(3, '2022_10_03_200550_create_users_table', 1),
(4, '2022_10_05_185121_create_games_table', 1),
(5, '2022_10_05_190445_create_game_versions_table', 1),
(6, '2022_10_05_191233_create_scores_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `game_version_id` bigint(20) UNSIGNED NOT NULL,
  `score` double(13,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `user_id`, `game_version_id`, `score`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10.00, '2022-10-09 15:35:41', '2022-10-09 15:35:41'),
(2, 1, 1, 15.00, '2022-10-09 15:36:41', '2022-10-09 15:36:41'),
(3, 1, 2, 12.00, '2022-10-09 15:54:27', '2022-10-09 15:54:27'),
(4, 2, 2, 20.00, '2022-10-09 15:55:39', '2022-10-09 15:55:39'),
(5, 2, 3, 30.00, '2022-10-09 16:53:41', '2022-10-09 16:53:41'),
(6, 3, 2, 1000.00, '2022-10-09 16:53:41', '2022-10-09 16:53:41'),
(7, 3, 2, -300.00, '2022-10-09 16:54:41', '2022-10-09 16:54:41'),
(8, 4, 2, 5.00, '2022-10-09 16:56:41', '2022-10-09 16:56:41'),
(9, 4, 3, 200.00, '2022-10-09 16:57:41', '2022-10-09 16:57:41'),
(10, 5, 4, 135.00, '2022-10-09 16:45:38', '2022-10-09 16:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `delete_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `last_login_at`, `created_at`, `updated_at`, `deleted_at`, `delete_reason`) VALUES
(1, 'player1', '$2y$10$6N3Hz5Ej3WuI4Bqye.KwluBY4LbZ3ek.1jdOpL4RVm25hcx08KgV6', NULL, '2022-10-07 05:42:51', '2022-10-07 05:42:51', NULL, NULL),
(2, 'player2', '$2y$10$f1Ko3n8NFkDei41lPIBvV.b/Go5zsJZZS4o.zjMm3qWqsirw0lTTG', NULL, '2022-10-07 05:58:19', '2022-10-07 05:58:19', NULL, NULL),
(3, 'dev1', '$2y$10$lTBPJzGIEN22JWffrN/z/O9TpEtvqOmksir8mYllwZwEF.oY3nWdC', NULL, '2022-10-07 07:22:07', '2022-10-07 07:22:07', NULL, NULL),
(4, 'dev2', '$2y$10$cgzke2hcNEuwxMzqjpY4JeJstoGf/2S3DyKcqhhblWhH6spN7IBfC', NULL, '2022-10-07 08:50:35', '2022-10-07 08:50:35', NULL, NULL),
(5, 'player3', '$2y$10$Z/S9CSM7SHSCGhio.oVkceRoD0jPBMBH4NZ.ysm1soBI6L.nGyEc.', NULL, '2022-10-07 10:49:37', '2022-10-07 10:49:37', NULL, NULL),
(6, 'player4', '$2y$10$ZYrQeeMSKJ0unpQpdVNmSOgQgdX/FyOc2FrAmxyaj09KQFP0vV7e.', NULL, '2022-10-07 11:47:36', '2022-10-07 11:47:36', NULL, NULL),
(7, 'player5', '$2y$10$.xXqXzQlPGcQ4u1W8aH1/uXVC6k74k4GAEtuzXF53uQc.0GHRH/8u', NULL, '2022-10-07 12:45:35', '2022-10-07 12:45:35', NULL, NULL),
(8, 'player30', '$2y$10$3TTI8Ba1svk4g09.IHNVK.RQpO9Pf5hzZsZ8WJypRnwugrRqyTXum', NULL, '2022-10-08 12:55:11', '2022-10-08 12:55:11', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `administrators_username_unique` (`username`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `games_slug_unique` (`slug`),
  ADD KEY `games_created_by_foreign` (`created_by`);

--
-- Indexes for table `game_versions`
--
ALTER TABLE `game_versions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `game_versions`
--
ALTER TABLE `game_versions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=794;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
