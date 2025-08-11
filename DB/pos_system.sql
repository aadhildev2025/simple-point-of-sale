-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2025 at 07:12 AM
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
-- Database: `pos_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `category`, `price`, `stock`, `barcode`, `created_at`) VALUES
(1, 'IPhone 14', 'Mobile', 150000.00, 50, '123', '0000-00-00 00:00:00'),
(2, 'Samsung Tab 7', 'Tablet', 70000.00, 30, '321', '0000-00-00 00:00:00'),
(3, 'IPhone 15', 'Mobile', 180000.00, 50, '1234', '2025-02-18 04:32:24'),
(5, 'IPad 10th Gen', 'Tablet', 140000.00, 30, '1122', '2025-02-18 04:34:33'),
(6, 'MacBook Air M4', 'Laptop', 420000.00, 20, '4321', '2025-02-18 04:37:56'),
(8, 'Powerbank 10000MAh', 'Mobile', 4000.00, 50, '456', '2025-03-02 08:21:38'),
(9, 'Airpods', 'Mobile', 20000.00, 10, '1002', '2025-03-11 06:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Admin','Employee') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `telephone`, `address`, `email`, `password`, `role`) VALUES
(1, 'Aadhil', '0753130850', 'Puttalam', 'aadhil@gmail.com', '123', 'Admin'),
(2, 'Sam', '0751308500', 'Puttalam', 'sam@gmail.com', '2007', 'Admin'),
(3, 'Jafran', '0760368811', 'Puttalam', 'jafran@gmail.com', '2003', 'Employee'),
(4, 'Shareef', '0753130850', 'Colombo', 'shareef@gmail.com', '2004', 'Employee'),
(6, 'Kavi', '0714304378', 'Colombo', 'kavi@gmail.com', '2003', 'Employee'),
(7, 'Tuan', '0777067480', 'Negombo', 'tuan@gmail', '1234', 'Employee'),
(8, 'Chamee', '0751308500', 'Puttalam', 'chamee@gmail.com', '0612', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `barcode` (`barcode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
