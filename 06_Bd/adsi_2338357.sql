-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-03-2022 a las 18:37:20
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adsi_2338357`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE `conductores` (
  `Idconductor` int(6) NOT NULL,
  `cedula` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `nombres` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `licencia` varchar(14) COLLATE utf8_spanish2_ci NOT NULL,
  `prueba_al` varchar(12) COLLATE utf8_spanish2_ci NOT NULL,
  `vehiculosId` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `conductores`
--

INSERT INTO `conductores` (`Idconductor`, `cedula`, `nombres`, `email`, `telefono`, `licencia`, `prueba_al`, `vehiculosId`) VALUES
(3, '100200100', 'Dario Mendez', 'dario@gmail.com', '3002122', 'Cuarta Categor', 'Negativo', 4),
(4, '100200100', 'Dario Mendez', 'dario@gmail.com', '3002122', 'Cuarta Categor', 'Negativo', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `despachador`
--

CREATE TABLE `despachador` (
  `idDespachador` int(6) NOT NULL,
  `nombres` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(10) DEFAULT NULL,
  `horario` time NOT NULL,
  `email` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(90) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `despachador`
--

INSERT INTO `despachador` (`idDespachador`, `nombres`, `telefono`, `horario`, `email`, `password`) VALUES
(1, 'Carlos', 310213456, '08:08:08', 'carlos@gmail.com', '123456'),
(2, 'Carlos Martinez', 2147483647, '08:00:00', 'carlos@hotmail.com', '123456'),
(3, 'Alejandra Martinez', 2147483647, '14:00:00', 'alejandra@hotmail.com', '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajero`
--

CREATE TABLE `pasajero` (
  `idPasajero` int(6) NOT NULL,
  `nombre` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `pasajero`
--

INSERT INTO `pasajero` (`idPasajero`, `nombre`, `email`, `telefono`) VALUES
(1, 'Juan Martinez', 'juan@hotmail.com', 2147483647),
(2, 'Ana Cepeda', 'ana@hotmail.com', 2147483647),
(3, 'Juan Martinez', 'juan@hotmail.com', 300748364),
(4, 'Alicia Martinez', 'juan@hotmail.com', 3006908090);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `idPuesto` int(6) NOT NULL,
  `numpuesto` int(2) DEFAULT NULL,
  `disponible` varchar(2) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `vehiculosId` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `puesto`
--

INSERT INTO `puesto` (`idPuesto`, `numpuesto`, `disponible`, `vehiculosId`) VALUES
(2, 12, 'SI', 4),
(3, 12, 'SI', 5),
(4, 12, 'SI', 6),
(5, 8, 'SI', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiquete`
--

CREATE TABLE `tiquete` (
  `idTiquete` int(6) NOT NULL,
  `fecha` date NOT NULL,
  `vehiculosId` int(6) NOT NULL,
  `despachadorId` int(6) NOT NULL,
  `pasajeroId` int(11) NOT NULL,
  `puestoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tiquete`
--

INSERT INTO `tiquete` (`idTiquete`, `fecha`, `vehiculosId`, `despachadorId`, `pasajeroId`, `puestoId`) VALUES
(1, '2022-03-04', 6, 3, 1, 2),
(2, '2022-03-04', 5, 1, 2, 4),
(5, '2022-03-05', 5, 3, 3, 3),
(10, '2022-03-03', 4, 3, 4, 3),
(16, '2022-03-03', 5, 3, 2, 3),
(17, '2022-03-05', 5, 1, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `idVehiculos` int(6) NOT NULL,
  `placa` varchar(7) COLLATE utf8_spanish2_ci NOT NULL,
  `capacidad` int(2) DEFAULT NULL,
  `tipo` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `soat` date NOT NULL,
  `extracontractual` date DEFAULT NULL,
  `contractual` date DEFAULT NULL,
  `rtm` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`idVehiculos`, `placa`, `capacidad`, `tipo`, `soat`, `extracontractual`, `contractual`, `rtm`) VALUES
(4, 'MCN-930', 12, 'AEROVAN', '2022-05-15', '2022-12-30', '2022-10-07', '2022-08-20'),
(5, 'ABC-123', 12, 'AEROVAN', '2022-05-15', '2022-12-30', '2022-10-07', '2022-08-20'),
(6, 'ABC-932', 12, 'AEROVAN', '2022-05-15', '2022-12-30', '2022-10-07', '2022-07-21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`Idconductor`),
  ADD KEY `vehiculosId` (`vehiculosId`);

--
-- Indices de la tabla `despachador`
--
ALTER TABLE `despachador`
  ADD PRIMARY KEY (`idDespachador`);

--
-- Indices de la tabla `pasajero`
--
ALTER TABLE `pasajero`
  ADD PRIMARY KEY (`idPasajero`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`idPuesto`),
  ADD KEY `vehiculosId` (`vehiculosId`);

--
-- Indices de la tabla `tiquete`
--
ALTER TABLE `tiquete`
  ADD PRIMARY KEY (`idTiquete`),
  ADD KEY `vehiculosId2` (`vehiculosId`),
  ADD KEY `puestoId2` (`puestoId`),
  ADD KEY `despachadorId2` (`despachadorId`),
  ADD KEY `pasajeroId2` (`pasajeroId`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`idVehiculos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conductores`
--
ALTER TABLE `conductores`
  MODIFY `Idconductor` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `despachador`
--
ALTER TABLE `despachador`
  MODIFY `idDespachador` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pasajero`
--
ALTER TABLE `pasajero`
  MODIFY `idPasajero` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `puesto`
--
ALTER TABLE `puesto`
  MODIFY `idPuesto` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tiquete`
--
ALTER TABLE `tiquete`
  MODIFY `idTiquete` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `idVehiculos` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD CONSTRAINT `conductores_ibfk_1` FOREIGN KEY (`vehiculosId`) REFERENCES `vehiculos` (`idVehiculos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD CONSTRAINT `puesto_ibfk_1` FOREIGN KEY (`vehiculosId`) REFERENCES `vehiculos` (`idVehiculos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tiquete`
--
ALTER TABLE `tiquete`
  ADD CONSTRAINT `tiquete_ibfk_1` FOREIGN KEY (`pasajeroId`) REFERENCES `pasajero` (`idPasajero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tiquete_ibfk_2` FOREIGN KEY (`puestoId`) REFERENCES `puesto` (`idPuesto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tiquete_ibfk_3` FOREIGN KEY (`despachadorId`) REFERENCES `despachador` (`idDespachador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tiquete_ibfk_4` FOREIGN KEY (`vehiculosId`) REFERENCES `vehiculos` (`idVehiculos`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
