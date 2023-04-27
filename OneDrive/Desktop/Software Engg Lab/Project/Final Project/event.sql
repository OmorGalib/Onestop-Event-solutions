-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2023 at 07:50 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_last_date` int(11) NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_form_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `date`, `name`, `image`, `reg_last_date`, `location`, `fee`, `google_form_link`, `created_by`, `is_visible`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1684282140, 'Event 1', NULL, 1683036660, 'Dhaka', '{\"Registration Fee\":-1500,\"Food\":500}', NULL, 1, 1, '2023-04-27 11:08:48', '2023-04-27 11:24:58', NULL),
(2, 1685189520, 'Event 2', NULL, 1683893640, 'as', '{\"FEE\":-1000,\"Food\":500}', NULL, 1, 1, '2023-04-27 12:11:46', '2023-04-27 17:07:35', NULL),
(3, 1683375120, 'Event 2', NULL, 1683029640, 'as', '{\"FEE\":-1000,\"Food\":500}', NULL, 1, 1, '2023-04-27 12:11:58', '2023-04-27 12:11:58', NULL),
(4, 1686399120, 'Event 2', NULL, 1686312840, 'as', '{\"FEE\":-1000,\"Food\":500}', NULL, 1, 1, '2023-04-27 12:12:32', '2023-04-27 16:41:11', NULL),
(5, 1683375360, 'Event 3', NULL, 1683126780, 'aasdasd', '{\"Fee\":-122}', NULL, 1, 1, '2023-04-27 12:13:33', '2023-04-27 16:42:30', NULL),
(6, 1682770560, 'Event 3', NULL, 1682694780, 'aasdasd', NULL, NULL, 1, 1, '2023-04-27 12:13:52', '2023-04-27 13:05:55', NULL),
(7, 1685426400, 'Mega Event', NULL, 1684997940, 'UIU Playground', NULL, NULL, 1, 1, '2023-04-27 16:53:06', '2023-04-27 16:58:42', NULL),
(10, 1683177660, 'UIU Club Forum Fest', NULL, 1683091320, 'UIU Playground', NULL, NULL, 1, 1, '2023-04-27 17:24:44', '2023-04-27 17:27:09', NULL),
(11, 1684949700, 'UIU Project Show', NULL, 1684607700, 'UIU Auditorium', '{\"Registration Fee\":-1500,\"food\":150}', NULL, 1, 1, '2023-04-27 17:37:48', '2023-04-27 17:37:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `logistics`
--

CREATE TABLE `logistics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logistics`
--

INSERT INTO `logistics` (`id`, `event_id`, `item`, `quantity`, `created_at`, `updated_at`) VALUES
(14, 6, 'Chair', 122, '2023-04-27 16:04:41', '2023-04-27 16:04:41'),
(15, 6, 'Table', 25, '2023-04-27 16:04:41', '2023-04-27 16:04:41'),
(16, 6, 'Men', 14, '2023-04-27 16:04:41', '2023-04-27 16:04:41'),
(19, 5, 'Chair', 15, '2023-04-27 16:42:30', '2023-04-27 16:42:30'),
(20, 5, 'LOL', 2, '2023-04-27 16:42:30', '2023-04-27 16:42:30'),
(27, 7, 'Chair', 15, '2023-04-27 16:58:43', '2023-04-27 16:58:43'),
(28, 7, 'Table', 5, '2023-04-27 16:58:43', '2023-04-27 16:58:43'),
(29, 7, 'Manpower', 10, '2023-04-27 16:58:43', '2023-04-27 16:58:43'),
(32, 10, '0', 0, '2023-04-27 17:27:09', '2023-04-27 17:27:09'),
(33, 11, 'Manpower', 10, '2023-04-27 17:37:48', '2023-04-27 17:37:48'),
(34, 11, 'Walkietakie', 10, '2023-04-27 17:37:48', '2023-04-27 17:37:48');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_otp_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_09_25_084649_create_events_table', 1),
(7, '2022_09_25_091547_create_participants_table', 1),
(8, '2022_09_25_092809_create_payment_methods_table', 1),
(9, '2022_09_25_104029_create_payments_table', 1),
(10, '2022_09_25_111158_create_permission_tables', 1),
(11, '2022_10_15_173626_add_registered_at_registered_by_to_participants_table', 1),
(12, '2023_04_27_172544_create_logistics_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` smallint(5) UNSIGNED DEFAULT NULL,
  `count` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`phone`, `email`, `code`, `count`, `updated_at`) VALUES
