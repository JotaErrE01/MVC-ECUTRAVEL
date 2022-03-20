-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2022 a las 04:28:29
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hoteles`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriavehiculo`
--

CREATE TABLE `categoriavehiculo` (
  `id_categoria_vehiculo` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoriavehiculo`
--

INSERT INTO `categoriavehiculo` (`id_categoria_vehiculo`, `nombre`, `descripcion`) VALUES
(1, 'Pequeño', NULL),
(2, 'Mediano', NULL),
(3, 'Familiar', NULL),
(4, 'SUV', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ciudad` varchar(20) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id`, `ciudad`) VALUES
(1, 'Guayaquil'),
(2, 'Quito'),
(3, 'Loja'),
(4, 'Machala'),
(5, 'Esmeraldas'),
(6, 'Zaruma'),
(7, 'Cuenca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoteles`
--

CREATE TABLE `hoteles` (
  `Id` int(11) NOT NULL,
  `Nombrehotel` varchar(50) NOT NULL,
  `ProvinciaCiudad` varchar(50) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `NumeroCuartos` int(11) NOT NULL,
  `TipoHotel` text NOT NULL,
  `Estrellas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `hoteles`
--

INSERT INTO `hoteles` (`Id`, `Nombrehotel`, `ProvinciaCiudad`, `Email`, `NumeroCuartos`, `TipoHotel`, `Estrellas`) VALUES
(36, 'Oro Negro', 'El oro - Machala', 'oroverdemachala@hoteles.com', 403, 'Hotel de ciudad', '4 estrellas'),
(37, 'Hilton Colon', 'Guayas -Guayaquil', 'HiltonC@hoteles.com', 612, 'Hotel de ciudad', '5 estrellas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id` int(11) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `contraseña` varchar(45) DEFAULT NULL,
  `destino` varchar(45) DEFAULT NULL,
  `fecha_viaje` date DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`id`, `usuario`, `nombre`, `contraseña`, `destino`, `fecha_viaje`, `email`, `telefono`) VALUES
(2, 'Joel34', 'Joel Mero', '20478', 'Quito', '2022-04-08', 'joel@gmail.com', '0987456314'),
(3, 'andres69', 'Andres Mero', '424234', 'Ba&ntilde;os', '2022-04-30', 'andres@hotmail.com', '0987456314'),
(5, 'May2003', 'Maybeth Jimenez', '12123', 'Gal&aacute;pagos', '2022-05-07', 'may@gmail.com', '0987321544');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id_vehiculo` int(11) NOT NULL,
  `placa` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `precioDia` double DEFAULT NULL,
  `aire_acondicionado` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

CREATE TABLE `vuelos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ciudad_origen_id` bigint(20) UNSIGNED NOT NULL,
  `ciudad_destino_id` bigint(20) UNSIGNED NOT NULL,
  `fecha_salida` date NOT NULL,
  `fecha_regreso` date DEFAULT NULL,
  `precio` decimal(5,2) NOT NULL,
  `duracion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`id`, `ciudad_origen_id`, `ciudad_destino_id`, `fecha_salida`, `fecha_regreso`, `precio`, `duracion`) VALUES
(2, 2, 1, '2022-03-20', '2022-03-25', '150.00', 2),
(4, 2, 3, '2022-03-20', '2022-03-25', '150.00', 3),
(5, 3, 1, '2022-03-20', '2022-03-25', '180.00', 4),
(7, 4, 2, '2022-03-20', '2022-03-25', '120.00', 2),
(8, 2, 4, '2022-03-20', '2022-03-25', '120.00', 2),
(9, 1, 4, '2022-03-20', '2022-03-25', '200.00', 3),
(10, 4, 1, '2022-03-20', '2022-03-25', '200.00', 3),
(11, 3, 4, '2022-03-20', '2022-03-25', '200.00', 1),
(12, 4, 3, '2022-03-20', NULL, '200.00', 1),
(13, 2, 1, '0012-02-12', NULL, '212.00', 12),
(14, 1, 2, '0003-02-01', NULL, '12.00', 12),
(15, 1, 5, '0001-01-01', NULL, '1.00', 1),
(16, 2, 1, '0012-12-12', NULL, '12.00', 12);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoriavehiculo`
--
ALTER TABLE `categoriavehiculo`
  ADD PRIMARY KEY (`id_categoria_vehiculo`);

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `hoteles`
--
ALTER TABLE `hoteles`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id_vehiculo`),
  ADD KEY `id_categoria_vehiculo_idx` (`id_categoria`);

--
-- Indices de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `ciudad_origen_id` (`ciudad_origen_id`),
  ADD KEY `ciudad_destino_id` (`ciudad_destino_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `hoteles`
--
ALTER TABLE `hoteles`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `id_categoria_vehiculo` FOREIGN KEY (`id_categoria`) REFERENCES `categoriavehiculo` (`id_categoria_vehiculo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD CONSTRAINT `vuelos_ibfk_1` FOREIGN KEY (`ciudad_origen_id`) REFERENCES `ciudades` (`id`),
  ADD CONSTRAINT `vuelos_ibfk_2` FOREIGN KEY (`ciudad_destino_id`) REFERENCES `ciudades` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
