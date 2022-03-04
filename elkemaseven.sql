-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2022 at 10:45 PM
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
(1, 'Tarek Ashry', 'admin@admin.com', '$2y$10$EW/8TWA/LAjF1BkT1NEVWuyXQ2wqxFKAo7WZGI4ZFB8I0Ap3eaAPi', '2022-02-16 07:04:56', '2022-02-16 07:04:56');

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
(1, 'O-', '2022-02-16 08:11:44', '2022-02-16 08:11:44'),
(2, 'O+', '2022-02-16 08:11:44', '2022-02-16 08:11:44'),
(3, 'A+', '2022-02-16 08:11:44', '2022-02-16 08:11:44'),
(4, 'A-', '2022-02-16 08:11:44', '2022-02-16 08:11:44'),
(5, 'B+', '2022-02-16 08:11:44', '2022-02-16 08:11:44'),
(6, 'B-', '2022-02-16 08:11:44', '2022-02-16 08:11:44'),
(7, 'AB+', '2022-02-16 08:11:44', '2022-02-16 08:11:44'),
(8, 'AB-', '2022-02-16 08:11:45', '2022-02-16 08:11:45');

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
(43, '{\"en\":\"First Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0627\\u0648\\u0644\"}', 1, '2022-02-26 16:27:08', '2022-02-26 16:27:08'),
(44, '{\"en\":\"Second Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\"}', 1, '2022-02-26 16:27:08', '2022-02-26 16:27:08'),
(45, '{\"en\":\"Third Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b\"}', 1, '2022-02-26 16:27:08', '2022-02-26 16:27:08'),
(46, '{\"en\":\"First Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0627\\u0648\\u0644\"}', 2, '2022-02-26 16:28:44', '2022-02-26 16:28:44'),
(47, '{\"en\":\"Second Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\"}', 2, '2022-02-26 16:28:44', '2022-02-26 16:28:44'),
(48, '{\"en\":\"Third Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b\"}', 2, '2022-02-26 16:28:44', '2022-02-26 16:28:44'),
(49, '{\"en\":\"First Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0627\\u0648\\u0644\"}', 3, '2022-02-26 16:28:44', '2022-02-26 16:28:44'),
(50, '{\"en\":\"Second Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\"}', 3, '2022-02-26 16:28:44', '2022-02-26 16:28:44'),
(51, '{\"en\":\"Third Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b\"}', 3, '2022-02-26 16:28:44', '2022-02-26 16:28:44'),
(52, '{\"en\":\"First Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0627\\u0648\\u0644\"}', 4, '2022-02-26 16:29:46', '2022-02-26 16:29:46'),
(53, '{\"en\":\"Second Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\"}', 4, '2022-02-26 16:29:46', '2022-02-26 16:29:46'),
(54, '{\"en\":\"Third Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b\"}', 4, '2022-02-26 16:29:46', '2022-02-26 16:29:46');

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
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '{\"en\":\"Male\",\"ar\":\"\\u0630\\u0643\\u0631\"}', '2022-02-16 09:12:06', '2022-02-16 09:12:06'),
(2, '{\"en\":\"Female\",\"ar\":\"\\u0627\\u0646\\u062b\\u064a\"}', '2022-02-16 09:12:06', '2022-02-16 09:12:06');

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
(1, '{\"en\":\"Nursery\",\"ar\":\"\\u0627\\u0644\\u062d\\u0636\\u0627\\u0646\\u0629\"}', NULL, '2022-02-16 08:13:33', '2022-02-16 08:13:33'),
(2, '{\"en\":\"Primary Stage\",\"ar\":\"\\u0627\\u0644\\u0645\\u0631\\u062d\\u0644\\u0629 \\u0627\\u0644\\u0627\\u0628\\u062a\\u062f\\u0627\\u0626\\u064a\\u0629\"}', NULL, '2022-02-16 08:13:33', '2022-02-16 08:13:33'),
(3, '{\"en\":\"Middle School\",\"ar\":\"\\u0627\\u0644\\u0645\\u0631\\u062d\\u0644\\u0629 \\u0627\\u0644\\u0627\\u0639\\u062f\\u0627\\u062f\\u064a\\u0629\"}', NULL, '2022-02-16 08:13:33', '2022-02-16 08:13:33'),
(4, '{\"en\":\"High school\",\"ar\":\"\\u0627\\u0644\\u0645\\u0631\\u062d\\u0644\\u0629 \\u0627\\u0644\\u062b\\u0627\\u0646\\u0648\\u064a\\u0629\"}', NULL, '2022-02-16 08:13:33', '2022-02-16 08:13:33');

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
(3, 'toqa@admin.com', '$2y$10$ikkBoQFa..OZlOXPf6pG3O.1N/ze3hQQ3RU9To78.T.2l9IOMMyvG', '{\"en\":\"mostafa mohamed abo el yazeed\",\"ar\":\"\\u0645\\u0635\\u0637\\u0641\\u0649 \\u0645\\u062d\\u0645\\u062f \\u0627\\u0628\\u0648 \\u0627\\u0644\\u064a\\u0632\\u064a\\u062f\"}', '95147896325478', '3214569875', '25895463284', '{\"en\":\"phisical library\",\"ar\":\"\\u0627\\u062e\\u0635\\u0627\\u0626\\u0649 \\u0645\\u0643\\u062a\\u0628\\u0627\\u062a\"}', 64, 3, 1, 'el manyal st 25almanyal', '{\"en\":\"mona mohamed abo el yazeed\",\"ar\":\"\\u0645\\u0646\\u0649 \\u0645\\u062d\\u0645\\u062d\\u062f \\u0627\\u0628\\u0648 \\u0627\\u0644\\u064a\\u0632\\u064a\\u062f\"}', '54879658745215', '25865478952169', '2346987526', '{\"en\":\"non\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0639\\u0645\\u0644\"}', 64, 3, 1, 'stereet el manyal', '2022-02-27 20:20:16', '2022-02-27 20:20:16'),
(4, 'habiba@gmail.com', '$2y$10$6IP4P5Q7EkYKcaut.i4hTeDTHz5sgkgnNkWhuEoCidoeTV76i7/uO', '{\"en\":\"ahmad tarek lahmod hgu\",\"ar\":\"\\u0627\\u062d\\u0645\\u062f \\u0637\\u0627\\u0631\\u0642 \\u0645\\u062d\\u0645\\u0648\\u062f \\u0627\\u0644\\u0639\\u0634\\u0631\\u0649\"}', '258456321547898', '2587456325', '54789652458', '{\"en\":\"engenuring\",\"ar\":\"\\u0645\\u0647\\u0646\\u062f\\u0633 \\u0645\\u0639\\u0645\\u0627\\u0631\\u0649\"}', 19, 5, 1, 'el laaedy st 75', '{\"en\":\"habiba tarek mahmod el ashry\",\"ar\":\"\\u062d\\u0628\\u064a\\u0628\\u0629 \\u0637\\u0627\\u0631\\u0642 \\u0645\\u062d\\u0645\\u0648\\u062f \\u0627\\u0644\\u0639\\u0634\\u0631\\u0649\"}', '25879546325874', '2547896325', '25879652158', '{\"en\":\"non\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0639\\u0645\\u0644\"}', 20, 6, 1, 'cairo helwan 28 st', '2022-02-27 20:34:09', '2022-02-27 20:34:09'),
(6, 'ola@gmail.com', '$2y$10$y449IR6wOEW9dkWsg/KWoupHByWwYNTvSi3b6eJh2.fRDxGmHyVRW', '{\"en\":\"Tarek Mahmod Mohamed El Ashry\",\"ar\":\"\\u0637\\u0627\\u0631\\u0642 \\u0645\\u062d\\u0645\\u0648\\u062f \\u0645\\u062d\\u0645\\u062f \\u0627\\u0644\\u0639\\u0634\\u0631\\u0649\"}', '32145698745632', '3578951452', '25895374156', '{\"en\":\"Physical Education\",\"ar\":\"\\u0623\\u062e\\u0635\\u0627\\u0626\\u0649 \\u0631\\u064a\\u0627\\u0636\\u0649\"}', 64, 1, 1, 'Helwan st,15 cairo Egypt', '{\"en\":\"ola Shawky Abd El Samea Hassan\",\"ar\":\"\\u0639\\u0644\\u0627 \\u0634\\u0648\\u0642\\u0649 \\u0639\\u0628\\u062f \\u0627\\u0644\\u0633\\u0645\\u064a\\u0639 \\u062d\\u0633\\u0646\"}', '25647896321547', '2587412547', '25879631254', '{\"en\":\"\\u0644\\u0627 \\u062a\\u0639\\u0645\\u0644\",\"ar\":\"non\"}', 64, 3, 1, 'Helwan st,15 Cairo Egypt', '2022-03-01 17:20:48', '2022-03-01 17:20:48'),
(8, 'schroeder.demarco@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Amanda Bins\"}', '1157858671', '211811008', '689840072', '{\"en\":\"Quae.\"}', 197, 8, 2, 'Minima itaque nobis.', '{\"en\":\"Timmothy Goodwin\"}', '1407275043', '283337857', '349131346', '{\"en\":\"Dicta.\"}', 173, 6, 2, 'Dolore molestiae.', '2022-03-02 16:53:25', '2022-03-02 16:53:25'),
(9, 'jwelch@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Effie Carter\"}', '1270955829', '51268211', '1162831916', '{\"en\":\"Hic eos.\"}', 111, 5, 2, 'Corporis itaque vel.', '{\"en\":\"Caterina Dach\"}', '1454335305', '1243210825', '957700040', '{\"en\":\"Omnis.\"}', 29, 4, 1, 'Deleniti.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(10, 'ernestine.simonis@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Foster Auer\"}', '105034592', '1689684078', '587250177', '{\"en\":\"Est saepe.\"}', 166, 8, 1, 'At omnis aliquid.', '{\"en\":\"Leanne Carroll DVM\"}', '1446523793', '1828570839', '342068674', '{\"en\":\"Autem.\"}', 60, 2, 2, 'Exercitationem eos.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(11, 'blanche49@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Craig Tromp\"}', '1369349623', '1735468415', '1815023304', '{\"en\":\"Sapiente.\"}', 125, 2, 1, 'At architecto vitae.', '{\"en\":\"Hazel Hayes\"}', '542870588', '68143952', '857941078', '{\"en\":\"Dolor.\"}', 190, 6, 2, 'Enim veniam in.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(12, 'feil.perry@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Garrick Shanahan\"}', '1689944812', '2106876647', '813376494', '{\"en\":\"Rem et.\"}', 50, 1, 1, 'Qui voluptas.', '{\"en\":\"Dr. Gerson McClure IV\"}', '1480568841', '1104592765', '1949521177', '{\"en\":\"Ad libero.\"}', 169, 5, 2, 'Sapiente nulla.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(13, 'hartmann.emmanuelle@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Leif Leannon DDS\"}', '142409838', '2084167825', '488063548', '{\"en\":\"Sed.\"}', 234, 7, 1, 'Ipsum provident.', '{\"en\":\"Rosalind Gislason\"}', '1365684673', '1660215521', '955008464', '{\"en\":\"Aliquam.\"}', 200, 4, 1, 'Consequatur commodi.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(14, 'henriette.olson@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kian Maggio V\"}', '2123026047', '1118317260', '565345751', '{\"en\":\"Et ex qui.\"}', 184, 8, 1, 'Tenetur quo labore.', '{\"en\":\"Liana Wiza\"}', '1282265134', '1640312259', '226568906', '{\"en\":\"Beatae.\"}', 139, 7, 2, 'Velit est eveniet.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(15, 'maurice.johnston@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Cordie Reynolds\"}', '40394996', '1437325754', '1159729040', '{\"en\":\"Et non ut.\"}', 34, 5, 2, 'Quis dolores.', '{\"en\":\"Houston Mosciski I\"}', '1001054124', '1666487916', '1815893838', '{\"en\":\"Quasi.\"}', 176, 5, 2, 'Rerum sequi et aut.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(16, 'torphy.savanah@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Buster Marquardt\"}', '399325162', '867357502', '433671014', '{\"en\":\"Omnis.\"}', 158, 4, 1, 'Sunt facere maxime.', '{\"en\":\"Miss Lizeth Champlin\"}', '618463075', '961421707', '2117472601', '{\"en\":\"Vel id.\"}', 82, 4, 1, 'Earum nam iste.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(17, 'thauck@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kassandra Lind\"}', '1651093654', '706825230', '984111971', '{\"en\":\"Quasi.\"}', 156, 6, 1, 'Qui a recusandae et.', '{\"en\":\"Piper Cremin\"}', '447380825', '676066009', '1014936624', '{\"en\":\"Sed.\"}', 144, 7, 1, 'Molestiae ipsa cum.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(18, 'enienow@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Jacklyn Powlowski\"}', '794331891', '1010529728', '1085061904', '{\"en\":\"Explicabo.\"}', 161, 4, 2, 'Qui dolor velit.', '{\"en\":\"Mrs. Lue Kemmer\"}', '865372563', '1568790806', '498441555', '{\"en\":\"Iure.\"}', 95, 4, 2, 'Velit velit sint et.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(19, 'ngerlach@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Minerva Adams\"}', '607191594', '239925368', '1236324237', '{\"en\":\"Placeat.\"}', 148, 4, 2, 'Velit quia deserunt.', '{\"en\":\"Zelma Dibbert I\"}', '910494402', '1543701567', '1285698767', '{\"en\":\"Ea.\"}', 99, 6, 2, 'Est dignissimos a.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(20, 'sheldon.murphy@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"America Steuber\"}', '505734242', '1970065386', '1990463610', '{\"en\":\"Unde.\"}', 114, 8, 1, 'Facere est facilis.', '{\"en\":\"Mr. Ryan Carroll MD\"}', '1182196631', '1626122731', '66019978', '{\"en\":\"Eaque.\"}', 81, 6, 1, 'Voluptates est.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(21, 'ara.heidenreich@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Laisha Wolff I\"}', '1257885253', '713162038', '117153331', '{\"en\":\"Laborum.\"}', 115, 7, 2, 'Nobis explicabo sed.', '{\"en\":\"Ms. Ila Little Sr.\"}', '1332391806', '1214553350', '1978327124', '{\"en\":\"Vel.\"}', 44, 1, 1, 'Aut incidunt rerum.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(22, 'domenic.collins@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Else Jones\"}', '2069216886', '753381217', '859840125', '{\"en\":\"Illo ut.\"}', 193, 7, 1, 'Beatae ut aut rerum.', '{\"en\":\"Christ Effertz\"}', '733325416', '596949904', '779451014', '{\"en\":\"Pariatur.\"}', 107, 2, 2, 'Sit ex voluptas.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(23, 'gleichner.zoila@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Saige Zieme Sr.\"}', '834368778', '758483341', '2016973202', '{\"en\":\"Quia.\"}', 145, 7, 2, 'Iure pariatur aut.', '{\"en\":\"Angelina Murazik\"}', '1839809440', '1086229604', '2135111644', '{\"en\":\"Quia quia.\"}', 124, 2, 1, 'Sed recusandae.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(24, 'telly.stamm@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Gladys McDermott\"}', '1331701971', '426825620', '1323506613', '{\"en\":\"Autem.\"}', 199, 4, 1, 'Minima ducimus.', '{\"en\":\"Prof. Jonathan Schinner I\"}', '747890348', '2088751120', '1260657868', '{\"en\":\"Qui esse.\"}', 213, 3, 1, 'Et deserunt nemo.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(25, 'wunsch.craig@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Patrick Greenfelder\"}', '516150800', '30790314', '679482965', '{\"en\":\"Est amet.\"}', 145, 3, 1, 'Non suscipit.', '{\"en\":\"Miss Adrianna Stracke\"}', '1600053988', '1093667155', '662339367', '{\"en\":\"Mollitia.\"}', 159, 4, 2, 'Aut ut assumenda.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(26, 'pierre.swaniawski@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Ettie Beatty IV\"}', '2087179063', '617193344', '121769262', '{\"en\":\"At enim.\"}', 246, 5, 2, 'Dolor cum ab.', '{\"en\":\"Prof. Kariane Bashirian\"}', '1772323338', '1382386452', '1879702090', '{\"en\":\"Enim non.\"}', 126, 2, 1, 'Facere quasi facere.', '2022-03-02 16:53:26', '2022-03-02 16:53:26'),
(27, 'joannie67@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Aleen Bartell MD\"}', '1092597265', '1792520878', '1604897712', '{\"en\":\"Aut.\"}', 49, 7, 2, 'Ratione quae ipsam.', '{\"en\":\"Marie McLaughlin\"}', '2020655019', '1401819550', '153226237', '{\"en\":\"Numquam.\"}', 230, 5, 2, 'Rerum ut quo velit.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(28, 'runolfsdottir.fredy@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Chaz Anderson\"}', '1500058057', '929809256', '942949691', '{\"en\":\"Dolore.\"}', 83, 4, 2, 'Deleniti doloremque.', '{\"en\":\"Vida Jenkins\"}', '1567434123', '1526109511', '965254274', '{\"en\":\"Iusto.\"}', 17, 2, 1, 'Natus nulla quia.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(29, 'bessie94@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Issac Kertzmann MD\"}', '1577813554', '1047450248', '811347884', '{\"en\":\"Doloribus.\"}', 161, 1, 1, 'Eius quos maiores.', '{\"en\":\"Miss Thelma Harris MD\"}', '204010396', '1098900688', '2064455654', '{\"en\":\"Cum.\"}', 139, 2, 1, 'Consequatur.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(30, 'cartwright.walker@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Loyce O\'Connell\"}', '826257992', '97378728', '172559214', '{\"en\":\"Qui vel.\"}', 138, 3, 1, 'Voluptates mollitia.', '{\"en\":\"Casandra Schultz\"}', '549688872', '1064063241', '832147440', '{\"en\":\"Alias.\"}', 135, 7, 2, 'Dolores doloribus.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(31, 'awill@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jed Schroeder\"}', '1526321049', '2082761726', '1595813926', '{\"en\":\"Minus.\"}', 197, 8, 1, 'Non quia tenetur.', '{\"en\":\"Ms. Janet Kuhlman IV\"}', '382443424', '1197291571', '1700441047', '{\"en\":\"Aut.\"}', 116, 2, 2, 'Quis accusamus.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(32, 'tgrimes@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Cleora Jast\"}', '1222778889', '1381524415', '937305278', '{\"en\":\"Sed sed.\"}', 240, 3, 2, 'Qui ut et eveniet.', '{\"en\":\"Maximilian Luettgen Sr.\"}', '507127117', '672209627', '957263774', '{\"en\":\"Tenetur.\"}', 43, 5, 2, 'In est autem earum.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(33, 'ggerhold@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Pedro Raynor\"}', '2096310432', '1056529311', '794503088', '{\"en\":\"Tempora.\"}', 31, 1, 1, 'Assumenda sunt nam.', '{\"en\":\"Prof. Ardith Weissnat\"}', '1441488838', '2042463743', '807930421', '{\"en\":\"Omnis quo.\"}', 84, 2, 2, 'Deleniti et nihil.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(34, 'hkoepp@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Serenity Lueilwitz\"}', '1020347058', '2046954249', '897398458', '{\"en\":\"Qui quae.\"}', 27, 7, 1, 'Harum amet.', '{\"en\":\"Rahsaan Will\"}', '876269719', '969730901', '1719936626', '{\"en\":\"Ut ipsam.\"}', 116, 3, 1, 'Expedita maxime.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(35, 'xjohnson@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jamal Hettinger\"}', '1966710943', '1142320103', '250896367', '{\"en\":\"Cum.\"}', 95, 6, 2, 'Consequatur.', '{\"en\":\"Laura Kemmer\"}', '157844582', '615764666', '750163616', '{\"en\":\"Qui.\"}', 127, 6, 1, 'Sit quasi ut quis.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(36, 'jermain61@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kamron Lebsack DDS\"}', '46195227', '233748545', '805523558', '{\"en\":\"Rerum eos.\"}', 28, 3, 2, 'Quo soluta id autem.', '{\"en\":\"Micaela Ryan\"}', '1389602085', '1458022842', '1414868286', '{\"en\":\"Et cumque.\"}', 14, 5, 2, 'Quis omnis.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(37, 'mitchell.everardo@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Rosemarie Wyman\"}', '504270379', '2005397987', '2042563815', '{\"en\":\"Officia.\"}', 16, 7, 1, 'Nesciunt et.', '{\"en\":\"Ms. Calista Schumm III\"}', '497907780', '1140494107', '43252883', '{\"en\":\"Alias est.\"}', 78, 8, 2, 'Aut itaque amet.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(38, 'jakubowski.dion@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Giovanny Rogahn\"}', '1271583428', '871291507', '130095423', '{\"en\":\"Qui modi.\"}', 162, 7, 2, 'Autem magni sed.', '{\"en\":\"Sonya Schoen\"}', '1445712295', '618166088', '1614530341', '{\"en\":\"Sunt.\"}', 22, 6, 2, 'Alias aliquam.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(39, 'kshlerin.jerome@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Margaret Conn\"}', '768452822', '333105385', '86826742', '{\"en\":\"Incidunt.\"}', 147, 3, 1, 'Distinctio.', '{\"en\":\"Jaylen Torphy\"}', '1157751272', '1833084700', '1058643893', '{\"en\":\"Sunt.\"}', 229, 5, 1, 'Qui ipsum unde qui.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(40, 'walton.haag@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Stanton Raynor\"}', '1262221116', '895497923', '804977913', '{\"en\":\"Vero.\"}', 75, 1, 2, 'Iure ut quod velit.', '{\"en\":\"Theresia Fisher\"}', '605247114', '1983447853', '644339850', '{\"en\":\"Non id.\"}', 20, 2, 1, 'Qui ad id.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(41, 'watsica.london@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Frank Borer\"}', '1635975217', '438865887', '1643966099', '{\"en\":\"Eos totam.\"}', 96, 5, 1, 'Amet delectus aut.', '{\"en\":\"Brittany Bayer\"}', '506123531', '1746852720', '809626902', '{\"en\":\"Sit.\"}', 206, 7, 1, 'Sunt ex porro.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(42, 'uhalvorson@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Bartholome Kuphal\"}', '1572587325', '706214892', '29792138', '{\"en\":\"Animi.\"}', 231, 4, 1, 'Labore nemo aut et.', '{\"en\":\"Ed Walter\"}', '75415188', '1137077132', '259145695', '{\"en\":\"Id.\"}', 176, 1, 1, 'Facere aut.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(43, 'ottilie81@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Bridie Ledner\"}', '1930294769', '923928783', '1261968318', '{\"en\":\"Maxime.\"}', 174, 1, 2, 'Amet sapiente aut.', '{\"en\":\"Mr. Cristopher King DDS\"}', '1724673291', '1544330055', '428854912', '{\"en\":\"Tempore.\"}', 169, 3, 2, 'Suscipit tempore.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(44, 'king.guy@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mohammad DuBuque\"}', '681356929', '900133033', '301228423', '{\"en\":\"Et eius.\"}', 113, 7, 2, 'Quia iure suscipit.', '{\"en\":\"Myrtle Frami\"}', '1568762861', '480486269', '479516365', '{\"en\":\"Soluta.\"}', 100, 5, 1, 'Sunt sunt ea esse.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(45, 'andres86@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Enola Kreiger I\"}', '1799482296', '406709841', '560859906', '{\"en\":\"Aut.\"}', 191, 5, 1, 'Reiciendis nihil.', '{\"en\":\"Leon Kuhic\"}', '1275969717', '1623338694', '1589664168', '{\"en\":\"Sit qui.\"}', 183, 2, 2, 'Amet harum nisi et.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(46, 'rschoen@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Gudrun Robel Jr.\"}', '217052040', '543157946', '114487241', '{\"en\":\"Dolor.\"}', 72, 1, 2, 'Ad fugit recusandae.', '{\"en\":\"Mavis Parker\"}', '1177702645', '188616804', '1225669612', '{\"en\":\"Qui.\"}', 230, 3, 1, 'Totam eos.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(47, 'upollich@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Garth Rowe\"}', '602551507', '910891988', '103027002', '{\"en\":\"Eum.\"}', 152, 7, 2, 'Nemo occaecati.', '{\"en\":\"Conor Parker Sr.\"}', '969222538', '354782392', '1417184616', '{\"en\":\"Dolor.\"}', 67, 3, 2, 'Porro neque.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(48, 'erling62@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Bryana Fay V\"}', '216927124', '155919797', '1735532308', '{\"en\":\"Aliquid.\"}', 86, 2, 1, 'Suscipit optio.', '{\"en\":\"Ms. Ericka Koss DVM\"}', '696438934', '359249366', '1311492059', '{\"en\":\"Quae.\"}', 38, 1, 2, 'Est eveniet cumque.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(49, 'jany00@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Laurine Frami\"}', '1822804438', '934883122', '1627510770', '{\"en\":\"Et ullam.\"}', 136, 4, 2, 'Dolore nemo.', '{\"en\":\"Candice Nienow\"}', '1655856334', '666452476', '1176629107', '{\"en\":\"Molestias.\"}', 77, 1, 1, 'Libero sapiente non.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(50, 'bode.alexie@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Macey DuBuque\"}', '505914957', '1897795668', '333249292', '{\"en\":\"Harum.\"}', 129, 8, 1, 'Rerum sint vel ea.', '{\"en\":\"Travis Upton\"}', '169977988', '82978534', '917662780', '{\"en\":\"Occaecati.\"}', 76, 7, 2, 'Nulla quasi rerum.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(51, 'buck.donnelly@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Brant Weissnat\"}', '1660914861', '277569680', '923678533', '{\"en\":\"Possimus.\"}', 122, 3, 1, 'Nemo repudiandae.', '{\"en\":\"Milan Kub\"}', '860303826', '1401770461', '1970603538', '{\"en\":\"Non non.\"}', 176, 7, 1, 'Facilis suscipit.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(52, 'chegmann@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Alfred Mohr\"}', '1778256470', '251867142', '1502523181', '{\"en\":\"Fugit.\"}', 122, 8, 2, 'Qui laborum placeat.', '{\"en\":\"Carlie Sipes\"}', '1369074114', '1368978063', '1035032690', '{\"en\":\"Sint.\"}', 129, 4, 2, 'Iste possimus.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(53, 'beaulah85@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Joesph Gerlach\"}', '850739922', '1846200528', '2095685768', '{\"en\":\"Ut magni.\"}', 237, 3, 2, 'Rerum saepe et.', '{\"en\":\"Mr. Daron Reynolds I\"}', '1663942183', '1244056909', '1752599460', '{\"en\":\"Quaerat.\"}', 233, 8, 2, 'Aperiam qui eos.', '2022-03-02 16:53:27', '2022-03-02 16:53:27'),
(54, 'gulgowski.layne@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Esperanza Kub V\"}', '329501140', '1300381820', '1059759584', '{\"en\":\"Et.\"}', 187, 5, 1, 'Consectetur.', '{\"en\":\"Prof. Faustino Mann\"}', '1760095708', '970931276', '1066935921', '{\"en\":\"Ut neque.\"}', 39, 8, 1, 'Natus molestias aut.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(55, 'bridgette74@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Eriberto Wiza\"}', '1764618013', '1852794768', '2052157414', '{\"en\":\"Tenetur.\"}', 133, 5, 1, 'Molestiae eius qui.', '{\"en\":\"Lesley Little\"}', '1912900917', '885679880', '140260496', '{\"en\":\"Molestiae.\"}', 66, 6, 1, 'Quis consequatur.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(56, 'sanford.dimitri@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Bernardo Vandervort\"}', '2099700759', '1571000604', '1301079719', '{\"en\":\"Qui.\"}', 103, 8, 2, 'Quae velit aperiam.', '{\"en\":\"Gustave Durgan\"}', '1675524976', '234609343', '296591238', '{\"en\":\"Expedita.\"}', 177, 1, 1, 'Facere nesciunt.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(57, 'kessler.david@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Annette Bogisich\"}', '256094071', '2065175682', '1828753707', '{\"en\":\"Deserunt.\"}', 58, 2, 2, 'Mollitia ipsam.', '{\"en\":\"Julio Fay IV\"}', '1473675911', '1842274849', '721498429', '{\"en\":\"Excepturi.\"}', 22, 6, 1, 'Mollitia aut fuga.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(58, 'blaise.robel@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Americo Sanford DVM\"}', '618540839', '222552130', '1204169771', '{\"en\":\"Minus.\"}', 138, 2, 1, 'Repudiandae quia.', '{\"en\":\"Lynn Cormier\"}', '1142589487', '478662559', '2132521773', '{\"en\":\"Sunt ut.\"}', 189, 6, 1, 'Repudiandae.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(59, 'beau.rempel@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Sydnie Graham\"}', '999738304', '1997102619', '426728023', '{\"en\":\"Fuga.\"}', 205, 2, 2, 'Unde dicta.', '{\"en\":\"Meagan Christiansen\"}', '2120911358', '541728988', '1158844504', '{\"en\":\"Ad est in.\"}', 218, 1, 1, 'Non expedita.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(60, 'bertram.schoen@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Conrad Hauck\"}', '1345671661', '2074587001', '1639967711', '{\"en\":\"Fugit.\"}', 103, 5, 2, 'Quis quo velit.', '{\"en\":\"Donald Schmidt\"}', '270431104', '1770124408', '943875041', '{\"en\":\"Ipsum.\"}', 49, 3, 2, 'Ab autem mollitia.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(61, 'easton.gerlach@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Jean Klocko\"}', '150558646', '2047626158', '184103079', '{\"en\":\"Sint.\"}', 227, 3, 1, 'Enim voluptatem.', '{\"en\":\"Lonie Ziemann\"}', '1205397386', '1987259444', '1024019597', '{\"en\":\"Illum.\"}', 142, 3, 2, 'Ut porro dolorem id.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(62, 'godfrey14@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Claudia Simonis\"}', '507025349', '346286846', '1356864027', '{\"en\":\"Ut.\"}', 105, 4, 2, 'Laboriosam enim.', '{\"en\":\"Allen Ebert\"}', '1332367557', '1520510016', '1399954710', '{\"en\":\"Quidem.\"}', 193, 4, 1, 'Excepturi.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(63, 'vernice.hirthe@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Taya Shanahan\"}', '166490075', '2132047518', '131667381', '{\"en\":\"Totam.\"}', 71, 2, 2, 'Et asperiores fugit.', '{\"en\":\"Miss Camila Schoen Sr.\"}', '913550596', '69509120', '1639509246', '{\"en\":\"Fugit in.\"}', 206, 4, 2, 'Officia rerum.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(64, 'myrna.stokes@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Timmothy Fadel\"}', '1987486497', '1373474920', '1090769023', '{\"en\":\"Ab omnis.\"}', 194, 1, 1, 'Ratione ipsum.', '{\"en\":\"Della Bradtke\"}', '1261170001', '90467313', '2004680801', '{\"en\":\"Ea amet.\"}', 142, 2, 2, 'In reiciendis.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(65, 'vschulist@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Camron Lind\"}', '563824226', '1082128674', '872667561', '{\"en\":\"Quidem.\"}', 114, 7, 2, 'Enim ea et.', '{\"en\":\"Jacky Harris\"}', '196880413', '2142447794', '215714733', '{\"en\":\"Corrupti.\"}', 51, 4, 2, 'Ut officia voluptas.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(66, 'lulu99@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Alene Prohaska\"}', '1417396232', '200104905', '2135921462', '{\"en\":\"Fuga.\"}', 77, 5, 2, 'Ut nesciunt minus.', '{\"en\":\"Kelley Ebert\"}', '1286274661', '1979717843', '405105860', '{\"en\":\"Fugit.\"}', 132, 4, 2, 'Error consequatur.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(67, 'demarco.waelchi@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Brionna Runolfsson\"}', '693901510', '960566538', '1732899697', '{\"en\":\"Ut quia.\"}', 125, 6, 1, 'Sed enim officiis.', '{\"en\":\"Dr. Antonio Emmerich\"}', '1495445280', '739911040', '2127219094', '{\"en\":\"Natus.\"}', 30, 1, 1, 'Cum rerum.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(68, 'rcarter@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Amina Becker\"}', '845374566', '801421607', '188018298', '{\"en\":\"A illum.\"}', 43, 1, 1, 'Et laboriosam.', '{\"en\":\"Valerie Zulauf\"}', '960101092', '1312521550', '2068222644', '{\"en\":\"Voluptas.\"}', 89, 2, 1, 'Quidem modi omnis.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(69, 'hagenes.winnifred@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Misael Kling\"}', '323421100', '1011376342', '1868890875', '{\"en\":\"Dolores.\"}', 234, 2, 1, 'Sit assumenda ad.', '{\"en\":\"Marilou Haley\"}', '1065436209', '1408395538', '1690862624', '{\"en\":\"Dolores.\"}', 179, 8, 1, 'Nam et voluptatibus.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(70, 'kianna44@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Marcia Boyer\"}', '1660997458', '945560470', '563107854', '{\"en\":\"Molestiae.\"}', 38, 3, 1, 'Ut quaerat et nemo.', '{\"en\":\"Cullen Carroll\"}', '1834542380', '1558410341', '414499583', '{\"en\":\"Animi.\"}', 171, 3, 2, 'Voluptates nesciunt.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(71, 'nienow.sid@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Henry Kuhn\"}', '1832146566', '654445902', '465231654', '{\"en\":\"Officia.\"}', 19, 6, 1, 'Debitis sit illo.', '{\"en\":\"Prof. Jon Schuster\"}', '2038163368', '1619027991', '427487154', '{\"en\":\"Laborum.\"}', 114, 8, 2, 'Dolorem voluptatem.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(72, 'arno.powlowski@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Alessandra Hudson\"}', '1835526701', '1880259035', '1439330077', '{\"en\":\"Autem.\"}', 121, 7, 2, 'Adipisci et.', '{\"en\":\"Mrs. Susie Kshlerin PhD\"}', '1111181487', '2130835259', '605326632', '{\"en\":\"Ullam.\"}', 187, 8, 2, 'Suscipit est.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(73, 'rhiannon02@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Casper Waelchi IV\"}', '1791781622', '41256381', '1478559865', '{\"en\":\"Tempora.\"}', 117, 5, 2, 'Vel enim tempore.', '{\"en\":\"Maiya Willms MD\"}', '2125729599', '2122192496', '1456866521', '{\"en\":\"Facilis.\"}', 107, 6, 2, 'Molestias culpa.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(74, 'ashlee17@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Laurence Veum\"}', '119129611', '1411217553', '842664763', '{\"en\":\"Optio.\"}', 51, 7, 2, 'Autem possimus.', '{\"en\":\"Sally Pfannerstill DDS\"}', '31518523', '1370457374', '1785129485', '{\"en\":\"Voluptate.\"}', 138, 2, 2, 'Ipsa est quos id.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(75, 'kraynor@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dariana Nader\"}', '875125209', '1825424170', '106057544', '{\"en\":\"Rerum.\"}', 245, 1, 1, 'Fugit est soluta.', '{\"en\":\"Oliver Quigley\"}', '1818644333', '660186085', '1924775445', '{\"en\":\"Ducimus.\"}', 176, 2, 2, 'Ex facilis maxime.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(76, 'ronny.schneider@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Veronica Bechtelar\"}', '1012182051', '1412330573', '1520357327', '{\"en\":\"Eius.\"}', 238, 6, 1, 'Laudantium aut sed.', '{\"en\":\"Sigrid Lindgren\"}', '614375593', '788235666', '350533399', '{\"en\":\"Id.\"}', 78, 2, 2, 'A aut eius nostrum.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(77, 'michele.will@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Fabiola Koss\"}', '973078214', '2077396751', '1201982017', '{\"en\":\"Velit.\"}', 220, 3, 1, 'Amet ad enim veniam.', '{\"en\":\"Dr. Tillman Langosh\"}', '945179924', '1255618284', '1713484405', '{\"en\":\"Id maxime.\"}', 75, 4, 1, 'Quam saepe.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(78, 'samir.pouros@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Hailee Mueller Jr.\"}', '136942623', '1068869091', '1868793511', '{\"en\":\"Voluptas.\"}', 33, 2, 1, 'Dolorem ea rerum.', '{\"en\":\"Ms. Amina Swaniawski Jr.\"}', '1702875378', '1998023562', '1938957822', '{\"en\":\"Optio.\"}', 131, 8, 1, 'Ut a maxime quam.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(79, 'ratke.cristobal@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Jarrell Ruecker II\"}', '691165814', '1343461018', '440706074', '{\"en\":\"Ut.\"}', 191, 1, 2, 'Neque ducimus.', '{\"en\":\"Prof. Freda Harber Sr.\"}', '1303412572', '123618522', '898664925', '{\"en\":\"Omnis.\"}', 22, 3, 1, 'Deleniti ex tenetur.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(80, 'lue.romaguera@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Beth Strosin III\"}', '1508585017', '131344209', '443955606', '{\"en\":\"Ipsa.\"}', 107, 4, 2, 'Rerum quasi.', '{\"en\":\"Lonie Padberg Sr.\"}', '177167025', '898703909', '2043556352', '{\"en\":\"Suscipit.\"}', 71, 4, 2, 'Est consequuntur.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(81, 'ross.wolf@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jerod Graham\"}', '1894662621', '827686534', '1402833049', '{\"en\":\"Labore.\"}', 201, 6, 2, 'Sit aliquid.', '{\"en\":\"Dr. Lulu Zulauf II\"}', '1591824739', '2013748220', '1539923014', '{\"en\":\"Harum et.\"}', 148, 8, 1, 'Amet maxime dolor.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(82, 'tremblay.michele@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Axel White IV\"}', '1700425857', '1003108923', '1307716257', '{\"en\":\"Nam animi.\"}', 237, 7, 2, 'Voluptatem.', '{\"en\":\"Winona Conroy\"}', '14401369', '1930632860', '221740277', '{\"en\":\"Minima.\"}', 51, 7, 2, 'Praesentium sit ut.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(83, 'darron.rippin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Abagail Parisian\"}', '1356738138', '2062655837', '27143184', '{\"en\":\"Impedit.\"}', 116, 1, 1, 'Autem doloremque.', '{\"en\":\"Willard Schuppe\"}', '1161851810', '133840576', '1920389257', '{\"en\":\"Ullam.\"}', 147, 4, 1, 'Quam reiciendis.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(84, 'kromaguera@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Hayley Hane\"}', '873177897', '1312405082', '168906002', '{\"en\":\"Ipsam.\"}', 179, 6, 1, 'Consectetur nam.', '{\"en\":\"Rowan Cronin\"}', '1917767746', '44034553', '1315184560', '{\"en\":\"Ut.\"}', 92, 5, 2, 'Molestiae nemo.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(85, 'pgoldner@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Lonzo Lowe MD\"}', '933175585', '1209754610', '962853710', '{\"en\":\"Sunt.\"}', 78, 8, 2, 'Voluptatum maxime.', '{\"en\":\"Modesto Doyle\"}', '1507100244', '186909811', '162919527', '{\"en\":\"Facere et.\"}', 206, 5, 1, 'Reiciendis.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(86, 'donavon59@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Libbie Bauch\"}', '100116449', '1890322123', '24128631', '{\"en\":\"Ipsum.\"}', 245, 5, 1, 'Minus qui eligendi.', '{\"en\":\"Hilda Welch\"}', '1642275565', '1769744043', '1339747271', '{\"en\":\"Aut eos.\"}', 54, 3, 2, 'Eum qui fugiat.', '2022-03-02 16:53:28', '2022-03-02 16:53:28'),
(87, 'parisian.angelica@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Delphia Robel\"}', '1307688786', '518467522', '5375582', '{\"en\":\"Commodi.\"}', 174, 3, 1, 'Ut laboriosam et.', '{\"en\":\"Laurianne O\'Reilly\"}', '864695115', '2138647300', '464397045', '{\"en\":\"Sunt.\"}', 239, 6, 1, 'Rerum placeat quia.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(88, 'shanel82@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Meggie DuBuque IV\"}', '396018764', '186839637', '2084756320', '{\"en\":\"In rerum.\"}', 66, 8, 1, 'Id id voluptas.', '{\"en\":\"Orion Kuhlman II\"}', '1661931184', '1281335167', '141250184', '{\"en\":\"Ut.\"}', 154, 2, 1, 'Voluptatem.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(89, 'green.barry@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Juston Zboncak\"}', '1082556527', '1043942514', '62054851', '{\"en\":\"Sed sunt.\"}', 214, 3, 1, 'Repellat.', '{\"en\":\"Janelle Wiegand\"}', '1798098429', '1366784369', '1203079688', '{\"en\":\"Ea cum.\"}', 124, 3, 2, 'Et tenetur.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(90, 'wshields@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Jayson Conroy MD\"}', '1050850676', '1932436376', '350775631', '{\"en\":\"Maxime.\"}', 58, 6, 2, 'Culpa deleniti ut.', '{\"en\":\"Mrs. Adah Mills DVM\"}', '239727936', '1945471082', '1255285886', '{\"en\":\"Qui est.\"}', 60, 8, 1, 'A non architecto.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(91, 'timothy.reinger@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jacinto Bailey\"}', '509549119', '647253839', '1794144515', '{\"en\":\"Dicta qui.\"}', 232, 2, 2, 'Illo harum.', '{\"en\":\"Nyasia Marks\"}', '1704842995', '1230137814', '518114074', '{\"en\":\"Voluptas.\"}', 229, 8, 2, 'Quidem sed nostrum.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(92, 'cornell50@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ladarius Heller MD\"}', '1235586524', '1296257919', '399552454', '{\"en\":\"Maxime.\"}', 70, 4, 1, 'Nihil in odit.', '{\"en\":\"Miss Darby Ziemann Sr.\"}', '1832800152', '2007575326', '1949059348', '{\"en\":\"Ex in.\"}', 148, 7, 2, 'Laudantium aperiam.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(93, 'egoldner@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Mathew Rolfson DDS\"}', '533680564', '1794624460', '1332297820', '{\"en\":\"Est.\"}', 69, 4, 2, 'Possimus voluptatem.', '{\"en\":\"Weston Lubowitz\"}', '2011166659', '1968675428', '28892921', '{\"en\":\"Sunt.\"}', 56, 1, 1, 'Tenetur quaerat.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(94, 'zoie94@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Myah Hyatt DDS\"}', '1520516589', '696787089', '163443000', '{\"en\":\"Aut saepe.\"}', 187, 8, 1, 'Assumenda qui nihil.', '{\"en\":\"Reymundo Kuhlman\"}', '1495293595', '1308082366', '710122194', '{\"en\":\"Atque quo.\"}', 130, 7, 2, 'Sed quaerat sunt.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(95, 'prohaska.kareem@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Andre Erdman\"}', '336896278', '61272082', '881884326', '{\"en\":\"Sunt.\"}', 168, 3, 2, 'Sint blanditiis.', '{\"en\":\"Charles Kutch\"}', '885877034', '1225965874', '682275639', '{\"en\":\"Ea.\"}', 39, 4, 2, 'Ullam possimus non.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(96, 'margarett45@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lori Beahan III\"}', '1604185784', '309284084', '922798496', '{\"en\":\"Adipisci.\"}', 89, 8, 2, 'Culpa voluptas et.', '{\"en\":\"Al Treutel\"}', '1850359209', '1312471318', '603969549', '{\"en\":\"Nisi.\"}', 176, 1, 2, 'Molestiae velit est.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(97, 'june.kuvalis@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Ethan Bednar II\"}', '1772536615', '1362437391', '368170784', '{\"en\":\"Et quod.\"}', 87, 3, 2, 'Inventore.', '{\"en\":\"Sydney Zemlak\"}', '1712019472', '1546249286', '998383234', '{\"en\":\"Aut.\"}', 64, 6, 2, 'Similique numquam.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(98, 'ohaley@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Arthur Bahringer I\"}', '2074456651', '96582429', '2106055888', '{\"en\":\"Sed aut.\"}', 5, 8, 1, 'Asperiores et.', '{\"en\":\"Estefania Kuhic\"}', '2083477394', '1295149348', '145173822', '{\"en\":\"A placeat.\"}', 73, 8, 1, 'Nihil at sint cum.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(99, 'grant.moen@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Hertha Hills\"}', '1400940767', '2098163131', '1963301411', '{\"en\":\"Sint et.\"}', 75, 3, 1, 'Repudiandae et.', '{\"en\":\"Prof. Zoe Rempel\"}', '817416982', '916973472', '1279231439', '{\"en\":\"Vel sed.\"}', 149, 1, 2, 'Ut voluptatibus.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(100, 'wlakin@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Rocky Gaylord\"}', '402133420', '1217448891', '387342809', '{\"en\":\"Inventore.\"}', 154, 1, 1, 'Quo explicabo.', '{\"en\":\"Mrs. Marian Will MD\"}', '1906471044', '502497406', '1281743915', '{\"en\":\"Ducimus.\"}', 155, 5, 1, 'Optio aut minus.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(101, 'cmorissette@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lindsay Haley\"}', '1856355551', '1438674263', '339771526', '{\"en\":\"Eligendi.\"}', 187, 4, 1, 'Aut nihil pariatur.', '{\"en\":\"Dr. Daren Greenholt\"}', '1030537689', '1968385461', '2102932233', '{\"en\":\"Nostrum.\"}', 227, 6, 2, 'Et numquam.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(102, 'bogan.andrew@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Quincy Mayer\"}', '754597535', '387005004', '1756297092', '{\"en\":\"Adipisci.\"}', 9, 5, 1, 'Exercitationem.', '{\"en\":\"Miss Bethel Sanford PhD\"}', '1755822603', '1787226597', '613547669', '{\"en\":\"Aut.\"}', 101, 7, 2, 'Voluptatem.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(103, 'weissnat.lowell@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Hulda Graham\"}', '1118834803', '1809055306', '1975042714', '{\"en\":\"Quisquam.\"}', 245, 7, 2, 'Itaque voluptatem.', '{\"en\":\"Jensen Rempel Jr.\"}', '1467773979', '459798777', '115800568', '{\"en\":\"Ratione.\"}', 223, 6, 2, 'Tempora qui in et.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(104, 'funk.maud@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Samanta Bogisich\"}', '21148076', '759020967', '970160328', '{\"en\":\"Modi.\"}', 124, 1, 2, 'Est est vero ut.', '{\"en\":\"Preston Runte\"}', '1492610047', '447437266', '7459173', '{\"en\":\"Enim.\"}', 240, 2, 1, 'Commodi atque quae.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(105, 'kenya.watsica@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Orlando Schamberger IV\"}', '433164209', '1932379681', '153333824', '{\"en\":\"Aliquam.\"}', 184, 1, 2, 'Unde maiores.', '{\"en\":\"Aleen Maggio\"}', '1496496959', '1070271722', '107293866', '{\"en\":\"Odit ab.\"}', 3, 1, 2, 'Quos dolore rem.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(106, 'qschuster@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kylie Pacocha\"}', '530409450', '1193140799', '1012219618', '{\"en\":\"Illum et.\"}', 209, 6, 1, 'Enim ea dicta.', '{\"en\":\"Rita VonRueden II\"}', '1891595502', '955037516', '1466770997', '{\"en\":\"Quibusdam.\"}', 70, 5, 1, 'Suscipit.', '2022-03-02 16:53:29', '2022-03-02 16:53:29'),
(107, 'casey11@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lucienne Franecki\"}', '2025634782', '1293876850', '1721259179', '{\"en\":\"Fuga et.\"}', 244, 1, 2, 'Sunt soluta harum.', '{\"en\":\"Reta Mayer Sr.\"}', '1485408942', '186918696', '1751396943', '{\"en\":\"Ab rerum.\"}', 201, 1, 1, 'Ea nostrum est.', '2022-03-02 16:53:29', '2022-03-02 16:53:29');

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

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `filename`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(1, 'elkemma.png', 1, 'App\\Models\\Student', '2022-02-28 21:53:50', '2022-02-28 21:53:50'),
(2, 'elkemma.png', 2, 'App\\Models\\Student', '2022-03-01 17:08:20', '2022-03-01 17:08:20');

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
(6, '2022_02_16_092615_create_grade_table', 2),
(7, '2022_02_16_093052_create_classroom_table', 2),
(8, '2022_02_16_093128_create_sections_table', 2),
(9, '2022_02_16_093639_create_bloodtypes_table', 2),
(10, '2022_02_16_094916_create_nationalities_table', 2),
(11, '2022_02_16_094928_create_religions_table', 2),
(12, '2022_02_16_094939_create_guardians_table', 2),
(13, '2022_02_16_094951_create_parent_attachments_table', 2),
(14, '2022_02_16_095003_create_foreign_keys', 2),
(15, '2022_02_16_095018_create_genders_table', 2),
(16, '2022_02_16_095030_create_specializations_table', 2),
(17, '2022_02_16_095043_create_teachers_table', 2),
(18, '2022_02_16_095057_create_teacher_sections_table', 2),
(19, '2022_02_16_095109_create_students_table', 2),
(20, '2022_02_16_095121_create_images_table', 2),
(21, '2022_02_16_095132_create_promotions_table', 2),
(22, '2022_02_16_095145_create_fees_table', 2),
(23, '2022_02_16_095156_create_fee_invoices_table', 2),
(24, '2022_02_16_095208_create_student_accounts_table', 2),
(25, '2022_02_16_095219_create_receipt_students_table', 2),
(26, '2022_02_16_095230_create_fund_accounts_table', 2),
(27, '2022_02_16_095241_create_processing_fees_table', 2),
(28, '2022_02_16_095253_create_payment_students_table', 2),
(29, '2022_02_16_095304_create_attendances_table', 2),
(30, '2022_02_16_095317_create_subjects_table', 2),
(31, '2022_02_16_095329_create_quizzes_table', 2),
(32, '2022_02_16_095340_create_questions_table', 2),
(33, '2022_02_16_095351_create_online_classes_table', 2),
(34, '2022_02_16_095412_create_libraries_table', 2),
(35, '2022_02_16_095423_create_settings_table', 2),
(36, '2022_02_16_095435_create_events_table', 2);

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
(1, '{\"en\":\"Afghan\",\"ar\":\"\\u0623\\u0641\\u063a\\u0627\\u0646\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(2, '{\"en\":\"Albanian\",\"ar\":\"\\u0623\\u0644\\u0628\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(3, '{\"en\":\"Aland Islander\",\"ar\":\"\\u0622\\u0644\\u0627\\u0646\\u062f\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(4, '{\"en\":\"Algerian\",\"ar\":\"\\u062c\\u0632\\u0627\\u0626\\u0631\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(5, '{\"en\":\"American Samoan\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a \\u0633\\u0627\\u0645\\u0648\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(6, '{\"en\":\"Andorran\",\"ar\":\"\\u0623\\u0646\\u062f\\u0648\\u0631\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(7, '{\"en\":\"Angolan\",\"ar\":\"\\u0623\\u0646\\u0642\\u0648\\u0644\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(8, '{\"en\":\"Anguillan\",\"ar\":\"\\u0623\\u0646\\u063a\\u0648\\u064a\\u0644\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(9, '{\"en\":\"Antarctican\",\"ar\":\"\\u0623\\u0646\\u062a\\u0627\\u0631\\u0643\\u062a\\u064a\\u0643\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(10, '{\"en\":\"Antiguan\",\"ar\":\"\\u0628\\u0631\\u0628\\u0648\\u062f\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(11, '{\"en\":\"Argentinian\",\"ar\":\"\\u0623\\u0631\\u062c\\u0646\\u062a\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(12, '{\"en\":\"Armenian\",\"ar\":\"\\u0623\\u0631\\u0645\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(13, '{\"en\":\"Aruban\",\"ar\":\"\\u0623\\u0648\\u0631\\u0648\\u0628\\u0647\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(14, '{\"en\":\"Australian\",\"ar\":\"\\u0623\\u0633\\u062a\\u0631\\u0627\\u0644\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(15, '{\"en\":\"Austrian\",\"ar\":\"\\u0646\\u0645\\u0633\\u0627\\u0648\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(16, '{\"en\":\"Azerbaijani\",\"ar\":\"\\u0623\\u0630\\u0631\\u0628\\u064a\\u062c\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(17, '{\"en\":\"Bahamian\",\"ar\":\"\\u0628\\u0627\\u0647\\u0627\\u0645\\u064a\\u0633\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(18, '{\"en\":\"Bahraini\",\"ar\":\"\\u0628\\u062d\\u0631\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(19, '{\"en\":\"Bangladeshi\",\"ar\":\"\\u0628\\u0646\\u063a\\u0644\\u0627\\u062f\\u064a\\u0634\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(20, '{\"en\":\"Barbadian\",\"ar\":\"\\u0628\\u0631\\u0628\\u0627\\u062f\\u0648\\u0633\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(21, '{\"en\":\"Belarusian\",\"ar\":\"\\u0631\\u0648\\u0633\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(22, '{\"en\":\"Belgian\",\"ar\":\"\\u0628\\u0644\\u062c\\u064a\\u0643\\u064a\"}', '2022-02-16 08:37:26', '2022-02-16 08:37:26'),
(23, '{\"en\":\"Belizean\",\"ar\":\"\\u0628\\u064a\\u0644\\u064a\\u0632\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(24, '{\"en\":\"Beninese\",\"ar\":\"\\u0628\\u0646\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(25, '{\"en\":\"Saint Barthelmian\",\"ar\":\"\\u0633\\u0627\\u0646 \\u0628\\u0627\\u0631\\u062a\\u064a\\u0644\\u0645\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(26, '{\"en\":\"Bermudan\",\"ar\":\"\\u0628\\u0631\\u0645\\u0648\\u062f\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(27, '{\"en\":\"Bhutanese\",\"ar\":\"\\u0628\\u0648\\u062a\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(28, '{\"en\":\"Bolivian\",\"ar\":\"\\u0628\\u0648\\u0644\\u064a\\u0641\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(29, '{\"en\":\"Bosnian \\/ Herzegovinian\",\"ar\":\"\\u0628\\u0648\\u0633\\u0646\\u064a\\/\\u0647\\u0631\\u0633\\u0643\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(30, '{\"en\":\"Botswanan\",\"ar\":\"\\u0628\\u0648\\u062a\\u0633\\u0648\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(31, '{\"en\":\"Bouvetian\",\"ar\":\"\\u0628\\u0648\\u0641\\u064a\\u0647\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(32, '{\"en\":\"Brazilian\",\"ar\":\"\\u0628\\u0631\\u0627\\u0632\\u064a\\u0644\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(33, '{\"en\":\"British Indian Ocean Territory\",\"ar\":\"\\u0625\\u0642\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0645\\u062d\\u064a\\u0637 \\u0627\\u0644\\u0647\\u0646\\u062f\\u064a \\u0627\\u0644\\u0628\\u0631\\u064a\\u0637\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(34, '{\"en\":\"Bruneian\",\"ar\":\"\\u0628\\u0631\\u0648\\u0646\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(35, '{\"en\":\"Bulgarian\",\"ar\":\"\\u0628\\u0644\\u063a\\u0627\\u0631\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(36, '{\"en\":\"Burkinabe\",\"ar\":\"\\u0628\\u0648\\u0631\\u0643\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(37, '{\"en\":\"Burundian\",\"ar\":\"\\u0628\\u0648\\u0631\\u0648\\u0646\\u064a\\u062f\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(38, '{\"en\":\"Cambodian\",\"ar\":\"\\u0643\\u0645\\u0628\\u0648\\u062f\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(39, '{\"en\":\"Cameroonian\",\"ar\":\"\\u0643\\u0627\\u0645\\u064a\\u0631\\u0648\\u0646\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(40, '{\"en\":\"Canadian\",\"ar\":\"\\u0643\\u0646\\u062f\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(41, '{\"en\":\"Cape Verdean\",\"ar\":\"\\u0627\\u0644\\u0631\\u0623\\u0633 \\u0627\\u0644\\u0623\\u062e\\u0636\\u0631\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(42, '{\"en\":\"Caymanian\",\"ar\":\"\\u0643\\u0627\\u064a\\u0645\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(43, '{\"en\":\"Central African\",\"ar\":\"\\u0623\\u0641\\u0631\\u064a\\u0642\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(44, '{\"en\":\"Chadian\",\"ar\":\"\\u062a\\u0634\\u0627\\u062f\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(45, '{\"en\":\"Chilean\",\"ar\":\"\\u0634\\u064a\\u0644\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(46, '{\"en\":\"Chinese\",\"ar\":\"\\u0635\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(47, '{\"en\":\"Christmas Islander\",\"ar\":\"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0639\\u064a\\u062f \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(48, '{\"en\":\"Cocos Islander\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0643\\u0648\\u0643\\u0648\\u0633\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(49, '{\"en\":\"Colombian\",\"ar\":\"\\u0643\\u0648\\u0644\\u0648\\u0645\\u0628\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(50, '{\"en\":\"Comorian\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0627\\u0644\\u0642\\u0645\\u0631\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(51, '{\"en\":\"Congolese\",\"ar\":\"\\u0643\\u0648\\u0646\\u063a\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(52, '{\"en\":\"Cook Islander\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0643\\u0648\\u0643\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(53, '{\"en\":\"Costa Rican\",\"ar\":\"\\u0643\\u0648\\u0633\\u062a\\u0627\\u0631\\u064a\\u0643\\u064a\"}', '2022-02-16 08:37:27', '2022-02-16 08:37:27'),
(54, '{\"en\":\"Croatian\",\"ar\":\"\\u0643\\u0648\\u0631\\u0627\\u062a\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(55, '{\"en\":\"Cuban\",\"ar\":\"\\u0643\\u0648\\u0628\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(56, '{\"en\":\"Cypriot\",\"ar\":\"\\u0642\\u0628\\u0631\\u0635\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(57, '{\"en\":\"Curacian\",\"ar\":\"\\u0643\\u0648\\u0631\\u0627\\u0633\\u0627\\u0648\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(58, '{\"en\":\"Czech\",\"ar\":\"\\u062a\\u0634\\u064a\\u0643\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(59, '{\"en\":\"Danish\",\"ar\":\"\\u062f\\u0646\\u0645\\u0627\\u0631\\u0643\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(60, '{\"en\":\"Djiboutian\",\"ar\":\"\\u062c\\u064a\\u0628\\u0648\\u062a\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(61, '{\"en\":\"Dominican\",\"ar\":\"\\u062f\\u0648\\u0645\\u064a\\u0646\\u064a\\u0643\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(62, '{\"en\":\"Dominican\",\"ar\":\"\\u062f\\u0648\\u0645\\u064a\\u0646\\u064a\\u0643\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(63, '{\"en\":\"Ecuadorian\",\"ar\":\"\\u0625\\u0643\\u0648\\u0627\\u062f\\u0648\\u0631\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(64, '{\"en\":\"Egyptian\",\"ar\":\"\\u0645\\u0635\\u0631\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(65, '{\"en\":\"Salvadoran\",\"ar\":\"\\u0633\\u0644\\u0641\\u0627\\u062f\\u0648\\u0631\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(66, '{\"en\":\"Equatorial Guinean\",\"ar\":\"\\u063a\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(67, '{\"en\":\"Eritrean\",\"ar\":\"\\u0625\\u0631\\u064a\\u062a\\u064a\\u0631\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(68, '{\"en\":\"Estonian\",\"ar\":\"\\u0627\\u0633\\u062a\\u0648\\u0646\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(69, '{\"en\":\"Ethiopian\",\"ar\":\"\\u0623\\u062b\\u064a\\u0648\\u0628\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(70, '{\"en\":\"Falkland Islander\",\"ar\":\"\\u0641\\u0648\\u0643\\u0644\\u0627\\u0646\\u062f\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(71, '{\"en\":\"Faroese\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0641\\u0627\\u0631\\u0648\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(72, '{\"en\":\"Fijian\",\"ar\":\"\\u0641\\u064a\\u062c\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(73, '{\"en\":\"Finnish\",\"ar\":\"\\u0641\\u0646\\u0644\\u0646\\u062f\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(74, '{\"en\":\"French\",\"ar\":\"\\u0641\\u0631\\u0646\\u0633\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(75, '{\"en\":\"French Guianese\",\"ar\":\"\\u063a\\u0648\\u064a\\u0627\\u0646\\u0627 \\u0627\\u0644\\u0641\\u0631\\u0646\\u0633\\u064a\\u0629\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(76, '{\"en\":\"French Polynesian\",\"ar\":\"\\u0628\\u0648\\u0644\\u064a\\u0646\\u064a\\u0632\\u064a\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(77, '{\"en\":\"French\",\"ar\":\"\\u0623\\u0631\\u0627\\u0636 \\u0641\\u0631\\u0646\\u0633\\u064a\\u0629 \\u062c\\u0646\\u0648\\u0628\\u064a\\u0629 \\u0648\\u0623\\u0646\\u062a\\u0627\\u0631\\u062a\\u064a\\u0643\\u064a\\u0629\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(78, '{\"en\":\"Gabonese\",\"ar\":\"\\u063a\\u0627\\u0628\\u0648\\u0646\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(79, '{\"en\":\"Gambian\",\"ar\":\"\\u063a\\u0627\\u0645\\u0628\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(80, '{\"en\":\"Georgian\",\"ar\":\"\\u062c\\u064a\\u0648\\u0631\\u062c\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(81, '{\"en\":\"German\",\"ar\":\"\\u0623\\u0644\\u0645\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(82, '{\"en\":\"Ghanaian\",\"ar\":\"\\u063a\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(83, '{\"en\":\"Gibraltar\",\"ar\":\"\\u062c\\u0628\\u0644 \\u0637\\u0627\\u0631\\u0642\"}', '2022-02-16 08:37:28', '2022-02-16 08:37:28'),
(84, '{\"en\":\"Guernsian\",\"ar\":\"\\u063a\\u064a\\u0631\\u0646\\u0632\\u064a\"}', '2022-02-16 08:37:29', '2022-02-16 08:37:29'),
(85, '{\"en\":\"Greek\",\"ar\":\"\\u064a\\u0648\\u0646\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:29', '2022-02-16 08:37:29'),
(86, '{\"en\":\"Greenlandic\",\"ar\":\"\\u062c\\u0631\\u064a\\u0646\\u0644\\u0627\\u0646\\u062f\\u064a\"}', '2022-02-16 08:37:29', '2022-02-16 08:37:29'),
(87, '{\"en\":\"Grenadian\",\"ar\":\"\\u063a\\u0631\\u064a\\u0646\\u0627\\u062f\\u064a\"}', '2022-02-16 08:37:29', '2022-02-16 08:37:29'),
(88, '{\"en\":\"Guadeloupe\",\"ar\":\"\\u062c\\u0632\\u0631 \\u062c\\u0648\\u0627\\u062f\\u0644\\u0648\\u0628\"}', '2022-02-16 08:37:29', '2022-02-16 08:37:29'),
(89, '{\"en\":\"Guamanian\",\"ar\":\"\\u062c\\u0648\\u0627\\u0645\\u064a\"}', '2022-02-16 08:37:29', '2022-02-16 08:37:29'),
(90, '{\"en\":\"Guatemalan\",\"ar\":\"\\u063a\\u0648\\u0627\\u062a\\u064a\\u0645\\u0627\\u0644\\u064a\"}', '2022-02-16 08:37:29', '2022-02-16 08:37:29'),
(91, '{\"en\":\"Guinean\",\"ar\":\"\\u063a\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:29', '2022-02-16 08:37:29'),
(92, '{\"en\":\"Guinea-Bissauan\",\"ar\":\"\\u063a\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:29', '2022-02-16 08:37:29'),
(93, '{\"en\":\"Guyanese\",\"ar\":\"\\u063a\\u064a\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:29', '2022-02-16 08:37:29'),
(94, '{\"en\":\"Haitian\",\"ar\":\"\\u0647\\u0627\\u064a\\u062a\\u064a\"}', '2022-02-16 08:37:29', '2022-02-16 08:37:29'),
(95, '{\"en\":\"Heard and Mc Donald Islanders\",\"ar\":\"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0647\\u064a\\u0631\\u062f \\u0648\\u062c\\u0632\\u0631 \\u0645\\u0627\\u0643\\u062f\\u0648\\u0646\\u0627\\u0644\\u062f\"}', '2022-02-16 08:37:29', '2022-02-16 08:37:29'),
(96, '{\"en\":\"Honduran\",\"ar\":\"\\u0647\\u0646\\u062f\\u0648\\u0631\\u0627\\u0633\\u064a\"}', '2022-02-16 08:37:29', '2022-02-16 08:37:29'),
(97, '{\"en\":\"Hongkongese\",\"ar\":\"\\u0647\\u0648\\u0646\\u063a \\u0643\\u0648\\u0646\\u063a\\u064a\"}', '2022-02-16 08:37:30', '2022-02-16 08:37:30'),
(98, '{\"en\":\"Hungarian\",\"ar\":\"\\u0645\\u062c\\u0631\\u064a\"}', '2022-02-16 08:37:30', '2022-02-16 08:37:30'),
(99, '{\"en\":\"Icelandic\",\"ar\":\"\\u0622\\u064a\\u0633\\u0644\\u0646\\u062f\\u064a\"}', '2022-02-16 08:37:30', '2022-02-16 08:37:30'),
(100, '{\"en\":\"Indian\",\"ar\":\"\\u0647\\u0646\\u062f\\u064a\"}', '2022-02-16 08:37:30', '2022-02-16 08:37:30'),
(101, '{\"en\":\"Manx\",\"ar\":\"\\u0645\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:30', '2022-02-16 08:37:30'),
(102, '{\"en\":\"Indonesian\",\"ar\":\"\\u0623\\u0646\\u062f\\u0648\\u0646\\u064a\\u0633\\u064a\\u064a\"}', '2022-02-16 08:37:30', '2022-02-16 08:37:30'),
(103, '{\"en\":\"Iranian\",\"ar\":\"\\u0625\\u064a\\u0631\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:30', '2022-02-16 08:37:30'),
(104, '{\"en\":\"Iraqi\",\"ar\":\"\\u0639\\u0631\\u0627\\u0642\\u064a\"}', '2022-02-16 08:37:30', '2022-02-16 08:37:30'),
(105, '{\"en\":\"Irish\",\"ar\":\"\\u0625\\u064a\\u0631\\u0644\\u0646\\u062f\\u064a\"}', '2022-02-16 08:37:30', '2022-02-16 08:37:30'),
(106, '{\"en\":\"Italian\",\"ar\":\"\\u0625\\u064a\\u0637\\u0627\\u0644\\u064a\"}', '2022-02-16 08:37:30', '2022-02-16 08:37:30'),
(107, '{\"en\":\"Ivory Coastian\",\"ar\":\"\\u0633\\u0627\\u062d\\u0644 \\u0627\\u0644\\u0639\\u0627\\u062c\"}', '2022-02-16 08:37:30', '2022-02-16 08:37:30'),
(108, '{\"en\":\"Jersian\",\"ar\":\"\\u062c\\u064a\\u0631\\u0632\\u064a\"}', '2022-02-16 08:37:30', '2022-02-16 08:37:30'),
(109, '{\"en\":\"Jamaican\",\"ar\":\"\\u062c\\u0645\\u0627\\u064a\\u0643\\u064a\"}', '2022-02-16 08:37:30', '2022-02-16 08:37:30'),
(110, '{\"en\":\"Japanese\",\"ar\":\"\\u064a\\u0627\\u0628\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:30', '2022-02-16 08:37:30'),
(111, '{\"en\":\"Jordanian\",\"ar\":\"\\u0623\\u0631\\u062f\\u0646\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(112, '{\"en\":\"Kazakh\",\"ar\":\"\\u0643\\u0627\\u0632\\u0627\\u062e\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(113, '{\"en\":\"Kenyan\",\"ar\":\"\\u0643\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(114, '{\"en\":\"I-Kiribati\",\"ar\":\"\\u0643\\u064a\\u0631\\u064a\\u0628\\u0627\\u062a\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(115, '{\"en\":\"North Korean\",\"ar\":\"\\u0643\\u0648\\u0631\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(116, '{\"en\":\"South Korean\",\"ar\":\"\\u0643\\u0648\\u0631\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(117, '{\"en\":\"Kosovar\",\"ar\":\"\\u0643\\u0648\\u0633\\u064a\\u0641\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(118, '{\"en\":\"Kuwaiti\",\"ar\":\"\\u0643\\u0648\\u064a\\u062a\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(119, '{\"en\":\"Kyrgyzstani\",\"ar\":\"\\u0642\\u064a\\u0631\\u063a\\u064a\\u0632\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(120, '{\"en\":\"Laotian\",\"ar\":\"\\u0644\\u0627\\u0648\\u0633\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(121, '{\"en\":\"Latvian\",\"ar\":\"\\u0644\\u0627\\u062a\\u064a\\u0641\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(122, '{\"en\":\"Lebanese\",\"ar\":\"\\u0644\\u0628\\u0646\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(123, '{\"en\":\"Basotho\",\"ar\":\"\\u0644\\u064a\\u0648\\u0633\\u064a\\u062a\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(124, '{\"en\":\"Liberian\",\"ar\":\"\\u0644\\u064a\\u0628\\u064a\\u0631\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(125, '{\"en\":\"Libyan\",\"ar\":\"\\u0644\\u064a\\u0628\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(126, '{\"en\":\"Liechtenstein\",\"ar\":\"\\u0644\\u064a\\u062e\\u062a\\u0646\\u0634\\u062a\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(127, '{\"en\":\"Lithuanian\",\"ar\":\"\\u0644\\u062a\\u0648\\u0627\\u0646\\u064a\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(128, '{\"en\":\"Luxembourger\",\"ar\":\"\\u0644\\u0648\\u0643\\u0633\\u0645\\u0628\\u0648\\u0631\\u063a\\u064a\"}', '2022-02-16 08:37:31', '2022-02-16 08:37:31'),
(129, '{\"en\":\"Sri Lankian\",\"ar\":\"\\u0633\\u0631\\u064a\\u0644\\u0627\\u0646\\u0643\\u064a\"}', '2022-02-16 08:37:32', '2022-02-16 08:37:32'),
(130, '{\"en\":\"Macanese\",\"ar\":\"\\u0645\\u0627\\u0643\\u0627\\u0648\\u064a\"}', '2022-02-16 08:37:32', '2022-02-16 08:37:32'),
(131, '{\"en\":\"Macedonian\",\"ar\":\"\\u0645\\u0642\\u062f\\u0648\\u0646\\u064a\"}', '2022-02-16 08:37:32', '2022-02-16 08:37:32'),
(132, '{\"en\":\"Malagasy\",\"ar\":\"\\u0645\\u062f\\u063a\\u0634\\u0642\\u0631\\u064a\"}', '2022-02-16 08:37:32', '2022-02-16 08:37:32'),
(133, '{\"en\":\"Malawian\",\"ar\":\"\\u0645\\u0627\\u0644\\u0627\\u0648\\u064a\"}', '2022-02-16 08:37:32', '2022-02-16 08:37:32'),
(134, '{\"en\":\"Malaysian\",\"ar\":\"\\u0645\\u0627\\u0644\\u064a\\u0632\\u064a\"}', '2022-02-16 08:37:32', '2022-02-16 08:37:32'),
(135, '{\"en\":\"Maldivian\",\"ar\":\"\\u0645\\u0627\\u0644\\u062f\\u064a\\u0641\\u064a\"}', '2022-02-16 08:37:32', '2022-02-16 08:37:32'),
(136, '{\"en\":\"Malian\",\"ar\":\"\\u0645\\u0627\\u0644\\u064a\"}', '2022-02-16 08:37:32', '2022-02-16 08:37:32'),
(137, '{\"en\":\"Maltese\",\"ar\":\"\\u0645\\u0627\\u0644\\u0637\\u064a\"}', '2022-02-16 08:37:32', '2022-02-16 08:37:32'),
(138, '{\"en\":\"Marshallese\",\"ar\":\"\\u0645\\u0627\\u0631\\u0634\\u0627\\u0644\\u064a\"}', '2022-02-16 08:37:32', '2022-02-16 08:37:32'),
(139, '{\"en\":\"Martiniquais\",\"ar\":\"\\u0645\\u0627\\u0631\\u062a\\u064a\\u0646\\u064a\\u0643\\u064a\"}', '2022-02-16 08:37:32', '2022-02-16 08:37:32'),
(140, '{\"en\":\"Mauritanian\",\"ar\":\"\\u0645\\u0648\\u0631\\u064a\\u062a\\u0627\\u0646\\u064a\\u064a\"}', '2022-02-16 08:37:32', '2022-02-16 08:37:32'),
(141, '{\"en\":\"Mauritian\",\"ar\":\"\\u0645\\u0648\\u0631\\u064a\\u0634\\u064a\\u0648\\u0633\\u064a\"}', '2022-02-16 08:37:32', '2022-02-16 08:37:32'),
(142, '{\"en\":\"Mahoran\",\"ar\":\"\\u0645\\u0627\\u064a\\u0648\\u062a\\u064a\"}', '2022-02-16 08:37:32', '2022-02-16 08:37:32'),
(143, '{\"en\":\"Mexican\",\"ar\":\"\\u0645\\u0643\\u0633\\u064a\\u0643\\u064a\"}', '2022-02-16 08:37:32', '2022-02-16 08:37:32'),
(144, '{\"en\":\"Micronesian\",\"ar\":\"\\u0645\\u0627\\u064a\\u0643\\u0631\\u0648\\u0646\\u064a\\u0632\\u064a\\u064a\"}', '2022-02-16 08:37:32', '2022-02-16 08:37:32'),
(145, '{\"en\":\"Moldovan\",\"ar\":\"\\u0645\\u0648\\u0644\\u062f\\u064a\\u0641\\u064a\"}', '2022-02-16 08:37:33', '2022-02-16 08:37:33'),
(146, '{\"en\":\"Monacan\",\"ar\":\"\\u0645\\u0648\\u0646\\u064a\\u0643\\u064a\"}', '2022-02-16 08:37:33', '2022-02-16 08:37:33'),
(147, '{\"en\":\"Mongolian\",\"ar\":\"\\u0645\\u0646\\u063a\\u0648\\u0644\\u064a\"}', '2022-02-16 08:37:33', '2022-02-16 08:37:33'),
(148, '{\"en\":\"Montenegrin\",\"ar\":\"\\u0627\\u0644\\u062c\\u0628\\u0644 \\u0627\\u0644\\u0623\\u0633\\u0648\\u062f\"}', '2022-02-16 08:37:33', '2022-02-16 08:37:33'),
(149, '{\"en\":\"Montserratian\",\"ar\":\"\\u0645\\u0648\\u0646\\u062a\\u0633\\u064a\\u0631\\u0627\\u062a\\u064a\"}', '2022-02-16 08:37:33', '2022-02-16 08:37:33'),
(150, '{\"en\":\"Moroccan\",\"ar\":\"\\u0645\\u063a\\u0631\\u0628\\u064a\"}', '2022-02-16 08:37:33', '2022-02-16 08:37:33'),
(151, '{\"en\":\"Mozambican\",\"ar\":\"\\u0645\\u0648\\u0632\\u0645\\u0628\\u064a\\u0642\\u064a\"}', '2022-02-16 08:37:33', '2022-02-16 08:37:33'),
(152, '{\"en\":\"Myanmarian\",\"ar\":\"\\u0645\\u064a\\u0627\\u0646\\u0645\\u0627\\u0631\\u064a\"}', '2022-02-16 08:37:33', '2022-02-16 08:37:33'),
(153, '{\"en\":\"Namibian\",\"ar\":\"\\u0646\\u0627\\u0645\\u064a\\u0628\\u064a\"}', '2022-02-16 08:37:33', '2022-02-16 08:37:33'),
(154, '{\"en\":\"Nauruan\",\"ar\":\"\\u0646\\u0648\\u0631\\u064a\"}', '2022-02-16 08:37:33', '2022-02-16 08:37:33'),
(155, '{\"en\":\"Nepalese\",\"ar\":\"\\u0646\\u064a\\u0628\\u0627\\u0644\\u064a\"}', '2022-02-16 08:37:33', '2022-02-16 08:37:33'),
(156, '{\"en\":\"Dutch\",\"ar\":\"\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\"}', '2022-02-16 08:37:33', '2022-02-16 08:37:33'),
(157, '{\"en\":\"Dutch Antilier\",\"ar\":\"\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\"}', '2022-02-16 08:37:33', '2022-02-16 08:37:33'),
(158, '{\"en\":\"New Caledonian\",\"ar\":\"\\u0643\\u0627\\u0644\\u064a\\u062f\\u0648\\u0646\\u064a\"}', '2022-02-16 08:37:33', '2022-02-16 08:37:33'),
(159, '{\"en\":\"New Zealander\",\"ar\":\"\\u0646\\u064a\\u0648\\u0632\\u064a\\u0644\\u0646\\u062f\\u064a\"}', '2022-02-16 08:37:33', '2022-02-16 08:37:33'),
(160, '{\"en\":\"Nicaraguan\",\"ar\":\"\\u0646\\u064a\\u0643\\u0627\\u0631\\u0627\\u062c\\u0648\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(161, '{\"en\":\"Nigerien\",\"ar\":\"\\u0646\\u064a\\u062c\\u064a\\u0631\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(162, '{\"en\":\"Nigerian\",\"ar\":\"\\u0646\\u064a\\u062c\\u064a\\u0631\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(163, '{\"en\":\"Niuean\",\"ar\":\"\\u0646\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(164, '{\"en\":\"Norfolk Islander\",\"ar\":\"\\u0646\\u0648\\u0631\\u0641\\u0648\\u0644\\u064a\\u0643\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(165, '{\"en\":\"Northern Marianan\",\"ar\":\"\\u0645\\u0627\\u0631\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(166, '{\"en\":\"Norwegian\",\"ar\":\"\\u0646\\u0631\\u0648\\u064a\\u062c\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(167, '{\"en\":\"Omani\",\"ar\":\"\\u0639\\u0645\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(168, '{\"en\":\"Pakistani\",\"ar\":\"\\u0628\\u0627\\u0643\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(169, '{\"en\":\"Palauan\",\"ar\":\"\\u0628\\u0627\\u0644\\u0627\\u0648\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(170, '{\"en\":\"Palestinian\",\"ar\":\"\\u0641\\u0644\\u0633\\u0637\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(171, '{\"en\":\"Panamanian\",\"ar\":\"\\u0628\\u0646\\u0645\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(172, '{\"en\":\"Papua New Guinean\",\"ar\":\"\\u0628\\u0627\\u0628\\u0648\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(173, '{\"en\":\"Paraguayan\",\"ar\":\"\\u0628\\u0627\\u0631\\u063a\\u0627\\u0648\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(174, '{\"en\":\"Peruvian\",\"ar\":\"\\u0628\\u064a\\u0631\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(175, '{\"en\":\"Filipino\",\"ar\":\"\\u0641\\u0644\\u0628\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(176, '{\"en\":\"Pitcairn Islander\",\"ar\":\"\\u0628\\u064a\\u062a\\u0643\\u064a\\u0631\\u0646\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(177, '{\"en\":\"Polish\",\"ar\":\"\\u0628\\u0648\\u0644\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(178, '{\"en\":\"Portuguese\",\"ar\":\"\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(179, '{\"en\":\"Puerto Rican\",\"ar\":\"\\u0628\\u0648\\u0631\\u062a\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(180, '{\"en\":\"Qatari\",\"ar\":\"\\u0642\\u0637\\u0631\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(181, '{\"en\":\"Reunionese\",\"ar\":\"\\u0631\\u064a\\u0648\\u0646\\u064a\\u0648\\u0646\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(182, '{\"en\":\"Romanian\",\"ar\":\"\\u0631\\u0648\\u0645\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(183, '{\"en\":\"Russian\",\"ar\":\"\\u0631\\u0648\\u0633\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(184, '{\"en\":\"Rwandan\",\"ar\":\"\\u0631\\u0648\\u0627\\u0646\\u062f\\u0627\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(185, '{\"ar\":\"Kittitian\\/Nevisian\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(186, '{\"en\":\"St. Martian(French)\",\"ar\":\"\\u0633\\u0627\\u064a\\u0646\\u062a \\u0645\\u0627\\u0631\\u062a\\u0646\\u064a \\u0641\\u0631\\u0646\\u0633\\u064a\"}', '2022-02-16 08:37:34', '2022-02-16 08:37:34'),
(187, '{\"en\":\"St. Martian(Dutch)\",\"ar\":\"\\u0633\\u0627\\u064a\\u0646\\u062a \\u0645\\u0627\\u0631\\u062a\\u0646\\u064a \\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\"}', '2022-02-16 08:37:35', '2022-02-16 08:37:35'),
(188, '{\"en\":\"St. Pierre and Miquelon\",\"ar\":\"\\u0633\\u0627\\u0646 \\u0628\\u064a\\u064a\\u0631 \\u0648\\u0645\\u064a\\u0643\\u0644\\u0648\\u0646\\u064a\"}', '2022-02-16 08:37:35', '2022-02-16 08:37:35'),
(189, '{\"en\":\"Saint Vincent and the Grenadines\",\"ar\":\"\\u0633\\u0627\\u0646\\u062a \\u0641\\u0646\\u0633\\u0646\\u062a \\u0648\\u062c\\u0632\\u0631 \\u063a\\u0631\\u064a\\u0646\\u0627\\u062f\\u064a\\u0646\"}', '2022-02-16 08:37:35', '2022-02-16 08:37:35'),
(190, '{\"en\":\"Samoan\",\"ar\":\"\\u0633\\u0627\\u0645\\u0648\\u064a\"}', '2022-02-16 08:37:35', '2022-02-16 08:37:35'),
(191, '{\"en\":\"Sammarinese\",\"ar\":\"\\u0645\\u0627\\u0631\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:35', '2022-02-16 08:37:35'),
(192, '{\"en\":\"Sao Tomean\",\"ar\":\"\\u0633\\u0627\\u0648 \\u062a\\u0648\\u0645\\u064a \\u0648\\u0628\\u0631\\u064a\\u0646\\u0633\\u064a\\u0628\\u064a\"}', '2022-02-16 08:37:35', '2022-02-16 08:37:35'),
(193, '{\"en\":\"Saudi Arabian\",\"ar\":\"\\u0633\\u0639\\u0648\\u062f\\u064a\"}', '2022-02-16 08:37:35', '2022-02-16 08:37:35'),
(194, '{\"en\":\"Senegalese\",\"ar\":\"\\u0633\\u0646\\u063a\\u0627\\u0644\\u064a\"}', '2022-02-16 08:37:35', '2022-02-16 08:37:35'),
(195, '{\"en\":\"Serbian\",\"ar\":\"\\u0635\\u0631\\u0628\\u064a\"}', '2022-02-16 08:37:35', '2022-02-16 08:37:35'),
(196, '{\"en\":\"Seychellois\",\"ar\":\"\\u0633\\u064a\\u0634\\u064a\\u0644\\u064a\"}', '2022-02-16 08:37:35', '2022-02-16 08:37:35'),
(197, '{\"en\":\"Sierra Leonean\",\"ar\":\"\\u0633\\u064a\\u0631\\u0627\\u0644\\u064a\\u0648\\u0646\\u064a\"}', '2022-02-16 08:37:35', '2022-02-16 08:37:35'),
(198, '{\"en\":\"Singaporean\",\"ar\":\"\\u0633\\u0646\\u063a\\u0627\\u0641\\u0648\\u0631\\u064a\"}', '2022-02-16 08:37:35', '2022-02-16 08:37:35'),
(199, '{\"en\":\"Slovak\",\"ar\":\"\\u0633\\u0648\\u0644\\u0641\\u0627\\u0643\\u064a\"}', '2022-02-16 08:37:35', '2022-02-16 08:37:35'),
(200, '{\"en\":\"Slovenian\",\"ar\":\"\\u0633\\u0648\\u0644\\u0641\\u064a\\u0646\\u064a\"}', '2022-02-16 08:37:35', '2022-02-16 08:37:35'),
(201, '{\"en\":\"Solomon Island\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0633\\u0644\\u064a\\u0645\\u0627\\u0646\"}', '2022-02-16 08:37:36', '2022-02-16 08:37:36'),
(202, '{\"en\":\"Somali\",\"ar\":\"\\u0635\\u0648\\u0645\\u0627\\u0644\\u064a\"}', '2022-02-16 08:37:36', '2022-02-16 08:37:36'),
(203, '{\"en\":\"South African\",\"ar\":\"\\u0623\\u0641\\u0631\\u064a\\u0642\\u064a\"}', '2022-02-16 08:37:36', '2022-02-16 08:37:36'),
(204, '{\"en\":\"South Georgia and the South Sandwich\",\"ar\":\"\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629 \\u0627\\u0644\\u0642\\u0637\\u0628\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0646\\u0648\\u0628\\u064a\\u0629\"}', '2022-02-16 08:37:36', '2022-02-16 08:37:36'),
(205, '{\"en\":\"South Sudanese\",\"ar\":\"\\u0633\\u0648\\u0627\\u062f\\u0646\\u064a \\u062c\\u0646\\u0648\\u0628\\u064a\"}', '2022-02-16 08:37:36', '2022-02-16 08:37:36'),
(206, '{\"en\":\"Spanish\",\"ar\":\"\\u0625\\u0633\\u0628\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:36', '2022-02-16 08:37:36'),
(207, '{\"en\":\"St. Helenian\",\"ar\":\"\\u0647\\u064a\\u0644\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:36', '2022-02-16 08:37:36'),
(208, '{\"en\":\"Sudanese\",\"ar\":\"\\u0633\\u0648\\u062f\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:36', '2022-02-16 08:37:36'),
(209, '{\"en\":\"Surinamese\",\"ar\":\"\\u0633\\u0648\\u0631\\u064a\\u0646\\u0627\\u0645\\u064a\"}', '2022-02-16 08:37:36', '2022-02-16 08:37:36'),
(210, '{\"en\":\"Svalbardian\\/Jan Mayenian\",\"ar\":\"\\u0633\\u0641\\u0627\\u0644\\u0628\\u0627\\u0631\\u062f \\u0648\\u064a\\u0627\\u0646 \\u0645\\u0627\\u064a\\u0646\"}', '2022-02-16 08:37:36', '2022-02-16 08:37:36'),
(211, '{\"en\":\"Swazi\",\"ar\":\"\\u0633\\u0648\\u0627\\u0632\\u064a\\u0644\\u0646\\u062f\\u064a\"}', '2022-02-16 08:37:36', '2022-02-16 08:37:36'),
(212, '{\"en\":\"Swedish\",\"ar\":\"\\u0633\\u0648\\u064a\\u062f\\u064a\"}', '2022-02-16 08:37:36', '2022-02-16 08:37:36'),
(213, '{\"en\":\"Swiss\",\"ar\":\"\\u0633\\u0648\\u064a\\u0633\\u0631\\u064a\"}', '2022-02-16 08:37:36', '2022-02-16 08:37:36'),
(214, '{\"en\":\"Syrian\",\"ar\":\"\\u0633\\u0648\\u0631\\u064a\"}', '2022-02-16 08:37:36', '2022-02-16 08:37:36'),
(215, '{\"en\":\"Taiwanese\",\"ar\":\"\\u062a\\u0627\\u064a\\u0648\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:36', '2022-02-16 08:37:36'),
(216, '{\"en\":\"Tajikistani\",\"ar\":\"\\u0637\\u0627\\u062c\\u064a\\u0643\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:36', '2022-02-16 08:37:36'),
(217, '{\"en\":\"Tanzanian\",\"ar\":\"\\u062a\\u0646\\u0632\\u0627\\u0646\\u064a\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(218, '{\"en\":\"Thai\",\"ar\":\"\\u062a\\u0627\\u064a\\u0644\\u0646\\u062f\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(219, '{\"en\":\"Timor-Lestian\",\"ar\":\"\\u062a\\u064a\\u0645\\u0648\\u0631\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(220, '{\"en\":\"Togolese\",\"ar\":\"\\u062a\\u0648\\u063a\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(221, '{\"en\":\"Tokelaian\",\"ar\":\"\\u062a\\u0648\\u0643\\u064a\\u0644\\u0627\\u0648\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(222, '{\"en\":\"Tongan\",\"ar\":\"\\u062a\\u0648\\u0646\\u063a\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(223, '{\"en\":\"Trinidadian\\/Tobagonian\",\"ar\":\"\\u062a\\u0631\\u064a\\u0646\\u064a\\u062f\\u0627\\u062f \\u0648\\u062a\\u0648\\u0628\\u0627\\u063a\\u0648\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(224, '{\"en\":\"Tunisian\",\"ar\":\"\\u062a\\u0648\\u0646\\u0633\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(225, '{\"en\":\"Turkish\",\"ar\":\"\\u062a\\u0631\\u0643\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(226, '{\"en\":\"Turkmen\",\"ar\":\"\\u062a\\u0631\\u0643\\u0645\\u0627\\u0646\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(227, '{\"en\":\"Turks and Caicos Islands\",\"ar\":\"\\u062c\\u0632\\u0631 \\u062a\\u0648\\u0631\\u0643\\u0633 \\u0648\\u0643\\u0627\\u064a\\u0643\\u0648\\u0633\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(228, '{\"en\":\"Tuvaluan\",\"ar\":\"\\u062a\\u0648\\u0641\\u0627\\u0644\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(229, '{\"en\":\"Ugandan\",\"ar\":\"\\u0623\\u0648\\u063a\\u0646\\u062f\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(230, '{\"en\":\"Ukrainian\",\"ar\":\"\\u0623\\u0648\\u0643\\u0631\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(231, '{\"en\":\"Emirati\",\"ar\":\"\\u0625\\u0645\\u0627\\u0631\\u0627\\u062a\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(232, '{\"en\":\"British\",\"ar\":\"\\u0628\\u0631\\u064a\\u0637\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(233, '{\"en\":\"American\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(234, '{\"en\":\"US Minor Outlying Islander\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(235, '{\"en\":\"Uruguayan\",\"ar\":\"\\u0623\\u0648\\u0631\\u063a\\u0648\\u0627\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(236, '{\"en\":\"Uzbek\",\"ar\":\"\\u0623\\u0648\\u0632\\u0628\\u0627\\u0643\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(237, '{\"en\":\"Vanuatuan\",\"ar\":\"\\u0641\\u0627\\u0646\\u0648\\u0627\\u062a\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(238, '{\"en\":\"Venezuelan\",\"ar\":\"\\u0641\\u0646\\u0632\\u0648\\u064a\\u0644\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(239, '{\"en\":\"Vietnamese\",\"ar\":\"\\u0641\\u064a\\u062a\\u0646\\u0627\\u0645\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(240, '{\"en\":\"American Virgin Islander\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(241, '{\"en\":\"Vatican\",\"ar\":\"\\u0641\\u0627\\u062a\\u064a\\u0643\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(242, '{\"en\":\"Wallisian\\/Futunan\",\"ar\":\"\\u0641\\u0648\\u062a\\u0648\\u0646\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(243, '{\"en\":\"Sahrawian\",\"ar\":\"\\u0635\\u062d\\u0631\\u0627\\u0648\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(244, '{\"en\":\"Yemeni\",\"ar\":\"\\u064a\\u0645\\u0646\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(245, '{\"en\":\"Zambian\",\"ar\":\"\\u0632\\u0627\\u0645\\u0628\\u064a\\u0627\\u0646\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37'),
(246, '{\"en\":\"Zimbabwean\",\"ar\":\"\\u0632\\u0645\\u0628\\u0627\\u0628\\u0648\\u064a\"}', '2022-02-16 08:37:37', '2022-02-16 08:37:37');

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
(1, '{\"en\":\"Muslim\",\"ar\":\"\\u0645\\u0633\\u0644\\u0645\"}', '2022-02-16 09:10:40', '2022-02-16 09:10:40'),
(2, '{\"en\":\"Christian\",\"ar\":\"\\u0645\\u0633\\u064a\\u062d\\u064a\"}', '2022-02-16 09:10:40', '2022-02-16 09:10:40'),
(3, '{\"en\":\"Other\",\"ar\":\"\\u063a\\u064a\\u0631\\u0630\\u0644\\u0643\"}', '2022-02-16 09:10:40', '2022-02-16 09:10:40');

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
(2, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 1, 43, '2022-02-26 20:08:28', '2022-02-26 20:08:28'),
(3, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 1, 43, '2022-02-26 20:08:44', '2022-02-26 20:08:44'),
(4, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 1, 43, '2022-02-26 20:08:55', '2022-02-26 20:08:55'),
(5, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 46, '2022-02-26 20:09:05', '2022-02-26 20:09:05'),
(6, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 46, '2022-02-26 20:09:16', '2022-02-26 20:09:16'),
(7, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 46, '2022-02-26 20:09:29', '2022-02-26 20:09:29'),
(8, '{\"ar\":\"\\u0623\",\"en\":\"B\"}', 1, 3, 49, '2022-02-26 20:16:29', '2022-02-26 20:16:29'),
(9, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 3, 49, '2022-02-26 20:16:39', '2022-02-26 20:16:39'),
(10, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 3, 49, '2022-02-26 20:16:47', '2022-02-26 20:16:47');

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
(1, '{\"en\":\"Arabic\",\"ar\":\"\\u0639\\u0631\\u0628\\u064a\"}', '2022-02-16 09:12:46', '2022-02-16 09:12:46'),
(2, '{\"en\":\"English\",\"ar\":\"\\u0627\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\"}', '2022-02-16 09:12:46', '2022-02-16 09:12:46'),
(3, '{\"en\":\"German\",\"ar\":\"\\u0627\\u0644\\u0645\\u0627\\u0646\\u0649\"}', '2022-02-16 09:12:46', '2022-02-16 09:12:46'),
(4, '{\"en\":\"Sciences\",\"ar\":\"\\u0639\\u0644\\u0648\\u0645\"}', '2022-02-16 09:12:46', '2022-02-16 09:12:46'),
(5, '{\"en\":\"Mathematics\",\"ar\":\"\\u0631\\u064a\\u0627\\u0636\\u064a\\u0627\\u062a\"}', '2022-02-16 09:12:46', '2022-02-16 09:12:46'),
(6, '{\"en\":\"Social Studies\",\"ar\":\"\\u062f\\u0631\\u0627\\u0633\\u0627\\u062a \\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629\"}', '2022-02-16 09:12:46', '2022-02-16 09:12:46'),
(7, '{\"en\":\"Computer\",\"ar\":\"\\u062d\\u0627\\u0633\\u0628 \\u0627\\u0644\\u064a\"}', '2022-02-16 09:12:46', '2022-02-16 09:12:46'),
(8, '{\"en\":\"Discover\",\"ar\":\"\\u0627\\u0643\\u062a\\u0634\\u0641\"}', '2022-02-16 09:12:46', '2022-02-16 09:12:46'),
(9, '{\"en\":\"religion\",\"ar\":\"\\u062f\\u064a\\u0646\"}', '2022-02-16 09:12:46', '2022-02-16 09:12:46'),
(10, '{\"en\":\"fee\",\"ar\":\"\\u0631\\u0633\\u0645\"}', '2022-02-16 09:12:46', '2022-02-16 09:12:46'),
(11, '{\"en\":\"games\",\"ar\":\"\\u0627\\u0644\\u0639\\u0627\\u0628\"}', '2022-02-16 09:12:46', '2022-02-16 09:12:46');

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
(12, '{\"en\":\"Jessie Steuber\"}', 'corwin.lenny@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 34, 1, '1971-08-09', 2, 46, 7, 72, '2009', '2022-03-02 19:30:33', '2022-03-02 17:17:10', '2022-03-02 19:30:33'),
(13, '{\"en\":\"Ms. Maegan Bruen DVM\"}', 'roob.mollie@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 52, 6, '2016-06-01', 4, 51, 3, 22, '2010', NULL, '2022-03-02 17:17:11', '2022-03-02 17:17:11'),
(14, '{\"en\":\"Anibal Wiegand\"}', 'schaefer.dale@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 191, 7, '1988-11-17', 3, 45, 5, 45, '2006', NULL, '2022-03-02 17:17:11', '2022-03-02 17:17:11'),
(15, '{\"en\":\"Alexa Heathcote DVM\"}', 'lesch.annetta@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 214, 6, '1978-12-25', 1, 44, 2, 82, '1983', NULL, '2022-03-02 17:17:11', '2022-03-02 17:17:11'),
(16, '{\"en\":\"Mrs. Maye Hayes Jr.\"}', 'deja08@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 121, 5, '2016-09-07', 4, 43, 2, 57, '2017', NULL, '2022-03-02 17:17:11', '2022-03-02 17:17:11'),
(17, '{\"en\":\"Ena Marquardt\"}', 'skiles.viva@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 136, 2, '2015-09-11', 2, 45, 6, 31, '2016', NULL, '2022-03-02 17:17:11', '2022-03-02 17:17:11'),
(18, '{\"en\":\"Paige Wilderman\"}', 'morissette.kiel@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 81, 8, '2015-03-25', 1, 48, 2, 63, '1998', NULL, '2022-03-02 17:17:11', '2022-03-02 17:17:11'),
(19, '{\"en\":\"Myrtis Wisoky\"}', 'lullrich@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 122, 6, '2000-05-05', 3, 50, 8, 58, '1998', NULL, '2022-03-02 17:17:11', '2022-03-02 17:17:11'),
(20, '{\"en\":\"Jody Koch\"}', 'dickinson.rahul@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 105, 3, '1996-05-10', 1, 48, 10, 85, '2000', NULL, '2022-03-02 17:17:11', '2022-03-02 17:17:11'),
(21, '{\"en\":\"Prof. Madilyn Mueller I\"}', 'yauer@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 204, 2, '2000-07-02', 2, 46, 2, 41, '1985', NULL, '2022-03-02 17:17:11', '2022-03-02 17:17:11'),
(22, '{\"en\":\"Ms. Jaida Daniel\"}', 'viola55@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 56, 4, '1979-01-25', 1, 43, 3, 54, '1970', NULL, '2022-03-02 17:17:11', '2022-03-02 17:17:11'),
(23, '{\"en\":\"Isobel Bailey\"}', 'jjerde@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 40, 4, '2005-08-24', 2, 44, 3, 12, '2014', NULL, '2022-03-02 17:17:11', '2022-03-02 17:17:11'),
(24, '{\"en\":\"Albert Volkman\"}', 'jbrekke@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 144, 1, '2009-12-28', 3, 49, 6, 88, '2003', NULL, '2022-03-02 17:17:11', '2022-03-02 17:17:11'),
(25, '{\"en\":\"Miss Clare Hoppe\"}', 'sedrick34@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 86, 7, '1986-04-26', 2, 46, 3, 69, '1988', NULL, '2022-03-02 17:17:11', '2022-03-02 17:17:11'),
(26, '{\"en\":\"Francesca Pacocha\"}', 'ojast@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 36, 2, '1992-09-20', 3, 48, 6, 45, '2003', NULL, '2022-03-02 17:17:11', '2022-03-02 17:17:11'),
(27, '{\"en\":\"Mr. Lesley Purdy\"}', 'cynthia.bartell@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 164, 6, '1984-09-22', 1, 48, 9, 102, '2002', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(28, '{\"en\":\"Mrs. Zula Prohaska MD\"}', 'delbert51@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 80, 1, '1972-07-16', 2, 52, 6, 37, '2009', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(29, '{\"en\":\"Dr. Reggie Kozey\"}', 'ekerluke@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 142, 8, '2008-04-10', 4, 45, 5, 90, '1998', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(30, '{\"en\":\"Reta Mills\"}', 'antonette.gibson@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 238, 4, '1985-04-24', 3, 44, 10, 60, '2014', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(31, '{\"en\":\"Johnathan Metz\"}', 'ccrooks@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 91, 2, '2011-04-09', 2, 43, 10, 43, '2015', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(32, '{\"en\":\"Prof. Levi Beatty\"}', 'cade.reichel@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 202, 4, '1993-02-27', 3, 48, 5, 81, '2021', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(33, '{\"en\":\"Timmothy Considine\"}', 'skuphal@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 63, 2, '1989-05-06', 1, 47, 10, 66, '1971', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(34, '{\"en\":\"Maxwell Tromp\"}', 'sawayn.bette@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 183, 5, '1979-10-26', 2, 53, 5, 16, '2003', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(35, '{\"en\":\"Dr. Cayla Ruecker\"}', 'ogrady@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 23, 7, '1994-08-21', 2, 50, 10, 96, '2009', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(36, '{\"en\":\"Elvie Schaefer\"}', 'rath.lavonne@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 232, 6, '2019-09-02', 2, 50, 3, 9, '1999', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(37, '{\"en\":\"Shany Zemlak\"}', 'ksmith@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 186, 3, '1975-06-03', 3, 48, 5, 51, '2010', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(38, '{\"en\":\"Mr. Zander Gislason III\"}', 'cwill@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 29, 7, '2022-01-27', 1, 46, 5, 51, '1995', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(39, '{\"en\":\"Sidney Kshlerin\"}', 'dana.rau@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 246, 1, '1980-09-13', 4, 47, 2, 43, '2001', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(40, '{\"en\":\"Carrie Windler\"}', 'njones@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 108, 3, '1980-09-25', 2, 52, 6, 95, '1975', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(41, '{\"en\":\"Titus Rempel\"}', 'xhaley@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 92, 4, '2006-01-15', 1, 44, 6, 100, '1973', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(42, '{\"en\":\"Roel Klocko\"}', 'jaylen30@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 59, 8, '1979-12-05', 2, 52, 2, 66, '1979', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(43, '{\"en\":\"Dr. Nick Gaylord\"}', 'tony30@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 27, 3, '1972-06-02', 4, 54, 5, 91, '2019', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(44, '{\"en\":\"Mr. Vicente Shanahan\"}', 'laurel.walker@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 52, 1, '2021-09-30', 4, 54, 4, 25, '1984', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(45, '{\"en\":\"Maymie Dare\"}', 'dino.herzog@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 241, 3, '1978-04-03', 4, 49, 3, 84, '1977', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(46, '{\"en\":\"Chelsie Renner\"}', 'brekke.retta@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 217, 3, '1987-02-23', 4, 53, 7, 84, '1989', NULL, '2022-03-02 17:17:12', '2022-03-02 17:17:12'),
(47, '{\"en\":\"Nelle Lueilwitz MD\"}', 'kautzer.zackery@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 75, 3, '1982-08-12', 4, 51, 8, 107, '2014', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(48, '{\"en\":\"Prof. Carter Maggio\"}', 'daisha.kuhlman@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 215, 6, '1988-10-16', 3, 54, 6, 77, '1990', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(49, '{\"en\":\"Beryl Eichmann\"}', 'ysporer@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 55, 6, '2003-02-24', 2, 46, 2, 89, '1997', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(50, '{\"en\":\"Ms. Claire Nikolaus\"}', 'ikeebler@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 90, 2, '1985-05-26', 1, 51, 8, 73, '1986', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(51, '{\"en\":\"Mrs. Audrey Altenwerth DDS\"}', 'schulist.richard@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 33, 2, '1994-04-09', 4, 46, 5, 99, '2009', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(52, '{\"en\":\"Carmen Towne\"}', 'pablo33@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 89, 3, '2016-04-19', 1, 54, 8, 46, '1985', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(53, '{\"en\":\"Prof. Holden Barton\"}', 'cade87@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 215, 6, '1988-01-03', 3, 53, 2, 9, '1997', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(54, '{\"en\":\"Justus Bailey\"}', 'wprohaska@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 28, 2, '1981-06-23', 1, 47, 10, 69, '1996', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(55, '{\"en\":\"Joanie Schimmel\"}', 'albina.rosenbaum@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 82, 6, '1997-03-11', 4, 54, 7, 84, '2015', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(56, '{\"en\":\"Theo Blick\"}', 'haag.hanna@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 160, 7, '1976-03-01', 2, 54, 8, 33, '1994', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(57, '{\"en\":\"Alverta Spinka DVM\"}', 'vickie.adams@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 201, 3, '1977-01-26', 1, 53, 7, 73, '1979', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(58, '{\"en\":\"Zachariah Williamson\"}', 'alek13@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 76, 3, '1972-09-08', 4, 44, 4, 106, '1987', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(59, '{\"en\":\"Dr. Mathew Gibson\"}', 'vcassin@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 70, 5, '1971-12-01', 1, 51, 2, 70, '2007', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(60, '{\"en\":\"Meagan Heathcote\"}', 'ncummerata@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 170, 6, '2002-04-18', 3, 49, 6, 65, '2021', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(61, '{\"en\":\"Rolando Yundt\"}', 'raul.olson@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 18, 6, '1980-04-19', 3, 44, 4, 89, '1978', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(62, '{\"en\":\"Josiane Medhurst\"}', 'haylee.wolf@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 33, 3, '2013-11-05', 4, 43, 4, 58, '1996', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(63, '{\"en\":\"Rocky Collins\"}', 'roel.reilly@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 133, 2, '1987-07-09', 4, 43, 8, 72, '2001', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(64, '{\"en\":\"Miss Sabrina Gutkowski Jr.\"}', 'ismael36@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 100, 5, '1994-02-26', 1, 44, 3, 26, '1985', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(65, '{\"en\":\"Quinn Mertz I\"}', 'qjacobi@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 21, 5, '2019-09-16', 2, 43, 7, 31, '1981', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(66, '{\"en\":\"Mr. Sigmund Cruickshank\"}', 'ustark@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 13, 7, '2016-06-14', 4, 49, 5, 46, '1996', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(67, '{\"en\":\"Gaetano Stokes\"}', 'clementine.altenwerth@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 93, 4, '1998-06-04', 3, 54, 2, 25, '1977', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(68, '{\"en\":\"Dejuan Kiehn DVM\"}', 'landerson@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 103, 8, '2005-08-17', 2, 53, 2, 85, '2003', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(69, '{\"en\":\"Bradley Renner\"}', 'swaniawski.emely@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 116, 3, '1976-01-24', 1, 47, 3, 81, '2006', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(70, '{\"en\":\"Jason Friesen\"}', 'mstoltenberg@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 193, 5, '1970-04-02', 1, 54, 8, 39, '1975', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(71, '{\"en\":\"Micaela Swaniawski\"}', 'virgie.carroll@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 236, 7, '1973-09-23', 3, 44, 2, 9, '1970', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(72, '{\"en\":\"Matt Rowe\"}', 'leilani.feest@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 198, 1, '2018-04-20', 4, 53, 5, 87, '2005', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(73, '{\"en\":\"Vergie Dach\"}', 'monroe89@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 76, 1, '2020-01-06', 3, 49, 8, 10, '1997', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(74, '{\"en\":\"Prof. Naomi Abbott PhD\"}', 'vena26@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 48, 5, '2014-11-13', 3, 46, 3, 61, '2000', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(75, '{\"en\":\"Zella Breitenberg\"}', 'stephany.mertz@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 10, 4, '1970-02-15', 3, 51, 6, 10, '2004', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(76, '{\"en\":\"Joelle Weissnat\"}', 'ugrimes@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 210, 8, '2010-06-07', 4, 47, 9, 48, '1988', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(77, '{\"en\":\"Dorris Monahan\"}', 'bpacocha@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 202, 8, '1985-11-11', 4, 54, 6, 36, '1979', NULL, '2022-03-02 17:17:13', '2022-03-02 17:17:13'),
(78, '{\"en\":\"Dr. Clinton Smitham Sr.\"}', 'greenholt.baby@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 110, 1, '2005-07-07', 3, 47, 10, 77, '1984', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(79, '{\"en\":\"Oscar Wilderman\"}', 'liza37@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 139, 1, '1974-04-14', 2, 46, 10, 25, '2005', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(80, '{\"en\":\"Giovanni Gottlieb\"}', 'kunde.verla@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 140, 3, '1993-03-08', 3, 44, 7, 73, '2013', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(81, '{\"en\":\"Mr. Reymundo Oberbrunner DDS\"}', 'waelchi.germaine@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 36, 6, '1979-05-17', 2, 43, 10, 87, '1987', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(82, '{\"en\":\"Dr. Carrie Lynch I\"}', 'ferry.yazmin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 116, 1, '1984-04-23', 1, 46, 8, 51, '2001', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(83, '{\"en\":\"Marques Lueilwitz\"}', 'equigley@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 93, 4, '1992-01-29', 4, 49, 7, 33, '1979', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(84, '{\"en\":\"Roma Lemke\"}', 'leopold87@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 39, 4, '2013-04-02', 2, 50, 2, 35, '2015', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(85, '{\"en\":\"Abe Sawayn\"}', 'marietta58@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 177, 6, '1991-10-23', 2, 51, 9, 75, '1976', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(86, '{\"en\":\"Dr. Joelle Ernser Jr.\"}', 'candelario96@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 232, 7, '1998-01-14', 4, 47, 6, 65, '1981', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(87, '{\"en\":\"Tremaine Kunze\"}', 'ischuppe@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 131, 7, '1997-11-06', 2, 44, 8, 33, '1974', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(88, '{\"en\":\"Ms. Winifred Hirthe IV\"}', 'enid.heaney@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 95, 4, '2020-11-22', 4, 54, 10, 71, '1986', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(89, '{\"en\":\"Vivienne Gislason\"}', 'georgianna74@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 162, 1, '1999-11-30', 1, 50, 8, 69, '1982', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(90, '{\"en\":\"Kristian Halvorson\"}', 'jkoch@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 190, 7, '2006-12-08', 4, 52, 10, 42, '2007', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(91, '{\"en\":\"Prof. Trinity Gislason Sr.\"}', 'vonrueden.cassandre@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 60, 2, '1991-09-30', 4, 45, 5, 71, '1999', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(92, '{\"en\":\"Major O\'Conner\"}', 'jwuckert@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 39, 7, '1982-10-11', 4, 54, 3, 71, '1993', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(93, '{\"en\":\"Kylee Hansen\"}', 'tglover@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 208, 2, '1977-04-26', 2, 49, 9, 102, '2000', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(94, '{\"en\":\"Prof. Gabe Collins\"}', 'kaelyn.cronin@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 227, 3, '1976-10-02', 4, 44, 6, 45, '1979', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(95, '{\"en\":\"Dr. Quinton Gleichner\"}', 'cmarvin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 53, 4, '1999-02-23', 1, 46, 8, 32, '2013', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(96, '{\"en\":\"Dr. Hailey Kessler MD\"}', 'lkris@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 60, 8, '1984-01-22', 4, 44, 9, 8, '1987', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(97, '{\"en\":\"Orlo Hegmann\"}', 'okeefe.columbus@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 26, 3, '2001-05-01', 1, 43, 9, 78, '1996', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(98, '{\"en\":\"Joe Dietrich\"}', 'jaiden.hills@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 138, 6, '1973-04-19', 4, 53, 5, 51, '2000', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(99, '{\"en\":\"Ambrose Nitzsche\"}', 'erogahn@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 59, 8, '1971-11-24', 2, 50, 2, 9, '1991', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(100, '{\"en\":\"Flavio Hahn\"}', 'carlee01@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 223, 7, '1998-07-07', 3, 47, 4, 51, '1989', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(101, '{\"en\":\"Jake Dickens\"}', 'jaquelin.brekke@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 83, 3, '1986-04-01', 4, 49, 8, 100, '2014', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(102, '{\"en\":\"Lenora Kuphal\"}', 'keegan.gorczany@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 214, 3, '2016-05-30', 1, 48, 9, 86, '2005', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(103, '{\"en\":\"Benedict Gleichner II\"}', 'chasity10@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 190, 6, '1992-07-01', 3, 47, 7, 45, '1973', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(104, '{\"en\":\"Earline Flatley DVM\"}', 'fred.terry@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 98, 8, '2005-11-04', 3, 45, 5, 49, '1989', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(105, '{\"en\":\"Prof. Milo Sporer\"}', 'price.keeling@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 142, 1, '2003-11-08', 1, 51, 10, 105, '2002', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(106, '{\"en\":\"Prof. Hailie Sawayn\"}', 'friesen.kyra@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 124, 7, '1980-10-13', 4, 51, 9, 98, '2015', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(107, '{\"en\":\"Justen Becker V\"}', 'wolff.rita@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 63, 8, '1980-10-04', 2, 45, 4, 12, '1987', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(108, '{\"en\":\"Arlo Fay\"}', 'marvin.taurean@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 245, 5, '2008-06-23', 1, 45, 6, 83, '2000', NULL, '2022-03-02 17:17:14', '2022-03-02 17:17:14'),
(109, '{\"en\":\"Charity Dare\"}', 'rosanna04@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 143, 5, '2007-10-21', 1, 44, 5, 46, '1985', NULL, '2022-03-02 17:17:15', '2022-03-02 17:17:15'),
(110, '{\"en\":\"Ronaldo Green II\"}', 'mccullough.cora@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 231, 7, '1994-08-09', 4, 54, 8, 104, '1980', NULL, '2022-03-02 17:17:15', '2022-03-02 17:17:15'),
(111, '{\"en\":\"Precious Stiedemann\"}', 'pasquale99@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 26, 4, '2000-09-14', 3, 44, 4, 31, '1980', NULL, '2022-03-02 17:17:15', '2022-03-02 17:17:15');

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
(2, 'mohamed@gmail.com', '$2y$10$njw9EayGm608A.SXo5CESuPWtZtPim/hrZD1BscMTXzZelwaSdW0y', '{\"en\":\"mohamed Waleed mahmod\",\"ar\":\"\\u0645\\u062d\\u0645\\u062f \\u0648\\u0644\\u064a\\u062f \\u0645\\u062d\\u0645\\u0648\\u062f\"}', 1, 1, '2022-02-28', '13 al wakell st, helwan, cairo', '2022-02-28 13:52:01', '2022-02-28 15:44:36'),
(3, 'haitham@gmail.com', '$2y$10$ySazcJGFDDOGnQsijiEzPOhmgziUwlRo1tqna/cfg71r5WzoqSfPK', '{\"en\":\"Haitham mahmod hasanen\",\"ar\":\"\\u0647\\u064a\\u062b\\u0645 \\u0645\\u062d\\u0645\\u0648\\u062f \\u062d\\u0633\\u0627\\u0646\\u064a\\u0646\"}', 3, 1, '2022-02-06', '30 st haitam fythal giza', '2022-02-28 15:01:32', '2022-02-28 15:01:32');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Habiba', 'habiba@gmail.com', NULL, '$2y$10$MI5wGUn0ERd7YWoFEkp/7uAG1vvcl0AFLrGJY1EgC0hpRxEnElYDy', NULL, '2022-02-21 11:06:22', '2022-02-21 11:06:22');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_invoices`
--
ALTER TABLE `fee_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `student_accounts`
--
ALTER TABLE `student_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher_sections`
--
ALTER TABLE `teacher_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
