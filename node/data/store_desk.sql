-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-04-24 15:21:09
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
-- 資料表結構 `store_desk`
--

CREATE TABLE `store_desk` (
  `sid` int NOT NULL DEFAULT '0',
  `store_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `store_address` varchar(100) NOT NULL,
  `bussiness_hours` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `store_phone` varchar(20) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `store_pic` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `store_logo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `store_info` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `store_notice` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `store_desk`
--

INSERT INTO `store_desk` (`sid`, `store_name`, `store_address`, `bussiness_hours`, `store_phone`, `rating`, `store_pic`, `store_logo`, `store_info`, `store_notice`) VALUES
(1, '喬桌遊 桌遊娛樂天地', '高雄市新興區林森一路178號', '12:00-02:00', '0980939394', 4.5, 'desk_pic_1_1,desk_pic_1_2', 'desk_logo_1', '我們提供多樣的桌遊選擇，讓您在輕鬆的氛圍中度過愉快的時光。', '無低消，預約沒有人數限制，可帶外食，請大家記得將自己帶來的垃圾一起帶走喔'),
(2, '迴夢劇本桌遊館', '高雄市苓雅區中華四路9號', '11:00-23:00', '0905367718', 5.0, 'desk_pic_2_1,desk_pic_2_2', 'desk_logo_2', '專業的解說人員將帶您進入桌遊的奇妙世界，讓您盡情享受遊戲的樂趣。', '請小心勿讓水滴損傷桌遊，'),
(3, 'Game Square 遊戲平方', '104台北市中山區中山北路一段135巷9號2樓', '11:00-23:00', '0225811191', 4.5, 'desk_pic_3_1,desk_pic_3_2', 'desk_logo_3', '在我們的店裡，您可以找到最新最熱門的桌遊，並與朋友一起度過愉快的時光。', '如需嬰幼兒”玩具”請洽店員， 請勿讓年幼孩童自行拿取桌遊'),
(4, '策略之夢', '台北市大安區敦化南路一段100號', '11:00-24:00', '0901234567', 3.5, 'desk_pic_4_1,desk_pic_4_2', 'desk_logo_4', '我們提供最完善的桌遊服務，無論您是新手還是老手，都能在這裡找到適合您的遊戲。', '租借時請自行清點配件，避免店家自說自話'),
(5, '遊戲天堂', '新北市板橋區文化路二段30巷5號', '10:00-22:00', '0945678901', 4.5, 'desk_pic_5_1,desk_pic_5_2', 'desk_logo_5', '歡迎來到我們的桌遊樂園，這裏有各種各樣的桌遊等待著您的挑戰。', '租借時請注意桌遊對應之年齡層'),
(6, '樂趣坊', '台中市西區忠明南路123號', '12:00-02:00', '0923456123', 1.5, 'desk_pic_6_1,desk_pic_6_2', 'desk_logo_6', '我們致力於打造一個舒適愉快的桌遊空間，讓您盡情享受遊戲的樂趣。', '桌遊不得外借，限在店室內使用。'),
(7, '玩樂世界', '高雄市前鎮區成功二路50號', '11:00-23:00', '0987654321', 4.5, 'desk_pic_7_1,desk_pic_7_2', 'desk_logo_7', '我們擁有豐富的桌遊資源和專業的服務團隊，為您提供最好的遊戲體驗。', '每次桌遊借用以二種為限。'),
(8, '遊樂廣場', '桃園市中壢區永福路三段80巷12號', '10:00-22:00', '0978901234', 3.5, 'desk_pic_8_1,desk_pic_8_2', 'desk_logo_8', '在這裏，您可以找到各種各樣的桌遊，並與朋友一起度過愉快的時光。', '無低消，預約沒有人數限制，可帶外食，請大家記得將自己帶來的垃圾一起帶走喔'),
(9, '智慧棋局', '台南市安南區海安路一段200號', '12:00-02:00', '0932165478', 4.0, 'desk_pic_9_1,desk_pic_9_2', 'desk_logo_9', '我們的店鋪設有專業的遊戲導購人員，隨時為您解答遊戲疑問，讓您暢玩無憂。', '請小心勿讓水滴損傷桌遊，'),
(10, '重逢棋局', '彰化縣彰化市進德路56號', '11:00-23:00', '0967812345', 4.0, 'desk_pic_10_1,desk_pic_10_2', 'desk_logo_10', '歡迎來到我們的店鋪，這裏有最新最熱門的桌遊等待著您的光臨。', '如需嬰幼兒”玩具”請洽店員， 請勿讓年幼孩童自行拿取桌遊'),
(11, '親子桌遊屋', '新竹市東區科學園區研發一路2號', '13:00-03:00', '0954321897', 4.5, 'desk_pic_11_1,desk_pic_11_2', 'desk_logo_11', '我們提供多種多樣的桌遊選擇，讓您在愉快的氛圍中度過美好時光。', '租借時請自行清點配件，避免店家自說自話'),
(12, '遊樂園區', '嘉義市西區興業西路88號', '12:00-02:00', '0998765432', 1.5, 'desk_pic_12_1,desk_pic_12_2', 'desk_logo_12', '在我們的店鋪，您可以找到各種不同類型的桌遊，並與朋友一起度過愉快的時光。', '租借時請注意桌遊對應之年齡層'),
(13, '智者之牌', '宜蘭縣宜蘭市中山路二段45號', '10:00-22:00', '0912345678', 3.0, 'desk_pic_13_1,desk_pic_13_2', 'desk_logo_13', '我們致力於為客戶提供最好的桌遊體驗，讓您在遊戲中盡情放松和享受。', '桌遊不得外借，限在店室內使用。'),
(14, '戰略遊戲坊', '南投縣南投市南崗路三段70號', '12:00-02:00', '0923456789', 4.0, 'desk_pic_14_1,desk_pic_14_2', 'desk_logo_14', '我們的店鋪擁有各種豐富多樣的桌遊資源，讓您在這裏暢玩遊戲，盡享樂趣。', '每次桌遊借用以二種為限。'),
(15, '華麗棋局', '雲林縣斗六市大同路一段33號', '11:00-23:00', '0987654321', 2.5, 'desk_pic_15_1,desk_pic_15_2', 'desk_logo_15', '我們的店鋪設有專業的遊戲解說員，為您提供最專業的遊戲服務和指導。', '無低消，預約沒有人數限制，可帶外食，請大家記得將自己帶來的垃圾一起帶走喔'),
(16, '紙牌樂園', '新竹縣竹北市文化路178號', '11:00-21:00', '0945123786', 5.0, 'desk_pic_16_1,desk_pic_16_2', 'desk_logo_16', '我們提供各種各樣的桌遊選擇，讓您在這裏度過愉快的遊戲時光。', '請小心勿讓水滴損傷桌遊，'),
(17, '遊戲聚點', '基隆市七堵區八德路一段99號', '11:00-04:00', '0998765432', 3.5, 'desk_pic_17_1,desk_pic_17_2', 'desk_logo_17', '歡迎來到我們的店鋪，這裏有各種不同類型的桌遊等待著您的挑戰和探索。', '如需嬰幼兒”玩具”請洽店員， 請勿讓年幼孩童自行拿取桌遊'),
(18, '轉角桌遊店', '屏東縣屏東市廣東路二段60號', '10:00-22:00', '0912345678', 4.5, 'desk_pic_18_1,desk_pic_18_2', 'desk_logo_18', '我們的店鋪提供多種多樣的桌遊服務，讓您在遊戲中盡情享受快樂和刺激。', '租借時請自行清點配件，避免店家自說自話'),
(19, '未來遊戲社', '花蓮縣花蓮市中正路168號', '12:00-02:00', '0956789123', 2.0, 'desk_pic_19_1,desk_pic_19_2', 'desk_logo_19', '我們的店鋪設有專業的桌遊解說員，為您提供最好的遊戲體驗和服務。', '租借時請注意桌遊對應之年齡層'),
(20, '欢乐游戏屋', '澎湖縣馬公市西文里45號', '11:00-23:00', '0978563412', 1.5, 'desk_pic_20_1,desk_pic_20_2', 'desk_logo_20', '在我們的店鋪，您可以找到各種各樣的桌遊，並與朋友一起度過愉快的時光。', '桌遊不得外借，限在店室內使用。'),
(21, '雙人桌遊館', '金門縣金城鎮中正路三段22號', '11:00-03:00', '0921345678', 4.0, 'desk_pic_21_1,desk_pic_21_2', 'desk_logo_21', '我們提供多樣的桌遊選擇，讓您在輕鬆的氛圍中度過愉快的時光。', '每次桌遊借用以二種為限。'),
(22, '娛樂角落', '連江縣南竿鄉復興村60號', '10:00-23:00', '0967812345', 4.5, 'desk_pic_22_1,desk_pic_22_2', 'desk_logo_22', '專業的解說人員將帶您進入桌遊的奇妙世界，讓您盡情享受遊戲的樂趣。', '無低消，預約沒有人數限制，可帶外食，請大家記得將自己帶來的垃圾一起帶走喔'),
(23, '桌遊時光', '桃園市龜山區復興一路10號', '10:00-22:00', '0932154678', 2.5, 'desk_pic_23_1,desk_pic_23_2', 'desk_logo_23', '在我們的店裡，您可以找到最新最熱門的桌遊，並與朋友一起度過愉快的時光。', '請小心勿讓水滴損傷桌遊，'),
(24, '智樂桌遊天地', '台中市西屯區文華路567號', '12:00-02:00', '0918765432', 4.0, 'desk_pic_24_1,desk_pic_24_2', 'desk_logo_24', '我們提供最完善的桌遊服務，無論您是新手還是老手，都能在這裡找到適合您的遊戲。', '如需嬰幼兒”玩具”請洽店員， 請勿讓年幼孩童自行拿取桌遊'),
(25, '策略思維遊戲館', '彰化縣彰化市光復路890號', '12:00-05:00', '0954321897', 4.5, 'desk_pic_25_1,desk_pic_25_2', 'desk_logo_25', '歡迎來到我們的桌遊樂園，這裏有各種各樣的桌遊等待著您的挑戰。', '租借時請自行清點配件，避免店家自說自話'),
(26, '好友桌遊聚樂55', '新竹市東區中央路1234號', '11:00-23:00', '0978563412', 1.5, 'desk_pic_26_1,desk_pic_26_2', 'desk_logo_26', '我們致力於打造一個舒適愉快的桌遊空間，讓您盡情享受遊戲的樂趣。', '租借時請注意桌遊對應之年齡層'),
(27, '94愛玩', '台北市中山區何內路5號', '11:00-24:00', '0932161230', 3.5, 'desk_pic_27_1,desk_pic_27_2', 'desk_logo_27', '我們擁有豐富的桌遊資源和專業的服務團隊，為您提供最好的遊戲體驗。', '桌遊不得外借，限在店室內使用。'),
(28, '智慧遊局', '臺北市大安區敦化南路二段100號', '12:00-06:00', '0912345678', 4.5, 'desk_pic_28_1,desk_pic_28_2', 'desk_logo_28', '我們提供最完善的桌遊服務，無論您是新手還是老手，都能在這裡找到適合您的遊戲。', '租借時請注意桌遊對應之年齡層'),
(29, '樂趣山', '新北市板橋區文化路一段30巷5號', '10:00-22:00', '0987654321', 3.5, 'desk_pic_29_1,desk_pic_29_2', 'desk_logo_29', '歡迎來到我們的桌遊樂園，這裏有各種各樣的桌遊等待著您的挑戰。', '桌遊不得外借，限在店室內使用。'),
(30, '六吋心', '高雄市三民區民族一路100號', '12:00-02:00', '0932165478', 4.0, 'desk_pic_30_1,desk_pic_30_2', 'desk_logo_30', '我們致力於打造一個舒適愉快的桌遊空間，讓您盡情享受遊戲的樂趣。', '每次桌遊借用以二種為限。');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `store_desk`
--
ALTER TABLE `store_desk`
  ADD PRIMARY KEY (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
