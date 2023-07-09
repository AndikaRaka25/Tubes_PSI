-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2023 at 08:36 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_anora`
--

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `dealer_id` int(11) NOT NULL,
  `dealer_nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`dealer_id`, `dealer_nama`, `alamat`, `kota`, `telp`) VALUES
(1, 'Tunas Jaya', 'Jl. Magelang No.88-90 Tegalrejo, Kota Yogyakarta, Di Yogyakarta', 'Yogyakarta', '081820374659'),
(2, 'Daya Motor', 'Jl. Raya Wates Km.4,5, Gamping Ambarketawang, Kabupaten Sleman, Di Yogyakarta', 'Yogyakarta', '081254037193'),
(3, 'Colombo Baru', 'Jl. P. Senopati No.21 Ngupasan, Kota Yogyakarta, Di Yogyakarta', 'Yogyakarta', '081640263947'),
(4, 'Tunas Baru', 'Jl. Setia Budi No.249, Srondol Kulon, Kec. Banyumanik, Kota Semarang, Jawa Tengah 50263', 'Semarang', '081625243829'),
(5, 'Surya Tama', '001, Jl. Mayjen Prof. Dr. Moestopo No.15, RW.08, Pacar Keling, Kec. Tambaksari, Surabaya, Jawa Timur 60131', 'Surabaya', '7777777777'),
(6, 'Honda Kenjera', 'Jl. Kenjeran No.622, Dukuh Sutorejo, Kec. Mulyorejo, Surabaya, Jawa Timur 60245', 'Surabaya', '081918171615');

-- --------------------------------------------------------

--
-- Table structure for table `motor`
--

