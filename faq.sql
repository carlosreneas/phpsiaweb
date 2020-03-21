-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 21-03-2020 a las 14:43:41
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `faq`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntafrecuente`
--

DROP TABLE IF EXISTS `preguntafrecuente`;
CREATE TABLE IF NOT EXISTS `preguntafrecuente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(500) NOT NULL,
  `respuesta` text DEFAULT NULL,
  `conteo` int(11) NOT NULL DEFAULT 0,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pregunta_tipo_fk` (`tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `preguntafrecuente`
--

INSERT INTO `preguntafrecuente` (`id`, `descripcion`, `respuesta`, `conteo`, `tipo`) VALUES
(1, 'Como me conecto a Github', 'Para conectarme a Github debo tener un cliente Git que puedo descargar desde la página oficial.  También se pueden utilizar otros clientes como GitKraken o los IDE pueden también cuentan con plugins para acceder.', 0, 1),
(2, 'Como ejecuto un código en lenguaje PHP', 'Para ejecutar PHP necesitar tener instalado un compilador PHP, para lo cual lo mas sencillo es utilizar WAMP Server o cualquier otro paquete que configura tu equipo como un servidor.', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

DROP TABLE IF EXISTS `tipo`;
CREATE TABLE IF NOT EXISTS `tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id`, `descripcion`) VALUES
(1, 'Académico'),
(2, 'Administrativo');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `preguntafrecuente`
--
ALTER TABLE `preguntafrecuente`
  ADD CONSTRAINT `pregunta_tipo_fk` FOREIGN KEY (`tipo`) REFERENCES `tipo` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
