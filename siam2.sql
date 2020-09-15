-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 18, 2020 at 02:51 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siam2`
--

-- --------------------------------------------------------

--
-- Table structure for table `mantenimiento`
--

CREATE TABLE `mantenimiento` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `vehiculo_id` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `prioridad` enum('alta','media','baja') COLLATE utf8mb4_spanish_ci NOT NULL,
  `notificación` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `mantenimiento`
--

INSERT INTO `mantenimiento` (`id`, `usuario_id`, `vehiculo_id`, `prioridad`, `notificación`, `created_at`, `updated_at`) VALUES
(1, 1, 'TZ101', 'baja', '2020-05-16', NULL, NULL),
(10, 1, 'TZ102', 'media', '2020-08-07', '2020-08-07 11:28:36', '2020-08-07 11:28:36'),
(11, 1, 'TZ101', 'alta', '2020-08-07', '2020-08-07 11:28:49', '2020-08-07 11:28:49'),
(12, 1, 'TZ104', 'media', '2020-08-07', '2020-08-07 11:29:22', '2020-08-07 11:29:22'),
(13, 1, 'TZ101', 'alta', '2020-08-07', '2020-08-07 11:30:09', '2020-08-07 11:30:09'),
(14, 2, 'TZ101', 'alta', '2020-08-07', '2020-08-08 03:44:19', '2020-08-08 03:44:19'),
(15, 2, 'TZ111', 'baja', '2020-08-07', '2020-08-08 03:55:27', '2020-08-08 03:55:27'),
(16, 2, 'TZ111', 'baja', '2020-08-07', '2020-08-08 03:56:30', '2020-08-08 03:56:30'),
(17, 2, 'TZ101', 'alta', '2020-08-07', '2020-08-08 03:56:37', '2020-08-08 03:56:37'),
(18, 2, 'TZ109', 'baja', '2020-08-07', '2020-08-08 03:57:27', '2020-08-08 03:57:27'),
(19, 2, 'TZ118', 'media', '2020-08-07', '2020-08-08 03:59:32', '2020-08-08 03:59:32'),
(20, 2, 'TZ101', 'alta', '2020-08-08', '2020-08-08 05:16:56', '2020-08-08 05:16:56'),
(21, 2, 'TZ101', 'alta', '2020-08-08', '2020-08-08 05:18:26', '2020-08-08 05:18:26'),
(22, 2, 'TZ101', 'alta', '2020-08-08', '2020-08-08 05:18:38', '2020-08-08 05:18:38'),
(23, 2, 'TZ101', 'alta', '2020-08-08', '2020-08-08 05:19:39', '2020-08-08 05:19:39'),
(24, 2, 'TZ101', 'alta', '2020-08-08', '2020-08-08 05:33:26', '2020-08-08 05:33:26'),
(25, 2, 'TZ101', 'alta', '2020-08-08', '2020-08-08 05:34:20', '2020-08-08 05:34:20'),
(26, 2, 'TZ101', 'alta', '2020-08-08', '2020-08-08 05:37:22', '2020-08-08 05:37:22'),
(27, 2, 'TZ101', 'alta', '2020-08-08', '2020-08-08 05:38:45', '2020-08-08 05:38:45'),
(28, 2, 'TZ104', 'alta', '2020-08-08', '2020-08-08 05:53:04', '2020-08-08 05:53:04'),
(29, 2, 'TZ101', 'baja', '2020-08-08', '2020-08-08 05:54:15', '2020-08-08 05:54:15'),
(30, 2, 'TZ101', 'alta', '2020-08-08', '2020-08-08 05:55:37', '2020-08-08 05:55:37'),
(31, 1, 'TZ101', 'media', '2020-08-08', '2020-08-09 00:18:17', '2020-08-09 00:18:17'),
(32, 1, 'TZ112', 'media', '2020-08-08', '2020-08-09 00:44:54', '2020-08-09 00:44:54'),
(33, 1, 'TZ101', 'alta', '2020-08-08', '2020-08-09 00:47:23', '2020-08-09 00:47:23'),
(34, 1, 'TZ101', 'alta', '2020-08-08', '2020-08-09 02:18:55', '2020-08-09 02:18:55'),
(35, 1, 'TZ102', 'media', '2020-08-09', '2020-08-10 03:58:26', '2020-08-10 03:58:26'),
(36, 1, 'TZ101', 'alta', '2020-08-17', '2020-08-17 09:05:00', '2020-08-17 09:05:00'),
(37, 1, 'TZ101', 'alta', '2020-08-17', '2020-08-17 09:05:00', '2020-08-17 09:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `icono` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu_id`, `nombre`, `url`, `orden`, `icono`, `created_at`, `updated_at`) VALUES
(1, 0, 'usuarios', '#', 1, NULL, '2020-07-06 04:41:01', '2020-08-18 07:45:04'),
(2, 16, 'mantenimiento', 'Mantenimiento', 2, NULL, '2020-08-18 04:33:00', '2020-08-18 07:45:04'),
(3, 4, 'menú rol', 'admin/menu-rol', 2, NULL, '2020-08-18 04:39:34', '2020-08-18 07:45:04'),
(4, 0, 'opciones menú', '#', 3, NULL, '2020-08-18 04:40:48', '2020-08-18 07:45:04'),
(5, 4, 'menú crear', 'admin/menu/crear', 3, NULL, '2020-08-18 04:45:42', '2020-08-18 07:45:04'),
(6, 16, 'vehiculos', 'vehiculo', 1, NULL, '2020-08-18 04:49:18', '2020-08-18 07:45:04'),
(7, 4, 'menú', 'admin/menu', 1, NULL, '2020-08-18 04:54:21', '2020-08-18 07:45:04'),
(8, 1, 'lista usuarios', 'admin/usuario', 1, NULL, '2020-08-18 04:58:14', '2020-08-18 07:45:04'),
(9, 1, 'crear usuario', 'admin/usuario/crear', 2, NULL, '2020-08-18 07:03:18', '2020-08-18 07:45:04'),
(10, 1, 'editar usuario', 'admin/usuario/editar', 3, NULL, '2020-08-18 07:04:10', '2020-08-18 07:45:04'),
(11, 4, 'menú editar', 'admin/menu/editar', 4, NULL, '2020-08-18 07:17:01', '2020-08-18 07:45:04'),
(12, 15, 'roles', 'admin/rol', 1, NULL, '2020-08-18 07:19:47', '2020-08-18 07:45:04'),
(13, 15, 'crear rol', 'admin/rol/crear', 2, NULL, '2020-08-18 07:20:42', '2020-08-18 07:45:04'),
(14, 15, 'editar rol', 'admin/rol/editar', 3, NULL, '2020-08-18 07:20:56', '2020-08-18 07:45:04'),
(15, 0, 'opciones rol', '#', 2, NULL, '2020-08-18 07:21:39', '2020-08-18 07:45:04'),
(16, 0, 'taller vehiculos', '#', 4, NULL, '2020-08-18 07:30:12', '2020-08-18 07:45:04'),
(17, 16, 'vehículo notificación', '#', 3, NULL, '2020-08-18 07:43:01', '2020-08-18 07:47:34'),
(18, 17, 'notificación', 'Mantenimiento/store', 1, NULL, '2020-08-18 07:44:29', '2020-08-18 07:45:04');

