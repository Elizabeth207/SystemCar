-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2025 a las 00:33:56
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
-- Base de datos: `alquiler_vehiculos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquileres`
--

CREATE TABLE `alquileres` (
  `id` int(11) NOT NULL,
  `id_vehiculo` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alquileres`
--

INSERT INTO `alquileres` (`id`, `id_vehiculo`, `id_cliente`, `id_empleado`, `fecha_inicio`, `fecha_fin`, `total`, `estado`, `created_at`) VALUES
(1, 1, 1, 2, '2025-10-10', '2025-10-15', 750.00, 'finalizado', '2025-10-25 20:56:52'),
(2, 2, 2, 3, '2025-10-01', '2025-11-02', 440.00, 'finalizado', '2025-10-25 20:56:52'),
(3, 3, 3, 4, '2025-10-16', '2025-10-16', 1250.00, 'finalizado', '2025-10-25 20:56:52'),
(4, 4, 4, 5, '2025-10-01', '2025-10-03', 240.00, 'cancelado', '2025-10-25 20:56:52'),
(5, 5, 5, 1, '2025-10-22', '2025-10-25', 1050.00, 'activo', '2025-10-25 20:56:52'),
(6, 6, 6, 6, '2025-09-10', '2025-09-12', 190.00, 'finalizado', '2025-10-26 02:05:00'),
(7, 7, 7, 7, '2025-08-01', '2025-08-05', 560.00, 'finalizado', '2025-10-26 02:05:00'),
(8, 8, 8, 8, '2025-07-15', '2025-07-18', 750.00, 'finalizado', '2025-10-26 02:05:00'),
(9, 9, 9, 9, '2025-10-01', '2025-10-03', 340.00, 'cancelado', '2025-10-26 02:05:00'),
(10, 10, 10, 10, '2025-09-20', '2025-09-22', 520.00, 'finalizado', '2025-10-26 02:05:00'),
(11, 11, 11, 11, '2025-08-10', '2025-08-12', 220.00, 'finalizado', '2025-10-26 02:05:00'),
(12, 12, 12, 12, '2025-07-01', '2025-07-10', 810.00, 'finalizado', '2025-10-26 02:05:00'),
(13, 13, 13, 13, '2025-06-05', '2025-06-08', 630.00, 'finalizado', '2025-10-26 02:05:00'),
(14, 14, 14, 14, '2025-05-12', '2025-05-14', 160.00, 'finalizado', '2025-10-26 02:05:00'),
(15, 15, 15, 15, '2025-04-20', '2025-04-25', 1500.00, 'finalizado', '2025-10-26 02:05:00'),
(16, 16, 16, 16, '2025-03-01', '2025-03-03', 150.00, 'finalizado', '2025-10-26 02:05:00'),
(17, 17, 17, 17, '2025-02-10', '2025-02-11', 280.00, 'finalizado', '2025-10-26 02:05:00'),
(18, 18, 18, 18, '2025-01-05', '2025-01-08', 840.00, 'finalizado', '2025-10-26 02:05:00'),
(19, 19, 19, 19, '2025-10-05', '2025-10-10', 2000.00, 'activo', '2025-10-26 02:05:00'),
(20, 20, 20, 20, '2025-09-11', '2025-09-13', 700.00, 'finalizado', '2025-10-26 02:05:00'),
(21, 21, 21, 21, '2025-08-22', '2025-08-24', 720.00, 'finalizado', '2025-10-26 02:05:00'),
(22, 22, 22, 22, '2025-07-30', '2025-08-02', 540.00, 'finalizado', '2025-10-26 02:05:00'),
(23, 23, 23, 23, '2025-06-12', '2025-06-15', 360.00, 'finalizado', '2025-10-26 02:05:00'),
(24, 24, 24, 24, '2025-05-01', '2025-05-04', 870.00, 'finalizado', '2025-10-26 02:05:00'),
(25, 25, 25, 25, '2025-04-10', '2025-04-12', 140.00, 'finalizado', '2025-10-26 02:05:00'),
(26, 26, 26, 26, '2025-03-14', '2025-03-17', 255.00, 'finalizado', '2025-10-26 02:05:00'),
(27, 27, 27, 27, '2025-02-20', '2025-02-25', 1050.00, 'finalizado', '2025-10-26 02:05:00'),
(28, 28, 28, 28, '2025-01-10', '2025-01-12', 320.00, 'finalizado', '2025-10-26 02:05:00'),
(29, NULL, 29, 29, '2025-10-15', '2025-10-20', 1150.00, 'activo', '2025-10-26 02:05:00'),
(30, NULL, 30, 30, '2025-09-05', '2025-09-09', 1320.00, 'finalizado', '2025-10-26 02:05:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `created_at`) VALUES
(1, 'Toyota', 'Vehículos de 4 puertas, cómodos para ciudad', '2025-10-25 20:56:52'),
(2, 'SUV', 'Vehículos deportivos utilitariosss', '2025-10-25 20:56:52'),
(3, 'Pickup', 'Vehículos de carga con cabinos', '2025-10-25 20:56:52'),
(4, 'Hatchback', 'Vehículos compactos de 6 puertas', '2025-10-25 20:56:52'),
(5, 'Sedán Compacto', 'Vehículos económicos y ágiles', '2025-10-26 02:00:00'),
(6, 'Deportivo', 'Autos deportivos y potentes', '2025-10-26 02:00:00'),
(7, 'Familiar', 'Vehículos familiares de 7 plazas', '2025-10-26 02:00:00'),
(8, 'Compacto', 'Vehículos pequeños para ciudad', '2025-10-26 02:00:00'),
(9, 'Lujo', 'Vehículos de gama alta GAMA', '2025-10-26 02:00:00'),
(10, 'Eléctrico', 'Vehículos eléctricos', '2025-10-26 02:00:00'),
(11, 'Híbrido', 'Vehículos híbridos', '2025-10-26 02:00:00'),
(12, 'Camioneta', 'Vehículos tipo camioneta', '2025-10-26 02:00:00'),
(13, 'Van', 'Transporte de pasajeros', '2025-10-26 02:00:00'),
(14, 'Crossover', 'Crossover urbano', '2025-10-26 02:00:00'),
(15, 'Mini', 'Microcoches', '2025-10-26 02:00:00'),
(16, 'Pick-up mediana', 'Pick-up para trabajo ligero', '2025-10-26 02:00:00'),
(17, 'Pick-up grande', 'Pick-up para carga pesada', '2025-10-26 02:00:00'),
(18, 'Convertible', 'Autos descapotables', '2025-10-26 02:00:00'),
(19, 'Sport Utility', 'SUV Premium', '2025-10-26 02:00:00'),
(20, 'Todo Terreno', 'Off-road', '2025-10-26 02:00:00'),
(21, 'Camion', 'Vehículos de carga', '2025-10-26 02:00:00'),
(22, 'Furgón', 'Carga ligera', '2025-10-26 02:00:00'),
(23, 'Executive', 'Ejecutivo', '2025-10-26 02:00:00'),
(24, 'City', 'Urbanos económicos', '2025-10-26 02:00:00'),
(25, 'Coupé', 'Deportivos de 2 puertas', '2025-10-26 02:00:00'),
(26, 'Roadster', 'Deportivos ligeros', '2025-10-26 02:00:00'),
(27, 'Electrico compacto', 'Eléctrico urbano', '2025-10-26 02:00:00'),
(28, 'Híbrido SUV', 'SUV híbrido', '2025-10-26 02:00:00'),
(29, 'Premium SUV', 'SUV de lujo', '2025-10-26 02:00:00'),
(30, 'Work', 'Vehículos para trabajo', '2025-10-26 02:00:00'),
(32, 'Toyota', 'con  4 ventanas', '2025-10-28 20:08:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `correo` varchar(120) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `dni`, `telefono`, `direccion`, `correo`, `created_at`) VALUES
(1, 'Juan Pérez', '74563218', '987654322', 'Av. Lima 122', 'juanperez@gmail.com', '2025-10-25 20:56:52'),
(2, 'María López', '87456329', '956874321', 'Jr. Arequipa 457', 'marialopez@gmail.com', '2025-10-25 20:56:52'),
(3, 'Carlos Ramos', '74521896', '998745635', 'Av. Tacna 784', 'carlosr@gmail.com', '2025-10-25 20:56:52'),
(4, 'Laura Fernández', '87451236', '912345678', 'Calle Los Olivos 321', 'laurafer@gmail.com', '2025-10-25 20:56:52'),
(5, 'Pedro Gómez', '74596321', '987123456', 'Jr. Puno 654', 'pedrogomez@gmail.com', '2025-10-25 20:56:52'),
(6, 'elizabeth', '10000006', '950000006', 'Calle 6 #600', 'cliente6@example.com', '2025-10-26 02:01:00'),
(7, 'Cliente 7', '10000007', '950000007', 'Calle 7 #700', 'cliente7@example.com', '2025-10-26 02:01:00'),
(8, 'Cliente 8', '10000008', '950000008', 'Calle 8 #800', 'cliente8@example.com', '2025-10-26 02:01:00'),
(9, 'Cliente 9', '10000009', '950000009', 'Calle 9 #900', 'cliente9@example.com', '2025-10-26 02:01:00'),
(10, 'Cliente 10', '10000010', '950000010', 'Calle 10 #1000', 'cliente10@example.com', '2025-10-26 02:01:00'),
(11, 'Cliente 11', '10000011', '950000011', 'Av. 11 #1100', 'cliente11@example.com', '2025-10-26 02:01:00'),
(12, 'Cliente 12', '10000012', '950000012', 'Av. 12 #1200', 'cliente12@example.com', '2025-10-26 02:01:00'),
(13, 'Cliente 13', '10000013', '950000013', 'Av. 13 #1300', 'cliente13@example.com', '2025-10-26 02:01:00'),
(14, 'Cliente 14', '10000014', '950000014', 'Av. 14 #1400', 'cliente14@example.com', '2025-10-26 02:01:00'),
(15, 'Cliente 15', '10000015', '950000015', 'Av. 15 #1500', 'cliente15@example.com', '2025-10-26 02:01:00'),
(16, 'Cliente 16', '10000016', '950000016', 'Jr. 16 #1600', 'cliente16@example.com', '2025-10-26 02:01:00'),
(17, 'Cliente 17', '10000017', '950000017', 'Jr. 17 #1700', 'cliente17@example.com', '2025-10-26 02:01:00'),
(18, 'Cliente 18', '10000018', '950000018', 'Jr. 18 #1800', 'cliente18@example.com', '2025-10-26 02:01:00'),
(19, 'Cliente 19', '10000019', '950000019', 'Jr. 19 #1900', 'cliente19@example.com', '2025-10-26 02:01:00'),
(20, 'Cliente 20', '10000020', '950000020', 'Jr. 20 #2000', 'cliente20@example.com', '2025-10-26 02:01:00'),
(21, 'Cliente 21', '10000021', '950000021', 'Plaza 21 #2100', 'cliente21@example.com', '2025-10-26 02:01:00'),
(22, 'Cliente 22', '10000022', '950000022', 'Plaza 22 #2200', 'cliente22@example.com', '2025-10-26 02:01:00'),
(23, 'Cliente 23', '10000023', '950000023', 'Plaza 23 #2300', 'cliente23@example.com', '2025-10-26 02:01:00'),
(24, 'Cliente 24', '10000024', '950000024', 'Zona 24 #2400', 'cliente24@example.com', '2025-10-26 02:01:00'),
(25, 'Cliente 25', '10000025', '950000025', 'Zona 25 #2500', 'cliente25@example.com', '2025-10-26 02:01:00'),
(26, 'Cliente 26', '10000026', '950000026', 'Sector 26 #2600', 'cliente26@example.com', '2025-10-26 02:01:00'),
(27, 'Cliente 27', '10000020', '950000027', 'Sector 27 #2700', 'cliente27@example.com', '2025-10-26 02:01:00'),
(28, 'Cliente 28', '10000028', '950000028', 'Sector 28 #2800', 'cliente28@example.com', '2025-10-26 02:01:00'),
(29, 'Cliente 29', '10000029', '950000029', 'Sector 29 #2900', 'cliente29@example.com', '2025-10-26 02:01:00'),
(30, 'Cliente 30', '10000030', '950000030', 'Sector 30 #3000', 'cliente30@example.com', '2025-10-26 02:01:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `cargo` varchar(80) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `correo` varchar(120) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `cargo`, `telefono`, `correo`, `created_at`) VALUES
(1, 'Ana Torres', 'Gerente', '9876541113', 'ana.torres@empresa.com', '2025-10-25 20:56:52'),
(2, 'Luis García', 'Vendedor', '987654222', 'luis.garcia@empresa.com', '2025-10-25 20:56:52'),
(3, 'Marta Díaz', 'Asistente', '987654333', 'marta.diaz@empresa.com', '2025-10-25 20:56:52'),
(4, 'José Ramos', 'Mecánico', '987654444', 'jose.ramos@empresa.com', '2025-10-25 20:56:52'),
(5, 'Lucía Vega', 'Supervisora', '987654555', 'lucia.vega@empresa.com', '2025-10-25 20:56:52'),
(6, 'Empleado 6', 'Atención', '987650006', 'empleado6@empresa.com', '2025-10-26 02:02:00'),
(7, 'Empleado 7', 'Atención', '987650007', 'empleado7@empresa.com', '2025-10-26 02:02:00'),
(8, 'Empleado 8', 'Mecánico', '987650008', 'empleado8@empresa.com', '2025-10-26 02:02:00'),
(9, 'Empleado 9', 'Vendedor', '987650009', 'empleado9@empresa.com', '2025-10-26 02:02:00'),
(10, 'Empleado 10', 'Supervisor', '987650010', 'empleado10@empresa.com', '2025-10-26 02:02:00'),
(11, 'Empleado 11', 'Auxiliar', '987650011', 'empleado11@empresa.com', '2025-10-26 02:02:00'),
(12, 'Empleado 12', 'Auxiliar', '987650012', 'empleado12@empresa.com', '2025-10-26 02:02:00'),
(13, 'Empleado 13', 'Mecánico', '987650013', 'empleado13@empresa.com', '2025-10-26 02:02:00'),
(14, 'Empleado 14', 'Limpieza', '987650014', 'empleado14@empresa.com', '2025-10-26 02:02:00'),
(15, 'Empleado 15', 'Atención', '987650015', 'empleado15@empresa.com', '2025-10-26 02:02:00'),
(16, 'Empleado 16', 'Vendedor', '987650016', 'empleado16@empresa.com', '2025-10-26 02:02:00'),
(17, 'Empleado 17', 'Mecánico', '987650017', 'empleado17@empresa.com', '2025-10-26 02:02:00'),
(18, 'Empleado 18', 'Supervisor', '987650018', 'empleado18@empresa.com', '2025-10-26 02:02:00'),
(19, 'Empleado 19', 'Atención', '987650019', 'empleado19@empresa.com', '2025-10-26 02:02:00'),
(20, 'Empleado 20', 'Auxiliar', '987650020', 'empleado20@empresa.com', '2025-10-26 02:02:00'),
(21, 'Empleado 21', 'Vendedor', '987650021', 'empleado21@empresa.com', '2025-10-26 02:02:00'),
(22, 'Empleado 22', 'Mecánico', '987650022', 'empleado22@empresa.com', '2025-10-26 02:02:00'),
(23, 'Empleado 23', 'Atención', '987650023', 'empleado23@empresa.com', '2025-10-26 02:02:00'),
(24, 'Empleado 24', 'Limpieza', '987650024', 'empleado24@empresa.com', '2025-10-26 02:02:00'),
(25, 'Empleado 25', 'Supervisor', '987650025', 'empleado25@empresa.com', '2025-10-26 02:02:00'),
(26, 'Empleado 26', 'Auxiliar', '987650026', 'empleado26@empresa.com', '2025-10-26 02:02:00'),
(27, 'Empleado 27', 'Atención', '987650027', 'empleado27@empresa.com', '2025-10-26 02:02:00'),
(28, 'Empleado 28', 'Vendedor', '987650028', 'empleado28@empresa.com', '2025-10-26 02:02:00'),
(29, 'Empleado 29', 'Mecánico', '987650029', 'empleado29@empresa.com', '2025-10-26 02:02:00'),
(30, 'Empleado 30', 'Encargado', '987650030', 'empleado30@empresa.com', '2025-10-26 02:02:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimientos`
--

CREATE TABLE `mantenimientos` (
  `id` int(11) NOT NULL,
  `id_vehiculo` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(300) DEFAULT NULL,
  `costo` decimal(10,2) DEFAULT NULL,
  `estado` varchar(50) DEFAULT 'pendiente',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mantenimientos`
--

INSERT INTO `mantenimientos` (`id`, `id_vehiculo`, `fecha`, `descripcion`, `costo`, `estado`, `created_at`) VALUES
(1, 4, '0000-00-00', 'Cambio de aceite y filtros', 222.01, 'completado', '2025-10-25 20:56:52'),
(2, 4, '2025-10-22', 'Revisión de frenos', 90.00, 'completado', '2025-10-25 20:56:52'),
(3, 1, '2025-08-20', 'Cambio de llantas', 400.00, 'completado', '2025-10-25 20:56:52'),
(4, 2, '0000-00-00', 'Mantenimiento general', 301.00, 'pendiente', '2025-10-25 20:56:52'),
(5, 3, NULL, 'Revisión eléctrica', 150.00, 'completado', '2025-10-25 20:56:52'),
(6, 6, '2025-09-01', 'Cambio de filtro', 45.00, 'completado', '2025-10-26 02:04:00'),
(7, 7, '2025-08-15', 'Revisión batería', 120.00, 'completado', '2025-10-26 02:04:00'),
(8, 8, '2025-07-20', 'Frenos delanteros', 300.00, 'completado', '2025-10-26 02:04:00'),
(9, 9, '2025-06-10', 'Alineación', 60.00, 'completado', '2025-10-26 02:04:00'),
(10, 10, '2025-10-05', 'Cambio de aceite', 80.00, 'pendiente', '2025-10-26 02:04:00'),
(11, 11, '2025-05-18', 'Suspensión', 200.00, 'completado', '2025-10-26 02:04:00'),
(12, 12, '2025-04-12', 'Revisión general', 150.00, 'completado', '2025-10-26 02:04:00'),
(13, 13, '2025-03-22', 'Cambio de pastillas', 130.00, 'completado', '2025-10-26 02:04:00'),
(14, 14, '2025-02-14', 'Cambio de aceite', 55.00, 'completado', '2025-10-26 02:04:00'),
(15, 15, '2025-01-10', 'Revisión caja automática', 400.00, 'pendiente', '2025-10-26 02:04:00'),
(16, 16, '2025-09-30', 'Neumáticos nuevos', 480.00, 'completado', '2025-10-26 02:04:00'),
(17, 17, '2025-08-08', 'Revisión motor', 350.00, 'completado', '2025-10-26 02:04:00'),
(18, 18, '2025-07-01', 'Ajuste frenos', 95.00, 'completado', '2025-10-26 02:04:00'),
(19, 19, '2025-06-20', 'Pulido y encerado', 60.00, 'completado', '2025-10-26 02:04:00'),
(20, 20, '2025-05-02', 'Cambio filtros aire', 50.00, 'completado', '2025-10-26 02:04:00'),
(21, 21, '2025-04-25', 'Revisión transmisión', 300.00, 'pendiente', '2025-10-26 02:04:00'),
(22, 22, '2025-03-30', 'Ajuste dirección', 110.00, 'completado', '2025-10-26 02:04:00'),
(23, 23, '2025-02-20', 'Limpieza interior', 40.00, 'completado', '2025-10-26 02:04:00'),
(24, 24, '2025-01-15', 'Cambio amortiguadores', 250.00, 'completado', '2025-10-26 02:04:00'),
(25, 25, '2025-10-10', 'Revisión eléctrica', 140.00, 'completado', '2025-10-26 02:04:00'),
(26, 16, '0000-00-00', 'Mantenimiento rápido', 85.00, 'completado', '2025-10-26 02:04:00'),
(27, 27, '2025-08-03', 'Revisión frenos traseros', 95.00, 'completado', '2025-10-26 02:04:00'),
(28, 28, '2025-07-07', 'Actualización software', 60.00, 'completado', '2025-10-26 02:04:00'),
(31, 5, '2025-10-31', 'Cambio de aceite y filtros', 230.00, 'pendiente', '2025-10-31 22:54:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `id_alquiler` int(11) DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `metodo_pago` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `id_alquiler`, `fecha_pago`, `monto`, `metodo_pago`, `created_at`) VALUES
(3, 3, '2025-09-10', 1350.00, 'efectivo', '2025-10-25 20:56:52'),
(4, 4, '0000-00-00', 240.00, 'Efectiva', '2025-10-25 20:56:52'),
(5, 5, '2025-10-23', 1050.00, 'Tarjeta', '2025-10-25 20:56:52'),
(6, 3, '2025-10-08', 350.00, 'tarjeta', '2025-10-25 23:21:04'),
(7, 4, '2025-10-08', 2049.00, 'efectivo', '2025-10-25 23:21:39'),
(8, 1, '2025-10-29', 23.00, 'tarjeta', '2025-10-25 23:22:27'),
(9, 6, '2025-09-12', 190.00, 'Tarjeta', '2025-10-26 02:06:00'),
(10, 7, '2025-08-05', 560.00, 'Transferencia', '2025-10-26 02:06:00'),
(11, 8, '2025-07-18', 750.00, 'Efectivo', '2025-10-26 02:06:00'),
(12, 9, '2025-10-02', 340.00, 'Tarjeta', '2025-10-26 02:06:00'),
(13, 10, '2025-09-22', 520.00, 'Transferencia', '2025-10-26 02:06:00'),
(14, 11, '2025-08-12', 220.00, 'Efectivo', '2025-10-26 02:06:00'),
(15, 12, '2025-07-10', 810.00, 'Tarjeta', '2025-10-26 02:06:00'),
(16, 13, '2025-06-08', 630.00, 'Transferencia', '2025-10-26 02:06:00'),
(17, 14, '2025-05-14', 160.00, 'Efectivo', '2025-10-26 02:06:00'),
(18, 15, '2025-04-25', 1500.00, 'Tarjeta', '2025-10-26 02:06:00'),
(19, 16, '2025-03-03', 150.00, 'Transferencia', '2025-10-26 02:06:00'),
(20, 17, '2025-02-11', 280.00, 'Tarjeta', '2025-10-26 02:06:00'),
(21, 18, '2025-01-08', 840.00, 'Transferencia', '2025-10-26 02:06:00'),
(22, 19, '2025-10-10', 2000.00, 'Tarjeta', '2025-10-26 02:06:00'),
(23, 20, '2025-09-13', 700.00, 'Efectivo', '2025-10-26 02:06:00'),
(24, 21, '2025-08-24', 720.00, 'Tarjeta', '2025-10-26 02:06:00'),
(25, 22, '2025-08-02', 540.00, 'Transferencia', '2025-10-26 02:06:00'),
(26, 23, '2025-06-15', 360.00, 'Tarjeta', '2025-10-26 02:06:00'),
(27, 24, '2025-05-04', 870.00, 'Transferencia', '2025-10-26 02:06:00'),
(28, 25, '2025-04-12', 140.00, 'Efectivo', '2025-10-26 02:06:00'),
(29, 26, '2025-03-17', 255.00, 'Tarjeta', '2025-10-26 02:06:00'),
(30, 27, '2025-02-25', 1050.00, 'Transferencia', '2025-10-26 02:06:00'),
(31, 28, '2025-01-12', 320.00, 'Tarjeta', '2025-10-26 02:06:00'),
(32, 29, '2025-10-20', 1150.00, 'Efectivo', '2025-10-26 02:06:00'),
(33, 1, '0000-00-00', 2000.00, '', '2025-10-31 20:23:05'),
(34, 3, '2025-11-01', 23.01, 'efectivo', '2025-10-31 22:57:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` enum('admin','usuario') DEFAULT 'usuario',
  `estado` enum('activo','inactivo') DEFAULT 'activo',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `rol`, `estado`, `created_at`) VALUES
(1, 'Administrador', 'admin@sistema.com', '$2b$10$xZtZqnrKSxB9xaQ0WB5pouFvEVq8e7BpVHU92N.WM.J3HJHHvp1tG', 'admin', 'activo', '2025-10-25 20:56:52'),
(2, 'pepe', 'pepe@gmail.com', '$2b$10$p5oOCTNFqJbtFR7RGDWsY.pXZ89OFL.EDQSzcjtcjkT5.ztSF.eRC', 'usuario', 'activo', '2025-10-25 20:57:37'),
(3, 'admin', 'admin@gmail', '$2b$10$Jga.Id4gKIsC.2jLyzJzpObObBEd5Nq8ec.NlvCPGhiEJt5oEP2DO', 'usuario', 'activo', '2025-10-26 00:07:19'),
(4, 'user4', 'user4@example.com', '$2y$10$examplehash4', 'usuario', 'activo', '2025-10-26 02:07:00'),
(5, 'user5', 'user5@example.com', '$2y$10$examplehash5', 'usuario', 'activo', '2025-10-26 02:07:00'),
(6, 'user6', 'user6@example.com', '$2y$10$examplehash6', 'usuario', 'activo', '2025-10-26 02:07:00'),
(7, 'user7', 'user7@example.com', '$2y$10$examplehash7', 'usuario', 'activo', '2025-10-26 02:07:00'),
(8, 'user8', 'user8@example.com', '$2y$10$examplehash8', 'usuario', 'activo', '2025-10-26 02:07:00'),
(9, 'user9', 'user9@example.com', '$2y$10$examplehash9', 'usuario', 'activo', '2025-10-26 02:07:00'),
(10, 'user10', 'user10@example.com', '$2y$10$examplehash10', 'usuario', 'activo', '2025-10-26 02:07:00'),
(11, 'user11', 'user11@example.com', '$2y$10$examplehash11', 'usuario', 'activo', '2025-10-26 02:07:00'),
(12, 'user12', 'user12@example.com', '$2y$10$examplehash12', 'usuario', 'activo', '2025-10-26 02:07:00'),
(13, 'user13', 'user13@example.com', '$2y$10$examplehash13', 'usuario', 'activo', '2025-10-26 02:07:00'),
(14, 'user14', 'user14@example.com', '$2y$10$examplehash14', 'usuario', 'activo', '2025-10-26 02:07:00'),
(15, 'user15', 'user15@example.com', '$2y$10$examplehash15', 'usuario', 'activo', '2025-10-26 02:07:00'),
(16, 'user16', 'user16@example.com', '$2y$10$examplehash16', 'usuario', 'activo', '2025-10-26 02:07:00'),
(17, 'user17', 'user17@example.com', '$2y$10$examplehash17', 'usuario', 'activo', '2025-10-26 02:07:00'),
(18, 'user18', 'user18@example.com', '$2y$10$examplehash18', 'usuario', 'activo', '2025-10-26 02:07:00'),
(19, 'user19', 'user19@example.com', '$2y$10$examplehash19', 'usuario', 'activo', '2025-10-26 02:07:00'),
(20, 'user20', 'user20@example.com', '$2y$10$examplehash20', 'usuario', 'activo', '2025-10-26 02:07:00'),
(21, 'user21', 'user21@example.com', '$2y$10$examplehash21', 'usuario', 'activo', '2025-10-26 02:07:00'),
(22, 'user22', 'user22@example.com', '$2y$10$examplehash22', 'usuario', 'activo', '2025-10-26 02:07:00'),
(23, 'user23', 'user23@example.com', '$2y$10$examplehash23', 'usuario', 'activo', '2025-10-26 02:07:00'),
(24, 'user24', 'user24@example.com', '$2y$10$examplehash24', 'usuario', 'activo', '2025-10-26 02:07:00'),
(25, 'user25', 'user25@example.com', '$2y$10$examplehash25', 'usuario', 'activo', '2025-10-26 02:07:00'),
(26, 'user26', 'user26@example.com', '$2y$10$examplehash26', 'usuario', 'activo', '2025-10-26 02:07:00'),
(27, 'user27', 'user27@example.com', '$2y$10$examplehash27', 'usuario', 'activo', '2025-10-26 02:07:00'),
(28, 'user28', 'user28@example.com', '$2y$10$examplehash28', 'usuario', 'activo', '2025-10-26 02:07:00'),
(29, 'user29', 'user29@example.com', '$2y$10$examplehash29', 'usuario', 'activo', '2025-10-26 02:07:00'),
(30, 'user30', 'user30@example.com', '$2y$10$examplehash30', 'usuario', 'activo', '2025-10-26 02:07:00'),
(31, 'Elizabeth', 'huarcayacontreraselizabeth@gmail.com', '$2b$10$t6hHZkugsV9z9FRF.H8JoeoKd3O0.AFjmraBw8jigMsb4WRvjKZBm', 'usuario', 'activo', '2025-10-27 04:00:25'),
(32, 'carlos', 'carlos@gmail.com', '$2b$10$JdBzOAqrniYoabN9AysS7eBM5C3zKuQGlSwgFpX46IBfnd1HGU3Mq', 'usuario', 'activo', '2025-10-28 19:51:53'),
(33, 'lisa', 'lisa@gmail.com', '$2b$10$gIkVvZmR9LBsmJfUw6AUPOcqU47Tx6NIoz1lTP7dlQm.wQ.idoS3y', 'usuario', 'activo', '2025-10-31 19:34:33'),
(34, 'DSH', 'david@gmail.com', '$2b$10$/W1wqSIppjJJ506P7p.n4OzBYJuKKthXBwNJq6.KA59metXtCeYx.', 'usuario', 'activo', '2025-10-31 20:55:38'),
(35, 'admin', 'admin123@gmail.com', '$2b$10$2zpLVhLHGiZXnhN63kaCb.1J7QxWy81SLqrXsiUghLDQyVQuIw4GW', 'usuario', 'activo', '2025-10-31 23:31:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `precio_dia` decimal(10,2) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `id_categoria`, `marca`, `modelo`, `anio`, `tipo`, `precio_dia`, `estado`, `created_at`) VALUES
(1, 1, 'Toyota', 'Corolla', 2022, 'Sedan', 123.00, 'disponible', '2025-10-25 20:56:52'),
(2, 2, 'Hyundai', 'Tucson', 2021, 'SUV', 220.00, 'alquilado', '2025-10-25 20:56:52'),
(3, 3, 'Ford', 'Ranger', 2020, 'Pickup', 250.00, 'disponible', '2025-10-25 20:56:52'),
(4, 4, 'Chevrolet', 'Spark GT', 2019, 'Hatchback', 120.00, 'mantenimiento', '2025-10-25 20:56:52'),
(5, NULL, 'Mazda', 'MX-5', 2023, 'Deportivo', 350.00, 'disponible', '2025-10-25 20:56:52'),
(6, 5, 'Kia', 'Rio', 2018, 'Sedán', 95.00, 'disponible', '2025-10-26 02:03:00'),
(7, 6, 'Nissan', 'Leaf', 2021, 'Eléctrico', 140.00, 'disponible', '2025-10-26 02:03:00'),
(8, 7, 'BMW', 'X5', 2020, 'SUV', 320.00, 'alquilado', '2025-10-26 02:03:00'),
(9, 8, 'Mercedes', 'A200', 2019, 'Hatchback', 170.00, 'disponible', '2025-10-26 02:03:00'),
(10, 9, 'Audi', 'A4', 2022, 'Sedán', 260.00, 'mantenimiento', '2025-10-26 02:03:00'),
(11, 10, 'Volkswagen', 'Golf', 2017, 'Hatchback', 110.00, 'disponible', '2025-10-26 02:03:00'),
(12, 11, 'Renault', 'Clio', 2016, 'Compacto', 90.00, 'disponible', '2025-10-26 02:03:00'),
(13, 12, 'Honda', 'CR-V', 2019, 'SUV', 210.00, 'alquilado', '2025-10-26 02:03:00'),
(14, 13, 'Suzuki', 'Carry', 2015, 'Van', 80.00, 'disponible', '2025-10-26 02:03:00'),
(15, 14, 'Jeep', 'Wrangler', 2021, 'Todo Terreno', 300.00, 'disponible', '2025-10-26 02:03:00'),
(16, 15, 'Mazda', '2', 2014, 'Mini', 75.00, 'disponible', '2025-10-26 02:03:00'),
(17, 16, 'Ford', 'Ranger XL', 2020, 'Pickup', 200.00, 'mantenimiento', '2025-10-26 02:03:00'),
(18, 17, 'Chevrolet', 'Silverado', 2018, 'Pickup', 280.00, 'disponible', '2025-10-26 02:03:00'),
(19, 18, 'Porsche', '911', 2022, 'Deportivo', 400.00, 'disponible', '2025-10-26 02:03:00'),
(20, 19, 'Land Rover', 'Discovery', 2021, 'SUV', 350.00, 'alquilado', '2025-10-26 02:03:00'),
(21, 20, 'Toyota', 'Hilux', 2019, 'Todo Terreno', 240.00, 'disponible', '2025-10-26 02:03:00'),
(22, 21, 'Iveco', 'Daily', 2016, 'Camion', 180.00, 'disponible', '2025-10-26 02:03:00'),
(23, 22, 'Fiat', 'Ducato', 2015, 'Furgón', 120.00, 'disponible', '2025-10-26 02:03:00'),
(24, 23, 'Lexus', 'ES', 2020, 'Executive', 290.00, 'disponible', '2025-10-26 02:03:00'),
(25, 24, 'Smart', 'ForTwo', 2018, 'City', 70.00, 'disponible', '2025-10-26 02:03:00'),
(26, 25, 'Honda', 'Civic Coupe', 2017, 'Coupé', 150.00, 'disponible', '2025-10-26 02:03:00'),
(27, 26, 'Mazda', 'MX-3', 2019, 'Roadster', 210.00, 'disponible', '2025-10-26 02:03:00'),
(28, 27, 'Nissan', 'Leaf S', 2023, 'Eléctrico', 160.00, 'disponible', '2025-10-26 02:03:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquileres`
--
ALTER TABLE `alquileres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_vehiculo` (`id_vehiculo`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_empleado` (`id_empleado`),
  ADD KEY `idx_alquileres_estado` (`estado`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_vehiculo` (`id_vehiculo`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_alquiler` (`id_alquiler`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_usuarios_email` (`email`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `idx_vehiculos_estado` (`estado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alquileres`
--
ALTER TABLE `alquileres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquileres`
--
ALTER TABLE `alquileres`
  ADD CONSTRAINT `alquileres_ibfk_1` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `alquileres_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `alquileres_ibfk_3` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  ADD CONSTRAINT `mantenimientos_ibfk_1` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`id_alquiler`) REFERENCES `alquileres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `vehiculos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
