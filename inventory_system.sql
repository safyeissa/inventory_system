-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2025 at 03:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_items`
--

CREATE TABLE `inventory_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_items`
--

INSERT INTO `inventory_items` (`id`, `name`, `sku`, `created_at`, `updated_at`) VALUES
(2, 'tenetur', 'SKU-9568', '2025-08-03 10:22:12', '2025-08-03 10:22:12'),
(3, 'rerum', 'SKU-1990', '2025-08-03 10:22:12', '2025-08-03 10:22:12'),
(4, 'quibusdam', 'SKU-6907', '2025-08-03 10:22:12', '2025-08-03 10:22:12'),
(5, 'praesentium', 'SKU-5133', '2025-08-03 10:22:12', '2025-08-03 10:22:12'),
(6, 'commodi', 'SKU-9330', '2025-08-03 10:22:12', '2025-08-03 10:22:12'),
(7, 'ab', 'SKU-2025', '2025-08-03 10:22:12', '2025-08-03 10:22:12'),
(8, 'minima', 'SKU-3264', '2025-08-03 10:22:12', '2025-08-03 10:22:12'),
(9, 'quas', 'SKU-4612', '2025-08-03 10:22:12', '2025-08-03 10:22:12'),
(10, 'fugiat', 'SKU-2759', '2025-08-03 10:22:12', '2025-08-03 10:22:12'),
(11, 'ut', 'SKU-9503', '2025-08-03 10:22:13', '2025-08-03 10:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_08_01_225015_create_warehouses_table', 1),
(6, '2025_08_01_225102_create_inventory_items_table', 1),
(7, '2025_08_01_225141_create_stocks_table', 1),
(8, '2025_08_01_225155_create_stock_transfers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'api-token', '722fde47a484b9686c0e8e16104582fd1bad8436ca0ebacf170a1ab0ceb72727', '[\"*\"]', NULL, NULL, '2025-08-03 09:59:55', '2025-08-03 09:59:55'),
(2, 'App\\Models\\User', 1, 'api-token', '319586f3525719b5d18ebe064dd65eca5b291955855b594d85240c17136a2e2d', '[\"*\"]', NULL, NULL, '2025-08-03 09:59:59', '2025-08-03 09:59:59'),
(3, 'App\\Models\\User', 2, 'api-token', '19289addf63c1baeced2bfa34a048928fab8e73001242ccc3cd28ff54dcd7056', '[\"*\"]', NULL, NULL, '2025-08-03 10:01:35', '2025-08-03 10:01:35'),
(4, 'App\\Models\\User', 1, 'api-token', 'f220c865f780b6b4257966929f35fbd2a416c2140ef5c6566b4d1957e490b688', '[\"*\"]', NULL, NULL, '2025-08-03 10:07:39', '2025-08-03 10:07:39'),
(5, 'App\\Models\\User', 3, 'api-token', '3470696923ff42579c1a97c843e51ea10fb1a67818152a894e7c9fb610ce9153', '[\"*\"]', NULL, NULL, '2025-08-03 10:08:04', '2025-08-03 10:08:04'),
(6, 'App\\Models\\User', 1, 'api-token', 'e90f64bab574c38dd638dba554d7ea8ed5ef58754b34a4527e5d04ffae35b309', '[\"*\"]', '2025-08-03 10:36:50', NULL, '2025-08-03 10:17:38', '2025-08-03 10:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inventory_item_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `inventory_item_id`, `warehouse_id`, `quantity`, `created_at`, `updated_at`) VALUES
(3, 2, 3, 61, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(4, 2, 4, 24, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(5, 2, 5, 73, '2025-08-03 10:22:13', '2025-08-03 10:36:36'),
(6, 2, 6, 8, '2025-08-03 10:22:13', '2025-08-03 10:36:36'),
(7, 2, 7, 75, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(8, 3, 3, 75, '2025-08-03 10:22:13', '2025-08-03 10:23:05'),
(9, 3, 4, 4, '2025-08-03 10:22:13', '2025-08-03 10:23:04'),
(10, 3, 5, 19, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(11, 3, 6, 38, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(12, 3, 7, 36, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(13, 4, 3, 76, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(14, 4, 4, 54, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(15, 4, 5, 73, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(16, 4, 6, 16, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(17, 4, 7, 88, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(18, 5, 3, 92, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(19, 5, 4, 41, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(20, 5, 5, 96, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(21, 5, 6, 68, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(22, 5, 7, 74, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(23, 6, 3, 9, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(24, 6, 4, 96, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(25, 6, 5, 11, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(26, 6, 6, 11, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(27, 6, 7, 23, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(28, 7, 3, 25, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(29, 7, 4, 26, '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(30, 7, 5, 58, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(31, 7, 6, 21, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(32, 7, 7, 6, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(33, 8, 3, 49, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(34, 8, 4, 41, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(35, 8, 5, 31, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(36, 8, 6, 88, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(37, 8, 7, 71, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(38, 9, 3, 42, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(39, 9, 4, 91, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(40, 9, 5, 89, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(41, 9, 6, 98, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(42, 9, 7, 10, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(43, 10, 3, 60, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(44, 10, 4, 21, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(45, 10, 5, 65, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(46, 10, 6, 84, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(47, 10, 7, 77, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(48, 11, 3, 94, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(49, 11, 4, 94, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(50, 11, 5, 92, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(51, 11, 6, 9, '2025-08-03 10:22:14', '2025-08-03 10:22:14'),
(52, 11, 7, 87, '2025-08-03 10:22:14', '2025-08-03 10:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `stock_transfers`
--

CREATE TABLE `stock_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inventory_item_id` bigint(20) UNSIGNED NOT NULL,
  `from_warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `to_warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_transfers`
