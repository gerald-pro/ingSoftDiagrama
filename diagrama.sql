-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2024 a las 20:50:47
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `diagrama`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagrams`
--

CREATE TABLE `diagrams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favorite` smallint(6) NOT NULL DEFAULT 0,
  `finished` smallint(6) NOT NULL DEFAULT 0,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `diagrams`
--

INSERT INTO `diagrams` (`id`, `name`, `description`, `content`, `favorite`, `finished`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 'Secuencia de Prueba', 'Diagrama de Secuencia de Prueba', '{ \"class\": \"GraphLinksModel\",\n  \"linkKeyProperty\": \"key\",\n  \"linkFromPortIdProperty\": \"fromPort\",\n  \"linkToPortIdProperty\": \"toPort\",\n  \"nodeDataArray\": [\n{\"category\":\"actor\",\"key\":\"actor\",\"text\":\"Usuario del Metro\",\"isGroup\":true,\"duration\":10,\"loc\":\"-1430 129.935\"},\n{\"category\":\"object\",\"key\":\"object\",\"text\":\":Venta de Tickets\",\"isGroup\":true,\"duration\":10,\"loc\":\"-1250 129.935\"},\n{\"category\":\"object\",\"key\":\"object2\",\"text\":\":Ticket\",\"isGroup\":true,\"duration\":10,\"loc\":\"-1040 129.935\"},\n{\"group\":\"object\",\"start\":9.5,\"duration\":1,\"key\":-4},\n{\"group\":\"object\",\"start\":12.25,\"duration\":1,\"key\":-5},\n{\"group\":\"object2\",\"start\":13.25,\"duration\":1,\"key\":-6},\n{\"group\":\"object\",\"start\":15.75,\"duration\":1,\"key\":-7}\n],\n  \"linkDataArray\": [\n{\"from\":\"actor\",\"to\":\"object\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-1,\"time\":9,\"text\":\"1: pagarDinero\",\"synchronous\":\"yes\",\"isReturn\":false},\n{\"from\":\"actor\",\"to\":\"object\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-2,\"time\":11.75,\"text\":\"2: escogerTipo\",\"synchronous\":\"yes\",\"isReturn\":false},\n{\"from\":\"object\",\"to\":\"object2\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-3,\"time\":12.75,\"text\":\"3: creaTicket\",\"synchronous\":\"yes\",\"isReturn\":false},\n{\"from\":\"actor\",\"to\":\"object\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-4,\"time\":15.25,\"text\":\"4: tomarTicket\",\"synchronous\":\"yes\",\"isReturn\":false}\n]}', 0, 0, 1, '2024-04-12 02:56:40', '2024-04-13 02:48:56'),
(2, 'ejemplo 2', 'nuevo diagrama', '{ \"class\": \"GraphLinksModel\",\n  \"linkKeyProperty\": \"key\",\n  \"linkFromPortIdProperty\": \"fromPort\",\n  \"linkToPortIdProperty\": \"toPort\",\n  \"nodeDataArray\": [\n{\"category\":\"actor\",\"key\":\"actor\",\"text\":\"Usuario\",\"isGroup\":true,\"duration\":10,\"loc\":\"-92 129.935\"},\n{\"category\":\"object\",\"key\":\"object\",\"text\":\"App de Musica\",\"isGroup\":true,\"duration\":10,\"loc\":\"109 129.935\"},\n{\"category\":\"object\",\"key\":\"object2\",\"text\":\"Servidor de la App\",\"isGroup\":true,\"duration\":10,\"loc\":\"348 129.935\"},\n{\"group\":\"actor\",\"start\":21.5,\"duration\":1,\"key\":-4},\n{\"group\":\"object\",\"start\":24,\"duration\":1,\"key\":-5},\n{\"group\":\"object\",\"start\":10.75,\"duration\":1,\"key\":-7},\n{\"group\":\"object2\",\"start\":11.5,\"duration\":0.5,\"key\":-8},\n{\"group\":\"object\",\"start\":20.5,\"duration\":1,\"key\":-9},\n{\"group\":\"actor\",\"start\":8.5,\"duration\":0.5,\"key\":-10},\n{\"group\":\"object\",\"start\":18,\"duration\":1,\"key\":-11},\n{\"group\":\"object2\",\"start\":19,\"duration\":1.5,\"key\":-12},\n{\"group\":\"object\",\"start\":27.25,\"duration\":1,\"key\":-13},\n{\"group\":\"object\",\"start\":29.75,\"duration\":1,\"key\":-14},\n{\"group\":\"object\",\"start\":33.5,\"duration\":1,\"key\":-15},\n{\"group\":\"object\",\"start\":33.5,\"duration\":1,\"key\":-16},\n{\"group\":\"actor\",\"start\":15.75,\"duration\":0.5,\"key\":-17},\n{\"group\":\"actor\",\"start\":25,\"duration\":1,\"key\":-18},\n{\"group\":\"actor\",\"start\":30.75,\"duration\":1,\"key\":-19},\n{\"group\":\"object\",\"start\":15,\"duration\":1,\"key\":-20},\n{\"group\":\"object2\",\"start\":28.25,\"duration\":1,\"key\":-21}\n],\n  \"linkDataArray\": [\n{\"from\":\"object\",\"to\":\"actor\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-1,\"time\":8,\"text\":\"1: Solicitar cuenta\",\"synchronous\":\"yes\",\"isReturn\":true},\n{\"from\":\"actor\",\"to\":\"object\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-4,\"time\":10.25,\"text\":\"2: Env\\u00edo de cuenta\",\"synchronous\":\"no\",\"isReturn\":false},\n{\"from\":\"object\",\"to\":\"object2\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-3,\"time\":11,\"text\":\"3: Validar si cuenta existe\",\"synchronous\":\"no\",\"isReturn\":false},\n{\"from\":\"object2\",\"to\":\"object\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-5,\"time\":14.5,\"text\":\"4: Cuenta existe\",\"synchronous\":\"no\",\"isReturn\":true},\n{\"from\":\"object\",\"to\":\"actor\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-6,\"time\":15.25,\"text\":\"5: Solicitar contrase\\u00f1a\",\"synchronous\":\"no\",\"isReturn\":true},\n{\"from\":\"actor\",\"to\":\"object\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-7,\"time\":17.5,\"text\":\"6: Env\\u00edo de contrase\\u00f1a\",\"synchronous\":\"no\",\"isReturn\":false},\n{\"from\":\"object\",\"to\":\"object2\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-8,\"time\":18.5,\"text\":\"7: Verificar Contrase\\u00f1a\",\"synchronous\":\"no\",\"isReturn\":false},\n{\"from\":\"object2\",\"to\":\"object\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-9,\"time\":20,\"text\":\"8: Todo ok\",\"synchronous\":\"no\",\"isReturn\":true},\n{\"from\":\"object2\",\"to\":\"object\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-10,\"time\":23.5,\"text\":\"10: Error\",\"synchronous\":\"no\",\"isReturn\":true},\n{\"from\":\"object2\",\"to\":\"object\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-11,\"time\":33.75,\"text\":\"msg\",\"synchronous\":\"no\",\"isReturn\":true},\n{\"from\":\"object2\",\"to\":\"object\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-12,\"time\":29.25,\"text\":\"14: Cuenta lista\",\"synchronous\":\"yes\",\"isReturn\":true},\n{\"from\":\"object\",\"to\":\"actor\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-13,\"time\":21,\"text\":\"9: Habilitar acceso\",\"synchronous\":\"yes\",\"isReturn\":true},\n{\"from\":\"object\",\"to\":\"actor\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-14,\"time\":24.5,\"text\":\"11: Crear cuenta\",\"synchronous\":\"yes\",\"isReturn\":true},\n{\"from\":\"object\",\"to\":\"actor\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-15,\"time\":30.25,\"text\":\"15: Ingresar cuenta\",\"synchronous\":\"yes\",\"isReturn\":true},\n{\"from\":\"actor\",\"to\":\"object\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-16,\"time\":27,\"text\":\"12: Env\\u00edo de datos\",\"synchronous\":\"no\",\"isReturn\":false},\n{\"from\":\"object\",\"to\":\"object2\",\"fromPort\":\"\",\"toPort\":\"\",\"key\":-17,\"time\":27.75,\"text\":\"13: Cuenta creada\",\"synchronous\":\"no\",\"isReturn\":false}\n]}', 0, 0, 2, '2024-04-13 00:57:41', '2024-04-13 02:25:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagram_collaborations`
--

