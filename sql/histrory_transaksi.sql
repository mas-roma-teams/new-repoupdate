-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2021 at 08:48 PM
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
-- Database: `projek_laravel8pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `histrory_transaksi`
--

CREATE TABLE `histrory_transaksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `jumlah_penarikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metode_penarikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histrory_transaksi`
--

INSERT INTO `histrory_transaksi` (`id`, `user_id`, `jumlah_penarikan`, `metode_penarikan`, `created_at`, `updated_at`) VALUES
(15, 14, '20000', 'linkaja', '2021-05-04 11:01:54', '2021-05-04 11:01:54'),
(16, 14, '100000', 'atmbersama', '2021-05-04 18:38:55', '2021-05-04 18:38:55'),
(17, 14, '500000', 'linkaja', '2021-05-04 18:44:20', '2021-05-04 18:44:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `histrory_transaksi`
--
ALTER TABLE `histrory_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `histrory_transaksi`
--
ALTER TABLE `histrory_transaksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
