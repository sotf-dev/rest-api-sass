-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 27-02-2019 a las 18:57:00
-- Versión del servidor: 5.7.25-0ubuntu0.18.04.2
-- Versión de PHP: 7.3.1-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `homestead`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `author`
--

CREATE TABLE `author` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nacionalidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `author`
--

INSERT INTO `author` (`id`, `nombre`, `nacionalidad`, `edad`, `created_at`, `updated_at`) VALUES
('16', 'Juan Rufol', 'mexicano', '45', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('17', 'Willian Golding', 'Alemania', '50', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('18', 'Barbara Gostmich', 'Francia', '33', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('19', 'Mario Benedetti', 'USA', '47', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('20', 'Altamirano', 'mexicano', '65', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('21', 'Jose Gonzalez', 'italiano', '55', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('22', 'Ana laura Delgado', 'mexicano', '48', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('23', 'Og Mandino', 'Usa', '44', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('24', 'thomas Huxley', 'japones', '60', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('25', 'Leticia Lopez Juarez', 'Canadiense', '58', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('26', 'Osar Palacios Ceballos', 'mexicano', '45', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('27', 'Zamná Heredia', 'portugues', '62', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('28', 'maria Bernaldez ', 'mexicano', '54', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('29', 'Jhon y Rita Lang', 'italiano', '55', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('30', 'Rafael Camacho', 'chileno', '62', '2019-02-26 19:07:58', '2019-02-26 19:07:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrera` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id`, `ci`, `nombre`, `apellido`, `direccion`, `carrera`, `edad`, `created_at`, `updated_at`) VALUES
('31', '3498', 'Maria', 'crispin', 'noche triste', 'contabilidad', '17', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('32', '3498', 'Jonathan', 'Garcia Lopez', 'morelos no 7', 'alimentos', '17', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('33', '6295', 'roberto', 'Sanchez Mejia', 'flor de azalia SN', 'agrobiotecnologia', '20', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('34', '3452', 'Paola', 'Cervantes Castillo', 'Av. Zaragoza', 'contabilidad', '18', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('35', '3792', 'mayra', 'Hernandez Sanchez', 'Allende No 3', 'alimentos', '22', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('36', '6295', 'ivan', 'Trejo Aragon', 'Galeana No23', 'contabilidad', '19', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('37', '2443', 'Alexander', 'Borregero Cerero', 'Guerrero No8', 'contabilidad', '18', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('38', '3452', 'Erick', 'Diaz olalde', 'Puerta Norte No6', 'agrobiotecnologa', '18', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('39', '2443', 'luis', 'Chaltel Gaspar', 'noche triste', 'paramedicos', '19', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('40', '3452', 'Enrique', 'Aldama Leyte', 'ahuehuetes ', 'tic-si', '22', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('41', '3498', 'raul', 'Valdez Alanes', 'noche triste No9', 'administrador', '17', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('42', '1073', 'Sandra', 'Guzman Agurre', 'Hidalgo No12', 'contabilidad', '20', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('43', '3792', 'Maricruz', 'Crispin Claveria', 'Mariano Matamoros SN', 'contabilidad', '19', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('44', '1073', 'Gabriel', ' Liberato Cuacuamoxtla', 'Cuauhtemoc', 'administracion', '23', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('45', '2443', 'Marisol', 'Jimenez Jimenez', 'Los pinos No15', 'tic-si', '20', '2019-02-26 19:07:58', '2019-02-26 19:07:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editorial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `titulo`, `editorial`, `area`, `created_at`, `updated_at`) VALUES
('001', 'El Señor de las Moscas', 'Marruecos', 'Novela', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('002', 'El Esclavo', 'Porrua', 'Narracion', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('003', 'El Señor de los Anillos', 'FCE', 'Internet', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('004', 'Don Quijote de la Mancha', 'Grijalva', 'Narracion', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('005', 'visual Estudio Net', 'Alfay Omega', 'informatica', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('006', 'Base de Datos', 'Alfay Omega', 'informatica', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('007', 'Ingenieria de Software', 'Alfay Omega', 'informatica', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('008', 'Un Mexicano Mas', 'planeta', 'novela', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('009', 'Entregame tu corazon', 'Marruecos', 'Novela', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('010', 'Harry Potter', 'edicciones prado', 'Internet', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('011', 'Harry Potter:Las Reliquias de la Muerte', 'edicciones prado', 'Internet', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('012', 'Orgullo y Prejuicio', 'Marruecos', 'Novela', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('013', 'Romeo y Julienta', 'Marruecos', 'Novela', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('014', 'Navidad en las Montañas', 'Marruecos', 'Narracion', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('015', 'El Señor de los Anillos: Las Dos Torres', 'FCE', 'Internet', '2019-02-26 19:07:58', '2019-02-26 19:07:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lib_aut`
--

CREATE TABLE `lib_aut` (
  `id_author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_lib` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lib_aut`
--

INSERT INTO `lib_aut` (`id_author`, `id_lib`, `created_at`, `updated_at`) VALUES
('16', '001', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('17', '002', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('18', '003', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('19', '004', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('20', '005', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('21', '006', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('22', '007', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('23', '008', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('24', '009', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('25', '010', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('26', '011', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('27', '012', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('28', '013', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('29', '014', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('30', '015', '2019-02-26 19:07:58', '2019-02-26 19:07:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `id_est` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_lib` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_prestamo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_devuelto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `devuelto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`id_est`, `id_lib`, `date_prestamo`, `date_devuelto`, `devuelto`, `created_at`, `updated_at`) VALUES
('31', '001', '08/04/2012', '10/04/2012', '11/04/2012', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('32', '005', '08/04/2012', '10/04/2012', '10/04/2012', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('33', '006', '08/04/2012', '10/04/2012', '12/04/2012', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('34', '005', '07/05/2012', '09/05/2012', '10/05/2012', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('35', '004', '09/05/2012', '11/05/2012', '11/05/2012', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('36', '003', '25/05/2012', '28/05/2012', '28/05/2012', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('37', '001', '12/06/2012', '14/06/2012', '15/06/2012', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('38', '001', '13/06/2012', '15/06/2012', '15/06/2012', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('39', '006', '14/01/2013', '16/01/2013', '16/01/2013', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('40', '007', '16/02/2013', '18/02/2013', '18/02/2013', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('41', '008', '20/02/2013', '22/02/2013', '25/02/2013', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('42', '007', '11/03/2013', '13/03/2013', '13/03/2013', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('43', '010', '27/03/2013', '29/03/2013', '01/04/2013', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('44', '006', '08/04/2013', '10/04/2013', '10/04/2013', '2019-02-26 19:07:58', '2019-02-26 19:07:58'),
('45', '002', '08/04/2013', '10/04/2013', '10/04/2013', '2019-02-26 19:07:58', '2019-02-26 19:07:58');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `author`
--
ALTER TABLE `author`
  ADD UNIQUE KEY `author_id_unique` (`id`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD UNIQUE KEY `estudiante_id_unique` (`id`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD UNIQUE KEY `libros_id_unique` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
