-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2023 at 01:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amriapk`
--

-- --------------------------------------------------------

--
-- Table structure for table `alfas`
--

CREATE TABLE `alfas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alfa` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alfas`
--

INSERT INTO `alfas` (`id`, `alfa`, `created_at`, `updated_at`) VALUES
(1, 0.30, '2023-12-26 04:45:51', '2023-12-26 04:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `bukets`
--

CREATE TABLE `bukets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buket` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bukets`
--

INSERT INTO `bukets` (`id`, `buket`, `created_at`, `updated_at`) VALUES
(1, 'Bunga', NULL, NULL),
(2, 'Uang', NULL, NULL),
(3, 'Balon', NULL, NULL),
(4, 'Snack', NULL, NULL),
(5, 'Boneka', NULL, '2023-12-04 11:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `bulans`
--

CREATE TABLE `bulans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bulans`
--

INSERT INTO `bulans` (`id`, `bulan`, `created_at`, `updated_at`) VALUES
(1, 'Januari', NULL, NULL),
(2, 'Februari', NULL, NULL),
(3, 'Maret', NULL, NULL),
(4, 'April', NULL, NULL),
(5, 'Mei', NULL, NULL),
(6, 'Juni', NULL, NULL),
(7, 'Juli', NULL, NULL),
(8, 'Agustus', NULL, NULL),
(9, 'September', NULL, NULL),
(10, 'Oktober', NULL, NULL),
(11, 'November', NULL, NULL),
(12, 'Desember', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dtpertahuns`
--

CREATE TABLE `dtpertahuns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_id` int(11) NOT NULL,
  `balon` int(11) NOT NULL,
  `boneka` int(11) NOT NULL,
  `bunga` int(11) NOT NULL,
  `snack` int(11) NOT NULL,
  `uang` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dtpertahuns`
--

INSERT INTO `dtpertahuns` (`id`, `tahun_id`, `balon`, `boneka`, `bunga`, `snack`, `uang`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 237, 194, 0, 0, 431, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(2, 2, 0, 334, 366, 294, 0, 994, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(3, 3, 257, 367, 498, 481, 0, 1603, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(4, 4, 236, 233, 311, 345, 192, 1317, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(5, 5, 230, 273, 294, 319, 252, 1368, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(6, 6, 427, 477, 525, 560, 478, 2467, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(7, 7, 331, 455, 599, 675, 484, 2544, '2023-12-26 04:45:51', '2023-12-26 04:45:51');

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
-- Table structure for table `forecastingbalons`
--

CREATE TABLE `forecastingbalons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `balon` int(11) NOT NULL,
  `smooth1` double(8,2) NOT NULL,
  `smooth2` double(8,2) NOT NULL,
  `konstanta` double(8,2) NOT NULL,
  `slope` double(8,2) NOT NULL,
  `forecasting` double(8,2) NOT NULL,
  `error` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forecastingbalons`
--

INSERT INTO `forecastingbalons` (`id`, `tahun`, `balon`, `smooth1`, `smooth2`, `konstanta`, `slope`, `forecasting`, `error`, `created_at`, `updated_at`) VALUES
(1, 2019, 257, 257.00, 257.00, 0.00, 0.00, 0.00, 0.00, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(2, 2020, 236, 250.70, 255.11, 246.29, -1.89, 0.00, 0.00, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(3, 2021, 230, 244.49, 251.92, 237.06, -3.19, 244.40, -0.06, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(4, 2022, 427, 299.24, 266.12, 332.37, 14.20, 233.87, 0.45, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(5, 2023, 331, 308.77, 278.91, 338.62, 12.79, 346.57, -0.05, '2023-12-26 04:45:51', '2023-12-26 04:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `forecastingbonekas`
--

CREATE TABLE `forecastingbonekas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `boneka` int(11) NOT NULL,
  `smooth1` double(8,2) NOT NULL,
  `smooth2` double(8,2) NOT NULL,
  `konstanta` double(8,2) NOT NULL,
  `slope` double(8,2) NOT NULL,
  `forecasting` double(8,2) NOT NULL,
  `error` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forecastingbonekas`
--

INSERT INTO `forecastingbonekas` (`id`, `tahun`, `boneka`, `smooth1`, `smooth2`, `konstanta`, `slope`, `forecasting`, `error`, `created_at`, `updated_at`) VALUES
(1, 2017, 237, 237.00, 237.00, 0.00, 0.00, 0.00, 0.00, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(2, 2018, 334, 266.10, 245.73, 286.47, 8.73, 0.00, 0.00, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(3, 2019, 367, 296.37, 260.92, 331.82, 15.19, 295.20, 0.20, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(4, 2020, 233, 277.36, 265.85, 288.87, 4.93, 347.01, -0.49, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(5, 2021, 273, 276.05, 268.91, 283.19, 3.06, 293.80, -0.08, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(6, 2022, 477, 336.33, 289.14, 383.53, 20.23, 286.25, 0.40, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(7, 2023, 455, 371.93, 313.98, 429.88, 24.84, 403.76, 0.11, '2023-12-26 04:45:52', '2023-12-26 04:45:52');

-- --------------------------------------------------------

--
-- Table structure for table `forecastingbungas`
--

CREATE TABLE `forecastingbungas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `bunga` int(11) NOT NULL,
  `smooth1` double(8,2) NOT NULL,
  `smooth2` double(8,2) NOT NULL,
  `konstanta` double(8,2) NOT NULL,
  `slope` double(8,2) NOT NULL,
  `forecasting` double(8,2) NOT NULL,
  `error` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forecastingbungas`
--

INSERT INTO `forecastingbungas` (`id`, `tahun`, `bunga`, `smooth1`, `smooth2`, `konstanta`, `slope`, `forecasting`, `error`, `created_at`, `updated_at`) VALUES
(1, 2017, 194, 194.00, 194.00, 0.00, 0.00, 0.00, 0.00, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(2, 2018, 366, 245.60, 209.48, 281.72, 15.48, 0.00, 0.00, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(3, 2019, 498, 321.32, 243.03, 399.61, 33.55, 297.20, 0.40, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(4, 2020, 311, 318.22, 265.59, 370.86, 22.56, 433.16, -0.39, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(5, 2021, 294, 310.95, 279.20, 342.71, 13.61, 393.42, -0.34, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(6, 2022, 525, 375.17, 307.99, 442.34, 28.79, 356.32, 0.32, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(7, 2023, 599, 442.32, 348.29, 536.35, 40.30, 471.13, 0.21, '2023-12-26 04:45:52', '2023-12-26 04:45:52');

-- --------------------------------------------------------

--
-- Table structure for table `forecastingsnacks`
--

CREATE TABLE `forecastingsnacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `snack` int(11) NOT NULL,
  `smooth1` double(8,2) NOT NULL,
  `smooth2` double(8,2) NOT NULL,
  `konstanta` double(8,2) NOT NULL,
  `slope` double(8,2) NOT NULL,
  `forecasting` double(8,2) NOT NULL,
  `error` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forecastingsnacks`
--

INSERT INTO `forecastingsnacks` (`id`, `tahun`, `snack`, `smooth1`, `smooth2`, `konstanta`, `slope`, `forecasting`, `error`, `created_at`, `updated_at`) VALUES
(1, 2018, 294, 294.00, 294.00, 0.00, 0.00, 0.00, 0.00, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(2, 2019, 481, 350.10, 310.83, 389.37, 16.83, 0.00, 0.00, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(3, 2020, 345, 348.57, 322.15, 374.99, 11.32, 406.20, -0.18, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(4, 2021, 319, 339.70, 327.41, 351.98, 5.26, 386.31, -0.21, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(5, 2022, 560, 405.79, 350.92, 460.66, 23.51, 357.24, 0.36, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(6, 2023, 675, 486.55, 391.61, 581.50, 40.69, 484.17, 0.28, '2023-12-26 04:45:52', '2023-12-26 04:45:52');

-- --------------------------------------------------------

--
-- Table structure for table `forecastingtotals`
--

CREATE TABLE `forecastingtotals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `smooth1` double(8,2) NOT NULL,
  `smooth2` double(8,2) NOT NULL,
  `konstanta` double(8,2) NOT NULL,
  `slope` double(8,2) NOT NULL,
  `forecasting` double(8,2) NOT NULL,
  `error` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forecastingtotals`
--

INSERT INTO `forecastingtotals` (`id`, `tahun`, `total`, `smooth1`, `smooth2`, `konstanta`, `slope`, `forecasting`, `error`, `created_at`, `updated_at`) VALUES
(1, 2017, 431, 431.00, 431.00, 0.00, 0.00, 0.00, 0.00, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(2, 2018, 994, 599.90, 481.67, 718.13, 50.67, 0.00, 0.00, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(3, 2019, 1603, 900.83, 607.42, 1194.24, 125.75, 768.80, 0.52, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(4, 2020, 1317, 1025.68, 732.90, 1318.46, 125.48, 1319.99, 0.00, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(5, 2021, 1368, 1128.38, 851.54, 1405.21, 118.64, 1443.94, -0.06, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(6, 2022, 2467, 1529.97, 1055.07, 2004.86, 203.53, 1523.85, 0.38, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(7, 2023, 2544, 1834.18, 1288.80, 2379.56, 233.73, 2208.39, 0.13, '2023-12-26 04:45:51', '2023-12-26 04:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `forecastinguangs`
--

CREATE TABLE `forecastinguangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `uang` int(11) NOT NULL,
  `smooth1` double(8,2) NOT NULL,
  `smooth2` double(8,2) NOT NULL,
  `konstanta` double(8,2) NOT NULL,
  `slope` double(8,2) NOT NULL,
  `forecasting` double(8,2) NOT NULL,
  `error` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forecastinguangs`
--

INSERT INTO `forecastinguangs` (`id`, `tahun`, `uang`, `smooth1`, `smooth2`, `konstanta`, `slope`, `forecasting`, `error`, `created_at`, `updated_at`) VALUES
(1, 2020, 192, 192.00, 192.00, 0.00, 0.00, 0.00, 0.00, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(2, 2021, 252, 210.00, 197.40, 222.60, 5.40, 0.00, 0.00, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(3, 2022, 478, 290.40, 225.30, 355.50, 27.90, 228.00, 0.52, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(4, 2023, 484, 348.48, 262.25, 434.71, 36.95, 383.40, 0.21, '2023-12-26 04:45:52', '2023-12-26 04:45:52');

-- --------------------------------------------------------

--
-- Table structure for table `mapes`
--

CREATE TABLE `mapes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `mape` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapes`
--

INSERT INTO `mapes` (`id`, `keterangan`, `mape`, `created_at`, `updated_at`) VALUES
(1, 'Keseluruhan', 0.02, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(2, 'Balon', -0.01, '2023-12-26 04:45:51', '2023-12-26 04:45:51'),
(3, 'Boneka', 0.02, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(4, 'Bunga', 0.03, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(5, 'Snack', 0.05, '2023-12-26 04:45:52', '2023-12-26 04:45:52'),
(6, 'Uang', 0.05, '2023-12-26 04:45:52', '2023-12-26 04:45:52');

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
(5, '2023_12_04_183424_create_bukets_table', 2),
(6, '2023_12_04_184918_create_bulans_table', 3),
(7, '2023_12_04_190450_create_transaksis_table', 4),
(8, '2023_12_04_204424_create_tahuns_table', 5),
(9, '2023_12_05_162641_create_penjualans_table', 6),
(10, '2023_12_05_184013_create_dtpertahuns_table', 7),
(11, '2023_12_06_174206_create_forecastingtotals_table', 8),
(12, '2023_12_06_184204_create_mapes_table', 9),
(13, '2023_12_06_201508_create_forecastingbalons_table', 10),
(14, '2023_12_06_210620_create_forecastingbonekas_table', 11),
(15, '2023_12_06_212154_create_forecastingbungas_table', 12),
(16, '2023_12_06_213128_create_forecastingsnacks_table', 13),
(17, '2023_12_06_214638_create_forecastinguangs_table', 14),
(18, '2023_12_06_223718_create_alfas_table', 15);

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
-- Table structure for table `penjualans`
--

CREATE TABLE `penjualans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bulan_id` int(11) NOT NULL,
  `tahun_id` int(11) NOT NULL,
  `balon` int(11) NOT NULL,
  `boneka` int(11) NOT NULL,
  `bunga` int(11) NOT NULL,
  `snack` int(11) NOT NULL,
  `uang` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualans`
--

INSERT INTO `penjualans` (`id`, `bulan_id`, `tahun_id`, `balon`, `boneka`, `bunga`, `snack`, `uang`, `total`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 0, 34, 24, 0, 0, 58, '2023-12-05 08:41:54', '2023-12-05 11:16:30'),
(2, 7, 1, 0, 39, 27, 0, 0, 66, '2023-12-05 09:00:31', '2023-12-05 09:00:31'),
(3, 8, 1, 0, 39, 20, 0, 0, 59, '2023-12-05 09:01:01', '2023-12-05 09:01:01'),
(4, 9, 1, 0, 37, 34, 0, 0, 71, '2023-12-05 09:01:30', '2023-12-05 09:01:30'),
(5, 10, 1, 0, 27, 29, 0, 0, 56, '2023-12-05 09:02:05', '2023-12-05 09:02:05'),
(6, 11, 1, 0, 25, 29, 0, 0, 54, '2023-12-05 09:02:34', '2023-12-05 09:02:34'),
(7, 12, 1, 0, 36, 31, 0, 0, 67, '2023-12-05 09:03:06', '2023-12-05 09:03:06'),
(8, 1, 2, 0, 36, 41, 0, 0, 77, '2023-12-05 09:04:37', '2023-12-05 09:04:37'),
(9, 2, 2, 0, 24, 35, 0, 0, 59, '2023-12-05 09:05:07', '2023-12-05 09:05:07'),
(10, 3, 2, 0, 28, 33, 0, 0, 61, '2023-12-05 09:05:43', '2023-12-05 09:05:43'),
(11, 4, 2, 0, 21, 39, 0, 0, 60, '2023-12-05 09:06:03', '2023-12-05 09:06:03'),
(12, 5, 2, 0, 34, 24, 45, 0, 103, '2023-12-05 09:06:49', '2023-12-05 09:06:49'),
(13, 6, 2, 0, 22, 31, 51, 0, 104, '2023-12-05 09:07:19', '2023-12-05 09:07:19'),
(14, 8, 2, 0, 27, 37, 49, 0, 113, '2023-12-05 09:07:47', '2023-12-05 09:07:47'),
(15, 9, 2, 0, 34, 22, 43, 0, 99, '2023-12-05 09:08:24', '2023-12-05 09:08:24'),
(16, 10, 2, 0, 31, 26, 37, 0, 94, '2023-12-05 09:08:52', '2023-12-05 09:08:52'),
(17, 11, 2, 0, 35, 38, 33, 0, 106, '2023-12-05 09:09:44', '2023-12-05 09:09:44'),
(18, 12, 2, 0, 42, 40, 36, 0, 118, '2023-12-05 09:10:12', '2023-12-05 09:10:12'),
(19, 1, 3, 0, 36, 33, 43, 0, 112, '2023-12-05 09:11:43', '2023-12-05 09:11:43'),
(20, 2, 3, 15, 30, 45, 48, 0, 138, '2023-12-05 09:12:16', '2023-12-05 09:12:16'),
(21, 3, 3, 23, 31, 40, 37, 0, 131, '2023-12-05 09:12:59', '2023-12-05 09:12:59'),
(22, 4, 3, 22, 41, 39, 30, 0, 132, '2023-12-05 09:13:31', '2023-12-05 09:13:31'),
(23, 5, 3, 13, 26, 34, 46, 0, 119, '2023-12-05 09:14:42', '2023-12-05 09:14:42'),
(24, 6, 3, 18, 27, 56, 41, 0, 142, '2023-12-05 09:15:13', '2023-12-05 09:15:13'),
(25, 7, 3, 17, 23, 47, 48, 0, 135, '2023-12-05 09:15:40', '2023-12-05 09:15:40'),
(26, 8, 3, 23, 39, 39, 30, 0, 131, '2023-12-05 09:16:11', '2023-12-05 09:16:11'),
(27, 9, 3, 27, 27, 40, 35, 0, 129, '2023-12-05 09:16:38', '2023-12-05 09:16:38'),
(28, 10, 3, 29, 20, 37, 39, 0, 125, '2023-12-05 09:17:10', '2023-12-05 09:17:10'),
(29, 11, 3, 33, 34, 42, 41, 0, 150, '2023-12-05 09:17:38', '2023-12-05 09:17:38'),
(30, 12, 3, 37, 33, 46, 43, 0, 159, '2023-12-05 09:18:11', '2023-12-05 09:18:11'),
(31, 1, 4, 33, 38, 44, 49, 21, 185, '2023-12-05 09:23:01', '2023-12-05 09:23:01'),
(32, 2, 4, 31, 31, 46, 53, 23, 184, '2023-12-05 09:23:42', '2023-12-05 09:23:42'),
(33, 3, 4, 39, 19, 31, 51, 25, 165, '2023-12-05 09:24:14', '2023-12-05 09:24:14'),
(34, 4, 4, 26, 20, 26, 34, 21, 127, '2023-12-05 09:25:00', '2023-12-05 09:25:00'),
(35, 5, 4, 23, 23, 21, 29, 18, 114, '2023-12-05 09:25:27', '2023-12-05 09:25:27'),
(36, 6, 4, 15, 21, 18, 25, 17, 96, '2023-12-05 09:25:54', '2023-12-05 09:25:54'),
(37, 7, 4, 15, 13, 16, 21, 13, 78, '2023-12-05 09:26:23', '2023-12-05 09:26:23'),
(38, 8, 4, 7, 10, 20, 16, 10, 63, '2023-12-05 09:26:58', '2023-12-05 09:26:58'),
(39, 9, 4, 14, 11, 24, 17, 14, 80, '2023-12-05 09:27:25', '2023-12-05 09:27:25'),
(40, 10, 4, 13, 19, 18, 11, 9, 70, '2023-12-05 09:27:51', '2023-12-05 09:27:51'),
(41, 11, 4, 9, 13, 25, 18, 9, 74, '2023-12-05 09:28:23', '2023-12-05 09:28:23'),
(42, 12, 4, 11, 15, 22, 21, 12, 81, '2023-12-05 09:28:48', '2023-12-05 09:28:48'),
(43, 1, 5, 15, 12, 21, 18, 19, 85, '2023-12-05 09:30:24', '2023-12-05 09:30:24'),
(44, 2, 5, 19, 17, 18, 20, 21, 95, '2023-12-05 09:30:50', '2023-12-05 09:30:50'),
(45, 3, 5, 14, 10, 19, 17, 17, 77, '2023-12-05 09:31:17', '2023-12-05 09:31:17'),
(46, 4, 5, 20, 13, 26, 11, 13, 83, '2023-12-05 09:31:44', '2023-12-05 09:31:44'),
(47, 5, 5, 24, 17, 23, 19, 16, 99, '2023-12-05 09:32:26', '2023-12-05 09:32:26'),
(48, 6, 5, 11, 11, 15, 23, 14, 74, '2023-12-05 09:34:22', '2023-12-05 09:34:22'),
(49, 7, 5, 13, 20, 11, 26, 18, 88, '2023-12-05 09:34:43', '2023-12-05 09:34:43'),
(50, 8, 5, 19, 23, 28, 30, 20, 120, '2023-12-05 09:35:26', '2023-12-05 09:35:26'),
(51, 9, 5, 28, 26, 31, 35, 24, 144, '2023-12-05 09:35:49', '2023-12-05 09:35:49'),
(52, 10, 5, 23, 39, 34, 38, 28, 162, '2023-12-05 09:36:21', '2023-12-05 09:36:21'),
(53, 11, 5, 27, 41, 32, 41, 31, 172, '2023-12-05 09:36:43', '2023-12-05 09:36:43'),
(54, 12, 5, 17, 44, 36, 41, 31, 169, '2023-12-05 09:37:06', '2023-12-05 09:37:06'),
(55, 1, 6, 17, 30, 31, 24, 23, 125, '2023-12-05 09:57:15', '2023-12-05 09:57:15'),
(56, 2, 6, 20, 41, 35, 30, 24, 150, '2023-12-05 09:57:37', '2023-12-05 09:57:37'),
(57, 3, 6, 31, 37, 46, 45, 35, 194, '2023-12-05 09:57:59', '2023-12-05 09:57:59'),
(58, 4, 6, 33, 41, 51, 41, 39, 205, '2023-12-05 09:58:36', '2023-12-05 09:58:36'),
(59, 5, 6, 25, 56, 41, 54, 28, 204, '2023-12-05 09:59:07', '2023-12-05 09:59:07'),
(60, 6, 6, 31, 41, 39, 59, 30, 200, '2023-12-05 09:59:30', '2023-12-05 09:59:30'),
(61, 7, 6, 34, 33, 36, 53, 47, 203, '2023-12-05 09:59:58', '2023-12-05 09:59:58'),
(62, 8, 6, 44, 37, 39, 41, 40, 201, '2023-12-05 10:00:24', '2023-12-05 10:00:24'),
(63, 9, 6, 49, 43, 45, 55, 49, 241, '2023-12-05 10:00:53', '2023-12-05 10:00:53'),
(64, 10, 6, 42, 51, 67, 41, 56, 257, '2023-12-05 10:01:16', '2023-12-05 10:01:16'),
(65, 11, 6, 50, 31, 54, 56, 51, 242, '2023-12-05 10:01:41', '2023-12-05 10:01:41'),
(66, 12, 6, 51, 36, 41, 61, 56, 245, '2023-12-05 10:02:19', '2023-12-05 10:02:19'),
(67, 1, 7, 20, 27, 41, 45, 45, 178, '2023-12-05 10:03:54', '2023-12-05 10:03:54'),
(68, 2, 7, 38, 39, 52, 59, 43, 231, '2023-12-05 10:04:20', '2023-12-05 10:04:20'),
(69, 3, 7, 23, 41, 53, 61, 39, 217, '2023-12-05 10:04:51', '2023-12-05 10:04:51'),
(70, 4, 7, 27, 46, 55, 66, 30, 224, '2023-12-05 10:05:15', '2023-12-05 10:05:15'),
(71, 5, 7, 25, 50, 59, 61, 43, 238, '2023-12-05 10:05:44', '2023-12-05 10:05:44'),
(72, 6, 7, 31, 51, 67, 57, 58, 264, '2023-12-05 10:06:10', '2023-12-05 10:06:10'),
(73, 7, 7, 34, 45, 53, 73, 56, 261, '2023-12-05 10:06:37', '2023-12-05 10:06:37'),
(74, 8, 7, 39, 42, 59, 68, 45, 253, '2023-12-05 10:07:05', '2023-12-05 10:07:05'),
(75, 9, 7, 29, 41, 54, 65, 39, 228, '2023-12-05 10:07:29', '2023-12-05 10:07:29'),
(76, 10, 7, 35, 38, 56, 61, 45, 235, '2023-12-05 10:08:03', '2023-12-05 10:08:03'),
(77, 11, 7, 30, 35, 50, 59, 41, 215, '2023-12-05 10:09:08', '2023-12-05 10:09:08');

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
-- Table structure for table `tahuns`
--

CREATE TABLE `tahuns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tahuns`
--

INSERT INTO `tahuns` (`id`, `tahun`, `created_at`, `updated_at`) VALUES
(1, '2017', NULL, NULL),
(2, '2018', NULL, NULL),
(3, '2019', NULL, NULL),
(4, '2020', NULL, NULL),
(5, '2021', NULL, NULL),
(6, '2022', NULL, NULL),
(7, '2023', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$u22Z0H3jU5P7OhP.9PEkheQp6ZgJuvuc3JayjNdkitH80sI4rRZWS', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alfas`
--
ALTER TABLE `alfas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bukets`
--
ALTER TABLE `bukets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulans`
--
ALTER TABLE `bulans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dtpertahuns`
--
ALTER TABLE `dtpertahuns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forecastingbalons`
--
ALTER TABLE `forecastingbalons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forecastingbonekas`
--
ALTER TABLE `forecastingbonekas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forecastingbungas`
--
ALTER TABLE `forecastingbungas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forecastingsnacks`
--
ALTER TABLE `forecastingsnacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forecastingtotals`
--
ALTER TABLE `forecastingtotals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forecastinguangs`
--
ALTER TABLE `forecastinguangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapes`
--
ALTER TABLE `mapes`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `penjualans`
--
ALTER TABLE `penjualans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tahuns`
--
ALTER TABLE `tahuns`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `alfas`
--
ALTER TABLE `alfas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bukets`
--
ALTER TABLE `bukets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bulans`
--
ALTER TABLE `bulans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dtpertahuns`
--
ALTER TABLE `dtpertahuns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forecastingbalons`
--
ALTER TABLE `forecastingbalons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `forecastingbonekas`
--
ALTER TABLE `forecastingbonekas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `forecastingbungas`
--
ALTER TABLE `forecastingbungas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `forecastingsnacks`
--
ALTER TABLE `forecastingsnacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forecastingtotals`
--
ALTER TABLE `forecastingtotals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `forecastinguangs`
--
ALTER TABLE `forecastinguangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mapes`
--
ALTER TABLE `mapes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `penjualans`
--
ALTER TABLE `penjualans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tahuns`
--
ALTER TABLE `tahuns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
