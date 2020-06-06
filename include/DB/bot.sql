-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2020 at 08:05 PM
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
(2, 1, 'button', 'B. Tech', NULL, 2),
(3, 1, 'button', 'M. Tech', NULL, 5),
(4, 1, 'button', 'MBA', NULL, 4),
(5, 1, 'button', 'Pharmecy', NULL, 1),
(6, 1, 'button', 'PHD', NULL, 3),
(8, 2, 'text', 'Admission', NULL, 1),
(9, 2, 'text', 'Fee', NULL, 2),
(10, 1, 'text', 'Welcome to SKIT, Select the above mention course', NULL, 6),
(14, 5, 'button', 'Test', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`Qid`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `Qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
