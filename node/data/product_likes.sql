-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-02-27 16:14:55
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
-- 資料庫： `proj57`
--

-- --------------------------------------------------------

--
-- 資料表結構 `product_likes`
--

CREATE TABLE `product_likes` (
  `sid` int NOT NULL,
  `product_sid` int NOT NULL,
  `member_sid` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `product_likes`
--

INSERT INTO `product_likes` (`sid`, `product_sid`, `member_sid`, `created_at`) VALUES
(6, 22, 20, '2024-02-27 08:07:55');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `product_likes`
--
ALTER TABLE `product_likes`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `product_sid` (`product_sid`),
  ADD KEY `member_sid` (`member_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_likes`
--
ALTER TABLE `product_likes`
  MODIFY `sid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