('01768002727', NULL, 5556, 8, '2023-04-27 17:33:13'),
('8@gmail.com', NULL, 8004, 1, '2023-04-27 16:34:32'),
('01768001457', NULL, 2470, 1, '2023-04-27 16:43:00'),
('01930845204', NULL, 8915, 1, '2023-04-27 17:08:13'),
('01734243154', NULL, 5169, 2, '2023-04-27 17:30:20'),
('01950845204', NULL, 6955, 1, '2023-04-27 17:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `verified_by` bigint(20) UNSIGNED DEFAULT NULL,
  `selected_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payable_amount` double(7,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `user_id`, `event_id`, `status`, `verified_at`, `verified_by`, `selected_fee`, `payable_amount`, `created_at`, `updated_at`) VALUES
(1, 4, 6, 0, NULL, NULL, '[]', 0.00, '2023-04-27 16:40:37', '2023-04-27 16:40:37'),
(2, 8, 7, 0, NULL, NULL, '[]', 0.00, '2023-04-27 17:01:03', '2023-04-27 17:01:03'),
(3, 9, 2, 0, NULL, NULL, '[\"FEE\",\"Food\"]', 1500.00, '2023-04-27 17:09:11', '2023-04-27 17:09:18'),
(4, 10, 10, 0, '2023-04-27 17:34:21', 1, '[]', 0.00, '2023-04-27 17:32:10', '2023-04-27 17:34:21'),
(5, 4, 10, 0, '2023-04-27 17:34:31', 1, '[]', 0.00, '2023-04-27 17:33:53', '2023-04-27 17:34:31'),
(6, 11, 11, 0, NULL, NULL, '[\"Registration Fee\",\"food\"]', 1650.00, '2023-04-27 17:40:22', '2023-04-27 17:40:22');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `participant_id` bigint(20) UNSIGNED NOT NULL,
  `varified_by` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_by` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Fee Paid from A/C no.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_method_id`, `event_id`, `participant_id`, `varified_by`, `amount`, `transaction_id`, `paid_by`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 3, NULL, '1500', '615165', '017645213', NULL, 0, '2023-04-27 17:09:27', '2023-04-27 17:09:27'),
(2, 1, 11, 6, 1, '1650', 'ASDASD23513ASDA', '01768002727', NULL, 1, '2023-04-27 17:41:14', '2023-04-27 17:42:19');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `account_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=personal, 2=merchant',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=active, 0=Inactive',
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nb` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_percentage` double(4,2) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'web', '2023-04-27 10:17:14', '2023-04-27 10:17:14'),
(2, 'admin', 'web', '2023-04-27 10:17:14', '2023-04-27 10:17:14'),
(3, 'user', 'web', '2023-04-27 10:17:14', '2023-04-27 10:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(3) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `emergency_name`, `emergency_phone`, `pass`, `password`, `gender`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', '01777777771', 'super@gmail.com', NULL, NULL, '123', '$2y$10$.Xru2/vAQHup7rWnEp8LQ.1.r9Bn5IzeI/TYIxQxWqVfXks0fon0m', 1, NULL, '2023-04-27 10:17:14', '2023-04-27 10:17:14', NULL),
(2, 'Admin', '01777777772', 'admin@gmail.com', NULL, NULL, '123', '$2y$10$N9N/HJU/CIgZVuqTq4qlheDs9nX2ah7KS0kPv4Rd9Zt367Cszgqee', 1, '7qqxpJeENL3aVcyq8cKus5N2zxTL4539qRIgE71y8yDIB29U5NDwMpandhbN', '2023-04-27 10:17:14', '2023-04-27 10:17:14', NULL),
(3, 'User', '01777777773', 'user@gmail.com', NULL, NULL, '123', '$2y$10$KI4oVLjZRIguy8O5Aa1kZ.jCPX7T.n3zjFUt.YtPHJnAEZfu9HFly', 1, NULL, '2023-04-27 10:17:14', '2023-04-27 10:17:14', NULL),
(4, 'Yeamin Rabbi Bin Akram', '01768002727', 'yeaminrabbi@gmail.com', 'Nargis', '01911296928', NULL, NULL, 1, NULL, '2023-04-27 16:40:37', '2023-04-27 17:33:53', NULL),
(8, 'Yeamin Rabbi Bin Akram', '+8801768002727', 'yeaminrabbis308@gmail.com', 'Nargis', '01911296928', NULL, NULL, 1, NULL, '2023-04-27 17:01:03', '2023-04-27 17:01:03', NULL),
(9, 'Yeamin Rabbi', '01930845204', 'jibna@gmail.com', 'Masum', '0147663213215', NULL, NULL, 1, NULL, '2023-04-27 17:09:11', '2023-04-27 17:09:11', NULL),
(10, 'Towhid', '01734243154', 'tislam173011@bscse.uiu.ac.bd', 'Alamin', '014758445211', NULL, NULL, 1, NULL, '2023-04-27 17:32:10', '2023-04-27 17:32:10', NULL),
(11, 'Rabbi', '01950845204', 'yeamin208@gmail.com', 'Towhid', '01455221147', NULL, NULL, 1, NULL, '2023-04-27 17:40:22', '2023-04-27 17:40:22', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `logistics`
--
ALTER TABLE `logistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD KEY `otp_phone_index` (`phone`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logistics`
--
ALTER TABLE `logistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
