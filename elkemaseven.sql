-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2022 at 03:02 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elkemaseven`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Tarek Ashry', 'ashry@gmail.com', '$2y$10$KvaVMzphRcLpBUTRuyXhleWIX1R1/HPJkPKhmLQ3pqjOdN2Nb92Yu', '2022-03-13 15:56:02', '2022-03-13 15:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `attendence_date` date NOT NULL,
  `attendence_status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bloodtypes`
--

CREATE TABLE `bloodtypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bloodtypes`
--

INSERT INTO `bloodtypes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'O', '2022-03-13 15:57:35', '2022-03-13 15:57:35'),
(2, 'O-', '2022-03-13 15:57:35', '2022-03-13 15:57:35'),
(3, 'O+', '2022-03-13 15:57:35', '2022-03-13 15:57:35'),
(4, 'A', '2022-03-13 15:57:35', '2022-03-13 15:57:35'),
(5, 'A+', '2022-03-13 15:57:35', '2022-03-13 15:57:35'),
(6, 'A-', '2022-03-13 15:57:35', '2022-03-13 15:57:35'),
(7, 'B', '2022-03-13 15:57:35', '2022-03-13 15:57:35'),
(8, 'B+', '2022-03-13 15:57:35', '2022-03-13 15:57:35'),
(9, 'B-', '2022-03-13 15:57:36', '2022-03-13 15:57:36'),
(10, 'AB', '2022-03-13 15:57:36', '2022-03-13 15:57:36'),
(11, 'AB+', '2022-03-13 15:57:36', '2022-03-13 15:57:36'),
(12, 'AB-', '2022-03-13 15:57:36', '2022-03-13 15:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`id`, `name_class`, `grade_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"First Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0627\\u0648\\u0644\"}', 1, '2022-03-13 16:14:46', '2022-03-13 16:14:46'),
(2, '{\"en\":\"Second Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\"}', 1, '2022-03-13 16:14:46', '2022-03-13 16:14:46'),
(3, '{\"en\":\"First Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0627\\u0648\\u0644\"}', 2, '2022-03-13 16:16:27', '2022-03-13 16:16:27'),
(4, '{\"en\":\"Second Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\"}', 2, '2022-03-13 16:16:27', '2022-03-13 16:16:27'),
(5, '{\"en\":\"Third Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b\"}', 2, '2022-03-13 16:16:27', '2022-03-13 16:16:27'),
(6, '{\"en\":\"Fourth Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639\"}', 2, '2022-03-13 16:16:27', '2022-03-13 16:16:27'),
(7, '{\"en\":\"Fifth Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633\"}', 2, '2022-03-13 16:16:27', '2022-03-13 16:16:27'),
(8, '{\"en\":\"Sixth Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633\"}', 2, '2022-03-13 16:16:27', '2022-03-13 16:16:27'),
(9, '{\"en\":\"First Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0627\\u0648\\u0644\"}', 3, '2022-03-13 16:16:27', '2022-03-13 16:16:27'),
(10, '{\"en\":\"Second Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\"}', 3, '2022-03-13 16:16:27', '2022-03-13 16:16:27'),
(11, '{\"en\":\"Third Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b\"}', 3, '2022-03-13 16:16:27', '2022-03-13 16:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `fee_type` int(11) NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `title`, `amount`, `fee_type`, `grade_id`, `classroom_id`, `description`, `year`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"fee invoice KG1\",\"ar\":\"\\u0631\\u0633\\u0648\\u0645 \\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0627\\u0648\\u0644\\u0649 \\u062d\\u0636\\u0627\\u0646\\u0629\"}', '10000.00', 1, 1, 1, NULL, '2022', '2022-03-13 18:28:04', '2022-03-13 18:28:04'),
(2, '{\"en\":\"BUS Invoice KG1\",\"ar\":\"\\u0631\\u0633\\u0648\\u0645 \\u0627\\u062a\\u0648\\u0628\\u064a\\u0633 \\u0627\\u0648\\u0644\\u0649 \\u062d\\u0636\\u0627\\u0646\\u0629\"}', '3000.00', 2, 1, 1, NULL, '2022', '2022-03-13 18:29:14', '2022-03-13 18:29:14'),
(3, '{\"en\":\"fee invoice KG2\",\"ar\":\"\\u0631\\u0633\\u0648\\u0645 \\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u062b\\u0627\\u0646\\u064a\\u0629 \\u062d\\u0636\\u0627\\u0646\\u0629\"}', '10000.00', 1, 1, 2, NULL, '2022', '2022-03-13 18:30:32', '2022-03-13 18:30:32'),
(4, '{\"en\":\"BUS KG2\",\"ar\":\"\\u0631\\u0633\\u0648\\u0645 \\u0627\\u062a\\u0648\\u0628\\u064a\\u0633 \\u062b\\u0627\\u0646\\u064a\\u0629 \\u062d\\u0636\\u0627\\u0646\\u0629\"}', '3000.00', 2, 1, 2, NULL, '2022', '2022-03-13 18:31:26', '2022-03-13 18:31:26'),
(5, '{\"en\":\"fee primary one 2022\",\"ar\":\"\\u0631\\u0633\\u0648\\u0645 \\u0627\\u0648\\u0644\\u0649 \\u0627\\u0628\\u062a\\u062f\\u0627\\u0626\\u0649 2022\"}', '10000.00', 1, 2, 3, NULL, '2022', '2022-03-14 07:31:54', '2022-03-14 07:31:54'),
(6, '{\"en\":\"bus primary one 2022\",\"ar\":\"\\u0631\\u0633\\u0648\\u0645 \\u0628\\u0627\\u0635 \\u0627\\u0648\\u0644\\u0649 \\u0627\\u0628\\u062a\\u062f\\u0627\\u0626\\u0649 2022\"}', '3000.00', 2, 2, 3, NULL, '2022', '2022-03-14 07:33:02', '2022-03-14 07:33:02');

-- --------------------------------------------------------

--
-- Table structure for table `fee_invoices`
--

CREATE TABLE `fee_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_date` date NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `fee_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_invoices`
--

INSERT INTO `fee_invoices` (`id`, `invoice_date`, `student_id`, `grade_id`, `classroom_id`, `fee_id`, `amount`, `description`, `created_at`, `updated_at`) VALUES
(10, '2022-03-14', 8, 1, 1, 1, '10000.00', 'قيمة رسوم دراسية', '2022-03-14 10:25:16', '2022-03-14 10:25:16'),
(11, '2022-03-14', 8, 1, 1, 2, '3000.00', 'قيمة رسوم اتوبيس 2022', '2022-03-14 10:25:16', '2022-03-14 10:25:16'),
(12, '2022-03-14', 33, 1, 2, 3, '10000.00', 'قيمة رسوم دراسية', '2022-03-14 10:28:45', '2022-03-14 10:28:45'),
(13, '2022-03-14', 33, 1, 2, 4, '3000.00', 'قيمة رسوم اتوبيس', '2022-03-14 10:28:45', '2022-03-14 10:28:45');

-- --------------------------------------------------------

--
-- Table structure for table `fund_accounts`
--

