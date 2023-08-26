-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-08-2023 a las 19:06:53
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
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`id`, `name`) VALUES
(1, 'nike'),
(2, 'adidas'),
(3, 'Jordan'),
(4, 'reebok'),
(5, 'Puma'),
(6, 'Zara'),
(7, 'Pull&Beard');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorys`
--

CREATE TABLE `categorys` (
  `id` int(10) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `categorys`
--

INSERT INTO `categorys` (`id`, `name`) VALUES
(1, 'buzos'),
(2, 'pantalones'),
(3, 'hoodies'),
(4, 'remeras'),
(5, 'sneakers'),
(6, 'outfits');

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
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `color`, `size`, `price`, `id_brand`, `id_category`) VALUES
(2, 'tupac', 'buzo tupac', '', 'negro', 36, 3000, 1, 1),
(3, 'Flory', 'Sierra Bancorp', 'http://dummyimage.com/145x100.png/5fa2dd/ffffff', 'Mauv', 33, 0, 0, 0),
(4, 'Rupert', 'Viavi Solutions Inc.', 'http://dummyimage.com/225x100.png/ff4444/ffffff', 'Mauv', 39, 0, 0, 0),
(5, 'Eldin', 'Logitech International S.A.', 'http://dummyimage.com/171x100.png/5fa2dd/ffffff', 'Puce', 45, 0, 2, 2),
(6, 'Shelby', 'Goldman Sachs Group, Inc. (The)', 'http://dummyimage.com/186x100.png/cc0000/ffffff', 'Khaki', 36, 0, 0, 0),
(7, 'Meriel', 'Fulton Financial Corporation', 'http://dummyimage.com/192x100.png/dddddd/000000', 'Yellow', 35, 0, 0, 0),
(8, 'Daisey', 'SPAR Group, Inc.', 'http://dummyimage.com/203x100.png/dddddd/000000', 'Yellow', 44, 0, 0, 0),
(9, 'Tadio', 'SCYNEXIS, Inc.', 'http://dummyimage.com/202x100.png/dddddd/000000', 'Teal', 41, 0, 0, 0),
(10, 'Lukas', 'Sigma Labs, Inc.', 'http://dummyimage.com/214x100.png/5fa2dd/ffffff', 'Turquoise', 32, 0, 0, 0),
(11, 'Angelina', 'BioDelivery Sciences International, Inc.', 'http://dummyimage.com/203x100.png/cc0000/ffffff', 'Crimson', 32, 0, 0, 0),
(12, 'Mel', 'Chico\'s FAS, Inc.', 'http://dummyimage.com/193x100.png/dddddd/000000', 'Khaki', 35, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_users`
--

CREATE TABLE `products_users` (
  `id` int(10) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `products_users`
--
ALTER TABLE `products_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
