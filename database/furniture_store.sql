-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 06:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `furniture_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_id`, `category_name`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Sản phẩm đặc biệt', '2024-05-30 21:31:59', '2024-05-30 21:31:59'),
(2, 2, 'Bàn', '2024-06-01 17:03:34', '2024-06-01 17:03:34'),
(3, 3, 'Ghế', '2024-06-01 17:03:34', '2024-06-01 17:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `orderdetail_quantity` varchar(255) DEFAULT NULL,
  `product_price` float DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`order_id`, `product_id`, `product_name`, `orderdetail_quantity`, `product_price`, `createdAt`, `updatedAt`) VALUES
(7, 1, 'Bàn', '10', 987000, '2024-05-30 16:02:24', '2024-05-30 16:02:24'),
(7, 2, 'Ghế', '1', 789000, '2024-05-30 16:02:24', '2024-05-30 16:02:24'),
(10, 1, 'Bàn', '10', 987000, '2024-05-30 16:04:32', '2024-05-30 16:04:32'),
(10, 3, 'Tủ', '1', 879000, '2024-05-30 16:04:32', '2024-05-30 16:04:32'),
(11, 1, 'Bàn', '1', 987000, '2024-05-30 16:06:54', '2024-05-30 16:06:54'),
(11, 2, 'Ghế', '1', 789000, '2024-05-30 16:06:54', '2024-05-30 16:06:54'),
(12, 1, 'Bàn', '1', 987000, '2024-05-30 18:58:49', '2024-05-30 18:58:49'),
(12, 2, 'Ghế', '1', 789000, '2024-05-30 18:58:49', '2024-05-30 18:58:49'),
(12, 3, 'Tủ', '1', 879000, '2024-05-30 18:58:49', '2024-05-30 18:58:49'),
(13, 1, 'Bàn', '1', 987000, '2024-05-31 07:55:25', '2024-05-31 07:55:25'),
(14, 1, 'Bàn', '10', 987000, '2024-05-31 14:47:34', '2024-05-31 14:47:34'),
(14, 2, 'Ghế', '1', 789000, '2024-05-31 14:47:34', '2024-05-31 14:47:34'),
(14, 3, 'Tủ', '1', 879000, '2024-05-31 14:47:34', '2024-05-31 14:47:34'),
(15, 1, 'Bàn', '1', 987000, '2024-05-31 15:22:55', '2024-05-31 15:22:55'),
(17, 1, 'Bàn', '1', 987000, '2024-06-01 09:17:00', '2024-06-01 09:17:00'),
(17, 2, 'Ghế', '1', 789000, '2024-06-01 09:17:00', '2024-06-01 09:17:00'),
(18, 2, 'Ghế', '1', 789000, '2024-06-01 09:25:32', '2024-06-01 09:25:32'),
(19, 2, 'Ghế', '1', 789000, '2024-06-01 09:27:33', '2024-06-01 09:27:33'),
(19, 3, 'Tủ', '1', 879000, '2024-06-01 09:27:33', '2024-06-01 09:27:33'),
(20, 1, 'Bàn', '1', 987000, '2024-06-01 09:28:35', '2024-06-01 09:28:35'),
(21, 2, 'Ghế', '12', 789000, '2024-06-01 09:29:36', '2024-06-01 09:29:36'),
(21, 3, 'Tủ', '1', 879000, '2024-06-01 09:29:36', '2024-06-01 09:29:36'),
(23, 1, 'Bàn', '1', 987000, '2024-06-01 09:33:08', '2024-06-01 09:33:08'),
(23, 2, 'Ghế', '1', 789000, '2024-06-01 09:33:08', '2024-06-01 09:33:08'),
(24, 2, 'Ghế', '1', 789000, '2024-06-01 09:35:58', '2024-06-01 09:35:58'),
(24, 3, 'Tủ', '1', 879000, '2024-06-01 09:35:58', '2024-06-01 09:35:58'),
(25, 1, 'Bàn', '12', 987000, '2024-06-02 22:45:11', '2024-06-02 22:45:11'),
(25, 2, 'Ghế', '1', 789000, '2024-06-02 22:45:11', '2024-06-02 22:45:11'),
(89, 1, 'Bàn', '15', 987000, '2024-06-03 00:56:15', '2024-06-03 00:56:15'),
(89, 2, 'Ghế', '1', 789000, '2024-06-03 00:56:15', '2024-06-03 00:56:15'),
(90, 2, 'Ghế', '1', 789000, '2024-06-03 10:23:58', '2024-06-03 10:23:58'),
(90, 3, 'Tủ', '1', 879000, '2024-06-03 10:23:58', '2024-06-03 10:23:58'),
(91, 1, 'Bàn', '1', 987000, '2024-06-03 10:46:25', '2024-06-03 10:46:25'),
(91, 2, 'Ghế', '1', 789000, '2024-06-03 10:46:25', '2024-06-03 10:46:25'),
(92, 1, 'Bàn', '1', 987000, '2024-06-03 10:54:21', '2024-06-03 10:54:21'),
(92, 3, 'Tủ', '1', 879000, '2024-06-03 10:54:21', '2024-06-03 10:54:21'),
(93, 2, 'Ghế', '1', 789000, '2024-06-03 10:57:38', '2024-06-03 10:57:38'),
(93, 3, 'Tủ', '1', 879000, '2024-06-03 10:57:38', '2024-06-03 10:57:38'),
(94, 1, 'Bàn', '1', 987000, '2024-06-03 11:54:44', '2024-06-03 11:54:44'),
(94, 2, 'Ghế', '1', 789000, '2024-06-03 11:54:44', '2024-06-03 11:54:44'),
(94, 3, 'Tủ', '1', 879000, '2024-06-03 11:54:44', '2024-06-03 11:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_fname` varchar(255) DEFAULT NULL,
  `order_lname` varchar(255) DEFAULT NULL,
  `order_phonenumber` int(11) DEFAULT NULL,
  `order_email` varchar(255) DEFAULT NULL,
  `order_address` varchar(255) DEFAULT NULL,
  `order_notes` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_total` float DEFAULT NULL,
  `oder_status` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_fname`, `order_lname`, `order_phonenumber`, `order_email`, `order_address`, `order_notes`, `user_id`, `order_total`, `oder_status`, `order_date`, `createdAt`, `updatedAt`) VALUES
