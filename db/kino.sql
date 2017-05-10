-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 24 2016 г., 10:17
-- Версия сервера: 5.5.39
-- Версия PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `kino`
--

-- --------------------------------------------------------

--
-- Структура таблицы `juser`
--

CREATE TABLE IF NOT EXISTS `juser` (
`id` int(11) NOT NULL,
  `imya` char(200) NOT NULL,
  `passw` char(100) NOT NULL,
  `email` char(150) NOT NULL,
  `ochki` int(11) NOT NULL,
  `best` int(11) NOT NULL,
  `avatar` char(200) NOT NULL,
  `last` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `juser`
--

INSERT INTO `juser` (`id`, `imya`, `passw`, `email`, `ochki`, `best`, `avatar`, `last`) VALUES
(8, 'Denis', 'denis', '', 0, 5, '', 0),
(9, 'yad', '1q2w3e', '', 0, 68, '', 8),
(10, 'test', 'test', '', 0, 38, '', 12),
(11, 'test23', 'test23', '', 0, 129, '', 109),
(12, 'jura', 'kartavcev', '', 0, 33, '', 4),
(13, 'andrey', 'chyrka', '', 0, 28, '', 0),
(14, 'vasya', 'vetrov', '', 0, 24, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `kinoname`
--

CREATE TABLE IF NOT EXISTS `kinoname` (
`id` int(11) NOT NULL,
  `name` char(100) NOT NULL,
  `redk` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Дамп данных таблицы `kinoname`
--

INSERT INTO `kinoname` (`id`, `name`, `redk`) VALUES
(28, 'Ð›ÑŽÐ´Ð¸ Ð² Ñ‡ÐµÑ€Ð½Ð¾Ð¼', 0),
(29, 'Ð¡ÐµÐºÑ Ð¿Ð¾ Ð´Ñ€ÑƒÐ¶Ð±Ðµ', 0),
(30, 'Ð“Ñ€Ð°Ð½ÑŒ Ð±ÑƒÐ´ÑƒÑ‰ÐµÐ³Ð¾', 0),
(31, 'ÐÐ¼ÐµÐ»Ð¸', 0),
(32, 'ÐžÐ´Ð¸Ð½ Ð¿Ð»ÑŽÑ Ð¾Ð´Ð¸Ð½', 0),
(33, '2012', 0),
(34, 'ÐŸÑ€ÐµÐ²Ð¾ÑÑ…Ð¾Ð´ÑÑ‚Ð²Ð¾', 0),
(27, 'Ð”ÐµÐ²ÑƒÑˆÐºÐ° Ð¸Ð· Ð´Ð°Ð½Ð¸Ð¸', 1),
(35, 'Ð“Ð»Ð°Ð´Ð¸Ð°Ñ‚Ð¾Ñ€', 0),
(36, 'Ð•Ñ… Ð¼Ð°ÑˆÐ¸Ð½Ð°', 0),
(37, 'Ð›ÑŽÐ±Ð¾Ð²ÑŒ Ð¸ Ð´Ñ€ÑƒÐ³Ð¸Ðµ Ð»ÐµÐºÐ°Ñ€ÑÑ‚Ð²Ð°', 0),
(38, 'ÐÐ¾Ñ‡ÑŒ Ð² Ð¼ÑƒÐ·ÐµÐµ', 0),
(39, 'Ð”Ð¸Ð²ÐµÑ€Ð³ÐµÐ½Ñ‚', 0),
(40, 'Ð“Ñ€Ð°Ð²Ð¸Ñ‚Ð°Ñ†Ð¸Ñ', 0),
(41, 'Ð‘Ð°Ð³Ñ€Ð¾Ð²Ñ‹Ð¹ Ð¿Ð¸Ðº', 0),
(42, 'Ð”Ð¶Ð°Ð½Ð³Ð¾ ÐžÑÐ²Ð¾Ð±Ð¾Ð¶Ð´ÐµÐ½Ð½Ñ‹Ð¹', 0),
(43, 'Ð”Ð¾Ð¼Ð°ÑˆÐ½ÐµÐµ Ð²Ð¸Ð´ÐµÐ¾', 0),
(44, 'Ð¤Ð¾ÐºÑƒÑ', 0),
(45, 'Ð˜Ð³Ñ€Ð° Ð² Ð¸Ð¼Ð¸Ñ‚Ð°Ñ†Ð¸ÑŽ', 0),
(46, 'Ð˜Ð½Ñ‚ÐµÑ€ÑÑ‚ÐµÐ»Ð»Ð°Ñ€', 0),
(47, 'Ð˜ÑÑ‡ÐµÐ·Ð½ÑƒÐ²ÑˆÐ°Ñ', 0),
(48, 'ÐšÑ€Ð°ÑÐ¾Ñ‚ÐºÐ¸ Ð² Ð±ÐµÐ³Ð°Ñ…', 0),
(49, 'Ð›Ð¾Ñ„Ñ‚', 0),
(50, 'Ð›ÑŽÑÐ¸', 0),
(51, 'ÐŸÑ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ', 0),
(52, 'CÑ‡Ð°ÑÑ‚Ð»Ð¸Ð²Ñ‡Ð¸Ðº', 0),
(53, 'Ð¨Ð¿Ð¸Ð¾Ð½ÑÐºÐ¸Ð¹ Ð¼Ð¾ÑÑ‚', 0),
(54, 'Ð¡ÑƒÐ´ÑŒÑ', 0),
(55, 'Ð¢ÑƒÑ€Ð¸ÑÑ‚', 0),
(56, 'Ð’Ð¸Ð½Ð¾Ð²Ð°Ñ‚Ñ‹ Ð·Ð²ÐµÐ·Ð´Ñ‹', 0),
(57, 'Ð’Ñ€ÐµÐ¼Ñ', 0),
(58, 'Ð¯-Ð½Ð°Ñ‡Ð°Ð»Ð¾', 0),
(59, 'Ð—Ð°Ð»Ð¾Ð¶Ð½Ð¸Ñ†Ð°', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `kinopath`
--

CREATE TABLE IF NOT EXISTS `kinopath` (
`id` int(11) NOT NULL,
  `path1` char(200) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Дамп данных таблицы `kinopath`
--

INSERT INTO `kinopath` (`id`, `path1`) VALUES
(28, 'foto/1457004671_.jpg'),
(29, 'foto/1457004970_.jpg'),
(30, 'foto/1457004987_.jpg'),
(31, 'foto/1457005001_.jpg'),
(32, 'foto/1457005015_.jpg'),
(33, 'foto/1457005034_.jpg'),
(34, 'foto/1457005786_.jpg'),
(27, 'foto/1456830275_.jpg'),
(35, 'foto/1457005803_.jpg'),
(36, 'foto/1457005828_.jpg'),
(37, 'foto/1457005855_.jpg'),
(38, 'foto/1457005868_.jpg'),
(39, 'foto/1457005882_.jpg'),
(40, 'foto/1457006553_.jpg'),
(41, 'foto/1458805729_.jpg'),
(42, 'foto/1458805746_.jpg'),
(43, 'foto/1458805760_.jpg'),
(44, 'foto/1458805767_.jpg'),
(45, 'foto/1458805780_.jpg'),
(46, 'foto/1458805788_.jpg'),
(47, 'foto/1458805798_.jpg'),
(48, 'foto/1458805807_.jpg'),
(49, 'foto/1458805814_.jpg'),
(50, 'foto/1458805825_.jpg'),
(51, 'foto/1458805834_.jpg'),
(52, 'foto/1458805893_.jpg'),
(53, 'foto/1458805902_.jpg'),
(54, 'foto/1458805909_.jpg'),
(55, 'foto/1458805917_.jpg'),
(56, 'foto/1458806230_.jpg'),
(57, 'foto/1458806236_.jpg'),
(58, 'foto/1458806246_.jpg'),
(59, 'foto/1458806254_.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `soob`
--

CREATE TABLE IF NOT EXISTS `soob` (
`id` int(11) NOT NULL,
  `title` text NOT NULL,
  `posts` text NOT NULL,
  `userid` int(11) NOT NULL,
  `name` char(100) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Дамп данных таблицы `soob`
--

INSERT INTO `soob` (`id`, `title`, `posts`, `userid`, `name`) VALUES
(30, 'ÐœÐ½Ðµ ÐºÐ°Ð¶ÐµÑ‚ÑÑ Ð­Ñ‚Ð¾ Ð²ÑÐµ Ð½Ðµ Ð¾ÑÐ¾Ð±Ð¾ ÐºÑ€ÑƒÑ‚Ð¾', 'Ð±Ð»Ð° Ð±Ð»Ð° Ð±Ð»Ð° Ð³Ð¾Ñ€Ð¸Ñ‚ Ð·Ð¸Ð¼Ð° Ð² Ð¾Ð³Ð½Ðµ', 0, 'test'),
(28, 'ÐšÑ€ÑƒÑ‚Ð°Ñ Ð²ÐµÑ‰ÑŒ', 'Ð­Ñ‚Ð¾Ñ‚ Ñ„Ð¸Ð»ÑŒÐ¼ ÑÑ‚Ð¾Ð¸Ñ‚ Ñ‚Ð¾Ð³Ð¾ Ñ‡Ñ‚Ð¾Ð±Ñ‹ ÐµÐ³Ð¾ Ð¿Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ', 0, 'yad'),
(29, 'Ð¡Ð°Ð¼Ñ‹Ð¹ Ð»ÑƒÑ‡ÑˆÐ¸Ð¹ Ñ„Ð¸Ð»ÑŒÐ¼', 'Ð—Ð°Ñ…Ð¾Ð´Ð¸Ð» Ð²Ñ‡ÐµÑ€Ð°Ð°', 0, 'yad'),
(31, 'Ð’ÑÐµ Ð²ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¾', 'ÐšÐ¾Ð½Ñ†ÐµÑ€Ñ‚ ÑÐ¿Ð»Ð¸Ð½Ð° Ð±ÑƒÐ´ÐµÑ‚ ÑÐºÐ¾Ñ€Ð¾', 0, 'test'),
(32, '', 'Ð’Ð¡Ðµ ÐºÑ€ÑƒÑ‚Ð¾ Ñ‡Ðµ?', 0, 'test'),
(33, '', 'Ð¢Ñ€Ð¸ Ð´Ð²Ð° Ñ€Ð°Ð·', 0, 'test'),
(34, '', 'ÐšÑƒÐ» Ñ„Ð¸Ð»Ð¼Ñ Ð°Ð¹ ÑÐ¸Ð½Ðº', 0, 'jura'),
(35, '', 'Ð¯ Ð½Ðµ ÑƒÐ³Ð°Ð´Ð°Ð» ÑÑ‚Ð¾Ñ‚ Ñ„Ð¸Ð»ÑŒÐ¼', 0, 'andrey'),
(36, '', 'ÐºÐ°Ð´Ñ€ Ð¸Ð· Ð”Ð¸Ð²ÐµÑ€Ð³ÐµÐ½Ñ‚Ð° Ð¿Ñ€Ð¾ÑÑ‚Ð¾ ÑƒÐ±Ð¸Ð²Ð°ÐµÑ‚))', 0, 'andrey'),
(37, '', 'Ð”ÐµÐ²ÑƒÑˆÐºÐ° Ð¸Ð· Ð”Ð°Ð½Ð¸Ð¸ Ñ‚Ð¾Ð¶Ðµ ÑÐ»Ð¾Ð¶Ð½Ñ‹Ð¹ ÐºÐ°Ð´Ñ€', 0, 'Denis'),
(38, '', 'ÐšÐ¾Ð³Ð´Ð° Ñ‚Ð¾ Ñ‚Ð°ÐºÐ°Ñ Ð¸Ð³Ñ€Ð° Ð±Ñ‹Ð»Ð° Ð½Ð° ÐºÐ¸Ð½Ð¾Ð¿Ð¾Ð¸ÑÐºÐµ, Ð¾Ñ‡ÐµÐ½ÑŒ Ð¶Ð°Ð»ÑŒ Ñ‡Ñ‚Ð¾ ÐµÐµ ÑƒÐ±Ñ€Ð°Ð»Ð¸, Ð±Ñ‹Ð»Ð¾ Ð²ÐµÑÐµÐ»Ð¾ Ð¿Ð¾Ð¸Ð³Ñ€Ð°Ñ‚ÑŒ Ð¸ Ð¿Ñ€Ð¾Ð²ÐµÑ€Ð¸Ñ‚ÑŒ ÑÐ²Ð¾Ð¸ ÑÐ¸Ð»Ñ‹', 0, 'Denis'),
(39, '', 'Ð¯ Ð²Ð¾Ð¾Ð±Ñ‰Ðµ Ð½Ðµ ÑˆÐ°Ñ€ÑŽ Ð² ÐºÐ¸Ð½Ð¾ Ð½Ð¾ Ð½Ð¸Ñ‡ÐµÐ³Ð¾', 0, 'vasya'),
(40, '', 'ÐšÐ°Ðº Ñ Ð½Ðµ ÑƒÐ³Ð°Ð´Ð°Ð» ÐºÐ°Ð´Ñ€ Ð¸Ð· Ð¼Ð¾ÐµÐ³Ð¾ Ð»ÑŽÐ±Ð¸Ð¼Ð¾Ð³Ð¾ Ñ„Ð¸Ð»ÑŒÐ¼Ð°', 0, 'test'),
(41, '', 'ÐÐ°Ð±Ñ€Ð°Ð» 19 Ð¾Ñ‡ÐºÐ¾Ð² Ð´Ð°Ð»ÑŒÑˆÐµ Ð¿Ñ€Ð¾ÑÑ‚Ð¾ Ð·Ð°Ð³Ð½Ð°Ð»ÑÑ', 0, 'test23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `juser`
--
ALTER TABLE `juser`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kinoname`
--
ALTER TABLE `kinoname`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kinopath`
--
ALTER TABLE `kinopath`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soob`
--
ALTER TABLE `soob`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `juser`
--
ALTER TABLE `juser`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `kinoname`
--
ALTER TABLE `kinoname`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `kinopath`
--
ALTER TABLE `kinopath`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `soob`
--
ALTER TABLE `soob`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
