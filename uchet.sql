-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 26 2019 г., 11:04
-- Версия сервера: 10.3.15-MariaDB
-- Версия PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `uchet`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

CREATE TABLE `admins` (
  `ID` int(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `FullName` text NOT NULL,
  `NumberOfPhone` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admins`
--

INSERT INTO `admins` (`ID`, `login`, `password`, `FullName`, `NumberOfPhone`) VALUES
(1, 'Admin', 'Passwordius', 'ShustovNikitaMihailovich', '89127649019'),
(2, 'Admin2', 'Admin', 'Nikita', '+79127492181');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `Mesto` varchar(30) NOT NULL,
  `Type` text NOT NULL,
  `Availability` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`Mesto`, `Type`, `Availability`) VALUES
('chitalniy zal #1', 'Paper', 'In stock'),
('chitalniy zal #2', 'Magazine', 'Out of stock'),
('Abonement #1', 'Disk', ''),
('Abonement #2', 'Exclusive', ''),
('Abonement PIHO', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `uchet`
--

CREATE TABLE `uchet` (
  `Title` varchar(100) NOT NULL,
  `Period` varchar(40) NOT NULL,
  `Number` int(100) NOT NULL,
  `Amount` int(100) NOT NULL,
  `Availability` text NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uchet`
--

INSERT INTO `uchet` (`Title`, `Period`, `Number`, `Amount`, `Availability`, `ReleaseDate`, `Type`) VALUES
('GamerForLife', '2days', 465, 1000, 'In stock(111)', '2019-06-26', 'Disk'),
('GreedIsGood', '365days', 3, 100, 'In stock(45)', '2019-06-30', 'Magazine'),
('ITDoesntMakeAnySense', '7days', 3, 7, 'In stock(7)', '2019-01-17', 'Paper'),
('The Wall Street Journal', '1day', 1612, 10000, 'In stock(263)', '2019-06-25', 'Magazine'),
('WealthForBeggar', '10days', 132, 10, 'Out of stock', '2019-06-26', 'Disk'),
('Wow wow, retard alert!', '30days', 1, 1, 'Out of stock', '2019-04-30', 'Paper');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `ID` int(255) NOT NULL,
  `FullName` text NOT NULL,
  `AmountOfBooks` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`ID`, `FullName`, `AmountOfBooks`) VALUES
(1, 'Shustov Nikita Mihailovich', 2),
(2, 'Perminov Daniil Sergeevich', 1),
(3, 'Ogorodova Yliya Gennadievna', 0),
(4, 'Shudegova Tatyana Valerevna', 0),
(5, 'Russkih Mihail Aleksandrovich', 0),
(6, 'Vladislove Makarov', 30),
(7, 'Korepanov Anatoliy Viktorovich', 0),
(8, 'Ivanov Ivan Ivanovich', 1),
(9, 'Jitin Semen Alejseevich', 1),
(10, 'Vladisloveov Vladislove Vladisloveovich', 5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`Mesto`);

--
-- Индексы таблицы `uchet`
--
ALTER TABLE `uchet`
  ADD PRIMARY KEY (`Title`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
