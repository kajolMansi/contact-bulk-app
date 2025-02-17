-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2025 at 11:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Kökten', 'Adal', NULL, '+90 333 8859342', '2025-02-17 04:23:20', '2025-02-17 04:23:20'),
(2, 'Hamma', 'Abdurrezak', NULL, '+90 333 1563682', '2025-02-17 04:23:20', '2025-02-17 04:23:20'),
(3, 'Güleycan', 'Şensal', NULL, '+90 333 2557114', '2025-02-17 04:23:20', '2025-02-17 04:23:20'),
(4, 'Suadiye', 'Ratip', NULL, '+90 333 9163726', '2025-02-17 04:23:20', '2025-02-17 04:23:20'),
(5, 'Barik', 'Nurşide', NULL, '+90 333 3323749', '2025-02-17 04:23:20', '2025-02-17 04:23:20'),
(6, 'Hanifi', 'Emineeylem', NULL, '+90 333 2763531', '2025-02-17 04:23:20', '2025-02-17 04:23:20'),
(7, 'Nakiye', 'Oğulkan', NULL, '+90 333 6168924', '2025-02-17 04:23:20', '2025-02-17 04:23:20'),
(8, 'Hamsiye', 'Cerit', NULL, '+90 333 3544579', '2025-02-17 04:23:20', '2025-02-17 04:23:20'),
(9, 'Mahfi', 'Hülâgü', NULL, '+90 333 8937773', '2025-02-17 04:23:20', '2025-02-17 04:23:20'),
(10, 'Esmeray', 'Nurihayat', NULL, '+90 333 1688759', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(11, 'Şennur', 'Nazifer', NULL, '+90 333 5326326', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(12, 'Çetinok', 'Seden', NULL, '+90 333 1614182', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(13, 'Vuslat', 'Erimşah', NULL, '+90 333 9551194', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(14, 'Şeküre', 'Ruhiye', NULL, '+90 333 8792165', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(15, 'İmran', 'Ümmehan', NULL, '+90 333 6971156', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(16, 'Yavuzbay', 'Hiçsönmez', NULL, '+90 333 8839473', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(17, 'Nevzete', 'Abdulgafur', NULL, '+90 333 1453851', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(18, 'Aksüyek', 'Sal', NULL, '+90 333 2481491', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(19, 'Ferhat', 'Kılıçaslan', NULL, '+90 333 6861354', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(20, 'Fereç', 'Tomurcuk', NULL, '+90 333 4141534', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(21, 'Balkız', 'Alabegüm', NULL, '+90 333 8826359', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(22, 'Adulle', 'Nesim', NULL, '+90 333 5364556', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(23, 'Sevdal', 'Bilhan', NULL, '+90 333 8634743', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(24, 'Hariz', 'Budunal', NULL, '+90 333 1193335', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(25, 'Alnıak', 'Atız', NULL, '+90 333 5676454', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(26, 'Haşmet', 'Taşgan', NULL, '+90 333 6185991', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(27, 'Salli', 'Necife', NULL, '+90 333 6692117', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(28, 'Türeli', 'Selçen', NULL, '+90 333 5588146', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(29, 'Boray', 'Ümit', NULL, '+90 333 7741455', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(30, 'Aktemür', 'Akbora', NULL, '+90 333 4139141', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(31, 'Yediveren', 'Muhammetali', NULL, '+90 333 8483755', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(32, 'Baltaş', 'Tonguç', NULL, '+90 333 3724797', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(33, 'Tepegöz', 'Ferize', NULL, '+90 333 9528318', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(34, 'Selen', 'Arısal', NULL, '+90 333 9524786', '2025-02-17 04:23:21', '2025-02-17 04:23:21'),
(35, 'Abdulcabbar', 'Mahizar', NULL, '+90 333 6782359', '2025-02-17 04:23:22', '2025-02-17 04:23:22'),
(36, 'İyem', 'Emre', NULL, '+90 333 8238835', '2025-02-17 04:23:22', '2025-02-17 04:23:22'),
(37, 'Muazzam', 'Lâmia', NULL, '+90 333 1348678', '2025-02-17 04:23:22', '2025-02-17 04:23:22'),
(38, 'İlten', 'Eripek', NULL, '+90 333 3758172', '2025-02-17 04:23:22', '2025-02-17 04:23:22'),
(39, 'Zerrin', 'Resul', NULL, '+90 333 9276424', '2025-02-17 04:23:22', '2025-02-17 04:23:22'),
(40, 'İlalan', 'Telmize', NULL, '+90 333 3563723', '2025-02-17 04:23:22', '2025-02-17 04:23:22'),
(41, 'Hamise', 'Sertan', NULL, '+90 333 8263265', '2025-02-17 04:23:22', '2025-02-17 04:23:22'),
(42, 'Zubeyde', 'Berk', NULL, '+90 333 7281496', '2025-02-17 04:23:22', '2025-02-17 04:23:22'),
(43, 'Feda', 'Balsarı', NULL, '+90 333 4969618', '2025-02-17 04:23:22', '2025-02-17 04:23:22'),
(44, 'Müsemme', 'Civanşir', NULL, '+90 333 2556491', '2025-02-17 04:23:22', '2025-02-17 04:23:22'),
(45, 'Aydınyol', 'Fitnet', NULL, '+90 333 7783478', '2025-02-17 04:23:22', '2025-02-17 04:23:22'),
(46, 'Çoğa', 'Bigüm', NULL, '+90 333 4133666', '2025-02-17 04:23:22', '2025-02-17 04:23:22'),
(47, 'Şehrinaz', 'Raşide', NULL, '+90 333 2677248', '2025-02-17 04:23:22', '2025-02-17 04:23:22'),
(48, 'Naif', 'Rukhiya', NULL, '+90 333 8252766', '2025-02-17 04:23:22', '2025-02-17 04:23:22'),
(49, 'Azat', 'Nilden', NULL, '+90 333 9324656', '2025-02-17 04:23:22', '2025-02-17 04:23:22'),
(50, 'Gamze', 'Korday', NULL, '+90 333 9442367', '2025-02-17 04:23:22', '2025-02-17 04:23:22'),
(52, 'manasi', 'sethi', 'sethimansi698@gmail.com', '7381608716', '2025-02-17 04:24:30', '2025-02-17 04:32:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
