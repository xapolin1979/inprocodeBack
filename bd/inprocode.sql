-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2024 a las 10:53:02
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
-- Base de datos: `inprocode`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario`
--

CREATE TABLE `calendario` (
  `id` int(11) NOT NULL,
  `title` varchar(160) NOT NULL,
  `date` varchar(60) NOT NULL,
  `color` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calendario`
--

INSERT INTO `calendario` (`id`, `title`, `date`, `color`) VALUES
(13, 'Llevar a los niños al dentista', '2024-05-28', 'blue'),
(14, 'Viaje a Menorca sin los niños', '2024-05-02', 'blue'),
(15, 'LLevar la ropa a la tintoreria', '2024-05-08', 'red'),
(31, 'Me voy a la playa', '2024-05-17', 'blue'),
(35, 'Emiezo el proyecto final de Angular', '2024-05-15', 'green');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mapa`
--

CREATE TABLE `mapa` (
  `id` int(11) NOT NULL,
  `category` varchar(60) NOT NULL,
  `longitud` decimal(11,7) NOT NULL,
  `latitud` decimal(11,7) NOT NULL,
  `titulo` varchar(80) NOT NULL,
  `direccion` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mapa`
--

INSERT INTO `mapa` (`id`, `category`, `longitud`, `latitud`, `titulo`, `direccion`) VALUES
(2, 'china', 2.0827279, 41.5620291, 'Nihao Can Jong', 'Av. de la Concòrdia, 57, 08206 Sabadell, Barcelona'),
(3, 'china', 2.0773716, 41.5607251, 'Restaurante Chino Feliz', 'Carrer de Francesc Bellapart, 1, 08208 Sabadell, Barcelona'),
(4, 'japonesa', 2.1048793, 41.5479718, 'Restaurant Kote', 'Carrer de Sant Antoni, 25, 08201 Sabadell, Barcelona'),
(5, 'japonesa', 2.1005312, 41.5494349, 'Bokoto Sabadell', 'Carrer de Gràcia, 131, 08201 Sabadell, Barcelona'),
(6, 'japonesa', 2.0943847, 41.5568147, 'Kisamba Sabadell', 'Av. de Francesc Macià, 45, 08206 Sabadell, Barcelona'),
(7, 'italiana', 2.0960997, 41.5505715, 'La Bella Italia', 'Ronda de Zamenhof, 135, 08201 Sabadell, Barcelona'),
(8, 'italiana', 2.1082914, 41.5430378, 'Restaurante Pizzería Verdi', 'Rambla, 109, 08202 Sabadell, Barcelona'),
(9, 'italiana', 2.1000975, 41.5547550, 'Bellagio Restaurant - Pizzeria', 'Av. Onze de Setembre, 152, 08208 Sabadell, Barcelona'),
(10, 'italiana', 2.1018044, 41.5481606, 'Ofame Sabadell', 'Carrer de Gràcia, 65, 08201 Sabadell, Barcelona'),
(11, 'tapas', 2.0891884, 41.5657986, 'Café Bar Luis', 'Carrer d\'Urgell, 38, 08207 Sabadell, Barcelona'),
(12, 'tapas', 2.1055487, 41.5471941, 'CalaBoca', 'Carrer de Marià Fortuny, 10, 08201 Sabadell, Barcelona'),
(13, 'tapas', 2.0941659, 41.5528534, 'Restaurante Tiberius', 'Carrer dels Filadors, 20, 08208 Sabadell, Barcelona');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `email` varchar(160) NOT NULL,
  `telefono` int(11) NOT NULL,
  `localizacion` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id`, `nombre`, `apellido`, `email`, `telefono`, `localizacion`) VALUES
(19, 'Maria', 'Gimenez', 'gimenez@gmail.com', 632587456, 'Badalona'),
(20, 'Santi', 'Garate', 'santi@gmail.com', 632214587, 'Sabadell'),
(22, 'Maria', 'Flores', 'lorena@gmail.com', 652147853, 'Sevilla'),
(30, 'Montserrat', 'ginesti', 'ginesti1979@gmail.com', 632547812, 'Sabadell'),
(32, 'Lorena', 'Fernandez', 'lorena@gmail.com', 654123098, 'London'),
(33, 'Unai', 'Valls', 'unai@gmail.com', 632541877, 'Sabadell');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calendario`
--
ALTER TABLE `calendario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mapa`
--
ALTER TABLE `mapa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calendario`
--
ALTER TABLE `calendario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `mapa`
--
ALTER TABLE `mapa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
