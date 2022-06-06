-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 06 2022 г., 09:40
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vitacheck`
--

-- --------------------------------------------------------

--
-- Структура таблицы `fruits`
--

CREATE TABLE `fruits` (
  `id` int(30) NOT NULL,
  `vis` int(1) NOT NULL DEFAULT 1,
  `del` int(1) NOT NULL DEFAULT 0,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fat` float NOT NULL DEFAULT 0,
  `protein` float NOT NULL DEFAULT 0,
  `carbohydrates` float NOT NULL DEFAULT 0,
  `water` float NOT NULL DEFAULT 0,
  `A1` float NOT NULL DEFAULT 0,
  `bCarotene` float NOT NULL DEFAULT 0,
  `aCarotene` float NOT NULL DEFAULT 0,
  `B1` float NOT NULL DEFAULT 0,
  `B2` float NOT NULL DEFAULT 0,
  `B3` float NOT NULL DEFAULT 0,
  `B5` float NOT NULL DEFAULT 0,
  `B6` float NOT NULL DEFAULT 0,
  `B7` float NOT NULL DEFAULT 0,
  `B9` float NOT NULL DEFAULT 0,
  `B12` float NOT NULL DEFAULT 0,
  `C` float NOT NULL DEFAULT 0,
  `D1` float NOT NULL DEFAULT 0,
  `D2` float NOT NULL DEFAULT 0,
  `D3` float NOT NULL DEFAULT 0,
  `D4` float NOT NULL DEFAULT 0,
  `D5` float NOT NULL DEFAULT 0,
  `E` float NOT NULL DEFAULT 0,
  `K1` float NOT NULL DEFAULT 0,
  `K2` float NOT NULL DEFAULT 0,
  `B4` float NOT NULL DEFAULT 0,
  `B8` float NOT NULL DEFAULT 0,
  `B10` float NOT NULL DEFAULT 0,
  `B11` float NOT NULL DEFAULT 0,
  `B13` float NOT NULL DEFAULT 0,
  `B15` float NOT NULL DEFAULT 0,
  `N` float NOT NULL DEFAULT 0,
  `P` float NOT NULL DEFAULT 0,
  `U` float NOT NULL DEFAULT 0,
  `Zn` float NOT NULL DEFAULT 0,
  `Fe` float NOT NULL DEFAULT 0,
  `Ca` float NOT NULL DEFAULT 0,
  `Mg` float NOT NULL DEFAULT 0,
  `Cu` float NOT NULL DEFAULT 0,
  `Mn` float NOT NULL DEFAULT 0,
  `Cr` float NOT NULL DEFAULT 0,
  `Se` float NOT NULL DEFAULT 0,
  `I` float NOT NULL DEFAULT 0,
  `Mo` float NOT NULL DEFAULT 0,
  `K` float NOT NULL DEFAULT 0,
  `Na` float NOT NULL DEFAULT 0,
  `F` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `fruits`
--