CREATE TABLE `motor` (
  `motor_id` int(11) NOT NULL,
  `motor_nama` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `motor`
--

INSERT INTO `motor` (`motor_id`, `motor_nama`, `foto`, `dealer_id`) VALUES
(1, 'Beat Crs', 'beat_crs.png', 1),
(2, 'Beat Street', 'beat_street.png', 1),
(3, 'Beat Deluxe', 'beat_deluxe.png', 1),
(4, 'Beat Crs', 'beat_crs.png', 2),
(5, 'Beat Street', 'beat_street.png', 2),
(6, 'Beat Deluxe', 'beat_deluxe.png', 2),
(7, 'Vario 125', 'vario_125.png', 1),
(8, 'Vario 125 ABS', 'vario_125_abs.png', 1),
(9, 'Vario 125', 'vario_125.png', 2),
(10, 'Vario 125 ABS', 'vario_125_abs.png', 2),
(11, 'Scoopy', 'scoopy.png', 1),
(12, 'Scoopy', 'scoopy.png', 2),
(13, 'Beat Crs', 'beat_crs.png', 3),
(14, 'Beat Street', 'beat_street.png', 3),
(15, 'Beat Deluxe', 'beat_deluxe.png', 3),
(16, 'Beat Crs', 'beat_crs.png', 4),
(17, 'Beat Street', 'beat_street.png', 4),
(18, 'Beat Crs', 'beat_crs.png', 5),
(19, 'Beat Street', 'beat_street.png', 5),
(20, 'Beat Deluxe', 'beat_deluxe.png', 5),
(21, 'Beat Crs', 'beat_crs.png', 6),
(22, 'Beat Street', 'beat_street.png', 6),
(23, 'Beat Deluxe', 'beat_deluxe.png', 6),
(24, 'Vario 125', 'vario_125.png', 5),
(25, 'Vario 125 ABS', 'vario_125_abs.png', 5),
(26, 'Vario 125', 'vario_125.png', 6);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `penjualan_id` int(11) NOT NULL,
  `motor_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`penjualan_id`, `motor_id`, `date`) VALUES
(1, 13, '2023-05-19 00:00:00'),
(2, 23, '2023-07-23 00:00:00'),
(3, 10, '2023-01-29 00:00:00'),
(4, 17, '2023-02-24 00:00:00'),
(5, 3, '2023-03-16 00:00:00'),
(6, 26, '2023-01-30 00:00:00'),
(7, 12, '2023-03-05 00:00:00'),
(8, 26, '2023-08-12 00:00:00'),
(9, 7, '2023-07-31 00:00:00'),
(10, 16, '2023-01-19 00:00:00'),
(11, 4, '2023-07-22 00:00:00'),
(12, 10, '2023-08-28 00:00:00'),
(13, 24, '2023-07-08 00:00:00'),
(14, 26, '2023-04-16 00:00:00'),
(15, 13, '2023-07-09 00:00:00'),
(16, 21, '2023-07-24 00:00:00'),
(17, 8, '2023-01-11 00:00:00'),
(18, 5, '2023-03-01 00:00:00'),
(19, 11, '2023-07-13 00:00:00'),
(20, 13, '2023-06-15 00:00:00'),
(21, 7, '2023-04-13 00:00:00'),
(22, 3, '2023-07-02 00:00:00'),
(23, 22, '2023-06-02 00:00:00'),
(24, 14, '2023-05-17 00:00:00'),
(25, 1, '2023-05-25 00:00:00'),
(26, 16, '2023-02-02 00:00:00'),
(27, 22, '2023-04-20 00:00:00'),
(28, 10, '2023-07-17 00:00:00'),
(29, 8, '2023-02-04 00:00:00'),
(30, 8, '2023-08-25 00:00:00'),
(31, 4, '2023-03-24 00:00:00'),
(32, 17, '2023-02-14 00:00:00'),
(33, 7, '2023-06-26 00:00:00'),
(34, 23, '2023-06-21 00:00:00'),
(35, 8, '2023-02-01 00:00:00'),
(36, 9, '2023-08-11 00:00:00'),
(37, 23, '2023-07-09 00:00:00'),
(38, 11, '2023-05-09 00:00:00'),
(39, 4, '2023-07-15 00:00:00'),
(40, 11, '2023-05-19 00:00:00'),
(41, 20, '2023-06-22 00:00:00'),
(42, 19, '2023-08-03 00:00:00'),
(43, 9, '2023-02-25 00:00:00'),
(44, 20, '2023-08-14 00:00:00'),
(45, 25, '2023-01-05 00:00:00'),
(46, 20, '2023-01-29 00:00:00'),
(47, 26, '2023-04-27 00:00:00'),
(48, 1, '2023-07-26 00:00:00'),
(49, 1, '2023-07-28 00:00:00'),
(50, 8, '2023-08-01 00:00:00'),
(51, 7, '2023-02-24 00:00:00'),
(52, 19, '2023-04-05 00:00:00'),
(53, 16, '2023-01-04 00:00:00'),
(54, 13, '2023-04-11 00:00:00'),
(55, 14, '2023-02-27 00:00:00'),
(56, 2, '2023-07-22 00:00:00'),
(57, 11, '2023-06-15 00:00:00'),
(58, 9, '2023-01-14 00:00:00'),
(59, 14, '2023-03-04 00:00:00'),
(60, 9, '2023-07-12 00:00:00'),
(61, 8, '2023-05-04 00:00:00'),
(62, 4, '2023-07-26 00:00:00'),
(63, 26, '2023-07-06 00:00:00'),
(64, 10, '2023-08-07 00:00:00'),
(65, 24, '2023-03-07 00:00:00'),
(66, 24, '2023-03-14 00:00:00'),
(67, 18, '2023-04-14 00:00:00'),
(68, 15, '2023-06-30 00:00:00'),
(69, 25, '2023-05-07 00:00:00'),
(70, 3, '2023-05-14 00:00:00'),
(71, 2, '2023-02-12 00:00:00'),
(72, 7, '2023-01-25 00:00:00'),
(73, 24, '2023-06-11 00:00:00'),
(74, 24, '2023-06-02 00:00:00'),
(75, 19, '2023-03-28 00:00:00'),
(76, 18, '2023-03-20 00:00:00'),
(77, 13, '2023-01-31 00:00:00'),
(78, 6, '2023-01-30 00:00:00'),
(79, 23, '2023-02-22 00:00:00'),
(80, 21, '2023-03-02 00:00:00'),
(81, 26, '2023-05-22 00:00:00'),
(82, 18, '2023-03-07 00:00:00'),
(83, 13, '2023-03-10 00:00:00'),
(84, 13, '2023-04-15 00:00:00'),
(85, 4, '2023-04-25 00:00:00'),
(86, 13, '2023-02-07 00:00:00'),
(87, 19, '2023-06-02 00:00:00'),
(88, 11, '2023-03-27 00:00:00'),
(89, 12, '2023-08-11 00:00:00'),
(90, 10, '2023-08-18 00:00:00'),
(91, 23, '2023-06-19 00:00:00'),
(92, 5, '2023-05-12 00:00:00'),
(93, 2, '2023-03-16 00:00:00'),
(94, 8, '2023-02-26 00:00:00'),
(95, 10, '2023-01-08 00:00:00'),
(96, 4, '2023-02-21 00:00:00'),
(97, 4, '2023-07-18 00:00:00'),
(98, 14, '2023-04-09 00:00:00'),
(99, 26, '2023-04-05 00:00:00'),
(100, 10, '2023-04-09 00:00:00'),
(101, 17, '2023-08-21 20:03:27'),
(102, 24, '2023-05-14 04:05:54'),
(103, 2, '2023-07-19 09:56:19'),
(104, 16, '2023-02-06 04:29:53'),
(105, 22, '2023-07-26 04:50:55'),
(106, 22, '2023-05-09 17:46:17'),
(107, 14, '2023-08-14 01:14:19'),
(108, 25, '2023-04-08 02:36:44'),
(109, 4, '2023-06-26 18:05:57'),
(110, 12, '2023-07-08 22:37:52'),
(111, 8, '2023-08-19 15:47:13'),
(112, 5, '2023-01-25 00:23:54'),
(113, 15, '2023-01-26 18:14:54'),
(114, 2, '2023-03-20 02:38:08'),
(115, 3, '2023-02-08 01:35:49'),
(116, 5, '2023-01-01 17:48:16'),
(117, 15, '2023-08-24 07:07:45'),
(118, 19, '2023-06-03 17:32:26'),
(119, 9, '2023-02-28 14:37:35'),
(120, 23, '2023-04-18 12:16:49'),
(121, 22, '2023-05-12 02:39:37'),
(122, 26, '2023-06-08 14:22:03'),
(123, 3, '2023-02-05 02:39:03'),
(124, 11, '2023-08-05 02:03:44'),
(125, 17, '2023-01-02 09:27:43'),
(126, 18, '2023-06-13 18:02:35'),
(127, 18, '2023-04-17 09:17:27'),
(128, 19, '2023-01-14 23:00:56'),
(129, 2, '2023-07-08 07:24:42'),
(130, 20, '2023-05-09 22:17:56'),
(131, 12, '2023-04-04 19:58:43'),
(132, 10, '2023-07-20 00:49:15'),
(133, 17, '2023-06-10 14:20:31'),
(134, 18, '2023-07-22 20:24:28'),
(135, 4, '2023-05-26 06:33:54'),
(136, 26, '2023-08-28 01:48:46'),
(137, 25, '2023-08-18 19:46:11'),
(138, 5, '2023-06-10 08:52:31'),
(139, 22, '2023-07-15 17:07:23'),
(140, 21, '2023-02-07 18:42:36'),
(141, 25, '2023-04-04 02:58:38'),
(142, 10, '2023-03-05 22:04:20'),
(143, 22, '2023-05-11 16:07:52'),
(144, 1, '2023-08-07 10:27:02'),
(145, 6, '2023-06-26 09:27:24'),
(146, 3, '2023-02-21 22:28:51'),
(147, 19, '2023-08-26 01:04:05'),
(148, 19, '2023-01-17 11:21:55'),
(149, 13, '2023-08-13 10:21:21'),
(150, 17, '2023-04-06 14:24:51'),
(151, 1, '2023-01-04 03:14:05'),
(152, 14, '2023-06-06 01:03:24'),
(153, 24, '2023-03-20 07:21:17'),
(154, 13, '2023-04-14 09:48:47'),
(155, 20, '2023-06-17 13:20:38'),
(156, 16, '2023-01-15 20:34:45'),
(157, 5, '2023-02-21 05:31:23'),
(158, 13, '2023-03-20 12:16:20'),
(159, 2, '2023-03-21 04:34:59'),
(160, 2, '2023-07-11 02:02:14'),
(161, 21, '2023-04-22 16:00:42'),
(162, 25, '2023-05-02 01:53:59'),
(163, 1, '2023-05-18 04:29:55'),
(164, 26, '2023-02-05 22:41:36'),
(165, 7, '2023-01-14 18:17:25'),
(166, 11, '2023-05-16 04:30:05'),
(167, 19, '2023-07-26 09:30:11'),
(168, 18, '2023-01-29 19:15:08'),
(169, 23, '2023-07-23 18:02:56'),
(170, 18, '2023-02-28 14:24:57'),
(171, 21, '2023-01-31 00:03:07'),
(172, 25, '2023-05-21 18:11:35'),
(173, 21, '2023-02-04 21:30:20'),
(174, 13, '2023-05-22 06:46:54'),
(175, 21, '2023-04-19 09:08:16'),
(176, 10, '2023-01-02 16:37:48'),
(177, 19, '2023-03-03 01:04:21'),
(178, 11, '2023-05-17 11:35:55'),
(179, 2, '2023-06-07 16:54:13'),
(180, 21, '2023-08-14 16:33:17'),
(181, 12, '2023-03-19 03:21:30'),
(182, 7, '2023-06-19 20:36:42'),
(183, 4, '2023-08-16 06:13:57'),
(184, 2, '2023-03-04 19:24:43'),
(185, 9, '2023-06-06 03:30:19'),
(186, 15, '2023-02-01 13:37:07'),
(187, 19, '2023-02-21 07:37:35'),
(188, 15, '2023-07-24 00:24:18'),
(189, 3, '2023-06-28 17:35:32'),
(190, 21, '2023-05-19 09:46:20'),
(191, 18, '2023-04-21 22:52:07'),
(192, 16, '2023-06-06 18:34:29'),
(193, 4, '2023-07-06 07:43:13'),
(194, 4, '2023-03-12 19:24:58'),
(195, 5, '2023-05-29 19:37:46'),
(196, 16, '2023-03-19 23:53:55'),
(197, 20, '2023-05-25 06:59:08'),
(198, 10, '2023-04-02 11:56:36'),
(199, 3, '2023-08-09 00:04:34'),
(200, 14, '2023-08-15 01:52:18'),
(201, 3, '2023-06-12 03:17:56'),
(202, 2, '2023-05-15 04:24:29'),
(203, 15, '2023-01-12 13:06:37'),
(204, 20, '2023-07-01 10:46:09'),
(205, 7, '2023-05-19 09:28:12'),
(206, 10, '2023-03-12 07:02:40'),
(207, 2, '2023-01-14 01:20:16'),
(208, 23, '2023-01-14 16:23:55'),
(209, 20, '2023-03-09 19:38:01'),
(210, 23, '2023-01-09 14:12:51'),
(211, 15, '2023-02-02 12:42:55'),
(212, 25, '2023-05-16 12:59:17'),
(213, 22, '2023-01-07 14:41:01'),
(214, 22, '2023-05-17 07:06:39'),
(215, 20, '2023-01-13 09:02:49'),
(216, 26, '2023-02-07 12:28:20'),
(217, 20, '2023-06-16 15:35:16'),
(218, 13, '2023-06-04 13:01:20'),
(219, 26, '2023-02-21 17:55:20'),
(220, 16, '2023-07-22 20:40:19'),
(221, 12, '2023-04-23 12:15:39'),
(222, 21, '2023-04-14 22:50:36'),
(223, 8, '2023-07-27 00:18:28'),
(224, 19, '2023-05-31 11:01:40'),
(225, 13, '2023-03-20 19:31:15'),
(226, 19, '2023-02-02 21:18:51'),
(227, 25, '2023-05-28 12:32:26'),
(228, 1, '2023-01-22 02:39:02'),
(229, 22, '2023-07-26 04:32:38'),
(230, 2, '2023-06-15 19:35:49'),
(231, 21, '2023-08-04 21:42:48'),
(232, 6, '2023-01-26 00:18:30'),
(233, 17, '2023-03-02 04:56:12'),
(234, 17, '2023-04-02 20:59:50'),
(235, 24, '2023-01-28 14:27:29'),
(236, 3, '2023-05-14 08:30:13'),
(237, 23, '2023-08-10 00:20:57'),
(238, 15, '2023-06-13 19:26:09'),
(239, 6, '2023-01-12 12:21:51'),
(240, 23, '2023-05-30 16:37:39'),
(241, 24, '2023-01-16 19:35:41'),
(242, 19, '2023-02-02 20:44:52'),
(243, 5, '2023-08-23 16:54:22'),
(244, 24, '2023-05-17 23:18:29'),
(245, 13, '2023-02-10 05:51:37'),
(246, 4, '2023-05-08 02:22:37'),
(247, 20, '2023-01-15 23:21:44'),
(248, 6, '2023-07-15 12:11:24'),
(249, 3, '2023-07-29 06:36:49'),
(250, 8, '2023-05-02 04:41:01'),
(251, 7, '2023-07-27 01:25:22'),
(252, 17, '2023-07-10 01:02:38'),
(253, 15, '2023-07-25 23:28:00'),
(254, 7, '2023-03-23 13:43:06'),
(255, 1, '2023-02-27 00:23:03'),
(256, 8, '2023-05-05 18:06:07'),
(257, 4, '2023-02-21 05:27:40'),
(258, 16, '2023-04-01 08:03:40'),
(259, 17, '2023-05-31 04:31:47'),
(260, 24, '2023-08-07 23:24:29'),
(261, 2, '2023-07-14 08:27:44'),
(262, 10, '2023-08-17 13:05:27'),
(263, 24, '2023-01-17 09:09:54'),
(264, 6, '2023-02-23 17:16:26'),
(265, 11, '2023-01-16 11:14:03'),
(266, 3, '2023-06-26 03:26:58'),
(267, 13, '2023-03-27 08:28:38'),
(268, 15, '2023-02-23 20:16:09'),
(269, 17, '2023-08-05 20:54:24'),
(270, 17, '2023-03-21 14:45:49'),
(271, 26, '2023-08-07 18:05:29'),
(272, 8, '2023-02-12 09:24:35'),
(273, 12, '2023-06-21 20:14:10'),
(274, 15, '2023-08-22 07:51:47'),
(275, 24, '2023-05-24 17:30:16'),
(276, 14, '2023-03-20 07:12:48'),
(277, 22, '2023-08-25 17:47:41'),
(278, 16, '2023-05-29 23:35:28'),
(279, 10, '2023-05-23 00:51:57'),
(280, 1, '2023-03-07 15:57:27'),
(281, 24, '2023-01-16 21:25:08'),
(282, 14, '2023-04-28 10:28:43'),
(283, 4, '2023-07-25 05:38:03'),
(284, 1, '2023-04-08 19:21:19'),
(285, 8, '2023-01-20 18:45:24'),
(286, 2, '2023-08-26 20:10:04'),
(287, 16, '2023-01-12 14:42:37'),
(288, 23, '2023-02-27 11:23:03'),
(289, 17, '2023-01-20 21:27:29'),
(290, 3, '2023-02-18 03:30:42'),
(291, 3, '2023-07-15 00:14:26'),
(292, 18, '2023-01-01 21:48:35'),
(293, 13, '2023-04-29 00:53:15'),
(294, 1, '2023-02-04 21:33:13'),
(295, 1, '2023-03-08 23:30:30'),
(296, 16, '2023-08-18 17:53:39'),
(297, 12, '2023-07-16 07:17:31'),
(298, 15, '2023-06-08 23:46:43'),
(299, 23, '2023-03-14 14:59:44'),
(300, 17, '2023-02-24 12:50:15'),
(301, 8, '2023-03-24 07:57:41'),
(302, 20, '2023-05-24 22:57:27'),
(303, 1, '2023-02-05 05:04:30'),
(304, 26, '2023-08-08 14:21:13'),
(305, 4, '2023-03-24 22:21:51'),
(306, 17, '2023-04-16 02:27:41'),
(307, 4, '2023-08-28 12:44:10'),
(308, 17, '2023-06-02 18:07:24'),
(309, 5, '2023-06-02 15:56:43'),
(310, 10, '2023-08-21 15:31:45'),
(311, 23, '2023-08-23 15:25:12'),
(312, 9, '2023-07-20 16:59:36'),
(313, 14, '2023-08-08 19:17:26'),
(314, 10, '2023-04-06 22:38:56'),
(315, 21, '2023-04-11 18:16:11'),
(316, 2, '2023-05-15 16:09:04'),
(317, 19, '2023-05-17 06:51:53'),
(318, 19, '2023-04-19 18:43:54'),
(319, 23, '2023-07-03 08:09:34'),
(320, 22, '2023-06-25 17:43:01'),
(321, 22, '2023-04-01 01:56:03'),
(322, 5, '2023-07-18 08:34:42'),
(323, 8, '2023-04-17 16:06:29'),
(324, 19, '2023-02-27 03:05:22'),
(325, 19, '2023-05-11 13:46:30'),
(326, 11, '2023-01-24 05:46:05'),
(327, 9, '2023-08-12 14:37:02'),
(328, 9, '2023-02-06 14:23:57'),
(329, 7, '2023-03-21 05:36:03'),
(330, 8, '2023-04-26 13:44:29'),
(331, 13, '2023-03-24 14:08:41'),
(332, 22, '2023-08-05 14:54:42'),
(333, 12, '2023-05-10 13:23:48'),
(334, 12, '2023-07-22 22:20:02'),
(335, 2, '2023-02-14 15:36:17'),
(336, 17, '2023-04-08 14:45:50'),
(337, 6, '2023-05-28 15:50:39'),
(338, 21, '2023-04-25 07:47:13'),
(339, 7, '2023-03-05 03:56:41'),
(340, 11, '2023-07-05 10:06:24'),
(341, 1, '2023-04-12 23:02:01'),
(342, 5, '2023-07-29 20:05:38'),
(343, 12, '2023-01-27 21:24:03'),
(344, 12, '2023-03-31 03:32:03'),
(345, 6, '2023-04-04 09:33:51'),
(346, 9, '2023-07-17 08:09:37'),
(347, 24, '2023-03-16 11:09:17'),
(348, 4, '2023-07-04 10:50:54'),
(349, 12, '2023-07-08 21:10:13'),
(350, 20, '2023-07-23 10:35:36'),
(351, 3, '2023-02-28 10:03:58'),
(352, 15, '2023-04-02 11:54:52'),
(353, 4, '2023-01-08 11:25:46'),
(354, 20, '2023-07-12 22:08:20'),
(355, 7, '2023-05-20 04:01:58'),
(356, 18, '2023-02-12 15:03:11'),
(357, 26, '2023-06-11 05:16:28'),
(358, 7, '2023-08-13 09:43:35'),
(359, 18, '2023-06-09 13:30:35'),
(360, 12, '2023-01-02 11:50:43'),
(361, 11, '2023-02-20 14:13:15'),
(362, 21, '2023-07-14 22:38:41'),
(363, 9, '2023-06-23 05:36:08'),
(364, 14, '2023-03-13 19:58:11'),
(365, 12, '2023-01-05 07:57:42'),
(366, 3, '2023-06-09 20:55:17'),
(367, 20, '2023-02-16 01:36:54'),
(368, 25, '2023-03-21 19:03:01'),
(369, 21, '2023-03-07 18:23:19'),
(370, 6, '2023-01-15 01:45:49'),
(371, 14, '2023-01-14 09:23:38'),
(372, 2, '2023-06-18 07:09:14'),
(373, 25, '2023-03-22 11:45:13'),
(374, 22, '2023-07-13 22:42:57'),
(375, 7, '2023-02-28 20:56:55'),
(376, 2, '2023-04-15 06:07:15'),
(377, 15, '2023-06-19 04:50:00'),
(378, 5, '2023-03-22 08:22:55'),
(379, 24, '2023-01-25 03:05:18'),
(380, 1, '2023-08-01 20:52:09'),
(381, 17, '2023-01-17 02:18:34'),
(382, 22, '2023-07-31 17:17:31'),
(383, 6, '2023-04-12 19:16:41'),
(384, 10, '2023-04-06 10:38:20'),
(385, 19, '2023-02-02 06:58:46'),
(386, 4, '2023-02-17 10:00:28'),
(387, 8, '2023-06-19 19:00:26'),
(388, 3, '2023-08-15 14:26:30'),
(389, 12, '2023-02-18 19:30:45'),
(390, 9, '2023-07-07 06:19:25'),
(391, 25, '2023-03-15 13:55:54'),
(392, 13, '2023-06-21 03:53:29'),
(393, 8, '2023-08-28 18:35:19'),
(394, 8, '2023-07-19 13:06:27'),
(395, 3, '2023-08-07 12:13:06'),
(396, 22, '2023-06-02 21:01:59'),
(397, 3, '2023-08-10 09:20:09'),
(398, 17, '2023-05-28 00:27:50'),
(399, 23, '2023-07-28 11:16:15'),
(400, 15, '2023-01-04 14:50:45'),
(401, 23, '2023-03-27 10:02:02'),
(402, 23, '2023-05-10 07:48:31'),
(403, 12, '2023-06-02 12:50:08'),
(404, 18, '2023-04-21 10:03:13'),
(405, 14, '2023-07-11 00:15:49'),
(406, 4, '2023-07-06 03:06:19'),
(407, 18, '2023-05-23 14:28:50'),
(408, 12, '2023-01-18 16:47:50'),
(409, 21, '2023-04-15 18:31:20'),
(410, 15, '2023-08-29 09:41:02'),
(411, 21, '2023-08-26 08:30:43'),
(412, 18, '2023-01-07 20:41:57'),
(413, 1, '2023-06-24 20:56:33'),
(414, 14, '2023-08-13 20:34:13'),
(415, 9, '2023-05-11 09:54:37'),
(416, 7, '2023-01-08 18:58:53'),
(417, 2, '2023-08-09 19:23:44'),
(418, 12, '2023-01-28 08:10:22'),
(419, 13, '2023-04-17 05:54:28'),
(420, 13, '2023-01-29 17:51:29'),
(421, 19, '2023-06-09 15:23:16'),
(422, 5, '2023-01-22 04:35:44'),
(423, 8, '2023-02-17 17:28:49'),
(424, 6, '2023-07-14 01:17:47'),
(425, 1, '2023-02-03 03:49:19'),
(426, 10, '2023-06-04 05:32:31'),
(427, 7, '2023-08-01 05:12:47'),
(428, 10, '2023-08-03 19:54:23'),
(429, 25, '2023-01-18 09:31:35'),
(430, 10, '2023-02-04 09:29:16'),
(431, 15, '2023-05-26 15:31:09'),
(432, 26, '2023-02-08 20:20:51'),
(433, 1, '2023-05-09 14:32:36'),
(434, 19, '2023-04-22 09:31:49'),
(435, 12, '2023-06-28 08:05:39'),
(436, 9, '2023-08-01 04:15:59'),
(437, 1, '2023-08-17 05:35:00'),
(438, 16, '2023-06-13 22:55:57'),
(439, 9, '2023-01-09 13:12:11'),
(440, 3, '2023-05-22 05:49:51'),
(441, 9, '2023-02-20 20:32:56'),
(442, 15, '2023-03-04 21:58:17'),
(443, 9, '2023-02-22 11:41:41'),
(444, 5, '2023-05-27 04:47:19'),
(445, 15, '2023-06-14 08:59:53'),
(446, 25, '2023-05-17 02:07:08'),
(447, 17, '2023-07-01 02:47:53'),
(448, 5, '2023-04-17 22:29:15'),
(449, 5, '2023-08-02 13:30:05'),
(450, 8, '2023-01-02 19:52:10'),
(451, 7, '2023-05-01 00:31:51'),
(452, 23, '2023-01-17 10:38:28'),
(453, 24, '2023-03-27 17:32:57'),
(454, 26, '2023-04-21 16:29:11'),
(455, 8, '2023-05-04 17:13:07'),
(456, 16, '2023-04-11 15:29:35'),
(457, 8, '2023-01-26 06:52:01'),
(458, 9, '2023-07-08 12:57:44'),
(459, 22, '2023-01-13 21:18:05'),
(460, 19, '2023-04-02 17:33:31'),
(461, 11, '2023-05-13 03:33:04'),
(462, 9, '2023-05-08 03:35:28'),
(463, 3, '2023-03-24 09:20:02'),
(464, 7, '2023-05-06 03:03:32'),
(465, 24, '2023-04-30 12:48:59'),
(466, 15, '2023-05-31 07:11:24'),
(467, 17, '2023-03-08 19:02:35'),
(468, 3, '2023-04-03 00:50:33'),
(469, 4, '2023-07-26 05:53:44'),
(470, 25, '2023-02-10 18:47:28'),
(471, 24, '2023-04-18 22:59:12'),
(472, 5, '2023-06-15 08:57:14'),
(473, 20, '2023-01-24 12:45:35'),
(474, 24, '2023-07-20 14:23:13'),
(475, 19, '2023-05-31 09:15:33'),
(476, 1, '2023-08-04 11:22:46'),
(477, 19, '2023-01-22 20:57:10'),
(478, 1, '2023-04-01 12:27:33'),
(479, 18, '2023-03-07 08:58:56'),
(480, 15, '2023-01-12 07:13:06'),
(481, 15, '2023-04-16 23:20:01'),
(482, 25, '2023-07-08 06:32:05'),
(483, 18, '2023-07-23 21:12:55'),
(484, 6, '2023-03-31 02:31:45'),
(485, 8, '2023-04-23 04:10:31'),
(486, 3, '2023-08-13 16:04:47'),
(487, 2, '2023-01-23 05:12:39'),
(488, 26, '2023-07-06 18:17:44'),
(489, 17, '2023-04-25 02:20:50'),
(490, 3, '2023-06-12 07:50:39'),
(491, 8, '2023-05-19 15:24:31'),
(492, 12, '2023-03-04 23:38:47'),
(493, 24, '2023-01-23 15:13:03'),
(494, 18, '2023-08-12 09:52:15'),
(495, 5, '2023-04-19 04:14:38'),
(496, 8, '2023-02-11 20:23:32'),
(497, 13, '2023-03-07 02:59:16'),
(498, 16, '2023-04-02 03:06:23'),
(499, 1, '2023-04-23 17:17:57'),
(500, 23, '2023-02-16 07:01:28'),
(501, 11, '2023-04-01 16:15:52'),
(502, 24, '2023-02-21 21:46:26'),
(503, 25, '2023-03-31 06:36:24'),
(504, 26, '2023-03-18 04:42:40'),
(505, 10, '2023-05-10 21:09:10'),
(506, 6, '2023-07-02 20:58:55'),
(507, 2, '2023-02-05 14:19:43'),
(508, 16, '2023-07-14 20:21:30'),
(509, 18, '2023-06-17 16:12:43'),
(510, 14, '2023-02-19 06:36:04'),
(511, 10, '2023-03-24 05:24:48'),
(512, 25, '2023-02-28 11:04:35'),
(513, 16, '2023-04-09 16:16:16'),
(514, 15, '2023-01-19 09:47:57'),
(515, 9, '2023-03-13 08:15:25'),
(516, 11, '2023-03-09 11:51:34'),
(517, 14, '2023-03-11 02:49:25'),
(518, 4, '2023-04-19 13:21:54'),
(519, 7, '2023-06-12 10:28:40'),
(520, 12, '2023-06-02 19:34:33'),
(521, 11, '2023-06-24 11:00:26'),
(522, 17, '2023-01-15 13:07:39'),
(523, 18, '2023-07-23 16:33:17'),
(524, 5, '2023-02-09 02:47:20'),
(525, 16, '2023-08-26 03:44:03'),
(526, 3, '2023-08-22 16:54:28'),
(527, 5, '2023-02-03 20:53:11'),
(528, 4, '2023-03-08 02:35:45'),
(529, 6, '2023-01-20 23:22:37'),
(530, 3, '2023-08-18 18:50:40'),
(531, 3, '2023-08-18 22:12:34'),
(532, 12, '2023-01-02 12:47:43'),
(533, 9, '2023-01-29 05:44:40'),
(534, 3, '2023-02-25 15:57:14'),
(535, 7, '2023-02-09 09:39:29'),
(536, 2, '2023-08-14 23:41:57'),
(537, 20, '2023-04-08 10:54:15'),
(538, 13, '2023-01-03 09:23:28'),
(539, 6, '2023-02-17 09:19:09'),
(540, 10, '2023-07-03 17:48:29'),
(541, 24, '2023-08-20 21:48:51'),
(542, 12, '2023-04-25 05:39:19'),
(543, 3, '2023-06-18 16:04:07'),
(544, 16, '2023-03-24 21:13:16'),
(545, 20, '2023-04-15 03:44:45'),
(546, 12, '2023-04-07 23:17:20'),
(547, 22, '2023-01-10 16:36:26'),
(548, 4, '2023-02-17 06:23:46'),
(549, 1, '2023-05-13 18:19:35'),
(550, 9, '2023-01-26 14:33:16'),
(551, 6, '2023-01-29 18:37:27'),
(552, 5, '2023-02-08 02:45:47'),
(553, 18, '2023-01-11 07:00:50'),
(554, 11, '2023-02-13 16:53:41'),
(555, 19, '2023-03-21 04:36:56'),
(556, 9, '2023-03-29 06:56:09'),
(557, 25, '2023-04-20 03:15:45'),
(558, 6, '2023-05-17 00:11:01'),
(559, 7, '2023-03-18 11:19:14'),
(560, 9, '2023-07-30 09:49:06'),
(561, 26, '2023-04-05 21:31:49'),
(562, 12, '2023-02-06 10:55:20'),
(563, 1, '2023-06-08 09:43:54'),
(564, 3, '2023-04-30 20:44:11'),
(565, 2, '2023-01-25 17:17:51'),
(566, 8, '2023-07-07 20:03:27'),
(567, 25, '2023-03-17 11:03:58'),
(568, 9, '2023-06-05 18:05:54'),
(569, 20, '2023-07-04 14:03:49'),
(570, 1, '2023-02-05 02:58:53'),
(571, 6, '2023-04-05 20:24:41'),
(572, 1, '2023-05-01 01:57:05'),
(573, 14, '2023-02-23 05:56:30'),
(574, 14, '2023-02-24 00:38:17'),
(575, 3, '2023-02-01 20:01:54'),
(576, 5, '2023-02-11 23:21:14'),
(577, 3, '2023-05-09 18:50:21'),
(578, 2, '2023-03-28 02:16:44'),
(579, 12, '2023-03-26 11:40:36'),
(580, 3, '2023-08-19 19:00:52'),
(581, 9, '2023-02-06 20:22:19'),
(582, 9, '2023-01-24 01:08:16'),
(583, 9, '2023-07-02 01:32:17'),
(584, 9, '2023-07-24 11:22:17'),
(585, 9, '2023-06-02 15:47:14'),
(586, 8, '2023-06-08 03:40:53'),
(587, 11, '2023-08-30 11:57:23'),
(588, 21, '2023-05-06 06:34:18'),
(589, 21, '2023-05-19 09:18:27'),
(590, 26, '2023-02-02 08:03:20'),
(591, 4, '2023-01-21 04:47:33'),
(592, 12, '2023-05-05 20:11:05'),
(593, 25, '2023-08-21 05:52:30'),
(594, 24, '2023-06-12 02:46:26'),
(595, 20, '2023-07-08 16:33:58'),
(596, 19, '2023-04-10 18:31:49'),
(597, 17, '2023-01-08 01:05:18'),
(598, 25, '2023-07-18 12:19:32'),
(599, 4, '2023-01-06 21:00:19'),
(600, 8, '2023-07-07 00:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `spesifikasi_motor`
--

CREATE TABLE `spesifikasi_motor` (
  `motor_id` int(11) DEFAULT NULL,
  `mesin` text DEFAULT NULL,
  `rangka` text DEFAULT NULL,
  `dimensi` text DEFAULT NULL,
  `kapasitas` text DEFAULT NULL,
  `kelistrikan` text DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spesifikasi_motor`
--

INSERT INTO `spesifikasi_motor` (`motor_id`, `mesin`, `rangka`, `dimensi`, `kapasitas`, `kelistrikan`, `harga`) VALUES
(1, 'Tipe Mesin 4 – Langkah, SOHC, eSP<br>\r\n    Volume Langkah 109.5cc<br>\r\n    Sistem Suplai Bahan Bakar Injeksi (PGM-FI)<br>\r\n    Diameter X Langkah 47.0 x 63.1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10.0 : 1<br>\r\n    Daya Maksimum 6.6 kW (9.0 PS)/7.500 rpm<br>\r\n    Torsi Maksimum 9.3 N.m (0.95 kgf.m)/ 5.500 rpm<br>\r\n    Tipe Starter Elektrik dan Kick Starter<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Tulang Punggung – eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 80/90 – 14 M/C – Tubeless<br>\r\n    Ukuran Ban Belakang 90/90 – 14 M/C – Tubeless<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.877 x 669 x 1.074 mm (BeAT)<br>\r\n    Tinggi Tempat Duduk 740 mm<br>\r\n    Jarak Sumbu Roda 1.256 mm<br>\r\n    Jarak Terendah Ke Tanah 147 mm<br>\r\n    Curb Weight 89 Kg', 'Kapasitas Tangki Bahan Bakar 4.2 Liter<br>\r\n    Kapasitas Minyak Pelumas 0.65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki BeAT MF 12V-3Ah (Tipe CBS) MF 12V-5Ah (Tipe CBS-ISS)<br>\r\n    Sistem Pengapian Full Transisterized, Baterai<br>\r\n    Tipe Busi NGK MR9C-9N/DENSO U27EPR9-N9', 18570000),
(2, 'Tipe Mesin 4 – Langkah, SOHC, eSP<br>\r\n    Volume Langkah 109.5cc<br>\r\n    Sistem Suplai Bahan Bakar Injeksi (PGM-FI)<br>\r\n    Diameter X Langkah 47.0 x 63.1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10.0 : 1<br>\r\n    Daya Maksimum 6.6 kW (9.0 PS)/7.500 rpm<br>\r\n    Torsi Maksimum 9.3 N.m (0.95 kgf.m)/ 5.500 rpm<br>\r\n    Tipe Starter Elektrik dan Kick Starter<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Tulang Punggung – eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 80/90 – 14 M/C – Tubeless<br>\r\n    Ukuran Ban Belakang 90/90 – 14 M/C – Tubeless<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.877 x 669 x 1.074 mm (BeAT)<br>\r\n    Tinggi Tempat Duduk 740 mm<br>\r\n    Jarak Sumbu Roda 1.256 mm<br>\r\n    Jarak Terendah Ke Tanah 147 mm<br>\r\n    Curb Weight 89 Kg', 'Kapasitas Tangki Bahan Bakar 4.2 Liter<br>\r\n    Kapasitas Minyak Pelumas 0.65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki BeAT MF 12V-3Ah (Tipe CBS) MF 12V-5Ah (Tipe CBS-ISS)<br>\r\n    Sistem Pengapian Full Transisterized, Baterai<br>\r\n    Tipe Busi NGK MR9C-9N/DENSO U27EPR9-N9', 17720000),
(3, 'Tipe Mesin 4 – Langkah, SOHC, eSP<br>\r\n    Volume Langkah 109.5cc<br>\r\n    Sistem Suplai Bahan Bakar Injeksi (PGM-FI)<br>\r\n    Diameter X Langkah 47.0 x 63.1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10.0 : 1<br>\r\n    Daya Maksimum 6.6 kW (9.0 PS)/7.500 rpm<br>\r\n    Torsi Maksimum 9.3 N.m (0.95 kgf.m)/ 5.500 rpm<br>\r\n    Tipe Starter Elektrik dan Kick Starter<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Tulang Punggung – eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 80/90 – 14 M/C – Tubeless<br>\r\n    Ukuran Ban Belakang 90/90 – 14 M/C – Tubeless<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.877 x 669 x 1.074 mm (BeAT)<br>\r\n    Tinggi Tempat Duduk 740 mm<br>\r\n    Jarak Sumbu Roda 1.256 mm<br>\r\n    Jarak Terendah Ke Tanah 147 mm<br>\r\n    Curb Weight 89 Kg', 'Kapasitas Tangki Bahan Bakar 4.2 Liter<br>\r\n    Kapasitas Minyak Pelumas 0.65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki BeAT MF 12V-3Ah (Tipe CBS) MF 12V-5Ah (Tipe CBS-ISS)<br>\r\n    Sistem Pengapian Full Transisterized, Baterai<br>\r\n    Tipe Busi NGK MR9C-9N/DENSO U27EPR9-N9', 19720000),
(4, 'Tipe Mesin 4 – Langkah, SOHC, eSP<br>\r\n    Volume Langkah 109.5cc<br>\r\n    Sistem Suplai Bahan Bakar Injeksi (PGM-FI)<br>\r\n    Diameter X Langkah 47.0 x 63.1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10.0 : 1<br>\r\n    Daya Maksimum 6.6 kW (9.0 PS)/7.500 rpm<br>\r\n    Torsi Maksimum 9.3 N.m (0.95 kgf.m)/ 5.500 rpm<br>\r\n    Tipe Starter Elektrik dan Kick Starter<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Tulang Punggung – eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 80/90 – 14 M/C – Tubeless<br>\r\n    Ukuran Ban Belakang 90/90 – 14 M/C – Tubeless<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.877 x 669 x 1.074 mm (BeAT)<br>\r\n    Tinggi Tempat Duduk 740 mm<br>\r\n    Jarak Sumbu Roda 1.256 mm<br>\r\n    Jarak Terendah Ke Tanah 147 mm<br>\r\n    Curb Weight 89 Kg', 'Kapasitas Tangki Bahan Bakar 4.2 Liter<br>\r\n    Kapasitas Minyak Pelumas 0.65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki BeAT MF 12V-3Ah (Tipe CBS) MF 12V-5Ah (Tipe CBS-ISS)<br>\r\n    Sistem Pengapian Full Transisterized, Baterai<br>\r\n    Tipe Busi NGK MR9C-9N/DENSO U27EPR9-N9', 16720000),
(5, 'Tipe Mesin 4 – Langkah, SOHC, eSP<br>\r\n    Volume Langkah 109.5cc<br>\r\n    Sistem Suplai Bahan Bakar Injeksi (PGM-FI)<br>\r\n    Diameter X Langkah 47.0 x 63.1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10.0 : 1<br>\r\n    Daya Maksimum 6.6 kW (9.0 PS)/7.500 rpm<br>\r\n    Torsi Maksimum 9.3 N.m (0.95 kgf.m)/ 5.500 rpm<br>\r\n    Tipe Starter Elektrik dan Kick Starter<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Tulang Punggung – eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 80/90 – 14 M/C – Tubeless<br>\r\n    Ukuran Ban Belakang 90/90 – 14 M/C – Tubeless<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.877 x 669 x 1.074 mm (BeAT)<br>\r\n    Tinggi Tempat Duduk 740 mm<br>\r\n    Jarak Sumbu Roda 1.256 mm<br>\r\n    Jarak Terendah Ke Tanah 147 mm<br>\r\n    Curb Weight 89 Kg', 'Kapasitas Tangki Bahan Bakar 4.2 Liter<br>\r\n    Kapasitas Minyak Pelumas 0.65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki BeAT MF 12V-3Ah (Tipe CBS) MF 12V-5Ah (Tipe CBS-ISS)<br>\r\n    Sistem Pengapian Full Transisterized, Baterai<br>\r\n    Tipe Busi NGK MR9C-9N/DENSO U27EPR9-N9', 17920000),
(6, 'Tipe Mesin 4 – Langkah, SOHC, eSP<br>\r\n    Volume Langkah 109.5cc<br>\r\n    Sistem Suplai Bahan Bakar Injeksi (PGM-FI)<br>\r\n    Diameter X Langkah 47.0 x 63.1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10.0 : 1<br>\r\n    Daya Maksimum 6.6 kW (9.0 PS)/7.500 rpm<br>\r\n    Torsi Maksimum 9.3 N.m (0.95 kgf.m)/ 5.500 rpm<br>\r\n    Tipe Starter Elektrik dan Kick Starter<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Tulang Punggung – eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 80/90 – 14 M/C – Tubeless<br>\r\n    Ukuran Ban Belakang 90/90 – 14 M/C – Tubeless<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.877 x 669 x 1.074 mm (BeAT)<br>\r\n    Tinggi Tempat Duduk 740 mm<br>\r\n    Jarak Sumbu Roda 1.256 mm<br>\r\n    Jarak Terendah Ke Tanah 147 mm<br>\r\n    Curb Weight 89 Kg', 'Kapasitas Tangki Bahan Bakar 4.2 Liter<br>\r\n    Kapasitas Minyak Pelumas 0.65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki BeAT MF 12V-3Ah (Tipe CBS) MF 12V-5Ah (Tipe CBS-ISS)<br>\r\n    Sistem Pengapian Full Transisterized, Baterai<br>\r\n    Tipe Busi NGK MR9C-9N/DENSO U27EPR9-N9', 17020000),
(13, 'Tipe Mesin 4 – Langkah, SOHC, eSP<br>\r\n    Volume Langkah 109.5cc<br>\r\n    Sistem Suplai Bahan Bakar Injeksi (PGM-FI)<br>\r\n    Diameter X Langkah 47.0 x 63.1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10.0 : 1<br>\r\n    Daya Maksimum 6.6 kW (9.0 PS)/7.500 rpm<br>\r\n    Torsi Maksimum 9.3 N.m (0.95 kgf.m)/ 5.500 rpm<br>\r\n    Tipe Starter Elektrik dan Kick Starter<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Tulang Punggung – eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 80/90 – 14 M/C – Tubeless<br>\r\n    Ukuran Ban Belakang 90/90 – 14 M/C – Tubeless<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.877 x 669 x 1.074 mm (BeAT)<br>\r\n    Tinggi Tempat Duduk 740 mm<br>\r\n    Jarak Sumbu Roda 1.256 mm<br>\r\n    Jarak Terendah Ke Tanah 147 mm<br>\r\n    Curb Weight 89 Kg', 'Kapasitas Tangki Bahan Bakar 4.2 Liter<br>\r\n    Kapasitas Minyak Pelumas 0.65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki BeAT MF 12V-3Ah (Tipe CBS) MF 12V-5Ah (Tipe CBS-ISS)<br>\r\n    Sistem Pengapian Full Transisterized, Baterai<br>\r\n    Tipe Busi NGK MR9C-9N/DENSO U27EPR9-N9', 17029000),
(14, 'Tipe Mesin 4 – Langkah, SOHC, eSP<br>\r\n    Volume Langkah 109.5cc<br>\r\n    Sistem Suplai Bahan Bakar Injeksi (PGM-FI)<br>\r\n    Diameter X Langkah 47.0 x 63.1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10.0 : 1<br>\r\n    Daya Maksimum 6.6 kW (9.0 PS)/7.500 rpm<br>\r\n    Torsi Maksimum 9.3 N.m (0.95 kgf.m)/ 5.500 rpm<br>\r\n    Tipe Starter Elektrik dan Kick Starter<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Tulang Punggung – eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 80/90 – 14 M/C – Tubeless<br>\r\n    Ukuran Ban Belakang 90/90 – 14 M/C – Tubeless<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.877 x 669 x 1.074 mm (BeAT)<br>\r\n    Tinggi Tempat Duduk 740 mm<br>\r\n    Jarak Sumbu Roda 1.256 mm<br>\r\n    Jarak Terendah Ke Tanah 147 mm<br>\r\n    Curb Weight 89 Kg', 'Kapasitas Tangki Bahan Bakar 4.2 Liter<br>\r\n    Kapasitas Minyak Pelumas 0.65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki BeAT MF 12V-3Ah (Tipe CBS) MF 12V-5Ah (Tipe CBS-ISS)<br>\r\n    Sistem Pengapian Full Transisterized, Baterai<br>\r\n    Tipe Busi NGK MR9C-9N/DENSO U27EPR9-N9', 17129000),
(15, 'Tipe Mesin 4 – Langkah, SOHC, eSP<br>\r\n    Volume Langkah 109.5cc<br>\r\n    Sistem Suplai Bahan Bakar Injeksi (PGM-FI)<br>\r\n    Diameter X Langkah 47.0 x 63.1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10.0 : 1<br>\r\n    Daya Maksimum 6.6 kW (9.0 PS)/7.500 rpm<br>\r\n    Torsi Maksimum 9.3 N.m (0.95 kgf.m)/ 5.500 rpm<br>\r\n    Tipe Starter Elektrik dan Kick Starter<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Tulang Punggung – eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 80/90 – 14 M/C – Tubeless<br>\r\n    Ukuran Ban Belakang 90/90 – 14 M/C – Tubeless<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.877 x 669 x 1.074 mm (BeAT)<br>\r\n    Tinggi Tempat Duduk 740 mm<br>\r\n    Jarak Sumbu Roda 1.256 mm<br>\r\n    Jarak Terendah Ke Tanah 147 mm<br>\r\n    Curb Weight 89 Kg', 'Kapasitas Tangki Bahan Bakar 4.2 Liter<br>\r\n    Kapasitas Minyak Pelumas 0.65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki BeAT MF 12V-3Ah (Tipe CBS) MF 12V-5Ah (Tipe CBS-ISS)<br>\r\n    Sistem Pengapian Full Transisterized, Baterai<br>\r\n    Tipe Busi NGK MR9C-9N/DENSO U27EPR9-N9', 17189000),
(16, 'Tipe Mesin 4 – Langkah, SOHC, eSP<br>\r\n    Volume Langkah 109.5cc<br>\r\n    Sistem Suplai Bahan Bakar Injeksi (PGM-FI)<br>\r\n    Diameter X Langkah 47.0 x 63.1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10.0 : 1<br>\r\n    Daya Maksimum 6.6 kW (9.0 PS)/7.500 rpm<br>\r\n    Torsi Maksimum 9.3 N.m (0.95 kgf.m)/ 5.500 rpm<br>\r\n    Tipe Starter Elektrik dan Kick Starter<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Tulang Punggung – eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 80/90 – 14 M/C – Tubeless<br>\r\n    Ukuran Ban Belakang 90/90 – 14 M/C – Tubeless<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.877 x 669 x 1.074 mm (BeAT)<br>\r\n    Tinggi Tempat Duduk 740 mm<br>\r\n    Jarak Sumbu Roda 1.256 mm<br>\r\n    Jarak Terendah Ke Tanah 147 mm<br>\r\n    Curb Weight 89 Kg', 'Kapasitas Tangki Bahan Bakar 4.2 Liter<br>\r\n    Kapasitas Minyak Pelumas 0.65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki BeAT MF 12V-3Ah (Tipe CBS) MF 12V-5Ah (Tipe CBS-ISS)<br>\r\n    Sistem Pengapian Full Transisterized, Baterai<br>\r\n    Tipe Busi NGK MR9C-9N/DENSO U27EPR9-N9', 17289000),
(17, 'Tipe Mesin 4 – Langkah, SOHC, eSP<br>\r\n    Volume Langkah 109.5cc<br>\r\n    Sistem Suplai Bahan Bakar Injeksi (PGM-FI)<br>\r\n    Diameter X Langkah 47.0 x 63.1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10.0 : 1<br>\r\n    Daya Maksimum 6.6 kW (9.0 PS)/7.500 rpm<br>\r\n    Torsi Maksimum 9.3 N.m (0.95 kgf.m)/ 5.500 rpm<br>\r\n    Tipe Starter Elektrik dan Kick Starter<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Tulang Punggung – eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 80/90 – 14 M/C – Tubeless<br>\r\n    Ukuran Ban Belakang 90/90 – 14 M/C – Tubeless<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.877 x 669 x 1.074 mm (BeAT)<br>\r\n    Tinggi Tempat Duduk 740 mm<br>\r\n    Jarak Sumbu Roda 1.256 mm<br>\r\n    Jarak Terendah Ke Tanah 147 mm<br>\r\n    Curb Weight 89 Kg', 'Kapasitas Tangki Bahan Bakar 4.2 Liter<br>\r\n    Kapasitas Minyak Pelumas 0.65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki BeAT MF 12V-3Ah (Tipe CBS) MF 12V-5Ah (Tipe CBS-ISS)<br>\r\n    Sistem Pengapian Full Transisterized, Baterai<br>\r\n    Tipe Busi NGK MR9C-9N/DENSO U27EPR9-N9', 17989000),
(18, 'Tipe Mesin 4 – Langkah, SOHC, eSP<br>\r\n    Volume Langkah 109.5cc<br>\r\n    Sistem Suplai Bahan Bakar Injeksi (PGM-FI)<br>\r\n    Diameter X Langkah 47.0 x 63.1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10.0 : 1<br>\r\n    Daya Maksimum 6.6 kW (9.0 PS)/7.500 rpm<br>\r\n    Torsi Maksimum 9.3 N.m (0.95 kgf.m)/ 5.500 rpm<br>\r\n    Tipe Starter Elektrik dan Kick Starter<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Tulang Punggung – eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 80/90 – 14 M/C – Tubeless<br>\r\n    Ukuran Ban Belakang 90/90 – 14 M/C – Tubeless<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.877 x 669 x 1.074 mm (BeAT)<br>\r\n    Tinggi Tempat Duduk 740 mm<br>\r\n    Jarak Sumbu Roda 1.256 mm<br>\r\n    Jarak Terendah Ke Tanah 147 mm<br>\r\n    Curb Weight 89 Kg', 'Kapasitas Tangki Bahan Bakar 4.2 Liter<br>\r\n    Kapasitas Minyak Pelumas 0.65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki BeAT MF 12V-3Ah (Tipe CBS) MF 12V-5Ah (Tipe CBS-ISS)<br>\r\n    Sistem Pengapian Full Transisterized, Baterai<br>\r\n    Tipe Busi NGK MR9C-9N/DENSO U27EPR9-N9', 18989000),
(19, 'Tipe Mesin 4 – Langkah, SOHC, eSP<br>\r\n    Volume Langkah 109.5cc<br>\r\n    Sistem Suplai Bahan Bakar Injeksi (PGM-FI)<br>\r\n    Diameter X Langkah 47.0 x 63.1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10.0 : 1<br>\r\n    Daya Maksimum 6.6 kW (9.0 PS)/7.500 rpm<br>\r\n    Torsi Maksimum 9.3 N.m (0.95 kgf.m)/ 5.500 rpm<br>\r\n    Tipe Starter Elektrik dan Kick Starter<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Tulang Punggung – eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 80/90 – 14 M/C – Tubeless<br>\r\n    Ukuran Ban Belakang 90/90 – 14 M/C – Tubeless<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.877 x 669 x 1.074 mm (BeAT)<br>\r\n    Tinggi Tempat Duduk 740 mm<br>\r\n    Jarak Sumbu Roda 1.256 mm<br>\r\n    Jarak Terendah Ke Tanah 147 mm<br>\r\n    Curb Weight 89 Kg', 'Kapasitas Tangki Bahan Bakar 4.2 Liter<br>\r\n    Kapasitas Minyak Pelumas 0.65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki BeAT MF 12V-3Ah (Tipe CBS) MF 12V-5Ah (Tipe CBS-ISS)<br>\r\n    Sistem Pengapian Full Transisterized, Baterai<br>\r\n    Tipe Busi NGK MR9C-9N/DENSO U27EPR9-N9', 18779000),
(20, 'Tipe Mesin 4 – Langkah, SOHC, eSP<br>\r\n    Volume Langkah 109.5cc<br>\r\n    Sistem Suplai Bahan Bakar Injeksi (PGM-FI)<br>\r\n    Diameter X Langkah 47.0 x 63.1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10.0 : 1<br>\r\n    Daya Maksimum 6.6 kW (9.0 PS)/7.500 rpm<br>\r\n    Torsi Maksimum 9.3 N.m (0.95 kgf.m)/ 5.500 rpm<br>\r\n    Tipe Starter Elektrik dan Kick Starter<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Tulang Punggung – eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 80/90 – 14 M/C – Tubeless<br>\r\n    Ukuran Ban Belakang 90/90 – 14 M/C – Tubeless<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.877 x 669 x 1.074 mm (BeAT)<br>\r\n    Tinggi Tempat Duduk 740 mm<br>\r\n    Jarak Sumbu Roda 1.256 mm<br>\r\n    Jarak Terendah Ke Tanah 147 mm<br>\r\n    Curb Weight 89 Kg', 'Kapasitas Tangki Bahan Bakar 4.2 Liter<br>\r\n    Kapasitas Minyak Pelumas 0.65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki BeAT MF 12V-3Ah (Tipe CBS) MF 12V-5Ah (Tipe CBS-ISS)<br>\r\n    Sistem Pengapian Full Transisterized, Baterai<br>\r\n    Tipe Busi NGK MR9C-9N/DENSO U27EPR9-N9', 18777600),
(21, 'Tipe Mesin 4 – Langkah, SOHC, eSP<br>\r\n    Volume Langkah 109.5cc<br>\r\n    Sistem Suplai Bahan Bakar Injeksi (PGM-FI)<br>\r\n    Diameter X Langkah 47.0 x 63.1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10.0 : 1<br>\r\n    Daya Maksimum 6.6 kW (9.0 PS)/7.500 rpm<br>\r\n    Torsi Maksimum 9.3 N.m (0.95 kgf.m)/ 5.500 rpm<br>\r\n    Tipe Starter Elektrik dan Kick Starter<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Tulang Punggung – eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 80/90 – 14 M/C – Tubeless<br>\r\n    Ukuran Ban Belakang 90/90 – 14 M/C – Tubeless<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.877 x 669 x 1.074 mm (BeAT)<br>\r\n    Tinggi Tempat Duduk 740 mm<br>\r\n    Jarak Sumbu Roda 1.256 mm<br>\r\n    Jarak Terendah Ke Tanah 147 mm<br>\r\n    Curb Weight 89 Kg', 'Kapasitas Tangki Bahan Bakar 4.2 Liter<br>\r\n    Kapasitas Minyak Pelumas 0.65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki BeAT MF 12V-3Ah (Tipe CBS) MF 12V-5Ah (Tipe CBS-ISS)<br>\r\n    Sistem Pengapian Full Transisterized, Baterai<br>\r\n    Tipe Busi NGK MR9C-9N/DENSO U27EPR9-N9', 18755600),
(22, 'Tipe Mesin 4 – Langkah, SOHC, eSP<br>\r\n    Volume Langkah 109.5cc<br>\r\n    Sistem Suplai Bahan Bakar Injeksi (PGM-FI)<br>\r\n    Diameter X Langkah 47.0 x 63.1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10.0 : 1<br>\r\n    Daya Maksimum 6.6 kW (9.0 PS)/7.500 rpm<br>\r\n    Torsi Maksimum 9.3 N.m (0.95 kgf.m)/ 5.500 rpm<br>\r\n    Tipe Starter Elektrik dan Kick Starter<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Tulang Punggung – eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 80/90 – 14 M/C – Tubeless<br>\r\n    Ukuran Ban Belakang 90/90 – 14 M/C – Tubeless<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.877 x 669 x 1.074 mm (BeAT)<br>\r\n    Tinggi Tempat Duduk 740 mm<br>\r\n    Jarak Sumbu Roda 1.256 mm<br>\r\n    Jarak Terendah Ke Tanah 147 mm<br>\r\n    Curb Weight 89 Kg', 'Kapasitas Tangki Bahan Bakar 4.2 Liter<br>\r\n    Kapasitas Minyak Pelumas 0.65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki BeAT MF 12V-3Ah (Tipe CBS) MF 12V-5Ah (Tipe CBS-ISS)<br>\r\n    Sistem Pengapian Full Transisterized, Baterai<br>\r\n    Tipe Busi NGK MR9C-9N/DENSO U27EPR9-N9', 18655600),
(23, 'Tipe Mesin 4 – Langkah, SOHC, eSP<br>\r\n    Volume Langkah 109.5cc<br>\r\n    Sistem Suplai Bahan Bakar Injeksi (PGM-FI)<br>\r\n    Diameter X Langkah 47.0 x 63.1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10.0 : 1<br>\r\n    Daya Maksimum 6.6 kW (9.0 PS)/7.500 rpm<br>\r\n    Torsi Maksimum 9.3 N.m (0.95 kgf.m)/ 5.500 rpm<br>\r\n    Tipe Starter Elektrik dan Kick Starter<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Tulang Punggung – eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 80/90 – 14 M/C – Tubeless<br>\r\n    Ukuran Ban Belakang 90/90 – 14 M/C – Tubeless<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.877 x 669 x 1.074 mm (BeAT)<br>\r\n    Tinggi Tempat Duduk 740 mm<br>\r\n    Jarak Sumbu Roda 1.256 mm<br>\r\n    Jarak Terendah Ke Tanah 147 mm<br>\r\n    Curb Weight 89 Kg', 'Kapasitas Tangki Bahan Bakar 4.2 Liter<br>\r\n    Kapasitas Minyak Pelumas 0.65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki BeAT MF 12V-3Ah (Tipe CBS) MF 12V-5Ah (Tipe CBS-ISS)<br>\r\n    Sistem Pengapian Full Transisterized, Baterai<br>\r\n    Tipe Busi NGK MR9C-9N/DENSO U27EPR9-N9', 18699990),
(11, 'Tipe Mesin 4 - Langkah, SOHC dengan Pendingin Udara, eSP<br>\r\n    Sistem Suplai Bahan Bakar PGM-FI (Programmed Fuel Injection)<br>\r\n    Diameter X Langkah 47 x 63,1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10 : 1<br>\r\n    Daya Maksimum 6,6 kW (9 PS) / 7.500 rpm<br>\r\n    Torsi Maksimum 9,3 Nm (0,95 kgf.m) / 5.500 rpm<br>\r\n    Tipe Starter Elektrik & kick Starter / Elektrik (Tipe Smart Key)<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Underbone - eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 100/90 – 12 59J (Tubeless)<br>\r\n    Ukuran Ban Belakang 110/90 – 12 64J (Tubeless)<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.864 x 683 x 1.075 mm<br>\r\n    Tinggi Tempat Duduk 746 mm<br>\r\n    Jarak Sumbu Roda 1.251 mm<br>\r\n    Jarak Terendah Ke Tanah 145 mm<br>\r\n    Curb Weight 95 kg dan 94 kg (tipe SmartKey)', 'Kapasitas Tangki Bahan Bakar 4,2 L<br>\r\n    Kapasitas Minyak Pelumas 0,65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki MF 12V-5Ah<br>\r\n    Sistem Pengapian Full Transisterized<br>\r\n    Tipe Busi NGK MR9C-9N', 22120234),
(12, 'Tipe Mesin 4 - Langkah, SOHC dengan Pendingin Udara, eSP<br>\r\n    Sistem Suplai Bahan Bakar PGM-FI (Programmed Fuel Injection)<br>\r\n    Diameter X Langkah 47 x 63,1 mm<br>\r\n    Tipe Tranmisi Otomatis, V-Matic<br>\r\n    Rasio Kompresi 10 : 1<br>\r\n    Daya Maksimum 6,6 kW (9 PS) / 7.500 rpm<br>\r\n    Torsi Maksimum 9,3 Nm (0,95 kgf.m) / 5.500 rpm<br>\r\n    Tipe Starter Elektrik & kick Starter / Elektrik (Tipe Smart Key)<br>\r\n    Tipe Kopling Otomatis, Sentrifugal, Tipe Kering', 'Tipe Rangka Underbone - eSAF (enhance Smart Architecture Frame)<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Lengan Ayun dengan Peredam Kejut Tunggal<br>\r\n    Ukuran Ban Depan 100/90 – 12 59J (Tubeless)<br>\r\n    Ukuran Ban Belakang 110/90 – 12 64J (Tubeless)<br>\r\n    Rem Depan Cakram Hidrolik dengan Piston Tunggal<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem Pengereman Combi Brake System', 'Panjang X Lebar X Tinggi 1.864 x 683 x 1.075 mm<br>\r\n    Tinggi Tempat Duduk 746 mm<br>\r\n    Jarak Sumbu Roda 1.251 mm<br>\r\n    Jarak Terendah Ke Tanah 145 mm<br>\r\n    Curb Weight 95 kg dan 94 kg (tipe SmartKey)', 'Kapasitas Tangki Bahan Bakar 4,2 L<br>\r\n    Kapasitas Minyak Pelumas 0,65 Liter (Penggantian Periodik)', 'Tipe Baterai Atau Aki MF 12V-5Ah<br>\r\n    Sistem Pengapian Full Transisterized<br>\r\n    Tipe Busi NGK MR9C-9N', 20150000),
(7, 'Tipe Mesin 4-Langkah, SOHC, eSP, Pendinginan Cairan<br>\r\n    Sistem Suplai Bahan Bakar PGM-FI (Programmed Fuel Injection)<br>\r\n    Volume Langkah 124,8 cc<br>\r\n    Diameter X Langkah 52,4 x 57,9 mm<br>\r\n    Perbandingan Kompresi 11,0 : 1<br>\r\n    Tipe Tranmisi Otomatis , V - Matic<br>\r\n    Daya Maksimum 8,2 kW (11,1 PS) / 8.500 rpm<br>\r\n    Torsi Maksimum 10,8 Nm (1,1 kgf.m) / 5.000 rpm<br>\r\n    Tipe Starter Elektrik<br>\r\n    Tipe Kopling Automatic Sentrifugal, Tipe Kering<br>\r\n    Tipe Minyak Pelumas 0,8 liter (Penggantian Periodik)', 'Tipe Rangka Underbone<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Swing Arm dengan suspensi Tunggal<br>\r\n    Ukuran Ban Depan 90/80 – 14M/C 43 P Tubeless<br>\r\n    Ukuran Ban Belakang 100/80 - 14M/C 48P Tubeless<br>\r\n    Rem Depan Wavy Disc Brake<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem pengereman Combi Brake System (CBS)', 'Panjang X Lebar X Tinggi 1.918 x 679 x 1.066 mm<br>\r\n    Tinggi Tempat Duduk 769 mm<br>\r\n    Jarak Sumbu Roda 1.280 mm<br>\r\n    Jarak Terendah Ke Tanah 131 mm<br>\r\n    Curb Weight 112 kg', 'Kapasitas Tangki Bahan Bakar 5,5 liter<br>\r\n    Kapasitas Minyak Pelumas 0,8 liter pada Penggantian Periodik<br>\r\n    Kapasitas U-Box 18 liter', 'Tipe Baterai Atau Aki MF 12V-5 Ah<br>\r\n    Sistem Pengapian Full transisterized<br>\r\n    Tipe Busi NGK CPR9EA-9 / Denso U27EPR9', 28358273),
(8, 'Tipe Mesin 4-Langkah, SOHC, eSP, Pendinginan Cairan<br>\r\n    Sistem Suplai Bahan Bakar PGM-FI (Programmed Fuel Injection)<br>\r\n    Volume Langkah 124,8 cc<br>\r\n    Diameter X Langkah 52,4 x 57,9 mm<br>\r\n    Perbandingan Kompresi 11,0 : 1<br>\r\n    Tipe Tranmisi Otomatis , V - Matic<br>\r\n    Daya Maksimum 8,2 kW (11,1 PS) / 8.500 rpm<br>\r\n    Torsi Maksimum 10,8 Nm (1,1 kgf.m) / 5.000 rpm<br>\r\n    Tipe Starter Elektrik<br>\r\n    Tipe Kopling Automatic Sentrifugal, Tipe Kering<br>\r\n    Tipe Minyak Pelumas 0,8 liter (Penggantian Periodik)', 'Tipe Rangka Underbone<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Swing Arm dengan suspensi Tunggal<br>\r\n    Ukuran Ban Depan 90/80 – 14M/C 43 P Tubeless<br>\r\n    Ukuran Ban Belakang 100/80 - 14M/C 48P Tubeless<br>\r\n    Rem Depan Wavy Disc Brake<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem pengereman Combi Brake System (CBS)', 'Panjang X Lebar X Tinggi 1.918 x 679 x 1.066 mm<br>\r\n    Tinggi Tempat Duduk 769 mm<br>\r\n    Jarak Sumbu Roda 1.280 mm<br>\r\n    Jarak Terendah Ke Tanah 131 mm<br>\r\n    Curb Weight 112 kg', 'Kapasitas Tangki Bahan Bakar 5,5 liter<br>\r\n    Kapasitas Minyak Pelumas 0,8 liter pada Penggantian Periodik<br>\r\n    Kapasitas U-Box 18 liter', 'Tipe Baterai Atau Aki MF 12V-5 Ah<br>\r\n    Sistem Pengapian Full transisterized<br>\r\n    Tipe Busi NGK CPR9EA-9 / Denso U27EPR9', 23463463),
(9, 'Tipe Mesin 4-Langkah, SOHC, eSP, Pendinginan Cairan<br>\r\n    Sistem Suplai Bahan Bakar PGM-FI (Programmed Fuel Injection)<br>\r\n    Volume Langkah 124,8 cc<br>\r\n    Diameter X Langkah 52,4 x 57,9 mm<br>\r\n    Perbandingan Kompresi 11,0 : 1<br>\r\n    Tipe Tranmisi Otomatis , V - Matic<br>\r\n    Daya Maksimum 8,2 kW (11,1 PS) / 8.500 rpm<br>\r\n    Torsi Maksimum 10,8 Nm (1,1 kgf.m) / 5.000 rpm<br>\r\n    Tipe Starter Elektrik<br>\r\n    Tipe Kopling Automatic Sentrifugal, Tipe Kering<br>\r\n    Tipe Minyak Pelumas 0,8 liter (Penggantian Periodik)', 'Tipe Rangka Underbone<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Swing Arm dengan suspensi Tunggal<br>\r\n    Ukuran Ban Depan 90/80 – 14M/C 43 P Tubeless<br>\r\n    Ukuran Ban Belakang 100/80 - 14M/C 48P Tubeless<br>\r\n    Rem Depan Wavy Disc Brake<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem pengereman Combi Brake System (CBS)', 'Panjang X Lebar X Tinggi 1.918 x 679 x 1.066 mm<br>\r\n    Tinggi Tempat Duduk 769 mm<br>\r\n    Jarak Sumbu Roda 1.280 mm<br>\r\n    Jarak Terendah Ke Tanah 131 mm<br>\r\n    Curb Weight 112 kg', 'Kapasitas Tangki Bahan Bakar 5,5 liter<br>\r\n    Kapasitas Minyak Pelumas 0,8 liter pada Penggantian Periodik<br>\r\n    Kapasitas U-Box 18 liter', 'Tipe Baterai Atau Aki MF 12V-5 Ah<br>\r\n    Sistem Pengapian Full transisterized<br>\r\n    Tipe Busi NGK CPR9EA-9 / Denso U27EPR9', 25390222),
(10, 'Tipe Mesin 4-Langkah, SOHC, eSP, Pendinginan Cairan<br>\r\n    Sistem Suplai Bahan Bakar PGM-FI (Programmed Fuel Injection)<br>\r\n    Volume Langkah 124,8 cc<br>\r\n    Diameter X Langkah 52,4 x 57,9 mm<br>\r\n    Perbandingan Kompresi 11,0 : 1<br>\r\n    Tipe Tranmisi Otomatis , V - Matic<br>\r\n    Daya Maksimum 8,2 kW (11,1 PS) / 8.500 rpm<br>\r\n    Torsi Maksimum 10,8 Nm (1,1 kgf.m) / 5.000 rpm<br>\r\n    Tipe Starter Elektrik<br>\r\n    Tipe Kopling Automatic Sentrifugal, Tipe Kering<br>\r\n    Tipe Minyak Pelumas 0,8 liter (Penggantian Periodik)', 'Tipe Rangka Underbone<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Swing Arm dengan suspensi Tunggal<br>\r\n    Ukuran Ban Depan 90/80 – 14M/C 43 P Tubeless<br>\r\n    Ukuran Ban Belakang 100/80 - 14M/C 48P Tubeless<br>\r\n    Rem Depan Wavy Disc Brake<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem pengereman Combi Brake System (CBS)', 'Panjang X Lebar X Tinggi 1.918 x 679 x 1.066 mm<br>\r\n    Tinggi Tempat Duduk 769 mm<br>\r\n    Jarak Sumbu Roda 1.280 mm<br>\r\n    Jarak Terendah Ke Tanah 131 mm<br>\r\n    Curb Weight 112 kg', 'Kapasitas Tangki Bahan Bakar 5,5 liter<br>\r\n    Kapasitas Minyak Pelumas 0,8 liter pada Penggantian Periodik<br>\r\n    Kapasitas U-Box 18 liter', 'Tipe Baterai Atau Aki MF 12V-5 Ah<br>\r\n    Sistem Pengapian Full transisterized<br>\r\n    Tipe Busi NGK CPR9EA-9 / Denso U27EPR9', 24123928),
(24, 'Tipe Mesin 4-Langkah, SOHC, eSP, Pendinginan Cairan<br>\r\n    Sistem Suplai Bahan Bakar PGM-FI (Programmed Fuel Injection)<br>\r\n    Volume Langkah 124,8 cc<br>\r\n    Diameter X Langkah 52,4 x 57,9 mm<br>\r\n    Perbandingan Kompresi 11,0 : 1<br>\r\n    Tipe Tranmisi Otomatis , V - Matic<br>\r\n    Daya Maksimum 8,2 kW (11,1 PS) / 8.500 rpm<br>\r\n    Torsi Maksimum 10,8 Nm (1,1 kgf.m) / 5.000 rpm<br>\r\n    Tipe Starter Elektrik<br>\r\n    Tipe Kopling Automatic Sentrifugal, Tipe Kering<br>\r\n    Tipe Minyak Pelumas 0,8 liter (Penggantian Periodik)', 'Tipe Rangka Underbone<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Swing Arm dengan suspensi Tunggal<br>\r\n    Ukuran Ban Depan 90/80 – 14M/C 43 P Tubeless<br>\r\n    Ukuran Ban Belakang 100/80 - 14M/C 48P Tubeless<br>\r\n    Rem Depan Wavy Disc Brake<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem pengereman Combi Brake System (CBS)', 'Panjang X Lebar X Tinggi 1.918 x 679 x 1.066 mm<br>\r\n    Tinggi Tempat Duduk 769 mm<br>\r\n    Jarak Sumbu Roda 1.280 mm<br>\r\n    Jarak Terendah Ke Tanah 131 mm<br>\r\n    Curb Weight 112 kg', 'Kapasitas Tangki Bahan Bakar 5,5 liter<br>\r\n    Kapasitas Minyak Pelumas 0,8 liter pada Penggantian Periodik<br>\r\n    Kapasitas U-Box 18 liter', 'Tipe Baterai Atau Aki MF 12V-5 Ah<br>\r\n    Sistem Pengapian Full transisterized<br>\r\n    Tipe Busi NGK CPR9EA-9 / Denso U27EPR9', 25473027),
(25, 'Tipe Mesin 4-Langkah, SOHC, eSP, Pendinginan Cairan<br>\r\n    Sistem Suplai Bahan Bakar PGM-FI (Programmed Fuel Injection)<br>\r\n    Volume Langkah 124,8 cc<br>\r\n    Diameter X Langkah 52,4 x 57,9 mm<br>\r\n    Perbandingan Kompresi 11,0 : 1<br>\r\n    Tipe Tranmisi Otomatis , V - Matic<br>\r\n    Daya Maksimum 8,2 kW (11,1 PS) / 8.500 rpm<br>\r\n    Torsi Maksimum 10,8 Nm (1,1 kgf.m) / 5.000 rpm<br>\r\n    Tipe Starter Elektrik<br>\r\n    Tipe Kopling Automatic Sentrifugal, Tipe Kering<br>\r\n    Tipe Minyak Pelumas 0,8 liter (Penggantian Periodik)', 'Tipe Rangka Underbone<br>\r\n    Tipe Suspensi Depan Teleskopik<br>\r\n    Tipe Suspensi Belakang Swing Arm dengan suspensi Tunggal<br>\r\n    Ukuran Ban Depan 90/80 – 14M/C 43 P Tubeless<br>\r\n    Ukuran Ban Belakang 100/80 - 14M/C 48P Tubeless<br>\r\n    Rem Depan Wavy Disc Brake<br>\r\n    Rem Belakang Tromol<br>\r\n    Sistem pengereman Combi Brake System (CBS)', 'Panjang X Lebar X Tinggi 1.918 x 679 x 1.066 mm<br>\r\n    Tinggi Tempat Duduk 769 mm<br>\r\n    Jarak Sumbu Roda 1.280 mm<br>\r\n    Jarak Terendah Ke Tanah 131 mm<br>\r\n    Curb Weight 112 kg', 'Kapasitas Tangki Bahan Bakar 5,5 liter<br>\r\n    Kapasitas Minyak Pelumas 0,8 liter pada Penggantian Periodik<br>\r\n    Kapasitas U-Box 18 liter', 'Tipe Baterai Atau Aki MF 12V-5 Ah<br>\r\n    Sistem Pengapian Full transisterized<br>\r\n    Tipe Busi NGK CPR9EA-9 / Denso U27EPR9', 22710372);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(8, 'test', '$2y$10$lbBo5E4W8ekbIZikNFel8eHqq1nkNwrCEM9Nb8lfkWaVePHkPj.le'),
(13, 'aandikaaw', '$2y$10$m7rodjnF4Kuq0pOZllRkM.dN/hkpM4zs5c7JOZ5UbwWqH2NdtCFMy'),
(14, 'dikatahuinih', '$2y$10$PekzmnGnpKkMWJQQeNEdZuvDMcuZBNrhat0Pb.JO.3pcThLXtdqYi'),
(15, 'siapa aja bebas', '$2y$10$SQCR8LxC9m2s91lVGNXg/u3hOzu1crRlaXZgjvtoraLqd7/.QVEsO'),
(16, 'bela', '$2y$10$6txAFqZqYhjIyzHjUsk8/OD8FZI.uUBuqgBjvB2ofguRHCkMfDZBm'),
(17, 'tok', '$2y$10$CwkYd2fih9UtkSQmhgnYnOKW5CzE3s.ZMZrgognpvpDM9qCh5y0vy'),
(18, 'testt', '$2y$10$.VComiOeOYLQHo3nmhcSweVaJ28P1ItjvRQ3LOke3SJYWWu2xVtwi'),
(19, 'cek', '$2y$10$2kM6mRGdISoB2MQjWVqWAe3rC.sxRmalgbG9k.tvUYYtAAnVZtAWu'),
(20, 'asd', '$2y$10$6T0BWLi2K9VDFFnt8c6CB.ql16OKDNiUjsE9gysgob6El5h2n5o5y'),
(21, 'bila', '$2y$10$CCen2d/ftu5JNwaIHcTAVOB6MQ7xhm.piY7wyIS7Gkmks7Y/AgGTq'),
(22, 'jj', '$2y$10$TaWL.g167HIXs/m3a1uZ3ejeL49DNjVxiH1ioKNI4TrDp47usAAL6'),
(23, 'anora', '$2y$10$RW2hn90iGzU5S2oX9VOy2.TjG0PSTBQB0uzLdr/JGh9pFrmlhOy.i'),
(24, 'andika', '$2y$10$brhQG/zg5L4sIHVIPS8b5.0E4k24tr.KaglSrrRuIkrYDPucKp.mO'),
(25, 'user', '$2y$10$UBCVBlpD2VoMJuEtIBz3kueKeM5ENCgxCtEaTxFmheQFVj8cN5x6q');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`dealer_id`);

--
-- Indexes for table `motor`
--
ALTER TABLE `motor`
  ADD PRIMARY KEY (`motor_id`),
  ADD KEY `fk_motor_dealer` (`dealer_id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`penjualan_id`),
  ADD KEY `fk_penjualan_motor` (`motor_id`);

--
-- Indexes for table `spesifikasi_motor`
--
ALTER TABLE `spesifikasi_motor`
  ADD KEY `fk_spesifikasi_motor_motor` (`motor_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `penjualan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `motor`
--
ALTER TABLE `motor`
  ADD CONSTRAINT `fk_motor_dealer` FOREIGN KEY (`dealer_id`) REFERENCES `dealer` (`dealer_id`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `fk_penjualan_motor` FOREIGN KEY (`motor_id`) REFERENCES `motor` (`motor_id`);

--
-- Constraints for table `spesifikasi_motor`
--
ALTER TABLE `spesifikasi_motor`
  ADD CONSTRAINT `fk_spesifikasi_motor_motor` FOREIGN KEY (`motor_id`) REFERENCES `motor` (`motor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