-- --------------------------------------------------------

--
-- Table structure for table `menu_rol`
--

CREATE TABLE `menu_rol` (
  `rol_id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `menu_rol`
--

INSERT INTO `menu_rol` (`rol_id`, `menu_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 12),
(1, 15),
(1, 13),
(1, 16),
(1, 17),
(1, 18);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(191, '2014_10_12_100000_create_password_resets_table', 1),
(192, '2020_04_11_231626_crear_tabla_usuario', 1),
(193, '2020_04_11_232205_crear_tabla_rol', 1),
(194, '2020_04_11_232453_crear_tabla_permiso', 1),
(195, '2020_04_11_232606_crear_tabla_usuario_rol', 1),
(196, '2020_04_11_232900_crear_tabla_permiso_rol', 1),
(197, '2020_04_12_194444_crear_tabla_menu', 1),
(198, '2020_04_12_195904_crear_tabla_menu_rol', 1),
(199, '2020_04_29_013638_crear_tabla__vehiculo', 1),
(200, '2020_04_29_013858_crear_tabla_reporte', 1),
(201, '2020_04_29_013942_crear_tabla_mantenimiento', 1),
(202, '2020_08_07_214413_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('044447a1-a5f5-46a0-91f5-12f36e5b3244', 'App\\Notifications\\MantenimientoNotification', 'App\\Models\\Seguridad\\Usuario', 2, '{\"usuario_id\":1,\"vehiculo_id\":\"TZ102\",\"prioridad\":\"media\",\"notificaci\\u00f3n\":\"2020-08-09\",\"updated_at\":\"2020-08-09T22:58:26.000000Z\",\"created_at\":\"2020-08-09T22:58:26.000000Z\",\"id\":35}', '2020-08-17 08:09:25', '2020-08-10 03:58:28', '2020-08-17 08:09:25'),
('248a66ea-29ae-4bc8-87a2-66d187dcff9c', 'App\\Notifications\\MantenimientoNotification', 'App\\Models\\Seguridad\\Usuario', 2, '{\"usuario_id\":1,\"vehiculo_id\":\"TZ101\",\"prioridad\":\"alta\",\"notificaci\\u00f3n\":\"2020-08-08\",\"updated_at\":\"2020-08-08T21:18:55.000000Z\",\"created_at\":\"2020-08-08T21:18:55.000000Z\",\"id\":34}', '2020-08-17 08:09:25', '2020-08-09 02:18:55', '2020-08-17 08:09:25'),
('3186d9cb-aa7f-4346-972b-8be42a1581c0', 'App\\Notifications\\MantenimientoNotification', 'App\\Models\\Seguridad\\Usuario', 2, '{\"usuario_id\":1,\"vehiculo_id\":\"TZ101\",\"prioridad\":\"alta\",\"notificaci\\u00f3n\":\"2020-08-17\",\"updated_at\":\"2020-08-17T04:05:00.000000Z\",\"created_at\":\"2020-08-17T04:05:00.000000Z\",\"id\":36}', '2020-08-17 09:06:15', '2020-08-17 09:05:00', '2020-08-17 09:06:15'),
('4f312dd1-f348-4a1e-820b-9fc0e117692c', 'App\\Notifications\\MantenimientoNotification', 'App\\Models\\Seguridad\\Usuario', 2, '{\"usuario_id\":1,\"vehiculo_id\":\"TZ101\",\"prioridad\":\"alta\",\"notificaci\\u00f3n\":\"2020-08-08\",\"updated_at\":\"2020-08-08T19:47:23.000000Z\",\"created_at\":\"2020-08-08T19:47:23.000000Z\",\"id\":33}', '2020-08-17 08:09:25', '2020-08-09 00:47:23', '2020-08-17 08:09:25'),
('7372aa42-6fb0-4176-8530-f1fc1275e5b9', 'App\\Notifications\\MantenimientoNotification', 'App\\Models\\Seguridad\\Usuario', 3, '{\"usuario_id\":1,\"vehiculo_id\":\"TZ101\",\"prioridad\":\"alta\",\"notificaci\\u00f3n\":\"2020-08-17\",\"updated_at\":\"2020-08-17T04:05:00.000000Z\",\"created_at\":\"2020-08-17T04:05:00.000000Z\",\"id\":36}', NULL, '2020-08-17 09:05:00', '2020-08-17 09:05:00'),
('7b3cbb7f-48dc-4473-8340-bafeded79cb1', 'App\\Notifications\\MantenimientoNotification', 'App\\Models\\Seguridad\\Usuario', 3, '{\"usuario_id\":1,\"vehiculo_id\":\"TZ101\",\"prioridad\":\"alta\",\"notificaci\\u00f3n\":\"2020-08-17\",\"updated_at\":\"2020-08-17T04:05:00.000000Z\",\"created_at\":\"2020-08-17T04:05:00.000000Z\",\"id\":37}', NULL, '2020-08-17 09:05:01', '2020-08-17 09:05:01'),
('a6208d92-e10d-4724-89ec-0f881d9dbc8a', 'App\\Notifications\\MantenimientoNotification', 'App\\Models\\Seguridad\\Usuario', 2, '{\"usuario_id\":1,\"vehiculo_id\":\"TZ101\",\"prioridad\":\"alta\",\"notificaci\\u00f3n\":\"2020-08-17\",\"updated_at\":\"2020-08-17T04:05:00.000000Z\",\"created_at\":\"2020-08-17T04:05:00.000000Z\",\"id\":37}', '2020-08-17 09:06:15', '2020-08-17 09:05:00', '2020-08-17 09:06:15'),
('db94967e-16c2-4c7c-ad9b-3b820abc9abe', 'App\\Notifications\\MantenimientoNotification', 'App\\Models\\Seguridad\\Usuario', 3, '{\"usuario_id\":1,\"vehiculo_id\":\"TZ102\",\"prioridad\":\"media\",\"notificaci\\u00f3n\":\"2020-08-09\",\"updated_at\":\"2020-08-09T22:58:26.000000Z\",\"created_at\":\"2020-08-09T22:58:26.000000Z\",\"id\":35}', NULL, '2020-08-10 03:58:28', '2020-08-10 03:58:28'),
('ddea0ef1-8f20-45b9-8132-036fb6dea172', 'App\\Notifications\\MantenimientoNotification', 'App\\Models\\Seguridad\\Usuario', 3, '{\"usuario_id\":1,\"vehiculo_id\":\"TZ101\",\"prioridad\":\"alta\",\"notificaci\\u00f3n\":\"2020-08-08\",\"updated_at\":\"2020-08-08T21:18:55.000000Z\",\"created_at\":\"2020-08-08T21:18:55.000000Z\",\"id\":34}', NULL, '2020-08-09 02:18:55', '2020-08-09 02:18:55'),
('f2d37c08-83bf-4c74-a64d-39f75cd63e78', 'App\\Notifications\\MantenimientoNotification', 'App\\Models\\Seguridad\\Usuario', 3, '{\"usuario_id\":1,\"vehiculo_id\":\"TZ101\",\"prioridad\":\"alta\",\"notificaci\\u00f3n\":\"2020-08-08\",\"updated_at\":\"2020-08-08T19:47:23.000000Z\",\"created_at\":\"2020-08-08T19:47:23.000000Z\",\"id\":33}', NULL, '2020-08-09 00:47:23', '2020-08-09 00:47:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permiso`
--

CREATE TABLE `permiso` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permiso_rol`
--

CREATE TABLE `permiso_rol` (
  `rol_id` int(10) UNSIGNED NOT NULL,
  `permiso_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reporte`
--

CREATE TABLE `reporte` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehiculo_id` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `novedad` longtext COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

CREATE TABLE `rol` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'administrador', '2020-05-01 00:48:48', '2020-05-01 00:48:48'),
(2, 'supervisor', '2020-05-01 00:48:48', '2020-05-01 00:48:48'),
(3, 'cliente', '2020-05-01 00:48:48', '2020-05-01 00:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int(10) UNSIGNED NOT NULL,
  `cedula` int(11) NOT NULL,
  `usuario` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `primer_nombre` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `segundo_nombre` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `primer_apellido` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `segundo_apellido` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `edad` int(11) NOT NULL,
  `sexo` enum('hombre','mujer') COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `cedula`, `usuario`, `password`, `primer_nombre`, `segundo_nombre`, `primer_apellido`, `segundo_apellido`, `edad`, `sexo`, `email`, `created_at`, `updated_at`) VALUES
(1, 1075308463, 'carlos.9722', '$2y$10$dg6GmlzkVn6v8qbWCoIC9.BQ4v.KPsxgwbyepZARSKCpjJxdkngnK', 'carlos', 'enrique', 'peña', 'perez', 22, 'hombre', 'carlos.9722@outlook.com', NULL, NULL),
(2, 85890668, 'ramires33', '$2y$10$EJeYlgD0QFTNUntlJs.pwe2qSVpe.oYy15idjPHIx6rr.8AxWZbv6', 'carlos', 'mauricio', 'ramirez', NULL, 33, 'hombre', 'mauro@gmail.com', '2020-05-01 19:25:50', '2020-05-01 19:25:50'),
(3, 1075305592, 'Alexandra 20', '$2y$10$af4VHsX7ZyTpfkWUn.zgFOLtJJU04YWRfnRWQ8lTmxJpgiejM2/.y', 'mónica', 'alexandra', 'Sanabria', 'Sánchez', 26, 'mujer', 'Alexandra@gmail.com', '2020-05-01 19:37:25', '2020-05-01 19:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `rol_id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `usuario_rol`
--

INSERT INTO `usuario_rol` (`rol_id`, `usuario_id`) VALUES
(1, 1),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `placa` varchar(6) COLLATE utf8mb4_spanish_ci NOT NULL,
  `marca` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `modelo` int(11) NOT NULL,
  `chasis` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `motor` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha_matricula` date NOT NULL,
  `fecha_vida_util` date DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `vehiculo`
--

INSERT INTO `vehiculo` (`id`, `placa`, `marca`, `modelo`, `chasis`, `motor`, `fecha_matricula`, `fecha_vida_util`, `foto`, `created_at`, `updated_at`) VALUES
('TZ101', 'TAZ375', 'BLUEBIRD', 2014, '1BDYNCPA2EF302752', '73527678', '2013-09-02', '2025-09-02', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ102', 'TAZ376', 'BLUEBIRD', 2014, '1BDYNCPA4EF302753', '73526716', '2013-09-02', '2025-09-02', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ120', 'TAZ500', 'BLUEBIRD', 2014, '1BDYNCPA2EF302783', '73530496', '2013-09-02', '2025-09-02', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ119', 'WCL328', 'BLUEBIRD', 2014, '1BDYNCPA4EF301599', '73518622', '2013-07-24', '2025-07-24', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ104', 'WCM809', 'BLUEBIRD', 2014, '1BDYNCPA6EF302771', '73528060', '2013-08-12', '2025-08-12', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ105', 'WCM810', 'BLUEBIRD', 2014, '1BDYNCPA8EF302772', '73529404', '2013-08-13', '2025-08-13', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ106', 'WCM811', 'BLUEBIRD', 2014, '1BDYNCPA6EF302754', '73526706', '2013-08-13', '2025-08-13', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ107', 'WCM814', 'BLUEBIRD', 2014, '1BDYNCPA5EF302762', '73528054', '2013-08-13', '2025-08-13', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ108', 'WCM818', 'BLUEBIRD', 2014, '1BDYNCPA6EF302768', '73528058', '2013-08-14', '2025-08-14', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ109', 'WCM822', 'BLUEBIRD', 2014, '1BDYNCPAXEF302773', '73529407', '2013-08-12', '2025-08-12', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ110', 'WCM827', 'BLUEBIRD', 2014, '1BDYNCPA8EF302786', '73530232', '2013-08-12', '2025-08-12', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ111', 'WCM830', 'BLUEBIRD', 2014, '1BDYNCPA7EF302780', '73528042', '2013-08-13', '2025-08-13', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ112', 'WDD950', 'BLUEBIRD', 2014, '1BDYNCPA0EF302751', '73527679', '2013-09-11', '2025-09-11', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ113', 'WEU982', 'BLUEBIRD', 2014, '1BDYNCPA6FF305896', '73591995', '2014-02-06', '2026-02-06', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ114', 'WEU983', 'BLUEBIRD', 2014, '1BDYNCPA8FF305897', '73591567', '2014-02-06', '2026-02-06', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ115', 'WEU984', 'BLUEBIRD', 2014, '1BDYNCPAXFF305898', '73591986', '2014-02-12', '2026-02-12', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ116', 'WEU985', 'BLUEBIRD', 2014, '1BDYNCPAXFF305903', '73592479', '2014-02-06', '2026-02-06', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ117', 'WEU986', 'BLUEBIRD', 2014, '1BDYNCPA1FF305904', '73592473', '2014-02-06', '2026-02-06', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33'),
('TZ118', 'WEU987', 'BLUEBIRD', 2014, '1BDYNCPA7FF305910', '73591569', '2014-02-06', '2026-02-06', NULL, '2020-05-01 00:49:33', '2020-05-01 00:49:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mantenimiento_usuario` (`usuario_id`),
  ADD KEY `fk_mantenimiento_vehiculo` (`vehiculo_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_rol`
--
ALTER TABLE `menu_rol`
  ADD KEY `fk_menurol_rol` (`rol_id`),
  ADD KEY `fk_menurol_menu` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permiso_rol`
--
ALTER TABLE `permiso_rol`
  ADD KEY `fk_permisorol_rol` (`rol_id`),
  ADD KEY `fk_permisorol_permiso` (`permiso_id`);

--
-- Indexes for table `reporte`
--
ALTER TABLE `reporte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reporte_vehiculo` (`vehiculo_id`);

--
-- Indexes for table `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rol_nombre_unique` (`nombre`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_cedula_unique` (`cedula`),
  ADD UNIQUE KEY `usuario_email_unique` (`email`);

--
-- Indexes for table `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD KEY `fk_usuariorol_rol` (`rol_id`),
  ADD KEY `fk_usuariorol_usuario` (`usuario_id`);

--
-- Indexes for table `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD UNIQUE KEY `vehiculo_placa_unique` (`placa`),
  ADD KEY `vehiculo_id_index` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mantenimiento`
--
ALTER TABLE `mantenimiento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `permiso`
--
ALTER TABLE `permiso`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reporte`
--
ALTER TABLE `reporte`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD CONSTRAINT `fk_mantenimiento_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `fk_mantenimiento_vehiculo` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculo` (`id`);

--
-- Constraints for table `menu_rol`
--
ALTER TABLE `menu_rol`
  ADD CONSTRAINT `fk_menurol_menu` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_menurol_rol` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`);

--
-- Constraints for table `permiso_rol`
--
ALTER TABLE `permiso_rol`
  ADD CONSTRAINT `fk_permisorol_permiso` FOREIGN KEY (`permiso_id`) REFERENCES `permiso` (`id`),
  ADD CONSTRAINT `fk_permisorol_rol` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`);

--
-- Constraints for table `reporte`
--
ALTER TABLE `reporte`
  ADD CONSTRAINT `fk_reporte_vehiculo` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculo` (`id`);

--
-- Constraints for table `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `fk_usuariorol_rol` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`),
  ADD CONSTRAINT `fk_usuariorol_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
