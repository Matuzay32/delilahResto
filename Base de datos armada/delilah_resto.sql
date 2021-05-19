-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2021 a las 19:52:39
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `delilah_resto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritos`
--

CREATE TABLE `carritos` (
  `pedidoId` int(11) NOT NULL,
  `estado` varchar(255) DEFAULT 'En proceso',
  `hora` datetime DEFAULT NULL,
  `tipoPago` varchar(255) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `direccionEnvio` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `platoId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carritos`
--

INSERT INTO `carritos` (`pedidoId`, `estado`, `hora`, `tipoPago`, `precio`, `direccionEnvio`, `createdAt`, `updatedAt`, `userId`, `platoId`) VALUES
(1, 'En proceso', '2021-05-19 17:49:34', 'Credito', NULL, 'el salvador 5537', '2021-05-19 17:49:34', '2021-05-19 17:49:34', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallespedidos`
--

CREATE TABLE `detallespedidos` (
  `detallePedidoId` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `estado` varchar(255) DEFAULT 'En proceso',
  `tipoPago` varchar(255) DEFAULT NULL,
  `direccionEnvio` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `carritoPedidoId` int(11) DEFAULT NULL,
  `platoId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallespedidos`
--

INSERT INTO `detallespedidos` (`detallePedidoId`, `cantidad`, `estado`, `tipoPago`, `direccionEnvio`, `createdAt`, `updatedAt`, `userId`, `carritoPedidoId`, `platoId`) VALUES
(1, 2, 'Terminado', 'Credito', 'direccionEnvio', '2021-05-19 17:49:39', '2021-05-19 17:50:58', 1, 1, 2),
(2, 1, 'Terminado', 'Credito', 'direccionEnvio', '2021-05-19 17:49:39', '2021-05-19 17:50:58', 1, 1, 5),
(3, 3, 'Terminado', 'Credito', 'direccionEnvio', '2021-05-19 17:49:39', '2021-05-19 17:50:58', 1, 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platos`
--

CREATE TABLE `platos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `platos`
--

INSERT INTO `platos` (`id`, `nombre`, `descripcion`, `precio`, `createdAt`, `updatedAt`) VALUES
(1, 'SUSHI', 'BUENOS AIRES', 2000, '2021-05-18 18:22:38', '2021-05-18 18:22:38'),
(2, 'HAMBURGUESA', 'BUENOS AIRES', 700, '2021-05-18 18:22:41', '2021-05-18 18:22:41'),
(3, 'HELADO', 'BUENOS AIRES', 600, '2021-05-18 18:22:42', '2021-05-18 18:22:42'),
(4, 'SUPREMA', 'BUENOS AIRES', 800, '2021-05-18 18:22:42', '2021-05-18 18:22:42'),
(5, 'POLLO', 'BUENOS AIRES', 450, '2021-05-18 18:22:43', '2021-05-18 18:22:43'),
(6, 'SUPER PANCHO', 'BUENOS AIRES', 250, '2021-05-18 18:22:44', '2021-05-18 18:22:44'),
(7, 'PAPAS FRITAS', 'BUENOS AIRES', 350, '2021-05-18 18:22:45', '2021-05-18 18:22:45'),
(8, 'FIDEOS A AL PESTO', 'BUENOS AIRES', 500, '2021-05-18 18:23:01', '2021-05-18 18:23:01'),
(9, 'SUSHI', 'BUENOS AIRES', 2000, '2021-05-18 18:23:02', '2021-05-18 18:23:02'),
(10, 'MILANESA', 'BUENOS AIRES', 800, '2021-05-18 18:23:03', '2021-05-18 18:23:03'),
(11, 'LOMO CON PAPAS', 'BUENOS AIRES', 1200, '2021-05-18 18:23:04', '2021-05-18 18:23:04'),
(12, 'PASTEL DE PAPAS', 'BUENOS AIRES', 700, '2021-05-18 18:23:04', '2021-05-18 18:23:04'),
(13, 'ENSALADA CESAR', 'BUENOS AIRES', 550, '2021-05-18 18:23:06', '2021-05-18 18:23:06'),
(14, 'ASADO PARA 2 ', 'BUENOS AIRES', 2100, '2021-05-18 18:23:07', '2021-05-18 18:23:07'),
(15, 'VINO TINTO', 'BUENOS AIRES', 1000, '2021-05-18 18:23:24', '2021-05-18 18:23:24'),
(16, 'POLLO AL WOK', 'BUENOS AIRES', 750, '2021-05-18 18:23:30', '2021-05-18 18:23:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `rol` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `direccion`, `numero`, `rol`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 'admin 1234', '47932455', 1, '2021-05-18 18:23:12', '2021-05-18 18:23:12'),
(2, 'Usuario01', 'Usuario01@gmail.com', 'Usuario01', 'Usuario01 1234', '1559497891', 0, '2021-05-19 17:36:30', '2021-05-19 17:36:30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carritos`
--
ALTER TABLE `carritos`
  ADD PRIMARY KEY (`pedidoId`),
  ADD KEY `userId` (`userId`),
  ADD KEY `platoId` (`platoId`);

--
-- Indices de la tabla `detallespedidos`
--
ALTER TABLE `detallespedidos`
  ADD PRIMARY KEY (`detallePedidoId`),
  ADD KEY `userId` (`userId`),
  ADD KEY `carritoPedidoId` (`carritoPedidoId`),
  ADD KEY `platoId` (`platoId`);

--
-- Indices de la tabla `platos`
--
ALTER TABLE `platos`
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
-- AUTO_INCREMENT de la tabla `carritos`
--
ALTER TABLE `carritos`
  MODIFY `pedidoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detallespedidos`
--
ALTER TABLE `detallespedidos`
  MODIFY `detallePedidoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `platos`
--
ALTER TABLE `platos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carritos`
--
ALTER TABLE `carritos`
  ADD CONSTRAINT `carritos_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `carritos_ibfk_2` FOREIGN KEY (`platoId`) REFERENCES `platos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `detallespedidos`
--
ALTER TABLE `detallespedidos`
  ADD CONSTRAINT `detallespedidos_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `detallespedidos_ibfk_2` FOREIGN KEY (`carritoPedidoId`) REFERENCES `carritos` (`pedidoId`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `detallespedidos_ibfk_3` FOREIGN KEY (`platoId`) REFERENCES `platos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
