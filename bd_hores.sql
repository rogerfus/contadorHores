-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-03-2017 a las 12:04:41
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_hores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_hores`
--

CREATE TABLE `tbl_hores` (
  `hor_id` int(11) NOT NULL,
  `hor_dia` date NOT NULL,
  `hor_horari` varchar(50) NOT NULL,
  `hor_horesExtres` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_hores`
--

INSERT INTO `tbl_hores` (`hor_id`, `hor_dia`, `hor_horari`, `hor_horesExtres`) VALUES
(4, '2017-03-29', '9-14', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_hores`
--
ALTER TABLE `tbl_hores`
  ADD PRIMARY KEY (`hor_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_hores`
--
ALTER TABLE `tbl_hores`
  MODIFY `hor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
