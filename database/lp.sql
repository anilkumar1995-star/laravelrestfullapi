-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 09, 2021 at 04:06 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lp`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `author`, `title`, `isbn`, `release_date`, `created_at`, `updated_at`) VALUES
(3, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-21', '2021-04-08 11:24:22', '2021-04-08 11:24:22'),
(4, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:06:42', '2021-04-08 12:06:42'),
(5, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:06:45', '2021-04-08 12:06:45'),
(6, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:06:46', '2021-04-08 12:06:46'),
(7, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:06:47', '2021-04-08 12:06:47'),
(8, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:06:49', '2021-04-08 12:06:49'),
(9, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:06:50', '2021-04-08 12:06:50'),
(10, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:06:51', '2021-04-08 12:06:51'),
(11, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:06:52', '2021-04-08 12:06:52'),
(12, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:06:54', '2021-04-08 12:06:54'),
(13, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:07:14', '2021-04-08 12:07:14'),
(14, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:07:16', '2021-04-08 12:07:16'),
(15, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:07:17', '2021-04-08 12:07:17'),
(16, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:07:18', '2021-04-08 12:07:18'),
(17, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:07:19', '2021-04-08 12:07:19'),
(18, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:07:20', '2021-04-08 12:07:20'),
(19, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:07:21', '2021-04-08 12:07:21'),
(20, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:07:23', '2021-04-08 12:07:23'),
(21, 'Anil', 'new ttile', 'dfdfgdfg333', '2021-04-22', '2021-04-08 12:07:24', '2021-04-08 12:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2021_04_08_153355_create_books_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ghhhghg', 'jhgh@gmail.com', '2021-03-17 18:35:29', '35678', NULL, '2021-03-17 18:35:29', NULL),
(2, 'hytytty', 'hfhg@gmail.com', '2021-03-17 18:35:29', 'jjhjhhj', 'jhghjg', '2021-03-17 18:35:29', NULL),
(3, 'kjguyyuu', 'jhghjjj@gmail.com', '2021-03-17 18:35:29', '35678', NULL, '2021-03-17 18:35:29', NULL),
(4, 'kjguyyuujjj', 'jhghjjhhj@gmail.com', '2021-03-17 18:35:29', '35678', NULL, '2021-03-17 18:35:29', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
