-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2022 at 12:39 AM
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
(1, 'Tarek Ashry', 'ashry@gmail.com', '$2y$10$xm7n/q1II3BppxrKrYsW0ORJcY0r.lwFFrEwYWft3tdX6o66ODqzy', '2022-03-12 12:37:30', '2022-03-12 12:37:30');

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
(1, 'O', '2022-03-12 12:57:02', '2022-03-12 12:57:02'),
(2, 'O-', '2022-03-12 12:57:02', '2022-03-12 12:57:02'),
(3, 'O+', '2022-03-12 12:57:02', '2022-03-12 12:57:02'),
(4, 'A', '2022-03-12 12:57:02', '2022-03-12 12:57:02'),
(5, 'A+', '2022-03-12 12:57:02', '2022-03-12 12:57:02'),
(6, 'A-', '2022-03-12 12:57:02', '2022-03-12 12:57:02'),
(7, 'B', '2022-03-12 12:57:03', '2022-03-12 12:57:03'),
(8, 'B+', '2022-03-12 12:57:03', '2022-03-12 12:57:03'),
(9, 'B-', '2022-03-12 12:57:03', '2022-03-12 12:57:03'),
(10, 'AB', '2022-03-12 12:57:03', '2022-03-12 12:57:03'),
(11, 'AB+', '2022-03-12 12:57:03', '2022-03-12 12:57:03'),
(12, 'AB-', '2022-03-12 12:57:03', '2022-03-12 12:57:03');

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
(3, '{\"en\":\"Second Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0627\\u0648\\u0644\"}', 1, '2022-03-12 12:41:48', '2022-03-12 12:41:48'),
(4, '{\"en\":\"Second Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\"}', 1, '2022-03-12 12:41:48', '2022-03-12 12:41:48'),
(5, '{\"en\":\"First Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0627\\u0648\\u0644\"}', 2, '2022-03-12 12:48:36', '2022-03-12 12:48:36'),
(6, '{\"en\":\"Second Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\"}', 2, '2022-03-12 12:48:36', '2022-03-12 12:48:36'),
(7, '{\"en\":\"Third Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b\"}', 2, '2022-03-12 12:48:36', '2022-03-12 12:48:36'),
(8, '{\"en\":\"Fourth Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639\"}', 2, '2022-03-12 12:48:36', '2022-03-12 12:48:36'),
(9, '{\"en\":\"Fifth Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633\"}', 2, '2022-03-12 12:48:36', '2022-03-12 12:48:36'),
(10, '{\"en\":\"Sixth grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633\"}', 2, '2022-03-12 12:48:36', '2022-03-12 12:48:36'),
(11, '{\"en\":\"First Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0627\\u0648\\u0644\"}', 3, '2022-03-12 12:54:37', '2022-03-12 12:54:37'),
(12, '{\"en\":\"Second Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\"}', 3, '2022-03-12 12:54:37', '2022-03-12 12:54:37'),
(13, '{\"en\":\"Third Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b\"}', 3, '2022-03-12 12:54:37', '2022-03-12 12:54:37'),
(14, '{\"en\":\"First Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0627\\u0648\\u0644\"}', 4, '2022-03-12 12:55:13', '2022-03-12 12:55:13'),
(15, '{\"en\":\"Second Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\"}', 4, '2022-03-12 12:55:13', '2022-03-12 12:55:13'),
(16, '{\"en\":\"Third Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b\"}', 4, '2022-03-12 12:55:13', '2022-03-12 12:55:13');

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
(1, '{\"en\":\"fees invoice\",\"ar\":\"\\u0631\\u0633\\u0648\\u0645 \\u0627\\u0644\\u0633\\u0646\\u0629 \\u062f\\u0631\\u0627\\u0633\\u064a\\u0629\"}', '9000.00', 1, 1, 3, NULL, '2022', '2022-03-12 14:12:04', '2022-03-12 14:12:04'),
(2, '{\"en\":\"bus invoice\",\"ar\":\"\\u0631\\u0633\\u0648\\u0645 \\u0627\\u062a\\u0648\\u0628\\u064a\\u0633 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\"}', '3000.00', 2, 1, 3, NULL, '2022', '2022-03-12 14:13:26', '2022-03-12 14:13:26');

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
(4, '2022-03-12', 6, 1, 3, 1, '9000.00', 'قيمة رسوم دراسية 2022', '2022-03-12 21:30:35', '2022-03-12 21:30:35'),
(5, '2022-03-12', 6, 1, 3, 2, '3000.00', 'قيمة رسوم اتوبيس 2022', '2022-03-12 21:30:35', '2022-03-12 21:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `fund_accounts`
--

CREATE TABLE `fund_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `receipt_id` bigint(20) UNSIGNED NOT NULL,
  `debit` decimal(8,2) DEFAULT NULL,
  `credit` decimal(8,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '{\"en\":\"Male\",\"ar\":\"\\u0630\\u0643\\u0631\"}', '2022-03-12 12:58:27', '2022-03-12 12:58:27'),
(2, '{\"en\":\"Female\",\"ar\":\"\\u0627\\u0646\\u062b\\u064a\"}', '2022-03-12 12:58:27', '2022-03-12 12:58:27');

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
(1, '{\"en\":\"Nursery\",\"ar\":\"\\u0627\\u0644\\u062d\\u0636\\u0627\\u0646\\u0629\"}', NULL, '2022-03-12 12:35:26', '2022-03-12 12:35:26'),
(2, '{\"en\":\"Primary Stage\",\"ar\":\"\\u0627\\u0644\\u0645\\u0631\\u062d\\u0644\\u0629 \\u0627\\u0644\\u0627\\u0628\\u062a\\u062f\\u0627\\u0626\\u064a\\u0629\"}', NULL, '2022-03-12 12:35:26', '2022-03-12 12:35:26'),
(3, '{\"en\":\"Middle School\",\"ar\":\"\\u0627\\u0644\\u0645\\u0631\\u062d\\u0644\\u0629 \\u0627\\u0644\\u0627\\u0639\\u062f\\u0627\\u062f\\u064a\\u0629\"}', NULL, '2022-03-12 12:35:26', '2022-03-12 12:35:26'),
(4, '{\"en\":\"High school\",\"ar\":\"\\u0627\\u0644\\u0645\\u0631\\u062d\\u0644\\u0629 \\u0627\\u0644\\u062b\\u0627\\u0646\\u0648\\u064a\\u0629\"}', NULL, '2022-03-12 12:35:26', '2022-03-12 12:35:26');

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
(1, 'pauline.hansen@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Alfredo Reinger III\"}', '799643795', '429519375', '76999411', '{\"en\":\"Nihil et.\"}', 168, 12, 1, 'Perspiciatis.', '{\"en\":\"Mr. Bryce Morissette\"}', '758308337', '533596092', '318328400', '{\"en\":\"Quo et.\"}', 197, 11, 1, 'Labore est non.', '2022-03-12 13:37:21', '2022-03-12 13:37:21'),
(2, 'vita73@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Tanya Greenholt\"}', '433600550', '1787966087', '1856309906', '{\"en\":\"Quia est.\"}', 95, 3, 2, 'Tenetur assumenda.', '{\"en\":\"Hattie Paucek\"}', '1378549344', '333726564', '1920855843', '{\"en\":\"Molestias.\"}', 68, 6, 1, 'Error eaque quos.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(3, 'hand.lincoln@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Octavia Cummings\"}', '1863810661', '1758241927', '436495888', '{\"en\":\"Enim vel.\"}', 143, 6, 1, 'Consequatur sit.', '{\"en\":\"Wilton Feeney\"}', '1910702019', '1498714825', '1420861367', '{\"en\":\"Aut.\"}', 27, 4, 2, 'Culpa nam.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(4, 'crooks.wilbert@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Carson Cassin II\"}', '890285794', '1756516491', '104723575', '{\"en\":\"Officia.\"}', 163, 8, 2, 'Ullam sequi vel.', '{\"en\":\"Earline Labadie IV\"}', '1495932408', '1134634704', '1972352326', '{\"en\":\"Ut sed.\"}', 246, 6, 1, 'Vel quam at optio.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(5, 'maximo.schneider@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Alexys Howe\"}', '328618155', '1176889315', '1836425497', '{\"en\":\"Ut beatae.\"}', 13, 2, 1, 'Qui culpa quis.', '{\"en\":\"Baron Lowe\"}', '1950375690', '335545683', '195673060', '{\"en\":\"Atque.\"}', 144, 3, 2, 'Qui qui pariatur.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(6, 'ora.aufderhar@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Velva Kunze V\"}', '1162216590', '956126430', '2085995593', '{\"en\":\"Ipsa.\"}', 123, 11, 1, 'Eum ipsam est qui.', '{\"en\":\"Bryana Keebler\"}', '85834754', '147429625', '1004530424', '{\"en\":\"Animi.\"}', 153, 11, 2, 'Quaerat aut eius.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(7, 'lockman.nigel@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Genesis Johnson\"}', '91616865', '799022933', '1250026078', '{\"en\":\"Aliquid.\"}', 192, 8, 1, 'Sit sit velit qui.', '{\"en\":\"Mrs. Augusta Schultz I\"}', '232501487', '1866895620', '405713288', '{\"en\":\"Ipsam.\"}', 4, 6, 1, 'Ratione hic dicta.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(8, 'jaron.bartoletti@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Malcolm Roberts\"}', '313924760', '137912361', '71429168', '{\"en\":\"Voluptas.\"}', 30, 11, 2, 'Vero ut molestiae.', '{\"en\":\"Allie Botsford\"}', '835609684', '369171036', '925365592', '{\"en\":\"Magni aut.\"}', 156, 9, 1, 'Tenetur totam.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(9, 'robel.albin@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Letha Brown\"}', '1165121534', '950056044', '639404283', '{\"en\":\"Nihil.\"}', 81, 10, 1, 'Facilis quia quo.', '{\"en\":\"Kendall Wolff\"}', '1640912891', '1175386487', '277201080', '{\"en\":\"Minus et.\"}', 78, 11, 1, 'Porro et omnis.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(10, 'libby.friesen@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kiel Sauer\"}', '1863230375', '1511473392', '1349950706', '{\"en\":\"Pariatur.\"}', 135, 8, 1, 'Nisi voluptatem.', '{\"en\":\"Rhoda Thompson DVM\"}', '26957210', '1823847240', '1147864744', '{\"en\":\"Sunt est.\"}', 159, 5, 1, 'Optio nostrum.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(11, 'wkiehn@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Lennie Rohan I\"}', '1852395103', '1524149912', '182776117', '{\"en\":\"Autem.\"}', 71, 9, 1, 'Est voluptatem.', '{\"en\":\"Prof. Troy Weber\"}', '401075538', '678038355', '195222571', '{\"en\":\"Dolore et.\"}', 104, 7, 1, 'Qui occaecati vitae.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(12, 'maureen.okuneva@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Peter Stamm III\"}', '1597572375', '1689842959', '624339819', '{\"en\":\"Molestiae.\"}', 118, 4, 1, 'Perspiciatis culpa.', '{\"en\":\"Edd Hane PhD\"}', '675111919', '1247015137', '31476243', '{\"en\":\"Provident.\"}', 171, 4, 1, 'Ratione aperiam.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(13, 'ofelia.nader@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Alfreda Hickle\"}', '1526068778', '1792225125', '1143461744', '{\"en\":\"Qui.\"}', 62, 9, 1, 'Harum repellendus.', '{\"en\":\"Ralph Donnelly\"}', '635976142', '1831200851', '940650712', '{\"en\":\"Qui ut.\"}', 151, 5, 2, 'Voluptatibus.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(14, 'abraun@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Gisselle Bergnaum\"}', '1233902737', '406366648', '2124485447', '{\"en\":\"Ipsa.\"}', 130, 1, 1, 'Quo suscipit aut et.', '{\"en\":\"Emerson O\'Conner\"}', '1409428276', '584091378', '1083799756', '{\"en\":\"Non.\"}', 120, 7, 1, 'Ab explicabo et id.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(15, 'vmante@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lilliana Homenick\"}', '1183163058', '1038972262', '721599145', '{\"en\":\"Omnis.\"}', 99, 5, 1, 'Eum iusto dicta.', '{\"en\":\"Prof. Ryder Boyle DDS\"}', '1492158320', '1727058217', '755004047', '{\"en\":\"Ab.\"}', 245, 12, 2, 'Voluptas tempora.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(16, 'jamil.walsh@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Alize Klocko Sr.\"}', '93141933', '532294396', '1752693273', '{\"en\":\"Deleniti.\"}', 56, 2, 1, 'Ab similique totam.', '{\"en\":\"Miles Sanford\"}', '1004026329', '465520183', '1503228392', '{\"en\":\"Ratione.\"}', 172, 3, 2, 'Commodi voluptas.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(17, 'ben80@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Raphaelle Feeney IV\"}', '1882411216', '1766880804', '351398949', '{\"en\":\"Beatae.\"}', 204, 3, 2, 'Laboriosam.', '{\"en\":\"Eldora Strosin\"}', '147920783', '672754256', '210350029', '{\"en\":\"Quas.\"}', 216, 6, 1, 'Similique.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(18, 'edooley@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Ernie Quitzon\"}', '1699644456', '42825698', '1412070494', '{\"en\":\"Cum.\"}', 231, 3, 1, 'Vitae molestiae ut.', '{\"en\":\"Elian Legros\"}', '1241728655', '2000611781', '2097096688', '{\"en\":\"Cumque.\"}', 86, 12, 1, 'Non omnis nihil.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(19, 'amara68@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Beatrice Lang\"}', '1231971696', '1815924113', '174215002', '{\"en\":\"Dolores.\"}', 45, 10, 1, 'Officiis a omnis ex.', '{\"en\":\"Naomie Padberg\"}', '26984875', '795662030', '811636797', '{\"en\":\"Quod.\"}', 23, 2, 2, 'Et officia.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(20, 'olson.hobart@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Aileen Koch\"}', '922561876', '1724949131', '1385065797', '{\"en\":\"Error.\"}', 135, 11, 2, 'Dolorem dolorum.', '{\"en\":\"Jany Bayer\"}', '1766304223', '427567982', '633066755', '{\"en\":\"Ex sint.\"}', 31, 2, 1, 'Amet ullam facilis.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(21, 'frederique.volkman@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Everette Jast II\"}', '916045434', '1640016734', '1734828897', '{\"en\":\"Nesciunt.\"}', 155, 2, 2, 'Fugiat aperiam sint.', '{\"en\":\"Kendall Bins\"}', '2121883207', '1091889985', '613020054', '{\"en\":\"Ea.\"}', 127, 2, 1, 'Ullam iure cum.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(22, 'boehm.jordi@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Tate Dibbert\"}', '403740846', '2119451611', '958383798', '{\"en\":\"Ea et sed.\"}', 29, 12, 1, 'Alias possimus odio.', '{\"en\":\"Dr. Gertrude Rowe II\"}', '2013673506', '1474348816', '287207626', '{\"en\":\"Vel.\"}', 164, 4, 1, 'Veritatis.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(23, 'rolando03@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Rahul Crooks\"}', '1806223923', '1657957278', '870498850', '{\"en\":\"Nobis.\"}', 215, 4, 1, 'Corrupti ea natus.', '{\"en\":\"Mrs. Ebba Thompson\"}', '554820680', '825136517', '485255901', '{\"en\":\"Omnis.\"}', 88, 2, 2, 'Cum magnam est sunt.', '2022-03-12 13:37:22', '2022-03-12 13:37:22'),
(24, 'jeffry.stehr@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Jeffery Brown\"}', '1123745289', '751451123', '840020110', '{\"en\":\"Corrupti.\"}', 123, 5, 2, 'Atque nulla dolorem.', '{\"en\":\"Flavio Ondricka\"}', '1778751040', '569744046', '1324199987', '{\"en\":\"Eveniet.\"}', 58, 5, 2, 'Ad vitae in odio.', '2022-03-12 13:37:23', '2022-03-12 13:37:23'),
(25, 'paris81@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ervin Mraz IV\"}', '1657283314', '2057532432', '1125861448', '{\"en\":\"Rem.\"}', 29, 3, 2, 'Eaque cum enim nam.', '{\"en\":\"Prof. Viviane Treutel\"}', '266927104', '906255333', '1738132942', '{\"en\":\"Qui.\"}', 76, 10, 2, 'Aut suscipit qui.', '2022-03-12 13:37:23', '2022-03-12 13:37:23'),
(26, 'gerlach.berenice@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Bridgette Jerde\"}', '372431528', '1075985677', '1383362570', '{\"en\":\"Assumenda.\"}', 90, 8, 1, 'Et aliquam maiores.', '{\"en\":\"Raegan Rodriguez\"}', '1845274972', '2056405708', '109747631', '{\"en\":\"Quia.\"}', 211, 2, 2, 'Magni nam nisi.', '2022-03-12 13:37:23', '2022-03-12 13:37:23'),
(27, 'cokuneva@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Wilma Connelly\"}', '348081793', '868045315', '14609393', '{\"en\":\"Quis.\"}', 205, 10, 1, 'Laboriosam rerum.', '{\"en\":\"Prof. Elmira Bernier Jr.\"}', '1230842080', '54730852', '710764093', '{\"en\":\"Molestiae.\"}', 39, 4, 2, 'Fuga quidem soluta.', '2022-03-12 13:37:23', '2022-03-12 13:37:23'),
(28, 'laurianne78@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Alberto Koepp\"}', '686357147', '1691942328', '1664771696', '{\"en\":\"Earum.\"}', 111, 3, 2, 'Aut laborum est.', '{\"en\":\"Jackson Auer\"}', '1765892388', '578143913', '791098136', '{\"en\":\"Non qui.\"}', 49, 8, 1, 'Rerum iste.', '2022-03-12 13:37:23', '2022-03-12 13:37:23'),
(29, 'alverta80@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Cary Kohler\"}', '770559970', '1976458017', '589195064', '{\"en\":\"Ad.\"}', 206, 8, 1, 'Ex natus enim ipsam.', '{\"en\":\"Dr. Merlin Skiles\"}', '1674959441', '164542742', '1536733173', '{\"en\":\"Voluptas.\"}', 3, 8, 1, 'Architecto dolor.', '2022-03-12 13:37:23', '2022-03-12 13:37:23'),
(30, 'yharvey@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Jaden Littel III\"}', '2131175314', '1140752766', '1658633509', '{\"en\":\"Velit qui.\"}', 212, 1, 1, 'Veniam sed.', '{\"en\":\"Mr. Xzavier Gislason\"}', '504945748', '1160164399', '1249290136', '{\"en\":\"Veniam.\"}', 29, 8, 1, 'Voluptatum tenetur.', '2022-03-12 13:37:23', '2022-03-12 13:37:23'),
(31, 'dillan.orn@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Garnet Roob\"}', '763117567', '1269896244', '398537432', '{\"en\":\"Velit est.\"}', 241, 7, 2, 'Ab fugit alias ea.', '{\"en\":\"Elwin Shields II\"}', '1592867536', '306731423', '770966624', '{\"en\":\"Illo.\"}', 131, 2, 2, 'Adipisci molestiae.', '2022-03-12 13:37:23', '2022-03-12 13:37:23'),
(32, 'reynolds.camylle@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jefferey Kiehn\"}', '1024143058', '115168766', '533881909', '{\"en\":\"Excepturi.\"}', 128, 2, 2, 'Dolores dolorum.', '{\"en\":\"Quinn Konopelski\"}', '1078176981', '373676483', '186707871', '{\"en\":\"Ut.\"}', 228, 1, 2, 'Sit perferendis.', '2022-03-12 13:37:23', '2022-03-12 13:37:23'),
(33, 'jermey.oberbrunner@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Maryam Konopelski\"}', '1948456758', '1102113091', '143157742', '{\"en\":\"Quas.\"}', 70, 6, 1, 'Magnam et non.', '{\"en\":\"Iva Hahn\"}', '442916031', '259087330', '1748774956', '{\"en\":\"Minus ad.\"}', 236, 8, 2, 'Iure et consequatur.', '2022-03-12 13:37:23', '2022-03-12 13:37:23'),
(34, 'christiana.baumbach@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Micah Kiehn\"}', '1466515635', '1185685530', '1344774054', '{\"en\":\"Modi est.\"}', 143, 11, 2, 'Quis laudantium.', '{\"en\":\"Miss Nayeli Schinner\"}', '1139781207', '1874888035', '1278840409', '{\"en\":\"Sunt fuga.\"}', 188, 10, 1, 'Vero sunt iusto.', '2022-03-12 13:37:23', '2022-03-12 13:37:23'),
(35, 'maya.hauck@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Alyce Rolfson\"}', '999689631', '814203630', '402939563', '{\"en\":\"Libero id.\"}', 79, 12, 2, 'Aut dolor deserunt.', '{\"en\":\"Mr. Holden Daugherty\"}', '1268231277', '983359002', '1276773743', '{\"en\":\"Ad eos.\"}', 38, 10, 1, 'Adipisci illum.', '2022-03-12 13:37:23', '2022-03-12 13:37:23'),
(36, 'toberbrunner@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Heber Considine\"}', '2065791374', '2025276372', '1256576167', '{\"en\":\"Fuga.\"}', 38, 9, 1, 'Doloribus quos.', '{\"en\":\"Kailee Casper\"}', '389477143', '73933838', '17226088', '{\"en\":\"Qui vel.\"}', 141, 3, 1, 'Numquam quo quaerat.', '2022-03-12 13:37:23', '2022-03-12 13:37:23'),
(37, 'qgutmann@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Baron Braun\"}', '1371465856', '1676937420', '716911272', '{\"en\":\"Voluptas.\"}', 99, 4, 1, 'Animi alias amet.', '{\"en\":\"Genevieve Wolf\"}', '1144990501', '300733866', '1542500393', '{\"en\":\"Quibusdam.\"}', 52, 7, 1, 'Illum nobis et.', '2022-03-12 13:37:23', '2022-03-12 13:37:23'),
(38, 'ogleichner@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Garnett Hirthe\"}', '480562356', '1269565315', '379743886', '{\"en\":\"Autem et.\"}', 162, 9, 1, 'Ratione aperiam.', '{\"en\":\"Mr. Hadley Leffler\"}', '325690582', '500698399', '311661564', '{\"en\":\"Corrupti.\"}', 4, 11, 2, 'Autem molestias est.', '2022-03-12 13:37:23', '2022-03-12 13:37:23'),
(39, 'carter.eloise@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Hazle Breitenberg\"}', '1641690579', '256927719', '1495461087', '{\"en\":\"Minima.\"}', 200, 2, 2, 'Excepturi quia ut.', '{\"en\":\"Prof. Earlene Bosco I\"}', '367332516', '1276276927', '491170243', '{\"en\":\"Fugit.\"}', 234, 4, 1, 'Doloremque dicta.', '2022-03-12 13:37:23', '2022-03-12 13:37:23'),
(40, 'boehm.dock@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Gavin Schultz\"}', '925833366', '671601969', '612579886', '{\"en\":\"Iure.\"}', 205, 6, 2, 'Ipsa est ut beatae.', '{\"en\":\"Garth Howell\"}', '300887948', '1940826411', '1370671433', '{\"en\":\"Dolore.\"}', 11, 2, 2, 'Consequatur esse.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(41, 'rex.macejkovic@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Floyd Spencer\"}', '2048906211', '497883450', '203633708', '{\"en\":\"Possimus.\"}', 149, 7, 2, 'Voluptatibus.', '{\"en\":\"Macy Marvin\"}', '2015337897', '1405676904', '622466074', '{\"en\":\"Ut fugiat.\"}', 27, 3, 2, 'Repudiandae.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(42, 'kianna.feil@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Winona Welch\"}', '1474047998', '1303905693', '1030721324', '{\"en\":\"Qui iure.\"}', 118, 7, 1, 'Consequatur.', '{\"en\":\"Summer Hartmann\"}', '440929527', '1221047184', '1249395167', '{\"en\":\"Incidunt.\"}', 64, 8, 2, 'Non facere qui.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(43, 'camron.hermann@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lauryn Thompson\"}', '753347882', '261465477', '913230176', '{\"en\":\"Qui.\"}', 162, 4, 2, 'Vel neque quasi eum.', '{\"en\":\"Raymundo Donnelly IV\"}', '1248225105', '489397416', '512786608', '{\"en\":\"Et.\"}', 182, 7, 1, 'Reiciendis.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(44, 'nicholas45@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Darby Dietrich PhD\"}', '1490956730', '1763918271', '803939846', '{\"en\":\"Omnis.\"}', 194, 5, 2, 'Et error eveniet id.', '{\"en\":\"Kaylin Watsica\"}', '549916111', '244715083', '192175365', '{\"en\":\"Error.\"}', 190, 7, 1, 'Molestiae eaque.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(45, 'ggusikowski@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jerod McGlynn\"}', '2036444517', '892359525', '177530381', '{\"en\":\"Hic nulla.\"}', 14, 7, 1, 'Architecto est.', '{\"en\":\"Mrs. Meda Denesik\"}', '1792669904', '960260430', '1653350813', '{\"en\":\"Sit.\"}', 13, 2, 1, 'Ducimus officiis.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(46, 'olynch@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Antonina Shanahan\"}', '2065065390', '1794039352', '1452483646', '{\"en\":\"Aliquam.\"}', 79, 6, 1, 'Voluptates.', '{\"en\":\"Ludwig Mante II\"}', '1156296844', '878819667', '795725297', '{\"en\":\"Ut.\"}', 133, 3, 1, 'Quis qui asperiores.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(47, 'joanie52@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Alison Gleichner III\"}', '21839224', '1021868031', '1766399418', '{\"en\":\"Officiis.\"}', 85, 2, 1, 'Illo inventore.', '{\"en\":\"Neva Turner\"}', '988948031', '2052749626', '1945535563', '{\"en\":\"Debitis.\"}', 7, 12, 2, 'Et tempora.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(48, 'madalyn82@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Chet Schuster\"}', '735611717', '34267748', '963793115', '{\"en\":\"Quis esse.\"}', 17, 9, 1, 'Voluptatem modi.', '{\"en\":\"Viviane Tremblay\"}', '1563145448', '2108177209', '968947741', '{\"en\":\"Dolorem.\"}', 17, 2, 2, 'Sit ut qui magnam.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(49, 'bode.stefan@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mack Bernhard\"}', '700352674', '1215004449', '1267214589', '{\"en\":\"Nihil.\"}', 126, 8, 2, 'Iusto qui qui.', '{\"en\":\"Dejon Hagenes\"}', '1305444448', '1022835133', '685447485', '{\"en\":\"Porro.\"}', 148, 2, 2, 'Mollitia nemo.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(50, 'crunte@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Shayna Rosenbaum I\"}', '189637883', '2051809155', '1096293537', '{\"en\":\"Expedita.\"}', 175, 11, 1, 'Ipsum reprehenderit.', '{\"en\":\"Zackary Daniel DVM\"}', '1498562640', '1483133667', '1221221259', '{\"en\":\"Et.\"}', 172, 7, 1, 'Rem quibusdam.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(51, 'agustina.schaefer@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Isadore Ratke III\"}', '181605161', '460889713', '549821693', '{\"en\":\"Error.\"}', 95, 11, 1, 'Odio asperiores aut.', '{\"en\":\"Tatum Schmitt III\"}', '902044716', '159883636', '1499170072', '{\"en\":\"Aperiam.\"}', 168, 5, 1, 'Consequatur.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(52, 'lang.meda@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Bernadette Maggio Jr.\"}', '2039598386', '83094922', '992239716', '{\"en\":\"Explicabo.\"}', 8, 3, 1, 'Natus iusto quae.', '{\"en\":\"Mr. Nickolas Grimes\"}', '1284394868', '427584040', '1539917082', '{\"en\":\"Illo.\"}', 179, 4, 2, 'Aperiam laboriosam.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(53, 'shields.athena@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lou McCullough PhD\"}', '1899409290', '742417892', '237472548', '{\"en\":\"Vitae sit.\"}', 124, 8, 2, 'Est enim eum velit.', '{\"en\":\"Prof. Donnell Hagenes IV\"}', '782000571', '1086456328', '1195960125', '{\"en\":\"Ratione.\"}', 130, 8, 1, 'Itaque impedit.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(54, 'tkshlerin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Carley Skiles\"}', '2141927813', '985912626', '1020512313', '{\"en\":\"Dolore ex.\"}', 25, 6, 2, 'Repudiandae.', '{\"en\":\"Maritza Champlin\"}', '1139654153', '1716912623', '1786806385', '{\"en\":\"Quidem.\"}', 156, 7, 2, 'Ipsa dolor.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(55, 'jharris@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Darian Maggio Sr.\"}', '923809698', '1914223793', '308512039', '{\"en\":\"Debitis.\"}', 215, 5, 1, 'Consequatur.', '{\"en\":\"Dr. Consuelo Murray\"}', '1864242327', '1328957709', '203316541', '{\"en\":\"Ut.\"}', 77, 3, 1, 'Quaerat eaque iusto.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(56, 'nader.saul@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lenny Olson\"}', '709930765', '740222372', '153410169', '{\"en\":\"Est.\"}', 204, 10, 2, 'Error maxime qui.', '{\"en\":\"Joanne Gusikowski\"}', '497290997', '1849089253', '829091087', '{\"en\":\"Qui quo.\"}', 55, 11, 2, 'Sit incidunt.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(57, 'oconner.luis@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Gilda Huels\"}', '880666347', '977494561', '766317112', '{\"en\":\"Eius.\"}', 179, 6, 1, 'Dolor architecto.', '{\"en\":\"Shanna Crooks\"}', '2082994514', '1583823063', '563527567', '{\"en\":\"Commodi.\"}', 232, 3, 1, 'Quia sapiente amet.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(58, 'lubowitz.corine@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Demarcus Hickle PhD\"}', '1102534305', '408587849', '1874059956', '{\"en\":\"Ex earum.\"}', 190, 12, 1, 'Provident error et.', '{\"en\":\"Dr. Kale Breitenberg V\"}', '848719382', '1379702968', '1147480370', '{\"en\":\"Et iste.\"}', 90, 9, 1, 'Quos qui blanditiis.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(59, 'bruen.sydney@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Chasity Hilpert\"}', '1414639362', '1342767903', '1549569239', '{\"en\":\"Accusamus.\"}', 68, 5, 1, 'Et quia dolores.', '{\"en\":\"Annetta Lueilwitz\"}', '477064336', '1671017098', '1770458997', '{\"en\":\"Alias.\"}', 171, 9, 2, 'Sit illum.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(60, 'carolina38@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. King Corwin\"}', '569194561', '585749539', '1811080704', '{\"en\":\"Aut eos.\"}', 61, 6, 1, 'Quos illum non sunt.', '{\"en\":\"Matt Konopelski\"}', '1099061607', '1039257875', '1980123144', '{\"en\":\"Sit.\"}', 191, 1, 1, 'Beatae cumque fuga.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(61, 'bennett34@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jeanie Grimes DVM\"}', '481844875', '295258842', '1640650054', '{\"en\":\"Et optio.\"}', 133, 3, 2, 'Commodi voluptatem.', '{\"en\":\"Prof. Scot Hermiston\"}', '762353865', '1174917498', '1398915904', '{\"en\":\"Odit sed.\"}', 216, 7, 2, 'Dolorem laborum.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(62, 'jayden30@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ludwig Dietrich\"}', '1303652992', '1357825884', '2113647697', '{\"en\":\"In.\"}', 52, 7, 2, 'A eius corrupti.', '{\"en\":\"Mr. Wilton Schneider I\"}', '405996642', '888845087', '1715068151', '{\"en\":\"Vitae.\"}', 117, 5, 1, 'Sapiente aliquam.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(63, 'dino.gusikowski@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Jaylen Friesen DVM\"}', '382320949', '707963239', '722738435', '{\"en\":\"Eaque eos.\"}', 90, 8, 2, 'Quidem harum.', '{\"en\":\"Jacky Kuphal Jr.\"}', '1459434512', '1930540102', '1184162611', '{\"en\":\"Fugiat.\"}', 10, 5, 2, 'Quaerat facere.', '2022-03-12 13:37:24', '2022-03-12 13:37:24'),
(64, 'eusebio.feest@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Alexandrea Hermiston III\"}', '2040934572', '256620108', '1144498566', '{\"en\":\"Quo.\"}', 232, 3, 1, 'Autem ullam amet.', '{\"en\":\"Richmond Ratke\"}', '389157434', '1382386426', '865109821', '{\"en\":\"Dolor sit.\"}', 84, 12, 1, 'Harum et sit sunt.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(65, 'zklocko@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Carlos Senger\"}', '1730934940', '460991629', '760158126', '{\"en\":\"Dolor.\"}', 166, 2, 2, 'Perferendis quasi.', '{\"en\":\"Ms. Caitlyn Okuneva IV\"}', '804455670', '600106390', '397186336', '{\"en\":\"Cum.\"}', 165, 4, 1, 'Doloremque quo sed.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(66, 'lynch.trace@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Katelin Heaney II\"}', '699710393', '1712250199', '1477839400', '{\"en\":\"Aut amet.\"}', 102, 4, 1, 'Eius quis totam.', '{\"en\":\"Jarod Stamm\"}', '1890102214', '1364873617', '1789510433', '{\"en\":\"Quas.\"}', 52, 10, 1, 'Sapiente tenetur.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(67, 'aheidenreich@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Peyton Jakubowski IV\"}', '732345415', '529007638', '266791582', '{\"en\":\"Velit.\"}', 138, 9, 2, 'Tempore.', '{\"en\":\"Shea Bogan MD\"}', '1526313117', '1193164684', '1176652097', '{\"en\":\"Ipsa unde.\"}', 38, 8, 1, 'Voluptates.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(68, 'vicenta27@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Marianna Rath\"}', '723028022', '738001783', '2086009124', '{\"en\":\"Quo totam.\"}', 230, 2, 2, 'Aspernatur.', '{\"en\":\"Rusty Bosco\"}', '1684900552', '1532246730', '1924091379', '{\"en\":\"Nobis.\"}', 20, 4, 2, 'Nesciunt commodi.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(69, 'moen.rebeka@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kamren Ondricka\"}', '34654194', '1850067440', '993540457', '{\"en\":\"Ullam sed.\"}', 62, 6, 2, 'Quos soluta ut et.', '{\"en\":\"Mrs. Sister Lehner DDS\"}', '1142947387', '1949836217', '1913307401', '{\"en\":\"Rem.\"}', 40, 2, 1, 'Sint quod ducimus.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(70, 'corkery.dell@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Bernita Rutherford\"}', '236569579', '1770590837', '1812486341', '{\"en\":\"Amet.\"}', 222, 10, 2, 'Labore mollitia vel.', '{\"en\":\"Imelda Jenkins\"}', '592780783', '1994777239', '17875159', '{\"en\":\"Corrupti.\"}', 172, 12, 1, 'Rerum assumenda.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(71, 'nhackett@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Keagan Jacobs\"}', '412868524', '1680909167', '1488572862', '{\"en\":\"Nobis et.\"}', 98, 3, 2, 'Tenetur eum.', '{\"en\":\"Lydia Kunde\"}', '2136038728', '1127361970', '2060820281', '{\"en\":\"Iure.\"}', 95, 1, 2, 'Nobis consequatur.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(72, 'delbert20@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Hailie Walter PhD\"}', '1821977641', '557125171', '1335880420', '{\"en\":\"Impedit.\"}', 82, 7, 1, 'Quasi in quia rerum.', '{\"en\":\"Roxane Connelly\"}', '849853781', '1392422462', '1339742438', '{\"en\":\"Aliquam.\"}', 182, 11, 2, 'Eveniet tempore.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(73, 'windler.coby@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Amos Pouros\"}', '241562549', '1239867156', '1093934368', '{\"en\":\"Quaerat.\"}', 198, 11, 1, 'Nihil asperiores.', '{\"en\":\"Jeffry Oberbrunner DDS\"}', '2058055527', '1021569568', '503932135', '{\"en\":\"Nemo et.\"}', 31, 10, 1, 'Enim consequatur et.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(74, 'mcdermott.mariane@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lottie Walker\"}', '1768704812', '1401445645', '884955252', '{\"en\":\"Iure.\"}', 212, 10, 2, 'Amet aut error.', '{\"en\":\"Marianne Buckridge\"}', '1720932638', '1966628967', '1032593292', '{\"en\":\"Ut.\"}', 18, 3, 1, 'Quod vitae error.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(75, 'gianni.witting@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jaquan Gorczany\"}', '81819453', '1499429343', '1232137006', '{\"en\":\"Placeat.\"}', 211, 12, 2, 'Aut vel ut modi.', '{\"en\":\"Wanda Mohr PhD\"}', '1146689418', '1783707394', '1828390251', '{\"en\":\"Molestias.\"}', 4, 6, 2, 'Ullam natus qui in.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(76, 'xnienow@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jairo Bahringer\"}', '2097605670', '1230091685', '1309000611', '{\"en\":\"Porro.\"}', 133, 7, 2, 'Veritatis facilis.', '{\"en\":\"Prof. Narciso O\'Hara III\"}', '892422118', '1396211446', '1107174093', '{\"en\":\"Autem.\"}', 162, 9, 1, 'Reprehenderit autem.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(77, 'qmorissette@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Garth Dibbert\"}', '1953078391', '2026939669', '752332283', '{\"en\":\"Ut.\"}', 207, 1, 2, 'Dolor fuga id quam.', '{\"en\":\"Prof. Justyn Kuvalis DDS\"}', '1368488099', '511738793', '1958877137', '{\"en\":\"Fugiat.\"}', 236, 3, 2, 'Aut odio minima.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(78, 'houston.oconner@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Tatum Kilback\"}', '1933670386', '1707629113', '1805818770', '{\"en\":\"Qui optio.\"}', 160, 3, 2, 'Et ea earum porro.', '{\"en\":\"Eleanore Considine\"}', '393647103', '1576687657', '1068517854', '{\"en\":\"Et quis.\"}', 79, 4, 1, 'Hic culpa.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(79, 'hane.tyreek@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Hope Paucek MD\"}', '847705005', '449343464', '1172879424', '{\"en\":\"Sunt.\"}', 117, 10, 1, 'Dicta earum.', '{\"en\":\"Torey Eichmann\"}', '392446376', '1899389656', '1887001248', '{\"en\":\"Vitae.\"}', 60, 3, 1, 'Praesentium quos.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(80, 'elemke@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Alyce Turner\"}', '219094711', '201173980', '230274446', '{\"en\":\"Ipsam.\"}', 134, 2, 1, 'Corrupti saepe.', '{\"en\":\"Mrs. Sarah Murazik\"}', '1461148566', '841767174', '71071226', '{\"en\":\"Non id.\"}', 235, 1, 1, 'Iusto ut in.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(81, 'rosalinda00@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Vita Weimann\"}', '1073402826', '990570275', '231434250', '{\"en\":\"Hic porro.\"}', 171, 12, 2, 'Cum corrupti hic.', '{\"en\":\"Gina King II\"}', '1633208933', '1882067302', '309947894', '{\"en\":\"Amet.\"}', 170, 6, 1, 'Non maxime ad.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(82, 'hintz.kaylee@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Alek Tremblay MD\"}', '276520397', '1788764429', '1148910347', '{\"en\":\"Porro.\"}', 242, 10, 2, 'Eveniet velit.', '{\"en\":\"Mrs. Dakota Skiles\"}', '1115410230', '225222771', '1709216680', '{\"en\":\"Et.\"}', 49, 10, 2, 'Praesentium fugiat.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(83, 'little.kirstin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Tomasa Larson DDS\"}', '874581194', '409284617', '2116612450', '{\"en\":\"Autem.\"}', 109, 1, 1, 'Aliquam facere.', '{\"en\":\"Alberta Brown\"}', '1226683457', '673184918', '374076498', '{\"en\":\"Labore.\"}', 163, 6, 1, 'Quaerat voluptas.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(84, 'aschuppe@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ava Abshire\"}', '1765394950', '303638560', '1229478371', '{\"en\":\"Veritatis.\"}', 206, 4, 1, 'Fugit sed earum.', '{\"en\":\"Alanna Kunze\"}', '1534415965', '1409068973', '1704380172', '{\"en\":\"Possimus.\"}', 41, 3, 1, 'Consequatur eos.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(85, 'eldora.casper@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ramon Beatty\"}', '1804042995', '2046731761', '1655734544', '{\"en\":\"Placeat.\"}', 125, 8, 1, 'Eligendi sit nam.', '{\"en\":\"Prof. Prince Terry III\"}', '2075584961', '351596395', '432737349', '{\"en\":\"Culpa.\"}', 35, 12, 2, 'Est asperiores quis.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(86, 'josefina.tillman@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Celestine Cummings\"}', '1493610332', '1955222457', '244312761', '{\"en\":\"Rerum nam.\"}', 205, 7, 1, 'Consequatur earum.', '{\"en\":\"Mr. Ali Prohaska DVM\"}', '1471889506', '306071682', '431454180', '{\"en\":\"Dolores.\"}', 47, 3, 2, 'Mollitia nihil.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(87, 'crist.kenna@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Pedro McGlynn II\"}', '1081956533', '1950964751', '1172997207', '{\"en\":\"Expedita.\"}', 68, 12, 2, 'Facere repellendus.', '{\"en\":\"Burnice Mosciski\"}', '43198167', '1174423509', '938727508', '{\"en\":\"Ut in.\"}', 117, 5, 2, 'Odit quibusdam et.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(88, 'gibson.willa@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Dana Barton\"}', '666059882', '226331761', '1296415319', '{\"en\":\"Eveniet.\"}', 151, 6, 1, 'Autem quisquam.', '{\"en\":\"Carmen Jones\"}', '541950454', '1909094413', '168981696', '{\"en\":\"Ut ut.\"}', 53, 3, 1, 'Vero nostrum.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(89, 'colton.kozey@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Raegan Howell\"}', '2024591842', '885890225', '192950252', '{\"en\":\"Et non ut.\"}', 42, 6, 2, 'Doloremque id ut.', '{\"en\":\"Isidro Bauch V\"}', '1517202653', '1180633287', '1254182790', '{\"en\":\"Tempora.\"}', 133, 6, 2, 'Velit natus.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(90, 'yroberts@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Bailee Armstrong\"}', '2055021120', '299857893', '1224683185', '{\"en\":\"Adipisci.\"}', 139, 9, 1, 'Totam qui et quas.', '{\"en\":\"Mozelle Gerhold\"}', '1642071592', '1739865893', '282920124', '{\"en\":\"Nihil.\"}', 100, 3, 1, 'Ducimus.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(91, 'elsa.buckridge@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kane Kemmer I\"}', '2107964501', '584913806', '1145891077', '{\"en\":\"Est quia.\"}', 141, 8, 2, 'Maxime ea ad minima.', '{\"en\":\"Kaleigh Champlin MD\"}', '1316007336', '981753269', '302602566', '{\"en\":\"Animi et.\"}', 54, 12, 2, 'Maxime nostrum.', '2022-03-12 13:37:25', '2022-03-12 13:37:25'),
(92, 'djohnston@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Cecile O\'Reilly\"}', '1613438321', '1583070932', '792402021', '{\"en\":\"Libero.\"}', 184, 7, 1, 'Modi ducimus non.', '{\"en\":\"Letha Beatty PhD\"}', '1942356389', '2116835597', '606109709', '{\"en\":\"Illo est.\"}', 220, 3, 2, 'Quia tempora optio.', '2022-03-12 13:37:26', '2022-03-12 13:37:26'),
(93, 'tfahey@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Clare Kuhic\"}', '1424467315', '620498437', '286729817', '{\"en\":\"At et est.\"}', 71, 3, 2, 'Voluptate est.', '{\"en\":\"Prof. Rhianna Klocko\"}', '473077587', '1764257042', '2016792462', '{\"en\":\"Quibusdam.\"}', 46, 12, 1, 'Occaecati.', '2022-03-12 13:37:26', '2022-03-12 13:37:26'),
(94, 'umarquardt@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Velma McGlynn\"}', '1309892468', '801380906', '63318035', '{\"en\":\"Ut vitae.\"}', 245, 12, 1, 'Dolorem.', '{\"en\":\"Nels Sanford\"}', '989804442', '1331816450', '1971552395', '{\"en\":\"Et est et.\"}', 231, 1, 2, 'Nostrum quo.', '2022-03-12 13:37:26', '2022-03-12 13:37:26'),
(95, 'cecilia51@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Gilberto Walker Jr.\"}', '1936151983', '732033349', '79869827', '{\"en\":\"Modi.\"}', 104, 1, 2, 'Est sit voluptas.', '{\"en\":\"Michaela Batz\"}', '693974695', '547209798', '376593338', '{\"en\":\"Minus.\"}', 6, 10, 2, 'Aut tempora nihil.', '2022-03-12 13:37:26', '2022-03-12 13:37:26'),
(96, 'hill.ernestine@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Gabriel Feil\"}', '1801395437', '689100690', '1902469984', '{\"en\":\"Ipsa quo.\"}', 211, 7, 2, 'Ut iste commodi eum.', '{\"en\":\"Rodolfo Schneider\"}', '1279707118', '186827279', '242075041', '{\"en\":\"Facilis.\"}', 37, 6, 2, 'Dolore unde.', '2022-03-12 13:37:26', '2022-03-12 13:37:26'),
(97, 'lee24@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Maritza Daugherty\"}', '369911716', '2065166750', '83826965', '{\"en\":\"Qui aut.\"}', 197, 4, 2, 'Ad et maiores minus.', '{\"en\":\"Lindsey Koch\"}', '492919923', '783323223', '260862340', '{\"en\":\"Natus.\"}', 157, 1, 2, 'Aut accusantium.', '2022-03-12 13:37:26', '2022-03-12 13:37:26'),
(98, 'kathleen.stehr@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Catharine Daniel\"}', '665223384', '901636464', '534121914', '{\"en\":\"Iste.\"}', 167, 5, 1, 'Itaque ea sit illum.', '{\"en\":\"Adalberto Goyette\"}', '1173753014', '128924990', '1586558882', '{\"en\":\"Voluptate.\"}', 141, 9, 2, 'Quaerat porro nulla.', '2022-03-12 13:37:26', '2022-03-12 13:37:26'),
(99, 'lindgren.niko@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Josiah Gaylord DDS\"}', '382360970', '1950603522', '1759632866', '{\"en\":\"Dolorum.\"}', 211, 9, 2, 'Aut est.', '{\"en\":\"Daisy Lind DDS\"}', '1211763883', '1804634643', '1184808036', '{\"en\":\"Illum.\"}', 28, 8, 1, 'Deserunt non quasi.', '2022-03-12 13:37:26', '2022-03-12 13:37:26'),
(100, 'foster.bergnaum@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Gilbert Bergstrom III\"}', '33892282', '2044928583', '529252317', '{\"en\":\"Minus.\"}', 111, 10, 2, 'Nostrum eaque.', '{\"en\":\"Dr. Braxton Hamill I\"}', '1063518470', '475681333', '755655416', '{\"en\":\"Veritatis.\"}', 221, 11, 1, 'Eum quis atque.', '2022-03-12 13:37:26', '2022-03-12 13:37:26'),
(101, 'hermiston.halle@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Cristopher Leuschke Jr.\"}', '751884535', '2114741413', '172114477', '{\"en\":\"Vel dolor.\"}', 123, 4, 2, 'Animi modi officia.', '{\"en\":\"Vernon Kiehn\"}', '193487740', '884238589', '97048485', '{\"en\":\"Cumque et.\"}', 156, 10, 1, 'Optio modi et ut.', '2022-03-12 13:41:49', '2022-03-12 13:41:49'),
(102, 'jabari37@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lester Howe\"}', '946793850', '1598362895', '58668469', '{\"en\":\"Accusamus.\"}', 182, 3, 1, 'Velit minus error.', '{\"en\":\"Trent Armstrong\"}', '2000546753', '1989406296', '493270389', '{\"en\":\"Nihil.\"}', 34, 7, 1, 'Qui labore.', '2022-03-12 13:41:49', '2022-03-12 13:41:49'),
(103, 'vharvey@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Austen Hills\"}', '1323907318', '339979783', '1183810508', '{\"en\":\"Maiores.\"}', 17, 1, 2, 'Repudiandae rerum.', '{\"en\":\"Ida Stoltenberg\"}', '1891234127', '1996956964', '789384438', '{\"en\":\"Quis in.\"}', 234, 4, 1, 'Doloremque esse.', '2022-03-12 13:41:49', '2022-03-12 13:41:49'),
(104, 'horeilly@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Zoe Schmitt\"}', '812393755', '1312964363', '1344394470', '{\"en\":\"Eos quia.\"}', 235, 6, 1, 'Qui nobis provident.', '{\"en\":\"Garfield Carroll V\"}', '1389631945', '825361957', '1814694618', '{\"en\":\"Et vel.\"}', 94, 1, 2, 'Eum sit voluptates.', '2022-03-12 13:41:49', '2022-03-12 13:41:49'),
(105, 'otrantow@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Roel Miller\"}', '1134044430', '167243481', '126595344', '{\"en\":\"Amet.\"}', 70, 10, 1, 'Nesciunt doloribus.', '{\"en\":\"Hans Smith\"}', '1874869469', '2014910811', '410654846', '{\"en\":\"Et quis.\"}', 185, 8, 1, 'Harum hic vero.', '2022-03-12 13:41:49', '2022-03-12 13:41:49'),
(106, 'katheryn.terry@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Zion Larkin V\"}', '1668755663', '1417804598', '1225968496', '{\"en\":\"Id qui.\"}', 31, 2, 2, 'Consequatur et.', '{\"en\":\"Mortimer Gislason\"}', '622366670', '2061833404', '1431497771', '{\"en\":\"Quo.\"}', 127, 10, 2, 'Suscipit molestias.', '2022-03-12 13:41:49', '2022-03-12 13:41:49'),
(107, 'devan.connelly@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Eleanore Homenick\"}', '260286468', '1482930367', '255697105', '{\"en\":\"Ab aut.\"}', 190, 7, 1, 'Eos est voluptas.', '{\"en\":\"Dr. Sydney Monahan\"}', '1791001869', '824050726', '2055764230', '{\"en\":\"Voluptas.\"}', 33, 5, 1, 'Sint quia earum.', '2022-03-12 13:41:49', '2022-03-12 13:41:49'),
(108, 'witting.edgar@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Derek Dickinson\"}', '1619188447', '1031205660', '1923963392', '{\"en\":\"Sapiente.\"}', 16, 10, 1, 'Rem asperiores.', '{\"en\":\"Emmett Wunsch V\"}', '1896316148', '1838968626', '96397645', '{\"en\":\"Ratione.\"}', 215, 11, 2, 'Voluptate neque.', '2022-03-12 13:41:49', '2022-03-12 13:41:49'),
(109, 'blanda.haskell@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ashlee Frami\"}', '2028947478', '439037811', '731828368', '{\"en\":\"Maxime.\"}', 6, 10, 2, 'Nostrum qui a.', '{\"en\":\"Lupe Willms\"}', '1390632150', '411380984', '472583512', '{\"en\":\"Ut nihil.\"}', 118, 9, 2, 'Omnis eos quis.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(110, 'austyn47@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Lennie Pouros III\"}', '1428133283', '521897076', '547984675', '{\"en\":\"Sed aut.\"}', 194, 10, 1, 'Aut non deserunt.', '{\"en\":\"Davonte Kutch\"}', '1577961099', '811458887', '521929052', '{\"en\":\"Saepe.\"}', 106, 1, 2, 'Mollitia.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(111, 'bogisich.grayce@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Vivienne Batz\"}', '2129048671', '728856404', '778792178', '{\"en\":\"Delectus.\"}', 229, 1, 2, 'Inventore fugiat.', '{\"en\":\"Mr. Garnett Casper IV\"}', '451808638', '1364185335', '2127652360', '{\"en\":\"Fugit.\"}', 107, 12, 1, 'Inventore fugit.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(112, 'kailey.sporer@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Clare Goldner DDS\"}', '232131313', '190012071', '106031182', '{\"en\":\"Aliquid.\"}', 43, 8, 2, 'Quibusdam est et.', '{\"en\":\"Lennie Greenholt Jr.\"}', '1575720870', '809297151', '1089946533', '{\"en\":\"Id odit.\"}', 227, 2, 1, 'Aspernatur.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(113, 'xwunsch@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Salvador Heathcote DVM\"}', '1042869907', '2007763435', '1994639553', '{\"en\":\"Occaecati.\"}', 141, 3, 1, 'Dicta molestiae sit.', '{\"en\":\"Kyler Harvey\"}', '173772072', '407291656', '1253392711', '{\"en\":\"Eligendi.\"}', 185, 4, 1, 'Temporibus eum.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(114, 'wkautzer@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Bridgette O\'Hara\"}', '1187181606', '901492340', '1763364037', '{\"en\":\"Aliquam.\"}', 215, 2, 1, 'Ut molestiae sunt.', '{\"en\":\"Dr. Jocelyn Nienow\"}', '1482489972', '319231844', '250130033', '{\"en\":\"Et sint.\"}', 129, 1, 2, 'Commodi quis.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(115, 'minerva.rowe@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Misty Von\"}', '312824016', '536364633', '972603035', '{\"en\":\"Ut ea.\"}', 2, 5, 2, 'Et magni et quia.', '{\"en\":\"Mr. Raphael Price V\"}', '2089165805', '491751760', '671294045', '{\"en\":\"Qui eaque.\"}', 182, 8, 1, 'Ullam voluptatem.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(116, 'gmurphy@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Coby Stark Sr.\"}', '32063193', '1389206807', '1775773305', '{\"en\":\"Eveniet.\"}', 226, 3, 2, 'Rem rerum voluptas.', '{\"en\":\"Graciela Wiegand\"}', '1181622684', '1319518996', '1122093849', '{\"en\":\"Nesciunt.\"}', 31, 12, 1, 'Enim sed sit ut.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(117, 'waters.jennings@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Beaulah Wilkinson\"}', '2084181770', '21205237', '1003783332', '{\"en\":\"Ullam.\"}', 105, 8, 1, 'At occaecati.', '{\"en\":\"Ramiro Shanahan\"}', '1979506122', '1869172865', '1734557235', '{\"en\":\"Dolorem.\"}', 75, 9, 2, 'Quasi deleniti ut.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(118, 'goyette.bernita@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Devon Ernser DDS\"}', '2020673275', '1770704810', '15673933', '{\"en\":\"Nesciunt.\"}', 43, 6, 1, 'Voluptas laboriosam.', '{\"en\":\"Nick Hand\"}', '1787766515', '1910692922', '240923366', '{\"en\":\"Voluptas.\"}', 226, 2, 2, 'Quos reiciendis.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(119, 'clifford98@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Sarai Kirlin II\"}', '4310832', '1832891822', '841177946', '{\"en\":\"Natus.\"}', 61, 4, 1, 'Autem voluptatem.', '{\"en\":\"Ernest Jones\"}', '505430644', '1387614945', '2099544538', '{\"en\":\"Omnis et.\"}', 112, 7, 1, 'Dignissimos aut sit.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(120, 'whammes@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Antonetta Windler II\"}', '678440408', '138405957', '604459564', '{\"en\":\"Illum.\"}', 125, 7, 2, 'Cum quia recusandae.', '{\"en\":\"Ms. Candice Nikolaus\"}', '165212854', '1477893866', '524771604', '{\"en\":\"Harum.\"}', 28, 12, 2, 'Aliquam ut autem.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(121, 'amie26@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Emmie Hilpert\"}', '207663723', '589645420', '1720297541', '{\"en\":\"Sed.\"}', 241, 9, 2, 'Non vel minus aut.', '{\"en\":\"Karl Mills\"}', '1472258762', '1445887275', '342586424', '{\"en\":\"Et autem.\"}', 14, 7, 2, 'Debitis vero est.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(122, 'lyda11@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Elbert Thompson\"}', '1537928958', '428397275', '163121614', '{\"en\":\"Rerum.\"}', 244, 8, 1, 'Beatae commodi.', '{\"en\":\"Milan Hilpert\"}', '1581921994', '1065141384', '536399272', '{\"en\":\"Nulla.\"}', 26, 11, 2, 'Praesentium est.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(123, 'lherman@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Ramon Nienow II\"}', '692404266', '1871867195', '2129575114', '{\"en\":\"Dolores.\"}', 35, 12, 1, 'Libero iste aut et.', '{\"en\":\"Marty Herman\"}', '893438795', '22581804', '1603291499', '{\"en\":\"Ut vel.\"}', 220, 1, 2, 'Est accusantium.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(124, 'steuber.linnea@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Zion Thompson\"}', '1763302958', '476425554', '1544734839', '{\"en\":\"Dolores.\"}', 208, 6, 1, 'Molestiae.', '{\"en\":\"Dwight Kunze Jr.\"}', '557023566', '693219380', '397752135', '{\"en\":\"Dolore.\"}', 33, 11, 1, 'Repudiandae est.', '2022-03-12 13:41:50', '2022-03-12 13:41:50');
INSERT INTO `guardians` (`id`, `email`, `password`, `name_father`, `national_id_father`, `passport_id_father`, `phone_father`, `job_father`, `nationality_father_id`, `blood_type_father_id`, `religion_father_id`, `address_father`, `name_mother`, `national_id_mother`, `passport_id_mother`, `phone_mother`, `job_mother`, `nationality_mother_id`, `blood_type_mother_id`, `religion_mother_id`, `address_mother`, `created_at`, `updated_at`) VALUES
(125, 'wtillman@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Eliseo Carter\"}', '187033564', '1776636786', '2073624038', '{\"en\":\"Nisi.\"}', 98, 7, 1, 'Consequatur et.', '{\"en\":\"Virgil Kuphal\"}', '88740203', '1129965716', '1268144206', '{\"en\":\"Ut esse.\"}', 190, 7, 2, 'Velit id iure.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(126, 'leonel.fadel@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mose Bergstrom II\"}', '433890766', '196268614', '462653903', '{\"en\":\"Veniam.\"}', 43, 2, 2, 'Porro voluptatibus.', '{\"en\":\"Orlo Koelpin\"}', '1420230630', '1645447017', '1337770065', '{\"en\":\"Omnis.\"}', 230, 9, 1, 'Veritatis minima.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(127, 'bashirian.joseph@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Duncan Wisoky\"}', '540352041', '1050293532', '1292343804', '{\"en\":\"Dolorem.\"}', 79, 9, 2, 'Sequi dolor error.', '{\"en\":\"Roger Kohler\"}', '925355882', '216256516', '470482646', '{\"en\":\"Quis.\"}', 180, 3, 1, 'Necessitatibus.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(128, 'aletha20@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Arlo Conn\"}', '1781783966', '872910799', '1472094086', '{\"en\":\"Est.\"}', 208, 9, 1, 'Voluptatem dolorum.', '{\"en\":\"Mrs. Carli Macejkovic\"}', '237660546', '2058253215', '1428923150', '{\"en\":\"Ipsa est.\"}', 57, 12, 1, 'Tempora quia.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(129, 'bogan.alize@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Felicity Huel\"}', '1213663226', '470652246', '1046484085', '{\"en\":\"Quo.\"}', 172, 12, 2, 'Quia quisquam.', '{\"en\":\"Halie Beatty\"}', '851143027', '1052298214', '579483682', '{\"en\":\"Qui.\"}', 206, 2, 2, 'Sed corrupti rerum.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(130, 'meaghan.grady@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Brayan Marquardt\"}', '1931326237', '541061183', '758732120', '{\"en\":\"Voluptate.\"}', 82, 6, 2, 'Ea voluptatem.', '{\"en\":\"Deangelo Boehm\"}', '834844512', '1351312059', '1413902374', '{\"en\":\"Iste.\"}', 100, 10, 1, 'Et et enim id.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(131, 'mauricio.prohaska@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Adolfo Casper\"}', '1230008986', '1536437868', '976605954', '{\"en\":\"Est.\"}', 239, 6, 2, 'Dolores veritatis.', '{\"en\":\"Taylor Kuvalis\"}', '838220953', '695026527', '1913427347', '{\"en\":\"Velit.\"}', 8, 2, 1, 'Sapiente et debitis.', '2022-03-12 13:41:50', '2022-03-12 13:41:50'),
(132, 'xmedhurst@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Leonor Skiles\"}', '1221518055', '232995008', '1289478231', '{\"en\":\"Rem.\"}', 159, 8, 2, 'Esse architecto.', '{\"en\":\"Fannie Jacobs\"}', '354904640', '1570900608', '697897313', '{\"en\":\"Corrupti.\"}', 78, 1, 2, 'Amet laborum.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(133, 'sbode@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Ignacio Altenwerth\"}', '1858672302', '1089414371', '1930622586', '{\"en\":\"Alias.\"}', 33, 6, 1, 'Expedita nesciunt.', '{\"en\":\"Dr. Marcelo Kutch V\"}', '2046980704', '1425316152', '1478651689', '{\"en\":\"Pariatur.\"}', 155, 4, 1, 'Enim voluptas et.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(134, 'botsford.tanner@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Camryn Beer I\"}', '1678264303', '1163992550', '1849690490', '{\"en\":\"Vel nihil.\"}', 68, 11, 2, 'Similique nisi vel.', '{\"en\":\"Major Stehr\"}', '734852509', '1899568346', '914373303', '{\"en\":\"Dolores.\"}', 194, 9, 2, 'Dolore.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(135, 'leuschke.hilma@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jalon Pollich\"}', '2103971184', '1568501834', '90467645', '{\"en\":\"Quidem.\"}', 87, 6, 2, 'Mollitia quo.', '{\"en\":\"Prof. Foster Rowe II\"}', '1030424065', '2007336357', '1241460051', '{\"en\":\"Autem.\"}', 198, 1, 1, 'Dolores molestiae.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(136, 'gaylord.ben@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Torrance Ziemann\"}', '1057258317', '1567572671', '1838677844', '{\"en\":\"Qui.\"}', 241, 10, 2, 'Iure quasi qui.', '{\"en\":\"Miss Augusta Bergstrom DDS\"}', '1519075213', '1673519152', '1954091320', '{\"en\":\"Laborum.\"}', 22, 12, 2, 'Qui nostrum.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(137, 'thiel.rosamond@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Kattie Beatty Sr.\"}', '2140384979', '1438601718', '1815993960', '{\"en\":\"Debitis.\"}', 225, 7, 2, 'Ipsam deleniti.', '{\"en\":\"Julia Hansen\"}', '1605484066', '1606529115', '115846976', '{\"en\":\"Ut est.\"}', 132, 4, 1, 'Cumque labore.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(138, 'qromaguera@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ryley Jaskolski\"}', '1925790342', '398743584', '922961181', '{\"en\":\"Velit.\"}', 43, 5, 2, 'Perferendis maiores.', '{\"en\":\"Prof. Keanu Reynolds I\"}', '1072007412', '1893505645', '768521255', '{\"en\":\"Aliquid.\"}', 4, 7, 1, 'Sequi pariatur.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(139, 'orn.nona@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Alice Fadel\"}', '360669073', '1339497114', '58947581', '{\"en\":\"Ea.\"}', 16, 10, 1, 'Rerum quia.', '{\"en\":\"Mr. Jarrell Volkman\"}', '517933325', '392261396', '27349848', '{\"en\":\"Corrupti.\"}', 189, 10, 2, 'Ea assumenda eos.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(140, 'hellen.flatley@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Nat Johnson\"}', '374094995', '560827082', '206100925', '{\"en\":\"Modi.\"}', 30, 12, 2, 'Et iusto quis eos.', '{\"en\":\"Adeline Metz\"}', '917979408', '2100507008', '1679302094', '{\"en\":\"Libero ut.\"}', 144, 1, 1, 'Soluta est in.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(141, 'dasia69@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Grayce Koss\"}', '1315141728', '930075479', '359601719', '{\"en\":\"Voluptate.\"}', 192, 6, 2, 'Odio rerum.', '{\"en\":\"Dr. Haskell Quitzon\"}', '2000162681', '1781854872', '2082912900', '{\"en\":\"Aliquam.\"}', 61, 11, 1, 'Dicta aspernatur.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(142, 'ehaag@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Nigel Haley MD\"}', '1881846083', '1479565586', '670685441', '{\"en\":\"Quo sunt.\"}', 232, 3, 2, 'Voluptas esse.', '{\"en\":\"Rupert Frami\"}', '89975988', '690376437', '1975491469', '{\"en\":\"Autem et.\"}', 233, 11, 1, 'Incidunt velit.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(143, 'amber.jacobson@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jesus Deckow\"}', '2120603894', '167237229', '61688623', '{\"en\":\"Eum.\"}', 80, 9, 1, 'Aut ut libero aut.', '{\"en\":\"Sarina Beier\"}', '1054467408', '966564201', '524674759', '{\"en\":\"Nulla.\"}', 173, 10, 1, 'Ut expedita.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(144, 'pbatz@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Marjory Morissette\"}', '1771116085', '242365925', '1624952569', '{\"en\":\"Eveniet.\"}', 103, 2, 2, 'Ad ullam architecto.', '{\"en\":\"Grayson Lockman\"}', '1551509142', '1788067310', '1561001437', '{\"en\":\"Iure et.\"}', 103, 7, 1, 'Assumenda neque aut.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(145, 'mgreen@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Eryn Kuhn MD\"}', '1835984726', '24263123', '133631286', '{\"en\":\"Ad quo.\"}', 239, 8, 1, 'Cum ea ut pariatur.', '{\"en\":\"Piper Wehner\"}', '1700134637', '2129425166', '517021362', '{\"en\":\"Ut ad.\"}', 123, 8, 1, 'Molestias maiores.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(146, 'lang.ursula@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Chase Walter\"}', '1994860720', '714052575', '1382297289', '{\"en\":\"Nam ea.\"}', 178, 1, 2, 'Laudantium in.', '{\"en\":\"Cleve Block Jr.\"}', '846597235', '1496027331', '644128846', '{\"en\":\"Dolorem.\"}', 152, 11, 2, 'Repellat quae vitae.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(147, 'meaghan.hansen@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Margarette Heller DDS\"}', '425765746', '438424822', '1635044415', '{\"en\":\"Nemo.\"}', 47, 8, 2, 'Suscipit minima ab.', '{\"en\":\"Freddy Feest\"}', '1606359119', '783104880', '292958294', '{\"en\":\"Illum in.\"}', 190, 9, 2, 'Veniam facere ipsam.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(148, 'cgreenfelder@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Rafaela Erdman\"}', '82809052', '1558889736', '2119699316', '{\"en\":\"Sequi.\"}', 4, 8, 2, 'Dicta nam qui.', '{\"en\":\"Miss Alysha Fadel\"}', '571207224', '1300377938', '226857727', '{\"en\":\"Odit sed.\"}', 96, 7, 1, 'Eum alias dolor.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(149, 'gislason.letha@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kattie Dietrich\"}', '1007197392', '1681061020', '1528313824', '{\"en\":\"Nemo ad.\"}', 93, 9, 1, 'In qui illum.', '{\"en\":\"Viviane Ondricka\"}', '767213044', '1513914368', '1894860666', '{\"en\":\"Ducimus.\"}', 82, 3, 2, 'Excepturi ut.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(150, 'angus14@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Arno Littel I\"}', '250112458', '2103729152', '1857295145', '{\"en\":\"Quia sunt.\"}', 21, 7, 2, 'Provident fuga.', '{\"en\":\"Kenya Miller\"}', '1945250087', '784561660', '1210695656', '{\"en\":\"Ut est.\"}', 113, 7, 2, 'Dolores assumenda.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(151, 'jakubowski.stewart@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Friedrich Kulas\"}', '1272120200', '968351648', '1893690512', '{\"en\":\"Non odit.\"}', 134, 6, 2, 'Rerum ducimus sequi.', '{\"en\":\"Marcos Prohaska\"}', '1758542379', '1071498072', '1014019581', '{\"en\":\"Dicta.\"}', 125, 5, 1, 'Autem voluptatibus.', '2022-03-12 13:41:51', '2022-03-12 13:41:51'),
(152, 'nkoelpin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Roberto Erdman PhD\"}', '1134301054', '145087762', '2097584580', '{\"en\":\"Error.\"}', 67, 9, 1, 'Molestiae porro.', '{\"en\":\"Weston Fritsch\"}', '584901406', '490202506', '1335198786', '{\"en\":\"Inventore.\"}', 92, 10, 2, 'Et architecto.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(153, 'xfeeney@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Arnold Johnston\"}', '1806638064', '406510814', '370925130', '{\"en\":\"Et est.\"}', 203, 10, 1, 'Qui vitae.', '{\"en\":\"Reuben Bogan\"}', '1605166888', '1277130434', '2145268952', '{\"en\":\"Quidem.\"}', 47, 9, 2, 'Repudiandae.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(154, 'juvenal.murphy@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Talon Paucek PhD\"}', '1508676126', '201061556', '1068174317', '{\"en\":\"Assumenda.\"}', 191, 11, 1, 'Numquam laborum est.', '{\"en\":\"Armani Marquardt\"}', '570892178', '621569836', '1998743918', '{\"en\":\"Sequi.\"}', 6, 2, 2, 'Eaque fugiat odit.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(155, 'lindsay.harvey@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Joanie Renner\"}', '1379071593', '1624361397', '1487540253', '{\"en\":\"Et sint.\"}', 32, 4, 2, 'Dolor magni.', '{\"en\":\"Dr. Eldora Swaniawski\"}', '594020464', '1415729140', '679574550', '{\"en\":\"Sed nisi.\"}', 165, 5, 1, 'Officia porro.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(156, 'torphy.khalil@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Hyman Gaylord\"}', '78301539', '1953368980', '513642372', '{\"en\":\"Debitis.\"}', 156, 2, 1, 'Alias aut eius aut.', '{\"en\":\"Prof. Lincoln Hackett\"}', '397005420', '6854228', '1046960960', '{\"en\":\"Vel in.\"}', 69, 3, 1, 'Repellat rerum.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(157, 'giuseppe93@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Madeline Fisher\"}', '1061400721', '60553168', '449755131', '{\"en\":\"Nobis est.\"}', 114, 4, 1, 'Aspernatur mollitia.', '{\"en\":\"Tate Robel\"}', '2023288627', '594943079', '268780763', '{\"en\":\"Aliquam.\"}', 113, 12, 2, 'Exercitationem sint.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(158, 'erich74@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Priscilla Davis\"}', '1259489823', '1956113074', '69839779', '{\"en\":\"Nostrum.\"}', 68, 6, 2, 'Velit dignissimos.', '{\"en\":\"Matteo Grant\"}', '799854775', '182565855', '94844609', '{\"en\":\"Ea qui.\"}', 14, 12, 2, 'Ex accusantium quia.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(159, 'josue.williamson@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Tracey Halvorson\"}', '194433692', '823786139', '483294642', '{\"en\":\"Magni.\"}', 245, 9, 2, 'Commodi modi.', '{\"en\":\"Kaela Mayer\"}', '2076204159', '1554952778', '2103283403', '{\"en\":\"Dolorem.\"}', 162, 5, 1, 'Vel quam amet.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(160, 'esmeralda.zieme@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Loma Marks III\"}', '2004765356', '1634223934', '1344997430', '{\"en\":\"Sunt vel.\"}', 124, 6, 2, 'Aut amet et.', '{\"en\":\"Dr. Filiberto Schowalter III\"}', '1424554414', '1258958443', '1685981949', '{\"en\":\"Omnis.\"}', 204, 1, 2, 'In eaque voluptate.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(161, 'dwyman@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Camilla Sipes\"}', '1844441934', '1781005753', '1670481429', '{\"en\":\"Non.\"}', 27, 7, 1, 'Praesentium autem.', '{\"en\":\"Tracy Gibson\"}', '1998793584', '1717894712', '1592196725', '{\"en\":\"Occaecati.\"}', 41, 2, 1, 'Libero magni est et.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(162, 'rodger.stiedemann@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Abner Block\"}', '1562756774', '1244920852', '1261285194', '{\"en\":\"Rerum eos.\"}', 152, 1, 1, 'Est ipsam est quod.', '{\"en\":\"Florida Kulas\"}', '2104795034', '1444626642', '322042592', '{\"en\":\"Vitae ad.\"}', 111, 11, 2, 'Doloremque enim aut.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(163, 'fjacobs@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Rhiannon Dietrich\"}', '7701917', '1089255684', '1544413469', '{\"en\":\"Et.\"}', 59, 8, 1, 'Soluta ut deserunt.', '{\"en\":\"Gage Boyle MD\"}', '1078106025', '346436332', '1861830674', '{\"en\":\"Magni ut.\"}', 22, 8, 1, 'Consequuntur.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(164, 'zwyman@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ari Lubowitz III\"}', '158355995', '618956629', '1857136594', '{\"en\":\"Quo ea.\"}', 135, 11, 2, 'Est cum vel.', '{\"en\":\"Kennedy Walter PhD\"}', '1336560098', '2096633654', '218383599', '{\"en\":\"Ut.\"}', 104, 8, 1, 'Consequuntur vitae.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(165, 'maxwell99@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Laurence Ward V\"}', '2062100494', '301235255', '947110515', '{\"en\":\"Tempore.\"}', 88, 9, 2, 'Aut ex adipisci ea.', '{\"en\":\"Beau Schultz\"}', '240503088', '877525093', '382230727', '{\"en\":\"Nobis.\"}', 176, 10, 1, 'Facere consequatur.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(166, 'sonya.ruecker@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ewald Gleichner V\"}', '417729564', '323613040', '1542477743', '{\"en\":\"Ut.\"}', 100, 8, 1, 'Sed impedit cumque.', '{\"en\":\"Lavinia Reichel\"}', '2096051632', '1230128785', '88342111', '{\"en\":\"Non ut.\"}', 34, 12, 2, 'Alias consequatur.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(167, 'morissette.jo@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Janae Boyer II\"}', '585754194', '1047709747', '704366692', '{\"en\":\"Rerum.\"}', 165, 2, 1, 'Aut quia ut.', '{\"en\":\"Bailee Weber\"}', '196118124', '1870712819', '619237910', '{\"en\":\"Quo.\"}', 193, 5, 1, 'Fugit deserunt.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(168, 'katelyn42@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Glenna Skiles\"}', '1844804604', '1721839175', '67201475', '{\"en\":\"Dolorum.\"}', 72, 5, 1, 'Quisquam laudantium.', '{\"en\":\"Dana Haag\"}', '1465253339', '858021594', '1385950036', '{\"en\":\"Eum error.\"}', 49, 6, 2, 'Omnis neque vero.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(169, 'emiliano.okeefe@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Crystal Koch\"}', '1121879727', '834010691', '574234263', '{\"en\":\"Non dicta.\"}', 28, 6, 1, 'Assumenda.', '{\"en\":\"Prof. Albert Halvorson\"}', '1709307501', '1809023070', '1360419151', '{\"en\":\"Corporis.\"}', 80, 10, 2, 'Nemo molestiae.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(170, 'alberta71@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Hilton Ebert\"}', '150977390', '875132193', '1506544132', '{\"en\":\"Nam.\"}', 88, 7, 1, 'Reiciendis autem.', '{\"en\":\"Beau Wintheiser\"}', '1268988784', '1109856188', '1867491894', '{\"en\":\"Explicabo.\"}', 216, 7, 1, 'Ex eos voluptatibus.', '2022-03-12 13:41:52', '2022-03-12 13:41:52'),
(171, 'rosella45@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Garrett Wolff\"}', '676414206', '286292948', '514664800', '{\"en\":\"Vitae.\"}', 113, 2, 1, 'Excepturi est.', '{\"en\":\"Shana Bradtke\"}', '1587060488', '2124699077', '2010361582', '{\"en\":\"Cum.\"}', 24, 9, 2, 'Qui fugiat qui qui.', '2022-03-12 13:41:53', '2022-03-12 13:41:53'),
(172, 'alexandre41@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kaitlyn Bergstrom\"}', '1892303272', '99511406', '539033370', '{\"en\":\"Rerum qui.\"}', 69, 7, 1, 'Officiis harum.', '{\"en\":\"Jessy Von\"}', '1594278335', '2036809007', '1824336462', '{\"en\":\"Vel aut.\"}', 154, 11, 2, 'Voluptatem sed qui.', '2022-03-12 13:41:53', '2022-03-12 13:41:53'),
(173, 'tressie.vandervort@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Gino Hahn\"}', '1345798772', '469736571', '2111915499', '{\"en\":\"Hic.\"}', 223, 4, 2, 'Voluptatibus.', '{\"en\":\"Godfrey Cummings\"}', '864394493', '1997558109', '1956834570', '{\"en\":\"Quis quam.\"}', 19, 5, 1, 'Perspiciatis.', '2022-03-12 13:41:53', '2022-03-12 13:41:53'),
(174, 'berneice06@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kelvin Stiedemann\"}', '931384109', '1799296038', '1678921318', '{\"en\":\"Ut.\"}', 139, 1, 1, 'Occaecati quia.', '{\"en\":\"Savanah Purdy\"}', '1666598235', '2011126020', '1349081924', '{\"en\":\"Dolor.\"}', 35, 10, 2, 'Aut nesciunt qui.', '2022-03-12 13:41:53', '2022-03-12 13:41:53'),
(175, 'smoen@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Chelsea Monahan\"}', '1764369002', '1464938117', '1904438173', '{\"en\":\"Doloribus.\"}', 225, 4, 1, 'Qui sit vitae autem.', '{\"en\":\"Raphaelle Bartell DDS\"}', '7497119', '924650979', '531206634', '{\"en\":\"Sapiente.\"}', 39, 1, 2, 'Ab saepe quasi ut.', '2022-03-12 13:41:53', '2022-03-12 13:41:53'),
(176, 'concepcion43@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Rigoberto Torphy I\"}', '1386895263', '1989311114', '996771855', '{\"en\":\"Magni cum.\"}', 246, 5, 2, 'Vitae deleniti.', '{\"en\":\"Carolina Konopelski\"}', '1760084312', '1195563143', '1740233602', '{\"en\":\"Dolor aut.\"}', 121, 3, 1, 'Recusandae et qui.', '2022-03-12 13:41:53', '2022-03-12 13:41:53'),
(177, 'hodkiewicz.matt@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Rebeka Graham\"}', '1895551980', '1996386385', '1470563469', '{\"en\":\"Sint et.\"}', 78, 9, 1, 'Et natus sed id.', '{\"en\":\"Ms. Cynthia Rolfson\"}', '2005498409', '1003592446', '980788350', '{\"en\":\"Dolor.\"}', 197, 7, 1, 'Beatae culpa ipsum.', '2022-03-12 13:41:53', '2022-03-12 13:41:53'),
(178, 'nova.bashirian@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Oswaldo Huel I\"}', '211434030', '352374130', '793079898', '{\"en\":\"Et.\"}', 143, 6, 1, 'Consequatur dolor.', '{\"en\":\"Mr. Bradford Flatley I\"}', '1027787324', '37056523', '2133257532', '{\"en\":\"Quod ut.\"}', 214, 10, 2, 'Aut illo ullam quia.', '2022-03-12 13:41:53', '2022-03-12 13:41:53'),
(179, 'haleigh.cronin@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Carmine Baumbach PhD\"}', '2131377806', '482392008', '1190469736', '{\"en\":\"Velit aut.\"}', 84, 9, 2, 'Sapiente repellat.', '{\"en\":\"Llewellyn Hickle\"}', '1910391474', '342855085', '1464319452', '{\"en\":\"Ullam.\"}', 224, 7, 1, 'Temporibus deserunt.', '2022-03-12 13:41:53', '2022-03-12 13:41:53'),
(180, 'yohara@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Annabell Goyette DDS\"}', '1719718202', '515400554', '121215316', '{\"en\":\"Nam quam.\"}', 75, 1, 2, 'Tenetur magnam.', '{\"en\":\"Arlene Parker\"}', '756862428', '1810385146', '92966057', '{\"en\":\"Et omnis.\"}', 17, 3, 2, 'Repellat fuga.', '2022-03-12 13:41:53', '2022-03-12 13:41:53'),
(181, 'metz.abel@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Xavier Harris II\"}', '738512982', '1140014770', '497376131', '{\"en\":\"Autem.\"}', 8, 9, 2, 'Ipsum dolorum.', '{\"en\":\"Emerson Dibbert\"}', '974977517', '1155814471', '1932961821', '{\"en\":\"Rerum.\"}', 74, 11, 1, 'Esse quidem totam.', '2022-03-12 13:41:53', '2022-03-12 13:41:53'),
(182, 'schroeder.lon@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Rosalyn Medhurst Sr.\"}', '964365688', '649192812', '677586440', '{\"en\":\"Et qui et.\"}', 145, 5, 1, 'Vitae officia est.', '{\"en\":\"Dr. Destiny Schowalter III\"}', '1298493188', '1811340689', '343414613', '{\"en\":\"Et.\"}', 85, 6, 1, 'Consequatur.', '2022-03-12 13:41:53', '2022-03-12 13:41:53'),
(183, 'clement54@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Bruce Tromp Jr.\"}', '514820876', '1689074278', '14562840', '{\"en\":\"Sed.\"}', 19, 11, 1, 'Quibusdam et.', '{\"en\":\"Bernadine Mertz\"}', '1452586540', '1463994883', '1986673597', '{\"en\":\"Pariatur.\"}', 68, 3, 2, 'Illo porro sint.', '2022-03-12 13:41:54', '2022-03-12 13:41:54'),
(184, 'giovanna.marvin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Rylee Koepp Sr.\"}', '1334585402', '1571278219', '1474248308', '{\"en\":\"Quam.\"}', 231, 3, 2, 'Consequuntur atque.', '{\"en\":\"Norma Harvey\"}', '257345171', '1068956970', '771349290', '{\"en\":\"Et facere.\"}', 48, 12, 2, 'Et dolores facere.', '2022-03-12 13:41:54', '2022-03-12 13:41:54'),
(185, 'lakin.hassie@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ignacio Ferry\"}', '89281674', '1610860138', '1702163082', '{\"en\":\"Nihil at.\"}', 172, 2, 1, 'Incidunt est.', '{\"en\":\"Garrison Feest\"}', '695196173', '742895244', '1686867917', '{\"en\":\"In.\"}', 164, 7, 1, 'Accusantium dolore.', '2022-03-12 13:41:54', '2022-03-12 13:41:54'),
(186, 'lbotsford@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Estrella Schultz II\"}', '1519242923', '1040195548', '839071307', '{\"en\":\"Repellat.\"}', 74, 5, 2, 'Ea nulla qui.', '{\"en\":\"Sydnie Reichel\"}', '1507474936', '568487840', '1278060262', '{\"en\":\"Rerum.\"}', 15, 1, 2, 'Maiores fugiat.', '2022-03-12 13:41:54', '2022-03-12 13:41:54'),
(187, 'marta53@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Gina Adams MD\"}', '258656557', '866925783', '152331811', '{\"en\":\"Placeat.\"}', 33, 8, 1, 'Ea officia.', '{\"en\":\"Flavio Renner\"}', '556007171', '1153559146', '1574600489', '{\"en\":\"Non eos.\"}', 207, 6, 2, 'Est esse temporibus.', '2022-03-12 13:41:54', '2022-03-12 13:41:54'),
(188, 'gcarroll@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Aiyana Bergstrom II\"}', '829439028', '512630130', '566371519', '{\"en\":\"Non ipsam.\"}', 130, 2, 1, 'Porro corrupti nemo.', '{\"en\":\"Antonietta Jenkins\"}', '568353414', '1277319683', '1294557653', '{\"en\":\"Sequi.\"}', 193, 10, 1, 'Iure deleniti aut.', '2022-03-12 13:41:54', '2022-03-12 13:41:54'),
(189, 'bethel53@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Maximillian Adams\"}', '1402181107', '1716733829', '1948082097', '{\"en\":\"Quas.\"}', 132, 4, 1, 'Pariatur ducimus.', '{\"en\":\"Travon Grimes\"}', '1363394886', '474408631', '840609121', '{\"en\":\"Autem et.\"}', 90, 8, 2, 'Placeat quis quia.', '2022-03-12 13:41:54', '2022-03-12 13:41:54'),
(190, 'bertram10@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Belle Swaniawski\"}', '1996935923', '26352103', '1757523253', '{\"en\":\"Saepe.\"}', 169, 12, 1, 'Odit nulla est.', '{\"en\":\"Kristofer Ledner III\"}', '917791657', '693489426', '725700645', '{\"en\":\"At et.\"}', 76, 9, 2, 'Dignissimos.', '2022-03-12 13:41:54', '2022-03-12 13:41:54'),
(191, 'jaida.ortiz@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Misty West MD\"}', '405227183', '139871068', '1154095759', '{\"en\":\"Illum.\"}', 122, 1, 1, 'Porro ex nam.', '{\"en\":\"Simone Barrows\"}', '1354081051', '1826332435', '810315236', '{\"en\":\"Qui.\"}', 65, 4, 2, 'Perspiciatis quam.', '2022-03-12 13:41:54', '2022-03-12 13:41:54'),
(192, 'chadrick15@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Georgiana Schulist MD\"}', '52427684', '660066768', '1549950420', '{\"en\":\"Numquam.\"}', 227, 1, 1, 'Tempora tempora.', '{\"en\":\"Reanna Koch\"}', '1710564268', '627925320', '1955577012', '{\"en\":\"Nesciunt.\"}', 8, 3, 1, 'Architecto sint.', '2022-03-12 13:41:54', '2022-03-12 13:41:54'),
(193, 'lucius57@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Albina Williamson\"}', '1219020778', '1860733306', '935946857', '{\"en\":\"Aut dolor.\"}', 16, 3, 2, 'Excepturi velit.', '{\"en\":\"Carter Wilderman\"}', '301914151', '32360248', '502151353', '{\"en\":\"Cumque.\"}', 111, 8, 2, 'Vel quis et commodi.', '2022-03-12 13:41:54', '2022-03-12 13:41:54'),
(194, 'kshlerin.assunta@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Roel Dicki DDS\"}', '1023956739', '1318458263', '1339270958', '{\"en\":\"Ab rerum.\"}', 217, 6, 2, 'Occaecati in quo.', '{\"en\":\"Dameon Dooley\"}', '1056067966', '2103882640', '702319019', '{\"en\":\"Minima.\"}', 207, 3, 2, 'Dicta libero nisi.', '2022-03-12 13:41:54', '2022-03-12 13:41:54'),
(195, 'marquardt.matteo@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ryder Stroman\"}', '741532706', '1141061639', '66181123', '{\"en\":\"Facere et.\"}', 43, 6, 1, 'Rerum nobis iusto.', '{\"en\":\"Anjali Simonis\"}', '1868662357', '1921355638', '621724899', '{\"en\":\"Officiis.\"}', 141, 5, 1, 'Minus architecto.', '2022-03-12 13:41:54', '2022-03-12 13:41:54'),
(196, 'padberg.susanna@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ericka Murray II\"}', '1112473339', '1111032230', '997270704', '{\"en\":\"Ut aut et.\"}', 240, 1, 2, 'Aliquam deleniti in.', '{\"en\":\"Danielle Kirlin DVM\"}', '744027202', '586105178', '671593731', '{\"en\":\"At.\"}', 182, 12, 1, 'Minima aut mollitia.', '2022-03-12 13:41:54', '2022-03-12 13:41:54'),
(197, 'nienow.arianna@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Weldon Moen\"}', '1118379057', '1706635548', '1387391725', '{\"en\":\"Itaque.\"}', 111, 5, 1, 'Est repellendus sed.', '{\"en\":\"Addie Leuschke\"}', '1388959923', '1371242412', '941418519', '{\"en\":\"Tenetur.\"}', 95, 4, 2, 'Magnam tempore qui.', '2022-03-12 13:41:54', '2022-03-12 13:41:54'),
(198, 'dgreenholt@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Kenna Hackett I\"}', '79240806', '2001285878', '503465786', '{\"en\":\"Qui ut.\"}', 97, 3, 2, 'Aut doloremque.', '{\"en\":\"Lawson Grimes\"}', '1258209889', '389275309', '215476863', '{\"en\":\"Est vitae.\"}', 117, 8, 1, 'Qui labore incidunt.', '2022-03-12 13:41:54', '2022-03-12 13:41:54'),
(199, 'lchristiansen@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Rita Kreiger\"}', '62732071', '1593028702', '1256158874', '{\"en\":\"Maiores.\"}', 142, 2, 1, 'Autem consequatur.', '{\"en\":\"Mrs. Zula Swaniawski I\"}', '821851681', '1596942816', '913190026', '{\"en\":\"Beatae.\"}', 92, 1, 2, 'Quae voluptatum.', '2022-03-12 13:41:55', '2022-03-12 13:41:55'),
(200, 'hamill.earlene@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kaley Gottlieb DDS\"}', '422355379', '194020613', '1491579129', '{\"en\":\"Non.\"}', 136, 10, 2, 'Eius hic enim qui.', '{\"en\":\"Prof. Annamarie Stroman DDS\"}', '1603533915', '1804652755', '1785675984', '{\"en\":\"Soluta.\"}', 202, 11, 2, 'Asperiores ducimus.', '2022-03-12 13:41:55', '2022-03-12 13:41:55');

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
(24, '2022_02_16_095208_create_student_accounts_table', 1),
(25, '2022_02_16_095219_create_receipt_students_table', 1),
(26, '2022_02_16_095230_create_fund_accounts_table', 1),
(27, '2022_02_16_095241_create_processing_fees_table', 1),
(28, '2022_02_16_095253_create_payment_students_table', 1),
(29, '2022_02_16_095304_create_attendances_table', 1),
(30, '2022_02_16_095317_create_subjects_table', 1),
(31, '2022_02_16_095329_create_quizzes_table', 1),
(32, '2022_02_16_095340_create_questions_table', 1),
(33, '2022_02_16_095351_create_online_classes_table', 1),
(34, '2022_02_16_095412_create_libraries_table', 1),
(35, '2022_02_16_095423_create_settings_table', 1),
(36, '2022_02_16_095435_create_events_table', 1);

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
(1, '{\"en\":\"Afghan\",\"ar\":\"\\u0623\\u0641\\u063a\\u0627\\u0646\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:14', '2022-03-12 12:57:14'),
(2, '{\"en\":\"Albanian\",\"ar\":\"\\u0623\\u0644\\u0628\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:14', '2022-03-12 12:57:14'),
(3, '{\"en\":\"Aland Islander\",\"ar\":\"\\u0622\\u0644\\u0627\\u0646\\u062f\\u064a\"}', '2022-03-12 12:57:14', '2022-03-12 12:57:14'),
(4, '{\"en\":\"Algerian\",\"ar\":\"\\u062c\\u0632\\u0627\\u0626\\u0631\\u064a\"}', '2022-03-12 12:57:14', '2022-03-12 12:57:14'),
(5, '{\"en\":\"American Samoan\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a \\u0633\\u0627\\u0645\\u0648\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:14', '2022-03-12 12:57:14'),
(6, '{\"en\":\"Andorran\",\"ar\":\"\\u0623\\u0646\\u062f\\u0648\\u0631\\u064a\"}', '2022-03-12 12:57:14', '2022-03-12 12:57:14'),
(7, '{\"en\":\"Angolan\",\"ar\":\"\\u0623\\u0646\\u0642\\u0648\\u0644\\u064a\"}', '2022-03-12 12:57:14', '2022-03-12 12:57:14'),
(8, '{\"en\":\"Anguillan\",\"ar\":\"\\u0623\\u0646\\u063a\\u0648\\u064a\\u0644\\u064a\"}', '2022-03-12 12:57:14', '2022-03-12 12:57:14'),
(9, '{\"en\":\"Antarctican\",\"ar\":\"\\u0623\\u0646\\u062a\\u0627\\u0631\\u0643\\u062a\\u064a\\u0643\\u064a\"}', '2022-03-12 12:57:14', '2022-03-12 12:57:14'),
(10, '{\"en\":\"Antiguan\",\"ar\":\"\\u0628\\u0631\\u0628\\u0648\\u062f\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(11, '{\"en\":\"Argentinian\",\"ar\":\"\\u0623\\u0631\\u062c\\u0646\\u062a\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(12, '{\"en\":\"Armenian\",\"ar\":\"\\u0623\\u0631\\u0645\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(13, '{\"en\":\"Aruban\",\"ar\":\"\\u0623\\u0648\\u0631\\u0648\\u0628\\u0647\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(14, '{\"en\":\"Australian\",\"ar\":\"\\u0623\\u0633\\u062a\\u0631\\u0627\\u0644\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(15, '{\"en\":\"Austrian\",\"ar\":\"\\u0646\\u0645\\u0633\\u0627\\u0648\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(16, '{\"en\":\"Azerbaijani\",\"ar\":\"\\u0623\\u0630\\u0631\\u0628\\u064a\\u062c\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(17, '{\"en\":\"Bahamian\",\"ar\":\"\\u0628\\u0627\\u0647\\u0627\\u0645\\u064a\\u0633\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(18, '{\"en\":\"Bahraini\",\"ar\":\"\\u0628\\u062d\\u0631\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(19, '{\"en\":\"Bangladeshi\",\"ar\":\"\\u0628\\u0646\\u063a\\u0644\\u0627\\u062f\\u064a\\u0634\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(20, '{\"en\":\"Barbadian\",\"ar\":\"\\u0628\\u0631\\u0628\\u0627\\u062f\\u0648\\u0633\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(21, '{\"en\":\"Belarusian\",\"ar\":\"\\u0631\\u0648\\u0633\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(22, '{\"en\":\"Belgian\",\"ar\":\"\\u0628\\u0644\\u062c\\u064a\\u0643\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(23, '{\"en\":\"Belizean\",\"ar\":\"\\u0628\\u064a\\u0644\\u064a\\u0632\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(24, '{\"en\":\"Beninese\",\"ar\":\"\\u0628\\u0646\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(25, '{\"en\":\"Saint Barthelmian\",\"ar\":\"\\u0633\\u0627\\u0646 \\u0628\\u0627\\u0631\\u062a\\u064a\\u0644\\u0645\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(26, '{\"en\":\"Bermudan\",\"ar\":\"\\u0628\\u0631\\u0645\\u0648\\u062f\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(27, '{\"en\":\"Bhutanese\",\"ar\":\"\\u0628\\u0648\\u062a\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(28, '{\"en\":\"Bolivian\",\"ar\":\"\\u0628\\u0648\\u0644\\u064a\\u0641\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(29, '{\"en\":\"Bosnian \\/ Herzegovinian\",\"ar\":\"\\u0628\\u0648\\u0633\\u0646\\u064a\\/\\u0647\\u0631\\u0633\\u0643\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(30, '{\"en\":\"Botswanan\",\"ar\":\"\\u0628\\u0648\\u062a\\u0633\\u0648\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(31, '{\"en\":\"Bouvetian\",\"ar\":\"\\u0628\\u0648\\u0641\\u064a\\u0647\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(32, '{\"en\":\"Brazilian\",\"ar\":\"\\u0628\\u0631\\u0627\\u0632\\u064a\\u0644\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(33, '{\"en\":\"British Indian Ocean Territory\",\"ar\":\"\\u0625\\u0642\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0645\\u062d\\u064a\\u0637 \\u0627\\u0644\\u0647\\u0646\\u062f\\u064a \\u0627\\u0644\\u0628\\u0631\\u064a\\u0637\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(34, '{\"en\":\"Bruneian\",\"ar\":\"\\u0628\\u0631\\u0648\\u0646\\u064a\"}', '2022-03-12 12:57:15', '2022-03-12 12:57:15'),
(35, '{\"en\":\"Bulgarian\",\"ar\":\"\\u0628\\u0644\\u063a\\u0627\\u0631\\u064a\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(36, '{\"en\":\"Burkinabe\",\"ar\":\"\\u0628\\u0648\\u0631\\u0643\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(37, '{\"en\":\"Burundian\",\"ar\":\"\\u0628\\u0648\\u0631\\u0648\\u0646\\u064a\\u062f\\u064a\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(38, '{\"en\":\"Cambodian\",\"ar\":\"\\u0643\\u0645\\u0628\\u0648\\u062f\\u064a\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(39, '{\"en\":\"Cameroonian\",\"ar\":\"\\u0643\\u0627\\u0645\\u064a\\u0631\\u0648\\u0646\\u064a\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(40, '{\"en\":\"Canadian\",\"ar\":\"\\u0643\\u0646\\u062f\\u064a\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(41, '{\"en\":\"Cape Verdean\",\"ar\":\"\\u0627\\u0644\\u0631\\u0623\\u0633 \\u0627\\u0644\\u0623\\u062e\\u0636\\u0631\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(42, '{\"en\":\"Caymanian\",\"ar\":\"\\u0643\\u0627\\u064a\\u0645\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(43, '{\"en\":\"Central African\",\"ar\":\"\\u0623\\u0641\\u0631\\u064a\\u0642\\u064a\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(44, '{\"en\":\"Chadian\",\"ar\":\"\\u062a\\u0634\\u0627\\u062f\\u064a\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(45, '{\"en\":\"Chilean\",\"ar\":\"\\u0634\\u064a\\u0644\\u064a\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(46, '{\"en\":\"Chinese\",\"ar\":\"\\u0635\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(47, '{\"en\":\"Christmas Islander\",\"ar\":\"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0639\\u064a\\u062f \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(48, '{\"en\":\"Cocos Islander\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0643\\u0648\\u0643\\u0648\\u0633\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(49, '{\"en\":\"Colombian\",\"ar\":\"\\u0643\\u0648\\u0644\\u0648\\u0645\\u0628\\u064a\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(50, '{\"en\":\"Comorian\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0627\\u0644\\u0642\\u0645\\u0631\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(51, '{\"en\":\"Congolese\",\"ar\":\"\\u0643\\u0648\\u0646\\u063a\\u064a\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(52, '{\"en\":\"Cook Islander\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0643\\u0648\\u0643\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(53, '{\"en\":\"Costa Rican\",\"ar\":\"\\u0643\\u0648\\u0633\\u062a\\u0627\\u0631\\u064a\\u0643\\u064a\"}', '2022-03-12 12:57:16', '2022-03-12 12:57:16'),
(54, '{\"en\":\"Croatian\",\"ar\":\"\\u0643\\u0648\\u0631\\u0627\\u062a\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(55, '{\"en\":\"Cuban\",\"ar\":\"\\u0643\\u0648\\u0628\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(56, '{\"en\":\"Cypriot\",\"ar\":\"\\u0642\\u0628\\u0631\\u0635\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(57, '{\"en\":\"Curacian\",\"ar\":\"\\u0643\\u0648\\u0631\\u0627\\u0633\\u0627\\u0648\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(58, '{\"en\":\"Czech\",\"ar\":\"\\u062a\\u0634\\u064a\\u0643\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(59, '{\"en\":\"Danish\",\"ar\":\"\\u062f\\u0646\\u0645\\u0627\\u0631\\u0643\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(60, '{\"en\":\"Djiboutian\",\"ar\":\"\\u062c\\u064a\\u0628\\u0648\\u062a\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(61, '{\"en\":\"Dominican\",\"ar\":\"\\u062f\\u0648\\u0645\\u064a\\u0646\\u064a\\u0643\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(62, '{\"en\":\"Dominican\",\"ar\":\"\\u062f\\u0648\\u0645\\u064a\\u0646\\u064a\\u0643\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(63, '{\"en\":\"Ecuadorian\",\"ar\":\"\\u0625\\u0643\\u0648\\u0627\\u062f\\u0648\\u0631\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(64, '{\"en\":\"Egyptian\",\"ar\":\"\\u0645\\u0635\\u0631\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(65, '{\"en\":\"Salvadoran\",\"ar\":\"\\u0633\\u0644\\u0641\\u0627\\u062f\\u0648\\u0631\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(66, '{\"en\":\"Equatorial Guinean\",\"ar\":\"\\u063a\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(67, '{\"en\":\"Eritrean\",\"ar\":\"\\u0625\\u0631\\u064a\\u062a\\u064a\\u0631\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(68, '{\"en\":\"Estonian\",\"ar\":\"\\u0627\\u0633\\u062a\\u0648\\u0646\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(69, '{\"en\":\"Ethiopian\",\"ar\":\"\\u0623\\u062b\\u064a\\u0648\\u0628\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(70, '{\"en\":\"Falkland Islander\",\"ar\":\"\\u0641\\u0648\\u0643\\u0644\\u0627\\u0646\\u062f\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(71, '{\"en\":\"Faroese\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0641\\u0627\\u0631\\u0648\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(72, '{\"en\":\"Fijian\",\"ar\":\"\\u0641\\u064a\\u062c\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(73, '{\"en\":\"Finnish\",\"ar\":\"\\u0641\\u0646\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(74, '{\"en\":\"French\",\"ar\":\"\\u0641\\u0631\\u0646\\u0633\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(75, '{\"en\":\"French Guianese\",\"ar\":\"\\u063a\\u0648\\u064a\\u0627\\u0646\\u0627 \\u0627\\u0644\\u0641\\u0631\\u0646\\u0633\\u064a\\u0629\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(76, '{\"en\":\"French Polynesian\",\"ar\":\"\\u0628\\u0648\\u0644\\u064a\\u0646\\u064a\\u0632\\u064a\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(77, '{\"en\":\"French\",\"ar\":\"\\u0623\\u0631\\u0627\\u0636 \\u0641\\u0631\\u0646\\u0633\\u064a\\u0629 \\u062c\\u0646\\u0648\\u0628\\u064a\\u0629 \\u0648\\u0623\\u0646\\u062a\\u0627\\u0631\\u062a\\u064a\\u0643\\u064a\\u0629\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(78, '{\"en\":\"Gabonese\",\"ar\":\"\\u063a\\u0627\\u0628\\u0648\\u0646\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(79, '{\"en\":\"Gambian\",\"ar\":\"\\u063a\\u0627\\u0645\\u0628\\u064a\"}', '2022-03-12 12:57:17', '2022-03-12 12:57:17'),
(80, '{\"en\":\"Georgian\",\"ar\":\"\\u062c\\u064a\\u0648\\u0631\\u062c\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(81, '{\"en\":\"German\",\"ar\":\"\\u0623\\u0644\\u0645\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(82, '{\"en\":\"Ghanaian\",\"ar\":\"\\u063a\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(83, '{\"en\":\"Gibraltar\",\"ar\":\"\\u062c\\u0628\\u0644 \\u0637\\u0627\\u0631\\u0642\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(84, '{\"en\":\"Guernsian\",\"ar\":\"\\u063a\\u064a\\u0631\\u0646\\u0632\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(85, '{\"en\":\"Greek\",\"ar\":\"\\u064a\\u0648\\u0646\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(86, '{\"en\":\"Greenlandic\",\"ar\":\"\\u062c\\u0631\\u064a\\u0646\\u0644\\u0627\\u0646\\u062f\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(87, '{\"en\":\"Grenadian\",\"ar\":\"\\u063a\\u0631\\u064a\\u0646\\u0627\\u062f\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(88, '{\"en\":\"Guadeloupe\",\"ar\":\"\\u062c\\u0632\\u0631 \\u062c\\u0648\\u0627\\u062f\\u0644\\u0648\\u0628\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(89, '{\"en\":\"Guamanian\",\"ar\":\"\\u062c\\u0648\\u0627\\u0645\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(90, '{\"en\":\"Guatemalan\",\"ar\":\"\\u063a\\u0648\\u0627\\u062a\\u064a\\u0645\\u0627\\u0644\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(91, '{\"en\":\"Guinean\",\"ar\":\"\\u063a\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(92, '{\"en\":\"Guinea-Bissauan\",\"ar\":\"\\u063a\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(93, '{\"en\":\"Guyanese\",\"ar\":\"\\u063a\\u064a\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(94, '{\"en\":\"Haitian\",\"ar\":\"\\u0647\\u0627\\u064a\\u062a\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(95, '{\"en\":\"Heard and Mc Donald Islanders\",\"ar\":\"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0647\\u064a\\u0631\\u062f \\u0648\\u062c\\u0632\\u0631 \\u0645\\u0627\\u0643\\u062f\\u0648\\u0646\\u0627\\u0644\\u062f\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(96, '{\"en\":\"Honduran\",\"ar\":\"\\u0647\\u0646\\u062f\\u0648\\u0631\\u0627\\u0633\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(97, '{\"en\":\"Hongkongese\",\"ar\":\"\\u0647\\u0648\\u0646\\u063a \\u0643\\u0648\\u0646\\u063a\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(98, '{\"en\":\"Hungarian\",\"ar\":\"\\u0645\\u062c\\u0631\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(99, '{\"en\":\"Icelandic\",\"ar\":\"\\u0622\\u064a\\u0633\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(100, '{\"en\":\"Indian\",\"ar\":\"\\u0647\\u0646\\u062f\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(101, '{\"en\":\"Manx\",\"ar\":\"\\u0645\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:18', '2022-03-12 12:57:18'),
(102, '{\"en\":\"Indonesian\",\"ar\":\"\\u0623\\u0646\\u062f\\u0648\\u0646\\u064a\\u0633\\u064a\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(103, '{\"en\":\"Iranian\",\"ar\":\"\\u0625\\u064a\\u0631\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(104, '{\"en\":\"Iraqi\",\"ar\":\"\\u0639\\u0631\\u0627\\u0642\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(105, '{\"en\":\"Irish\",\"ar\":\"\\u0625\\u064a\\u0631\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(106, '{\"en\":\"Italian\",\"ar\":\"\\u0625\\u064a\\u0637\\u0627\\u0644\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(107, '{\"en\":\"Ivory Coastian\",\"ar\":\"\\u0633\\u0627\\u062d\\u0644 \\u0627\\u0644\\u0639\\u0627\\u062c\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(108, '{\"en\":\"Jersian\",\"ar\":\"\\u062c\\u064a\\u0631\\u0632\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(109, '{\"en\":\"Jamaican\",\"ar\":\"\\u062c\\u0645\\u0627\\u064a\\u0643\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(110, '{\"en\":\"Japanese\",\"ar\":\"\\u064a\\u0627\\u0628\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(111, '{\"en\":\"Jordanian\",\"ar\":\"\\u0623\\u0631\\u062f\\u0646\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(112, '{\"en\":\"Kazakh\",\"ar\":\"\\u0643\\u0627\\u0632\\u0627\\u062e\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(113, '{\"en\":\"Kenyan\",\"ar\":\"\\u0643\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(114, '{\"en\":\"I-Kiribati\",\"ar\":\"\\u0643\\u064a\\u0631\\u064a\\u0628\\u0627\\u062a\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(115, '{\"en\":\"North Korean\",\"ar\":\"\\u0643\\u0648\\u0631\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(116, '{\"en\":\"South Korean\",\"ar\":\"\\u0643\\u0648\\u0631\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(117, '{\"en\":\"Kosovar\",\"ar\":\"\\u0643\\u0648\\u0633\\u064a\\u0641\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(118, '{\"en\":\"Kuwaiti\",\"ar\":\"\\u0643\\u0648\\u064a\\u062a\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(119, '{\"en\":\"Kyrgyzstani\",\"ar\":\"\\u0642\\u064a\\u0631\\u063a\\u064a\\u0632\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(120, '{\"en\":\"Laotian\",\"ar\":\"\\u0644\\u0627\\u0648\\u0633\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(121, '{\"en\":\"Latvian\",\"ar\":\"\\u0644\\u0627\\u062a\\u064a\\u0641\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(122, '{\"en\":\"Lebanese\",\"ar\":\"\\u0644\\u0628\\u0646\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(123, '{\"en\":\"Basotho\",\"ar\":\"\\u0644\\u064a\\u0648\\u0633\\u064a\\u062a\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(124, '{\"en\":\"Liberian\",\"ar\":\"\\u0644\\u064a\\u0628\\u064a\\u0631\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(125, '{\"en\":\"Libyan\",\"ar\":\"\\u0644\\u064a\\u0628\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(126, '{\"en\":\"Liechtenstein\",\"ar\":\"\\u0644\\u064a\\u062e\\u062a\\u0646\\u0634\\u062a\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(127, '{\"en\":\"Lithuanian\",\"ar\":\"\\u0644\\u062a\\u0648\\u0627\\u0646\\u064a\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(128, '{\"en\":\"Luxembourger\",\"ar\":\"\\u0644\\u0648\\u0643\\u0633\\u0645\\u0628\\u0648\\u0631\\u063a\\u064a\"}', '2022-03-12 12:57:19', '2022-03-12 12:57:19'),
(129, '{\"en\":\"Sri Lankian\",\"ar\":\"\\u0633\\u0631\\u064a\\u0644\\u0627\\u0646\\u0643\\u064a\"}', '2022-03-12 12:57:20', '2022-03-12 12:57:20'),
(130, '{\"en\":\"Macanese\",\"ar\":\"\\u0645\\u0627\\u0643\\u0627\\u0648\\u064a\"}', '2022-03-12 12:57:20', '2022-03-12 12:57:20'),
(131, '{\"en\":\"Macedonian\",\"ar\":\"\\u0645\\u0642\\u062f\\u0648\\u0646\\u064a\"}', '2022-03-12 12:57:20', '2022-03-12 12:57:20'),
(132, '{\"en\":\"Malagasy\",\"ar\":\"\\u0645\\u062f\\u063a\\u0634\\u0642\\u0631\\u064a\"}', '2022-03-12 12:57:20', '2022-03-12 12:57:20'),
(133, '{\"en\":\"Malawian\",\"ar\":\"\\u0645\\u0627\\u0644\\u0627\\u0648\\u064a\"}', '2022-03-12 12:57:20', '2022-03-12 12:57:20'),
(134, '{\"en\":\"Malaysian\",\"ar\":\"\\u0645\\u0627\\u0644\\u064a\\u0632\\u064a\"}', '2022-03-12 12:57:20', '2022-03-12 12:57:20'),
(135, '{\"en\":\"Maldivian\",\"ar\":\"\\u0645\\u0627\\u0644\\u062f\\u064a\\u0641\\u064a\"}', '2022-03-12 12:57:20', '2022-03-12 12:57:20'),
(136, '{\"en\":\"Malian\",\"ar\":\"\\u0645\\u0627\\u0644\\u064a\"}', '2022-03-12 12:57:20', '2022-03-12 12:57:20'),
(137, '{\"en\":\"Maltese\",\"ar\":\"\\u0645\\u0627\\u0644\\u0637\\u064a\"}', '2022-03-12 12:57:20', '2022-03-12 12:57:20'),
(138, '{\"en\":\"Marshallese\",\"ar\":\"\\u0645\\u0627\\u0631\\u0634\\u0627\\u0644\\u064a\"}', '2022-03-12 12:57:20', '2022-03-12 12:57:20'),
(139, '{\"en\":\"Martiniquais\",\"ar\":\"\\u0645\\u0627\\u0631\\u062a\\u064a\\u0646\\u064a\\u0643\\u064a\"}', '2022-03-12 12:57:20', '2022-03-12 12:57:20'),
(140, '{\"en\":\"Mauritanian\",\"ar\":\"\\u0645\\u0648\\u0631\\u064a\\u062a\\u0627\\u0646\\u064a\\u064a\"}', '2022-03-12 12:57:20', '2022-03-12 12:57:20'),
(141, '{\"en\":\"Mauritian\",\"ar\":\"\\u0645\\u0648\\u0631\\u064a\\u0634\\u064a\\u0648\\u0633\\u064a\"}', '2022-03-12 12:57:20', '2022-03-12 12:57:20'),
(142, '{\"en\":\"Mahoran\",\"ar\":\"\\u0645\\u0627\\u064a\\u0648\\u062a\\u064a\"}', '2022-03-12 12:57:20', '2022-03-12 12:57:20'),
(143, '{\"en\":\"Mexican\",\"ar\":\"\\u0645\\u0643\\u0633\\u064a\\u0643\\u064a\"}', '2022-03-12 12:57:20', '2022-03-12 12:57:20'),
(144, '{\"en\":\"Micronesian\",\"ar\":\"\\u0645\\u0627\\u064a\\u0643\\u0631\\u0648\\u0646\\u064a\\u0632\\u064a\\u064a\"}', '2022-03-12 12:57:20', '2022-03-12 12:57:20'),
(145, '{\"en\":\"Moldovan\",\"ar\":\"\\u0645\\u0648\\u0644\\u062f\\u064a\\u0641\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(146, '{\"en\":\"Monacan\",\"ar\":\"\\u0645\\u0648\\u0646\\u064a\\u0643\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(147, '{\"en\":\"Mongolian\",\"ar\":\"\\u0645\\u0646\\u063a\\u0648\\u0644\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(148, '{\"en\":\"Montenegrin\",\"ar\":\"\\u0627\\u0644\\u062c\\u0628\\u0644 \\u0627\\u0644\\u0623\\u0633\\u0648\\u062f\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(149, '{\"en\":\"Montserratian\",\"ar\":\"\\u0645\\u0648\\u0646\\u062a\\u0633\\u064a\\u0631\\u0627\\u062a\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(150, '{\"en\":\"Moroccan\",\"ar\":\"\\u0645\\u063a\\u0631\\u0628\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(151, '{\"en\":\"Mozambican\",\"ar\":\"\\u0645\\u0648\\u0632\\u0645\\u0628\\u064a\\u0642\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(152, '{\"en\":\"Myanmarian\",\"ar\":\"\\u0645\\u064a\\u0627\\u0646\\u0645\\u0627\\u0631\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(153, '{\"en\":\"Namibian\",\"ar\":\"\\u0646\\u0627\\u0645\\u064a\\u0628\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(154, '{\"en\":\"Nauruan\",\"ar\":\"\\u0646\\u0648\\u0631\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(155, '{\"en\":\"Nepalese\",\"ar\":\"\\u0646\\u064a\\u0628\\u0627\\u0644\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(156, '{\"en\":\"Dutch\",\"ar\":\"\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(157, '{\"en\":\"Dutch Antilier\",\"ar\":\"\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(158, '{\"en\":\"New Caledonian\",\"ar\":\"\\u0643\\u0627\\u0644\\u064a\\u062f\\u0648\\u0646\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(159, '{\"en\":\"New Zealander\",\"ar\":\"\\u0646\\u064a\\u0648\\u0632\\u064a\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(160, '{\"en\":\"Nicaraguan\",\"ar\":\"\\u0646\\u064a\\u0643\\u0627\\u0631\\u0627\\u062c\\u0648\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(161, '{\"en\":\"Nigerien\",\"ar\":\"\\u0646\\u064a\\u062c\\u064a\\u0631\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(162, '{\"en\":\"Nigerian\",\"ar\":\"\\u0646\\u064a\\u062c\\u064a\\u0631\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(163, '{\"en\":\"Niuean\",\"ar\":\"\\u0646\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(164, '{\"en\":\"Norfolk Islander\",\"ar\":\"\\u0646\\u0648\\u0631\\u0641\\u0648\\u0644\\u064a\\u0643\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(165, '{\"en\":\"Northern Marianan\",\"ar\":\"\\u0645\\u0627\\u0631\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(166, '{\"en\":\"Norwegian\",\"ar\":\"\\u0646\\u0631\\u0648\\u064a\\u062c\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(167, '{\"en\":\"Omani\",\"ar\":\"\\u0639\\u0645\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(168, '{\"en\":\"Pakistani\",\"ar\":\"\\u0628\\u0627\\u0643\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(169, '{\"en\":\"Palauan\",\"ar\":\"\\u0628\\u0627\\u0644\\u0627\\u0648\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(170, '{\"en\":\"Palestinian\",\"ar\":\"\\u0641\\u0644\\u0633\\u0637\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(171, '{\"en\":\"Panamanian\",\"ar\":\"\\u0628\\u0646\\u0645\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(172, '{\"en\":\"Papua New Guinean\",\"ar\":\"\\u0628\\u0627\\u0628\\u0648\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(173, '{\"en\":\"Paraguayan\",\"ar\":\"\\u0628\\u0627\\u0631\\u063a\\u0627\\u0648\\u064a\"}', '2022-03-12 12:57:21', '2022-03-12 12:57:21'),
(174, '{\"en\":\"Peruvian\",\"ar\":\"\\u0628\\u064a\\u0631\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(175, '{\"en\":\"Filipino\",\"ar\":\"\\u0641\\u0644\\u0628\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(176, '{\"en\":\"Pitcairn Islander\",\"ar\":\"\\u0628\\u064a\\u062a\\u0643\\u064a\\u0631\\u0646\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(177, '{\"en\":\"Polish\",\"ar\":\"\\u0628\\u0648\\u0644\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(178, '{\"en\":\"Portuguese\",\"ar\":\"\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(179, '{\"en\":\"Puerto Rican\",\"ar\":\"\\u0628\\u0648\\u0631\\u062a\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(180, '{\"en\":\"Qatari\",\"ar\":\"\\u0642\\u0637\\u0631\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(181, '{\"en\":\"Reunionese\",\"ar\":\"\\u0631\\u064a\\u0648\\u0646\\u064a\\u0648\\u0646\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(182, '{\"en\":\"Romanian\",\"ar\":\"\\u0631\\u0648\\u0645\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(183, '{\"en\":\"Russian\",\"ar\":\"\\u0631\\u0648\\u0633\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(184, '{\"en\":\"Rwandan\",\"ar\":\"\\u0631\\u0648\\u0627\\u0646\\u062f\\u0627\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(185, '{\"ar\":\"Kittitian\\/Nevisian\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(186, '{\"en\":\"St. Martian(French)\",\"ar\":\"\\u0633\\u0627\\u064a\\u0646\\u062a \\u0645\\u0627\\u0631\\u062a\\u0646\\u064a \\u0641\\u0631\\u0646\\u0633\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(187, '{\"en\":\"St. Martian(Dutch)\",\"ar\":\"\\u0633\\u0627\\u064a\\u0646\\u062a \\u0645\\u0627\\u0631\\u062a\\u0646\\u064a \\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(188, '{\"en\":\"St. Pierre and Miquelon\",\"ar\":\"\\u0633\\u0627\\u0646 \\u0628\\u064a\\u064a\\u0631 \\u0648\\u0645\\u064a\\u0643\\u0644\\u0648\\u0646\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(189, '{\"en\":\"Saint Vincent and the Grenadines\",\"ar\":\"\\u0633\\u0627\\u0646\\u062a \\u0641\\u0646\\u0633\\u0646\\u062a \\u0648\\u062c\\u0632\\u0631 \\u063a\\u0631\\u064a\\u0646\\u0627\\u062f\\u064a\\u0646\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(190, '{\"en\":\"Samoan\",\"ar\":\"\\u0633\\u0627\\u0645\\u0648\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(191, '{\"en\":\"Sammarinese\",\"ar\":\"\\u0645\\u0627\\u0631\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(192, '{\"en\":\"Sao Tomean\",\"ar\":\"\\u0633\\u0627\\u0648 \\u062a\\u0648\\u0645\\u064a \\u0648\\u0628\\u0631\\u064a\\u0646\\u0633\\u064a\\u0628\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(193, '{\"en\":\"Saudi Arabian\",\"ar\":\"\\u0633\\u0639\\u0648\\u062f\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(194, '{\"en\":\"Senegalese\",\"ar\":\"\\u0633\\u0646\\u063a\\u0627\\u0644\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(195, '{\"en\":\"Serbian\",\"ar\":\"\\u0635\\u0631\\u0628\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(196, '{\"en\":\"Seychellois\",\"ar\":\"\\u0633\\u064a\\u0634\\u064a\\u0644\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(197, '{\"en\":\"Sierra Leonean\",\"ar\":\"\\u0633\\u064a\\u0631\\u0627\\u0644\\u064a\\u0648\\u0646\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(198, '{\"en\":\"Singaporean\",\"ar\":\"\\u0633\\u0646\\u063a\\u0627\\u0641\\u0648\\u0631\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(199, '{\"en\":\"Slovak\",\"ar\":\"\\u0633\\u0648\\u0644\\u0641\\u0627\\u0643\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(200, '{\"en\":\"Slovenian\",\"ar\":\"\\u0633\\u0648\\u0644\\u0641\\u064a\\u0646\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(201, '{\"en\":\"Solomon Island\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0633\\u0644\\u064a\\u0645\\u0627\\u0646\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(202, '{\"en\":\"Somali\",\"ar\":\"\\u0635\\u0648\\u0645\\u0627\\u0644\\u064a\"}', '2022-03-12 12:57:22', '2022-03-12 12:57:22'),
(203, '{\"en\":\"South African\",\"ar\":\"\\u0623\\u0641\\u0631\\u064a\\u0642\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(204, '{\"en\":\"South Georgia and the South Sandwich\",\"ar\":\"\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629 \\u0627\\u0644\\u0642\\u0637\\u0628\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0646\\u0648\\u0628\\u064a\\u0629\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(205, '{\"en\":\"South Sudanese\",\"ar\":\"\\u0633\\u0648\\u0627\\u062f\\u0646\\u064a \\u062c\\u0646\\u0648\\u0628\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(206, '{\"en\":\"Spanish\",\"ar\":\"\\u0625\\u0633\\u0628\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(207, '{\"en\":\"St. Helenian\",\"ar\":\"\\u0647\\u064a\\u0644\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(208, '{\"en\":\"Sudanese\",\"ar\":\"\\u0633\\u0648\\u062f\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(209, '{\"en\":\"Surinamese\",\"ar\":\"\\u0633\\u0648\\u0631\\u064a\\u0646\\u0627\\u0645\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(210, '{\"en\":\"Svalbardian\\/Jan Mayenian\",\"ar\":\"\\u0633\\u0641\\u0627\\u0644\\u0628\\u0627\\u0631\\u062f \\u0648\\u064a\\u0627\\u0646 \\u0645\\u0627\\u064a\\u0646\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(211, '{\"en\":\"Swazi\",\"ar\":\"\\u0633\\u0648\\u0627\\u0632\\u064a\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(212, '{\"en\":\"Swedish\",\"ar\":\"\\u0633\\u0648\\u064a\\u062f\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(213, '{\"en\":\"Swiss\",\"ar\":\"\\u0633\\u0648\\u064a\\u0633\\u0631\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(214, '{\"en\":\"Syrian\",\"ar\":\"\\u0633\\u0648\\u0631\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(215, '{\"en\":\"Taiwanese\",\"ar\":\"\\u062a\\u0627\\u064a\\u0648\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(216, '{\"en\":\"Tajikistani\",\"ar\":\"\\u0637\\u0627\\u062c\\u064a\\u0643\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(217, '{\"en\":\"Tanzanian\",\"ar\":\"\\u062a\\u0646\\u0632\\u0627\\u0646\\u064a\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(218, '{\"en\":\"Thai\",\"ar\":\"\\u062a\\u0627\\u064a\\u0644\\u0646\\u062f\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(219, '{\"en\":\"Timor-Lestian\",\"ar\":\"\\u062a\\u064a\\u0645\\u0648\\u0631\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(220, '{\"en\":\"Togolese\",\"ar\":\"\\u062a\\u0648\\u063a\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(221, '{\"en\":\"Tokelaian\",\"ar\":\"\\u062a\\u0648\\u0643\\u064a\\u0644\\u0627\\u0648\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(222, '{\"en\":\"Tongan\",\"ar\":\"\\u062a\\u0648\\u0646\\u063a\\u064a\"}', '2022-03-12 12:57:23', '2022-03-12 12:57:23'),
(223, '{\"en\":\"Trinidadian\\/Tobagonian\",\"ar\":\"\\u062a\\u0631\\u064a\\u0646\\u064a\\u062f\\u0627\\u062f \\u0648\\u062a\\u0648\\u0628\\u0627\\u063a\\u0648\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(224, '{\"en\":\"Tunisian\",\"ar\":\"\\u062a\\u0648\\u0646\\u0633\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(225, '{\"en\":\"Turkish\",\"ar\":\"\\u062a\\u0631\\u0643\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(226, '{\"en\":\"Turkmen\",\"ar\":\"\\u062a\\u0631\\u0643\\u0645\\u0627\\u0646\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(227, '{\"en\":\"Turks and Caicos Islands\",\"ar\":\"\\u062c\\u0632\\u0631 \\u062a\\u0648\\u0631\\u0643\\u0633 \\u0648\\u0643\\u0627\\u064a\\u0643\\u0648\\u0633\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(228, '{\"en\":\"Tuvaluan\",\"ar\":\"\\u062a\\u0648\\u0641\\u0627\\u0644\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(229, '{\"en\":\"Ugandan\",\"ar\":\"\\u0623\\u0648\\u063a\\u0646\\u062f\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(230, '{\"en\":\"Ukrainian\",\"ar\":\"\\u0623\\u0648\\u0643\\u0631\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(231, '{\"en\":\"Emirati\",\"ar\":\"\\u0625\\u0645\\u0627\\u0631\\u0627\\u062a\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(232, '{\"en\":\"British\",\"ar\":\"\\u0628\\u0631\\u064a\\u0637\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(233, '{\"en\":\"American\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(234, '{\"en\":\"US Minor Outlying Islander\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(235, '{\"en\":\"Uruguayan\",\"ar\":\"\\u0623\\u0648\\u0631\\u063a\\u0648\\u0627\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(236, '{\"en\":\"Uzbek\",\"ar\":\"\\u0623\\u0648\\u0632\\u0628\\u0627\\u0643\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(237, '{\"en\":\"Vanuatuan\",\"ar\":\"\\u0641\\u0627\\u0646\\u0648\\u0627\\u062a\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(238, '{\"en\":\"Venezuelan\",\"ar\":\"\\u0641\\u0646\\u0632\\u0648\\u064a\\u0644\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(239, '{\"en\":\"Vietnamese\",\"ar\":\"\\u0641\\u064a\\u062a\\u0646\\u0627\\u0645\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(240, '{\"en\":\"American Virgin Islander\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(241, '{\"en\":\"Vatican\",\"ar\":\"\\u0641\\u0627\\u062a\\u064a\\u0643\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(242, '{\"en\":\"Wallisian\\/Futunan\",\"ar\":\"\\u0641\\u0648\\u062a\\u0648\\u0646\\u064a\"}', '2022-03-12 12:57:24', '2022-03-12 12:57:24'),
(243, '{\"en\":\"Sahrawian\",\"ar\":\"\\u0635\\u062d\\u0631\\u0627\\u0648\\u064a\"}', '2022-03-12 12:57:25', '2022-03-12 12:57:25'),
(244, '{\"en\":\"Yemeni\",\"ar\":\"\\u064a\\u0645\\u0646\\u064a\"}', '2022-03-12 12:57:25', '2022-03-12 12:57:25'),
(245, '{\"en\":\"Zambian\",\"ar\":\"\\u0632\\u0627\\u0645\\u0628\\u064a\\u0627\\u0646\\u064a\"}', '2022-03-12 12:57:25', '2022-03-12 12:57:25'),
(246, '{\"en\":\"Zimbabwean\",\"ar\":\"\\u0632\\u0645\\u0628\\u0627\\u0628\\u0648\\u064a\"}', '2022-03-12 12:57:25', '2022-03-12 12:57:25');

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
(1, '{\"en\":\"Muslim\",\"ar\":\"\\u0645\\u0633\\u0644\\u0645\"}', '2022-03-12 12:57:37', '2022-03-12 12:57:37'),
(2, '{\"en\":\"Christian\",\"ar\":\"\\u0645\\u0633\\u064a\\u062d\\u064a\"}', '2022-03-12 12:57:37', '2022-03-12 12:57:37'),
(3, '{\"en\":\"Other\",\"ar\":\"\\u063a\\u064a\\u0631\\u0630\\u0644\\u0643\"}', '2022-03-12 12:57:37', '2022-03-12 12:57:37');

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
(2, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 1, 3, '2022-03-12 13:02:37', '2022-03-12 13:02:37'),
(3, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 1, 3, '2022-03-12 13:03:06', '2022-03-12 13:03:06'),
(4, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 1, 4, '2022-03-12 13:03:28', '2022-03-12 13:03:28'),
(5, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 1, 4, '2022-03-12 13:03:48', '2022-03-12 13:03:48'),
(6, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 5, '2022-03-12 13:04:59', '2022-03-12 13:04:59'),
(7, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 5, '2022-03-12 13:05:23', '2022-03-12 13:05:23'),
(8, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 5, '2022-03-12 13:05:38', '2022-03-12 13:05:38'),
(9, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 6, '2022-03-12 13:06:11', '2022-03-12 13:06:11'),
(10, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 6, '2022-03-12 13:06:47', '2022-03-12 13:06:47'),
(11, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 6, '2022-03-12 13:06:58', '2022-03-12 13:06:58'),
(12, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 7, '2022-03-12 13:09:27', '2022-03-12 13:09:27'),
(13, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 7, '2022-03-12 13:09:42', '2022-03-12 13:09:42'),
(14, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 7, '2022-03-12 13:09:54', '2022-03-12 13:09:54'),
(15, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 8, '2022-03-12 13:10:06', '2022-03-12 13:10:06'),
(16, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 8, '2022-03-12 13:10:17', '2022-03-12 13:10:17'),
(17, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 8, '2022-03-12 13:10:29', '2022-03-12 13:10:29'),
(18, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 9, '2022-03-12 13:10:43', '2022-03-12 13:10:43'),
(19, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 9, '2022-03-12 13:10:52', '2022-03-12 13:10:52'),
(20, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 9, '2022-03-12 13:11:06', '2022-03-12 13:11:06'),
(21, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 10, '2022-03-12 13:11:17', '2022-03-12 13:11:17'),
(22, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 10, '2022-03-12 13:11:28', '2022-03-12 13:11:28'),
(23, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 10, '2022-03-12 13:11:38', '2022-03-12 13:11:38'),
(24, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 3, 11, '2022-03-12 13:13:38', '2022-03-12 13:13:38'),
(25, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 3, 11, '2022-03-12 13:13:51', '2022-03-12 13:13:51'),
(26, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 3, 11, '2022-03-12 13:14:06', '2022-03-12 13:14:06'),
(27, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 3, 12, '2022-03-12 13:14:18', '2022-03-12 13:14:18'),
(28, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 3, 12, '2022-03-12 13:14:29', '2022-03-12 13:14:29'),
(29, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 3, 12, '2022-03-12 13:14:40', '2022-03-12 13:14:40'),
(30, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 3, 13, '2022-03-12 13:14:52', '2022-03-12 13:14:52'),
(32, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 3, 13, '2022-03-12 13:16:13', '2022-03-12 13:16:13'),
(33, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 3, 13, '2022-03-12 13:16:25', '2022-03-12 13:16:25');

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
(1, '{\"en\":\"Arabic\",\"ar\":\"\\u0639\\u0631\\u0628\\u064a\"}', '2022-03-12 12:58:45', '2022-03-12 12:58:45'),
(2, '{\"en\":\"English\",\"ar\":\"\\u0627\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\"}', '2022-03-12 12:58:45', '2022-03-12 12:58:45'),
(3, '{\"en\":\"German\",\"ar\":\"\\u0627\\u0644\\u0645\\u0627\\u0646\\u0649\"}', '2022-03-12 12:58:45', '2022-03-12 12:58:45'),
(4, '{\"en\":\"Sciences\",\"ar\":\"\\u0639\\u0644\\u0648\\u0645\"}', '2022-03-12 12:58:45', '2022-03-12 12:58:45'),
(5, '{\"en\":\"Mathematics\",\"ar\":\"\\u0631\\u064a\\u0627\\u0636\\u064a\\u0627\\u062a\"}', '2022-03-12 12:58:45', '2022-03-12 12:58:45'),
(6, '{\"en\":\"Social Studies\",\"ar\":\"\\u062f\\u0631\\u0627\\u0633\\u0627\\u062a \\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629\"}', '2022-03-12 12:58:45', '2022-03-12 12:58:45'),
(7, '{\"en\":\"Computer\",\"ar\":\"\\u062d\\u0627\\u0633\\u0628 \\u0627\\u0644\\u064a\"}', '2022-03-12 12:58:45', '2022-03-12 12:58:45'),
(8, '{\"en\":\"Discover\",\"ar\":\"\\u0627\\u0643\\u062a\\u0634\\u0641\"}', '2022-03-12 12:58:45', '2022-03-12 12:58:45'),
(9, '{\"en\":\"religion\",\"ar\":\"\\u062f\\u064a\\u0646\"}', '2022-03-12 12:58:46', '2022-03-12 12:58:46'),
(10, '{\"en\":\"fee\",\"ar\":\"\\u0631\\u0633\\u0645\"}', '2022-03-12 12:58:46', '2022-03-12 12:58:46'),
(11, '{\"en\":\"games\",\"ar\":\"\\u0627\\u0644\\u0639\\u0627\\u0628\"}', '2022-03-12 12:58:46', '2022-03-12 12:58:46');

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
(1, '{\"en\":\"Lucie Champlin\",\"ar\":\"\\u0644\\u0648\\u0633\\u0649 \\u0634\\u0627\\u0645\\u0628\\u0644\\u064a\\u0648\\u0646\"}', 'heathcote.yolanda@example.net', '$2y$10$HUQYmXvZoYor/UyfU57YfucHkh5.JznQeM2f7zljZpggWaMjdrDLi', 2, 175, 5, '1972-12-08', 3, 11, 13, 27, '2022', NULL, '2022-03-12 13:42:34', '2022-03-12 14:04:20'),
(2, '{\"en\":\"Elenor Berge\"}', 'curtis27@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 158, 1, '2020-01-19', 2, 12, 2, 164, '2022', NULL, '2022-03-12 13:42:34', '2022-03-12 13:42:34'),
(3, '{\"en\":\"Tate Borer\"}', 'goyette.laura@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 169, 1, '1995-05-16', 4, 9, 19, 78, '2022', NULL, '2022-03-12 13:42:34', '2022-03-12 13:42:34'),
(4, '{\"en\":\"Paolo Pouros\"}', 'adrianna.kilback@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 151, 9, '1981-12-02', 3, 13, 24, 75, '2022', NULL, '2022-03-12 13:42:34', '2022-03-12 13:42:34'),
(5, '{\"en\":\"Marlon Pfannerstill\"}', 'etha.welch@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 48, 5, '1978-07-22', 2, 14, 16, 200, '2022', NULL, '2022-03-12 13:42:34', '2022-03-12 13:42:34'),
(6, '{\"en\":\"Jevon Schinner\",\"ar\":\"\\u062c\\u064a\\u0641\\u0648\\u0646 \\u0633\\u0643\\u064a\\u0646\\u0631\"}', 'torphy.brisa@example.com', '$2y$10$muGlbE67Dl/egsnsfzzzK.Y6aoXMOS1DV3.fYqNkHk/wDGksPZKtW', 2, 208, 10, '1971-01-19', 1, 3, 23, 28, '2022', NULL, '2022-03-12 13:42:34', '2022-03-12 21:29:59'),
(7, '{\"en\":\"Lilla Jacobson IV\"}', 'lexi21@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 223, 5, '1988-08-16', 1, 16, 11, 111, '2022', NULL, '2022-03-12 13:42:34', '2022-03-12 13:42:34'),
(8, '{\"en\":\"Joannie O\'Keefe III\"}', 'qhegmann@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 39, 1, '2017-06-28', 2, 9, 25, 185, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(9, '{\"en\":\"Lew Wilkinson Sr.\"}', 'luna26@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 167, 10, '2013-05-01', 4, 10, 10, 197, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(10, '{\"en\":\"Anabel Botsford\"}', 'mayer.eula@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 85, 3, '2019-12-13', 3, 13, 26, 150, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(11, '{\"en\":\"Luigi Hirthe\"}', 'gregg63@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 212, 1, '1971-03-12', 3, 16, 26, 33, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(12, '{\"en\":\"Micah Kohler V\"}', 'treutel.rogers@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 13, 3, '2013-10-02', 1, 3, 5, 34, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(13, '{\"en\":\"Maureen Littel\"}', 'cassidy.champlin@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 171, 4, '1994-09-29', 4, 11, 25, 117, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(14, '{\"en\":\"Aracely Spencer\"}', 'clarissa18@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 113, 7, '2015-12-21', 1, 10, 2, 60, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(15, '{\"en\":\"Prof. Jesus Spencer II\"}', 'akuhic@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 133, 9, '2015-04-23', 1, 15, 13, 12, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(16, '{\"en\":\"Kadin Berge\"}', 'jerel.mosciski@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 182, 6, '2014-08-16', 1, 8, 2, 199, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(17, '{\"en\":\"Dr. Lisette Koepp\"}', 'haley.keyon@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 134, 7, '1995-11-23', 1, 9, 6, 104, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(18, '{\"en\":\"Myra Hagenes\"}', 'steve04@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 92, 11, '1988-09-03', 1, 14, 8, 31, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(19, '{\"en\":\"Elnora Shanahan\"}', 'elliot.lebsack@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 23, 1, '1995-04-14', 2, 11, 24, 160, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(20, '{\"en\":\"Prof. Kassandra Macejkovic\"}', 'vhyatt@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 62, 5, '1970-03-23', 3, 7, 20, 107, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(21, '{\"en\":\"Ms. Cristal Towne\"}', 'utrantow@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 32, 9, '2011-07-26', 1, 3, 8, 47, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(22, '{\"en\":\"Josefa Torp\"}', 'al38@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 17, 2, '1980-06-11', 4, 12, 21, 40, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(23, '{\"en\":\"Matilda Erdman\"}', 'rice.maggie@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 225, 1, '2017-09-22', 4, 12, 4, 81, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(24, '{\"en\":\"Elody Prohaska\"}', 'uhoppe@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 217, 12, '1994-12-18', 3, 5, 2, 63, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(25, '{\"en\":\"Prof. Layne Lang\"}', 'hgislason@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 15, 7, '2002-06-30', 1, 12, 14, 44, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(26, '{\"en\":\"Rickie Legros\"}', 'jerde.anibal@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 94, 10, '2013-05-04', 4, 11, 14, 142, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(27, '{\"en\":\"Collin Gorczany\"}', 'fhessel@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 130, 1, '1977-06-03', 1, 15, 26, 158, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(28, '{\"en\":\"Mrs. Meda Kilback DVM\"}', 'lowe.retta@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 134, 8, '2017-04-22', 4, 4, 13, 102, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(29, '{\"en\":\"Woodrow Blanda\"}', 'wiegand.hillary@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 147, 1, '1986-03-06', 1, 15, 15, 108, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(30, '{\"en\":\"Adeline McLaughlin\"}', 'gjohns@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 80, 6, '1978-01-27', 1, 7, 5, 5, '2022', NULL, '2022-03-12 13:42:35', '2022-03-12 13:42:35'),
(31, '{\"en\":\"Ms. Lacey Kunze\"}', 'bo.walsh@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 67, 12, '1979-06-11', 2, 8, 3, 113, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(32, '{\"en\":\"Ms. Zella Stoltenberg\"}', 'sipes.cicero@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 48, 9, '1973-11-14', 3, 9, 2, 159, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(33, '{\"en\":\"Mr. Jameson Heller DDS\"}', 'mante.abdiel@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 100, 12, '1985-08-13', 3, 16, 12, 178, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(34, '{\"en\":\"Dr. Hassan Maggio\"}', 'tsanford@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 133, 11, '1988-03-07', 2, 6, 13, 6, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(35, '{\"en\":\"Prof. Gillian Murphy\"}', 'anika41@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 222, 8, '1984-08-12', 4, 13, 17, 75, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(36, '{\"en\":\"Mrs. Haylie Kemmer\"}', 'mia67@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 125, 6, '2005-06-14', 3, 5, 24, 186, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(37, '{\"en\":\"Vladimir Murazik\"}', 'nola67@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 90, 12, '2004-10-11', 1, 10, 20, 163, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(38, '{\"en\":\"Kiel Mayer\"}', 'bahringer.georgiana@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 92, 5, '2021-04-30', 3, 7, 18, 73, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(39, '{\"en\":\"Elmore Hauck\"}', 'gislason.ryleigh@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 117, 2, '2016-10-07', 1, 9, 19, 79, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(40, '{\"en\":\"Vida Wisozk\"}', 'witting.jamarcus@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 93, 9, '1975-05-24', 1, 12, 21, 108, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(41, '{\"en\":\"Darien Bahringer\"}', 'conner03@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 23, 8, '2003-09-04', 1, 7, 9, 87, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(42, '{\"en\":\"Flavie Senger\"}', 'leopoldo.raynor@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 28, 11, '1998-04-05', 3, 11, 4, 7, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(43, '{\"en\":\"Boris Schmidt\"}', 'yadira.kunze@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 5, 4, '2019-12-21', 2, 10, 17, 2, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(44, '{\"en\":\"Broderick O\'Connell\"}', 'dan32@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 95, 8, '2000-12-07', 2, 8, 14, 65, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(45, '{\"en\":\"Melisa Hilpert\"}', 'ebba16@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 140, 3, '1997-11-26', 2, 12, 20, 185, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(46, '{\"en\":\"Syble Osinski\"}', 'sblick@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 27, 12, '1972-12-23', 4, 10, 9, 55, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(47, '{\"en\":\"Prof. Garth Sauer Sr.\"}', 'llynch@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 91, 1, '2000-02-24', 3, 16, 25, 78, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(48, '{\"en\":\"Ophelia Mohr V\"}', 'roman40@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 149, 4, '1978-08-06', 1, 16, 25, 42, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(49, '{\"en\":\"Dr. Bennett Lindgren\"}', 'murphy.jesus@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 122, 2, '1999-08-14', 1, 3, 7, 81, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(50, '{\"en\":\"Miss Joanie Gislason\"}', 'anya.hirthe@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 39, 1, '1976-08-19', 3, 5, 7, 119, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(51, '{\"en\":\"Ms. Naomi Stark DDS\"}', 'mhalvorson@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 228, 2, '2000-08-07', 3, 9, 6, 126, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(52, '{\"en\":\"Ms. Eugenia Koss\"}', 'eduardo.dicki@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 164, 6, '1984-05-26', 3, 4, 14, 96, '2022', NULL, '2022-03-12 13:42:36', '2022-03-12 13:42:36'),
(53, '{\"en\":\"Alia Hilpert II\"}', 'keichmann@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 224, 3, '2014-06-23', 1, 11, 10, 69, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(54, '{\"en\":\"Verdie Waters\"}', 'iliana40@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 59, 10, '1995-04-28', 4, 8, 11, 76, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(55, '{\"en\":\"Trent Emmerich\"}', 'mmayer@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 2, 8, '1980-01-24', 1, 13, 6, 199, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(56, '{\"en\":\"Clement Hirthe V\"}', 'joaquin.dickinson@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 239, 6, '2019-09-04', 2, 11, 5, 161, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(57, '{\"en\":\"Emelie Predovic\"}', 'hbode@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 154, 8, '2009-12-21', 1, 5, 18, 102, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(58, '{\"en\":\"Kiara Boyer Jr.\"}', 'billy92@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 78, 4, '1999-12-05', 3, 15, 24, 125, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(59, '{\"en\":\"Miss Kaia Christiansen PhD\"}', 'mariana92@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 57, 1, '1998-08-09', 1, 9, 8, 105, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(60, '{\"en\":\"Miss Serena Hamill\"}', 'bbraun@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 156, 7, '2012-10-15', 2, 12, 18, 154, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(61, '{\"en\":\"Kirsten Runolfsdottir\"}', 'jesus.kozey@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 26, 2, '1992-08-09', 3, 7, 6, 28, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(62, '{\"en\":\"Johnathon Ritchie\"}', 'mariana.auer@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 92, 3, '2021-10-01', 4, 8, 23, 75, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(63, '{\"en\":\"Miss Lorine Von V\"}', 'shanon50@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 178, 1, '2017-07-08', 1, 16, 11, 120, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(64, '{\"en\":\"Shanon Kirlin\"}', 'zsauer@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 151, 5, '1993-10-08', 3, 13, 19, 56, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(65, '{\"en\":\"Dayne Keebler\"}', 'pierre.boyer@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 14, 9, '2000-08-30', 4, 6, 20, 163, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(66, '{\"en\":\"Alexis McKenzie DVM\"}', 'shields.heath@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 178, 2, '1990-04-01', 1, 8, 13, 74, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(67, '{\"en\":\"Skyla Jenkins\"}', 'mraz.roman@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 72, 10, '1997-08-24', 1, 7, 15, 39, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(68, '{\"en\":\"Mazie Braun\"}', 'jefferey82@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 23, 8, '1988-12-27', 4, 9, 15, 156, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(69, '{\"en\":\"Dr. Colt Sanford\"}', 'rraynor@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 187, 8, '1983-01-18', 4, 6, 20, 54, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(70, '{\"en\":\"Dr. Jazmyn Schiller\"}', 'parisian.boris@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 169, 10, '2008-07-24', 2, 3, 25, 18, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(71, '{\"en\":\"Casandra Lehner\"}', 'maegan.denesik@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 43, 7, '2013-12-13', 1, 11, 11, 160, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(72, '{\"en\":\"Augustus Kirlin I\"}', 'lucile.rosenbaum@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 93, 11, '1978-12-21', 2, 14, 11, 183, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(73, '{\"en\":\"Giuseppe Kilback\"}', 'glennie64@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 110, 5, '2012-06-02', 1, 5, 25, 30, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(74, '{\"en\":\"Ariane Hermiston\"}', 'rosalee97@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 87, 5, '2017-03-23', 4, 13, 3, 138, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(75, '{\"en\":\"Prof. Darrick McKenzie V\"}', 'danny.cormier@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 97, 5, '1988-12-22', 1, 3, 24, 81, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(76, '{\"en\":\"Green Mann\"}', 'lakin.alessandro@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 227, 10, '2019-06-11', 2, 16, 5, 5, '2022', NULL, '2022-03-12 13:42:37', '2022-03-12 13:42:37'),
(77, '{\"en\":\"Mr. Maynard Kuphal\"}', 'qpurdy@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 169, 7, '1977-07-18', 3, 14, 26, 30, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(78, '{\"en\":\"Arely Crooks\"}', 'janet.doyle@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 69, 11, '2020-09-22', 3, 8, 23, 28, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(79, '{\"en\":\"Whitney Spencer\"}', 'misty.batz@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 236, 5, '1983-11-28', 3, 16, 9, 29, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(80, '{\"en\":\"Mr. Matt Hoppe\"}', 'ethel.langworth@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 67, 4, '1979-03-07', 3, 14, 16, 139, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(81, '{\"en\":\"Jaleel Kiehn\"}', 'annabell80@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 63, 7, '1989-09-04', 4, 16, 22, 100, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(82, '{\"en\":\"Citlalli Schowalter DDS\"}', 'ayana99@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 209, 7, '1972-07-09', 3, 14, 7, 48, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(83, '{\"en\":\"Catharine Abbott\"}', 'kris.bernard@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 63, 8, '1983-08-22', 2, 6, 12, 197, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(84, '{\"en\":\"Brigitte Johnson\"}', 'von.alysa@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 200, 5, '2011-06-09', 4, 3, 10, 4, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(85, '{\"en\":\"Jay Hintz\"}', 'njakubowski@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 57, 12, '2001-09-01', 3, 4, 24, 155, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(86, '{\"en\":\"Wilhelmine Hyatt I\"}', 'collin58@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 94, 2, '2009-07-01', 4, 5, 26, 176, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(87, '{\"en\":\"Hector Johns\"}', 'mcclure.marilyne@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 110, 4, '1973-04-07', 3, 9, 13, 85, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(88, '{\"en\":\"Chelsea Hamill Sr.\"}', 'cartwright.anibal@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 50, 7, '1999-03-13', 4, 6, 10, 56, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(89, '{\"en\":\"Prof. Mohamed Kihn DDS\"}', 'bkulas@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 207, 6, '1986-11-12', 1, 9, 15, 146, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(90, '{\"en\":\"Mrs. Shania Maggio\"}', 'jcarroll@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 151, 4, '2016-10-03', 1, 6, 21, 114, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(91, '{\"en\":\"Quinn Swift\"}', 'flittle@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 54, 12, '2010-07-15', 4, 10, 22, 74, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(92, '{\"en\":\"Jennyfer Corwin\"}', 'wintheiser.jamison@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 109, 2, '1974-09-04', 3, 9, 17, 192, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(93, '{\"en\":\"Tatyana Gleason\"}', 'thaddeus.raynor@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 233, 1, '1986-09-04', 1, 4, 11, 139, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(94, '{\"en\":\"Dr. Donnell Swift\"}', 'akeem25@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 164, 7, '1974-07-01', 2, 12, 12, 161, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(95, '{\"en\":\"Jammie Grant\"}', 'trey.kessler@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 10, 9, '2004-09-25', 4, 15, 4, 165, '2022', NULL, '2022-03-12 13:42:38', '2022-03-12 13:42:38'),
(96, '{\"en\":\"Cale Deckow\"}', 'hamill.brock@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 182, 10, '1987-07-17', 2, 4, 19, 199, '2022', NULL, '2022-03-12 13:42:39', '2022-03-12 13:42:39'),
(97, '{\"en\":\"Skye Torp DDS\"}', 'amya61@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 34, 2, '1973-03-06', 4, 5, 2, 121, '2022', NULL, '2022-03-12 13:42:39', '2022-03-12 13:42:39'),
(98, '{\"en\":\"Randal Moore\"}', 'iliana66@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 150, 1, '2005-11-16', 4, 12, 6, 69, '2022', NULL, '2022-03-12 13:42:39', '2022-03-12 13:42:39'),
(99, '{\"en\":\"Jena Friesen\"}', 'okulas@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 56, 4, '1995-03-28', 4, 5, 10, 22, '2022', NULL, '2022-03-12 13:42:39', '2022-03-12 13:42:39'),
(100, '{\"en\":\"Mrs. Maiya Runolfsson\"}', 'feeney.prudence@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 238, 5, '1984-09-21', 1, 6, 12, 45, '2022', NULL, '2022-03-12 13:42:39', '2022-03-12 13:42:39'),
(101, '{\"en\":\"Mr. Gene O\'Reilly\"}', 'wcasper@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 125, 4, '2004-07-23', 3, 7, 17, 46, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(102, '{\"en\":\"Kiana Homenick\"}', 'pearline38@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 137, 1, '2013-09-02', 3, 7, 14, 109, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(103, '{\"en\":\"Prof. Freddie McKenzie\"}', 'walker.reanna@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 196, 4, '1976-04-09', 1, 15, 22, 164, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(104, '{\"en\":\"Leda Gutkowski\"}', 'xgrady@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 209, 2, '1996-10-26', 1, 11, 4, 158, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(105, '{\"en\":\"Retha Flatley IV\"}', 'sylvia.hoeger@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 208, 7, '1984-06-03', 2, 11, 6, 181, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(106, '{\"en\":\"Nakia Jerde PhD\"}', 'ritchie.heloise@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 132, 7, '2020-11-19', 2, 9, 16, 56, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(107, '{\"en\":\"Wilmer Dicki\"}', 'tflatley@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 40, 11, '1972-05-08', 2, 12, 12, 44, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(108, '{\"en\":\"Woodrow Bogisich\"}', 'hackett.ervin@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 67, 8, '1987-09-13', 2, 13, 6, 38, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(109, '{\"en\":\"Mr. Marley Labadie IV\"}', 'murazik.lucio@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 62, 1, '1996-04-09', 2, 10, 6, 126, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(110, '{\"en\":\"Harrison Ward\"}', 'gerhold.golden@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 67, 9, '2008-12-23', 2, 11, 26, 70, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(111, '{\"en\":\"Katrina Ullrich DVM\"}', 'darian02@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 20, 2, '2003-06-14', 1, 9, 12, 130, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(112, '{\"en\":\"Leda Monahan Sr.\"}', 'albertha18@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 190, 10, '2021-09-14', 3, 3, 6, 79, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(113, '{\"en\":\"Prof. Maurice Gibson\"}', 'damore.isadore@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 224, 5, '2005-03-29', 1, 12, 19, 178, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(114, '{\"en\":\"Penelope Howe\"}', 'frank.mayert@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 54, 11, '2007-10-14', 4, 8, 11, 63, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(115, '{\"en\":\"Paige Stiedemann\"}', 'flatley.jeromy@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 187, 7, '2015-11-23', 3, 10, 7, 62, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(116, '{\"en\":\"Filomena Paucek\"}', 'tremblay.clarissa@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 13, 8, '1971-05-20', 3, 3, 19, 181, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(117, '{\"en\":\"Kristopher Skiles\"}', 'arnaldo.jones@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 163, 4, '2003-02-12', 1, 10, 22, 118, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(118, '{\"en\":\"Gust Muller\"}', 'torphy.kali@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 83, 1, '1999-06-12', 1, 8, 8, 8, '2022', NULL, '2022-03-12 13:42:44', '2022-03-12 13:42:44'),
(119, '{\"en\":\"Tyra Balistreri DDS\"}', 'cecelia83@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 55, 9, '2019-10-06', 2, 10, 17, 115, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(120, '{\"en\":\"Nakia Gorczany I\"}', 'wilbert.ortiz@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 77, 12, '1976-08-15', 3, 4, 21, 20, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(121, '{\"en\":\"Arthur Ferry\"}', 'felipe.toy@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 117, 11, '2016-07-22', 4, 7, 6, 142, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(122, '{\"en\":\"Kaley Witting\"}', 'zstreich@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 19, 12, '2009-08-07', 1, 13, 12, 46, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(123, '{\"en\":\"Ottilie Sauer I\"}', 'astracke@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 148, 6, '1981-01-26', 2, 11, 14, 105, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(124, '{\"en\":\"Mr. Willy Parker DVM\"}', 'etha.jerde@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 163, 2, '2011-11-15', 4, 5, 25, 31, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(125, '{\"en\":\"Dr. Dee Smitham Jr.\"}', 'kling.gerardo@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 242, 2, '2016-01-23', 4, 11, 24, 56, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(126, '{\"en\":\"Prof. Ezekiel Batz\"}', 'ogleason@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 4, 12, '2017-01-23', 3, 5, 9, 145, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(127, '{\"en\":\"Alvina Kovacek\"}', 'oconner.dane@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 217, 6, '2016-08-14', 3, 16, 2, 23, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(128, '{\"en\":\"Wilfred Miller\"}', 'bbeier@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 52, 1, '2002-08-26', 4, 3, 15, 20, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(129, '{\"en\":\"Tre Lueilwitz\"}', 'heller.blanca@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 22, 11, '1975-12-13', 4, 8, 9, 28, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(130, '{\"en\":\"Hubert Schmidt\"}', 'koch.antonietta@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 128, 7, '2017-03-06', 4, 4, 17, 76, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(131, '{\"en\":\"Guillermo Block I\"}', 'kelley.stiedemann@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 82, 2, '1978-10-12', 2, 3, 25, 72, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(132, '{\"en\":\"Myrtice Raynor III\"}', 'meredith.deckow@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 69, 6, '2015-12-25', 4, 12, 7, 62, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(133, '{\"en\":\"Corbin Littel\"}', 'jon79@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 26, 11, '1994-09-04', 2, 4, 2, 109, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(134, '{\"en\":\"Mrs. Hattie Zemlak\"}', 'harry.hettinger@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 142, 5, '2002-03-09', 2, 11, 23, 194, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(135, '{\"en\":\"Mr. Ed Keebler Sr.\"}', 'dare.shane@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 141, 2, '2015-11-22', 4, 7, 9, 116, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(136, '{\"en\":\"Torrance West\"}', 'corine34@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 146, 11, '2013-02-10', 4, 15, 22, 66, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(137, '{\"en\":\"Katharina Jacobi II\"}', 'kreiger.leila@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 3, 10, '1973-03-19', 3, 7, 19, 133, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(138, '{\"en\":\"Muhammad Botsford\"}', 'reese79@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 190, 8, '2014-05-12', 4, 5, 25, 14, '2022', NULL, '2022-03-12 13:42:45', '2022-03-12 13:42:45'),
(139, '{\"en\":\"Ms. Velva Schinner\"}', 'mohr.gabe@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 94, 2, '1982-01-18', 3, 11, 3, 172, '2022', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(140, '{\"en\":\"Dale Skiles\"}', 'winfield.wolf@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 99, 8, '2009-09-15', 4, 8, 9, 104, '2022', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(141, '{\"en\":\"Prof. Branson Ward Sr.\"}', 'qauer@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 88, 9, '1989-01-15', 2, 12, 11, 123, '2022', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(142, '{\"en\":\"Jaclyn Fay\"}', 'marty00@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 32, 1, '2018-08-19', 2, 10, 4, 198, '2022', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(143, '{\"en\":\"Keyon Gusikowski\"}', 'tromp.florence@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 214, 7, '1988-12-21', 1, 10, 25, 194, '2022', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(144, '{\"en\":\"Seamus Balistreri\"}', 'zfeest@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 51, 9, '1985-07-29', 4, 13, 21, 197, '2022', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(145, '{\"en\":\"Michaela Lehner\"}', 'klein.maude@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 208, 3, '1992-11-20', 3, 14, 4, 160, '2022', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(146, '{\"en\":\"Emile Purdy\"}', 'krystel45@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 98, 1, '1996-11-25', 3, 3, 21, 181, '2022', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(147, '{\"en\":\"Stanley Paucek\"}', 'palma.volkman@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 26, 5, '2014-04-18', 4, 3, 3, 160, '2022', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(148, '{\"en\":\"Mr. Kaleigh Sanford\"}', 'roberts.louisa@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 238, 8, '2011-08-02', 2, 5, 15, 69, '2022', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(149, '{\"en\":\"Fiona Jacobi\"}', 'imani98@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 82, 10, '1990-12-08', 1, 10, 17, 196, '2009', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(150, '{\"en\":\"Ethel Brown\"}', 'sharon15@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 235, 2, '2021-05-17', 2, 14, 18, 28, '2005', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(151, '{\"en\":\"Lyla Kertzmann\"}', 'huel.rudy@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 216, 6, '1977-12-20', 3, 14, 3, 91, '2020', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(152, '{\"en\":\"Justus Schamberger\"}', 'beahan.carlee@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 103, 1, '1977-12-29', 4, 13, 17, 118, '1999', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(153, '{\"en\":\"Lou Kling\"}', 'akling@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 22, 1, '1993-11-07', 1, 10, 7, 175, '1983', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(154, '{\"en\":\"Tyrique Hane IV\"}', 'xdavis@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 212, 2, '1973-02-15', 4, 12, 23, 145, '2011', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(155, '{\"en\":\"Tyson Reichel\"}', 'greta.damore@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 202, 8, '2015-02-08', 2, 4, 25, 104, '2021', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(156, '{\"en\":\"Kaela Mayert\"}', 'vreichert@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 8, 4, '1982-01-01', 4, 11, 19, 102, '2014', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(157, '{\"en\":\"Mariah Johns\"}', 'georgiana39@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 100, 12, '1985-09-20', 1, 13, 26, 183, '2019', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(158, '{\"en\":\"Sigurd Jerde\"}', 'zboncak.adela@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 192, 8, '2008-06-22', 1, 15, 6, 200, '1970', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(159, '{\"en\":\"Sister Ledner\"}', 'mcrona@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 244, 11, '1999-07-25', 1, 4, 9, 169, '2002', NULL, '2022-03-12 13:42:46', '2022-03-12 13:42:46'),
(160, '{\"en\":\"Miss Kailyn Schimmel\"}', 'howe.carmel@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 175, 6, '2019-09-16', 4, 6, 10, 128, '1981', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(161, '{\"en\":\"Mr. Hunter Ondricka III\"}', 'adrian46@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 50, 11, '1978-06-20', 1, 9, 13, 165, '2005', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(162, '{\"en\":\"Juvenal Marks\"}', 'kreiger.lauriane@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 104, 8, '2009-04-25', 4, 11, 22, 82, '2004', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(163, '{\"en\":\"Rosa McDermott\"}', 'blaze48@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 50, 7, '2003-07-10', 3, 9, 15, 63, '2004', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(164, '{\"en\":\"Prof. Madge Williamson\"}', 'steuber.luis@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 84, 1, '1980-01-06', 1, 6, 24, 43, '1980', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(165, '{\"en\":\"Winona Wisozk\"}', 'camryn.effertz@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 6, 4, '2001-02-13', 3, 9, 23, 3, '2011', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(166, '{\"en\":\"Esmeralda Johnston\"}', 'morar.linda@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 53, 8, '1975-01-11', 4, 14, 4, 89, '1984', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(167, '{\"en\":\"Efrain Lockman\"}', 'sbeier@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 119, 10, '2017-04-10', 3, 4, 13, 18, '2010', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(168, '{\"en\":\"Prof. Willie Emard V\"}', 'plueilwitz@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 29, 3, '2013-01-29', 4, 4, 17, 125, '2012', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(169, '{\"en\":\"Cedrick Willms\"}', 'alicia62@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 142, 9, '1992-01-05', 1, 4, 18, 167, '1970', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(170, '{\"en\":\"Ms. Annetta Waters MD\"}', 'jacobson.missouri@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 213, 9, '1975-08-25', 4, 10, 9, 170, '1973', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(171, '{\"en\":\"Edd Rohan\"}', 'cleora.daugherty@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 215, 11, '2020-12-13', 1, 9, 4, 35, '2007', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(172, '{\"en\":\"Sarai Abbott III\"}', 'kaci.gleichner@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 24, 9, '1989-09-12', 4, 5, 2, 138, '2008', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(173, '{\"en\":\"Mr. Duncan Schmidt PhD\"}', 'matilde45@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 69, 4, '2019-08-13', 2, 13, 24, 157, '1998', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(174, '{\"en\":\"Prof. Leopoldo Predovic\"}', 'graham.ara@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 180, 12, '1981-07-05', 2, 8, 15, 25, '2022', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(175, '{\"en\":\"Demetrius Bauch\"}', 'royce35@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 168, 9, '1980-09-01', 3, 10, 5, 68, '1976', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(176, '{\"en\":\"Dr. Judah Conn I\"}', 'gkassulke@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 7, 1, '2012-08-07', 3, 5, 13, 88, '1981', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(177, '{\"en\":\"Emmanuel Jast\"}', 'gutmann.derrick@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 3, 3, '2002-05-17', 4, 14, 8, 12, '2005', NULL, '2022-03-12 13:42:47', '2022-03-12 13:42:47'),
(178, '{\"en\":\"Elva King\"}', 'ddach@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 2, 2, '1975-05-21', 4, 12, 12, 1, '1984', NULL, '2022-03-12 13:42:48', '2022-03-12 13:42:48'),
(179, '{\"en\":\"Mr. Kraig Lemke PhD\"}', 'annette.yost@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 98, 11, '1987-06-20', 3, 4, 23, 190, '1987', NULL, '2022-03-12 13:42:48', '2022-03-12 13:42:48'),
(180, '{\"en\":\"Ottis Huels\"}', 'lynch.hipolito@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 136, 6, '1995-05-14', 3, 13, 4, 168, '1997', NULL, '2022-03-12 13:42:48', '2022-03-12 13:42:48'),
(181, '{\"en\":\"Leola Donnelly\"}', 'upagac@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 97, 6, '2017-07-11', 4, 13, 9, 41, '2002', NULL, '2022-03-12 13:42:48', '2022-03-12 13:42:48'),
(182, '{\"en\":\"Prof. Hannah Batz\"}', 'michaela.terry@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 175, 5, '1993-03-10', 2, 6, 5, 174, '1977', NULL, '2022-03-12 13:42:48', '2022-03-12 13:42:48'),
(183, '{\"en\":\"Mr. Jarred Abernathy\"}', 'xharvey@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 223, 8, '1979-06-22', 1, 14, 26, 194, '2001', NULL, '2022-03-12 13:42:48', '2022-03-12 13:42:48'),
(184, '{\"en\":\"Mr. Jaylan Welch\"}', 'bayer.lucienne@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 241, 10, '2020-08-04', 1, 13, 10, 103, '1974', NULL, '2022-03-12 13:42:48', '2022-03-12 13:42:48'),
(185, '{\"en\":\"Dr. Willis Kohler Jr.\"}', 'cullen83@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 47, 8, '1994-04-10', 2, 7, 9, 69, '1999', NULL, '2022-03-12 13:42:48', '2022-03-12 13:42:48'),
(186, '{\"en\":\"Grover Yundt\"}', 'kunde.mack@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 212, 6, '1992-04-12', 3, 11, 9, 179, '2014', NULL, '2022-03-12 13:42:48', '2022-03-12 13:42:48'),
(187, '{\"en\":\"Oswald Corkery\"}', 'chadrick55@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 175, 10, '1988-04-09', 2, 4, 23, 117, '1993', NULL, '2022-03-12 13:42:48', '2022-03-12 13:42:48'),
(188, '{\"en\":\"Breanne Rutherford\"}', 'shanny.crona@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 103, 11, '1984-08-08', 3, 14, 5, 96, '1991', NULL, '2022-03-12 13:42:48', '2022-03-12 13:42:48'),
(189, '{\"en\":\"Prof. Abelardo Jacobson\"}', 'trystan.weimann@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 202, 10, '1985-11-11', 3, 4, 2, 41, '2021', NULL, '2022-03-12 13:42:48', '2022-03-12 13:42:48'),
(190, '{\"en\":\"Ewald Zemlak\"}', 'shanahan.dwight@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 148, 7, '1983-04-04', 3, 13, 2, 108, '1995', NULL, '2022-03-12 13:42:48', '2022-03-12 13:42:48'),
(191, '{\"en\":\"Prof. Otis Schinner\"}', 'homenick.hans@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 101, 10, '2005-03-05', 4, 3, 15, 7, '1986', NULL, '2022-03-12 13:42:49', '2022-03-12 13:42:49'),
(192, '{\"en\":\"Rupert Feeney\"}', 'elwyn.west@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 235, 1, '1976-01-21', 1, 6, 7, 123, '2010', NULL, '2022-03-12 13:42:49', '2022-03-12 13:42:49'),
(193, '{\"en\":\"Jeremie Nader\"}', 'ashtyn.bechtelar@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 155, 7, '1981-09-15', 2, 10, 22, 144, '1996', NULL, '2022-03-12 13:42:49', '2022-03-12 13:42:49'),
(194, '{\"en\":\"Mr. Weston Rodriguez\"}', 'gavin32@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 225, 8, '2002-12-17', 4, 15, 20, 29, '2010', NULL, '2022-03-12 13:42:49', '2022-03-12 13:42:49'),
(195, '{\"en\":\"Prof. Carmine Renner\"}', 'macejkovic.kenneth@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 14, 4, '2009-10-08', 3, 10, 11, 196, '1996', NULL, '2022-03-12 13:42:49', '2022-03-12 13:42:49'),
(196, '{\"en\":\"Jonathan Walsh\"}', 'karelle.bernier@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 185, 11, '1986-01-15', 2, 5, 19, 27, '2015', NULL, '2022-03-12 13:42:49', '2022-03-12 13:42:49'),
(197, '{\"en\":\"Godfrey Kub\"}', 'kassulke.sidney@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 114, 9, '2003-07-30', 4, 8, 2, 28, '1983', NULL, '2022-03-12 13:42:49', '2022-03-12 13:42:49'),
(198, '{\"en\":\"Hilario Kulas PhD\"}', 'mjaskolski@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 171, 12, '1971-07-21', 4, 14, 25, 193, '1991', NULL, '2022-03-12 13:42:49', '2022-03-12 13:42:49'),
(199, '{\"en\":\"Ms. Tatyana Kassulke III\"}', 'ruthie.crooks@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 233, 8, '1992-09-07', 3, 10, 7, 174, '2011', NULL, '2022-03-12 13:42:49', '2022-03-12 13:42:49'),
(200, '{\"en\":\"Carli McKenzie\"}', 'dibbert.noah@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 79, 1, '1996-08-05', 2, 7, 21, 169, '1995', NULL, '2022-03-12 13:42:49', '2022-03-12 13:42:49'),
(201, '{\"en\":\"Ruben Mueller\"}', 'vcartwright@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 123, 10, '1998-08-10', 3, 13, 18, 60, '2013', NULL, '2022-03-12 13:42:53', '2022-03-12 13:42:53'),
(202, '{\"en\":\"Keara Barton\"}', 'jordan.mclaughlin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 139, 7, '2018-11-02', 1, 7, 20, 70, '2002', NULL, '2022-03-12 13:42:53', '2022-03-12 13:42:53'),
(203, '{\"en\":\"Javon O\'Keefe MD\"}', 'zulauf.carmine@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 58, 4, '2000-04-03', 1, 3, 6, 155, '2011', NULL, '2022-03-12 13:42:53', '2022-03-12 13:42:53'),
(204, '{\"en\":\"Adolfo White\"}', 'jacobi.murl@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 173, 10, '1995-04-22', 4, 16, 6, 95, '1987', NULL, '2022-03-12 13:42:53', '2022-03-12 13:42:53'),
(205, '{\"en\":\"Kade Stark\"}', 'amie.cronin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 151, 1, '1985-01-08', 4, 8, 8, 25, '1996', NULL, '2022-03-12 13:42:53', '2022-03-12 13:42:53'),
(206, '{\"en\":\"Prof. Rowan Marvin DVM\"}', 'okohler@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 170, 2, '1970-09-02', 3, 3, 7, 142, '1973', NULL, '2022-03-12 13:42:53', '2022-03-12 13:42:53'),
(207, '{\"en\":\"Dr. Federico Ward\"}', 'emilio.osinski@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 36, 1, '1990-02-14', 4, 11, 5, 63, '1984', NULL, '2022-03-12 13:42:53', '2022-03-12 13:42:53'),
(208, '{\"en\":\"Mr. Van Harris\"}', 'jacobson.cyril@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 147, 4, '1978-04-11', 3, 4, 11, 132, '1981', NULL, '2022-03-12 13:42:53', '2022-03-12 13:42:53'),
(209, '{\"en\":\"Ms. Olga Schiller\"}', 'stokes.jakayla@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 95, 7, '1990-11-08', 1, 12, 15, 4, '1993', NULL, '2022-03-12 13:42:53', '2022-03-12 13:42:53'),
(210, '{\"en\":\"Shemar Rippin Jr.\"}', 'hconsidine@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 205, 9, '1990-01-03', 3, 14, 24, 142, '1995', NULL, '2022-03-12 13:42:53', '2022-03-12 13:42:53'),
(211, '{\"en\":\"Bennie Gusikowski\"}', 'monica.kohler@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 212, 11, '1974-02-22', 1, 10, 23, 112, '1972', NULL, '2022-03-12 13:42:53', '2022-03-12 13:42:53'),
(212, '{\"en\":\"Ronny Murray\"}', 'walter.elda@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 144, 9, '1988-09-22', 4, 15, 25, 102, '1990', NULL, '2022-03-12 13:42:53', '2022-03-12 13:42:53'),
(213, '{\"en\":\"Dr. Clinton Fisher V\"}', 'marcella.roob@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 55, 3, '1985-08-19', 4, 16, 23, 20, '2007', NULL, '2022-03-12 13:42:53', '2022-03-12 13:42:53'),
(214, '{\"en\":\"Maribel Bogan\"}', 'janet.west@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 222, 5, '2004-09-16', 3, 14, 7, 153, '2007', NULL, '2022-03-12 13:42:53', '2022-03-12 13:42:53'),
(215, '{\"en\":\"Elvera O\'Connell\"}', 'jmccullough@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 16, 2, '1982-06-01', 2, 9, 5, 20, '1983', NULL, '2022-03-12 13:42:53', '2022-03-12 13:42:53'),
(216, '{\"en\":\"Ms. Catalina Bechtelar V\"}', 'terry.bridgette@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 99, 5, '1990-03-18', 3, 14, 13, 165, '1982', NULL, '2022-03-12 13:42:53', '2022-03-12 13:42:53'),
(217, '{\"en\":\"Mrs. Shaniya Ziemann IV\"}', 'dwisoky@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 218, 8, '1983-02-11', 3, 6, 13, 161, '1977', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(218, '{\"en\":\"Conrad Bauch\"}', 'kody73@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 188, 9, '1979-11-11', 3, 8, 16, 23, '1981', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54');
INSERT INTO `students` (`id`, `name`, `email`, `password`, `gender_id`, `nationalitie_id`, `blood_id`, `date_birth`, `grade_id`, `classroom_id`, `section_id`, `parent_id`, `academic_year`, `deleted_at`, `created_at`, `updated_at`) VALUES
(219, '{\"en\":\"Noelia Watsica\"}', 'savanna21@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 154, 12, '1990-09-28', 2, 8, 5, 194, '1988', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(220, '{\"en\":\"Thora Aufderhar\"}', 'abraham.cormier@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 34, 11, '1975-11-08', 3, 6, 18, 198, '2010', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(221, '{\"en\":\"Prof. Elinor Pollich\"}', 'serena29@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 175, 1, '1990-12-08', 4, 5, 22, 55, '2009', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(222, '{\"en\":\"Clement Morar\"}', 'bbotsford@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 167, 5, '2018-04-12', 3, 3, 14, 186, '1987', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(223, '{\"en\":\"Dr. Deangelo Hudson V\"}', 'fern.stark@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 128, 6, '1971-09-13', 3, 4, 18, 116, '1980', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(224, '{\"en\":\"Agnes Berge\"}', 'ccollins@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 17, 11, '2007-07-24', 4, 9, 25, 4, '1976', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(225, '{\"en\":\"Martina Aufderhar\"}', 'cauer@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 156, 4, '1987-10-17', 4, 7, 14, 26, '2003', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(226, '{\"en\":\"Werner Bernier\"}', 'kaylee09@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 119, 5, '1970-03-31', 4, 13, 17, 56, '2016', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(227, '{\"en\":\"Matteo Runolfsson\"}', 'ndibbert@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 148, 1, '1973-11-18', 4, 12, 4, 178, '2013', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(228, '{\"en\":\"Lonzo Ratke\"}', 'erenner@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 201, 10, '2020-05-08', 2, 15, 3, 19, '2020', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(229, '{\"en\":\"Fritz Satterfield I\"}', 'prosenbaum@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 236, 5, '1999-01-28', 4, 7, 5, 88, '1991', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(230, '{\"en\":\"Eugenia Strosin I\"}', 'haley36@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 193, 9, '2000-11-03', 2, 15, 23, 55, '1981', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(231, '{\"en\":\"Dr. Jalyn Hegmann\"}', 'kaley20@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 235, 5, '2015-02-28', 2, 14, 2, 104, '1991', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(232, '{\"en\":\"Mr. Lavern Champlin DVM\"}', 'irving.stamm@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 45, 5, '1970-02-23', 1, 3, 16, 11, '2011', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(233, '{\"en\":\"Dayana Satterfield\"}', 'osborne.okuneva@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 93, 10, '2014-12-05', 4, 10, 8, 24, '1986', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(234, '{\"en\":\"Leslie Johns DDS\"}', 'reichel.suzanne@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 36, 1, '1977-12-01', 4, 9, 7, 142, '2001', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(235, '{\"en\":\"Elfrieda Kertzmann\"}', 'pcummerata@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 22, 10, '1985-01-31', 4, 4, 19, 172, '2019', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(236, '{\"en\":\"Torrance Greenfelder\"}', 'rohan.pansy@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 46, 12, '2014-01-30', 3, 8, 18, 14, '1976', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(237, '{\"en\":\"Kennedy Towne\"}', 'nicolette.kihn@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 231, 1, '1975-04-10', 2, 10, 3, 107, '2021', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(238, '{\"en\":\"Clare McLaughlin\"}', 'bella90@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 129, 3, '2007-02-20', 2, 3, 9, 195, '2003', NULL, '2022-03-12 13:42:54', '2022-03-12 13:42:54'),
(239, '{\"en\":\"Dovie Little\"}', 'crist.erna@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 237, 5, '1999-11-07', 3, 9, 8, 57, '1997', NULL, '2022-03-12 13:42:55', '2022-03-12 13:42:55'),
(240, '{\"en\":\"Mathew Kunze\"}', 'dickinson.kacie@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 44, 6, '2017-01-04', 3, 15, 18, 192, '2012', NULL, '2022-03-12 13:42:55', '2022-03-12 13:42:55'),
(241, '{\"en\":\"Prof. Brody Jacobi\"}', 'ella02@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 177, 5, '2003-09-16', 1, 5, 12, 178, '1986', NULL, '2022-03-12 13:42:55', '2022-03-12 13:42:55'),
(242, '{\"en\":\"Ewald Bauch\"}', 'harris.aisha@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 243, 3, '1976-06-05', 4, 3, 16, 39, '2014', NULL, '2022-03-12 13:42:55', '2022-03-12 13:42:55'),
(243, '{\"en\":\"Mrs. Addison Johnson\"}', 'windler.wilbert@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 120, 7, '1972-03-31', 2, 9, 22, 123, '2007', NULL, '2022-03-12 13:42:55', '2022-03-12 13:42:55'),
(244, '{\"en\":\"Reymundo Wilderman\"}', 'jlarkin@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 88, 1, '1998-04-04', 3, 14, 19, 109, '1994', NULL, '2022-03-12 13:42:55', '2022-03-12 13:42:55'),
(245, '{\"en\":\"Dorothea Gorczany\"}', 'toy.lurline@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 128, 9, '1988-03-07', 4, 7, 10, 72, '1997', NULL, '2022-03-12 13:42:55', '2022-03-12 13:42:55'),
(246, '{\"en\":\"Prof. Bonnie Emmerich DDS\"}', 'wcole@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 14, 3, '2011-11-25', 4, 11, 7, 129, '1988', NULL, '2022-03-12 13:42:55', '2022-03-12 13:42:55'),
(247, '{\"en\":\"Emmet Harvey V\"}', 'bdonnelly@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 196, 4, '2006-11-09', 4, 16, 16, 177, '2017', NULL, '2022-03-12 13:42:55', '2022-03-12 13:42:55'),
(248, '{\"en\":\"Julian Rutherford\"}', 'vankunding@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 227, 6, '1979-07-20', 4, 9, 7, 166, '1986', NULL, '2022-03-12 13:42:55', '2022-03-12 13:42:55'),
(249, '{\"en\":\"Jarret Ondricka\"}', 'al.stracke@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 120, 8, '2016-01-25', 2, 9, 14, 32, '1973', NULL, '2022-03-12 13:42:55', '2022-03-12 13:42:55'),
(250, '{\"en\":\"Tremayne Baumbach\"}', 'roy95@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 145, 8, '1998-01-02', 3, 12, 21, 79, '1976', NULL, '2022-03-12 13:42:55', '2022-03-12 13:42:55'),
(251, '{\"en\":\"Ms. Charlene Franecki MD\"}', 'schaden.eladio@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 192, 9, '2000-02-24', 3, 6, 24, 179, '2011', NULL, '2022-03-12 13:42:55', '2022-03-12 13:42:55'),
(252, '{\"en\":\"Dallin Hartmann\"}', 'gutmann.edwardo@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 145, 7, '2002-10-03', 4, 6, 13, 42, '1971', NULL, '2022-03-12 13:42:55', '2022-03-12 13:42:55'),
(253, '{\"en\":\"Thea Dach V\"}', 'schroeder.elsie@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 75, 7, '1986-09-28', 2, 6, 14, 28, '1979', NULL, '2022-03-12 13:42:55', '2022-03-12 13:42:55'),
(254, '{\"en\":\"Kyler Dickens\"}', 'hettinger.lew@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 9, 1, '1993-06-21', 2, 3, 16, 10, '1981', NULL, '2022-03-12 13:42:55', '2022-03-12 13:42:55'),
(255, '{\"en\":\"Alverta Bednar\"}', 'ashlee.runte@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 195, 4, '1984-05-09', 1, 5, 12, 183, '1976', NULL, '2022-03-12 13:42:56', '2022-03-12 13:42:56'),
(256, '{\"en\":\"Adele Volkman\"}', 'hoeger.zander@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 196, 9, '1996-08-14', 2, 3, 3, 19, '1999', NULL, '2022-03-12 13:42:56', '2022-03-12 13:42:56'),
(257, '{\"en\":\"Zelda Jast DVM\"}', 'uschroeder@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 69, 7, '1980-09-15', 4, 15, 19, 149, '2012', NULL, '2022-03-12 13:42:56', '2022-03-12 13:42:56'),
(258, '{\"en\":\"Gus Hegmann\"}', 'denesik.neva@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 29, 9, '1976-10-03', 1, 6, 11, 164, '2015', NULL, '2022-03-12 13:42:56', '2022-03-12 13:42:56'),
(259, '{\"en\":\"Miss Selina Roob III\"}', 'dooley.olga@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 102, 4, '1979-07-08', 3, 10, 2, 106, '2020', NULL, '2022-03-12 13:42:56', '2022-03-12 13:42:56'),
(260, '{\"en\":\"Sydni Schumm\"}', 'edonnelly@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 135, 2, '2004-07-13', 3, 14, 22, 33, '2016', NULL, '2022-03-12 13:42:56', '2022-03-12 13:42:56'),
(261, '{\"en\":\"Robert Cartwright\"}', 'marianna.hagenes@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 111, 5, '2002-09-01', 3, 3, 24, 6, '1992', NULL, '2022-03-12 13:42:56', '2022-03-12 13:42:56'),
(262, '{\"en\":\"Ms. Lina Wisozk III\"}', 'waters.alivia@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 179, 8, '2002-06-11', 3, 13, 23, 155, '2009', NULL, '2022-03-12 13:42:56', '2022-03-12 13:42:56'),
(263, '{\"en\":\"Dr. Everett Krajcik Jr.\"}', 'ricky.bernier@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 44, 12, '2006-06-09', 1, 14, 9, 89, '2011', NULL, '2022-03-12 13:42:56', '2022-03-12 13:42:56'),
(264, '{\"en\":\"Prof. Jeramy Williamson V\"}', 'gino43@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 121, 12, '1993-06-18', 1, 13, 3, 73, '2012', NULL, '2022-03-12 13:42:56', '2022-03-12 13:42:56'),
(265, '{\"en\":\"Carole Rohan\"}', 'heidi.gaylord@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 219, 2, '1983-10-08', 1, 4, 3, 152, '1991', NULL, '2022-03-12 13:42:56', '2022-03-12 13:42:56'),
(266, '{\"en\":\"Uriel Schuppe\"}', 'albin.fritsch@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 35, 8, '1982-05-03', 2, 3, 17, 121, '2007', NULL, '2022-03-12 13:42:56', '2022-03-12 13:42:56'),
(267, '{\"en\":\"Dr. Gloria Labadie DVM\"}', 'mackenzie.blanda@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 114, 9, '2014-08-24', 3, 15, 19, 138, '1976', NULL, '2022-03-12 13:42:56', '2022-03-12 13:42:56'),
(268, '{\"en\":\"Quinton Sawayn\"}', 'qhintz@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 206, 3, '1975-04-26', 4, 10, 16, 150, '2015', NULL, '2022-03-12 13:42:56', '2022-03-12 13:42:56'),
(269, '{\"en\":\"Baylee Fisher\"}', 'pearl53@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 208, 6, '2017-09-08', 2, 5, 18, 19, '2019', NULL, '2022-03-12 13:42:56', '2022-03-12 13:42:56'),
(270, '{\"en\":\"Prof. Hazle Flatley V\"}', 'fidel10@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 143, 6, '1993-10-27', 3, 6, 4, 57, '1990', NULL, '2022-03-12 13:42:56', '2022-03-12 13:42:56'),
(271, '{\"en\":\"Giles Gottlieb\"}', 'zola11@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 169, 2, '1999-12-31', 2, 13, 13, 21, '2016', NULL, '2022-03-12 13:42:56', '2022-03-12 13:42:56'),
(272, '{\"en\":\"Burley O\'Connell\"}', 'xhickle@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 226, 8, '1977-08-02', 1, 3, 19, 45, '2009', NULL, '2022-03-12 13:42:57', '2022-03-12 13:42:57'),
(273, '{\"en\":\"Kyle Lubowitz DVM\"}', 'grant.garrett@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 158, 6, '1992-08-29', 2, 3, 7, 21, '2018', NULL, '2022-03-12 13:42:57', '2022-03-12 13:42:57'),
(274, '{\"en\":\"Hilton Abernathy\"}', 'mcdermott.sasha@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 14, 11, '2012-09-22', 1, 11, 20, 39, '2009', NULL, '2022-03-12 13:42:57', '2022-03-12 13:42:57'),
(275, '{\"en\":\"Ima Smith\"}', 'mya33@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 149, 10, '1992-01-09', 2, 15, 26, 29, '2005', NULL, '2022-03-12 13:42:57', '2022-03-12 13:42:57'),
(276, '{\"en\":\"Suzanne Keebler IV\"}', 'crona.verda@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 214, 4, '2019-02-04', 3, 6, 25, 191, '1996', NULL, '2022-03-12 13:42:57', '2022-03-12 13:42:57'),
(277, '{\"en\":\"Odie Hayes\"}', 'cratke@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 214, 5, '1989-06-23', 3, 10, 3, 115, '2003', NULL, '2022-03-12 13:42:57', '2022-03-12 13:42:57'),
(278, '{\"en\":\"Mertie Gottlieb\"}', 'noconnell@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 179, 2, '1983-03-22', 2, 4, 15, 173, '1993', NULL, '2022-03-12 13:42:57', '2022-03-12 13:42:57'),
(279, '{\"en\":\"Sophie Halvorson\"}', 'xwest@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 199, 9, '1976-10-07', 4, 5, 4, 41, '1992', NULL, '2022-03-12 13:42:57', '2022-03-12 13:42:57'),
(280, '{\"en\":\"Andrew Considine\"}', 'raegan.haley@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 23, 7, '2021-11-01', 2, 12, 20, 128, '2019', NULL, '2022-03-12 13:42:57', '2022-03-12 13:42:57'),
(281, '{\"en\":\"Dr. Ciara Herzog DVM\"}', 'vivianne12@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 174, 11, '2014-05-06', 2, 9, 8, 72, '1980', NULL, '2022-03-12 13:42:57', '2022-03-12 13:42:57'),
(282, '{\"en\":\"Prof. Shaylee Roob\"}', 'syble11@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 190, 5, '2019-03-31', 2, 13, 20, 196, '1986', NULL, '2022-03-12 13:42:57', '2022-03-12 13:42:57'),
(283, '{\"en\":\"Paxton Rowe\"}', 'evie93@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 195, 3, '2009-08-26', 4, 6, 11, 158, '2001', NULL, '2022-03-12 13:42:57', '2022-03-12 13:42:57'),
(284, '{\"en\":\"Coby Flatley II\"}', 'grant.jean@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 56, 9, '2020-03-01', 4, 5, 3, 56, '1976', NULL, '2022-03-12 13:42:57', '2022-03-12 13:42:57'),
(285, '{\"en\":\"Alexandra McCullough\"}', 'herzog.nigel@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 151, 12, '1997-11-06', 3, 14, 25, 24, '2008', NULL, '2022-03-12 13:42:57', '2022-03-12 13:42:57'),
(286, '{\"en\":\"Clare McClure\"}', 'eluettgen@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 211, 6, '2022-01-13', 2, 6, 5, 156, '1987', NULL, '2022-03-12 13:42:58', '2022-03-12 13:42:58'),
(287, '{\"en\":\"Adella Pagac DVM\"}', 'tluettgen@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 156, 2, '1981-11-09', 1, 13, 14, 169, '1994', NULL, '2022-03-12 13:42:58', '2022-03-12 13:42:58'),
(288, '{\"en\":\"Ms. Mertie Effertz\"}', 'donnelly.queen@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 192, 7, '1985-05-01', 4, 5, 8, 18, '2019', NULL, '2022-03-12 13:42:58', '2022-03-12 13:42:58'),
(289, '{\"en\":\"Aracely Witting MD\"}', 'malvina.bruen@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 60, 10, '2010-11-14', 2, 4, 13, 145, '2007', NULL, '2022-03-12 13:42:58', '2022-03-12 13:42:58'),
(290, '{\"en\":\"Ms. Haven Bode PhD\"}', 'jeanne.koelpin@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 163, 3, '2021-01-30', 3, 7, 19, 74, '2000', NULL, '2022-03-12 13:42:58', '2022-03-12 13:42:58'),
(291, '{\"en\":\"Dr. Erwin Feest III\"}', 'leannon.pattie@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 100, 1, '2003-01-16', 1, 6, 26, 59, '1979', NULL, '2022-03-12 13:42:58', '2022-03-12 13:42:58'),
(292, '{\"en\":\"Christ Pollich\"}', 'dosinski@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 80, 11, '1972-09-28', 3, 9, 19, 142, '1999', NULL, '2022-03-12 13:42:58', '2022-03-12 13:42:58'),
(293, '{\"en\":\"Edna Corwin\"}', 'charlie44@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 81, 1, '1974-03-27', 2, 3, 19, 171, '1980', NULL, '2022-03-12 13:42:58', '2022-03-12 13:42:58'),
(294, '{\"en\":\"Ana Beahan\"}', 'jast.ethel@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 70, 7, '1992-10-13', 2, 4, 6, 87, '1993', NULL, '2022-03-12 13:42:58', '2022-03-12 13:42:58'),
(295, '{\"en\":\"Odell Block\"}', 'marcelino60@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 130, 4, '1984-09-04', 1, 5, 9, 184, '2016', NULL, '2022-03-12 13:42:58', '2022-03-12 13:42:58'),
(296, '{\"en\":\"Burdette Hermiston\"}', 'kilback.emmet@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 183, 9, '2018-04-27', 2, 8, 9, 48, '1994', NULL, '2022-03-12 13:42:58', '2022-03-12 13:42:58'),
(297, '{\"en\":\"Carmel Little Sr.\"}', 'myah.wolff@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 202, 3, '2003-10-18', 4, 6, 21, 192, '1989', NULL, '2022-03-12 13:42:58', '2022-03-12 13:42:58'),
(298, '{\"en\":\"Ruthe Zboncak\"}', 'russel.kaylin@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 15, 4, '1977-12-11', 2, 8, 14, 195, '1984', NULL, '2022-03-12 13:42:58', '2022-03-12 13:42:58'),
(299, '{\"en\":\"Prof. Stuart Welch II\"}', 'lysanne.spencer@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 24, 4, '2012-10-04', 3, 8, 10, 37, '2006', NULL, '2022-03-12 13:42:58', '2022-03-12 13:42:58'),
(300, '{\"en\":\"Conor Durgan\"}', 'ari.weimann@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 36, 10, '1978-06-08', 1, 6, 14, 1, '1986', NULL, '2022-03-12 13:42:58', '2022-03-12 13:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `student_accounts`
--

CREATE TABLE `student_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
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

INSERT INTO `student_accounts` (`id`, `date`, `type`, `fee_invoice_id`, `student_id`, `debit`, `credit`, `description`, `created_at`, `updated_at`) VALUES
(4, '2022-03-12', 'invoice', 4, 6, '9000.00', '0.00', 'قيمة رسوم دراسية 2022', '2022-03-12 21:30:35', '2022-03-12 21:30:35'),
(5, '2022-03-12', 'invoice', 5, 6, '3000.00', '0.00', 'قيمة رسوم اتوبيس 2022', '2022-03-12 21:30:35', '2022-03-12 21:30:35');

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
(1, 'cwilderman@example.com', '$2y$10$E5yAAMY38RzNfWwBkGL5YOLiu9xw/W5i0DVt6FFbiWA1pIqm1mXm2', '{\"en\":\"Rylee Roberts\",\"ar\":\"\\u0631\\u064a\\u0644\\u0649 \\u0631\\u0648\\u0628\\u0631\\u062a\\u0633\"}', 4, 2, '2006-09-15', 'Consequatur quia.', '2022-03-12 13:25:09', '2022-03-12 13:26:34'),
(2, 'coy64@example.com', '$2y$10$kEn.gC7w6VxCeLkkOxcRB.ozTrOby.28lq7bzZhmKbJSq6okV3bOe', '{\"en\":\"Golda Casper\",\"ar\":\"\\u062c\\u0648\\u0644\\u062f\\u0627 \\u0643\\u0627\\u0633\\u0628\\u0631\"}', 11, 1, '1998-02-20', 'Perspiciatis vel.', '2022-03-12 13:25:10', '2022-03-12 13:26:55'),
(3, 'archibald13@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Madelyn Skiles\"}', 8, 1, '2017-05-30', 'Corrupti fugiat est.', '2022-03-12 13:25:10', '2022-03-12 13:25:10'),
(4, 'nicholaus34@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Evert Brakus III\"}', 5, 1, '2011-04-28', 'Rerum sint est quos.', '2022-03-12 13:25:10', '2022-03-12 13:25:10'),
(5, 'wunsch.brain@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Donna Ankunding\"}', 6, 2, '1991-07-08', 'Et quia doloremque.', '2022-03-12 13:25:10', '2022-03-12 13:25:10'),
(6, 'armstrong.roberta@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Taryn Feest\"}', 8, 1, '1975-05-17', 'Dolor et et.', '2022-03-12 13:25:10', '2022-03-12 13:25:10'),
(7, 'consuelo.hand@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Jeromy Bosco DVM\"}', 5, 2, '1977-04-18', 'Recusandae aliquam.', '2022-03-12 13:25:10', '2022-03-12 13:25:10'),
(8, 'zprosacco@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Susie Rath\"}', 3, 2, '1987-07-15', 'Voluptas tempore.', '2022-03-12 13:25:10', '2022-03-12 13:25:10'),
(9, 'mckenzie.margaret@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Felipe O\'Conner\"}', 8, 1, '2001-05-09', 'Aut assumenda.', '2022-03-12 13:25:10', '2022-03-12 13:25:10'),
(10, 'don26@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Brook Dibbert\"}', 10, 2, '2009-02-07', 'Expedita et.', '2022-03-12 13:25:10', '2022-03-12 13:25:10'),
(11, 'webster68@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Audie Friesen Jr.\"}', 8, 1, '1997-12-18', 'Sed est odio sint.', '2022-03-12 13:25:10', '2022-03-12 13:25:10'),
(12, 'myles.koss@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ruthie Erdman DDS\"}', 10, 1, '1974-03-11', 'Quisquam dolorum.', '2022-03-12 13:25:10', '2022-03-12 13:25:10'),
(13, 'tobin.wolff@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Myrl Olson\"}', 5, 1, '1986-10-07', 'Aut recusandae.', '2022-03-12 13:25:10', '2022-03-12 13:25:10'),
(14, 'katlyn61@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Emilie Trantow\"}', 10, 1, '1992-04-02', 'Quia adipisci.', '2022-03-12 13:25:10', '2022-03-12 13:25:10'),
(15, 'vonrueden.kaya@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jayden Corkery\"}', 6, 1, '1984-05-27', 'Suscipit aut sunt.', '2022-03-12 13:25:10', '2022-03-12 13:25:10'),
(16, 'bweissnat@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Luciano Cartwright\"}', 2, 1, '1986-12-28', 'Quia occaecati.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(17, 'geovanny73@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Evelyn Predovic\"}', 5, 2, '1999-01-30', 'Soluta provident.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(18, 'nelson.steuber@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Selina Cormier\"}', 2, 2, '1973-07-15', 'Aut aliquid.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(19, 'earnestine59@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Gabe Gaylord DVM\"}', 11, 2, '1975-09-20', 'Maiores soluta.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(20, 'edmund41@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Joel Hayes\"}', 4, 1, '1972-12-20', 'Laborum minima odio.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(21, 'reilly.koch@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Fleta Schmeler Sr.\"}', 10, 1, '1978-08-01', 'Rem expedita.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(22, 'feeney.rhiannon@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Patsy Bradtke\"}', 10, 1, '2004-10-15', 'Incidunt aut et.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(23, 'adrien26@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Elenor Kling\"}', 9, 1, '1977-08-13', 'Voluptas maiores.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(24, 'hazel.cummings@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Josue Bashirian\"}', 10, 2, '1974-01-28', 'Possimus iusto.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(25, 'amani.bashirian@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Yasmine Nienow Jr.\"}', 4, 2, '2014-12-03', 'Error doloremque.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(26, 'ncollins@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Urban Schumm Jr.\"}', 4, 2, '1991-09-10', 'Ut sed perspiciatis.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(27, 'stoltenberg.jeffry@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Nellie Becker\"}', 11, 1, '1986-05-08', 'Dolorum ipsum.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(28, 'cayla.greenholt@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Assunta Zieme\"}', 6, 2, '1993-04-10', 'Sit illo dicta est.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(29, 'ahmad24@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jaeden Nienow IV\"}', 6, 2, '2012-08-11', 'Dolore voluptates.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(30, 'anibal.metz@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Tommie Spinka\"}', 2, 1, '1978-09-04', 'Dolor error neque.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(31, 'llarkin@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Alene Mann\"}', 10, 2, '2013-09-14', 'Corrupti dolorum.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(32, 'madyson75@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Matt Kemmer\"}', 8, 2, '1982-10-18', 'Fugit aliquid sed.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(33, 'madilyn.toy@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Jennings Runolfsson\"}', 10, 1, '2012-11-30', 'Voluptas labore.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(34, 'fwiegand@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Augusta Miller DDS\"}', 8, 2, '2004-10-17', 'Tempore vitae in.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(35, 'ilene06@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Bonnie Grant\"}', 9, 2, '1970-06-18', 'Non est tempora cum.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(36, 'mitchell.vito@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Chris Lubowitz III\"}', 2, 2, '1998-11-10', 'Dolor pariatur.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(37, 'grant57@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Wilfrid Hessel\"}', 10, 1, '1992-01-23', 'Maxime in nulla.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(38, 'windler.sylvia@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Roman Hyatt\"}', 8, 2, '1977-10-20', 'Dolores velit quos.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(39, 'herman.jerel@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Marquise Veum\"}', 10, 2, '1977-02-02', 'Ipsam aut ea.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(40, 'aflatley@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Sebastian Toy\"}', 3, 1, '1978-12-31', 'Totam cumque et.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(41, 'herminio50@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Marquis Schaefer\"}', 9, 2, '2013-03-18', 'Dolorem eius unde.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(42, 'okerluke@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Ignatius Rosenbaum PhD\"}', 4, 2, '1991-04-22', 'Quia aperiam ipsa.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(43, 'considine.camryn@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Flossie Denesik\"}', 10, 1, '1980-03-11', 'Harum accusantium.', '2022-03-12 13:25:11', '2022-03-12 13:25:11'),
(44, 'zmohr@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Giovanny Bashirian\"}', 10, 1, '1982-09-10', 'Incidunt distinctio.', '2022-03-12 13:25:12', '2022-03-12 13:25:12'),
(45, 'fnolan@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Rolando Schuppe\"}', 11, 2, '2013-12-04', 'Officiis ut ut.', '2022-03-12 13:25:12', '2022-03-12 13:25:12'),
(46, 'strosin.darrel@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Chyna Kemmer\"}', 9, 1, '1997-06-14', 'Dolorem quos vel.', '2022-03-12 13:25:12', '2022-03-12 13:25:12'),
(47, 'rippin.brandi@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Elvera Fay\"}', 6, 2, '1986-08-24', 'Laudantium.', '2022-03-12 13:25:12', '2022-03-12 13:25:12'),
(48, 'richard.schuster@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Earnestine Heathcote III\"}', 8, 1, '1996-02-13', 'Voluptas aut.', '2022-03-12 13:25:12', '2022-03-12 13:25:12'),
(49, 'plebsack@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jamir Gislason\"}', 1, 1, '2001-03-21', 'Nihil et enim est.', '2022-03-12 13:25:12', '2022-03-12 13:25:12'),
(50, 'mayer.aimee@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Daniela Braun\"}', 5, 1, '1971-02-10', 'Ut ut reprehenderit.', '2022-03-12 13:25:12', '2022-03-12 13:25:12');

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
  ADD KEY `fund_accounts_receipt_id_foreign` (`receipt_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fee_invoices`
--
ALTER TABLE `fee_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fund_accounts`
--
ALTER TABLE `fund_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `processing_fees`
--
ALTER TABLE `processing_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `student_accounts`
--
ALTER TABLE `student_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
