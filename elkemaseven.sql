-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2022 at 03:21 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

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
(1, 'tarek ashry', 'elkemaseven@gmail.com', '$2y$10$dgmH83.2kQ7Cbsme81LCQ.l4.GMPUUPKd1OL7tWxj3sB2LgLGt2MW', NULL, NULL);

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
(1, 'O', '2022-04-09 14:16:36', '2022-04-09 14:16:36'),
(2, 'O-', '2022-04-09 14:16:36', '2022-04-09 14:16:36'),
(3, 'O+', '2022-04-09 14:16:36', '2022-04-09 14:16:36'),
(4, 'A', '2022-04-09 14:16:37', '2022-04-09 14:16:37'),
(5, 'A+', '2022-04-09 14:16:37', '2022-04-09 14:16:37'),
(6, 'A-', '2022-04-09 14:16:37', '2022-04-09 14:16:37'),
(7, 'B', '2022-04-09 14:16:37', '2022-04-09 14:16:37'),
(8, 'B+', '2022-04-09 14:16:37', '2022-04-09 14:16:37'),
(9, 'B-', '2022-04-09 14:16:37', '2022-04-09 14:16:37'),
(10, 'AB', '2022-04-09 14:16:37', '2022-04-09 14:16:37'),
(11, 'AB+', '2022-04-09 14:16:37', '2022-04-09 14:16:37'),
(12, 'AB-', '2022-04-09 14:16:37', '2022-04-09 14:16:37');

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
(1, '{\"en\":\"First Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0627\\u0648\\u0644\"}', 1, '2022-04-08 23:53:04', '2022-04-08 23:53:04'),
(2, '{\"en\":\"Second Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\"}', 1, '2022-04-08 23:53:04', '2022-04-08 23:53:04'),
(3, '{\"en\":\"First Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0627\\u0648\\u0644\"}', 2, '2022-04-09 00:02:42', '2022-04-09 00:02:42'),
(4, '{\"en\":\"Second Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\"}', 2, '2022-04-09 00:02:42', '2022-04-09 00:02:42'),
(5, '{\"en\":\"Third Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b\"}', 2, '2022-04-09 00:02:42', '2022-04-09 00:02:42'),
(6, '{\"en\":\"Fourth Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639\"}', 2, '2022-04-09 00:02:43', '2022-04-09 00:02:43'),
(7, '{\"en\":\"Fifth Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633\"}', 2, '2022-04-09 00:02:43', '2022-04-09 00:02:43'),
(8, '{\"en\":\"Sixth Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633\"}', 2, '2022-04-09 00:02:43', '2022-04-09 00:02:43'),
(9, '{\"en\":\"First Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0627\\u0648\\u0644\"}', 3, '2022-04-09 00:03:50', '2022-04-09 00:03:50'),
(10, '{\"en\":\"Second Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\"}', 3, '2022-04-09 00:03:50', '2022-04-09 00:03:50'),
(11, '{\"en\":\"Third Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b\"}', 3, '2022-04-09 00:03:50', '2022-04-09 00:03:50'),
(12, '{\"en\":\"First Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0627\\u0648\\u0644\"}', 4, '2022-04-09 15:06:09', '2022-04-09 15:06:09'),
(13, '{\"en\":\"Second Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\"}', 4, '2022-04-09 15:06:09', '2022-04-09 15:06:09'),
(14, '{\"en\":\"Third Grade\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b\"}', 4, '2022-04-09 15:06:09', '2022-04-09 15:06:09');

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
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_type` int(11) NOT NULL,
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
  `receipt_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
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
(1, '{\"en\":\"Male\",\"ar\":\"\\u0630\\u0643\\u0631\"}', '2022-04-09 14:17:40', '2022-04-09 14:17:40'),
(2, '{\"en\":\"Female\",\"ar\":\"\\u0627\\u0646\\u062b\\u064a\"}', '2022-04-09 14:17:40', '2022-04-09 14:17:40');

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
(1, '{\"en\":\"Nursery\",\"ar\":\"\\u0627\\u0644\\u062d\\u0636\\u0627\\u0646\\u0629\"}', 'non', '2022-04-08 23:52:41', '2022-04-08 23:52:41'),
(2, '{\"en\":\"Primary Stage\",\"ar\":\"\\u0627\\u0644\\u0645\\u0631\\u062d\\u0644\\u0629 \\u0627\\u0644\\u0627\\u0628\\u062a\\u062f\\u0627\\u0626\\u064a\\u0629\"}', NULL, '2022-04-09 00:00:32', '2022-04-09 00:00:32'),
(3, '{\"en\":\"Middle School\",\"ar\":\"\\u0627\\u0644\\u0645\\u0631\\u062d\\u0644\\u0629 \\u0627\\u0644\\u0627\\u0639\\u062f\\u0627\\u062f\\u064a\\u0629\"}', NULL, '2022-04-09 00:00:47', '2022-04-09 00:00:47'),
(4, '{\"en\":\"High School\",\"ar\":\"\\u0627\\u0644\\u0645\\u0631\\u062d\\u0644\\u0629 \\u0627\\u0644\\u062b\\u0627\\u0646\\u0648\\u064a\\u0629\"}', NULL, '2022-04-09 00:01:01', '2022-04-09 00:01:01');

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
(2, 'rschneider@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"\\u062c\\u0627\\u0649 \\u0641\\u0627\\u0649\"}', '19362334612587', '1390466361', '866856530', '{\"en\":\"Qui.\"}', 135, 8, 1, 'Culpa iusto dolore.', '{\"en\":\"\\u0644\\u0627\\u0648\\u0631\\u0627 \\u0628\\u0631\\u064a\\u0633\"}', '556220043', '295719658', '1949769544', '{\"en\":\"\\u062f\\u0648\\u0643\\u064a\\u0645\\u0633\"}', 212, 9, 2, 'Enim et quae.', '2022-04-09 14:21:51', '2022-04-09 23:13:44'),
(3, 'delphine38@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Selmer Spinka I\"}', '682135367', '1849347643', '899401290', '{\"en\":\"Et.\"}', 29, 2, 1, 'Aliquid architecto.', '{\"en\":\"Adolf Harvey\"}', '240191853', '1483196548', '1100314842', '{\"en\":\"Optio et.\"}', 31, 12, 1, 'Tempora sed ipsam.', '2022-04-09 14:21:51', '2022-04-09 14:21:51'),
(4, 'vlindgren@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Janie McGlynn\"}', '261814133', '227799178', '562835177', '{\"en\":\"Voluptas.\"}', 13, 9, 1, 'Odit sed a qui quis.', '{\"en\":\"Brook Flatley\"}', '565489831', '1804054720', '1740067156', '{\"en\":\"Est.\"}', 181, 6, 2, 'Qui fugit omnis.', '2022-04-09 14:21:51', '2022-04-09 14:21:51'),
(5, 'nprohaska@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Anibal Ondricka\"}', '569692970', '329774218', '464607298', '{\"en\":\"Quis eos.\"}', 153, 1, 2, 'Tempora eius ad qui.', '{\"en\":\"Jean Purdy\"}', '575407634', '952794846', '1369858608', '{\"en\":\"Fugit.\"}', 192, 11, 1, 'Occaecati soluta.', '2022-04-09 14:21:51', '2022-04-09 14:21:51'),
(6, 'kovacek.joseph@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Michele Harber V\"}', '765612350', '940770913', '208033818', '{\"en\":\"Expedita.\"}', 61, 1, 1, 'Fugiat eos alias.', '{\"en\":\"Laurence Kshlerin\"}', '1081570628', '2102950680', '1924331930', '{\"en\":\"Et et.\"}', 157, 5, 1, 'Et amet recusandae.', '2022-04-09 14:21:51', '2022-04-09 14:21:51'),
(7, 'lula51@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mara Dooley\"}', '951592993', '476878881', '151146624', '{\"en\":\"Tenetur.\"}', 16, 6, 1, 'Eligendi tempora.', '{\"en\":\"Cassie Wuckert\"}', '277796446', '1124598783', '1445615700', '{\"en\":\"Dolores.\"}', 138, 3, 1, 'Officiis tenetur.', '2022-04-09 14:21:51', '2022-04-09 14:21:51'),
(8, 'matteo.weissnat@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Blanca Green\"}', '1208508363', '1677878933', '1043870221', '{\"en\":\"Sed.\"}', 226, 10, 2, 'Nesciunt eum.', '{\"en\":\"Sidney Funk\"}', '770778407', '398854750', '1977489519', '{\"en\":\"Qui odit.\"}', 221, 3, 1, 'Perferendis numquam.', '2022-04-09 14:21:51', '2022-04-09 14:21:51'),
(9, 'neha.schinner@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ettie Roob\"}', '474119734', '1318187314', '2127346415', '{\"en\":\"Quas sit.\"}', 161, 11, 2, 'Doloribus ipsa.', '{\"en\":\"Esteban Weber III\"}', '1582069537', '594026472', '876788993', '{\"en\":\"Sapiente.\"}', 39, 5, 2, 'Repudiandae dolores.', '2022-04-09 14:21:51', '2022-04-09 14:21:51'),
(10, 'vance75@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Llewellyn Upton\"}', '1450707775', '1714163755', '1181829281', '{\"en\":\"Magnam.\"}', 127, 3, 2, 'Iste omnis quidem.', '{\"en\":\"Samir Botsford\"}', '407022380', '480251167', '1388481695', '{\"en\":\"Optio.\"}', 240, 3, 1, 'Numquam consequatur.', '2022-04-09 14:21:51', '2022-04-09 14:21:51'),
(11, 'shanny43@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Abner Kling\"}', '488910641', '644661660', '1403814413', '{\"en\":\"Quia.\"}', 53, 8, 2, 'Eius qui dolores.', '{\"en\":\"Rosalia Heaney\"}', '2078188567', '2121401927', '2115151095', '{\"en\":\"Et veniam.\"}', 136, 4, 1, 'Vero quod illo.', '2022-04-09 14:21:51', '2022-04-09 14:21:51'),
(12, 'keyon14@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Johann Hirthe\"}', '1597038802', '1629823522', '1214259679', '{\"en\":\"Ab.\"}', 9, 6, 2, 'Beatae excepturi.', '{\"en\":\"Hayden Terry\"}', '2087929455', '708970626', '1928893062', '{\"en\":\"Quia.\"}', 239, 2, 2, 'Quasi provident.', '2022-04-09 14:21:51', '2022-04-09 14:21:51'),
(13, 'nhauck@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Brooke Hodkiewicz\"}', '398477308', '697060223', '2105755242', '{\"en\":\"Dolores.\"}', 10, 8, 2, 'Harum quia.', '{\"en\":\"Immanuel Bosco\"}', '404820762', '1699302533', '1397669741', '{\"en\":\"Quia.\"}', 95, 6, 1, 'Consequatur id.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(14, 'aufderhar.catalina@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Ezekiel Lemke Sr.\"}', '1526417106', '77161061', '626136997', '{\"en\":\"Nesciunt.\"}', 30, 3, 1, 'Vel repudiandae non.', '{\"en\":\"Miss Margie Auer IV\"}', '735461136', '1565968571', '1902626598', '{\"en\":\"Qui.\"}', 171, 10, 2, 'Animi quia aperiam.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(15, 'clemmie.goyette@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Josiah Schmeler\"}', '1390831096', '912290514', '1776398510', '{\"en\":\"Dolorum.\"}', 27, 6, 2, 'Nam ut perferendis.', '{\"en\":\"Myron Huels\"}', '1580881426', '1724395769', '1549315410', '{\"en\":\"Nisi.\"}', 88, 12, 2, 'Laudantium id minus.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(16, 'allan.cormier@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Alda Koch III\"}', '758508715', '746163038', '2043810535', '{\"en\":\"In ipsum.\"}', 132, 2, 1, 'Eum et impedit.', '{\"en\":\"Ophelia Botsford\"}', '260148803', '1606903065', '1131952926', '{\"en\":\"Ut et ea.\"}', 60, 6, 2, 'Quos sunt deleniti.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(17, 'kilback.harry@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Marguerite Bergnaum V\"}', '708331849', '1127197764', '1993313688', '{\"en\":\"Omnis.\"}', 112, 12, 1, 'Enim quisquam vero.', '{\"en\":\"Prof. Devan Bailey IV\"}', '1527820323', '1833660678', '1064818174', '{\"en\":\"Itaque.\"}', 33, 4, 1, 'Fugiat sit possimus.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(18, 'keeling.erling@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ciara Kihn\"}', '1582293905', '1457081088', '1768050728', '{\"en\":\"Ex nihil.\"}', 19, 12, 2, 'Molestiae suscipit.', '{\"en\":\"Eladio Langworth\"}', '530209685', '1177397675', '35594262', '{\"en\":\"Sed rem.\"}', 152, 6, 2, 'Eveniet in.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(19, 'macejkovic.alfonzo@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Aiden Smitham III\"}', '417123274', '599534013', '2019073624', '{\"en\":\"Eaque.\"}', 32, 5, 1, 'Praesentium nihil.', '{\"en\":\"Mr. Wilfred Watsica\"}', '1117704641', '1423565312', '242038649', '{\"en\":\"Occaecati.\"}', 224, 5, 1, 'Quia natus tempore.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(20, 'gtromp@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kailey Hintz\"}', '977407846', '439781308', '1536305663', '{\"en\":\"Vel.\"}', 62, 10, 2, 'Reprehenderit sint.', '{\"en\":\"Teresa Gislason\"}', '276783416', '451731194', '1728428842', '{\"en\":\"Ducimus.\"}', 63, 2, 1, 'Dolor rem odio.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(21, 'fernser@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Baron Nolan\"}', '2023622344', '1681485967', '1695273672', '{\"en\":\"Quaerat.\"}', 144, 4, 1, 'Illo molestiae vel.', '{\"en\":\"Cole Mante\"}', '279033979', '344626333', '1703016296', '{\"en\":\"Et et.\"}', 134, 12, 1, 'Exercitationem iste.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(22, 'xking@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Leilani Crooks\"}', '2029146732', '902750656', '1874766457', '{\"en\":\"Facilis.\"}', 132, 8, 2, 'Dolorum ab deserunt.', '{\"en\":\"Dr. Marlen Huels PhD\"}', '380244983', '814881345', '690046205', '{\"en\":\"Fugiat.\"}', 113, 10, 1, 'Ut necessitatibus.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(23, 'mgreen@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Caroline Kuvalis\"}', '274520549', '778391795', '1584130239', '{\"en\":\"Incidunt.\"}', 127, 9, 2, 'Accusantium ut sed.', '{\"en\":\"Mr. Rahul Macejkovic\"}', '66093563', '1813368757', '604026446', '{\"en\":\"Nemo ut.\"}', 114, 9, 1, 'Et quis libero.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(24, 'grimes.lavada@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Meredith Rice III\"}', '963061500', '471085834', '291057201', '{\"en\":\"Dolorum.\"}', 214, 6, 1, 'Non sit quos ut.', '{\"en\":\"Jamey Zulauf MD\"}', '2057609675', '1086099857', '1805606226', '{\"en\":\"Iusto.\"}', 236, 5, 1, 'Temporibus voluptas.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(25, 'chadd11@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Shanelle Fahey\"}', '1558921458', '378962369', '720592779', '{\"en\":\"Libero.\"}', 63, 9, 1, 'Aut quasi nulla sed.', '{\"en\":\"Reva Brown MD\"}', '1289811571', '452260857', '689339293', '{\"en\":\"Est ut.\"}', 243, 6, 1, 'Eveniet eligendi.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(26, 'julianne.fadel@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Chaim Hartmann\"}', '101637356', '1387656195', '1255338720', '{\"en\":\"Qui culpa.\"}', 136, 10, 2, 'Nihil quos cum.', '{\"en\":\"Dr. Rosendo Roberts\"}', '1521934950', '911146616', '371054233', '{\"en\":\"Quis quia.\"}', 140, 8, 2, 'Dignissimos.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(27, 'urau@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Luella Schuppe Jr.\"}', '1399785281', '2047857533', '1995740103', '{\"en\":\"Quae.\"}', 36, 1, 2, 'Molestiae ipsa.', '{\"en\":\"Lucas Leuschke\"}', '1163172835', '797560022', '832612189', '{\"en\":\"Soluta.\"}', 83, 5, 1, 'Libero consequatur.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(28, 'derick09@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Cathrine Farrell\"}', '25422371', '624266863', '13410353', '{\"en\":\"Et.\"}', 25, 4, 1, 'Assumenda dolores.', '{\"en\":\"Tiara O\'Reilly\"}', '1371352100', '2085551884', '767611282', '{\"en\":\"Soluta.\"}', 93, 7, 2, 'Dolores sed debitis.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(29, 'hartmann.roy@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Horacio Leuschke II\"}', '926778199', '664763540', '341758915', '{\"en\":\"Omnis.\"}', 59, 4, 2, 'Velit eos eaque aut.', '{\"en\":\"Prof. Hilario Bartoletti MD\"}', '526417178', '1927316279', '992161588', '{\"en\":\"Est.\"}', 56, 11, 1, 'Iure quo magnam.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(30, 'graham.merlin@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Alice Swift\"}', '761932845', '1948274519', '1470709969', '{\"en\":\"Voluptate.\"}', 103, 7, 1, 'Vitae velit non.', '{\"en\":\"Cayla VonRueden\"}', '971359955', '576500161', '1546396495', '{\"en\":\"Eveniet.\"}', 218, 3, 2, 'Corporis aliquid.', '2022-04-09 14:21:52', '2022-04-09 14:21:52'),
(31, 'ijohnston@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Johnpaul Hyatt\"}', '440112025', '568969246', '1208831958', '{\"en\":\"Sed.\"}', 76, 7, 2, 'Velit pariatur sint.', '{\"en\":\"Ms. Josephine Funk III\"}', '1694369139', '1247887926', '2134043115', '{\"en\":\"Sit et.\"}', 209, 6, 2, 'Dolores vel.', '2022-04-09 14:21:53', '2022-04-09 14:21:53'),
(32, 'fatima22@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Baylee Monahan\"}', '196271555', '1776751925', '624800652', '{\"en\":\"Ratione.\"}', 22, 12, 1, 'Tenetur quia.', '{\"en\":\"Ms. Lexi Kihn Sr.\"}', '2006057119', '263350088', '1835762554', '{\"en\":\"Iure.\"}', 236, 6, 2, 'Adipisci voluptas.', '2022-04-09 14:21:53', '2022-04-09 14:21:53'),
(33, 'ernestine.dach@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kiarra Boyle\"}', '1461441779', '139781659', '994755160', '{\"en\":\"Dolores.\"}', 104, 12, 1, 'Ea iusto sit.', '{\"en\":\"Jaleel Willms\"}', '1566058786', '990632196', '1385343184', '{\"en\":\"Molestiae.\"}', 124, 9, 2, 'Quas nesciunt non.', '2022-04-09 14:21:53', '2022-04-09 14:21:53'),
(34, 'omer31@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Adan Greenholt\"}', '1573377705', '1784154826', '1718354540', '{\"en\":\"Quia ut.\"}', 59, 2, 1, 'Qui minima.', '{\"en\":\"Kendra O\'Connell\"}', '1984168528', '1892933843', '1871413455', '{\"en\":\"Laborum.\"}', 117, 3, 1, 'Eum dolorem.', '2022-04-09 14:21:53', '2022-04-09 14:21:53'),
(35, 'ardith.bergstrom@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Sabrina Wisoky\"}', '206114862', '513595912', '944187611', '{\"en\":\"Atque et.\"}', 49, 2, 2, 'Magnam culpa in.', '{\"en\":\"Alexane Stroman\"}', '640276979', '1327830845', '1172362713', '{\"en\":\"Maiores.\"}', 173, 9, 1, 'Voluptatum.', '2022-04-09 14:21:53', '2022-04-09 14:21:53'),
(36, 'iraynor@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Alisha Hackett Jr.\"}', '641599577', '1913410529', '1669222962', '{\"en\":\"Cum.\"}', 58, 6, 1, 'Perspiciatis.', '{\"en\":\"Katelyn Walker\"}', '86125520', '577858419', '402740593', '{\"en\":\"Rem.\"}', 157, 9, 2, 'Voluptatem incidunt.', '2022-04-09 14:21:53', '2022-04-09 14:21:53'),
(37, 'vkuvalis@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lonzo Stokes\"}', '1563668994', '178331987', '1558153621', '{\"en\":\"Omnis.\"}', 150, 12, 1, 'Sequi debitis sed.', '{\"en\":\"Eloise Moen\"}', '394978888', '1705292644', '607632704', '{\"en\":\"Mollitia.\"}', 59, 7, 1, 'Minus deleniti ut.', '2022-04-09 14:21:53', '2022-04-09 14:21:53'),
(38, 'ylind@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Cicero Steuber\"}', '36625397', '2045910616', '1345893452', '{\"en\":\"Sed.\"}', 7, 1, 1, 'Nam dolores in.', '{\"en\":\"Mr. Jasmin Sipes DVM\"}', '109488138', '2041994560', '145097501', '{\"en\":\"Quibusdam.\"}', 65, 12, 1, 'Sint deleniti velit.', '2022-04-09 14:21:53', '2022-04-09 14:21:53'),
(39, 'antwan34@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Greg Gorczany\"}', '427671938', '407785755', '1931876837', '{\"en\":\"Quaerat.\"}', 116, 3, 1, 'Similique at.', '{\"en\":\"Yasmine Turcotte\"}', '1079215519', '1144464310', '1253291870', '{\"en\":\"Similique.\"}', 64, 4, 2, 'Dolores qui.', '2022-04-09 14:21:53', '2022-04-09 14:21:53'),
(40, 'babbott@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Kaya Medhurst\"}', '1560353792', '1927736090', '974704514', '{\"en\":\"Minus.\"}', 134, 10, 2, 'Magnam voluptatem.', '{\"en\":\"Chaz Bayer\"}', '532244824', '603900510', '253949110', '{\"en\":\"Modi.\"}', 207, 10, 2, 'Vitae et eius.', '2022-04-09 14:21:53', '2022-04-09 14:21:53'),
(41, 'cleo.prohaska@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Seamus McGlynn Sr.\"}', '1022740041', '2072491998', '159529151', '{\"en\":\"Ea omnis.\"}', 216, 1, 2, 'Quibusdam et cum.', '{\"en\":\"Roosevelt Feil\"}', '1404739852', '150627037', '1713813344', '{\"en\":\"Atque ut.\"}', 93, 8, 2, 'Ut eveniet ex.', '2022-04-09 14:21:53', '2022-04-09 14:21:53'),
(42, 'brandyn76@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Toney Yundt\"}', '617595436', '1088082104', '182414765', '{\"en\":\"Ut sunt.\"}', 50, 6, 1, 'Porro magni.', '{\"en\":\"Ona Bergnaum\"}', '882594547', '922949788', '723642667', '{\"en\":\"Quae quia.\"}', 119, 10, 1, 'Possimus blanditiis.', '2022-04-09 14:21:53', '2022-04-09 14:21:53'),
(43, 'ruecker.rosetta@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jaleel Schneider\"}', '1077239470', '1574047467', '1048412602', '{\"en\":\"Et earum.\"}', 93, 4, 1, 'Odio similique.', '{\"en\":\"Mr. Hilbert Kihn MD\"}', '1637811920', '595044329', '1322511335', '{\"en\":\"Quam.\"}', 142, 5, 2, 'Ab dolor ut.', '2022-04-09 14:21:53', '2022-04-09 14:21:53'),
(44, 'bo.steuber@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Avery Osinski\"}', '265597187', '1241928940', '1756712630', '{\"en\":\"Quia quae.\"}', 71, 4, 1, 'Est fuga pariatur.', '{\"en\":\"Brannon Towne V\"}', '666220876', '1114602601', '1588886731', '{\"en\":\"Tempore.\"}', 235, 2, 1, 'Atque ex.', '2022-04-09 14:21:53', '2022-04-09 14:21:53'),
(45, 'patience.satterfield@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Megane Schuster\"}', '627828634', '632815124', '661813738', '{\"en\":\"Accusamus.\"}', 203, 8, 2, 'Fugit veritatis.', '{\"en\":\"Javier Anderson\"}', '787531065', '645251434', '1258507150', '{\"en\":\"Pariatur.\"}', 37, 4, 2, 'Delectus tenetur.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(46, 'louie.kris@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Leonard Kautzer\"}', '909077243', '657358973', '1809322398', '{\"en\":\"Non est.\"}', 122, 2, 1, 'Reiciendis amet.', '{\"en\":\"Frederick O\'Kon\"}', '1386758450', '2064447823', '1597435960', '{\"en\":\"Est fuga.\"}', 10, 12, 1, 'Ut praesentium.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(47, 'kyra.kunze@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Mikel Little I\"}', '1156142911', '851654456', '81180434', '{\"en\":\"Veniam.\"}', 145, 2, 1, 'Molestiae aut ad.', '{\"en\":\"Jerad Krajcik\"}', '442813629', '185823163', '2146088717', '{\"en\":\"Qui.\"}', 131, 4, 1, 'Laudantium cum.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(48, 'ybrekke@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Randall Zemlak Jr.\"}', '904686729', '362927439', '766219260', '{\"en\":\"Debitis.\"}', 48, 10, 2, 'A quod repudiandae.', '{\"en\":\"Harley Littel I\"}', '270287507', '740453742', '1084742521', '{\"en\":\"Voluptas.\"}', 199, 2, 2, 'Sunt harum suscipit.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(49, 'gwitting@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Wilfred Kuhic II\"}', '658974299', '938354347', '28171066', '{\"en\":\"Tempore.\"}', 54, 4, 1, 'Fugiat ipsum.', '{\"en\":\"Miss Ima Harber\"}', '967838343', '2060731584', '1359939323', '{\"en\":\"Odit.\"}', 4, 8, 2, 'Occaecati sapiente.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(50, 'feil.vern@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Julia Wiegand\"}', '1262356432', '329131139', '750028229', '{\"en\":\"Quia nemo.\"}', 119, 6, 2, 'Magnam natus fugit.', '{\"en\":\"Sienna Prohaska\"}', '50935386', '1678113010', '2065264553', '{\"en\":\"Totam.\"}', 182, 12, 1, 'Voluptas sint nihil.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(51, 'qvon@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Trey Jacobs DVM\"}', '249339353', '1478226532', '181545413', '{\"en\":\"Natus.\"}', 102, 12, 2, 'Alias veniam nobis.', '{\"en\":\"Mrs. Rosalia Beatty\"}', '1767761797', '1794386276', '1893561073', '{\"en\":\"Enim.\"}', 60, 8, 1, 'Id voluptas.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(52, 'qdibbert@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Roscoe Hauck\"}', '1806160105', '1151213112', '1760835202', '{\"en\":\"Nisi.\"}', 29, 5, 2, 'Voluptatum omnis.', '{\"en\":\"Graham Schultz\"}', '1051864023', '1771120761', '1546909265', '{\"en\":\"Sit.\"}', 245, 8, 2, 'Eos nobis omnis.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(53, 'caleigh.pagac@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ferne Lehner\"}', '1673178268', '486627042', '1492260028', '{\"en\":\"Aut id ut.\"}', 139, 4, 2, 'Temporibus est.', '{\"en\":\"Dr. Jamie Marks\"}', '375353720', '834063313', '1935178052', '{\"en\":\"Corrupti.\"}', 64, 4, 1, 'Earum ut veritatis.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(54, 'llewellyn99@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ethel Bednar\"}', '1634928863', '139910001', '1429664457', '{\"en\":\"Nam totam.\"}', 225, 7, 2, 'Quia delectus autem.', '{\"en\":\"Soledad Hayes\"}', '607755814', '1681835259', '730266861', '{\"en\":\"Quia est.\"}', 223, 3, 2, 'Molestias impedit.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(55, 'taylor.gutmann@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Hazel Doyle\"}', '1952351109', '1707005034', '38963659', '{\"en\":\"Similique.\"}', 97, 10, 2, 'Dicta animi.', '{\"en\":\"Warren Prosacco\"}', '972747413', '550670338', '1685283829', '{\"en\":\"Nesciunt.\"}', 3, 2, 2, 'Rerum dolorum.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(56, 'windler.fidel@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Daniela Haley IV\"}', '203370719', '1276243465', '1220532976', '{\"en\":\"Nobis.\"}', 170, 3, 1, 'Ex iure velit at.', '{\"en\":\"Bell Sawayn\"}', '736662858', '598680242', '1957995559', '{\"en\":\"Et ipsa.\"}', 10, 7, 2, 'Sit adipisci facere.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(57, 'ytrantow@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Werner Kertzmann Sr.\"}', '1599336810', '1682998210', '49835774', '{\"en\":\"Vitae.\"}', 85, 11, 2, 'Assumenda ex minima.', '{\"en\":\"Dr. Ella Smitham\"}', '1089362543', '584283159', '934878617', '{\"en\":\"Nesciunt.\"}', 211, 7, 1, 'Temporibus.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(58, 'marley.pfeffer@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Bartholome Gibson\"}', '899281711', '2139942143', '1382660658', '{\"en\":\"Quod.\"}', 63, 10, 2, 'Facere accusamus.', '{\"en\":\"Aniya Lebsack\"}', '642495756', '1307203823', '1128831863', '{\"en\":\"Iste.\"}', 113, 4, 1, 'Doloremque expedita.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(59, 'bianka35@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Bulah Walsh\"}', '1562168613', '27463267', '367920969', '{\"en\":\"Officia.\"}', 77, 6, 2, 'Sint et ut ea iste.', '{\"en\":\"Luna Larkin\"}', '208400927', '297931909', '1932135598', '{\"en\":\"Qui.\"}', 199, 3, 1, 'Excepturi officiis.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(60, 'gonzalo74@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Orlando Purdy III\"}', '1748873316', '1856629162', '1759811771', '{\"en\":\"Enim.\"}', 98, 1, 1, 'Itaque ad rem animi.', '{\"en\":\"Dr. Aliya Hahn\"}', '1415067066', '665585540', '173339717', '{\"en\":\"Sint.\"}', 221, 2, 2, 'Eveniet vitae nam.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(61, 'john.balistreri@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Norbert Zulauf PhD\"}', '972576393', '1250529338', '168295995', '{\"en\":\"Harum.\"}', 144, 10, 1, 'Quas enim ea error.', '{\"en\":\"Elinor Kertzmann\"}', '877757405', '151457807', '496230316', '{\"en\":\"Ut iure.\"}', 71, 7, 2, 'Iusto et aut non.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(62, 'laurel.boehm@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prince Predovic\"}', '426451538', '555417195', '1963036516', '{\"en\":\"Inventore.\"}', 85, 3, 2, 'Quam in minus.', '{\"en\":\"Prof. Devan Dietrich\"}', '904164268', '1255423515', '1272196209', '{\"en\":\"Dolorum.\"}', 228, 1, 1, 'Earum tenetur est.', '2022-04-09 14:21:54', '2022-04-09 14:21:54'),
(63, 'qernser@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Alicia Altenwerth V\"}', '594905751', '1743648429', '2078068835', '{\"en\":\"Sed velit.\"}', 132, 1, 1, 'Ab eius ab beatae.', '{\"en\":\"Ollie Balistreri\"}', '1197735047', '2010873877', '1864761945', '{\"en\":\"Rem magni.\"}', 204, 11, 2, 'Magnam accusantium.', '2022-04-09 14:21:55', '2022-04-09 14:21:55'),
(64, 'gwendolyn78@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Demetris Langworth\"}', '656006394', '270485491', '827005643', '{\"en\":\"Voluptas.\"}', 124, 6, 2, 'Soluta ea et sunt.', '{\"en\":\"Emely Von\"}', '58503090', '27679563', '1874429861', '{\"en\":\"Vel velit.\"}', 45, 8, 1, 'Quo debitis.', '2022-04-09 14:21:55', '2022-04-09 14:21:55'),
(65, 'renee.beatty@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Joyce Hirthe\"}', '1436654861', '656066654', '1269581993', '{\"en\":\"In.\"}', 237, 10, 1, 'Temporibus placeat.', '{\"en\":\"Mr. Kyler Grimes\"}', '647031265', '741686645', '181634042', '{\"en\":\"Explicabo.\"}', 61, 4, 1, 'Quas distinctio.', '2022-04-09 14:21:55', '2022-04-09 14:21:55'),
(66, 'leif.schuster@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Hardy Schaden\"}', '428881336', '1501565042', '73053618', '{\"en\":\"Voluptas.\"}', 125, 2, 1, 'Et adipisci earum.', '{\"en\":\"Owen Wisozk\"}', '1227826320', '2028278297', '786554302', '{\"en\":\"Minus ut.\"}', 90, 3, 1, 'Soluta sit.', '2022-04-09 14:21:55', '2022-04-09 14:21:55'),
(67, 'ilene.cassin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Moises Walter\"}', '1056787247', '80366590', '1461166783', '{\"en\":\"Omnis.\"}', 121, 10, 2, 'Voluptatem rerum ea.', '{\"en\":\"Penelope Pagac\"}', '1731284586', '1552677298', '637904864', '{\"en\":\"Autem.\"}', 8, 5, 2, 'Esse dolores in.', '2022-04-09 14:21:55', '2022-04-09 14:21:55'),
(68, 'jon77@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Clemmie Schowalter\"}', '931355842', '1265997492', '1925584578', '{\"en\":\"Commodi.\"}', 181, 1, 1, 'Commodi quia et sed.', '{\"en\":\"Nelda Harvey\"}', '1230624116', '1419361450', '1551915145', '{\"en\":\"Qui.\"}', 226, 9, 1, 'Et magni libero.', '2022-04-09 14:21:55', '2022-04-09 14:21:55'),
(69, 'vpacocha@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Chyna Hammes III\"}', '1858792018', '18620259', '85620607', '{\"en\":\"Quis.\"}', 118, 6, 1, 'Consequuntur rerum.', '{\"en\":\"Alfredo Wuckert\"}', '666812932', '723143499', '237399378', '{\"en\":\"Numquam.\"}', 169, 7, 2, 'Aut soluta nostrum.', '2022-04-09 14:21:55', '2022-04-09 14:21:55'),
(70, 'sarai96@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Bessie Hoeger\"}', '604649915', '1864055529', '1389229042', '{\"en\":\"Quasi.\"}', 236, 9, 1, 'Libero enim eaque.', '{\"en\":\"Samanta Borer\"}', '1034743637', '599765758', '1650584160', '{\"en\":\"Est hic.\"}', 79, 8, 1, 'Consequatur.', '2022-04-09 14:21:55', '2022-04-09 14:21:55'),
(71, 'qschroeder@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Braxton Ledner\"}', '427028789', '312453584', '1933254116', '{\"en\":\"Modi est.\"}', 74, 10, 2, 'Molestias atque ut.', '{\"en\":\"Angel Haley\"}', '1015427376', '317580673', '1255846173', '{\"en\":\"Maiores.\"}', 32, 6, 1, 'Error recusandae.', '2022-04-09 14:21:55', '2022-04-09 14:21:55'),
(72, 'karolann98@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Devyn Harris IV\"}', '249687959', '1280491479', '2027232310', '{\"en\":\"Delectus.\"}', 196, 12, 2, 'At nisi consequatur.', '{\"en\":\"Lucius McGlynn\"}', '1846277735', '647007448', '297142666', '{\"en\":\"Eius.\"}', 170, 6, 1, 'Dolores cumque.', '2022-04-09 14:21:55', '2022-04-09 14:21:55'),
(73, 'kristian.lemke@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Nicolette Grady V\"}', '1225842212', '385717290', '977389951', '{\"en\":\"Sunt.\"}', 141, 10, 2, 'Eum dolorem eos.', '{\"en\":\"Dr. Jamar Ferry\"}', '366991176', '4938399', '905946999', '{\"en\":\"Maiores.\"}', 118, 3, 1, 'Doloremque harum.', '2022-04-09 14:21:55', '2022-04-09 14:21:55'),
(74, 'konopelski.rose@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Chadrick Crooks\"}', '888795992', '924694824', '978691969', '{\"en\":\"In ad.\"}', 10, 11, 2, 'Consequatur labore.', '{\"en\":\"Mrs. Assunta Wunsch\"}', '2141564557', '341559', '224832144', '{\"en\":\"Non.\"}', 7, 7, 2, 'Aut doloribus.', '2022-04-09 14:21:55', '2022-04-09 14:21:55'),
(75, 'edwin.koepp@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Luis Nicolas\"}', '849656898', '1241189786', '797943189', '{\"en\":\"Nobis.\"}', 162, 11, 2, 'Quo qui dolorem.', '{\"en\":\"Dr. Nicholaus Larkin\"}', '2053232935', '314450404', '1724997604', '{\"en\":\"Sed.\"}', 158, 2, 2, 'Laborum quibusdam.', '2022-04-09 14:21:55', '2022-04-09 14:21:55'),
(76, 'kaelyn82@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Aniya Schimmel\"}', '1447743750', '2029746893', '1637245745', '{\"en\":\"Nesciunt.\"}', 113, 5, 2, 'Sed rerum delectus.', '{\"en\":\"Ida Tromp\"}', '976745268', '24838212', '1840022125', '{\"en\":\"Expedita.\"}', 190, 2, 1, 'Quis sit nesciunt.', '2022-04-09 14:21:55', '2022-04-09 14:21:55'),
(77, 'emmy75@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Sigrid Buckridge\"}', '1466650696', '756788015', '708986539', '{\"en\":\"Quis.\"}', 180, 5, 2, 'Non reiciendis est.', '{\"en\":\"Mr. Isom Grimes\"}', '2126949883', '607467567', '2117611938', '{\"en\":\"Harum.\"}', 168, 2, 1, 'Qui quis tempore.', '2022-04-09 14:21:55', '2022-04-09 14:21:55'),
(78, 'brooks.ullrich@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Clement Koelpin\"}', '1879868058', '1178898847', '1379858854', '{\"en\":\"Sit aut.\"}', 106, 1, 1, 'Officia nulla error.', '{\"en\":\"Maximo Walter\"}', '1701342731', '1708027378', '938466084', '{\"en\":\"Pariatur.\"}', 17, 9, 2, 'In et ex iusto eius.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(79, 'collier.may@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Myriam Braun\"}', '1460513007', '376380235', '1781970060', '{\"en\":\"Deserunt.\"}', 171, 6, 1, 'Excepturi dolorum.', '{\"en\":\"Maye Harber\"}', '1238481411', '1461384772', '1298735647', '{\"en\":\"Corporis.\"}', 105, 11, 1, 'Magni atque.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(80, 'colt93@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Harry Hodkiewicz III\"}', '439423443', '1910084006', '269564807', '{\"en\":\"Repellat.\"}', 244, 8, 1, 'Harum unde id cum.', '{\"en\":\"Kailyn Yundt\"}', '2094267668', '1627520588', '1957361581', '{\"en\":\"Expedita.\"}', 46, 4, 2, 'Et sit repudiandae.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(81, 'amaya73@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Aaliyah Cummings\"}', '673565789', '712367780', '120739216', '{\"en\":\"Quas at.\"}', 210, 7, 1, 'Et quam natus et.', '{\"en\":\"Miss Mary Ondricka IV\"}', '1811970988', '2064635484', '422712725', '{\"en\":\"Ducimus.\"}', 26, 11, 2, 'Rem rem quas.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(82, 'esperanza.anderson@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Nicole Oberbrunner\"}', '230704153', '1992406442', '6975613', '{\"en\":\"Nesciunt.\"}', 64, 8, 2, 'Sit accusantium non.', '{\"en\":\"Miss Tania Heathcote\"}', '1033023816', '2076326206', '745950204', '{\"en\":\"Error.\"}', 197, 10, 1, 'Sed et aut sunt.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(83, 'sglover@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Annalise Weber\"}', '1621840869', '2039352987', '442308171', '{\"en\":\"Quia.\"}', 183, 4, 1, 'Quos fuga quas.', '{\"en\":\"Dr. Uriah Rippin IV\"}', '2056539669', '735508001', '522043376', '{\"en\":\"Sint.\"}', 73, 1, 1, 'Aliquam vel ipsam.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(84, 'glover.shad@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Phoebe Stracke\"}', '1733757349', '1495007045', '580965825', '{\"en\":\"In alias.\"}', 175, 8, 1, 'Incidunt sunt.', '{\"en\":\"Nannie Ratke\"}', '1941864967', '1783962911', '442072329', '{\"en\":\"Inventore.\"}', 20, 11, 2, 'Quia voluptates.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(85, 'rhianna57@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Kaela Bode MD\"}', '1193829450', '1090238914', '326679323', '{\"en\":\"Ut magnam.\"}', 83, 9, 1, 'Repellendus nam.', '{\"en\":\"Dalton Wiza\"}', '1198265419', '661641267', '1271719983', '{\"en\":\"Possimus.\"}', 87, 8, 1, 'Et laborum nulla.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(86, 'yundt.felicia@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Alfonso Koepp\"}', '837471483', '1061589730', '339359127', '{\"en\":\"Ipsum.\"}', 89, 11, 2, 'Non rerum et alias.', '{\"en\":\"Dr. Dasia Weber\"}', '39969245', '1623637743', '247313327', '{\"en\":\"Dolores.\"}', 91, 5, 2, 'Qui officia in.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(87, 'mcasper@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Brando Gleichner\"}', '1592369709', '1141870524', '726320540', '{\"en\":\"Impedit.\"}', 36, 10, 1, 'Temporibus amet.', '{\"en\":\"Trace Walsh\"}', '1249088498', '1729134441', '1400751049', '{\"en\":\"Qui.\"}', 65, 12, 1, 'Optio aut optio eos.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(88, 'halie.kuhn@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Godfrey Kiehn\"}', '1133891560', '1972605234', '1056713459', '{\"en\":\"Cum quod.\"}', 76, 12, 1, 'Non et ut ea.', '{\"en\":\"Trevor Kovacek\"}', '362956362', '1026779434', '755165010', '{\"en\":\"Sequi.\"}', 206, 12, 2, 'Rerum adipisci.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(89, 'elsa77@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lacy Waelchi\"}', '902579272', '201893697', '86562772', '{\"en\":\"Vero.\"}', 212, 12, 1, 'Quod quia adipisci.', '{\"en\":\"Prof. Kim Ankunding PhD\"}', '627307220', '1955366636', '1599906306', '{\"en\":\"Aut.\"}', 204, 8, 1, 'Et explicabo natus.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(90, 'domenic.reichel@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Jessika Anderson\"}', '1546543646', '472181904', '1025473759', '{\"en\":\"Laborum.\"}', 242, 5, 2, 'Qui et officia.', '{\"en\":\"Prof. Romaine Nikolaus\"}', '112353921', '2038298983', '1237983202', '{\"en\":\"Deleniti.\"}', 151, 2, 2, 'Architecto sunt.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(91, 'tina.deckow@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Vicenta Franecki\"}', '605412555', '1797081924', '1960552659', '{\"en\":\"Dolorem.\"}', 100, 4, 2, 'Expedita molestiae.', '{\"en\":\"Hermann Pouros\"}', '425045633', '1578559158', '503960884', '{\"en\":\"Sit.\"}', 117, 7, 1, 'Est nemo fuga aut.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(92, 'augustine.feest@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Marguerite Luettgen\"}', '1738070610', '282123910', '1638890077', '{\"en\":\"Ipsa nam.\"}', 183, 6, 2, 'Rerum ex est nihil.', '{\"en\":\"Rylee Conn\"}', '1493057461', '342079722', '1541044430', '{\"en\":\"Veniam.\"}', 195, 6, 2, 'Aut odio harum.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(93, 'medhurst.cheyanne@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Joel McKenzie\"}', '886223523', '2127328391', '546768116', '{\"en\":\"Vel.\"}', 164, 2, 1, 'Amet velit at omnis.', '{\"en\":\"Rosemarie Cummerata\"}', '1014692605', '105083086', '346381912', '{\"en\":\"Voluptas.\"}', 188, 10, 1, 'Distinctio tenetur.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(94, 'adaline.parisian@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Davonte Fritsch\"}', '1334866772', '560707035', '1594647683', '{\"en\":\"Eum.\"}', 63, 7, 2, 'Quidem iste eos.', '{\"en\":\"Garrick Mann\"}', '737409423', '1611009014', '2103284497', '{\"en\":\"Sed et.\"}', 23, 11, 2, 'Modi consequatur.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(95, 'lboehm@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Matt Dibbert\"}', '128027240', '1390564277', '1983198600', '{\"en\":\"Molestiae.\"}', 44, 11, 1, 'Aut qui aperiam.', '{\"en\":\"Prof. Hayden Keebler Jr.\"}', '458951535', '1125062916', '1035231252', '{\"en\":\"Qui.\"}', 140, 4, 1, 'Maiores fugit eos.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(96, 'cristal.carter@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Elsa Medhurst\"}', '2038036820', '981502427', '1288742694', '{\"en\":\"Ipsum qui.\"}', 7, 12, 1, 'Enim reprehenderit.', '{\"en\":\"Kenton Bogisich\"}', '1534801149', '23531262', '1946957195', '{\"en\":\"Eius.\"}', 244, 1, 1, 'Eaque neque eos.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(97, 'rickie.casper@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Avery Watsica\"}', '1171842355', '1931338023', '1212991583', '{\"en\":\"Ea.\"}', 128, 12, 1, 'Non quo impedit.', '{\"en\":\"Destiney Altenwerth\"}', '558549013', '779534921', '2011305429', '{\"en\":\"Corporis.\"}', 164, 10, 1, 'Illo eaque rerum.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(98, 'dpouros@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Valentina Dickens\"}', '33183059', '1658036225', '1331288100', '{\"en\":\"Et.\"}', 228, 3, 2, 'Debitis quisquam.', '{\"en\":\"Garret Cremin\"}', '2030080353', '1789521242', '1316688224', '{\"en\":\"Unde.\"}', 124, 4, 2, 'In rerum ut sunt.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(99, 'sledner@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Suzanne Predovic\"}', '3931151', '983700638', '1436019431', '{\"en\":\"Unde.\"}', 127, 3, 1, 'Dolorum accusamus.', '{\"en\":\"Sean Bayer\"}', '222726082', '1564724916', '1399257366', '{\"en\":\"Impedit a.\"}', 110, 3, 2, 'Nesciunt dolorum.', '2022-04-09 14:21:56', '2022-04-09 14:21:56'),
(100, 'kip37@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Carolina Sawayn\"}', '791463618', '529379057', '2044123965', '{\"en\":\"Officiis.\"}', 15, 4, 1, 'Alias voluptas.', '{\"en\":\"Dr. Orland DuBuque\"}', '186940097', '33442243', '875435580', '{\"en\":\"Dolore.\"}', 122, 8, 1, 'Et sequi doloremque.', '2022-04-09 14:21:57', '2022-04-09 14:21:57'),
(101, 'fdfddf@lklk.com', '$2y$10$sgZIpLSQzaYg/BVhR6gqoeC7zpiid5lCgpNElCsOBhYL22SLIS2oa', '{\"en\":\"ffgfg\",\"ar\":\"\\u0644\\u0628\\u0627\\u0628\\u0644\\u0627\"}', '25896321489521', '2587412369', '25874125896', '{\"en\":\"fgfg\",\"ar\":\"\\u0628\\u0644\\u0628\\u0644\"}', 19, 1, 1, 'jkhknnlkl', '{\"en\":\"fggfg\",\"ar\":\"\\u0644\\u064a\\u0644\\u064a\\u0644\"}', '25874123698521', '2131258745', '23658741255', '{\"en\":\"dgdg\",\"ar\":\"\\u064a\\u0644\\u0628\\u064a\\u0644\\u0628\"}', 19, 2, 1, 'jkhjkkjnk', '2022-04-09 23:17:24', '2022-04-09 23:17:24'),
(102, 'fdfgdf@gmail.com', '$2y$10$/2DzipmRFmtp.Nb.9L5.3.hpTByr8ODnHOyIikBh5VCfxWTAS7JsO', '{\"en\":\"fghfgh fghft nbmbnm\",\"ar\":\"\\u0628\\u0644\\u0627\\u064a\\u0628\\u0644 \\u0628\\u0644\\u0627\\u0628\\u0644\\u0627 \\u064a\\u0644\\u064a\\u0628\\u0644 \"}', '12587895123548', '1236548542', '12541254125', '{\"en\":\"dfgdfg\",\"ar\":\"\\u0633\\u064a\\u0628\\u0634\\u0633\\u064a\\u0628 \\u0646\\u0627\\u062a\\u0646\\u0627\"}', 64, 4, 1, 'fghfgh dfgdfg dfgd bdfg', '{\"en\":\"fhjf ryuryur cscgfs\",\"ar\":\"\\u0644\\u0628\\u0644\\u0628\\u0632\\u0648 \\u062b\\u0635\\u062b\"}', '12365212545236', '4521542365', '12536525874', '{\"en\":\"gfdfgfd sfgfg\",\"ar\":\"\\u0644\\u0627\\u0644\\u0627\\u064a\\u0628\\u064a\\u0628\"}', 64, 1, 1, 'gfgf jkhk ', '2022-04-13 21:09:50', '2022-04-13 21:09:50');

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
(1, 'elkemma.png', 37, 'App\\Models\\Student', '2022-04-13 17:15:54', '2022-04-13 17:15:54'),
(2, 'elkemma.png', 38, 'App\\Models\\Student', '2022-04-13 20:00:40', '2022-04-13 20:00:40');

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
(28, '2022_02_16_095230_create_fund_accounts_table', 1),
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
(1, '{\"en\":\"Afghan\",\"ar\":\"\\u0623\\u0641\\u063a\\u0627\\u0646\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:52', '2022-04-09 14:16:52'),
(2, '{\"en\":\"Albanian\",\"ar\":\"\\u0623\\u0644\\u0628\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:52', '2022-04-09 14:16:52'),
(3, '{\"en\":\"Aland Islander\",\"ar\":\"\\u0622\\u0644\\u0627\\u0646\\u062f\\u064a\"}', '2022-04-09 14:16:52', '2022-04-09 14:16:52'),
(4, '{\"en\":\"Algerian\",\"ar\":\"\\u062c\\u0632\\u0627\\u0626\\u0631\\u064a\"}', '2022-04-09 14:16:52', '2022-04-09 14:16:52'),
(5, '{\"en\":\"American Samoan\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a \\u0633\\u0627\\u0645\\u0648\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:52', '2022-04-09 14:16:52'),
(6, '{\"en\":\"Andorran\",\"ar\":\"\\u0623\\u0646\\u062f\\u0648\\u0631\\u064a\"}', '2022-04-09 14:16:52', '2022-04-09 14:16:52'),
(7, '{\"en\":\"Angolan\",\"ar\":\"\\u0623\\u0646\\u0642\\u0648\\u0644\\u064a\"}', '2022-04-09 14:16:52', '2022-04-09 14:16:52'),
(8, '{\"en\":\"Anguillan\",\"ar\":\"\\u0623\\u0646\\u063a\\u0648\\u064a\\u0644\\u064a\"}', '2022-04-09 14:16:52', '2022-04-09 14:16:52'),
(9, '{\"en\":\"Antarctican\",\"ar\":\"\\u0623\\u0646\\u062a\\u0627\\u0631\\u0643\\u062a\\u064a\\u0643\\u064a\"}', '2022-04-09 14:16:52', '2022-04-09 14:16:52'),
(10, '{\"en\":\"Antiguan\",\"ar\":\"\\u0628\\u0631\\u0628\\u0648\\u062f\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(11, '{\"en\":\"Argentinian\",\"ar\":\"\\u0623\\u0631\\u062c\\u0646\\u062a\\u064a\\u0646\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(12, '{\"en\":\"Armenian\",\"ar\":\"\\u0623\\u0631\\u0645\\u064a\\u0646\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(13, '{\"en\":\"Aruban\",\"ar\":\"\\u0623\\u0648\\u0631\\u0648\\u0628\\u0647\\u064a\\u0646\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(14, '{\"en\":\"Australian\",\"ar\":\"\\u0623\\u0633\\u062a\\u0631\\u0627\\u0644\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(15, '{\"en\":\"Austrian\",\"ar\":\"\\u0646\\u0645\\u0633\\u0627\\u0648\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(16, '{\"en\":\"Azerbaijani\",\"ar\":\"\\u0623\\u0630\\u0631\\u0628\\u064a\\u062c\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(17, '{\"en\":\"Bahamian\",\"ar\":\"\\u0628\\u0627\\u0647\\u0627\\u0645\\u064a\\u0633\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(18, '{\"en\":\"Bahraini\",\"ar\":\"\\u0628\\u062d\\u0631\\u064a\\u0646\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(19, '{\"en\":\"Bangladeshi\",\"ar\":\"\\u0628\\u0646\\u063a\\u0644\\u0627\\u062f\\u064a\\u0634\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(20, '{\"en\":\"Barbadian\",\"ar\":\"\\u0628\\u0631\\u0628\\u0627\\u062f\\u0648\\u0633\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(21, '{\"en\":\"Belarusian\",\"ar\":\"\\u0631\\u0648\\u0633\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(22, '{\"en\":\"Belgian\",\"ar\":\"\\u0628\\u0644\\u062c\\u064a\\u0643\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(23, '{\"en\":\"Belizean\",\"ar\":\"\\u0628\\u064a\\u0644\\u064a\\u0632\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(24, '{\"en\":\"Beninese\",\"ar\":\"\\u0628\\u0646\\u064a\\u0646\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(25, '{\"en\":\"Saint Barthelmian\",\"ar\":\"\\u0633\\u0627\\u0646 \\u0628\\u0627\\u0631\\u062a\\u064a\\u0644\\u0645\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(26, '{\"en\":\"Bermudan\",\"ar\":\"\\u0628\\u0631\\u0645\\u0648\\u062f\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(27, '{\"en\":\"Bhutanese\",\"ar\":\"\\u0628\\u0648\\u062a\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(28, '{\"en\":\"Bolivian\",\"ar\":\"\\u0628\\u0648\\u0644\\u064a\\u0641\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(29, '{\"en\":\"Bosnian \\/ Herzegovinian\",\"ar\":\"\\u0628\\u0648\\u0633\\u0646\\u064a\\/\\u0647\\u0631\\u0633\\u0643\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(30, '{\"en\":\"Botswanan\",\"ar\":\"\\u0628\\u0648\\u062a\\u0633\\u0648\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:53', '2022-04-09 14:16:53'),
(31, '{\"en\":\"Bouvetian\",\"ar\":\"\\u0628\\u0648\\u0641\\u064a\\u0647\\u064a\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(32, '{\"en\":\"Brazilian\",\"ar\":\"\\u0628\\u0631\\u0627\\u0632\\u064a\\u0644\\u064a\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(33, '{\"en\":\"British Indian Ocean Territory\",\"ar\":\"\\u0625\\u0642\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0645\\u062d\\u064a\\u0637 \\u0627\\u0644\\u0647\\u0646\\u062f\\u064a \\u0627\\u0644\\u0628\\u0631\\u064a\\u0637\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(34, '{\"en\":\"Bruneian\",\"ar\":\"\\u0628\\u0631\\u0648\\u0646\\u064a\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(35, '{\"en\":\"Bulgarian\",\"ar\":\"\\u0628\\u0644\\u063a\\u0627\\u0631\\u064a\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(36, '{\"en\":\"Burkinabe\",\"ar\":\"\\u0628\\u0648\\u0631\\u0643\\u064a\\u0646\\u064a\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(37, '{\"en\":\"Burundian\",\"ar\":\"\\u0628\\u0648\\u0631\\u0648\\u0646\\u064a\\u062f\\u064a\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(38, '{\"en\":\"Cambodian\",\"ar\":\"\\u0643\\u0645\\u0628\\u0648\\u062f\\u064a\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(39, '{\"en\":\"Cameroonian\",\"ar\":\"\\u0643\\u0627\\u0645\\u064a\\u0631\\u0648\\u0646\\u064a\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(40, '{\"en\":\"Canadian\",\"ar\":\"\\u0643\\u0646\\u062f\\u064a\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(41, '{\"en\":\"Cape Verdean\",\"ar\":\"\\u0627\\u0644\\u0631\\u0623\\u0633 \\u0627\\u0644\\u0623\\u062e\\u0636\\u0631\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(42, '{\"en\":\"Caymanian\",\"ar\":\"\\u0643\\u0627\\u064a\\u0645\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(43, '{\"en\":\"Central African\",\"ar\":\"\\u0623\\u0641\\u0631\\u064a\\u0642\\u064a\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(44, '{\"en\":\"Chadian\",\"ar\":\"\\u062a\\u0634\\u0627\\u062f\\u064a\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(45, '{\"en\":\"Chilean\",\"ar\":\"\\u0634\\u064a\\u0644\\u064a\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(46, '{\"en\":\"Chinese\",\"ar\":\"\\u0635\\u064a\\u0646\\u064a\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(47, '{\"en\":\"Christmas Islander\",\"ar\":\"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0639\\u064a\\u062f \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(48, '{\"en\":\"Cocos Islander\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0643\\u0648\\u0643\\u0648\\u0633\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(49, '{\"en\":\"Colombian\",\"ar\":\"\\u0643\\u0648\\u0644\\u0648\\u0645\\u0628\\u064a\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(50, '{\"en\":\"Comorian\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0627\\u0644\\u0642\\u0645\\u0631\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(51, '{\"en\":\"Congolese\",\"ar\":\"\\u0643\\u0648\\u0646\\u063a\\u064a\"}', '2022-04-09 14:16:54', '2022-04-09 14:16:54'),
(52, '{\"en\":\"Cook Islander\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0643\\u0648\\u0643\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(53, '{\"en\":\"Costa Rican\",\"ar\":\"\\u0643\\u0648\\u0633\\u062a\\u0627\\u0631\\u064a\\u0643\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(54, '{\"en\":\"Croatian\",\"ar\":\"\\u0643\\u0648\\u0631\\u0627\\u062a\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(55, '{\"en\":\"Cuban\",\"ar\":\"\\u0643\\u0648\\u0628\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(56, '{\"en\":\"Cypriot\",\"ar\":\"\\u0642\\u0628\\u0631\\u0635\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(57, '{\"en\":\"Curacian\",\"ar\":\"\\u0643\\u0648\\u0631\\u0627\\u0633\\u0627\\u0648\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(58, '{\"en\":\"Czech\",\"ar\":\"\\u062a\\u0634\\u064a\\u0643\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(59, '{\"en\":\"Danish\",\"ar\":\"\\u062f\\u0646\\u0645\\u0627\\u0631\\u0643\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(60, '{\"en\":\"Djiboutian\",\"ar\":\"\\u062c\\u064a\\u0628\\u0648\\u062a\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(61, '{\"en\":\"Dominican\",\"ar\":\"\\u062f\\u0648\\u0645\\u064a\\u0646\\u064a\\u0643\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(62, '{\"en\":\"Dominican\",\"ar\":\"\\u062f\\u0648\\u0645\\u064a\\u0646\\u064a\\u0643\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(63, '{\"en\":\"Ecuadorian\",\"ar\":\"\\u0625\\u0643\\u0648\\u0627\\u062f\\u0648\\u0631\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(64, '{\"en\":\"Egyptian\",\"ar\":\"\\u0645\\u0635\\u0631\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(65, '{\"en\":\"Salvadoran\",\"ar\":\"\\u0633\\u0644\\u0641\\u0627\\u062f\\u0648\\u0631\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(66, '{\"en\":\"Equatorial Guinean\",\"ar\":\"\\u063a\\u064a\\u0646\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(67, '{\"en\":\"Eritrean\",\"ar\":\"\\u0625\\u0631\\u064a\\u062a\\u064a\\u0631\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(68, '{\"en\":\"Estonian\",\"ar\":\"\\u0627\\u0633\\u062a\\u0648\\u0646\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(69, '{\"en\":\"Ethiopian\",\"ar\":\"\\u0623\\u062b\\u064a\\u0648\\u0628\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(70, '{\"en\":\"Falkland Islander\",\"ar\":\"\\u0641\\u0648\\u0643\\u0644\\u0627\\u0646\\u062f\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(71, '{\"en\":\"Faroese\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0641\\u0627\\u0631\\u0648\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(72, '{\"en\":\"Fijian\",\"ar\":\"\\u0641\\u064a\\u062c\\u064a\"}', '2022-04-09 14:16:55', '2022-04-09 14:16:55'),
(73, '{\"en\":\"Finnish\",\"ar\":\"\\u0641\\u0646\\u0644\\u0646\\u062f\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(74, '{\"en\":\"French\",\"ar\":\"\\u0641\\u0631\\u0646\\u0633\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(75, '{\"en\":\"French Guianese\",\"ar\":\"\\u063a\\u0648\\u064a\\u0627\\u0646\\u0627 \\u0627\\u0644\\u0641\\u0631\\u0646\\u0633\\u064a\\u0629\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(76, '{\"en\":\"French Polynesian\",\"ar\":\"\\u0628\\u0648\\u0644\\u064a\\u0646\\u064a\\u0632\\u064a\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(77, '{\"en\":\"French\",\"ar\":\"\\u0623\\u0631\\u0627\\u0636 \\u0641\\u0631\\u0646\\u0633\\u064a\\u0629 \\u062c\\u0646\\u0648\\u0628\\u064a\\u0629 \\u0648\\u0623\\u0646\\u062a\\u0627\\u0631\\u062a\\u064a\\u0643\\u064a\\u0629\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(78, '{\"en\":\"Gabonese\",\"ar\":\"\\u063a\\u0627\\u0628\\u0648\\u0646\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(79, '{\"en\":\"Gambian\",\"ar\":\"\\u063a\\u0627\\u0645\\u0628\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(80, '{\"en\":\"Georgian\",\"ar\":\"\\u062c\\u064a\\u0648\\u0631\\u062c\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(81, '{\"en\":\"German\",\"ar\":\"\\u0623\\u0644\\u0645\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(82, '{\"en\":\"Ghanaian\",\"ar\":\"\\u063a\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(83, '{\"en\":\"Gibraltar\",\"ar\":\"\\u062c\\u0628\\u0644 \\u0637\\u0627\\u0631\\u0642\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(84, '{\"en\":\"Guernsian\",\"ar\":\"\\u063a\\u064a\\u0631\\u0646\\u0632\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(85, '{\"en\":\"Greek\",\"ar\":\"\\u064a\\u0648\\u0646\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(86, '{\"en\":\"Greenlandic\",\"ar\":\"\\u062c\\u0631\\u064a\\u0646\\u0644\\u0627\\u0646\\u062f\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(87, '{\"en\":\"Grenadian\",\"ar\":\"\\u063a\\u0631\\u064a\\u0646\\u0627\\u062f\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(88, '{\"en\":\"Guadeloupe\",\"ar\":\"\\u062c\\u0632\\u0631 \\u062c\\u0648\\u0627\\u062f\\u0644\\u0648\\u0628\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(89, '{\"en\":\"Guamanian\",\"ar\":\"\\u062c\\u0648\\u0627\\u0645\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(90, '{\"en\":\"Guatemalan\",\"ar\":\"\\u063a\\u0648\\u0627\\u062a\\u064a\\u0645\\u0627\\u0644\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(91, '{\"en\":\"Guinean\",\"ar\":\"\\u063a\\u064a\\u0646\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(92, '{\"en\":\"Guinea-Bissauan\",\"ar\":\"\\u063a\\u064a\\u0646\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(93, '{\"en\":\"Guyanese\",\"ar\":\"\\u063a\\u064a\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(94, '{\"en\":\"Haitian\",\"ar\":\"\\u0647\\u0627\\u064a\\u062a\\u064a\"}', '2022-04-09 14:16:56', '2022-04-09 14:16:56'),
(95, '{\"en\":\"Heard and Mc Donald Islanders\",\"ar\":\"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0647\\u064a\\u0631\\u062f \\u0648\\u062c\\u0632\\u0631 \\u0645\\u0627\\u0643\\u062f\\u0648\\u0646\\u0627\\u0644\\u062f\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(96, '{\"en\":\"Honduran\",\"ar\":\"\\u0647\\u0646\\u062f\\u0648\\u0631\\u0627\\u0633\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(97, '{\"en\":\"Hongkongese\",\"ar\":\"\\u0647\\u0648\\u0646\\u063a \\u0643\\u0648\\u0646\\u063a\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(98, '{\"en\":\"Hungarian\",\"ar\":\"\\u0645\\u062c\\u0631\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(99, '{\"en\":\"Icelandic\",\"ar\":\"\\u0622\\u064a\\u0633\\u0644\\u0646\\u062f\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(100, '{\"en\":\"Indian\",\"ar\":\"\\u0647\\u0646\\u062f\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(101, '{\"en\":\"Manx\",\"ar\":\"\\u0645\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(102, '{\"en\":\"Indonesian\",\"ar\":\"\\u0623\\u0646\\u062f\\u0648\\u0646\\u064a\\u0633\\u064a\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(103, '{\"en\":\"Iranian\",\"ar\":\"\\u0625\\u064a\\u0631\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(104, '{\"en\":\"Iraqi\",\"ar\":\"\\u0639\\u0631\\u0627\\u0642\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(105, '{\"en\":\"Irish\",\"ar\":\"\\u0625\\u064a\\u0631\\u0644\\u0646\\u062f\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(106, '{\"en\":\"Italian\",\"ar\":\"\\u0625\\u064a\\u0637\\u0627\\u0644\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(107, '{\"en\":\"Ivory Coastian\",\"ar\":\"\\u0633\\u0627\\u062d\\u0644 \\u0627\\u0644\\u0639\\u0627\\u062c\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(108, '{\"en\":\"Jersian\",\"ar\":\"\\u062c\\u064a\\u0631\\u0632\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(109, '{\"en\":\"Jamaican\",\"ar\":\"\\u062c\\u0645\\u0627\\u064a\\u0643\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(110, '{\"en\":\"Japanese\",\"ar\":\"\\u064a\\u0627\\u0628\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(111, '{\"en\":\"Jordanian\",\"ar\":\"\\u0623\\u0631\\u062f\\u0646\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(112, '{\"en\":\"Kazakh\",\"ar\":\"\\u0643\\u0627\\u0632\\u0627\\u062e\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(113, '{\"en\":\"Kenyan\",\"ar\":\"\\u0643\\u064a\\u0646\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(114, '{\"en\":\"I-Kiribati\",\"ar\":\"\\u0643\\u064a\\u0631\\u064a\\u0628\\u0627\\u062a\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(115, '{\"en\":\"North Korean\",\"ar\":\"\\u0643\\u0648\\u0631\\u064a\"}', '2022-04-09 14:16:57', '2022-04-09 14:16:57'),
(116, '{\"en\":\"South Korean\",\"ar\":\"\\u0643\\u0648\\u0631\\u064a\"}', '2022-04-09 14:16:58', '2022-04-09 14:16:58'),
(117, '{\"en\":\"Kosovar\",\"ar\":\"\\u0643\\u0648\\u0633\\u064a\\u0641\\u064a\"}', '2022-04-09 14:16:58', '2022-04-09 14:16:58'),
(118, '{\"en\":\"Kuwaiti\",\"ar\":\"\\u0643\\u0648\\u064a\\u062a\\u064a\"}', '2022-04-09 14:16:58', '2022-04-09 14:16:58'),
(119, '{\"en\":\"Kyrgyzstani\",\"ar\":\"\\u0642\\u064a\\u0631\\u063a\\u064a\\u0632\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:58', '2022-04-09 14:16:58'),
(120, '{\"en\":\"Laotian\",\"ar\":\"\\u0644\\u0627\\u0648\\u0633\\u064a\"}', '2022-04-09 14:16:58', '2022-04-09 14:16:58'),
(121, '{\"en\":\"Latvian\",\"ar\":\"\\u0644\\u0627\\u062a\\u064a\\u0641\\u064a\"}', '2022-04-09 14:16:58', '2022-04-09 14:16:58'),
(122, '{\"en\":\"Lebanese\",\"ar\":\"\\u0644\\u0628\\u0646\\u0627\\u0646\\u064a\"}', '2022-04-09 14:16:58', '2022-04-09 14:16:58'),
(123, '{\"en\":\"Basotho\",\"ar\":\"\\u0644\\u064a\\u0648\\u0633\\u064a\\u062a\\u064a\"}', '2022-04-09 14:16:58', '2022-04-09 14:16:58'),
(124, '{\"en\":\"Liberian\",\"ar\":\"\\u0644\\u064a\\u0628\\u064a\\u0631\\u064a\"}', '2022-04-09 14:16:58', '2022-04-09 14:16:58'),
(125, '{\"en\":\"Libyan\",\"ar\":\"\\u0644\\u064a\\u0628\\u064a\"}', '2022-04-09 14:16:58', '2022-04-09 14:16:58'),
(126, '{\"en\":\"Liechtenstein\",\"ar\":\"\\u0644\\u064a\\u062e\\u062a\\u0646\\u0634\\u062a\\u064a\\u0646\\u064a\"}', '2022-04-09 14:16:58', '2022-04-09 14:16:58'),
(127, '{\"en\":\"Lithuanian\",\"ar\":\"\\u0644\\u062a\\u0648\\u0627\\u0646\\u064a\\u064a\"}', '2022-04-09 14:16:58', '2022-04-09 14:16:58'),
(128, '{\"en\":\"Luxembourger\",\"ar\":\"\\u0644\\u0648\\u0643\\u0633\\u0645\\u0628\\u0648\\u0631\\u063a\\u064a\"}', '2022-04-09 14:16:58', '2022-04-09 14:16:58'),
(129, '{\"en\":\"Sri Lankian\",\"ar\":\"\\u0633\\u0631\\u064a\\u0644\\u0627\\u0646\\u0643\\u064a\"}', '2022-04-09 14:16:58', '2022-04-09 14:16:58'),
(130, '{\"en\":\"Macanese\",\"ar\":\"\\u0645\\u0627\\u0643\\u0627\\u0648\\u064a\"}', '2022-04-09 14:16:59', '2022-04-09 14:16:59'),
(131, '{\"en\":\"Macedonian\",\"ar\":\"\\u0645\\u0642\\u062f\\u0648\\u0646\\u064a\"}', '2022-04-09 14:16:59', '2022-04-09 14:16:59'),
(132, '{\"en\":\"Malagasy\",\"ar\":\"\\u0645\\u062f\\u063a\\u0634\\u0642\\u0631\\u064a\"}', '2022-04-09 14:16:59', '2022-04-09 14:16:59'),
(133, '{\"en\":\"Malawian\",\"ar\":\"\\u0645\\u0627\\u0644\\u0627\\u0648\\u064a\"}', '2022-04-09 14:16:59', '2022-04-09 14:16:59'),
(134, '{\"en\":\"Malaysian\",\"ar\":\"\\u0645\\u0627\\u0644\\u064a\\u0632\\u064a\"}', '2022-04-09 14:16:59', '2022-04-09 14:16:59'),
(135, '{\"en\":\"Maldivian\",\"ar\":\"\\u0645\\u0627\\u0644\\u062f\\u064a\\u0641\\u064a\"}', '2022-04-09 14:16:59', '2022-04-09 14:16:59'),
(136, '{\"en\":\"Malian\",\"ar\":\"\\u0645\\u0627\\u0644\\u064a\"}', '2022-04-09 14:16:59', '2022-04-09 14:16:59'),
(137, '{\"en\":\"Maltese\",\"ar\":\"\\u0645\\u0627\\u0644\\u0637\\u064a\"}', '2022-04-09 14:16:59', '2022-04-09 14:16:59'),
(138, '{\"en\":\"Marshallese\",\"ar\":\"\\u0645\\u0627\\u0631\\u0634\\u0627\\u0644\\u064a\"}', '2022-04-09 14:16:59', '2022-04-09 14:16:59'),
(139, '{\"en\":\"Martiniquais\",\"ar\":\"\\u0645\\u0627\\u0631\\u062a\\u064a\\u0646\\u064a\\u0643\\u064a\"}', '2022-04-09 14:16:59', '2022-04-09 14:16:59'),
(140, '{\"en\":\"Mauritanian\",\"ar\":\"\\u0645\\u0648\\u0631\\u064a\\u062a\\u0627\\u0646\\u064a\\u064a\"}', '2022-04-09 14:16:59', '2022-04-09 14:16:59'),
(141, '{\"en\":\"Mauritian\",\"ar\":\"\\u0645\\u0648\\u0631\\u064a\\u0634\\u064a\\u0648\\u0633\\u064a\"}', '2022-04-09 14:16:59', '2022-04-09 14:16:59'),
(142, '{\"en\":\"Mahoran\",\"ar\":\"\\u0645\\u0627\\u064a\\u0648\\u062a\\u064a\"}', '2022-04-09 14:17:00', '2022-04-09 14:17:00'),
(143, '{\"en\":\"Mexican\",\"ar\":\"\\u0645\\u0643\\u0633\\u064a\\u0643\\u064a\"}', '2022-04-09 14:17:00', '2022-04-09 14:17:00'),
(144, '{\"en\":\"Micronesian\",\"ar\":\"\\u0645\\u0627\\u064a\\u0643\\u0631\\u0648\\u0646\\u064a\\u0632\\u064a\\u064a\"}', '2022-04-09 14:17:00', '2022-04-09 14:17:00'),
(145, '{\"en\":\"Moldovan\",\"ar\":\"\\u0645\\u0648\\u0644\\u062f\\u064a\\u0641\\u064a\"}', '2022-04-09 14:17:00', '2022-04-09 14:17:00'),
(146, '{\"en\":\"Monacan\",\"ar\":\"\\u0645\\u0648\\u0646\\u064a\\u0643\\u064a\"}', '2022-04-09 14:17:00', '2022-04-09 14:17:00'),
(147, '{\"en\":\"Mongolian\",\"ar\":\"\\u0645\\u0646\\u063a\\u0648\\u0644\\u064a\"}', '2022-04-09 14:17:00', '2022-04-09 14:17:00'),
(148, '{\"en\":\"Montenegrin\",\"ar\":\"\\u0627\\u0644\\u062c\\u0628\\u0644 \\u0627\\u0644\\u0623\\u0633\\u0648\\u062f\"}', '2022-04-09 14:17:00', '2022-04-09 14:17:00'),
(149, '{\"en\":\"Montserratian\",\"ar\":\"\\u0645\\u0648\\u0646\\u062a\\u0633\\u064a\\u0631\\u0627\\u062a\\u064a\"}', '2022-04-09 14:17:00', '2022-04-09 14:17:00'),
(150, '{\"en\":\"Moroccan\",\"ar\":\"\\u0645\\u063a\\u0631\\u0628\\u064a\"}', '2022-04-09 14:17:00', '2022-04-09 14:17:00'),
(151, '{\"en\":\"Mozambican\",\"ar\":\"\\u0645\\u0648\\u0632\\u0645\\u0628\\u064a\\u0642\\u064a\"}', '2022-04-09 14:17:00', '2022-04-09 14:17:00'),
(152, '{\"en\":\"Myanmarian\",\"ar\":\"\\u0645\\u064a\\u0627\\u0646\\u0645\\u0627\\u0631\\u064a\"}', '2022-04-09 14:17:00', '2022-04-09 14:17:00'),
(153, '{\"en\":\"Namibian\",\"ar\":\"\\u0646\\u0627\\u0645\\u064a\\u0628\\u064a\"}', '2022-04-09 14:17:00', '2022-04-09 14:17:00'),
(154, '{\"en\":\"Nauruan\",\"ar\":\"\\u0646\\u0648\\u0631\\u064a\"}', '2022-04-09 14:17:00', '2022-04-09 14:17:00'),
(155, '{\"en\":\"Nepalese\",\"ar\":\"\\u0646\\u064a\\u0628\\u0627\\u0644\\u064a\"}', '2022-04-09 14:17:00', '2022-04-09 14:17:00'),
(156, '{\"en\":\"Dutch\",\"ar\":\"\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\"}', '2022-04-09 14:17:00', '2022-04-09 14:17:00'),
(157, '{\"en\":\"Dutch Antilier\",\"ar\":\"\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\"}', '2022-04-09 14:17:00', '2022-04-09 14:17:00'),
(158, '{\"en\":\"New Caledonian\",\"ar\":\"\\u0643\\u0627\\u0644\\u064a\\u062f\\u0648\\u0646\\u064a\"}', '2022-04-09 14:17:00', '2022-04-09 14:17:00'),
(159, '{\"en\":\"New Zealander\",\"ar\":\"\\u0646\\u064a\\u0648\\u0632\\u064a\\u0644\\u0646\\u062f\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(160, '{\"en\":\"Nicaraguan\",\"ar\":\"\\u0646\\u064a\\u0643\\u0627\\u0631\\u0627\\u062c\\u0648\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(161, '{\"en\":\"Nigerien\",\"ar\":\"\\u0646\\u064a\\u062c\\u064a\\u0631\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(162, '{\"en\":\"Nigerian\",\"ar\":\"\\u0646\\u064a\\u062c\\u064a\\u0631\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(163, '{\"en\":\"Niuean\",\"ar\":\"\\u0646\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(164, '{\"en\":\"Norfolk Islander\",\"ar\":\"\\u0646\\u0648\\u0631\\u0641\\u0648\\u0644\\u064a\\u0643\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(165, '{\"en\":\"Northern Marianan\",\"ar\":\"\\u0645\\u0627\\u0631\\u064a\\u0646\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(166, '{\"en\":\"Norwegian\",\"ar\":\"\\u0646\\u0631\\u0648\\u064a\\u062c\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(167, '{\"en\":\"Omani\",\"ar\":\"\\u0639\\u0645\\u0627\\u0646\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(168, '{\"en\":\"Pakistani\",\"ar\":\"\\u0628\\u0627\\u0643\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(169, '{\"en\":\"Palauan\",\"ar\":\"\\u0628\\u0627\\u0644\\u0627\\u0648\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(170, '{\"en\":\"Palestinian\",\"ar\":\"\\u0641\\u0644\\u0633\\u0637\\u064a\\u0646\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(171, '{\"en\":\"Panamanian\",\"ar\":\"\\u0628\\u0646\\u0645\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(172, '{\"en\":\"Papua New Guinean\",\"ar\":\"\\u0628\\u0627\\u0628\\u0648\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(173, '{\"en\":\"Paraguayan\",\"ar\":\"\\u0628\\u0627\\u0631\\u063a\\u0627\\u0648\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(174, '{\"en\":\"Peruvian\",\"ar\":\"\\u0628\\u064a\\u0631\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(175, '{\"en\":\"Filipino\",\"ar\":\"\\u0641\\u0644\\u0628\\u064a\\u0646\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(176, '{\"en\":\"Pitcairn Islander\",\"ar\":\"\\u0628\\u064a\\u062a\\u0643\\u064a\\u0631\\u0646\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(177, '{\"en\":\"Polish\",\"ar\":\"\\u0628\\u0648\\u0644\\u064a\\u0646\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(178, '{\"en\":\"Portuguese\",\"ar\":\"\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(179, '{\"en\":\"Puerto Rican\",\"ar\":\"\\u0628\\u0648\\u0631\\u062a\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(180, '{\"en\":\"Qatari\",\"ar\":\"\\u0642\\u0637\\u0631\\u064a\"}', '2022-04-09 14:17:01', '2022-04-09 14:17:01'),
(181, '{\"en\":\"Reunionese\",\"ar\":\"\\u0631\\u064a\\u0648\\u0646\\u064a\\u0648\\u0646\\u064a\"}', '2022-04-09 14:17:02', '2022-04-09 14:17:02'),
(182, '{\"en\":\"Romanian\",\"ar\":\"\\u0631\\u0648\\u0645\\u0627\\u0646\\u064a\"}', '2022-04-09 14:17:02', '2022-04-09 14:17:02'),
(183, '{\"en\":\"Russian\",\"ar\":\"\\u0631\\u0648\\u0633\\u064a\"}', '2022-04-09 14:17:02', '2022-04-09 14:17:02'),
(184, '{\"en\":\"Rwandan\",\"ar\":\"\\u0631\\u0648\\u0627\\u0646\\u062f\\u0627\"}', '2022-04-09 14:17:02', '2022-04-09 14:17:02'),
(185, '{\"ar\":\"Kittitian\\/Nevisian\"}', '2022-04-09 14:17:02', '2022-04-09 14:17:02'),
(186, '{\"en\":\"St. Martian(French)\",\"ar\":\"\\u0633\\u0627\\u064a\\u0646\\u062a \\u0645\\u0627\\u0631\\u062a\\u0646\\u064a \\u0641\\u0631\\u0646\\u0633\\u064a\"}', '2022-04-09 14:17:02', '2022-04-09 14:17:02'),
(187, '{\"en\":\"St. Martian(Dutch)\",\"ar\":\"\\u0633\\u0627\\u064a\\u0646\\u062a \\u0645\\u0627\\u0631\\u062a\\u0646\\u064a \\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\"}', '2022-04-09 14:17:02', '2022-04-09 14:17:02'),
(188, '{\"en\":\"St. Pierre and Miquelon\",\"ar\":\"\\u0633\\u0627\\u0646 \\u0628\\u064a\\u064a\\u0631 \\u0648\\u0645\\u064a\\u0643\\u0644\\u0648\\u0646\\u064a\"}', '2022-04-09 14:17:02', '2022-04-09 14:17:02'),
(189, '{\"en\":\"Saint Vincent and the Grenadines\",\"ar\":\"\\u0633\\u0627\\u0646\\u062a \\u0641\\u0646\\u0633\\u0646\\u062a \\u0648\\u062c\\u0632\\u0631 \\u063a\\u0631\\u064a\\u0646\\u0627\\u062f\\u064a\\u0646\"}', '2022-04-09 14:17:02', '2022-04-09 14:17:02'),
(190, '{\"en\":\"Samoan\",\"ar\":\"\\u0633\\u0627\\u0645\\u0648\\u064a\"}', '2022-04-09 14:17:02', '2022-04-09 14:17:02'),
(191, '{\"en\":\"Sammarinese\",\"ar\":\"\\u0645\\u0627\\u0631\\u064a\\u0646\\u064a\"}', '2022-04-09 14:17:02', '2022-04-09 14:17:02'),
(192, '{\"en\":\"Sao Tomean\",\"ar\":\"\\u0633\\u0627\\u0648 \\u062a\\u0648\\u0645\\u064a \\u0648\\u0628\\u0631\\u064a\\u0646\\u0633\\u064a\\u0628\\u064a\"}', '2022-04-09 14:17:02', '2022-04-09 14:17:02'),
(193, '{\"en\":\"Saudi Arabian\",\"ar\":\"\\u0633\\u0639\\u0648\\u062f\\u064a\"}', '2022-04-09 14:17:02', '2022-04-09 14:17:02'),
(194, '{\"en\":\"Senegalese\",\"ar\":\"\\u0633\\u0646\\u063a\\u0627\\u0644\\u064a\"}', '2022-04-09 14:17:02', '2022-04-09 14:17:02'),
(195, '{\"en\":\"Serbian\",\"ar\":\"\\u0635\\u0631\\u0628\\u064a\"}', '2022-04-09 14:17:02', '2022-04-09 14:17:02'),
(196, '{\"en\":\"Seychellois\",\"ar\":\"\\u0633\\u064a\\u0634\\u064a\\u0644\\u064a\"}', '2022-04-09 14:17:02', '2022-04-09 14:17:02'),
(197, '{\"en\":\"Sierra Leonean\",\"ar\":\"\\u0633\\u064a\\u0631\\u0627\\u0644\\u064a\\u0648\\u0646\\u064a\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(198, '{\"en\":\"Singaporean\",\"ar\":\"\\u0633\\u0646\\u063a\\u0627\\u0641\\u0648\\u0631\\u064a\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(199, '{\"en\":\"Slovak\",\"ar\":\"\\u0633\\u0648\\u0644\\u0641\\u0627\\u0643\\u064a\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(200, '{\"en\":\"Slovenian\",\"ar\":\"\\u0633\\u0648\\u0644\\u0641\\u064a\\u0646\\u064a\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(201, '{\"en\":\"Solomon Island\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0633\\u0644\\u064a\\u0645\\u0627\\u0646\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(202, '{\"en\":\"Somali\",\"ar\":\"\\u0635\\u0648\\u0645\\u0627\\u0644\\u064a\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(203, '{\"en\":\"South African\",\"ar\":\"\\u0623\\u0641\\u0631\\u064a\\u0642\\u064a\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(204, '{\"en\":\"South Georgia and the South Sandwich\",\"ar\":\"\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629 \\u0627\\u0644\\u0642\\u0637\\u0628\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0646\\u0648\\u0628\\u064a\\u0629\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(205, '{\"en\":\"South Sudanese\",\"ar\":\"\\u0633\\u0648\\u0627\\u062f\\u0646\\u064a \\u062c\\u0646\\u0648\\u0628\\u064a\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(206, '{\"en\":\"Spanish\",\"ar\":\"\\u0625\\u0633\\u0628\\u0627\\u0646\\u064a\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(207, '{\"en\":\"St. Helenian\",\"ar\":\"\\u0647\\u064a\\u0644\\u0627\\u0646\\u064a\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(208, '{\"en\":\"Sudanese\",\"ar\":\"\\u0633\\u0648\\u062f\\u0627\\u0646\\u064a\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(209, '{\"en\":\"Surinamese\",\"ar\":\"\\u0633\\u0648\\u0631\\u064a\\u0646\\u0627\\u0645\\u064a\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(210, '{\"en\":\"Svalbardian\\/Jan Mayenian\",\"ar\":\"\\u0633\\u0641\\u0627\\u0644\\u0628\\u0627\\u0631\\u062f \\u0648\\u064a\\u0627\\u0646 \\u0645\\u0627\\u064a\\u0646\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(211, '{\"en\":\"Swazi\",\"ar\":\"\\u0633\\u0648\\u0627\\u0632\\u064a\\u0644\\u0646\\u062f\\u064a\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(212, '{\"en\":\"Swedish\",\"ar\":\"\\u0633\\u0648\\u064a\\u062f\\u064a\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(213, '{\"en\":\"Swiss\",\"ar\":\"\\u0633\\u0648\\u064a\\u0633\\u0631\\u064a\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(214, '{\"en\":\"Syrian\",\"ar\":\"\\u0633\\u0648\\u0631\\u064a\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(215, '{\"en\":\"Taiwanese\",\"ar\":\"\\u062a\\u0627\\u064a\\u0648\\u0627\\u0646\\u064a\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(216, '{\"en\":\"Tajikistani\",\"ar\":\"\\u0637\\u0627\\u062c\\u064a\\u0643\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-04-09 14:17:03', '2022-04-09 14:17:03'),
(217, '{\"en\":\"Tanzanian\",\"ar\":\"\\u062a\\u0646\\u0632\\u0627\\u0646\\u064a\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(218, '{\"en\":\"Thai\",\"ar\":\"\\u062a\\u0627\\u064a\\u0644\\u0646\\u062f\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(219, '{\"en\":\"Timor-Lestian\",\"ar\":\"\\u062a\\u064a\\u0645\\u0648\\u0631\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(220, '{\"en\":\"Togolese\",\"ar\":\"\\u062a\\u0648\\u063a\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(221, '{\"en\":\"Tokelaian\",\"ar\":\"\\u062a\\u0648\\u0643\\u064a\\u0644\\u0627\\u0648\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(222, '{\"en\":\"Tongan\",\"ar\":\"\\u062a\\u0648\\u0646\\u063a\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(223, '{\"en\":\"Trinidadian\\/Tobagonian\",\"ar\":\"\\u062a\\u0631\\u064a\\u0646\\u064a\\u062f\\u0627\\u062f \\u0648\\u062a\\u0648\\u0628\\u0627\\u063a\\u0648\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(224, '{\"en\":\"Tunisian\",\"ar\":\"\\u062a\\u0648\\u0646\\u0633\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(225, '{\"en\":\"Turkish\",\"ar\":\"\\u062a\\u0631\\u0643\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(226, '{\"en\":\"Turkmen\",\"ar\":\"\\u062a\\u0631\\u0643\\u0645\\u0627\\u0646\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(227, '{\"en\":\"Turks and Caicos Islands\",\"ar\":\"\\u062c\\u0632\\u0631 \\u062a\\u0648\\u0631\\u0643\\u0633 \\u0648\\u0643\\u0627\\u064a\\u0643\\u0648\\u0633\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(228, '{\"en\":\"Tuvaluan\",\"ar\":\"\\u062a\\u0648\\u0641\\u0627\\u0644\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(229, '{\"en\":\"Ugandan\",\"ar\":\"\\u0623\\u0648\\u063a\\u0646\\u062f\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(230, '{\"en\":\"Ukrainian\",\"ar\":\"\\u0623\\u0648\\u0643\\u0631\\u0627\\u0646\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(231, '{\"en\":\"Emirati\",\"ar\":\"\\u0625\\u0645\\u0627\\u0631\\u0627\\u062a\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(232, '{\"en\":\"British\",\"ar\":\"\\u0628\\u0631\\u064a\\u0637\\u0627\\u0646\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(233, '{\"en\":\"American\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(234, '{\"en\":\"US Minor Outlying Islander\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(235, '{\"en\":\"Uruguayan\",\"ar\":\"\\u0623\\u0648\\u0631\\u063a\\u0648\\u0627\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(236, '{\"en\":\"Uzbek\",\"ar\":\"\\u0623\\u0648\\u0632\\u0628\\u0627\\u0643\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(237, '{\"en\":\"Vanuatuan\",\"ar\":\"\\u0641\\u0627\\u0646\\u0648\\u0627\\u062a\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(238, '{\"en\":\"Venezuelan\",\"ar\":\"\\u0641\\u0646\\u0632\\u0648\\u064a\\u0644\\u064a\"}', '2022-04-09 14:17:04', '2022-04-09 14:17:04'),
(239, '{\"en\":\"Vietnamese\",\"ar\":\"\\u0641\\u064a\\u062a\\u0646\\u0627\\u0645\\u064a\"}', '2022-04-09 14:17:05', '2022-04-09 14:17:05'),
(240, '{\"en\":\"American Virgin Islander\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\"}', '2022-04-09 14:17:05', '2022-04-09 14:17:05'),
(241, '{\"en\":\"Vatican\",\"ar\":\"\\u0641\\u0627\\u062a\\u064a\\u0643\\u0627\\u0646\\u064a\"}', '2022-04-09 14:17:05', '2022-04-09 14:17:05'),
(242, '{\"en\":\"Wallisian\\/Futunan\",\"ar\":\"\\u0641\\u0648\\u062a\\u0648\\u0646\\u064a\"}', '2022-04-09 14:17:05', '2022-04-09 14:17:05'),
(243, '{\"en\":\"Sahrawian\",\"ar\":\"\\u0635\\u062d\\u0631\\u0627\\u0648\\u064a\"}', '2022-04-09 14:17:05', '2022-04-09 14:17:05'),
(244, '{\"en\":\"Yemeni\",\"ar\":\"\\u064a\\u0645\\u0646\\u064a\"}', '2022-04-09 14:17:05', '2022-04-09 14:17:05'),
(245, '{\"en\":\"Zambian\",\"ar\":\"\\u0632\\u0627\\u0645\\u0628\\u064a\\u0627\\u0646\\u064a\"}', '2022-04-09 14:17:05', '2022-04-09 14:17:05'),
(246, '{\"en\":\"Zimbabwean\",\"ar\":\"\\u0632\\u0645\\u0628\\u0627\\u0628\\u0648\\u064a\"}', '2022-04-09 14:17:05', '2022-04-09 14:17:05');

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

--
-- Dumping data for table `parent_attachments`
--

INSERT INTO `parent_attachments` (`id`, `file_name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'elkemma.png', 101, '2022-04-09 23:17:24', '2022-04-09 23:17:24'),
(2, 'elkemma.png', 102, '2022-04-13 21:09:50', '2022-04-13 21:09:50');

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
(1, '{\"en\":\"Muslim\",\"ar\":\"\\u0645\\u0633\\u0644\\u0645\"}', '2022-04-09 14:17:31', '2022-04-09 14:17:31'),
(2, '{\"en\":\"Christian\",\"ar\":\"\\u0645\\u0633\\u064a\\u062d\\u064a\"}', '2022-04-09 14:17:31', '2022-04-09 14:17:31'),
(3, '{\"en\":\"Other\",\"ar\":\"\\u063a\\u064a\\u0631\\u0630\\u0644\\u0643\"}', '2022-04-09 14:17:31', '2022-04-09 14:17:31');

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
(1, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 1, 1, '2022-04-08 23:53:19', '2022-04-08 23:53:19'),
(2, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 1, 1, '2022-04-09 00:04:44', '2022-04-09 00:04:44'),
(3, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 1, 2, '2022-04-09 14:14:59', '2022-04-09 14:14:59'),
(4, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 1, 2, '2022-04-09 14:15:11', '2022-04-09 14:15:11'),
(5, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 3, '2022-04-09 14:46:25', '2022-04-09 14:46:25'),
(6, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 3, '2022-04-09 14:49:46', '2022-04-09 14:49:46'),
(7, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 3, '2022-04-09 14:50:00', '2022-04-09 14:50:00'),
(8, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 4, '2022-04-09 14:54:25', '2022-04-09 14:54:25'),
(9, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 4, '2022-04-09 14:54:43', '2022-04-09 14:54:43'),
(10, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 4, '2022-04-09 14:54:55', '2022-04-09 14:54:55'),
(11, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 5, '2022-04-09 14:55:20', '2022-04-09 14:55:20'),
(12, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 5, '2022-04-09 14:55:34', '2022-04-09 14:55:34'),
(13, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 5, '2022-04-09 14:55:59', '2022-04-09 14:55:59'),
(14, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 6, '2022-04-09 14:56:16', '2022-04-09 14:56:16'),
(15, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 6, '2022-04-09 14:56:44', '2022-04-09 14:56:44'),
(16, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 6, '2022-04-09 14:56:58', '2022-04-09 14:56:58'),
(17, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 7, '2022-04-09 14:57:19', '2022-04-09 14:57:19'),
(18, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 7, '2022-04-09 14:57:37', '2022-04-09 14:57:37'),
(19, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 7, '2022-04-09 14:57:59', '2022-04-09 14:57:59'),
(20, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 2, 8, '2022-04-09 14:58:23', '2022-04-09 14:58:23'),
(21, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 2, 8, '2022-04-09 14:58:49', '2022-04-09 14:58:49'),
(22, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 2, 8, '2022-04-09 14:59:08', '2022-04-09 14:59:08'),
(23, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 1, 1, '2022-04-09 15:00:24', '2022-04-09 15:00:24'),
(24, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 1, 2, '2022-04-09 15:00:49', '2022-04-09 15:00:49'),
(25, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 3, 9, '2022-04-09 15:01:23', '2022-04-09 15:01:23'),
(26, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 3, 9, '2022-04-09 15:01:34', '2022-04-09 15:01:34'),
(27, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 3, 9, '2022-04-09 15:01:45', '2022-04-09 15:01:45'),
(28, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 3, 10, '2022-04-09 15:01:58', '2022-04-09 15:01:58'),
(29, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 3, 10, '2022-04-09 15:02:10', '2022-04-09 15:02:10'),
(30, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 3, 10, '2022-04-09 15:02:24', '2022-04-09 15:02:24'),
(31, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 3, 11, '2022-04-09 15:03:04', '2022-04-09 15:03:04'),
(32, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 3, 11, '2022-04-09 15:03:17', '2022-04-09 15:03:17'),
(33, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 3, 11, '2022-04-09 15:03:37', '2022-04-09 15:03:37'),
(35, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 4, 12, '2022-04-09 15:06:58', '2022-04-09 15:06:58'),
(36, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 4, 12, '2022-04-09 15:07:15', '2022-04-09 15:07:15'),
(37, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 4, 12, '2022-04-09 15:07:29', '2022-04-09 15:07:29'),
(38, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 4, 13, '2022-04-09 15:07:49', '2022-04-09 15:07:49'),
(39, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 4, 13, '2022-04-09 15:08:18', '2022-04-09 15:08:18'),
(40, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 4, 13, '2022-04-09 15:08:30', '2022-04-09 15:08:30'),
(41, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 4, 14, '2022-04-09 15:08:44', '2022-04-09 15:08:44'),
(42, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 4, 14, '2022-04-09 15:08:54', '2022-04-09 15:08:54'),
(43, '{\"ar\":\"\\u062c\",\"en\":\"C\"}', 1, 4, 14, '2022-04-09 15:09:09', '2022-04-09 15:09:09');

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
(1, '{\"en\":\"Arabic\",\"ar\":\"\\u0639\\u0631\\u0628\\u064a\"}', '2022-04-09 14:17:49', '2022-04-09 14:17:49'),
(2, '{\"en\":\"English\",\"ar\":\"\\u0627\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\"}', '2022-04-09 14:17:49', '2022-04-09 14:17:49'),
(3, '{\"en\":\"German\",\"ar\":\"\\u0627\\u0644\\u0645\\u0627\\u0646\\u0649\"}', '2022-04-09 14:17:49', '2022-04-09 14:17:49'),
(4, '{\"en\":\"Sciences\",\"ar\":\"\\u0639\\u0644\\u0648\\u0645\"}', '2022-04-09 14:17:50', '2022-04-09 14:17:50'),
(5, '{\"en\":\"Mathematics\",\"ar\":\"\\u0631\\u064a\\u0627\\u0636\\u064a\\u0627\\u062a\"}', '2022-04-09 14:17:50', '2022-04-09 14:17:50'),
(6, '{\"en\":\"Social Studies\",\"ar\":\"\\u062f\\u0631\\u0627\\u0633\\u0627\\u062a \\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629\"}', '2022-04-09 14:17:50', '2022-04-09 14:17:50'),
(7, '{\"en\":\"Computer\",\"ar\":\"\\u062d\\u0627\\u0633\\u0628 \\u0627\\u0644\\u064a\"}', '2022-04-09 14:17:50', '2022-04-09 14:17:50'),
(8, '{\"en\":\"Discover\",\"ar\":\"\\u0627\\u0643\\u062a\\u0634\\u0641\"}', '2022-04-09 14:17:50', '2022-04-09 14:17:50'),
(9, '{\"en\":\"religion\",\"ar\":\"\\u062f\\u064a\\u0646\"}', '2022-04-09 14:17:50', '2022-04-09 14:17:50'),
(10, '{\"en\":\"fee\",\"ar\":\"\\u0631\\u0633\\u0645\"}', '2022-04-09 14:17:50', '2022-04-09 14:17:50'),
(11, '{\"en\":\"games\",\"ar\":\"\\u0627\\u0644\\u0639\\u0627\\u0628\"}', '2022-04-09 14:17:50', '2022-04-09 14:17:50');

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
(2, '{\"en\":\"Dr. Stephon Roberts\",\"ar\":\"\\u062f . \\u0633\\u062a\\u064a\\u0641\\u0646 \\u0631\\u0648\\u0628\\u0631\\u062a\\u062a\\u0633\"}', 'lubowitz.korey@example.org', '$2y$10$FO9HJI1ukRVjzyV8J8ElG.D8CKY5YTKaJn/cN.ayXgmWsO7LSHPia', 1, 92, 7, '1985-01-27', 2, 10, 40, 75, '2022', NULL, '2022-04-09 15:10:04', '2022-04-09 15:49:27'),
(3, '{\"en\":\"Sandra Johns\",\"ar\":\"\\u0633\\u0627\\u0646\\u062f\\u0631\\u0627 \\u062c\\u0648\\u0646\\u0633\"}', 'israel.beer@example.com', '$2y$10$FLcKIDjf8v/lo6EXZJBFtezDLIraDdM.HG04vQu8i3l8XT4ndH8Qi', 2, 154, 5, '1980-01-21', 2, 6, 13, 79, '2022', '2022-04-13 19:45:13', '2022-04-09 15:10:04', '2022-04-13 19:45:13'),
(4, '{\"en\":\"Josue Windler\",\"ar\":\"\\u062c\\u0648\\u0632\\u064a\\u0648 \\u0648\\u064a\\u0646\\u062f\\u0644\\u0631\"}', 'vpagac@example.com', '$2y$10$CsnaewtgyA3K4WW9lX0Iy.MHDxQ085yYX5nSH.hf0kh67bM/GTMBO', 2, 206, 5, '1990-11-27', 3, 10, 28, 26, '2022', NULL, '2022-04-09 15:10:04', '2022-04-09 21:01:05'),
(5, '{\"en\":\"Paxton Cummerata\"}', 'blair41@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 162, 2, '1984-11-17', 3, 10, 26, 35, '2022', NULL, '2022-04-09 15:10:04', '2022-04-09 15:10:04'),
(7, '{\"en\":\"Gregg Doyle\"}', 'echristiansen@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 99, 5, '1971-10-15', 1, 11, 42, 12, '2022', NULL, '2022-04-09 15:15:04', '2022-04-09 15:15:04'),
(9, '{\"en\":\"Berniece Skiles\"}', 'bashirian.alphonso@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 82, 10, '2017-02-14', 3, 2, 15, 9, '2022', NULL, '2022-04-09 16:57:37', '2022-04-09 16:57:37'),
(10, '{\"en\":\"Prof. Scot Jast\"}', 'kayden74@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 125, 5, '2020-11-22', 2, 4, 36, 22, '2022', NULL, '2022-04-09 16:57:37', '2022-04-09 16:57:37'),
(11, '{\"en\":\"Ana Nader\"}', 'dlueilwitz@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 163, 8, '1988-05-22', 3, 7, 4, 34, '2022', NULL, '2022-04-09 16:57:38', '2022-04-09 16:57:38'),
(12, '{\"en\":\"Darren Harvey\"}', 'rafaela.kilback@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 56, 6, '1988-06-07', 3, 11, 22, 98, '2022', NULL, '2022-04-09 16:57:38', '2022-04-09 16:57:38'),
(14, '{\"en\":\"Minnie Johns\"}', 'mmurazik@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 133, 3, '1979-03-11', 4, 3, 42, 17, '2022', NULL, '2022-04-09 16:57:38', '2022-04-09 16:57:38'),
(15, '{\"en\":\"Abigail Morissette IV\"}', 'oreilly.ottilie@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 105, 4, '2001-08-22', 2, 6, 17, 89, '2022', NULL, '2022-04-09 16:57:38', '2022-04-09 16:57:38'),
(16, '{\"en\":\"Andy Grant\"}', 'sean.lesch@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 110, 12, '2000-10-08', 2, 9, 3, 40, '2022', NULL, '2022-04-09 16:57:38', '2022-04-09 16:57:38'),
(17, '{\"en\":\"Lillian Wilkinson I\"}', 'kaitlin.hintz@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 17, 8, '1983-08-10', 1, 8, 19, 69, '2022', NULL, '2022-04-09 16:57:38', '2022-04-09 16:57:38'),
(18, '{\"en\":\"Destiny Schimmel\"}', 'estrosin@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 117, 5, '2016-12-11', 4, 10, 36, 95, '2022', NULL, '2022-04-09 16:57:38', '2022-04-09 16:57:38'),
(19, '{\"en\":\"Louisa Koepp\"}', 'vince.purdy@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 129, 5, '1971-11-05', 1, 5, 15, 45, '2022', NULL, '2022-04-09 16:57:38', '2022-04-09 16:57:38'),
(20, '{\"en\":\"Augustus Daniel\"}', 'daisha.doyle@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 198, 5, '1992-10-01', 1, 8, 6, 71, '2022', NULL, '2022-04-09 16:57:38', '2022-04-09 16:57:38'),
(21, '{\"en\":\"Dr. Gavin Nitzsche\"}', 'otho93@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 153, 9, '1992-07-04', 4, 8, 24, 51, '2022', NULL, '2022-04-09 16:57:38', '2022-04-09 16:57:38'),
(22, '{\"en\":\"Estefania Nitzsche\"}', 'kaelyn.bednar@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 181, 4, '1987-10-12', 1, 4, 31, 34, '2022', NULL, '2022-04-09 16:57:38', '2022-04-09 16:57:38'),
(23, '{\"en\":\"Jacynthe Schultz\"}', 'twatsica@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 169, 3, '2003-08-29', 4, 14, 16, 89, '2022', NULL, '2022-04-09 16:57:38', '2022-04-09 16:57:38'),
(24, '{\"en\":\"Dr. Cierra Schimmel MD\"}', 'shayna61@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 23, 6, '1998-03-12', 2, 13, 36, 49, '2022', NULL, '2022-04-09 16:57:38', '2022-04-09 16:57:38'),
(25, '{\"en\":\"Sibyl Effertz\"}', 'ohara.alisha@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 31, 7, '1986-12-29', 2, 5, 33, 85, '2022', NULL, '2022-04-09 16:57:38', '2022-04-09 16:57:38'),
(26, '{\"en\":\"Norbert Hills\"}', 'leuschke.wilmer@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 165, 6, '2004-08-19', 4, 13, 5, 68, '2022', NULL, '2022-04-09 16:57:38', '2022-04-09 16:57:38'),
(27, '{\"en\":\"Ms. Rita Kub III\"}', 'nstanton@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 117, 5, '2011-08-31', 1, 14, 9, 78, '2022', '2022-04-13 19:42:26', '2022-04-09 16:57:38', '2022-04-13 19:42:26'),
(28, '{\"en\":\"Ms. Breanne Senger\"}', 'stacey30@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 4, 5, '2019-05-10', 2, 14, 29, 87, '2022', NULL, '2022-04-09 16:57:39', '2022-04-09 16:57:39'),
(29, '{\"en\":\"Verner Feeney\"}', 'larson.benjamin@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 87, 4, '2005-05-08', 2, 13, 12, 75, '2022', NULL, '2022-04-09 16:57:39', '2022-04-09 16:57:39'),
(30, '{\"en\":\"Dr. Lorenzo Kautzer V\"}', 'ollie70@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 33, 1, '1971-11-25', 3, 11, 24, 7, '2022', NULL, '2022-04-09 16:57:39', '2022-04-09 16:57:39'),
(31, '{\"en\":\"Mrs. Christelle Mills\"}', 'hubert.kulas@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 155, 12, '1998-06-17', 2, 3, 1, 20, '2022', NULL, '2022-04-09 16:57:39', '2022-04-09 16:57:39'),
(32, '{\"en\":\"Paige Hilpert\"}', 'gina69@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 136, 2, '1984-04-30', 3, 8, 20, 8, '2022', NULL, '2022-04-09 16:57:39', '2022-04-09 16:57:39'),
(33, '{\"en\":\"Lane Vandervort\"}', 'daryl52@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 206, 7, '2009-11-04', 2, 7, 4, 48, '2022', NULL, '2022-04-09 16:57:39', '2022-04-09 16:57:39'),
(34, '{\"en\":\"Mr. Fletcher Bradtke\"}', 'balistreri.jayne@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 131, 3, '1997-01-23', 2, 10, 12, 98, '2022', NULL, '2022-04-09 16:57:39', '2022-04-09 16:57:39'),
(35, '{\"en\":\"Jay Lang\",\"ar\":\"\\u062c\\u0627\\u064a\\u0644\\u0627\\u0646\\u062c\"}', 'mitchell.okeefe@example.com', '$2y$10$f6wj7ggUDcPG.38lRwhwJ.JFCB15HuTqFm77k/7zEnrpVJGR7/pBi', 1, 108, 2, '2009-04-14', 1, 10, 12, 8, '2022', NULL, '2022-04-09 16:57:39', '2022-04-13 17:55:41'),
(37, '{\"en\":\"Hoda Tarek Mahmod Mohamed El Ashry\",\"ar\":\"\\u0647\\u062f\\u0649 \\u0637\\u0627\\u0631\\u0642 \\u0645\\u062d\\u0645\\u0648\\u062f \\u0645\\u062d\\u0645\\u062f \\u0627\\u0644\\u0639\\u0634\\u0631\\u0649\"}', 'hoda@gmail.com', '$2y$10$Sv.X4hPrBoB5U7jVrplB1.QlpHQkmIwkZnoV0y4wqb6lA7kDp2PQu', 2, 64, 4, '2010-02-10', 2, 8, 20, 21, '2022', NULL, '2022-04-13 17:15:54', '2022-04-13 17:54:48'),
(38, '{\"en\":\"habiba tarek\",\"ar\":\"\\u062d\\u0628\\u064a\\u0628\\u0629 \\u0637\\u0627\\u0631\\u0642\"}', 'habiba@gmail.com', '$2y$10$25xMv4KRuC9YM6aIZBZlUekPVTSoDbYbWcFJpdGunfTS/OPZTG/pq', 2, 64, 4, '2012-02-01', 2, 5, 11, 20, '2022', NULL, '2022-04-13 20:00:40', '2022-04-13 20:00:40');

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
(1, 'king.trantow@example.net', '$2y$10$VE1HHvOW8I1KMhlrZ1HmR.iBBy3dOuhL2obxNpkGgLcdco2UqCwpW', '{\"en\":\"Prof. Nickolas Armstrong II\",\"ar\":\"\\u0628\\u0631\\u0648\\u0641 .\\u0646\\u064a\\u0643\\u0648\\u0644\\u0627\\u0633 \\u0627\\u0631\\u0648\\u0633\\u062a\\u0631\\u0648\\u0646\\u062c\"}', 10, 2, '2000-08-12', 'Repellat tempore.', '2022-04-09 14:21:22', '2022-04-09 14:47:50'),
(2, 'xkunze@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Danyka Hermiston II\"}', 9, 1, '1971-12-24', 'Iste hic aut.', '2022-04-09 14:21:22', '2022-04-09 14:21:22'),
(3, 'bayer.alize@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Ellis Carroll\"}', 9, 1, '2012-12-06', 'Cumque dolor eius.', '2022-04-09 14:21:22', '2022-04-09 14:21:22'),
(4, 'lindgren.alyce@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Abner Sporer\"}', 1, 2, '1974-04-27', 'Iure qui ut.', '2022-04-09 14:21:22', '2022-04-09 14:21:22'),
(5, 'roob.willow@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Elnora Bogan\"}', 9, 2, '2019-02-15', 'Ad nihil minima.', '2022-04-09 14:21:22', '2022-04-09 14:21:22'),
(6, 'berenice13@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Elmo Kertzmann\"}', 10, 2, '1987-03-12', 'Quod facilis.', '2022-04-09 14:21:22', '2022-04-09 14:21:22'),
(7, 'era.dickinson@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Birdie Wunsch\"}', 10, 2, '2014-09-27', 'Atque ea cupiditate.', '2022-04-09 14:21:22', '2022-04-09 14:21:22'),
(8, 'macejkovic.andreanne@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Anya O\'Reilly\"}', 10, 1, '2018-10-13', 'Blanditiis et odio.', '2022-04-09 14:21:22', '2022-04-09 14:21:22'),
(9, 'therese.witting@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lauren Carroll\"}', 2, 2, '1981-05-19', 'Nisi officiis nihil.', '2022-04-09 14:21:22', '2022-04-09 14:21:22'),
(10, 'ayana74@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Melba Willms\"}', 2, 1, '2000-08-25', 'Rerum non.', '2022-04-09 14:21:22', '2022-04-09 14:21:22'),
(11, 'leila.treutel@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Gia Legros DDS\"}', 7, 2, '1984-07-31', 'Impedit consequatur.', '2022-04-09 14:21:22', '2022-04-09 14:21:22'),
(12, 'gonzalo.wisozk@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Antoinette Dach V\"}', 11, 2, '1985-04-02', 'Facilis qui fugit.', '2022-04-09 14:21:22', '2022-04-09 14:21:22'),
(13, 'fgraham@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Grady Johnston Sr.\"}', 8, 1, '1987-05-17', 'Officiis eveniet.', '2022-04-09 14:21:22', '2022-04-09 14:21:22'),
(14, 'bailey.robbie@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Desmond Rutherford\"}', 3, 1, '1980-09-23', 'Maxime quidem illum.', '2022-04-09 14:21:22', '2022-04-09 14:21:22'),
(15, 'edietrich@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Hattie Zieme DDS\"}', 7, 1, '1975-01-08', 'Maiores molestiae.', '2022-04-09 14:21:22', '2022-04-09 14:21:22'),
(16, 'bkassulke@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Hazel Bashirian\"}', 2, 1, '2003-11-18', 'Dolorem qui vitae.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(17, 'gborer@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Alessia Mraz\"}', 2, 2, '1996-09-12', 'Illum quas et sequi.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(18, 'coty.fay@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Maia Denesik\"}', 3, 1, '2011-02-01', 'Autem asperiores.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(19, 'choeger@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Natalia Funk PhD\"}', 10, 1, '1990-06-22', 'Est eum iure.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(20, 'hermiston.margaretta@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Garrett Spencer IV\"}', 3, 1, '1985-12-03', 'Expedita est.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(21, 'leanna.heathcote@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lenora Davis\"}', 3, 2, '2001-12-28', 'Ipsa quia harum.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(22, 'pearline.gutkowski@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Emily Kreiger\"}', 5, 2, '2017-02-12', 'Ipsum explicabo.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(23, 'ecarroll@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Rachael Dach\"}', 6, 1, '1999-12-20', 'Est unde nihil non.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(24, 'pedro.legros@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Cullen Steuber\"}', 8, 2, '1978-04-28', 'Quis ducimus et.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(25, 'andy.homenick@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Angelo Cartwright\"}', 1, 2, '2016-04-08', 'Velit officia non.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(26, 'mann.bernadine@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mr. Milo Schmeler\"}', 3, 1, '1982-03-16', 'Qui doloribus aut.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(27, 'rmedhurst@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Odie Volkman\"}', 5, 1, '1983-09-15', 'Placeat aut ut.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(28, 'dickinson.giovanny@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Kara Zboncak\"}', 10, 2, '2021-01-21', 'Natus et ea error.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(29, 'sjohnston@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Amari Fritsch\"}', 7, 2, '2004-03-22', 'Earum qui rerum.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(30, 'marion53@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Haylie Kautzer Jr.\"}', 1, 2, '1980-06-24', 'Mollitia et vel.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(31, 'doconner@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Dr. Bryce Green III\"}', 7, 1, '1975-07-27', 'Laborum ad sed qui.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(32, 'clara.heller@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Mrs. Alexane Spinka V\"}', 4, 1, '2004-05-21', 'Aut a quia neque ea.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(33, 'greenfelder.jalyn@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Frankie Harris\"}', 8, 2, '1980-07-08', 'Ut adipisci ullam.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(34, 'kevon22@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Lottie Willms\"}', 8, 2, '1994-04-28', 'Ut sunt doloremque.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(35, 'idell14@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Stanton Mann\"}', 11, 2, '2016-01-06', 'Alias itaque.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(36, 'jamel88@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Aditya Rath\"}', 11, 2, '1996-07-23', 'Laboriosam.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(37, 'gladys.jerde@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Erik Murray\"}', 11, 2, '2017-05-29', 'Aperiam voluptate.', '2022-04-09 14:21:23', '2022-04-09 14:21:23'),
(38, 'maiya.carter@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Marlon Senger\"}', 11, 2, '2017-11-01', 'Nobis non quasi.', '2022-04-09 14:21:24', '2022-04-09 14:21:24'),
(39, 'pswaniawski@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Tanya Schimmel\"}', 4, 1, '2021-08-13', 'Illum aut facere.', '2022-04-09 14:21:24', '2022-04-09 14:21:24'),
(40, 'nathaniel.lang@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Rosetta Boehm III\"}', 11, 1, '1997-11-06', 'Praesentium dolorem.', '2022-04-09 14:21:24', '2022-04-09 14:21:24'),
(41, 'lura09@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Clovis Labadie\"}', 8, 1, '1987-04-01', 'Eveniet earum aut.', '2022-04-09 14:21:24', '2022-04-09 14:21:24'),
(42, 'rosina.johnson@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Connor Schinner\"}', 8, 1, '1997-07-01', 'Beatae repellendus.', '2022-04-09 14:21:24', '2022-04-09 14:21:24'),
(43, 'omayert@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Flavio Cremin\"}', 8, 1, '1979-09-06', 'Quaerat recusandae.', '2022-04-09 14:21:24', '2022-04-09 14:21:24'),
(44, 'pacocha.kaci@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Ms. Susan Powlowski DVM\"}', 2, 1, '1993-11-04', 'Nesciunt sed ut.', '2022-04-09 14:21:24', '2022-04-09 14:21:24'),
(45, 'mclaughlin.gordon@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Miss Cydney Aufderhar\"}', 7, 2, '1997-11-07', 'Blanditiis.', '2022-04-09 14:21:24', '2022-04-09 14:21:24'),
(46, 'bertram.kovacek@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Nakia Hirthe\"}', 3, 2, '1989-01-21', 'Reprehenderit.', '2022-04-09 14:21:24', '2022-04-09 14:21:24'),
(47, 'jewel.prohaska@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Molly Hammes Jr.\"}', 7, 1, '2020-02-16', 'Provident quaerat.', '2022-04-09 14:21:24', '2022-04-09 14:21:24'),
(48, 'xkub@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Aida Beier\"}', 6, 2, '1985-06-04', 'Itaque assumenda.', '2022-04-09 14:21:24', '2022-04-09 14:21:24'),
(49, 'gabrielle.sporer@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Camille McDermott\"}', 7, 2, '1996-05-19', 'Non sequi tempora.', '2022-04-09 14:21:24', '2022-04-09 14:21:24'),
(50, 'rosenbaum.aletha@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '{\"en\":\"Prof. Mckenna Ruecker MD\"}', 1, 2, '1993-06-05', 'Deleniti ex enim.', '2022-04-09 14:21:24', '2022-04-09 14:21:24'),
(51, 'tarek@gmail.com', '$2y$10$vdSjKJlmP.BPNxjlug1qr.DucHUpKXLBsR5GkV7Qk4UoHdbDDtvFG', '{\"en\":\"Tarek Mahmod Elashry\",\"ar\":\"\\u0637\\u0627\\u0631\\u0642 \\u0645\\u062d\\u0645\\u0648\\u062f \\u0627\\u0644\\u0639\\u0634\\u0631\\u0649\"}', 1, 1, '2008-10-20', '13 al wakell st, helwan, cairo', '2022-04-13 21:06:10', '2022-04-13 21:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_sections`
--

CREATE TABLE `teacher_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_sections`
--

INSERT INTO `teacher_sections` (`id`, `teacher_id`, `section_id`) VALUES
(1, 1, 5),
(2, 2, 6),
(3, 3, 7),
(4, 4, 8),
(5, 5, 9),
(6, 6, 10),
(7, 7, 11),
(8, 8, 12),
(9, 9, 13),
(10, 10, 14),
(11, 11, 15),
(12, 12, 16),
(13, 13, 17),
(14, 16, 18),
(15, 17, 19),
(16, 17, 20),
(17, 22, 21),
(18, 22, 22),
(19, 35, 23),
(20, 25, 24),
(21, 50, 25),
(22, 49, 26),
(23, 48, 27),
(24, 47, 28),
(25, 46, 29),
(26, 45, 30),
(27, 43, 31),
(28, 42, 32),
(29, 41, 33),
(30, 39, 35),
(31, 40, 36),
(32, 38, 37),
(33, 38, 38),
(34, 4, 39),
(35, 37, 40),
(36, 27, 41),
(37, 3, 42),
(38, 43, 43);

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
  ADD KEY `sections_grade_id_foreign` (`grade_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `teacher_sections`
--
ALTER TABLE `teacher_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
