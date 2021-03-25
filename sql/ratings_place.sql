-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 03:27 PM
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
-- Database: `laravel_first_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ratings_place`
--

CREATE TABLE `ratings_place` (
  `id` int(11) NOT NULL,
  `ratings` tinyint(4) NOT NULL,
  `vendor_ratings_id` int(11) NOT NULL,
  `jasas_ratings_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings_place`
--

INSERT INTO `ratings_place` (`id`, `ratings`, `vendor_ratings_id`, `jasas_ratings_id`) VALUES
(1, 5, 0, 0),
(2, 4, 0, 0),
(3, 3, 0, 0),
(4, 2, 0, 0),
(5, 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ratings_place`
--
ALTER TABLE `ratings_place`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ratings_place`
--
ALTER TABLE `ratings_place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
