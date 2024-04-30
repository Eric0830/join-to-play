-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-04-29 12:07:13
-- 伺服器版本： 8.0.35
-- PHP 版本： 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `join_to_play`
--

-- --------------------------------------------------------

--
-- 資料表結構 `match_desk_member`
--

CREATE TABLE `match_desk_member` (
  `mdm_id` int NOT NULL,
  `member_id` int NOT NULL,
  `match_desk_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `match_desk_member`
--

INSERT INTO `match_desk_member` (`mdm_id`, `member_id`, `match_desk_id`, `created_at`) VALUES
(1, 5, 1, '2024-04-13 00:20:35'),
(2, 11, 1, '2024-04-13 00:28:35'),
(3, 15, 1, '2024-04-13 00:28:35'),
(4, 3, 1, '2024-04-13 00:28:35'),
(5, 18, 1, '2024-04-13 02:28:35'),
(6, 1, 2, '2024-04-13 00:24:35'),
(7, 3, 2, '2024-04-10 00:28:35'),
(9, 17, 3, '2024-04-13 00:25:35'),
(12, 16, 4, '2024-04-14 00:28:35'),
(13, 19, 5, '2024-04-13 00:18:35'),
(14, 14, 5, '2024-04-13 00:28:35'),
(15, 3, 5, '2024-04-13 00:28:35'),
(16, 10, 6, '2024-04-10 00:08:35'),
(19, 7, 7, '2024-04-08 00:28:35'),
(20, 18, 7, '2024-04-13 00:28:35'),
(21, 17, 8, '2024-04-13 00:18:35'),
(22, 20, 8, '2024-04-13 00:28:35'),
(23, 2, 9, '2024-04-13 00:18:35'),
(24, 9, 9, '2024-04-10 00:28:36'),
(27, 12, 9, '2024-04-08 00:28:36'),
(29, 13, 10, '2024-04-13 00:28:35'),
(30, 4, 10, '2024-04-13 00:28:35'),
(31, 8, 11, '2024-04-13 00:18:35'),
(33, 6, 12, '2024-04-13 00:18:35'),
(35, 11, 13, '2024-04-13 02:18:35'),
(36, 1, 13, '2024-04-13 00:28:35'),
(37, 16, 13, '2024-04-10 00:28:35'),
(38, 9, 13, '2024-04-12 00:28:35'),
(39, 4, 13, '2024-04-13 00:28:35'),
(40, 8, 14, '2024-04-12 00:18:35'),
(41, 20, 14, '2024-04-11 00:28:35'),
(44, 2, 15, '2024-04-13 00:28:35'),
(46, 19, 16, '2024-04-10 00:28:35'),
(47, 5, 16, '2024-04-13 00:28:35'),
(48, 19, 17, '2024-04-03 00:08:35'),
(50, 8, 18, '2024-04-13 00:18:35'),
(51, 12, 18, '2024-04-13 00:28:35'),
(52, 11, 19, '2024-04-13 00:18:35'),
(53, 6, 19, '2024-04-13 00:28:35'),
(58, 15, 20, '2024-04-13 00:28:36'),
(60, 10, 20, '2024-04-13 00:28:35'),
(61, 7, 21, '2024-04-13 00:18:35'),
(62, 14, 21, '2024-04-13 00:28:35'),
(63, 13, 22, '2024-04-13 00:08:35'),
(64, 5, 22, '2024-04-13 00:28:35'),
(67, 16, 23, '2024-04-10 00:28:35'),
(68, 19, 23, '2024-04-12 00:28:35'),
(69, 14, 23, '2024-04-13 00:28:35'),
(70, 10, 24, '2024-04-12 00:08:35'),
(73, 7, 25, '2024-04-13 00:18:35'),
(74, 11, 25, '2024-04-13 00:28:35'),
(75, 18, 26, '2024-04-13 00:18:35'),
(76, 17, 26, '2024-04-10 00:28:35'),
(77, 20, 26, '2024-04-13 00:28:35'),
(78, 2, 27, '2024-04-03 00:08:35'),
(79, 9, 27, '2024-04-08 00:28:35'),
(81, 12, 28, '2024-04-13 00:28:35'),
(83, 13, 29, '2024-04-13 00:28:35'),
(84, 15, 29, '2024-04-10 00:28:36'),
(85, 4, 29, '2024-04-13 00:28:36'),
(86, 8, 29, '2024-04-03 00:28:36'),
(88, 6, 30, '2024-04-13 00:28:36'),
(90, 3, 33, '2024-04-16 09:18:12'),
(92, 1, 1, '2024-04-16 15:28:32'),
(94, 14, 34, '2024-04-17 02:40:38'),
(95, 11, 31, '2024-04-17 02:40:56'),
(96, 4, 35, '2024-04-17 03:21:28'),
(97, 5, 38, '2024-04-17 05:22:07'),
(98, 5, 39, '2024-04-17 05:38:28'),
(99, 17, 40, '2024-04-17 06:03:28'),
(100, 17, 41, '2024-04-19 07:55:55'),
(101, 13, 15, '2024-04-19 08:06:44'),
(102, 13, 30, '2024-04-19 08:07:58'),
(103, 13, 41, '2024-04-19 08:10:30'),
(104, 13, 14, '2024-04-19 08:12:29'),
(105, 13, 40, '2024-04-19 10:57:24'),
(106, 13, 39, '2024-04-19 10:58:15'),
(107, 9, 2, '2024-04-19 13:41:52'),
(108, 9, 1, '2024-04-19 13:43:07'),
(109, 9, 6, '2024-04-19 13:48:40'),
(110, 9, 31, '2024-04-19 13:49:42'),
(111, 4, 32, '2024-04-19 13:58:00'),
(112, 9, 30, '2024-04-19 14:03:12'),
(113, 9, 40, '2024-04-19 14:04:29'),
(114, 9, 35, '2024-04-19 14:05:52'),
(115, 17, 42, '2024-04-19 15:33:23'),
(116, 16, 42, '2024-04-20 01:51:14'),
(117, 16, 40, '2024-04-20 01:51:28'),
(118, 16, 43, '2024-04-20 01:52:06'),
(119, 16, 41, '2024-04-23 05:52:32'),
(120, 16, 39, '2024-04-23 05:52:50'),
(121, 8, 38, '2024-04-23 06:00:52'),
(122, 8, 43, '2024-04-23 06:01:00'),
(123, 8, 41, '2024-04-23 06:01:11'),
(124, 11, 44, '2024-04-23 06:02:17'),
(125, 11, 39, '2024-04-23 06:02:39'),
(126, 7, 44, '2024-04-23 06:03:00'),
(127, 7, 45, '2024-04-25 02:49:15'),
(128, 7, 41, '2024-04-25 02:49:55'),
(129, 9, 45, '2024-04-26 14:57:39'),
(130, 9, 41, '2024-04-26 14:58:27'),
(131, 1, 47, '2024-04-29 03:08:25'),
(132, 14, 47, '2024-04-29 03:09:19'),
(133, 1, 42, '2024-04-29 03:26:31'),
(134, 11, 5, '2024-04-29 03:28:27'),
(135, 11, 40, '2024-04-29 03:34:19'),
(136, 6, 40, '2024-04-29 03:42:26'),
(137, 6, 47, '2024-04-29 03:42:42'),
(138, 11, 47, '2024-04-29 03:42:50'),
(139, 3, 47, '2024-04-29 03:42:58');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `match_desk_member`
--
ALTER TABLE `match_desk_member`
  ADD PRIMARY KEY (`mdm_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `match_desk_member`
--
ALTER TABLE `match_desk_member`
  MODIFY `mdm_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
