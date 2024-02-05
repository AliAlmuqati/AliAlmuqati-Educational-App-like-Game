-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2024 at 10:16 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `users_password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_email`, `users_password`) VALUES
(1, 'aaa', 'aaa@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(2, 'rrr', 'ffff@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(3, 'aaaaaa', 'aaa@gmai.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(4, 'aaaaa', 'aaaa@gmail.com', '88ea39439e74fa27c09a4fc0bc8ebe6d00978392'),
(5, 'aaaa', 'abc@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(6, 'aaaa', 'abcaa@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(7, 'abccc', 'ascc@gmail.com', 'b9953bc1359bbd3be6aeb968bb14512ebae982db'),
(8, 'aaa', 'abb@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(9, 'sahm', 'sahm@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
