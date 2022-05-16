-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 25 2022 г., 04:41
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
(2, 1, 0, 'About'),
(3, 1, 0, 'Registration');

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

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mainpagecells`
--
ALTER TABLE `mainpagecells`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
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
-- AUTO_INCREMENT для таблицы `mainpagecells`
--
ALTER TABLE `mainpagecells`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
