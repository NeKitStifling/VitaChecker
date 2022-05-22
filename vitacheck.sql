-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 22 2022 г., 16:51
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
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(3) NOT NULL,
  `vis` int(1) NOT NULL DEFAULT 1,
  `del` int(1) NOT NULL DEFAULT 0,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `vis`, `del`, `type`, `text`) VALUES
(1, 1, 0, 'h1', 'About VitaChecker'),
(2, 1, 0, 'h2', 'Developer: Ustinov Nikita'),
(3, 1, 0, 'p', '<img class=\"nikTheGreat\" src=\"https://sun9-14.userapi.com/s/v1/if2/45SgADVzUSxaaeHeabzDa9Kz0BLu3fZ5e_BTJrBn8RV3A2g7NLXPJU41Cw-xCW-1rcUZdwB1H1_gRN0KvizoSIE1.jpg?size=1440x1799&quality=96&type=album\">'),
(4, 1, 0, 'p', 'VitaChecker - is a web app that allows you to take control on what vitamins you consume during a day. Simply choose types of food you have consumed today, and a special VitaCalc will count the ammount of fat, protein, fiber and vitamins you have gained. That allows you to find out how you should extend your ration and what vitamins your organism is lack of.');

-- --------------------------------------------------------

--
-- Структура таблицы `alcohol`
--

