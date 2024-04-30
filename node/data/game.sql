-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-04-24 05:52:17
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
-- 資料表結構 `game`
--

CREATE TABLE `game` (
  `sid` int NOT NULL,
  `game_name` varchar(255) NOT NULL,
  `game_nameEG` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `store_id` int DEFAULT NULL,
  `game_cat` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `difficulty` int NOT NULL,
  `weekdays_price` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `holiday_price` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `player_count` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `age_limit` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `game_info` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `explainST_time` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `explainEND_time` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `game_pic` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type_pic` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `player_pic` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type_content` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `player_content` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `notice` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `game`
--

INSERT INTO `game` (`sid`, `game_name`, `game_nameEG`, `store_id`, `game_cat`, `difficulty`, `weekdays_price`, `holiday_price`, `time`, `player_count`, `age_limit`, `game_info`, `explainST_time`, `explainEND_time`, `game_pic`, `type_pic`, `player_pic`, `type_content`, `player_content`, `notice`, `created_at`, `updated_at`) VALUES
(1, '失落的鑰匙', 'Lost Key', 1, '益智解謎', 1, '450', '500', '60分鐘', '3-7人', '禁6歲以下', '失落的鑰匙是一款經典的密室逃脫解謎遊戲，玩家需要在規定時間內找到線索、解開謎題，最終逃出密室。本遊戲場景設定在一座神秘的廢棄城堡內，玩家需要發揮自己的智慧和觀察力，尋找隱藏的線索，找到失落的鑰匙才能成功逃脫。', '5-10分鐘', '5-10分鐘', 'game_pic_1', 'type_pic_1', 'player_pic_1', '益智解謎類\n新手體驗機關', '密室新手及中手\n喜愛益智解謎者', '請提前預約密室逃脫體驗，以確保有足夠的空間供您和您的團隊。', '2024-04-12 06:18:37', '2024-04-12 06:18:37'),
(2, '未知之門', 'Unknown Gate', 2, '益智解謎', 1, '450', '500', '60分鐘', '2-8人', '禁6歲以下', '未知之門是一款緊張刺激的密室逃脫解謎遊戲，玩家需要解開各種謎題、尋找線索，在時間限制內逃出密室。本遊戲設定在一個神秘的實驗室內，玩家需要面對未知的挑戰和危險，探索實驗室的各個角落，找到逃脫的方法。', '5-10分鐘', '5-10分鐘', 'game_pic_2', 'type_pic_2', 'player_pic_2', '益智解謎類\n新手體驗機關', '密室新手及中手\n喜愛益智解謎者', '請勿攜帶任何外部物品進入密室，以確保挑戰的公平性和安全性。', '2024-04-12 06:18:37', '2024-04-12 06:18:37'),
(3, '幽靈船艦', 'Ghost Ship', 1, '靈異恐怖', 1, '450', '500', '60分鐘', '6-10人', '禁6歲以下', '是一款刺激的密室逃脫解謎遊戲，玩家需要在一艘被詛咒的幽靈船上解開各種謎題、找到線索，逃出船艙。本遊戲場景設定在一艘陷入幽靈詛咒的海盜船上，玩家需要勇敢面對恐怖的環境，透過觀察、思考和解謎，找到逃脫的方法。', '5-10分鐘', '5-10分鐘', 'game_pic_3', 'type_pic_3', 'player_pic_3', '靈異恐怖類型', '密室新手及中手\n喜愛靈異恐怖者', '本店提供多個不同難度的密室逃脫挑戰，請選擇適合您團隊的挑戰難度。', '2024-04-12 06:18:37', '2024-04-12 06:18:37'),
(4, '古堡迷失', 'Lost Castle', 1, '神秘探險', 1, '450', '500', '60分鐘', '2-7人', '禁6歲以下', '古堡迷失是一款充滿謎題與挑戰的密室逃脫解謎遊戲，玩家需要探索一座廢棄的古堡、解開謎題、找到線索，最後逃出古堡。本遊戲場景設定在一座神秘的古老城堡內，玩家需要面對古老的詛咒和隱密的秘密，利用智慧和觀察力，成功逃離古堡。', '5-10分鐘', '5-10分鐘', 'game_pic_4', 'type_pic_4', 'player_pic_4', '偵探型密室逃脫\n注重組織能力', '密室新手及中手\n喜愛探險者', '在挑戰過程中，請隨時保持清醒並密切關注您的團隊成員。', '2024-04-12 06:18:37', '2024-04-12 06:18:37'),
(5, '末日逃出', 'Escape Apocalypse', 2, '末日生存', 1, '450', '500', '60分鐘', '4-10 人', '禁6歲以下', '末日逃出是一款緊張刺激的末世逃脫解謎遊戲，玩家需要在一個被毀滅的末日世界中找到生存的方法、解開各種謎題，逃出密室。本遊戲場景設定在一座末日廢墟中，玩家需要面對各種危險和挑戰，尋找逃生的道路。', '5-10分鐘', '5-10分鐘', 'game_pic_5', 'type_pic_5', 'player_pic_5', '著重故事理解、劇情還原\n科幻穿越元素', '密室新手及中手\n喜愛生存遊戲者', '為了您的安全，請遵守密室內的所有規定和指示。', '2024-04-12 06:18:37', '2024-04-12 06:18:37'),
(6, '末日之旅', 'Journey of Apocalypse', 2, '末日生存', 1, '450', '500', '60分鐘', '3-5 人', '禁6歲以下', '末日之旅是一款緊張刺激的末世密室逃脫解謎遊戲，玩家需要在一個被毀滅的世界中找到生存的方法、解開各種謎題，逃出密室。本遊戲場景設定在一座末日廢墟中，玩家需要面對各種危險和挑戰，尋找逃生的道路。', '5-10分鐘', '5-10分鐘', 'game_pic_6', 'type_pic_6', 'player_pic_6', '著重故事理解、劇情還原\n科幻穿越元素', '密室新手及中手\n喜愛生存遊戲者', '如有任何緊急情況，請立即向工作人員求助。', '2024-04-12 06:18:37', '2024-04-12 06:18:37'),
(7, '歷史遺跡', 'Historical Ruins', 16, '歷史懷舊', 1, '450', '500', '60分鐘', '2-8人', '禁6歲以下', '歷史遺跡是一款探索古老文明的密室逃脫解謎遊戲，玩家需要在古老的遺跡中尋找線索、解開謎題，最終逃出密室。本遊戲場景設定在一座古老文明的神秘遺址內，玩家需要通過解謎和考古，揭開文明的神秘面紗。', '5-10分鐘', '5-10分鐘', 'game_pic_7', 'type_pic_7', 'player_pic_7', '任務型密室逃脫\n注重資訊蒐集能力', '密室新手及中手\n喜愛歷史懷舊者', '挑戰過程中請不要強行打開或破壞任何裝置或道具。', '2024-04-12 06:18:37', '2024-04-12 06:18:37'),
(8, '時光迷宮', 'Time Maze', 7, '科幻未知', 1, '450', '500', '60分鐘', '2-8人', '禁6歲以下', '時光迷宮是一款穿越時空的密室逃脫解謎遊戲，玩家需要解開時空迷宮中的謎題、找到線索，最終逃出密室。本遊戲場景設定在一個充滿時空裂痕的神秘迷宮中，玩家需要穿越不同時代，解開時空之謎。', '5-10分鐘', '5-10分鐘', 'game_pic_8', 'type_pic_8', 'player_pic_8', '偵探型密室逃脫\n注重組織能力', '密室新手及中手\n喜愛科幻未知者', '請避免在挑戰過程中使用手機或其他外部通訊工具，以免影響挑戰體驗。', '2024-04-12 06:18:37', '2024-04-12 06:18:37'),
(9, '神秘星船', 'Mystery Starship', 8, '科幻未知', 1, '500', '550', '60分鐘', '2-8人', '禁6歲以下', '神秘星船是一款探索外太空的密室逃脫解謎遊戲，玩家需要在星際船艦中尋找線索、解開謎題，最終逃出密室。本遊戲場景設定在一艘神秘的外星船艦上，玩家需要面對外太空的挑戰，解開外星科技之謎。', '5-10分鐘', '5-10分鐘', 'game_pic_9', 'type_pic_9', 'player_pic_9', '著重故事理解、劇情還原\n科幻穿越元素', '密室新手及中手\n喜愛科幻未知者', '挑戰結束後，請勿洩漏任何關於挑戰內容的信息，以保持挑戰的神秘性。', '2024-04-12 06:18:37', '2024-04-12 06:18:37'),
(10, '絕望監獄', 'Desperate Prison', 14, '恐怖驚悚', 2, '500', '550', '60分鐘', '2-8人', '禁8歲以下', '絝望監獄是一款陷入絕望的密室逃脫解謎遊戲，玩家需要在監獄中尋找生存的方法、解開謎題，最終逃出密室。本遊戲場景設定在一座高牆鋼鐵監獄中，玩家需要面對囚犯的威脅和監獄的限制，尋找逃脫的道路。', '5-10分鐘', '5-10分鐘', 'game_pic_10', 'type_pic_10', 'player_pic_10', '偵探型密室逃脫\n注重組織能力', '密室新手及中手\n喜愛恐怖驚悚者', '請遵守遊戲規則並保持團隊合作，以提高挑戰成功的機會。', '2024-04-12 06:18:37', '2024-04-12 06:18:37'),
(11, '懸疑迷霧', 'Suspenseful Mist', 20, '懸疑推理', 2, '500', '550', '60分鐘', '3-7人', '禁8歲以下', '懸疑迷霧是一款充滿懸疑的密室逃脫解謎遊戲，玩家需要在迷霧籠罩的環境中尋找線索、解開謎題，最終逃出密室。本遊戲場景設定在一個神秘的迷霧小鎮中，玩家需要面對未知的危險和陰謀，揭開小鎮的真相。', '5-10分鐘', '5-10分鐘', 'game_pic_11', 'type_pic_11', 'player_pic_11', '任務型密室逃脫\n注重資訊蒐集能力', '密室新手及中手\n喜愛懸疑推理者', '挑戰結束後，請勿將任何遊戲物品帶離密室，以便下一個團隊挑戰。', '2024-04-12 06:18:37', '2024-04-12 06:18:37'),
(12, '維多利亞鬼屋', 'Victorian Haunted House', 22, '恐怖驚悚', 2, '500', '550', '60分鐘', '3-7人', '禁8歲以下', '維多利亞鬼屋是一款充滿恐怖驚悚的密室逃脫解謎遊戲，玩家需要在一座古老的鬼屋中尋找生存的方法、解開謎題，最終逃出密室。本遊戲場景設定在一座破舊的維多利亞時代建築中，玩家需要面對幽靈的恐懼，尋找生存的出路。', '5-10分鐘', '5-10分鐘', 'game_pic_12', 'type_pic_12', 'player_pic_12', '任務型密室逃脫\n注重資訊蒐集能力', '密室新手及中手\n喜愛恐怖驚悚者', '為了提供最佳的挑戰體驗，請勿攜帶飲食或飲料進入密室。', '2024-04-12 06:18:37', '2024-04-12 06:18:37'),
(13, '未來之城', 'Future City', 24, '科幻未知', 2, '500', '550', '60分鐘', '3-7人', '禁8歲以下', '未來之城是一款探索科技未來的密室逃脫解謎遊戲，玩家需要在未來科技城市中尋找線索、解開謎題，最終逃出密室。本遊戲場景設定在一個充滿高科技的未來城市中，玩家需要面對未來科技的挑戰和危機，尋找逃脫的方法。', '5-10分鐘', '5-10分鐘', 'game_pic_13', 'type_pic_13', 'player_pic_13', '著重故事理解、劇情還原\n科幻穿越元素', '密室新手及中手\n喜愛科幻未知者', '如有任何問題或建議，請隨時向工作人員反饋，我們將竭誠為您服務。', '2024-04-12 06:18:37', '2024-04-12 06:18:37'),
(14, '古代秘寶', 'Ancient Treasures', 28, '歷史懷舊', 2, '500', '550', '60分鐘', '3-7人', '禁8歲以下', '古代秘寶是一款尋找寶藏的密室逃脫解謎遊戲，玩家需要在古代文明遺跡中尋找寶藏、解開謎題，最終逃出密室。本遊戲場景設定在一座充滿古代寶藏的遺跡中，玩家需要通過探索和解謎，發現古代文明的秘密。', '5-10分鐘', '5-10分鐘', 'game_pic_14', 'type_pic_14', 'player_pic_14', '偵探型密室逃脫\n注重組織能力', '密室新手及中手\n喜愛歷史懷舊者', '請在挑戰前將手機關閉或靜音，以確保挑戰過程的專注度。', '2024-04-12 06:18:37', '2024-04-12 06:18:37'),
(15, '科幻太空艙', 'Sci-Fi Space Cabin', 29, '科幻未知', 2, '550', '600', '60分鐘', '3-7人', '禁8歲以下', '科幻太空艙是一款穿越太空的密室逃脫解謎遊戲，玩家需要在太空艙中尋找線索、解開謎題，最終逃出密室。本遊戲場景設定在一艘科幻太空艙上，玩家需要面對太空的危險和未知，尋找逃脫的方法。', '5-10分鐘', '5-10分鐘', 'game_pic_15', 'type_pic_15', 'player_pic_15', '偵探型密室逃脫\n注重組織能力', '密室新手及中手\n喜愛科幻未知者', '在挑戰過程中，請留意任何提示或線索，以幫助您解決難題。', '2024-04-12 06:18:37', '2024-04-12 06:18:37'),
(16, '絕密深夜驚魂', 'Secretive Midnight Terror', 3, '懸疑解謎', 3, '550', '600', '60分鐘', '6-10人', '禁10歲以下', '絕密深夜是一款神秘刺激的密室逃脫解謎遊戲，玩家需要在夜幕籠罩的環境中尋找線索、解開謎題，最終逃出密室。', '5-10分鐘', '5-10分鐘', 'game_pic_16', 'type_pic_16', 'player_pic_16', '偵探型密室逃脫\n注重組織能力', '厭倦鎖頭\n不愛文字閱讀', '請確保您的團隊成員身心健康，並避免在密室中使用暴力行為。', '2024-04-13 10:25:00', '2024-04-13 10:25:00'),
(17, '暗夜危機', 'Night Crisis', 4, '驚悚探險', 3, '550', '600', '60分鐘', '6-10人', '禁10歲以下', '暗夜危機是一款充滿危險的密室逃脫解謎遊戲，玩家需要在黑暗中尋找線索、解開謎題，最終逃出密室。', '5-10分鐘', '5-10分鐘', 'game_pic_17', 'type_pic_17', 'player_pic_17', '偵探型密室逃脫\n注重組織能力', '有一點密室逃脫經驗者\n喜歡自行搜索線索推動故事', '請在挑戰前核對您的預約時間，並提前到達以完成登記和準備。', '2024-04-13 10:25:00', '2024-04-13 10:25:00'),
(18, '迷失森林', 'Lost Forest', 5, '冒險尋寶', 3, '550', '600', '60分鐘', '6-10人', '禁10歲以下', '迷失森林是一款冒險刺激的密室逃脫解謎遊戲，玩家需要在叢林中尋找線索、解開謎題，最終逃出密室。', '5-10分鐘', '5-10分鐘', 'game_pic_18', 'type_pic_18', 'player_pic_18', '偵探型密室逃脫\n注重組織能力', '推理小說中毒\n密室逃脫高手', '挑戰過程中請不要強行打開或破壞任何裝置或道具。', '2024-04-13 10:25:00', '2024-04-13 10:25:00'),
(19, '遺忘研究', 'Forgotten Research', 6, '神秘科技', 4, '550', '600', '60分鐘', '6-10人', '禁10歲以下', '遺忘研究是一款神秘刺激的密室逃脫解謎遊戲，玩家需要在古老實驗室中尋找線索、解開謎題，最終逃出密室。', '10-15分鐘', '10-15分鐘', 'game_pic_19', 'type_pic_19', 'player_pic_19', '任務型密室逃脫\n注重資訊蒐集能力', '有一點密室逃脫經驗者\n喜歡自行搜索線索推動故事', '如有任何身體不適或情緒波動，請立即向工作人員求助。', '2024-04-13 10:25:00', '2024-04-13 10:25:00'),
(20, '迷霧神社', 'Mist Shrine', 7, '靈異探險', 4, '550', '600', '60分鐘', '2-7人', '禁10歲以下', '迷霧神社是一款神秘刺激的密室逃脫解謎遊戲，玩家需要在神秘神社中尋找線索、解開謎題，最終逃出密室。', '10-15分鐘', '10-15分鐘', 'game_pic_20', 'type_pic_20', 'player_pic_20', '任務型密室逃脫\n注重資訊蒐集能力', '推理小說中毒\n密室逃脫高手', '請勿在密室中攜帶任何易燃、易爆或危險品，以確保挑戰的安全性。', '2024-04-13 10:25:00', '2024-04-13 10:25:00'),
(21, '失控實驗', 'Out of Control Experiment', 8, '科幻驚悚', 4, '550', '600', '60分鐘', '2-7人', '禁10歲以下', '失控實驗是一款充滿危險的密室逃脫解謎遊戲，玩家需要在實驗室中尋找線索、解開謎題，最終逃出密室。', '10-15分鐘', '10-15分鐘', 'game_pic_21', 'type_pic_21', 'player_pic_21', '無鎖頭全機關自動化\n仰賴圖像理解及直覺動作', '推理小說中毒\n密室逃脫高手', '挑戰過程中，請勿將任何物品丟棄或擾亂挑戰場景，以免影響挑戰體驗。', '2024-04-13 10:25:00', '2024-04-13 10:25:00'),
(22, '魔幻迷宮', 'Magical Labyrinth', 9, '魔幻冒險', 4, '550', '600', '60分鐘', '2-7人', '禁10歲以下', '魔幻迷宮是一款神秘刺激的密室逃脫解謎遊戲，玩家需要在迷幻迷宮中尋找線索、解開謎題，最終逃出密室。', '10-15分鐘', '10-15分鐘', 'game_pic_22', 'type_pic_22', 'player_pic_22', '偵探型密室逃脫\n注重組織能力', '有一點密室逃脫經驗者\n喜歡自行搜索線索推動故事', '請在挑戰前仔細閱讀挑戰說明和注意事項，以免發生任何意外或誤解。', '2024-04-13 10:25:00', '2024-04-13 10:25:00'),
(23, '末日廢墟', 'Apocalypse Ruins', 10, '恐怖生存', 4, '550', '600', '60分鐘', '2-7人', '禁10歲以下', '末日廢墟是一款充滿恐怖驚悚的密室逃脫解謎遊戲，玩家需要在廢墟中尋找線索、解開謎題，最終逃出密室。', '10-15分鐘', '10-15分鐘', 'game_pic_23', 'type_pic_23', 'player_pic_23', '無鎖頭全機關自動化\n仰賴圖像理解及直覺動作', '推理小說中毒\n密室逃脫高手', '挑戰過程中，請保持冷靜和理性，避免因情緒激動而影響挑戰的進行。', '2024-04-13 10:25:00', '2024-04-13 10:25:00'),
(24, '幽影密室', 'Shadowy Chamber', 11, '恐怖懸疑', 5, '550', '600', '60分鐘', '2-7人', '禁12歲以下', '幽影密室是一款神秘刺激的密室逃脫解謎遊戲，玩家需要在幽暗密室中尋找線索、解開謎題，最終逃出密室。', '10-15分鐘', '10-15分鐘', 'game_pic_24', 'type_pic_24', 'player_pic_24', '無鎖頭全機關自動化\n仰賴圖像理解及直覺動作', '厭倦鎖頭\n不愛文字閱讀', '挑戰過程中，請密切注意您的周圍環境，以避免受傷或發生意外。', '2024-04-13 10:25:00', '2024-04-13 10:25:00'),
(25, '時光門', 'Gate of Time', 12, '科幻探險', 5, '600', '650', '60分鐘', '4-10 人', '禁12歲以下', '時光之門是一款穿越時空的密室逃脫解謎遊戲，玩家需要解開時空之門中的謎題、找到線索，最終逃出密室。', '10-15分鐘', '10-15分鐘', 'game_pic_25', 'type_pic_25', 'player_pic_25', '著重故事理解、劇情還原\n科幻穿越元素', '有一點密室逃脫經驗者\n喜歡自行搜索線索推動故事', '如有任何問題或建議，請隨時向工作人員反饋，我們將竭誠為您服務。', '2024-04-13 10:25:00', '2024-04-13 10:25:00'),
(26, '異界迷宮', 'Otherworld Maze', 13, '幻想冒險', 5, '600', '650', '60分鐘', '4-10 人', '禁12歲以下', '異界迷宮是一款神秘刺激的密室逃脫解謎遊戲，玩家需要在異界迷宮中尋找線索、解開謎題，最終逃出密室。', '10-15分鐘', '10-15分鐘', 'game_pic_26', 'type_pic_26', 'player_pic_26', '無鎖頭全機關自動化\n仰賴圖像理解及直覺動作', '推理小說中毒\n密室逃脫高手', '請避免在密室內大聲喧嘩或嘈雜，以免影響其他團隊的挑戰體驗。', '2024-04-13 10:25:00', '2024-04-13 10:25:00'),
(27, '迷途孤城', 'Lost City', 14, '孤城探險', 5, '600', '650', '90分鐘', '4-10 人', '禁12歲以下', '迷途孤城是一款神秘刺激的密室逃脫解謎遊戲，玩家需要在孤城中尋找線索、解開謎題，最終逃出密室。', '10-15分鐘', '10-15分鐘', 'game_pic_27', 'type_pic_27', 'player_pic_27', '著重故事理解、劇情還原\n科幻穿越元素', '厭倦鎖頭\n不愛文字閱讀', '挑戰過程中請不要強行打開或破壞任何裝置或道具。', '2024-04-13 10:25:00', '2024-04-13 10:25:00'),
(28, '神秘遺跡', 'Mysterious Ruins', 15, '考古探險', 5, '600', '650', '60分鐘', '4-10 人', '禁12歲以下', '神秘遺跡是一款探索古老文明的密室逃脫解謎遊戲，玩家需要在古老的遺跡中尋找線索、解開謎題，最終逃出密室。', '10-15分鐘', '10-15分鐘', 'game_pic_28', 'type_pic_28', 'player_pic_28', '無鎖頭全機關自動化\n仰賴圖像理解及直覺動作', '考古探險中毒\n密室逃脫高手', '請在挑戰結束後及時向工作人員反饋您的挑戰體驗和建議，以便我們不斷改進服務。', '2024-04-13 10:25:00', '2024-04-13 10:25:00'),
(29, '逐夢門', 'Dream Gate', 16, '夢境冒險', 5, '600', '650', '60分鐘', '4-10 人', '禁12歲以下', '逐夢之門是一款神秘刺激的密室逃脫解謎遊戲，玩家需要在夢境之門中尋找線索、解開謎題，最終逃出密室。', '10-15分鐘', '10-15分鐘', 'game_pic_29', 'type_pic_29', 'player_pic_29', '著重故事理解、劇情還原\n科幻穿越元素', '推理小說中毒\n密室逃脫高手', '為了您的安全，請遵守密室內的所有規定和指示。', '2024-04-13 10:25:00', '2024-04-13 10:25:00'),
(30, '時空幻境', 'Space-time Fantasy', 17, '時空探險', 5, '600', '650', '60分鐘', '4-10 人', '禁12歲以下', '時空幻境是一款穿越時空的密室逃脫解謎遊戲，玩家需要解開時空迷宮中的謎題、找到線索，最終逃出密室。', '10-15分鐘', '10-15分鐘', 'game_pic_30', 'type_pic_30', 'player_pic_30', '著重故事理解、劇情還原\n科幻穿越元素', '推理小說中毒\n密室逃脫高手', '請在挑戰前仔細閱讀挑戰說明和注意事項，以免發生任何意外或誤解。', '2024-04-13 10:25:00', '2024-04-13 10:25:00');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `game`
--
ALTER TABLE `game`
  MODIFY `sid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;