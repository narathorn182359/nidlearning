-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 08, 2021 at 07:44 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearning_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer_exam`
--

CREATE TABLE `answer_exam` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_subs` int(11) DEFAULT NULL,
  `id_exass` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `formscore` int(10) DEFAULT NULL,
  `remark` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ผ่าน',
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `answer_exam`
--

INSERT INTO `answer_exam` (`id`, `id_user`, `id_subs`, `id_exass`, `score`, `formscore`, `remark`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(21, 94018, 3, 19, 1, 5, 'ไม่ผ่าน', '94018', NULL, '2020-12-23 03:56:16', NULL),
(22, 94018, 3, 19, 1, 5, 'ไม่ผ่าน', '94018', NULL, '2020-12-24 04:23:31', NULL),
(23, 94018, 3, 19, 1, 5, 'ไม่ผ่าน', '94018', NULL, '2020-12-24 09:16:27', NULL),
(24, 94018, 3, 19, 1, 5, 'ไม่ผ่าน', '94018', NULL, '2020-12-24 10:28:27', NULL),
(25, 94018, 3, 19, 1, 5, 'ไม่ผ่าน', '94018', NULL, '2020-12-24 10:28:35', NULL),
(26, 94018, 3, 19, 2, 5, 'ไม่ผ่าน', '94018', NULL, '2020-12-24 10:28:44', NULL),
(27, 94018, 3, 20, 3, 5, 'ผ่าน', '94018', NULL, '2020-12-25 03:00:26', NULL),
(28, 94018, 3, 19, 1, 5, 'ไม่ผ่าน', '94018', NULL, '2021-01-04 10:12:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `answer_posttest`
--

CREATE TABLE `answer_posttest` (
  `id` int(11) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `id_subs` int(10) DEFAULT NULL,
  `score` int(10) DEFAULT NULL,
  `formscore` int(10) DEFAULT NULL,
  `remark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `answer_posttest`
--

INSERT INTO `answer_posttest` (`id`, `id_user`, `id_subs`, `score`, `formscore`, `remark`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 94018, 3, 1, 5, 'ไม่ผ่าน', '94018', NULL, '2020-12-24 08:17:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `answer_pretest`
--

CREATE TABLE `answer_pretest` (
  `id` int(11) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `id_subs` int(10) DEFAULT NULL,
  `score` int(10) DEFAULT NULL,
  `formscore` int(11) DEFAULT NULL,
  `remark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `answer_pretest`
--

INSERT INTO `answer_pretest` (`id`, `id_user`, `id_subs`, `score`, `formscore`, `remark`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 94018, NULL, 1, 5, 'ไม่ผ่าน', '94018', NULL, '2020-12-23 03:49:55', NULL),
(2, 94018, 3, 1, 3, 'ไม่ผ่าน', '94018', NULL, '2020-12-23 03:53:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_cat` int(11) NOT NULL,
  `name_cat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_cat`, `name_cat`, `updated_by`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'testedit', NULL, 'developer', '2020-12-13 20:10:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id_co` int(11) NOT NULL,
  `name_co` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id_co`, `name_co`, `updated_by`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'testedit', NULL, 'developer', '2020-12-13 21:41:27', NULL),
(3, 'testedit2', NULL, 'developer', '2020-12-13 21:41:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `examination`
--

CREATE TABLE `examination` (
  `id_e` int(11) NOT NULL,
  `id_ecourse` int(10) DEFAULT NULL,
  `json_exam` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_status` int(10) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `examination`
--

INSERT INTO `examination` (`id_e`, `id_ecourse`, `json_exam`, `e_status`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(18, 3, '[{\"section\":\"5G \\u0e15\\u0e48\\u0e32\\u0e07\\u0e08\\u0e32\\u0e01 4G \\u0e43\\u0e19\\u0e40\\u0e23\\u0e37\\u0e48\\u0e2d\\u0e07\\u0e43\\u0e14\\u0e1a\\u0e49\\u0e32\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e37\\u0e14 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e2d\\u0e31\\u0e15\\u0e23\\u0e32\\u0e40\\u0e23\\u0e48\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":2,\"active\":0,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-18 16:57:14.061765\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-18 16:57:14.061784\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e21\\u0e35\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e14\\u0e49\\u0e32\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e43\\u0e19\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\\u0e15\\u0e49\\u0e2d\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e04\\u0e19 (Human-to-Human)\"},{\"id\":\"2\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Human-to-Machine)\"},{\"id\":\"3\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Machine-to-Machine)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":1,\"active\":0,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-18 16:57:14.064054\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-18 16:57:14.064073\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e2d\\u0e30\\u0e44\\u0e23 5G \\u0e16\\u0e36\\u0e07\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e17\\u0e32\\u0e07\\u0e14\\u0e49\\u0e32\\u0e19 IoT (Internet of Things) \\u0e44\\u0e14\\u0e49\\u0e14\\u0e35\\u0e01\\u0e27\\u0e48\\u0e32 4G\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e15\\u0e48\\u0e2d\\u0e1e\\u0e37\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"2\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e21\\u0e35\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07\\u0e15\\u0e48\\u0e33\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"3\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e43\\u0e19\\u0e22\\u0e38\\u0e04 5G \\u0e08\\u0e30\\u0e17\\u0e33\\u0e43\\u0e2b\\u0e49\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c IoT \\u0e21\\u0e35\\u0e23\\u0e32\\u0e04\\u0e32\\u0e16\\u0e39\\u0e01\\u0e41\\u0e25\\u0e30\\u0e43\\u0e0a\\u0e49\\u0e07\\u0e32\\u0e19\\u0e01\\u0e31\\u0e19\\u0e21\\u0e32\\u0e01\\u0e02\\u0e36\\u0e49\\u0e19\"},{\"id\":\"4\",\"a\":\"\\u0e44\\u0e21\\u0e48\\u0e21\\u0e35\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\"}],\"answer\":3,\"active\":0,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-18 16:57:14.066951\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-18 16:57:14.066968\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e02\\u0e2d\\u0e07\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e16\\u0e36\\u0e07\\u0e01\\u0e35\\u0e48\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e15\\u0e48\\u0e2d 1 \\u0e15\\u0e32\\u0e23\\u0e32\\u0e07\\u0e01\\u0e34\\u0e42\\u0e25\\u0e40\\u0e21\\u0e15\\u0e23\",\"select\":[{\"id\":\"1\",\"a\":\"1,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"10,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"100,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"1,000,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"}],\"answer\":1,\"active\":0,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-18 16:57:14.069258\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-18 16:57:14.069278\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e02\\u0e49\\u0e2d\\u0e41\\u0e15\\u0e01\\u0e15\\u0e48\\u0e32\\u0e07\\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 5G \\u0e01\\u0e31\\u0e1a 4G \\u0e04\\u0e37\\u0e2d\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 (Speed)\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 (Latency)\"},{\"id\":\"3\",\"a\":\"\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d (Connection)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":4,\"active\":0,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-18 16:57:14.071654\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-18 16:57:14.071671\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}}]', 1, 1, 'developer', 'developer', '2020-12-18 09:57:14', '2020-12-18 09:57:14'),
(19, 3, '[{\"section\":\"5G \\u0e15\\u0e48\\u0e32\\u0e07\\u0e08\\u0e32\\u0e01 4G \\u0e43\\u0e19\\u0e40\\u0e23\\u0e37\\u0e48\\u0e2d\\u0e07\\u0e43\\u0e14\\u0e1a\\u0e49\\u0e32\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e37\\u0e14 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e2d\\u0e31\\u0e15\\u0e23\\u0e32\\u0e40\\u0e23\\u0e48\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":2,\"active\":null,\"e_status\":3,\"updated_by\":{\"date\":\"2020-12-24 14:41:53.802309\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-24 14:41:53.802329\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e21\\u0e35\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e14\\u0e49\\u0e32\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e43\\u0e19\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\\u0e15\\u0e49\\u0e2d\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e04\\u0e19 (Human-to-Human)\"},{\"id\":\"2\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Human-to-Machine)\"},{\"id\":\"3\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Machine-to-Machine)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":1,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2020-12-24 14:41:53.810880\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-24 14:41:53.810906\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e2d\\u0e30\\u0e44\\u0e23 5G \\u0e16\\u0e36\\u0e07\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e17\\u0e32\\u0e07\\u0e14\\u0e49\\u0e32\\u0e19 IoT (Internet of Things) \\u0e44\\u0e14\\u0e49\\u0e14\\u0e35\\u0e01\\u0e27\\u0e48\\u0e32 4G\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e15\\u0e48\\u0e2d\\u0e1e\\u0e37\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"2\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e21\\u0e35\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07\\u0e15\\u0e48\\u0e33\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"3\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e43\\u0e19\\u0e22\\u0e38\\u0e04 5G \\u0e08\\u0e30\\u0e17\\u0e33\\u0e43\\u0e2b\\u0e49\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c IoT \\u0e21\\u0e35\\u0e23\\u0e32\\u0e04\\u0e32\\u0e16\\u0e39\\u0e01\\u0e41\\u0e25\\u0e30\\u0e43\\u0e0a\\u0e49\\u0e07\\u0e32\\u0e19\\u0e01\\u0e31\\u0e19\\u0e21\\u0e32\\u0e01\\u0e02\\u0e36\\u0e49\\u0e19\"},{\"id\":\"4\",\"a\":\"\\u0e44\\u0e21\\u0e48\\u0e21\\u0e35\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\"}],\"answer\":3,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2020-12-24 14:41:53.815575\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-24 14:41:53.815590\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e02\\u0e2d\\u0e07\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e16\\u0e36\\u0e07\\u0e01\\u0e35\\u0e48\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e15\\u0e48\\u0e2d 1 \\u0e15\\u0e32\\u0e23\\u0e32\\u0e07\\u0e01\\u0e34\\u0e42\\u0e25\\u0e40\\u0e21\\u0e15\\u0e23\",\"select\":[{\"id\":\"1\",\"a\":\"1,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"10,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"100,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"1,000,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"}],\"answer\":1,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2020-12-24 14:41:53.817769\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-24 14:41:53.817784\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e02\\u0e49\\u0e2d\\u0e41\\u0e15\\u0e01\\u0e15\\u0e48\\u0e32\\u0e07\\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 5G \\u0e01\\u0e31\\u0e1a 4G \\u0e04\\u0e37\\u0e2d\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 (Speed)\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 (Latency)\"},{\"id\":\"3\",\"a\":\"\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d (Connection)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":4,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2020-12-24 14:41:53.822001\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-24 14:41:53.822020\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e15\\u0e48\\u0e32\\u0e07\\u0e08\\u0e32\\u0e01 4G \\u0e43\\u0e19\\u0e40\\u0e23\\u0e37\\u0e48\\u0e2d\\u0e07\\u0e43\\u0e14\\u0e1a\\u0e49\\u0e32\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e37\\u0e14 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e2d\\u0e31\\u0e15\\u0e23\\u0e32\\u0e40\\u0e23\\u0e48\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":2,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2020-12-24 14:42:05.512244\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-24 14:42:05.512268\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e21\\u0e35\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e14\\u0e49\\u0e32\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e43\\u0e19\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\\u0e15\\u0e49\\u0e2d\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e04\\u0e19 (Human-to-Human)\"},{\"id\":\"2\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Human-to-Machine)\"},{\"id\":\"3\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Machine-to-Machine)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":1,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2020-12-24 14:42:05.516783\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-24 14:42:05.516801\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e2d\\u0e30\\u0e44\\u0e23 5G \\u0e16\\u0e36\\u0e07\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e17\\u0e32\\u0e07\\u0e14\\u0e49\\u0e32\\u0e19 IoT (Internet of Things) \\u0e44\\u0e14\\u0e49\\u0e14\\u0e35\\u0e01\\u0e27\\u0e48\\u0e32 4G\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e15\\u0e48\\u0e2d\\u0e1e\\u0e37\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"2\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e21\\u0e35\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07\\u0e15\\u0e48\\u0e33\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"3\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e43\\u0e19\\u0e22\\u0e38\\u0e04 5G \\u0e08\\u0e30\\u0e17\\u0e33\\u0e43\\u0e2b\\u0e49\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c IoT \\u0e21\\u0e35\\u0e23\\u0e32\\u0e04\\u0e32\\u0e16\\u0e39\\u0e01\\u0e41\\u0e25\\u0e30\\u0e43\\u0e0a\\u0e49\\u0e07\\u0e32\\u0e19\\u0e01\\u0e31\\u0e19\\u0e21\\u0e32\\u0e01\\u0e02\\u0e36\\u0e49\\u0e19\"},{\"id\":\"4\",\"a\":\"\\u0e44\\u0e21\\u0e48\\u0e21\\u0e35\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\"}],\"answer\":3,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2020-12-24 14:42:05.524581\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-24 14:42:05.524597\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e02\\u0e2d\\u0e07\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e16\\u0e36\\u0e07\\u0e01\\u0e35\\u0e48\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e15\\u0e48\\u0e2d 1 \\u0e15\\u0e32\\u0e23\\u0e32\\u0e07\\u0e01\\u0e34\\u0e42\\u0e25\\u0e40\\u0e21\\u0e15\\u0e23\",\"select\":[{\"id\":\"1\",\"a\":\"1,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"10,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"100,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"1,000,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"}],\"answer\":1,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2020-12-24 14:42:05.528365\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-24 14:42:05.528380\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e02\\u0e49\\u0e2d\\u0e41\\u0e15\\u0e01\\u0e15\\u0e48\\u0e32\\u0e07\\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 5G \\u0e01\\u0e31\\u0e1a 4G \\u0e04\\u0e37\\u0e2d\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 (Speed)\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 (Latency)\"},{\"id\":\"3\",\"a\":\"\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d (Connection)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":4,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2020-12-24 14:42:05.531195\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-24 14:42:05.531212\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}}]', 3, 1, 'developer', 'developer', '2020-12-24 07:41:53', '2020-12-24 07:42:05');

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
(3, '2020_12_10_031008_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `name_posi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `name_posi`, `create_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Software Development Officer', NULL, NULL, NULL, NULL),
(2, 'Maintenance Officer', NULL, NULL, NULL, NULL),
(3, 'Prepare Officer', NULL, NULL, NULL, NULL),
(4, 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', NULL, NULL, NULL, NULL),
(5, 'Jewelry Maker Officer (ฝัง)', NULL, NULL, NULL, NULL),
(6, 'PC (Luxury)', NULL, NULL, NULL, NULL),
(7, 'Digital Marketing Supervisor (Jewelry)', NULL, NULL, NULL, NULL),
(8, 'Finance & Accounting Officer', NULL, NULL, NULL, NULL),
(9, 'ERP Support Supervisor', NULL, NULL, NULL, NULL),
(10, 'Jewelry Maker Officer (เจียระไนพลอย)', NULL, NULL, NULL, NULL),
(11, 'Jewelry Maker Officer (แต่งประกอบ)', NULL, NULL, NULL, NULL),
(12, 'Purchasing Supervisor', NULL, NULL, NULL, NULL),
(13, 'PC (Lifestyle)', NULL, NULL, NULL, NULL),
(14, 'Customer Service Manager (Lifestyle)', NULL, NULL, NULL, NULL),
(15, 'Interior & Visual Merchandiser Officer', NULL, NULL, NULL, NULL),
(16, 'Administration & Accounting Officer', NULL, NULL, NULL, NULL),
(17, 'Jewelry Maker Officer (ชุบ)', NULL, NULL, NULL, NULL),
(18, 'Jewelry Maker Officer (เจียระไนเพชร)', NULL, NULL, NULL, NULL),
(19, 'Administration Officer', NULL, NULL, NULL, NULL),
(20, 'Jewelry Maker Officer (บล็อก)', NULL, NULL, NULL, NULL),
(21, 'Admin Officer (Support)', NULL, NULL, NULL, NULL),
(22, 'Material Control Officer', NULL, NULL, NULL, NULL),
(23, 'CAD Designer Officer', NULL, NULL, NULL, NULL),
(24, 'Jewelry Maker Officer (แม่พิมพ์)', NULL, NULL, NULL, NULL),
(25, 'Waitress', NULL, NULL, NULL, NULL),
(26, 'Cleaning Staff', NULL, NULL, NULL, NULL),
(27, 'Logistics Staff', NULL, NULL, NULL, NULL),
(28, 'Jewelry Designer Officer', NULL, NULL, NULL, NULL),
(29, 'QA Supervisor (ตัวเรือน)', NULL, NULL, NULL, NULL),
(30, 'QC Officer (งานหล่อ)', NULL, NULL, NULL, NULL),
(31, 'Purchasing Officer (จัดซื้อเครื่องมือ)', NULL, NULL, NULL, NULL),
(32, 'General Manager (Luxury)', NULL, NULL, NULL, NULL),
(33, 'Sale Supervisor (Support Lifestyle)', NULL, NULL, NULL, NULL),
(34, 'Senior Interior & Visual Merchandiser Officer', NULL, NULL, NULL, NULL),
(35, 'Internal Audit Officer', NULL, NULL, NULL, NULL),
(36, 'Packing Staff', NULL, NULL, NULL, NULL),
(37, 'Sale Officer (Visaul Merchandiser Lifestyle)', NULL, NULL, NULL, NULL),
(38, 'Photographer & Graphic Designer Officer', NULL, NULL, NULL, NULL),
(39, 'Art Director Manager', NULL, NULL, NULL, NULL),
(40, 'Marketing Manager (Lifestyle)', NULL, NULL, NULL, NULL),
(41, 'Interior & Visual Merchandiser Manager', NULL, NULL, NULL, NULL),
(42, 'Operation Execuitve Officer (Luxury)', NULL, NULL, NULL, NULL),
(43, 'Customer Service Officer (Front) (Lifestyle)', NULL, NULL, NULL, NULL),
(44, 'Watch Maker Officer (Lifestyle)', NULL, NULL, NULL, NULL),
(45, 'E-Commerce Supervisor (Lifestyle)', NULL, NULL, NULL, NULL),
(46, 'Import & Export Officer (Lifestyle)', NULL, NULL, NULL, NULL),
(47, 'Sale Supervisor (Consignment) (Lifestyle)', NULL, NULL, NULL, NULL),
(48, 'PC (CTF) (Luxury)', NULL, NULL, NULL, NULL),
(49, 'Graphic Design Supervisor', NULL, NULL, NULL, NULL),
(50, 'Sales Support Officer (Jewelry)', NULL, NULL, NULL, NULL),
(51, 'PC (Jewelry)', NULL, NULL, NULL, NULL),
(52, 'Assistant Brand Manager (Lifestyle)', NULL, NULL, NULL, NULL),
(53, 'Marketing Admin (Lifestyle)', NULL, NULL, NULL, NULL),
(54, 'Sales Event Roadshow Supervisor (Luxury)', NULL, NULL, NULL, NULL),
(55, 'Demi Chef', NULL, NULL, NULL, NULL),
(56, 'Customer Service Officer (Online) (Lifestyle)', NULL, NULL, NULL, NULL),
(57, 'Lawyer Supervisor', NULL, NULL, NULL, NULL),
(58, 'General Manager (AKI)', NULL, NULL, NULL, NULL),
(59, 'Coffee Shop Officer', NULL, NULL, NULL, NULL),
(60, 'General Manager (Cherchim)', NULL, NULL, NULL, NULL),
(61, 'Assistant Restaurant Manager', NULL, NULL, NULL, NULL),
(62, 'Production & Maintenance Officer', NULL, NULL, NULL, NULL),
(63, 'General Manager (Tai)', NULL, NULL, NULL, NULL),
(64, 'Planning & Logistics Supervisor', NULL, NULL, NULL, NULL),
(65, 'Tele Sales Executive Officer', NULL, NULL, NULL, NULL),
(66, 'Sales Supervisor', NULL, NULL, NULL, NULL),
(67, 'Quality Assurance & Development Officer', NULL, NULL, NULL, NULL),
(68, 'Coordinator & Administration Officer', NULL, NULL, NULL, NULL),
(69, 'Planning & Logistics Officer', NULL, NULL, NULL, NULL),
(70, 'Quality Control Staff', NULL, NULL, NULL, NULL),
(71, 'Production Staff', NULL, NULL, NULL, NULL),
(72, 'Chief Executive Officer', NULL, NULL, NULL, NULL),
(73, 'General Manager ( CIEN )', NULL, NULL, NULL, NULL),
(74, 'Senior Jewelry Maker Supervisor (เจียระไนเพชร)', NULL, NULL, NULL, NULL),
(75, 'Quality Control Supervisor (พลอย)', NULL, NULL, NULL, NULL),
(76, 'Quality Assurance Supervisor (พลอย)', NULL, NULL, NULL, NULL),
(77, 'Jewelry Maker Supervisor (เจียระไนพลอย)', NULL, NULL, NULL, NULL),
(78, 'Jewelry Maker Officer (ติดพลอย)', NULL, NULL, NULL, NULL),
(79, 'Maid Officer', NULL, NULL, NULL, NULL),
(80, 'Senior Jewllry Maker Officer (เจียระไนเพชร)', NULL, NULL, NULL, NULL),
(81, 'Mechanical Staff', NULL, NULL, NULL, NULL),
(82, 'Jewelry Maker Supervisor (แต่งประกอบ)', NULL, NULL, NULL, NULL),
(83, 'Factory Manager', NULL, NULL, NULL, NULL),
(84, 'Jewelry Maker Officer (ฉีดเทียน)', NULL, NULL, NULL, NULL),
(85, 'Jewelry Maker Officer (ฝังไร้หนาม)', NULL, NULL, NULL, NULL),
(86, 'Jewelry Maker Officer (ขัด)', NULL, NULL, NULL, NULL),
(87, 'Jewelry Maker Supervisor (ฝัง)', NULL, NULL, NULL, NULL),
(88, 'Jewelry Maker Officer (เลเซอร์)', NULL, NULL, NULL, NULL),
(89, 'Jewelry Maker Supervisor (เจียระไนเพชร)', NULL, NULL, NULL, NULL),
(90, 'Messenger Officer', NULL, NULL, NULL, NULL),
(91, 'Secretary & Service Controller Supervisor', NULL, NULL, NULL, NULL),
(92, 'Senior Maintenance Officer', NULL, NULL, NULL, NULL),
(93, 'Human Resource Specialist', NULL, NULL, NULL, NULL),
(94, 'Jewelry Maker Officer (ติดแชล็ค)', NULL, NULL, NULL, NULL),
(95, 'Jewelry Maker Officer (เซาะร่องพลอย เพชร)', NULL, NULL, NULL, NULL),
(96, 'Operation Management Manager', NULL, NULL, NULL, NULL),
(97, 'General Affair Supervisor', NULL, NULL, NULL, NULL),
(98, 'General Manager (Finance & Accounting)', NULL, NULL, NULL, NULL),
(99, 'Payroll Officer', NULL, NULL, NULL, NULL),
(100, 'Government Affair Supervisor', NULL, NULL, NULL, NULL),
(101, 'Talent Acquisition Officer', NULL, NULL, NULL, NULL),
(102, 'Senior Purchasing Officer (Diamond)', NULL, NULL, NULL, NULL),
(103, 'Senior Gemologist Officer', NULL, NULL, NULL, NULL),
(104, 'Quality Assurance Officer (เพชร)', NULL, NULL, NULL, NULL),
(105, 'Gemologist Officer', NULL, NULL, NULL, NULL),
(106, 'Purchasing Supervisor (Diamond)', NULL, NULL, NULL, NULL),
(107, 'Senior Jewellry Maker Officer (แมตซ์สี)', NULL, NULL, NULL, NULL),
(108, 'Jewellry Maker Officer (แมตซ์สี)', NULL, NULL, NULL, NULL),
(109, 'Purchasing Officer (Diamond)', NULL, NULL, NULL, NULL),
(110, 'Stock Controller Manager', NULL, NULL, NULL, NULL),
(111, NULL, NULL, NULL, NULL, NULL),
(112, 'Finance & Accounting Manager', NULL, NULL, NULL, NULL),
(113, 'Sewing Supervisor', NULL, NULL, NULL, NULL),
(114, 'Production Supervisor', NULL, NULL, NULL, NULL),
(115, 'Support team Supervisor', NULL, NULL, NULL, NULL),
(116, 'Human Resource Development Digital Officer', NULL, NULL, NULL, NULL),
(117, 'Human Resource Organization Development Officer', NULL, NULL, NULL, NULL),
(118, 'Commis Chef', NULL, NULL, NULL, NULL),
(119, 'Captain', NULL, NULL, NULL, NULL),
(120, 'Sale Supervisor (Roadshow Jewelry)', NULL, NULL, NULL, NULL),
(121, 'Supply Chain Supervisor', NULL, NULL, NULL, NULL),
(122, 'Prepare Supervisor', NULL, NULL, NULL, NULL),
(123, 'Senior Purchasing Officer (Gemstones)', NULL, NULL, NULL, NULL),
(124, 'Audit System Trainee', NULL, NULL, NULL, NULL),
(125, 'Jewelry Maker Supervisor (เจียระไน)', NULL, NULL, NULL, NULL),
(126, 'Social Media Coordinator (Officer)', NULL, NULL, NULL, NULL),
(127, 'General Manager (Jewelry)', NULL, NULL, NULL, NULL),
(128, 'Graphic Design Officer', NULL, NULL, NULL, NULL),
(129, 'Finance & Accounting Admin Officer', NULL, NULL, NULL, NULL),
(130, 'Finance & Accounting Supervisor', NULL, NULL, NULL, NULL),
(131, 'Senior Jewelry Designer Officer', NULL, NULL, NULL, NULL),
(132, 'Senior Jewelry Maker Officer (แม่พิมพ์)', NULL, NULL, NULL, NULL),
(133, 'Jewelry Maker Officer (แกะลาย)', NULL, NULL, NULL, NULL),
(134, 'Driver Officer', NULL, NULL, NULL, NULL),
(135, 'Jewelry Maker Officer (ผ่ายาง)', NULL, NULL, NULL, NULL),
(136, 'Factory Supervisor', NULL, NULL, NULL, NULL),
(137, 'Jewelry Maker Officer (หล่อ)', NULL, NULL, NULL, NULL),
(138, 'Senior Jewelry Maker Officer (แกะลาย)', NULL, NULL, NULL, NULL),
(139, 'Assistant Gold & Jewelry Creative Product Manager', NULL, NULL, NULL, NULL),
(140, 'General Manager (Lifestyle)', NULL, NULL, NULL, NULL),
(141, 'Messenger Officer (Lifestyle)', NULL, NULL, NULL, NULL),
(142, 'Sale Officer (Support) (Lifestyle)', NULL, NULL, NULL, NULL),
(143, 'PR Manager (Jewelry)', NULL, NULL, NULL, NULL),
(144, 'Assistant Site Acquisition Manager (Jewelry)', NULL, NULL, NULL, NULL),
(145, 'Sale Manager (Lifestyle)', NULL, NULL, NULL, NULL),
(146, 'Sale Manager (Luxury)', NULL, NULL, NULL, NULL),
(147, 'Sale Supervisor (Roadshow Lifestyle)', NULL, NULL, NULL, NULL),
(148, 'Customer Service Supervisor (Lifestyle)', NULL, NULL, NULL, NULL),
(149, 'Packing Officer (Lifestyle)', NULL, NULL, NULL, NULL),
(150, 'Warehouse & Logistics Officer (Lifestyle)', NULL, NULL, NULL, NULL),
(151, 'Social Media Coordinator (Jewelry)', NULL, NULL, NULL, NULL),
(152, 'Assistant Brand Manager (Jewelry)', NULL, NULL, NULL, NULL),
(153, 'Assistant Sale & Marketing Manager (Jewelry)', NULL, NULL, NULL, NULL),
(154, 'Marketing Manager (Luxury)', NULL, NULL, NULL, NULL),
(155, 'Sport Marketing Executive Supervisor (Lifestyle)', NULL, NULL, NULL, NULL),
(156, 'Chief Operating Officer', NULL, NULL, NULL, NULL),
(157, 'Sales & Customer Services Supervisor', NULL, NULL, NULL, NULL),
(158, 'Assistant Luxury Business Manager (Luxury)', NULL, NULL, NULL, NULL),
(159, 'Assistant Operetion Manager', NULL, NULL, NULL, NULL),
(160, 'Senior Chef Officer', NULL, NULL, NULL, NULL),
(161, 'Chef Supervisor', NULL, NULL, NULL, NULL),
(162, 'System & Security Supervisor', NULL, NULL, NULL, NULL),
(163, 'IT Support Officer', NULL, NULL, NULL, NULL),
(164, 'IT & ERP Support Officer', NULL, NULL, NULL, NULL),
(165, 'General Manager (NIO)', NULL, NULL, NULL, NULL),
(166, 'IT & Software Support Officer', NULL, NULL, NULL, NULL),
(168, 'Microservices Development Manager', NULL, NULL, NULL, NULL),
(169, 'ERP Support Officer', NULL, NULL, NULL, NULL),
(170, 'Junior Talent Acquisition Supervisor', NULL, NULL, NULL, NULL),
(171, 'Research & Development Manager', NULL, NULL, NULL, NULL),
(172, 'Engineer Supervisor', NULL, NULL, NULL, NULL),
(173, 'Senior Human Resource Development Supervisor', NULL, NULL, NULL, NULL),
(174, 'Purchasing Manager (Gemstones)', NULL, NULL, NULL, NULL),
(175, 'Chief Financial Officer', NULL, NULL, NULL, NULL),
(176, 'Human Resource Development Digital Supervisor', NULL, NULL, NULL, NULL),
(177, 'Product Design & Development Manager', NULL, NULL, NULL, NULL),
(178, 'Photographer & Retoucher Officer', NULL, NULL, NULL, NULL),
(179, 'Business System Analyst Supervisor', NULL, NULL, NULL, NULL),
(180, 'Senior Gemologist Supervisor', NULL, NULL, NULL, NULL),
(181, 'Sale & Marketing Supervisor', NULL, NULL, NULL, NULL),
(182, 'Sale Manager (Gold & Jewelry)', NULL, NULL, NULL, NULL),
(183, 'Shop Manager (Gold & Jewelry)', NULL, NULL, NULL, NULL),
(184, 'Sale Technician (Gold & Jewelry)', NULL, NULL, NULL, NULL),
(185, 'Sale Staff (Gold & Jewelry)', NULL, NULL, NULL, NULL),
(186, 'Marketing officer', NULL, NULL, NULL, NULL),
(187, 'Store Data Officer', NULL, NULL, NULL, NULL),
(188, 'Sale CTF Officer (Gold & Jewelry)', NULL, NULL, NULL, NULL),
(189, 'PC (Gold & Jewelry)', NULL, NULL, NULL, NULL),
(190, 'ช่างเลี่ยมทอง', NULL, NULL, NULL, NULL),
(191, 'Stock Controller Officer (เพชร)', NULL, NULL, NULL, NULL),
(192, 'Jewelry Maker Staff (ฝัง)', NULL, NULL, NULL, NULL),
(193, 'Jewelry Maker Staff (ขัด)', NULL, NULL, NULL, NULL),
(194, 'Messenger', NULL, NULL, NULL, NULL),
(195, 'QC Officer (เพชร)', NULL, NULL, NULL, NULL),
(196, 'Stock Controller Officer (ลงสต๊อก/ค่าคอม)', NULL, NULL, NULL, NULL),
(197, 'IT Officer', NULL, NULL, NULL, NULL),
(198, 'Purchasing Officer (Gold)', NULL, NULL, NULL, NULL),
(199, 'wqdq', NULL, NULL, NULL, NULL),
(200, 'Assistant Operation Manager', NULL, NULL, NULL, NULL),
(201, 'Customer Service Officer', NULL, NULL, NULL, NULL),
(202, 'Software Tester Officer', NULL, NULL, NULL, NULL),
(203, 'Supply Chain Officer', NULL, NULL, NULL, NULL),
(204, 'Graphic & Retouch Officer', NULL, NULL, NULL, NULL),
(205, 'Sales  Manager', NULL, NULL, NULL, NULL),
(206, 'General Manager (NGG TRADE)', NULL, NULL, NULL, NULL),
(207, 'Gold Trader Supervisor', NULL, NULL, NULL, NULL),
(208, 'Gold Trader Manager', NULL, NULL, NULL, NULL),
(209, 'Digital Marketing Manager', NULL, NULL, NULL, NULL),
(210, 'Business Development Manager', NULL, NULL, NULL, NULL),
(211, 'Hostress', NULL, NULL, NULL, NULL),
(212, 'Coorporation Media Manager', NULL, NULL, NULL, NULL),
(213, 'Assistant Digital Marketing Manager', NULL, NULL, NULL, NULL),
(214, 'Warehouse & Logistics Officer', NULL, NULL, NULL, NULL),
(215, 'coffee shop officer', NULL, NULL, NULL, NULL),
(216, 'Admin officer', NULL, NULL, NULL, NULL),
(217, 'Assistant Recruit Manager ', NULL, NULL, NULL, NULL),
(218, 'Online Marketing Officer', NULL, NULL, NULL, NULL),
(219, 'PC Jewelry', NULL, NULL, NULL, NULL),
(220, 'Packing Staff ', NULL, NULL, NULL, NULL),
(221, 'Sales SR.Officer ', NULL, NULL, NULL, NULL),
(222, 'Shop Manager', NULL, NULL, NULL, NULL),
(223, 'Sales Online', NULL, NULL, NULL, NULL),
(224, 'Jewelry Maker Officer (บล๊อก)', NULL, NULL, NULL, NULL),
(225, 'Diamond Grading Officer', NULL, NULL, NULL, NULL),
(226, 'Assistant Corporate Media Manager (Luxurious Watch)', NULL, NULL, NULL, NULL),
(227, 'Dishwasher', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2020-12-09 20:27:13', '2020-12-09 20:27:13');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `set_brand_learnning`
--

CREATE TABLE `set_brand_learnning` (
  `id_set_brand` int(11) NOT NULL,
  `id_vichar_b` int(11) DEFAULT NULL,
  `id_position_b` int(11) DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checked` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `set_brand_learnning`
--

INSERT INTO `set_brand_learnning` (`id_set_brand`, `id_vichar_b`, `id_position_b`, `brand`, `checked`, `status`, `updated_by`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'BRAND : A', 'checked', 1, NULL, NULL, NULL, NULL),
(3, 2, 1, 'BRAND : O', 'checked', 1, NULL, NULL, NULL, NULL),
(4, 3, 1, 'BRAND : A', 'checked', 1, NULL, NULL, NULL, NULL),
(5, 4, 1, 'BRAND : A', 'checked', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `set_learning`
--

CREATE TABLE `set_learning` (
  `id_set` int(11) NOT NULL,
  `id_vichar` int(11) DEFAULT NULL,
  `id_position` int(11) DEFAULT NULL,
  `checked` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `set_learning`
--

INSERT INTO `set_learning` (`id_set`, `id_vichar`, `id_position`, `checked`, `status`, `created_by`, `update_by`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'checked', 1, NULL, NULL, NULL, NULL),
(4, 4, 1, 'checked', 1, NULL, NULL, NULL, NULL),
(5, 3, 1, 'checked', 1, NULL, NULL, NULL, NULL),
(6, 3, 5, 'checked', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id_sub` int(11) NOT NULL,
  `img_sub` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_sub` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `course_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skill_status` int(11) DEFAULT 0,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id_sub`, `img_sub`, `name_sub`, `course_id`, `category_id`, `sub_title`, `skill_status`, `updated_by`, `created_by`, `created_at`, `updated_at`) VALUES
(3, '1608794264.jpg', 'test2', '3', '2', 'test', 0, 'developer', 'developer', '2020-12-13 20:01:12', '2021-01-04 04:27:38'),
(4, '1609729545.jpg', 'ความรู้ทั่วไป', '2', '2', 'test', 1, NULL, 'developer', '2021-01-04 03:05:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject_examination`
--

CREATE TABLE `subject_examination` (
  `id_sexa` int(11) NOT NULL,
  `id_sub` int(11) DEFAULT NULL,
  `name_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `json_sub` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail_sub` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject_examination`
--

INSERT INTO `subject_examination` (`id_sexa`, `id_sub`, `name_title`, `json_sub`, `detail_sub`, `status`, `updated_by`, `created_by`, `created_at`, `updated_at`) VALUES
(19, 3, 'xsdvsc', '[{\"section\":\"5G \\u0e15\\u0e48\\u0e32\\u0e07\\u0e08\\u0e32\\u0e01 4G \\u0e43\\u0e19\\u0e40\\u0e23\\u0e37\\u0e48\\u0e2d\\u0e07\\u0e43\\u0e14\\u0e1a\\u0e49\\u0e32\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e37\\u0e14 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e2d\\u0e31\\u0e15\\u0e23\\u0e32\\u0e40\\u0e23\\u0e48\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":2,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-21 14:25:32.353161\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-21 14:25:32.353195\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e21\\u0e35\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e14\\u0e49\\u0e32\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e43\\u0e19\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\\u0e15\\u0e49\\u0e2d\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e04\\u0e19 (Human-to-Human)\"},{\"id\":\"2\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Human-to-Machine)\"},{\"id\":\"3\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Machine-to-Machine)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":1,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-21 14:25:32.357001\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-21 14:25:32.357016\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e2d\\u0e30\\u0e44\\u0e23 5G \\u0e16\\u0e36\\u0e07\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e17\\u0e32\\u0e07\\u0e14\\u0e49\\u0e32\\u0e19 IoT (Internet of Things) \\u0e44\\u0e14\\u0e49\\u0e14\\u0e35\\u0e01\\u0e27\\u0e48\\u0e32 4G\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e15\\u0e48\\u0e2d\\u0e1e\\u0e37\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"2\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e21\\u0e35\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07\\u0e15\\u0e48\\u0e33\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"3\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e43\\u0e19\\u0e22\\u0e38\\u0e04 5G \\u0e08\\u0e30\\u0e17\\u0e33\\u0e43\\u0e2b\\u0e49\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c IoT \\u0e21\\u0e35\\u0e23\\u0e32\\u0e04\\u0e32\\u0e16\\u0e39\\u0e01\\u0e41\\u0e25\\u0e30\\u0e43\\u0e0a\\u0e49\\u0e07\\u0e32\\u0e19\\u0e01\\u0e31\\u0e19\\u0e21\\u0e32\\u0e01\\u0e02\\u0e36\\u0e49\\u0e19\"},{\"id\":\"4\",\"a\":\"\\u0e44\\u0e21\\u0e48\\u0e21\\u0e35\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\"}],\"answer\":3,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-21 14:25:32.358923\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-21 14:25:32.358965\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e02\\u0e2d\\u0e07\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e16\\u0e36\\u0e07\\u0e01\\u0e35\\u0e48\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e15\\u0e48\\u0e2d 1 \\u0e15\\u0e32\\u0e23\\u0e32\\u0e07\\u0e01\\u0e34\\u0e42\\u0e25\\u0e40\\u0e21\\u0e15\\u0e23\",\"select\":[{\"id\":\"1\",\"a\":\"1,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"10,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"100,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"1,000,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"}],\"answer\":1,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-21 14:25:32.360988\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-21 14:25:32.361003\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e02\\u0e49\\u0e2d\\u0e41\\u0e15\\u0e01\\u0e15\\u0e48\\u0e32\\u0e07\\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 5G \\u0e01\\u0e31\\u0e1a 4G \\u0e04\\u0e37\\u0e2d\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 (Speed)\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 (Latency)\"},{\"id\":\"3\",\"a\":\"\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d (Connection)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":4,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-21 14:25:32.362848\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-21 14:25:32.362862\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e15\\u0e48\\u0e32\\u0e07\\u0e08\\u0e32\\u0e01 4G \\u0e43\\u0e19\\u0e40\\u0e23\\u0e37\\u0e48\\u0e2d\\u0e07\\u0e43\\u0e14\\u0e1a\\u0e49\\u0e32\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e37\\u0e14 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e2d\\u0e31\\u0e15\\u0e23\\u0e32\\u0e40\\u0e23\\u0e48\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":2,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 10:29:29.425322\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 10:29:29.425341\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e21\\u0e35\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e14\\u0e49\\u0e32\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e43\\u0e19\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\\u0e15\\u0e49\\u0e2d\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e04\\u0e19 (Human-to-Human)\"},{\"id\":\"2\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Human-to-Machine)\"},{\"id\":\"3\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Machine-to-Machine)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":1,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 10:29:29.431588\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 10:29:29.431606\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e2d\\u0e30\\u0e44\\u0e23 5G \\u0e16\\u0e36\\u0e07\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e17\\u0e32\\u0e07\\u0e14\\u0e49\\u0e32\\u0e19 IoT (Internet of Things) \\u0e44\\u0e14\\u0e49\\u0e14\\u0e35\\u0e01\\u0e27\\u0e48\\u0e32 4G\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e15\\u0e48\\u0e2d\\u0e1e\\u0e37\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"2\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e21\\u0e35\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07\\u0e15\\u0e48\\u0e33\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"3\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e43\\u0e19\\u0e22\\u0e38\\u0e04 5G \\u0e08\\u0e30\\u0e17\\u0e33\\u0e43\\u0e2b\\u0e49\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c IoT \\u0e21\\u0e35\\u0e23\\u0e32\\u0e04\\u0e32\\u0e16\\u0e39\\u0e01\\u0e41\\u0e25\\u0e30\\u0e43\\u0e0a\\u0e49\\u0e07\\u0e32\\u0e19\\u0e01\\u0e31\\u0e19\\u0e21\\u0e32\\u0e01\\u0e02\\u0e36\\u0e49\\u0e19\"},{\"id\":\"4\",\"a\":\"\\u0e44\\u0e21\\u0e48\\u0e21\\u0e35\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\"}],\"answer\":3,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 10:29:29.435889\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 10:29:29.435906\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e02\\u0e2d\\u0e07\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e16\\u0e36\\u0e07\\u0e01\\u0e35\\u0e48\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e15\\u0e48\\u0e2d 1 \\u0e15\\u0e32\\u0e23\\u0e32\\u0e07\\u0e01\\u0e34\\u0e42\\u0e25\\u0e40\\u0e21\\u0e15\\u0e23\",\"select\":[{\"id\":\"1\",\"a\":\"1,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"10,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"100,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"1,000,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"}],\"answer\":1,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 10:29:29.438032\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 10:29:29.438049\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e02\\u0e49\\u0e2d\\u0e41\\u0e15\\u0e01\\u0e15\\u0e48\\u0e32\\u0e07\\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 5G \\u0e01\\u0e31\\u0e1a 4G \\u0e04\\u0e37\\u0e2d\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 (Speed)\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 (Latency)\"},{\"id\":\"3\",\"a\":\"\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d (Connection)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":4,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 10:29:29.440160\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 10:29:29.440176\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e15\\u0e48\\u0e32\\u0e07\\u0e08\\u0e32\\u0e01 4G \\u0e43\\u0e19\\u0e40\\u0e23\\u0e37\\u0e48\\u0e2d\\u0e07\\u0e43\\u0e14\\u0e1a\\u0e49\\u0e32\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e37\\u0e14 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e2d\\u0e31\\u0e15\\u0e23\\u0e32\\u0e40\\u0e23\\u0e48\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":2,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 10:31:14.960844\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 10:31:14.960876\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e21\\u0e35\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e14\\u0e49\\u0e32\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e43\\u0e19\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\\u0e15\\u0e49\\u0e2d\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e04\\u0e19 (Human-to-Human)\"},{\"id\":\"2\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Human-to-Machine)\"},{\"id\":\"3\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Machine-to-Machine)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":1,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 10:31:14.964116\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 10:31:14.964133\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e2d\\u0e30\\u0e44\\u0e23 5G \\u0e16\\u0e36\\u0e07\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e17\\u0e32\\u0e07\\u0e14\\u0e49\\u0e32\\u0e19 IoT (Internet of Things) \\u0e44\\u0e14\\u0e49\\u0e14\\u0e35\\u0e01\\u0e27\\u0e48\\u0e32 4G\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e15\\u0e48\\u0e2d\\u0e1e\\u0e37\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"2\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e21\\u0e35\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07\\u0e15\\u0e48\\u0e33\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"3\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e43\\u0e19\\u0e22\\u0e38\\u0e04 5G \\u0e08\\u0e30\\u0e17\\u0e33\\u0e43\\u0e2b\\u0e49\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c IoT \\u0e21\\u0e35\\u0e23\\u0e32\\u0e04\\u0e32\\u0e16\\u0e39\\u0e01\\u0e41\\u0e25\\u0e30\\u0e43\\u0e0a\\u0e49\\u0e07\\u0e32\\u0e19\\u0e01\\u0e31\\u0e19\\u0e21\\u0e32\\u0e01\\u0e02\\u0e36\\u0e49\\u0e19\"},{\"id\":\"4\",\"a\":\"\\u0e44\\u0e21\\u0e48\\u0e21\\u0e35\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\"}],\"answer\":3,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 10:31:14.966657\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 10:31:14.966674\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e02\\u0e2d\\u0e07\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e16\\u0e36\\u0e07\\u0e01\\u0e35\\u0e48\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e15\\u0e48\\u0e2d 1 \\u0e15\\u0e32\\u0e23\\u0e32\\u0e07\\u0e01\\u0e34\\u0e42\\u0e25\\u0e40\\u0e21\\u0e15\\u0e23\",\"select\":[{\"id\":\"1\",\"a\":\"1,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"10,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"100,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"1,000,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"}],\"answer\":1,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 10:31:14.969245\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 10:31:14.969262\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e02\\u0e49\\u0e2d\\u0e41\\u0e15\\u0e01\\u0e15\\u0e48\\u0e32\\u0e07\\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 5G \\u0e01\\u0e31\\u0e1a 4G \\u0e04\\u0e37\\u0e2d\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 (Speed)\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 (Latency)\"},{\"id\":\"3\",\"a\":\"\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d (Connection)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":4,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 10:31:14.972635\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 10:31:14.972652\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e15\\u0e48\\u0e32\\u0e07\\u0e08\\u0e32\\u0e01 4G \\u0e43\\u0e19\\u0e40\\u0e23\\u0e37\\u0e48\\u0e2d\\u0e07\\u0e43\\u0e14\\u0e1a\\u0e49\\u0e32\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e37\\u0e14 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e2d\\u0e31\\u0e15\\u0e23\\u0e32\\u0e40\\u0e23\\u0e48\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":2,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 10:36:08.481870\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 10:36:08.481886\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e21\\u0e35\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e14\\u0e49\\u0e32\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e43\\u0e19\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\\u0e15\\u0e49\\u0e2d\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e04\\u0e19 (Human-to-Human)\"},{\"id\":\"2\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Human-to-Machine)\"},{\"id\":\"3\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Machine-to-Machine)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":1,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 10:36:08.485384\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 10:36:08.485404\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e2d\\u0e30\\u0e44\\u0e23 5G \\u0e16\\u0e36\\u0e07\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e17\\u0e32\\u0e07\\u0e14\\u0e49\\u0e32\\u0e19 IoT (Internet of Things) \\u0e44\\u0e14\\u0e49\\u0e14\\u0e35\\u0e01\\u0e27\\u0e48\\u0e32 4G\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e15\\u0e48\\u0e2d\\u0e1e\\u0e37\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"2\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e21\\u0e35\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07\\u0e15\\u0e48\\u0e33\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"3\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e43\\u0e19\\u0e22\\u0e38\\u0e04 5G \\u0e08\\u0e30\\u0e17\\u0e33\\u0e43\\u0e2b\\u0e49\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c IoT \\u0e21\\u0e35\\u0e23\\u0e32\\u0e04\\u0e32\\u0e16\\u0e39\\u0e01\\u0e41\\u0e25\\u0e30\\u0e43\\u0e0a\\u0e49\\u0e07\\u0e32\\u0e19\\u0e01\\u0e31\\u0e19\\u0e21\\u0e32\\u0e01\\u0e02\\u0e36\\u0e49\\u0e19\"},{\"id\":\"4\",\"a\":\"\\u0e44\\u0e21\\u0e48\\u0e21\\u0e35\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\"}],\"answer\":3,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 10:36:08.487891\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 10:36:08.487906\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e02\\u0e2d\\u0e07\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e16\\u0e36\\u0e07\\u0e01\\u0e35\\u0e48\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e15\\u0e48\\u0e2d 1 \\u0e15\\u0e32\\u0e23\\u0e32\\u0e07\\u0e01\\u0e34\\u0e42\\u0e25\\u0e40\\u0e21\\u0e15\\u0e23\",\"select\":[{\"id\":\"1\",\"a\":\"1,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"10,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"100,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"1,000,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"}],\"answer\":1,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 10:36:08.492546\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 10:36:08.492562\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e02\\u0e49\\u0e2d\\u0e41\\u0e15\\u0e01\\u0e15\\u0e48\\u0e32\\u0e07\\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 5G \\u0e01\\u0e31\\u0e1a 4G \\u0e04\\u0e37\\u0e2d\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 (Speed)\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 (Latency)\"},{\"id\":\"3\",\"a\":\"\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d (Connection)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":4,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 10:36:08.495708\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 10:36:08.495725\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}}]', '<p>\r\n<video controls=\"controls\" height=\"720\" preload=\"metadata\" src=\"http://127.0.0.1:8000/video/1172940894.mp4\" width=\"100%\">&nbsp;</video>\r\nหลายประเทศทั่วโลกได้สั่งห้ามเที่ยวบินจากสหราชอาณาจักร โดยหวังว่าจะสกัดการแพร่ระบาดของเชื้อไวรัสโคโรนากลายพันธุ์ที่กำลังระบาดอยู่ในบริเวณทางใต้ของประเทศอังกฤษ ขณะที่นายบอริส จอห์นสัน นายกรัฐมนตรีอังกฤษ ก็ได้ประกาศล็อกดาวน์บางพื้นที่ของประเทศ และสั่งห้ามประชาชนเดินทางออกนอกประเทศ เนื่องจากอังกฤษกำลังเผชิญหน้ากับวิกฤตไวรัส<a href=\"https://www.sanook.com/covid-19/\" target=\"_blank\">โควิด</a>-19 กลายพันธุ์ที่สามารถแพร่ระบาดได้เร็วกว่าสายเดิมมากถึง 70%&nbsp;</p>\r\n\r\n<p>เนเธอร์แลนด์เป็นประเทศแรกที่ประกาศห้ามเที่ยวบินจากอังกฤษบินเข้าประเทศ ตามมาด้วยเบลเยียม ออสเตรีย และอิตาลี ขณะที่ทางการเยอรมนีเผยว่า ทุกเที่ยวบินของสหราชอาณาจักรจะไม่ได้รับอนุญาตให้ลงจอดในประเทศเยอรมนี โดยมีผลนับตั้งแต่เที่ยงคืน ของวันอาทิตย์ที่ผ่านมา&nbsp;</p>\r\n\r\n<p>รัฐบาลแทบทุกประเทศในยุโรปต่างระบุว่า มาตรการระงับการเดินทางจากสหราชอาณาจักรจะช่วยปกป้องประชาชนของตัวเองจากเชื้อ<a href=\"https://www.sanook.com/covid-19/\" target=\"_blank\">โควิด-19</a>&nbsp;กลายพันธุ์ ในส่วนขององค์การอนามัยโลก (WHO) ก็กำลังทำงานกับรัฐบาลอังกฤษอย่างใกล้ชิด เพื่อหาทางป้องกันเชื้อไวรัสสายพันธุ์ใหม่นี้ และตรวจสอบว่าวัคซีนจะต้านทานไวรัสชนิดนี้ได้หรือไม่&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Advertisement</p>\r\n\r\n<p>ทั้งนี้ ยังมีอีกหลายประเทศที่สั่งห้ามผู้เดินทางจากสหราชอาณาจักร เช่น แคนาดา อาร์เจนตินา ชิลี โคลอมเบีย ฝรั่งเศส ซาอุดิอาราเบีย ตุรกี และอิสราเอล เป็นต้น&nbsp;</p>\r\n\r\n<p>ขณะนี้ รัฐบาลอังกฤษได้ขยับมาตรการป้องกันให้เข้มงวดมากขึ้น โดยอยู่ในระดับ 4 ส่งผลให้การเฉลิมแลองเทศกาลคริสต์มาสถูกยกเลิกไปด้วย ในการแถลง<a href=\"https://www.sanook.com/news/\" target=\"_blank\">ข่าว</a>ของนายบอริส จอห์นสัน เมื่อวันเสาร์ที่ผ่านมา เขาระบุว่า เชื้อไวรัสสายพันธุ์ใหม่นี้ สามารถแพร่ระบาดได้รวดเร็วกว่าเดิมถึง 70%&nbsp;</p>\r\n\r\n<p>เชื้อไวรัส<a href=\"http://www.sanook.com/news/8321202/\" target=\"_blank\">โควิด-19</a>&nbsp;สายพันธุ์ใหม่นี้ มีต้นกำเนิดในบริเวณทางใต้ของประเทศอังกฤษ และถูกตรวจพบในประเทศเดนมาร์ก เนเธอร์แลนด์ และออสเตรเลีย มาเรีย ฟาน เคิร์กโฮฟ หัวหน้าแผนกโรคอุบัติใหม่ องค์การอนามัยโลกเผยว่า เชื้อไวรัสดังกล่าวแพร่ระบาดในอังกฤษตอนใต้ตั้งแต่เดือนกันยายน&nbsp;</p>\r\n\r\n<p>การประกาศล็อกดาวน์ส่งผลให้ประชาชนชาวอังกฤษออกมาแสดงความไม่พอใจกับมาตรการของรัฐบาลในครั้งนี้ โดยให้เหตุผลว่า การสั่งห้ามไม่ให้เฉลิมฉลองคริสต์มาสเป็นสิ่งที่โหดร้าย</p>', 1, 'developer', 'developer', '2020-12-21 07:25:32', '2020-12-24 04:22:37'),
(20, 3, 'mmmmmsdsdsd', '[{\"section\":\"5G \\u0e15\\u0e48\\u0e32\\u0e07\\u0e08\\u0e32\\u0e01 4G \\u0e43\\u0e19\\u0e40\\u0e23\\u0e37\\u0e48\\u0e2d\\u0e07\\u0e43\\u0e14\\u0e1a\\u0e49\\u0e32\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e37\\u0e14 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e2d\\u0e31\\u0e15\\u0e23\\u0e32\\u0e40\\u0e23\\u0e48\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":2,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 11:09:39.670510\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 11:09:39.670529\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e21\\u0e35\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e14\\u0e49\\u0e32\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e43\\u0e19\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\\u0e15\\u0e49\\u0e2d\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e04\\u0e19 (Human-to-Human)\"},{\"id\":\"2\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Human-to-Machine)\"},{\"id\":\"3\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Machine-to-Machine)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":1,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 11:09:39.678466\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 11:09:39.678483\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e2d\\u0e30\\u0e44\\u0e23 5G \\u0e16\\u0e36\\u0e07\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e17\\u0e32\\u0e07\\u0e14\\u0e49\\u0e32\\u0e19 IoT (Internet of Things) \\u0e44\\u0e14\\u0e49\\u0e14\\u0e35\\u0e01\\u0e27\\u0e48\\u0e32 4G\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e15\\u0e48\\u0e2d\\u0e1e\\u0e37\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"2\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e21\\u0e35\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07\\u0e15\\u0e48\\u0e33\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"3\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e43\\u0e19\\u0e22\\u0e38\\u0e04 5G \\u0e08\\u0e30\\u0e17\\u0e33\\u0e43\\u0e2b\\u0e49\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c IoT \\u0e21\\u0e35\\u0e23\\u0e32\\u0e04\\u0e32\\u0e16\\u0e39\\u0e01\\u0e41\\u0e25\\u0e30\\u0e43\\u0e0a\\u0e49\\u0e07\\u0e32\\u0e19\\u0e01\\u0e31\\u0e19\\u0e21\\u0e32\\u0e01\\u0e02\\u0e36\\u0e49\\u0e19\"},{\"id\":\"4\",\"a\":\"\\u0e44\\u0e21\\u0e48\\u0e21\\u0e35\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\"}],\"answer\":3,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 11:09:39.682844\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 11:09:39.682861\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e02\\u0e2d\\u0e07\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e16\\u0e36\\u0e07\\u0e01\\u0e35\\u0e48\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e15\\u0e48\\u0e2d 1 \\u0e15\\u0e32\\u0e23\\u0e32\\u0e07\\u0e01\\u0e34\\u0e42\\u0e25\\u0e40\\u0e21\\u0e15\\u0e23\",\"select\":[{\"id\":\"1\",\"a\":\"1,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"10,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"100,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"1,000,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"}],\"answer\":1,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 11:09:39.684858\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 11:09:39.684875\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e02\\u0e49\\u0e2d\\u0e41\\u0e15\\u0e01\\u0e15\\u0e48\\u0e32\\u0e07\\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 5G \\u0e01\\u0e31\\u0e1a 4G \\u0e04\\u0e37\\u0e2d\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 (Speed)\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 (Latency)\"},{\"id\":\"3\",\"a\":\"\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d (Connection)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":4,\"active\":null,\"e_status\":1,\"created_at\":{\"date\":\"2020-12-22 11:09:39.688526\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2020-12-22 11:09:39.688550\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}}]', '<h2>สุดท้ายไม่มีอะไรในกอไผ่ใดๆ วิจารณ์แซ่ดว่อนเน็ตวิวาทะโต้เดือด หมอชญานนท์ - หมอหนู อนุทิน เหตุผลเดียวที่ทำให้ต้องลบโพสต์</h2>\r\n\r\n<p>จากกรณี นายแพทย์&nbsp;ชญานนท์&nbsp;บุญธีระเลิศ แชร์โพสต์ นายอนุทิน&nbsp;ชาญวีรกูล รองนายกรัฐมนตรี และรัฐมนตรีว่าการกระทรวงสาธารณสุข (สธ.) ซึ่งเคลื่อนไหวผ่านเฟซบุ๊กหลังพบการแพร่ระบาดของโรคติดเชื้อไวรัสโคโรน่า 2019 หรือ โรคโควิด-19&nbsp;(COVID-19) ที่จังหวัดสมุทรสาคร เป็นภาพบุคลากรทางการแพทย์&nbsp;&quot;สาสุขพร้อมครับ จะทำทุกอย่างให้ทุกคนปลอดภัย Comrades. Let&rsquo;s roll. Time for another fight&quot;&nbsp;แล้วระบุข้อความว่า&nbsp;&quot;Covid โรคกระจอก โถ จะทำทุกอย่างให้ทุกคนปลอดภัย&quot;</p>', 1, 'developer', 'developer', '2020-12-22 04:09:39', '2020-12-22 04:09:39'),
(21, 4, 'test1', '[{\"section\":\"5G \\u0e15\\u0e48\\u0e32\\u0e07\\u0e08\\u0e32\\u0e01 4G \\u0e43\\u0e19\\u0e40\\u0e23\\u0e37\\u0e48\\u0e2d\\u0e07\\u0e43\\u0e14\\u0e1a\\u0e49\\u0e32\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e37\\u0e14 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e2d\\u0e31\\u0e15\\u0e23\\u0e32\\u0e40\\u0e23\\u0e48\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":2,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2021-01-04 10:13:23.725472\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2021-01-04 10:13:23.725492\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e21\\u0e35\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e14\\u0e49\\u0e32\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e43\\u0e19\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\\u0e15\\u0e49\\u0e2d\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e04\\u0e19 (Human-to-Human)\"},{\"id\":\"2\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Human-to-Machine)\"},{\"id\":\"3\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Machine-to-Machine)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":1,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2021-01-04 10:13:23.728350\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2021-01-04 10:13:23.728368\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e2d\\u0e30\\u0e44\\u0e23 5G \\u0e16\\u0e36\\u0e07\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e17\\u0e32\\u0e07\\u0e14\\u0e49\\u0e32\\u0e19 IoT (Internet of Things) \\u0e44\\u0e14\\u0e49\\u0e14\\u0e35\\u0e01\\u0e27\\u0e48\\u0e32 4G\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e15\\u0e48\\u0e2d\\u0e1e\\u0e37\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"2\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e21\\u0e35\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07\\u0e15\\u0e48\\u0e33\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"3\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e43\\u0e19\\u0e22\\u0e38\\u0e04 5G \\u0e08\\u0e30\\u0e17\\u0e33\\u0e43\\u0e2b\\u0e49\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c IoT \\u0e21\\u0e35\\u0e23\\u0e32\\u0e04\\u0e32\\u0e16\\u0e39\\u0e01\\u0e41\\u0e25\\u0e30\\u0e43\\u0e0a\\u0e49\\u0e07\\u0e32\\u0e19\\u0e01\\u0e31\\u0e19\\u0e21\\u0e32\\u0e01\\u0e02\\u0e36\\u0e49\\u0e19\"},{\"id\":\"4\",\"a\":\"\\u0e44\\u0e21\\u0e48\\u0e21\\u0e35\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\"}],\"answer\":3,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2021-01-04 10:13:23.734302\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2021-01-04 10:13:23.734323\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e02\\u0e2d\\u0e07\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e16\\u0e36\\u0e07\\u0e01\\u0e35\\u0e48\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e15\\u0e48\\u0e2d 1 \\u0e15\\u0e32\\u0e23\\u0e32\\u0e07\\u0e01\\u0e34\\u0e42\\u0e25\\u0e40\\u0e21\\u0e15\\u0e23\",\"select\":[{\"id\":\"1\",\"a\":\"1,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"10,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"100,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"1,000,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"}],\"answer\":1,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2021-01-04 10:13:23.736487\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2021-01-04 10:13:23.736505\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e02\\u0e49\\u0e2d\\u0e41\\u0e15\\u0e01\\u0e15\\u0e48\\u0e32\\u0e07\\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 5G \\u0e01\\u0e31\\u0e1a 4G \\u0e04\\u0e37\\u0e2d\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 (Speed)\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 (Latency)\"},{\"id\":\"3\",\"a\":\"\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d (Connection)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":4,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2021-01-04 10:13:23.738509\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2021-01-04 10:13:23.738526\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}}]', '<p>gbfbfgbfgbfbfgb</p>', 1, 'developer', 'developer', '2021-01-04 03:13:23', '2021-01-04 03:13:23');
INSERT INTO `subject_examination` (`id_sexa`, `id_sub`, `name_title`, `json_sub`, `detail_sub`, `status`, `updated_by`, `created_by`, `created_at`, `updated_at`) VALUES
(22, 4, 'test2', '[{\"section\":\"5G \\u0e15\\u0e48\\u0e32\\u0e07\\u0e08\\u0e32\\u0e01 4G \\u0e43\\u0e19\\u0e40\\u0e23\\u0e37\\u0e48\\u0e2d\\u0e07\\u0e43\\u0e14\\u0e1a\\u0e49\\u0e32\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e37\\u0e14 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 \\u0e2d\\u0e31\\u0e15\\u0e23\\u0e32\\u0e40\\u0e23\\u0e48\\u0e07 \\u0e01\\u0e32\\u0e23\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":2,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2021-01-04 10:13:46.049058\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2021-01-04 10:13:46.049076\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e21\\u0e35\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e14\\u0e49\\u0e32\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e43\\u0e19\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\\u0e15\\u0e49\\u0e2d\\u0e07\",\"select\":[{\"id\":\"1\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e04\\u0e19 (Human-to-Human)\"},{\"id\":\"2\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e04\\u0e19 \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Human-to-Machine)\"},{\"id\":\"3\",\"a\":\"5G \\u0e43\\u0e2b\\u0e49\\u0e1b\\u0e23\\u0e30\\u0e42\\u0e22\\u0e0a\\u0e19\\u0e4c\\u0e43\\u0e19\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e37\\u0e48\\u0e2d\\u0e2a\\u0e32\\u0e23 \\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e01\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c (Machine-to-Machine)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":1,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2021-01-04 10:13:46.056922\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2021-01-04 10:13:46.056943\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e2d\\u0e30\\u0e44\\u0e23 5G \\u0e16\\u0e36\\u0e07\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e17\\u0e32\\u0e07\\u0e14\\u0e49\\u0e32\\u0e19 IoT (Internet of Things) \\u0e44\\u0e14\\u0e49\\u0e14\\u0e35\\u0e01\\u0e27\\u0e48\\u0e32 4G\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e15\\u0e48\\u0e2d\\u0e1e\\u0e37\\u0e49\\u0e19\\u0e17\\u0e35\\u0e48\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"2\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30 5G \\u0e21\\u0e35\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07\\u0e15\\u0e48\\u0e33\\u0e01\\u0e27\\u0e48\\u0e32 4G\"},{\"id\":\"3\",\"a\":\"\\u0e40\\u0e1e\\u0e23\\u0e32\\u0e30\\u0e43\\u0e19\\u0e22\\u0e38\\u0e04 5G \\u0e08\\u0e30\\u0e17\\u0e33\\u0e43\\u0e2b\\u0e49\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c IoT \\u0e21\\u0e35\\u0e23\\u0e32\\u0e04\\u0e32\\u0e16\\u0e39\\u0e01\\u0e41\\u0e25\\u0e30\\u0e43\\u0e0a\\u0e49\\u0e07\\u0e32\\u0e19\\u0e01\\u0e31\\u0e19\\u0e21\\u0e32\\u0e01\\u0e02\\u0e36\\u0e49\\u0e19\"},{\"id\":\"4\",\"a\":\"\\u0e44\\u0e21\\u0e48\\u0e21\\u0e35\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\\u0e16\\u0e39\\u0e01\"}],\"answer\":3,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2021-01-04 10:13:46.059520\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2021-01-04 10:13:46.059540\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"5G \\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e23\\u0e2d\\u0e07\\u0e23\\u0e31\\u0e1a\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d\\u0e02\\u0e2d\\u0e07\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e44\\u0e14\\u0e49\\u0e21\\u0e32\\u0e01\\u0e16\\u0e36\\u0e07\\u0e01\\u0e35\\u0e48\\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c \\u0e15\\u0e48\\u0e2d 1 \\u0e15\\u0e32\\u0e23\\u0e32\\u0e07\\u0e01\\u0e34\\u0e42\\u0e25\\u0e40\\u0e21\\u0e15\\u0e23\",\"select\":[{\"id\":\"1\",\"a\":\"1,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"2\",\"a\":\"10,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"3\",\"a\":\"100,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"},{\"id\":\"4\",\"a\":\"1,000,000 \\u0e2d\\u0e38\\u0e1b\\u0e01\\u0e23\\u0e13\\u0e4c\"}],\"answer\":1,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2021-01-04 10:13:46.061890\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2021-01-04 10:13:46.061910\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}},{\"section\":\"\\u0e02\\u0e49\\u0e2d\\u0e41\\u0e15\\u0e01\\u0e15\\u0e48\\u0e32\\u0e07\\u0e23\\u0e30\\u0e2b\\u0e27\\u0e48\\u0e32\\u0e07 5G \\u0e01\\u0e31\\u0e1a 4G \\u0e04\\u0e37\\u0e2d\\u0e02\\u0e49\\u0e2d\\u0e43\\u0e14\",\"select\":[{\"id\":\"1\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e23\\u0e47\\u0e27 (Speed)\"},{\"id\":\"2\",\"a\":\"\\u0e04\\u0e27\\u0e32\\u0e21\\u0e2b\\u0e19\\u0e48\\u0e27\\u0e07 (Latency)\"},{\"id\":\"3\",\"a\":\"\\u0e01\\u0e32\\u0e23\\u0e40\\u0e0a\\u0e37\\u0e48\\u0e2d\\u0e21\\u0e15\\u0e48\\u0e2d (Connection)\"},{\"id\":\"4\",\"a\":\"\\u0e16\\u0e39\\u0e01\\u0e17\\u0e38\\u0e01\\u0e02\\u0e49\\u0e2d\"}],\"answer\":4,\"active\":null,\"e_status\":3,\"created_at\":{\"date\":\"2021-01-04 10:13:46.064519\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"},\"updated_at\":{\"date\":\"2021-01-04 10:13:46.064536\",\"timezone_type\":3,\"timezone\":\"Asia\\/Bangkok\"}}]', '<p>bhfghbfgbgfb</p>', 1, 'developer', 'developer', '2021-01-04 03:13:46', '2021-01-04 03:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `id_card`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `active`, `created_at`, `updated_at`) VALUES
(1, 'developer', NULL, NULL, NULL, NULL, '$2y$10$y9j3JOUqHa46P/Gkg1NGIeyAHkWtOpeimC8XcexD6hNnh1CvTSp7q', NULL, NULL, NULL, NULL),
(2, '00000', '00000', NULL, NULL, NULL, '$2y$10$iDk3UHLnOcJyjM5.PrIa9uo3Bj3rqRZHJq44vbKEBZyCQ7kROZ3XO', NULL, 1, NULL, NULL),
(3, '51002', '51002', NULL, NULL, NULL, '$2y$10$rpDi/9ZPrYAUwUUBazwfD.fTPzAsyN5qp4JDy6lU/VZsm7nRs.RTO', NULL, 1, NULL, NULL),
(4, '51003', '51003', NULL, NULL, NULL, '$2y$10$MjED.W25ZJkVqVP/OMNuX.4lmGrXBaTuNsQ9dB2ECQXkWCucNHfCK', NULL, 1, NULL, NULL),
(5, '51006', '51006', NULL, NULL, NULL, '$2y$10$88W97p.tv.faBtRNjF8UxusjOd9FD7NYjKn4niRvOzDneTnvshiSK', NULL, 1, NULL, '2020-09-23 13:24:05'),
(6, '51009', '51009', NULL, NULL, NULL, '$2y$10$7eFxl6karnBfHOKUwlLgWu50YHtKhEaCWiJQAVDzm51p.7w3EjFEi', NULL, 1, NULL, NULL),
(7, '51011', '51011', NULL, NULL, NULL, '$2y$10$a4kDm/J9Iip7DyFf/NoSruvkC55GpE3Y9M31T0QEsqoeutjjx/EOO', NULL, 1, NULL, NULL),
(8, '51012', '51012', NULL, NULL, NULL, '$2y$10$2F1xqq3ao67E8ssPn8uc9OzuBeBsgFMUHvfVCUQ34U9nDY9.qTCye', NULL, 1, NULL, NULL),
(9, '51014', '51014', NULL, NULL, NULL, '$2y$10$7hBpxVnffKyb4FT.fIBbmOZ21PYcg4LxAcyNlB4mLui6tPXn./yIe', NULL, 1, NULL, NULL),
(10, '51018', '51018', NULL, NULL, NULL, '$2y$10$PnSmySJ5PSrzldscCZfZ.u8QZKWS8/uXD3ALG/PhWqZRHSB0RIkJK', NULL, 1, NULL, NULL),
(11, '51020', '51020', NULL, NULL, NULL, '$2y$10$I2Le3p0oR4wYneiRt2QBzeXBVyjgnup3i6P1dGKO/skOzmUmqvZc.', NULL, 1, NULL, NULL),
(12, '51021', '51021', NULL, NULL, NULL, '$2y$10$k68fz6cUkh1Q0yWRuhA80exSy4W0.yQ1DmhQdZJqoRGE/CDK/ynay', NULL, 1, NULL, NULL),
(13, '51023', '51023', NULL, NULL, NULL, '$2y$10$CPuzr2Whnc.6ScHZexSWNeFvarikZaAYk9ldNauBHr1laXunAAYei', NULL, 1, NULL, NULL),
(14, '51025', '51025', NULL, NULL, NULL, '$2y$10$3DAPMattVO9zKbdk9YSJW.iakF5Xi4JIU2tggAu7czitVl0vtulKm', NULL, 1, NULL, NULL),
(15, '51030', '51030', NULL, NULL, NULL, '$2y$10$Uo3GXz2hXWDxIh/UOTzt9.GiWUvs54fW11mAvkmiW5Ee1iBlBBsuS', NULL, 1, NULL, NULL),
(16, '51031', '51031', NULL, NULL, NULL, '$2y$10$U8LMBQp/Tls35UmKYIPizuJzx9eerInSXAojW2ep1LnD8UWLoJws.', NULL, 1, NULL, NULL),
(17, '51032', '51032', NULL, NULL, NULL, '$2y$10$WjJZnDAFZ3xfSgU6WafcS.HJI0Y2SJ5nVxoXUbtRbnrLSkzly9fnO', NULL, 1, NULL, NULL),
(18, '51033', '51033', NULL, NULL, NULL, '$2y$10$sJqH8GlTo6xgrauduYZW6utIgBqhXL.g9Q1vu/Z1nI.asRKNk.koe', NULL, 1, NULL, NULL),
(19, '51038', '51038', NULL, NULL, NULL, '$2y$10$L7ptQZ46bx.liX/Yz5P.6uL..4D6qgyQPozWO5LnnjkesQVJnzllO', NULL, 1, NULL, NULL),
(20, '51040', '51040', NULL, NULL, NULL, '$2y$10$R9Zn9MOlcoG3kifjElcKIOla1nFJsOjw6suDwjsUnK1QL7CoNOFo.', NULL, 1, NULL, NULL),
(21, '51042', '51042', NULL, NULL, NULL, '$2y$10$yr0y2VD2WEw0/4WK/049v.6MfjRs1VKoCjiaaQnZNbP9e1kguDhmW', NULL, 1, NULL, NULL),
(22, '51043', '51043', NULL, NULL, NULL, '$2y$10$jHRaaiGSUemkpzb3y.Li5OquHHzfRYgw/sBvsN/qX5NljTdbrgnUi', NULL, 1, NULL, NULL),
(23, '51048', '51048', NULL, NULL, NULL, '$2y$10$bCUXPUbiXOsN3A/i7mHDLOjqfPl5zs.pLhffJJIlqSxJD8Qh8QcJq', NULL, 1, NULL, NULL),
(24, '51049', '51049', NULL, NULL, NULL, '$2y$10$d3k5IhBFeDSMtCtZ3A74ZuTHGiqwpkdyDXZP9VQqnjtDowkKr3WBG', NULL, 1, NULL, NULL),
(25, '51053', '51053', NULL, NULL, NULL, '$2y$10$pM7lFZr.Vdtagb18C3wNW.5nsP1kfbRQegCJkhFG1GGr3l6qOsnVm', NULL, 1, NULL, NULL),
(26, '51059', '51059', NULL, NULL, NULL, '$2y$10$dQctOHS5UIfZ2.Y8jWZKaeiFGGTKyQ/xppI1Qf1Z1wZMmvoxB.hJW', NULL, 1, NULL, NULL),
(27, '51062', '51062', NULL, NULL, NULL, '$2y$10$qnnoZz1Un2nyXWPOV7qJve7fZRewt7EngxbqoLDFkEfamxWlXZQU.', NULL, 1, NULL, NULL),
(28, '51064', '51064', NULL, NULL, NULL, '$2y$10$THeXedQq9rqPBqrVDlsFbOV7E4JgN.aQ8dubgcCVyeLnHD0ZZr2uO', NULL, 1, NULL, NULL),
(29, '51085', '51085', NULL, NULL, NULL, '$2y$10$TUA4oBWw1Sg3QHYWx4CGFu3X3NGiDGQA76aFdBwQQt.OKLr540eIW', NULL, 1, NULL, NULL),
(30, '51113', '51113', NULL, NULL, NULL, '$2y$10$y1NMI1xLUV4Pvt47Sn7bqOGfmEK.t1vmvP9janknEdKAUlvDEk.16', NULL, 1, NULL, NULL),
(31, '51115', '51115', NULL, NULL, NULL, '$2y$10$BHH23ROyh6E1kvi/RUzy4Oq2FBdO17tor.2r3AhR5XmV58Hm/sSt6', NULL, 1, NULL, NULL),
(32, '51140', '51140', NULL, NULL, NULL, '$2y$10$MfjM/mFRM6mK7q/d9lCGkOLhcu7f0u5PYUtz/YLvSuR.JNMJtSnyO', NULL, 1, NULL, NULL),
(33, '51150', '51150', NULL, NULL, NULL, '$2y$10$rqUoCfe7cl1JkzDyk8ioL.oaD6aS3IqoYEbWN2DmATeWqzVCAnnUO', NULL, 1, NULL, NULL),
(34, '51156', '51156', NULL, NULL, NULL, '$2y$10$pJUHPLI37R43lOo3hwnVluWExnZMW8bP2pkezVbDbs7du3l8H4ktS', NULL, 1, NULL, NULL),
(35, '51158', '51158', NULL, NULL, NULL, '$2y$10$Q2uhedE2tLVoJG6PJT/brut6GYU2OoQH1YpEU0hDBvYIoHppsNk6C', NULL, 1, NULL, NULL),
(37, '51168', '51168', NULL, NULL, NULL, '$2y$10$KuPZNkNNfD8e8kM0GDKhRuwElTw24gKEmcAeQwduL09AV78C2gGZm', NULL, 1, NULL, NULL),
(38, '51170', '51170', NULL, NULL, NULL, '$2y$10$ZXJtW4EIxgkuxg9eOMmqDeoZC.esXes0hAp.JtmJV7O/kkjP40OGm', NULL, 1, NULL, NULL),
(39, '51171', '51171', NULL, NULL, NULL, '$2y$10$jYtspTz4hQe.zlv80puO9Of1pP9UhBrFJMx4OcpdEWLfW4hdvUiQC', NULL, 1, NULL, NULL),
(40, '51172', '51172', NULL, NULL, NULL, '$2y$10$VMHXSLm2WScXfjykkBqf1OTqZ.TevGOeM.y5r.Zq3NwnevbyazrNq', NULL, 1, NULL, NULL),
(41, '51186', '51186', NULL, NULL, NULL, '$2y$10$9J6emSpvtZxWx5f7Pl4SlOH8Fo8fWsmErGslrzbcws/hjFIP5n//O', NULL, 1, NULL, NULL),
(42, '51187', '51187', NULL, NULL, NULL, '$2y$10$afgZEUApCYMhzP4AxfWAkeIJfZ.Q7bFLilZ/G5oq3dquhWkJeyAhq', NULL, 1, NULL, NULL),
(43, '51189', '51189', NULL, NULL, NULL, '$2y$10$uPeJe.A9Q6v55yYL..KSXuPXpBEtVWjprNbaX7CmHAwute53FMrK.', NULL, 1, NULL, NULL),
(44, '51194', '51194', NULL, NULL, NULL, '$2y$10$pZjKoLmA1QCiJTZOPpZaCOPYZXvN3idVz6juMe4dzT/lZsdSyt8QC', NULL, 1, NULL, NULL),
(45, '51200', '51200', NULL, NULL, NULL, '$2y$10$VGpfQfxXnFJcS4su7Z4W6OZE9345kqw9xfW0d8uHAoSFkYXSqBeve', NULL, 1, NULL, NULL),
(46, '51201', '51201', NULL, NULL, NULL, '$2y$10$xsrRdtnBDzU52b5iWCse4ujWgItZGDsqUus6FDPHNl6L05p0PM0va', NULL, 1, NULL, NULL),
(47, '51208', '51208', NULL, NULL, NULL, '$2y$10$itJhGVudnZfNd2MC2HEWx.KEKvYnyl/NdAxkKH2gFarLyAaCf7yES', NULL, 1, '2020-09-28 20:33:46', NULL),
(48, '51214', '51214', NULL, NULL, NULL, '$2y$10$.Krb5t8sl4H06to3pflo5eRUl7FL7y0LlYhTHjf1wmNswY/1peyRG', NULL, 1, NULL, NULL),
(49, '51215', '51215', NULL, NULL, NULL, '$2y$10$Z5.f.v.XxOSUQGzRFepEpOgFnH2wUGapo8Lh6KZnogq9Q5G1/lKt2', NULL, 1, NULL, NULL),
(50, '51217', '51217', NULL, NULL, NULL, '$2y$10$olmdnscFCSjZO/oQ9T9li.iopauNNpRzB5jaKISop9o.ckMSPc6tC', NULL, 1, NULL, NULL),
(51, '51218', '51218', NULL, NULL, NULL, '$2y$10$ahbeMKAq7.13lfiQ1Ybij.3ngR8KnMV.O6O6X2pA0QT7M9qA6D5jm', NULL, 1, NULL, NULL),
(52, '51222', '51222', NULL, NULL, NULL, '$2y$10$4O4fg.RTWhzmSczH4ckKee46lvcKIRgAfts7CPRTeetXro/9GwoVW', NULL, 1, NULL, NULL),
(53, '51228', '51228', NULL, NULL, NULL, '$2y$10$zKx1lfReFd41IYeE52Mz.u.S98kh2ZU8z.XdfdWjJCjCMptkq4PkS', NULL, 1, NULL, NULL),
(54, '51234', '51234', NULL, NULL, NULL, '$2y$10$UvQeJrikaFPZZhhOIEQ/duAWoSlPuZO.t7lGYoSbSJGjQkTvoTlPu', NULL, 1, NULL, NULL),
(55, '51235', '51235', NULL, NULL, NULL, '$2y$10$BwpjIJ53bVy3.MPBeXCPze4sDNi.umY0RaM1hljFeKf.E8GLUpu8S', NULL, 1, NULL, NULL),
(56, '51237', '51237', NULL, NULL, NULL, '$2y$10$/fCfXgCqIio/grqwxbmo4uJ9Cp1LLkOp6PPI5Sy9WpY6P2LTx5fxy', NULL, 1, NULL, NULL),
(57, '51239', '51239', NULL, NULL, NULL, '$2y$10$T0ROdXb8tpfGa1pFzQlN0umZrdTOmWEEjOPgR72rcELpb36zcmFNu', NULL, 1, NULL, NULL),
(58, '51240', '51240', NULL, NULL, NULL, '$2y$10$f5vYhU5p/jXSrX3Ttl5vu.QWjUuXvspVz0QdGxjK7eqLsVbwV.H3a', NULL, 1, NULL, NULL),
(59, '51241', '51241', NULL, NULL, NULL, '$2y$10$wpfBx7gq7LQv7jZv6hZmKOPqU/WT.o5inPcquCxIK9Md5FHlaSzn.', NULL, 1, NULL, NULL),
(60, '51242', '51242', NULL, NULL, NULL, '$2y$10$Jv5p8Cp6.Zq1W44L/0HUh.n5ExT6UawQ4j47Dm5o5d/Gj3Rp0qM42', NULL, 1, NULL, NULL),
(61, '51248', '51248', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(62, '51255', '51255', NULL, NULL, NULL, '$2y$10$XCUNtup1UmzB0sMbXHkUBuNY//mvPGNojY0KibClya7y0Y8DecvQK', NULL, 1, NULL, NULL),
(63, '51257', '51257', NULL, NULL, NULL, '$2y$10$w3Y9899RcneWbDj8.dNlper8k546qiXxJOV8znXtqng1rNPtiSUDq', NULL, 1, NULL, NULL),
(64, '51259', '51259', NULL, NULL, NULL, '$2y$10$gs4AGpY5xjOLZ/vArsfFV.00zh4Y09GkUGAkV.yDqazra66Vx8yFu', NULL, 1, NULL, NULL),
(65, '51262', '51262', NULL, NULL, NULL, '$2y$10$p1CNofpEYBrTqYMHkCHg.ehzI7EzyTwVkqWD.gTr6FJ2NRMZdqQGe', NULL, 1, NULL, NULL),
(66, '51266', '51266', NULL, NULL, NULL, '$2y$10$aBJrwMIMQZPoqQ9nexpQOukm3mMI7J510sl97CLw/1aElSk/vGuTi', NULL, 1, NULL, NULL),
(67, '51270', '51270', NULL, NULL, NULL, '$2y$10$m5x3XVLtWcjU8elLWqRWpuJZEWWB.JwR7/2.1/tud2JL6xjavoUWG', NULL, 1, NULL, NULL),
(68, '51273', '51273', NULL, NULL, NULL, '$2y$10$XKhIU0wkR8.iHL8uSylileTY8WNE3IbVJT1W33G/OE0cjzoPzGt.C', NULL, 1, NULL, NULL),
(69, '51274', '51274', NULL, NULL, NULL, '$2y$10$AH4/VH52rlwcY5A6naA5IeNZ8WYSD44hIO7G2kOznBlNfxkA6Czk.', NULL, 1, NULL, NULL),
(70, '51275', '51275', NULL, NULL, NULL, '$2y$10$lrQ6lnTJlFfUnvbI9He5duzCt3ElI2YYw5iYDEka2hz8Z7vVv8X/m', NULL, 1, NULL, NULL),
(71, '51277', '51277', NULL, NULL, NULL, '$2y$10$GucnYvyzMfPc8DkrnwUMVuAYCb3MoTNjO6IDntaML14tN7fcEtBlm', NULL, 1, NULL, NULL),
(72, '51282', '51282', NULL, NULL, NULL, '$2y$10$xCTRzWLZ0VQFaF31kojzhuWHoskLr1Azuu.vDgHep7B2hmKWCUXmK', NULL, 1, NULL, NULL),
(73, '51283', '51283', NULL, NULL, NULL, '$2y$10$ZZGeN5H5XoyxVWi3pNwYKO1RRCh6W3RWXBreFgzxTYfjFMItyCGeG', NULL, 1, NULL, NULL),
(74, '51287', '51287', NULL, NULL, NULL, '$2y$10$CWuqjH22B.JJHUY.K0TeFOpV/OiFWkcvFOG74w961cMdNYMi0vm/q', NULL, 1, NULL, NULL),
(75, '51288', '51288', NULL, NULL, NULL, '$2y$10$kd56QCNTxNnM6D9vtBiOjurT7YD4lm7tea8BlhXIlGEYSdaP6PQ6a', NULL, 1, NULL, NULL),
(76, '51289', '51289', NULL, NULL, NULL, '$2y$10$VCwq5.UKFP.m.8bHfnPnfOmdUYfKN5JVgffnuIT3SPa8Kh5.RgJHy', NULL, 1, NULL, NULL),
(77, '51292', '51292', NULL, NULL, NULL, '$2y$10$k/XyttvMOSlTKie/2nZFLeQtvbI25yasyZI3ti9Klf7G8PZctQ4eS', NULL, 1, NULL, NULL),
(78, '51293', '51293', NULL, NULL, NULL, '$2y$10$WxMf32zF77pHnjmphw4Cyu6Snqxjs5cX5gHRpWpuWQS6tHV1qxT.m', NULL, 1, NULL, NULL),
(79, '51294', '51294', NULL, NULL, NULL, '$2y$10$L/vzA70GteLrVoPzbPjoROZo6uxNSOaF1RdPD1mt/by4v.okKkx86', NULL, 1, NULL, NULL),
(80, '51295', '51295', NULL, NULL, NULL, '$2y$10$GLj6ncL8ubNSuTR7aiQG/uEwfTYUwd9qbawKsdo8HFYGsulGV7eqC', NULL, 1, NULL, '2020-09-14 14:36:19'),
(81, '51299', '51299', NULL, NULL, NULL, '$2y$10$Idx.rpV9oiP8.NFLzekTTeCfrLe.kIL0OflF0VnUq48E3sDEbS/r.', NULL, 1, NULL, NULL),
(82, '51300', '51300', NULL, NULL, NULL, '$2y$10$q/OWbKk1D/6fJDfvCNWksu65aYSuCDkSUEslCw.jz1ApHmuMeJUtG', NULL, 1, NULL, NULL),
(83, '51301', '51301', NULL, NULL, NULL, '$2y$10$MZyuHajpGU/3.oDrOInbcupFcO5L.gvdK0UxGKEZrMh1R0WQut15K', NULL, 1, NULL, NULL),
(84, '51304', '51304', NULL, NULL, NULL, '$2y$10$UDUemtRJGh8S8RlZfCz3CeFEMkGYOeK5jUxpe3VI5Bk5iSklGlBau', NULL, 1, NULL, NULL),
(85, '51306', '51306', NULL, NULL, NULL, '$2y$10$We7LhcVaJr.tTaDveuAyW..Q5utJMG0tT67TOUkX2u985cGa/BITC', NULL, 1, NULL, NULL),
(86, '21002', '21002', NULL, NULL, NULL, '$2y$10$hSvywZVgIiKLItfBUhmKluGOnfVNvktqD8s4yEcHdv8i48rcHUo92', NULL, 1, NULL, NULL),
(87, '21004', '21004', NULL, NULL, NULL, '$2y$10$eXz88CB3sqK2yhytFC.PNuCvtsO0FeYCKyU5V4Q7snvz2zwZ6OohS', NULL, 1, NULL, NULL),
(88, '21007', '21007', NULL, NULL, NULL, '$2y$10$C.yuH.Psn1MeseTc9L20futSge.C8JUDFzoEctRT2xv.zrD/KIJTm', NULL, 1, NULL, NULL),
(89, '21015', '21015', NULL, NULL, NULL, '$2y$10$Y9wRPasEr9LolcMIzIy3neJnNnjvp3J0wP7q0YbYsWUh9l2ALO.YW', NULL, 1, NULL, NULL),
(90, '21018', '21018', NULL, NULL, NULL, '$2y$10$RsdFYTXoGgprA3tpJuoAn.QgSKJpxLaBCz5yILLdMs9WPPMMB2IYG', NULL, 1, NULL, NULL),
(91, '21035', '21035', NULL, NULL, NULL, '$2y$10$W4Ww1Rka4HbbvRbyPKo/weCSOUmeEJzTIyw1UkbAeESikJK0wOfq6', NULL, 1, NULL, NULL),
(92, '21036', '21036', NULL, NULL, NULL, '$2y$10$yzuUZCVLTFMfNvcM1OoONuTM1.1P9/nHSieSf.oK1xeC5n/ePUcxe', NULL, 1, NULL, NULL),
(93, '21037', '21037', NULL, NULL, NULL, '$2y$10$uesNI.Cz9L/4glPLMy86HOhMR74.OCMLxOZQUkOp3ATT/iHpYrqzu', NULL, 1, NULL, NULL),
(94, '21038', '21038', NULL, NULL, NULL, '$2y$10$LXop2eK3y8sGhVzKSdf.VOi0qHm8KgtOB6t577mivWnxWAMUVn3B2', NULL, 1, NULL, NULL),
(95, '21039', '21039', NULL, NULL, NULL, '$2y$10$M6LZcgSb125eJXMLUmhunOlgSIEBkT8/0GDGxH3P4wKfGCvdLiTFm', NULL, 1, NULL, NULL),
(96, '21041', '21041', NULL, NULL, NULL, '$2y$10$lGyVB2v02qPIW6G.bdIz6eGY5f8aZUiCcaDAW.Xq3LzSIoO.Pjv82', NULL, 1, NULL, NULL),
(97, '21042', '21042', NULL, NULL, NULL, '$2y$10$oc5mO/ggXY0g.LLUrLwCw.5x9B.xEnU.jjd9IOxidcH/ckpysEXAy', NULL, 1, NULL, NULL),
(98, '21043', '21043', NULL, NULL, NULL, '$2y$10$91OGdoVLluJQEtx4DJRRSOvBXvcTqlLc1unz9AGhWjNldoxVwK6gG', NULL, 1, NULL, NULL),
(99, '21044', '21044', NULL, NULL, NULL, '$2y$10$Nu/hH3OV3juZTh5HX0aPfOHQmkmjV4A9beSOAn1DnqX6oJdSaKhp6', NULL, 1, NULL, NULL),
(100, '21045', '21045', NULL, NULL, NULL, '$2y$10$8eq/S/dKRSzBOCWUa6DJ9uDEr6/qwHzk4X.6XpC9NSSsQ9MQQ1WXe', NULL, 1, NULL, NULL),
(101, '21046', '21046', NULL, NULL, NULL, '$2y$10$yyWTTtiTfrZKUVGEqobcxeh6UT58bj8Agpz5OFv2SFgfCDyf62HPe', NULL, 1, NULL, NULL),
(102, '21047', '21047', NULL, NULL, NULL, '$2y$10$Pcg8ME7HaCDzMKMi6q26quG.2j5x507XvA4zB9SELJG.AcNaCZpPW', NULL, 1, NULL, NULL),
(103, '21049', '21049', NULL, NULL, NULL, '$2y$10$O1J2p9trWjdNvfCNIfKOWuUYV4wLR0OHxRDhdlMxrDCzLSi65CK1K', NULL, 1, NULL, NULL),
(104, '21050', '21050', NULL, NULL, NULL, '$2y$10$eBG5pm.9BAfKeVjJ1wfvielHlArBrAnyahVFRtSlO59FBqtlv9OcG', NULL, 1, NULL, NULL),
(105, '21051', '21051', NULL, NULL, NULL, '$2y$10$3sVvA2H54babyF2vy24TC.EX63ImqUu3mLv7WYHYkI3raFFXPwWem', NULL, 1, NULL, NULL),
(106, '21054', '21054', NULL, NULL, NULL, '$2y$10$j6Jje.Gr1MV.l5TUy41Uz.Jdg0k/prW/alMAN38NhrJjHto8rOa62', NULL, 1, NULL, NULL),
(107, '21055', '21055', NULL, NULL, NULL, '$2y$10$iE1N6RUJ73TLc7AfrXS/..vyBGQMWHDfDueeBU1nQ1Vy//0Xt2pOS', NULL, 1, NULL, NULL),
(108, '21056', '21056', NULL, NULL, NULL, '$2y$10$QV7iX37PGczINe1srnPg1u7IxOG3PKkR1nNcOj9h/IP4ap/YmgPG6', NULL, 1, NULL, NULL),
(109, '21057', '21057', NULL, NULL, NULL, '$2y$10$fyL7saKm0qna9VbSvghZauPKa.M27xlFdSkHanaMVINr.FKs4Kqre', NULL, 1, NULL, NULL),
(110, '21058', '21058', NULL, NULL, NULL, '$2y$10$Sc6DU8zR.kgyO/DeRETA7OfpQkzpPanxe2SjWBYRsheTlAu3QTKXm', NULL, 1, NULL, NULL),
(111, '21059', '21059', NULL, NULL, NULL, '$2y$10$myh0XDhPZUb8tbuYSyIIu.rYqprnr3L4izpituEkqG7mkMnJYKm3S', NULL, 1, NULL, NULL),
(112, '21063', '21063', NULL, NULL, NULL, '$2y$10$ORxyZUL8KZ9r0TNqZsup8.lXnv1Bwa4yUn9UvdMDFsjTSc8fXwGWW', NULL, 1, NULL, NULL),
(113, '21068', '21068', NULL, NULL, NULL, '$2y$10$ur4LPmK4o17eQaRjHfOl1.BEoC7B1vUb63iBKB6izGZAJAtmFUHFy', NULL, 1, NULL, NULL),
(114, '21073', '21073', NULL, NULL, NULL, '$2y$10$Ha3vxyXK1QuU.zOAUxXUO.lW2UDjx4qvwq89Zk2Bf9l2ZPcEQPo6W', NULL, 1, NULL, NULL),
(115, '21074', '21074', NULL, NULL, NULL, '$2y$10$OOK.V4FsbB18A2OWZofqMulbDGrTCPqYYkxGuUUfPWGONmXzUE6rS', NULL, 1, NULL, NULL),
(116, '21075', '21075', NULL, NULL, NULL, '$2y$10$GXOdvziv03/PTjBtDessMurS7aBj5Pzz.oSHxBcqKuYgGaPRak.wi', NULL, 1, NULL, NULL),
(117, '21076', '21076', NULL, NULL, NULL, '$2y$10$rd3.54Gg7C6AtwI6G2dcwOZQ2w9k6dDGL4ZvkdSRPKPIFJeoYqKX2', NULL, 1, NULL, NULL),
(118, '21080', '21080', NULL, NULL, NULL, '$2y$10$oFbwBD44P0s.PijxaSZvo.a0KJG54/Mu29p/jXbNWzv2mtAvOcyJu', NULL, 1, NULL, NULL),
(119, '21081', '21081', NULL, NULL, NULL, '$2y$10$3K81Is2FKPjnrBibrajrmeRbXu7iWaMQZiG/NeMsmiSOBwdWORKd.', NULL, 1, NULL, NULL),
(120, '21083', '21083', NULL, NULL, NULL, '$2y$10$SHC5CP3OvU5Okl.FtyvySuRspT4E0BFEV8zfojzTo5b2SnDkFcczm', NULL, 1, NULL, NULL),
(121, '21085', '21085', NULL, NULL, NULL, '$2y$10$lJJjGwS4TXZKQVgjKBOxmOb8cBQeK44AwP5KCcb9D5VOKpbiKzaR2', NULL, 1, NULL, NULL),
(122, '22001', '22001', NULL, NULL, NULL, '$2y$10$PRg7oaHgOhJCB.4aljO24.mK7K8zM56eeLRWGm/.0qTUulCfomnbe', NULL, 1, NULL, NULL),
(123, '22002', '22002', NULL, NULL, NULL, '$2y$10$6ipUwL.HPMVAoQO3insth.Z9YF1hBQKD9RSNvnvUPpLZUuz96p5vS', NULL, 1, NULL, NULL),
(124, '22003', '22003', NULL, NULL, NULL, '$2y$10$YVCdVMAPp5qsWmU5xDPloevLXaXQMl2dSyqhyZK3Xta1GwgNmX9Z.', NULL, 1, NULL, NULL),
(125, '22004', '22004', NULL, NULL, NULL, '$2y$10$C/ilPGzUY/sh6OePcE9s2.7/0O3mcwtQj1HSRVxeTxV6Ntg6nJ3ZW', NULL, 1, NULL, NULL),
(126, '22005', '22005', NULL, NULL, NULL, '$2y$10$xdqAl.nob1BcyGLkU5IbhOBgAV6ZXbZ7VCqx2ix9ITeokX5zLFrr2', NULL, 1, NULL, NULL),
(127, '22006', '22006', NULL, NULL, NULL, '$2y$10$Qj5RkEya7032lliog1Rbkuj9K0yPwdbqacKl2ikpS2PEId76GH5Me', NULL, 1, NULL, NULL),
(128, '22007', '22007', NULL, NULL, NULL, '$2y$10$FKVvBDR.AjOy/8Z56iz1xejRLVL5htilvuq7xXPCxgfsO337ok8Em', NULL, 1, NULL, NULL),
(129, '22008', '22008', NULL, NULL, NULL, '$2y$10$ZBf4PASLPY26bdgv1LMBOuSt26tj73OGf5/KYiCZP4mbV2LSVPm8G', NULL, 1, NULL, NULL),
(130, '22009', '22009', NULL, NULL, NULL, '$2y$10$QxmwIqcPMFovSwbQ1BTzPePw7JLIewvW8B41xLMreoqe6eakRXdum', NULL, 1, NULL, NULL),
(131, '22010', '22010', NULL, NULL, NULL, '$2y$10$Zgig5AEqs1JLSqeKFmDEwuUqSdO8V/7aPSqHWYhA0qF21eH6RzvR2', NULL, 1, NULL, NULL),
(132, '22011', '22011', NULL, NULL, NULL, '$2y$10$m05h02paWP5ftqUgf6pWpuLNEXPgKqWwUJQupzB/yFv4QCZl8BJ6K', NULL, 1, NULL, NULL),
(133, '22012', '22012', NULL, NULL, NULL, '$2y$10$Iw/VyhItWRTyW/wOBhMys.AcnFDe08OVV8bYr3For4JALKZV14kLi', NULL, 1, NULL, NULL),
(134, '22013', '22013', NULL, NULL, NULL, '$2y$10$eMxEjeVbvqXLrz6zMLTPWujtmWgAuH2Lk3HVOTlBDfRATf5s1Ja.2', NULL, 1, NULL, NULL),
(135, '22014', '22014', NULL, NULL, NULL, '$2y$10$dcaISjYa1GoKvuiNS/ycUe1ygDPRFMXgUfgmp2V4JGKCMRQEHBaA6', NULL, 1, NULL, NULL),
(136, '22015', '22015', NULL, NULL, NULL, '$2y$10$SqNk0kY34Ib05SFKSz/vReuOH9lAPYMi9Sct7F8M7AXNzq.LsBu22', NULL, 1, NULL, NULL),
(137, '22016', '22016', NULL, NULL, NULL, '$2y$10$UhllaMp9/jc7A26xJgBi8e7DNK1OoGzrsGkUYFyETCVJ1oDCjs5wW', NULL, 1, NULL, NULL),
(138, '22017', '22017', NULL, NULL, NULL, '$2y$10$TcWLYLf1W5lYK2vfP1RrQ.ENOPSr2s.BP.EwWAjr9SSe3KtA7vk2e', NULL, 1, NULL, NULL),
(139, '22018', '22018', NULL, NULL, NULL, '$2y$10$iEUAoD9t2ZJWIoZ.Hw0Czu09LBD5JqgINshD7YgaVn8SVEc1286Vu', NULL, 1, NULL, NULL),
(140, '22019', '22019', NULL, NULL, NULL, '$2y$10$sy0kGi7VMsSh3iS3DSuLT.i1844WUUo412o3gZpUbO4eIjE5SWdcK', NULL, 1, NULL, NULL),
(141, '22020', '22020', NULL, NULL, NULL, '$2y$10$TyXc.wW3YhVF3t.ozXCWPukNdsHAehOoRUQe8iZ4EDZw6rV4xG2j6', NULL, 1, NULL, NULL),
(142, '22021', '22021', NULL, NULL, NULL, '$2y$10$4Y8LKJ3bcp10GcGfoqIAIeBpW95rW9PkdrYZWFOMkUH7pRJdWu.b.', NULL, 1, NULL, NULL),
(143, '22022', '22022', NULL, NULL, NULL, '$2y$10$Pk5Acwyr4tje2boIV68OwuBKWPVHbh93KFlRhDn7HgCHWXfY2L/pm', NULL, 1, NULL, NULL),
(144, '22023', '22023', NULL, NULL, NULL, '$2y$10$K5ck.iNxrefxjGHwIu53WO/Il2I58JkkfrTHkOwlZIvpe7Qkcghl.', NULL, 1, NULL, NULL),
(145, '22024', '22024', NULL, NULL, NULL, '$2y$10$4dNaHRPs0cb6Pg7odI.Wpe5F6dFey9DuK.68ZzpaZFYPNxwixKK8S', NULL, 1, NULL, NULL),
(146, '22025', '22025', NULL, NULL, NULL, '$2y$10$jVhgnmx6FpfUSjFnryNndOpWCWzxyUzQFQD1AG1xZAbdzjkos71t.', NULL, 1, NULL, NULL),
(147, '22027', '22027', NULL, NULL, NULL, '$2y$10$6VoVI59bAZqcug0Qk0YoN.5cWs2IshbmdXj4aNOCJLivcNSvbOnDW', NULL, 1, NULL, NULL),
(148, '22028', '22028', NULL, NULL, NULL, '$2y$10$JHSPcXdAGIk/oUOJO7FG6OgDyWSLdKCgEUka3.krCq5zzzo/DqOuS', NULL, 1, NULL, NULL),
(149, '22029', '22029', NULL, NULL, NULL, '$2y$10$Qao3mRzSXJNXQ.MiVJ.94eivs4JcKihIOTWW/ByR4fmex.frGuSVK', NULL, 1, NULL, NULL),
(150, '22030', '22030', NULL, NULL, NULL, '$2y$10$ul4auhjVdVT0RgFri7uLQuYXZ1bQQpzskQ0pqdJhSmjU6vfdsB.IW', NULL, 1, NULL, NULL),
(151, '22031', '22031', NULL, NULL, NULL, '$2y$10$2zjJjB45JbxXgRn5E4253uWIwzgJmzi49jZzs.gz/Dl7sSiOCH.jq', NULL, 1, NULL, NULL),
(152, '22032', '22032', NULL, NULL, NULL, '$2y$10$0YDqLP/pjiPq6f13ipnFTOv3M8NbgbX3vbY2UZpqHobgiYhpduyAC', NULL, 1, NULL, NULL),
(153, '22033', '22033', NULL, NULL, NULL, '$2y$10$2ppwUTliMSFzh3yZHS6uZ.UhwdiLjRFfGIY/IEPL1fXJXt97rgeay', NULL, 1, NULL, NULL),
(154, '91006', '91006', NULL, NULL, NULL, '$2y$10$0NuyEf7qA2SK.v09VL1FS.KytnPvtUB1.CnFMcfktFmaU533C4E5C', NULL, 1, NULL, NULL),
(155, '91025', '91025', NULL, NULL, NULL, '$2y$10$pIJ7KDv4DHiAuqiBxq.VGeE96fkB4Hoe2hx/vWrVYQpo5pIfJtauO', NULL, 1, NULL, NULL),
(156, '91030', '91030', NULL, NULL, NULL, '$2y$10$BbsXdI14OhPoK6LOieRY0.wJMWY6FBeBV5hiL5RDIETp7ODB.5BM6', NULL, 1, NULL, NULL),
(157, '91047', '91047', NULL, NULL, NULL, '$2y$10$a6mD0KjQQ3ftlahvft2RyOg/AqmmzhW9GodyCIaCWhlJYJ0jc2y2a', NULL, 1, NULL, NULL),
(158, '91056', '91056', NULL, NULL, NULL, '$2y$10$Dl6YsZUQOwvDQsfXkmeMcuOa12TYQIhTMuaWFq4AiLF3OcjKj73rS', NULL, 1, NULL, NULL),
(159, '91059', '91059', NULL, NULL, NULL, '$2y$10$2KUmsjoQwHklVNo8vwwi8uOyc/MRy3SjyfygHdErGlaWrnYilQad2', NULL, 1, NULL, NULL),
(160, '91060', '91060', NULL, NULL, NULL, '$2y$10$R1PB5uDk7Ptno2njPz0Za.jXRtEbHayZlThvJ1FfSDXPOCVuzdJiO', NULL, 1, NULL, NULL),
(162, '91077', '91077', NULL, NULL, NULL, '$2y$10$boJjCbCnNgTGCQdhGTiNa.L7/TMywwPA8yiB/bLeClUAHeQhAAVRO', NULL, 1, NULL, NULL),
(163, '91086', '91086', NULL, NULL, NULL, '$2y$10$fTKTZ.FuI4yDEiSFuyFG6eqI2Vh77VXosJ9IIXiyT2ZEgg36QZTjG', NULL, 1, NULL, '2020-09-23 10:21:16'),
(164, '91098', '91098', NULL, NULL, NULL, '$2y$10$x/ff292T9RZM4xUGLn7.FOKtr5h5DnQdKxho0G9CsSw7GzQtW9wSu', NULL, 1, NULL, NULL),
(165, '91099', '91099', NULL, NULL, NULL, '$2y$10$3s111d2mmtPnIuFUKJCUqOsuhoF/72wMHJydbtFxmsiEiibersCBq', NULL, 1, NULL, NULL),
(166, '91111', '91111', NULL, NULL, NULL, '$2y$10$5L1Z27iTTBRbVXFOl3VPYui5nMfUbe9QPGJuwSfQC9Dhg./QQq84.', NULL, 1, NULL, NULL),
(167, '91112', '91112', NULL, NULL, NULL, '$2y$10$ntzNyC2o16ITsIzAFkC/ZuizzYabUHefkUcdA4.IsD6rDKfbFcdna', NULL, 1, NULL, NULL),
(168, '91118', '91118', NULL, NULL, NULL, '$2y$10$FdOXd88JaiRlhL27/f6JteFgAzGSdp057vWuTfkqyhwOVfNf/o52G', NULL, 1, NULL, NULL),
(169, '91129', '91129', NULL, NULL, NULL, '$2y$10$OWDjqUWUPP9j2Dw6Vdt/M.r3Pu.lWv9fFFk8S/jUhvZvoOtIU38lO', NULL, 1, NULL, NULL),
(170, '91138', '91138', NULL, NULL, NULL, '$2y$10$XrRFDENEpiP1TXC.LOdEvuBLQMmmQ8QC04mvAKNubMtQ7/iCMO8PC', NULL, 1, NULL, NULL),
(171, '91148', '91148', NULL, NULL, NULL, '$2y$10$5g2Dsb0uXHynJQ9YUx/LIerP/YEqt.Z0TDjU8WXqW1ocDCCqzUo9i', NULL, 1, NULL, NULL),
(172, '91153', '91153', NULL, NULL, NULL, '$2y$10$hyRHA26E.2cZBhA0ntuaru8T..QGqq9U7cqcURsloO5tijVk0F2h2', NULL, 1, NULL, NULL),
(173, '91163', '91163', NULL, NULL, NULL, '$2y$10$nwzNnxCbzKvb4WcPoX8/je/hPioUjt81qNiWLtDj.ZwGrHQbTkVPe', NULL, 1, NULL, NULL),
(174, '91164', '91164', NULL, NULL, NULL, '$2y$10$R5ZkRh3zhjliohtp7FaFeeZ36O98tRrBM7P16c1j.tTpZIrKOU.U.', NULL, 1, NULL, NULL),
(175, '91191', '91191', NULL, NULL, NULL, '$2y$10$2RljSazAyXr/5ffgBYPdtu5aFLVdkgVJwpcPMDasHMen01WDitKDG', NULL, 1, NULL, NULL),
(176, '91197', '91197', NULL, NULL, NULL, '$2y$10$LOSkoijOEOsASWpAz6h62Ob2hc4xwyWcBYqXICegE1oYfmrDyBz.O', NULL, 1, NULL, NULL),
(177, '91216', '91216', NULL, NULL, NULL, '$2y$10$WpyNoyQ5N0SRKHZdGyHRc.unHjkapFqeCm3TW5Cm4N1YRU44nQO2u', NULL, 1, NULL, NULL),
(178, '91218', '91218', NULL, NULL, NULL, '$2y$10$07xUCpM9QrJt3uiPftEcDeDK0i6o0rVFcR8/UBVnQ3/4PLtjdnini', NULL, 1, '2020-09-23 13:15:50', NULL),
(179, '91219', '91219', NULL, NULL, NULL, '$2y$10$TQF65GByuL2MnrTQVD1xeulStuWOE7dDwKsHCl5cYlZHcT5ag5i5O', NULL, 1, NULL, NULL),
(180, '91221', '91221', NULL, NULL, NULL, '$2y$10$9GmsrDCPFMIY.19eP/PM2et/ls6SOVmoQrySG1hpzQG7pO5oxMaoi', NULL, 1, NULL, NULL),
(181, '91230', '91230', NULL, NULL, NULL, '$2y$10$LkSN3D2af6.1YrywOGmHqeVoFJZIe5OgjzfZBhczNNBohdZFv/uOy', NULL, 1, NULL, NULL),
(182, '91233', '91233', NULL, NULL, NULL, '$2y$10$8VK5c8HH6vV7XIUH.lvSlO9Ma6lAbUamFblQDMQr9YUAB11JVq7wG', NULL, 1, NULL, NULL),
(183, '91238', '91238', NULL, NULL, NULL, '$2y$10$YpWhEhRigrYDjaor94wZFeC.ZuCYAMIpn9orKBSQE6HUIH7Sfo35O', NULL, 1, '2020-09-18 18:10:55', '2020-09-19 12:05:01'),
(184, '91247', '91247', NULL, NULL, NULL, '$2y$10$ye8vZefhOjGGkGnriYa8/ugvOqJNK.dL1D/yUX3vV1w59twUVuuvK', NULL, 1, NULL, NULL),
(185, '91250', '91250', NULL, NULL, NULL, '$2y$10$7MAt9Oous4q2gi2QTq61rOWwbZBIW2tTKUyEE0GvCu2fiQtglH/R2', NULL, 1, NULL, NULL),
(186, '91251', '91251', NULL, NULL, NULL, '$2y$10$DWa8U.SOcxbueBuM2DUdT.s0r7nhYTXsohUylzuNNo9Je5RByksq2', NULL, 1, NULL, NULL),
(187, '91254', '91254', NULL, NULL, NULL, '$2y$10$tZJDW99tBmx5KsIn2qPwPeXkQPU44oC4avvdokZsVZouTHJ0Mt6Wm', NULL, 1, NULL, NULL),
(188, '91257', '91257', NULL, NULL, NULL, '$2y$10$2Sh6GeHo1uVHaHFTbSLY9OYpD6deSION5TUVI0AMu4C5WrSm5eiiS', NULL, 1, NULL, NULL),
(189, '91260', '91260', NULL, NULL, NULL, '$2y$10$TmF3L9t6oDlYN/T05os9POYyH1Z.SGzy.gqNNrEhb3ORvf41h890u', NULL, 1, NULL, '2020-09-23 08:03:30'),
(190, '91262', '91262', NULL, NULL, NULL, '$2y$10$NfT4zmyH2Gkp8bSdGr9va.bwhesXIXXwS5sc1FH.sy0N67w8u7UY.', NULL, 1, NULL, NULL),
(191, '91264', '91264', NULL, NULL, NULL, '$2y$10$PF1VNwNZHvq/RZ7Q1c7Dgu3lJoqaRKvM8jWza2Bt0ThKXXDT2O3Z.', NULL, 1, NULL, NULL),
(192, '91266', '91266', NULL, NULL, NULL, '$2y$10$HyxB.K4kUfpEYAAlo9jfiuuhgexXEzm/19ma0BwFXEj5RqUV80p3m', NULL, 1, NULL, NULL),
(193, '91275', '91275', NULL, NULL, NULL, '$2y$10$OvxAs6ptwaO8XqWpsFLQZ.dJaxwU9sJJBYh02Mt7zIzAWEvGD62CG', NULL, 1, NULL, NULL),
(194, '91279', '91279', NULL, NULL, NULL, '$2y$10$LWrt/2d1TBEwWW.49IN4qudWBdsPRiVMZKZvTeuXLXtU3F9ly.jfW', NULL, 1, NULL, NULL),
(195, '91287', '91287', NULL, NULL, NULL, '$2y$10$ykoN.E5pA7Z6nToowKqODOV32RaJcki0iUI6ylnHqsekhDKbAfMLe', NULL, 1, NULL, NULL),
(196, '91290', '91290', NULL, NULL, NULL, '$2y$10$M0XZvaF8RVGeATwHy9LNNO//v1Nz52O.boC1DVqsjan8ruP5suif.', NULL, 1, NULL, NULL),
(197, '91294', '91294', NULL, NULL, NULL, '$2y$10$PfC8I6DseTufBlSjtJUUt.QzUX008YNAiseEeDKEgfVbMBvU2Epmq', NULL, 1, NULL, NULL),
(199, '91305', '91305', NULL, NULL, NULL, '$2y$10$5ZWWz5170zaeqLxGO3zv2OM4K//cWRrLji6a1tw7l3qaHey1pWA1q', NULL, 1, NULL, NULL),
(200, '91307', '91307', NULL, NULL, NULL, '$2y$10$3zt2AJJPcHK3WGyT.yz7s.8UH97H8BaRtEVBOJMOOLhq1B1BmOW1a', NULL, 1, NULL, NULL),
(201, '91318', '91318', NULL, NULL, NULL, '$2y$10$3OHBnf9DP0QHCK.f2sFeaedWgIYNZqyT3M7EoQ7PN9acl7lb83eC.', NULL, 1, NULL, NULL),
(202, '91321', '91321', NULL, NULL, NULL, '$2y$10$yxeukqe2I/yYQRyOIYa4UuLoaMl9Ez4OpMSY3OeHyaXDlYvoSE/xu', NULL, 1, NULL, NULL),
(203, '91324', '91324', NULL, NULL, NULL, '$2y$10$NXvIMQGVygySFL5xuFTMFeL7lOzLUcmlbQCtjGguC5OIEHY.Pq3Ma', NULL, 1, NULL, NULL),
(204, '91326', '91326', NULL, NULL, NULL, '$2y$10$2G6pkEHvyCyAwV7GE6hXqeNlV/CYJPOJ9qrN9vgoqcgI4e/fqliei', NULL, 1, NULL, NULL),
(205, '91327', '91327', NULL, NULL, NULL, '$2y$10$8eyynEDg/zMwGVsBo2CfVubU6.rGYz2rv9PJneu31QoCUh6Iyarpa', NULL, 1, NULL, NULL),
(206, '91332', '91332', NULL, NULL, NULL, '$2y$10$XbFrjIJdaYp/3/b1mMVoGuyMUwZCuprpMm.MliZhTNvIs3kse/MKK', NULL, 1, NULL, NULL),
(207, '91337', '91337', NULL, NULL, NULL, '$2y$10$FgQsgwNJzfQUPQ/eBW9UDeV8u0FCi1GGYfjf9vJoVAynJyMnsxeKi', NULL, 1, NULL, NULL),
(208, '91338', '91338', NULL, NULL, NULL, '$2y$10$MfQ7UcbHae92TnUsiARq8eGQJzAgf6gxajJB78mIpDg5cEWptUGaG', NULL, 1, NULL, NULL),
(209, '91339', '91339', NULL, NULL, NULL, '$2y$10$8G2xyho4HnOI9NyowQoEfeFIBbmZ5TCgVoKvfcqOqnvhkvt8klaAC', NULL, 1, NULL, NULL),
(210, '91348', '91348', NULL, NULL, NULL, '$2y$10$6jDEfx9StYmTV9rLd6Guq.Dufe7zlkLp17wQ1xyPMXWMoMB/imx5.', NULL, 1, NULL, NULL),
(211, '91350', '91350', NULL, NULL, NULL, '$2y$10$NcLdvbrGl1wVaonKNTAQ/ewLxlgYy2IBsh.aCr3/tldwjI9y/Ipl.', NULL, 1, NULL, NULL),
(212, '91351', '91351', NULL, NULL, NULL, '$2y$10$f.9vWEMJ5Hosgx4rA49pAOKu8X41TKm2Nr36eiSgj5Z5SBOCxcp7.', NULL, 1, NULL, NULL),
(213, '91358', '91358', NULL, NULL, NULL, '$2y$10$jv20MfxtArbNHQiajthH7.saOC7rtFss3mqGbkks8OkQYhxDHzE1W', NULL, 1, NULL, NULL),
(214, '91359', '91359', NULL, NULL, NULL, '$2y$10$sedMfm/GZVvhMpE7Q8uTx.hzmXx2QGIeNaYFm/8T4Vk6kuH.Jdhdu', NULL, 1, NULL, NULL),
(215, '91363', '91363', NULL, NULL, NULL, '$2y$10$90E3H0ud2CsDcmbBcDG5s.4NOd/ktlHUv9VB.epBoWpr8ghKQgdky', NULL, 1, NULL, NULL),
(216, '91364', '91364', NULL, NULL, NULL, '$2y$10$hsQujO7xKBMqPkzqJip0oOffl6S.vjuWFdLZ9QgXdDxUZLgEfys0G', NULL, 1, NULL, NULL),
(217, '91373', '91373', NULL, NULL, NULL, '$2y$10$IoL2hZJGQX3tEWEvt6EK6.4wB0LmVf9hFgRGQI/PXYbl/5NFf5lPm', NULL, 1, NULL, NULL),
(218, '91375', '91375', NULL, NULL, NULL, '$2y$10$IZk.nBHjz4jsicrfUoURz.OBL3FCZzHcF.yhz5AbVv6VwlXNGBniO', NULL, 1, NULL, NULL),
(219, '91376', '91376', NULL, NULL, NULL, '$2y$10$R17pA5c829W7SXIED5pkBOPJbkta8cKZ4Lmu7.SScHeAT1Y5kQCue', NULL, 1, NULL, NULL),
(220, '91385', '91385', NULL, NULL, NULL, '$2y$10$VeYuFjbjP6lecHt/6vR9VOgiitLViUEMoejD4tvnKPzGz9lzO07km', NULL, 1, NULL, NULL),
(221, '91392', '91392', NULL, NULL, NULL, '$2y$10$/iw6sB2cOn3ndjPs6mHJieOkmceAGe3nuhyDpI5SbpsAOgWQa7RGC', NULL, 1, NULL, NULL),
(222, '91395', '91395', NULL, NULL, NULL, '$2y$10$NfDCDjeIYIFD9ExXohxgiOmy63B2y56qoTQdRSlJx.eb0IoR23QCO', NULL, 1, NULL, NULL),
(223, '91396', '91396', NULL, NULL, NULL, '$2y$10$SWJVG8cbOb27BoMwEP8ah.foWRY680lhNtuOjZdQUCbbw2hyHV.Ne', NULL, 1, NULL, NULL),
(224, '91398', '91398', NULL, NULL, NULL, '$2y$10$irAdCbVthSCVYdzlqcuYvuMujBdvYYWgyC2w4DpWyBxfMpRUZEXqq', NULL, 1, NULL, NULL),
(225, '91399', '91399', NULL, NULL, NULL, '$2y$10$NQ8nHMURPj7k0LYJvqOCCeLYHyKlqPIqoX8aHOCoWKGXoaSuIFy42', NULL, 1, NULL, NULL),
(226, '91400', '91400', NULL, NULL, NULL, '$2y$10$fWS9Z1hlGbNP.KGgatn9g.MQkrJ4.ug7cdyaHl9i5M2vqOvrpn3Su', NULL, 1, NULL, NULL),
(227, '91402', '91402', NULL, NULL, NULL, '$2y$10$vnBoW/CjjDM6MJdiXW9BH.JQnPRSCGkDoLpDecgDx9P8VE2zCfj.m', NULL, 1, NULL, NULL),
(228, '91403', '91403', NULL, NULL, NULL, '$2y$10$CYWlgdfyuVRZjY0EI7hzjeF.AGm6hMBFcSvVHP1rWuOfcg7/ENZzy', NULL, 1, NULL, NULL),
(229, '91405', '91405', NULL, NULL, NULL, '$2y$10$um14UR89ibjFWPWMYaWk0e4jUwSNsj5xKT3BIs/VIAzHrpZT6i17.', NULL, 1, NULL, NULL),
(230, '91415', '91415', NULL, NULL, NULL, '$2y$10$jjN6Gmk594Wr07Rv/MvOl.n47zeRn4M4Y2rvXj5NAfdTLj8XFTPx6', NULL, 1, NULL, NULL),
(231, '91416', '91416', NULL, NULL, NULL, '$2y$10$fe04FmpJTEc4Rah7Q4CbR.nftqOJNGmwzxhhk9GTkTq/NhzSIOmfC', NULL, 1, NULL, NULL),
(232, '91418', '91418', NULL, NULL, NULL, '$2y$10$xH.SM/0MNhkZVAdqba/H4uPuRYxyYtGwMzmo5rp7cRiq85tMb6lUq', NULL, 1, NULL, NULL),
(233, '91471', '91471', NULL, NULL, NULL, '$2y$10$b.h5P0P52CXI9wvIhxBQkOfTh95WeZEpnIeosjAbl1zEFxF02/s6S', NULL, 1, NULL, NULL),
(234, '91427', '91427', NULL, NULL, NULL, '$2y$10$vkQXi/hi2TehPrpaMJ6w3.fY7/NWDKt3QQhIlXrUk7EmoUQkablUC', NULL, 1, NULL, NULL),
(236, '91433', '91433', NULL, NULL, NULL, '$2y$10$UP2DCA348tOf3WUvttY2uuIPs6xdfo7nCWe.3qh/My5cTkORXRAQ.', NULL, 1, NULL, NULL),
(237, '91435', '91435', NULL, NULL, NULL, '$2y$10$CUFiPs7QlwRVJgO8NdVTSudf/0bm6gAOkuXL/SM7LzAD4ro24Xm5m', NULL, 1, NULL, NULL),
(238, '91440', '91440', NULL, NULL, NULL, '$2y$10$qDYM3J8rQz8tuKdMjoqI/u69CW1IHR934W7njf2s.oISwLqpRNkGy', NULL, 1, NULL, NULL),
(239, '91442', '91442', NULL, NULL, NULL, '$2y$10$iQgghmJuauf5Og9UICOkiuNO4LIEPjZxuQUSQhdfl26.yw4mMXCmy', NULL, 1, NULL, NULL),
(240, '91443', '91443', NULL, NULL, NULL, '$2y$10$yWjFL0km3s.31QV5FpVJY.ojg4nt1Wf//yhF95NKwaR8tMuP1CfRq', NULL, 1, NULL, NULL),
(241, '91450', '91450', NULL, NULL, NULL, '$2y$10$8F79NoYWWFSGxwXsxNPcM..NKtcXIH0tjFaf5h7hh5wbOgGuD0U42', NULL, 1, NULL, NULL),
(242, '91452', '91452', NULL, NULL, NULL, '$2y$10$gp7s/QWGUYacsia3YMmWmOFa.QBRfZT3Q1UsOffmdi6RALDCTURh2', NULL, 1, NULL, NULL),
(243, '91454', '91454', NULL, NULL, NULL, '$2y$10$oz7D7ugaJ8w.uujvDukYqOwq690WUKQhIuRCLjCb9XsoFq6uwKSNS', NULL, 1, NULL, NULL),
(244, '91460', '91460', NULL, NULL, NULL, '$2y$10$0b9j0XWgd471vw1RJiFrpuEO2Z.hc9E0pIBcNVWI66AMlUNvc4Qr.', NULL, 1, NULL, NULL),
(245, '91461', '91461', NULL, NULL, NULL, '$2y$10$1vQKqXp7c/bJs.8tmuVd3e14d8kJnJFH0hgcbWb33pAVZA63EN/Dy', NULL, 1, NULL, NULL),
(246, '91464', '91464', NULL, NULL, NULL, '$2y$10$54pYLXhQbCgMHSe6YpFEUuzZX/iG6QU0u3uuHCS1T6rYQSw7N9z0m', NULL, 1, NULL, NULL),
(247, '91466', '91466', NULL, NULL, NULL, '$2y$10$PwNMW2ENkRZRSh/eRdoBYObUBdd2o0TlY4wuFOv1wdBCNijf4e3TS', NULL, 1, NULL, NULL),
(248, '91467', '91467', NULL, NULL, NULL, '$2y$10$2mUyzdRxCaNKC730dfT3yOqaLCcp1BL34xP7hrKOnZheRP6Ojfi82', NULL, 1, NULL, NULL),
(249, '91470', '91470', NULL, NULL, NULL, '$2y$10$H7h8woWFvY4sUCPr4XPYL.kifiL1XKRT.aG3OF5Ai0115Dl2q.sBW', NULL, 1, NULL, NULL),
(250, '91472', '91472', NULL, NULL, NULL, '$2y$10$MQZW5qOOzkyOxD.xxG47.OBathXdpd7xYnc2nRCGimO0AGTBOXQ.2', NULL, 1, NULL, NULL),
(251, '91473', '91473', NULL, NULL, NULL, '$2y$10$C/EXRGxMDB/tW6GASMyDv.sRP0QWtZ/y6VSUd97QkYvyULrv.mlNe', NULL, 1, NULL, NULL),
(253, '91475', '91475', NULL, NULL, NULL, '$2y$10$bGDZtH/3at09G/6K7c3xJunL9Zh8RB6UYDAAQL93YpfYSk2l7lKKq', NULL, 1, NULL, NULL),
(254, '91476', '91476', NULL, NULL, NULL, '$2y$10$ZrZlFA5Nj/6q8s3.KT1/COMffyaTh4fJAiPja86P1y7/kj8s/Uiqy', NULL, 1, NULL, NULL),
(255, '91477', '91477', NULL, NULL, NULL, '$2y$10$bu7WKSQu6LF1izJyinme.Oy0dUOVJk0pJeyVSlSoAR3C2pTV/sqPK', NULL, 1, NULL, NULL),
(256, '91478', '91478', NULL, NULL, NULL, '$2y$10$LQlYNtrlKAczNbF9cjADd.cLOvUAYXGXGxmvhm11boP66E4KUGuv.', NULL, 1, NULL, NULL),
(257, '61002', '61002', NULL, NULL, NULL, '$2y$10$bgcMVP.uyUo6GVygCizzIuZKCKz1tPR4zfhIFsoB7x//fw3RTW09m', NULL, 1, NULL, NULL),
(258, '61003', '61003', NULL, NULL, NULL, '$2y$10$41s.ZifOEp05L6b9XsM3QuLXJKRa36.QquAmCPgEZ00kBLcbXxEdW', NULL, 1, NULL, NULL),
(259, '61035', '61035', NULL, NULL, NULL, '$2y$10$cqBITSyWkYDcRkvj8pYPCO1GJfLypv/6SVqHwPs6W1WhNdtt0ISqy', NULL, 1, NULL, NULL),
(260, '61037', '61037', NULL, NULL, NULL, '$2y$10$dhkmS7gG7FAMi6ZlKLuPA.KKvgerOe2AF1/eou.SPospL22UbH2UO', NULL, 1, NULL, '2020-09-23 12:52:38'),
(261, '61045', '61045', NULL, NULL, NULL, '$2y$10$mFAvNqDvcNN/BtcdY2zIOOkMqj/qC4GVF0WUeZouP2quwZfdx.mfC', NULL, 1, NULL, NULL),
(262, '61050', '61050', NULL, NULL, NULL, '$2y$10$J/jmdAEnR9oylbMv6fjFBOCAhRgl89MJt7J5RbWWTrO4WZF.tSCEO', NULL, 1, NULL, NULL),
(263, '61054', '61054', NULL, NULL, NULL, '$2y$10$NaOpulNYUBuDL4.cj4nlNeP449Tvd0PCk9NoVfELs4rsPezaP3kYe', NULL, 1, NULL, NULL),
(264, '61055', '61055', NULL, NULL, NULL, '$2y$10$w2f3LYODAZgjBFbGAvi0qe.MCLxGejsalzn47k9VVkKSqIvzJpAPu', NULL, 1, NULL, NULL),
(265, '61060', '61060', NULL, NULL, NULL, '$2y$10$Dye7bPYXhPzj05X.1gSAVu5KgvBO63Jjp8CFGXcsq0UehJdrWc0pu', NULL, 1, NULL, NULL),
(266, '61062', '61062', NULL, NULL, NULL, '$2y$10$C9glASdyKPInQx9QoBQjZe9Kh8WxRAam2t19S1jeKUOAsH8ZY9vFG', NULL, 1, NULL, NULL),
(267, '61070', '61070', NULL, NULL, NULL, '$2y$10$9nXiYN1EnS7AFrNldOuq4.DLeXaG8mVcwfPtUS5sPadMSFktVxm8S', NULL, 1, NULL, NULL),
(268, '61072', '61072', NULL, NULL, NULL, '$2y$10$pfDhqWdbYsir89c/34cUX./F2sjjbQFjLr7BbzmS5lkxwCROfyxx.', NULL, 1, NULL, NULL),
(269, '61079', '61079', NULL, NULL, NULL, '$2y$10$agXd0jAe535SHudo92dHwOzsm.kSR/vgX1EQe9mgZHzEODiWCit1O', NULL, 1, NULL, '2020-09-08 18:08:25'),
(270, '61082', '61082', NULL, NULL, NULL, '$2y$10$Ob0J7D7JRlgpRhROdEvJRen5H8FH9g/0NZ0/cY5wyvFE3wK00S0qq', NULL, 1, NULL, NULL),
(271, '61109', '61109', NULL, NULL, NULL, '$2y$10$63E7vYHRKBKBbomaqILjS.xZrsPUSPBKwQqKVdQ74mbwxdvHAflvq', NULL, 1, NULL, NULL),
(272, '61134', '61134', NULL, NULL, NULL, '$2y$10$4D2yR6PLYQEd7OjsA5GJc.rJeFJ1uEoBU1ZXu2.XYcPVtUywFXgNW', NULL, 1, NULL, NULL),
(273, '61140', '61140', NULL, NULL, NULL, '$2y$10$4kNRoAHWgeADQWSh35Pqku0tckEc06S3BuaSB3te/XepyqaA7fGDq', NULL, 1, NULL, NULL),
(274, '61142', '61142', NULL, NULL, NULL, '$2y$10$naJG5V1qALVMTGV4l55nDegjHdq7M5QEvWNCc8Bmq/GKAX07ulMLO', NULL, 1, NULL, NULL),
(275, '61150', '61150', NULL, NULL, NULL, '$2y$10$tMVKK.xoq6RK5c3pJUOFJOAGkJk3HZGdCF8hBkZLWpNaaqgfmjOsS', NULL, 1, NULL, NULL),
(276, '61152', '61152', NULL, NULL, NULL, '$2y$10$H5pedOOMjhfa9gC8DQ4xn.YR.VVzEf4o2UF9DYexnqlKPJInHhmCS', NULL, 1, NULL, NULL),
(277, '61154', '61154', NULL, NULL, NULL, '$2y$10$Y1P5ceiYOsc9.KIbJg2Bl.y8rOcFwzrY71v.lv2q/6uKt5jmYaGwe', NULL, 1, NULL, NULL),
(278, '61155', '61155', NULL, NULL, NULL, '$2y$10$iVyH2FQJ9JLXnmQbqElTKu3c8E4/ge/l3YpCilZm2qKFQl4m.iROe', NULL, 1, NULL, NULL),
(279, '61163', '61163', NULL, NULL, NULL, '$2y$10$5gYoQ8FyaK.vYtUIeka.GOCuKIAw7XtXIgopq3.z.1jR6lNKFJrPS', NULL, 1, NULL, NULL),
(280, '61164', '61164', NULL, NULL, NULL, '$2y$10$xL69gbuRN5XJZBRtdikBY.nVEW5B44FfGGDqjzRsP1m8Z8tkghvX6', NULL, 1, NULL, NULL),
(281, '61170', '61170', NULL, NULL, NULL, '$2y$10$Wxc9lKqCWjAvBqwrE.KcF.fNDKJioRuU.cEj/tr1zguIwODJKCOEq', NULL, 1, NULL, NULL),
(282, '61172', '61172', NULL, NULL, NULL, '$2y$10$QIwsP6MyiDvYdBK16Nff/OzrK6R6QCMGN3v5zZ2ZopDZuKnshYZiC', NULL, 1, NULL, NULL),
(283, '61173', '61173', NULL, NULL, NULL, '$2y$10$sutBQehBy7O87.KbaWqlJ.OpahOtu3g52QrG6p74AlQoKSX.ra.Fy', NULL, 1, NULL, NULL),
(284, '61175', '61175', NULL, NULL, NULL, '$2y$10$hpBWkbfeIovDN1J26CK.euP02GhelR2udkO3j0epI7wz7TCg36dKC', NULL, 1, NULL, NULL),
(285, '61190', '61190', NULL, NULL, NULL, '$2y$10$PbJQSDLl8mZwMmpFQ5oIgOwnhz8YkcSIt1U4a/vUACXHbd/V6WQiO', NULL, 1, NULL, NULL),
(286, '61191', '61191', NULL, NULL, NULL, '$2y$10$E4QJVjTO0OIV4P178w4msetco8FBcw46sLJM15gUjgjjJGhUH6l4e', NULL, 1, NULL, NULL),
(287, '61193', '61193', NULL, NULL, NULL, '$2y$10$hWsphxlQ2V4dc8rbhg1oT.E7BfZijY8QCenS18Y5p5Q7jFuvOEYSi', NULL, 1, NULL, NULL),
(288, '61197', '61197', NULL, NULL, NULL, '$2y$10$nqZMkA0y5/uUY02mH.RKfOs5fTAn7OXPZe/p9AZGX6mr.wbcoppae', NULL, 1, NULL, NULL),
(289, '61200', '61200', NULL, NULL, NULL, '$2y$10$I7ZQlnlkBAAyEbbhKI.GvOOAwjp.8X7FqD4uwzXMT11WnNUXZd9Rq', NULL, 1, NULL, NULL),
(290, '61205', '61205', NULL, NULL, NULL, '$2y$10$FkUc8dJR/Ux4Tbg3Aqo9v.kO57sp47uFRI7lLTXlEyCNuSFRTOgsu', NULL, 1, NULL, NULL),
(291, '61208', '61208', NULL, NULL, NULL, '$2y$10$P2SmXPwQg4kpXp2fb7dQf.jOaiKgRHdPfM2BRvqKQVpqFdcPRjMmW', NULL, 1, NULL, NULL),
(292, '61209', '61209', NULL, NULL, NULL, '$2y$10$QehYf2bSpqR3ZmepAJpt3O5vWazAUSypU5SfAJ1y3UwO4kmxjGI32', NULL, 1, NULL, NULL),
(293, '61212', '61212', NULL, NULL, NULL, '$2y$10$EWneEISRNInZng34dagSiO1eMGoLqGPq2ASASrRtA.PAXFEHHTkPe', NULL, 1, NULL, NULL),
(294, '61217', '61217', NULL, NULL, NULL, '$2y$10$XjTqQsrEmX7pG4fPnIToF.9B5QNHr.v5c0OgAGt.XTf48zxT1rGOq', NULL, 1, NULL, NULL),
(295, '61218', '61218', NULL, NULL, NULL, '$2y$10$eG9Nj5HfmWqNgDyqzSvOt.wLxeM6bBG4gP1A.COGZ3x9wq7/FQc4y', NULL, 1, NULL, NULL),
(296, '61219', '61219', NULL, NULL, NULL, '$2y$10$1X2i6FvBQ4uavWpsCr0nWuyF1RlaSQeSOaX9Txy9OGLWZ1XFj3OAq', NULL, 1, NULL, NULL),
(297, '61222', '61222', NULL, NULL, NULL, '$2y$10$iKhNMEZ7F0osdAC3dRhe9ewgCcHFcrDqJNX01TyQn/GM4g.237JRK', NULL, 1, NULL, NULL),
(298, '61224', '61224', NULL, NULL, NULL, '$2y$10$rWDt6f.bv3ecKiDDJ3OTdeaTSlgGTGIv72UeBxJbihL32Sw0Vzds6', NULL, 1, NULL, NULL),
(299, '61230', '61230', NULL, NULL, NULL, '$2y$10$hYFn8gJdly6gea84C873.OuQJ0Ie8hx/octuU/IRdxNVFP4l40HBi', NULL, 1, NULL, NULL),
(300, '61233', '61233', NULL, NULL, NULL, '$2y$10$7KsatBFRXTaSADMvAhJfrO7/h.OTCQLi6A3P7lLxlcxr3Hj.rjg9.', NULL, 1, NULL, NULL),
(301, '61234', '61234', NULL, NULL, NULL, '$2y$10$wUELMVDAXg18CxGBIdSZ7.PChgTZipsOj0fSkjsVnw3SoZNY9rVgG', NULL, 1, NULL, NULL),
(302, '61235', '61235', NULL, NULL, NULL, '$2y$10$QSS6dRzxHjKa/xP4P.BIpuPJfsY7HEmf1o/cki20Xba9BWg4TImYC', NULL, 1, NULL, NULL),
(303, '85006', '85006', NULL, NULL, NULL, '$2y$10$5EST01VF5e8JwQXRkBQ8OO3Xt.rPDr8BKECpbSgk4PhYJ./AZ4eTK', NULL, 1, NULL, NULL),
(304, '85013', '85013', NULL, NULL, NULL, '$2y$10$Gd1rObj.B9jUdnRoqR9Nwe85WuxpuDBPW9c9WLYkTttjm/890Lx.2', NULL, 1, NULL, NULL),
(305, '85016', '85016', NULL, NULL, NULL, '$2y$10$AyDsJoMAJ6AMThi9eQvVHuGl/kUYhJAxdFvAZOPRI9HqcYOXp4WKG', NULL, 1, NULL, NULL),
(306, '85031', '85031', NULL, NULL, NULL, '$2y$10$oNzwQMQRbTvBx.aj.v/Yt.LJYs8y/YUdV1.hUhn5MjDGK1Fv9S5w2', NULL, 1, NULL, NULL),
(307, '85033', '85033', NULL, NULL, NULL, '$2y$10$sM1qZtrfzqQkx5Y7s9hW.uRlc3gzcN/jooIFGaOFvALzzViPvyYIW', NULL, 1, NULL, NULL),
(308, '85035', '85035', NULL, NULL, NULL, '$2y$10$T2bi.70nCL5GSPvuNgveLOFH3/Ix57tffdG5CcFqtQr4E9ymhvgM.', NULL, 1, NULL, NULL),
(309, '85042', '85042', NULL, NULL, NULL, '$2y$10$3JoKy3G1FSX5ICKIXNue7u84XJ0r/D3RokU73l6kA4N1ByLn/QNUi', NULL, 1, NULL, NULL),
(310, '85050', '85050', NULL, NULL, NULL, '$2y$10$lHmlA2ZYk4NzcTb7B4cIB.6UVoYgegIdc3s7gfmirdKDnz/TGhXni', NULL, 1, NULL, NULL),
(311, '85051', '85051', NULL, NULL, NULL, '$2y$10$XFoNFEJ9NQPhpghg1mFz2.pAtIYV/5klJCzxbUEgJ5Gsu1yURiTei', NULL, 1, NULL, NULL),
(312, '85053', '85053', NULL, NULL, NULL, '$2y$10$/bYeZFI/3OY4JaRv9i5IauYJ6YIBEu4fvHfoXjbGmebJ9Xco6xDo.', NULL, 1, NULL, NULL),
(313, '85055', '85055', NULL, NULL, NULL, '$2y$10$6WLw0D9wSg6ATGKVf9odf.1NkMJWEcXE/pBV6VtnNvcx6ZqgbLmQ2', NULL, 1, NULL, NULL),
(314, '85060', '85060', NULL, NULL, NULL, '$2y$10$RJLEw835jnB6e9q3a0UcDu0RG/Xt6zo/sBzIiaxkEOwEISk0xEas6', NULL, 1, NULL, NULL),
(315, '85066', '85066', NULL, NULL, NULL, '$2y$10$G9GvEm7iZxBDIme9UJaMeudi21GOsj4u.RvWpx0F2C4vdB5eZrMgy', NULL, 1, NULL, NULL),
(316, '85070', '85070', NULL, NULL, NULL, '$2y$10$Qja8/L83AabofIlvbZrJ.uME4EAPIJnb5zyB7d51Gp.jx3eOP8vhS', NULL, 1, NULL, NULL),
(317, '85073', '85073', NULL, NULL, NULL, '$2y$10$nOKBKFtUolEs.7xymBwnMe4UIl69yf5jhJ4gKvFujt4964UAH9gYC', NULL, 1, '2020-09-24 10:08:41', '2020-08-24 00:00:00'),
(318, '85074', '85074', NULL, NULL, NULL, '$2y$10$pvFWBxbALaZYIoQeWUOm3.3FpiyNIbxS94c0p6xx49rsUDhsHegwK', NULL, 1, '2020-10-06 17:44:51', NULL),
(319, '85076', '85076', NULL, NULL, NULL, '$2y$10$gmvFVh69R.IeizZHxm7dAukfFoPWcVuGOTD93gGBa7.H1Tuz2OwK.', NULL, 1, NULL, NULL),
(320, '85078', '85078', NULL, NULL, NULL, '$2y$10$/5DiNKdIuDFKYzRxzrw.wOPoOEiUzxbuC.wl2CB847IjqpPKDoeaO', NULL, 1, NULL, NULL),
(321, '81026', '81026', NULL, NULL, NULL, '$2y$10$8AuX1390N08fVW7/dS3KAOnK6/0L3v3AtcaLEl1tnbBM1IfdiAVaO', NULL, 1, NULL, NULL),
(322, '81047', '81047', NULL, NULL, NULL, '$2y$10$CmiyT8EpGQViL4rGNjN9KOZjreaQDhCP1PAJWAeqI9vu95tFU7xw6', NULL, 1, '2020-10-23 18:42:20', NULL),
(323, '81080', '81080', NULL, NULL, NULL, '$2y$10$G.T0GhfrTxuFt0KY.WxoTuTJGrmmCU0YFlD5posobWFQVA7aRqiMK', NULL, 1, NULL, NULL),
(324, '81083', '81083', NULL, NULL, NULL, '$2y$10$BtUDZa5DAARhL88cBK4igOi52JvIh3zhNmUmmGSayXBa1hTIdhE.q', NULL, 1, NULL, NULL),
(325, '81086', '81086', NULL, NULL, NULL, '$2y$10$uA5/MasdNxfpKhjWv8uP3u65vkSoZixJ/qnUeA3Es6ZBVwhyesPvu', NULL, 1, NULL, NULL),
(326, '81089', '81089', NULL, NULL, NULL, '$2y$10$Ba5aIV7moZb2K4Pa8I.hceSZDHPT7qOwSpPg18B67peEuAN00/l/C', NULL, 1, NULL, NULL),
(327, '81090', '81090', NULL, NULL, NULL, '$2y$10$8RmnUpg1jUq4FvfcgCoBA.CEV3.JQsLYXw6NbRWh4w/rf.ixQ4Ln2', NULL, 1, NULL, NULL),
(328, '81096', '81096', NULL, NULL, NULL, '$2y$10$L5XTo3N/MT7Z/JMKdXAYv.HtkRf1HwCrKFsnL7OsOHfdo84V0clSi', NULL, 1, NULL, NULL),
(329, '81097', '81097', NULL, NULL, NULL, '$2y$10$9BgT4eULuBit7rEAazC9EeQ3MbXEROmqFB5.kZ1EHkcTd3gHeydsa', NULL, 1, NULL, NULL),
(330, '81098', '81098', NULL, NULL, NULL, '$2y$10$w9oftkHaCQRVefWsx30Bf.GfK17WkOdCSfsYs.we0NB759aTBlsbm', NULL, 1, NULL, NULL),
(331, '81099', '81099', NULL, NULL, NULL, '$2y$10$/wS6LkHFvzcsVt5efUp7beW57TAOiRDXRvpZcQp.4yel6iwxmH54a', NULL, 1, NULL, NULL),
(332, '82001', '82001', NULL, NULL, NULL, '$2y$10$JKDeOuMUiwCAcVzhXnF9SOWognhGHzp9d/cBynIQp3UitUH13ivQG', NULL, 1, NULL, NULL),
(333, '82003', '82003', NULL, NULL, NULL, '$2y$10$U3Fe.0r4gyeUPb1cBi2ace.6U3WC9TY0il7mKjDN5dxUlcT7nSAPq', NULL, 1, '2020-10-19 11:00:17', NULL),
(334, '82004', '82004', NULL, NULL, NULL, '$2y$10$EZn.6a3.6pTRMWvXdv0o.eKmWNPDHk8PgdfStyrbTiyOKSfygQUa.', NULL, 1, NULL, NULL),
(335, '82005', '82005', NULL, NULL, NULL, '$2y$10$jhB.G4uePbWiA1VSx19hfuunybKPkq/QQJLK52vSm4Mlc5WNHcLHe', NULL, 1, NULL, NULL),
(336, '82019', '82019', NULL, NULL, NULL, '$2y$10$rLj.1E51pL0x3wTSwYZ70uDy/heFMz0BYkrd7XVHI45q9I9A7fshC', NULL, 1, NULL, NULL),
(337, '82023', '82023', NULL, NULL, NULL, '$2y$10$mDS7.WvDATLG57UDjhqcievdJpjhWqW1gNju79GptHiMPF3B1GF3a', NULL, 1, NULL, NULL),
(338, '82031', '82031', NULL, NULL, NULL, '$2y$10$ywf3/bMuHSMjmUPhl0hGCOU0.iHcT6wVnqvept/YwPKkQJwzUmIe.', NULL, 1, NULL, NULL),
(339, '82035', '82035', NULL, NULL, NULL, '$2y$10$C6omaXw0Cci.WLlowTQbt.LKHH6dfH7ZP5yIQz18lTddM6TWH7qJW', NULL, 1, NULL, NULL),
(340, '82037', '82037', NULL, NULL, NULL, '$2y$10$ME.6oefeX4MCmLydl95yAOE8/.wgjiTN6UepcALBOIxmUDvCmcSgW', NULL, 1, NULL, NULL),
(341, '82038', '82038', NULL, NULL, NULL, '$2y$10$VWizY96fF2im79oRQ7A6fOLBArInKk/48ntNgQ0GDIzr8tnGDECF2', NULL, 1, NULL, NULL),
(342, '82040', '82040', NULL, NULL, NULL, '$2y$10$luZ88rW/eG8VvMmKiwW0Fe0QSSAmHtwS5ghuAGozsS/yI6Yt2hqKe', NULL, 1, NULL, NULL),
(343, '82043', '82043', NULL, NULL, NULL, '$2y$10$RlD1bYBqnSKJleWHDXdSbOb67CtggV.Jvs4TDr6/ZVDm6Q7UNbPo.', NULL, 1, NULL, NULL),
(344, '82044', '82044', NULL, NULL, NULL, '$2y$10$xQ/QnV6D.4ck7NnJMM4NkuYxbgFVKhPhp5rL/OrAVaUXjUtkdwSju', NULL, 1, NULL, NULL),
(345, '94002', '94002', NULL, NULL, NULL, '$2y$10$8zovF0YoxfcZjUiDbDYWuucJjukcJYohr7niXzoHhvBLKA.GW8lrW', NULL, 1, NULL, NULL),
(346, '94003', '94003', NULL, NULL, NULL, '$2y$10$RkzybX7e3mXLVl7szzNRge4LJhJTj8qyW0Q/2q9lj2v8G1mlSAVn2', NULL, 1, NULL, NULL),
(347, '94004', '94004', NULL, NULL, NULL, '$2y$10$WbHPPBtNYhJ3lFQqLzRlpeDHNLgfigOsq9Hjh3AKgLof6a0bqZ2FS', NULL, 1, NULL, NULL),
(348, '94005', '94005', NULL, NULL, NULL, '$2y$10$jmE51laOw8IQ7L/JkyZugOdzllZEtu5uMJ..GyfFewRxMjzBe/Tve', NULL, 1, NULL, NULL),
(349, '94008', '94008', NULL, NULL, NULL, '$2y$10$Mz10k9aNGxkMxwzZ32kOE.hIC4SEFOajrzX9iataXDEnTa7edHuxi', NULL, 1, NULL, NULL),
(350, '94012', '94012', NULL, NULL, NULL, '$2y$10$5BqKFlgSdBA.NorXC0SUh.1NpGCQz7HYp/0kms17Dpob/6yc.4Qym', NULL, 1, NULL, NULL),
(351, '94013', '94013', NULL, NULL, NULL, '$2y$10$VXIk4Ns17U9lGFXb/R3LXeDbiTMft5qkz3bQU2Mm70PQEIr6H5Yn6', NULL, 1, NULL, NULL),
(352, '94015', '94015', NULL, NULL, NULL, '$2y$10$HsZtUHmJ8lbR9xq4eQ.Nk.Fm59omty9umvaA3Mz/nJ.9IgT8Kc4Gu', NULL, 1, NULL, NULL),
(353, '94016', '94016', NULL, NULL, NULL, '$2y$10$n67/I0JuqWBZDU8xskSpSeiT.DU5KLIhvlMYrVM24kpuW0BOTXfJy', NULL, 1, NULL, NULL),
(354, '94018', '94018', NULL, NULL, NULL, '$2y$10$9PwiELAoBtrfNQHUiy7uNOUG6q4HDQB3fDWdiIh9KB1scDdTeZZ/m', NULL, 1, '2020-09-16 17:41:03', '2020-09-07 18:19:12'),
(355, '94019', '94019', NULL, NULL, NULL, '$2y$10$QRE..sOqi8eTE2PgS9hgoemWEnDgPiW46lRVXgq/O3K21xg86TqMK', NULL, 1, NULL, NULL),
(356, '94020', '94020', NULL, NULL, NULL, '$2y$10$ahrlc8XcgxsUq2wkWQYBqeI173WzHR4oEjzy4rxgDQuFpBWOB4MZO', NULL, 1, NULL, NULL),
(357, '94024', '94024', NULL, NULL, NULL, '$2y$10$Elk958vT.J0HPMW9QtqyVuRf2ZXX2IKEdSTA9YXvyg0Qxn1IjmmmG', NULL, 1, NULL, NULL),
(359, '41007', '41007', NULL, NULL, NULL, '$2y$10$X1V4PrXvTQkGKtCfAA4ug.1W0cAikHuxYHGPS9ZCx3saNXyeShPs6', NULL, 1, NULL, NULL),
(360, '41009', '41009', NULL, NULL, NULL, '$2y$10$axa8q24Rjg0vS2mqABn6JuXD.AKNHW7Jc0yDsF2dbjslKJbx6suli', NULL, 1, '2020-09-24 15:46:09', NULL),
(361, '41011', '41011', NULL, NULL, NULL, '$2y$10$A08wyPpGeZYNq/Uku/6qAO9FrM2OtwlfWO7ubqp.UTnRMu842iPkO', NULL, 1, NULL, NULL),
(362, '41017', '41017', NULL, NULL, NULL, '$2y$10$hAhZypE9fm143O6Vas0qU.mLcxnxF/hfhtD9zRTgfhqU.fa8FO4zu', NULL, 1, NULL, NULL),
(363, '10338', '10338', NULL, NULL, NULL, '$2y$10$sGf3RzTxOxWxGr6X3kQlIuQrNpWhRkTS.cntHNryZgeQES9EGXq0m', NULL, 1, NULL, NULL),
(365, '10400', '10400', NULL, NULL, NULL, '$2y$10$JKxYPamrLh9KL9lYUejAme/hKAmWT0B2iBhNw920URSFC8t9FRrpq', NULL, 1, NULL, NULL),
(366, '10403', '10403', NULL, NULL, NULL, '$2y$10$GbE/BOHwrHjUaYlC6LBy4.t9e0BHvEUicl6mnVYxf5XcRWnmfVeue', NULL, 1, NULL, NULL),
(372, '70416', '70416', NULL, NULL, NULL, '$2y$10$ktJL7kF5k0Zn3OBvnz8BHuuI1W5gdCI/a.2yzKigllEHhK5SmWyny', NULL, 1, NULL, NULL),
(373, '91479', '91479', NULL, NULL, NULL, '$2y$10$QRE..sOqi8eTE2PgS9hgoemWEnDgPiW46lRVXgq/O3K21xg86TqMK', NULL, 1, NULL, NULL),
(374, '91480', '91480', NULL, NULL, NULL, '$2y$10$QRE..sOqi8eTE2PgS9hgoemWEnDgPiW46lRVXgq/O3K21xg86TqMK', NULL, 1, NULL, NULL),
(375, '91481', '91481', NULL, NULL, NULL, '$2y$10$QRE..sOqi8eTE2PgS9hgoemWEnDgPiW46lRVXgq/O3K21xg86TqMK', NULL, 1, NULL, NULL),
(376, '21088', '21088', NULL, NULL, NULL, '$2y$10$YVx8BcC38FecxF3u6UMYNuEg/Y54LThOTfq/QUyJEf1CzOdVrcUAy', NULL, 1, '2020-09-16 17:18:20', NULL),
(377, '70417', '70417', NULL, NULL, NULL, '$2y$10$QRE..sOqi8eTE2PgS9hgoemWEnDgPiW46lRVXgq/O3K21xg86TqMK', NULL, 1, NULL, NULL),
(383, '10006', '10006', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(384, '10026', '10026', NULL, NULL, NULL, '$2y$10$/ew/wONrTmWgoF7ffFJ8oOYPdwChlGTEJEOtfsLWnutKb1iirMC66', NULL, 1, NULL, NULL),
(385, '10030', '10030', NULL, NULL, NULL, '$2y$10$O48NALf4EmCyr8cJ8V4PVueVLeElyUaFW4UVR/GiwWC2Ffba4lelG', NULL, 1, '2020-09-16 16:50:59', NULL),
(386, '10031', '10031', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(387, '10032', '10032', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(388, '10034', '10034', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(389, '10037', '10037', NULL, NULL, NULL, '$2y$10$xVVvszVDO6xNA1V/NXo9celWPU25VwQ2gZqOsg6ZOhxLQwtwJmtku', NULL, 1, NULL, NULL),
(390, '10040', '10040', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(391, '10042', '10042', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(392, '10046', '10046', NULL, NULL, NULL, '$2y$10$8GgkubrAvWB5JCYkmVZyue.wzSgHGvaEEn6GRbH65ZmkzuAM2bh..', NULL, 1, NULL, NULL),
(393, '10047', '10047', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(394, '10048', '10048', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(395, '10050', '10050', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(396, '10052', '10052', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(397, '10053', '10053', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(398, '10054', '10054', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(399, '10055', '10055', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(400, '10057', '10057', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(401, '10058', '10058', NULL, NULL, NULL, '$2y$10$5isCiXz.Wflde.NeOrsgJeZoN6eDzZo9R5yugze5f8QMvu6oMHKT.', NULL, 1, NULL, NULL),
(402, '10060', '10060', NULL, NULL, NULL, '$2y$10$s5BylY4Dev1GVcSRqpMnZ.bcXF6idjGXNKr/ImId.nVyEM6/o2EdG', NULL, 1, NULL, NULL),
(403, '10061', '10061', NULL, NULL, NULL, '$2y$10$Wnod.vmgnPnROtnJlkpUbeC4qPKT/WbuWKBYMT3mWIy8A3H8W42ju', NULL, 1, '2020-09-23 15:13:08', NULL),
(404, '10062', '10062', NULL, NULL, NULL, '$2y$10$bblgWhh3ScLX6mKl1auTbe3jvoWQIV2sWASO25HsiJ06CgIaTMSGO', NULL, 1, NULL, NULL),
(405, '10063', '10063', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(406, '10065', '10065', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(407, '10067', '10067', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(408, '10070', '10070', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(409, '10088', '10088', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(410, '10089', '10089', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL);
INSERT INTO `users` (`id`, `username`, `id_card`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `active`, `created_at`, `updated_at`) VALUES
(411, '10091', '10091', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(412, '10095', '10095', NULL, NULL, NULL, '$2y$10$ai3dej1anb3sTCNSecG7z.D//rplI4CZl5j9sbD1B4L6A3wHlAGH6', NULL, 1, NULL, NULL),
(413, '10100', '10100', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(414, '10102', '10102', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(415, '10107', '10107', NULL, NULL, NULL, '$2y$10$MiHIKW3mqWM.XsRnQj4CP..gyNgC/pAMtgyTRGpsuFqqRmT8EFVzW', NULL, 1, NULL, NULL),
(416, '10149', '10149', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(417, '10155', '10155', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(418, '10157', '10157', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(419, '10159', '10159', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(420, '10173', '10173', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(421, '10208', '10208', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(422, '10210', '10210', NULL, NULL, NULL, '$2y$10$okuhvYLOpjo6VOWwiNTieO8gUxAIy5GgwRA5volPqBUOv4fWVmybO', NULL, 1, NULL, NULL),
(423, '10215', '10215', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(424, '10220', '10220', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(425, '10222', '10222', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(426, '10225', '10225', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(427, '10246', '10246', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(428, '10260', '10260', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(429, '10266', '10266', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(430, '10282', '10282', NULL, NULL, NULL, '$2y$10$xXS8FS9fU/5lyY4mYYMYg.H1AfD2harFlMihjuBonK7VwdOL/CrdG', NULL, 1, NULL, NULL),
(431, '10285', '10285', NULL, NULL, NULL, '$2y$10$BAt1RW9umPecYeqsqitOPOMPpTDmIFwDcX71AVT5RyI6/qM82BpWq', NULL, 1, '2020-09-16 17:18:11', NULL),
(432, '10304', '10304', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(433, '10327', '10327', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(434, '10339', '10339', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(435, '10344', '10344', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(436, '10349', '10349', NULL, NULL, NULL, '$2y$10$MBaUO444i9vfibvT0g3XHuLZJDEzX.9qgqpWR.VqhQz4mAD7dZR2S', NULL, 1, '2020-09-16 19:33:39', NULL),
(437, '10353', '10353', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(438, '10354', '10354', NULL, NULL, NULL, '$2y$10$/vJ.BFKxMfJq8kD6C5slJO5.ytCsYJeZGy3V38OJn1DoznjjPt1k.', NULL, 1, NULL, NULL),
(439, '10361', '10361', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(440, '10362', '10362', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(441, '10363', '10363', NULL, NULL, NULL, '$2y$10$8lL.83Qtv7jzF/xAh9jzEu9QJNE2F24Plpgm3ECnPsYhQkMARM6oa', NULL, 1, NULL, NULL),
(442, '10364', '10364', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(443, '10376', '10376', NULL, NULL, NULL, '$2y$10$KjDMn2DceLu4aSRrIhkLA.gQ.lkiUTSanB8OMLE74bbMEypUFDg6.', NULL, 1, NULL, NULL),
(444, '10378', '10378', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(445, '10383', '10383', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(446, '10385', '10385', NULL, NULL, NULL, '$2y$10$gV4avUZz8my5v28tjUpgYeEEAeoWBMzAKHUrmaP8P/VuOVGPaEabG', NULL, 1, NULL, NULL),
(447, '10393', '10393', NULL, NULL, NULL, '$2y$10$vCpoJp4TRZyCNgOGlOvlYuWMl5A8/6PIecHUZyAo1lnHDapxglBCW', NULL, 1, '2020-09-16 17:18:31', NULL),
(448, '10394', '10394', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(449, '10399', '10399', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(450, '10401', '10401', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(451, '10402', '10402', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(452, '10404', '10404', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(453, '10405', '10405', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(454, '10407', '10407', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(455, '10409', '10409', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(456, '10417', '10417', NULL, NULL, NULL, '$2y$10$HJ9yP6TJQxmsh.u5PyhZKOr2kYJ50emoEQJbwutmiCm.hDSZiV3Nu', NULL, 1, NULL, NULL),
(457, '10418', '10418', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(458, '10423', '10423', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(459, '10425', '10425', NULL, NULL, NULL, '$2y$10$7y7hUF86kva.EykVhYdXDOZjFfxsDh4IJdCq4jDrAxgkqdyTFsJ1y', NULL, 1, NULL, NULL),
(460, '62005', '62005', NULL, NULL, NULL, '$2y$10$ns2Glo2jW9Ff3NVis01F5eZ6V6F4enQR/jjSVpTNTkiHVcvTRWNW6', NULL, 1, NULL, NULL),
(461, '62044', '62044', NULL, NULL, NULL, '$2y$10$RCJqgjbc8Kmi9BSk6pnrguXgzk7dIdMyHHp9iGexxDVqTg38Fc2Q.', NULL, 1, NULL, NULL),
(462, '62053', '62053', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(463, '10001', '10001', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(464, '10009', '10009', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(465, '10012', '10012', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(466, '10013', '10013', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(467, '10014', '10014', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(468, '10017', '10017', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(469, '10018', '10018', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(470, '10021', '10021', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(471, '10029', '10029', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(472, '10123', '10123', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(473, '10270', '10270', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(474, '82045', '82045', NULL, NULL, NULL, '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', NULL, 1, NULL, NULL),
(477, '100070', '100070', NULL, NULL, NULL, '$2y$10$luJLWiNnHKKcZ.I.Fd8b7OV1G58jzJhzFOVQQ3ZcWiCuhZ7nkX9hO', NULL, 1, NULL, NULL),
(478, '10419', '10419', NULL, NULL, NULL, '$2y$10$GEfCdCiEVLLL0lihF1YaFO5uxLJUOnG2jgk.7CbmI0Mj.31h8h7WG', NULL, 1, NULL, NULL),
(485, '88888', '88888', NULL, NULL, NULL, '$2y$10$5/k8EvC9S6Uxmv8BMp0HieY9fjaSCFvhlio47yLTM1TQjeBU2p1WK', NULL, 1, NULL, NULL),
(486, '85081', '85081', NULL, NULL, NULL, '$2y$10$rt5KlYuAFciBTLzitcBuMOWMLmxlWANeaJOMBV7Lzeh6HwyM2ccJe', NULL, 1, NULL, NULL),
(487, '91483', '91483', NULL, NULL, NULL, '$2y$10$8odbRE.QGPVjrfWulyHMf.QxHKd2nqLpx6B.OBAGTs6759Rqs/0Pi', NULL, 1, NULL, NULL),
(488, '94027', '94027', NULL, NULL, NULL, '$2y$10$.xGw1FEF4IrCE7h8Nc6pLubp7LEYtaILCR9Hb/D4mGltp6J7iJAn.', NULL, 1, NULL, NULL),
(489, '70418', '70418', NULL, NULL, NULL, '$2y$10$lauvJGHtMWLXzAeS5pjVmOxXEfmBTcqvhYwnEZLqknYxMw2dLKTxy', NULL, 1, NULL, NULL),
(490, '91482', '91482', NULL, NULL, NULL, '$2y$10$x14sVIBxVQgPdPSTo0CLYuSey44V5nKmeoc5x5BqvozxBf423nOJC', NULL, 1, NULL, NULL),
(492, '70411', '70411', NULL, NULL, NULL, '$2y$10$pPH1N3bUd3QiyVkvQvryCexobgWBnapnNL9i98J3t47j78q60oRx.', NULL, 1, NULL, NULL),
(493, '70412', '70412', NULL, NULL, NULL, '$2y$10$LHmEULJ8/SsOJM0FJJHm1uRMqaJOQ0rfRpkPXF4RDiqM/CioUw/tG', NULL, 1, NULL, NULL),
(494, '70413', '70413', NULL, NULL, NULL, '$2y$10$I.v8GotOMOrDYy985iVkcOkogFGAGVkSSCePZi28oXVjv2BwVlfey', NULL, 1, NULL, NULL),
(495, '70414', '70414', NULL, NULL, NULL, '$2y$10$zdSbtqJ7Rrb9xFdGJKTxJ.wDyqcj7hTZzKXsB7uZi8Sh1CW9hehEm', NULL, 1, NULL, NULL),
(496, '70415', '70415', NULL, NULL, NULL, '$2y$10$RPNGv9WbZdpHzQ59HXTlNu9WOtScFw3kkA69TQurtYnutyVm9SU.S', NULL, 1, NULL, NULL),
(497, '70416', '70416', NULL, NULL, NULL, '$2y$10$TdY9L5twTO82nIJnN6kzne4aSvZynjQLL5YCvxq5GpWS.98D461yO', NULL, 1, NULL, NULL),
(498, '70419', '70419', NULL, NULL, NULL, '$2y$10$b/jEdex6vMcMMxNqT16XtupuWexmSpuQy9ho6z4nuxEajI5M7l2pm', NULL, 1, NULL, NULL),
(499, '85080', '85080', NULL, NULL, NULL, '$2y$10$j58hUurTDkaieBBbmzifj.inFo6dt78Xd.bvuhB.1SrVTlrqETv8G', NULL, 1, NULL, NULL),
(500, '85082', '85082', NULL, NULL, NULL, '$2y$10$gw6qX4xoXGOo6V/AMmAUfug7IrXNNBtal7pUtxt64jZsacxbVblBC', NULL, 1, NULL, NULL),
(501, '91485', '91485', NULL, NULL, NULL, '$2y$10$zxd7gumbqf9O5.p0Um1yhexBu2nzFTbYeA960kRJEg5SsQKf8K/vm', NULL, 1, NULL, NULL),
(502, '91484', '91484', NULL, NULL, NULL, '$2y$10$O8qGi1NLIz02nkRFoq1Xluiurd5OFwWFEpGzepXQYCCLcIStrLK6u', NULL, 1, NULL, NULL),
(503, '91486', '91486', NULL, NULL, NULL, '$2y$10$h2.BMb.iT26IvWrxsV4KpeisOMVEBEsX0rmxzcBvUNAKigVbGK9C6', NULL, 1, NULL, NULL),
(504, '91487', '91487', NULL, NULL, NULL, '$2y$10$yEVfzf1rfcBQNfYO.SjrEOhS.DFsXszzDR2WdTOwt/./Qmt2gCpDG', NULL, 1, NULL, NULL),
(505, '91488', '91488', NULL, NULL, NULL, '$2y$10$Krct6XylAMB56.rI8KqqJ.x8RrRUs16FThbK7L2DJxz9ER6AIspn2', NULL, 1, NULL, NULL),
(506, '81102', '81102', NULL, NULL, NULL, '$2y$10$SDFH.VL31RJH6FNNbJOOcO3MuCTTK4qcq5GdoTSRznjWsf61VKSDi', NULL, 1, NULL, NULL),
(507, '85084', '85084', NULL, NULL, NULL, '$2y$10$TfaIZtkXExDZ2ZuCAMn.B.TJPae1QZBoZj3bVYZuYKw97qVMye1lm', NULL, 1, NULL, NULL),
(508, '85085', '85085', NULL, NULL, NULL, '$2y$10$a/oqPpq9XHXPQv10ezaH0eg2p/HKCLrhhVAgRrc3YyPjmJ5v4F7DS', NULL, 1, NULL, NULL),
(509, '91489', '91489', NULL, NULL, NULL, '$2y$10$4OeZXUGwqTxofc6xsXs8v.yj3D0vVYkPDb1NNPAd6K0K/nHhyvc6m', NULL, 1, NULL, NULL),
(510, '91490', '91490', NULL, NULL, NULL, '$2y$10$na359PO.eUqdvBV1wuQK1e8PWWXwHyx4qx4lgbjtxxgZsYo.dbXVe', NULL, 1, NULL, NULL),
(511, '51308', '51308', NULL, NULL, NULL, '$2y$10$wH1EAJnxHktDC2xtVkzNt./gO57LGifuK/3MRtnrNerBh.RyqtP5C', NULL, 1, NULL, NULL),
(512, '51309', '51309', NULL, NULL, NULL, '$2y$10$JZLGGNMFtN/G3VBc7YeAEuJsMYVVRxYo6eSux0HTHc9SO.Oqdan7O', NULL, 1, NULL, NULL),
(513, '91491', '91491', NULL, NULL, NULL, '$2y$10$hNXD0M/Q9n9X6Tm1hLMWuu7uzCr7lAypKVv.ig8NqMYAvzO4kwqpC', NULL, 1, NULL, NULL),
(514, '91492', '91492', NULL, NULL, NULL, '$2y$10$aQa4o7juQccpSNCr78Ts5O8W6dv7R.D.xjHAn/GqUKYpUJu/WjjSq', NULL, 1, NULL, NULL),
(515, '91494', '91494', NULL, NULL, NULL, '$2y$10$DaIZp7PhVzCNsDKEArVMXu7YL2iWmbIiD/bIQ8LV2mTIc4/3GmynW', NULL, 1, NULL, NULL),
(516, '91495', '91495', NULL, NULL, NULL, '$2y$10$Pbn1YkoyoFExwIPzYybKNeLNf4JqFcXRVNNThB4IKjbN8boOBCfLW', NULL, 1, NULL, NULL),
(517, '91496', '91496', NULL, NULL, NULL, '$2y$10$lL9qD0KdqbUKffN.QDu1RO/G8d/R1Mpbs00huu5vn5wwOCJAJv4q6', NULL, 1, NULL, NULL),
(518, '81103', '81103', NULL, NULL, NULL, '$2y$10$BzoJ2/VKq2RReb/ruVvZ6OKhRj3m2ZCGltF.1xPBBVjxNYdWq3c0a', NULL, 1, NULL, NULL),
(519, '82046', '82046', NULL, NULL, NULL, '$2y$10$qk44Pb42OQkKFbL2BwZRa.Zh4skFeRRHrJ8HZ.09GzwIXnowU5cIO', NULL, 1, NULL, NULL),
(520, '85087', '85087', NULL, NULL, NULL, '$2y$10$ytPKIGdX/abK0.VSWODIFO2hTCqSxH0ZLcVMQsANqamgJirr.wqWO', NULL, 1, NULL, NULL),
(521, '70420', '70420', NULL, NULL, NULL, '$2y$10$JkQJZnysXyT8oGU2wB85ge57orTJHwWrVkAeBtz4H8sHlDSOncceS', NULL, 1, NULL, '2020-09-25 13:51:53'),
(522, '91497', '91497', NULL, NULL, NULL, '$2y$10$qHDCM6gL9V5n0T0k0aNKj.8sMZJkPc78CT6XoilGmn4UEWbYaxqu6', NULL, 1, NULL, NULL),
(523, '91498', '91498', NULL, NULL, NULL, '$2y$10$loBrjbl0hA5sE.yVsjYMaeFBF0Z.kTaxHqohwzafbTB6A5Uf4F4AG', NULL, 1, NULL, NULL),
(524, '91499', '91499', NULL, NULL, NULL, '$2y$10$FPLHs3g1FC6ejcapUlTHoOLyfA3mBspOi.yKV4GmphMZmBSZyGyXm', NULL, 1, NULL, NULL),
(525, '91500', '91500', NULL, NULL, NULL, '$2y$10$dhb3vTqzjsKKx6eZIWy7v.VH3btm1r8TNF1uUGDQwY36pAhzBK7jW', NULL, 1, NULL, NULL),
(526, '91501', '91501', NULL, NULL, NULL, '$2y$10$nI09lFzXJZPvaUB2lZUO8e9cx4IAA2RzJgWmk9WYoGH1F5.jqwyd2', NULL, 1, NULL, NULL),
(527, '91502', '1349900404438', NULL, NULL, NULL, '$2y$10$x3bXHIpEo0.fmzxuhl5daerqmQu4oTp.SNHcRJSkIwEP3wkBWVhly', NULL, 1, NULL, NULL),
(528, '91503', '1199900710972', NULL, NULL, NULL, '$2y$10$CNLrUeiMTKalItvHZmPrkepDCqKrsXC4ZuhFccpexX.u6kTA.LA2y', NULL, 1, NULL, NULL),
(529, '91504', '1149900350135', NULL, NULL, NULL, '$2y$10$a1bTLsDpTcqjZtFYuHcMyOxrDHmiQG0h5GSUuCbWDLjpzVf5u/mUi', NULL, 1, NULL, NULL),
(530, '91505', '1103701046783', NULL, NULL, NULL, '$2y$10$nZiro1WHLzQH.zfQumFAsOzrhWlBv1wgd3oKNG1EF.h4PL7X9I3/a', NULL, 1, NULL, '2020-10-14 11:20:51'),
(531, '91506', '1100701164961', NULL, NULL, NULL, '$2y$10$I3/.mvEsyY0BMq8zBsGCDOTje9b.z7dlNGClp5twbbwhZxYsFnwde', NULL, 1, NULL, NULL),
(532, '91507', '1103100479936', NULL, NULL, NULL, '$2y$10$vJE3eldeCw/U4uI6.fuHaeHcqTjDP9bd1CBVo4YMAM2mVHadQCu9S', NULL, 1, NULL, NULL),
(533, '91508', '1103100485171', NULL, NULL, NULL, '$2y$10$n.dbYu9lcZE1kY.wb0JRceex9V.fvxb8t04gCBlh0Zxz5UwLDNKue', NULL, 1, NULL, '2020-10-14 11:20:44'),
(534, '91509', '1430300206857', NULL, NULL, NULL, '$2y$10$L07CCtjDzNiRzF5g9joBReyDJsPyROnl3wS38KzdcXHlIE6y396Y6', NULL, 1, NULL, NULL),
(535, '82047', '8700376045921', NULL, NULL, NULL, '$2y$10$nvFaggx.1Ir8GrZ1NGi.nu8wfcwjxbq9i/t8FdnYtQfPb49OrauWm', NULL, 1, NULL, NULL),
(536, '51312', '1369200007231', NULL, NULL, NULL, '$2y$10$9.r6kcwK.3yrzpTjUMBZv.zHGWBcfZ9Ss1UmWyP5wIp2cgD745hgy', NULL, 1, NULL, NULL),
(537, '51313', '1159800072869', NULL, NULL, NULL, '$2y$10$uycXxVdgQ0YhEdvU1ix0Be/l5EFoBTdE4AfkIaXBX01wBUAI8kFr.', NULL, 1, NULL, NULL),
(538, '91510', '1801600175890', NULL, NULL, NULL, '$2y$10$eixnBUKnhiQKpfqln1DU6.LqYXdcW7O/zjI8BsDxV3iY1/raiaQXi', NULL, 1, NULL, NULL),
(539, '91511', '1400900173801', NULL, NULL, NULL, '$2y$10$vS1uzI5AahUzvspN3gtq3uQ5uc3mmPUSa9DVIkCVUvnS4EuG9t5tK', NULL, 1, NULL, NULL),
(540, '91512', '1100702479958', NULL, NULL, NULL, '$2y$10$4UQM0.N6zfr4s.YVqOxP3OqdUr/LsqCpnlEk6IzMNJ9Q9TgABNlB6', NULL, 1, NULL, NULL),
(541, '51314', '1341400021061', NULL, NULL, NULL, '$2y$10$BpZbR3MJGlftAKvU7zXNIuXIpKEiTF5fDnGmtEfAmak1kmOAHhvM6', NULL, 1, NULL, '2020-10-01 19:48:42'),
(543, '91513', '1100400315073', NULL, NULL, NULL, '$2y$10$EKQG9ItmgvelxJusASGTaO7QHFXFtaZCa.wp4ZLCtm4zteXdgIIgG', NULL, 1, NULL, NULL),
(544, '91514', '1100900420810', NULL, NULL, NULL, '$2y$10$hJ3gjX4f9b6dQ.54lBkh6OQInJHU1MuxTOxQJGlnd7Y4FlRTdmfkS', NULL, 1, NULL, NULL),
(545, '91515', '1709900820098', NULL, NULL, NULL, '$2y$10$9cn46JHhcXQswvx/iy3tTe.dFcGWXnEUFAIxDDhaoifgsTTJhP0pu', NULL, 1, NULL, NULL),
(546, '82048', '1700300060547', NULL, NULL, NULL, '$2y$10$rC.ZsYrhgtw6h.lfOA6DtOy9YPmjbVBof14mcdzjJygIvCjbrT2Di', NULL, 1, NULL, NULL),
(547, '51315', '1100701185799', NULL, NULL, NULL, '$2y$10$tbBVpLbbzQtPk0qBEkenVeU.GrfN2zttPApko9ioMJwOMiBnNwGGW', NULL, 1, NULL, NULL),
(548, '85090', '1199800083577', NULL, NULL, NULL, '$2y$10$w1qT356N6/qu816Fj1TB8eBpQ6EETfyv4yLs8CUYuqW0oo7D3K1Fm', NULL, 1, NULL, NULL),
(549, '51316', '1331700054681', NULL, NULL, NULL, '$2y$10$Ykc5EM2s0q0sgTnqMnEej.vqlNn1afBBBvBksP3J80BbiCxKlrB62', NULL, 1, NULL, NULL),
(550, '91516', '1103700087231', NULL, NULL, NULL, '$2y$10$HsrxbU9EKxD4ySEg6jEFhuiiqBwqRQaXrXuh5feNCWW5iMLcb0Eoi', NULL, 1, NULL, NULL),
(551, '91517', '1801600168486', NULL, NULL, NULL, '$2y$10$F1CFamuM4S4dFgSz3fzYkOshG5m/cPgyM3816IssYb/vR8BRPme0i', NULL, 1, NULL, '2020-10-20 08:52:47'),
(552, '91518', '1104000001369', NULL, NULL, NULL, '$2y$10$700OKzoSCMxst6ORVjQSyOeICQ/HEC8oosiyckbO9LMgLb.qBHx5C', NULL, 1, NULL, NULL),
(553, '91519', '1102002088150', NULL, NULL, NULL, '$2y$10$Bg95i.O3clfmF.tCc5LTxuHDyIA.fProJrdNVP2vk.WTs8t7WeRBm', NULL, 1, NULL, NULL),
(554, '21089', '1100400857364', NULL, NULL, NULL, '$2y$10$uIRO4GePrDlrjoCvIV8fXeNJso0iYtRFHXQH4frdEwKKmgQjRQ64m', NULL, 1, NULL, NULL),
(555, '91520', '1659900491788', NULL, NULL, NULL, '$2y$10$pjLxPXJMvW8sC4YJtScG9u4Oo2Uv.UHXmAxCYiS29XeRDt6Eq.z5a', NULL, 1, NULL, NULL),
(556, '91521', '1469900219869', NULL, NULL, NULL, '$2y$10$zWSFRgVr3NRpBKNkcZ.iWeKCOFm6oR4ENj2C5QYQfE3SOJ55.iCoW', NULL, 1, NULL, NULL),
(557, '91522', '1470400097715', NULL, NULL, NULL, '$2y$10$/sidF6kWalKN9oYFLRyZk.5izUWV99inpCYlMCEqHDVqBZsE.pGhG', NULL, 1, NULL, NULL),
(558, '51317', '1103100439446', NULL, NULL, NULL, '$2y$10$zyIRyXE7SHczb0bJkfBnW.hQj/IYDW9zaqy0PzXswE26IKMuuyNeO', NULL, 1, NULL, NULL),
(559, '85089', '85089', NULL, NULL, NULL, '$2y$10$N0pSP3mOndQ7x6KNWHMY..ks.jF0IkpabjN.8nIPwfdrU8x8iFLI6', NULL, 1, NULL, NULL),
(1075, 'admin', 'admin', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1096, '10001', '3360200089392', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1097, '10006', '3401200133413', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1098, '10009', '3670800230816', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1099, '10012', '1103701653035', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1100, '10013', '1311000103337', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1101, '10014', '3300200111771', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1102, '10017', '3100903670392', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1103, '10018', '5440600048702', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1104, '10021', '1102800048856', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1105, '10026', '3249900210584', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1106, '10029', '3301300022614', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1107, '10030', '1100400019971', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1108, '10031', '5301200098402', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1109, '10032', '1103701653035', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1110, '10034', '5440600048702', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1111, '10037', '3102101655407', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1112, '10040', '1100700689840', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1113, '10042', '1101400978847', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1114, '10046', '3520300401323', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1115, '10047', '1340700052530', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1116, '10048', '10048', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1117, '10050', '3100902919214', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1118, '10052', '3250800351323', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1119, '10053', '1550900034517', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1120, '10054', '1350100089581', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1121, '10055', '3520300160712', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1122, '10057', '15605-000061240', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1123, '10058', '3710200230776', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1124, '10060', '15605000061240', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1125, '10061', '3640900327579', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1126, '10062', '1469900072795', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1127, '10063', '3909800506230', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1128, '10065', '1101400200951', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1129, '10067', '5342100043071', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1130, '10070', '10070', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1131, '10088', '10088', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1132, '10089', '3120100408901', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1133, '10091', '3341700003319', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1134, '10095', '3770600499918', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1135, '10100', '3430100580069', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1136, '10102', '1570500112677', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1137, '10107', '1101800496360', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1138, '10123', '6014800134331', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1139, '10149', '3360700149271', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1140, '10155', '3102102072758', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1141, '10157', '1430400128220', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1142, '10159', '1379900027804', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1143, '10173', '1461300132706', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1144, '10208', '10208', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1145, '10210', '10210', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1146, '10215', '37102000230776', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1147, '10220', '1609800081111', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1148, '10222', '1330200003319', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1149, '10225', '10225', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1150, '10246', '3610600514144', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1151, '10260', '10260', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1152, '10266', '1342100072914', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1153, '10270', '1739900259027', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1154, '10282', '1570501291931', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1155, '10285', '12102000045527', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1156, '10304', '1749900367482', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1157, '10327', '1100702879891', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1158, '10338', '5320100140431', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1159, '10339', '1570500210148', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1160, '10344', '3710100437956', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1161, '10349', '1220300069525', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1162, '10353', '3440900980151', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1163, '10354', '5342300000618', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1164, '10361', '10361', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1165, '10362', '3480500401323', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1166, '10363', '1331000094371', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1167, '10364', '10364', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1168, '10376', '1939900352980', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1169, '10378', '2929800010384', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1170, '10383', '10383', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1171, '10385', '3650400441763', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1172, '10393', '3530900297204', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1173, '10394', '1839900254555', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1174, '10399', '10399', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1175, '10400', '3101400005292', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1176, '10401', '10401', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1177, '10402', '10402', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1178, '10403', '8430288015772', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1179, '10404', '24203000021103', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1180, '10405', '10405', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1181, '10407', '10407', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1182, '10409', '10409', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1183, '10417', '10417', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1184, '10418', '10418', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1185, '10423', '10423', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1186, '10425', '10425', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1187, '21002', '3120200125340', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1188, '21004', '3321200201053', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1189, '21007', '3349900834447', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1190, '21015', '3100202297296', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1191, '21035', '3200900774862', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1192, '21036', '3110400959856', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1193, '21037', '3302400144826', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1194, '21038', '3460600148468', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1195, '21039', '3660600250481', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1196, '21041', '3460700935674', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1197, '21042', '3220100336101', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1198, '21043', '3440800659946', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1199, '21044', '3860700083801', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1200, '21046', '3550500326045', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1201, '21047', '1101401681091', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1202, '21049', '3401400098824', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1203, '21050', '3320100308246', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1204, '21051', '1920300069341', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1205, '21054', '3450700364405', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1206, '21055', '1440800020477', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1207, '21056', '1320300105881', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1208, '21057', '1329900385417', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1209, '21058', '3340101053705', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1210, '21059', '3770100431133', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1211, '21063', '1659900803160', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1212, '21068', '3350600287370', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1213, '21074', '1301700211345', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1214, '21075', '1361400030850', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1215, '21076', '1100701886070', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1216, '21081', '1409901293949', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1217, '21083', '1650400083208', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1218, '21085', '1102001947469', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1219, '21088', '1102001156585', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1220, '22001', '3320100311786', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1221, '22002', '3300101127121', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1222, '22003', '3300101235846', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1223, '22004', '5301000051542', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1224, '22005', '3301000141600', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1225, '22006', '3301000144421', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1226, '22007', '3300100968904', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1227, '22008', '1301000016507', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1228, '22009', '3301001096004', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1229, '22010', '3300100968084', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1230, '22011', '3300101140098', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1231, '22012', '3300600307214', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1232, '22013', '3160400247643', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1233, '22014', '3301000287663', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1234, '22015', '3301000539735', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1235, '22016', '3300101006057', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1236, '22017', '3300100976818', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1237, '22018', '3301000371311', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1238, '22019', '3300101126397', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1239, '22020', '3300100156454', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1240, '22021', '1309900074691', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1241, '22022', '3309600075877', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1242, '22023', '3301000338977', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1243, '22024', '1309600061811', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1244, '22025', '1301000060786', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1245, '22027', '1361500007752', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1246, '22028', '3301000266712', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1247, '22029', '5360400010974', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1248, '22030', '5301100003086', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1249, '22031', '3250400423432', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1250, '22032', '3250600145525', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1251, '22033', '3301000139648', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1252, '41007', '3660500006627', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1253, '41009', '3660100888711', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1254, '41011', '3360300325632', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1255, '41017', '3401300187914', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1256, '51002', '3100700820314', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1257, '51003', '3660100733432', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1258, '51006', '3180500334807', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1259, '51009', '1710900024111', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1260, '51011', '3220100460111', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1261, '51012', '5312000004463', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1262, '51014', '3300600587667', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1263, '51018', '3860400437497', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1264, '51020', '3401400098832', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1265, '51021', '3451000094970', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1266, '51023', '3440800477821', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1267, '51025', '1102002123800', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1268, '51030', '3100400233049', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1269, '51031', '3480700477021', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1270, '51032', '3610200253033', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1271, '51033', '3480700605950', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1272, '51038', '3570200135767', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1273, '51040', '3102101808050', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1274, '51042', '3360400432368', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1275, '51043', '3100901509021', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1276, '51048', '1361200027235', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1277, '51049', '3461400168423', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1278, '51053', '3670800230808', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1279, '51059', '3560100371469', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1280, '51062', '3101401353383', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1281, '51064', '3401400275955', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1282, '51085', '3100100755881', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1283, '51113', '3601000399451', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1284, '51115', '1100200145646', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1285, '51140', '3670822230816', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1286, '51150', '1102800048856', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1287, '51156', '1100702590042', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1288, '51158', '3430100580069', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1289, '51168', '3101202036841', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1290, '51170', '3410700031759', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1291, '51171', '3102401326034', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1292, '51172', '1410600202679', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1293, '51186', '1412300012078', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1294, '51187', '1412300011136', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1295, '51189', '1480800021619', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1296, '51194', '3311000989838', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1297, '51200', '3320400090106', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1298, '51208', '1410500043960', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1299, '51214', '3660100733432', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1300, '51215', '1311000240270', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1301, '51217', '1460200048451', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1302, '51218', '1102700448275', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1303, '51222', '3101702275012', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1304, '51234', '3411700291441', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1305, '51235', '1103100625169', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL);
INSERT INTO `users` (`id`, `username`, `id_card`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `active`, `created_at`, `updated_at`) VALUES
(1306, '51237', '3620400145234', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1307, '51239', '1101400371675', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1308, '51240', '1100800745377', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1309, '51241', '1409900420858', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1310, '51242', '3110101165475', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1311, '51248', '2770600025209', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1312, '51255', '1411800145483', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1313, '51257', '3200100407474', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1314, '51259', '1310100156555', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1315, '51262', '1102002039388', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1316, '51266', '1350100499037', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1317, '51270', '1659900522756', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1318, '51273', '3101202479948', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1319, '51274', '3430700054597', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1320, '51275', '3420300416581', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1321, '51277', '2670700027743', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1322, '51282', '1431000066040', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1323, '51283', '1369900524191', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1324, '51288', '3102002873333', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1325, '51289', '1620500184201', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1326, '51292', '1610200075562', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1327, '51293', '1102700083889', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1328, '51294', '1720100018680', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1329, '51295', '1601100244444', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1330, '51299', '3160600013239', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1331, '51300', '1102800057383', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1332, '51301', '3480200007026', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1333, '51304', '1419900610185', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1334, '61002', '3330401299459', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1335, '61003', '3400900572231', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1336, '61035', '3101203485186', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1337, '61037', '3301401202766', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1338, '61045', '3440400287286', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1339, '61050', '32501000146769', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1340, '61054', '3251200527481', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1341, '61055', '3100905641225', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1342, '61060', '3490100433414', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1343, '61062', '3160600652312', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1344, '61070', '5660600050021', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1345, '61072', '3560100129152', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1346, '61079', '3230400128414', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1347, '61082', '3440800609647', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1348, '61109', '3401500435393', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1349, '61134', '3660200113436', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1350, '61140', '3410400635667', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1351, '61142', '3301401233637', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1352, '61150', '1350800050920', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1353, '61152', '3500400362970', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1354, '61154', '362040054711', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1355, '61155', '3920300115438', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1356, '61163', '3100202557476', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1357, '61164', '3331000776621', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1358, '61170', '3440800608624', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1359, '61172', '1160100156603', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1360, '61173', '1739900523506', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1361, '61175', '3100700907428', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1362, '61190', '1710100088521', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1363, '61191', '1560300004439', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1364, '61193', '3710900694872', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1365, '61197', '1100900424416', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1366, '61200', '3311000962182', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1367, '61205', '3250600240625', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1368, '61208', '3451000914497', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1369, '61209', '5470100055149', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1370, '61212', '3102200990816', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1371, '61217', '3100900025984', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1372, '61218', '3440500521710', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1373, '61219', '1102000687111', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1374, '61222', '1330400041753', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1375, '61224', '1349900282910', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1376, '61230', '1719900283556', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1377, '61233', '2360600022181', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1378, '61234', '1660700085117', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1379, '61235', '1101400798172', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1380, '62005', '3430200356306', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1381, '62044', '1411800145483', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1382, '62053', '62053', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1383, '70411', '3120400268900', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1384, '70412', '3209800089112', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1385, '70413', '1101401652414', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1386, '70414', '1103700049878', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1387, '70415', '3102300119084', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1388, '85078', '1330400412948', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1389, '70417', '3509901252199', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1390, '70419', '1100800278701', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1391, '81026', '1709900706384', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1392, '81047', '317020035981', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1393, '81080', '3190600200292', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1394, '81083', '1100400896696', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1395, '81086', '3730100067717', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1396, '81089', '3101200805244', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1397, '81090', '1709901097365', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1398, '81096', '3900700082120', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1399, '81097', '1101500764016', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1400, '81098', '1100800754937', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1401, '81099', '1470300075451', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1402, '91479', '1709901105881', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1403, '82001', '6700371011488', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1404, '82003', '6700371029891', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1405, '82005', '700389038672', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1406, '82023', '8700376033770', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1407, '82035', '8700376001240', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1408, '82037', '3480700477021', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1409, '82038', '700389043111', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1410, '82043', '8700376022093', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1411, '82044', '1700200078862', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1412, '85006', '6015400518001', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1413, '85016', '1410500043960', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1414, '85031', '1609900005841', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1415, '85033', '1770600257055', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1416, '85035', '1620400017345', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1417, '85042', '1729800206266', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1418, '85050', '1221000015013', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1419, '85051', '1219900640477', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1420, '85053', '3460700555294', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1421, '85060', '1101100220214', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1422, '85066', '3240300716403', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1423, '85073', '3100902390523', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1424, '85074', '3840600044383', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1425, '85076', '3471000034942', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1426, '91476', '1110300203087', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1427, '91477', '3180500623078', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1428, '70416', '3720300130951', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1429, '91480', '1100801073178', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1430, '91006', '3101200141982', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1431, '91025', '1739900259027', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1432, '91030', '1230400005405', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1433, '91047', '1430200106133', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1434, '91056', '1310100171619', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1435, '91059', '1100400216121', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1436, '91060', '3102001284831', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1437, '91077', '3100903670392', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1438, '91086', '3102200617091', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1439, '91098', '5101499032536', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1440, '91099', '3110400659143', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1441, '91111', '3101701236668', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1442, '91112', '3101600595921', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1443, '91118', '3129900340616', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1444, '91129', '3730100847402', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1445, '91138', '1412100049679', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1446, '91153', '3401200133413', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1447, '91163', '1779800156421', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1448, '91164', '3100601845611', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1449, '91191', '1100800099343', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1450, '91197', '2341500024302', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1451, '91216', '1490300074551', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1452, '91218', '3340400009511', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1453, '91219', '5670700065372', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1454, '91221', '3750200386661', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1455, '91230', '1529900334365', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1456, '91233', '1311100181020', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1457, '91238', '3102201864695', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1458, '91247', '1560300019479', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1459, '91250', '1509901384102', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1460, '91251', '3102102145704', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1461, '91254', '1309900518042', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1462, '91257', '3100600008162', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1463, '91260', '1103701475269', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1464, '91262', '3301900219290', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1465, '91264', '3341500030271', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1466, '91266', '3801200633170', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1467, '91275', '3101700262878', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1468, '91287', '1300100144913', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1469, '91290', '1660700005016', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1470, '91294', '1100800962971', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1471, '91305', '1600100378580', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1472, '91307', '1149900164587', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1473, '91318', '1100701183834', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1474, '91321', '1100400426096', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1475, '91324', '1103701657740', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1476, '91326', '1570100083564', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1477, '91327', '1103701214686', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1478, '91332', '1329900582310', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1479, '91337', '1801400233926', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1480, '91338', '1369900002046', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1481, '91339', '1102000069085', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1482, '91348', '1449900358206', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1483, '91350', '1840600012001', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1484, '91351', '1819900062117', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1485, '91358', '3160400430537', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1486, '91359', '1459900441928', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1487, '91363', '3100202297296', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1488, '91364', '1103100224610', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1489, '91375', '1711000014870', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1490, '91376', '1240800130941', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1491, '91385', '1100701502212', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1492, '91392', '1829900136382', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1493, '91395', '1102200062785', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1494, '91396', '1102001745351', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1495, '91398', '1390400087842', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1496, '91399', '1100800787649', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1497, '91400', '1571200051134', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1498, '91402', '110200290845', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1499, '91403', '1801600159711', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1500, '91405', '1801100151363', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1501, '91415', '1769900303662', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1502, '91416', '1101800647457', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1503, '91418', '1509901596151', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1504, '91427', '1101500523281', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1505, '91433', '1419900502528', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1506, '91435', '3330401083553', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1507, '91440', '3410102057754', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1508, '91442', '3120300039194', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1509, '91443', '1101500621096', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1510, '91450', '1629900283239', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1511, '91452', '1100400969316', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1512, '91454', '8505073010753', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1513, '91466', '1329900444286', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1514, '91470', '1411100237768', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1515, '91471', '1540300057940', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1516, '91472', '1100400265670', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1517, '91473', '3102102212959', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1518, '91475', '8500973017211', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1519, '85081', '1102001553584', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1520, '85083', '5331000025495', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1521, '82045', '1700300080001', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1522, '91484', '1103700211721', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1523, '94002', '1100600194423', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1524, '94003', '1100200241017', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1525, '94004', '3120200403536', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1526, '94005', '1100800558488', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1527, '94008', '3920600780534', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1528, '94012', '1129900359884', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1529, '94013', '1101401711569', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1530, '94015', '144990262781', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1531, '94016', '3102100522063', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1532, '94018', '1179900327249', NULL, NULL, NULL, '$2y$10$VV1b0Fww2KpijNdGavkvjO5QLP3L0KeMkN26bbQN2tu/S5/CNn8hC', NULL, 1, '2020-09-14 06:29:13', NULL),
(1533, '94019', '1461600001097', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1534, '94020', '1102001792023', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1535, '94024', '1103700172548', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1536, '91483', '1100200713261', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1537, '70418', '3220100043154', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1538, '91482', '1459900269033', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1539, '94027', '1100702325128', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1540, '91485', '3801301089980', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1541, '91481', '1500900148679', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1542, '91487', '1104100002235', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1543, '91488', '8505076009764', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1544, '85084', '1129800104710', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1545, '85085', '1101500878941', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1546, '91489', '1550900080527', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1547, '51308', '3720800407529', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1548, '51309', '3410101200391', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1549, '91491', '3220400179698', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1550, '91492', '1209700560496', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1551, '91496', '1430300253421', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1552, '81103', '1709900320150', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1553, '82046', '8700373013239', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1554, '70420', '1100800312861', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1555, '91497', '1102700510311', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1556, '91498', '1600800105608', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1557, '91499', '1431300009033', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1558, '91500', '5200101040762', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL),
(1559, '91501', '1710500142931', NULL, NULL, NULL, '$2y$10$fQJcNynGycVuZ2sUoMUTJe6JwyUS012eWhvVdo8TSQD32RD8el.VG', NULL, 1, '2020-09-14 06:27:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_detail`
--

CREATE TABLE `users_detail` (
  `id` bigint(100) NOT NULL,
  `group_staff` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `Code_Staff` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Card_Staff` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name_Thai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name_Eng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Faction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Degree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Workplace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Working_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateofBirth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HireDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IDCardNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FamilyStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JGStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Yearsofservice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TelephoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Current_Address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Resigned_Date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Vacation_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sick_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Business_leave_necessary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Maternity_leave_paid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Maternity_leave_not_paid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ordination_leaven` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Marriage_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Accident_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Military_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sterilization_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Time_offset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Leave_without_pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sick_leave_not_receiving_wages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cremation_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Leave_instead_of_holidays` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Leave_to_study` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Take_a_break` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Absence_from_work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.png',
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `Company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_detail`
--

INSERT INTO `users_detail` (`id`, `group_staff`, `Code_Staff`, `Card_Staff`, `Name_Thai`, `Name_Eng`, `Faction`, `Department`, `Degree`, `Workplace`, `Working_status`, `Position`, `DateofBirth`, `StartDate`, `HireDate`, `IDCardNumber`, `Sex`, `FamilyStatus`, `JGStatus`, `Yearsofservice`, `Age`, `Nickname`, `TelephoneNumber`, `Address`, `Current_Address`, `Resigned_Date`, `Vacation_leave`, `Sick_leave`, `Business_leave_necessary`, `Maternity_leave_paid`, `Maternity_leave_not_paid`, `Ordination_leaven`, `Marriage_leave`, `Accident_leave`, `Military_leave`, `Sterilization_leave`, `Time_offset`, `Leave_without_pay`, `Sick_leave_not_receiving_wages`, `Cremation_leave`, `Leave_instead_of_holidays`, `Leave_to_study`, `Take_a_break`, `Absence_from_work`, `img`, `active`, `Company`, `created_at`, `updated_at`) VALUES
(2, NULL, '51301', '3480200007026', 'นายบุญเรือง ทำเนาว์', NULL, 'General Affairs', 'General Affairs (Maintenance)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Maintenance Officer', '', '2020-01-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เก่ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51301.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(3, NULL, '21041', '3460700935674', 'นายชาญวิทย์ จุทสิงห์', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Prepare Officer', '', '2014-06-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'วิทย์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21041.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(4, NULL, '22009', '3301001096004', 'นางดวงใจ ทรงด้วงทุม', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2011-09-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ดวง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22009.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(5, NULL, '61191', '1560300004439', 'นางสาวกระจันทร์ ลีลาธรรมสัจจะ', NULL, 'Factory', 'Production (งานฝัง)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (ฝัง)', '', '2017-11-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เดียร์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61191.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(6, NULL, '91138', '1412100049679', 'นางสาวนริศรา ลาวิลัย', NULL, 'Sales', 'Sales Multi Brand', 'Officer', 'อุดรธานี', 'เซ็นทรัลอุดรธานี', 'PC (Luxury)', '', '2015-10-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'น้ำฝน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91138.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(7, NULL, '91327', '1103701214686', 'นางสาวสุดารัตน์ หมวดเมือง', NULL, 'Marketing', 'Marketing Communication (Online)', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Digital Marketing Supervisor (Jewelry)', '', '2019-02-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ของขวัญ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91327.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(8, NULL, '91450', '1629900283239', 'นายธราเทพ สุกแสงจันทร์', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Finance & Accounting Officer', '', '2020-01-25 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แอล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91450.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(9, NULL, '94003', '1100200241017', 'นายฐิติพงษ์ งามวิศิษฐ์ศิลป์', NULL, 'Back Office & ERP', 'ERP', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'ERP Support Supervisor', '', '2002-02-13 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เอ็ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94003.jpg', '1', 'NIO ACHIEVERS CO., LTD.', NULL, '2020-09-11 10:13:26'),
(10, NULL, '51235', '1103100625169', 'นางสาวชมพูนุช ประโมงเขต', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนพลอย)', '', '2018-09-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ชมพู่', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51235.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(11, NULL, '61037', '3301401202766', 'นายวิชัย พึ่งดอน', NULL, 'Factory', 'Production (งานแต่งประกอบ)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (แต่งประกอบ)', '', '2013-03-13 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ชัย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61037.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(12, NULL, '22025', '1301000060786', 'นางสาววิมลรัตน์ น้อยกลาง', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2015-08-25 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แหวว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22025.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(13, NULL, '61222', '1330400041753', 'นางสาวชญณัฐ พนารินทร์', NULL, 'Purchasing', 'Purchasing', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Purchasing Supervisor', '', '2019-03-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'หน่อย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61222.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(14, NULL, '91230', '1529900334365', 'นายวีระพล วงศ์สมุทร', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เชียงใหม่', 'นิมมาน เชียงใหม่', 'PC (Lifestyle)', '', '2017-11-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เมท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91230.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(15, NULL, '91375', '1711000014870', 'นายสุชิน พิชิ', NULL, 'Customer Service', 'Customer Service', 'Manager', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'Customer Service Manager (Lifestyle)', '', '2019-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'จิม', '0996490463', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91375.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(16, NULL, '91418', '1509901596151', 'นางสาวณัฐนิชา บุญเรือง', NULL, 'Interior & Visual Merchandise', 'Interior & Visual Merchandise', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Interior & Visual Merchandiser Officer', '', '2019-11-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อันอัน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91418.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(17, NULL, '81086', '3730100067717', 'นางสาววิภาภรณ์ สานิชวรรณ', NULL, 'Factory', 'Administration & Accounting', 'Officer', 'ราชบุรี', 'สำนักงานราชบุรี', 'Administration & Accounting Officer', '', '2019-02-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'จุ๊บแจง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81086.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(18, NULL, '51014', '3300600587667', 'นางวรัญญา คงควร', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนพลอย)', '', '2009-02-19 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พุ่ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51014.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(19, NULL, '61070', '5660600050021', 'นางสาวเบญจวรรณ ทับทอง', NULL, 'Factory', 'Production (งานชุบ)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (ชุบ)', '', '2015-01-19 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบญ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61070.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(20, NULL, '51049', '3461400168423', 'นายวานัด บุษบง', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนเพชร)', '', '2013-05-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51049.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(21, NULL, '51172', '1410600202679', 'นางสาวอรพิน ป้องบุญจันทร์', NULL, 'Factory', 'Administration', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Administration Officer', '', '2017-04-24 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มิก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51172.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(22, NULL, '51277', '2670700027743', 'นางสาวสุดารัตน์ สุขบาล', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (บล็อก)', '', '2019-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ส้ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YvHjMvZTLr.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(23, NULL, '21050', '3320100308246', 'นายบงคต แท่นแก้ว', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Prepare Officer', '', '2018-03-08 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นวย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21050.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(24, NULL, '22027', '1361500007752', 'นางสาวพรกมล วารีจันทร์', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2017-01-17 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เก๋', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22027.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(25, NULL, '22028', '3301000266712', 'นางสาวลำภู ซื่อเสมอ', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2018-01-15 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ภู่', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22028.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(26, NULL, '22029', '5360400010974', 'นายสุรัตน์ จันทราษี', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2018-01-15 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เหมียว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22029.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(27, NULL, '22030', '5301100003086', 'นางสิรินยา สำนวนกลาง', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2018-01-25 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้อ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22030.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(28, NULL, '22031', '3250400423432', 'นายชลอ ทรงด้วงทุม', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2018-09-10 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ลอ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22031.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(29, NULL, '22032', '3250600145525', 'นายประจักษ์ สุรินทร์', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2018-09-12 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โย่ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22032.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(30, NULL, '22033', '3301000139648', 'นางสาวจำลอง รักมิตร', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2020-02-18 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ลอง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22033.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(31, NULL, '61002', '3330401299459', 'นางสาวนิตยา แก้วศรี', NULL, 'Factory', 'Sales', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Admin Officer (Support)', '', '2011-04-18 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นิด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61002.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(32, NULL, '61003', '3400900572231', 'นางสาวมนัสนันท์ มาตดก', NULL, 'Factory', 'Supply Chain', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Material Control Officer', '', '2011-04-18 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แอ่ว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61003.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(33, NULL, '61035', '3101203485186', 'นายสมยศ แก้วทอง', NULL, 'CAD Design', 'CAD Design', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'CAD Designer Officer', '', '2013-03-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ยศ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61035.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(34, NULL, '61218', '3440500521710', 'นายนรินทร์ ชิณแสน', NULL, 'Factory', 'Production (งานแม่พิมพ์)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (แม่พิมพ์)', '', '2019-02-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'รินทร์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61218.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(35, NULL, '85060', '1101100220214', 'นางสาวจุฑามาศ บุตรรักษา', NULL, 'Akimitsu', 'Front of house Service', 'Officer', 'ระยอง', 'แพชชั่น ระยอง', 'Waitress', '', '2019-06-09 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พลอย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85060.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(36, NULL, '82001', '6700371011488', 'นางหมี ควบ', NULL, 'Factory', 'Administration & Accounting', 'Staff', 'ราชบุรี', 'สำนักงานราชบุรี', 'Cleaning Staff', '', '2011-01-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'หมี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82001.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(37, NULL, '82003', '6700371029891', 'นายสุนัย ทรายทอง', NULL, 'Planning & Logistics', 'Warehouse & Logistics', 'Staff', 'ราชบุรี', 'สำนักงานราชบุรี', 'Logistics Staff', '', '2011-01-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'สุนัย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82003.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(38, NULL, '61219', '1102000687111', 'นางสาววิลาสินี ชื่อเพราะ', NULL, 'Creative & Design', 'Creative & Design', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Designer Officer', '', '2019-03-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แป้ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61219.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(39, NULL, '61224', '1349900282910', 'นายวศิน จริยวัฒนากุลกิจ', NULL, 'Factory', 'Quality Management', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'QA Supervisor (ตัวเรือน)', '', '2019-05-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'จ๊อด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61224.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(40, NULL, '61230', '1719900283556', 'นางสาวผกาวรรณ โบศรี', NULL, 'Creative & Design', 'Creative & Design', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Designer Officer', '', '2019-10-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบสท์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61230.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(41, NULL, '61233', '2360600022181', 'นางสาวแพรวเพชร นอสูงเนิน', NULL, 'Factory', 'Quality Management', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'QC Officer (งานหล่อ)', '', '2019-11-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กระแต', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61233.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(42, NULL, '61234', '1660700085117', 'นายนิรินธนา เขตชัยภูมิ', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Finance & Accounting Officer', '', '2019-11-25 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ต่าย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61234.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(43, NULL, '61235', '1101400798172', 'นางสาวธิดาภรณ์ นรสาน', NULL, 'Factory', 'Supply Chain', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Purchasing Officer (จัดซื้อเครื่องมือ)', '', '2020-03-05 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61235.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(44, NULL, '91006', '3101200141982', 'นายสมชาติ ไพบูลย์เรืองสุข', NULL, 'Management', 'Management', 'Division Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'General Manager (Luxury)', '', '2014-01-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'สมชาติ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91006.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(45, NULL, '91025', '1739900259027', 'นางสาวสุวิภา โพธิ์ชุ่ม', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Finance & Accounting Officer', '', '2014-12-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แพรว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91025.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(46, NULL, '91030', '1230400005405', 'นางสาวเอมิกา ชาญหิรัญ', NULL, 'Sales', 'Sales Alternative', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'Sale Supervisor (Support Lifestyle)', '', '2015-02-23 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เอ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91030.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(47, NULL, '91047', '1430200106133', 'นายระบอบ วันนา', NULL, 'Sales', 'Sales Alternative', 'Officer', 'กรุงเทพมหานคร', 'สยามดิสคัฟเวอรี่', 'PC (Lifestyle)', '', '2015-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แน๊ก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91047.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(48, NULL, '91059', '1100400216121', 'นายนพดล ฉายสิทธิ์', NULL, 'Interior & Visual Merchandise', 'Interior & Visual Merchandise', 'Sr.Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Senior Interior & Visual Merchandiser Officer', '', '2014-11-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'โอ๊ต', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91059.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(49, NULL, '91060', '3102001284831', 'นายวาจิศ จินดากุล', NULL, 'Internal Audit', 'Internal Audit', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Internal Audit Officer', '', '2014-11-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แจน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91060.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(51, NULL, '82005', '700389038672', 'นางดาว บัวงาม', NULL, 'Factory', 'Production & Maintenance', 'Staff', 'ราชบุรี', 'สำนักงานราชบุรี', 'Packing Staff', '', '2011-01-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'ดาว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82005.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(52, NULL, '91221', '3750200386661', 'นายณรงค์ วรรณพุก', NULL, 'Sales', 'Sales Alternative', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'Sale Officer (Visaul Merchandiser Lifestyle)', '', '2017-10-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ออฟ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91221.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(53, NULL, '91233', '1311100181020', 'นางสาววานิสสา กิ่งมาลา', NULL, 'Graphic & Design', 'Photographer', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Photographer & Graphic Designer Officer', '', '2017-11-27 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แอม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91233.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(54, NULL, '91238', '3102201864695', 'นายพัชร์ รักษ์บำรุง', NULL, 'Graphic & Design', 'Graphic & Design', 'Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Art Director Manager', '', '2018-01-08 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'เขม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91238.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(55, NULL, '91247', '1560300019479', 'นายเป็นไท ถาวร', NULL, 'Marketing', 'Branding', 'Manager', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'Marketing Manager (Lifestyle)', '', '2018-03-21 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'เปรม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91247.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(56, NULL, '91251', '3102102145704', 'นายจิรพล ว่องวิบูลย์รัตน์', NULL, 'Interior & Visual Merchandise', 'Interior & Visual Merchandise', 'Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Interior & Visual Merchandiser Manager', '', '2018-04-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'ต่อ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91251.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(57, NULL, '91254', '1309900518042', 'นางสาววิชุดา ประทีปรัมย์', NULL, 'Sales', 'Sales Alternative', 'Officer', 'กรุงเทพมหานคร', 'เซ็นทรัลเวิลด์', 'PC (Lifestyle)', '', '2018-04-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กิ๊ฟ', '0616946592', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91254.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(58, NULL, '91257', '3100600008162', 'นางสาวสุรีย์ มะหะหมัด', NULL, 'Sales', 'Sales Multi Brand', 'Officer', 'กรุงเทพมหานคร', 'เซ็นทรัลลาดพร้าว', 'PC (Luxury)', '', '2015-07-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ไมล์', '0646963969', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3Q80QY82JQ.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(59, NULL, '91260', '1103701475269', 'นายณัฐพงศ์ นาคขุนทด', NULL, 'Sales', 'Sales Alternative', 'Officer', 'กรุงเทพมหานคร', 'เมกาบางนา', 'PC (Lifestyle)', '', '2018-05-18 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ต้น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91260.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(60, NULL, '91262', '3301900219290', 'นางสาววิไลศักดิ์ เจิมขุนทด', NULL, 'Sales', 'Sales Alternative', 'Officer', 'นครราชสีมา', 'เดอะมอลล์โคราช', 'PC (Lifestyle)', '', '2018-05-07 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แก่น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91262.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(61, NULL, '91264', '3341500030271', 'นางสาวปณิชา ภานะรมย์กุล', NULL, 'Operation', 'Operation', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Operation Execuitve Officer (Luxury)', '', '2018-05-30 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กาญจน์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91264.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(62, NULL, '91275', '3101700262878', 'นายพิเชษฐ์ ณรงค์อินทร์', NULL, 'Customer Service', 'Customer Service', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'Customer Service Officer (Front) (Lifestyle)', '', '2018-09-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'คิงส์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91275.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(63, NULL, '91279', '91279', 'นายณรงค์ แซ่กี้', NULL, 'Sales', 'Sales Alternative', 'Officer', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เซน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91279.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
(64, NULL, '91287', '1300100144913', 'นายอนุชา วงศ์พินิจ', NULL, 'Sales', 'Sales Alternative', 'Officer', 'นครราชสีมา', 'เซ็นทรัลนครราชสีมา', 'PC (Lifestyle)', '', '2018-09-21 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มอส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91287.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(65, NULL, '91290', '1660700005016', 'นายเอกชัย สระทองพร', NULL, 'Customer Service', 'Repair Watch', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'Watch Maker Officer (Lifestyle)', '', '2018-10-17 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เอก', '0891102996', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91290.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(66, NULL, '91364', '1103100224610', 'นายสมชาย แก้วอะดิษฐ์', NULL, 'Marketing', 'Marketing', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'E-Commerce Supervisor (Lifestyle)', '', '2019-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'บูรณ์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91364.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(67, NULL, '91373', '91373', 'นางสาวสมฤดี ขำรักษ์', NULL, 'Marketing', 'Marketing', 'Officer', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Import & Export Officer (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ทิพย์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91373.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
(68, NULL, '91376', '1240800130941', 'นายนฤดล ป่วนกระโทก', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เชียงใหม่', 'เซ็นทรัลเชียงใหม่', 'PC (Lifestyle)', '', '2019-07-11 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เหนือ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91376.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(69, NULL, '91385', '1100701502212', 'นางสาวมีนนา วีตระกูล', NULL, 'Sales', 'Sales Alternative', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'Sale Supervisor (Consignment) (Lifestyle)', '', '2019-08-05 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'กล้วย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91385.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(70, NULL, '91392', '1829900136382', 'นางสาวโชติรส ตนคลัง', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'ภูเก็ต', 'เซ็นทรัลภูเก็ต', 'PC (CTF) (Luxury)', '', '2019-08-21 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นัตตี้', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91392.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(71, NULL, '91395', '1102200062785', 'นายนฤดล จีระวิวิธพร', NULL, 'Graphic & Design', 'Graphic & Design', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Graphic Design Supervisor', '', '2019-09-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เซฟ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91395.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(72, NULL, '91396', '1102001745351', 'นางสาวเนตรนารี ยืนยงชัยวัฒน์', NULL, 'Sales Support', 'Sales Support', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Sales Support Officer (Jewelry)', '', '2019-08-26 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นุก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91396.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(73, NULL, '91398', '1390400087842', 'นางสาวพรรณทิพา ข่าทิพย์พาที', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'ชลบุรี', 'เทอร์มินอล 21 พัทยา', 'PC (Jewelry)', '', '2019-08-29 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นิดหน่อย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91398.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(74, NULL, '91399', '1100800787649', 'นายสรศักดิ์ เตชะธารวณิช', NULL, 'Marketing', 'Branding', 'Ast.Manager', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'Assistant Brand Manager (Lifestyle)', '', '2019-09-09 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'บุ๊ค', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91399.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(75, NULL, '91400', '1571200051134', 'นายพลวัฒน์ สิทธิเจริญ', NULL, 'Sales', 'Sales Alternative', 'Officer', 'ชลบุรี', 'เทอร์มินอล 21 พัทยา', 'PC (Lifestyle)', '', '2019-09-08 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91400.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(76, NULL, '91402', '110200290845', 'นางสาวมินตรา มานะลอ', NULL, 'Marketing', 'Sport Marketing', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'Marketing Admin (Lifestyle)', '', '2019-09-11 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มิ้น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91402.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(77, NULL, '91403', '1801600159711', 'นายตุลา บูบ่ากา', NULL, 'Sales', 'Sales Alternative', 'Officer', 'ภูเก็ต', 'เซ็นทรัลภูเก็ต', 'PC (Lifestyle)', '', '2019-09-09 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แบงค์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91403.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(78, NULL, '91405', '1801100151363', 'นางสาวเกียรติสุดา คำแก้ว', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'ภูเก็ต', 'เซ็นทรัลภูเก็ต', 'PC (CTF) (Luxury)', '', '2019-09-23 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มายด์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91405.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(79, NULL, '91415', '1769900303662', 'นางสาวนีรวรรณ บวบเมือง', NULL, 'Sales', 'Sales', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Sales Event Roadshow Supervisor (Luxury)', '', '2019-11-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เมย์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91415.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(80, NULL, '91476', '1110300203087', 'นายปรัชญา สังคง', NULL, 'Sales', 'Sales Alternative', 'Officer', 'กรุงเทพมหานคร', 'เมกาบางนา', 'PC (Lifestyle)', '', '2020-06-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แอล', '0982399975', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91476.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(81, NULL, '85031', '1609900005841', 'นายนัฐพล ธีระพันธุ์พิเชฏฐ์', NULL, 'Akimitsu', 'Kitchen Team', 'Officer', 'ระยอง', 'แพชชั่น ระยอง', 'Demi Chef', '', '2019-04-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นัท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85031.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(82, NULL, '85033', '1770600257055', 'นางสาวนันทิชา สุกิจปาณีนิจ', NULL, 'Akimitsu', 'Kitchen Team', 'Officer', 'ระยอง', 'แพชชั่น ระยอง', 'Demi Chef', '', '2019-04-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นุ่น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85033.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(83, NULL, '91416', '1101800647457', 'นางสาวชิดชนก คล้ายประเสริฐ', NULL, 'Customer Service', 'Customer Service', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'Customer Service Officer (Online) (Lifestyle)', '', '2019-11-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มาย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91416.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(84, NULL, '91473', '3102102212959', 'นายโสภณ หวังศิริรุ่งเรือง', NULL, 'Lawyer', 'Lawyer', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Lawyer Supervisor', '', '2019-03-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เอ็กซ์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91473.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(86, NULL, '91475', '8500973017211', 'นายซาอีด พัฒนาวรกุลชัย', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'ภูเก็ต', 'เซ็นทรัลภูเก็ต', 'PC (CTF) (Luxury)', '', '2020-05-19 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อะโอ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91475.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(87, NULL, '91477', '3180500623078', 'นางน้องแอน บัวรมย์', NULL, 'Sales', 'Sales Alternative', 'Officer', 'กรุงเทพมหานคร', 'เดอะมอลล์งามวงศ์วาน', 'PC (Lifestyle)', '', '2020-06-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แอน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91477.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(88, NULL, '91478', '91478', 'นายชัยพร สุพะตะ', NULL, 'Sales', 'Sales Alternative', 'Officer', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตี๋', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91478.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
(89, NULL, '85006', '6015400518001', 'นายเอมานูเอเล่ เซร์ร่า', NULL, 'Management', 'Management', 'Division Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'General Manager (AKI)', '', '2018-11-21 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'เอ็ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85006.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(90, NULL, '85013', '85013', 'นางสาวพัชรินทร์ ศรีสมบูรณ์', NULL, 'Operation', 'Wellfare', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Coffee Shop Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตั๊ก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85013.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
(91, NULL, '85016', '1410500043960', 'นายเบอร์โน เทอรี่', NULL, 'Management', 'Management', 'Division Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'General Manager (Cherchim)', '', '2018-12-17 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'เทียรี่', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85016.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(92, NULL, '85055', '85055', 'นายกรณัฏฐ์ ทรัพย์ชื่น', NULL, 'Akimitsu', 'Front of house Service', 'Ast.Manager', 'แพชชั่น ระยอง', 'ระยอง', 'Assistant Restaurant Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'ป๊อป', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85055.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
(95, NULL, '81026', '1709900706384', 'นายทวีทรัพย์ ออมสิน', NULL, 'Factory', 'Production & Maintenance', 'Officer', 'ราชบุรี', 'สำนักงานราชบุรี', 'Production & Maintenance Officer', '', '2015-03-25 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เท่ห์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81026.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(96, NULL, '81047', '317020035981', 'ว่าที่ร้อยตรีชูชีพ ขุนทอง', NULL, 'Management', 'Management', 'Division Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'General Manager (Tai)', '', '2017-01-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'ชีพ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81047.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(97, NULL, '81080', '3190600200292', 'นางสาวปิยนันท์ สิงห์หัวดง', NULL, 'Planning & Logistics', 'Planning & Logistics', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Planning & Logistics Supervisor', '', '1998-07-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้อย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81080.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(98, NULL, '81083', '1100400896696', 'นางสาวธนารัตน์ วินทะไชย', NULL, 'Sales & Marketing', 'Sales & Marketing', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Tele Sales Executive Officer', '', '2018-12-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบลล์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81083.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(99, NULL, '81089', '3101200805244', 'นายศรัณย์รัตน์ โล่เกียรตินันท์', NULL, 'Sales & Marketing', 'Sales & Marketing', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Sales Supervisor', '', '2017-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ลูกหมี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81089.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(100, NULL, '81090', '1709901097365', 'นางสาวทศวรรณ จำเล', NULL, 'Factory', 'Quality Assurance & Development', 'Officer', 'ราชบุรี', 'สำนักงานราชบุรี', 'Quality Assurance & Development Officer', '', '2019-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เก๋', '089-5519190', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81090.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(101, NULL, '81096', '3900700082120', 'นางสาวสุจิตรา ถาวรประสิทธิ์', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Finance & Accounting Officer', '', '1991-05-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'จุ๋ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81096.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(102, NULL, '81097', '1101500764016', 'นางสาวเจนจิรา ชาติยานนท์', NULL, 'Sales & Marketing', 'Sales & Marketing', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Coordinator & Administration Officer', '', '2020-02-17 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นุ่น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81097.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(103, NULL, '81098', '1100800754937', 'นายนนทพัฒน์ วรรธนะอมร', NULL, 'Planning & Logistics', 'Planning & Logistics', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Planning & Logistics Officer', '', '2020-03-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ต่อ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81098.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(104, NULL, '81099', '1470300075451', 'นางสาวสวรส ปัญญาโส', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Finance & Accounting Officer', '', '2019-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'รส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81099.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(105, NULL, '82019', '82019', 'นางสาวปิยฉัตร วงค์ทอง', NULL, 'Factory', 'Quality Assurance & Development', 'Staff', 'สำนักงานราชบุรี', 'ราชบุรี', 'Quality Control Staff', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'แก้ว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82019.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
(106, NULL, '82023', '8700376033770', 'นางแก้วกาญจ์ ชนะกุลพีละ', NULL, 'Factory', 'Production & Maintenance', 'Staff', 'ราชบุรี', 'สำนักงานราชบุรี', 'Production Staff', '', '2016-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'แก้ว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82023.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(107, NULL, '51002', '3100700820314', 'นายธนาศักดิ์ ทรัพย์หิรัญกุล', NULL, 'Management', 'Management', 'Executive', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Chief Executive Officer', '', '2010-01-01 00:00:00', NULL, NULL, NULL, NULL, 'CEO', NULL, NULL, 'คุณธนา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51002.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(108, NULL, '51003', '3660100733432', 'นายณรงค์กช คมภาสกร', NULL, 'Management', 'Management', 'Executive', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'General Manager ( CIEN )', '', '2010-01-01 00:00:00', NULL, NULL, NULL, NULL, 'CEO', NULL, NULL, 'คุณกช', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51003.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(109, NULL, '51006', '3180500334807', 'นายทองอินทร์ บานเย็น', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Sr.Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Senior Jewelry Maker Supervisor (เจียระไนเพชร)', '', '2011-08-15 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'เบี้ยว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51006.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(110, NULL, '51009', '1710900024111', 'นางสาวนาตยา จ่าพิชม', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Finance & Accounting Officer', '', '2011-06-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แอน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51009.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25');
INSERT INTO `users_detail` (`id`, `group_staff`, `Code_Staff`, `Card_Staff`, `Name_Thai`, `Name_Eng`, `Faction`, `Department`, `Degree`, `Workplace`, `Working_status`, `Position`, `DateofBirth`, `StartDate`, `HireDate`, `IDCardNumber`, `Sex`, `FamilyStatus`, `JGStatus`, `Yearsofservice`, `Age`, `Nickname`, `TelephoneNumber`, `Address`, `Current_Address`, `Resigned_Date`, `Vacation_leave`, `Sick_leave`, `Business_leave_necessary`, `Maternity_leave_paid`, `Maternity_leave_not_paid`, `Ordination_leaven`, `Marriage_leave`, `Accident_leave`, `Military_leave`, `Sterilization_leave`, `Time_offset`, `Leave_without_pay`, `Sick_leave_not_receiving_wages`, `Cremation_leave`, `Leave_instead_of_holidays`, `Leave_to_study`, `Take_a_break`, `Absence_from_work`, `img`, `active`, `Company`, `created_at`, `updated_at`) VALUES
(111, NULL, '51011', '3220100460111', 'นางสาวบุศรินทร์ พานิชสิทธิ์', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนพลอย)', '', '2010-02-19 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปู', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51011.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(112, NULL, '51012', '5312000004463', 'นายผาย วงษ์สมัน', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนพลอย)', '', '2007-04-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ผาย', '0853497982', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51012.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(113, NULL, '51018', '3860400437497', 'นายสมพร อ่าวรุ่งเรือง', NULL, 'Factory', 'Quality Management', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Quality Control Supervisor (พลอย)', '', '2010-04-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ติ๊ก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51018.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(114, NULL, '51020', '3401400098832', 'นางสาวสายพิน ถินนอก', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนเพชร)', '', '2010-12-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พิน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51020.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(115, NULL, '51021', '3451000094970', 'นายสุจิตร พลเมืองหล้า', NULL, 'Factory', 'Quality Management', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Quality Assurance Supervisor (พลอย)', '', '2009-11-26 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'จิตร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51021.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(116, NULL, '51023', '3440800477821', 'นางสาวอังคนา เอี่ยมนอก', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Supervisor (เจียระไนพลอย)', '', '2009-06-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ตุ่ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51023.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(117, NULL, '51025', '1102002123800', 'นางสาวอินธิรา เนียมหอม', NULL, 'Factory', 'Production (งานติดพลอย)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (ติดพลอย)', '', '2009-06-05 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กิ่ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51025.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(118, NULL, '51030', '3100400233049', 'นางสุกัญญา แอลเล็บ', NULL, 'Service Controller', 'Service Controller', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Maid Officer', '', '2011-06-07 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ยะรอ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51030.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(119, NULL, '51031', '3480700477021', 'นางสาวสุดใจ ธนะคำดี', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนพลอย)', '', '2011-09-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เป้', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51031.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(120, NULL, '51032', '3610200253033', 'นายยุทธนา ทองคำขาว', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Sr.Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Senior Jewllry Maker Officer (เจียระไนเพชร)', '', '2011-09-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'ยุทธ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51032.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(121, NULL, '82031', '82031', 'นายกรกวรรษ วงศ์ทอง', NULL, 'Factory', 'Production & Maintenance', 'Staff', 'สำนักงานราชบุรี', 'ราชบุรี', 'Mechanical Staff', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'กร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82031.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
(122, NULL, '61045', '3440400287286', 'นางสาวเสาร์วรัก แสนสิลา', NULL, 'Factory', 'Administration', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Administration Officer', '', '2013-10-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นิ่ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61045.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(123, NULL, '61050', '32501000146769', 'นายฉัตรพล อ้วน', NULL, 'Factory', 'Production (งานแต่งประกอบ)', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Supervisor (แต่งประกอบ)', '', '2013-10-28 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'หวัง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61050.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(124, NULL, '61054', '3251200527481', 'นายอธิคุณ อาจรงค์', NULL, 'Factory', 'Production (งานแม่พิมพ์)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (แม่พิมพ์)', '', '2014-01-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นึก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61054.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(125, NULL, '61055', '3100905641225', 'นายเทพฤทธิ์ ห่วงจริง', NULL, 'Factory', 'Factory', 'Department Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Factory Manager', '', '2014-01-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : F', NULL, NULL, 'โต้ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61055.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(126, NULL, '61060', '3490100433414', 'นางสาวณัฏฐ์ถยา รูปสะอาด', NULL, 'Factory', 'Production (งานหล่อ)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (ฉีดเทียน)', '', '2014-07-22 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แดง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61060.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(127, NULL, '61062', '3160600652312', 'นายคงเดช สุขกำเนิด', NULL, 'Factory', 'Production (งานฝัง)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (ฝังไร้หนาม)', '', '2014-08-18 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เดช', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61062.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(128, NULL, '61072', '3560100129152', 'นางสาวสุนิษา อ้อยหอม', NULL, 'Factory', 'Production (งานขัด)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (ขัด)', '', '2015-02-05 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นิ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61072.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(129, NULL, '61079', '3230400128414', 'นายเสาร์คำ ปัญญาคำ', NULL, 'Factory', 'Production (งานฝัง)', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Supervisor (ฝัง)', '', '2015-05-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เสาร์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61079.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(130, NULL, '61082', '3440800609647', 'นายวิไน น้อยคำแพง', NULL, 'Factory', 'Production (งานเลเซอร์)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เลเซอร์)', '', '2015-07-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โน๊ะ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61082.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(131, NULL, '61109', '3401500435393', 'นายเวียงชัย เทียมทะนงค์', NULL, 'Factory', 'Production (งานแม่พิมพ์)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (แม่พิมพ์)', '', '2015-09-07 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เตี้ย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61109.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(132, NULL, '61134', '3660200113436', 'นายยอด อาจไชยชนะ', NULL, 'Factory', 'Production (งานฝัง)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (ฝังไร้หนาม)', '', '2016-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ยอด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61134.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(133, NULL, '61140', '3410400635667', 'นายปรีชา แก้วไข่สอน', NULL, 'Factory', 'Production (งานแม่พิมพ์)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (แม่พิมพ์)', '', '2016-09-12 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แป๋ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61140.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(134, NULL, '61142', '3301401233637', 'นายพิศณุ หริพงษ์', NULL, 'Factory', 'Production (งานแม่พิมพ์)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (แม่พิมพ์)', '', '2016-10-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นุ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61142.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(135, NULL, '61150', '1350800050920', 'นายจันทร วงศ์เสนา', NULL, 'Factory', 'Production (งานฝัง)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (ฝัง)', '', '2017-01-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตั๊ว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61150.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(136, NULL, '61152', '3500400362970', 'นายนพดล นายเฮือง', NULL, 'Factory', 'Production (งานฝัง)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (ฝัง)', '', '2017-01-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นพ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61152.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(137, NULL, '51038', '3570200135767', 'นางสาวยวนใจ งามราศรี', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนพลอย)', '', '2012-09-26 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตุ๊กกี๊', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51038.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(138, NULL, '51040', '3102101808050', 'นายทวีวัฒน์ โศจิพิทักษ์พงษ์', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Sr.Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Senior Jewllry Maker Officer (เจียระไนเพชร)', '', '2012-11-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'โก้', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51040.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(139, NULL, '51042', '3360400432368', 'นายณรงค์ บัวละคร', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Supervisor (เจียระไนเพชร)', '', '2013-03-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'อี๊ด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51042.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(140, NULL, '51043', '3100901509021', 'นายเกียรติ เหล่าวณิชย์พงษ์', NULL, 'Factory', 'Factory', 'Department Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Factory Manager', '', '2010-04-24 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : F', NULL, NULL, 'เกียรติ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51043.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(141, NULL, '51048', '1361200027235', 'นางสาวประทานพร หมื่นอินทร์', NULL, 'Factory', 'Administration', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Administration Officer', '', '2013-05-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้อม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51048.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(142, NULL, '51053', '3670800230808', 'นางสาวจีระพันธุ์ บุญดิษฐ', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนเพชร)', '', '2013-08-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ชล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51053.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(143, NULL, '51059', '3560100371469', 'นายวีระพงษ์ รูปศิริ', NULL, 'General Affairs', 'General Affairs (Messenger)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Messenger Officer', '', '2012-01-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พัน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51059.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(144, NULL, '51062', '3101401353383', 'นางพงษ์พงา มณีไพโรจน์', NULL, 'Service Controller', 'Service Controller', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Secretary & Service Controller Supervisor', '', '2013-08-26 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ดี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51062.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(145, NULL, '51064', '3401400275955', 'นายทนง วรรณโชติ', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Supervisor (เจียระไนพลอย)', '', '2013-12-07 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ทนง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51064.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(146, NULL, '51085', '3100100755881', 'นายธัมณิชพน ศรีลาภ', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (บล็อก)', '', '2014-09-15 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โรจน์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51085.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(147, NULL, '51113', '3601000399451', 'นางสังวาลย์ ศรีคล้าย', NULL, 'Service Controller', 'Service Controller', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Maid Officer', '', '2015-02-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'วาล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51113.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(148, NULL, '51115', '1100200145646', 'นายสรายุทธ นามศิลป์', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (บล็อก)', '', '2015-02-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เอก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51115.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(149, NULL, '51140', '3670822230816', 'นางสาวปาริชาติ บุญดิษฐ', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนเพชร)', '', '2015-09-25 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตุ้ย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51140.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(150, NULL, '51150', '1102800048856', 'นายธนวัฒน์ พลเมืองหล้า', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (บล็อก)', '', '2016-06-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ต้า', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51150.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(151, NULL, '51158', '3430100580069', 'นางสาวรพีพรรณ ชัยอามาตย์', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนพลอย)', '', '2017-01-12 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แจ๋ว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51158.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(153, NULL, '51168', '3101202036841', 'นางสาวสุชาดา กุมภรัตน์', NULL, 'Service Controller', 'Service Controller', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Maid Officer', '', '2016-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'หน่อย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51168.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(154, NULL, '51170', '3410700031759', 'นายปัญญา อังคะพนมไพร', NULL, 'General Affairs', 'General Affairs (Maintenance)', 'Sr.Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Senior Maintenance Officer', '', '2016-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'รส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51170.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(155, NULL, '51171', '3102401326034', 'นางสาวจันทร์เพ็ญ นาทอง', NULL, 'Human Resource', 'Human Resource Management', 'Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Human Resource Specialist', '', '2017-04-18 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'แพน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51171.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(156, NULL, '51173', '51173', 'นางสาวทิพยรัตน์ ประดิษฐ', NULL, 'Factory', 'Production (งานติดพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (ติดแชล็ค)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กี๊', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51173.jpg', '1', NULL, NULL, NULL),
(157, NULL, '51186', '1412300012078', 'นายอมรเทพ บัวสิงห์', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (บล็อก)', '', '2017-01-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ทิวา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51186.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(158, NULL, '51187', '1412300011136', 'นางสาวดวงฤดี สาลีหอม', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนพลอย)', '', '2017-01-09 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เมย์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51187.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(159, NULL, '51189', '1480800021619', 'นางสาวณัฐจริญญา อินทริง', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนพลอย)', '', '2009-08-26 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แก้ว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51189.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(160, NULL, '51194', '3311000989838', 'นางภาวนา ภิพากรณ์', NULL, 'Service Controller', 'Service Controller', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Maid Officer', '', '2017-10-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พจน์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51194.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(161, NULL, '51200', '3320400090106', 'นางสาวกมลรัตน์ สิงห์โต', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนเพชร)', '', '2018-11-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แก้ว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51200.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(162, NULL, '51201', '51201', 'นายอรุณ บุญเจริญ', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนเพชร)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บอย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51201.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
(163, NULL, '51208', '1410500043960', 'นางสาวยุพิน อังคะพนมไพร', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนพลอย)', '', '2018-02-19 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เปีย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51208.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(164, NULL, '51214', '3660100733432', 'นายหนิง พาริตา', NULL, 'Factory', 'Production (งานเซาะร่อง)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เซาะร่องพลอย เพชร)', '', '2018-04-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เอก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51214.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(165, NULL, '51266', '1350100499037', 'นายนรินทร์ คลังกลาง', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (บล็อก)', '', '2018-11-15 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เต้', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51266.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(166, NULL, '51270', '1659900522756', 'นายเอกราช ศรีเชียงหวาง', NULL, 'General Affairs', 'General Affairs (Maintenance)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Maintenance Officer', '', '2019-05-07 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51270.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(167, NULL, '51273', '3101202479948', 'นางสาวกนกพร ฉัตรสินทอง', NULL, 'Human Resource', 'Operation Management', 'Department Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Operation Management Manager', '', '2016-10-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : F', NULL, NULL, 'เอ๋', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51273.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(168, NULL, '51274', '3430700054597', 'นางอัญธิกา อุดมพันธ์', NULL, 'Human Resource', 'Human Resource Management', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'General Affair Supervisor', '', '2017-04-17 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ดอน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51274.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(169, NULL, '51275', '3420300416581', 'นายพีร์รัฐ อภิโฆษิตวงศา', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Division Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'General Manager (Finance & Accounting)', '', '2019-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'เคน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51275.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(170, NULL, '51282', '1431000066040', 'นางสาวรัชดาภรณ์ จันทะรัตน์', NULL, 'Human Resource', 'Human Resource Management', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Payroll Officer', '', '2019-08-08 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'หญิง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51282.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(171, NULL, '51283', '1369900524191', 'นางสาวชลินธร แหนบสุข', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (บล็อก)', '', '2019-08-14 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อัยย์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51283.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(172, NULL, '51287', '51287', 'นางสาวดอกรัก สายรัตน์', NULL, 'Factory', 'Production (งานติดพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (ติดพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'รัก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51287.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
(173, NULL, '51288', '3102002873333', 'นางสาววิลาสินี สุขลำดวน', NULL, 'Government Affair', 'Government Affair', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Government Affair Supervisor', '', '2012-10-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'แพรว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51288.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(174, NULL, '51289', '1620500184201', 'นางสาวจรรยาภรณ์ ชมคำ', NULL, 'Human Resource', 'Human Resource Management', 'Sr.Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Payroll Officer', '', '2019-12-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แนน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8ktGgT60ll.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(175, NULL, '51292', '1610200075562', 'นายวัชระ ธีระการ', NULL, 'General Affairs', 'General Affairs (Messenger)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Messenger Officer', '', '2019-12-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พีม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51292.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(176, NULL, '21073', '21073', 'นางสาวสายฝน มากนคร', NULL, 'Sales', 'Sales Jewelry', 'Officer', 'เซ็นทรัลหาดใหญ่', 'สงขลา', 'PC (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ฝน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21073.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
(177, NULL, '21074', '1301700211345', 'นางสาวศจี มุกไธสง', NULL, 'Sales', 'Sales Jewelry', 'Officer', 'นครราชสีมา', 'เซ็นทรัลนครราชสีมา', 'PC (Jewelry)', '', '2019-11-05 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'จี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21074.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(178, NULL, '51293', '1102700083889', 'นางสาวกานต์ธีรา ปานนา', NULL, 'Human Resource', 'Human Resource Management', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Talent Acquisition Officer', '', '2020-01-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แนท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51293.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(179, NULL, '51294', '1720100018680', 'นางสาวอุทุมพร โชติวงศ์', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนเพชร)', '', '2020-01-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้อม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51294.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(180, NULL, '51295', '1601100244444', 'นางสาวจุฑามาศ คัญทะชา', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Finance & Accounting Officer', '', '2020-01-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เปิ้ล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51295.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(181, NULL, '21045', '21045', 'นายทรงศิลป์ ปะจุระเน', NULL, 'Procurement', 'Diamond Purchasing', 'Sr.Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior Purchasing Officer (Diamond)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'มิว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21045.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
(182, NULL, '21046', '3550500326045', 'นายจรูญ เนตรทิพย์', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Prepare Officer', '', '2017-01-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'จรูญ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21046.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(183, NULL, '21047', '1101401681091', 'นางสาวณัฐวัชรี น้อยราวี', NULL, 'Gemologist', 'Gemologist', 'Sr.Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Senior Gemologist Officer', '', '2017-06-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'มิ้นท์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21047.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(184, NULL, '21049', '3401400098824', 'นางสาวทองตัด หนูนา', NULL, 'Procurement', 'Diamond Purchasing', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Quality Assurance Officer (เพชร)', '', '2018-02-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แก่น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21049.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(185, NULL, '21051', '1920300069341', 'นางสาวรัตนวลี ชูยัง', NULL, 'Gemologist', 'Gemologist', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Gemologist Officer', '', '2018-09-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'หวาน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21051.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(186, NULL, '21054', '3450700364405', 'นางสาวบังอร นพคุณ', NULL, 'Procurement', 'Diamond Purchasing', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Purchasing Supervisor (Diamond)', '', '2012-08-14 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'อร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21054.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(187, NULL, '21055', '1440800020477', 'นางสาวสมเพียร วงษ์พา', NULL, 'Procurement', 'Procurement (งานแมตซ์สี)', 'Sr.Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Senior Jewellry Maker Officer (แมตซ์สี)', '', '2013-12-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'หนู', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21055.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(188, NULL, '21056', '1320300105881', 'นางสาวประกายเดือน พิบูรณ์', NULL, 'Procurement', 'Procurement (งานแมตซ์สี)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewellry Maker Officer (แมตซ์สี)', '', '2017-07-24 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เดือน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21056.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(189, NULL, '21057', '1329900385417', 'นางสาวสายรุ้ง แซ่จิ๋ว', NULL, 'Procurement', 'Diamond Purchasing', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Purchasing Officer (Diamond)', '', '2018-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ไอซ์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21057.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(190, NULL, '21058', '3340101053705', 'นายอดุลย์ บุญจวบ', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Prepare Officer', '', '2018-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เดช', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21058.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(191, NULL, '21059', '3770100431133', 'นางสาวสุกัญญา จินต์สวัสดิ์', NULL, 'Procurement', 'Stock Controller', 'Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Stock Controller Manager', '', '2019-04-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'อ้อย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21059.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(192, NULL, '21063', '1659900803160', 'นางสาวกอบกูล การเที่ยง', NULL, 'Gemologist', 'Gemologist', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Gemologist Officer', '', '2019-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กิ่ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21063.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(193, NULL, '21068', '3350600287370', 'นายธวัช ลีทหาร', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Prepare Officer', '', '2017-01-05 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'วัช', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21068.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(194, NULL, '21075', '1361400030850', 'นายกองทุน เผือกนอก', NULL, 'Procurement', 'Gemstones Purchasing', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Purchasing Officer (Diamond)', '', '2017-06-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ทูล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21075.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(195, NULL, '82035', '8700376001240', 'นายประจักษ์ ดั่ว', NULL, 'Factory', 'Administration & Accounting', 'Staff', 'ราชบุรี', 'สำนักงานราชบุรี', 'Cleaning Staff', '', '2018-02-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'บัตร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82035.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(196, NULL, '82037', '3480700477021', 'นายวันชัย แสงจันทร์', NULL, 'Planning & Logistics', 'Warehouse & Logistics', 'Staff', 'ราชบุรี', 'สำนักงานราชบุรี', 'Logistics Staff', '', '2018-05-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'บู่', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82037.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(197, NULL, '82038', '700389043111', 'นายจันทร วาทู', NULL, 'Planning & Logistics', 'Warehouse & Logistics', 'Staff', 'ราชบุรี', 'สำนักงานราชบุรี', 'Logistics Staff', '', '2019-02-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'ซัน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82038.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(200, NULL, '99999', '99999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00000.jpg', '1', NULL, NULL, NULL),
(201, NULL, 'admin', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin.jpg', '1', NULL, NULL, NULL),
(202, NULL, '91337', '1801400233926', 'นางสาวณัฐวดี ใจห้าว', NULL, 'Sales', 'Sales Alternative', 'Officer', 'กรุงเทพมหานคร', 'เมกาบางนา', 'PC (Lifestyle)', '', '2019-03-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'วดี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91337.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(204, NULL, '10338', '5320100140431', 'นางสาวเขมณัฏฐ์ ถาวรวาณิชย์กุล', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Finance & Accounting Officer', '', '2018-09-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'หน่อย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10338.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(205, NULL, '10400', '3101400005292', 'นางสาวณัฐิรีย์ กิตติชิติพัทธิ์', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Finance & Accounting Manager', '', '2019-01-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'ซิ้ว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10400.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(206, NULL, '10403', '8430288015772', 'นางสาวสุพรรณี มณีศิริรัตน์', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Finance & Accounting Officer', '', '2020-02-17 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พิณ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10403.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(207, NULL, '41007', '3660500006627', 'นางสาวภัณฑิรา ยินดีสุข', NULL, 'Production', 'Production', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Sewing Supervisor', '', '1991-11-08 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'สาว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '41007.jpg', '1', 'UNIQUE WEAR (1986) CO., LTD.', NULL, '2020-09-11 10:13:25'),
(208, NULL, '41009', '3660100888711', 'นางสาวประมวล คำงาม', NULL, 'Production', 'Production', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Production Supervisor', '', '1995-07-17 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'มล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '41009.jpg', '1', 'UNIQUE WEAR (1986) CO., LTD.', NULL, '2020-09-11 10:13:25'),
(209, NULL, '41011', '3360300325632', 'นางสาวดวงใจ กุลแดง', NULL, 'Production', 'Production', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Sewing Supervisor', '', '1996-03-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ดวง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '41011.jpg', '1', 'UNIQUE WEAR (1986) CO., LTD.', NULL, '2020-09-11 10:13:25'),
(210, NULL, '41017', '3401300187914', 'นายสายันต์ เบ้าสองสี', NULL, 'Production', 'Production', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Support team Supervisor', '', '2015-07-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'สายัณ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '41017.jpg', '1', 'UNIQUE WEAR (1986) CO., LTD.', NULL, '2020-09-11 10:13:25'),
(211, NULL, '51300', '1102800057383', 'นางสาวณิชากร หรรษาฤทัยวงศ์', NULL, 'Human Resource', 'Human Resource Development', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Human Resource Development Digital Officer', '', '2020-02-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แบม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127RkvwPRn.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(212, NULL, '51304', '1419900610185', 'นางสาววัชรินทร์ แสนบัวคำ', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (บล็อก)', '', '2020-03-19 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แนน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51304.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(213, NULL, '51306', '51306', 'นางสาวณัฐวรา มีใจธรรม', NULL, 'Human Resource', 'Human Resource Development', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Human Resource Organization Development Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บีม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51306.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
(214, NULL, '21002', '3120200125340', 'นางสาวสุภา อ่ำแก้ว', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Finance & Accounting Officer', '', '2017-03-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปุ้ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21002.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(215, NULL, '85035', '1620400017345', 'นางสาวศศิภา จันทร์หอม', NULL, 'Akimitsu', 'Kitchen Team', 'Officer', 'ระยอง', 'แพชชั่น ระยอง', 'Commis Chef', '', '2019-04-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปุ้ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85035.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(216, NULL, '85053', '3460700555294', 'นายสราวุธ สุธรรมมา', NULL, 'Akimitsu', 'Front of house Service', 'Officer', 'ระยอง', 'แพชชั่น ระยอง', 'Captain', '', '2019-05-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โต', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85053.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(217, NULL, '82004', '82004', 'นางนิด ทองยุทธ', NULL, 'Factory', 'Production & Maintenance', 'Staff', 'สำนักงานราชบุรี', 'ราชบุรี', 'Packing Staff', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'นิด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82004.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
(218, NULL, '21004', '3321200201053', 'นางสาวณัทมนตร์ บันลือทรัพย์', NULL, 'Sales', 'Sales Jewelry', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Sale Supervisor (Roadshow Jewelry)', '', '2016-04-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'นัท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21004.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25');
INSERT INTO `users_detail` (`id`, `group_staff`, `Code_Staff`, `Card_Staff`, `Name_Thai`, `Name_Eng`, `Faction`, `Department`, `Degree`, `Workplace`, `Working_status`, `Position`, `DateofBirth`, `StartDate`, `HireDate`, `IDCardNumber`, `Sex`, `FamilyStatus`, `JGStatus`, `Yearsofservice`, `Age`, `Nickname`, `TelephoneNumber`, `Address`, `Current_Address`, `Resigned_Date`, `Vacation_leave`, `Sick_leave`, `Business_leave_necessary`, `Maternity_leave_paid`, `Maternity_leave_not_paid`, `Ordination_leaven`, `Marriage_leave`, `Accident_leave`, `Military_leave`, `Sterilization_leave`, `Time_offset`, `Leave_without_pay`, `Sick_leave_not_receiving_wages`, `Cremation_leave`, `Leave_instead_of_holidays`, `Leave_to_study`, `Take_a_break`, `Absence_from_work`, `img`, `active`, `Company`, `created_at`, `updated_at`) VALUES
(219, NULL, '21007', '3349900834447', 'นางสาวชนัญพัชร์ ภัทรินวัฒนะรัชต์', NULL, 'Supply Chain', 'Supply Chain', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Supply Chain Supervisor', '', '2017-10-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เนส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21007.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(220, NULL, '21015', '3100202297296', 'นางสาวกชกร ศรีประสิทธิ์', NULL, 'Sales', 'Sales Jewelry', 'Officer', 'นครราชสีมา', 'เซ็นทรัลนครราชสีมา', 'PC (Jewelry)', '', '2018-01-08 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ใบหม่อน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21015.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(221, NULL, '21018', '21018', 'นางสาวพิพรรษพร จันทร์เจือแก้ว', NULL, 'Sales', 'Sales Jewelry', 'Officer', 'โรบินสัน สาขาหาดใหญ่', 'สงขลา', 'PC (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ภา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21018.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
(222, NULL, '21035', '3200900774862', 'นายไชยรัตน์ จินตนาภรณ์', NULL, 'Procurement', 'Raw Material Preparation', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Prepare Supervisor', '', '2009-12-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ปุ่น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21035.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(223, NULL, '21036', '3110400959856', 'นายธวัชชัย วงศ์ยะรา', NULL, 'Procurement', 'Gemstones Purchasing', 'Sr.Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Senior Purchasing Officer (Gemstones)', '', '2009-12-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'อู', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21036.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(224, NULL, '21037', '3302400144826', 'นายวาร สืบเพ็ง', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Prepare Officer', '', '2007-04-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'วาร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21037.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(225, NULL, '21038', '3460600148468', 'นางสาวณัฐกานต์ จันทฤทธิ์', NULL, 'Procurement', 'Gemstones Purchasing', 'Sr.Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Senior Purchasing Officer (Gemstones)', '', '2013-12-18 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'นัท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21038.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(226, NULL, '21039', '3660600250481', 'นายสมเกียรติ อุ่นเรือน', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Prepare Officer', '', '2013-10-28 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เกียรติ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21039.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(227, NULL, '21042', '3220100336101', 'นางสาวภัทรดา อัปมะโห', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Prepare Officer', '', '2014-08-07 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นุช', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21042.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(228, NULL, '21043', '3440800659946', 'นายไพรรัต ชารีอัน', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Prepare Officer', '', '2014-10-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'รัต', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21043.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(229, NULL, '22017', '3300100976818', 'นางสาวสนิท จงจอหอ', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2013-11-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นิด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22017.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(230, NULL, '21080', '21080', 'นางสาวณัฏฐพร เอี่ยมผ่อง', NULL, 'Gemologist', 'Gemologist', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Gemologist Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โซดา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21080.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
(231, NULL, '21081', '1409901293949', 'นางสาวศิริลักษณ์ ศรีทะจักร', NULL, 'Procurement', 'Gemstones Purchasing', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Audit System Trainee', '', '2020-02-19 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แพท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21081.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(232, NULL, '21083', '1650400083208', 'นางสาวสุนิสา น้อมแก้ว', NULL, 'Procurement', 'Procurement (งานแมตซ์สี)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewellry Maker Officer (แมตซ์สี)', '', '2020-03-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21083.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(233, NULL, '21085', '1102001947469', 'นางสาวสุภาภรณ์ บูญปก', NULL, 'Procurement', 'Gemstones Purchasing', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Audit System Trainee', '', '2020-04-13 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ฝ้าย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21085.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(234, NULL, '22001', '3320100311786', 'นายแสวง แท่นแก้ว', NULL, 'Factory', 'Production', 'Supervisor', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Supervisor (เจียระไน)', '', '2010-05-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'แหว๋ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22001.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(235, NULL, '22002', '3300101127121', 'นางสาวศิริกร ชีโพธิ์', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2010-05-26 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เจี๊ยบ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22002.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(236, NULL, '22003', '3300101235846', 'นางจงลักษณ์ เพ็ชรพะเนาว์', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2010-05-25 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปุ๊', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22003.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(237, NULL, '22004', '5301000051542', 'นางสมควร สังสี', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2010-06-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เคลือ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22004.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(238, NULL, '22005', '3301000141600', 'นางสาวศรุดา กุลสันเทียะ', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2011-02-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22005.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(239, NULL, '22006', '3301000144421', 'นางศรีน้ำ เชาว์กลาง', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2011-03-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แมว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22006.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(240, NULL, '22007', '3300100968904', 'นางศุภลักษณ์ การบรรจง', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2011-04-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ไข่', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22007.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(241, NULL, '22008', '1301000016507', 'นางขนิษฐา กลิ่นโนนสูง', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2011-05-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ฐา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22008.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(242, NULL, '51033', '3480700605950', 'นางสาวพัฒยา มงคลเกตุ', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนพลอย)', '', '2012-05-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ต้น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51033.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:25'),
(243, NULL, '51215', '1311000240270', 'นายรังสิกร มาฆะมนต์', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (บล็อก)', '', '2018-04-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ฟุก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51215.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(244, NULL, '51299', '3160600013239', 'นางอำพร คำสี', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Finance & Accounting Manager', '', '2020-01-07 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'พร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51299.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(245, NULL, '21076', '1100701886070', 'นางสาวจุฑารัตน์ จำปา', NULL, 'Marketing', 'Marketing Communication (Online)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Social Media Coordinator (Officer)', '', '2019-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แต๊ก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21076.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(246, NULL, '61154', '362040054711', 'นางสาวนันทิญา ร่มโพธิ์', NULL, 'Factory', 'Production (งานฝัง)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (ฝัง)', '', '2017-01-09 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ไหน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61154.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(247, NULL, '91077', '3100903670392', 'นางสาวศริญรัตน์ ศิลาวรรณ์', NULL, 'Management', 'Management', 'Division Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'General Manager (Jewelry)', '', '2015-12-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'เดียร์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91077.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(248, NULL, '91294', '1100800962971', 'นางสาวณัชวิการณ์ ตั้งสะสมวงศ์', NULL, 'Graphic & Design', 'Graphic & Design', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Graphic Design Officer', '', '2018-11-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แพร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91294.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(249, NULL, '91471', '1540300057940', 'นางสาวปภาษา นัยวิริยะ', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Finance & Accounting Admin Officer', '', '2020-04-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'น้ำตาล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91471.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(250, NULL, '85066', '3240300716403', 'นางสาวชนิษฐา รุ่งอรุณ', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Finance & Accounting Supervisor', '', '1988-06-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'หนา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85066.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(251, NULL, '82040', '82040', 'นางสาวชญานี พุสุนพงษ์', NULL, 'Factory', 'Production & Maintenance', 'Staff', 'สำนักงานราชบุรี', 'ราชบุรี', 'Production Staff', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'ปลา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82040.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
(252, NULL, '82043', '8700376022093', 'นายกิติกร ทองไร', NULL, 'Factory', 'Production & Maintenance', 'Staff', 'ราชบุรี', 'สำนักงานราชบุรี', 'Mechanical Staff', '', '2019-06-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'กิติ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82043.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(253, NULL, '82044', '1700200078862', 'นายจิรเมธ สายใจ', NULL, 'Planning & Logistics', 'Warehouse & Logistics', 'Staff', 'ราชบุรี', 'สำนักงานราชบุรี', 'Logistics Staff', '', '2019-06-10 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'ตี๋', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82044.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(255, NULL, '22010', '3300100968084', 'นางสาวดวงชีวัน จุ่มกลาง', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2011-11-07 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อุ้ย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22010.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(256, NULL, '22011', '3300101140098', 'นางสุชิน ครองไธสง', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2012-05-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ชิน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22011.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(257, NULL, '22012', '3300600307214', 'นางสาวสงกรานต์ ของโพธิ์', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2012-06-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กาน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22012.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(258, NULL, '22013', '3160400247643', 'นางรัตนา กองชนิน', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2012-07-23 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บิ๋ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22013.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(259, NULL, '22014', '3301000287663', 'นางสาวปภัสสร ปลั่งกลาง', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2012-11-19 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้อ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22014.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(260, NULL, '22015', '3301000539735', 'นางสาวสมพร เพาะกลาง', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2013-06-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ผิ้ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22015.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(261, NULL, '22016', '3300101006057', 'นางบุญธรรม เปรมกลาง', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2013-07-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'จุก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22016.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(262, NULL, '61155', '3920300115438', 'นางสาวกันญา แย้มสรวลดี', NULL, 'Factory', 'Production (งานขัด)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (ขัด)', '', '2017-01-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เขียว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61155.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(263, NULL, '61163', '3100202557476', 'นายภาคิน ภัคพัตรพิบูล', NULL, 'Creative & Design', 'Creative & Design', 'Sr.Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Senior Jewelry Designer Officer', '', '2017-07-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'บี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61163.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(264, NULL, '61164', '3331000776621', 'นายธัชทัย มีชัย', NULL, 'Factory', 'Production (งานแม่พิมพ์)', 'Sr.Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Senior Jewelry Maker Officer (แม่พิมพ์)', '', '2017-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'ทัย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61164.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(265, NULL, '61170', '3440800608624', 'นายทวี ปิตตังนาโพธิ์', NULL, 'Factory', 'Production (งานแต่งประกอบ)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (แต่งประกอบ)', '', '2017-08-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'วี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61170.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(266, NULL, '61172', '1160100156603', 'นางสาวภัคญภา มากพงษ์', NULL, 'Creative & Design', 'Creative & Design', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Designer Officer', '', '2017-08-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปิ๊ก', '0982899297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61172.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(267, NULL, '61173', '1739900523506', 'นายเทพบดินทร์ บุญเทียม', NULL, 'Factory', 'Production (งานแกะลาย)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (แกะลาย)', '', '2017-08-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บาส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61173.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(268, NULL, '61175', '3100700907428', 'นายฐิติ บุญสุขมาก', NULL, 'Service Controller', 'Service Controller', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Driver Officer', '', '2017-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บอย', '0619921222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61175.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(269, NULL, '61190', '1710100088521', 'นายจตุพร ก้านเหลือง', NULL, 'Factory', 'Production (งานฝัง)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (ฝัง)', '', '2017-11-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบิร์ด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61190.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(270, NULL, '61193', '3710900694872', 'นางสาวดาว หลำเล็ก', NULL, 'Factory', 'Production (งานหล่อ)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (ผ่ายาง)', '', '2018-01-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ดาว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61193.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(271, NULL, '61197', '1100900424416', 'นายต่อพงศ์ วงศ์จิรัฐิติกาล', NULL, 'Factory', 'Factory', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Factory Supervisor', '', '2018-03-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เอ็ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61197.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(272, NULL, '61200', '3311000962182', 'นายวิทัศน์ ทองพราว', NULL, 'Factory', 'Production (งานหล่อ)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (หล่อ)', '', '2018-06-11 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'หยอง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61200.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(273, NULL, '61205', '3250600240625', 'นางสาวนิตยา ทองเจริญ', NULL, 'CAD Design', 'CAD Design', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'CAD Designer Officer', '', '2018-07-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นิด', '0656265928', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61205.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(274, NULL, '61208', '3451000914497', 'นายมานพ วีระศรี', NULL, 'Factory', 'Production (งานแกะลาย)', 'Sr.Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Senior Jewelry Maker Officer (แกะลาย)', '', '2018-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'นพ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61208.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(275, NULL, '61209', '5470100055149', 'นายอำนวยชัย นาไชยราญ', NULL, 'Factory', 'Production (งานแม่พิมพ์)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (แม่พิมพ์)', '', '2018-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อำนวย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61209.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(276, NULL, '61212', '3102200990816', 'นายสุรเชษฐ์ ชื่นสินธุ์วน', NULL, 'Brand Development', 'Brand Development', 'Ast.Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Assistant Gold & Jewelry Creative Product Manager', '', '2009-02-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'บอย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61212.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(277, NULL, '91086', '3102200617091', 'นายสุขพงศ์ สหัสนันท์', NULL, 'Management', 'Management', 'Division Manager', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'General Manager (Lifestyle)', '', '2015-12-15 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'เบริด์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91086.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(278, NULL, '91098', '5101499032536', 'นายรังสรรค์ ตั้งเจริญสุขสม', NULL, 'Warehouse & Logistics', 'Warehouse & Logistics', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Messenger Officer (Lifestyle)', '', '2016-04-18 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แมน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91098.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(279, NULL, '91099', '3110400659143', 'นางสาวสิริมา โชคศิริวรรณา', NULL, 'Sales', 'Sales Alternative', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'Sale Officer (Support) (Lifestyle)', '', '2016-04-18 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โบว์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91099.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(280, NULL, '91111', '3101701236668', 'นางสาวฐิติพร ศรีมาจันทร์', NULL, 'Marketing', 'Marketing Communication (Offline)', 'Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'PR Manager (Jewelry)', '', '2014-07-21 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'เอ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91111.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(281, NULL, '91112', '3101600595921', 'นางสาวนันทธนา วัชรปาน', NULL, 'Site Acquisition', 'Site Acquisition', 'Ast.Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Assistant Site Acquisition Manager (Jewelry)', '', '2016-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'แคน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91112.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(282, NULL, '91118', '3129900340616', 'นายสรภูมิ เรืองฤทธิ์', NULL, 'Sales', 'Sales Alternative', 'Manager', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'Sale Manager (Lifestyle)', '', '2016-08-17 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'แจ๊ค', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91118.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(283, NULL, '91129', '3730100847402', 'นางสาววันวิสา ธุวภัทร', NULL, 'Sales', 'Sales Multi Brand', 'Manager', 'อุดรธานี', 'เซ็นทรัลอุดรธานี', 'Sale Manager (Luxury)', '', '2017-01-05 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'หญิง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91129.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(284, NULL, '91148', '91148', 'นางสาววิไลพร จงใจ', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เซ็นทรัลลาดพร้าว', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปุ้ย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91148.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
(285, NULL, '91153', '3401200133413', 'นายพัฒน์ภัทรพล สิทธิสูงเนิน', NULL, 'Sales', 'Sales Alternative', 'Officer', 'กรุงเทพมหานคร', 'สยามพารากอน', 'PC (Lifestyle)', '', '2016-04-27 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ไทร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91153.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(286, NULL, '91163', '1779800156421', 'นายสุธิวัท ละอองอ่อน', NULL, 'Sales', 'Sales Alternative', 'Officer', 'ประจวบคีรีขันธ์', 'บลูพอร์ต หัวหิน', 'PC (Lifestyle)', '', '2016-09-28 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กอล์ฟ', '0989013509', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91163.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(287, NULL, '91164', '3100601845611', 'นางสาวทิพากร สุวรรณชุ่มเอม', NULL, 'Sales', 'Sales Alternative', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'Sale Supervisor (Roadshow Lifestyle)', '', '2016-09-30 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'กร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91164.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(288, NULL, '91191', '1100800099343', 'นายธนภพ ทุมแสน', NULL, 'Customer Service', 'Customer Service', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'Customer Service Supervisor (Lifestyle)', '', '2017-05-15 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'อู', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91191.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(289, NULL, '91197', '2341500024302', 'นายไชยมงคล ศรีสด', NULL, 'Warehouse & Logistics', 'Warehouse & Logistics', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Messenger Officer (Lifestyle)', '', '2017-06-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เอ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91197.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(290, NULL, '91216', '1490300074551', 'นางสาวอนุรักษ์ ปาวงค์', NULL, 'Sales', 'Sales Multi Brand', 'Officer', 'อุดรธานี', 'เซ็นทรัลอุดรธานี', 'PC (Luxury)', '', '2017-09-05 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แพรวา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91216.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(291, NULL, '91218', '3340400009511', 'นางสาวกนกวรรณ วรรณทวี', NULL, 'Warehouse & Logistics', 'Warehouse & Logistics', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Packing Officer (Lifestyle)', '', '2017-10-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เก๊อะ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91218.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(293, NULL, '91305', '1600100378580', 'นางสาวเกตุกนก พึ่งเจียม', NULL, 'Sales', 'Sales Multi Brand', 'Officer', 'อุดรธานี', 'เซ็นทรัลอุดรธานี', 'PC (Luxury)', '', '2018-11-22 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'จอย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91305.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(294, NULL, '91307', '1149900164587', 'นางสาวอารยา ชัยสิทธิ์', NULL, 'Warehouse & Logistics', 'Warehouse & Logistics', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Warehouse & Logistics Officer (Lifestyle)', '', '2018-11-19 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บุ๊ค', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3XeGQfaUp6.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(295, NULL, '91318', '1100701183834', 'นายนิกร ทิมเขียว', NULL, 'Sales', 'Sales Alternative', 'Officer', 'กรุงเทพมหานคร', 'เอ็มโพเรียม (Be Trend)', 'PC (Lifestyle)', '', '2018-12-05 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'จ๊อบ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91318.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(296, NULL, '91321', '1100400426096', 'นายกิตติทัพพ์ จันทร์ฉายทอง', NULL, 'Warehouse & Logistics', 'Warehouse & Logistics', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Warehouse & Logistics Officer (Lifestyle)', '', '2018-12-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตี๋', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PXhaJR8IgS.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(297, NULL, '91324', '1103701657740', 'นางสาวธนาวดี บุญประกอบ', NULL, 'Marketing', 'Marketing Communication (Online)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Social Media Coordinator (Jewelry)', '', '2018-12-17 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มิลช์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91324.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(298, NULL, '91326', '1570100083564', 'นางสาวปิยะนุช ต๊ะวิโล', NULL, 'Marketing', 'Marketing', 'Ast.Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Assistant Brand Manager (Jewelry)', '', '2019-01-15 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'เหมียว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91326.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(299, NULL, '91332', '1329900582310', 'นางสาวชาญนภัส ศรีสังวร', NULL, 'Marketing', 'Marketing Communication (Online)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Social Media Coordinator (Jewelry)', '', '2019-03-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ป้อน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91332.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(300, NULL, '91338', '1369900002046', 'นางสาวปราริฉัตร บุตรศรี', NULL, 'Sales', 'Sales Alternative', 'Officer', 'นครราชสีมา', 'เซ็นทรัลนครราชสีมา', 'PC (Lifestyle)', '', '2019-03-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บิ๋ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91338.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(301, NULL, '91339', '1102000069085', 'นายกิตติกร ธรรมาธิพงศ์', NULL, 'Sales Support', 'Sales Support', 'Ast.Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Assistant Sale & Marketing Manager (Jewelry)', '', '2017-10-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'จ๋อ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91339.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(302, NULL, '91348', '1449900358206', 'นางสาวรัชนีกร คำมี', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Finance & Accounting Officer', '', '2019-05-08 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แตงโม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91348.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(303, NULL, '91350', '1840600012001', 'นายกันตภณ จันทนามนตรี', NULL, 'Marketing', 'Marketing', 'Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Marketing Manager (Luxury)', '', '2019-05-08 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'วิน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91350.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(304, NULL, '91351', '1819900062117', 'นายวิศรุต สนั่นก้อง', NULL, 'Sales', 'Sales Alternative', 'Officer', 'ภูเก็ต', 'เซ็นทรัลภูเก็ต', 'PC (Lifestyle)', '', '2019-05-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บ่าว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91351.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(305, NULL, '91358', '3160400430537', 'นางสาวเปมิกา อินทนาผล', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Finance & Accounting Supervisor', '', '2019-06-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เชอรรี่', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91358.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(306, NULL, '91359', '1459900441928', 'นางสาวขนิษฐา คณะศรี', NULL, 'Sales', 'Sales Alternative', 'Officer', 'กรุงเทพมหานคร', 'โรบินสัน พระราม9', 'PC (Lifestyle)', '', '2019-06-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ต๋อม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91359.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(307, NULL, '91427', '1101500523281', 'นายทัศน์พล หม่องเป้ง', NULL, 'Marketing', 'Sport Marketing', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'Sport Marketing Executive Supervisor (Lifestyle)', '', '2019-12-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เบียร์์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91427.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(309, NULL, '91433', '1419900502528', 'นางอำนวย บุญยอ', NULL, 'Sales Support', 'Sales Support', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Sales Support Officer (Jewelry)', '', '2020-01-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นุช', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91433.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(310, NULL, '91435', '3330401083553', 'นายดาเนียล แฮร์แบรต์ คัมเบล', NULL, 'Business & Development', 'Business & Development', 'Division Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Chief Operating Officer', '', '2019-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'ดาเนียล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91435.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(311, NULL, '91440', '3410102057754', 'นางสาวอัมพร จงถาวร', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'แฟชั่นไอส์แลนด์', 'PC (Jewelry)', '', '2019-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91440.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(312, NULL, '91442', '3120300039194', 'นางสาววราพร จันทราช', NULL, 'Graphic & Design', 'Photographer', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Photographer & Graphic Designer Officer', '', '2017-04-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'จอย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91442.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(313, NULL, '91443', '1101500621096', 'นายสมนึก ใจไว', NULL, 'Sales', 'Sales Alternative', 'Officer', 'กรุงเทพมหานคร', 'เอ็มโพเรียม', 'PC (Lifestyle)', '', '2020-01-05 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบียร์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91443.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(314, NULL, '91465', '91465', 'นางสาวรุ่งนภา บัวปัญญา', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เซ็นทรัลระยอง', 'ระยอง', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พัดลม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91465.jpg', '1', NULL, NULL, NULL),
(315, NULL, '85078', '1330400412948', 'นายไพสิน คำดี', NULL, 'Operation', 'Kitchen Team', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Commis Chef', '', '2020-06-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อาร์ท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85078.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(316, NULL, '51222', '3101702275012', 'นายอังสะ แก้วสุโข', NULL, 'Factory', 'Factory', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Factory Supervisor', '', '2018-06-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'อึ่ง', '0817513653', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51222.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(317, NULL, '91452', '1100400969316', 'นางสาวอริสา แซ่หลิว', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'ภูเก็ต', 'เซ็นทรัลภูเก็ต', 'PC (CTF) (Luxury)', '', '2020-01-24 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มีโอ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91452.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(318, NULL, '91454', '8505073010753', 'นายสุรเชษฐ์ แจ้งประสงค์', NULL, 'Sales', 'Sales Alternative', 'Officer', 'ชลบุรี', 'เทอร์มินอล 21 พัทยา', 'PC (Lifestyle)', '', '2020-02-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'สอง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91454.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(319, NULL, '91460', '91460', 'นางสาวจุฑามาศ พุทธาน้อย', NULL, 'Sales', 'Sales Alternative', 'Officer', 'โรบินสันรังสิต', 'ปทุมธานี', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อั่งเปา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91460.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
(320, NULL, '91461', '91461', 'นายกิจจา วรรณทนาพร', NULL, 'Sales', 'Sales Gold & Jewelry', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Sales & Customer Services Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ตี่', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91461.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
(321, NULL, '91464', '91464', 'นางสาวปิยพร ทัดศิริ', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'เทอร์มินอล 21 พัทยา', 'ชลบุรี', 'PC (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เมย์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91464.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
(322, NULL, '91466', '1329900444286', 'นางสาวปัญจรัตน์ ทรัพย์หิรัญกุล', NULL, 'Management', 'Management', 'Ast.Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Assistant Luxury Business Manager (Luxury)', '', '2020-03-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'เจล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91466.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(323, NULL, '91467', '91467', 'นางสาวฐิตาภา ไชยเอก', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'เทอร์มินอล 21 พัทยา', 'ชลบุรี', 'PC (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นุช', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91467.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
(324, NULL, '91470', '1411100237768', 'นางสาวพรรณวิลาศ อินพิชัย', NULL, 'Sales', 'Sales Alternative', 'Officer', 'กรุงเทพมหานคร', 'เดอะมอลล์บางกะปิ', 'PC (Lifestyle)', '', '2020-03-18 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อุ๊บอิ๊บ', '0648909055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91470.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(325, NULL, '85070', '85070', 'นางสาวสิริยากร สะท้านถิ่น', NULL, 'Management', 'Operetion Management', 'Ast.Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Assistant Operetion Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'อุ๋ย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85070.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL);
INSERT INTO `users_detail` (`id`, `group_staff`, `Code_Staff`, `Card_Staff`, `Name_Thai`, `Name_Eng`, `Faction`, `Department`, `Degree`, `Workplace`, `Working_status`, `Position`, `DateofBirth`, `StartDate`, `HireDate`, `IDCardNumber`, `Sex`, `FamilyStatus`, `JGStatus`, `Yearsofservice`, `Age`, `Nickname`, `TelephoneNumber`, `Address`, `Current_Address`, `Resigned_Date`, `Vacation_leave`, `Sick_leave`, `Business_leave_necessary`, `Maternity_leave_paid`, `Maternity_leave_not_paid`, `Ordination_leaven`, `Marriage_leave`, `Accident_leave`, `Military_leave`, `Sterilization_leave`, `Time_offset`, `Leave_without_pay`, `Sick_leave_not_receiving_wages`, `Cremation_leave`, `Leave_instead_of_holidays`, `Leave_to_study`, `Take_a_break`, `Absence_from_work`, `img`, `active`, `Company`, `created_at`, `updated_at`) VALUES
(326, NULL, '85073', '3100902390523', 'นางนันทวรรณ แซ่ปึง', NULL, 'Operation', 'Kitchen Team', 'Sr.Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Senior Chef Officer', '', '2020-04-09 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'นัน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85073.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(327, NULL, '85074', '3840600044383', 'นายพิสิฐ ทองรักษ์', NULL, 'Operation', 'Kitchen Team', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Chef Supervisor', '', '2020-04-09 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'สิฐ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85074.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(328, NULL, '85076', '3471000034942', 'นางสาวพิรวรรณ วิชาดี', NULL, 'Operation', 'Kitchen Team', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Commis Chef', '', '2020-05-11 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85076.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(329, NULL, '94002', '1100600194423', 'นายวาฑิต เตชเสริมภูมิ', NULL, 'System & Security', 'System & Security', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'System & Security Supervisor', '', '2015-03-09 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'อั้ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94002.jpg', '1', 'NIO ACHIEVERS CO., LTD.', NULL, '2020-09-11 10:13:26'),
(330, NULL, '94004', '3120200403536', 'นายเก่งกาจ เนียมจ้อย', NULL, 'Front Line & CS', 'IT Helpdesk', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'IT Support Officer', '', '2012-02-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เก่ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94004.jpg', '1', 'NIO ACHIEVERS CO., LTD.', NULL, '2020-09-11 10:13:26'),
(331, NULL, '94005', '1100800558488', 'นายรุ่งธรรม โชติชวาลรัตนกุล', NULL, 'Back Office & ERP', 'ERP', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'IT & ERP Support Officer', '', '2017-03-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ป็อป', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94005.jpg', '1', 'NIO ACHIEVERS CO., LTD.', NULL, '2020-09-11 10:13:26'),
(332, NULL, '94008', '3920600780534', 'นายเรวัต หนูปราบ', NULL, 'Management', 'Management', 'Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'General Manager (NIO)', '', '2018-07-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'เรย์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94008.jpg', '1', 'NIO ACHIEVERS CO., LTD.', NULL, '2020-09-11 10:13:26'),
(333, NULL, '94012', '1129900359884', 'นายก้องเกียรติ บุญเส็ง', NULL, 'Back Office & ERP', 'Software Development', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'IT & Software Support Officer', '', '2018-11-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ก้อง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94012.jpg', '1', 'NIO ACHIEVERS CO., LTD.', NULL, '2020-09-11 10:13:26'),
(334, NULL, '94013', '1101401711569', 'นายภาสกร วรกิจพูนผล', NULL, 'Back Office & ERP', 'Software Development', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Software Development Officer', '', '2018-12-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ซัน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94013.jpg', '1', 'NIO ACHIEVERS CO., LTD.', NULL, '2020-09-11 10:13:26'),
(335, NULL, '94015', '144990262781', 'นางสาวสุภามาศ ทวยจันทร์', NULL, 'Front Line & CS', 'IT Helpdesk', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'IT Support Officer', '', '2019-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มาศ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94015.jpg', '1', 'NIO ACHIEVERS CO., LTD.', NULL, '2020-09-11 10:13:26'),
(336, NULL, '94016', '3102100522063', 'นายสมาน ลาภกระจ่าง', NULL, 'Front Line & CS', 'Front Line & CS', 'Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Microservices Development Manager', '', '2019-10-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'แซม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94016.jpg', '1', 'NIO ACHIEVERS CO., LTD.', NULL, '2020-09-11 10:13:26'),
(337, '', '94018', '1179900327249', 'นายนราธร ข้องหลิม', NULL, 'Back Office & ERP', 'Software Development', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Software Development Officer', '', '2019-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เจมส์', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3cJlQIJu3L.jpg', '1', 'NIO ACHIEVERS CO., LTD.', NULL, '2020-09-11 10:13:26'),
(338, NULL, '94019', '1461600001097', 'นายเกียรติศักดิ์ พันพู', NULL, 'Back Office & ERP', 'Software Development', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Software Development Officer', '', '2019-07-18 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เท่ห์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94019.jpg', '0', 'NIO ACHIEVERS CO., LTD.', NULL, '2020-09-11 10:13:26'),
(339, NULL, '94020', '1102001792023', 'นายอักษรินทร์ เอี่ยมอมรฤทธิ์', NULL, 'Back Office & ERP', 'ERP', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'ERP Support Officer', '', '2019-09-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บอส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94020.jpg', '1', 'NIO ACHIEVERS CO., LTD.', NULL, '2020-09-11 10:13:26'),
(340, NULL, '51217', '1460200048451', 'นางสาวภัสดาภรณ์ อิ่มพูล', NULL, 'Human Resource', 'Human Resource Management', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Junior Talent Acquisition Supervisor', '', '2018-04-19 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'แจน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51217.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(341, NULL, '51218', '1102700448275', 'นายชาคริต เสมามิ่ง', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนพลอย)', '', '2018-04-27 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ก๊อด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51218.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(342, NULL, '51228', '51228', 'นางสาวภัทราวดี ชินโย', NULL, 'Service Controller', 'Service Controller', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Maid Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มุก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51228.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
(343, NULL, '51234', '3411700291441', 'นายใส ยอดช่าง', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนเพชร)', '', '2018-08-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ใส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51234.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(344, NULL, '51237', '3620400145234', 'นายศักดิ์ชาย ทับกฤษ', NULL, 'General Affairs', 'General Affairs (Messenger)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Messenger Officer', '', '2018-09-10 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51237.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(345, NULL, '51239', '1101400371675', 'นายธนรัฐ ธีระวรวงศ์', NULL, 'Gold & Metal Group', 'Gold & Metal Group', 'Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Research & Development Manager', '', '2017-01-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'รถจิ๊บ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51239.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(346, NULL, '51240', '1100800745377', 'นายธนชาติ ธนากรพิพัฒน์กุล', NULL, 'Business & Development', 'Business & Development', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Engineer Supervisor', '', '2018-07-18 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ทัช', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51240.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(347, NULL, '51241', '1409900420858', 'นายกัมปนาท สิมมา', NULL, 'Business & Development', 'Business & Development', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Engineer Supervisor', '', '2018-08-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ตั๋ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51241.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(348, NULL, '51242', '3110101165475', 'นางรัตนวลี พาริตา', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนเพชร)', '', '2018-10-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เหมียว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51242.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(349, NULL, '51248', '2770600025209', 'นายบดินทร์ สัพประทัศเสวี', NULL, 'Human Resource', 'Human Resource Development', 'Sr.Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Senior Human Resource Development Supervisor', '', '2018-11-19 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'เต้ย', '0970207888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51248.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(350, NULL, '51255', '1411800145483', 'นายโรนัค บาร์เดีย', NULL, 'Procurement', 'Gemstones Purchasing', 'Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Purchasing Manager (Gemstones)', '', '2015-01-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'บาร์เดีย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51255.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(351, NULL, '51257', '3200100407474', 'นายวิศิษฏ์ ฐิรายุวัฒน์', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Division Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Chief Financial Officer', '', '2019-02-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'สิท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51257.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(352, NULL, '85042', '1729800206266', 'นางสาวพิม อินปา', NULL, 'Akimitsu', 'Kitchen Team', 'Officer', 'ระยอง', 'แพชชั่น ระยอง', 'Commis Chef', '', '2019-05-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พิม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85042.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(353, NULL, '85050', '1221000015013', 'นางสาวอาภัสรา วิเศษ', NULL, 'Akimitsu', 'Kitchen Team', 'Officer', 'ระยอง', 'แพชชั่น ระยอง', 'Commis Chef', '', '2019-05-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เอม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85050.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(354, NULL, '85051', '1219900640477', 'นางสาวฑิตฐิตา สายพันธ์', NULL, 'Akimitsu', 'Kitchen Team', 'Officer', 'ระยอง', 'แพชชั่น ระยอง', 'Commis Chef', '', '2019-05-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พิม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85051.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(355, NULL, '51259', '1310100156555', 'นางสาวกรรณิการ์ การเพียร', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนพลอย)', '', '2019-02-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ฝน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51259.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(356, NULL, '51156', '1100702590042', 'นางสาวนราธร ทรัพย์เอี่ยม', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (บล็อก)', '', '2017-01-11 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เฟิร์น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51156.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(357, NULL, '51262', '1102002039388', 'นายธรรมนูญ สมวงษ์', NULL, 'Human Resource', 'Human Resource Development', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Human Resource Development Digital Supervisor', '', '2019-03-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ตั้ม', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kGy184DInF.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(358, NULL, '21044', '3860700083801', 'นางสาวเกษศิรินทร์ วีระวงศ์', NULL, 'Procurement', 'Gemstones Purchasing', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Purchasing Officer (Diamond)', '', '2014-04-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปู', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21044.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(359, NULL, '61217', '3100900025984', 'นายอำพล แตระพรพาณิชย์', NULL, 'Creative & Design', 'Creative & Design', 'Manager', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Product Design & Development Manager', '', '2019-01-15 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'เกี๊ยก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61217.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, '2020-09-11 10:13:26'),
(360, NULL, '91219', '5670700065372', 'นางสาวสมพร สินทร', NULL, 'Warehouse & Logistics', 'Warehouse & Logistics', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Packing Officer (Lifestyle)', '', '2017-10-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91219.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(361, NULL, '91363', '3100202297296', 'นายโชคชัย จงเลิศธรรม', NULL, 'Sales', 'Sales Alternative', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'Sale Supervisor (Roadshow Lifestyle)', '', '2019-06-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'โชค', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91363.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(362, NULL, '91472', '1100400265670', 'นายจิรายุ ถุงเงิน', NULL, 'Graphic & Design', 'Photographer', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Photographer & Retoucher Officer', '', '2020-04-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ยิม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91472.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(363, NULL, '94024', '1103700172548', 'นายอภินันท์ อินทรวิจิตร', NULL, 'Front Line & CS', 'Front Line', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Business System Analyst Supervisor', '', '2020-03-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94024.jpg', '1', 'NIO ACHIEVERS CO., LTD.', NULL, '2020-09-11 10:13:26'),
(364, NULL, '22018', '3301000371311', 'นางออนอุมา เคียงสันเทียะ', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2014-09-08 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ออน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22018.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(365, NULL, '22019', '3300101126397', 'นางสาววราภรณ์ เชือกจอหอ', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2014-09-29 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แดง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22019.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(366, NULL, '22020', '3300100156454', 'นางกัญญา แก้วจอหอ', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2015-01-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แหม่ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22020.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(367, NULL, '22021', '1309900074691', 'นายธณวรรษฐ์ สวาสโพธิ์กลาง', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2015-02-09 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตุ้ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22021.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(368, NULL, '91056', '1310100171619', 'นายอพิชิต โถทอง', NULL, 'Sales', 'Sales Alternative', 'Officer', 'กรุงเทพมหานคร', 'Icon Siam', 'PC (Lifestyle)', '', '2015-08-14 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ซุน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91056.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(369, NULL, '91250', '1509901384102', 'นายเจษฎา ไชยยา', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เชียงใหม่', 'นิมมาน เชียงใหม่', 'PC (Lifestyle)', '', '2018-03-25 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แม็ก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91250.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(370, NULL, '91266', '3801200633170', 'นายนิระชัย เรืองแก้ว', NULL, 'Sales', 'Sales Multi Brand', 'Officer', 'นนทบุรี', 'เซ็นทรัลเวสเกต', 'PC (Luxury)', '', '2018-07-12 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ระ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91266.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(371, NULL, '22022', '3309600075877', 'นางสาวศรีรัตน์ เงื่อนกลาง', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2015-03-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แวน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22022.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(372, NULL, '22023', '3301000338977', 'นางยุภา ทองมหา', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2015-05-12 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'หมุ๋ย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22023.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(373, NULL, '22024', '1309600061811', 'นางสาวมัทนา กลีบกลาง', NULL, 'Factory', 'Production', 'Officer', 'นครราชสีมา', 'สำนักงานโคราช', 'Jewelry Maker Officer (เจียระไนเพชร พลอย)', '', '2015-08-24 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มัท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22024.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(374, NULL, '91479', '1709901105881', 'นายจักรพงศ์ จันทรักษา', NULL, 'Sales', 'Sales Alternative', 'Officer', 'ราชบุรี', 'โรบินสันราชบุรี', 'PC (Lifestyle)', '', '2020-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปู', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91479.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(375, NULL, '91480', '1100801073178', 'นางสาวนลินี จันทร์ฉาย', NULL, 'Sales', 'Sales Alternative', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'PC (Lifestyle)', '', '2020-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'หมิว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91480.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(376, NULL, '91481', '1500900148679', 'นางสาวศิริญาพร พุธปันดิ', NULL, 'Sales', 'Sales Alternative', 'Officer', 'กรุงเทพมหานคร', 'เซ็นทรัลเวิลด์', 'PC (Lifestyle)', '', '2020-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91481.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(377, NULL, '21088', '1102001156585', 'นายทัศนรา ศรีปุ้นจั่น', NULL, 'Gemologist', 'Gemologist', 'Sr.Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Senior Gemologist Supervisor', '', '2020-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'แทน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21088.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-09-11 10:13:25'),
(378, NULL, '70417', '3509901252199', 'นางสาวศิริโสภา ศิริภัทรากุล', NULL, 'Marketing', 'Marketing', 'Supervisor', 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Sale & Marketing Supervisor', '', '2020-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เจี๊ยบ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '70417.jpg', '1', 'NGG TRADE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(385, NULL, '10006', '3401200133413', 'นางสาววิลาวัลย์ วิจารณ์ปรีชา', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'กรุงเทพมหานคร', 'หน่วยแทน', 'Sale Manager (Gold & Jewelry)', '', '2016-04-27 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'อ้อม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10006.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(386, NULL, '10026', '3249900210584', 'นายรุ่งรดิศ ปัญจพิทยะ', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'กรุงเทพมหานคร', 'สาขาปิ่นเกล้า', 'Shop Manager (Gold & Jewelry)', '', '2012-07-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'แซ็ก', '0936426691', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10026.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(387, NULL, '10030', '1100400019971', 'นางสาวน้ำผึ้ง สุวรรณโคตร', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'กรุงเทพมหานคร', 'สาขาศาลายา', 'Sale Manager (Gold & Jewelry)', '', '2014-11-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'ผึ้ง', '0804924232', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RM0TUIKe7z.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(388, NULL, '10031', '5301200098402', 'นางสาวสงกรานต์ เรืองศรี', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'นครราชสีมา', 'สาขาโคราช', 'Shop Manager (Gold & Jewelry)', '', '2006-01-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'กรานต์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10031.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(389, NULL, '10032', '1103701653035', 'นายธนพล โสดานาม', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาหัวหมาก', 'Sale Technician (Gold & Jewelry)', '', '2018-01-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เพชร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10032.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(390, NULL, '10034', '5440600048702', 'นางสาวสุปราณี ชากัน', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'สมุทรปราการ', 'สาขาสำโรง', 'Shop Manager (Gold & Jewelry)', '', '2012-06-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'นก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10034.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(391, NULL, '10037', '3102101655407', 'นายภัทรพงษ์พันธ์ ประกายมาศ', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'กรุงเทพมหานคร', 'สาขาพระราม2', 'Shop Manager (Gold & Jewelry)', '', '2003-10-25 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'เบริด', '0889615266', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10037.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(392, NULL, '10040', '1100700689840', 'นางสาวสุกัญญา ช่อลำเจียก', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'กรุงเทพมหานคร', 'สาขาพระราม2', 'Sale Manager (Gold & Jewelry)', '', '2017-12-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'อุ้ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10040.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(393, NULL, '10042', '1101400978847', 'นางสาวกองแก้ว นาคเขียว', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'สมุทรปราการ', 'สาขาสำโรง', 'Sale Manager (Gold & Jewelry)', '', '2015-02-23 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'แก่น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10042.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(394, NULL, '10046', '3520300401323', 'นางอนงค์ น้อยกาศักดิ์', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'กรุงเทพมหานคร', 'สาขาเซ็นทรัลเวิลด์', 'Shop Manager (Gold & Jewelry)', '', '1992-11-10 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'นงค์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10046.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(395, NULL, '10047', '1340700052530', 'นางไพรินทร์ จันทร์มณี', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาพระราม3', 'Sale Staff (Gold & Jewelry)', '', '2007-02-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ฝน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10047.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(396, NULL, '10048', '', 'นายอานนท์ คำชาลี', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', '', '', 'Sale Technician (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นนท์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10048.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(397, NULL, '10050', '3100902919214', 'นายอาคม น้อยกาศักดิ์', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาพระราม3', 'Sale Staff (Gold & Jewelry)', '', '1995-10-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เด่น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10050.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(398, NULL, '10052', '3250800351323', 'นางสุภาวดี โสดานาน', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'กรุงเทพมหานคร', 'สาขาพระราม3', 'Shop Manager (Gold & Jewelry)', '', '1992-03-10 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'นุช', '0858267201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10052.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(399, NULL, '10053', '1550900034517', 'นางสาวอัญชลี วชิรนารายณ์', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'กรุงเทพมหานคร', 'สาขาหัวหมาก', 'Shop Manager (Gold & Jewelry)', '', '2007-11-09 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'นัท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10053.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(400, NULL, '10054', '1350100089581', 'นางสาวชุติมันต์ โคตสุวรรณ์', NULL, 'Sales', 'Sales Gold & Jewelry', 'Staff', 'อุดรธานี', 'สาขาอุดร', 'Sale Staff (Gold & Jewelry)', '', '2014-08-25 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'เปรี้ยว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10054.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(401, NULL, '10055', '3520300160712', 'นางสาวแสงเดือน ไชยวิทยาการ', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'กรุงเทพมหานคร', 'สาขาลาดพร้าว', 'Sale Manager (Gold & Jewelry)', '', '2001-01-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'โอ่ง', '0863639551', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10055.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(402, NULL, '10057', '15605-000061240', 'นางสาวสุกัญญา บุญดิษฐ์', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานพระราม3', 'Sale Staff (Gold & Jewelry)', '', '2009-04-22 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'สุ', '0923807585', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10057.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(403, NULL, '10058', '3710200230776', 'นางสาวกาญจนา สุขพันธ์อ่ำ', NULL, 'Marketing', 'Marketing', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานยานนาวา', 'Marketing officer', '', '2017-01-24 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นุ่น', '0892534190', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10058.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(404, NULL, '10060', '15605000061240', 'นายจตุพล มานัสสา', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'อุดรธานี', 'สาขาอุดร', 'Sale Technician (Gold & Jewelry)', '', '2009-04-22 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10060.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(405, NULL, '10061', '3640900327579', 'นางอริสา เพิ่มพูน', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'กรุงเทพมหานคร', 'สาขาลาดพร้าว', 'Shop Manager (Gold & Jewelry)', '', '2003-11-11 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'แตน', '0834426426', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10061.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(406, NULL, '10062', '1469900072795', 'นางสาวมาลินี ไผ่แผ้ว', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาพระราม2', 'Sale Staff (Gold & Jewelry)', '', '2017-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โบว้', '0640846932', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10062.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(407, NULL, '10063', '3909800506230', 'นางสาวปวริศา บำรุงนุรักษ์', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'นนทบุรี', 'เซ็นทรัลแจ้งวัฒนะ', 'Shop Manager (Gold & Jewelry)', '', '2013-10-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'เดือน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10063.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(408, NULL, '10065', '1101400200951', 'นายไพโรจน์ มะสุข', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'นนทบุรี', 'สาขาบางใหญ่', 'Sale Manager (Gold & Jewelry)', '', '2015-04-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'ป๊อบ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10065.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(409, NULL, '10067', '5342100043071', 'นางสาววิลาวรรณ คล้ายพรหม', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'กรุงเทพมหานคร', 'สาขาแจ้งวัฒนะ', 'Shop Manager (Gold & Jewelry)', '', '2009-05-29 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'วิ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10067.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(410, NULL, '10070', '', 'นางสาวพรวิภา สารีสุข', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', '', '', 'Sale Staff (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้อม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10070.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(411, NULL, '10088', '', 'นายวิเชียร เครือสาร', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, '', '', 'Sale Staff (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ต้น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10088.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(412, NULL, '10089', '3120100408901', 'นายนิมิตร เครือฟ้า', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'กรุงเทพมหานคร', 'สาขาพระราม3', 'Sale Manager (Gold & Jewelry)', '', '2010-05-17 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'โจ้', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10089.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(413, NULL, '10091', '3341700003319', 'นางสาวสวามินี พันธ์เพชร', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาพระราม3', 'Sale Staff (Gold & Jewelry)', '', '2015-01-21 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ขิม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10091.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(414, NULL, '10095', '3770600499918', 'นายคณิศร ประกอบชาติ', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาแจ้งวัฒนะ', 'Sale Staff (Gold & Jewelry)', '', '2014-11-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เอ็ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10095.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(415, NULL, '10100', '3430100580069', 'นางสาวสุพัตรา มาละดา', NULL, 'Financial & Accounting', 'Financial & Accounting', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานยานนาวา', 'Finance & Accounting Officer', '', '2017-01-12 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อิม', '0821823834', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10100.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(416, NULL, '10102', '1570500112677', 'นางสาวชลิดา ติดทะ', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'สมุทรสาคร', 'สาขามหาชัย', 'Shop Manager (Gold & Jewelry)', '', '2012-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'ปุ', '0649625414', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10102.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(417, NULL, '10107', '1101800496360', 'นางสาวรฐา ธุวพรนิธิ', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาพระราม2', 'Sale Staff (Gold & Jewelry)', '', '2013-10-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10107.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(418, NULL, '10149', '3360700149271', 'นายสมชาย ประเสริฐพงษ์', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาลาดพร้าว', 'Sale Technician (Gold & Jewelry)', '', '2012-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'รอด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10149.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(419, NULL, '10155', '3102102072758', 'นางสาวภัทรศินีย์ วีระวงศ์', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาลาดพร้าว', 'Sale Staff (Gold & Jewelry)', '', '2012-02-05 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นุ้ย', '0867807947', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10155.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(420, NULL, '10157', '1430400128220', 'นางสาวพรยุพา อัดโดดดอน', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'กรุงเทพมหานคร', 'สาขาพระราม3', 'Sale Manager (Gold & Jewelry)', '', '2013-01-14 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'ฝ้าย', '0815481924', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10157.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(421, NULL, '10159', '1379900027804', 'นางสาวรุ่งทิวา ศรีธร', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาพระราม3', 'Sale Staff (Gold & Jewelry)', '', '2016-02-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ฟ้า', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10159.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(422, NULL, '10173', '1461300132706', 'นางสาววัชราภรณ์ คำชมภู', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาศาลายา', 'Sale Staff (Gold & Jewelry)', '', '2016-05-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พร', '0930046805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10173.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(423, NULL, '10208', '', 'นางสาวศุมัสนิชา เกรียงสี', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', '', '', 'Sale Manager (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'กุ้ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10208.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(424, NULL, '10210', '', 'นางสาวณิชนันทน์ คำแก้ว', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', '', '', 'Sale Staff (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปุ๊ก', '0634152519', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10210.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(425, NULL, '10215', '37102000230776', 'นางสาวสุรีพร พลอยหมื่นไวย', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'นครราชสีมา', 'สาขาโคราช', 'Sale Manager (Gold & Jewelry)', '', '2017-01-24 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'หน่อย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10215.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(426, NULL, '10220', '1609800081111', 'นางสาวภาณิชา ดอกมะลิ', NULL, 'Sales', 'Sales Gold & Jewelry', 'Unit Manager', 'ระยอง', 'สาขาเซ็นรัลระยอง', 'Sale Manager (Gold & Jewelry)', '', '2017-02-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'ปอ', '0972344111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10220.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(427, NULL, '10222', '1330200003319', 'นางสาวพุ่มพวง แก้วคำ', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาพระราม3', 'Sale Staff (Gold & Jewelry)', '', '2017-02-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กิ๊ป', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10222.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(428, NULL, '10225', '', 'นายสมศักดิ์ เสียงดัง', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', '', '', 'Sale Technician (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ๊อด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10225.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(429, NULL, '10246', '3610600514144', 'นางสาวภาววนา ถึงสุข', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, 'นนทบุรี', 'สาขาบางใหญ่', 'Sale Staff (Gold & Jewelry)', '', '2017-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เกด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10246.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(430, NULL, '10260', '', 'นางศิริลักษณ์ จระเกต', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', '', '', 'Sale Staff (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10260.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(431, NULL, '10266', '1342100072914', 'นางสาวเจนจิรา นิลบล', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาหัวหมาก', 'Sale Staff (Gold & Jewelry)', '', '2017-10-30 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เจน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10266.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(432, NULL, '10282', '1570501291931', 'นายปฏิภาณ คำชาลี', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาปิ่นเกล้า', 'Sale Technician (Gold & Jewelry)', '', '2018-11-14 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แอร์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10282.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(433, NULL, '12102000045527', '12102000045527', 'นางสาวอัณศยา รัตนเหลี่ยม', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'ระยอง', 'สาขาเซ็นรัลระยอง', 'Sale Staff (Gold & Jewelry)', '', '2018-01-07 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เฟิน', '085-365-3353', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12102000045527.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25');
INSERT INTO `users_detail` (`id`, `group_staff`, `Code_Staff`, `Card_Staff`, `Name_Thai`, `Name_Eng`, `Faction`, `Department`, `Degree`, `Workplace`, `Working_status`, `Position`, `DateofBirth`, `StartDate`, `HireDate`, `IDCardNumber`, `Sex`, `FamilyStatus`, `JGStatus`, `Yearsofservice`, `Age`, `Nickname`, `TelephoneNumber`, `Address`, `Current_Address`, `Resigned_Date`, `Vacation_leave`, `Sick_leave`, `Business_leave_necessary`, `Maternity_leave_paid`, `Maternity_leave_not_paid`, `Ordination_leaven`, `Marriage_leave`, `Accident_leave`, `Military_leave`, `Sterilization_leave`, `Time_offset`, `Leave_without_pay`, `Sick_leave_not_receiving_wages`, `Cremation_leave`, `Leave_instead_of_holidays`, `Leave_to_study`, `Take_a_break`, `Absence_from_work`, `img`, `active`, `Company`, `created_at`, `updated_at`) VALUES
(434, NULL, '10304', '1749900367482', 'นางสาวพัชรินทร์ โพธิ์สิทธิ์', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'สมุทรสาคร', 'สาขามหาชัย', 'Sale Staff (Gold & Jewelry)', '', '2018-10-25 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10304.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(435, NULL, '10327', '1100702879891', 'นางสาวอรอนงค์ โคตรภูเวียง', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'สมุทรปราการ', 'สาขาสำโรง', 'Sale Staff (Gold & Jewelry)', '', '2018-05-11 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปาล์ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10327.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(436, NULL, '10339', '1570500210148', 'นางสาววีรยา เกี๋ยงคำ', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาพระราม3', 'Sale Staff (Gold & Jewelry)', '', '2018-09-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'หมีพู', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10339.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(437, NULL, '10344', '3710100437956', 'นางสาวดวงดาว มิ่งขวัญ', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาแจ้งวัฒนะ', 'Sale Staff (Gold & Jewelry)', '', '2018-09-21 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ยุ้ย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10344.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(438, NULL, '10349', '1220300069525', 'นางสาวจันทร์แรม ศรีเนท์', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาปิ่นเกล้า', 'Sale Staff (Gold & Jewelry)', '', '2018-11-05 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ขวัญ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10349.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(439, NULL, '10353', '3440900980151', 'นางสาวปวิชญา ยอดทนันชัย', NULL, 'Data', 'Data', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานยานนาวา', 'Store Data Officer', '', '2010-06-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ทราย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10353.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(440, NULL, '10354', '5342300000618', 'นางสาวกันยา สายสิน', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'ชลบุรี', 'สาขาเซ็นทรัลชลบุรี', 'Sale Staff (Gold & Jewelry)', '', '2018-12-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้อย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10354.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(441, NULL, '10361', '', 'นางสาวพรลดา มนตรี', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', '', '', 'Sale Staff (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'รัตน์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10361.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(442, NULL, '10362', '3480500401323', 'นางสาวปิยะนาฎ แซ่โอ้ว', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'กรุงเทพมหานคร', 'สาขาเซ็นทรัลเวิลด์', 'Sale Staff (Gold & Jewelry)', '', '2019-05-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'หนิง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10362.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(443, NULL, '10363', '1331000094371', 'นางสาวศุธสินี ศิริสำราญ', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'อุดรธานี', 'สาขาอุดร', 'Sale Staff (Gold & Jewelry)', '', '2019-05-07 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เหมียว', '0981982322', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10363.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(444, NULL, '10364', '', 'นางสาววนิดา มณีนิล', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', '', '', 'Sale Staff (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ดา', '0965394383', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10364.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(445, NULL, '10376', '1939900352980', 'นางสาวณัฐกานต์ ไมตรีจิตร', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'สงขลา', 'เซ็นทรัลเฟสติวัล หาดใหญ่', 'Sale CTF Officer (Gold & Jewelry)', '', '2015-10-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ไอซ์', '0636173682', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10376.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(446, NULL, '10378', '2929800010384', 'นางสาวอรอุษา ทองใย', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'ภูเก็ต', 'สาขาภูเก็ต', 'PC (Gold & Jewelry)', '', '2019-07-18 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แอนนี่', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10378.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(447, NULL, '10383', '', 'นางสาวนภสร แซ่เต็ง', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, '', '', 'Sale Staff (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เจี๊ยบ', '0922725896', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10383.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(448, NULL, '10385', '3650400441763', 'นายวิทยา โท้แก้ว', NULL, 'ช่าง', 'ช่าง', 'Officer', 'ภูเก็ต', 'สาขาภูเก็ต', 'ช่างเลี่ยมทอง', '', '2019-09-23 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'วิท', '0952710837', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E5tfxQ0R5w.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(449, NULL, '10393', '3530900297204', 'นางสาววิภาดา ปัญญาดาวงค์', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'ระยอง', 'สาขาแพชชั่น', 'PC (Gold & Jewelry)', '', '2019-10-28 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อบ', '0992397155', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10393.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(450, NULL, '10394', '1839900254555', 'นางสาวญานิกา ระเด่น', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'ภูเก็ต', 'เซ็นทรัลภูเก็ต', 'Sale Staff (Gold & Jewelry)', '', '2019-11-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บีบี้', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10394.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(451, NULL, '10399', '', 'นางสาวศิริขวัญ เหล่าคูณ', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, '', '', 'Sale Staff (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, '', '0627107298', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10399.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(452, NULL, '10401', '', 'นายภานุวัฒน์ ธรรมสิทธิ์', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, '', '', 'Sale Staff (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10401.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(453, NULL, '10402', '', 'นางสาวสิดาพร ทรงเงินดี', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, '', '', 'Sale Staff (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เฟริน', '0982269328', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10402.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(454, NULL, '10404', '24203000021103', 'นางสาววราภรณ์ เพชรพอต', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, 'ภูเก็ต', 'สาขาภูเก็ต', 'Sale Manager (Gold & Jewelry)', '', '2020-02-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'เอ๋', '0925169422', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10404.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(455, NULL, '10405', '', 'นางสาวสุมิตรา คงศาศวัต', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', '', '', 'Sale Staff (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มิน', '0929959823', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10405.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(456, NULL, '10407', '', 'นางสาวศญามินทร์ ชูเศรษฐสกุล', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, '', '', 'Sale Staff (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กีต้า', '0625692239', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10407.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(457, NULL, '10409', '', 'นางสาวอารีรัตน์ แซ่ตั้ง', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, '', '', 'Sale Staff (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10409.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(458, NULL, '10417', '', 'นางสาวอรณิชา เกษรบัง', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, '', '', 'Sale Staff (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, '', '0634142665', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10417.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(459, NULL, '10418', '', 'นางสาวมยุรี ปัญญางาม', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'ชลบุรี', 'เซ็นทรัลชลบุรี', 'PC (Gold & Jewelry)', '', '2020-06-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้อม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10418.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(460, NULL, '10423', '', 'นางสาวรัชนีพร รุ่งหิรัญวัฒน์', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'ระยอง', 'สาขาระยอง', 'PC (Gold & Jewelry)', '', '2020-06-26 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10423.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(461, NULL, '10425', '', 'นางสาวเบญจมาศ จันทร์กลิ่น', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'ชลบุรี', 'สาขาเซ็นทรัลชลบุรี', 'PC (Gold & Jewelry)', '', '2020-07-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, '', '0949969429', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10425.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:25'),
(462, NULL, '62005', '3430200356306', 'นางสาวดวงเดือน กับบุญ', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'อุดรธานี', 'สาขาอุดร', 'Sale Staff (Gold & Jewelry)', '', '2015-07-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เดือน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '62005.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:26'),
(463, NULL, '62044', '1411800145483', 'นางสาวชรินทร์ทิพย์ เข็มจันทร', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'อุดรธานี', 'สาขาอุดร', 'Sale Staff (Gold & Jewelry)', '', '2016-03-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เปิ้ล', '0981162175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '62044.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:26'),
(464, NULL, '62053', '', 'นางสาวอรุณรัตน์ เรืองสวัสดิ์', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', '', '', 'Sale Staff (Gold & Jewelry)', '', '', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'รัตน์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '62053.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, '2020-09-11 10:13:26'),
(465, NULL, '10001', '3360200089392', 'นางสาวศิรพัชร ชุบขุนทด', NULL, 'Stock Controller', 'Stock Controller', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานยานนาวา', 'Stock Controller Officer (เพชร)', '', '1997-11-17 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เฟิน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10001.jpg', '1', 'NGUAN GROUP HOLDING CO., LTD.', NULL, '2020-09-11 10:13:25'),
(466, NULL, '10009', '3670800230816', 'นางสาวอุบลทิพย์ พชรไพฑูรย์', NULL, 'Human Resource', 'Human Resource Management', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานยานนาวา', 'Finance & Accounting Officer', '', '2015-09-25 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10009.jpg', '1', 'NGUAN GROUP HOLDING CO., LTD.', NULL, '2020-09-11 10:13:25'),
(467, NULL, '10012', '1103701653035', 'นายนราศักดิ์ ดอนเป้', NULL, 'Production', 'Production', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานยานนาวา', 'Jewelry Maker Staff (ฝัง)', '', '2017-08-07 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บอย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10012.jpg', '1', 'NGUAN GROUP HOLDING CO., LTD.', NULL, '2020-09-11 10:13:25'),
(468, NULL, '10013', '1311000103337', 'นางพิศเพลิน ก้อนทอง', NULL, 'Production', 'Production', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานยานนาวา', 'Jewelry Maker Staff (ขัด)', '', '2018-01-08 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เพลิน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10013.jpg', '1', 'NGUAN GROUP HOLDING CO., LTD.', NULL, '2020-09-11 10:13:25'),
(469, NULL, '10014', '3300200111771', 'นายประมวล วาโย', NULL, 'Human Resource', 'Human Resource Management', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานยานนาวา', 'Messenger', '', '2017-02-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ๋า', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10014.jpg', '1', 'NGUAN GROUP HOLDING CO., LTD.', NULL, '2020-09-11 10:13:25'),
(470, NULL, '10017', '3100903670392', 'นางสาวกัลยา ทองขัด', NULL, 'Production', 'Production', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานยานนาวา', 'QC Officer (เพชร)', '', '2015-12-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ออย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10017.jpg', '1', 'NGUAN GROUP HOLDING CO., LTD.', NULL, '2020-09-11 10:13:25'),
(471, NULL, '10018', '5440600048702', 'นายธรรมนูญ แก้วบุตรดี', NULL, 'Production', 'Production', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานยานนาวา', 'Jewelry Maker Staff (ฝัง)', '', '2012-06-09 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปัง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10018.jpg', '1', 'NGUAN GROUP HOLDING CO., LTD.', NULL, '2020-09-11 10:13:25'),
(472, NULL, '10021', '1102800048856', 'นางวิชดา ไพบูลย์ลีสกุล', NULL, 'Financial & Accounting', 'Financial & Accounting', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานยานนาวา', 'Finance & Accounting Officer', '', '2016-06-06 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เปิ้ล', '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10021.jpg', '1', 'NGUAN GROUP HOLDING CO., LTD.', NULL, '2020-09-11 10:13:25'),
(473, NULL, '10029', '3301300022614', 'นางสาววรรณพร แซ่แต้', NULL, 'Stock Controller', 'Stock Controller', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานยานนาวา', 'Stock Controller Officer (ลงสต๊อก/ค่าคอม)', '', '1998-02-09 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตุ๊กตา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10029.jpg', '1', 'NGUAN GROUP HOLDING CO., LTD.', NULL, '2020-09-11 10:13:25'),
(474, NULL, '10123', '6014800134331', 'นายกิตติพงษ์ แพรนนท์', NULL, 'IT', 'IT Support', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานยานนาวา', 'IT Officer', '', '2010-01-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบริด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10123.jpg', '1', 'NGUAN GROUP HOLDING CO., LTD.', NULL, '2020-09-11 10:13:25'),
(475, NULL, '10270', '1739900259027', 'นางประกายเดือน จำศูนย์', NULL, 'Gold Purchasing', 'Gold Purchasing', 'Officer', 'กรุงเทพมหานคร', 'สำนักงานยานนาวา', 'Purchasing Officer (Gold)', '', '2014-12-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เดือน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10270.jpg', '1', 'NGUAN GROUP HOLDING CO., LTD.', NULL, '2020-09-11 10:13:25'),
(476, NULL, '82045', '1700300080001', 'นายธนากร บุญกร', NULL, 'Planning & Logistics', 'Warehouse & Logistics', '-', 'ราชบุรี', 'สำนักงานราชบุรี', 'Logistics Staff', '', '2020-07-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'เก้า', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82045.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(480, NULL, '100070', '100070', 'นางสาวพรวิภา สารีสุข', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, 'สาขาแพชชั่น', '', 'Sale Staff (Gold & Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้อม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100070.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, NULL),
(481, NULL, '10419', '10419', 'นางสาวชฎาพร​ ไชยบุตร', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, 'สาขาแพชชั่น', '', 'PC (Gold & Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10419.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, NULL),
(488, NULL, '88888', '88888', 'นราธร ข้องหลิม', NULL, 'dfgdf', 'dfgdf', NULL, 'qwd', 'qwdwq', 'wqdq', NULL, NULL, NULL, NULL, NULL, NULL, 'dqw', NULL, NULL, 'dfhgdgd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '88888.jpg', '1', 'wqdqw', NULL, NULL),
(489, NULL, '85081', '1102001553584', 'นายนนทพงศ์ ตั้งตุลานนท์', NULL, 'Sales', 'Operation Management', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Assistant Operation Manager', '', '2020-07-07 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'นนท์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85081.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(490, NULL, '91483', '1100200713261', 'นายวชรวรรณ เกขุนทด', NULL, 'Customer Service', 'Customer Service', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Customer Service Officer', '', '2020-07-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เมย์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91483.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(491, NULL, '94027', '1100702325128', 'นางสาวปัณณพร ไทยสามเสน', NULL, 'Back Office & ERP', 'Software Development', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Software Tester Officer', '', '2020-07-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เตย', '000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94027.jpg', '1', 'NIO ACHIEVERS CO., LTD.', NULL, '2020-09-11 10:13:26'),
(492, NULL, '70418', '3220100043154', 'นางสาวรังสินันท์ นกศิริ', NULL, 'Supply Chain', 'Supply Chain', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Supply Chain Officer', '', '2020-07-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตุ่น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '70418.jpg', '1', 'NGG TRADE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(493, NULL, '91482', '1459900269033', 'นายอภิทักษ์ จำนงกิจ', NULL, 'Graphic Design', 'Graphic Design', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Graphic & Retouch Officer', '', '2020-07-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตูมตาม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91482.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(495, NULL, '70411', '3120400268900', 'นายอธิวัฒน์ พรพิชัยโยธิน', NULL, 'Sales', 'Sales', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Sales  Manager', '', '2020-04-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'รุจ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '70411.jpg', '1', 'NGG TRADE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(496, NULL, '70412', '3209800089112', 'นางสาวอรวรรณ วงศ์ประยุกต์', NULL, 'Gold Trader', 'Gold Trader', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'General Manager (NGG TRADE)', '', '2020-05-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'แป๊ป', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '70412.jpg', '1', 'NGG TRADE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(497, NULL, '70413', '1101401652414', 'นายอานนท์ มิสเชอร์', NULL, 'Gold Trader', 'Gold Trader', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Gold Trader Supervisor', '', '2020-05-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'นนท์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '70413.jpg', '1', 'NGG TRADE CO., LTD.', NULL, '2020-10-01 10:58:36'),
(498, NULL, '70414', '1103700049878', 'นายณัฐพงศ์ ชัยโอภาส', NULL, 'Sales', 'Sales', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Sales Supervisor', '', '2020-05-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ณัฐ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '70414.jpg', '1', 'NGG TRADE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(499, NULL, '70415', '3102300119084', 'นายธิติพันธุ์ มกร์ดารา', NULL, 'Gold Trader', 'Gold Trader', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Gold Trader Manager', '', '2020-06-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'อ้น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '70415.jpg', '1', 'NGG TRADE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(500, NULL, '70416', '3720300130951', 'นางสาวเขมนัฏฐ์ ยิ้มประเสริฐ', NULL, 'Marketing', 'Marketing', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Digital Marketing Manager', '', '2020-06-08 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'นุช', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '70416.jpg', '1', 'NGG TRADE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(501, NULL, '70419', '1100800278701', 'นายพงศวุฒิ อิทธิพูลสวัสดิ์', NULL, 'Business Development', 'Business Development', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Business Development Manager', '', '2020-09-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : F', NULL, NULL, 'ก๊อบ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '70419.jpg', '1', 'NGG TRADE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(502, NULL, '85080', '85080', 'นางสาวชุติกาญจน์ อุ่นอ้ำ', NULL, 'Akimitsu', 'Front of house Service', NULL, 'แพชชั่น ระยอง', 'ระยอง', 'Hostress', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เค้ก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85080.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
(503, NULL, '85082', '85082', 'นางสาวธัญชนก ภูนนท์', NULL, 'Akimitsu', 'Front of house Service', NULL, 'แพชชั่น ระยอง', 'ระยอง', 'Captain', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85082.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
(504, NULL, '91485', '3801301089980', 'นายภูริพัฒน์ ไทยสุริยันต์', NULL, 'Marketing', 'Marketing', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Coorporation Media Manager', '', '2020-07-24 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'อู๊ด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91485.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(505, NULL, '91484', '1103700211721', 'นายวีรเชษฐ์ หงส์บุญฤทธิ์', NULL, 'Marketing', 'Marketing', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Assistant Digital Marketing Manager', '', '2020-08-03 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'แซม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91484.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(506, NULL, '91486', '91486', 'นายจีระศักดิ์ บุญรอด', NULL, 'Sales', 'Sales Alternative', NULL, 'เดอะมอลล์บางแค', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ต้น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91486.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
(507, NULL, '91487', '1104100002235', 'นางสาวณัฏฐณิชา นิ่มวิญญา', NULL, 'Sales', 'Sales Alternative', NULL, 'กรุงเทพมหานคร', 'สำนักงานพระราม 3', 'PC (Lifestyle)', '', '2020-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โรส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91487.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(508, NULL, '91488', '8505076009764', 'นายสมบุญ แซ่ฟาง', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, 'ภูเก็ต', 'เซ็นทรัลภูเก็ต', 'PC (CTF) (Luxury)', '', '2020-08-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ชาน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91488.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(509, NULL, '81102', '81102', 'นางสาวชลธิชา ฉิมพาลี', NULL, 'Planing & Logistics', 'Warehouse & Logistics', NULL, 'สำนักงานราชบุรี', 'ราชบุรี', 'Warehouse & Logistics Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แนน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81102.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
(510, NULL, '85084', '1129800104710', 'นางสาวน้ำทิพย์ สะอาดเอี่ยม', NULL, 'operation', 'wellfare', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'coffee shop officer', '', '2020-08-10 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กิ๊บ', '0619198800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85084.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(511, NULL, '85085', '1101500878941', 'นางสาวพงษ์สุดา แจ่มศรีจันทร์', NULL, 'operation', 'wellfare', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Admin officer', '', '2020-08-10 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ไม้คิว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85085.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-09-11 10:13:26'),
(512, NULL, '91489', '1550900080527', 'นายวิศรุุต รวมสุข', NULL, 'Sales', 'Sales Alternative', NULL, 'สมุทรปราการ', 'Megabangna', 'PC (Lifestyle)', '', '2020-08-14 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91489.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(513, NULL, '91490', '91490', 'นางสาวสุฑารัตน์ เอกวิลัย', NULL, 'Sales', 'Sales Alternative', NULL, 'โรบินสันสระบุรี', 'สระบุรี', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อุ้ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91490.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
(514, NULL, '51308', '3720800407529', 'นางสาววันดี บัวคลี่', NULL, 'operation', 'Building and Environment', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Maid Officer', '', '2020-08-17 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'วัน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51308.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(515, NULL, '51309', '3410101200391', 'นายธีรชัย กำบังภัย', NULL, 'Human Resource', 'Human Resource Management', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Assistant Recruit Manager ', '', '2020-08-24 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'อิท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51309.jpg', '1', 'CIEN CO., LTD.', NULL, '2020-09-11 10:13:26'),
(516, NULL, '91491', '3220400179698', 'นางสาววรัตน์ชญา กาญบุตร', NULL, 'Sales', 'Sales Alternative', NULL, 'สระบุรี', 'โรบินสันสระบุรี', 'PC (Lifestyle)', '', '2020-08-14 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ฝน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91491.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(517, NULL, '91492', '1209700560496', 'นางสาวดวงใจ กฐินพัฒน์', NULL, 'Digital Marketing', 'Digital Marketing', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Online Marketing Officer', '', '2020-09-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อีป', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91492.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(518, NULL, '91494', '91494', 'นางอรวรรณ จันทรสัมฤทธิ์', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, 'Terminal 21 Pattaya', 'ชลบุรี', 'PC Jewelry', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แป้ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91494.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
(519, NULL, '91495', '91495', 'นายสมพร ศรีชัยอุด', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, 'Terminal 21 Pattaya', 'ชลบุรี', 'PC Jewelry', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โจ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91495.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
(520, NULL, '91496', '1430300253421', 'นางสาวกนกกาญจน์  บุญศักดิ์ ', NULL, 'Sales', 'Sales Alternative', NULL, 'อุดาธานี', 'โรบินสันอุดรธานี', 'PC (Lifestyle)', '', '2020-09-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ทัมทิม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91496.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(521, NULL, '81103', '1709900320150', 'นายทรงยศ อยู่สุข', NULL, 'Planning & Logistics', 'Warehouse & Logistics', NULL, 'ราชบุรี', 'สำนักงานราชบุรี', 'Warehouse & Logistics Officer', '', '2020-09-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เอ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81103.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(522, NULL, '82046', '8700373013239', 'นายธิติ วิทอง', NULL, 'Factory', 'Production & Maintenance', NULL, 'ราชบุรี', 'สำนักงานราชบุรี', 'Packing Staff ', '', '2020-08-22 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โบ้', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82046.jpg', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(523, NULL, '85087', '85087', 'นายธนาชัย รุกพล', NULL, 'Operation', 'Kitchen Team', NULL, 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Commis Chef', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ๊ะ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85087.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
(524, NULL, '70420', '1100800312861', 'นางสาวยุุพรัตน์ กมลคุณากร', NULL, 'Sales', 'Sales', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Sales SR.Officer ', '', '2020-09-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'บุ๋ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '70420.jpg', '1', 'NGG TRADE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(525, NULL, '91497', '1102700510311', 'นายกษิดิศ นิลประดับ', NULL, 'Sales', 'Sales Alternative', NULL, 'กรุงเทพมหานคร', 'ลาดพร้าว,แฟชั่นไอซ์แลนด์', 'PC (Lifestyle)', '', '2020-09-04 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เป้', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91497.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(526, NULL, '91498', '1600800105608', 'นางสาวลัดดาวัลย์ สายเกิด', NULL, 'Sales', 'Sales Alternative', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'PC (Lifestyle)', '', '2020-09-08 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เอ๊ะ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91498.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:26'),
(527, NULL, '91499', '1431300009033', 'นางสาวณัฐภรณ์ ใจยา', NULL, 'Sales', 'Sales Alternative', NULL, 'อุดาธานี', 'โรบินสันอุดรธานี', 'PC (Lifestyle)', '', '2020-09-10 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปุ้มปุ้ย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91499.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:27'),
(528, NULL, '91500', '5200101040762', 'นายอันโทนี  เนตรจำนงค์', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, 'ชลบุรี', 'เทอร์มินอล 21 พัทยา', 'PC Jewelry', '', '2020-09-10 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โทนี ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91500.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:27'),
(529, NULL, '91501', '1710500142931', 'นางสาวชุลีพร  วงษ์จีน ', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, 'ชลบุรี', 'เทอร์มินอล 21 พัทยา', 'PC Jewelry', '', '2020-09-14 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้อม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91501.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-11 10:13:27'),
(530, NULL, '91502', '1349900404438', 'นายบารมีน วงษ์เตียวตระกูล', NULL, 'Sales', 'Sales Alternative', NULL, 'เชียงใหม่', 'นิมมานเชียงใหม่', 'PC (Lifestyle)', '1991-03-16 00:00:00', '2020-09-29 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มีน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91502.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-15 15:12:07'),
(531, NULL, '91503', '1199900710972', 'นางสาวเสาวลักษณ์ เพ็ชรสิงห์', NULL, 'Sales', 'Sales Alternative', NULL, 'สระบุรี', 'โรบินสันสระบุรี', 'PC (Lifestyle)', '1999-06-05 00:00:00', '2020-09-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แพรว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91503.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-15 15:12:08'),
(532, NULL, '91504', '1149900350135', 'นางสาวชลิตา บุญเสริม', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, 'ชลบุรี', 'เทอร์มินอล 21 พัทยา', 'PC Jewelry', '1994-09-24 00:00:00', '2020-09-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'จ๋า', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-30 14:14:10'),
(533, 'sales', '91505', '1103701046783', 'นายโพธิสัตย์ บัวบาล', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, 'กรุงเทพมหานคร', 'ฟิวเจอร์พาร์ครังสิต', 'Shop Manager', '1993-04-20 00:00:00', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'ไบรท์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YndZFQqkvA.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-30 14:14:10'),
(534, NULL, '91506', '1100701164961', 'นางสาววิสนีย์ แสงสุวรรณ', NULL, 'Digital Marketing & E-Commerce', 'Sales Online', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Sales Online', '1990-03-27 00:00:00', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'บี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-30 14:14:11'),
(535, NULL, '91507', '1103100479936', 'นางสาวกุลศิริ พรหมเจริญ', NULL, 'Procurement', 'Supply Chain', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Supply Chain Officer', '1997-04-22 00:00:00', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นิ้ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-30 14:14:11'),
(536, 'sales', '91508', '1103100485171', 'นางสาวแพรวนพรัตน์ เหล่าธรรมกีรติ', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, 'กรุงเทพมหานคร', 'ฟิวเจอร์พาร์ครังสิต', 'PC Jewelry', '1997-05-24 00:00:00', '2020-10-05 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'วี่', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-30 14:14:12'),
(537, NULL, '91509', '1430300206857', 'นายศราวุฒิ ปินไชย', NULL, 'Sales', 'Sales Alternative', NULL, 'อุดาธานี', 'โรบินสันอุดรธานี', 'PC (Lifestyle)', '1994-04-20 00:00:00', '2020-09-29 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบนซ์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-30 14:14:13'),
(538, NULL, '82047', '8700376045921', 'นายเพชรดี วงศ์ทอง', NULL, 'Factory', 'Production & Maintenance', NULL, 'ราชบุรี', 'สำนักงานราชบุรี', 'Mechanical Staff', '1993-08-15 00:00:00', '2020-09-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'เพชร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'TAI MINERE CO., LTD.', NULL, '2020-09-30 14:14:13'),
(539, NULL, '51312', '1369200007231', 'นางสาวกนิษฐา ดาหนองเป็ด', NULL, 'Factory', 'Production(งานบล๊อก)', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (บล๊อก)', '2001-12-21 00:00:00', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'CIEN CO., LTD.', NULL, '2020-09-30 14:14:14'),
(540, NULL, '51313', '1159800072869', 'นางสาวธีระดา ฤทธิ์กระจ่าง', NULL, 'Factory', 'Production(งานติดพลอย)', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (ติดพลอย)', '2000-12-16 00:00:00', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'น้องตูน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'CIEN CO., LTD.', NULL, '2020-09-30 14:14:14'),
(541, NULL, '91510', '1801600175890', 'นายธนวัฒน์ คงสีชาย', NULL, 'Sales', 'Sales Alternative', NULL, 'กรุงเทพมหานคร', 'หน่วยแทน', 'PC (Lifestyle)', '1995-08-07 00:00:00', '2020-10-08 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บอย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-30 14:14:15'),
(542, NULL, '91511', '1400900173801', 'นางสาวประภัสสร สีโสภา', NULL, 'Sales', 'Sales Alternative', NULL, 'ขอนแก่น', 'โรบินสันขอนแก่น', 'PC (Lifestyle)', '1995-02-11 00:00:00', '2020-10-05 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตาล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-30 14:14:16'),
(543, NULL, '91512', '1100702479958', 'นายตรียุทธ ศรขณารมย์', NULL, 'Sales', 'Sales Alternative', NULL, 'กรุงเทพมหานคร', 'เอ็มโพเรียม', 'PC (Lifestyle)', '1997-03-04 00:00:00', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เจฟ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-30 14:14:17'),
(544, NULL, '51314', '1341400021061', 'นางสาววันดี บุญสูง', NULL, 'Service Controller', 'Service Controller', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Maid Officer', '1985-10-31 00:00:00', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เก๋', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'CIEN CO., LTD.', NULL, '2020-09-30 14:14:18'),
(546, NULL, '91513', '1100400315073', 'นางสาวอลิศรา ก้อนเงิน', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, 'กรุงเทพมหานคร', 'ฟิวเจอร์พาร์ครังสิต', 'PC Jewelry', '1988-02-17 00:00:00', '2020-10-05 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แจง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-30 14:14:19'),
(547, 'sales', '91514', '1100900420810', 'นางสาวสุพรรษา ทองดี', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, 'กรุงเทพมหานคร', 'ฟิวเจอร์พาร์ครังสิต', 'PC Jewelry', '1988-07-27 00:00:00', '2020-10-05 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ส้ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-09-30 14:14:20'),
(548, 'sales', '91515', '1709900820098', 'นางสาวสิริกรานต์ บัวขาว', NULL, 'Sales', 'Sales Gold & Jewelry', NULL, 'กรุงเทพมหานคร', 'ฟิวเจอร์พาร์ครังสิต', 'Sales Supervisor', '', '2020-10-14 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'อีฟ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-10-19 17:23:35'),
(549, NULL, '82048', '1700300060547', 'นางสาวชญานี พุสุนพงษ์', NULL, 'Factory', 'Quality Assurance & Development', NULL, 'ราชบุรี', 'สำนักงานราชบุรี', 'Quality Control Staff', '1993-08-27 00:00:00', '2020-10-05 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'ปลา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'TAI MINERE CO., LTD.', NULL, '2020-10-12 13:15:56'),
(550, NULL, '51315', '1100701185799', 'นางสาวฉัตรอรุณ โตลักษณ์ล้ำ', NULL, 'Factory', 'Production(งานติดพลอย)', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (ติดพลอย)', '1990-04-26 00:00:00', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มิ้นท์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'CIEN CO., LTD.', NULL, '2020-10-12 13:15:56');
INSERT INTO `users_detail` (`id`, `group_staff`, `Code_Staff`, `Card_Staff`, `Name_Thai`, `Name_Eng`, `Faction`, `Department`, `Degree`, `Workplace`, `Working_status`, `Position`, `DateofBirth`, `StartDate`, `HireDate`, `IDCardNumber`, `Sex`, `FamilyStatus`, `JGStatus`, `Yearsofservice`, `Age`, `Nickname`, `TelephoneNumber`, `Address`, `Current_Address`, `Resigned_Date`, `Vacation_leave`, `Sick_leave`, `Business_leave_necessary`, `Maternity_leave_paid`, `Maternity_leave_not_paid`, `Ordination_leaven`, `Marriage_leave`, `Accident_leave`, `Military_leave`, `Sterilization_leave`, `Time_offset`, `Leave_without_pay`, `Sick_leave_not_receiving_wages`, `Cremation_leave`, `Leave_instead_of_holidays`, `Leave_to_study`, `Take_a_break`, `Absence_from_work`, `img`, `active`, `Company`, `created_at`, `updated_at`) VALUES
(551, NULL, '85090', '1199800083577', 'นายนรินทร์ เมทา', NULL, 'Operation', 'Kitchen Team', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Commis Chef', '1994-03-02 00:00:00', '2020-10-08 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ริน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sWRaU0UkOf.jpg', '1', 'CHERCHIM CO., LTD.', NULL, '2020-10-12 13:15:56'),
(552, NULL, '51316', '1331700054681', 'นายอิสระ บุญมา', NULL, 'Factory', 'Production(งานบล๊อก)', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (บล๊อก)', '1998-04-12 00:00:00', '2020-10-07 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ท๊อป', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'CIEN CO., LTD.', NULL, '2020-10-12 13:15:56'),
(553, NULL, '91516', '1103700087231', 'นายอภินันท์ ระน้อย', NULL, 'Sales', 'Sales Alternative', NULL, 'กรุงเทพมหานคร', 'เซ็นทรัลพระราม 2', 'PC (Lifestyle)', '1990-03-18 00:00:00', '2020-10-15 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เอ็ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-10-19 17:23:35'),
(554, NULL, '91517', '1801600168486', 'นายธนดล เมืองฮามพันธ์', NULL, 'Sales', 'Sales Alternative', NULL, 'กรุงเทพมหานคร', 'หน่วยแทน', 'PC (Lifestyle)', '1994-09-23 00:00:00', '2020-10-19 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อเล็กซ์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YOUkPUkFxG.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-10-19 17:23:36'),
(555, NULL, '91518', '1104000001369', 'นายทัตพงศ์ เสริมสุขเลิศ', NULL, 'Sales', 'Sales Alternative', NULL, 'กรุงเทพมหานคร', 'เซ็นทรัลพระราม 2', 'PC (Lifestyle)', '1996-10-22 00:00:00', '2020-10-16 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แหลม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-10-19 17:23:37'),
(556, NULL, '91519', '1102002088150', 'นางสาวปริญ ต้นแพง', NULL, 'Sales', 'Sales Alternative', NULL, 'กรุงเทพมหานคร', 'หน่วยแทน', 'PC (Lifestyle)', '1994-02-22 00:00:00', '2020-11-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปัท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-10-19 17:23:37'),
(557, NULL, '21089', '1100400857364', 'นางสาวกิตติกา ไชยรัตน์', NULL, 'Procurement', 'Diamond Purchasing', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Diamond Grading Officer', '1996-10-13 00:00:00', '2020-10-20 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้อแอ้', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, '2020-10-19 17:23:38'),
(558, NULL, '91520', '1659900491788', 'นายพุฒิพัฒน์ เจริญภัทราวุฒิ', NULL, 'Marketing', 'Brand', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Assistant Corporate Media Manager (Luxurious Watch)', '1992-01-20 00:00:00', '2020-12-01 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'นะ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-10-19 17:23:38'),
(559, NULL, '91521', '1469900219869', 'นางสาวจุฑามาศ ไพชยนต์', NULL, 'Sales', 'Sales Alternative', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'PC (Lifestyle)', '1992-12-25 00:00:00', '2020-11-02 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เอส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-10-19 17:23:39'),
(560, NULL, '91522', '1470400097715', 'นายเอกชัย ทรายสา', NULL, 'Sales', 'Sales Alternative', NULL, 'กรุงเทพมหานคร', 'โรบินสันพระราม 9', 'PC (Lifestyle)', '1987-09-15 00:00:00', '2020-10-27 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บอย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'NGG ENTERPRISE CO., LTD.', NULL, '2020-10-19 17:23:40'),
(561, NULL, '51317', '1103100439446', 'นายโชคชัย นันตะเสน', NULL, 'Factory', 'Production(เจียระไนพลอย)', NULL, 'กรุงเทพมหานคร', 'สำนักงานสาธุประดิษฐ์', 'Jewelry Maker Officer (เจียระไนพลอย)', '1996-09-19 00:00:00', '2020-10-22 00:00:00', NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โชค', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '1', 'CIEN CO., LTD.', NULL, '2020-10-19 17:23:41'),
(562, NULL, '85089', '85089', 'นางรุ่งณวรรณ แสงแก้ว', NULL, 'Operation', 'Kitchen Team', NULL, NULL, NULL, 'Dishwasher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85089.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_vi` int(11) NOT NULL,
  `subject_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `episode` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer_exam`
--
ALTER TABLE `answer_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer_posttest`
--
ALTER TABLE `answer_posttest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer_pretest`
--
ALTER TABLE `answer_pretest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id_co`);

--
-- Indexes for table `examination`
--
ALTER TABLE `examination`
  ADD PRIMARY KEY (`id_e`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `set_brand_learnning`
--
ALTER TABLE `set_brand_learnning`
  ADD PRIMARY KEY (`id_set_brand`);

--
-- Indexes for table `set_learning`
--
ALTER TABLE `set_learning`
  ADD PRIMARY KEY (`id_set`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id_sub`);

--
-- Indexes for table `subject_examination`
--
ALTER TABLE `subject_examination`
  ADD PRIMARY KEY (`id_sexa`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_detail`
--
ALTER TABLE `users_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_vi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer_exam`
--
ALTER TABLE `answer_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `answer_posttest`
--
ALTER TABLE `answer_posttest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answer_pretest`
--
ALTER TABLE `answer_pretest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id_co` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `examination`
--
ALTER TABLE `examination`
  MODIFY `id_e` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `set_brand_learnning`
--
ALTER TABLE `set_brand_learnning`
  MODIFY `id_set_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `set_learning`
--
ALTER TABLE `set_learning`
  MODIFY `id_set` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject_examination`
--
ALTER TABLE `subject_examination`
  MODIFY `id_sexa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1560;

--
-- AUTO_INCREMENT for table `users_detail`
--
ALTER TABLE `users_detail`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1564;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_vi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