CREATE TABLE `alcohol` (
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

-- --------------------------------------------------------

--
-- Структура таблицы `bakery`
--

CREATE TABLE `bakery` (
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

-- --------------------------------------------------------

--
-- Структура таблицы `beans`
--

CREATE TABLE `beans` (
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

-- --------------------------------------------------------

--
-- Структура таблицы `beverages`
--

CREATE TABLE `beverages` (
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

-- --------------------------------------------------------

--
-- Структура таблицы `complex`
--

CREATE TABLE `complex` (
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

-- --------------------------------------------------------

--
-- Структура таблицы `dairy`
--

CREATE TABLE `dairy` (
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

-- --------------------------------------------------------

--
-- Структура таблицы `fish`
--

CREATE TABLE `fish` (
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
(1, 1, 0, 'https://dl.airtable.com/.attachmentThumbnails/c6100fdda0169dd650a9a95e03945cc2/0298c6be', 'Apricot', 390, 1400, 11120, 86320, 0.096, 1.094, 0.019, 0, 0, 0.6, 0.2, 0.1, 0, 0.009, 0, 10, 0, 0, 0, 0, 0, 0.9, 0.0033, 0, 2.8, 0, 0, 0, 0, 0, 0, 23, 0, 0.2, 0.4, 13, 10, 0.1, 0.1, 0, 0.001, 0, 0, 259, 1, 0),
(2, 1, 0, 'https://dl.airtable.com/.attachmentThumbnails/5e8dc309ea2897bdde2d531c4eceb00e/0410f703', 'Orange', 120, 940, 11750, 86750, 0.011, 0.071, 0.011, 0.1, 0, 0.3, 0.3, 0.1, 0, 0.03, 0, 53.2, 0, 0, 0, 0, 0, 0.2, 0, 0, 8.4, 0, 0, 0, 0, 0, 0, 14, 0, 0.1, 0.1, 40, 10, 0, 0, 0, 0.0005, 0, 0, 181, 0, 0),
(3, 1, 0, 'https://dl.airtable.com/.attachmentThumbnails/5edb20555dc21f559bb23595d864fd41/9946efb5', 'Banana', 330, 1090, 22840, 74910, 0.003, 0.026, 0.025, 0, 0.1, 0.7, 0.3, 0.4, 0, 0.02, 0, 8.7, 0, 0, 0, 0, 0, 0.1, 0.0005, 0, 9.8, 0, 0, 0, 0, 0, 0, 22, 0, 0.2, 0.3, 5, 27, 0.1, 0.3, 0, 0.001, 0, 0, 358, 1, 0),
(4, 1, 0, 'https://dl.airtable.com/.attachmentThumbnails/57a14719a13dd57f76ec6bf8dc98851e/9ecf4d1b', 'Apple', 170, 260, 13810, 85560, 0.003, 0.027, 0, 0, 0, 0.1, 0.1, 0, 0, 0.003, 0, 4.6, 0, 0, 0, 0, 0, 0.2, 0.0022, 0, 3.4, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0.1, 6, 5, 0, 0, 0, 0, 0, 0, 107, 1, 0.0033),
(5, 1, 0, 'https://dl.airtable.com/.attachmentThumbnails/5966655102c49125cb327eb0925f0b5b/4f8e1dc3', 'Lemon', 300, 1100, 9320, 88980, 0.001, 0.003, 0.001, 0, 0, 0.1, 0.2, 0.1, 0, 0.011, 0, 53, 0, 0, 0, 0, 0, 0.2, 0, 0, 5.1, 0, 0, 0, 0, 0, 0, 16, 0, 0.1, 0.6, 26, 8, 0, 0, 0, 0.0004, 0, 0, 138, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `grains`
--

CREATE TABLE `grains` (
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

-- --------------------------------------------------------

--
-- Структура таблицы `mainpagecells`
--

CREATE TABLE `mainpagecells` (
  `id` int(20) NOT NULL,
  `vis` int(1) NOT NULL DEFAULT 0,
  `del` int(1) NOT NULL DEFAULT 0,
  `header` varchar(30) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mainpagecells`
--

INSERT INTO `mainpagecells` (`id`, `vis`, `del`, `header`, `img`) VALUES
(1, 1, 0, 'Meat', 'https://dl.airtable.com/.attachmentThumbnails/5869b2444731642763753139720a2045/dd523609'),
(2, 1, 0, 'Fish', 'https://dl.airtable.com/.attachmentThumbnails/8d3cf16f5a8a61f702c554083d8b21be/bdacc141'),
(3, 1, 0, 'Vegetables', 'https://dl.airtable.com/.attachmentThumbnails/3e4aa424e6d8e47f868f48aaf6bd9dd9/5e674c94'),
(4, 1, 0, 'Fruits', 'https://dl.airtable.com/.attachmentThumbnails/c4fcb02949eac9b31fcd3f25a649d499/537fd1b3'),
(5, 1, 0, 'Grains', 'https://dl.airtable.com/.attachmentThumbnails/237e7263a8ba9e723c65e9188160ef63/72993e5a'),
(6, 1, 0, 'Beans', 'https://dl.airtable.com/.attachmentThumbnails/b3f35be02ab3e63e0ce91fe20aa0eb9d/ad9b8d93'),
(7, 1, 0, 'Nuts', 'https://dl.airtable.com/.attachmentThumbnails/50bef37647e4cd79c034aee8c7681051/ff13c373'),
(8, 1, 0, 'Poultry', 'https://dl.airtable.com/.attachmentThumbnails/48df7efb41c7554752aa173469110125/2cc6a632'),
(9, 1, 0, 'Seafood', 'https://dl.airtable.com/.attachmentThumbnails/d1e08b6c567f705a61663e5570e4f0de/490ad25b'),
(10, 1, 0, 'Dairy', 'https://dl.airtable.com/.attachmentThumbnails/bcccaf79f8a2b74603403fdb3aa51423/135fa6f9'),
(11, 1, 0, 'Beverages', 'https://dl.airtable.com/.attachmentThumbnails/13eb9e9629a3734bdce334a1cb8caf0c/5a440945'),
(12, 1, 0, 'Alcohol', 'https://dl.airtable.com/.attachmentThumbnails/538bc5bab56792c0c3219b6076264dc9/54b84bc5'),
(13, 1, 0, 'Complex', 'https://dl.airtable.com/.attachmentThumbnails/ba02b1e3de06b1038ba10606086c97f5/d1772fc7'),
(14, 1, 0, 'Sweets', 'https://dl.airtable.com/.attachmentThumbnails/9f5848ba05882cd45722f0eba46b7a74/a49dc233'),
(17, 1, 0, 'Bakery', 'https://dl.airtable.com/.attachmentThumbnails/d021a2fe515a81bd8234728fa935e9e0/b44f5455');

-- --------------------------------------------------------

--
-- Структура таблицы `meat`
--

CREATE TABLE `meat` (
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
-- Дамп данных таблицы `meat`
--

INSERT INTO `meat` (`id`, `vis`, `del`, `img`, `name`, `fat`, `protein`, `carbohydrates`, `water`, `A1`, `bCarotene`, `aCarotene`, `B1`, `B2`, `B3`, `B5`, `B6`, `B7`, `B9`, `B12`, `C`, `D1`, `D2`, `D3`, `D4`, `D5`, `E`, `K1`, `K2`, `B4`, `B8`, `B10`, `B11`, `B13`, `B15`, `N`, `P`, `U`, `Zn`, `Fe`, `Ca`, `Mg`, `Cu`, `Mn`, `Cr`, `Se`, `I`, `Mo`, `K`, `Na`, `F`) VALUES
(1, 1, 0, 'https://dl.airtable.com/.attachmentThumbnails/25bb12ce0291d43cf1279d2f25086bd6/17e0a11e', 'Beef', 4990, 22030, 50, 0, 0.002, 0, 0, 0.1, 0.2, 5.6, 0.6, 0.6, 0, 0.005, 0.0023, 0, 0.0001, 0, 0.0001, 0, 0, 0.2, 0.0014, 0, 65.7, 0, 0, 0, 0, 0, 0, 205, 0, 5.1, 2.1, 12, 19, 0.1, 0, 0, 0.0254, 0, 0, 330, 63, 0),
(2, 1, 0, 'https://dl.airtable.com/.attachmentThumbnails/48a4c9377c7722715af6a9d33b56cad6/2b9d482f', 'Pork', 6940, 21550, 0, 0, 0.001, 0, 0, 0.7, 0.2, 8, 0.7, 0.7, 0, 0, 0.0005, 0, 0.0004, 0, 0.0004, 0, 0, 0.1, 0, 0, 57.8, 0, 0, 0, 0, 0, 0, 226, 0, 1.6, 0.5, 7, 26, 0.1, 0, 0, 0.0331, 0, 0, 373, 48, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `navigation`
--

CREATE TABLE `navigation` (
  `id` int(6) NOT NULL,
  `vis` int(1) NOT NULL DEFAULT 0,
  `del` int(1) NOT NULL DEFAULT 0,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `navigation`
--

INSERT INTO `navigation` (`id`, `vis`, `del`, `name`) VALUES
(1, 1, 0, 'Home'),
(2, 1, 0, 'About');

-- --------------------------------------------------------

--
-- Структура таблицы `nuts`
--

CREATE TABLE `nuts` (
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

-- --------------------------------------------------------

--
-- Структура таблицы `poultry`
--

CREATE TABLE `poultry` (
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

-- --------------------------------------------------------

--
-- Структура таблицы `seafood`
--

CREATE TABLE `seafood` (
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

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hdr` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sweets`
--

CREATE TABLE `sweets` (
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

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `surname` text NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `vegetables`
--

CREATE TABLE `vegetables` (
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
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `alcohol`
--
ALTER TABLE `alcohol`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bakery`
--
ALTER TABLE `bakery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `beans`
--
ALTER TABLE `beans`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `beverages`
--
ALTER TABLE `beverages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `complex`
--
ALTER TABLE `complex`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dairy`
--
ALTER TABLE `dairy`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fish`
--
ALTER TABLE `fish`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fruits`
--
ALTER TABLE `fruits`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `grains`
--
ALTER TABLE `grains`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mainpagecells`
--
ALTER TABLE `mainpagecells`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `meat`
--
ALTER TABLE `meat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `nuts`
--
ALTER TABLE `nuts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `poultry`
--
ALTER TABLE `poultry`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `seafood`
--
ALTER TABLE `seafood`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sweets`
--
ALTER TABLE `sweets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `vegetables`
--
ALTER TABLE `vegetables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `alcohol`
--
ALTER TABLE `alcohol`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bakery`
--
ALTER TABLE `bakery`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `beans`
--
ALTER TABLE `beans`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `beverages`
--
ALTER TABLE `beverages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `complex`
--
ALTER TABLE `complex`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dairy`
--
ALTER TABLE `dairy`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fish`
--
ALTER TABLE `fish`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fruits`
--
ALTER TABLE `fruits`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `grains`
--
ALTER TABLE `grains`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mainpagecells`
--
ALTER TABLE `mainpagecells`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `meat`
--
ALTER TABLE `meat`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `nuts`
--
ALTER TABLE `nuts`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `poultry`
--
ALTER TABLE `poultry`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `seafood`
--
ALTER TABLE `seafood`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sweets`
--
ALTER TABLE `sweets`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `vegetables`
--
ALTER TABLE `vegetables`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
