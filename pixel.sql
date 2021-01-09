-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-01-2021 a las 04:16:33
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pixel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_badges`
--

CREATE TABLE `cms_badges` (
  `id` int(11) NOT NULL,
  `badge_id` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_news`
--

CREATE TABLE `cms_news` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT '0',
  `shortstory` text NOT NULL,
  `longstory` text NOT NULL,
  `author` varchar(100) NOT NULL DEFAULT 'Tom',
  `date` int(11) NOT NULL DEFAULT 0,
  `type` varchar(100) NOT NULL DEFAULT '1',
  `roomid` varchar(100) NOT NULL DEFAULT '1',
  `curtidas` varchar(100) DEFAULT '0',
  `updated` enum('0','1') NOT NULL DEFAULT '0',
  `formulario` int(11) DEFAULT 0,
  `visitas` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_news_like`
--

CREATE TABLE `cms_news_like` (
  `id` int(11) NOT NULL,
  `userid` int(255) DEFAULT NULL,
  `newsid` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_news_message`
--

CREATE TABLE `cms_news_message` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL DEFAULT 0,
  `newsid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_report`
--

CREATE TABLE `cms_report` (
  `id` int(20) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `categoria` varchar(250) NOT NULL,
  `comentario` text NOT NULL,
  `autor` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `furniture`
--

CREATE TABLE `furniture` (
  `id` int(11) UNSIGNED NOT NULL,
  `furnidata_name` varchar(70) NOT NULL,
  `width` int(11) NOT NULL DEFAULT 1,
  `length` int(11) NOT NULL DEFAULT 1,
  `height` double NOT NULL DEFAULT 0,
  `allow_stack` enum('0','1') NOT NULL DEFAULT '1',
  `allow_sit` enum('0','1') NOT NULL DEFAULT '0',
  `allow_walk` enum('0','1') NOT NULL DEFAULT '0',
  `interaction_type` varchar(25) NOT NULL DEFAULT 'default',
  `interaction_count` int(11) NOT NULL DEFAULT 1,
  `multi_height` varchar(2000) DEFAULT '',
  `rotations` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `furniture`
--

INSERT INTO `furniture` (`id`, `furnidata_name`, `width`, `length`, `height`, `allow_stack`, `allow_sit`, `allow_walk`, `interaction_type`, `interaction_count`, `multi_height`, `rotations`) VALUES
(1, 'school_platform', 1, 1, 0, '1', '0', '1', 'default', 3, '0.5;1;1.5;2', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `base_id` int(11) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `room` int(11) DEFAULT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `z` double DEFAULT NULL,
  `rot` int(255) DEFAULT NULL,
  `extra_data` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `base_id`, `owner`, `room`, `x`, `y`, `z`, `rot`, `extra_data`) VALUES
(60, 1, 1, 1, 4, 3, 0, 0, '0'),
(61, 1, 1, 1, 4, 5, 0, 0, '0'),
(62, 1, 1, 1, 7, 3, 0, 0, '0'),
(63, 1, 1, 1, 7, 6, 0, 0, '0'),
(64, 1, 1, 1, 9, 7, 0, 0, '0'),
(65, 1, 1, 1, 4, 5, 0.5, 0, '0'),
(66, 1, 1, 1, 4, 5, 1, 0, '0'),
(67, 1, 1, 1, 4, 5, 1.5, 0, '0'),
(68, 1, 1, 1, 6, 15, 0, 0, '0'),
(69, 1, 1, 1, 4, 12, 0, 0, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `referrer`
--

CREATE TABLE `referrer` (
  `id` int(11) NOT NULL,
  `userid` decimal(10,0) DEFAULT NULL,
  `refid` decimal(10,0) DEFAULT NULL,
  `diamonds` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `referrerbank`
--

CREATE TABLE `referrerbank` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `diamonds` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resetpassword`
--

CREATE TABLE `resetpassword` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `resetkey` varchar(255) DEFAULT NULL,
  `enable` enum('0','1') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `owner` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `rooms`
--

INSERT INTO `rooms` (`id`, `title`, `model`, `owner`) VALUES
(1, 'Development', 'model_2', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `room_models`
--

CREATE TABLE `room_models` (
  `id` int(11) NOT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `model_map` varchar(2000) DEFAULT NULL,
  `door_x` int(255) DEFAULT NULL,
  `door_y` int(255) DEFAULT NULL,
  `door_z` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `room_models`
--

INSERT INTO `room_models` (`id`, `model_name`, `model_map`, `door_x`, `door_y`, `door_z`) VALUES
(1, 'model_1', 'Cyyyyyn\r\nx11111n\r\nx11111n\r\nD11111n\r\nx11111n\r\nx11111', 3, 0, 0),
(2, 'model_2', 'Cyyyyyyyyyyyyyyyyn\r\nx1111111111111111n\r\nD1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111n\r\nx1111111111111111', 2, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_landing_views`
--

CREATE TABLE `server_landing_views` (
  `id` int(11) NOT NULL,
  `landing.title.1` varchar(255) DEFAULT NULL,
  `landing.text.1` varchar(2000) DEFAULT NULL,
  `landing.title.2` varchar(255) DEFAULT NULL,
  `landing.text.2` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `server_landing_views`
--

INSERT INTO `server_landing_views` (`id`, `landing.title.1`, `landing.text.1`, `landing.title.2`, `landing.text.2`) VALUES
(1, 'Title 1', 'Text 1', 'Title 2', 'Text 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `staffapplication`
--

CREATE TABLE `staffapplication` (
  `id` int(11) NOT NULL,
  `username` text DEFAULT NULL,
  `realname` text DEFAULT NULL,
  `skype` text DEFAULT NULL,
  `age` text DEFAULT NULL,
  `functie` text DEFAULT NULL,
  `onlinetime` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `quarrel` text DEFAULT NULL,
  `serious` text DEFAULT NULL,
  `improve` text DEFAULT NULL,
  `microphone` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teams`
--

CREATE TABLE `teams` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `badgeid` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `teams`
--

INSERT INTO `teams` (`id`, `name`, `badgeid`) VALUES
(1, 'Spam Team', 'SPAM'),
(3, 'Bouw Team', 'BOUW'),
(4, 'Event Team', 'EVENT'),
(5, 'Pixelaar', 'PIXEL'),
(6, 'Gok Team', 'GOK');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uotw`
--

CREATE TABLE `uotw` (
  `userid` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `uotw`
--

INSERT INTO `uotw` (`userid`, `text`) VALUES
('1', 'Amo el hotel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `real_name` varchar(25) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL,
  `mail` varchar(25) NOT NULL,
  `mail_verified` enum('0','1') NOT NULL DEFAULT '0',
  `account_created` int(11) NOT NULL,
  `account_day_of_birth` int(11) NOT NULL DEFAULT 0,
  `last_login` int(11) NOT NULL DEFAULT 0,
  `last_online` int(11) NOT NULL DEFAULT 0,
  `motto` varchar(127) NOT NULL DEFAULT '',
  `look` varchar(256) NOT NULL DEFAULT 'hr-115-42.hd-195-19.ch-3030-82.lg-275-1408.fa-1201.ca-1804-64',
  `gender` enum('M','F') NOT NULL DEFAULT 'M',
  `rank` int(2) NOT NULL DEFAULT 1,
  `credits` int(11) NOT NULL DEFAULT 2500,
  `pixels` int(11) NOT NULL DEFAULT 500,
  `points` int(11) NOT NULL DEFAULT 10,
  `online` enum('0','1','2') NOT NULL DEFAULT '0',
  `auth_ticket` varchar(256) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `ip_register` varchar(45) NOT NULL,
  `ip_current` varchar(45) NOT NULL COMMENT 'Have your CMS update this IP. If you do not do this IP banning won''t work!',
  `machine_id` varchar(64) NOT NULL DEFAULT '',
  `home_room` int(32) NOT NULL DEFAULT 0,
  `client_rooms` int(2) NOT NULL DEFAULT 1,
  `client_looks` int(2) NOT NULL DEFAULT 1,
  `client_ref` int(2) NOT NULL DEFAULT 1,
  `client_territorio` varchar(100) DEFAULT NULL,
  `user_referidos` int(50) NOT NULL DEFAULT 0,
  `hide_staff` int(2) DEFAULT 1,
  `user_likes` int(11) DEFAULT 0,
  `pin` varchar(4) DEFAULT NULL,
  `slopt_pin` int(2) DEFAULT 0,
  `slopt_hc` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `real_name`, `password`, `mail`, `mail_verified`, `account_created`, `account_day_of_birth`, `last_login`, `last_online`, `motto`, `look`, `gender`, `rank`, `credits`, `pixels`, `points`, `online`, `auth_ticket`, `ip_register`, `ip_current`, `machine_id`, `home_room`, `client_rooms`, `client_looks`, `client_ref`, `client_territorio`, `user_referidos`, `hide_staff`, `user_likes`, `pin`, `slopt_pin`, `slopt_hc`) VALUES
(1, 'Bastian', '', '$2y$10$N3ixPG9uyPL0sakn96lrFewpuMX/./cVYRIeEZIhStiNAJ6bg4M/C', 'Bastian@gmail.com', '0', 1584965379, 0, 1586813662, 1610161962, 'Criticados, Admirados', 'ch-255-1418.sh-3524-110-92.hd-190-1.hr-3790-34.lg-275-110.fa-1212-63.ha-1002-97', 'M', 13, 100911, 500, 10, '0', 'Hadrus-FGSiQ7skO9a1xq0T0un1gMUs5-SSO', '190.208.169.241', '190.208.169.241', '~b7ae978af515c2d6e934819c18350ae1', 0, 1, 1, 1, NULL, 0, 1, 0, '2205', 0, 0),
(0, 'prueba1', '', '$2y$10$IJz/QpdqYgqEqJ66kl5cM.mubGoXChfOa4v/8twOro27ZqiFsuxJa', 'prueba1@gmail.com', '0', 1610162049, 0, 0, 1610162080, '', 'ch-645-92.cc-9563-100.sh-3089-110.hd-628-1.lg-3023-110.hr-540-61', 'M', 1, 100000, 500, 10, '0', 'Hadrus-ToRDHyo4cx1WmHuzfK3HpLf9U-SSO', '127.0.0.1', '127.0.0.1', '', 0, 1, 1, 1, NULL, 0, 1, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_like`
--

CREATE TABLE `users_like` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `likefrom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cms_badges`
--
ALTER TABLE `cms_badges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_news`
--
ALTER TABLE `cms_news`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_news_like`
--
ALTER TABLE `cms_news_like`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_news_message`
--
ALTER TABLE `cms_news_message`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_report`
--
ALTER TABLE `cms_report`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `id` (`id`) USING BTREE;

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `referrer`
--
ALTER TABLE `referrer`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `referrerbank`
--
ALTER TABLE `referrerbank`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resetpassword`
--
ALTER TABLE `resetpassword`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `room_models`
--
ALTER TABLE `room_models`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `server_landing_views`
--
ALTER TABLE `server_landing_views`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `staffapplication`
--
ALTER TABLE `staffapplication`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `users_like`
--
ALTER TABLE `users_like`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cms_badges`
--
ALTER TABLE `cms_badges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_news`
--
ALTER TABLE `cms_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_news_like`
--
ALTER TABLE `cms_news_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_news_message`
--
ALTER TABLE `cms_news_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_report`
--
ALTER TABLE `cms_report`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `furniture`
--
ALTER TABLE `furniture`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `referrer`
--
ALTER TABLE `referrer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `referrerbank`
--
ALTER TABLE `referrerbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `resetpassword`
--
ALTER TABLE `resetpassword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `room_models`
--
ALTER TABLE `room_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `server_landing_views`
--
ALTER TABLE `server_landing_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `staffapplication`
--
ALTER TABLE `staffapplication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `users_like`
--
ALTER TABLE `users_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
