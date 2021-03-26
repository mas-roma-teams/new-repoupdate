-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2021 at 03:58 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proj_laravel8`
--

-- --------------------------------------------------------

--
-- Table structure for table `indonesia_provinces`
--

CREATE TABLE `indonesia_provinces` (
  `id` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `indonesia_provinces`
--

INSERT INTO `indonesia_provinces` (`id`, `name`, `meta`, `created_at`, `updated_at`) VALUES
('11', 'ACEH', '{\"lat\":\"4.695135\",\"long\":\"96.7493993\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('12', 'SUMATERA UTARA', '{\"lat\":\"2.1153547\",\"long\":\"99.5450974\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('13', 'SUMATERA BARAT', '{\"lat\":\"-0.7399397\",\"long\":\"100.8000051\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('14', 'RIAU', '{\"lat\":\"0.2933469\",\"long\":\"101.7068294\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('15', 'JAMBI', '{\"lat\":\"-1.6101229\",\"long\":\"103.6131203\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('16', 'SUMATERA SELATAN', '{\"lat\":\"-3.3194374\",\"long\":\"103.914399\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('17', 'BENGKULU', '{\"lat\":\"-3.7928451\",\"long\":\"102.2607641\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('18', 'LAMPUNG', '{\"lat\":\"-4.5585849\",\"long\":\"105.4068079\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('19', 'KEPULAUAN BANGKA BELITUNG', '{\"lat\":\"-2.7410513\",\"long\":\"106.4405872\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('21', 'KEPULAUAN RIAU', '{\"lat\":\"3.9456514\",\"long\":\"108.1428669\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('31', 'DKI JAKARTA', '{\"lat\":\"-6.2087634\",\"long\":\"106.845599\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('32', 'JAWA BARAT', '{\"lat\":\"-7.090911\",\"long\":\"107.668887\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('33', 'JAWA TENGAH', '{\"lat\":\"-7.150975\",\"long\":\"110.1402594\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('34', 'DI YOGYAKARTA', '{\"lat\":\"-7.8753849\",\"long\":\"110.4262088\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('35', 'JAWA TIMUR', '{\"lat\":\"-7.5360639\",\"long\":\"112.2384017\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('36', 'BANTEN', '{\"lat\":\"-6.4058172\",\"long\":\"106.0640179\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('51', 'BALI', '{\"lat\":\"-8.3405389\",\"long\":\"115.0919509\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('52', 'NUSA TENGGARA BARAT', '{\"lat\":\"-8.6529334\",\"long\":\"117.3616476\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('53', 'NUSA TENGGARA TIMUR', '{\"lat\":\"-8.6573819\",\"long\":\"121.0793705\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('61', 'KALIMANTAN BARAT', '{\"lat\":\"-0.2787808\",\"long\":\"111.4752851\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('62', 'KALIMANTAN TENGAH', '{\"lat\":\"-1.6814878\",\"long\":\"113.3823545\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('63', 'KALIMANTAN SELATAN', '{\"lat\":\"-3.0926415\",\"long\":\"115.2837585\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('64', 'KALIMANTAN TIMUR', '{\"lat\":\"0.5386586\",\"long\":\"116.419389\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('65', 'KALIMANTAN UTARA', '{\"lat\":\"3.0730929\",\"long\":\"116.0413889\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('71', 'SULAWESI UTARA', '{\"lat\":\"0.6246932\",\"long\":\"123.9750018\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('72', 'SULAWESI TENGAH', '{\"lat\":\"-1.4300254\",\"long\":\"121.4456179\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('73', 'SULAWESI SELATAN', '{\"lat\":\"-3.6687994\",\"long\":\"119.9740534\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('74', 'SULAWESI TENGGARA', '{\"lat\":\"-4.14491\",\"long\":\"122.174605\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('75', 'GORONTALO', '{\"lat\":\"0.5435442\",\"long\":\"123.0567693\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('76', 'SULAWESI BARAT', '{\"lat\":\"-2.8441371\",\"long\":\"119.2320784\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('81', 'MALUKU', '{\"lat\":\"-2.8646166\",\"long\":\"129.5765974\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('82', 'MALUKU UTARA', '{\"lat\":\"1.5709993\",\"long\":\"127.8087693\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('91', 'PAPUA BARAT', '{\"lat\":\"-1.3361154\",\"long\":\"133.1747162\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39'),
('94', 'PAPUA', '{\"lat\":\"-4.269928\",\"long\":\"138.0803529\"}', '2021-03-25 00:29:39', '2021-03-25 00:29:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `indonesia_provinces`
--
ALTER TABLE `indonesia_provinces`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
