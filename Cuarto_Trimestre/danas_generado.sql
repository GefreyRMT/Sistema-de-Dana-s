-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-01-2020 a las 04:51:10
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `danas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `idCargo` int(2) NOT NULL,
  `cargo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`idCargo`, `cargo`) VALUES
(1, 'Administrador'),
(2, 'Empleado'),
(3, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE `tipodocumento` (
  `idtipoDocumento` int(2) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipodocumento`
--

INSERT INTO `tipodocumento` (`idtipoDocumento`, `descripcion`) VALUES
(1, 'Cedula de ciudadania'),
(2, 'Tarjeta de identidad'),
(3, 'Pasaporte'),
(4, 'Cedula de Extranjeria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `idtipoDocumento` int(2) NOT NULL,
  `numeroDocumento` varchar(45) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `nick` varchar(30) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `idCargo` int(2) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombre`, `apellido`, `idtipoDocumento`, `numeroDocumento`, `telefono`, `direccion`, `correo`, `nick`, `clave`, `idCargo`, `estado`) VALUES
(1, 'Camilo Alejandro', 'Perez Niño', 2, '5645623', '45634322', '65a4s6d4as6d', 'camiloperez1284@gmail.com', 'camilo', '202cb962ac59075b964b07152d234b70', 1, 1),
(2, 'Valentina', 'Rivera Niño', 1, '14377647', '574575757', '741723747', 'Vale@gmail.com', 'valu', '202cb962ac59075b964b07152d234b70', 2, 1),
(3, 'Yaneth', 'Niño Toscano', 1, '16754574', '747575', '4747547fwf', 'Yane15@hotmail.com', 'yane', '202cb962ac59075b964b07152d234b70', 3, 1),
(4, 'Felipé', 'Perez Niño', 2, '5648641', '56434123231', 'casfas4fa53', 'felipe@gmail.com', 'pipe', '202cb962ac59075b964b07152d234b70', 3, 1),
(5, 'Damian', 'Almares Nose', 1, '56514', '45455', 'asfasfasfa25', 'dalma@hotmail.com', 'dami', '202cb962ac59075b964b07152d234b70', 3, 1),
(6, 'Gustavo', 'Hernadez Rojas', 1, '84563413', '74646545', '74654as65d4', 'gus@hotmail.com', 'gus', '202cb962ac59075b964b07152d234b70', 2, 1),
(7, 'Arturo', 'Katano Silvestre', 1, '64454964', '86465464', '4a65s4f6a46', 'artu04@gmail.com', 'arturito', '202cb962ac59075b964b07152d234b70', 3, 1),
(8, 'Carlos', 'Monroy Sanchez', 1, '56353563', '56356356356', 'c4as65f4', 'carlos1@hotmail.com', 'carlos', '202cb962ac59075b964b07152d234b70', 2, 1),
(9, 'Pipe', 'Colmenares', 1, '6456544', '654655435', 'crasasfas64a', 'pipexll@hotmail.com', 'pipexll', '81dc9bdb52d04dc20036dbd8313ed055', 3, 1),
(10, 'Juan felipe', 'Carlosama Guarin ', 1, '664656846', '531463453', 'as4f65as4f56a medellin', 'campero123@hotmail.com', 'carlongas', '202cb962ac59075b964b07152d234b70', 3, 1),
(11, 'Juan Manuel', 'Humos Cardona', 4, '645645644', '78646464', 's4a56d4asd56', 'veneco@gmail.com', 'humos', '202cb962ac59075b964b07152d234b70', 2, 1),
(12, 'felipe', 'perez', 1, '133579', '12345', '1S2OSDKLO', 'FAP@gmail.com', 'pipex', 'caf1a3dfb505ffed0d024130f58c5cfa', 3, 1),
(13, 'pepito', 'rodriguez', 1, '64564654', '464564564', '456as56f4as564fa56', 'pepito2018@gmail.com', 'pepe', '202cb962ac59075b964b07152d234b70', 3, 1),
(14, 'gustavo', 'nose que', 1, '69955645', '5454556', '5s4f56as4f56', 'guss@hotmail.com', 'guss', '202cb962ac59075b964b07152d234b70', 3, 1),
(15, 'alfredo', 'Guzman', 1, '7878/9797', '897897897', '789afs789f7', 'alfred@hotmail.com', 'alf', '202cb962ac59075b964b07152d234b70', 3, 1),
(16, 'alfredo', 'Guzman', 1, '7878/9797', '897897897', '789afs789f7', 'alf1@hotmail.com', 'alf1', '202cb962ac59075b964b07152d234b70', 3, 1),
(17, 'alfredo', 'Guzman', 1, '7878/9797', '897897897', '789afs789f7', 'alf12@hotmail.com', 'alf12', '81dc9bdb52d04dc20036dbd8313ed055', 3, 1),
(18, 'alfredo', 'Guzman', 1, '7878/9797', '897897897', '789afs789f7', 'alf123@hotmail.com', 'alf123', '81dc9bdb52d04dc20036dbd8313ed055', 3, 1),
(19, 'Valentina', 'Alimaña Rivera', 3, '645644', '98789897', '79797987897sacs', 'Vale22@gmail.com', 'valu1', '202cb962ac59075b964b07152d234b70', 3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idCargo`);

--
-- Indices de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD PRIMARY KEY (`idtipoDocumento`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `fk_usuario_tipoDocumento` (`idtipoDocumento`),
  ADD KEY `fk_usuario_cargo` (`idCargo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_cargo` FOREIGN KEY (`idCargo`) REFERENCES `cargo` (`idCargo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario_tipoDocumento` FOREIGN KEY (`idtipoDocumento`) REFERENCES `tipodocumento` (`idtipoDocumento`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