CREATE TABLE `diagram_collaborations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `edit` smallint(6) NOT NULL DEFAULT 1,
  `diagram_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitations`
--

CREATE TABLE `invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `invitations`
--

INSERT INTO `invitations` (`id`, `status`, `project_id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 1, 1, 2, '2024-04-23 18:42:22', '2024-04-23 18:43:05'),
(7, 0, 2, 3, '2024-04-23 18:49:11', '2024-04-23 18:49:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_18_035524_create_projects_table', 2),
(6, '2022_11_18_041508_create_invitations_table', 2),
(7, '2022_11_18_054003_create_project_collaborations_table', 2),
(8, '2022_11_18_073824_create_diagrams_table', 2),
(9, '2022_11_19_212153_create_diagram_collaborations_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `favorite` smallint(6) NOT NULL DEFAULT 0,
  `finished` smallint(6) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`id`, `url`, `name`, `description`, `date_end`, `favorite`, `finished`, `user_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Ejemplo de Prueba', 'Primera prueba', '2024-05-03', 0, 0, 1, '2024-04-12 02:55:22', '2024-04-23 18:37:55'),
(2, NULL, 'Prueba 2', 'Diagrama ejemplo 2', '2024-05-10', 0, 0, 1, '2024-04-12 23:22:55', '2024-04-23 18:38:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_collaborations`
--

CREATE TABLE `project_collaborations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `project_collaborations`
--

INSERT INTO `project_collaborations` (`id`, `project_id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Laura Delgadillo', 'laura.xdm@gmail.com', NULL, '$2y$10$Lb5/HtZjuQ1b5wpwd2t9V.Rxpbd3kraOp8Us7ErjQtOJmUaKfkAM6', '8bH9aHjL7qAfZMa0svXa0RZ0p2jh9TiuM5iwCADhAH6hiDvfiGG0m6Klo0E8', '2024-04-12 02:53:33', '2024-04-12 02:53:33'),
(2, 'Alisson Garnica', 'alisson.gdelg@gmail.com', NULL, '$2y$10$Sd81nDml5OV3L219BbkH2uM9lA6u47h8.2nxo8hWPgLgsfR7MvOFW', 'IDN0duKr6hTpjGprVwBLThPdSLkeCeVluQoU42t7Hl3ypERVhqYT9sr8BrE1', '2024-04-12 21:40:27', '2024-04-12 21:40:27'),
(3, 'Daniela Garnica', 'daniela.gdelg@gmail.com', NULL, '$2y$10$ziNyRfIdzE97qkSzFjb0QOeW9I7FOCdJPdeC.YZLH4hiFLvN.xlye', NULL, '2024-04-21 01:22:42', '2024-04-21 01:22:42');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `diagrams`
--
ALTER TABLE `diagrams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diagrams_project_id_foreign` (`project_id`);

--
-- Indices de la tabla `diagram_collaborations`
--
ALTER TABLE `diagram_collaborations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diagram_collaborations_diagram_id_foreign` (`diagram_id`),
  ADD KEY `diagram_collaborations_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invitations_project_id_foreign` (`project_id`),
  ADD KEY `invitations_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `project_collaborations`
--
ALTER TABLE `project_collaborations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_collaborations_project_id_foreign` (`project_id`),
  ADD KEY `project_collaborations_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `diagrams`
--
ALTER TABLE `diagrams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `diagram_collaborations`
--
ALTER TABLE `diagram_collaborations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `invitations`
--
ALTER TABLE `invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `project_collaborations`
--
ALTER TABLE `project_collaborations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `diagrams`
--
ALTER TABLE `diagrams`
  ADD CONSTRAINT `diagrams_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `diagram_collaborations`
--
ALTER TABLE `diagram_collaborations`
  ADD CONSTRAINT `diagram_collaborations_diagram_id_foreign` FOREIGN KEY (`diagram_id`) REFERENCES `diagrams` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `diagram_collaborations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `invitations`
--
ALTER TABLE `invitations`
  ADD CONSTRAINT `invitations_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invitations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `project_collaborations`
--
ALTER TABLE `project_collaborations`
  ADD CONSTRAINT `project_collaborations_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_collaborations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
