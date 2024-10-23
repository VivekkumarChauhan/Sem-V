-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2024 at 09:51 PM
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
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image_data` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_data`) VALUES
(1, ''),
(2, '');

-- --------------------------------------------------------

--
-- Table structure for table `new_register`
--

CREATE TABLE `new_register` (
  `id` int(50) NOT NULL,
  `signup_username` varchar(100) NOT NULL,
  `signup_email` varchar(50) NOT NULL,
  `phone` int(255) NOT NULL,
  `Age` int(10) NOT NULL,
  `signup_password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_register`
--

INSERT INTO `new_register` (`id`, `signup_username`, `signup_email`, `phone`, `Age`, `signup_password`) VALUES
(1, 'vivek', 'vivek@gmail.com', 0, 0, '123456'),
(2, 'alexx', 'alex@gmail.com', 0, 0, '222222'),
(3, 'sanj', 'sanj@gmail.com', 0, 0, '111111'),
(26, 'abhay', 'bhavagaming@gmail.com', 0, 0, '123456'),
(27, 'nikhil', 'nikhil@gmail.com', 1234567890, 0, '1234567890'),
(29, 'nikhil', 'vivek@gmail.com', 1234567890, 0, '123456'),
(30, 'suresh', 'suresh@gmail.com', 1234567890, 9, '123456'),
(31, 'vivek', 'vivek@gmail.com', 0, 0, '111111'),
(32, '', 'vivek@gmail.com', 0, 0, '111111');

-- --------------------------------------------------------

--
-- Table structure for table `submit_feedback`
--

CREATE TABLE `submit_feedback` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(20) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submit_feedback`
--

INSERT INTO `submit_feedback` (`id`, `name`, `email`, `message`) VALUES
(4, 'vivek', 'vivek@gmail.com', 'nice website'),
(5, '', 'vjbujfdhv@gmail.com', 'best UI'),
(6, '', 'suresh@gmail.com', 'nice animation');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_register`
--
ALTER TABLE `new_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submit_feedback`
--
ALTER TABLE `submit_feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `new_register`
--
ALTER TABLE `new_register`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `submit_feedback`
--
ALTER TABLE `submit_feedback`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