(89, 'Long', 'Vũ', 918138035, 'vthl2k2@gmail.com', '12 chùa bộc', '', 0, 15594000, '1', '2024-06-03 00:56:15', '2024-06-03 00:56:15', '2024-06-03 01:01:27'),
(94, 'Thanh', 'Mai', 918138035, 'vthl2k2@gmail.com', '12 chùa bộc', 'Đây là đơn hàng đâu tiên', 1, 2655000, '0', '2024-06-03 11:54:44', '2024-06-03 11:54:44', '2024-06-03 11:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `product_price` float DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `product_name`, `product_description`, `product_price`, `product_quantity`, `product_image`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Bàn', NULL, 987000, 999, 'images/product-2.png', '2024-05-20 12:36:43', '2024-05-20 12:36:43'),
(2, 1, 'Ghế', NULL, 789000, 99, 'images/product-3.png', '2024-05-20 12:36:43', '2024-05-20 12:36:43'),
(3, 1, 'Tủ', NULL, 879000, 9, 'images/product-1.png', '2024-05-20 12:37:23', '2024-05-20 12:37:23'),
(10, NULL, 'Nội thất 1', NULL, NULL, NULL, 'images/product-4.png', '2024-06-02 16:31:12', '2024-06-02 16:31:12'),
(11, NULL, 'Nội thất 2', NULL, NULL, NULL, 'images/product-5.png', '2024-06-02 16:31:12', '2024-06-02 16:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20240520030825-create-user.js'),
('20240520032940-create-product.js'),
('20240520033207-create-product.js'),
('20240520041116-create-product.js'),
('20240520101353-remove-id-in-product.js'),
('20240520103112-create-product.js'),
('20240520152416-create-user.js'),
('20240530102412-create-order.js'),
('20240530152735-create-order-detail.js'),
('20240530193130-create-categories.js');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_role` varchar(255) NOT NULL DEFAULT 'user',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_password`, `user_role`, `createdAt`, `updatedAt`) VALUES
(1, 'a@gmail.com', '$2b$10$8/4IZyFvdutDmxbpQuWnq./Yc9MLxY4ajRNsYdHzbqjCyITYGt26e', 'admin', '2024-05-21 09:33:53', '2024-05-21 09:33:53'),
(3, 'c@gmail.com', '$2b$10$UfA7hcQ47INFe8f1HRhAweCNwaII6GLv0cB3XMUi.vhxDXopE0wZC', 'manager', '2024-06-01 09:03:49', '2024-06-01 09:03:49'),
(6, 'b@gmail.com', '$2b$10$if0jScsAZ8zcEuPyiTxEDOSMt7b2TCWhX5/t4PUWo7qahm70GP0Y6', 'user', '2024-06-05 08:50:54', '2024-06-05 08:50:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
