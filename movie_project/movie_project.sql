-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 28, 2021 at 03:37 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Movie', 1, '2021-01-15 06:29:02', '2021-01-15 06:29:02'),
(2, 'Series', 1, '2021-01-15 06:29:07', '2021-01-15 06:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_advertisements`
--

CREATE TABLE `customer_advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `advertisement_id` bigint(20) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `days` int(11) NOT NULL,
  `income` int(11) NOT NULL,
  `ads_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `episode_id` bigint(20) NOT NULL DEFAULT 0,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `server_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`id`, `post_id`, `episode_id`, `link`, `file_size`, `server_id`, `created_at`, `updated_at`) VALUES
(7, 5, 0, 'https://www.thecmpage.com/four-banner-three', '500MB', 2, '2021-01-26 17:23:09', '2021-01-26 17:23:09'),
(8, 5, 0, 'https://www.thecmpage.com/four-banner-two', '500MB', 1, '2021-01-26 17:23:39', '2021-01-26 17:23:39'),
(9, 6, 0, 'https://www.thecmpage.com/five-banner-one', '999MB', 2, '2021-01-26 17:44:24', '2021-01-26 17:44:24'),
(10, 6, 0, 'https://www.thecmpage.com/five-banner-one', '999MB', 1, '2021-01-26 17:44:32', '2021-01-26 17:44:32'),
(11, 7, 0, 'https://www.thecmpage.com/?r=aHR0cHM6Ly91c2Vyc2RyaXZlLmNvbS9rdmc3Y2cxMG5lZm4uaHRtbA==', '1.5GB', 2, '2021-01-26 17:53:11', '2021-01-26 17:53:11'),
(12, 7, 0, 'https://www.thecmpage.com/?r=aHR0cHM6Ly9tZWdhdXAubmV0L1YyNm0vJTdCQ00lN0RUYWtpbmcuYS5TaG90LmF0LkxvdmUuMjAyMS4xMDgwcC5IRFRWLngyNjQubXA0', '2GB', 1, '2021-01-26 17:53:50', '2021-01-26 17:53:50'),
(13, 8, 0, 'https://www.thecmpage.com/four-banner-two', '1.6GB', 1, '2021-01-26 17:54:25', '2021-01-26 17:54:25'),
(14, 8, 0, 'https://www.thecmpage.com/four-banner-three', '1.6GB', 2, '2021-01-26 17:54:57', '2021-01-26 17:54:57'),
(17, 11, 0, 'https://megaup.net/1zs76/Fernando_Torres.The_Last_Symbol.2020.WEB-DL.720P.PP.mp4', '926 MB', 3, '2021-01-26 18:00:03', '2021-01-26 18:00:03'),
(19, 11, 0, 'https://megaup.net/1zs76/Fernando_Torres.The_Last_Symbol.2020.WEB-DL.720P.PP.mp4', '926 MB', 2, '2021-01-26 18:00:37', '2021-01-26 18:00:37'),
(20, 13, 0, 'https://www.thecmpage.com/four-banner-three', '1.6GB', 3, '2021-01-26 18:00:53', '2021-01-26 18:00:53'),
(21, 13, 0, 'https://www.thecmpage.com/four-banner-two', '850MB', 1, '2021-01-26 18:01:31', '2021-01-26 18:01:31'),
(22, 15, 0, 'https://yoteshinportal.cc/drive/cm-the-end-of-the-storm-2020-1080-p-web-rip-x-265-rarbg-mp-4', '1.5GB', 2, '2021-01-26 18:03:29', '2021-01-26 18:03:29'),
(24, 17, 0, 'https://www.thecmpage.com/?r=aHR0cHM6Ly91c2Vyc2RyaXZlLmNvbS83aGNjaTI0cDF2dWwuaHRtbA==', '1.3GB', 3, '2021-01-26 18:04:49', '2021-01-26 18:04:49'),
(25, 16, 0, 'https://megaup.net/Sthy/One_Last_Thing_[2018]_(MM_Sub).mp4', '656.37 MB', 3, '2021-01-26 18:05:05', '2021-01-26 18:05:05'),
(26, 17, 0, 'https://www.thecmpage.com/?r=aHR0cHM6Ly91c2Vyc2RyaXZlLmNvbS83aGNjaTI0cDF2dWwuaHRtbA==', '1.3GB', 2, '2021-01-26 18:05:11', '2021-01-26 18:05:11'),
(27, 16, 0, 'https://megaup.net/Sthy/One_Last_Thing_[2018]_(MM_Sub).mp4', '656.37 MB', 1, '2021-01-26 18:05:26', '2021-01-26 18:05:26'),
(28, 21, 0, 'https://www.thecmpage.com/four-banner-three', '999MB', 3, '2021-01-26 18:06:04', '2021-01-26 18:06:04'),
(29, 19, 0, 'https://usersdrive.com/3big7svfhd5o.html', '1.5GB', 3, '2021-01-26 18:06:29', '2021-01-26 18:06:29'),
(30, 21, 0, 'https://www.thecmpage.com/five-banner-one', '2.01GB', 1, '2021-01-26 18:06:31', '2021-01-26 18:06:31'),
(31, 19, 0, 'https://yoteshinportal.cc/drive/dwelling-in-the-fuchun-mountains-2019-720-p-mp-4', '1.5GB', 2, '2021-01-26 18:06:52', '2021-01-26 18:06:52'),
(32, 19, 0, 'https://megaup.net/2X25g/Dwelling_In_The_Fuchun_Mountains_(2019)_720p.mp4', '1.5GB', 1, '2021-01-26 18:07:32', '2021-01-26 18:07:32'),
(34, 24, 0, 'https://www.thecmpage.com/?r=aHR0cHM6Ly9tZWdhLm56L2ZpbGUvWVJOeHpDYVEjU1dSMEFMOHp5UmQ0QkdaQ29IZUdNWWUtRFBMMUtoMUJhdFJnN2NHdUF5aw==', '1GB', 3, '2021-01-26 18:08:55', '2021-01-26 18:08:55'),
(35, 24, 0, 'https://www.thecmpage.com/?r=aHR0cHM6Ly9tZWdhdXAubmV0L1YxdDQvTG9ja2VkLkRvd24uMjAyMS4xMDgwcC5XRUJSaXAuNS4xQ0hbQ01dLm1wNA==', '2GB', 3, '2021-01-26 18:09:17', '2021-01-26 18:09:17'),
(36, 25, 0, 'https://www.thecmpage.com/four-banner-one-onehttps://www.thecmpage.com/four-banner-one-one', '1.4GB', 3, '2021-01-26 18:10:31', '2021-01-26 18:10:31'),
(37, 25, 0, 'https://www.thecmpage.com/four-banner-three', '850MB', 1, '2021-01-26 18:10:49', '2021-01-26 18:10:49'),
(38, 30, 0, 'https://www.thecmpage.com/?r=aHR0cHM6Ly9tZWdhdXAubmV0L1VaZ2UvVGhlX1Bvd2VyLjIwMjEuV0VCLURMLjcyMFAubWt2', '2GB', 3, '2021-01-26 18:12:58', '2021-01-26 18:12:58'),
(40, 30, 0, 'https://www.thecmpage.com/?r=aHR0cHM6Ly95b3Rlc2hpbnBvcnRhbC5jYy90aGUtcG93ZXItMjAyMS13ZWItZGwtNzIwLXAtbWt2', '1.3GB', 2, '2021-01-26 18:13:11', '2021-01-26 18:13:11'),
(43, 26, 0, 'https://www.thecmpage.com/four-banner-two', '2.01GB', 2, '2021-01-26 18:14:35', '2021-01-26 18:14:35'),
(44, 32, 0, 'https://www.thecmpage.com/four-banner-three', '850MB', 1, '2021-01-26 18:14:58', '2021-01-26 18:14:58'),
(45, 32, 0, 'https://www.thecmpage.com/four-banner-three', '2.01GB', 1, '2021-01-26 18:15:22', '2021-01-26 18:15:22'),
(46, 26, 0, 'https://www.thecmpage.com/four-banner-one', '1.01GB', 2, '2021-01-26 18:15:24', '2021-01-26 18:15:24'),
(47, 27, 0, 'https://megaup.net/1y120/Elephant.2020.BLU-RAY.720P.PP.mp4', '800MB', 2, '2021-01-26 18:15:46', '2021-01-26 18:15:46'),
(48, 34, 0, 'https://www.thecmpage.com/?r=aHR0cHM6Ly9tZWdhdXAubmV0LzFBV3RVL091dHNpZGUudGhlLldpcmUuMjAyMS4xMDgwcC5XRUIuSDI2NFtDTV0ubXA0', '1.5GB', 3, '2021-01-26 18:16:10', '2021-01-26 18:16:10'),
(49, 34, 0, 'https://www.thecmpage.com/?r=aHR0cHM6Ly9tZWdhLm56L2ZpbGUva0paamtBQ1EjR0FnZ01wMVZEYmhZY0g0Uk1xTmYtck90TjgyV0RjaDFvOS1XNERKTVNQVQ==', '1.5GB', 3, '2021-01-26 18:16:19', '2021-01-26 18:16:19'),
(50, 34, 0, 'https://www.thecmpage.com/?r=aHR0cHM6Ly91c2Vyc2RyaXZlLmNvbS83aGNjaTI0cDF2dWwuaHRtbA==', '1.5GB', 2, '2021-01-26 18:16:35', '2021-01-26 18:16:35'),
(51, 31, 0, 'https://www.thecmpage.com/four-banner-one-one', '4.1GB', 3, '2021-01-26 18:17:14', '2021-01-26 18:17:14'),
(52, 33, 0, 'https://shwedrive.xyz/file/1150844033', '1 GB', 2, '2021-01-26 18:17:42', '2021-01-26 18:17:42'),
(53, 33, 0, 'https://shwedrive.xyz/file/1150844033', '1 GB', 3, '2021-01-26 18:18:00', '2021-01-26 18:18:00'),
(54, 33, 0, 'https://shwedrive.xyz/file/1150844033', '1 GB', 1, '2021-01-26 18:18:10', '2021-01-26 18:18:10'),
(55, 37, 0, 'https://www.thecmpage.com/?r=aHR0cHM6Ly91c2Vyc2RyaXZlLmNvbS83aGNjaTI0cDF2dWwuaHRtbA==', '1.5GB', 3, '2021-01-26 18:19:41', '2021-01-26 18:19:41'),
(56, 36, 0, 'https://megaup.net/U9w6/%7BCM%7DDreamkatcher.2020.1080p.WEBRip..mp4', '915 MB', 3, '2021-01-26 18:19:44', '2021-01-26 18:19:44'),
(57, 36, 0, 'https://megaup.net/U9w6/%7BCM%7DDreamkatcher.2020.1080p.WEBRip..mp4', '915 MB', 2, '2021-01-26 18:19:57', '2021-01-26 18:19:57'),
(58, 37, 0, 'https://www.thecmpage.com/?r=aHR0cHM6Ly93d3cuY212aXBtZW1iZXJzLmNvbS9jaGVjay1tb3ZpZXMvdHJhdmlzLXNjb3R0LWxvb2stbW9tLWktY2FuLWZseS0yMDE5', '2GB', 3, '2021-01-26 18:20:00', '2021-01-26 18:20:00'),
(59, 39, 0, 'https://yoteshinportal.cc/drive/re-born-2016-mm-sub-mp-4', '788MB', 3, '2021-01-26 18:20:28', '2021-01-26 18:20:28'),
(60, 37, 0, 'https://www.thecmpage.com/?r=aHR0cHM6Ly92aXAueW90ZXNoaW5wb3J0YWwuY2MvT0JDR3czX1N2', '800MB', 2, '2021-01-26 18:20:34', '2021-01-26 18:20:34'),
(61, 39, 0, 'https://megaup.net/2fBre/Re_Born_[2016]_(MM_Sub).mp4', '788MB', 2, '2021-01-26 18:20:52', '2021-01-26 18:20:52'),
(62, 39, 0, 'https://usersdrive.com/fby6tjfd3w2n.html', '788MB', 1, '2021-01-26 18:21:15', '2021-01-26 18:21:15'),
(63, 40, 0, 'https://shwedrive.xyz/file/1150844033', '2 GB', 3, '2021-01-26 18:21:49', '2021-01-26 18:21:49'),
(64, 40, 0, 'https://shwedrive.xyz/file/1150844033', '2 GB', 2, '2021-01-26 18:21:56', '2021-01-26 18:21:56'),
(65, 40, 0, 'https://shwedrive.xyz/file/1150844033', '2 GB', 1, '2021-01-26 18:22:03', '2021-01-26 18:22:03'),
(66, 38, 0, 'https://megaup.net/1zs76/Fernando_Torres.The_Last_Symbol.2020.WEB-DL.720P.PP.mp4', '800MB', 3, '2021-01-26 18:22:41', '2021-01-26 18:22:41'),
(67, 42, 8, 'https://yoteshinportal.cc/drive/the-big-bang-theory-s-01-e-01-pilot-1080-p-amzn-web-d-cm-mp-4bers.com/check-series/the-big-bang-theory', '1GB', 2, '2021-01-26 18:26:07', '2021-01-26 18:26:07'),
(69, 45, 0, 'https://www.cmvipmembers.com/check-movies/moving-on-2019', '1.46GB', 3, '2021-01-26 18:26:36', '2021-01-26 18:26:36'),
(70, 43, 0, 'https://megaup.net/Tkuv/Ride.Your.Dream.2020.SPANISH.1080p_%7BCM%7D.mp4', '1.5GB', 3, '2021-01-26 18:26:38', '2021-01-26 18:26:38'),
(71, 44, 0, 'https://mega.nz/file/4ccFWQoR#cQ6rDZGuvTSsIQss4qpFUl5l9R-6mrOc4X0GY6FFajY', '627.5 MB', 3, '2021-01-26 18:26:43', '2021-01-26 18:26:43'),
(72, 44, 0, 'https://mega.nz/file/4ccFWQoR#cQ6rDZGuvTSsIQss4qpFUl5l9R-6mrOc4X0GY6FFajY', '627.5 MB', 2, '2021-01-26 18:27:02', '2021-01-26 18:27:02'),
(73, 45, 0, 'https://yoteshinportal.cc/drive/moving-on-2020-1080-mp-4', '1.46GB', 2, '2021-01-26 18:27:05', '2021-01-26 18:27:05'),
(74, 45, 0, 'https://megaup.net/1B3x3/Moving_On_(2020)_720.mp4', '975MB', 1, '2021-01-26 18:28:10', '2021-01-26 18:28:10'),
(75, 47, 0, 'https://www.thecmpage.com/four-banner-two', '2.01GB', 2, '2021-01-26 18:29:12', '2021-01-26 18:29:12'),
(76, 46, 0, 'https://shwedrive.xyz/file/1150844033', '1 GB', 3, '2021-01-26 18:29:40', '2021-01-26 18:29:40'),
(77, 47, 0, 'https://www.thecmpage.com/four-banner-one', '1.01GB', 2, '2021-01-26 18:29:42', '2021-01-26 18:29:42'),
(78, 46, 0, 'https://shwedrive.xyz/file/1150844033', '1 GB', 2, '2021-01-26 18:29:48', '2021-01-26 18:29:48'),
(79, 46, 0, 'https://shwedrive.xyz/file/1150844033', '1 GB', 1, '2021-01-26 18:29:54', '2021-01-26 18:29:54'),
(80, 48, 0, 'https://yoteshinportal.cc/drive/we-are-your-friends-2015-mm-sub-mp-4-1', '850MB', 2, '2021-01-26 18:30:58', '2021-01-26 18:30:58'),
(81, 51, 0, 'https://megaup.net/2dvcy/Low.Season.2020.72080p_%7BCM%7D_.mp4', '1.26 GB', 3, '2021-01-26 18:34:25', '2021-01-26 18:34:25'),
(83, 51, 0, 'https://megaup.net/2dvcy/Low.Season.2020.72080p_%7BCM%7D_.mp4', '1.26 GB', 2, '2021-01-26 18:34:36', '2021-01-26 18:34:36'),
(84, 53, 0, 'https://yoteshinportal.cc/drive/the-prestige-2006-mm-sub-mp-4-1', '1GB', 2, '2021-01-26 18:35:53', '2021-01-26 18:35:53'),
(86, 55, 0, 'https://mega.nz/file/j7ZDlSyS#mK0iAUbXu5AY6JTBUHvp4x0YZsdAypt69QQbeXpTvvo', '790.9 MB', 3, '2021-01-26 18:38:14', '2021-01-26 18:38:14'),
(87, 55, 0, 'https://mega.nz/file/j7ZDlSyS#mK0iAUbXu5AY6JTBUHvp4x0YZsdAypt69QQbeXpTvvo', '790.9 MB', 2, '2021-01-26 18:38:56', '2021-01-26 18:38:56'),
(88, 57, 0, 'https://shwedrive.xyz/file/1150844033', '1 GB', 3, '2021-01-26 18:39:58', '2021-01-26 18:39:58'),
(89, 57, 0, 'https://shwedrive.xyz/file/1150844033', '1 GB', 2, '2021-01-26 18:40:06', '2021-01-26 18:40:06'),
(90, 57, 0, 'https://shwedrive.xyz/file/1150844033', '1 GB', 1, '2021-01-26 18:40:17', '2021-01-26 18:40:17'),
(91, 58, 0, 'https://yoteshinportal.cc/drive/the-wolf-of-wall-street-2013-mm-sub-mp-4', '1.2GB', 2, '2021-01-26 18:41:25', '2021-01-26 18:41:25'),
(92, 59, 12, 'https://shwedrive.xyz/file/1150844033', '1 GB', 3, '2021-01-26 18:43:21', '2021-01-26 18:43:21'),
(93, 59, 12, 'https://shwedrive.xyz/file/1150844033', '1 GB', 2, '2021-01-26 18:43:30', '2021-01-26 18:43:30'),
(94, 59, 12, 'https://shwedrive.xyz/file/1150844033', '1 GB', 1, '2021-01-26 18:43:40', '2021-01-26 18:43:40'),
(95, 60, 0, 'https://www.thecmpage.com/four-banner-one-one', '1Gb', 3, '2021-01-26 18:43:46', '2021-01-26 18:43:46'),
(96, 59, 13, 'https://shwedrive.xyz/file/1150844033', '1 GB', 3, '2021-01-26 18:43:56', '2021-01-26 18:43:56'),
(97, 59, 13, 'https://shwedrive.xyz/file/1150844033', '1 GB', 2, '2021-01-26 18:44:05', '2021-01-26 18:44:05'),
(98, 59, 13, 'https://shwedrive.xyz/file/1150844033', '1 GB', 1, '2021-01-26 18:44:25', '2021-01-26 18:44:25'),
(99, 59, 14, 'https://shwedrive.xyz/file/1150844033', '1 GB', 3, '2021-01-26 18:44:35', '2021-01-26 18:44:35'),
(100, 59, 14, 'https://shwedrive.xyz/file/1150844033', '1 GB', 2, '2021-01-26 18:44:41', '2021-01-26 18:44:41'),
(101, 59, 14, 'https://shwedrive.xyz/file/1150844033', '1 GB', 1, '2021-01-26 18:44:48', '2021-01-26 18:44:48'),
(102, 62, 0, 'https://www.thecmpage.com/five-banner-one', '1.2GB', 3, '2021-01-27 18:40:46', '2021-01-27 18:40:46'),
(103, 63, 15, 'https://www.mediafire.com/', '1GB', 1, '2021-01-27 18:48:55', '2021-01-27 18:48:55'),
(104, 63, 15, 'https://drive.google.com/', '1GB', 2, '2021-01-27 18:49:06', '2021-01-27 18:49:06'),
(105, 63, 16, 'https://www.thecmpage.com/four-banner-three', '1GB', 3, '2021-01-27 18:49:18', '2021-01-27 18:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `number` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`id`, `post_id`, `number`, `title`, `created_at`, `updated_at`) VALUES
(8, 42, 1, 'Pilot', '2021-01-26 18:24:43', '2021-01-26 18:24:43'),
(12, 59, 1, 'Episode', '2021-01-26 18:42:53', '2021-01-26 18:42:53'),
(13, 59, 2, 'Episode', '2021-01-26 18:43:00', '2021-01-26 18:43:00'),
(14, 59, 3, 'Episode', '2021-01-26 18:43:06', '2021-01-26 18:43:06'),
(15, 63, 1, 'Fate 1', '2021-01-27 18:48:15', '2021-01-27 18:48:15'),
(16, 63, 2, 'Fate 2', '2021-01-27 18:48:20', '2021-01-27 18:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `title`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Action', 1, '2021-01-15 06:29:26', '2021-01-15 06:29:26'),
(2, 'Adventure', 1, '2021-01-15 06:30:21', '2021-01-15 06:30:21'),
(3, 'Aisa', 1, '2021-01-15 06:30:39', '2021-01-15 06:30:39'),
(4, 'Biography', 1, '2021-01-15 06:30:45', '2021-01-15 06:30:45'),
(7, 'Comedy', 11, '2021-01-26 17:52:13', '2021-01-26 17:52:13'),
(8, 'Drama', 11, '2021-01-26 17:52:27', '2021-01-26 17:52:27'),
(9, 'Thriller', 11, '2021-01-26 18:13:26', '2021-01-26 18:13:26'),
(10, 'Horror', 11, '2021-01-26 18:13:33', '2021-01-26 18:13:33'),
(11, 'Documentary', 5, '2021-01-26 18:29:30', '2021-01-26 18:29:30');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_01_14_234931_create_categories_table', 1),
(4, '2021_01_15_003342_create_genres_table', 1),
(5, '2021_01_15_003355_create_qualities_table', 1),
(7, '2021_01_15_005130_create_post_genres_table', 1),
(8, '2021_01_15_005154_create_episodes_table', 1),
(9, '2021_01_15_005209_create_servers_table', 1),
(11, '2021_01_15_005542_create_visitors_table', 1),
(12, '2021_01_15_005641_create_customers_table', 1),
(13, '2021_01_15_005715_create_advertisements_table', 1),
(14, '2021_01_15_005738_create_customer_advertisements_table', 1),
(17, '2021_01_15_003415_create_posts_table', 2),
(18, '2021_01_21_110143_create_photos_table', 3),
(19, '2021_01_15_005223_create_downloads_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `post_id`, `location`, `created_at`, `updated_at`) VALUES
(18, 5, '6010098b93884_photo.jpg', '2021-01-26 17:22:35', '2021-01-26 17:22:35'),
(19, 5, '6010098b94c78_photo.jpg', '2021-01-26 17:22:35', '2021-01-26 17:22:35'),
(20, 5, '6010098b95f6a_photo.jpg', '2021-01-26 17:22:35', '2021-01-26 17:22:35'),
(21, 6, '60100e8b42d40_photo.jpg', '2021-01-26 17:43:55', '2021-01-26 17:43:55'),
(22, 6, '60100e8b43f3f_photo.jpeg', '2021-01-26 17:43:55', '2021-01-26 17:43:55'),
(23, 7, '6010107861183_photo.jpg', '2021-01-26 17:52:08', '2021-01-26 17:52:08'),
(24, 7, '601010786275a_photo.jpg', '2021-01-26 17:52:08', '2021-01-26 17:52:08'),
(25, 7, '6010107862f0b_photo.jpg', '2021-01-26 17:52:08', '2021-01-26 17:52:08'),
(26, 8, '601010ddafbe0_photo.jpg', '2021-01-26 17:53:49', '2021-01-26 17:53:49'),
(27, 8, '601010ddb1419_photo.jpg', '2021-01-26 17:53:49', '2021-01-26 17:53:49'),
(31, 11, '60101227beae3_photo.jpg', '2021-01-26 17:59:19', '2021-01-26 17:59:19'),
(32, 11, '60101227c030b_photo.jpg', '2021-01-26 17:59:19', '2021-01-26 17:59:19'),
(33, 13, '601012761bd11_photo.jpg', '2021-01-26 18:00:38', '2021-01-26 18:00:38'),
(34, 13, '601012761ca28_photo.jpg', '2021-01-26 18:00:38', '2021-01-26 18:00:38'),
(35, 13, '601012761deaf_photo.jpg', '2021-01-26 18:00:38', '2021-01-26 18:00:38'),
(36, 13, '601012761e5d9_photo.jpg', '2021-01-26 18:00:38', '2021-01-26 18:00:38'),
(37, 12, '60101280b8530_photo.png', '2021-01-26 18:00:48', '2021-01-26 18:00:48'),
(38, 12, '60101280bae28_photo.jpg', '2021-01-26 18:00:48', '2021-01-26 18:00:48'),
(39, 15, '601012d1cb638_photo.jpg', '2021-01-26 18:02:09', '2021-01-26 18:02:09'),
(40, 15, '601012d1cfbee_photo.jpg', '2021-01-26 18:02:09', '2021-01-26 18:02:09'),
(41, 16, '6010135c4ebf0_photo.jpg', '2021-01-26 18:04:28', '2021-01-26 18:04:28'),
(42, 16, '6010135c4fb6f_photo.jpg', '2021-01-26 18:04:28', '2021-01-26 18:04:28'),
(43, 16, '6010135c50702_photo.jpg', '2021-01-26 18:04:28', '2021-01-26 18:04:28'),
(44, 16, '6010135c5124e_photo.jpg', '2021-01-26 18:04:28', '2021-01-26 18:04:28'),
(45, 17, '6010136171b04_photo.jpg', '2021-01-26 18:04:33', '2021-01-26 18:04:33'),
(46, 17, '601013617457a_photo.jpg', '2021-01-26 18:04:33', '2021-01-26 18:04:33'),
(47, 17, '6010136175d77_photo.jpg', '2021-01-26 18:04:33', '2021-01-26 18:04:33'),
(48, 17, '60101361776b7_photo.jpg', '2021-01-26 18:04:33', '2021-01-26 18:04:33'),
(50, 19, '601013907a89b_photo.jpg', '2021-01-26 18:05:20', '2021-01-26 18:05:20'),
(51, 19, '601013907b4a8_photo.jpg', '2021-01-26 18:05:20', '2021-01-26 18:05:20'),
(52, 19, '601013907cb56_photo.jpg', '2021-01-26 18:05:20', '2021-01-26 18:05:20'),
(53, 21, '601013a067438_photo.jpg', '2021-01-26 18:05:36', '2021-01-26 18:05:36'),
(54, 21, '601013a068f9b_photo.jpg', '2021-01-26 18:05:36', '2021-01-26 18:05:36'),
(55, 21, '601013a06c92a_photo.jpg', '2021-01-26 18:05:36', '2021-01-26 18:05:36'),
(57, 24, '6010145b5d3da_photo.jpg', '2021-01-26 18:08:43', '2021-01-26 18:08:43'),
(58, 24, '6010145b5f110_photo.jpg', '2021-01-26 18:08:43', '2021-01-26 18:08:43'),
(59, 24, '6010145b605eb_photo.jpg', '2021-01-26 18:08:43', '2021-01-26 18:08:43'),
(60, 24, '6010145b61ac8_photo.jpg', '2021-01-26 18:08:43', '2021-01-26 18:08:43'),
(61, 25, '601014b1aebc7_photo.jpg', '2021-01-26 18:10:09', '2021-01-26 18:10:09'),
(62, 25, '601014b1b0a80_photo.jpg', '2021-01-26 18:10:09', '2021-01-26 18:10:09'),
(65, 30, '60101551a1a5f_photo.jpg', '2021-01-26 18:12:49', '2021-01-26 18:12:49'),
(66, 30, '60101551a3ffa_photo.jpg', '2021-01-26 18:12:49', '2021-01-26 18:12:49'),
(67, 27, '60101573c660f_photo.jpg', '2021-01-26 18:13:23', '2021-01-26 18:13:23'),
(68, 27, '60101573c72c0_photo.jpg', '2021-01-26 18:13:23', '2021-01-26 18:13:23'),
(69, 26, '6010158570c64_photo.jpg', '2021-01-26 18:13:41', '2021-01-26 18:13:41'),
(70, 26, '60101585750ee_photo.jpg', '2021-01-26 18:13:41', '2021-01-26 18:13:41'),
(71, 32, '601015ba32792_photo.jpg', '2021-01-26 18:14:34', '2021-01-26 18:14:34'),
(72, 32, '601015ba36743_photo.jpg', '2021-01-26 18:14:34', '2021-01-26 18:14:34'),
(73, 32, '601015ba37a98_photo.jpg', '2021-01-26 18:14:34', '2021-01-26 18:14:34'),
(74, 34, '6010160955b4e_photo.jpg', '2021-01-26 18:15:53', '2021-01-26 18:15:53'),
(75, 34, '6010160957c9c_photo.jpg', '2021-01-26 18:15:53', '2021-01-26 18:15:53'),
(76, 34, '6010160958e32_photo.jpg', '2021-01-26 18:15:53', '2021-01-26 18:15:53'),
(77, 34, '60101609599f2_photo.jpg', '2021-01-26 18:15:53', '2021-01-26 18:15:53'),
(78, 34, '601016095caae_photo.jpg', '2021-01-26 18:15:53', '2021-01-26 18:15:53'),
(79, 33, '60101609b3d27_photo.jpg', '2021-01-26 18:15:53', '2021-01-26 18:15:53'),
(80, 33, '60101609b4bcd_photo.jpg', '2021-01-26 18:15:53', '2021-01-26 18:15:53'),
(81, 33, '60101609b68c6_photo.jpg', '2021-01-26 18:15:53', '2021-01-26 18:15:53'),
(82, 33, '60101609b831f_photo.jpg', '2021-01-26 18:15:53', '2021-01-26 18:15:53'),
(83, 33, '60101609bab8e_photo.jpg', '2021-01-26 18:15:53', '2021-01-26 18:15:53'),
(84, 33, '60101609bd7f6_photo.jpg', '2021-01-26 18:15:53', '2021-01-26 18:15:53'),
(85, 31, '60101611c56ce_photo.jpg', '2021-01-26 18:16:01', '2021-01-26 18:16:01'),
(86, 31, '60101611c788e_photo.jfif', '2021-01-26 18:16:01', '2021-01-26 18:16:01'),
(87, 31, '60101611cc40d_photo.jfif', '2021-01-26 18:16:01', '2021-01-26 18:16:01'),
(88, 36, '601016e02bb3a_photo.jpg', '2021-01-26 18:19:28', '2021-01-26 18:19:28'),
(89, 36, '601016e02ed2a_photo.jpg', '2021-01-26 18:19:28', '2021-01-26 18:19:28'),
(90, 36, '601016e02f952_photo.jpg', '2021-01-26 18:19:28', '2021-01-26 18:19:28'),
(91, 36, '601016e03034c_photo.jpg', '2021-01-26 18:19:28', '2021-01-26 18:19:28'),
(92, 37, '601016e1d8120_photo.jpg', '2021-01-26 18:19:29', '2021-01-26 18:19:29'),
(93, 37, '601016e1da42a_photo.jpg', '2021-01-26 18:19:29', '2021-01-26 18:19:29'),
(94, 39, '601017017c28f_photo.jpg', '2021-01-26 18:20:01', '2021-01-26 18:20:01'),
(95, 39, '601017017d33d_photo.jpg', '2021-01-26 18:20:01', '2021-01-26 18:20:01'),
(96, 39, '601017017fa5a_photo.jpg', '2021-01-26 18:20:01', '2021-01-26 18:20:01'),
(97, 40, '601017626d7cd_photo.jpg', '2021-01-26 18:21:38', '2021-01-26 18:21:38'),
(98, 40, '601017626ea06_photo.jpg', '2021-01-26 18:21:38', '2021-01-26 18:21:38'),
(99, 40, '601017626f1de_photo.jpg', '2021-01-26 18:21:38', '2021-01-26 18:21:38'),
(100, 40, '601017626f925_photo.jpg', '2021-01-26 18:21:38', '2021-01-26 18:21:38'),
(101, 40, '6010176270153_photo.jpg', '2021-01-26 18:21:38', '2021-01-26 18:21:38'),
(102, 40, '6010176271c98_photo.jpg', '2021-01-26 18:21:38', '2021-01-26 18:21:38'),
(103, 38, '60101786f119c_photo.jpg', '2021-01-26 18:22:14', '2021-01-26 18:22:14'),
(104, 38, '60101786f1ebf_photo.jpg', '2021-01-26 18:22:14', '2021-01-26 18:22:14'),
(109, 42, '601017e484080_photo.jpg', '2021-01-26 18:23:48', '2021-01-26 18:23:48'),
(110, 42, '601017e484e8f_photo.jpg', '2021-01-26 18:23:48', '2021-01-26 18:23:48'),
(111, 43, '6010186ab4c85_photo.jpg', '2021-01-26 18:26:02', '2021-01-26 18:26:02'),
(112, 44, '6010186bab52b_photo.jpg', '2021-01-26 18:26:03', '2021-01-26 18:26:03'),
(113, 44, '6010186baccf7_photo.jpg', '2021-01-26 18:26:03', '2021-01-26 18:26:03'),
(114, 44, '6010186bae57c_photo.jpg', '2021-01-26 18:26:03', '2021-01-26 18:26:03'),
(115, 44, '6010186baf0e7_photo.jpg', '2021-01-26 18:26:03', '2021-01-26 18:26:03'),
(116, 45, '6010186e8cef6_photo.jpg', '2021-01-26 18:26:06', '2021-01-26 18:26:06'),
(117, 45, '6010186e8dd3c_photo.jpg', '2021-01-26 18:26:06', '2021-01-26 18:26:06'),
(118, 45, '6010186e8e671_photo.jpg', '2021-01-26 18:26:06', '2021-01-26 18:26:06'),
(119, 47, '601018fe7b331_photo.jpg', '2021-01-26 18:28:30', '2021-01-26 18:28:30'),
(120, 46, '601019014e584_photo.jpg', '2021-01-26 18:28:33', '2021-01-26 18:28:33'),
(121, 46, '601019014f6ad_photo.jpg', '2021-01-26 18:28:33', '2021-01-26 18:28:33'),
(122, 46, '601019014fe5a_photo.jpg', '2021-01-26 18:28:33', '2021-01-26 18:28:33'),
(123, 46, '60101901506c1_photo.jpg', '2021-01-26 18:28:33', '2021-01-26 18:28:33'),
(124, 46, '6010190150e77_photo.jpg', '2021-01-26 18:28:33', '2021-01-26 18:28:33'),
(125, 46, '601019015152b_photo.jpg', '2021-01-26 18:28:33', '2021-01-26 18:28:33'),
(126, 46, '6010190151e50_photo.jpg', '2021-01-26 18:28:33', '2021-01-26 18:28:33'),
(129, 46, '6010193d9dad2_photo.jpg', '2021-01-26 18:29:33', '2021-01-26 18:29:33'),
(130, 46, '6010193d9f372_photo.jpg', '2021-01-26 18:29:33', '2021-01-26 18:29:33'),
(131, 46, '6010193da079f_photo.jpg', '2021-01-26 18:29:33', '2021-01-26 18:29:33'),
(132, 46, '6010193da1629_photo.jpg', '2021-01-26 18:29:33', '2021-01-26 18:29:33'),
(133, 46, '6010193da24fa_photo.jpg', '2021-01-26 18:29:33', '2021-01-26 18:29:33'),
(134, 46, '6010193da3ab0_photo.jpg', '2021-01-26 18:29:33', '2021-01-26 18:29:33'),
(135, 46, '6010193da4338_photo.jpg', '2021-01-26 18:29:33', '2021-01-26 18:29:33'),
(136, 48, '6010197055186_photo.jpg', '2021-01-26 18:30:24', '2021-01-26 18:30:24'),
(141, 51, '60101a5523884_photo.jpg', '2021-01-26 18:34:13', '2021-01-26 18:34:13'),
(142, 51, '60101a552575e_photo.jpg', '2021-01-26 18:34:13', '2021-01-26 18:34:13'),
(143, 51, '60101a5526ce6_photo.jpg', '2021-01-26 18:34:13', '2021-01-26 18:34:13'),
(147, 53, '60101a97b4e1a_photo.jpg', '2021-01-26 18:35:19', '2021-01-26 18:35:19'),
(148, 53, '60101a97b6d00_photo.jpg', '2021-01-26 18:35:19', '2021-01-26 18:35:19'),
(151, 55, '60101b33d9039_photo.jpeg', '2021-01-26 18:37:55', '2021-01-26 18:37:55'),
(152, 55, '60101b33da6b3_photo.jpeg', '2021-01-26 18:37:55', '2021-01-26 18:37:55'),
(153, 55, '60101b33db1fa_photo.jpg', '2021-01-26 18:37:55', '2021-01-26 18:37:55'),
(155, 57, '60101ba3d9bc9_photo.jpg', '2021-01-26 18:39:47', '2021-01-26 18:39:47'),
(156, 57, '60101ba3daad6_photo.jpg', '2021-01-26 18:39:47', '2021-01-26 18:39:47'),
(157, 57, '60101ba3dbedc_photo.jpg', '2021-01-26 18:39:47', '2021-01-26 18:39:47'),
(158, 57, '60101ba3dd298_photo.jpg', '2021-01-26 18:39:47', '2021-01-26 18:39:47'),
(159, 58, '60101bdb20bba_photo.jpg', '2021-01-26 18:40:43', '2021-01-26 18:40:43'),
(160, 58, '60101bdb23470_photo.jpg', '2021-01-26 18:40:43', '2021-01-26 18:40:43'),
(161, 59, '60101c56b1d98_photo.jpg', '2021-01-26 18:42:46', '2021-01-26 18:42:46'),
(162, 59, '60101c56b2eef_photo.jpg', '2021-01-26 18:42:46', '2021-01-26 18:42:46'),
(163, 59, '60101c56b384a_photo.jpg', '2021-01-26 18:42:46', '2021-01-26 18:42:46'),
(164, 59, '60101c56b3f70_photo.jpg', '2021-01-26 18:42:46', '2021-01-26 18:42:46'),
(165, 59, '60101c56b4aee_photo.jpg', '2021-01-26 18:42:46', '2021-01-26 18:42:46'),
(166, 59, '60101c56b5d58_photo.jpg', '2021-01-26 18:42:46', '2021-01-26 18:42:46'),
(167, 59, '60101c56b71fe_photo.jpg', '2021-01-26 18:42:46', '2021-01-26 18:42:46'),
(168, 59, '60101c56b7a29_photo.jpg', '2021-01-26 18:42:46', '2021-01-26 18:42:46'),
(169, 59, '60101c56b8e2f_photo.jpg', '2021-01-26 18:42:46', '2021-01-26 18:42:46'),
(170, 59, '60101c56b9652_photo.jpg', '2021-01-26 18:42:46', '2021-01-26 18:42:46'),
(171, 59, '60101c56ba163_photo.jpg', '2021-01-26 18:42:46', '2021-01-26 18:42:46'),
(172, 59, '60101c56bbaab_photo.jpg', '2021-01-26 18:42:46', '2021-01-26 18:42:46'),
(173, 59, '60101c56bd20d_photo.jpg', '2021-01-26 18:42:46', '2021-01-26 18:42:46'),
(174, 60, '60101c60b7db2_photo.jpg', '2021-01-26 18:42:56', '2021-01-26 18:42:56'),
(175, 62, '60120f06e6725_photo.jpg', '2021-01-27 18:40:30', '2021-01-27 18:40:30'),
(176, 63, '601210c842bc5_photo.png', '2021-01-27 18:48:00', '2021-01-27 18:48:00'),
(177, 63, '601210c8439c7_photo.jpg', '2021-01-27 18:48:00', '2021-01-27 18:48:00'),
(178, 63, '601210c843de9_photo.jpeg', '2021-01-27 18:48:00', '2021-01-27 18:48:00'),
(179, 63, '601210c844122_photo.jpg', '2021-01-27 18:48:00', '2021-01-27 18:48:00'),
(180, 63, '601210c8445b5_photo.jpg', '2021-01-27 18:48:00', '2021-01-27 18:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `director` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actors` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_year` year(4) NOT NULL,
  `trailer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quality_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `is_published` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `original_name`, `description`, `photo`, `director`, `actors`, `slug`, `excerpt`, `release_year`, `trailer`, `quality_id`, `category_id`, `user_id`, `is_published`, `created_at`, `updated_at`) VALUES