CREATE TABLE `fund_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `receipt_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `debit` decimal(8,2) DEFAULT NULL,
  `credit` decimal(8,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fund_accounts`
--

INSERT INTO `fund_accounts` (`id`, `date`, `receipt_id`, `payment_id`, `debit`, `credit`, `description`, `created_at`, `updated_at`) VALUES
(1, '2022-03-14', 7, NULL, '8000.00', '0.00', 'مصاريف+باص', '2022-03-14 10:30:52', '2022-03-14 10:30:52'),
(2, '2022-03-14', 8, NULL, '8000.00', '0.00', 'مصاريف+باص', '2022-03-14 10:35:01', '2022-03-14 10:35:01'),
(3, '2022-03-14', NULL, 2, '0.00', '2000.00', 'استرجاع رسوم الباص الترم الاول', '2022-03-14 10:39:54', '2022-03-14 11:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Male\",\"ar\":\"\\u0630\\u0643\\u0631\"}', '2022-03-13 15:58:16', '2022-03-13 15:58:16'),
(2, '{\"en\":\"Female\",\"ar\":\"\\u0627\\u0646\\u062b\\u064a\"}', '2022-03-13 15:58:16', '2022-03-13 15:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Nursery\",\"ar\":\"\\u0627\\u0644\\u062d\\u0636\\u0627\\u0646\\u0629\"}', NULL, '2022-03-13 15:57:21', '2022-03-13 15:57:21'),
(2, '{\"en\":\"Primary Stage\",\"ar\":\"\\u0627\\u0644\\u0645\\u0631\\u062d\\u0644\\u0629 \\u0627\\u0644\\u0627\\u0628\\u062a\\u062f\\u0627\\u0626\\u064a\\u0629\"}', NULL, '2022-03-13 15:57:21', '2022-03-13 15:57:21'),
(3, '{\"en\":\"Middle School\",\"ar\":\"\\u0627\\u0644\\u0645\\u0631\\u062d\\u0644\\u0629 \\u0627\\u0644\\u0627\\u0639\\u062f\\u0627\\u062f\\u064a\\u0629\"}', NULL, '2022-03-13 15:57:21', '2022-03-13 15:57:21'),
(4, '{\"en\":\"High school\",\"ar\":\"\\u0627\\u0644\\u0645\\u0631\\u062d\\u0644\\u0629 \\u0627\\u0644\\u062b\\u0627\\u0646\\u0648\\u064a\\u0629\"}', NULL, '2022-03-13 15:57:22', '2022-03-13 15:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `guardians`
--

CREATE TABLE `guardians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_father` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_id_father` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport_id_father` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_father` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_father` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality_father_id` bigint(20) UNSIGNED NOT NULL,
  `blood_type_father_id` bigint(20) UNSIGNED NOT NULL,
  `religion_father_id` bigint(20) UNSIGNED NOT NULL,
  `address_father` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_mother` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_id_mother` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport_id_mother` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_mother` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_mother` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality_mother_id` bigint(20) UNSIGNED NOT NULL,
  `blood_type_mother_id` bigint(20) UNSIGNED NOT NULL,
  `religion_mother_id` bigint(20) UNSIGNED NOT NULL,
  `address_mother` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guardians`
--

INSERT INTO `guardians` (`id`, `email`, `password`, `name_father`, `national_id_father`, `passport_id_father`, `phone_father`, `job_father`, `nationality_father_id`, `blood_type_father_id`, `religion_father_id`, `address_father`, `name_mother`, `national_id_mother`, `passport_id_mother`, `phone_mother`, `job_mother`, `nationality_mother_id`, `blood_type_mother_id`, `religion_mother_id`, `address_mother`, `created_at`, `updated_at`) VALUES
(1, 'benjamin26@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Armand Boehm\"}', '2096390619', '1025540567', '1685019623', '{\"en\":\"Velit.\"}', 149, 4, 2, 'Odio sit officia.', '{\"en\":\"Reid Cartwright\"}', '393707886', '130018750', '31121027', '{\"en\":\"Aut.\"}', 37, 1, 1, 'At omnis laborum.', '2022-03-13 16:26:54', '2022-03-13 16:26:54'),
(2, 'cbaumbach@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Marco Hill\"}', '2068113927', '1978697047', '1700371554', '{\"en\":\"Nesciunt.\"}', 8, 2, 2, 'Natus aut quia ut.', '{\"en\":\"Prof. Ernesto Kling MD\"}', '1278108147', '504966234', '1577411709', '{\"en\":\"Ut quo et.\"}', 246, 3, 1, 'Sed labore maxime.', '2022-03-13 16:26:54', '2022-03-13 16:26:54'),
(3, 'lesly33@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Aurore Rosenbaum\"}', '1334952761', '754503480', '307438143', '{\"en\":\"Vero eius.\"}', 143, 5, 2, 'Quia architecto qui.', '{\"en\":\"Hank Balistreri\"}', '108795764', '130252496', '1072026683', '{\"en\":\"Voluptas.\"}', 188, 1, 2, 'Non in est quaerat.', '2022-03-13 16:26:54', '2022-03-13 16:26:54'),
(4, 'claudie50@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Melissa Lindgren\"}', '1697460119', '1373170392', '750320021', '{\"en\":\"Aut rerum.\"}', 196, 6, 1, 'Adipisci ab.', '{\"en\":\"Ernie Simonis MD\"}', '879742654', '755151186', '1722743324', '{\"en\":\"Quod qui.\"}', 211, 12, 1, 'Quae est ut est.', '2022-03-13 16:26:54', '2022-03-13 16:26:54'),
(5, 'precious.koch@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Devan Franecki DDS\"}', '1025010844', '210623994', '1512878527', '{\"en\":\"Vel.\"}', 49, 6, 1, 'Et fugit neque.', '{\"en\":\"Lula Klocko\"}', '1776905182', '1110863980', '609197848', '{\"en\":\"Et ipsum.\"}', 177, 2, 2, 'Qui eum non ipsum.', '2022-03-13 16:26:54', '2022-03-13 16:26:54'),
(6, 'emmet.parker@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Maggie Olson III\"}', '917537405', '1451152465', '890962146', '{\"en\":\"Dolor.\"}', 46, 8, 1, 'Eum veniam itaque.', '{\"en\":\"Lauren Wunsch\"}', '2049267720', '57326022', '1607746181', '{\"en\":\"Quis et.\"}', 222, 3, 2, 'Officia consequatur.', '2022-03-13 16:26:54', '2022-03-13 16:26:54'),
(7, 'joey.hand@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Jalon Becker V\"}', '1343430374', '1900882196', '2000713722', '{\"en\":\"Maxime.\"}', 157, 9, 2, 'Aut et libero esse.', '{\"en\":\"Prof. Maudie Wintheiser DDS\"}', '983768758', '809585768', '117190515', '{\"en\":\"Ducimus.\"}', 184, 3, 2, 'Sit non in nisi.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(8, 'deckow.ezra@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mohamed Koepp\"}', '1439928031', '2107312042', '632041819', '{\"en\":\"Nulla.\"}', 166, 12, 1, 'Quam dolor ea.', '{\"en\":\"Dr. Bonita Bartoletti\"}', '904943794', '1945536337', '1133206925', '{\"en\":\"In sunt.\"}', 10, 7, 2, 'Amet eos et aperiam.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(9, 'leilani.champlin@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Crystal Gleason\"}', '1066419995', '1670220527', '116460874', '{\"en\":\"Labore.\"}', 119, 6, 1, 'Architecto aut.', '{\"en\":\"Eulalia Labadie MD\"}', '83259235', '430828836', '2054601077', '{\"en\":\"Explicabo.\"}', 79, 11, 1, 'Iusto sint eos.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(10, 'varmstrong@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Hal Bogan I\"}', '253710368', '1331886741', '995583990', '{\"en\":\"Excepturi.\"}', 184, 2, 2, 'Ad modi omnis.', '{\"en\":\"Kariane Rodriguez\"}', '1384397304', '2037276872', '1405024009', '{\"en\":\"Expedita.\"}', 77, 5, 2, 'Ut quod ipsum sequi.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(11, 'connor65@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Colleen Batz\"}', '675260167', '1248492607', '1057251013', '{\"en\":\"Natus.\"}', 113, 10, 2, 'Sed aut.', '{\"en\":\"Reinhold Kerluke\"}', '740953470', '1035145436', '779987888', '{\"en\":\"Amet qui.\"}', 43, 5, 2, 'Delectus ab ipsam.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(12, 'wbayer@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Adela O\'Keefe\"}', '1100238042', '1948054016', '815871747', '{\"en\":\"Totam ad.\"}', 127, 11, 2, 'Vitae velit placeat.', '{\"en\":\"Carrie Wisozk II\"}', '1460751829', '1477388569', '472338165', '{\"en\":\"Minima.\"}', 211, 7, 2, 'Quo provident porro.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(13, 'gpouros@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Bradly Sauer\"}', '1637547018', '273988456', '1078808749', '{\"en\":\"Laborum.\"}', 76, 12, 1, 'Sed magnam sit.', '{\"en\":\"Roberto Kiehn\"}', '1137715550', '275073933', '1456158690', '{\"en\":\"Excepturi.\"}', 134, 8, 2, 'Accusamus ut.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(14, 'dietrich.winfield@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Electa Goodwin\"}', '1269002914', '271249662', '634721066', '{\"en\":\"Et vel.\"}', 75, 12, 1, 'Quis nobis quia eum.', '{\"en\":\"Lavinia Cassin\"}', '1201427521', '1631905076', '1335520380', '{\"en\":\"Sit.\"}', 181, 5, 1, 'Provident quibusdam.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(15, 'julius.marquardt@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mollie Wehner\"}', '305942464', '2048449092', '275047456', '{\"en\":\"Et.\"}', 124, 10, 1, 'Voluptates ut.', '{\"en\":\"Melyna Kunde\"}', '1500792444', '888680297', '2126788327', '{\"en\":\"Ut.\"}', 63, 9, 2, 'Sint vero voluptas.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(16, 'kirsten.paucek@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Harley Raynor\"}', '2139233356', '1688690906', '120284990', '{\"en\":\"Ratione.\"}', 159, 1, 2, 'Consequatur aut.', '{\"en\":\"Kurtis Davis\"}', '545660806', '1525715562', '1547622066', '{\"en\":\"Non error.\"}', 214, 2, 1, 'Est sunt.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(17, 'eden.boyer@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kade Koelpin\"}', '1692436096', '999257160', '568834930', '{\"en\":\"Laborum.\"}', 55, 5, 2, 'Et ipsa vel ab.', '{\"en\":\"Etha Predovic PhD\"}', '1442569805', '1643156071', '771014604', '{\"en\":\"Optio.\"}', 48, 12, 1, 'Corrupti autem nisi.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(18, 'blaise.nienow@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Roosevelt Rodriguez Sr.\"}', '72605180', '1839538013', '861687302', '{\"en\":\"Et aut.\"}', 64, 2, 1, 'Quidem dolore.', '{\"en\":\"Simeon Bechtelar\"}', '87239448', '1515031565', '687122592', '{\"en\":\"Eius.\"}', 131, 2, 2, 'Et molestiae modi.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(19, 'orpha81@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Caden Yost\"}', '1443954724', '1662209492', '658278421', '{\"en\":\"Dolorum.\"}', 237, 8, 1, 'Et dolor eligendi.', '{\"en\":\"Sabina Gutmann Jr.\"}', '1278973602', '1409028418', '2015319984', '{\"en\":\"Suscipit.\"}', 108, 4, 1, 'Repellat adipisci.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(20, 'iwelch@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Wilford Rau I\"}', '913577610', '1856220836', '320876115', '{\"en\":\"Nesciunt.\"}', 224, 8, 1, 'Qui quisquam ut.', '{\"en\":\"Rudy Swift MD\"}', '940787630', '2087650819', '763088135', '{\"en\":\"Non unde.\"}', 84, 3, 1, 'Quam itaque aut et.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(21, 'ian53@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Polly Wolff\"}', '2145547708', '413493699', '268918431', '{\"en\":\"Quisquam.\"}', 161, 3, 2, 'Aut recusandae.', '{\"en\":\"Lizzie Sipes\"}', '395614597', '1682901954', '2087853903', '{\"en\":\"Corporis.\"}', 161, 3, 2, 'Et culpa libero id.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(22, 'jamey.schoen@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jacinto Jakubowski\"}', '288086963', '806781340', '1175457435', '{\"en\":\"Id optio.\"}', 104, 1, 2, 'Praesentium.', '{\"en\":\"Justus Quitzon Jr.\"}', '983827916', '1593567040', '64296324', '{\"en\":\"Et porro.\"}', 74, 8, 1, 'Facere illum id.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(23, 'jovanny.brakus@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Garnet Pollich\"}', '2147066671', '1818692313', '655129668', '{\"en\":\"Sapiente.\"}', 106, 12, 1, 'Similique velit.', '{\"en\":\"Esther Hills\"}', '608423034', '1752751302', '1270009000', '{\"en\":\"Et.\"}', 57, 11, 2, 'Distinctio.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(24, 'jessica19@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Marguerite Bode\"}', '140947770', '1248572227', '1140695830', '{\"en\":\"Eos.\"}', 136, 9, 1, 'Aliquid nostrum.', '{\"en\":\"Josue Lang\"}', '2091452115', '481458852', '1233827433', '{\"en\":\"Autem.\"}', 130, 4, 2, 'Rerum quam natus.', '2022-03-13 16:26:55', '2022-03-13 16:26:55'),
(25, 'schultz.daryl@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Margaret Bergnaum DDS\"}', '621051545', '1508915428', '616873068', '{\"en\":\"Illum.\"}', 124, 3, 2, 'Alias dolorem.', '{\"en\":\"Darlene Haley\"}', '1281934964', '1211515680', '1076819361', '{\"en\":\"Nobis et.\"}', 129, 12, 2, 'Illum quisquam.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(26, 'jeffry.kihn@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Bria Kutch\"}', '1579807084', '215426619', '952437045', '{\"en\":\"Debitis.\"}', 82, 7, 2, 'Quis atque voluptas.', '{\"en\":\"Kassandra Bogisich MD\"}', '1851818095', '792234102', '59611370', '{\"en\":\"Alias.\"}', 75, 12, 1, 'Delectus eum vel.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(27, 'zakary78@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Catalina Thompson\"}', '390082577', '293600953', '1976996229', '{\"en\":\"Itaque.\"}', 218, 11, 1, 'Harum sit enim.', '{\"en\":\"Carleton Hartmann\"}', '738672548', '2119134582', '1888988981', '{\"en\":\"Dicta.\"}', 106, 2, 2, 'Iure officia.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(28, 'marisol42@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mayra Lemke\"}', '1407374726', '1237509684', '1726815120', '{\"en\":\"Dolores.\"}', 93, 9, 1, 'Placeat modi.', '{\"en\":\"Barbara Sporer\"}', '538319886', '423150505', '168891746', '{\"en\":\"Rem nisi.\"}', 228, 6, 2, 'Delectus dolores.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(29, 'pete44@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Tavares Runolfsson\"}', '1976528440', '1254846864', '452346686', '{\"en\":\"Quasi.\"}', 75, 12, 1, 'Eligendi aut sit.', '{\"en\":\"Ms. Fae Berge Sr.\"}', '1923635967', '1687574193', '1793635368', '{\"en\":\"Ad.\"}', 113, 5, 1, 'Rerum quam et qui.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(30, 'clifford44@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Hertha Strosin\"}', '1152725903', '1318099054', '1822127257', '{\"en\":\"Aperiam.\"}', 203, 4, 2, 'Blanditiis ullam.', '{\"en\":\"Anya Cremin\"}', '2112436942', '1856668216', '1922258179', '{\"en\":\"Deleniti.\"}', 129, 7, 2, 'Sint dolorem et.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(31, 'rahsaan.emmerich@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Nicola Gerlach\"}', '1942562341', '927058327', '1695807214', '{\"en\":\"Ut quia.\"}', 1, 10, 2, 'Mollitia qui.', '{\"en\":\"Cristal Bruen\"}', '1786790706', '1012593483', '1463380087', '{\"en\":\"Aut.\"}', 97, 6, 1, 'Qui consequatur.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(32, 'nigel.friesen@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Devin Green V\"}', '1487756384', '1668625084', '1247758705', '{\"en\":\"Commodi.\"}', 11, 9, 2, 'Sed quis aliquam.', '{\"en\":\"Markus Turcotte\"}', '596876514', '841386301', '1675901714', '{\"en\":\"Occaecati.\"}', 85, 2, 1, 'Odit neque ut.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(33, 'ledner.leta@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Davion O\'Keefe\"}', '1522845000', '1558594185', '1602306351', '{\"en\":\"Iure quas.\"}', 129, 11, 2, 'Consequatur nobis.', '{\"en\":\"Dr. Kamron Bartell\"}', '78740202', '378615383', '1597146036', '{\"en\":\"Soluta.\"}', 37, 9, 1, 'Voluptatum est.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(34, 'zieme.lincoln@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lula Bashirian\"}', '811575438', '1276500138', '1318413730', '{\"en\":\"Culpa.\"}', 239, 5, 1, 'Nihil fugit itaque.', '{\"en\":\"Mr. Freeman Lebsack\"}', '307851089', '1508172498', '920152275', '{\"en\":\"Sunt.\"}', 3, 4, 1, 'Cumque quia culpa.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(35, 'kayli35@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Nigel Zulauf\"}', '1057123630', '408176318', '1855093800', '{\"en\":\"Omnis.\"}', 39, 3, 2, 'Aut qui voluptatem.', '{\"en\":\"Mrs. Chasity Wisoky V\"}', '1914252115', '2076564366', '870126550', '{\"en\":\"Dolor.\"}', 107, 11, 1, 'Ipsum hic in ut.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(36, 'steuber.bill@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Weldon Bins Sr.\"}', '1844839972', '609913984', '1642874491', '{\"en\":\"Eos sunt.\"}', 228, 4, 1, 'Maiores dicta.', '{\"en\":\"Alvena Hand\"}', '2021775139', '1911457320', '1142041954', '{\"en\":\"Quibusdam.\"}', 178, 3, 1, 'Et magni quidem.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(37, 'israel.mayert@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Sammie Russel\"}', '1007365582', '744968841', '53823098', '{\"en\":\"Illo.\"}', 218, 6, 1, 'Vero laudantium.', '{\"en\":\"Olin Dibbert\"}', '1042882286', '37258912', '425221450', '{\"en\":\"Nemo et.\"}', 198, 7, 2, 'Quam harum.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(38, 'garrison.miller@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Caitlyn Wunsch DDS\"}', '443666295', '1497231958', '1723019477', '{\"en\":\"Ad alias.\"}', 198, 5, 2, 'Ut vero ipsum.', '{\"en\":\"Aurore White\"}', '1990182546', '1142746631', '488939061', '{\"en\":\"Beatae.\"}', 93, 8, 2, 'Aut beatae repellat.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(39, 'ned24@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Josie Barrows\"}', '1671140232', '1256983309', '47129167', '{\"en\":\"Quaerat.\"}', 182, 5, 2, 'Fugiat sequi odio.', '{\"en\":\"Mr. Lloyd Wisozk III\"}', '1898790554', '1477905671', '1508588843', '{\"en\":\"Modi.\"}', 114, 1, 1, 'Officiis modi.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(40, 'lynn54@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Reinhold Rosenbaum\"}', '529541913', '2016216792', '1939441504', '{\"en\":\"Corrupti.\"}', 94, 4, 2, 'Ut enim est vel.', '{\"en\":\"Delmer Reichel\"}', '962335014', '37071364', '1105592680', '{\"en\":\"Deleniti.\"}', 130, 1, 1, 'Aut maxime.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(41, 'feest.priscilla@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Patricia Mertz\"}', '160849461', '2006593065', '259493978', '{\"en\":\"Alias.\"}', 168, 4, 2, 'Cupiditate sunt.', '{\"en\":\"Katherine Renner\"}', '1800392466', '498265731', '873561917', '{\"en\":\"Minima.\"}', 245, 12, 2, 'Est praesentium qui.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(42, 'ghansen@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Reid Hilpert\"}', '1145002672', '1391686077', '1152662686', '{\"en\":\"Et non.\"}', 202, 4, 2, 'Ipsa est aut rerum.', '{\"en\":\"Ricardo Jacobi\"}', '2059458011', '1875658798', '903429748', '{\"en\":\"Quaerat.\"}', 113, 10, 1, 'Ut in hic.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(43, 'verona.corwin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Linwood Rowe\"}', '653213786', '518629648', '1734462650', '{\"en\":\"Voluptas.\"}', 41, 8, 2, 'Voluptatem optio.', '{\"en\":\"Miss Frances Gerlach V\"}', '173517733', '1581802752', '539097444', '{\"en\":\"Adipisci.\"}', 103, 5, 1, 'Aut nulla totam.', '2022-03-13 16:26:56', '2022-03-13 16:26:56'),
(44, 'wherman@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Rubie Kunde\"}', '1744052431', '58581721', '789118563', '{\"en\":\"Beatae.\"}', 24, 12, 1, 'Itaque dolor nihil.', '{\"en\":\"Kathlyn Greenfelder II\"}', '256226034', '1228152421', '1983599090', '{\"en\":\"Occaecati.\"}', 106, 11, 2, 'Nam saepe.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(45, 'jamir47@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Anabel Konopelski MD\"}', '1595102129', '813398284', '1752067933', '{\"en\":\"Molestiae.\"}', 153, 9, 1, 'Porro.', '{\"en\":\"Dock Toy\"}', '1406770454', '639000874', '1612443611', '{\"en\":\"Vero.\"}', 46, 6, 1, 'Ut et tempora nihil.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(46, 'viviane52@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Sally Armstrong\"}', '1539197068', '1747497374', '275382714', '{\"en\":\"Voluptas.\"}', 212, 4, 2, 'Doloremque aliquid.', '{\"en\":\"Verona Effertz\"}', '507687393', '613865742', '1861337386', '{\"en\":\"Velit.\"}', 103, 9, 2, 'Distinctio.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(47, 'daniel.ansley@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Alessandra Dach\"}', '238632130', '1648765618', '793855172', '{\"en\":\"Vitae.\"}', 162, 4, 1, 'Architecto tempore.', '{\"en\":\"Marie Miller\"}', '1680919893', '116019605', '1694465710', '{\"en\":\"Nemo.\"}', 76, 3, 2, 'Minus quo aut.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(48, 'jvandervort@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Jarod Predovic\"}', '268282778', '1731810529', '483126041', '{\"en\":\"Error.\"}', 243, 3, 1, 'Quis fuga quod.', '{\"en\":\"Mathilde Bechtelar\"}', '525796620', '1345977729', '1642539250', '{\"en\":\"Eius eum.\"}', 104, 5, 2, 'Praesentium.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(49, 'wbauch@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Raoul Hackett IV\"}', '1693721682', '977103848', '774418881', '{\"en\":\"Ab nemo.\"}', 148, 8, 2, 'Voluptas rerum.', '{\"en\":\"Mike Lehner\"}', '202893160', '837197673', '1834283020', '{\"en\":\"Nemo ut.\"}', 63, 9, 2, 'Eligendi sed.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(50, 'baumbach.estevan@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Hugh Mertz\"}', '1132353430', '302973194', '2051333975', '{\"en\":\"Aut nam.\"}', 79, 4, 1, 'Id placeat saepe.', '{\"en\":\"Benjamin Conroy\"}', '216583737', '32353152', '1377290661', '{\"en\":\"Possimus.\"}', 170, 4, 2, 'Qui architecto et.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(51, 'vita.hermann@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Julia Crist\"}', '229410123', '628434860', '898888771', '{\"en\":\"At est.\"}', 68, 2, 1, 'Iste molestiae.', '{\"en\":\"Dr. Lauretta King\"}', '374139161', '1761503681', '1987849851', '{\"en\":\"Quis qui.\"}', 100, 11, 1, 'Quos quidem animi.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(52, 'scorkery@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Shyann Vandervort\"}', '1032595072', '2084838689', '1933700540', '{\"en\":\"Ut.\"}', 191, 1, 2, 'Cupiditate vel quia.', '{\"en\":\"Jalyn Rosenbaum\"}', '352690475', '2065234084', '1648505881', '{\"en\":\"Esse vel.\"}', 98, 7, 2, 'Illum minima.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(53, 'cschaden@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jared Jaskolski\"}', '1283083150', '1765300425', '1786471818', '{\"en\":\"Nisi sint.\"}', 67, 12, 2, 'Ex nemo voluptatem.', '{\"en\":\"Dr. Isabell Kozey I\"}', '2092140325', '1853090431', '1560126204', '{\"en\":\"Aliquam.\"}', 242, 7, 2, 'Et est eligendi.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(54, 'fritsch.katlyn@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Arielle McLaughlin MD\"}', '1552983559', '1376406494', '487437299', '{\"en\":\"Rerum est.\"}', 49, 2, 1, 'Voluptas adipisci.', '{\"en\":\"Mr. Brando Zieme V\"}', '301700079', '244356134', '37609482', '{\"en\":\"Explicabo.\"}', 157, 4, 1, 'Rem rerum ut ad.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(55, 'fschuppe@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Elinore Little\"}', '1185028229', '1893206787', '2073299575', '{\"en\":\"Non fuga.\"}', 231, 9, 2, 'Hic eaque iste.', '{\"en\":\"Russel Raynor\"}', '1713322877', '871666844', '1171707176', '{\"en\":\"Molestias.\"}', 83, 8, 1, 'Eos est quia.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(56, 'jritchie@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Iva Altenwerth\"}', '39156940', '2035175650', '128362065', '{\"en\":\"Alias.\"}', 134, 11, 1, 'Excepturi rem.', '{\"en\":\"Kaitlin Leffler\"}', '1792472817', '1090471034', '1179481170', '{\"en\":\"Possimus.\"}', 97, 8, 1, 'Nulla omnis alias.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(57, 'bert.weimann@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Alfredo Grady\"}', '1984589638', '1631725978', '576632594', '{\"en\":\"Veritatis.\"}', 72, 9, 1, 'Recusandae.', '{\"en\":\"Stuart Ankunding DDS\"}', '1233595328', '244194401', '1399255343', '{\"en\":\"Et sequi.\"}', 116, 2, 2, 'Voluptates iusto.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(58, 'vhaley@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Gwendolyn Murray DDS\"}', '1280203923', '2146329281', '924984508', '{\"en\":\"Est.\"}', 118, 7, 1, 'Eum a aut iste.', '{\"en\":\"Prof. Caleigh Lowe PhD\"}', '79545880', '2051344934', '1565128659', '{\"en\":\"Tempore.\"}', 32, 6, 2, 'Quidem voluptatem.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(59, 'ywunsch@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Sanford Hermiston\"}', '1409982757', '1128325324', '1995777351', '{\"en\":\"Non ut id.\"}', 162, 9, 1, 'Repudiandae.', '{\"en\":\"Jaquan Doyle DVM\"}', '1488928460', '215294080', '1832915603', '{\"en\":\"Omnis.\"}', 192, 5, 1, 'Cum asperiores.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(60, 'myrna.mitchell@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Tyler Jast\"}', '352273955', '961283283', '1225651315', '{\"en\":\"Qui eaque.\"}', 70, 10, 2, 'Vel vel numquam.', '{\"en\":\"Jamar Murray III\"}', '1948944215', '670598237', '1760050722', '{\"en\":\"Mollitia.\"}', 116, 5, 2, 'Dolor neque quia.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(61, 'blick.juana@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Hank Eichmann\"}', '2136508309', '2072503412', '866443411', '{\"en\":\"Quam ut.\"}', 63, 3, 2, 'Nisi recusandae at.', '{\"en\":\"Felix Purdy IV\"}', '1004323508', '242277451', '475408213', '{\"en\":\"Omnis.\"}', 129, 3, 1, 'Pariatur ad sunt in.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(62, 'white.reymundo@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Emelie Huel I\"}', '1341680418', '1839058675', '2093491915', '{\"en\":\"Sed.\"}', 137, 8, 1, 'Sed magnam aut.', '{\"en\":\"Alva Ratke DDS\"}', '1178832846', '968061523', '1451728973', '{\"en\":\"Aut quis.\"}', 191, 2, 1, 'Amet porro velit.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(63, 'narciso89@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Rupert Hammes\"}', '87962567', '777542960', '1628941078', '{\"en\":\"Doloribus.\"}', 25, 4, 2, 'Ipsa dolorem iste.', '{\"en\":\"Dr. Charlene Lebsack\"}', '1025862036', '583085648', '1529141296', '{\"en\":\"Nihil vel.\"}', 40, 10, 1, 'Odit et corporis.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(64, 'mante.laurie@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Angelita Fahey\"}', '1891485528', '1806152438', '1548066494', '{\"en\":\"Numquam.\"}', 130, 3, 2, 'Minima et inventore.', '{\"en\":\"Mr. Percy Kreiger\"}', '402453214', '2055667508', '1523623227', '{\"en\":\"Sint.\"}', 241, 7, 1, 'Sequi quod expedita.', '2022-03-13 16:26:57', '2022-03-13 16:26:57'),
(65, 'ana82@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Alexandrine Hodkiewicz\"}', '1561107157', '712996684', '1422948949', '{\"en\":\"Quis.\"}', 213, 2, 2, 'Consequatur eius.', '{\"en\":\"Corene Feil IV\"}', '606001321', '2041051827', '1043173683', '{\"en\":\"Minima.\"}', 146, 2, 1, 'Voluptatibus.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(66, 'anastacio04@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kyle Jacobs\"}', '2121769005', '322576258', '432032691', '{\"en\":\"Sit quod.\"}', 96, 4, 1, 'Omnis vitae rerum.', '{\"en\":\"Prof. Mortimer Reichert DDS\"}', '131060407', '1108150007', '1112670331', '{\"en\":\"Rerum.\"}', 14, 2, 2, 'Possimus neque.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(67, 'ewald04@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Rusty Frami\"}', '113093758', '176251660', '897649373', '{\"en\":\"Molestiae.\"}', 40, 2, 1, 'Inventore aut.', '{\"en\":\"Mr. Clair Carroll\"}', '921155215', '592228289', '907075914', '{\"en\":\"Eius.\"}', 106, 11, 1, 'Magnam nobis ea.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(68, 'lilian.willms@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Maymie Farrell\"}', '1269842532', '1220037083', '367481183', '{\"en\":\"Facilis.\"}', 219, 8, 1, 'Dolore reiciendis.', '{\"en\":\"Peter Parisian V\"}', '59388220', '1673117167', '1357656745', '{\"en\":\"Quisquam.\"}', 134, 1, 1, 'Et porro cum.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(69, 'haag.josiane@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Domenica Harris IV\"}', '106174487', '601314672', '233107386', '{\"en\":\"Eius.\"}', 52, 1, 1, 'Odio quam.', '{\"en\":\"Prof. Kenyatta Jakubowski\"}', '1543410617', '1821682397', '2119697507', '{\"en\":\"Placeat.\"}', 234, 11, 1, 'Quibusdam qui quia.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(70, 'xhowell@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Amira Feil\"}', '1127478730', '1381426532', '823779867', '{\"en\":\"Minima.\"}', 176, 2, 1, 'Voluptas quae et.', '{\"en\":\"Ms. Cathy Powlowski\"}', '1124277678', '2134381687', '1162930073', '{\"en\":\"Rerum.\"}', 44, 10, 1, 'Dolorum possimus.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(71, 'icorkery@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Napoleon Gaylord DVM\"}', '1213092115', '2048080055', '2002672763', '{\"en\":\"Iusto.\"}', 115, 2, 2, 'Quibusdam delectus.', '{\"en\":\"Ronaldo Jaskolski I\"}', '487071681', '1385807177', '1691083433', '{\"en\":\"Saepe.\"}', 173, 1, 2, 'Quos ipsam sequi.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(72, 'dejah.schumm@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Hershel Schiller MD\"}', '53802382', '1223892737', '694675582', '{\"en\":\"Sed iure.\"}', 80, 1, 1, 'Expedita neque qui.', '{\"en\":\"Pete Schamberger\"}', '493304530', '2136307333', '1781534329', '{\"en\":\"Vel.\"}', 144, 3, 1, 'Iure sapiente atque.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(73, 'harvey.santino@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Leilani O\'Keefe DVM\"}', '1817503831', '1125543822', '437914399', '{\"en\":\"Nesciunt.\"}', 107, 11, 1, 'Non sunt et sed.', '{\"en\":\"Prof. Joel Stokes Jr.\"}', '1940426090', '1316874417', '1841480412', '{\"en\":\"Quas.\"}', 246, 1, 2, 'Dolorum sapiente.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(74, 'presley.turner@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Hester Corwin V\"}', '1838988144', '1481005165', '1865227647', '{\"en\":\"Est quis.\"}', 27, 8, 2, 'Voluptatem minus.', '{\"en\":\"Dillan Hills IV\"}', '1800617953', '1143169220', '901875244', '{\"en\":\"Placeat.\"}', 171, 1, 1, 'Nihil impedit nemo.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(75, 'parisian.tom@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Magnolia Bashirian\"}', '148274575', '1209707159', '686036564', '{\"en\":\"Quis.\"}', 220, 6, 1, 'Aspernatur minima.', '{\"en\":\"Prof. Delta Jones\"}', '858247677', '809904406', '1209067022', '{\"en\":\"Eum.\"}', 85, 8, 2, 'Similique qui illum.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(76, 'olegros@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jett Heaney\"}', '1279375375', '1930208467', '534083919', '{\"en\":\"Nihil aut.\"}', 212, 12, 1, 'Ipsam ex et quaerat.', '{\"en\":\"Dr. Ahmad Harber PhD\"}', '686172156', '1773197229', '1527143943', '{\"en\":\"Aut ullam.\"}', 179, 9, 2, 'Quod voluptates.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(77, 'madie.crooks@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Darlene Gerhold\"}', '849932601', '1343995845', '1138976512', '{\"en\":\"Corporis.\"}', 51, 5, 1, 'Tenetur aut aut.', '{\"en\":\"Dr. Dorthy Weimann\"}', '1223518416', '198224340', '268015431', '{\"en\":\"Ea.\"}', 26, 4, 1, 'At cum ratione.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(78, 'rosina.dubuque@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mariah Stehr\"}', '2049842863', '2017231111', '397825596', '{\"en\":\"Omnis.\"}', 167, 12, 1, 'In occaecati ut.', '{\"en\":\"Dock Wolff\"}', '1987088058', '215761283', '857914915', '{\"en\":\"Delectus.\"}', 198, 7, 1, 'Officia ad.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(79, 'walker00@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Leda Cruickshank V\"}', '704048627', '183637381', '1086764070', '{\"en\":\"Ad.\"}', 191, 9, 1, 'Cupiditate omnis ut.', '{\"en\":\"Rickie Simonis\"}', '1624231602', '127726888', '8833203', '{\"en\":\"Maxime.\"}', 62, 4, 2, 'Vero magni.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(80, 'barrows.mara@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Anahi Hoeger I\"}', '2135214848', '753477284', '1061056385', '{\"en\":\"Est.\"}', 18, 2, 1, 'Enim et consequatur.', '{\"en\":\"Aniyah Kassulke\"}', '1979365126', '1543526911', '111303593', '{\"en\":\"Dolor.\"}', 21, 1, 1, 'Quae doloremque.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(81, 'beau.runolfsdottir@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Hettie Schultz\"}', '1374452751', '243131083', '2027687626', '{\"en\":\"Ea.\"}', 105, 8, 1, 'Qui voluptates.', '{\"en\":\"Ms. Juliana Roberts I\"}', '1611423302', '1652433696', '562267636', '{\"en\":\"Est non.\"}', 117, 11, 1, 'Aliquam quisquam.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(82, 'shanahan.john@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ashtyn Rolfson\"}', '860173136', '489446909', '1951764168', '{\"en\":\"Ea magnam.\"}', 236, 1, 1, 'Repellendus aut.', '{\"en\":\"Angie Shanahan Jr.\"}', '1872544576', '133520506', '2115173443', '{\"en\":\"Aut.\"}', 179, 10, 2, 'Quasi minima omnis.', '2022-03-13 16:26:58', '2022-03-13 16:26:58'),
(83, 'gutkowski.brianne@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Milton Abernathy I\"}', '539134374', '870544216', '1292467759', '{\"en\":\"Beatae ut.\"}', 197, 9, 2, 'Commodi odio non.', '{\"en\":\"Prof. Nestor Langosh\"}', '1907080145', '1934604906', '290387292', '{\"en\":\"Quidem.\"}', 113, 4, 1, 'Minima ipsa quia.', '2022-03-13 16:26:59', '2022-03-13 16:26:59'),
(84, 'lafayette.sauer@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Yazmin Muller DVM\"}', '723951666', '1740063319', '427022695', '{\"en\":\"Ad.\"}', 41, 7, 2, 'Ipsam illum autem.', '{\"en\":\"Harry Durgan\"}', '469913688', '1735945582', '1125331850', '{\"en\":\"Voluptas.\"}', 167, 5, 1, 'Ut delectus ad.', '2022-03-13 16:26:59', '2022-03-13 16:26:59'),
(85, 'bmurphy@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Reagan Kutch\"}', '351472180', '824541496', '70280713', '{\"en\":\"Iste.\"}', 204, 2, 1, 'Reiciendis eveniet.', '{\"en\":\"Enid Daugherty\"}', '383216952', '1282565279', '179460412', '{\"en\":\"Ut atque.\"}', 243, 1, 1, 'Impedit voluptas.', '2022-03-13 16:26:59', '2022-03-13 16:26:59'),
(86, 'conn.chadd@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Alexandrine Spencer I\"}', '1604747450', '153894579', '1443766296', '{\"en\":\"Possimus.\"}', 81, 5, 1, 'Omnis voluptas.', '{\"en\":\"Devonte Runolfsson\"}', '119527227', '1609676083', '47111164', '{\"en\":\"Incidunt.\"}', 147, 7, 1, 'Labore sint soluta.', '2022-03-13 16:26:59', '2022-03-13 16:26:59'),
(87, 'mkris@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Kelli Kuhic PhD\"}', '572656665', '48356683', '121533846', '{\"en\":\"Aut non.\"}', 26, 2, 1, 'Eum eligendi nobis.', '{\"en\":\"Stan Hodkiewicz\"}', '1300796290', '651981314', '247914509', '{\"en\":\"Dolor.\"}', 129, 6, 1, 'Voluptates.', '2022-03-13 16:26:59', '2022-03-13 16:26:59'),
(88, 'sbernhard@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Oleta Greenfelder\"}', '777307445', '382701458', '2036495762', '{\"en\":\"Quia a.\"}', 69, 2, 1, 'Ut mollitia ipsum.', '{\"en\":\"Dr. Guiseppe Brakus\"}', '503550559', '1576095778', '2051187955', '{\"en\":\"Numquam.\"}', 141, 6, 1, 'Qui dolore non.', '2022-03-13 16:26:59', '2022-03-13 16:26:59'),
(89, 'lonny.damore@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Fatima Dooley\"}', '1107852051', '465600666', '985181832', '{\"en\":\"Et.\"}', 46, 1, 2, 'Voluptas debitis.', '{\"en\":\"Sebastian Bartell\"}', '562367354', '1174993793', '1524776942', '{\"en\":\"Velit.\"}', 161, 6, 2, 'Ut reiciendis vitae.', '2022-03-13 16:26:59', '2022-03-13 16:26:59'),
(90, 'xgoyette@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lillian Denesik\"}', '345118416', '1827426556', '2076084550', '{\"en\":\"Sed minus.\"}', 235, 4, 2, 'Ea temporibus.', '{\"en\":\"Cleta Stark\"}', '2042245809', '1201326837', '350660174', '{\"en\":\"Sed qui.\"}', 244, 5, 2, 'Qui non quas.', '2022-03-13 16:26:59', '2022-03-13 16:26:59'),
(91, 'schaefer.jarrell@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Maiya Will\"}', '173845910', '554025284', '363045000', '{\"en\":\"Voluptas.\"}', 57, 12, 1, 'Facere sint est et.', '{\"en\":\"Julian Bashirian\"}', '1064760452', '1682217790', '1330064944', '{\"en\":\"Alias ut.\"}', 150, 10, 1, 'Numquam possimus.', '2022-03-13 16:26:59', '2022-03-13 16:26:59'),
(92, 'stephon39@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Hailey Franecki III\"}', '1604995307', '1745439865', '1894250668', '{\"en\":\"Ea rerum.\"}', 122, 5, 2, 'Et dolore aut.', '{\"en\":\"Mr. Josiah O\'Kon I\"}', '1732288073', '1553576054', '1088795860', '{\"en\":\"Magnam.\"}', 137, 7, 2, 'Sed praesentium qui.', '2022-03-13 16:26:59', '2022-03-13 16:26:59'),
(93, 'zoila.abernathy@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Toney Towne\"}', '542054059', '627293525', '1006918480', '{\"en\":\"Unde amet.\"}', 175, 3, 1, 'Nobis unde dolorum.', '{\"en\":\"Dr. Royce Strosin Sr.\"}', '2016875526', '1205278559', '474910978', '{\"en\":\"Beatae.\"}', 170, 9, 2, 'Quo similique.', '2022-03-13 16:26:59', '2022-03-13 16:26:59'),
(94, 'gkutch@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Stephan Jenkins MD\"}', '1727022550', '282019344', '1071968964', '{\"en\":\"Ipsam.\"}', 9, 1, 2, 'Sunt earum ut.', '{\"en\":\"Aiden Farrell\"}', '2095977641', '416521641', '1186568823', '{\"en\":\"Voluptas.\"}', 4, 9, 1, 'Ratione accusamus.', '2022-03-13 16:26:59', '2022-03-13 16:26:59'),
(95, 'jaeden06@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Kirk Von II\"}', '814769695', '1906957835', '128338467', '{\"en\":\"Quasi.\"}', 146, 7, 2, 'Voluptatem et rerum.', '{\"en\":\"Kaleb Bartoletti\"}', '1503581682', '1347304791', '1695893421', '{\"en\":\"Laborum.\"}', 108, 12, 1, 'Sunt sunt dolores.', '2022-03-13 16:26:59', '2022-03-13 16:26:59'),
(96, 'floy85@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Everardo Macejkovic Jr.\"}', '1024350519', '1349691884', '1678828488', '{\"en\":\"In culpa.\"}', 68, 3, 1, 'Saepe quibusdam cum.', '{\"en\":\"Daisy Oberbrunner\"}', '491012283', '1255719773', '238693594', '{\"en\":\"Et odit.\"}', 103, 3, 1, 'Consequatur enim.', '2022-03-13 16:26:59', '2022-03-13 16:26:59'),
(97, 'blanda.destany@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Antonio Rodriguez IV\"}', '206233981', '2053451093', '1362949578', '{\"en\":\"Autem.\"}', 3, 8, 1, 'Voluptatem sed.', '{\"en\":\"Giovanny Krajcik\"}', '642295267', '1614316443', '3431851', '{\"en\":\"Dolor.\"}', 56, 9, 2, 'Ut accusantium.', '2022-03-13 16:26:59', '2022-03-13 16:26:59'),
(98, 'okuhn@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Leonard Dickinson\"}', '1216639217', '617184150', '1509124088', '{\"en\":\"Nostrum.\"}', 146, 11, 1, 'Vitae quam id.', '{\"en\":\"Dr. Donald Maggio\"}', '657005561', '1774814053', '557884703', '{\"en\":\"Et in.\"}', 127, 1, 1, 'Dolores est esse.', '2022-03-13 16:26:59', '2022-03-13 16:26:59'),
(99, 'fidel89@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Lola Stark V\"}', '2097143209', '1202492085', '216407597', '{\"en\":\"Ducimus.\"}', 15, 4, 1, 'Culpa voluptatum.', '{\"en\":\"Jefferey Mraz\"}', '1464859325', '92441672', '1617821146', '{\"en\":\"Officiis.\"}', 143, 7, 1, 'Ex ad.', '2022-03-13 16:26:59', '2022-03-13 16:26:59'),
(100, 'michale56@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Emory McKenzie\"}', '1250846170', '1513899483', '643550886', '{\"en\":\"Minima.\"}', 212, 6, 2, 'Consectetur beatae.', '{\"en\":\"Regan Cole Sr.\"}', '1032918386', '1769441893', '815028013', '{\"en\":\"Autem.\"}', 205, 6, 2, 'Illo earum non est.', '2022-03-13 16:27:00', '2022-03-13 16:27:00'),
(101, 'pzulauf@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Annamarie Gusikowski\"}', '1266864716', '2003370475', '932474597', '{\"en\":\"At id.\"}', 105, 11, 1, 'Quasi ut unde.', '{\"en\":\"Coty Baumbach\"}', '452696380', '538257385', '741169406', '{\"en\":\"Omnis eos.\"}', 66, 10, 2, 'Iure qui et.', '2022-03-13 16:30:37', '2022-03-13 16:30:37'),
(102, 'hermiston.lucio@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Giovanny Champlin\"}', '2067438116', '1496383782', '1207646653', '{\"en\":\"Aperiam.\"}', 77, 3, 2, 'Voluptatem expedita.', '{\"en\":\"Ardella Borer\"}', '1421865898', '69931093', '1286109404', '{\"en\":\"Autem.\"}', 51, 6, 2, 'Quisquam provident.', '2022-03-13 16:30:37', '2022-03-13 16:30:37'),
(103, 'vdouglas@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mariah Botsford\"}', '1907202151', '1225744683', '1305162699', '{\"en\":\"Hic.\"}', 224, 5, 1, 'Repellendus.', '{\"en\":\"Callie Klocko\"}', '1718994126', '1785075369', '607760602', '{\"en\":\"Omnis.\"}', 25, 9, 2, 'Occaecati tenetur.', '2022-03-13 16:30:37', '2022-03-13 16:30:37'),
(104, 'antonia65@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dayna Oberbrunner\"}', '1648792279', '306028011', '2133831371', '{\"en\":\"Nesciunt.\"}', 211, 11, 1, 'Est rem aperiam.', '{\"en\":\"Reece Green\"}', '1804431547', '1463179962', '1933331132', '{\"en\":\"Corrupti.\"}', 175, 2, 1, 'Fugit autem odio.', '2022-03-13 16:30:37', '2022-03-13 16:30:37'),
(105, 'bzieme@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Giovani Hahn\"}', '852377280', '37555755', '1587259705', '{\"en\":\"Omnis.\"}', 128, 9, 2, 'Delectus voluptatem.', '{\"en\":\"Irwin Spinka\"}', '705835757', '740155259', '207824835', '{\"en\":\"Odio.\"}', 81, 11, 1, 'Consequatur sunt.', '2022-03-13 16:30:37', '2022-03-13 16:30:37'),
(106, 'denesik.brooklyn@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ophelia Reinger\"}', '233686925', '229168918', '1112695227', '{\"en\":\"Est quae.\"}', 111, 2, 2, 'Architecto.', '{\"en\":\"Gennaro Dooley\"}', '1060892016', '130904499', '689792653', '{\"en\":\"Facilis.\"}', 47, 1, 1, 'Itaque blanditiis.', '2022-03-13 16:30:37', '2022-03-13 16:30:37'),
(107, 'quigley.gretchen@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dereck Ondricka IV\"}', '1482899399', '197731362', '2051085835', '{\"en\":\"Dolorem.\"}', 129, 10, 1, 'Non quia est nobis.', '{\"en\":\"Fermin Berge\"}', '547523890', '1821448597', '94666671', '{\"en\":\"Ut.\"}', 194, 2, 1, 'Saepe tenetur nulla.', '2022-03-13 16:30:37', '2022-03-13 16:30:37'),
(108, 'garnet32@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Quinten Bauch\"}', '802684398', '1980782620', '1705117896', '{\"en\":\"Quaerat.\"}', 155, 4, 1, 'Ipsum maxime ipsam.', '{\"en\":\"Caleb Jacobi\"}', '228358975', '2045790249', '1111457170', '{\"en\":\"Omnis.\"}', 174, 5, 1, 'Voluptas est quidem.', '2022-03-13 16:30:37', '2022-03-13 16:30:37'),
(109, 'zlarson@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kendrick McLaughlin Sr.\"}', '1811388708', '1721649528', '1120203444', '{\"en\":\"Nihil.\"}', 172, 8, 2, 'Cumque sint porro.', '{\"en\":\"Miss Maya Hilpert\"}', '1236870842', '494796310', '557428046', '{\"en\":\"Veniam.\"}', 187, 8, 1, 'Dolores qui minima.', '2022-03-13 16:30:37', '2022-03-13 16:30:37'),
(110, 'ludwig.schroeder@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Lisandro Kozey\"}', '943450418', '809544523', '206211', '{\"en\":\"Est omnis.\"}', 128, 2, 2, 'Maiores sequi.', '{\"en\":\"Skylar Jacobi\"}', '1190681075', '795707027', '1091014649', '{\"en\":\"Et aut in.\"}', 84, 5, 2, 'Tempora aut.', '2022-03-13 16:30:37', '2022-03-13 16:30:37'),
(111, 'cydney06@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Ivory Littel\"}', '158065533', '776904844', '1208041880', '{\"en\":\"Qui sit.\"}', 86, 1, 1, 'Non ut repellat.', '{\"en\":\"Branson Mraz MD\"}', '591554491', '1380215259', '554829930', '{\"en\":\"Qui.\"}', 171, 3, 1, 'Ad veritatis sed.', '2022-03-13 16:30:37', '2022-03-13 16:30:37'),
(112, 'hazel48@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Karianne Schamberger\"}', '1595712065', '1267037252', '1913689206', '{\"en\":\"Nulla.\"}', 62, 6, 2, 'Delectus et est.', '{\"en\":\"Prof. Katheryn Wuckert PhD\"}', '2085440385', '1885703720', '2061158725', '{\"en\":\"Debitis.\"}', 54, 11, 1, 'Officia at voluptas.', '2022-03-13 16:30:37', '2022-03-13 16:30:37'),
(113, 'armand08@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Alberta Labadie\"}', '1898111815', '92163678', '871310293', '{\"en\":\"Rerum vel.\"}', 17, 10, 1, 'Et perferendis quis.', '{\"en\":\"Dr. Paula Kertzmann\"}', '1707656735', '1298295088', '1347803482', '{\"en\":\"Soluta.\"}', 243, 12, 1, 'Pariatur pariatur.', '2022-03-13 16:30:38', '2022-03-13 16:30:38'),
(114, 'owest@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Macey Orn\"}', '771862218', '1007304043', '801107564', '{\"en\":\"Nihil.\"}', 232, 6, 1, 'Sint nam autem.', '{\"en\":\"Reinhold Ondricka\"}', '1966847857', '1201223498', '1894598900', '{\"en\":\"Id ut.\"}', 235, 1, 1, 'Enim est earum vero.', '2022-03-13 16:30:38', '2022-03-13 16:30:38'),
(115, 'wiza.frankie@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kayden Gulgowski\"}', '30386378', '1562484321', '1688484672', '{\"en\":\"Odio aut.\"}', 19, 2, 2, 'Non et asperiores.', '{\"en\":\"Eda Goldner\"}', '74702971', '1739958361', '1815929853', '{\"en\":\"Facilis.\"}', 196, 10, 2, 'Sed et autem.', '2022-03-13 16:30:38', '2022-03-13 16:30:38'),
(116, 'orie.hand@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Maribel Boehm\"}', '63511034', '1499655644', '882397935', '{\"en\":\"Quia.\"}', 208, 8, 2, 'Dolorem aut dolor.', '{\"en\":\"Raymond Pollich\"}', '1338597047', '497678248', '640643620', '{\"en\":\"Est et.\"}', 205, 3, 2, 'Et fuga est illum.', '2022-03-13 16:30:38', '2022-03-13 16:30:38'),
(117, 'rhoeger@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lyla Howe\"}', '228761105', '605017880', '1016501595', '{\"en\":\"Vel.\"}', 27, 6, 2, 'Et ut quaerat.', '{\"en\":\"Ruben Goyette MD\"}', '1213650899', '44083571', '617363521', '{\"en\":\"Assumenda.\"}', 129, 6, 2, 'Iusto et iusto et.', '2022-03-13 16:30:38', '2022-03-13 16:30:38'),
(118, 'xzulauf@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Bernard Hauck\"}', '1918331403', '340852971', '212694044', '{\"en\":\"Ut et.\"}', 195, 8, 1, 'Voluptatem nam sed.', '{\"en\":\"Rosalinda Maggio\"}', '700001863', '1939058284', '331221030', '{\"en\":\"Facere.\"}', 146, 7, 1, 'Omnis est modi.', '2022-03-13 16:30:38', '2022-03-13 16:30:38'),
(119, 'pacocha.neoma@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Amie Von IV\"}', '1442657826', '1481862609', '2035531795', '{\"en\":\"Eum.\"}', 128, 12, 2, 'Officia vel est.', '{\"en\":\"Sister West\"}', '242521945', '2015257277', '45692987', '{\"en\":\"Est vero.\"}', 72, 2, 2, 'Quia veritatis sed.', '2022-03-13 16:30:38', '2022-03-13 16:30:38'),
(120, 'eherman@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Cade Cummerata DDS\"}', '475020137', '20362133', '410970975', '{\"en\":\"Quae.\"}', 212, 6, 1, 'Sed quia similique.', '{\"en\":\"Sherwood Rutherford\"}', '1760055606', '640580540', '146151702', '{\"en\":\"Ipsam.\"}', 121, 9, 1, 'Ut quidem et.', '2022-03-13 16:30:38', '2022-03-13 16:30:38'),
(121, 'velda.schmitt@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Okey Lehner\"}', '778493799', '2002882134', '850889718', '{\"en\":\"Deleniti.\"}', 209, 6, 2, 'Unde quia voluptas.', '{\"en\":\"Prof. Jaime Lang\"}', '443496490', '2126385476', '605519165', '{\"en\":\"Omnis.\"}', 225, 9, 1, 'Qui assumenda modi.', '2022-03-13 16:30:38', '2022-03-13 16:30:38'),
(122, 'rritchie@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jarret Goyette DDS\"}', '1713270937', '738682100', '355756244', '{\"en\":\"Odit quas.\"}', 185, 5, 1, 'Est sunt similique.', '{\"en\":\"Stanford Metz\"}', '285657421', '1692428029', '278903159', '{\"en\":\"Assumenda.\"}', 127, 7, 1, 'Ut ad natus debitis.', '2022-03-13 16:30:38', '2022-03-13 16:30:38'),
(123, 'miller.daniella@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Vesta Ankunding\"}', '1789967005', '1186310217', '974627585', '{\"en\":\"Magnam.\"}', 6, 12, 1, 'Magni rerum ut.', '{\"en\":\"Rupert Botsford\"}', '541454714', '243959422', '318053205', '{\"en\":\"Est nihil.\"}', 137, 3, 1, 'Possimus et.', '2022-03-13 16:30:38', '2022-03-13 16:30:38'),
(124, 'marilie80@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Trycia Conn\"}', '678243430', '1966658280', '2004145245', '{\"en\":\"Illo.\"}', 141, 5, 2, 'Cum nesciunt sed.', '{\"en\":\"Dr. Ericka Stracke V\"}', '294395685', '1460331926', '2050466904', '{\"en\":\"Qui.\"}', 125, 8, 2, 'Sunt voluptatem qui.', '2022-03-13 16:30:38', '2022-03-13 16:30:38');
INSERT INTO `guardians` (`id`, `email`, `password`, `name_father`, `national_id_father`, `passport_id_father`, `phone_father`, `job_father`, `nationality_father_id`, `blood_type_father_id`, `religion_father_id`, `address_father`, `name_mother`, `national_id_mother`, `passport_id_mother`, `phone_mother`, `job_mother`, `nationality_mother_id`, `blood_type_mother_id`, `religion_mother_id`, `address_mother`, `created_at`, `updated_at`) VALUES
(125, 'ojones@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Molly Considine\"}', '204497434', '990359037', '951963861', '{\"en\":\"Quas.\"}', 80, 3, 1, 'In odit quam optio.', '{\"en\":\"Vernon Weber\"}', '1084497380', '1199453444', '1612710992', '{\"en\":\"Dolores.\"}', 245, 1, 2, 'Sit perspiciatis.', '2022-03-13 16:30:38', '2022-03-13 16:30:38'),
(126, 'noelia.reichel@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Rocio Medhurst\"}', '1412064273', '1968519614', '2091098329', '{\"en\":\"Dicta rem.\"}', 175, 7, 1, 'Id ipsa unde culpa.', '{\"en\":\"Cory Becker DDS\"}', '243721570', '674741380', '597531587', '{\"en\":\"Qui.\"}', 206, 5, 1, 'Libero dolore.', '2022-03-13 16:30:38', '2022-03-13 16:30:38'),
(127, 'hattie.little@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Marina White\"}', '1826543535', '1912171701', '1665619354', '{\"en\":\"Ratione.\"}', 26, 4, 2, 'Aliquid ipsam.', '{\"en\":\"Dr. Nicolas Mosciski III\"}', '552874454', '1155532126', '429204042', '{\"en\":\"Quia.\"}', 187, 10, 2, 'Veniam nostrum.', '2022-03-13 16:30:38', '2022-03-13 16:30:38'),
(128, 'wcrooks@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Susanna Schaden\"}', '939555936', '1102000363', '311831700', '{\"en\":\"Quaerat.\"}', 62, 6, 2, 'Veritatis nesciunt.', '{\"en\":\"Meta Turner DVM\"}', '2021726261', '1885849872', '1664745104', '{\"en\":\"Velit.\"}', 220, 12, 2, 'Doloremque quis aut.', '2022-03-13 16:30:38', '2022-03-13 16:30:38'),
(129, 'aufderhar.felicia@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Rubie Altenwerth\"}', '922997243', '1624297468', '1632634371', '{\"en\":\"In qui.\"}', 202, 11, 2, 'Consectetur.', '{\"en\":\"Anastasia Schiller\"}', '1554583270', '877243426', '1511596435', '{\"en\":\"Ipsa.\"}', 62, 7, 1, 'Esse eaque qui.', '2022-03-13 16:30:38', '2022-03-13 16:30:38'),
(130, 'garrett99@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Magdalena Wisozk\"}', '65959678', '1152501554', '889913436', '{\"en\":\"Eum.\"}', 37, 4, 2, 'Cupiditate est qui.', '{\"en\":\"Mr. Grayce Weimann\"}', '2134651316', '2022613653', '1865911240', '{\"en\":\"Quia nisi.\"}', 177, 7, 2, 'Cumque quia vero.', '2022-03-13 16:30:38', '2022-03-13 16:30:38'),
(131, 'isom22@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Nannie McClure V\"}', '1304483703', '1560225125', '704827991', '{\"en\":\"Ut.\"}', 163, 12, 2, 'Dolores provident.', '{\"en\":\"Madaline Harvey\"}', '826249725', '1328953533', '553642809', '{\"en\":\"Dolorum.\"}', 174, 12, 2, 'Expedita ab illo ab.', '2022-03-13 16:30:39', '2022-03-13 16:30:39'),
(132, 'kasey.bode@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Shanel Littel IV\"}', '894787151', '2017505111', '1695501260', '{\"en\":\"Et culpa.\"}', 111, 7, 2, 'Ut et tempore.', '{\"en\":\"Magnus Raynor\"}', '1765441549', '1016444418', '139639987', '{\"en\":\"Voluptas.\"}', 83, 12, 2, 'Commodi quidem sit.', '2022-03-13 16:30:39', '2022-03-13 16:30:39'),
(133, 'raheem94@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jamey Thompson\"}', '117875847', '477772500', '1101297284', '{\"en\":\"Ut harum.\"}', 23, 9, 2, 'Numquam autem.', '{\"en\":\"Emma Walter\"}', '739772653', '427776654', '661899476', '{\"en\":\"Omnis.\"}', 42, 5, 1, 'Et enim vitae vel.', '2022-03-13 16:30:39', '2022-03-13 16:30:39'),
(134, 'ubraun@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Fletcher Beahan\"}', '842058983', '687302619', '2008165999', '{\"en\":\"Est.\"}', 133, 12, 1, 'Rerum eius quo aut.', '{\"en\":\"Annamarie Bednar MD\"}', '1393620435', '1792425843', '1008900626', '{\"en\":\"Fugit.\"}', 165, 2, 2, 'Quia officia.', '2022-03-13 16:30:39', '2022-03-13 16:30:39'),
(135, 'hayley.thompson@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Alberta Farrell\"}', '1943575537', '1437592554', '1710184355', '{\"en\":\"Sit error.\"}', 37, 7, 2, 'Sint consequatur.', '{\"en\":\"Karen Waters\"}', '51826951', '1721066262', '1442490386', '{\"en\":\"Qui ut.\"}', 221, 11, 2, 'Sint autem itaque.', '2022-03-13 16:30:39', '2022-03-13 16:30:39'),
(136, 'billy.mcglynn@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Freida Labadie\"}', '908312229', '1696970516', '1959785594', '{\"en\":\"Sit autem.\"}', 159, 6, 1, 'Placeat est nihil.', '{\"en\":\"Duane Will\"}', '206200023', '1451424706', '1417113407', '{\"en\":\"Et.\"}', 152, 7, 2, 'Quia beatae maiores.', '2022-03-13 16:30:39', '2022-03-13 16:30:39'),
(137, 'camron.schultz@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Jennings Harris DDS\"}', '1080711634', '1114960605', '1968933741', '{\"en\":\"Ut est.\"}', 39, 6, 1, 'Ullam quisquam vero.', '{\"en\":\"Benjamin Treutel\"}', '433490925', '1528018814', '508860503', '{\"en\":\"Eius.\"}', 173, 9, 2, 'Exercitationem et.', '2022-03-13 16:30:39', '2022-03-13 16:30:39'),
(138, 'oda93@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lelia Kirlin\"}', '938074715', '1051753616', '1272255438', '{\"en\":\"Est dicta.\"}', 4, 9, 1, 'Enim aperiam esse.', '{\"en\":\"Craig Klocko\"}', '671157282', '665707977', '273769964', '{\"en\":\"Sunt illo.\"}', 77, 3, 1, 'Non quia ut non.', '2022-03-13 16:30:39', '2022-03-13 16:30:39'),
(139, 'reichel.pierre@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Dagmar Lehner\"}', '696724454', '25734432', '1062998177', '{\"en\":\"Sit.\"}', 56, 9, 1, 'Ut vitae et in.', '{\"en\":\"Alisa Farrell\"}', '772000767', '1903707184', '378657974', '{\"en\":\"Suscipit.\"}', 165, 4, 1, 'Ut ipsam asperiores.', '2022-03-13 16:30:39', '2022-03-13 16:30:39'),
(140, 'jacobson.lexie@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Juvenal Hyatt\"}', '353452289', '630041541', '1609984706', '{\"en\":\"Eos sint.\"}', 159, 3, 2, 'Quod dolorem fugiat.', '{\"en\":\"Ruby Kris\"}', '769455916', '1356754506', '626257252', '{\"en\":\"Sit.\"}', 1, 3, 2, 'Vel iste quod aut.', '2022-03-13 16:30:39', '2022-03-13 16:30:39'),
(141, 'runte.orland@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Juana Thiel\"}', '1142175423', '1899512966', '946530879', '{\"en\":\"Harum vel.\"}', 239, 2, 1, 'Et suscipit.', '{\"en\":\"Laurel Heidenreich Jr.\"}', '60804220', '1100007954', '579369040', '{\"en\":\"Ad.\"}', 6, 7, 2, 'Praesentium quis.', '2022-03-13 16:30:39', '2022-03-13 16:30:39'),
(142, 'burdette41@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Eric Adams\"}', '2043744355', '1452589103', '1660118982', '{\"en\":\"Velit.\"}', 220, 9, 1, 'Eos iure iste enim.', '{\"en\":\"Gardner Bogisich\"}', '1828480753', '2069846819', '1956411925', '{\"en\":\"Ipsam a.\"}', 234, 5, 1, 'Atque similique.', '2022-03-13 16:30:39', '2022-03-13 16:30:39'),
(143, 'ayden.wunsch@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Douglas Wiza Jr.\"}', '749429039', '1699889586', '1461866525', '{\"en\":\"Est.\"}', 161, 11, 2, 'Sit beatae quam.', '{\"en\":\"Waino Little\"}', '2049114215', '761949994', '1630304925', '{\"en\":\"Omnis.\"}', 236, 6, 2, 'Eius neque omnis.', '2022-03-13 16:30:39', '2022-03-13 16:30:39'),
(144, 'hortense22@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Orin Hintz\"}', '290351932', '556054154', '1134494598', '{\"en\":\"Totam.\"}', 96, 1, 1, 'Error aliquid vel.', '{\"en\":\"Ella Anderson\"}', '1699787745', '1130340228', '1505191108', '{\"en\":\"Qui.\"}', 60, 7, 1, 'Quisquam quos qui.', '2022-03-13 16:30:39', '2022-03-13 16:30:39'),
(145, 'hbartell@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lessie Corwin\"}', '1267468589', '1894465830', '1578948329', '{\"en\":\"Sunt.\"}', 87, 11, 1, 'Nemo quo est.', '{\"en\":\"Dr. Sidney Jast\"}', '562358712', '1860135593', '2104809020', '{\"en\":\"Nobis sit.\"}', 211, 10, 1, 'Nobis ex distinctio.', '2022-03-13 16:30:39', '2022-03-13 16:30:39'),
(146, 'erika09@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kallie Cremin\"}', '104835948', '1620552659', '684225067', '{\"en\":\"Quibusdam.\"}', 113, 8, 2, 'Reiciendis laborum.', '{\"en\":\"Prof. Claude Roberts DDS\"}', '1903450995', '2104085695', '1519996975', '{\"en\":\"Ratione.\"}', 183, 10, 1, 'Molestias delectus.', '2022-03-13 16:30:39', '2022-03-13 16:30:39'),
(147, 'helene.kohler@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ernesto Walker\"}', '1869099891', '1022955652', '1765794219', '{\"en\":\"Et.\"}', 136, 10, 2, 'Quis est eligendi.', '{\"en\":\"Marian Satterfield\"}', '1843119263', '1861732896', '1581274240', '{\"en\":\"Ipsum.\"}', 191, 10, 1, 'Qui omnis libero.', '2022-03-13 16:30:40', '2022-03-13 16:30:40'),
(148, 'peyton43@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Vinnie Mitchell\"}', '1218767263', '1568823865', '1174880186', '{\"en\":\"Dolore.\"}', 111, 11, 1, 'Ullam maiores.', '{\"en\":\"Zella Kovacek\"}', '2059610491', '1968053727', '65205987', '{\"en\":\"Minus.\"}', 17, 2, 1, 'Id omnis commodi.', '2022-03-13 16:30:40', '2022-03-13 16:30:40'),
(149, 'gwitting@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Davon Hegmann\"}', '1598131749', '1827833404', '1533738489', '{\"en\":\"Itaque.\"}', 200, 8, 2, 'Laborum inventore.', '{\"en\":\"Dr. Reina Batz V\"}', '2091809991', '347518238', '1322912499', '{\"en\":\"Rem.\"}', 186, 5, 2, 'Consequatur dolor.', '2022-03-13 16:30:40', '2022-03-13 16:30:40'),
(150, 'feest.elenora@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Xavier Davis\"}', '150324714', '1524530764', '887024920', '{\"en\":\"Dolores.\"}', 143, 7, 2, 'Qui minus velit.', '{\"en\":\"Dr. Patrick Franecki Sr.\"}', '1082350311', '1510485834', '464959495', '{\"en\":\"Quod.\"}', 15, 4, 1, 'Ducimus.', '2022-03-13 16:30:40', '2022-03-13 16:30:40'),
(151, 'thomas.oconnell@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jackeline Lubowitz\"}', '23971638', '1805512378', '567585061', '{\"en\":\"Expedita.\"}', 130, 10, 2, 'In tenetur.', '{\"en\":\"Abbey Parker MD\"}', '1930300348', '853887027', '2028315547', '{\"en\":\"Ab quas.\"}', 26, 1, 1, 'Et omnis ut facere.', '2022-03-13 16:30:40', '2022-03-13 16:30:40'),
(152, 'libbie.goodwin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Christop Little Jr.\"}', '952668482', '1173785518', '1593714389', '{\"en\":\"Et earum.\"}', 207, 1, 2, 'Molestiae rerum.', '{\"en\":\"Rey Bartoletti V\"}', '1828609856', '1801112404', '267171817', '{\"en\":\"Sed.\"}', 122, 6, 1, 'Provident nam sit.', '2022-03-13 16:30:40', '2022-03-13 16:30:40'),
(153, 'kohler.glenda@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Darian Skiles Sr.\"}', '1184561903', '540887338', '1338114957', '{\"en\":\"Eum sit.\"}', 196, 9, 1, 'Dolor reprehenderit.', '{\"en\":\"Mr. Jett Schumm\"}', '1694318827', '1978098693', '838655639', '{\"en\":\"Beatae.\"}', 38, 3, 2, 'Omnis distinctio et.', '2022-03-13 16:30:40', '2022-03-13 16:30:40'),
(154, 'salvador66@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Brian Miller\"}', '1574938950', '6652645', '955603642', '{\"en\":\"Possimus.\"}', 106, 11, 1, 'Et consequatur.', '{\"en\":\"Libby Mraz V\"}', '1539754027', '1149714292', '1545226251', '{\"en\":\"Quos qui.\"}', 158, 5, 2, 'Ab sapiente ut sed.', '2022-03-13 16:30:40', '2022-03-13 16:30:40'),
(155, 'albert58@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Waino Ryan I\"}', '102980446', '1730906973', '475864325', '{\"en\":\"Dolores.\"}', 57, 6, 1, 'Omnis et aliquam.', '{\"en\":\"Grayce Prosacco\"}', '23308725', '1036164004', '1001663292', '{\"en\":\"Aut modi.\"}', 121, 9, 2, 'Alias delectus.', '2022-03-13 16:30:40', '2022-03-13 16:30:40'),
(156, 'ewitting@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"April Collier\"}', '1068571643', '1124511975', '51601386', '{\"en\":\"Vel ea.\"}', 52, 2, 2, 'Et harum.', '{\"en\":\"Lura Towne\"}', '1321001434', '1289668810', '1663491950', '{\"en\":\"Dolores.\"}', 15, 10, 1, 'Nam voluptatem.', '2022-03-13 16:30:40', '2022-03-13 16:30:40'),
(157, 'danny.bahringer@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Neva Fahey\"}', '610788044', '274483709', '1312952348', '{\"en\":\"Quasi eum.\"}', 14, 6, 2, 'Et omnis et.', '{\"en\":\"Miss Romaine Roberts\"}', '1572688386', '1679065841', '20296014', '{\"en\":\"Occaecati.\"}', 42, 9, 2, 'Error rerum.', '2022-03-13 16:30:40', '2022-03-13 16:30:40'),
(158, 'kellen.koelpin@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jade Bailey V\"}', '225705933', '1439851924', '1603365272', '{\"en\":\"Id.\"}', 63, 11, 1, 'Voluptatem quo et.', '{\"en\":\"Stephania Farrell\"}', '89632250', '1825286605', '1483285796', '{\"en\":\"Aut velit.\"}', 242, 8, 1, 'Praesentium dolorem.', '2022-03-13 16:30:40', '2022-03-13 16:30:40'),
(159, 'jones.judd@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Keon Brekke\"}', '1714838062', '1099264699', '1576055862', '{\"en\":\"Et et eos.\"}', 61, 4, 1, 'Laboriosam.', '{\"en\":\"Vena Schroeder IV\"}', '1665104968', '122041935', '661599046', '{\"en\":\"Alias et.\"}', 170, 3, 2, 'Ut accusamus nihil.', '2022-03-13 16:30:40', '2022-03-13 16:30:40'),
(160, 'misty49@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Norma Rutherford IV\"}', '150963613', '832322252', '1020678236', '{\"en\":\"Nisi.\"}', 103, 6, 2, 'Repellat eum a.', '{\"en\":\"Matilde Balistreri\"}', '156386658', '1225871504', '604067157', '{\"en\":\"Aut aut.\"}', 55, 9, 1, 'Quia eos laborum in.', '2022-03-13 16:30:40', '2022-03-13 16:30:40'),
(161, 'catherine59@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Declan Kilback\"}', '296850526', '820091047', '443103311', '{\"en\":\"At rerum.\"}', 46, 3, 1, 'Ipsa officia itaque.', '{\"en\":\"Saul Kuvalis\"}', '653681391', '1465567583', '1425307022', '{\"en\":\"Ducimus.\"}', 134, 6, 1, 'Est beatae quod ex.', '2022-03-13 16:30:40', '2022-03-13 16:30:40'),
(162, 'melyna.altenwerth@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Gussie Dooley\"}', '819328912', '1120662152', '1012243044', '{\"en\":\"Est.\"}', 24, 2, 1, 'Odit eaque nulla.', '{\"en\":\"Barry Schaefer Sr.\"}', '1802350315', '1946008064', '24340242', '{\"en\":\"Commodi.\"}', 133, 12, 1, 'Eligendi labore.', '2022-03-13 16:30:40', '2022-03-13 16:30:40'),
(163, 'hand.kyra@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Vena Swaniawski\"}', '283545587', '74934081', '662867569', '{\"en\":\"Non.\"}', 17, 8, 1, 'Et nesciunt sint.', '{\"en\":\"Prof. Johnnie Wiegand Sr.\"}', '988292088', '910002790', '1592620699', '{\"en\":\"Vel.\"}', 188, 4, 1, 'Maiores nihil quo.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(164, 'alice00@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dayana Stark\"}', '1838014881', '1836288671', '1558460249', '{\"en\":\"Vitae.\"}', 127, 4, 1, 'Facere rerum.', '{\"en\":\"Tate Morar\"}', '383196836', '472758483', '859332894', '{\"en\":\"Vitae.\"}', 130, 12, 1, 'Dolor quia ratione.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(165, 'enader@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Leann Steuber II\"}', '237157273', '717702200', '670844124', '{\"en\":\"Quas est.\"}', 156, 5, 1, 'Est voluptatem.', '{\"en\":\"Sylvan Koelpin V\"}', '2068919012', '1765859303', '1583175200', '{\"en\":\"Hic quis.\"}', 27, 1, 1, 'Est officiis.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(166, 'virgie.gislason@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Haleigh Lakin IV\"}', '1091945810', '1808176584', '1238529435', '{\"en\":\"Itaque.\"}', 48, 7, 1, 'Modi necessitatibus.', '{\"en\":\"Prof. Maddison Treutel\"}', '192985662', '1844144667', '1243759544', '{\"en\":\"Iure.\"}', 206, 6, 2, 'Inventore.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(167, 'harmony.denesik@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kimberly Ullrich\"}', '16233240', '316676304', '170835725', '{\"en\":\"Ad ab.\"}', 76, 2, 2, 'Ut dicta velit sint.', '{\"en\":\"Durward Baumbach\"}', '1772296070', '247728389', '761442292', '{\"en\":\"Soluta.\"}', 170, 6, 1, 'Tenetur sed iste.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(168, 'brett50@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Andreanne Hirthe\"}', '2080293882', '994233362', '135699934', '{\"en\":\"Fugit.\"}', 128, 9, 2, 'Esse voluptate.', '{\"en\":\"Wilson Schroeder MD\"}', '945644902', '1511753555', '1682411550', '{\"en\":\"Qui.\"}', 65, 4, 2, 'Ut sint laborum.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(169, 'xkihn@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jorge Dietrich\"}', '365991070', '1313379357', '1299174260', '{\"en\":\"Et enim.\"}', 32, 4, 1, 'Officiis hic.', '{\"en\":\"Mary Pacocha DVM\"}', '1521241207', '1287655284', '1140029652', '{\"en\":\"Et nisi.\"}', 161, 2, 2, 'Officiis labore.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(170, 'abbott.cyril@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Francis Fahey\"}', '306236012', '1191519065', '513888638', '{\"en\":\"Totam quo.\"}', 44, 10, 2, 'Eum expedita.', '{\"en\":\"Kaci Rutherford DVM\"}', '213854491', '627692581', '2047850546', '{\"en\":\"Earum.\"}', 74, 8, 1, 'Sunt dolores autem.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(171, 'jordon.batz@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Clay Adams\"}', '126417202', '993235743', '1943299013', '{\"en\":\"Sint.\"}', 89, 1, 2, 'Qui et minima qui.', '{\"en\":\"Prof. Gilda Mayert DDS\"}', '1516060837', '910667205', '413491840', '{\"en\":\"In vel ut.\"}', 55, 2, 2, 'Sed iste vitae quia.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(172, 'kdibbert@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Royal Batz\"}', '1510619390', '794739901', '935200759', '{\"en\":\"Veritatis.\"}', 170, 9, 2, 'Est iste et.', '{\"en\":\"Mrs. Joannie Sanford MD\"}', '506049007', '1641524637', '97927445', '{\"en\":\"Sed velit.\"}', 180, 4, 1, 'In culpa occaecati.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(173, 'maximo.effertz@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lera Turcotte\"}', '953666791', '1504382171', '647560739', '{\"en\":\"Eos omnis.\"}', 16, 1, 2, 'Reprehenderit est.', '{\"en\":\"Reyes Windler\"}', '1961176008', '1138908933', '1826883767', '{\"en\":\"Eveniet.\"}', 15, 12, 2, 'Esse cum laborum.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(174, 'jgleichner@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Christina Kuhic Jr.\"}', '1956085306', '179393598', '1820671815', '{\"en\":\"Qui vel.\"}', 81, 4, 1, 'Tempora a maxime.', '{\"en\":\"Sterling Kling\"}', '1608018814', '887723304', '1376904892', '{\"en\":\"Dolor.\"}', 176, 7, 1, 'Similique ad.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(175, 'jakob.hoeger@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Lavern Parisian\"}', '815242878', '1140257187', '616004690', '{\"en\":\"Sed.\"}', 53, 5, 2, 'Vitae aut amet hic.', '{\"en\":\"Margret Larson\"}', '124916961', '83731228', '897980755', '{\"en\":\"Qui.\"}', 118, 6, 2, 'Consequuntur itaque.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(176, 'ycrooks@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Bonita Auer\"}', '1856567918', '963999042', '237507869', '{\"en\":\"Ea et at.\"}', 11, 3, 2, 'Neque esse debitis.', '{\"en\":\"Prof. Bernardo Senger DVM\"}', '707339596', '403705315', '1666881033', '{\"en\":\"Similique.\"}', 231, 11, 2, 'Aut aperiam ullam.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(177, 'terry.mireya@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Kenya Muller IV\"}', '332518466', '414326234', '991387942', '{\"en\":\"Sit.\"}', 55, 7, 2, 'Cumque itaque ut ea.', '{\"en\":\"Krista Koss\"}', '1799410725', '985404153', '90589730', '{\"en\":\"Placeat.\"}', 67, 4, 1, 'Quia quis eos.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(178, 'mckayla.champlin@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Valentina Pacocha\"}', '237812619', '792615694', '1088171513', '{\"en\":\"Quis qui.\"}', 85, 7, 1, 'Beatae accusamus.', '{\"en\":\"Hailey Wintheiser IV\"}', '1185870398', '1374816205', '2039337885', '{\"en\":\"Excepturi.\"}', 177, 1, 2, 'Quia fugit sequi.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(179, 'willow.kihn@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Laurie Adams\"}', '771150904', '430511838', '2041930437', '{\"en\":\"Sed ut et.\"}', 174, 7, 2, 'Nihil pariatur.', '{\"en\":\"Dorris Friesen\"}', '556540291', '1573531246', '836010267', '{\"en\":\"Voluptate.\"}', 158, 1, 2, 'Et atque ex fuga.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(180, 'torp.wava@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Madie Treutel\"}', '1752037867', '609410344', '1579325746', '{\"en\":\"Porro.\"}', 184, 4, 2, 'Blanditiis dolorum.', '{\"en\":\"Henry Prohaska\"}', '2004862617', '274377613', '720253881', '{\"en\":\"Quo quas.\"}', 69, 9, 1, 'Sed aut illum.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(181, 'yfadel@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Helmer Pouros\"}', '2014717929', '1164960188', '1060036402', '{\"en\":\"Delectus.\"}', 95, 12, 2, 'Illo voluptates.', '{\"en\":\"Malika Blanda\"}', '1020202016', '1670908240', '1158071614', '{\"en\":\"Cum harum.\"}', 52, 11, 1, 'Sint dolores sed.', '2022-03-13 16:30:41', '2022-03-13 16:30:41'),
(182, 'russel.shad@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Sylvia Gerhold\"}', '1818623984', '512684195', '19516648', '{\"en\":\"Maxime.\"}', 84, 7, 2, 'Architecto et sed.', '{\"en\":\"Jessica Wilderman DDS\"}', '912911359', '1254268719', '1333884826', '{\"en\":\"Tempore.\"}', 65, 12, 1, 'Dignissimos non.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(183, 'maximillia86@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Orland Kshlerin\"}', '2143885651', '122229196', '2054533705', '{\"en\":\"Qui qui.\"}', 193, 3, 2, 'Est eveniet esse.', '{\"en\":\"Darlene Kessler\"}', '1686504246', '1326173602', '1818443316', '{\"en\":\"Amet.\"}', 8, 9, 2, 'Soluta odio.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(184, 'conn.jeff@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Howell Altenwerth Sr.\"}', '1030602806', '1437052715', '1600441374', '{\"en\":\"Nesciunt.\"}', 25, 7, 1, 'Corrupti facilis.', '{\"en\":\"Yesenia Runte\"}', '1223419512', '624161078', '307260709', '{\"en\":\"Autem.\"}', 144, 3, 2, 'Adipisci cum sed.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(185, 'bins.keara@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Einar Gerlach DVM\"}', '1479915080', '1584190056', '166593529', '{\"en\":\"Provident.\"}', 223, 12, 1, 'Optio magnam quia.', '{\"en\":\"Antwon Will\"}', '1860927295', '1700151070', '445793156', '{\"en\":\"Quo.\"}', 31, 9, 1, 'Porro qui deserunt.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(186, 'auer.kennedy@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Kathryne Schoen\"}', '746168248', '1112469971', '119226143', '{\"en\":\"Fugiat.\"}', 212, 9, 2, 'Illo fugiat quas.', '{\"en\":\"Cierra Barrows MD\"}', '1322042245', '1135594938', '105843878', '{\"en\":\"Autem.\"}', 223, 9, 2, 'In et vel ut.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(187, 'kassulke.tania@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Stevie Welch\"}', '778013977', '1563847263', '1164139497', '{\"en\":\"Veniam.\"}', 41, 3, 1, 'Modi numquam.', '{\"en\":\"Izabella Bernier MD\"}', '241969554', '13551145', '460152118', '{\"en\":\"Et.\"}', 4, 12, 1, 'Id perferendis.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(188, 'elnora.abernathy@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Felicita McKenzie\"}', '2058129751', '1070209462', '1285757097', '{\"en\":\"Quod vel.\"}', 165, 3, 2, 'Inventore sit iste.', '{\"en\":\"Aida Kemmer\"}', '569024669', '1610864373', '259928049', '{\"en\":\"Ipsam.\"}', 23, 8, 1, 'Id architecto.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(189, 'judah.goodwin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Margarett O\'Conner\"}', '926376703', '2054009660', '1335144081', '{\"en\":\"Similique.\"}', 162, 6, 2, 'Aut repellat.', '{\"en\":\"Dina Schamberger DDS\"}', '229420627', '186196882', '1045676148', '{\"en\":\"Velit.\"}', 80, 1, 2, 'Est tenetur.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(190, 'mroberts@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Anahi Morissette I\"}', '1097648347', '1926009295', '871318931', '{\"en\":\"At eos.\"}', 180, 11, 2, 'Quaerat voluptas.', '{\"en\":\"Domenick Wisoky V\"}', '1742937070', '478908419', '1849572919', '{\"en\":\"Occaecati.\"}', 31, 2, 2, 'Consectetur harum.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(191, 'josiah48@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lillian Beatty\"}', '537734758', '69885352', '1822666495', '{\"en\":\"Et.\"}', 63, 9, 2, 'Sunt officia.', '{\"en\":\"Sheila Ondricka\"}', '853582916', '77018561', '1526592677', '{\"en\":\"Rem saepe.\"}', 243, 9, 1, 'Ducimus natus.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(192, 'trinity.metz@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Keira Rutherford\"}', '1401848984', '1442575522', '2092281850', '{\"en\":\"Dolorem.\"}', 76, 4, 2, 'Nihil laboriosam.', '{\"en\":\"Dr. Abagail Wiegand\"}', '1651895165', '2129376652', '250770721', '{\"en\":\"Velit.\"}', 42, 9, 2, 'Ut et consequuntur.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(193, 'eva21@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Audie Wiza DVM\"}', '688872397', '886341160', '1362508325', '{\"en\":\"Quibusdam.\"}', 27, 2, 2, 'Animi ipsam.', '{\"en\":\"Pascale Johnston\"}', '27112954', '715533532', '945008745', '{\"en\":\"Voluptas.\"}', 90, 7, 2, 'Quis repellendus.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(194, 'mathias.kuhic@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dorcas Klocko\"}', '1777109804', '758818448', '1892627234', '{\"en\":\"Eaque.\"}', 160, 4, 1, 'Sunt pariatur autem.', '{\"en\":\"Bernhard Predovic DVM\"}', '1302741415', '1679911288', '395384453', '{\"en\":\"Hic vel.\"}', 208, 5, 2, 'Error et quo eius.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(195, 'misty78@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jettie Klein\"}', '1949460847', '969913226', '1994541193', '{\"en\":\"Illum.\"}', 90, 9, 2, 'Cupiditate vero ea.', '{\"en\":\"Stuart Murphy III\"}', '1501160520', '592464878', '140870888', '{\"en\":\"Fuga et.\"}', 56, 5, 2, 'Consectetur hic.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(196, 'grayson.mccullough@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mertie Mann DDS\"}', '98097396', '1203481203', '589608414', '{\"en\":\"Enim.\"}', 101, 11, 1, 'Maxime a dolor.', '{\"en\":\"Sydnie Stokes\"}', '2067709702', '725205107', '1337878239', '{\"en\":\"Eius.\"}', 243, 5, 1, 'Recusandae eum.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(197, 'uharvey@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Junius Klocko Sr.\"}', '1828274579', '1622860158', '743949396', '{\"en\":\"Rerum et.\"}', 158, 12, 2, 'Ab id quia minus et.', '{\"en\":\"Jaycee Ferry\"}', '1462790574', '963131514', '1962068896', '{\"en\":\"Debitis.\"}', 131, 5, 1, 'Voluptas magnam.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(198, 'gottlieb.jadon@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Allene Greenholt\"}', '1750195070', '200628978', '831027899', '{\"en\":\"Tempore.\"}', 35, 11, 1, 'Deserunt veritatis.', '{\"en\":\"Jean Collins\"}', '1914079071', '576282090', '290583951', '{\"en\":\"Tenetur.\"}', 238, 9, 1, 'Et sint debitis qui.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(199, 'fdickens@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Terrance Botsford\"}', '1963571910', '191455195', '1953663212', '{\"en\":\"Ut quasi.\"}', 197, 1, 1, 'Vitae facere.', '{\"en\":\"Mr. Alexander Howell\"}', '1632573889', '789329444', '986060780', '{\"en\":\"Ea.\"}', 148, 12, 1, 'Quia necessitatibus.', '2022-03-13 16:30:42', '2022-03-13 16:30:42'),
(200, 'plueilwitz@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Karina Cremin\"}', '1486395253', '1916252555', '2127200187', '{\"en\":\"Enim.\"}', 219, 8, 2, 'Quia voluptatem et.', '{\"en\":\"Trevion Murazik\"}', '86085562', '579616111', '1700372193', '{\"en\":\"Et quia.\"}', 205, 1, 2, 'Voluptatem dolores.', '2022-03-13 16:30:42', '2022-03-13 16:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `libraries`
--

CREATE TABLE `libraries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_15_105659_create_admins_table', 1),
(6, '2022_02_16_092615_create_grade_table', 1),
(7, '2022_02_16_093052_create_classroom_table', 1),
(8, '2022_02_16_093128_create_sections_table', 1),
(9, '2022_02_16_093639_create_bloodtypes_table', 1),
(10, '2022_02_16_094916_create_nationalities_table', 1),
(11, '2022_02_16_094928_create_religions_table', 1),
(12, '2022_02_16_094939_create_guardians_table', 1),
(13, '2022_02_16_094951_create_parent_attachments_table', 1),
(14, '2022_02_16_095003_create_foreign_keys', 1),
(15, '2022_02_16_095018_create_genders_table', 1),
(16, '2022_02_16_095030_create_specializations_table', 1),
(17, '2022_02_16_095043_create_teachers_table', 1),
(18, '2022_02_16_095057_create_teacher_sections_table', 1),
(19, '2022_02_16_095109_create_students_table', 1),
(20, '2022_02_16_095121_create_images_table', 1),
(21, '2022_02_16_095132_create_promotions_table', 1),
(22, '2022_02_16_095145_create_fees_table', 1),
(23, '2022_02_16_095156_create_fee_invoices_table', 1),
(24, '2022_02_16_095201_create_receipt_students_table', 1),
(25, '2022_02_16_095205_create_processing_fees_table', 1),
(26, '2022_02_16_095215_create_payment_students_table', 1),
(27, '2022_02_16_095220_create_student_accounts_table', 1),
(29, '2022_02_16_095304_create_attendances_table', 1),
(30, '2022_02_16_095317_create_subjects_table', 1),
(31, '2022_02_16_095329_create_quizzes_table', 1),
(32, '2022_02_16_095340_create_questions_table', 1),
(33, '2022_02_16_095351_create_online_classes_table', 1),
(34, '2022_02_16_095412_create_libraries_table', 1),
(35, '2022_02_16_095423_create_settings_table', 1),
(36, '2022_02_16_095435_create_events_table', 1),
(37, '2022_02_16_095230_create_fund_accounts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Afghan\",\"ar\":\"\\u0623\\u0641\\u063a\\u0627\\u0646\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:46', '2022-03-13 15:57:46'),
(2, '{\"en\":\"Albanian\",\"ar\":\"\\u0623\\u0644\\u0628\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:46', '2022-03-13 15:57:46'),
(3, '{\"en\":\"Aland Islander\",\"ar\":\"\\u0622\\u0644\\u0627\\u0646\\u062f\\u064a\"}', '2022-03-13 15:57:46', '2022-03-13 15:57:46'),
(4, '{\"en\":\"Algerian\",\"ar\":\"\\u062c\\u0632\\u0627\\u0626\\u0631\\u064a\"}', '2022-03-13 15:57:46', '2022-03-13 15:57:46'),
(5, '{\"en\":\"American Samoan\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a \\u0633\\u0627\\u0645\\u0648\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:46', '2022-03-13 15:57:46'),
(6, '{\"en\":\"Andorran\",\"ar\":\"\\u0623\\u0646\\u062f\\u0648\\u0631\\u064a\"}', '2022-03-13 15:57:46', '2022-03-13 15:57:46'),
(7, '{\"en\":\"Angolan\",\"ar\":\"\\u0623\\u0646\\u0642\\u0648\\u0644\\u064a\"}', '2022-03-13 15:57:46', '2022-03-13 15:57:46'),
(8, '{\"en\":\"Anguillan\",\"ar\":\"\\u0623\\u0646\\u063a\\u0648\\u064a\\u0644\\u064a\"}', '2022-03-13 15:57:46', '2022-03-13 15:57:46'),
(9, '{\"en\":\"Antarctican\",\"ar\":\"\\u0623\\u0646\\u062a\\u0627\\u0631\\u0643\\u062a\\u064a\\u0643\\u064a\"}', '2022-03-13 15:57:46', '2022-03-13 15:57:46'),
(10, '{\"en\":\"Antiguan\",\"ar\":\"\\u0628\\u0631\\u0628\\u0648\\u062f\\u064a\"}', '2022-03-13 15:57:46', '2022-03-13 15:57:46'),
(11, '{\"en\":\"Argentinian\",\"ar\":\"\\u0623\\u0631\\u062c\\u0646\\u062a\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(12, '{\"en\":\"Armenian\",\"ar\":\"\\u0623\\u0631\\u0645\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(13, '{\"en\":\"Aruban\",\"ar\":\"\\u0623\\u0648\\u0631\\u0648\\u0628\\u0647\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(14, '{\"en\":\"Australian\",\"ar\":\"\\u0623\\u0633\\u062a\\u0631\\u0627\\u0644\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(15, '{\"en\":\"Austrian\",\"ar\":\"\\u0646\\u0645\\u0633\\u0627\\u0648\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(16, '{\"en\":\"Azerbaijani\",\"ar\":\"\\u0623\\u0630\\u0631\\u0628\\u064a\\u062c\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(17, '{\"en\":\"Bahamian\",\"ar\":\"\\u0628\\u0627\\u0647\\u0627\\u0645\\u064a\\u0633\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(18, '{\"en\":\"Bahraini\",\"ar\":\"\\u0628\\u062d\\u0631\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(19, '{\"en\":\"Bangladeshi\",\"ar\":\"\\u0628\\u0646\\u063a\\u0644\\u0627\\u062f\\u064a\\u0634\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(20, '{\"en\":\"Barbadian\",\"ar\":\"\\u0628\\u0631\\u0628\\u0627\\u062f\\u0648\\u0633\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(21, '{\"en\":\"Belarusian\",\"ar\":\"\\u0631\\u0648\\u0633\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(22, '{\"en\":\"Belgian\",\"ar\":\"\\u0628\\u0644\\u062c\\u064a\\u0643\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(23, '{\"en\":\"Belizean\",\"ar\":\"\\u0628\\u064a\\u0644\\u064a\\u0632\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(24, '{\"en\":\"Beninese\",\"ar\":\"\\u0628\\u0646\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(25, '{\"en\":\"Saint Barthelmian\",\"ar\":\"\\u0633\\u0627\\u0646 \\u0628\\u0627\\u0631\\u062a\\u064a\\u0644\\u0645\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(26, '{\"en\":\"Bermudan\",\"ar\":\"\\u0628\\u0631\\u0645\\u0648\\u062f\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(27, '{\"en\":\"Bhutanese\",\"ar\":\"\\u0628\\u0648\\u062a\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(28, '{\"en\":\"Bolivian\",\"ar\":\"\\u0628\\u0648\\u0644\\u064a\\u0641\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(29, '{\"en\":\"Bosnian \\/ Herzegovinian\",\"ar\":\"\\u0628\\u0648\\u0633\\u0646\\u064a\\/\\u0647\\u0631\\u0633\\u0643\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(30, '{\"en\":\"Botswanan\",\"ar\":\"\\u0628\\u0648\\u062a\\u0633\\u0648\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(31, '{\"en\":\"Bouvetian\",\"ar\":\"\\u0628\\u0648\\u0641\\u064a\\u0647\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(32, '{\"en\":\"Brazilian\",\"ar\":\"\\u0628\\u0631\\u0627\\u0632\\u064a\\u0644\\u064a\"}', '2022-03-13 15:57:47', '2022-03-13 15:57:47'),
(33, '{\"en\":\"British Indian Ocean Territory\",\"ar\":\"\\u0625\\u0642\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0645\\u062d\\u064a\\u0637 \\u0627\\u0644\\u0647\\u0646\\u062f\\u064a \\u0627\\u0644\\u0628\\u0631\\u064a\\u0637\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(34, '{\"en\":\"Bruneian\",\"ar\":\"\\u0628\\u0631\\u0648\\u0646\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(35, '{\"en\":\"Bulgarian\",\"ar\":\"\\u0628\\u0644\\u063a\\u0627\\u0631\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(36, '{\"en\":\"Burkinabe\",\"ar\":\"\\u0628\\u0648\\u0631\\u0643\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(37, '{\"en\":\"Burundian\",\"ar\":\"\\u0628\\u0648\\u0631\\u0648\\u0646\\u064a\\u062f\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(38, '{\"en\":\"Cambodian\",\"ar\":\"\\u0643\\u0645\\u0628\\u0648\\u062f\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(39, '{\"en\":\"Cameroonian\",\"ar\":\"\\u0643\\u0627\\u0645\\u064a\\u0631\\u0648\\u0646\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(40, '{\"en\":\"Canadian\",\"ar\":\"\\u0643\\u0646\\u062f\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(41, '{\"en\":\"Cape Verdean\",\"ar\":\"\\u0627\\u0644\\u0631\\u0623\\u0633 \\u0627\\u0644\\u0623\\u062e\\u0636\\u0631\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(42, '{\"en\":\"Caymanian\",\"ar\":\"\\u0643\\u0627\\u064a\\u0645\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(43, '{\"en\":\"Central African\",\"ar\":\"\\u0623\\u0641\\u0631\\u064a\\u0642\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(44, '{\"en\":\"Chadian\",\"ar\":\"\\u062a\\u0634\\u0627\\u062f\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(45, '{\"en\":\"Chilean\",\"ar\":\"\\u0634\\u064a\\u0644\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(46, '{\"en\":\"Chinese\",\"ar\":\"\\u0635\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(47, '{\"en\":\"Christmas Islander\",\"ar\":\"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0639\\u064a\\u062f \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(48, '{\"en\":\"Cocos Islander\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0643\\u0648\\u0643\\u0648\\u0633\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(49, '{\"en\":\"Colombian\",\"ar\":\"\\u0643\\u0648\\u0644\\u0648\\u0645\\u0628\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(50, '{\"en\":\"Comorian\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0627\\u0644\\u0642\\u0645\\u0631\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(51, '{\"en\":\"Congolese\",\"ar\":\"\\u0643\\u0648\\u0646\\u063a\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(52, '{\"en\":\"Cook Islander\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0643\\u0648\\u0643\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(53, '{\"en\":\"Costa Rican\",\"ar\":\"\\u0643\\u0648\\u0633\\u062a\\u0627\\u0631\\u064a\\u0643\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(54, '{\"en\":\"Croatian\",\"ar\":\"\\u0643\\u0648\\u0631\\u0627\\u062a\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(55, '{\"en\":\"Cuban\",\"ar\":\"\\u0643\\u0648\\u0628\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(56, '{\"en\":\"Cypriot\",\"ar\":\"\\u0642\\u0628\\u0631\\u0635\\u064a\"}', '2022-03-13 15:57:48', '2022-03-13 15:57:48'),
(57, '{\"en\":\"Curacian\",\"ar\":\"\\u0643\\u0648\\u0631\\u0627\\u0633\\u0627\\u0648\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(58, '{\"en\":\"Czech\",\"ar\":\"\\u062a\\u0634\\u064a\\u0643\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(59, '{\"en\":\"Danish\",\"ar\":\"\\u062f\\u0646\\u0645\\u0627\\u0631\\u0643\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(60, '{\"en\":\"Djiboutian\",\"ar\":\"\\u062c\\u064a\\u0628\\u0648\\u062a\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(61, '{\"en\":\"Dominican\",\"ar\":\"\\u062f\\u0648\\u0645\\u064a\\u0646\\u064a\\u0643\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(62, '{\"en\":\"Dominican\",\"ar\":\"\\u062f\\u0648\\u0645\\u064a\\u0646\\u064a\\u0643\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(63, '{\"en\":\"Ecuadorian\",\"ar\":\"\\u0625\\u0643\\u0648\\u0627\\u062f\\u0648\\u0631\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(64, '{\"en\":\"Egyptian\",\"ar\":\"\\u0645\\u0635\\u0631\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(65, '{\"en\":\"Salvadoran\",\"ar\":\"\\u0633\\u0644\\u0641\\u0627\\u062f\\u0648\\u0631\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(66, '{\"en\":\"Equatorial Guinean\",\"ar\":\"\\u063a\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(67, '{\"en\":\"Eritrean\",\"ar\":\"\\u0625\\u0631\\u064a\\u062a\\u064a\\u0631\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(68, '{\"en\":\"Estonian\",\"ar\":\"\\u0627\\u0633\\u062a\\u0648\\u0646\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(69, '{\"en\":\"Ethiopian\",\"ar\":\"\\u0623\\u062b\\u064a\\u0648\\u0628\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(70, '{\"en\":\"Falkland Islander\",\"ar\":\"\\u0641\\u0648\\u0643\\u0644\\u0627\\u0646\\u062f\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(71, '{\"en\":\"Faroese\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0641\\u0627\\u0631\\u0648\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(72, '{\"en\":\"Fijian\",\"ar\":\"\\u0641\\u064a\\u062c\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(73, '{\"en\":\"Finnish\",\"ar\":\"\\u0641\\u0646\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(74, '{\"en\":\"French\",\"ar\":\"\\u0641\\u0631\\u0646\\u0633\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(75, '{\"en\":\"French Guianese\",\"ar\":\"\\u063a\\u0648\\u064a\\u0627\\u0646\\u0627 \\u0627\\u0644\\u0641\\u0631\\u0646\\u0633\\u064a\\u0629\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(76, '{\"en\":\"French Polynesian\",\"ar\":\"\\u0628\\u0648\\u0644\\u064a\\u0646\\u064a\\u0632\\u064a\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(77, '{\"en\":\"French\",\"ar\":\"\\u0623\\u0631\\u0627\\u0636 \\u0641\\u0631\\u0646\\u0633\\u064a\\u0629 \\u062c\\u0646\\u0648\\u0628\\u064a\\u0629 \\u0648\\u0623\\u0646\\u062a\\u0627\\u0631\\u062a\\u064a\\u0643\\u064a\\u0629\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(78, '{\"en\":\"Gabonese\",\"ar\":\"\\u063a\\u0627\\u0628\\u0648\\u0646\\u064a\"}', '2022-03-13 15:57:49', '2022-03-13 15:57:49'),
(79, '{\"en\":\"Gambian\",\"ar\":\"\\u063a\\u0627\\u0645\\u0628\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(80, '{\"en\":\"Georgian\",\"ar\":\"\\u062c\\u064a\\u0648\\u0631\\u062c\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(81, '{\"en\":\"German\",\"ar\":\"\\u0623\\u0644\\u0645\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(82, '{\"en\":\"Ghanaian\",\"ar\":\"\\u063a\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(83, '{\"en\":\"Gibraltar\",\"ar\":\"\\u062c\\u0628\\u0644 \\u0637\\u0627\\u0631\\u0642\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(84, '{\"en\":\"Guernsian\",\"ar\":\"\\u063a\\u064a\\u0631\\u0646\\u0632\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(85, '{\"en\":\"Greek\",\"ar\":\"\\u064a\\u0648\\u0646\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(86, '{\"en\":\"Greenlandic\",\"ar\":\"\\u062c\\u0631\\u064a\\u0646\\u0644\\u0627\\u0646\\u062f\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(87, '{\"en\":\"Grenadian\",\"ar\":\"\\u063a\\u0631\\u064a\\u0646\\u0627\\u062f\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(88, '{\"en\":\"Guadeloupe\",\"ar\":\"\\u062c\\u0632\\u0631 \\u062c\\u0648\\u0627\\u062f\\u0644\\u0648\\u0628\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(89, '{\"en\":\"Guamanian\",\"ar\":\"\\u062c\\u0648\\u0627\\u0645\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(90, '{\"en\":\"Guatemalan\",\"ar\":\"\\u063a\\u0648\\u0627\\u062a\\u064a\\u0645\\u0627\\u0644\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(91, '{\"en\":\"Guinean\",\"ar\":\"\\u063a\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(92, '{\"en\":\"Guinea-Bissauan\",\"ar\":\"\\u063a\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(93, '{\"en\":\"Guyanese\",\"ar\":\"\\u063a\\u064a\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(94, '{\"en\":\"Haitian\",\"ar\":\"\\u0647\\u0627\\u064a\\u062a\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(95, '{\"en\":\"Heard and Mc Donald Islanders\",\"ar\":\"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0647\\u064a\\u0631\\u062f \\u0648\\u062c\\u0632\\u0631 \\u0645\\u0627\\u0643\\u062f\\u0648\\u0646\\u0627\\u0644\\u062f\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(96, '{\"en\":\"Honduran\",\"ar\":\"\\u0647\\u0646\\u062f\\u0648\\u0631\\u0627\\u0633\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(97, '{\"en\":\"Hongkongese\",\"ar\":\"\\u0647\\u0648\\u0646\\u063a \\u0643\\u0648\\u0646\\u063a\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(98, '{\"en\":\"Hungarian\",\"ar\":\"\\u0645\\u062c\\u0631\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(99, '{\"en\":\"Icelandic\",\"ar\":\"\\u0622\\u064a\\u0633\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(100, '{\"en\":\"Indian\",\"ar\":\"\\u0647\\u0646\\u062f\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(101, '{\"en\":\"Manx\",\"ar\":\"\\u0645\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:50', '2022-03-13 15:57:50'),
(102, '{\"en\":\"Indonesian\",\"ar\":\"\\u0623\\u0646\\u062f\\u0648\\u0646\\u064a\\u0633\\u064a\\u064a\"}', '2022-03-13 15:57:51', '2022-03-13 15:57:51'),
(103, '{\"en\":\"Iranian\",\"ar\":\"\\u0625\\u064a\\u0631\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:51', '2022-03-13 15:57:51'),
(104, '{\"en\":\"Iraqi\",\"ar\":\"\\u0639\\u0631\\u0627\\u0642\\u064a\"}', '2022-03-13 15:57:51', '2022-03-13 15:57:51'),
(105, '{\"en\":\"Irish\",\"ar\":\"\\u0625\\u064a\\u0631\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-13 15:57:51', '2022-03-13 15:57:51'),
(106, '{\"en\":\"Italian\",\"ar\":\"\\u0625\\u064a\\u0637\\u0627\\u0644\\u064a\"}', '2022-03-13 15:57:51', '2022-03-13 15:57:51'),
(107, '{\"en\":\"Ivory Coastian\",\"ar\":\"\\u0633\\u0627\\u062d\\u0644 \\u0627\\u0644\\u0639\\u0627\\u062c\"}', '2022-03-13 15:57:51', '2022-03-13 15:57:51'),
(108, '{\"en\":\"Jersian\",\"ar\":\"\\u062c\\u064a\\u0631\\u0632\\u064a\"}', '2022-03-13 15:57:51', '2022-03-13 15:57:51'),
(109, '{\"en\":\"Jamaican\",\"ar\":\"\\u062c\\u0645\\u0627\\u064a\\u0643\\u064a\"}', '2022-03-13 15:57:51', '2022-03-13 15:57:51'),
(110, '{\"en\":\"Japanese\",\"ar\":\"\\u064a\\u0627\\u0628\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:51', '2022-03-13 15:57:51'),
(111, '{\"en\":\"Jordanian\",\"ar\":\"\\u0623\\u0631\\u062f\\u0646\\u064a\"}', '2022-03-13 15:57:51', '2022-03-13 15:57:51'),
(112, '{\"en\":\"Kazakh\",\"ar\":\"\\u0643\\u0627\\u0632\\u0627\\u062e\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:51', '2022-03-13 15:57:51'),
(113, '{\"en\":\"Kenyan\",\"ar\":\"\\u0643\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:51', '2022-03-13 15:57:51'),
(114, '{\"en\":\"I-Kiribati\",\"ar\":\"\\u0643\\u064a\\u0631\\u064a\\u0628\\u0627\\u062a\\u064a\"}', '2022-03-13 15:57:51', '2022-03-13 15:57:51'),
(115, '{\"en\":\"North Korean\",\"ar\":\"\\u0643\\u0648\\u0631\\u064a\"}', '2022-03-13 15:57:51', '2022-03-13 15:57:51'),
(116, '{\"en\":\"South Korean\",\"ar\":\"\\u0643\\u0648\\u0631\\u064a\"}', '2022-03-13 15:57:51', '2022-03-13 15:57:51'),
(117, '{\"en\":\"Kosovar\",\"ar\":\"\\u0643\\u0648\\u0633\\u064a\\u0641\\u064a\"}', '2022-03-13 15:57:51', '2022-03-13 15:57:51'),
(118, '{\"en\":\"Kuwaiti\",\"ar\":\"\\u0643\\u0648\\u064a\\u062a\\u064a\"}', '2022-03-13 15:57:51', '2022-03-13 15:57:51'),
(119, '{\"en\":\"Kyrgyzstani\",\"ar\":\"\\u0642\\u064a\\u0631\\u063a\\u064a\\u0632\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(120, '{\"en\":\"Laotian\",\"ar\":\"\\u0644\\u0627\\u0648\\u0633\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(121, '{\"en\":\"Latvian\",\"ar\":\"\\u0644\\u0627\\u062a\\u064a\\u0641\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(122, '{\"en\":\"Lebanese\",\"ar\":\"\\u0644\\u0628\\u0646\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(123, '{\"en\":\"Basotho\",\"ar\":\"\\u0644\\u064a\\u0648\\u0633\\u064a\\u062a\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(124, '{\"en\":\"Liberian\",\"ar\":\"\\u0644\\u064a\\u0628\\u064a\\u0631\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(125, '{\"en\":\"Libyan\",\"ar\":\"\\u0644\\u064a\\u0628\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(126, '{\"en\":\"Liechtenstein\",\"ar\":\"\\u0644\\u064a\\u062e\\u062a\\u0646\\u0634\\u062a\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(127, '{\"en\":\"Lithuanian\",\"ar\":\"\\u0644\\u062a\\u0648\\u0627\\u0646\\u064a\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(128, '{\"en\":\"Luxembourger\",\"ar\":\"\\u0644\\u0648\\u0643\\u0633\\u0645\\u0628\\u0648\\u0631\\u063a\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(129, '{\"en\":\"Sri Lankian\",\"ar\":\"\\u0633\\u0631\\u064a\\u0644\\u0627\\u0646\\u0643\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(130, '{\"en\":\"Macanese\",\"ar\":\"\\u0645\\u0627\\u0643\\u0627\\u0648\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(131, '{\"en\":\"Macedonian\",\"ar\":\"\\u0645\\u0642\\u062f\\u0648\\u0646\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(132, '{\"en\":\"Malagasy\",\"ar\":\"\\u0645\\u062f\\u063a\\u0634\\u0642\\u0631\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(133, '{\"en\":\"Malawian\",\"ar\":\"\\u0645\\u0627\\u0644\\u0627\\u0648\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(134, '{\"en\":\"Malaysian\",\"ar\":\"\\u0645\\u0627\\u0644\\u064a\\u0632\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(135, '{\"en\":\"Maldivian\",\"ar\":\"\\u0645\\u0627\\u0644\\u062f\\u064a\\u0641\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(136, '{\"en\":\"Malian\",\"ar\":\"\\u0645\\u0627\\u0644\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(137, '{\"en\":\"Maltese\",\"ar\":\"\\u0645\\u0627\\u0644\\u0637\\u064a\"}', '2022-03-13 15:57:52', '2022-03-13 15:57:52'),
(138, '{\"en\":\"Marshallese\",\"ar\":\"\\u0645\\u0627\\u0631\\u0634\\u0627\\u0644\\u064a\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(139, '{\"en\":\"Martiniquais\",\"ar\":\"\\u0645\\u0627\\u0631\\u062a\\u064a\\u0646\\u064a\\u0643\\u064a\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(140, '{\"en\":\"Mauritanian\",\"ar\":\"\\u0645\\u0648\\u0631\\u064a\\u062a\\u0627\\u0646\\u064a\\u064a\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(141, '{\"en\":\"Mauritian\",\"ar\":\"\\u0645\\u0648\\u0631\\u064a\\u0634\\u064a\\u0648\\u0633\\u064a\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(142, '{\"en\":\"Mahoran\",\"ar\":\"\\u0645\\u0627\\u064a\\u0648\\u062a\\u064a\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(143, '{\"en\":\"Mexican\",\"ar\":\"\\u0645\\u0643\\u0633\\u064a\\u0643\\u064a\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(144, '{\"en\":\"Micronesian\",\"ar\":\"\\u0645\\u0627\\u064a\\u0643\\u0631\\u0648\\u0646\\u064a\\u0632\\u064a\\u064a\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(145, '{\"en\":\"Moldovan\",\"ar\":\"\\u0645\\u0648\\u0644\\u062f\\u064a\\u0641\\u064a\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(146, '{\"en\":\"Monacan\",\"ar\":\"\\u0645\\u0648\\u0646\\u064a\\u0643\\u064a\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(147, '{\"en\":\"Mongolian\",\"ar\":\"\\u0645\\u0646\\u063a\\u0648\\u0644\\u064a\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(148, '{\"en\":\"Montenegrin\",\"ar\":\"\\u0627\\u0644\\u062c\\u0628\\u0644 \\u0627\\u0644\\u0623\\u0633\\u0648\\u062f\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(149, '{\"en\":\"Montserratian\",\"ar\":\"\\u0645\\u0648\\u0646\\u062a\\u0633\\u064a\\u0631\\u0627\\u062a\\u064a\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(150, '{\"en\":\"Moroccan\",\"ar\":\"\\u0645\\u063a\\u0631\\u0628\\u064a\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(151, '{\"en\":\"Mozambican\",\"ar\":\"\\u0645\\u0648\\u0632\\u0645\\u0628\\u064a\\u0642\\u064a\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(152, '{\"en\":\"Myanmarian\",\"ar\":\"\\u0645\\u064a\\u0627\\u0646\\u0645\\u0627\\u0631\\u064a\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(153, '{\"en\":\"Namibian\",\"ar\":\"\\u0646\\u0627\\u0645\\u064a\\u0628\\u064a\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(154, '{\"en\":\"Nauruan\",\"ar\":\"\\u0646\\u0648\\u0631\\u064a\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(155, '{\"en\":\"Nepalese\",\"ar\":\"\\u0646\\u064a\\u0628\\u0627\\u0644\\u064a\"}', '2022-03-13 15:57:53', '2022-03-13 15:57:53'),
(156, '{\"en\":\"Dutch\",\"ar\":\"\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(157, '{\"en\":\"Dutch Antilier\",\"ar\":\"\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(158, '{\"en\":\"New Caledonian\",\"ar\":\"\\u0643\\u0627\\u0644\\u064a\\u062f\\u0648\\u0646\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(159, '{\"en\":\"New Zealander\",\"ar\":\"\\u0646\\u064a\\u0648\\u0632\\u064a\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(160, '{\"en\":\"Nicaraguan\",\"ar\":\"\\u0646\\u064a\\u0643\\u0627\\u0631\\u0627\\u062c\\u0648\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(161, '{\"en\":\"Nigerien\",\"ar\":\"\\u0646\\u064a\\u062c\\u064a\\u0631\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(162, '{\"en\":\"Nigerian\",\"ar\":\"\\u0646\\u064a\\u062c\\u064a\\u0631\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(163, '{\"en\":\"Niuean\",\"ar\":\"\\u0646\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(164, '{\"en\":\"Norfolk Islander\",\"ar\":\"\\u0646\\u0648\\u0631\\u0641\\u0648\\u0644\\u064a\\u0643\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(165, '{\"en\":\"Northern Marianan\",\"ar\":\"\\u0645\\u0627\\u0631\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(166, '{\"en\":\"Norwegian\",\"ar\":\"\\u0646\\u0631\\u0648\\u064a\\u062c\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(167, '{\"en\":\"Omani\",\"ar\":\"\\u0639\\u0645\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(168, '{\"en\":\"Pakistani\",\"ar\":\"\\u0628\\u0627\\u0643\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(169, '{\"en\":\"Palauan\",\"ar\":\"\\u0628\\u0627\\u0644\\u0627\\u0648\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(170, '{\"en\":\"Palestinian\",\"ar\":\"\\u0641\\u0644\\u0633\\u0637\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(171, '{\"en\":\"Panamanian\",\"ar\":\"\\u0628\\u0646\\u0645\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(172, '{\"en\":\"Papua New Guinean\",\"ar\":\"\\u0628\\u0627\\u0628\\u0648\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(173, '{\"en\":\"Paraguayan\",\"ar\":\"\\u0628\\u0627\\u0631\\u063a\\u0627\\u0648\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(174, '{\"en\":\"Peruvian\",\"ar\":\"\\u0628\\u064a\\u0631\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(175, '{\"en\":\"Filipino\",\"ar\":\"\\u0641\\u0644\\u0628\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:54', '2022-03-13 15:57:54'),
(176, '{\"en\":\"Pitcairn Islander\",\"ar\":\"\\u0628\\u064a\\u062a\\u0643\\u064a\\u0631\\u0646\\u064a\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(177, '{\"en\":\"Polish\",\"ar\":\"\\u0628\\u0648\\u0644\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(178, '{\"en\":\"Portuguese\",\"ar\":\"\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\\u064a\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(179, '{\"en\":\"Puerto Rican\",\"ar\":\"\\u0628\\u0648\\u0631\\u062a\\u064a\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(180, '{\"en\":\"Qatari\",\"ar\":\"\\u0642\\u0637\\u0631\\u064a\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(181, '{\"en\":\"Reunionese\",\"ar\":\"\\u0631\\u064a\\u0648\\u0646\\u064a\\u0648\\u0646\\u064a\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(182, '{\"en\":\"Romanian\",\"ar\":\"\\u0631\\u0648\\u0645\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(183, '{\"en\":\"Russian\",\"ar\":\"\\u0631\\u0648\\u0633\\u064a\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(184, '{\"en\":\"Rwandan\",\"ar\":\"\\u0631\\u0648\\u0627\\u0646\\u062f\\u0627\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(185, '{\"ar\":\"Kittitian\\/Nevisian\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(186, '{\"en\":\"St. Martian(French)\",\"ar\":\"\\u0633\\u0627\\u064a\\u0646\\u062a \\u0645\\u0627\\u0631\\u062a\\u0646\\u064a \\u0641\\u0631\\u0646\\u0633\\u064a\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(187, '{\"en\":\"St. Martian(Dutch)\",\"ar\":\"\\u0633\\u0627\\u064a\\u0646\\u062a \\u0645\\u0627\\u0631\\u062a\\u0646\\u064a \\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(188, '{\"en\":\"St. Pierre and Miquelon\",\"ar\":\"\\u0633\\u0627\\u0646 \\u0628\\u064a\\u064a\\u0631 \\u0648\\u0645\\u064a\\u0643\\u0644\\u0648\\u0646\\u064a\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(189, '{\"en\":\"Saint Vincent and the Grenadines\",\"ar\":\"\\u0633\\u0627\\u0646\\u062a \\u0641\\u0646\\u0633\\u0646\\u062a \\u0648\\u062c\\u0632\\u0631 \\u063a\\u0631\\u064a\\u0646\\u0627\\u062f\\u064a\\u0646\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(190, '{\"en\":\"Samoan\",\"ar\":\"\\u0633\\u0627\\u0645\\u0648\\u064a\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(191, '{\"en\":\"Sammarinese\",\"ar\":\"\\u0645\\u0627\\u0631\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(192, '{\"en\":\"Sao Tomean\",\"ar\":\"\\u0633\\u0627\\u0648 \\u062a\\u0648\\u0645\\u064a \\u0648\\u0628\\u0631\\u064a\\u0646\\u0633\\u064a\\u0628\\u064a\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(193, '{\"en\":\"Saudi Arabian\",\"ar\":\"\\u0633\\u0639\\u0648\\u062f\\u064a\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(194, '{\"en\":\"Senegalese\",\"ar\":\"\\u0633\\u0646\\u063a\\u0627\\u0644\\u064a\"}', '2022-03-13 15:57:55', '2022-03-13 15:57:55'),
(195, '{\"en\":\"Serbian\",\"ar\":\"\\u0635\\u0631\\u0628\\u064a\"}', '2022-03-13 15:57:56', '2022-03-13 15:57:56'),
(196, '{\"en\":\"Seychellois\",\"ar\":\"\\u0633\\u064a\\u0634\\u064a\\u0644\\u064a\"}', '2022-03-13 15:57:56', '2022-03-13 15:57:56'),
(197, '{\"en\":\"Sierra Leonean\",\"ar\":\"\\u0633\\u064a\\u0631\\u0627\\u0644\\u064a\\u0648\\u0646\\u064a\"}', '2022-03-13 15:57:56', '2022-03-13 15:57:56'),
(198, '{\"en\":\"Singaporean\",\"ar\":\"\\u0633\\u0646\\u063a\\u0627\\u0641\\u0648\\u0631\\u064a\"}', '2022-03-13 15:57:56', '2022-03-13 15:57:56'),
(199, '{\"en\":\"Slovak\",\"ar\":\"\\u0633\\u0648\\u0644\\u0641\\u0627\\u0643\\u064a\"}', '2022-03-13 15:57:56', '2022-03-13 15:57:56'),
(200, '{\"en\":\"Slovenian\",\"ar\":\"\\u0633\\u0648\\u0644\\u0641\\u064a\\u0646\\u064a\"}', '2022-03-13 15:57:56', '2022-03-13 15:57:56'),
(201, '{\"en\":\"Solomon Island\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0633\\u0644\\u064a\\u0645\\u0627\\u0646\"}', '2022-03-13 15:57:56', '2022-03-13 15:57:56'),
(202, '{\"en\":\"Somali\",\"ar\":\"\\u0635\\u0648\\u0645\\u0627\\u0644\\u064a\"}', '2022-03-13 15:57:56', '2022-03-13 15:57:56'),
(203, '{\"en\":\"South African\",\"ar\":\"\\u0623\\u0641\\u0631\\u064a\\u0642\\u064a\"}', '2022-03-13 15:57:56', '2022-03-13 15:57:56'),
(204, '{\"en\":\"South Georgia and the South Sandwich\",\"ar\":\"\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629 \\u0627\\u0644\\u0642\\u0637\\u0628\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0646\\u0648\\u0628\\u064a\\u0629\"}', '2022-03-13 15:57:56', '2022-03-13 15:57:56'),
(205, '{\"en\":\"South Sudanese\",\"ar\":\"\\u0633\\u0648\\u0627\\u062f\\u0646\\u064a \\u062c\\u0646\\u0648\\u0628\\u064a\"}', '2022-03-13 15:57:56', '2022-03-13 15:57:56'),
(206, '{\"en\":\"Spanish\",\"ar\":\"\\u0625\\u0633\\u0628\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:56', '2022-03-13 15:57:56'),
(207, '{\"en\":\"St. Helenian\",\"ar\":\"\\u0647\\u064a\\u0644\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:56', '2022-03-13 15:57:56'),
(208, '{\"en\":\"Sudanese\",\"ar\":\"\\u0633\\u0648\\u062f\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:56', '2022-03-13 15:57:56'),
(209, '{\"en\":\"Surinamese\",\"ar\":\"\\u0633\\u0648\\u0631\\u064a\\u0646\\u0627\\u0645\\u064a\"}', '2022-03-13 15:57:56', '2022-03-13 15:57:56'),
(210, '{\"en\":\"Svalbardian\\/Jan Mayenian\",\"ar\":\"\\u0633\\u0641\\u0627\\u0644\\u0628\\u0627\\u0631\\u062f \\u0648\\u064a\\u0627\\u0646 \\u0645\\u0627\\u064a\\u0646\"}', '2022-03-13 15:57:56', '2022-03-13 15:57:56'),
(211, '{\"en\":\"Swazi\",\"ar\":\"\\u0633\\u0648\\u0627\\u0632\\u064a\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-13 15:57:56', '2022-03-13 15:57:56'),
(212, '{\"en\":\"Swedish\",\"ar\":\"\\u0633\\u0648\\u064a\\u062f\\u064a\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(213, '{\"en\":\"Swiss\",\"ar\":\"\\u0633\\u0648\\u064a\\u0633\\u0631\\u064a\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(214, '{\"en\":\"Syrian\",\"ar\":\"\\u0633\\u0648\\u0631\\u064a\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(215, '{\"en\":\"Taiwanese\",\"ar\":\"\\u062a\\u0627\\u064a\\u0648\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(216, '{\"en\":\"Tajikistani\",\"ar\":\"\\u0637\\u0627\\u062c\\u064a\\u0643\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(217, '{\"en\":\"Tanzanian\",\"ar\":\"\\u062a\\u0646\\u0632\\u0627\\u0646\\u064a\\u064a\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(218, '{\"en\":\"Thai\",\"ar\":\"\\u062a\\u0627\\u064a\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(219, '{\"en\":\"Timor-Lestian\",\"ar\":\"\\u062a\\u064a\\u0645\\u0648\\u0631\\u064a\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(220, '{\"en\":\"Togolese\",\"ar\":\"\\u062a\\u0648\\u063a\\u064a\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(221, '{\"en\":\"Tokelaian\",\"ar\":\"\\u062a\\u0648\\u0643\\u064a\\u0644\\u0627\\u0648\\u064a\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(222, '{\"en\":\"Tongan\",\"ar\":\"\\u062a\\u0648\\u0646\\u063a\\u064a\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(223, '{\"en\":\"Trinidadian\\/Tobagonian\",\"ar\":\"\\u062a\\u0631\\u064a\\u0646\\u064a\\u062f\\u0627\\u062f \\u0648\\u062a\\u0648\\u0628\\u0627\\u063a\\u0648\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(224, '{\"en\":\"Tunisian\",\"ar\":\"\\u062a\\u0648\\u0646\\u0633\\u064a\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(225, '{\"en\":\"Turkish\",\"ar\":\"\\u062a\\u0631\\u0643\\u064a\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(226, '{\"en\":\"Turkmen\",\"ar\":\"\\u062a\\u0631\\u0643\\u0645\\u0627\\u0646\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(227, '{\"en\":\"Turks and Caicos Islands\",\"ar\":\"\\u062c\\u0632\\u0631 \\u062a\\u0648\\u0631\\u0643\\u0633 \\u0648\\u0643\\u0627\\u064a\\u0643\\u0648\\u0633\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(228, '{\"en\":\"Tuvaluan\",\"ar\":\"\\u062a\\u0648\\u0641\\u0627\\u0644\\u064a\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(229, '{\"en\":\"Ugandan\",\"ar\":\"\\u0623\\u0648\\u063a\\u0646\\u062f\\u064a\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(230, '{\"en\":\"Ukrainian\",\"ar\":\"\\u0623\\u0648\\u0643\\u0631\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:57', '2022-03-13 15:57:57'),
(231, '{\"en\":\"Emirati\",\"ar\":\"\\u0625\\u0645\\u0627\\u0631\\u0627\\u062a\\u064a\"}', '2022-03-13 15:57:58', '2022-03-13 15:57:58'),
(232, '{\"en\":\"British\",\"ar\":\"\\u0628\\u0631\\u064a\\u0637\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:58', '2022-03-13 15:57:58'),
(233, '{\"en\":\"American\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\"}', '2022-03-13 15:57:58', '2022-03-13 15:57:58'),
(234, '{\"en\":\"US Minor Outlying Islander\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\"}', '2022-03-13 15:57:58', '2022-03-13 15:57:58'),
(235, '{\"en\":\"Uruguayan\",\"ar\":\"\\u0623\\u0648\\u0631\\u063a\\u0648\\u0627\\u064a\"}', '2022-03-13 15:57:58', '2022-03-13 15:57:58'),
(236, '{\"en\":\"Uzbek\",\"ar\":\"\\u0623\\u0648\\u0632\\u0628\\u0627\\u0643\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:58', '2022-03-13 15:57:58'),
(237, '{\"en\":\"Vanuatuan\",\"ar\":\"\\u0641\\u0627\\u0646\\u0648\\u0627\\u062a\\u064a\"}', '2022-03-13 15:57:58', '2022-03-13 15:57:58'),
(238, '{\"en\":\"Venezuelan\",\"ar\":\"\\u0641\\u0646\\u0632\\u0648\\u064a\\u0644\\u064a\"}', '2022-03-13 15:57:58', '2022-03-13 15:57:58'),
(239, '{\"en\":\"Vietnamese\",\"ar\":\"\\u0641\\u064a\\u062a\\u0646\\u0627\\u0645\\u064a\"}', '2022-03-13 15:57:58', '2022-03-13 15:57:58'),
(240, '{\"en\":\"American Virgin Islander\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\"}', '2022-03-13 15:57:58', '2022-03-13 15:57:58'),
(241, '{\"en\":\"Vatican\",\"ar\":\"\\u0641\\u0627\\u062a\\u064a\\u0643\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:58', '2022-03-13 15:57:58'),
(242, '{\"en\":\"Wallisian\\/Futunan\",\"ar\":\"\\u0641\\u0648\\u062a\\u0648\\u0646\\u064a\"}', '2022-03-13 15:57:58', '2022-03-13 15:57:58'),
(243, '{\"en\":\"Sahrawian\",\"ar\":\"\\u0635\\u062d\\u0631\\u0627\\u0648\\u064a\"}', '2022-03-13 15:57:58', '2022-03-13 15:57:58'),
(244, '{\"en\":\"Yemeni\",\"ar\":\"\\u064a\\u0645\\u0646\\u064a\"}', '2022-03-13 15:57:58', '2022-03-13 15:57:58'),
(245, '{\"en\":\"Zambian\",\"ar\":\"\\u0632\\u0627\\u0645\\u0628\\u064a\\u0627\\u0646\\u064a\"}', '2022-03-13 15:57:58', '2022-03-13 15:57:58'),
(246, '{\"en\":\"Zimbabwean\",\"ar\":\"\\u0632\\u0645\\u0628\\u0627\\u0628\\u0648\\u064a\"}', '2022-03-13 15:57:58', '2022-03-13 15:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `online_classes`
--

CREATE TABLE `online_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `integration` tinyint(1) NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_at` datetime NOT NULL,
  `duration` int(11) NOT NULL COMMENT 'minutes',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meeting password',
  `start_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_attachments`
--

CREATE TABLE `parent_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payment_students`
--

CREATE TABLE `payment_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_students`
--

INSERT INTO `payment_students` (`id`, `date`, `student_id`, `amount`, `description`, `created_at`, `updated_at`) VALUES
(2, '2022-03-14', 24, '2000.00', 'استرجاع رسوم الباص الترم الاول', '2022-03-14 10:39:54', '2022-03-14 11:04:07');

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
-- Table structure for table `processing_fees`
--

CREATE TABLE `processing_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `processing_fees`
--

INSERT INTO `processing_fees` (`id`, `date`, `student_id`, `amount`, `description`, `created_at`, `updated_at`) VALUES
(4, '2022-03-14', 8, '5000.00', 'استبعاد الترم الثانى', '2022-03-14 10:32:53', '2022-03-14 10:32:53'),
(5, '2022-03-14', 24, '3000.00', 'استبعاد رسوم الباص', '2022-03-14 10:37:46', '2022-03-14 10:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `from_grade` bigint(20) UNSIGNED NOT NULL,
  `from_classroom` bigint(20) UNSIGNED NOT NULL,
  `from_section` bigint(20) UNSIGNED NOT NULL,
  `to_grade` bigint(20) UNSIGNED NOT NULL,
  `to_classroom` bigint(20) UNSIGNED NOT NULL,
  `to_section` bigint(20) UNSIGNED NOT NULL,
  `academic_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `academic_year_new` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answers` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `right_answer` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `quizze_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipt_students`
--

CREATE TABLE `receipt_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `debit` decimal(8,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receipt_students`
--

INSERT INTO `receipt_students` (`id`, `date`, `student_id`, `debit`, `description`, `created_at`, `updated_at`) VALUES
(7, '2022-03-14', 8, '8000.00', 'مصاريف+باص', '2022-03-14 10:30:52', '2022-03-14 10:30:52'),
(8, '2022-03-14', 24, '8000.00', 'مصاريف+باص', '2022-03-14 10:35:01', '2022-03-14 10:35:01');

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Muslim\",\"ar\":\"\\u0645\\u0633\\u0644\\u0645\"}', '2022-03-13 15:58:07', '2022-03-13 15:58:07'),
(2, '{\"en\":\"Christian\",\"ar\":\"\\u0645\\u0633\\u064a\\u062d\\u064a\"}', '2022-03-13 15:58:07', '2022-03-13 15:58:07'),
(3, '{\"en\":\"Other\",\"ar\":\"\\u063a\\u064a\\u0631\\u0630\\u0644\\u0643\"}', '2022-03-13 15:58:07', '2022-03-13 15:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name_section`, `status`, `grade_id`, `class_id`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 1, 1, '2022-03-13 16:17:21', '2022-03-13 16:17:21'),
(2, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 1, 1, '2022-03-13 16:17:33', '2022-03-13 16:17:33'),
(3, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 1, 1, '2022-03-13 16:17:43', '2022-03-13 16:17:43'),
(4, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 1, 2, '2022-03-13 16:17:57', '2022-03-13 16:17:57'),
(5, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 1, 2, '2022-03-13 16:18:09', '2022-03-13 16:18:09'),
(6, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 1, 2, '2022-03-13 16:18:21', '2022-03-13 16:18:21'),
(7, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 3, '2022-03-13 16:18:56', '2022-03-13 16:18:56'),
(8, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 3, '2022-03-13 16:19:04', '2022-03-13 16:19:04'),
(9, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 3, '2022-03-13 16:19:14', '2022-03-13 16:19:14'),
(10, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 4, '2022-03-13 16:19:30', '2022-03-13 16:19:30'),
(11, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 4, '2022-03-13 16:19:40', '2022-03-13 16:19:40'),
(12, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 4, '2022-03-13 16:19:52', '2022-03-13 16:19:52'),
(13, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 5, '2022-03-13 16:20:15', '2022-03-13 16:20:15'),
(14, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 5, '2022-03-13 16:20:25', '2022-03-13 16:20:25'),
(15, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 5, '2022-03-13 16:20:34', '2022-03-13 16:20:34'),
(16, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 6, '2022-03-13 16:20:43', '2022-03-13 16:20:43'),
(17, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 6, '2022-03-13 16:20:55', '2022-03-13 16:20:55'),
(18, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 6, '2022-03-13 16:21:06', '2022-03-13 16:21:06'),
(19, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 7, '2022-03-13 16:21:16', '2022-03-13 16:21:16'),
(20, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 7, '2022-03-13 16:21:24', '2022-03-13 16:21:24'),
(21, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 7, '2022-03-13 16:21:33', '2022-03-13 16:21:33'),
(22, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 8, '2022-03-13 16:21:44', '2022-03-13 16:21:44'),
(23, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 8, '2022-03-13 16:21:54', '2022-03-13 16:21:54'),
(24, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 8, '2022-03-13 16:22:05', '2022-03-13 16:22:05'),
(25, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 3, 9, '2022-03-13 16:23:13', '2022-03-13 16:23:13'),
(26, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 3, 9, '2022-03-13 16:23:23', '2022-03-13 16:23:23'),
(27, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 3, 9, '2022-03-13 16:23:33', '2022-03-13 16:23:33'),
(28, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 3, 10, '2022-03-13 16:23:44', '2022-03-13 16:23:44'),
(29, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 3, 10, '2022-03-13 16:23:53', '2022-03-13 16:23:53'),
(30, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 3, 10, '2022-03-13 16:24:02', '2022-03-13 16:24:02'),
(31, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 3, 11, '2022-03-13 16:24:14', '2022-03-13 16:24:14'),
(32, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 3, 11, '2022-03-13 16:24:24', '2022-03-13 16:24:24'),
(33, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 3, 11, '2022-03-13 16:24:33', '2022-03-13 16:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'current_session', '2021-2022', NULL, NULL),
(2, 'school_title', 'MS', NULL, NULL),
(3, 'school_name', 'Mora Soft International Schools', NULL, NULL),
(4, 'end_first_term', '01-12-2021', NULL, NULL),
(5, 'end_second_term', '01-03-2022', NULL, NULL),
(6, 'phone', '0123456789', NULL, NULL),
(7, 'address', 'القاهرة', NULL, NULL),
(8, 'school_email', 'info@morasoft.com', NULL, NULL),
(9, 'logo', '1.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Arabic\",\"ar\":\"\\u0639\\u0631\\u0628\\u064a\"}', '2022-03-13 15:58:26', '2022-03-13 15:58:26'),
(2, '{\"en\":\"English\",\"ar\":\"\\u0627\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\"}', '2022-03-13 15:58:26', '2022-03-13 15:58:26'),
(3, '{\"en\":\"German\",\"ar\":\"\\u0627\\u0644\\u0645\\u0627\\u0646\\u0649\"}', '2022-03-13 15:58:26', '2022-03-13 15:58:26'),
(4, '{\"en\":\"Sciences\",\"ar\":\"\\u0639\\u0644\\u0648\\u0645\"}', '2022-03-13 15:58:26', '2022-03-13 15:58:26'),
(5, '{\"en\":\"Mathematics\",\"ar\":\"\\u0631\\u064a\\u0627\\u0636\\u064a\\u0627\\u062a\"}', '2022-03-13 15:58:26', '2022-03-13 15:58:26'),
(6, '{\"en\":\"Social Studies\",\"ar\":\"\\u062f\\u0631\\u0627\\u0633\\u0627\\u062a \\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629\"}', '2022-03-13 15:58:26', '2022-03-13 15:58:26'),
(7, '{\"en\":\"Computer\",\"ar\":\"\\u062d\\u0627\\u0633\\u0628 \\u0627\\u0644\\u064a\"}', '2022-03-13 15:58:26', '2022-03-13 15:58:26'),
(8, '{\"en\":\"Discover\",\"ar\":\"\\u0627\\u0643\\u062a\\u0634\\u0641\"}', '2022-03-13 15:58:26', '2022-03-13 15:58:26'),
(9, '{\"en\":\"religion\",\"ar\":\"\\u062f\\u064a\\u0646\"}', '2022-03-13 15:58:26', '2022-03-13 15:58:26'),
(10, '{\"en\":\"fee\",\"ar\":\"\\u0631\\u0633\\u0645\"}', '2022-03-13 15:58:26', '2022-03-13 15:58:26'),
(11, '{\"en\":\"games\",\"ar\":\"\\u0627\\u0644\\u0639\\u0627\\u0628\"}', '2022-03-13 15:58:26', '2022-03-13 15:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender_id` bigint(20) UNSIGNED NOT NULL,
  `nationalitie_id` bigint(20) UNSIGNED NOT NULL,
  `blood_id` bigint(20) UNSIGNED NOT NULL,
  `date_birth` date NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `academic_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `gender_id`, `nationalitie_id`, `blood_id`, `date_birth`, `grade_id`, `classroom_id`, `section_id`, `parent_id`, `academic_year`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Annamarie Hudson\"}', 'fermin.borer@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 131, 4, '2003-03-07', 3, 9, 6, 13, '1991', NULL, '2022-03-13 16:29:02', '2022-03-13 16:29:02'),
(2, '{\"en\":\"Hanna Wiegand\"}', 'elijah58@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 3, 12, '2012-11-06', 1, 6, 22, 73, '2022', '2022-03-13 18:25:18', '2022-03-13 16:29:02', '2022-03-13 18:25:18'),
(3, '{\"en\":\"Gardner Gottlieb\"}', 'zgulgowski@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 54, 3, '1986-09-19', 1, 8, 5, 96, '2022', '2022-03-13 18:25:38', '2022-03-13 16:29:02', '2022-03-13 18:25:38'),
(4, '{\"en\":\"Cathrine Bauch Sr.\"}', 'sallie.weissnat@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 229, 9, '1989-09-02', 4, 11, 16, 47, '2022', NULL, '2022-03-13 16:29:03', '2022-03-13 16:29:03'),
(5, '{\"en\":\"Rylee Bechtelar\"}', 'kaycee.brown@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 26, 9, '1971-04-22', 2, 7, 33, 85, '2022', NULL, '2022-03-13 16:29:03', '2022-03-13 16:29:03'),
(6, '{\"en\":\"Bo Labadie\"}', 'qemard@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 111, 5, '1992-09-01', 4, 11, 1, 40, '2022', NULL, '2022-03-13 16:29:03', '2022-03-13 16:29:03'),
(7, '{\"en\":\"Dolly Koss\"}', 'qherzog@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 228, 6, '1987-11-03', 1, 7, 7, 71, '2022', '2022-03-13 18:26:13', '2022-03-13 16:29:03', '2022-03-13 18:26:13'),
(8, '{\"en\":\"Larry Brown\",\"ar\":\"\\u0644\\u0627\\u0631\\u0649 \\u0631\\u0627\\u0648\\u0646\"}', 'shannon.christiansen@example.com', '$2y$10$JQve9WqFZoeh2TZagEjRXeBnW.5lq0iWASSsh6zB4aA0vEtWDRxiG', 1, 64, 6, '2012-08-25', 1, 1, 1, 94, '2022', NULL, '2022-03-13 16:29:03', '2022-03-13 18:33:55'),
(9, '{\"en\":\"Ashley Weber\"}', 'corwin.beryl@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 35, 1, '1970-06-18', 4, 9, 16, 78, '2022', NULL, '2022-03-13 16:29:03', '2022-03-13 16:29:03'),
(10, '{\"en\":\"Dr. Sabrina Von II\"}', 'daphnee.mueller@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 181, 2, '1991-09-27', 4, 6, 2, 12, '2022', NULL, '2022-03-13 16:29:03', '2022-03-13 16:29:03'),
(11, '{\"en\":\"Dr. Kenneth Wisoky DVM\"}', 'ocrona@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 15, 4, '2007-12-07', 4, 5, 8, 11, '2022', NULL, '2022-03-13 16:29:03', '2022-03-13 16:29:03'),
(12, '{\"en\":\"Prof. Quinten Cole I\"}', 'okuneva.ayla@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 132, 6, '1994-09-07', 1, 5, 13, 76, '2022', '2022-03-14 09:30:27', '2022-03-13 16:29:03', '2022-03-14 09:30:27'),
(13, '{\"en\":\"Sylvester Kiehn\"}', 'runolfsson.consuelo@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 148, 9, '2015-01-30', 2, 10, 12, 67, '2022', NULL, '2022-03-13 16:29:03', '2022-03-13 16:29:03'),
(14, '{\"en\":\"Dr. Sarina Ankunding\"}', 'walter74@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 82, 8, '1999-09-21', 1, 9, 21, 22, '2022\n', '2022-03-14 07:27:09', '2022-03-13 16:29:03', '2022-03-14 07:27:09'),
(15, '{\"en\":\"Prof. Horacio Smitham I\"}', 'davion.harris@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 112, 9, '2011-01-15', 4, 4, 23, 58, '2022', NULL, '2022-03-13 16:29:03', '2022-03-13 16:29:03'),
(16, '{\"en\":\"Prof. Giuseppe Boehm\"}', 'rosenbaum.marlon@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 128, 10, '2019-10-20', 4, 1, 4, 19, '2022', NULL, '2022-03-13 16:29:03', '2022-03-13 16:29:03'),
(17, '{\"en\":\"Enoch Tillman\"}', 'wiegand.deshawn@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 209, 2, '1997-12-30', 3, 10, 5, 35, '2022', NULL, '2022-03-13 16:29:03', '2022-03-13 16:29:03'),
(18, '{\"en\":\"Emely Cassin\"}', 'nikolaus.josephine@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 131, 12, '1979-04-21', 3, 2, 32, 64, '2022', NULL, '2022-03-13 16:29:03', '2022-03-13 16:29:03'),
(19, '{\"en\":\"Mayra McClure\"}', 'dheidenreich@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 125, 2, '2008-08-12', 2, 2, 19, 42, '2022', NULL, '2022-03-13 16:29:03', '2022-03-13 16:29:03'),
(20, '{\"en\":\"Dr. Joaquin Altenwerth IV\"}', 'hoeger.kamron@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 9, 12, '2015-01-14', 3, 5, 28, 100, '2022', NULL, '2022-03-13 16:29:03', '2022-03-13 16:29:03'),
(21, '{\"en\":\"Maymie Bauch\"}', 'jennifer90@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 140, 6, '2014-07-17', 1, 10, 21, 94, '2022', '2022-03-14 07:27:54', '2022-03-13 16:29:03', '2022-03-14 07:27:54'),
(22, '{\"en\":\"Alphonso Sipes\"}', 'bartell.luther@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 55, 7, '1997-09-29', 3, 8, 26, 79, '2022', NULL, '2022-03-13 16:29:03', '2022-03-13 16:29:03'),
(23, '{\"en\":\"Emilie Bayer\"}', 'doyle.rebekah@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 103, 6, '2020-05-14', 4, 9, 23, 43, '2022', NULL, '2022-03-13 16:29:03', '2022-03-13 16:29:03'),
(24, '{\"en\":\"Jessyca Bernhard\",\"ar\":\"\\u062c\\u064a\\u0633\\u064a\\u0643\\u0627 \\u0628\\u064a\\u0631\\u0646\\u0647\\u0627\\u0631\\u062f\"}', 'lehner.lee@example.net', '$2y$10$WAh3PP3B0EteMDq4Ivy6R./khKRRWL.MCzy830FIgHMAHqRNeYJPG', 1, 19, 1, '2010-01-26', 2, 3, 7, 70, '2022', NULL, '2022-03-13 16:29:04', '2022-03-14 09:32:05'),
(25, '{\"en\":\"Garland Bahringer\"}', 'pat.lowe@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 9, 12, '1984-02-27', 1, 8, 10, 84, '2022', '2022-03-14 07:28:38', '2022-03-13 16:29:04', '2022-03-14 07:28:38'),
(26, '{\"en\":\"Merl Luettgen\"}', 'bdooley@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 170, 4, '2005-02-01', 3, 2, 32, 52, '2022', NULL, '2022-03-13 16:29:04', '2022-03-13 16:29:04'),
(27, '{\"en\":\"Prof. Brenda Gleason\"}', 'leannon.ransom@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 196, 8, '1972-03-12', 2, 8, 17, 57, '2022', NULL, '2022-03-13 16:29:04', '2022-03-13 16:29:04'),
(28, '{\"en\":\"Destin Walsh\"}', 'chadd45@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 76, 6, '1994-10-11', 3, 3, 20, 46, '2022', NULL, '2022-03-13 16:29:04', '2022-03-13 16:29:04'),
(29, '{\"en\":\"Brycen Orn\"}', 'lottie.rohan@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 108, 5, '1990-05-21', 3, 5, 16, 94, '2022', NULL, '2022-03-13 16:29:04', '2022-03-13 16:29:04'),
(30, '{\"en\":\"Alisha Deckow\"}', 'felix13@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 165, 2, '1991-07-03', 4, 5, 20, 93, '2022', NULL, '2022-03-13 16:29:04', '2022-03-13 16:29:04'),
(31, '{\"en\":\"Darien Wehner\"}', 'aliza.jaskolski@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 84, 5, '1993-05-25', 4, 2, 30, 34, '2022', NULL, '2022-03-13 16:29:04', '2022-03-13 16:29:04'),
(32, '{\"en\":\"Lyla Schmidt\"}', 'medhurst.geovanny@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 196, 4, '1984-11-14', 3, 5, 31, 84, '2022', NULL, '2022-03-13 16:29:04', '2022-03-13 16:29:04'),
(33, '{\"en\":\"Jacynthe Monahan\",\"ar\":\"\\u062c\\u0627\\u0643\\u0649\\u0646\\u0633\\u0649 \\u0645\\u0648\\u0646\\u0627\\u0647\\u0627\\u0646\"}', 'mayert.aron@example.org', '$2y$10$SvbdSU1KwHpjw2F7SOSYIOzfPHHM4lQzo/wcHX0EBXUPP5fr.6wiq', 2, 64, 7, '2014-08-31', 1, 2, 4, 89, '2022', NULL, '2022-03-13 16:29:04', '2022-03-14 10:27:58'),
(34, '{\"en\":\"Andrew Macejkovic\"}', 'marjolaine.hahn@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 227, 3, '2001-03-31', 2, 8, 26, 55, '2022', NULL, '2022-03-13 16:29:04', '2022-03-13 16:29:04'),
(35, '{\"en\":\"Eldon Bechtelar\"}', 'gzieme@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 46, 7, '2016-02-22', 3, 3, 21, 17, '2022', NULL, '2022-03-13 16:29:04', '2022-03-13 16:29:04'),
(36, '{\"en\":\"Nadia Ritchie\"}', 'alisha.ritchie@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 246, 4, '1984-07-06', 4, 5, 12, 1, '2022', NULL, '2022-03-13 16:29:04', '2022-03-13 16:29:04'),
(37, '{\"en\":\"Ramona Thompson\"}', 'wiegand.elbert@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 36, 11, '1985-11-04', 2, 10, 6, 85, '2022', NULL, '2022-03-13 16:29:04', '2022-03-13 16:29:04'),
(38, '{\"en\":\"Justus Hilpert\"}', 'nona.marvin@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 141, 5, '1997-04-28', 2, 6, 19, 6, '2022', NULL, '2022-03-13 16:29:04', '2022-03-13 16:29:04'),
(39, '{\"en\":\"Mason Nicolas DDS\"}', 'wuckert.lela@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 19, 2, '1971-02-16', 3, 2, 29, 96, '2022', NULL, '2022-03-13 16:29:04', '2022-03-13 16:29:04'),
(40, '{\"en\":\"Julia Wiza\"}', 'bobby.volkman@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 185, 6, '1973-02-15', 2, 9, 2, 5, '2022', '2022-03-14 07:36:43', '2022-03-13 16:29:04', '2022-03-14 07:36:43'),
(41, '{\"en\":\"Prof. Edgar Spinka MD\",\"ar\":\"\\u0628\\u0631\\u0648\\u0641 \\u0627\\u062f\\u062c\\u0627\\u0631 \\u0633\\u0628\\u064a\\u0646\\u0643\\u0627 \\u0627\\u0645 \\u062f\\u0649\"}', 'champlin.mervin@example.com', '$2y$10$fjRD0e5r2Crt/XD6L9QqqesuCQGQ7ZXgHINBgvcDimxH/lvF3sr.O', 1, 75, 7, '2019-08-30', 2, 1, 12, 12, '2022', '2022-03-14 07:40:52', '2022-03-13 16:29:05', '2022-03-14 07:40:52'),
(42, '{\"en\":\"Vivian Larson\"}', 'ona67@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 6, 5, '1999-08-13', 1, 8, 21, 3, '2022', NULL, '2022-03-13 16:29:05', '2022-03-13 16:29:05'),
(43, '{\"en\":\"Reinhold Bahringer I\"}', 'eschultz@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 211, 1, '2021-04-21', 4, 4, 7, 2, '2022', NULL, '2022-03-13 16:29:05', '2022-03-13 16:29:05'),
(44, '{\"en\":\"Jacynthe Yost\"}', 'parisian.rae@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 15, 12, '1973-03-08', 3, 7, 14, 38, '2022', NULL, '2022-03-13 16:29:05', '2022-03-13 16:29:05'),
(45, '{\"en\":\"Dr. Terence Orn\"}', 'lpollich@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 25, 4, '2001-09-04', 4, 10, 13, 24, '2022', NULL, '2022-03-13 16:29:05', '2022-03-13 16:29:05'),
(46, '{\"en\":\"Eda Waelchi MD\"}', 'carol19@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 243, 9, '1999-04-07', 2, 10, 29, 62, '2022', NULL, '2022-03-13 16:29:05', '2022-03-13 16:29:05'),
(47, '{\"en\":\"Jamarcus Collier I\"}', 'johnpaul.collier@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 220, 9, '1995-09-03', 3, 4, 2, 31, '2022', NULL, '2022-03-13 16:29:05', '2022-03-13 16:29:05'),
(48, '{\"en\":\"Dr. Catalina Dibbert\"}', 'esther77@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 77, 6, '1989-05-28', 1, 7, 16, 93, '2022', NULL, '2022-03-13 16:29:05', '2022-03-13 16:29:05'),
(49, '{\"en\":\"Dr. Alexys Gerlach\"}', 'ubrakus@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 237, 9, '1982-12-11', 3, 6, 26, 35, '2022', NULL, '2022-03-13 16:29:05', '2022-03-13 16:29:05'),
(50, '{\"en\":\"Natasha Olson\"}', 'dahlia05@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 33, 10, '2009-12-07', 3, 8, 7, 5, '2022', NULL, '2022-03-13 16:29:05', '2022-03-13 16:29:05'),
(51, '{\"en\":\"Krystel Beier\"}', 'ymosciski@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 21, 3, '1988-12-11', 2, 5, 10, 2, '2022', NULL, '2022-03-13 16:29:05', '2022-03-13 16:29:05'),
(52, '{\"en\":\"Chaim Smitham\"}', 'vivianne.walker@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 104, 4, '1974-10-29', 1, 10, 16, 10, '2022', NULL, '2022-03-13 16:29:05', '2022-03-13 16:29:05'),
(53, '{\"en\":\"Nicola Reinger\"}', 'warren.terry@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 208, 2, '2011-11-24', 2, 5, 5, 63, '2022', NULL, '2022-03-13 16:29:05', '2022-03-13 16:29:05'),
(54, '{\"en\":\"Albina Mraz\"}', 'cheyanne11@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 126, 4, '2014-07-23', 1, 2, 23, 87, '2022', NULL, '2022-03-13 16:29:05', '2022-03-13 16:29:05'),
(55, '{\"en\":\"Prof. Robert Hoeger II\"}', 'ehills@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 84, 8, '1995-02-12', 1, 9, 17, 37, '2022', NULL, '2022-03-13 16:29:05', '2022-03-13 16:29:05'),
(56, '{\"en\":\"Anastacio Crist II\"}', 'boehm.chloe@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 43, 2, '1980-08-20', 4, 3, 2, 26, '2022', NULL, '2022-03-13 16:29:05', '2022-03-13 16:29:05'),
(57, '{\"en\":\"Cheyenne Dooley IV\"}', 'qreynolds@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 226, 5, '1993-07-07', 3, 5, 17, 18, '2022', NULL, '2022-03-13 16:29:05', '2022-03-13 16:29:05'),
(58, '{\"en\":\"Jensen Schmidt\"}', 'thad10@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 23, 8, '1983-05-30', 4, 7, 30, 11, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(59, '{\"en\":\"Ross Luettgen\"}', 'fred.toy@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 8, 2, '2021-08-24', 1, 3, 32, 62, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(60, '{\"en\":\"Adalberto Lindgren\"}', 'medhurst.taylor@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 50, 7, '1984-03-10', 1, 5, 6, 4, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(61, '{\"en\":\"Cordell Zemlak MD\"}', 'garth74@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 182, 8, '1996-06-22', 1, 7, 18, 80, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(62, '{\"en\":\"Grover Stehr\",\"ar\":\"\\u062c\\u0631\\u0648\\u0641\\u0631 \\u0633\\u062a\\u064a\\u0647\\u0631\"}', 'vince35@example.net', '$2y$10$KdskBCYwh7oJGad7Gp/fcuBqrfwBj/IWg55QH8k75sEY/HnIdHLMK', 2, 64, 6, '2012-12-26', 2, 3, 20, 56, '2022', NULL, '2022-03-13 16:29:06', '2022-03-14 07:42:13'),
(63, '{\"en\":\"Dr. Agustin Grant\"}', 'qbotsford@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 230, 12, '1971-08-10', 4, 8, 14, 32, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(64, '{\"en\":\"Miss Camylle Nolan Jr.\"}', 'hamill.sedrick@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 243, 6, '2021-03-14', 3, 11, 1, 51, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(65, '{\"en\":\"Andreane Harber\"}', 'retha68@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 156, 1, '1996-07-05', 4, 8, 30, 5, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(66, '{\"en\":\"Leanne Deckow I\"}', 'maci06@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 172, 5, '1990-02-16', 3, 5, 14, 44, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(67, '{\"en\":\"Mr. Nels Lesch\"}', 'spinka.joel@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 130, 12, '1974-05-22', 1, 5, 19, 79, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(68, '{\"en\":\"Antoinette Botsford\"}', 'raheem67@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 231, 5, '2006-12-23', 4, 7, 7, 37, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(69, '{\"en\":\"Eula Wolff\"}', 'carter.pollich@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 48, 5, '2021-03-08', 2, 11, 21, 6, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(70, '{\"en\":\"Audreanne Bayer II\"}', 'whilpert@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 104, 10, '1988-06-02', 3, 11, 14, 26, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(71, '{\"en\":\"Prof. Maida Bernhard\"}', 'clara18@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 39, 2, '2019-04-19', 3, 10, 27, 66, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(72, '{\"en\":\"Dr. Ottis Kuphal\"}', 'white.enoch@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 216, 6, '2005-07-10', 1, 1, 15, 51, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(73, '{\"en\":\"Everardo Jacobs\"}', 'skye43@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 90, 9, '1992-02-14', 2, 2, 9, 43, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(74, '{\"en\":\"Kaya Armstrong\"}', 'skyla.fadel@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 136, 7, '1972-03-17', 3, 10, 28, 38, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(75, '{\"en\":\"Dr. Janie Barrows I\"}', 'langworth.norwood@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 128, 8, '1988-09-11', 4, 9, 6, 69, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(76, '{\"en\":\"Edwin Feil V\"}', 'zoila.effertz@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 56, 9, '2015-10-23', 3, 5, 2, 44, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(77, '{\"en\":\"Jay Bogan\"}', 'afton29@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 158, 10, '2010-05-06', 1, 1, 28, 76, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(78, '{\"en\":\"Mr. Justen Cummings DDS\"}', 'hauck.parker@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 153, 7, '1995-11-02', 1, 8, 30, 79, '2022', NULL, '2022-03-13 16:29:06', '2022-03-13 16:29:06'),
(79, '{\"en\":\"Prof. Oda Hagenes Jr.\"}', 'lind.micheal@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 142, 2, '2017-07-03', 1, 2, 15, 93, '2022', NULL, '2022-03-13 16:29:07', '2022-03-13 16:29:07'),
(80, '{\"en\":\"Dr. Dock Kunde\"}', 'noe.beer@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 67, 8, '2007-12-03', 2, 5, 1, 62, '2022', NULL, '2022-03-13 16:29:07', '2022-03-13 16:29:07'),
(81, '{\"en\":\"Kathryn Botsford\"}', 'rconsidine@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 174, 3, '1982-01-16', 3, 8, 16, 21, '2022', NULL, '2022-03-13 16:29:07', '2022-03-13 16:29:07'),
(82, '{\"en\":\"Bert Ward\"}', 'beatrice31@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 41, 12, '1999-07-06', 1, 11, 4, 60, '2022', NULL, '2022-03-13 16:29:07', '2022-03-13 16:29:07'),
(83, '{\"en\":\"Archibald Deckow\"}', 'elmira.hoeger@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 53, 6, '1998-06-26', 1, 8, 24, 10, '2022', NULL, '2022-03-13 16:29:07', '2022-03-13 16:29:07'),
(84, '{\"en\":\"Dejon Heaney DDS\"}', 'daugherty.danielle@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 96, 5, '1972-11-11', 4, 2, 24, 59, '2022', NULL, '2022-03-13 16:29:07', '2022-03-13 16:29:07'),
(85, '{\"en\":\"Jayden Krajcik\"}', 'josianne.reichert@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 68, 5, '2021-12-08', 2, 3, 21, 54, '2022', NULL, '2022-03-13 16:29:07', '2022-03-13 16:29:07'),
(86, '{\"en\":\"Lilyan Reilly\"}', 'funk.katelynn@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 244, 1, '2019-11-20', 1, 3, 21, 10, '2022', NULL, '2022-03-13 16:29:07', '2022-03-13 16:29:07'),
(87, '{\"en\":\"Queenie Crooks\"}', 'carole.marquardt@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 20, 8, '2007-06-29', 3, 1, 7, 81, '2022', NULL, '2022-03-13 16:29:07', '2022-03-13 16:29:07'),
(88, '{\"en\":\"Corrine Olson\"}', 'evie20@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 192, 4, '1989-09-25', 4, 1, 33, 98, '2022', NULL, '2022-03-13 16:29:07', '2022-03-13 16:29:07'),
(89, '{\"en\":\"Cathy Cruickshank\"}', 'sydni.oconner@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 103, 11, '1996-04-04', 3, 4, 25, 62, '2022', NULL, '2022-03-13 16:29:07', '2022-03-13 16:29:07'),
(90, '{\"en\":\"Mara Heller II\"}', 'caleb37@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 190, 2, '1982-02-28', 2, 7, 27, 8, '2022', NULL, '2022-03-13 16:29:07', '2022-03-13 16:29:07'),
(91, '{\"en\":\"Dr. Leland Zboncak III\"}', 'beryl81@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 100, 12, '1983-08-24', 1, 9, 20, 5, '2022', NULL, '2022-03-13 16:29:07', '2022-03-13 16:29:07'),
(92, '{\"en\":\"Kameron Torphy\"}', 'wanda08@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 75, 12, '1998-02-15', 2, 6, 13, 83, '2022', NULL, '2022-03-13 16:29:07', '2022-03-13 16:29:07'),
(93, '{\"en\":\"Mr. German Toy PhD\"}', 'raoul.kassulke@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 60, 6, '1982-11-20', 2, 5, 18, 99, '2022', NULL, '2022-03-13 16:29:07', '2022-03-13 16:29:07'),
(94, '{\"en\":\"Ivy Stark\"}', 'paris.schuppe@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 38, 7, '2012-03-31', 1, 4, 8, 1, '2022', NULL, '2022-03-13 16:29:07', '2022-03-13 16:29:07'),
(95, '{\"en\":\"Magali Lebsack\"}', 'mohr.sadye@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 216, 5, '1978-09-28', 1, 5, 9, 82, '2022', NULL, '2022-03-13 16:29:07', '2022-03-13 16:29:07'),
(96, '{\"en\":\"Dr. Arnold O\'Conner\"}', 'oterry@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 155, 10, '1988-11-17', 2, 1, 31, 59, '2022', NULL, '2022-03-13 16:29:08', '2022-03-13 16:29:08'),
(97, '{\"en\":\"Mrs. Ivory Predovic DDS\"}', 'vicente.weimann@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 79, 4, '1977-09-05', 4, 3, 30, 12, '2022', NULL, '2022-03-13 16:29:08', '2022-03-13 16:29:08'),
(98, '{\"en\":\"Marcelina Dach\"}', 'qstoltenberg@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 205, 9, '2002-07-17', 3, 3, 25, 63, '2022', NULL, '2022-03-13 16:29:08', '2022-03-13 16:29:08'),
(99, '{\"en\":\"Miss Aniyah Will\"}', 'ehoppe@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 22, 5, '2002-08-30', 4, 3, 4, 67, '2022', NULL, '2022-03-13 16:29:08', '2022-03-13 16:29:08'),
(100, '{\"en\":\"Ms. Reyna Dooley V\"}', 'idooley@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 7, 10, '1970-06-06', 2, 2, 27, 30, '2022', NULL, '2022-03-13 16:29:08', '2022-03-13 16:29:08'),
(101, '{\"en\":\"Prof. Jovanny Upton\"}', 'juston.sauer@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 89, 2, '2009-07-21', 4, 8, 21, 134, '2022', NULL, '2022-03-13 16:30:58', '2022-03-13 16:30:58'),
(102, '{\"en\":\"Mitchell Gaylord IV\"}', 'jerrold81@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 38, 12, '2000-09-15', 1, 7, 19, 161, '2022', NULL, '2022-03-13 16:30:58', '2022-03-13 16:30:58'),
(103, '{\"en\":\"Tommie Farrell MD\"}', 'dach.jonathan@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 77, 12, '2002-07-31', 2, 6, 17, 167, '2022', NULL, '2022-03-13 16:30:58', '2022-03-13 16:30:58'),
(104, '{\"en\":\"Mrs. Pat Stiedemann\"}', 'keeling.lysanne@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 114, 11, '2014-08-18', 1, 2, 15, 4, '2022', NULL, '2022-03-13 16:30:58', '2022-03-13 16:30:58'),
(105, '{\"en\":\"Cole Erdman\"}', 'damore.ellie@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 170, 10, '1994-08-18', 2, 5, 26, 196, '2022', NULL, '2022-03-13 16:30:58', '2022-03-13 16:30:58'),
(106, '{\"en\":\"Ottis Waters\"}', 'pnader@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 130, 10, '1985-08-10', 3, 6, 13, 178, '2022', NULL, '2022-03-13 16:30:58', '2022-03-13 16:30:58'),
(107, '{\"en\":\"Ms. Vicenta Gerhold MD\"}', 'dahlia.dubuque@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 143, 9, '2011-11-16', 4, 4, 17, 100, '2022', NULL, '2022-03-13 16:30:58', '2022-03-13 16:30:58'),
(108, '{\"en\":\"Laron Howell V\"}', 'baumbach.ardella@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 236, 11, '1999-12-02', 2, 5, 13, 83, '2022', NULL, '2022-03-13 16:30:58', '2022-03-13 16:30:58'),
(109, '{\"en\":\"Simone Hintz\"}', 'walter.clementine@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 233, 3, '1993-03-27', 2, 10, 18, 126, '2022', NULL, '2022-03-13 16:30:58', '2022-03-13 16:30:58'),
(110, '{\"en\":\"Maya Marks III\"}', 'vergie67@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 167, 6, '1970-09-06', 3, 7, 18, 166, '2022', NULL, '2022-03-13 16:30:58', '2022-03-13 16:30:58'),
(111, '{\"en\":\"Agustin Mohr\"}', 'rickey.damore@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 136, 10, '1971-10-13', 4, 11, 10, 178, '2022', NULL, '2022-03-13 16:30:58', '2022-03-13 16:30:58'),
(112, '{\"en\":\"Prof. Lulu Haag\"}', 'orrin.farrell@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 55, 11, '1993-11-17', 1, 7, 21, 10, '2022', NULL, '2022-03-13 16:30:59', '2022-03-13 16:30:59'),
(113, '{\"en\":\"Floy Robel Jr.\"}', 'novella57@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 66, 3, '2011-10-03', 3, 11, 16, 118, '2022', NULL, '2022-03-13 16:30:59', '2022-03-13 16:30:59'),
(114, '{\"en\":\"Faye Lebsack\"}', 'bogan.terrell@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 205, 1, '1986-04-28', 4, 3, 2, 37, '2022', NULL, '2022-03-13 16:30:59', '2022-03-13 16:30:59'),
(115, '{\"en\":\"Ms. Pearl Nicolas\"}', 'yschneider@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 148, 5, '1976-10-30', 3, 4, 10, 98, '2022', NULL, '2022-03-13 16:30:59', '2022-03-13 16:30:59'),
(116, '{\"en\":\"Prof. Kylie Schroeder\"}', 'jblock@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 195, 10, '1982-05-03', 2, 8, 6, 102, '2022', NULL, '2022-03-13 16:30:59', '2022-03-13 16:30:59'),
(117, '{\"en\":\"Lucas Kuhic\"}', 'lina.simonis@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 209, 9, '2012-03-25', 2, 1, 2, 106, '2022', NULL, '2022-03-13 16:30:59', '2022-03-13 16:30:59'),
(118, '{\"en\":\"Tyreek Hammes\"}', 'gudrun23@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 184, 1, '1999-01-26', 2, 4, 29, 46, '2022', NULL, '2022-03-13 16:30:59', '2022-03-13 16:30:59'),
(119, '{\"en\":\"Bryce Boyle\"}', 'vschinner@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 137, 6, '1984-09-12', 2, 5, 25, 128, '2022', NULL, '2022-03-13 16:30:59', '2022-03-13 16:30:59'),
(120, '{\"en\":\"Kamille Emmerich\"}', 'teagan27@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 195, 2, '1991-11-29', 1, 7, 1, 4, '2022', NULL, '2022-03-13 16:30:59', '2022-03-13 16:30:59'),
(121, '{\"en\":\"Dr. Osborne Steuber Jr.\"}', 'velda.kuhn@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 136, 12, '1976-08-02', 1, 4, 28, 146, '2022', NULL, '2022-03-13 16:30:59', '2022-03-13 16:30:59'),
(122, '{\"en\":\"Miss Earlene Tremblay DVM\"}', 'lew35@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 3, 4, '2019-02-02', 4, 6, 15, 114, '2022', NULL, '2022-03-13 16:30:59', '2022-03-13 16:30:59'),
(123, '{\"en\":\"Sigurd Hill IV\"}', 'laurianne87@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 183, 5, '2014-05-15', 1, 4, 29, 49, '2022', NULL, '2022-03-13 16:30:59', '2022-03-13 16:30:59'),
(124, '{\"en\":\"Mr. Timothy Gusikowski DDS\"}', 'mcglynn.cecilia@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 17, 12, '2003-06-21', 4, 9, 28, 69, '2022', NULL, '2022-03-13 16:30:59', '2022-03-13 16:30:59'),
(125, '{\"en\":\"Deborah Schamberger\"}', 'sdicki@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 62, 3, '2011-06-08', 2, 6, 20, 38, '2022', NULL, '2022-03-13 16:30:59', '2022-03-13 16:30:59'),
(126, '{\"en\":\"Mr. Dario Goldner MD\"}', 'rod.boehm@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 33, 7, '1978-08-30', 3, 3, 10, 43, '2022', NULL, '2022-03-13 16:30:59', '2022-03-13 16:30:59'),
(127, '{\"en\":\"Berenice Mraz Sr.\"}', 'mullrich@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 60, 5, '1978-11-03', 3, 7, 29, 189, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(128, '{\"en\":\"Concepcion Ziemann\"}', 'rosanna.hirthe@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 103, 6, '1973-04-09', 1, 1, 5, 160, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(129, '{\"en\":\"Miss Vickie O\'Conner DDS\"}', 'cody.schoen@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 103, 9, '1972-10-02', 1, 10, 2, 154, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(130, '{\"en\":\"Prof. Ramon Rolfson MD\"}', 'dosinski@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 38, 2, '1978-10-17', 1, 2, 31, 72, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(131, '{\"en\":\"Ursula Rau PhD\"}', 'jaida44@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 182, 5, '1978-07-11', 4, 8, 14, 19, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(132, '{\"en\":\"Tomasa Harber\"}', 'rwilkinson@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 88, 7, '1971-06-15', 1, 6, 30, 116, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(133, '{\"en\":\"Murl Balistreri\"}', 'hand.kurt@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 170, 7, '2015-05-18', 1, 6, 23, 95, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(134, '{\"en\":\"Mr. Miller Schumm MD\"}', 'lavinia24@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 88, 10, '1972-08-09', 4, 2, 7, 190, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(135, '{\"en\":\"Dr. Elisha Quigley\"}', 'larue.connelly@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 25, 1, '1971-10-04', 3, 2, 19, 47, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(136, '{\"en\":\"Belle O\'Hara\"}', 'xmraz@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 161, 6, '2000-03-15', 1, 3, 20, 158, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(137, '{\"en\":\"Mr. Jeff Mosciski III\"}', 'carroll38@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 83, 12, '2021-09-12', 3, 2, 28, 106, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(138, '{\"en\":\"Miss Martine Luettgen Sr.\"}', 'melody.kertzmann@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 89, 4, '1993-06-22', 4, 9, 7, 160, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(139, '{\"en\":\"Yazmin Daugherty\"}', 'qvon@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 239, 6, '1978-07-18', 3, 6, 27, 88, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(140, '{\"en\":\"Horace Parker II\"}', 'ludwig.schroeder@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 69, 10, '1984-07-07', 1, 9, 28, 156, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(141, '{\"en\":\"Lisandro Kirlin\"}', 'jamil.murazik@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 92, 2, '2018-12-27', 2, 8, 13, 110, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(142, '{\"en\":\"Solon Funk MD\"}', 'maudie.deckow@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 203, 2, '1981-03-21', 1, 4, 24, 170, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(143, '{\"en\":\"Gabriel Hodkiewicz\"}', 'gaylord.kailey@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 40, 9, '1984-09-14', 2, 9, 11, 130, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(144, '{\"en\":\"Coty Medhurst\"}', 'ghamill@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 30, 9, '1973-05-30', 1, 1, 4, 48, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(145, '{\"en\":\"Drew Gutkowski\"}', 'francesco22@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 211, 9, '2016-11-03', 3, 9, 29, 49, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(146, '{\"en\":\"Miss Jannie Harvey\"}', 'jessica85@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 132, 10, '2015-08-31', 4, 8, 11, 131, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(147, '{\"en\":\"Barbara Walter\"}', 'ofadel@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 82, 11, '2015-12-22', 2, 3, 1, 64, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(148, '{\"en\":\"Kaylah Grimes\"}', 'gideon.bode@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 22, 7, '1990-03-20', 1, 3, 2, 48, '2022', NULL, '2022-03-13 16:31:00', '2022-03-13 16:31:00'),
(149, '{\"en\":\"Demario Steuber\"}', 'hoeger.dax@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 136, 6, '1989-12-05', 2, 10, 15, 5, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(150, '{\"en\":\"Mrs. Ramona Beier MD\"}', 'abernathy.colin@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 196, 10, '1991-03-21', 2, 9, 17, 97, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(151, '{\"en\":\"Kristofer Hudson\"}', 'mjohns@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 230, 10, '1991-03-03', 4, 7, 14, 7, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(152, '{\"en\":\"Manuela Bernhard\"}', 'kayla.dietrich@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 241, 4, '1978-04-24', 3, 4, 25, 22, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(153, '{\"en\":\"Harmony Stark\"}', 'grimes.samanta@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 42, 2, '2015-05-24', 2, 3, 30, 142, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(154, '{\"en\":\"Leila Parker IV\"}', 'owilderman@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 246, 6, '1977-06-23', 1, 7, 28, 177, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(155, '{\"en\":\"Sierra Schuster\"}', 'pbashirian@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 37, 1, '2021-06-29', 4, 11, 7, 100, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(156, '{\"en\":\"Anastasia Rath\"}', 'aiden18@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 8, 2, '1982-08-25', 2, 10, 17, 16, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(157, '{\"en\":\"Prof. Jazlyn Larson\"}', 'estevan.thompson@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 225, 9, '2019-06-06', 2, 4, 22, 50, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(158, '{\"en\":\"Eliza D\'Amore\"}', 'hilpert.lindsay@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 231, 5, '1986-02-01', 1, 11, 19, 153, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(159, '{\"en\":\"Cecilia Maggio\"}', 'swaniawski.otto@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 232, 1, '1975-08-24', 1, 2, 5, 30, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(160, '{\"en\":\"Ms. Joanny Morissette\"}', 'barton.nichole@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 163, 10, '1987-03-13', 4, 11, 13, 118, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(161, '{\"en\":\"Aditya Ledner III\"}', 'uwalker@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 92, 3, '2006-01-17', 2, 4, 6, 5, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(162, '{\"en\":\"Ms. Julia Swaniawski PhD\"}', 'schinner.gisselle@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 17, 6, '1982-01-08', 2, 8, 12, 101, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(163, '{\"en\":\"Prof. Elta Ebert\"}', 'quinton.gusikowski@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 139, 12, '1990-04-13', 3, 7, 27, 121, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(164, '{\"en\":\"Prof. Madonna Mraz DVM\"}', 'lbeier@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 138, 12, '2011-05-19', 4, 10, 30, 89, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(165, '{\"en\":\"George Maggio\"}', 'simone.torp@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 149, 7, '1972-07-07', 4, 6, 30, 83, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(166, '{\"en\":\"Dr. Delaney Mertz DVM\"}', 'leonard.renner@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 171, 1, '1990-12-06', 1, 11, 16, 85, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(167, '{\"en\":\"Macie Green\"}', 'milton14@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 166, 2, '1991-12-14', 4, 7, 33, 87, '2022', NULL, '2022-03-13 16:31:01', '2022-03-13 16:31:01'),
(168, '{\"en\":\"Percival Lehner\"}', 'tyreek93@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 54, 7, '2004-12-05', 3, 10, 4, 32, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(169, '{\"en\":\"Bradley Gottlieb\"}', 'dbraun@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 108, 3, '2016-05-29', 1, 10, 15, 72, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(170, '{\"en\":\"Kitty Lebsack PhD\"}', 'howell99@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 186, 7, '2015-01-22', 3, 2, 8, 192, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(171, '{\"en\":\"Mr. Pietro Grant IV\"}', 'babshire@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 6, 5, '1998-12-16', 3, 4, 1, 171, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(172, '{\"en\":\"Sterling Lockman\"}', 'mateo28@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 240, 4, '1982-05-24', 2, 10, 10, 97, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(173, '{\"en\":\"Lavada Keeling\"}', 'eloy62@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 216, 9, '1999-01-05', 4, 11, 11, 72, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(174, '{\"en\":\"Clifton Macejkovic\"}', 'wiegand.otto@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 133, 12, '2020-07-03', 3, 3, 19, 12, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(175, '{\"en\":\"Casandra Corwin\"}', 'eunice29@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 65, 9, '1979-01-18', 1, 4, 24, 19, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(176, '{\"en\":\"Prof. Sven Johns Jr.\"}', 'noemie.muller@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 183, 9, '1974-03-13', 2, 8, 8, 39, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(177, '{\"en\":\"Mrs. Aubree Predovic\"}', 'brakus.macie@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 47, 10, '2000-02-19', 3, 11, 1, 43, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(178, '{\"en\":\"Brad Stark\"}', 'kkirlin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 217, 6, '2011-06-27', 4, 7, 31, 162, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(179, '{\"en\":\"Dr. Alanna Hackett\"}', 'iparisian@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 12, 11, '1983-08-25', 2, 6, 32, 182, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(180, '{\"en\":\"Micheal Mante\"}', 'bud.langworth@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 119, 9, '2010-04-02', 1, 9, 3, 110, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(181, '{\"en\":\"Dr. Haylee Schiller\"}', 'gkihn@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 161, 5, '2020-06-06', 4, 1, 3, 57, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(182, '{\"en\":\"Leland Gottlieb\"}', 'ethyl.deckow@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 175, 9, '2008-06-23', 4, 3, 11, 143, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(183, '{\"en\":\"Dr. Velva Lehner DDS\"}', 'fjacobs@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 125, 3, '1976-03-19', 2, 10, 25, 195, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(184, '{\"en\":\"Shania Feest II\"}', 'lue.walsh@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 44, 8, '1984-08-28', 1, 11, 6, 86, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(185, '{\"en\":\"Sharon Mayer\"}', 'schiller.maeve@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 112, 6, '2008-03-09', 3, 5, 27, 38, '2022', NULL, '2022-03-13 16:31:02', '2022-03-13 16:31:02'),
(186, '{\"en\":\"Queen Johns III\"}', 'athena92@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 170, 6, '2002-06-05', 3, 1, 2, 3, '2022', NULL, '2022-03-13 16:31:03', '2022-03-13 16:31:03'),
(187, '{\"en\":\"Armani Hane\"}', 'nhills@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 188, 3, '1993-10-09', 3, 1, 29, 34, '2022', NULL, '2022-03-13 16:31:03', '2022-03-13 16:31:03'),
(188, '{\"en\":\"Reginald Hyatt III\"}', 'clarissa10@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 88, 4, '1988-02-17', 2, 8, 25, 22, '2022', NULL, '2022-03-13 16:31:03', '2022-03-13 16:31:03'),
(189, '{\"en\":\"Dr. Brisa Streich\"}', 'okeefe.tatyana@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 4, 2, '1995-10-06', 4, 4, 7, 112, '2022', NULL, '2022-03-13 16:31:03', '2022-03-13 16:31:03'),
(190, '{\"en\":\"Eula DuBuque\"}', 'brown.clyde@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 45, 5, '1985-10-03', 1, 8, 2, 186, '2022', NULL, '2022-03-13 16:31:03', '2022-03-13 16:31:03'),
(191, '{\"en\":\"Cathryn Hyatt Jr.\"}', 'clara.king@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 2, 7, '1978-07-30', 4, 7, 21, 59, '2022', NULL, '2022-03-13 16:31:03', '2022-03-13 16:31:03'),
(192, '{\"en\":\"Prof. Kailey Hettinger V\"}', 'buckridge.collin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 80, 8, '1991-12-06', 4, 10, 27, 40, '2022', NULL, '2022-03-13 16:31:03', '2022-03-13 16:31:03'),
(193, '{\"en\":\"Jennifer Schroeder\"}', 'loren10@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 207, 7, '1982-07-03', 2, 6, 20, 143, '2022', NULL, '2022-03-13 16:31:03', '2022-03-13 16:31:03'),
(194, '{\"en\":\"Vida Anderson\"}', 'john18@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 34, 2, '2004-05-04', 1, 11, 3, 139, '2022', NULL, '2022-03-13 16:31:03', '2022-03-13 16:31:03'),
(195, '{\"en\":\"Dr. Lexi Johnston\"}', 'xjaskolski@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 74, 2, '2011-11-29', 3, 6, 24, 119, '2022', NULL, '2022-03-13 16:31:03', '2022-03-13 16:31:03'),
(196, '{\"en\":\"Dr. Unique Koch\"}', 'ruthie18@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 84, 4, '1972-02-17', 2, 3, 11, 192, '2022', NULL, '2022-03-13 16:31:03', '2022-03-13 16:31:03'),
(197, '{\"en\":\"Elta Wintheiser\"}', 'lgrady@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 205, 11, '1988-07-21', 3, 1, 14, 168, '2022', NULL, '2022-03-13 16:31:03', '2022-03-13 16:31:03'),
(198, '{\"en\":\"Art Collins I\"}', 'christophe21@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 150, 2, '2008-02-24', 3, 4, 14, 15, '2022', NULL, '2022-03-13 16:31:03', '2022-03-13 16:31:03'),
(199, '{\"en\":\"Mr. Cicero Abernathy\"}', 'brown.damian@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 119, 8, '2008-07-13', 1, 10, 17, 156, '2022', NULL, '2022-03-13 16:31:03', '2022-03-13 16:31:03'),
(200, '{\"en\":\"Caroline McClure\"}', 'treutel.chadd@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 67, 11, '1973-10-01', 1, 4, 23, 34, '2022', NULL, '2022-03-13 16:31:03', '2022-03-13 16:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `student_accounts`
--

CREATE TABLE `student_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receipt_id` bigint(20) UNSIGNED DEFAULT NULL,
  `processing_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `debit` decimal(8,2) DEFAULT NULL,
  `credit` decimal(8,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_accounts`
--

INSERT INTO `student_accounts` (`id`, `date`, `type`, `fee_invoice_id`, `receipt_id`, `processing_id`, `payment_id`, `student_id`, `debit`, `credit`, `description`, `created_at`, `updated_at`) VALUES
(19, '2022-03-14', 'invoice', 10, NULL, NULL, NULL, 8, '10000.00', '0.00', 'قيمة رسوم دراسية', '2022-03-14 10:25:16', '2022-03-14 10:25:16'),
(20, '2022-03-14', 'invoice', 11, NULL, NULL, NULL, 8, '3000.00', '0.00', 'قيمة رسوم اتوبيس 2022', '2022-03-14 10:25:16', '2022-03-14 10:25:16'),
(21, '2022-03-14', 'invoice', 12, NULL, NULL, NULL, 33, '10000.00', '0.00', 'قيمة رسوم دراسية', '2022-03-14 10:28:45', '2022-03-14 10:28:45'),
(22, '2022-03-14', 'invoice', 13, NULL, NULL, NULL, 33, '3000.00', '0.00', 'قيمة رسوم اتوبيس', '2022-03-14 10:28:45', '2022-03-14 10:28:45'),
(23, '2022-03-14', 'receipt', NULL, 7, NULL, NULL, 8, '0.00', '8000.00', 'مصاريف+باص', '2022-03-14 10:30:52', '2022-03-14 10:30:52'),
(24, '2022-03-14', 'ProcessingFee', NULL, NULL, 4, NULL, 8, '0.00', '5000.00', 'استبعاد الترم الثانى', '2022-03-14 10:32:53', '2022-03-14 10:32:53'),
(25, '2022-03-14', 'receipt', NULL, 8, NULL, NULL, 24, '0.00', '8000.00', 'مصاريف+باص', '2022-03-14 10:35:01', '2022-03-14 10:35:01'),
(26, '2022-03-14', 'ProcessingFee', NULL, NULL, 5, NULL, 24, '0.00', '3000.00', 'استبعاد رسوم الباص', '2022-03-14 10:37:46', '2022-03-14 10:37:46'),
(27, '2022-03-14', 'payment', NULL, NULL, NULL, 2, 24, '2000.00', '0.00', 'استرجاع رسوم الباص الترم الاول', '2022-03-14 10:39:54', '2022-03-14 11:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialization_id` bigint(20) UNSIGNED NOT NULL,
  `gender_id` bigint(20) UNSIGNED NOT NULL,
  `joining_date` date NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `email`, `password`, `name`, `specialization_id`, `gender_id`, `joining_date`, `address`, `created_at`, `updated_at`) VALUES
(1, 'monroe.gislason@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Eden O\'Keefe\"}', 11, 2, '2001-02-27', 'Aliquam mollitia.', '2022-03-13 16:26:19', '2022-03-13 16:26:19'),
(2, 'gaetano39@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Alec Shanahan\"}', 4, 2, '1971-08-15', 'Nihil nesciunt est.', '2022-03-13 16:26:19', '2022-03-13 16:26:19'),
(3, 'hansen.barbara@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Katheryn Swift V\"}', 9, 1, '1979-04-07', 'Nihil ab iure omnis.', '2022-03-13 16:26:19', '2022-03-13 16:26:19'),
(4, 'trycia09@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Dax Wiegand PhD\"}', 1, 2, '1984-02-25', 'Culpa mollitia in.', '2022-03-13 16:26:19', '2022-03-13 16:26:19'),
(5, 'jaiden.schumm@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kristian Borer\"}', 11, 2, '2004-01-15', 'Facere et dolorem.', '2022-03-13 16:26:19', '2022-03-13 16:26:19'),
(6, 'micaela93@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Deion Williamson\"}', 6, 1, '2006-04-03', 'Aliquid blanditiis.', '2022-03-13 16:26:19', '2022-03-13 16:26:19'),
(7, 'rosella30@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ezekiel Nienow I\"}', 5, 2, '1981-03-05', 'Et iusto expedita.', '2022-03-13 16:26:20', '2022-03-13 16:26:20'),
(8, 'kristoffer.rogahn@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lavada Schmitt\"}', 3, 2, '1991-05-09', 'Non eligendi dolor.', '2022-03-13 16:26:20', '2022-03-13 16:26:20'),
(9, 'xrowe@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kobe Cassin\"}', 2, 1, '1992-05-10', 'Molestiae fuga.', '2022-03-13 16:26:20', '2022-03-13 16:26:20'),
(10, 'judy.gleason@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Elliot Ruecker\"}', 5, 2, '2014-07-28', 'Occaecati inventore.', '2022-03-13 16:26:20', '2022-03-13 16:26:20'),
(11, 'makayla.reichert@example.com', '$2y$10$c/VhX7hOBdXIOV0Cj2542uEDV1BEturBjf88tA0Tzco9KtzPK21P.', '{\"en\":\"Roberta Wuckert\",\"ar\":\"\\u0631\\u0648\\u0628\\u0631\\u062a \\u0648\\u064a\\u0643\\u0631\\u062a\"}', 2, 2, '2000-11-24', 'Veritatis totam.', '2022-03-13 16:26:20', '2022-03-13 16:50:53'),
(12, 'cathy93@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Keegan Gutmann\"}', 1, 2, '1994-10-26', 'Quos voluptatem et.', '2022-03-13 16:26:20', '2022-03-13 16:26:20'),
(13, 'bauch.pedro@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Cade Waelchi\"}', 6, 1, '2016-06-26', 'Officiis numquam at.', '2022-03-13 16:26:20', '2022-03-13 16:26:20'),
(14, 'ukautzer@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Josianne Ratke DVM\"}', 7, 1, '1974-03-16', 'Quae provident modi.', '2022-03-13 16:26:20', '2022-03-13 16:26:20'),
(15, 'rocky.bode@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Madalyn Herzog\"}', 2, 1, '1987-10-11', 'Incidunt aut in.', '2022-03-13 16:26:20', '2022-03-13 16:26:20'),
(16, 'wolf.catharine@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Annamae Bashirian\"}', 6, 2, '2011-09-29', 'Porro optio ducimus.', '2022-03-13 16:26:20', '2022-03-13 16:26:20'),
(17, 'maribel55@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jo Auer\"}', 5, 2, '2010-08-28', 'Non voluptatum.', '2022-03-13 16:26:20', '2022-03-13 16:26:20'),
(18, 'lawrence40@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Herta Barton\"}', 9, 1, '1988-06-14', 'Non sequi saepe eum.', '2022-03-13 16:26:20', '2022-03-13 16:26:20'),
(19, 'gmcglynn@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jayda Balistreri\"}', 11, 1, '2004-06-30', 'Quia et illo.', '2022-03-13 16:26:20', '2022-03-13 16:26:20'),
(20, 'pgerhold@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Anderson Armstrong DDS\"}', 10, 1, '1981-01-13', 'Voluptatem.', '2022-03-13 16:26:20', '2022-03-13 16:26:20'),
(21, 'westley08@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Natasha Rutherford MD\"}', 1, 1, '2015-05-26', 'Quia necessitatibus.', '2022-03-13 16:26:20', '2022-03-13 16:26:20'),
(22, 'rachelle.johnson@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Edmond Ratke\"}', 7, 2, '1996-12-17', 'Omnis eveniet.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(23, 'szemlak@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Shanny Hermann IV\"}', 10, 2, '1982-06-28', 'Dolorem sapiente.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(24, 'rkuhic@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Terry Franecki\"}', 2, 2, '1988-12-24', 'Autem quia aperiam.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(25, 'kankunding@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Theodore Collier\"}', 2, 2, '2005-01-19', 'Ex corporis.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(26, 'dagmar26@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Leann Barton\"}', 1, 1, '1991-02-11', 'Et ratione quae.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(27, 'godfrey22@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Daphne Langosh\"}', 7, 1, '1989-06-14', 'Cupiditate quia.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(28, 'abosco@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Joy Stracke\"}', 3, 1, '2021-03-01', 'Illo beatae dolorem.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(29, 'zjacobi@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Cyril McGlynn V\"}', 5, 1, '2003-03-18', 'Nostrum suscipit.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(30, 'lilliana09@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Carol Kreiger\"}', 7, 1, '2010-07-20', 'Distinctio sint.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(31, 'daniel.jovanny@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Vivien Von\"}', 1, 1, '2004-01-28', 'Aut quas eius.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(32, 'mohammad.schroeder@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Antonina Mohr MD\"}', 4, 1, '1978-01-27', 'Quae eum ea amet.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(33, 'jackson01@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Johnathon Schamberger\"}', 3, 1, '1994-04-28', 'Ab iure maiores id.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(34, 'kkihn@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Cecile Rodriguez\"}', 11, 1, '1974-10-23', 'Unde quia.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(35, 'kellen.cummerata@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Krystina Powlowski\"}', 1, 1, '1975-07-07', 'Hic optio unde.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(36, 'gschowalter@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Elsie Erdman MD\"}', 10, 1, '2014-07-20', 'Nesciunt dolore aut.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(37, 'eklein@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kathryne Rice\"}', 8, 1, '2015-07-10', 'Voluptas tempora.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(38, 'deron57@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Trudie Quitzon\"}', 11, 1, '1985-07-21', 'Voluptas eius.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(39, 'polly41@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Clint Towne MD\"}', 3, 2, '2010-03-24', 'Libero sint et eos.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(40, 'dfahey@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Samson Mosciski\"}', 2, 1, '2011-08-10', 'Veniam quia placeat.', '2022-03-13 16:26:21', '2022-03-13 16:26:21'),
(41, 'matt.jast@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Millie Johnson II\"}', 8, 2, '1982-10-07', 'Eius voluptatem a.', '2022-03-13 16:26:22', '2022-03-13 16:26:22'),
(42, 'rowe.sonia@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Tristin Mraz\"}', 2, 2, '1997-10-19', 'Quo animi enim.', '2022-03-13 16:26:22', '2022-03-13 16:26:22'),
(43, 'marvin.kraig@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Charlotte Harris\"}', 8, 2, '1976-03-10', 'Excepturi non.', '2022-03-13 16:26:22', '2022-03-13 16:26:22'),
(44, 'melisa80@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Elissa Padberg MD\"}', 11, 2, '2000-12-03', 'Commodi est quia.', '2022-03-13 16:26:22', '2022-03-13 16:26:22'),
(45, 'moen.jonatan@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Erna Effertz\"}', 3, 2, '1999-02-02', 'Sit quo dolorum at.', '2022-03-13 16:26:22', '2022-03-13 16:26:22'),
(46, 'elise36@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Daphnee Marks DDS\"}', 1, 2, '2004-11-30', 'Quia totam deleniti.', '2022-03-13 16:26:22', '2022-03-13 16:26:22'),
(47, 'eheathcote@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Alf Stamm\"}', 7, 1, '1984-09-25', 'Porro ut iste.', '2022-03-13 16:26:22', '2022-03-13 16:26:22'),
(48, 'camron63@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Burnice Botsford V\"}', 8, 2, '2015-12-21', 'Est autem id.', '2022-03-13 16:26:22', '2022-03-13 16:26:22'),
(49, 'turner.berge@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lera Quitzon II\"}', 3, 1, '2012-08-20', 'Dicta provident.', '2022-03-13 16:26:22', '2022-03-13 16:26:22'),
(50, 'white.kacey@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Marcellus Ward\"}', 9, 1, '2018-12-11', 'Ea commodi.', '2022-03-13 16:26:22', '2022-03-13 16:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_sections`
--

CREATE TABLE `teacher_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_student_id_foreign` (`student_id`),
  ADD KEY `attendances_grade_id_foreign` (`grade_id`),
  ADD KEY `attendances_classroom_id_foreign` (`classroom_id`),
  ADD KEY `attendances_section_id_foreign` (`section_id`),
  ADD KEY `attendances_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `bloodtypes`
--
ALTER TABLE `bloodtypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classrooms_grade_id_foreign` (`grade_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_grade_id_foreign` (`grade_id`),
  ADD KEY `fees_classroom_id_foreign` (`classroom_id`);

--
-- Indexes for table `fee_invoices`
--
ALTER TABLE `fee_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_invoices_student_id_foreign` (`student_id`),
  ADD KEY `fee_invoices_grade_id_foreign` (`grade_id`),
  ADD KEY `fee_invoices_classroom_id_foreign` (`classroom_id`),
  ADD KEY `fee_invoices_fee_id_foreign` (`fee_id`);

--
-- Indexes for table `fund_accounts`
--
ALTER TABLE `fund_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fund_accounts_receipt_id_foreign` (`receipt_id`),
  ADD KEY `fund_accounts_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guardians`
--
ALTER TABLE `guardians`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guardians_email_unique` (`email`),
  ADD KEY `guardians_nationality_father_id_foreign` (`nationality_father_id`),
  ADD KEY `guardians_blood_type_father_id_foreign` (`blood_type_father_id`),
  ADD KEY `guardians_religion_father_id_foreign` (`religion_father_id`),
  ADD KEY `guardians_nationality_mother_id_foreign` (`nationality_mother_id`),
  ADD KEY `guardians_blood_type_mother_id_foreign` (`blood_type_mother_id`),
  ADD KEY `guardians_religion_mother_id_foreign` (`religion_mother_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `libraries`
--
ALTER TABLE `libraries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libraries_grade_id_foreign` (`grade_id`),
  ADD KEY `libraries_classroom_id_foreign` (`classroom_id`),
  ADD KEY `libraries_section_id_foreign` (`section_id`),
  ADD KEY `libraries_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_classes`
--
ALTER TABLE `online_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_classes_grade_id_foreign` (`grade_id`),
  ADD KEY `online_classes_classroom_id_foreign` (`classroom_id`),
  ADD KEY `online_classes_section_id_foreign` (`section_id`),
  ADD KEY `online_classes_user_id_foreign` (`user_id`);

--
-- Indexes for table `parent_attachments`
--
ALTER TABLE `parent_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_attachments_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_students`
--
ALTER TABLE `payment_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_students_student_id_foreign` (`student_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `processing_fees`
--
ALTER TABLE `processing_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `processing_fees_student_id_foreign` (`student_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotions_student_id_foreign` (`student_id`),
  ADD KEY `promotions_from_grade_foreign` (`from_grade`),
  ADD KEY `promotions_from_classroom_foreign` (`from_classroom`),
  ADD KEY `promotions_from_section_foreign` (`from_section`),
  ADD KEY `promotions_to_grade_foreign` (`to_grade`),
  ADD KEY `promotions_to_classroom_foreign` (`to_classroom`),
  ADD KEY `promotions_to_section_foreign` (`to_section`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_quizze_id_foreign` (`quizze_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_subject_id_foreign` (`subject_id`),
  ADD KEY `quizzes_grade_id_foreign` (`grade_id`),
  ADD KEY `quizzes_classroom_id_foreign` (`classroom_id`),
  ADD KEY `quizzes_section_id_foreign` (`section_id`),
  ADD KEY `quizzes_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `receipt_students`
--
ALTER TABLE `receipt_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receipt_students_student_id_foreign` (`student_id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_grade_id_foreign` (`grade_id`),
  ADD KEY `sections_class_id_foreign` (`class_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`),
  ADD KEY `students_gender_id_foreign` (`gender_id`),
  ADD KEY `students_nationalitie_id_foreign` (`nationalitie_id`),
  ADD KEY `students_blood_id_foreign` (`blood_id`),
  ADD KEY `students_grade_id_foreign` (`grade_id`),
  ADD KEY `students_classroom_id_foreign` (`classroom_id`),
  ADD KEY `students_section_id_foreign` (`section_id`),
  ADD KEY `students_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `student_accounts`
--
ALTER TABLE `student_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_accounts_fee_invoice_id_foreign` (`fee_invoice_id`),
  ADD KEY `student_accounts_receipt_id_foreign` (`receipt_id`),
  ADD KEY `student_accounts_processing_id_foreign` (`processing_id`),
  ADD KEY `student_accounts_payment_id_foreign` (`payment_id`),
  ADD KEY `student_accounts_student_id_foreign` (`student_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_grade_id_foreign` (`grade_id`),
  ADD KEY `subjects_classroom_id_foreign` (`classroom_id`),
  ADD KEY `subjects_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`),
  ADD KEY `teachers_specialization_id_foreign` (`specialization_id`),
  ADD KEY `teachers_gender_id_foreign` (`gender_id`);

--
-- Indexes for table `teacher_sections`
--
ALTER TABLE `teacher_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_sections_teacher_id_foreign` (`teacher_id`),
  ADD KEY `teacher_sections_section_id_foreign` (`section_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bloodtypes`
--
ALTER TABLE `bloodtypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fee_invoices`
--
ALTER TABLE `fee_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `fund_accounts`
--
ALTER TABLE `fund_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `libraries`
--
ALTER TABLE `libraries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `online_classes`
--
ALTER TABLE `online_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent_attachments`
--
ALTER TABLE `parent_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_students`
--
ALTER TABLE `payment_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `processing_fees`
--
ALTER TABLE `processing_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipt_students`
--
ALTER TABLE `receipt_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `student_accounts`
--
ALTER TABLE `student_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `teacher_sections`
--
ALTER TABLE `teacher_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD CONSTRAINT `classrooms_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_invoices`
--
ALTER TABLE `fee_invoices`
  ADD CONSTRAINT `fee_invoices_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_invoices_fee_id_foreign` FOREIGN KEY (`fee_id`) REFERENCES `fees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_invoices_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_invoices_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fund_accounts`
--
ALTER TABLE `fund_accounts`
  ADD CONSTRAINT `fund_accounts_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payment_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fund_accounts_receipt_id_foreign` FOREIGN KEY (`receipt_id`) REFERENCES `receipt_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guardians`
--
ALTER TABLE `guardians`
  ADD CONSTRAINT `guardians_blood_type_father_id_foreign` FOREIGN KEY (`blood_type_father_id`) REFERENCES `bloodtypes` (`id`),
  ADD CONSTRAINT `guardians_blood_type_mother_id_foreign` FOREIGN KEY (`blood_type_mother_id`) REFERENCES `bloodtypes` (`id`),
  ADD CONSTRAINT `guardians_nationality_father_id_foreign` FOREIGN KEY (`nationality_father_id`) REFERENCES `nationalities` (`id`),
  ADD CONSTRAINT `guardians_nationality_mother_id_foreign` FOREIGN KEY (`nationality_mother_id`) REFERENCES `nationalities` (`id`),
  ADD CONSTRAINT `guardians_religion_father_id_foreign` FOREIGN KEY (`religion_father_id`) REFERENCES `religions` (`id`),
  ADD CONSTRAINT `guardians_religion_mother_id_foreign` FOREIGN KEY (`religion_mother_id`) REFERENCES `religions` (`id`);

--
-- Constraints for table `libraries`
--
ALTER TABLE `libraries`
  ADD CONSTRAINT `libraries_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `libraries_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `libraries_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `libraries_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_classes`
--
ALTER TABLE `online_classes`
  ADD CONSTRAINT `online_classes_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_classes_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_classes_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_classes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `parent_attachments`
--
ALTER TABLE `parent_attachments`
  ADD CONSTRAINT `parent_attachments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `guardians` (`id`);

--
-- Constraints for table `payment_students`
--
ALTER TABLE `payment_students`
  ADD CONSTRAINT `payment_students_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `processing_fees`
--
ALTER TABLE `processing_fees`
  ADD CONSTRAINT `processing_fees_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_from_classroom_foreign` FOREIGN KEY (`from_classroom`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_from_grade_foreign` FOREIGN KEY (`from_grade`) REFERENCES `grades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_from_section_foreign` FOREIGN KEY (`from_section`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_to_classroom_foreign` FOREIGN KEY (`to_classroom`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_to_grade_foreign` FOREIGN KEY (`to_grade`) REFERENCES `grades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_to_section_foreign` FOREIGN KEY (`to_section`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_quizze_id_foreign` FOREIGN KEY (`quizze_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `receipt_students`
--
ALTER TABLE `receipt_students`
  ADD CONSTRAINT `receipt_students_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_blood_id_foreign` FOREIGN KEY (`blood_id`) REFERENCES `bloodtypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_nationalitie_id_foreign` FOREIGN KEY (`nationalitie_id`) REFERENCES `nationalities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `guardians` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_accounts`
--
ALTER TABLE `student_accounts`
  ADD CONSTRAINT `student_accounts_fee_invoice_id_foreign` FOREIGN KEY (`fee_invoice_id`) REFERENCES `fee_invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_accounts_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payment_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_accounts_processing_id_foreign` FOREIGN KEY (`processing_id`) REFERENCES `processing_fees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_accounts_receipt_id_foreign` FOREIGN KEY (`receipt_id`) REFERENCES `receipt_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_accounts_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subjects_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teachers_specialization_id_foreign` FOREIGN KEY (`specialization_id`) REFERENCES `specializations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teacher_sections`
--
ALTER TABLE `teacher_sections`
  ADD CONSTRAINT `teacher_sections_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teacher_sections_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
