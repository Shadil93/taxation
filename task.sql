-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 06:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `totalAmount` int(11) NOT NULL,
  `taxPercentage` int(11) NOT NULL,
  `taxAmount` int(11) NOT NULL,
  `netAmount` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `invoiceDate` date NOT NULL,
  `photo` varchar(255) NOT NULL,
  `customerEmail` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `qty`, `amount`, `totalAmount`, `taxPercentage`, `taxAmount`, `netAmount`, `customerName`, `invoiceDate`, `photo`, `customerEmail`, `created_at`, `updated_at`) VALUES
(2, 19, 50038, 950722, 28, 266202, 1216924, 'shadil', '2024-04-24', '17139428951-change1.jpg', 'shadilmusthafa@gmail.com', '2024-04-24 00:52:51', '2024-04-24 14:14:55'),
(5, 76, 82, 6232, 18, 1122, 7354, 'shamil', '2024-04-26', '1713938211download (3).jpg', 'shamil@gmail.com', '2024-04-24 01:15:25', '2024-04-24 12:56:51'),
(6, 2, 29, 58, 18, 10, 68, 'jasna', '2024-04-26', '1713896288download (7).jpg', 'jasna@gmail.com', '2024-04-24 01:18:08', '2024-04-24 01:18:08'),
(7, 14, 23, 322, 5, 16, 338, 'jasna', '2024-04-25', '1713896418download (9).jpg', 'jasna@gmail.com', '2024-04-24 01:20:18', '2024-04-24 01:20:18'),
(8, 2, 5, 10, 12, 1, 11, 'jasna', '2024-04-24', '1713896992download (1).jpg', 'jasna@gmail.com', '2024-04-24 01:29:52', '2024-04-24 01:29:52'),
(10, 93, 37, 3441, 0, 13, 87, 'jasna', '2024-04-26', '1713899969download (6).jpg', 'jasna@gmail.com', '2024-04-24 01:59:33', '2024-04-24 02:19:29'),
(11, 2, 400, 800, 12, 96, 896, 'shadil', '2024-04-24', '17139497821-change1.jpg', 'shadilmusthafa@gmail.com', '2024-04-24 16:09:43', '2024-04-24 16:09:43'),
(12, 2, 400, 800, 12, 96, 896, 'shadil', '2024-04-24', '17139499401-change1.jpg', 'shadilmusthafa@gmail.com', '2024-04-24 16:12:20', '2024-04-24 16:12:20'),
(13, 4, 400, 1600, 18, 288, 1888, 'shadil', '2024-04-24', '17139502241-change1.jpg', 'shadilmusthafa@gmail.com', '2024-04-24 16:17:04', '2024-04-24 16:17:04'),
(14, 4, 400, 1600, 18, 288, 1888, 'shadil', '2024-04-24', '17139502581-change1.jpg', 'shadilmusthafa@gmail.com', '2024-04-24 16:17:38', '2024-04-24 16:17:38'),
(15, 4, 400, 1600, 18, 288, 1888, 'shadil', '2024-04-24', '17139504871-change1.jpg', 'shadilmusthafa@gmail.com', '2024-04-24 16:21:27', '2024-04-24 16:21:27'),
(16, 4, 400, 1600, 18, 288, 1888, 'shadil', '2024-04-24', '17139505321-change1.jpg', 'shadilmusthafa@gmail.com', '2024-04-24 16:22:12', '2024-04-24 16:22:12'),
(17, 1, 2000, 2000, 5, 100, 2100, 'jasna', '2024-04-25', '17139506151-change1.jpg', 'shadilmusthafa@gmail.com', '2024-04-24 16:23:35', '2024-04-24 16:23:35'),
(18, 5, 4000, 20000, 18, 3600, 23600, 'shadil', '2024-04-24', '17139508131-change1.jpg', 'shadilmusthafa@gmail.com', '2024-04-24 16:26:53', '2024-04-24 16:26:53'),
(19, 10, 17, 170, 28, 48, 218, 'shadil', '2024-04-24', '17139510331-change1.jpg', 'vandana.futuralabs@gmail.com', '2024-04-24 16:30:33', '2024-04-24 16:30:33'),
(20, 2, 19, 38, 28, 11, 49, 'jasna', '2024-04-24', '17139511571-change1.jpg', 'vandana.futuralabs@gmail.com', '2024-04-24 16:32:37', '2024-04-24 16:32:37'),
(21, 2, 19, 38, 28, 11, 49, 'jasna', '2024-04-24', '17139513521-change1.jpg', 'vandana.futuralabs@gmail.com', '2024-04-24 16:35:52', '2024-04-24 16:35:52'),
(22, 5, 24, 120, 18, 22, 142, 'jasna', '2024-04-24', '17139515831-change1.jpg', 'shadilmusthafa009@gmail.com', '2024-04-24 16:39:43', '2024-04-24 16:39:43'),
(23, 11, 18, 198, 28, 55, 253, 'sonnu', '2024-04-24', '17139518901-change1.jpg', 'shadilmusthafa009@gmail.com', '2024-04-24 16:44:51', '2024-04-24 16:44:51'),
(24, 3, 16, 48, 18, 9, 57, 'jasna', '2024-04-24', '17139520901-change1.jpg', 'shadilmusthafa009@gmail.com', '2024-04-24 16:48:10', '2024-04-24 16:48:10'),
(25, 14, 14, 196, 28, 55, 251, 'shadil', '2024-04-24', '17139522711-change1.jpg', 'vandana.futuralabs@gmail.com', '2024-04-24 16:51:11', '2024-04-24 16:51:11'),
(26, 10, 11, 110, 28, 31, 141, 'shadil', '2024-04-24', '1713952976download (1).jpg', 'shadilmusthafa009@gmail.com', '2024-04-24 17:02:56', '2024-04-24 17:02:56'),
(27, 10, 11, 110, 28, 31, 141, 'shadil', '2024-04-24', '1713953027download (1).jpg', 'shadilmusthafa009@gmail.com', '2024-04-24 17:03:47', '2024-04-24 17:03:47'),
(28, 6, 12, 72, 18, 13, 85, 'shadil', '2024-04-24', '17139534371-change1.jpg', 'shadilmusthafa009@gmail.com', '2024-04-24 17:10:37', '2024-04-24 17:10:37'),
(29, 5, 13, 65, 12, 8, 73, 'jasna', '2024-04-24', '17139536271-change1.jpg', 'vandana.futuralabs@gmail.com', '2024-04-24 17:13:47', '2024-04-24 17:13:47'),
(30, 5, 10, 50, 28, 14, 64, 'jasna', '2024-04-24', '17139536811-change1.jpg', 'shadilmusthafa009@gmail.com', '2024-04-24 17:14:41', '2024-04-24 17:14:41'),
(31, 13, 13, 169, 18, 30, 199, 'jasna', '2024-04-24', '17139539721-change1.jpg', 'shadilmusthafa009@gmail.com', '2024-04-24 17:19:32', '2024-04-24 17:19:32'),
(32, 13, 13, 169, 18, 30, 199, 'jasna', '2024-04-24', '17139542241-change1.jpg', 'shadilmusthafa009@gmail.com', '2024-04-24 17:23:44', '2024-04-24 17:23:44'),
(33, 9, 11, 99, 28, 28, 127, 'shadil', '2024-04-25', '1713954268download (2).jpg', 'shadilmusthafa009@gmail.com', '2024-04-24 17:24:28', '2024-04-24 17:24:28'),
(34, 9, 11, 99, 28, 28, 127, 'shadil', '2024-04-25', '1713954333download (2).jpg', 'shadilmusthafa009@gmail.com', '2024-04-24 17:25:33', '2024-04-24 17:25:33'),
(35, 6, 14, 84, 28, 24, 108, 'shadil', '2024-04-24', '17139548321-change1.jpg', 'shadilmusthafa009@gmail.com', '2024-04-24 17:33:52', '2024-04-24 17:33:52'),
(36, 13, 12, 156, 28, 44, 200, 'shadil', '2024-04-24', '17139549271-change1.jpg', 'shadilmusthafa009@gmail.com', '2024-04-24 17:35:27', '2024-04-24 17:35:27'),
(37, 6, 14, 84, 28, 24, 108, 'shadil', '2024-04-24', '17139552491-change1.jpg', 'shadilmusthafa009@gmail.com', '2024-04-24 17:40:49', '2024-04-24 17:40:49'),
(38, 7, 11, 77, 18, 14, 91, 'sonnu', '2024-04-25', '17139555041-change1.jpg', 'vandana.futuralabs@gmail.com', '2024-04-24 17:45:04', '2024-04-24 17:45:04'),
(39, 13, 20, 260, 28, 73, 333, 'sonnu', '2024-04-24', '17139696091-change1.jpg', 'shadilmusthafa009@gmail.com', '2024-04-24 21:40:10', '2024-04-24 21:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_23_095103_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sonnu', 'sonnu@gmail.com', NULL, '$2y$12$ClohjGcOfdkeg.Tgb29ux.AU/GiocbqFVkos9/X8IHWl.g2FILKVe', NULL, '2024-04-23 18:45:33', '2024-04-23 18:45:33'),
(2, 'shadil', 'shadil@gmail.com', NULL, '$2y$12$Hy02k3YGkfDUnKcOjy1oeu9dGgMatP17zdODBGH5Q9IOF7mLMcg42', NULL, '2024-04-24 00:52:12', '2024-04-24 00:52:12'),
(3, 'jasna', 'jasna@gmail.com', NULL, '$2y$12$nHMfhYz4dz8itjgzxiYgUezQ.EOIVc3dtToEElzvCQM1mm26p8vGm', NULL, '2024-04-24 01:17:21', '2024-04-24 01:17:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
