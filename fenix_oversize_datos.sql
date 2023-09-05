-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-09-2023 a las 06:11:19
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
(27, 'tuki', 'remera tuki lila', '/img/category/remeras/remera13.jpg', 'morado', 30, 6100, 10, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'RCI Hoslity Holdings', 'Bread - Bistro blue', '/img/category/hoodies/azul-cielo.jpg', 'Azul', NULL, 8373, 1, 3, '2023-09-01 00:15:17', '2023-09-01 00:15:17'),
(29, 'RCI Hoslity Holdings', 'Alize Sunset', '/img/category/hoodies/cielo2.jpg', 'Azul', NULL, 1132, 1, 3, '2023-09-01 00:15:17', '2023-09-01 00:15:17'),
(30, 'DigitalGlobe', 'Marjoram - Dried Rubbed', '/img/category/hoodies/gris2.jpg', 'Gris', NULL, 4978, 3, 3, '2023-09-01 00:15:17', '2023-09-01 00:15:17'),
(31, 'Cubic Corpor', 'Energy Franks Pineapple', '/img/category/hoodies/HOODIE-BLEND-scaled.jpg', 'Beige', NULL, 0, 4, 3, '2023-09-01 00:15:17', '2023-09-01 00:15:17'),
(32, 'R1 RCM Inc.', 'Capcla Hoodies', '/img/category/hoodies/beige.jpg', 'Beige', NULL, 4566, 5, 3, '2023-09-01 00:15:17', '2023-09-01 00:15:17'),
(33, 'Fifth Street', 'Mcauslan Apricot Militar', '/img/category/hoodies/militar2.jpg', 'Verde', NULL, 8575, 6, 3, '2023-09-01 00:15:17', '2023-09-01 00:15:17'),
(34, 'Nustar Energy', 'Bamboo blueberry', '/img/category/hoodies/morado.jpg', 'Morado', NULL, 5919, 7, 3, '2023-09-01 00:15:17', '2023-09-01 00:15:17'),
(35, 'Gabelli Healthcaret', 'Wine hoddie blueberry', '/img/category/hoodies/morado-oscuro.jpg', 'morado', NULL, 6573, 8, 3, '2023-09-01 00:15:17', '2023-09-01 00:15:17'),
(36, 'HelenofTroy Limited', 'Nut Cashews Raw', '/img/category/hoodies/beige2.jpg', 'Beige', NULL, 5927, 9, 3, '2023-09-01 00:15:17', '2023-09-01 00:15:17'),
(37, 'Eagle Point Word Chine', 'EvaporateSkim chinese', '/img/category/hoodies/blanca-chino.jpg', 'Blanco', NULL, 7953, 10, 3, '2023-09-01 00:15:17', '2023-09-01 00:15:17'),
(38, 'Resocpital ', 'Shrimp white hoodie', '/img/category/hoodies/blanco.jpg', 'Blanco', NULL, 2364, 11, 3, '2023-09-01 00:15:17', '2023-09-01 00:15:17'),
(39, 'Eagle Point Word Chine', 'EvaporateSkim chinese', '/img/category/hoodies/blanco3.jpg', 'Blanco', NULL, 5874, 9, 3, '2023-09-01 00:15:18', '2023-09-01 00:15:18'),
(40, 'Synaptics Incorp', 'WineMalbec Trapiche Reserve', '/img/category/hoodies/blanco4.jpg', 'Blanco', NULL, 9495, 13, 3, '2023-09-01 00:15:18', '2023-09-01 00:15:18'),
(41, 'American HomeRent', 'Basil  Seedlings Brown', '/img/category/hoodies/cafe-oscura.jpg', 'Cafe', NULL, 7654, 14, 3, '2023-09-01 00:15:18', '2023-09-01 00:15:18'),
(42, 'Brown Canned h', 'Hancock Advantaged whitebrown', '/img/category/hoodies/cafe.jpg', 'Cafe', NULL, 4054, 15, 3, '2023-09-01 00:15:18', '2023-09-01 00:15:18'),
(43, 'MBIA narto', 'Coke hoodie 355 Ml', '/img/category/hoodies/chino2.jpg', 'Beige', NULL, 9406, 16, 3, '2023-09-01 00:15:18', '2023-09-01 00:15:18'),
(44, 'Linio', 'patalon en algodon 100%', '/img/category/pantalones/pantalon01.jpg', 'Gris', 36, 2500, 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Jogger', 'patalon en algodon, poliester', '/img/category/pantalones/pantalon02.jpg', 'Negro', 32, 2550, 2, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Lino', 'patalon en algodon, poliester', '/img/category/pantalones/pantalon03.jpg', 'Gris', 32, 2550, 3, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Chinos', 'patalon en algodon, poliester', '/img/category/pantalones/pantalon04.jpg', 'Azul', 32, 3550, 4, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Cargo', 'patalon en algodon, poliester', '/img/category/pantalones/pantalon05.jpg', 'Verde', 28, 4550, 17, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Cargo', 'patalon en algodon, poliester', '/img/category/pantalones/pantalon06.jpg', 'Verde', 30, 4500, 18, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Cargo', 'patalon en algodon, poliester', '/img/category/pantalones/pantalon07.jpg', 'Gris', 38, 4700, 19, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Cargo', 'patalon en algodon, poliester', '/img/category/pantalones/pantalon08.jpg', 'Verde', 36, 4790, 20, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Chándal', 'patalon en algodon, poliester', '/img/category/pantalones/pantalon09.jpg', 'Negro', 34, 3790, 21, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Joggers', 'patalon en algodon, poliester', '/img/category/pantalones/pantalon010.jpg', 'Gris', 32, 3790, 21, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Cargo', 'patalon en algodon, poliester', '/img/category/pantalones/pantalon011.jpg', 'Negro', 36, 3990, 12, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Cargo', 'patalon en algodon, poliester', '/img/category/pantalones/pantalon012.jpg', 'Blanco', 36, 3990, 12, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Outfit #1', 'conjunto de 2 piezas', '/img/category/outfits/1.jpg', 'Negro', 32, 7000, 14, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Outfit #2', 'conjunto de 3 piezas', '/img/category/outfits/2.jpg', 'Beige', 34, 8500, 13, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Outfit #3', 'conjunto de 2 piezas', '/img/category/outfits/3.jpg', 'Rosa', 36, 8500, 11, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Outfit #4', 'conjunto de 2 piezas', '/img/category/outfits/4.jpg', 'Azul', 32, 8700, 9, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Outfit #5', 'conjunto de 3 piezas', '/img/category/outfits/Outfit-18.jpg', 'Azul, Negro, Piel', 32, 8700, 7, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Outfit #6', 'conjunto de 3 piezas', '/img/category/outfits/Outfit-19.jpg', 'Cafe, Negro', 32, 8700, 5, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Outfit #7', 'conjunto de 3 piezas', '/img/category/outfits/Outfit-21.jpg', 'Cafe, Negro', 36, 8800, 3, 6, '0000-00-00 00:00:00', '2023-09-03 22:50:27'),
(63, 'Outfit #8', 'conjunto de 3 piezas', '/img/category/outfits/Outfit-26.jpg', 'Azul, Rosa, Beige', 36, 8800, 3, 6, '0000-00-00 00:00:00', '2023-09-03 22:51:10'),
(64, 'Outfit #9', 'conjunto de 3 piezas', '/img/category/outfits/Outfit-29.jpg', 'Azul, Morado', 34, 8800, 23, 6, '0000-00-00 00:00:00', '2023-09-03 22:52:16'),
(65, 'Outfit #10', 'conjunto de 3 piezas', '/img/category/outfits/Outfit-36.jpg', 'Rosa, Blanco, Negro', 34, 8800, 22, 6, '0000-00-00 00:00:00', '2023-09-03 22:53:09'),
(66, 'Outfit #11', 'conjunto de 3 piezas', '/img/category/outfits/Outfit-42.jpg', 'Negro, Rojo, Rosa', 30, 8850, 20, 6, '0000-00-00 00:00:00', '2023-09-03 22:54:13'),
(67, 'Outfit #12', 'conjunto de 3 piezas', '/img/category/outfits/Outfit-49.jpg', 'Negro, Beige, Morado', 30, 8850, 17, 6, '0000-00-00 00:00:00', '2023-09-03 22:56:34'),
(68, 'ADIZERO', 'SL Rosa HQ135 standard', '/img/sneakers/ADIZERO_SL_Rosa.png', 'Rosa', 42, 12000, 2, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Flex', 'runner HQ standard', '/img/sneakers/flex-runner-2.png', 'Negro', 43, 11000, 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'metcon', 'free-5-training', '/img/sneakers/free-metcon-5-training.png', 'Morado', 35, 12500, 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Fuse 2.0', 'Forged-Men-Training', '/img/sneakers/Fuse-2.0-Forged.png', 'Negro', 37, 13500, 5, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Fuse 2.0', 'MURPH-Men-Training', '/img/sneakers/Fuse-2.0-MURPH.png', 'Negro', 39, 13500, 5, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Aura', 'Max sneak', '/img/sneakers/Jordan_Max_Aura_4.png', 'Blanco', 44, 15500, 3, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'luka', 'lk-1 sneak', '/img/sneakers/luka-1.png', 'Blanco', 44, 16500, 3, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Nano_X2', 'Training Adventure', '/img/sneakers/Nano_X2.png', 'Verde', 44, 15500, 4, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Nano_X3', 'Training Adventure', '/img/sneakers/Nano_X3_Adv.png', 'Marron', 42, 15500, 4, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Nano_X3', 'Training Adventure', '/img/sneakers/Nano_X3.png', 'Blanco', 40, 15500, 4, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Zegama', 'trail running React', '/img/sneakers/Nike_Zegama.png', 'Negro', 38, 17400, 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Zegama', 'trail running React', '/img/sneakers/Nike_Zegama2.png', 'Beige', 36, 17400, 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Pegasus', 'React Pegasus Trail 4', '/img/sneakers/pegasus-trail.png', 'Azul', 34, 17400, 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'SEASONS', 'Explore-NITRO Mid Hiking', '/img/sneakers/SEASONS-Explore-NITRO-Mi.png', 'Verde', 38, 18400, 5, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'SEASONS', 'Explore-NITRO Mid Hiking', '/img/sneakers/SEASONS-Explore-NITRO.png', 'Azul', 40, 18400, 5, 5, '0000-00-00 00:00:00', '2023-09-05 03:46:22'),
(83, 'QUESTAR', 'Adistar 2 running', '/img/sneakers/Tenis_Adistar_2.0_Turq.png', 'Turquesa', 40, 18800, 2, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'QUESTAR', 'Adistar 2 running', '/img/sneakers/Tenis_Adistar_2.0.png', 'Cielo', 37, 18900, 2, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'ADIZERO RC 4', 'Lightstrike 4 running', '/img/sneakers/Tenis_Adizero.png', 'Rosa', 39, 18900, 2, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'ULTRABOOST', 'Light Running Ocean', '/img/sneakers/Tenis_Ultraboost_.png', 'Negro', 39, 18900, 2, 5, '0000-00-00 00:00:00', '2023-09-05 03:08:56');

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
(1, 'Cordula', 'Aymerich', 'caymerich0@purevolume.com', '$2a$04$CyRsWQhjBaR4tpSVVwZlpeB', 'cliente', '/img/Perfiles/perfil-attitude.jpg'),
(2, 'Missy', 'Hyslop', 'mhyslop1@icq.com', '$2a$04$JphxLxp6SGJXk.YGv/f9d..', 'cliente', '/img/Perfiles/perfil-boy-style-boys.jpg'),
(3, 'Sibylle', 'Renault', 'srenault2@lycos.com', '$2a$04$Qbp0bmxRxW36wsui9nq1CO8', 'cliente', '/img/Perfiles/perfil-boyl.jpg'),
(4, 'Elyn', 'Grigolli', 'egrigolli3@sakura.ne.jp', '$2a$04$jT.F2n1CLwULVDu2/G4COud', 'cliente', '/img/Perfiles/perfil-dope.jpg'),
(5, 'Cob', 'Kryszka', 'ckryszka4@nationalgeographic.com', '$2a$04$d6ZDGZ3xY0cf4DBS3D5OzOZ', 'cliente', '/img/Perfiles/perfil-hidden.jpg'),
(6, 'Kerrin', 'Smails', 'ksmails5@nasa.gov', '$2a$04$m5ahO/G9C6iPZWHEcGaMw.r', 'cliente', '/img/Perfiles/perfil-itachi.jpg'),
(7, 'Raf', 'Topping', 'rtopping6@sohu.com', '$2a$04$xtkxUwN.xzjG88txRl7xYeu', 'cliente', '/img/Perfiles/perfil-kurama.jpg'),
(8, 'Ford', 'Summers', 'fsummers7@mashable.com', '$2a$04$A9Jms8O3Lqr6/nbgc0WQd.o', 'cliente', '/img/Perfiles/perfil-mask.jpg'),
(9, 'Laughton', 'Sacco', 'lsacco8@toplist.cz', '$2a$04$gtXt0hSe.9qzmpvZuUDoauc', 'cliente', '/img/Perfiles/perfil-smart.jpg'),
(10, 'Stacey', 'Glenn', 'sglenn9@wp.com', '$2a$04$aYoz/0HYdVC7dDRQsA0ZaOf', 'cliente', '/img/Perfiles/peril-with.jpg'),
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

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
