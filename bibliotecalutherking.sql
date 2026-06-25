-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2026 a las 18:10:44
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bibliotecalutherking`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'Novela'),
(2, 'Tecnologia'),
(3, 'Ciencia'),
(4, 'Historia'),
(5, 'Educacion'),
(6, 'Programacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_prestamos`
--

CREATE TABLE `detalle_prestamos` (
  `id_detalle_prestamo` int(11) NOT NULL,
  `id_prestamo` int(11) NOT NULL,
  `id_libro` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_prestamos`
--

INSERT INTO `detalle_prestamos` (`id_detalle_prestamo`, `id_prestamo`, `id_libro`, `cantidad`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 1),
(3, 3, 3, 1),
(4, 4, 4, 1),
(5, 5, 5, 1),
(6, 6, 6, 1),
(7, 7, 7, 1),
(8, 8, 8, 1),
(9, 9, 9, 1),
(10, 10, 10, 1),
(11, 11, 11, 1),
(12, 12, 12, 1),
(13, 13, 13, 1),
(14, 14, 14, 1),
(15, 15, 15, 1),
(16, 16, 16, 1),
(17, 17, 17, 1),
(18, 18, 18, 1),
(19, 19, 19, 1),
(20, 20, 20, 1),
(21, 21, 21, 1),
(22, 22, 22, 1),
(23, 23, 23, 1),
(24, 24, 24, 1),
(25, 25, 25, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devoluciones`
--

CREATE TABLE `devoluciones` (
  `id_devolucion` int(11) NOT NULL,
  `id_prestamo` int(11) NOT NULL,
  `fecha_devolucion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `devoluciones`
--

INSERT INTO `devoluciones` (`id_devolucion`, `id_prestamo`, `fecha_devolucion`) VALUES
(1, 1, '2026-06-07'),
(2, 2, '2026-06-08'),
(3, 3, '2026-06-09'),
(4, 4, '2026-06-10'),
(5, 5, '2026-06-11'),
(6, 6, '2026-06-12'),
(7, 7, '2026-06-13'),
(8, 8, '2026-06-14'),
(9, 9, '2026-06-15'),
(10, 10, '2026-06-16'),
(11, 11, '2026-06-17'),
(12, 12, '2026-06-18'),
(13, 13, '2026-06-19'),
(14, 14, '2026-06-20'),
(15, 15, '2026-06-21'),
(16, 16, '2026-06-22'),
(17, 17, '2026-06-23'),
(18, 18, '2026-06-24'),
(19, 19, '2026-06-25'),
(20, 20, '2026-06-26'),
(21, 21, '2026-06-27'),
(22, 22, '2026-06-28'),
(23, 23, '2026-06-29'),
(24, 24, '2026-06-30'),
(25, 25, '2026-07-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_libro` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `autor` varchar(150) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libro`, `titulo`, `autor`, `isbn`, `id_categoria`) VALUES
(1, 'Cien Anos de Soledad', 'Gabriel Garcia Marquez', 'ISBN001', 1),
(2, 'El Principito', 'Antoine de Saint-Exupery', 'ISBN002', 1),
(3, 'Historia Universal', 'Juan Perez', 'ISBN003', 4),
(4, 'Aprendiendo Java', 'Carlos Ruiz', 'ISBN004', 6),
(5, 'Calculo Basico', 'Maria Lopez', 'ISBN005', 3),
(6, 'Fisica Moderna', 'Albert Gomez', 'ISBN006', 3),
(7, 'Quimica General', 'Ana Torres', 'ISBN007', 3),
(8, 'Biologia Celular', 'Luis Ramos', 'ISBN008', 3),
(9, 'Don Quijote', 'Miguel de Cervantes', 'ISBN009', 1),
(10, 'Arte Digital', 'Julia Vega', 'ISBN010', 2),
(11, 'Redes Informaticas', 'Pedro Diaz', 'ISBN011', 2),
(12, 'Psicologia Educativa', 'Laura Campos', 'ISBN012', 5),
(13, 'Manual de Medicina', 'Jose Flores', 'ISBN013', 3),
(14, 'Historia de Roma', 'Andres Cruz', 'ISBN014', 4),
(15, 'Economia Moderna', 'Mario Silva', 'ISBN015', 5),
(16, 'Administracion 101', 'Sofia Reyes', 'ISBN016', 5),
(17, 'Ciencia Hoy', 'Ricardo Mora', 'ISBN017', 3),
(18, 'Viaje al Espacio', 'Neil Carter', 'ISBN018', 3),
(19, 'Atlas Mundial', 'Kevin Brown', 'ISBN019', 4),
(20, 'English Basics', 'Anna White', 'ISBN020', 5),
(21, 'Introduccion Filosofica', 'Marco Linares', 'ISBN021', 5),
(22, 'Algoritmos en C++', 'Daniel Ortiz', 'ISBN022', 6),
(23, 'Entrenamiento Deportivo', 'Luis Herrera', 'ISBN023', 5),
(24, 'Base de Datos SQL', 'Kevin Torres', 'ISBN024', 6),
(25, 'Pedagogia Moderna', 'Rosa Martinez', 'ISBN025', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id_prestamo` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_prestamo` date NOT NULL,
  `fecha_limite` date NOT NULL,
  `estado` varchar(20) NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`id_prestamo`, `id_usuario`, `fecha_prestamo`, `fecha_limite`, `estado`) VALUES
(1, 1, '2026-06-01', '2026-06-08', 'activo'),
(2, 2, '2026-06-02', '2026-06-09', 'devuelto'),
(3, 3, '2026-06-03', '2026-06-10', 'activo'),
(4, 4, '2026-06-04', '2026-06-11', 'activo'),
(5, 5, '2026-06-05', '2026-06-12', 'devuelto'),
(6, 6, '2026-06-06', '2026-06-13', 'activo'),
(7, 7, '2026-06-07', '2026-06-14', 'activo'),
(8, 8, '2026-06-08', '2026-06-15', 'activo'),
(9, 9, '2026-06-09', '2026-06-16', 'devuelto'),
(10, 10, '2026-06-10', '2026-06-17', 'activo'),
(11, 11, '2026-06-11', '2026-06-18', 'activo'),
(12, 12, '2026-06-12', '2026-06-19', 'activo'),
(13, 13, '2026-06-13', '2026-06-20', 'devuelto'),
(14, 14, '2026-06-14', '2026-06-21', 'activo'),
(15, 15, '2026-06-15', '2026-06-22', 'activo'),
(16, 16, '2026-06-16', '2026-06-23', 'activo'),
(17, 17, '2026-06-17', '2026-06-24', 'devuelto'),
(18, 18, '2026-06-18', '2026-06-25', 'activo'),
(19, 19, '2026-06-19', '2026-06-26', 'activo'),
(20, 20, '2026-06-20', '2026-06-27', 'activo'),
(21, 21, '2026-06-21', '2026-06-28', 'devuelto'),
(22, 22, '2026-06-22', '2026-06-29', 'activo'),
(23, 23, '2026-06-23', '2026-06-30', 'activo'),
(24, 24, '2026-06-24', '2026-07-01', 'activo'),
(25, 25, '2026-06-25', '2026-07-02', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `correo` varchar(120) NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `correo`, `telefono`) VALUES
(1, 'Anderson Aguilar', 'user1@gmail.com', '70000001'),
(2, 'Juan Perez', 'user2@gmail.com', '70000002'),
(3, 'Maria Lopez', 'user3@gmail.com', '70000003'),
(4, 'Carlos Ruiz', 'user4@gmail.com', '70000004'),
(5, 'Ana Torres', 'user5@gmail.com', '70000005'),
(6, 'Luis Ramos', 'user6@gmail.com', '70000006'),
(7, 'Jose Flores', 'user7@gmail.com', '70000007'),
(8, 'Laura Campos', 'user8@gmail.com', '70000008'),
(9, 'Mario Silva', 'user9@gmail.com', '70000009'),
(10, 'Sofia Reyes', 'user10@gmail.com', '70000010'),
(11, 'Pedro Diaz', 'user11@gmail.com', '70000011'),
(12, 'Julia Vega', 'user12@gmail.com', '70000012'),
(13, 'Ricardo Mora', 'user13@gmail.com', '70000013'),
(14, 'Daniel Ortiz', 'user14@gmail.com', '70000014'),
(15, 'Marco Linares', 'user15@gmail.com', '70000015'),
(16, 'Kevin Brown', 'user16@gmail.com', '70000016'),
(17, 'Anna White', 'user17@gmail.com', '70000017'),
(18, 'Miguel Cruz', 'user18@gmail.com', '70000018'),
(19, 'Patricia Gomez', 'user19@gmail.com', '70000019'),
(20, 'Erick Torres', 'user20@gmail.com', '70000020'),
(21, 'Fernando Diaz', 'user21@gmail.com', '70000021'),
(22, 'Andrea Ruiz', 'user22@gmail.com', '70000022'),
(23, 'Roberto Mejia', 'user23@gmail.com', '70000023'),
(24, 'Gabriela Lara', 'user24@gmail.com', '70000024'),
(25, 'Samuel Castro', 'user25@gmail.com', '70000025');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `detalle_prestamos`
--
ALTER TABLE `detalle_prestamos`
  ADD PRIMARY KEY (`id_detalle_prestamo`),
  ADD KEY `id_prestamo` (`id_prestamo`),
  ADD KEY `id_libro` (`id_libro`);

--
-- Indices de la tabla `devoluciones`
--
ALTER TABLE `devoluciones`
  ADD PRIMARY KEY (`id_devolucion`),
  ADD KEY `id_prestamo` (`id_prestamo`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libro`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id_prestamo`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalle_prestamos`
--
ALTER TABLE `detalle_prestamos`
  MODIFY `id_detalle_prestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `devoluciones`
--
ALTER TABLE `devoluciones`
  MODIFY `id_devolucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id_prestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_prestamos`
--
ALTER TABLE `detalle_prestamos`
  ADD CONSTRAINT `detalle_prestamos_ibfk_1` FOREIGN KEY (`id_prestamo`) REFERENCES `prestamos` (`id_prestamo`),
  ADD CONSTRAINT `detalle_prestamos_ibfk_2` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`);

--
-- Filtros para la tabla `devoluciones`
--
ALTER TABLE `devoluciones`
  ADD CONSTRAINT `devoluciones_ibfk_1` FOREIGN KEY (`id_prestamo`) REFERENCES `prestamos` (`id_prestamo`);

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
