-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2020 at 08:20 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bot`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `Sno` int(11) NOT NULL,
  `Timestamp` bigint(20) NOT NULL,
  `Mobile` bigint(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Loginstate` tinyint(1) NOT NULL,
  `Cookie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`Sno`, `Timestamp`, `Mobile`, `Name`, `Loginstate`, `Cookie`) VALUES
(1, 1591721920, 7742811429, 'Mohit Agarwal', 1, 'VySV4O2xEXlwTBCu9BVOg4A2P'),
(2, 1591722087, 7742811429, 'Mohit Agarwal', 0, 'azcgeFRlGuD9B7Sekp75EjdZ1'),
(3, 1591723372, 8233635235, 'Sudarshan Saxena', 1, 'cwxT36iuJYiz31ODCHklsHNFd');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `Sno` int(11) NOT NULL,
  `Mobile` bigint(11) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`Sno`, `Mobile`, `Password`, `Name`) VALUES
(7, 172172172, '12345678', 'USER2'),
(2, 7568533320, '12345678', 'Harsh Gupta'),
(1, 7742811429, '12345678', 'Mohit Agarwal'),
(3, 8233635235, '12345678', 'Sudarshan Saxena'),
(5, 9887827277, '12345678', 'Milind Sharma'),
(6, 143214321432, '12345678', 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `Qid` int(11) NOT NULL,
  `Displayon` int(11) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Content` text NOT NULL,
  `Remark` varchar(100) DEFAULT NULL,
  `Displayorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`Qid`, `Displayon`, `Type`, `Content`, `Remark`, `Displayorder`) VALUES
(1, 0, 'button', 'Welcome Message', NULL, 0),
(2, 1, 'button', 'B. Tech', NULL, 1),
(3, 1, 'button', 'M. Tech', NULL, 4),
(4, 1, 'button', 'MBA', NULL, 2),
(5, 1, 'button', 'Pharmecy', NULL, 3),
(6, 1, 'button', 'PHD', NULL, 8),
(8, 2, 'text', 'Admission', NULL, 1),
(9, 2, 'text', 'Fee', NULL, 2),
(10, 1, 'text', 'Welcome to SKIT, Select the above mention course', NULL, 5),
(14, 5, 'button', 'Test', NULL, 1),
(47, 2, 'button', 'Fee', NULL, 3),
(48, 2, 'img', 'photos/img.jpg', NULL, 4),
(49, 2, 'link', 'https://www.google.com', 'Gooogle home page', 5),
(56, 2, 'download', 'photos/img.jpg', 'a Wallpaper', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Sno` int(11) NOT NULL,
  `Timestamp` bigint(20) NOT NULL DEFAULT current_timestamp(),
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Mobile` bigint(11) NOT NULL,
  `Cookie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Sno`, `Timestamp`, `Name`, `Email`, `Mobile`, `Cookie`) VALUES
(1, 1591634475, 'Mohit Agarwal', 'mohitagarwal1432@gmail.com', 7742811429, 'h030OQQTbTTXvMz1tXa1MeTYj'),
(2, 1591635971, 'Mohit Agarwal', 'mohitagarwal1432@gmail.com', 774, 'K7CcrOiThwLYmCpxG0351njK1'),
(3, 1591636038, 'Mohit Agarwal', 'mohitagarwal1432@gmail.com', 1234567891, 'VqEf6Xd1xmwH1b89N6L5bWL04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`Sno`),
  ADD UNIQUE KEY `Cookie` (`Cookie`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`Mobile`),
  ADD UNIQUE KEY `Sno` (`Sno`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`Qid`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Sno`),
  ADD UNIQUE KEY `Cookie` (`Cookie`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `Qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