--

INSERT INTO `stock_transfers` (`id`, `inventory_item_id`, `from_warehouse_id`, `to_warehouse_id`, `quantity`, `created_at`, `updated_at`) VALUES
(2, 3, 4, 3, 10, '2025-08-03 10:23:05', '2025-08-03 10:23:05'),
(3, 2, 6, 5, 1, '2025-08-03 10:35:45', '2025-08-03 10:35:45'),
(4, 2, 6, 5, 1, '2025-08-03 10:36:36', '2025-08-03 10:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'safy', 'safy@gmail.com', NULL, '$2y$12$sq.3Mdo4dbc/Lg1eiCuJwOLzQvaciRAcMWuNmVILWywWEkFif00/y', NULL, '2025-08-03 09:59:55', '2025-08-03 09:59:55'),
(2, 'safy', 'ayha@gmail.com', NULL, '$2y$12$V6fo/gv68mMIPB6z5SpHRO8RrHSR98rMor3aNodK5XcxCrkwwi3DS', NULL, '2025-08-03 10:01:35', '2025-08-03 10:01:35'),
(3, 'safy', 'mo@gmail.com', NULL, '$2y$12$fUo3LGYKiYRbK/tNScazDOdpuJP44ZYIxdmMRXYDB6QmDYvdb5/2O', NULL, '2025-08-03 10:08:04', '2025-08-03 10:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `location`, `created_at`, `updated_at`) VALUES
(3, 'Stokes PLC', '6408 Lindgren Village\nNew Rosannaburgh, ME 55511', '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(4, 'Kihn, D\'Amore and Konopelski', '898 Beahan Squares Suite 476\nNorth Mariam, SC 73165', '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(5, 'Hamill-Larson', '52049 Auer Ranch\nErickastad, MA 40237', '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(6, 'Stracke-Steuber', '35971 Taurean Circle\nRaynorport, AR 49168', '2025-08-03 10:22:13', '2025-08-03 10:22:13'),
(7, 'Dach PLC', '155 Ruecker Unions\nSouth Rhett, MD 03565', '2025-08-03 10:22:13', '2025-08-03 10:22:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inventory_items`
--
ALTER TABLE `inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventory_items_sku_unique` (`sku`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stocks_inventory_item_id_foreign` (`inventory_item_id`),
  ADD KEY `stocks_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `stock_transfers`
--
ALTER TABLE `stock_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_transfers_inventory_item_id_foreign` (`inventory_item_id`),
  ADD KEY `stock_transfers_from_warehouse_id_foreign` (`from_warehouse_id`),
  ADD KEY `stock_transfers_to_warehouse_id_foreign` (`to_warehouse_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_items`
--
ALTER TABLE `inventory_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `stock_transfers`
--
ALTER TABLE `stock_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stocks_inventory_item_id_foreign` FOREIGN KEY (`inventory_item_id`) REFERENCES `inventory_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stocks_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_transfers`
--
ALTER TABLE `stock_transfers`
  ADD CONSTRAINT `stock_transfers_from_warehouse_id_foreign` FOREIGN KEY (`from_warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_transfers_inventory_item_id_foreign` FOREIGN KEY (`inventory_item_id`) REFERENCES `inventory_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_transfers_to_warehouse_id_foreign` FOREIGN KEY (`to_warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
