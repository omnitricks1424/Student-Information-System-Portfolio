-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2022 at 03:54 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `token` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `token`, `password`) VALUES
(4, 'admin', 'santos1802909@ceu.edu.ph', '648b5a1eb21bdccf75b310477a0294cbce6bff2c93424a2b524cd85bab8b6905a4cc3ab9053756b8f366f0852051b0f8e71a', '$2y$10$Yhbe9PdF3Wx4lpwbVOLBpexG1a6mPvnDuiHXfiOyB7dukI41ku9Zm'),
(5, 'reader', 'johnalber17@gmail.com', '7a9b439cebcda64e65e61ad1a84a8820abcf97630a51e13496b8e9278740ba3b1afb4c3d308bf608a1827134b82b167595de', '$2y$10$bIdzkg3DKpmh.qKWPFeNuuNvpnt5qdv.Xkjags9qjonDq2GrtmqQ2'),
(6, 'a', 'rhobielyns@gmail.com', '2cb21152ea1af0d190ab59e3aacab7285835cabcae391ca6020bc94d8072fe29bc890eb79770c9de6c3784301289d66976db', '$2y$10$AnhZmKJRjaUUVkZFI5Ira.eH8VMxty4cauGPOGvKGI.5BeyCPoXFm');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
