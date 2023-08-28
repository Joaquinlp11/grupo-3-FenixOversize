-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-08-2023 a las 03:04:09
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fenix_oversize_datos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `id` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Nike', '2023-08-26 18:57:03', '2023-08-27 18:59:20'),
(2, 'Adidas', '2023-08-26 18:57:03', '2023-08-27 18:59:31'),
(3, 'Jordan', '2023-08-26 18:57:03', '2023-08-26 18:57:03'),
(4, 'Reebok', '2023-08-26 18:57:03', '2023-08-27 18:59:42'),
(5, 'Puma', '2023-08-26 18:57:03', '2023-08-26 18:57:03'),
(6, 'Zara', '2023-08-26 18:57:03', '2023-08-26 18:57:03'),
(7, 'Pull&Beard', '2023-08-26 18:57:03', '2023-08-26 18:57:03'),
(8, 'COMME DES GARÇONS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'ACNE STUDIOS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'LOREAK MENDIAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'DOCKERS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'LACOSTE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'GIVENCHY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'LOEWE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'CLOKING', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'BALENCIAGA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Converse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'New Balance', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Vans', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Air Jordan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'New Balance', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Gucci', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Fila', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorys`
--

CREATE TABLE `categorys` (
  `id` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'buzos', '2023-08-26 18:56:49', '2023-08-26 18:56:49'),
(2, 'pantalones', '2023-08-26 18:56:49', '2023-08-26 18:56:49'),
(3, 'hoodies', '2023-08-26 18:56:49', '2023-08-26 18:56:49'),
(4, 'remeras', '2023-08-26 18:56:49', '2023-08-26 18:56:49'),
(5, 'sneakers', '2023-08-26 18:56:49', '2023-08-26 18:56:49'),
(6, 'outfits', '2023-08-26 18:56:49', '2023-08-26 18:56:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `image` varchar(50) NOT NULL,
  `color` varchar(20) NOT NULL,
  `size` tinyint(4) DEFAULT NULL,
  `price` mediumint(9) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `color`, `size`, `price`, `id_brand`, `id_category`, `createdAt`, `updatedAt`) VALUES
(1, 'dama short', 'Buzo Beige dama', '/img/category/buzos/buzo6.jpg', 'beige', 24, 3500, 3, 1, '0000-00-00 00:00:00', '2023-08-27 01:10:13'),
(2, 'Ipermeable', 'buzo marron Fénix', '/img/category/buzos/buzo7.png', 'marron', 36, 7500, 1, 1, '2023-08-26 18:55:24', '2023-08-27 00:42:28'),
(3, 'Hillerska', 'Buzo Gris', '/img/category/buzos/buzo16.jpeg', 'gris', 34, 4500, 2, 1, '2023-08-26 18:55:24', '2023-08-27 22:23:56'),
(4, 'Jerzees', 'Buzo Sweatshirt', '/img/category/buzos/buzo4.png', 'mostaza', 39, 3500, 4, 1, '2023-08-26 18:55:24', '2023-08-27 01:08:38'),
(5, 'Wolf Buzo', 'Buzo Wolf Neon', '/img/category/buzos/buzo17.jpeg', 'azul', 45, 5000, 2, 1, '2023-08-26 18:55:24', '2023-08-27 01:09:24'),
(13, 'Chaskid', 'Buzo Chaskid', '/img/category/buzos/buzo18.jpeg', 'negro', 30, 3500, 4, 1, '0000-00-00 00:00:00', '2023-08-27 01:10:52'),
(14, 'words chinesse', 'Buzo letras chinas', '/img/category/buzos/buzo19.jpeg', 'negro', 35, 3500, 4, 1, '0000-00-00 00:00:00', '2023-08-27 01:16:12'),
(15, 'Chaskid', 'Buzo Chaskid', '/img/category/buzos/buzo20.jpeg', 'gris', 30, 3500, 4, 1, '0000-00-00 00:00:00', '2023-08-27 01:16:33'),
(16, 'silshirk', 'remera silshirk', '/img/category/remeras/remera1.jpg', 'gris', 30, 3500, 4, 4, '0000-00-00 00:00:00', '2023-08-27 19:38:00'),
(17, 'blushr', 'remera blushr', '/img/category/remeras/remera2.jpg', 'azul', 32, 3000, 6, 4, '0000-00-00 00:00:00', '2023-08-27 19:46:32'),
(18, 'beishi', 'remera beishi', '/img/category/remeras/remera3.jpg', 'beige', 34, 3500, 7, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'yewoll', 'remera yewoll', '/img/category/remeras/remera5.jpg', 'amarillo', 34, 3800, 8, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Padrino', 'remera el padrino ', '/img/category/remeras/remera6.jpg', 'negro', 34, 4500, 9, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Tupac', 'remera Tupac', '/img/category/remeras/remera7.jpg', 'negro', 36, 5500, 10, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Mrin', 'remera Mrin', '/img/category/remeras/remera8.jpg', 'verde', 38, 5100, 11, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Mrin', 'remera Mrin', '/img/category/remeras/remera9.jpg', 'Azul', 28, 3100, 12, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'balkc', 'remera balk', '/img/category/remeras/remera10.jpg', 'negro', 38, 3800, 13, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'milrat', 'remera milrat', '/img/category/remeras/remera11.jpg', 'verde', 36, 4800, 14, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Tupac', 'remera tupac lila', '/img/category/remeras/remera12.jpg', 'morado', 36, 6800, 10, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'tuki', 'remera tuki lila', '/img/category/remeras/remera13.jpg', 'morado', 30, 6100, 10, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_users`
--

CREATE TABLE `products_users` (
  `id` int(10) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `products_users`
--

INSERT INTO `products_users` (`id`, `id_product`, `id_user`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 5),
(5, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `image` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `tipo`, `image`) VALUES
(1, 'Cordula', 'Aymerich', 'caymerich0@purevolume.com', '$2a$04$CyRsWQhjBaR4tpSVVwZlpeB', 'cliente', 'http://dummyimage.com/232x100.png/cc0000'),
(2, 'Missy', 'Hyslop', 'mhyslop1@icq.com', '$2a$04$JphxLxp6SGJXk.YGv/f9d..', 'cliente', 'http://dummyimage.com/160x100.png/dddddd'),
(3, 'Sibylle', 'Renault', 'srenault2@lycos.com', '$2a$04$Qbp0bmxRxW36wsui9nq1CO8', 'cliente', 'http://dummyimage.com/127x100.png/dddddd'),
(4, 'Elyn', 'Grigolli', 'egrigolli3@sakura.ne.jp', '$2a$04$jT.F2n1CLwULVDu2/G4COud', 'cliente', 'http://dummyimage.com/102x100.png/ff4444'),
(5, 'Cob', 'Kryszka', 'ckryszka4@nationalgeographic.com', '$2a$04$d6ZDGZ3xY0cf4DBS3D5OzOZ', 'cliente', 'http://dummyimage.com/245x100.png/ff4444'),
(6, 'Kerrin', 'Smails', 'ksmails5@nasa.gov', '$2a$04$m5ahO/G9C6iPZWHEcGaMw.r', 'cliente', 'http://dummyimage.com/211x100.png/cc0000'),
(7, 'Raf', 'Topping', 'rtopping6@sohu.com', '$2a$04$xtkxUwN.xzjG88txRl7xYeu', 'cliente', 'http://dummyimage.com/229x100.png/5fa2dd'),
(8, 'Ford', 'Summers', 'fsummers7@mashable.com', '$2a$04$A9Jms8O3Lqr6/nbgc0WQd.o', 'cliente', 'http://dummyimage.com/139x100.png/dddddd'),
(9, 'Laughton', 'Sacco', 'lsacco8@toplist.cz', '$2a$04$gtXt0hSe.9qzmpvZuUDoauc', 'cliente', 'http://dummyimage.com/157x100.png/cc0000'),
(10, 'Stacey', 'Glenn', 'sglenn9@wp.com', '$2a$04$aYoz/0HYdVC7dDRQsA0ZaOf', 'cliente', 'http://dummyimage.com/131x100.png/ff4444'),
(11, 'Lilith', 'Graben', 'lgrabena@techcrunch.com', '$2a$04$gw3vQienjxql1k2tfYPSV.A', 'tortor', 'http://dummyimage.com/182x100.png/cc0000'),
(12, 'Rosemary', 'Semiraz', 'rsemirazb@vimeo.com', '$2a$04$CoAnU0Vrj4QmCN2TNiThie5', 'hac habitasse platea', 'http://dummyimage.com/180x100.png/cc0000'),
(13, 'Jacinta', 'Rockwill', 'jrockwillc@google.com', '$2a$04$ekr5e7Tf3MFVUe4UhgsNFu7', 'cliente', 'http://dummyimage.com/161x100.png/dddddd'),
(14, 'Brady', 'Kingzet', 'bkingzetd@indiatimes.com', '$2a$04$PNW3PvKBu/EkQ/JNSJ/5Pea', 'cliente', 'http://dummyimage.com/130x100.png/dddddd'),
(15, 'Alard', 'Vance', 'avancee@merriam-webster.com', '$2a$04$1wPLFPPEKoGapYPnMTMAuOT', 'cliente', 'http://dummyimage.com/137x100.png/ff4444');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products_users`
--
ALTER TABLE `products_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `products_users`
--
ALTER TABLE `products_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
