-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2021 at 08:54 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalmis`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal_types`
--

CREATE TABLE `animal_types` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(5) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animal_types`
--

INSERT INTO `animal_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Brahman', '1', '2021-01-08 00:03:44', '2021-01-08 00:03:44'),
(2, 'Friesian', '1', '2021-01-08 00:04:24', '2021-01-08 00:04:24'),
(3, 'Holstein', '1', '2021-01-08 00:04:32', '2021-01-08 00:04:32'),
(4, 'Holstein Friesian', '1', '2021-01-08 00:04:54', '2021-01-08 00:04:54'),
(5, 'Jersey', '1', '2021-01-08 00:05:08', '2021-01-08 00:05:08'),
(6, 'Mundi', '1', '2021-01-08 00:05:26', '2021-01-08 00:05:26'),
(7, 'Sahiwal', '1', '2021-01-08 00:06:16', '2021-01-08 00:06:16'),
(8, 'Sindi', '1', '2021-01-08 00:06:25', '2021-01-08 00:06:25');

-- --------------------------------------------------------

--
-- Table structure for table `canteenmealtype`
--

CREATE TABLE `canteenmealtype` (
  `Slno` int(11) NOT NULL,
  `MealType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `canteenmealtype`
--

INSERT INTO `canteenmealtype` (`Slno`, `MealType`) VALUES
(1, 'ICU'),
(2, 'HDU'),
(3, 'Cabin'),
(4, 'Ward'),
(5, 'Cabin'),
(6, 'NICU');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'asdfkjaaaaaaaas', '2021-01-07 23:55:24', '2021-01-11 13:27:39'),
(2, 'Red', '2021-01-07 23:55:37', '2021-01-07 23:55:37'),
(3, 'Blue', '2021-01-07 23:55:48', '2021-01-07 23:55:48'),
(5, 'Purple', '2021-01-07 23:57:30', '2021-01-07 23:57:30'),
(6, 'Black', '2021-01-07 23:57:36', '2021-01-07 23:57:36'),
(7, 'Green', '2021-01-07 23:59:01', '2021-01-07 23:59:01'),
(8, 'Gray', '2021-01-11 13:22:58', '2021-01-11 13:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `cows`
--

CREATE TABLE `cows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `animal_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `animal_age` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `animal_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pregnant_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_no_of_pregnant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_pregnant_aprrox_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `milk_per_day_ltr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buy_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy_date` datetime NOT NULL,
  `stall_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_vaccine` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cows`
--

INSERT INTO `cows` (`id`, `animal_id`, `date_of_birth`, `animal_age`, `age_month`, `weight`, `height`, `gender`, `color`, `animal_type`, `pregnant_status`, `previous_no_of_pregnant`, `next_pregnant_aprrox_time`, `milk_per_day_ltr`, `buy_from`, `buy_price`, `buy_date`, `stall_no`, `previous_vaccine`, `note`, `image`, `Status`, `created_at`, `updated_at`) VALUES
(1, 'C-0001', '2015-01-01 00:00:00', '2199', NULL, '150', '40', 'Female', '1', '4', 'Pregnant', '2', '04/15/2021', '20', 'Uganda', '100000', '2017-01-05 00:00:00', '1', 'Yes', 'N/A', 'public/frontend/cows/1688593437712442.jpg', 'Available', '2021-01-08 00:37:16', '2021-01-11 12:29:52'),
(7, 'C-0007', '2019-07-08 00:00:00', '15', NULL, '20', NULL, 'Female', '1', '3', 'Not Pregnant', '0', '04/15/2021', '0', 'Australia', '30000', '2020-12-02 00:00:00', '7', 'Yes', 'new', 'public/frontend/cows/1688594081398801.jpg', 'Available', '2021-01-11 12:40:06', '2021-01-11 12:41:08'),
(8, 'C-0008', '2018-12-11 00:00:00', '762', NULL, '20', '100', 'Male', '1', '4', 'Not Pregnant', '0', '08/07/2021', '0', 'Australia', '30000', '2020-12-01 00:00:00', '7', 'Yes', 'new add', 'public/frontend/cows/1688594486650050.jpg', 'Available', '2021-01-11 12:46:32', '2021-01-11 12:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `cows_feed`
--

CREATE TABLE `cows_feed` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stall_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cow_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `food_item` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedingTime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cows_feed`
--

INSERT INTO `cows_feed` (`id`, `stall_no`, `cow_no`, `date`, `note`, `food_item`, `item_quantity`, `unit`, `feedingTime`, `created_at`, `updated_at`) VALUES
(1, '1', 'C-0004', '2021-01-11 00:00:00', 'asdf', 'grass', '34', 'kg', '10', '2021-01-09 18:45:47', '2021-01-09 18:45:47'),
(2, '1', 'C-0004', '2021-01-11 00:00:00', 'asdf', 'salt', '234', 'gm', '10', '2021-01-09 18:45:47', '2021-01-09 18:45:47'),
(3, '3', 'C-0001', '2021-01-01 00:00:00', 'Not debo na tai inbox a show korbe etai ja ekhane likhbo', 'grass', '10', 'kg', '10', '2021-01-09 21:00:08', '2021-01-09 21:00:08'),
(4, '3', 'C-0001', '2021-01-01 00:00:00', 'Not debo na', 'water', '5', 'ltr', '09', '2021-01-09 21:00:08', '2021-01-09 21:00:08'),
(5, '3', 'C-0001', '2021-01-01 00:00:00', 'Not debo na', 'salt', '200', 'gm', '05', '2021-01-09 21:00:08', '2021-01-09 21:00:08'),
(6, '3', 'C-0001', '2021-01-01 00:00:00', 'Not debo na', 'grass', '10', 'kg', '10', '2021-01-09 21:01:04', '2021-01-09 21:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `cow_calfs`
--

CREATE TABLE `cow_calfs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `animal_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `mother_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `animal_age` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `animal_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy_date` datetime NOT NULL,
  `stall_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_vaccine` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cow_calfs`
--

INSERT INTO `cow_calfs` (`id`, `animal_id`, `date_of_birth`, `mother_id`, `animal_age`, `age_month`, `weight`, `height`, `gender`, `color`, `animal_type`, `buy_from`, `buy_price`, `buy_date`, `stall_no`, `previous_vaccine`, `note`, `Status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'CC-0001', '2019-12-12 00:00:00', 'C-0004', '393', NULL, '80', '80', 'Female', '3', '4', 'Uganda', '75000', '2020-08-13 00:00:00', '1', 'No', 'N/A', 'Available', 'public/frontend/cows/1688441552538401.jpg', '2021-01-08 01:03:41', '2021-01-09 20:15:43'),
(3, 'CC-0003', '2021-01-03 00:00:00', 'C-0004', NULL, NULL, '20', '100', 'Female', '6', '8', 'Uganda', '50000', '2021-01-11 00:00:00', '3', 'Yes', 'gdfg', 'Available', 'public/frontend/cows/1688441507495155.jpg', '2021-01-09 20:15:00', '2021-01-09 20:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `cow_images`
--

CREATE TABLE `cow_images` (
  `id` bigint(20) NOT NULL,
  `animal_id` varchar(50) NOT NULL,
  `input_from` varchar(50) NOT NULL,
  `images` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cow_sales`
--

CREATE TABLE `cow_sales` (
  `id` bigint(20) NOT NULL,
  `invoice_no` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `animal_type` varchar(20) NOT NULL,
  `animal_id` varchar(20) NOT NULL,
  `stall_no` varchar(20) NOT NULL,
  `sale_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `details`, `created_at`, `updated_at`) VALUES
(1, 'HR', 'Human Resource', '2021-01-08 08:41:24', '2021-01-08 08:41:24'),
(2, 'Managing Director', 'Managing Director', '2021-01-08 08:41:40', '2021-01-08 10:27:49'),
(3, 'Executive', 'Office Executive', '2021-01-08 08:42:17', '2021-01-11 13:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary`
--

CREATE TABLE `employee_salary` (
  `id` bigint(20) NOT NULL,
  `payment_no` varchar(20) NOT NULL,
  `payment_date` datetime DEFAULT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(10) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `monthly_salary` double NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_salary`
--

INSERT INTO `employee_salary` (`id`, `payment_no`, `payment_date`, `month`, `year`, `employee_name`, `monthly_salary`, `note`, `created_at`, `updated_at`) VALUES
(1, '0', '2021-01-11 00:00:00', 'May', '2021', '6', 19500, 'safsf', '2021-01-10 19:54:14', '2021-01-11 14:59:11'),
(3, 'S2101000', '2020-11-07 00:00:00', 'September', '2020', '8', 19500, 'sdaf', '2021-01-10 20:09:06', '2021-01-11 14:58:48'),
(4, '2101003', '2021-01-12 00:00:00', 'January', '2020', '2', 10, '10asdf', '2021-01-10 20:30:21', '2021-01-10 20:30:21'),
(5, '2101004', '2021-01-11 00:00:00', 'February', '2020', '6', 10000, '21', '2021-01-10 20:35:42', '2021-01-10 20:35:42'),
(7, '2101006', '2021-01-11 00:00:00', 'January', '2020', '9', 131, 'aaa', '2021-01-10 20:40:10', '2021-01-11 14:58:32');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) NOT NULL,
  `invoice_no` varchar(15) NOT NULL,
  `invoice_date` datetime NOT NULL DEFAULT current_timestamp(),
  `purpose` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `details` text NOT NULL,
  `total_amount` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `invoice_no`, `invoice_date`, `purpose`, `date`, `details`, `total_amount`, `created_at`, `updated_at`) VALUES
(2, 'E-003', '2021-01-10 00:00:00', '0', '2021-01-04 00:00:00', 'Mobile Bill', 300, '2021-01-09 19:40:06', '2021-01-11 12:36:05'),
(3, 'E-003', '2021-01-11 00:00:00', 'Salary', '2021-01-07 00:00:00', 'For the month of January 2021', 5000, '2021-01-10 18:30:25', '2021-01-10 18:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `expens_purposes`
--

CREATE TABLE `expens_purposes` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expens_purposes`
--

INSERT INTO `expens_purposes` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Salary', '1', '2021-01-09 19:37:47', '2021-01-09 19:37:47'),
(2, 'Moblie Bill', '1', '2021-01-09 19:38:43', '2021-01-09 19:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` varchar(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Water', '1', '2021-01-08 00:11:25', '2021-01-08 00:11:25'),
(3, 'Salt', '1', '2021-01-08 00:11:31', '2021-01-08 00:11:31'),
(4, 'Grass', '1', '2021-01-08 00:11:48', '2021-01-08 00:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `food_units`
--

CREATE TABLE `food_units` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_units`
--

INSERT INTO `food_units` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Liter', '1', '2021-01-08 00:08:30', '2021-01-08 00:08:30'),
(4, 'Kg', '1', '2021-01-08 00:09:38', '2021-01-08 00:09:38'),
(5, 'Gram', '1', '2021-01-08 00:10:31', '2021-01-08 00:10:31');

-- --------------------------------------------------------

--
-- Table structure for table `indoorbillgroupinfo`
--

CREATE TABLE `indoorbillgroupinfo` (
  `id` int(6) UNSIGNED NOT NULL,
  `BillGroup` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `indoorbillgroupinfo`
--

INSERT INTO `indoorbillgroupinfo` (`id`, `BillGroup`) VALUES
(1, 'Both Income'),
(2, 'Fixed Income'),
(3, 'Hospital Income'),
(4, 'Non Hospital Income');

-- --------------------------------------------------------

--
-- Table structure for table `manage_cow_pregnancy`
--

CREATE TABLE `manage_cow_pregnancy` (
  `id` bigint(20) NOT NULL,
  `stall_no` varchar(50) NOT NULL,
  `animal_id` varchar(50) NOT NULL,
  `pregnancy_type` varchar(20) NOT NULL,
  `semen_type` varchar(50) NOT NULL,
  `semen_push_date` datetime NOT NULL,
  `pregnancy_start_date` datetime NOT NULL,
  `semen_cost` double NOT NULL,
  `other_cost` double NOT NULL,
  `note` varchar(500) NOT NULL,
  `approximate_dalivery_date` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manage_cow_pregnancy`
--

INSERT INTO `manage_cow_pregnancy` (`id`, `stall_no`, `animal_id`, `pregnancy_type`, `semen_type`, `semen_push_date`, `pregnancy_start_date`, `semen_cost`, `other_cost`, `note`, `approximate_dalivery_date`, `created_at`, `updated_at`) VALUES
(2, '1', '10', 'By Collected Semen', '2', '2021-01-11 00:00:00', '2021-01-05 00:00:00', 2000, 1000, 'asdf', '2021-01-10 01:20:09', '2021-01-09 19:20:09', '2021-01-09 19:20:09');

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
(4, '2020_08_31_124815_create_tbl_menus_table', 1),
(7, '2020_08_31_151826_create_tbl_menu_accesses_table', 2),
(8, '2020_09_02_123246_create_sliders_table', 3),
(9, '2020_09_03_164129_create_bed_information_table', 4),
(11, '2020_09_03_164258_create_chart_of_accs_table', 5),
(12, '2020_09_03_163418_create_clinical_charts_table', 6),
(14, '2020_09_03_164213_create_dr_infos_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `milkparlors`
--

CREATE TABLE `milkparlors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collected_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collected_date` datetime DEFAULT NULL,
  `stall_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `animal_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `liter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_liter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `milkparlors`
--

INSERT INTO `milkparlors` (`id`, `account_no`, `collected_from`, `collected_date`, `stall_no`, `animal_id`, `liter`, `price_liter`, `total_price`, `created_at`, `updated_at`) VALUES
(1, '2101120000', 'Md Abul Bashar', '2021-01-05 00:00:00', '7', 'C-0007', '50', '20', '1000', '2021-01-11 19:49:49', '2021-01-11 19:49:49'),
(2, '2101120001', 'Md Abul Bashar', '2021-01-05 00:00:00', '7', 'C-0008', '10', '20', '200', '2021-01-11 19:50:03', '2021-01-11 19:50:03'),
(3, '2101120002', 'Md Rokibul Islam', '2021-01-05 00:00:00', '1', 'C-0001', '50', '25', '1250', '2021-01-11 19:50:18', '2021-01-11 19:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `milk_ledger`
--

CREATE TABLE `milk_ledger` (
  `id` bigint(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `referance_no` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `litre_collect` double NOT NULL,
  `litre_sale` double NOT NULL,
  `price_collect` double NOT NULL,
  `price_sale` double NOT NULL,
  `come_from` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `milk_ledger`
--

INSERT INTO `milk_ledger` (`id`, `date`, `referance_no`, `name`, `litre_collect`, `litre_sale`, `price_collect`, `price_sale`, `come_from`, `created_at`, `updated_at`) VALUES
(1, '2021-01-05 00:00:00', '2101120000', 'Md Abul Bashar', 50, 0, 20, 0, 'Collected', '2021-01-11 19:49:49', NULL),
(2, '2021-01-05 00:00:00', '2101120001', 'Md Abul Bashar', 10, 0, 20, 0, 'Collected', '2021-01-11 19:50:03', NULL),
(3, '2021-01-05 00:00:00', '2101120002', 'Md Rokibul Islam', 50, 0, 25, 0, 'Collected', '2021-01-11 19:50:18', NULL),
(4, '2021-01-06 00:00:00', 'INV-21-0001', 'Md Zahid Hassan', 0, 10, 0, 20, 'Sales', '2021-01-11 19:52:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `monitoring_services`
--

CREATE TABLE `monitoring_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monitoring_services`
--

INSERT INTO `monitoring_services` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Monitoring', '2021-01-08 00:13:10', '2021-01-08 00:13:10'),
(2, 'Weekly Tika', '2021-01-08 00:14:50', '2021-01-08 00:14:50'),
(3, 'Monthly Tika', '2021-01-08 00:15:03', '2021-01-08 00:15:03'),
(4, 'Half Yearly', '2021-01-11 13:51:47', '2021-01-11 13:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `passworddetails`
--

CREATE TABLE `passworddetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departmentName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actionName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controllerName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pno` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iconName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `passworddetails`
--

INSERT INTO `passworddetails` (`id`, `userName`, `password`, `departmentName`, `actionName`, `controllerName`, `pno`, `iconName`, `created_at`, `updated_at`) VALUES
(1, 'Zahid', '12345', NULL, NULL, NULL, '1', NULL, NULL, NULL),
(2, 'Zahidul', '123456', NULL, NULL, NULL, '1', NULL, NULL, NULL),
(3, 'Milton', '123', NULL, NULL, NULL, '1', NULL, NULL, NULL),
(4, 'Zahidul', '1234', NULL, NULL, NULL, '1', NULL, NULL, NULL),
(5, 'Ziaul', '12345', NULL, NULL, NULL, '1', NULL, NULL, NULL),
(6, 'Bashar', '123', NULL, NULL, NULL, '1', NULL, NULL, NULL),
(7, 'Rokibul', '123', NULL, NULL, NULL, '1', NULL, NULL, NULL);

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
-- Table structure for table `routine_monitor`
--

CREATE TABLE `routine_monitor` (
  `id` bigint(20) NOT NULL,
  `stall_no` varchar(50) NOT NULL,
  `animal_id` varchar(50) NOT NULL,
  `weight` double NOT NULL,
  `height` double NOT NULL,
  `milk_per_day` double NOT NULL,
  `monitoring_date` datetime NOT NULL,
  `note` varchar(500) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `result` varchar(50) NOT NULL,
  `time` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `salemilk`
--

CREATE TABLE `salemilk` (
  `id` bigint(20) NOT NULL,
  `InvoiceNo` varchar(20) DEFAULT NULL,
  `InvoiceDate` date DEFAULT current_timestamp(),
  `AccNo` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `MobileNo` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Litre` double NOT NULL,
  `PriceLitre` double NOT NULL,
  `Total` double NOT NULL,
  `Paid` double NOT NULL,
  `Due` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salemilk`
--

INSERT INTO `salemilk` (`id`, `InvoiceNo`, `InvoiceDate`, `AccNo`, `Name`, `MobileNo`, `Email`, `Address`, `Litre`, `PriceLitre`, `Total`, `Paid`, `Due`) VALUES
(1, 'INV-21-0001', '2021-01-06', '2101120000', 'Md Zahid Hassan', '01518304961', 'zahidulislam0173@gmail.com', 'aaaaaa', 10, 20, 200, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `sales_ledger`
--

CREATE TABLE `sales_ledger` (
  `id` bigint(20) NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `CRType` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_phone` varchar(50) DEFAULT NULL,
  `customer_email` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_price` double NOT NULL,
  `paid` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `page_link`, `valid`, `created_at`, `updated_at`) VALUES
(1, 'Hospital Bed', 'uploads/slider/-1599030691-hospital.jpg', '#', 1, '2020-09-02 06:54:37', '2020-09-02 07:11:31'),
(2, 'Medical', 'uploads/slider/-1599030707-medical.jpg', '#', 1, '2020-09-02 07:11:47', '2020-09-02 07:11:47'),
(3, 'Medical Services', 'uploads/slider/-1599030729-medical2.jpg', '#', 1, '2020-09-02 07:12:09', '2020-09-02 07:12:09');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employeeId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` int(11) DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parmanent_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` double NOT NULL,
  `joining_date` datetime NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `employeeId`, `name`, `email`, `phone_number`, `nid`, `designation`, `user_type`, `present_address`, `parmanent_address`, `salary`, `joining_date`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '21010000', 'Md. Zahidul Islam', 'zahidulislam0173@gmail.com', '01679323388', 8571454, 'IT Executive', 'Admin', 'Dhanmondi kalabagan Dhaka Bangladesh.', 'Dhanmondi kalabagan Dhaka Bangladesh.', 19500, '2020-08-05 00:00:00', 'frontend/staffimages/1688298457574166.jpg', 1, '2021-01-08 00:21:17', '2021-01-08 00:21:17'),
(2, '21010002', 'Md Zahid Hassan', 'zahidulislam0173@gmail.com', '01679323388', 5465768, 'Managing Director', 'Admin', 'asdfasdfasdf', 'asfasdfasasfd', 10, '2020-12-28 00:00:00', 'public/frontend/staffimages/1688524449447422.jpg', 1, '2021-01-08 11:10:27', '2021-01-10 18:13:20'),
(3, '21010003', 'Md Zahid Hassan', 'zahidulislam0173@gmail.com', '01679323388', 4345345, 'HR', 'Accountant', 'Naipur', 'Horicandrapur', 19500, '2021-01-05 00:00:00', 'public/frontend/staffimages/1688524216939725.jpg', 1, '2021-01-08 11:12:38', '2021-01-10 18:09:38'),
(6, '21010005', 'Md Ziaul Hoque', 'ziaul@gmail.com', '01749301845', 54879635, 'Managing Director', 'Accountant', 'Nai kano', 'Debo', 10000, '2020-09-01 00:00:00', 'frontend/staffimages/1688339856762820.png', 1, '2021-01-08 11:19:18', '2021-01-08 11:19:18'),
(8, '20142040', 'Md Zahid Hassan', 'zahidulislam0173@gmail.com', '01679323388', 4345345, 'HR', 'Accountant', 'asdf', 'asdf', 19500, '2021-01-05 00:00:00', 'public/frontend/staffimages/1688523974995129.jpg', 1, '2021-01-10 17:49:26', '2021-01-10 18:05:47'),
(9, '21010002', 'Md Zahid Hassan', 'zahidulislam0173@gmail.com', '01679323388', 44, 'HR', 'Admin', 'asdf', 'asf', 131, '2020-12-28 00:00:00', 'public/frontend/staffimages/1688523921444051.jpg', 1, '2021-01-10 18:04:56', '2021-01-10 18:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `stalls`
--

CREATE TABLE `stalls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stall_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_availity` int(11) NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stalls`
--

INSERT INTO `stalls` (`id`, `stall_no`, `details`, `max_availity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Stall-01', 'Best', 4, NULL, '2021-01-08 00:29:01', '2021-01-08 00:29:01'),
(2, 'Stall-02', 'Good', 10, NULL, '2021-01-08 00:26:25', '2021-01-09 20:23:55'),
(3, 'Stall-03', 'Average', 10, NULL, '2021-01-08 00:26:33', '2021-01-08 00:26:33'),
(4, 'Stall-04', 'Best', 4, NULL, '2021-01-08 00:26:47', '2021-01-08 00:27:02'),
(5, 'Stall-05', 'Average', 10, NULL, '2021-01-08 00:28:36', '2021-01-11 12:50:42'),
(7, 'Stall-06', 'Best', 10, NULL, '2021-01-11 12:51:07', '2021-01-11 12:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) NOT NULL,
  `supplier_name` varchar(100) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_name`, `company_name`, `phone_number`, `email`, `address`, `status`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Rokibul Islam', 'Rokibul', '01679323388', 'rokibul@islam.com', 'dhaka', '1', 'public/frontend/images/supplier/1688593905259990.jpg', '2021-01-11 12:37:18', '2021-01-11 12:37:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menus`
--

CREATE TABLE `tbl_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bangla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `is_parent` tinyint(4) NOT NULL DEFAULT 0,
  `parent_id` tinyint(4) NOT NULL,
  `child_status` tinyint(4) NOT NULL DEFAULT 0,
  `menu_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_menus`
--

INSERT INTO `tbl_menus` (`id`, `name`, `name_bangla`, `route`, `is_parent`, `parent_id`, `child_status`, `menu_icon`, `valid`, `created_at`, `updated_at`) VALUES
(1, 'Human Resource', 'মানব সম্পদ', 'javascript:;', 0, 0, 1, 'fa-codiepie', 1, NULL, NULL),
(2, 'Add Staff', 'কর্মী যোগ', 'staff/create', 1, 1, 0, 'fa-angle-double-right', 1, NULL, NULL),
(3, 'User', 'ব্যবহারকারী', 'users', 0, 0, 0, 'fa-male', 1, NULL, NULL),
(4, 'Staff List', 'কর্মীর তালিকা', 'staff', 1, 1, 0, 'fa-angle-double-right', 1, NULL, NULL),
(5, 'aaaaaaaaaa', 'aaaaaaaaaaa', 'aaaaaaaaa', 0, 0, 0, 'fa-angle-double-right', 1, NULL, NULL),
(6, 'Employee Salary', 'কর্মচারীর বেতন', 'employeesalary', 1, 1, 0, 'fa-angle-double-right', 1, NULL, NULL),
(7, 'Milk Parlor', 'দুধের পার্লার', 'javascript:;', 0, 0, 1, 'fa-bed', 1, NULL, NULL),
(8, 'Collect Milk', 'দুধ দহন', 'milkparlor', 1, 7, 0, 'fa-angle-double-right', 1, NULL, NULL),
(9, 'Sale Milk', 'দুধ বিক্রি', 'salemilklist', 1, 7, 0, 'fa-angle-double-right', 1, NULL, NULL),
(10, 'Sale Due Collection', 'ডিউ কালেকশন', 'duecollection', 1, 7, 0, 'fa-angle-double-right', 1, NULL, NULL),
(11, 'Cows Feed', 'গরুর খাদ্য', 'cowsfeed', 0, 0, 1, 'fa-ge', 1, NULL, NULL),
(13, 'Cow Monitor', 'গরু নিরীক্ষণ', 'javascript:;', 0, 0, 1, 'fa-hospital-o', 1, NULL, NULL),
(14, 'Routine Monitor', 'রুটিন পর্যবেক্ষণ', 'routinemonitor', 1, 13, 0, 'fa-angle-double-right', 1, NULL, NULL),
(15, 'Animal Pregnancy', 'প্রাণীর গর্ভাবস্থায়', 'managecowpregnancy', 1, 13, 0, 'fa-angle-double-right', 1, NULL, NULL),
(16, 'Cow Sale', 'গরু বিক্রি', 'javascript:;', 0, 0, 1, 'fa-money', 1, NULL, NULL),
(18, 'Sale List', 'বিক্রয়ের তালিকা', 'cowsale', 1, 16, 0, 'fa-angle-double-right', 1, NULL, NULL),
(19, 'Transaction Entry', 'লেনদেন লিপিবদ্ধকরণ', 'transactionentry', 1, 16, 0, 'fa-angle-double-right', 1, NULL, NULL),
(20, 'Farm Expenses', 'প্রতিষ্ঠানের খরচ', 'javascript:;', 0, 0, 1, 'fa-cc', 1, NULL, NULL),
(21, 'Expense List', 'খরচের তালিকা', 'expense', 1, 20, 0, 'fa-angle-double-right', 1, NULL, NULL),
(22, 'Expense Purpose', 'খরচের উদ্দেশ্য', 'expensepurpose', 1, 20, 0, 'fa-angle-double-right', 1, NULL, NULL),
(23, 'Suppliers', 'সরবরাহকারী', 'supplier', 0, 0, 1, 'fa-plus-square', 1, NULL, NULL),
(24, 'Manage Cow', 'গরু পরিচালনা', 'cow', 0, 0, 1, '', 1, NULL, NULL),
(25, 'Manage Cow Calf', 'গরুর বাচ্চা পরিচালনা', 'cowcalf', 0, 0, 1, '', 1, NULL, NULL),
(26, 'Manage Stall', 'ম্যানেজ পরিচালনা', 'stall', 0, 0, 1, 'fa-home', 1, NULL, NULL),
(27, 'Catalog', 'ক্যাটালগ', 'javascript:;', 0, 0, 1, 'fa-th', 1, NULL, NULL),
(28, 'User Type', 'ব্যবহারকারীর ধরন', 'usertype', 1, 27, 0, 'fa-angle-double-right', 1, NULL, NULL),
(33, 'Reports', 'প্রতিবেদন', 'javascript:;', 0, 0, 1, '', 1, NULL, NULL),
(36, 'Designation', 'পদবী', 'designation', 1, 27, 0, 'fa-angle-double-right', 1, NULL, NULL),
(37, 'Colors', 'রং', 'colors', 1, 27, 0, 'fa-angle-double-right', 1, NULL, NULL),
(38, 'Animal Types', 'প্রাণীর প্রকারভেদ', 'animaltype', 1, 27, 0, 'fa-angle-double-right', 1, NULL, NULL),
(39, 'Food Unit', 'খাদ্যের একক', 'foodunit', 1, 27, 0, 'fa-angle-double-right', 1, NULL, NULL),
(40, 'Food Item', 'খাবারের মেনু', 'fooditem', 1, 27, 0, 'fa-angle-double-right', 1, NULL, NULL),
(41, 'Monitoring Service', 'পর্যবেক্ষণ', 'monitoringservice', 1, 27, 0, 'fa-angle-double-right', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu_accesses`
--

CREATE TABLE `tbl_menu_accesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `quick_menu` tinyint(4) NOT NULL DEFAULT 0,
  `quick_menu_sl` tinyint(4) NOT NULL DEFAULT 0,
  `parent_menu` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_menu_accesses`
--

INSERT INTO `tbl_menu_accesses` (`id`, `user_id`, `menu_id`, `quick_menu`, `quick_menu_sl`, `parent_menu`, `created_at`, `updated_at`) VALUES
(182, 1, 1, 0, 0, 1, '2020-12-30 07:11:26', '2020-12-30 07:11:26'),
(183, 1, 2, 0, 0, 1, '2020-12-30 07:11:26', '2020-12-30 07:11:26'),
(184, 1, 4, 0, 0, 1, '2020-12-30 07:11:26', '2020-12-30 07:11:26'),
(185, 1, 5, 0, 0, 1, '2020-12-30 07:11:26', '2020-12-30 07:11:26'),
(186, 1, 6, 0, 0, 1, '2020-12-30 07:11:26', '2020-12-30 07:11:26'),
(187, 1, 7, 0, 0, 1, '2020-12-30 07:11:26', '2020-12-30 07:11:26'),
(188, 1, 8, 0, 0, 1, '2020-12-30 07:11:26', '2020-12-30 07:11:26'),
(189, 1, 3, 0, 0, 3, '2020-12-30 07:11:26', '2020-12-30 07:11:26'),
(190, 1, 9, 0, 0, 9, '2020-12-30 07:11:26', '2020-12-30 07:11:26'),
(191, 1, 10, 0, 0, 9, '2020-12-30 07:11:26', '2020-12-30 07:11:26'),
(192, 1, 11, 0, 0, 9, '2020-12-30 07:11:26', '2020-12-30 07:11:26'),
(193, 1, 13, 0, 0, 13, '2020-12-30 07:11:26', '2020-12-30 07:11:26'),
(194, 1, 14, 0, 0, 13, '2020-12-30 07:11:26', '2020-12-30 07:11:26'),
(195, 1, 15, 0, 0, 15, '2020-12-30 07:11:26', '2020-12-30 07:11:26'),
(1012, 15, 1, 1, 6, 1, '2021-01-11 15:35:22', '2021-01-11 15:35:22'),
(1013, 15, 2, 0, 0, 1, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1014, 15, 4, 0, 0, 1, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1015, 15, 6, 0, 0, 1, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1016, 15, 3, 0, 0, 3, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1017, 15, 7, 0, 0, 7, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1018, 15, 8, 0, 0, 7, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1019, 15, 9, 0, 0, 7, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1020, 15, 10, 0, 0, 7, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1021, 15, 11, 0, 0, 11, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1022, 15, 13, 0, 0, 13, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1023, 15, 14, 0, 0, 13, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1024, 15, 15, 0, 0, 13, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1025, 15, 16, 0, 0, 16, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1026, 15, 18, 0, 0, 16, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1027, 15, 19, 0, 0, 16, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1028, 15, 20, 0, 0, 20, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1029, 15, 21, 0, 0, 20, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1030, 15, 22, 0, 0, 20, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1031, 15, 23, 0, 0, 23, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1032, 15, 24, 0, 0, 24, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1033, 15, 25, 0, 0, 25, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1034, 15, 26, 0, 0, 26, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1035, 15, 27, 0, 0, 27, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1036, 15, 28, 0, 0, 27, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1037, 15, 36, 0, 0, 27, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1038, 15, 37, 0, 0, 27, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1039, 15, 38, 0, 0, 27, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1040, 15, 39, 0, 0, 27, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1041, 15, 40, 0, 0, 27, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1042, 15, 41, 0, 0, 27, '2021-01-11 15:35:23', '2021-01-11 15:35:23'),
(1043, 15, 33, 0, 0, 33, '2021-01-11 15:35:23', '2021-01-11 15:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trDate` datetime NOT NULL,
  `VRType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acCode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `narration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `debit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subTrNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contraCode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logDetails` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donerId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donationDuration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donertype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postingFrom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `trNo`, `trDate`, `VRType`, `acCode`, `acName`, `refNo`, `narration`, `debit`, `credit`, `subTrNo`, `contraCode`, `valid`, `userName`, `logDetails`, `donerId`, `donationDuration`, `donertype`, `remarks`, `postingFrom`, `created_at`, `updated_at`) VALUES
(1, '20120000', '2020-12-22 00:00:00', 'CV', '2106010001', 'Receive Against Donation', '001', 'Receive With Thanks From Md Zahid Hassan ( 0000 ) Aganinst HalfYearly', '0', '100', '20120001', '2102010001', '1', 'Md Zahid Hassan', 'Md Zahid Hassan 2020-Dec-22 05:37:36', '1', 'HalfYearly', 'General', 'N/A', 'Monery Receipt', '2020-12-21 23:37:37', '2020-12-21 23:37:37'),
(2, '20120000', '2020-12-22 00:00:00', 'CV', '2106010001', 'Receive Against Donation', '001', 'Receive With Thanks From Md Zahid Hassan ( 0000 ) Aganinst HalfYearly', '100', '0', '20120001', '2102010001', '1', 'Md Zahid Hassan', 'Md Zahid Hassan 2020-Dec-22 05:37:36', '1', 'HalfYearly', 'General', 'N/A', 'Monery Receipt', '2020-12-21 23:37:37', '2020-12-21 23:37:37'),
(3, '20120002', '2020-12-22 00:00:00', 'CV', '1010101011', 'Net Bill', '01', 'for net bill From 2020-Dec-22 05:40:06', '100', '0', '20120003', '2100000001', '1', 'Admin', '0002', '1', '', '', 'N/A', 'Transaction', '2020-12-21 23:40:06', '2020-12-21 23:40:06'),
(4, '20120002', '2020-12-22 00:00:00', 'CV', '1010101011', 'Net Bill', '01', 'for net bill From 2020-Dec-22 05:40:06', '0', '100', '20120003', '2100000001', '1', 'Admin', '0002', '1', '', '', 'N/A', 'Transaction', '2020-12-21 23:40:06', '2020-12-21 23:40:06'),
(5, '20120002', '2020-12-22 00:00:00', 'CV', '1231231231', 'Phone Bill', '01', 'for phone bill From 2020-Dec-22 05:40:06', '100', '0', '20120003', '2100000001', '1', 'Admin', '0002', '1', '', '', 'N/A', 'Transaction', '2020-12-21 23:40:06', '2020-12-21 23:40:06'),
(6, '20120002', '2020-12-22 00:00:00', 'CV', '1231231231', 'Phone Bill', '01', 'for phone bill From 2020-Dec-22 05:40:06', '0', '100', '20120003', '2100000001', '1', 'Admin', '0002', '1', '', '', 'N/A', 'Transaction', '2020-12-21 23:40:06', '2020-12-21 23:40:06'),
(7, '20120006', '2020-12-22 00:00:00', 'CV', '1010101011', 'Net Bill', '01', 'asfasdf From 2020-Dec-22 06:55:58', '100', '0', '20120007', '2100000001', '1', 'Admin', '0002', '1', '', '', 'N/A', 'Transaction', '2020-12-22 00:55:59', '2020-12-22 00:55:59'),
(8, '20120006', '2020-12-22 00:00:00', 'CV', '1010101011', 'Net Bill', '01', 'asfasdf From 2020-Dec-22 06:55:58', '0', '100', '20120007', '2100000001', '1', 'Admin', '0002', '1', '', '', 'N/A', 'Transaction', '2020-12-22 00:55:59', '2020-12-22 00:55:59'),
(9, '20120007', '2020-12-23 00:00:00', 'CV', '1010101011', 'Net Bill', '1234', 'asdfsadfsdf From 2020-Dec-23 11:11:44', '1000', '0', '20120008', '2100000001', '1', 'Admin', '0002', '1', '', '', 'N/A', 'Transaction', '2020-12-23 05:11:45', '2020-12-23 05:11:45'),
(10, '20120007', '2020-12-23 00:00:00', 'CV', '1010101011', 'Net Bill', '1234', 'asdfsadfsdf From 2020-Dec-23 11:11:44', '0', '1000', '20120008', '2100000001', '1', 'Admin', '0002', '1', '', '', 'N/A', 'Transaction', '2020-12-23 05:11:45', '2020-12-23 05:11:45'),
(11, '20120008', '2020-12-23 00:00:00', 'CV', '2100000001', 'Cash in hand', '01', 'asdfasdf From 2020-Dec-23 11:15:44', '50', '0', '20120009', '2100000001', '1', 'Admin', '0002', '1', '', '', 'N/A', 'Transaction', '2020-12-23 05:15:45', '2020-12-23 05:15:45'),
(12, '20120008', '2020-12-23 00:00:00', 'CV', '2100000001', 'Cash in hand', '01', 'asdfasdf From 2020-Dec-23 11:15:44', '0', '50', '20120009', '2100000001', '1', 'Admin', '0002', '1', '', '', 'N/A', 'Transaction', '2020-12-23 05:15:45', '2020-12-23 05:15:45'),
(13, '20120008', '2020-12-23 00:00:00', 'CV', '1010101011', 'Net Bill', '01', 'asdras From 2020-Dec-23 11:15:44', '10', '0', '20120009', '2100000001', '1', 'Admin', '0002', '1', '', '', 'N/A', 'Transaction', '2020-12-23 05:15:45', '2020-12-23 05:15:45'),
(14, '20120008', '2020-12-23 00:00:00', 'CV', '1010101011', 'Net Bill', '01', 'asdras From 2020-Dec-23 11:15:44', '0', '10', '20120009', '2100000001', '1', 'Admin', '0002', '1', '', '', 'N/A', 'Transaction', '2020-12-23 05:15:45', '2020-12-23 05:15:45'),
(15, '20120014', '2020-12-29 00:00:00', 'CV', '2106010001', 'Receive Against Donation', '001', 'Receive With Thanks From Md Ziaul Hoque ( 20120005 ) Aganinst Monthly', '0', '500', '20120015', '2102010001', '1', 'Md Ziaul Hoque', 'Md Ziaul Hoque 2020-Dec-29 04:57:12', '1', 'Monthly', 'General', 'N/A', 'Monery Receipt', '2020-12-28 22:57:12', '2020-12-28 22:57:12'),
(16, '20120014', '2020-12-29 00:00:00', 'CV', '2106010001', 'Receive Against Donation', '001', 'Receive With Thanks From Md Ziaul Hoque ( 20120005 ) Aganinst Monthly', '500', '0', '20120015', '2102010001', '1', 'Md Ziaul Hoque', 'Md Ziaul Hoque 2020-Dec-29 04:57:12', '1', 'Monthly', 'General', 'N/A', 'Monery Receipt', '2020-12-28 22:57:12', '2020-12-28 22:57:12'),
(17, '20120016', '2020-12-29 00:00:00', 'CV', '2106010001', 'Receive Against Donation', '001', 'Receive With Thanks From Md Zahid Hassan ( 20120004 ) Aganinst HalfYearly', '0', '53.5', '20120017', '2102010001', '1', 'Md Zahid Hassan', 'Md Zahid Hassan 2020-Dec-29 11:03:19', '1', 'HalfYearly', 'Khadem', 'N/A', 'Monery Receipt', '2020-12-29 05:03:20', '2020-12-29 05:03:20'),
(18, '20120016', '2020-12-29 00:00:00', 'CV', '2106010001', 'Receive Against Donation', '001', 'Receive With Thanks From Md Zahid Hassan ( 20120004 ) Aganinst HalfYearly', '53.5', '0', '20120017', '2102010001', '1', 'Md Zahid Hassan', 'Md Zahid Hassan 2020-Dec-29 11:03:19', '1', 'HalfYearly', 'Khadem', 'N/A', 'Monery Receipt', '2020-12-29 05:03:20', '2020-12-29 05:03:20'),
(19, '20120018', '2020-12-29 00:00:00', 'CV', '2106010001', 'Receive Against Donation', '001', 'Receive With Thanks From Md Rokibul Islam ( 20120007 ) Aganinst Quaterly', '0', '5000', '20120019', '2102010001', '1', 'Md Rokibul Islam', 'Md Rokibul Islam 2020-Dec-29 11:15:42', '1', 'Quaterly', 'Khadem', 'N/A', 'Monery Receipt', '2020-12-29 05:15:42', '2020-12-29 05:15:42'),
(20, '20120018', '2020-12-29 00:00:00', 'CV', '2106010001', 'Receive Against Donation', '001', 'Receive With Thanks From Md Rokibul Islam ( 20120007 ) Aganinst Quaterly', '5000', '0', '20120019', '2102010001', '1', 'Md Rokibul Islam', 'Md Rokibul Islam 2020-Dec-29 11:15:42', '1', 'Quaterly', 'Khadem', 'N/A', 'Monery Receipt', '2020-12-29 05:15:42', '2020-12-29 05:15:42'),
(21, '20120019', '2020-12-29 00:00:00', 'CV', '2100000001', 'Cash in hand', '01', 'asdf From 2020-Dec-29 11:31:17', '50', '0', '20120020', '2100000001', '1', 'Admin', '0002', '1', '', '', 'asdfasdf', 'Transaction', '2020-12-29 05:31:17', '2020-12-29 05:31:17'),
(22, '20120019', '2020-12-29 00:00:00', 'CV', '2100000001', 'Cash in hand', '01', 'asdf From 2020-Dec-29 11:31:17', '0', '50', '20120020', '2100000001', '1', 'Admin', '0002', '1', '', '', 'asdfasdf', 'Transaction', '2020-12-29 05:31:17', '2020-12-29 05:31:17'),
(23, '20120020', '2020-12-29 00:00:00', 'CV', '1231231231', 'Phone Bill', '503', 'phone no. 01774439535 for the month december From 2020-Dec-29 12:02:09', '700', '0', '20120021', '2100000001', '1', 'Admin', '02', '1', '', '', 'Paid by cash', 'Transaction', '2020-12-29 06:02:09', '2020-12-29 06:02:09'),
(24, '20120020', '2020-12-29 00:00:00', 'CV', '1231231231', 'Phone Bill', '503', 'phone no. 01774439535 for the month december From 2020-Dec-29 12:02:09', '0', '700', '20120021', '2100000001', '1', 'Admin', '02', '1', '', '', 'Paid by cash', 'Transaction', '2020-12-29 06:02:09', '2020-12-29 06:02:09'),
(25, '20120020', '2020-12-29 00:00:00', 'CV', '1010101011', 'Net Bill', '503', 'for the month january 2020 From 2020-Dec-29 12:02:09', '1000', '0', '20120021', '2100000001', '1', 'Admin', '0002', '1', '', '', 'Paid by cash', 'Transaction', '2020-12-29 06:02:09', '2020-12-29 06:02:09'),
(26, '20120020', '2020-12-29 00:00:00', 'CV', '1010101011', 'Net Bill', '503', 'for the month january 2020 From 2020-Dec-29 12:02:09', '0', '1000', '20120021', '2100000001', '1', 'Admin', '0002', '1', '', '', 'Paid by cash', 'Transaction', '2020-12-29 06:02:09', '2020-12-29 06:02:09'),
(27, '20120021', '2020-12-29 00:00:00', 'BV', '2100000001', 'Cash in hand', '506', 'with draw from bank From 2020-Dec-29 12:05:39', '10000', '0', '20120022', '1000000001', '1', 'Admin', '02', '1', '', '', 'Manual Adjust', 'Transaction', '2020-12-29 06:05:39', '2020-12-29 06:05:39'),
(28, '20120021', '2020-12-29 00:00:00', 'BV', '2100000001', 'Cash in hand', '506', 'with draw from bank From 2020-Dec-29 12:05:39', '0', '10000', '20120022', '1000000001', '1', 'Admin', '02', '1', '', '', 'Manual Adjust', 'Transaction', '2020-12-29 06:05:39', '2020-12-29 06:05:39'),
(29, '20120021', '2020-12-29 00:00:00', 'BV', '1231231231', 'Phone Bill', '506', 'for the month january From 2020-Dec-29 12:05:39', '1000', '0', '20120022', '1000000001', '1', 'Admin', '0002', '1', '', '', 'Manual Adjust', 'Transaction', '2020-12-29 06:05:39', '2020-12-29 06:05:39'),
(30, '20120021', '2020-12-29 00:00:00', 'BV', '1231231231', 'Phone Bill', '506', 'for the month january From 2020-Dec-29 12:05:39', '0', '1000', '20120022', '1000000001', '1', 'Admin', '0002', '1', '', '', 'Manual Adjust', 'Transaction', '2020-12-29 06:05:39', '2020-12-29 06:05:39'),
(31, '20120030', '2020-12-30 00:00:00', 'CV', '2106010001', 'Receive Against Donation', '010', 'Receive With Thanks From Md Zahid Hassan ( 20120004 ) Aganinst HalfYearly', '0', '1000', '20120031', '2102010001', '1', 'Md Zahid Hassan', 'Md Zahid Hassan 2020-Dec-30 14:33:02', '1', 'HalfYearly', 'Khadem', 'N/A', 'Monery Receipt', '2020-12-30 08:33:02', '2020-12-30 08:33:02'),
(32, '20120030', '2020-12-30 00:00:00', 'CV', '2106010001', 'Receive Against Donation', '010', 'Receive With Thanks From Md Zahid Hassan ( 20120004 ) Aganinst HalfYearly', '1000', '0', '20120031', '2102010001', '1', 'Md Zahid Hassan', 'Md Zahid Hassan 2020-Dec-30 14:33:02', '1', 'HalfYearly', 'Khadem', 'N/A', 'Monery Receipt', '2020-12-30 08:33:02', '2020-12-30 08:33:02'),
(33, '20120031', '2020-12-30 00:00:00', 'CV', '1010101011', 'Net Bill', '012', 'For the month of July From 2020-Dec-30 14:58:38', '1000', '0', '20120032', '2100000001', '1', 'Admin', '02', '1', '', '', 'nai', 'Transaction', '2020-12-30 08:58:38', '2020-12-30 08:58:38'),
(34, '20120031', '2020-12-30 00:00:00', 'CV', '1010101011', 'Net Bill', '012', 'For the month of July From 2020-Dec-30 14:58:38', '0', '1000', '20120032', '2100000001', '1', 'Admin', '02', '1', '', '', 'nai', 'Transaction', '2020-12-30 08:58:38', '2020-12-30 08:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime NOT NULL DEFAULT current_timestamp(),
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `email_verified_at`, `password`, `last_login`, `designation`, `valid`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'romi', 'Md. Romiul Islam', 'romimitu@gmail.com', NULL, '$2y$10$S.Wkl5GRKSQGNuA4SskAQej8vXeyxj6wVZ5PJmn71KrXn34.yPFKu', '2020-12-30 13:47:29', 'Admin', 1, NULL, '2020-08-31 08:19:29', '2020-12-30 07:47:29'),
(15, 'zahid', 'Md Zahidul Islam', 'zahidulislam016@gmail.com', NULL, '$2y$10$leRSHwGDbm9SXJY1y011MOIRB7WTAqscn/p0CYx2XU1mDgpMszUzO', '2021-01-12 00:18:07', 'Admin', 1, NULL, '2020-12-30 07:46:26', '2021-01-11 18:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` varchar(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '1', '2021-01-08 09:54:19', '2021-01-08 09:54:19'),
(2, 'Accountant', '1', '2021-01-08 09:54:33', '2021-01-08 09:58:04'),
(4, 'Executive', '1', '2021-01-08 09:59:42', '2021-01-11 12:28:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal_types`
--
ALTER TABLE `animal_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `canteenmealtype`
--
ALTER TABLE `canteenmealtype`
  ADD PRIMARY KEY (`Slno`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cows`
--
ALTER TABLE `cows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cows_feed`
--
ALTER TABLE `cows_feed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cow_calfs`
--
ALTER TABLE `cow_calfs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cow_images`
--
ALTER TABLE `cow_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cow_sales`
--
ALTER TABLE `cow_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expens_purposes`
--
ALTER TABLE `expens_purposes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_units`
--
ALTER TABLE `food_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indoorbillgroupinfo`
--
ALTER TABLE `indoorbillgroupinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_cow_pregnancy`
--
ALTER TABLE `manage_cow_pregnancy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milkparlors`
--
ALTER TABLE `milkparlors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milk_ledger`
--
ALTER TABLE `milk_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitoring_services`
--
ALTER TABLE `monitoring_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passworddetails`
--
ALTER TABLE `passworddetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `routine_monitor`
--
ALTER TABLE `routine_monitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salemilk`
--
ALTER TABLE `salemilk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_ledger`
--
ALTER TABLE `sales_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stalls`
--
ALTER TABLE `stalls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menus`
--
ALTER TABLE `tbl_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_menus_name_unique` (`name`);

--
-- Indexes for table `tbl_menu_accesses`
--
ALTER TABLE `tbl_menu_accesses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_menu_accesses_user_id_foreign` (`user_id`),
  ADD KEY `tbl_menu_accesses_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animal_types`
--
ALTER TABLE `animal_types`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cows`
--
ALTER TABLE `cows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cows_feed`
--
ALTER TABLE `cows_feed`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cow_calfs`
--
ALTER TABLE `cow_calfs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cow_images`
--
ALTER TABLE `cow_images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cow_sales`
--
ALTER TABLE `cow_sales`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_salary`
--
ALTER TABLE `employee_salary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expens_purposes`
--
ALTER TABLE `expens_purposes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `food_units`
--
ALTER TABLE `food_units`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `indoorbillgroupinfo`
--
ALTER TABLE `indoorbillgroupinfo`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `manage_cow_pregnancy`
--
ALTER TABLE `manage_cow_pregnancy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `milkparlors`
--
ALTER TABLE `milkparlors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `milk_ledger`
--
ALTER TABLE `milk_ledger`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `monitoring_services`
--
ALTER TABLE `monitoring_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `passworddetails`
--
ALTER TABLE `passworddetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `routine_monitor`
--
ALTER TABLE `routine_monitor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salemilk`
--
ALTER TABLE `salemilk`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_ledger`
--
ALTER TABLE `sales_ledger`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stalls`
--
ALTER TABLE `stalls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_menus`
--
ALTER TABLE `tbl_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_menu_accesses`
--
ALTER TABLE `tbl_menu_accesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1044;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_menu_accesses`
--
ALTER TABLE `tbl_menu_accesses`
  ADD CONSTRAINT `tbl_menu_accesses_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `tbl_menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_menu_accesses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