(5, 'Lucky Chan-sil (2019)', 'Lucky Chan-sil', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '60100971220b6_movie_photo.jpg', 'Bennett Lasseter', 'Keean Johnson, Madeline Brewer, Rya Kihlstedt', 'Lucky-Chan-sil-2019-', '', 2019, 'https://www.youtube.com/watch?v=xd0sWz85x2Q', 2, 1, 1, '0', '2021-01-26 17:22:09', '2021-01-26 17:22:09'),
(6, 'The Amazing Spider-Man 2 (2014)', 'The Amazing Spider-Man 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '60100e302a108_movie_photo.jpg', 'Marc Webb, Wendy Lee Roberts', 'Andrew Garfield, Campbell Scott, Colm Feore, Dane DeHaan, Embeth Davidtz, Emma Stone, Jamie Foxx, Max Charles, Paul Giamatti, Sally Field', 'The-Amazing-Spider-Man-2-2014-', '', 2014, 'https://youtu.be/DlM2CWNTQ84', 2, 1, 2, '0', '2021-01-26 17:42:24', '2021-01-26 17:42:24'),
(7, 'Taking a Shot at Love (2021)', 'Taking a Shot at Love', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '6010104a327a6_movie_photo.jpg', 'Kevin Fair', 'Alexa PenaVega, Luke Macfarlane, Nolen Dubuc', 'Taking-a-Shot-at-Love-2021-', '', 2021, 'https://youtu.be/-ApvNcVaIlc', 1, 1, 3, '0', '2021-01-26 17:51:22', '2021-01-26 17:51:22'),
(8, 'Space Pirate Captain Harlock (2013)', 'Space Pirate Captain Harlock', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '601010b4ec6d1_movie_photo.jpg', 'Shinji Aramaki', 'Ayano Fukuda, Jessica Boone, Yu Aoi', 'Space-Pirate-Captain-Harlock-2013-', '', 2013, 'https://youtu.be/qw6yApBMH2U', 2, 1, 4, '0', '2021-01-26 17:53:08', '2021-01-26 17:53:08'),
(11, 'Fernando Torres: The Last Symbol(2020)', 'Fernando Torres: The Last Symbol', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '601011ed0d0b7_movie_photo.jpg', 'Laura Alvea', 'Fernando Torres,José Mourinho', 'Fernando-Torres-The-Last-Symbol-2020-', '', 2020, 'https://youtu.be/aB4PWNyZxiM', 2, 1, 11, '0', '2021-01-26 17:58:21', '2021-01-26 17:58:21'),
(12, 'Inception (2010)', 'Inception', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '6010121dbf87c_movie_photo.jpg', 'Christopher Nolan', 'Ellen Page, Joseph Gordon-Levitt, Leonardo DiCaprio, Tom Hardy', 'Inception-2010-', '', 2011, 'https://youtu.be/YoHD9XEInc0', 1, 1, 10, '0', '2021-01-26 17:59:09', '2021-01-26 17:59:09'),
(13, 'Spontaneous (2020)', 'Spontaneous', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '6010124f523bd_movie_photo.jpg', 'Brian Duffield', 'Ayano Fukuda, Jessica Boone, Yu Aoi', 'Spontaneous-2020-', '', 2020, 'https://youtu.be/0dt523AHZWY', 2, 1, 4, '0', '2021-01-26 17:59:59', '2021-01-26 17:59:59'),
(15, 'The End of the Storm (2020)', 'The End of the Storm (2020)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '60101295c7e44_movie_photo.jpg', 'Jurgin Klop', 'Liverpool Players', 'The-End-of-the-Storm-2020-', '', 2020, 'https://youtu.be/FeJA9W_m-FE', 1, 1, 5, '0', '2021-01-26 18:01:09', '2021-01-26 18:01:09'),
(16, 'One Last Thing (2018)', 'One Last Thing', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '6010132912b10_movie_photo.jpg', 'Tim Rouhana', 'Joanne Froggatt, Jurnee Smollett, Wendell Pierce', 'One-Last-Thing-2018-', '', 2018, 'https://youtu.be/QtvWaVOnpts', 2, 1, 11, '0', '2021-01-26 18:03:37', '2021-01-26 18:03:37'),
(17, 'Double Dad (2021)', 'Double Dad', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '6010132e95369_movie_photo.jpg', 'Kyle Rankin', 'Isabel May, Radha Mitchell, Thomas Jane', 'Double-Dad-2021-', '', 2021, 'https://youtu.be/Yjq-LSl98Lg', 2, 1, 3, '0', '2021-01-26 18:03:42', '2021-01-26 18:03:42'),
(19, 'Report error Dwelling in the Fuchun Mountains (2019)', 'Report error Dwelling in the Fuchun Mountains', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '6010137981062_movie_photo.jpg', 'Xiaogang Gu', 'Hongjun Du, Wei Mu, Zhenyang Dong', 'Report-error-Dwelling-in-the-Fuchun-Mountains-2019-', '', 2019, 'https://youtu.be/WYNf5qTZbDU', 2, 1, 9, '0', '2021-01-26 18:04:57', '2021-01-26 18:04:57'),
(21, 'Outside the Wire (2021)', 'Outside the Wire', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '601013943a262_movie_photo.jpg', 'Mikael Håfström', 'Anthony Mackie, Damson Idris, Enzo Cilenti', 'Outside-the-Wire-2021-', '', 2021, 'https://youtu.be/iwYhA5YvdNc', 2, 1, 4, '0', '2021-01-26 18:05:24', '2021-01-26 18:05:24'),
(24, 'Locked Down (2021)', 'Locked Down', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '60101438ec1dd_movie_photo.jpg', 'Doug Liman', 'Alexandra Reimer-Duffy, Anna Behne, Anne Hathaway, Ben Kingsley, Ben Stiller, Bobby Schofield, Chiwetel Ejiofor, Claes Bang, Dulé Hill, Eva Röse, Frances Ruffelle, Jazmyn Simon, Katie Leung, Lucy Boynton, Marek Larwood, Mark Gatiss, Mark Lisseman, Mindy Kaling, Olivia Onyehara, Sam Spruell, Stephen Merchant, Tallulah Greive', 'Locked-Down-2021-', '', 2021, 'https://youtu.be/mepeWor5JPk', 2, 1, 3, '0', '2021-01-26 18:08:08', '2021-01-26 18:08:08'),
(25, 'Redemption Day (2020)', 'Redemption Day', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '6010149225e08_movie_photo.jpg', 'Hicham Hajji', 'Andy Garcia, Brice Bexter, Ernie Hudson, Gary Dourdan, Martin Donovan, Robert Knepper, Samy Naceri, Serinda Swan', 'Redemption-Day-2020-', '', 2020, 'https://youtu.be/TWjsU76dEIE', 2, 1, 4, '0', '2021-01-26 18:09:38', '2021-01-26 18:09:38'),
(26, 'Outside the Wire (2021)', 'Outside the Wire (2021)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '601014b5d6136_movie_photo.jpg', 'Mikael Håfström', 'Anthony Mackie, Damson Idris, Enzo Cilenti', 'Outside-the-Wire-2021-', '', 2021, 'https://www.youtube.com/watch?v=wIcepjPHJD8', 4, 1, 6, '0', '2021-01-26 18:10:13', '2021-01-26 18:10:13'),
(27, 'Elephant(2020)', 'Elephant', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '60101511b709c_movie_photo.jpg', 'Mark Linfield', 'Elisa Toffoli, Meghan Markle', 'Elephant-2020-', '', 2020, 'https://youtu.be/uL1U2zcMZq8', 2, 1, 5, '0', '2021-01-26 18:11:45', '2021-01-26 18:11:45'),
(28, 'The Cleansing Hour (2019)', 'The Cleansing Hour', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '6010151d19671_movie_photo.jpg', 'Damien LeVeck', 'Alix Angelis, Amrou Al-Kadhi, Chris Lew Kum Hoi, Damien LeVeck, Daniel Hoffmann-Gill, Emma Holzer, Giulia Nahmany, Joanna David, Kyle Gallner, Lucas Bond, Matt Raimo, Ryan Guzman, Sam Hale, Shvan Aladdin, Tara Karsian, Tiberiu Harsan', 'The-Cleansing-Hour-2019-', '', 2020, 'https://youtu.be/mUGfkayica4', 2, 1, 9, '0', '2021-01-26 18:11:57', '2021-01-26 18:11:57'),
(30, 'The Power(2021)', 'The Power', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '60101536e623f_movie_photo.jpg', 'John Power', 'Jonn Power', 'The-Power-2021-', '', 2021, 'https://youtu.be/-q1TmdddcY8', 2, 1, 3, '0', '2021-01-26 18:12:22', '2021-01-26 18:12:22'),
(31, 'Dawn of the Planet of the Apes (2014)', 'Dawn of the Planet of the Apes', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '601015a4ec50b_movie_photo.jfif', 'Carolina Jiménez, Jody Blose, Matt Reeves', 'Andy Serkis, Gary Oldman, Jason Clarke, Judy Greer, Karin Konoval, Keri Russell, Kirk Acevedo, Kodi Smit-McPhee, Terry Notary, Toby Kebbell', 'Dawn-of-the-Planet-of-the-Apes-2014-', '', 2014, 'https://youtu.be/DpSaTrW4leg', 2, 1, 14, '0', '2021-01-26 18:14:12', '2021-01-26 18:14:12'),
(32, 'Batman: Soul of the Dragon (2021)', 'Batman: Soul of the Dragon', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '601015ab082e5_movie_photo.jpg', 'Sam Liu', 'Chris Cox, David Giuntoli, Eric Bauza, Erica Luttrell, Grey DeLisle, James Hong, Jamie Chung, Josh Keaton, Kelly Hu, Mark Dacascos, Michael Jai White, Patrick Seitz, Robin Atkin Downes', 'Batman-Soul-of-the-Dragon-2021-', '', 2021, 'https://youtu.be/eHCAgSuLog4', 4, 1, 4, '0', '2021-01-26 18:14:19', '2021-01-26 18:14:19'),
(33, 'AK vs AK (2020)', 'AK vs AK (2020)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '601015b4b4f4a_movie_photo.jpg', 'Zaw Myo Htut', 'Zaw Myo Htut, Poe Mamhe Thar', 'AK-vs-AK-2020-', '', 2020, 'https://www.youtube.com/watch?v=lXZPMb51IQU', 2, 1, 17, '0', '2021-01-26 18:14:28', '2021-01-26 18:14:28'),
(34, 'Outside the Wire (2021)', 'Outside the Wire', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '601015e19ad97_movie_photo.jpg', 'Mikael Håfström', 'Anthony Mackie, Damson Idris, Enzo Cilenti', 'Outside-the-Wire-2021-', '', 2021, 'https://youtu.be/iwYhA5YvdNc', 2, 1, 3, '0', '2021-01-26 18:15:13', '2021-01-26 18:15:13'),
(35, 'Run Hide Fight', 'Run Hide Fight', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '6010160343bca_movie_photo.jpg', 'Kyle Rankin', 'Isabel May, Radha Mitchell, Thomas Jane', 'Run-Hide-Fight', '', 2020, 'https://www.youtube.com/watch?v=iM-Q34ZJhCQ', 2, 1, 8, '0', '2021-01-26 18:15:47', '2021-01-26 18:15:47'),
(36, 'Report error Dreamkatcher (2020)', 'Report error Dreamkatcher', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '60101687bb4c2_movie_photo.jpg', 'Kerry Harris', 'Finlay Wojtak-Hissong, Henry Thomas, Radha Mitchell', 'Report-error-Dreamkatcher-2020-', '', 2020, 'https://youtu.be/GM1RiidjK1U', 2, 1, 11, '0', '2021-01-26 18:17:59', '2021-01-26 18:17:59'),
(37, 'Travis Scott: Look Mom I Can Fly (2019)', 'Travis Scott: Look Mom I Can Fly', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '601016c13eeed_movie_photo.jpg', 'Isaac Yowman, White Trash Tyler', 'Akon, Bella Hadid, Bizzy, David Stromberg, DJ Screw, Don Toliver, Dr. Nate Alibi, Jacques Webster, James Blake, Jimmy Fallon, John Mayer, Johno, Kanye West, Kendall Jenner, Kevin Parker, Kimberly Carroll, Kris Jenner, Kylie Jenner, Mike Dean, Paul Wall, Sarah Romero, Sheck Wes, Sickamore, Stormi Webster, Sylvester Turner, Sylvia Rhone, Travis Scott, Wanda Webster, Zane Lowe', 'Travis-Scott-Look-Mom-I-Can-Fly-2019-', '', 2019, 'https://youtu.be/CpR3rI_rjtg', 3, 1, 3, '0', '2021-01-26 18:18:57', '2021-01-26 18:18:57'),
(38, 'Fernando Torres: The Last Symbol(2020)', 'Fernando Torres: The Last Symbol', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '601016ceb88b9_movie_photo.jpg', 'Michael Nguyen', 'Fernando Torres', 'Fernando-Torres-The-Last-Symbol-2020-', '', 2020, 'https://youtu.be/aB4PWNyZxiM', 2, 1, 5, '0', '2021-01-26 18:19:10', '2021-01-26 18:19:10'),
(39, 'Re: Born(2016)', 'Re: Born', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '601016ee10072_movie_photo.jpg', 'Yûji Shimomura', 'Akio Ohtsuka, Hitomi Hasebe, Issei Ishida, Makoto Sakaguchi, Mariko Shinoda, Masaya Kato, Orson Mochizuki, Tak Sakaguchi, Takumi Saito, Yura Kondo', 'Re-Born-2016-', '', 2016, 'https://youtu.be/uxM6vsMNwXs', 2, 1, 9, '0', '2021-01-26 18:19:42', '2021-01-26 18:19:42'),
(40, 'Woman of the Photographs (2020)', 'Woman of the Photographs', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '601017491d846_movie_photo.jpg', 'Zaw Myo Htut', 'Zaw Myo Htut, Poe Mamhe Thar', 'Woman-of-the-Photographs-2020-', '', 2020, 'https://youtu.be/dvNYnvZoAfw', 2, 1, 17, '0', '2021-01-26 18:21:13', '2021-01-26 18:21:13'),
(42, 'The Big Bang Theory 2007 – 2019', 'The Big Bang Theory', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '601017b88fef6_movie_photo.jpg', 'Mark Cendrowski', 'Jim Parsons Kaley Cuoco Johnny Galecki Kunal Nayyar', 'The-Big-Bang-Theory-2007-2019', '', 2019, 'https://youtu.be/WBb3fojgW0Q', 2, 2, 10, '0', '2021-01-26 18:23:04', '2021-01-26 18:23:04'),
(43, 'Ride Your Dream', 'Ride Your Dream', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '6010183badb18_movie_photo.jpg', 'Mark Linfield', 'Elisa Toffoli, Meghan Markle', 'Ride-Your-Dream', '', 2020, 'https://youtu.be/0HoqvhOdGok', 1, 1, 5, '0', '2021-01-26 18:25:15', '2021-01-26 18:25:15'),
(44, 'Bring Back the Dead (2015)', 'Bring Back the Dead', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '6010184a7e5c5_movie_photo.jpg', 'Lee Thean Jeen', 'Chiang Wei-wen, Jesseca Liu, Liu Ling Ling, Lizzie.V., Shawn Tan, Timothy Law, Tjoa Xueting', 'Bring-Back-the-Dead-2015-', '', 2015, 'https://youtu.be/SYWECvmqXts', 2, 1, 11, '0', '2021-01-26 18:25:30', '2021-01-26 18:25:30'),
(45, 'Moving On (2019)', 'Moving On', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '6010185a8b225_movie_photo.jpg', 'Dan-bi Yoon', 'Choi Jung-un, Heung-ju Yang', 'Moving-On-2019-', '', 2019, 'https://youtu.be/dnpHKZ5f9qE', 2, 1, 9, '0', '2021-01-26 18:25:46', '2021-01-26 18:25:46'),
(46, 'Born a Champion (2021)', 'Born a Champion', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '601018d8a8ba0_movie_photo.jpg', 'Zaw Myo Htut', 'Zaw Myo Htut, Poe Mamhe Thar', 'Born-a-Champion-2021-', '', 2021, 'https://youtu.be/dvNYnvZoAfw', 1, 1, 17, '0', '2021-01-26 18:27:52', '2021-01-26 18:27:52'),
(47, 'Outside the Wire (2021)', 'Outside the Wire (2021)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '601018ee1d8cc_movie_photo.jpg', 'Mikael Håfström', 'Anthony Mackie, Damson Idris, Enzo Cilenti', 'Outside-the-Wire-2021-', '', 2021, 'https://www.youtube.com/watch?v=wIcepjPHJD8', 4, 1, 6, '0', '2021-01-26 18:28:14', '2021-01-26 18:28:14'),
(48, 'We Are Your Friends (2015)', 'We Are Your Friends', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '601019106cb77_movie_photo.jpg', 'Max Joseph', 'Emily Ratajkowski, Wes Bentley, Zac Efron', 'We-Are-Your-Friends-2015-', '', 2015, 'https://youtu.be/gZzAeYWXFpk', 2, 1, 10, '0', '2021-01-26 18:28:48', '2021-01-26 18:28:48'),
(51, 'Low Season (2020)', 'Low Season', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '60101a14e7755_movie_photo.jpg', 'Nareubadee Wetchakam', 'Mario Maurer, Ploypailin Thangprapaporn', 'Low-Season-2020-', '', 2020, 'https://youtu.be/XNIHIZt4_6M', 2, 1, 11, '0', '2021-01-26 18:33:08', '2021-01-26 18:33:08'),
(53, 'The Prestige (2006)', 'The Prestige', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '60101a6aac8f8_movie_photo.jpg', 'Christopher Nolan', 'Christian Bale, Hugh Jackman, Michael Caine, Piper Perabo', 'The-Prestige-2006-', '', 2011, 'https://youtu.be/RLtaA9fFNXU', 2, 1, 10, '0', '2021-01-26 18:34:34', '2021-01-26 18:34:34'),
(55, 'Where We Disappear (2019)', 'Where We Disappear', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '60101ae7862de_movie_photo.jpg', 'Simon Fink', 'Carmen Argenziano, David M. Edelstien, Georgina Haig, Heather Alexander, Hunter Doohan, Jolene Andersen, Jonathan Scarfe, Katharine Isabelle, Osa Wallander, Vera Cherny', 'Where-We-Disappear-2019-', '', 2019, 'https://youtu.be/174UPAstndo', 2, 1, 11, '0', '2021-01-26 18:36:39', '2021-01-26 18:36:39'),
(57, 'Cry Baby (1990)', 'Cry Baby', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '60101b73a2369_movie_photo.jpg', 'Zaw Myo Htut', 'Zaw Myo Htut, Poe Mamhe Thar', 'Cry-Baby-1990-', '', 2011, 'https://youtu.be/dvNYnvZoAfw', 3, 1, 17, '0', '2021-01-26 18:38:59', '2021-01-26 18:38:59'),
(58, 'The Wolf of Wall Street (2013)', 'The Wolf of Wall Street', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '60101ba49936a_movie_photo.png', 'Martin Scorsese', 'Jonah Hill, Leonardo DiCaprio, Margot Robbie', 'The-Wolf-of-Wall-Street-2013-', '', 2013, 'https://youtu.be/iszwuX1AK6A', 1, 1, 10, '0', '2021-01-26 18:39:48', '2021-01-26 18:39:48'),
(59, 'Moving On (2019)', 'Cry Baby', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '60101c2c8d1d1_movie_photo.jpg', 'Zaw Myo Htut', 'Zaw Myo Htut, Poe Mamhe Thar', 'Moving-On-2019-', '', 2013, 'https://youtu.be/dvNYnvZoAfw', 1, 2, 17, '0', '2021-01-26 18:42:04', '2021-01-26 18:42:04'),
(60, 'Buck Run', 'Buck Run', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '60101c4972255_movie_photo.jpg', 'Nick Frangione', 'Alicia Goranson, Amy Hargreaves, Angus Macfadyen, James Le Gros, Jim Parrack, Kevin J. O\'Connor, Nolan Lyons', 'Buck-Run', '', 2019, 'https://www.youtube.com/watch?v=eSL5pJzubWI', 2, 1, 8, '0', '2021-01-26 18:42:33', '2021-01-26 18:42:33'),
(61, 'No Man’s Land (2021)', 'No Man’s Land (2021)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '60102600c09eb_movie_photo.jpg', 'Conor Allyn', 'Alex MacNicollAndie, MacDowellAndrés DelgadoEsmerelda PimentelFrank ,GrilloGeorge ,LopezJake, AllynJorge A. JimenezOfelia Medina', 'No-Man-s-Land-2021-', '', 2021, 'https://youtu.be/hMMD7J73oS8', 2, 1, 18, '0', '2021-01-26 19:24:00', '2021-01-26 19:24:00'),
(62, 'Brothers by Blood(2021)', 'Brothers by Blood', '<p><strong>ဒုစရိုက်မှုတွေများပြားလှတဲ့ဖီလာဒဲလ်ဖီးယားမြို့နေ အိုင်းရစ်မာဖီးယားဂိုဏ်းခေါင်းဆောင်ရဲ့ သားဖြစ်သူ</strong></p>\r\n\r\n<p><strong>၈နှစ်သားပီတာက မိမိညီမဖြစ်သူရဲ့မတော်တဆသေဆုံးမှုကြောင့်</strong><br />\r\n<strong>စိတ်ဒဏ်ရာရခဲ့သလို မိသားစုလည်းပြိုကွဲခဲ့ရပါတယ်။</strong></p>\r\n\r\n<p><strong>ကြီးပြင်းလာတဲ့အချိန်မှာတော့ အကိုဝမ်းကွဲဖြစ်သူ မိုက်ကယ်က ဂိုဏ်းကိုဆက်လက်ဦးဆောင်နေပြီး</strong></p>\r\n\r\n<p><strong>အီတလီမာဖီးယားတွေနဲ့</strong><br />\r\n<strong>စားကျက်လုရင်း ငြိကြပါတော့တယ်။ အကိုဝမ်းကွဲမိုက်ကယ်ရဲ့ တဇောက်ကန်းလုပ်ရပ်တွေအကြောင့်</strong></p>', '60120eff7bc87_movie_photo.jpg', 'Bennett Lasseter', 'Jang Hye-Jin, Kim Tae-woo, Lim Soo-jung', 'Brothers-by-Blood-2021-', 'ဒုစရိုက်မှုတွေများပြားလှတဲ့ဖီလာဒဲလ်ဖီးယားမြို့နေ အိုင်းရစ်မာဖီးယားဂိုဏ်းခေါင်းဆောင်ရဲ့ သားဖြစ်သူ\r\n\r\n ...', 2021, 'https://youtu.be/xd0sWz85x2Q', 2, 1, 1, '0', '2021-01-27 18:40:23', '2021-01-27 18:40:23'),
(63, 'Fate: The Winx Saga (2021)', 'Fate: The Winx Saga', '<p><strong>Alfea ဆိုတဲ့ သာမာန်လူတွေမသိတဲ့ &zwnj;တစ်ခြားကမ္ဘာကမှော်နယ်မြေတစ်ခုမှာ</strong><br />\r\n<strong>နတ်သမီး (fairy)ကျောင်းတစ်ခုမှာ ရှိပြီး (fairy)မျိုးဆက်တွေကို</strong><br />\r\n<strong>ပညာသင်ကြားပေးပါတယ်။ ကျောင်းကြီးဟာ ပညာသင်ပေးရုံသာမက</strong><br />\r\n<strong>လောင်းကျွမ်းသားရဲကောင်အန္တရာယ်ကနေကာကွယ်ဖို့ အကာကွယ်ကြီး</strong><br />\r\n<strong>အုပ်ကာထားတဲ့ ခံတပ်ကြီးတစ်ခုလဲဖြစ်ပါတယ်။</strong></p>\r\n\r\n<p><strong>ဘလွန်းရဲ့ မိဘတွေကသာမာန်လူတွေဖြစ်လျှက် သူမမှာနတ်သမီးအစွမ်းရှိနေတာသိခဲ့ပြီး</strong><br />\r\n<strong>မထိန်းချုပ်နိုင်ဘဲ ဒုက္ခရောက်ခဲ့ရာကစလို့ အစွမ်းကိုထိန်းချုပ်နိုင်ဖို့ ကျောင်းလာတက်ပါတယ်။</strong></p>\r\n\r\n<p><strong>လူတွေနဲ့အနေဝေးပြီး သီးသန့်နေတတ်တဲ့ ဘလွန်းဟာ သူနဲ့အဆောင်တူ</strong><br />\r\n<strong>မိန်းကလေး ၄ ယောက်နဲ့အတူ ပထမဆုံးကျောင်းတက်တဲ့နေ့မှာပဲ အဖြစ်မျိုးစုံကြုံရင်း</strong><br />\r\n<strong>သာမာန်မိဘကနေ ဘာကြောင့် နတ်သမီးအစွမ်းတွေရနေတာလဲ</strong><br />\r\n<strong>လောင်ကျွမ်း သားရဲကြီးက ကောဘာကြောင့်ရောက်နေတာလဲ ဘယ်လိုအန္တရယ်ဆိုးတွေကြုံရမလဲ</strong><br />\r\n<strong>သူတို့အစွမ်းတွေနဲ့တိုက်ဖျက်ဖြေရှင်းနိုင်ကြမှာလားဆိုတာတို့ကိုစိတ်ဝင်စားဖွယ်ကြည့်ရမှာဖြစ်ပါတယ်။</strong></p>\r\n\r\n<p><strong>ဇတ်လမ်းလေးက စိတ်ဝင်စားဖို့ကောင်းတဲ့အပြင် ဖန်တီးသူကလဲ</strong><br />\r\n<strong>the-vampire-diaries ရဲ့ စာရေးဆရာဖြစ်တဲ့ Brian Young ဖြစ်ပါတယ်။</strong><br />\r\n<strong>Virtual Effect တွေလဲ အတော်လေးကောင်းတဲ့အတွက် Magic ဖန်တွေ ကြည့်သင့်တဲ့</strong><br />\r\n<strong>Fantasy စီးရီးလေးတစ်ခုအဖြစ်ညွှန်းလိုက်ပါတယ်။</strong></p>', '601210ab9d60f_movie_photo.jpg', 'Kazuhiko Hiramaki, Takuya Kawasaki', 'Andrew Garfield, Campbell Scott, Colm Feore, Dane DeHaan, Embeth Davidtz, Emma Stone, Jamie Foxx, Max Charles, Paul Giamatti, Sally Field', 'Fate-The-Winx-Saga-2021-', 'Alfea ဆိုတဲ့ သာမာန်လူတွေမသိတဲ့ &zwnj;တစ်ခြားကမ္ဘာကမှော်နယ်မြေတစ်ခုမှာ\r\nနတ်သမီး (fairy)ကျောင်းတစ်ခုမှ ...', 2021, 'https://www.youtube.com/watch?v=ZcsR_Ab6aqk', 4, 2, 1, '0', '2021-01-27 18:47:31', '2021-01-27 18:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `post_genres`
--

CREATE TABLE `post_genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `genre_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_genres`
--

INSERT INTO `post_genres` (`id`, `post_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(8, 5, 4, '2021-01-26 17:22:09', '2021-01-26 17:22:09'),
(9, 5, 3, '2021-01-26 17:22:09', '2021-01-26 17:22:09'),
(10, 6, 1, '2021-01-26 17:42:24', '2021-01-26 17:42:24'),
(11, 7, 4, '2021-01-26 17:51:22', '2021-01-26 17:51:22'),
(12, 7, 1, '2021-01-26 17:51:22', '2021-01-26 17:51:22'),
(13, 8, 2, '2021-01-26 17:53:08', '2021-01-26 17:53:08'),
(14, 8, 1, '2021-01-26 17:53:08', '2021-01-26 17:53:08'),
(18, 11, 4, '2021-01-26 17:58:21', '2021-01-26 17:58:21'),
(19, 12, 2, '2021-01-26 17:59:09', '2021-01-26 17:59:09'),
(20, 12, 1, '2021-01-26 17:59:09', '2021-01-26 17:59:09'),
(21, 13, 8, '2021-01-26 17:59:59', '2021-01-26 17:59:59'),
(22, 13, 4, '2021-01-26 17:59:59', '2021-01-26 17:59:59'),
(25, 15, 4, '2021-01-26 18:01:09', '2021-01-26 18:01:09'),
(26, 16, 8, '2021-01-26 18:03:37', '2021-01-26 18:03:37'),
(27, 17, 8, '2021-01-26 18:03:42', '2021-01-26 18:03:42'),
(28, 17, 7, '2021-01-26 18:03:42', '2021-01-26 18:03:42'),
(30, 19, 8, '2021-01-26 18:04:57', '2021-01-26 18:04:57'),
(31, 19, 4, '2021-01-26 18:04:57', '2021-01-26 18:04:57'),
(32, 19, 3, '2021-01-26 18:04:57', '2021-01-26 18:04:57'),
(34, 21, 2, '2021-01-26 18:05:24', '2021-01-26 18:05:24'),
(35, 21, 1, '2021-01-26 18:05:24', '2021-01-26 18:05:24'),
(39, 24, 8, '2021-01-26 18:08:08', '2021-01-26 18:08:08'),
(40, 24, 7, '2021-01-26 18:08:08', '2021-01-26 18:08:08'),
(41, 25, 4, '2021-01-26 18:09:38', '2021-01-26 18:09:38'),
(42, 25, 2, '2021-01-26 18:09:38', '2021-01-26 18:09:38'),
(43, 25, 1, '2021-01-26 18:09:38', '2021-01-26 18:09:38'),
(44, 26, 2, '2021-01-26 18:10:13', '2021-01-26 18:10:13'),
(45, 26, 1, '2021-01-26 18:10:13', '2021-01-26 18:10:13'),
(46, 27, 4, '2021-01-26 18:11:45', '2021-01-26 18:11:45'),
(47, 28, 8, '2021-01-26 18:11:57', '2021-01-26 18:11:57'),
(48, 28, 1, '2021-01-26 18:11:57', '2021-01-26 18:11:57'),
(51, 30, 1, '2021-01-26 18:12:22', '2021-01-26 18:12:22'),
(52, 31, 1, '2021-01-26 18:14:12', '2021-01-26 18:14:12'),
(53, 32, 2, '2021-01-26 18:14:19', '2021-01-26 18:14:19'),
(54, 32, 1, '2021-01-26 18:14:19', '2021-01-26 18:14:19'),
(55, 33, 8, '2021-01-26 18:14:28', '2021-01-26 18:14:28'),
(56, 33, 7, '2021-01-26 18:14:28', '2021-01-26 18:14:28'),
(57, 34, 2, '2021-01-26 18:15:13', '2021-01-26 18:15:13'),
(58, 34, 1, '2021-01-26 18:15:13', '2021-01-26 18:15:13'),
(59, 35, 1, '2021-01-26 18:15:47', '2021-01-26 18:15:47'),
(60, 36, 10, '2021-01-26 18:17:59', '2021-01-26 18:17:59'),
(61, 36, 9, '2021-01-26 18:17:59', '2021-01-26 18:17:59'),
(62, 37, 9, '2021-01-26 18:18:57', '2021-01-26 18:18:57'),
(63, 37, 7, '2021-01-26 18:18:57', '2021-01-26 18:18:57'),
(64, 38, 4, '2021-01-26 18:19:10', '2021-01-26 18:19:10'),
(65, 39, 8, '2021-01-26 18:19:42', '2021-01-26 18:19:42'),
(66, 39, 1, '2021-01-26 18:19:42', '2021-01-26 18:19:42'),
(67, 40, 8, '2021-01-26 18:21:13', '2021-01-26 18:21:13'),
(69, 42, 7, '2021-01-26 18:23:04', '2021-01-26 18:23:04'),
(70, 43, 4, '2021-01-26 18:25:15', '2021-01-26 18:25:15'),
(71, 44, 10, '2021-01-26 18:25:30', '2021-01-26 18:25:30'),
(72, 44, 9, '2021-01-26 18:25:30', '2021-01-26 18:25:30'),
(73, 45, 8, '2021-01-26 18:25:46', '2021-01-26 18:25:46'),
(74, 46, 8, '2021-01-26 18:27:52', '2021-01-26 18:27:52'),
(75, 46, 1, '2021-01-26 18:27:52', '2021-01-26 18:27:52'),
(76, 47, 2, '2021-01-26 18:28:14', '2021-01-26 18:28:14'),
(77, 47, 1, '2021-01-26 18:28:14', '2021-01-26 18:28:14'),
(78, 48, 8, '2021-01-26 18:28:48', '2021-01-26 18:28:48'),
(79, 48, 7, '2021-01-26 18:28:48', '2021-01-26 18:28:48'),
(84, 51, 10, '2021-01-26 18:33:08', '2021-01-26 18:33:08'),
(85, 51, 7, '2021-01-26 18:33:08', '2021-01-26 18:33:08'),
(86, 51, 3, '2021-01-26 18:33:08', '2021-01-26 18:33:08'),
(89, 53, 9, '2021-01-26 18:34:34', '2021-01-26 18:34:34'),
(90, 53, 2, '2021-01-26 18:34:34', '2021-01-26 18:34:34'),
(94, 55, 8, '2021-01-26 18:36:39', '2021-01-26 18:36:39'),
(95, 55, 1, '2021-01-26 18:36:39', '2021-01-26 18:36:39'),
(97, 57, 8, '2021-01-26 18:38:59', '2021-01-26 18:38:59'),
(98, 57, 7, '2021-01-26 18:38:59', '2021-01-26 18:38:59'),
(99, 57, 4, '2021-01-26 18:38:59', '2021-01-26 18:38:59'),
(100, 57, 3, '2021-01-26 18:38:59', '2021-01-26 18:38:59'),
(101, 58, 11, '2021-01-26 18:39:48', '2021-01-26 18:39:48'),
(102, 58, 4, '2021-01-26 18:39:48', '2021-01-26 18:39:48'),
(103, 59, 8, '2021-01-26 18:42:04', '2021-01-26 18:42:04'),
(104, 59, 3, '2021-01-26 18:42:04', '2021-01-26 18:42:04'),
(105, 60, 8, '2021-01-26 18:42:33', '2021-01-26 18:42:33'),
(106, 61, 9, '2021-01-26 19:24:00', '2021-01-26 19:24:00'),
(107, 61, 2, '2021-01-26 19:24:00', '2021-01-26 19:24:00'),
(108, 61, 1, '2021-01-26 19:24:00', '2021-01-26 19:24:00'),
(109, 62, 11, '2021-01-27 18:40:23', '2021-01-27 18:40:23'),
(110, 62, 10, '2021-01-27 18:40:23', '2021-01-27 18:40:23'),
(111, 63, 10, '2021-01-27 18:47:31', '2021-01-27 18:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `qualities`
--

CREATE TABLE `qualities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualities`
--

INSERT INTO `qualities` (`id`, `title`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'HD 720p', 1, '2021-01-15 12:55:46', '2021-01-26 09:06:05'),
(2, 'Full HD 1080p', 1, '2021-01-15 12:55:50', '2021-01-26 09:06:13'),
(3, '4K 2160p', 2, '2021-01-26 17:54:36', '2021-01-26 09:07:08'),
(4, 'Blue Ray', 2, '2021-01-26 17:54:42', '2021-01-26 17:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `servers`
--

INSERT INTO `servers` (`id`, `name`, `icon`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Mediafire', '600ae82dc6553_icon.png', 'mediafire.com', '2021-01-15 14:16:46', '2021-01-22 08:28:53'),
(2, 'Google Drive', '600ae78361e21_icon.png', 'drive.google.com', '2021-01-15 14:34:00', '2021-01-22 08:26:03'),
(3, 'Mega', '6010115a4d91b_icon.png', 'https://mega.nz/', '2021-01-26 17:55:54', '2021-01-26 17:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administartor', 'admin@gmail.com', NULL, '$2y$10$3LEdMIbqEx0KEzc7/3XZWeZH33pZoO0krvq.gamJlkywi6UCr.DPC', NULL, 'dkgV5Natkc4VUravUKJ3vzq5OvOoITLKkTGJawo4zd05dTJEZgy3hO6oIR2D', '2021-01-15 06:27:39', '2021-01-26 09:02:35'),
(2, 'Hein Htet Zan', 'hhz@gmail.com', NULL, '$2y$10$of9s05/9vJCcS/lNSiEA3.1M9H2C27t9/Voy2jw5sQuHyl8yqbdAO', '60100f01ea645_photo.jpg', NULL, '2021-01-26 17:39:10', '2021-01-26 17:45:53'),
(3, 'Naing Min Htet Oo', 'naingminhtetoo.dev@gmail.com', NULL, '$2y$10$309F7rlcoP9ZYNc2WGZ84O3gnfyx.YK4GT1tefmmLR/DcxD21dfSm', '60101127cc8b2_photo.jpg', NULL, '2021-01-26 17:39:13', '2021-01-26 17:55:03'),
(4, 'Myo Myint', 'mmt@gmail.com', NULL, '$2y$10$55hmVbqcfDpRdGy0UDLT6.v8m4ePvrA9VAXLZ8ygHEbCYoutMko2m', NULL, NULL, '2021-01-26 17:39:42', '2021-01-26 17:39:42'),
(5, 'Myo Thu', 'myothu.offical@gmail.com', NULL, '$2y$10$U4TjVe64NRg5.XBI9n7bKOs5l2Gj26oNbzAiBL18nxtM48h1UjW9y', '60100f6f7b1e8_photo.jpg', NULL, '2021-01-26 17:42:15', '2021-01-26 17:47:43'),
(6, 'Phone MIn Thant', 'phoneminthant461@gmail.com', NULL, '$2y$10$tf9tgWaTLJyqSHObga7z7ukylloUamXIl0AuERjNkdF0oY7LTXheG', '6010143f2d048_photo.jpg', NULL, '2021-01-26 17:42:54', '2021-01-26 18:08:15'),
(7, 'Aung Min Oo', 's3950@scit.ac.jp', NULL, '$2y$10$wko0hhvXKLWBbf3EglIvo.NifhIYd9NPRFAPkv8KtXQ1peOMpkIOa', '601014b78a8e7_photo.jpg', NULL, '2021-01-26 17:43:27', '2021-01-26 18:10:15'),
(8, 'jhon min', 'minnyisay@gmail.com', NULL, '$2y$10$3qO1eKWXbX87GydqsM0ldeMfdjLwqpoE5H26eSjpjpbTA928qGR6G', '601017a86ef14_photo.jpg', NULL, '2021-01-26 17:47:57', '2021-01-26 18:22:48'),
(9, 'Ye Win Maung', 'ywm@gmail.com', NULL, '$2y$10$S5FOWE6xbw370b4FQXCy8uBcBJM8RIJbz0aJQt2Duz1FDocmghoxy', NULL, NULL, '2021-01-26 17:48:27', '2021-01-26 17:48:27'),
(10, 'Phyo Khant Kyaw', 'alfredbeatz99@gmail.com', NULL, '$2y$10$hfHu3kj4Lx5lDFn83ccTn.eRjdLkv2OsQysf5BeyC0yXI9MBorYSS', '60101c97b0bfd_photo.jpg', NULL, '2021-01-26 17:48:38', '2021-01-26 18:43:51'),
(11, 'Htet Aung Laing', 'myueway98@gmail.com', NULL, '$2y$10$/HY546M3RpPPuX5VHIWnBeoQRJ.ytCCUfS46MxO87t45vF/KJAcCG', '6010143fed0bf_photo.jpg', NULL, '2021-01-26 17:48:41', '2021-01-26 18:08:15'),
(12, 'Naing Lynn Aung', 'unrivaledking1@gmail.com', NULL, '$2y$10$lBv5W/JSi06hCgerHgZ4HezpbFRb9fAznrCoy9dCxXpOqaH/gyRGW', NULL, NULL, '2021-01-26 17:50:29', '2021-01-26 17:50:29'),
(13, 'Hanni Win', 'hanniwin8102@gmail.com', NULL, '$2y$10$JoI5BtB9Ogna2Bpkx.A3u.fYfQnlGjLwgFCFI.9JW8/otR6udDQJK', NULL, NULL, '2021-01-26 17:51:28', '2021-01-26 17:51:28'),
(14, 'kaung htet shwe', 'aungkoko200om@gmail.com', NULL, '$2y$10$nsmtX77e/S89rzl/J6gy2e9/mYVl29iLtd4722VBz877D4Yyhjmf.', NULL, NULL, '2021-01-26 17:52:01', '2021-01-26 17:52:01'),
(15, 'Hlwan Moe Aung', 'dmoez24057@gmail.com', NULL, '$2y$10$3QmBT6yUd0l30LzAfKf46egjzsAZ7JJ8OhS3pBSfr/Vl1WrUR3gsO', NULL, NULL, '2021-01-26 17:57:31', '2021-01-26 17:57:31'),
(16, 'WaiLinHtwe', 'wailin.2212.h@gmail.com', NULL, '$2y$10$ktjKgep47u/C/L1oOKebReZlhEO53y0t0pmBMAyvpHGeJXYZBZ1ti', NULL, NULL, '2021-01-26 18:03:22', '2021-01-26 18:03:22'),
(17, 'Zaw Myo Htut', 'zawmyohtut222702@gmail.com', NULL, '$2y$10$4rYyeMSYdrw7Iqkzbe4qI.dVCHpOhLV0yR9eDYPwhfj/5mhVfBf5W', '60101475ac860_photo.jpg', NULL, '2021-01-26 18:04:54', '2021-01-26 18:09:09'),
(18, 'Pann Ei San', 'www.panneisan5297@gmail.com', NULL, '$2y$10$zxggbPzNTdkW1Fn.6R6fjudp8IZoPu5tXMV9eQQOATCjZKfrGRc1O', '601024316e1ae_photo.jpg', NULL, '2021-01-26 19:09:43', '2021-01-26 19:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_advertisements`
--
ALTER TABLE `customer_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_genres`
--
ALTER TABLE `post_genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualities`
--
ALTER TABLE `qualities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_advertisements`
--
ALTER TABLE `customer_advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `post_genres`
--
ALTER TABLE `post_genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `qualities`
--
ALTER TABLE `qualities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `servers`
--
ALTER TABLE `servers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