INSERT INTO `fruits` (`id`, `vis`, `del`, `img`, `name`, `fat`, `protein`, `carbohydrates`, `water`, `A1`, `bCarotene`, `aCarotene`, `B1`, `B2`, `B3`, `B5`, `B6`, `B7`, `B9`, `B12`, `C`, `D1`, `D2`, `D3`, `D4`, `D5`, `E`, `K1`, `K2`, `B4`, `B8`, `B10`, `B11`, `B13`, `B15`, `N`, `P`, `U`, `Zn`, `Fe`, `Ca`, `Mg`, `Cu`, `Mn`, `Cr`, `Se`, `I`, `Mo`, `K`, `Na`, `F`) VALUES
(1, 1, 0, 'https://dl.airtable.com/.attachmentThumbnails/57a14719a13dd57f76ec6bf8dc98851e/9ecf4d1b', 'Apple', 170, 260, 13810, 85560, 0.003, 0.027, 0, 0, 0, 0.1, 0.1, 0, 0, 0.003, 0, 4.6, 0, 0, 0, 0, 0, 0.2, 0.0022, 0, 3.4, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0.1, 6, 5, 0, 0, 0, 0, 0, 0, 107, 1, 0.0033),
(2, 1, 0, 'https://dl.airtable.com/.attachmentThumbnails/c6100fdda0169dd650a9a95e03945cc2/0298c6be', 'Apricot', 390, 1400, 11120, 86320, 0.096, 1.094, 0.019, 0, 0, 0.6, 0.2, 0.1, 0, 0.009, 0, 10, 0, 0, 0, 0, 0, 0.9, 0.0033, 0, 2.8, 0, 0, 0, 0, 0, 0, 23, 0, 0.2, 0.4, 13, 10, 0.1, 0.1, 0, 0.001, 0, 0, 259, 1, 0),
(3, 1, 0, 'https://dl.airtable.com/.attachmentThumbnails/5edb20555dc21f559bb23595d864fd41/9946efb5', 'Banana', 330, 1090, 22840, 74910, 0.003, 0.026, 0.025, 0, 0.1, 0.7, 0.3, 0.4, 0, 0.02, 0, 8.7, 0, 0, 0, 0, 0, 0.1, 0.0005, 0, 9.8, 0, 0, 0, 0, 0, 0, 22, 0, 0.2, 0.3, 5, 27, 0.1, 0.3, 0, 0.001, 0, 0, 358, 1, 0),
(4, 1, 0, 'https://dl.airtable.com/.attachmentThumbnails/827d9de2ace309348a390431c58260ff/ed0d4f7f', 'Cherry', 300, 1000, 12180, 86130, 0.064, 0.77, 0, 0, 0, 0.4, 0.1, 0, 0, 0.008, 0, 10, 0, 0, 0, 0, 0, 0.1, 0.0021, 0, 6.1, 0, 0, 0, 0, 0, 0, 15, 0, 0.1, 0.3, 16, 9, 0.1, 0.1, 0, 0, 0, 0, 173, 3, 0),
(5, 1, 0, 'https://dl.airtable.com/.attachmentThumbnails/4f44a8c75b7bcb5b9ffa523c58e98e0d/23010447', 'Grape red/green', 160, 720, 18100, 80540, 0.003, 0.039, 0.001, 0.1, 0.1, 0.2, 0.1, 0.1, 0, 0.002, 0, 3.2, 0, 0, 0, 0, 0, 0.2, 0.0146, 0, 5.6, 0, 0, 0, 0, 0, 0, 20, 0, 0.1, 0.4, 10, 7, 0.1, 0.1, 0, 0.0001, 0, 0, 191, 2, 0.0078),
(6, 1, 0, 'https://dl.airtable.com/.attachmentThumbnails/5966655102c49125cb327eb0925f0b5b/4f8e1dc3', 'Lemon', 300, 1100, 9320, 88980, 0.001, 0.003, 0.001, 0, 0, 0.1, 0.2, 0.1, 0, 0.011, 0, 53, 0, 0, 0, 0, 0, 0.2, 0, 0, 5.1, 0, 0, 0, 0, 0, 0, 16, 0, 0.1, 0.6, 26, 8, 0, 0, 0, 0.0004, 0, 0, 138, 2, 0),
(7, 1, 0, 'https://dl.airtable.com/.attachmentThumbnails/5e8dc309ea2897bdde2d531c4eceb00e/0410f703', 'Orange', 120, 940, 11750, 86750, 0.011, 0.071, 0.011, 0.1, 0, 0.3, 0.3, 0.1, 0, 0.03, 0, 53.2, 0, 0, 0, 0, 0, 0.2, 0, 0, 8.4, 0, 0, 0, 0, 0, 0, 14, 0, 0.1, 0.1, 40, 10, 0, 0, 0, 0.0005, 0, 0, 181, 0, 0),
(8, 1, 0, 'https://dl.airtable.com/.attachmentThumbnails/ce6f4144206ca574dff3680aeef5421c/675d4a83', 'Raspberry', 650, 1200, 11940, 85750, 0.002, 0.012, 0.016, 0, 0, 0.6, 0.3, 0.1, 0, 0.021, 0, 26.2, 0, 0, 0, 0, 0, 0.9, 0.0078, 0, 12.3, 0, 0, 0, 0, 0, 0, 29, 0, 0.4, 0.7, 25, 22, 0.1, 0.7, 0, 0.0002, 0, 0, 151, 1, 0),
(9, 1, 0, 'https://dl.airtable.com/.attachmentThumbnails/9573beb6d3ddd796f74d2da224cbbb29/adb42529', 'Strawberry', 300, 670, 7680, 90950, 0.001, 0.007, 0, 0, 0, 0.4, 0.1, 0, 0, 0.024, 0, 58.8, 0, 0, 0, 0, 0, 0.3, 0.0022, 0, 5.7, 0, 0, 0, 0, 0, 0, 24, 0, 0.1, 0.4, 16, 13, 0, 0.4, 0, 0.0004, 0, 0, 153, 1, 0.0044);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `fruits`
--
ALTER TABLE `fruits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `fruits`
--
ALTER TABLE `fruits`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
