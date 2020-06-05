-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 07, 2020 at 04:15 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id10372150_skitclub2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindetails`
--

CREATE TABLE `admindetails` (
  `Mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pass` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Year` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Branch` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Section` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Profile` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admindetails`
--

INSERT INTO `admindetails` (`Mobile`, `Pass`, `Email`, `Name`, `Gender`, `Year`, `Branch`, `Section`, `Profile`) VALUES
('6350134497', 'gaurav@1999', 'gaurav.gahlot1111@gmail.com', 'Gaurav Gahlot', 'Male', '2nd', 'Computer Science', 'D', '17'),
('7568533320', 'Harshkhushi#31', 'harshjai31@gmail.com', 'Harsh Gupta', 'Male', '2nd', 'Computer Science', 'D', ''),
('7742811429', 'i am admin', 'mohitagarwal1432@gmail.com', 'Mohit Agarwal', 'Male', '2nd', 'Computer Science', 'B', '13'),
('9462676404', '9462676404', 'rachitgarg258@gmail.com', 'Rachit Gupta', 'Male', '2nd', 'Computer Science', 'B', '');

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `Clubname` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Clubid` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Vision` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Learn` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Syllabus` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`Clubname`, `Clubid`, `Vision`, `Learn`, `Syllabus`) VALUES
('DevRoots', 'devroots', NULL, NULL, NULL),
('WebD', 'webd', 'WebDev is a club under Techinnova which aims to provide you with a great knowledge of coding to develop various web apps and be a full stack web developer.', 'Learn to develop attractive and interactive websites and web apps. Learn about the latest trends in the IT industry in the fields such as computer security, database management, web app development, server-side handling etc.', '1. HTML - Hyper Text Markup Language.<br />\r\n<br />\r\n2. CSS - Cascading Style Sheets.<br />\r\n<br />\r\n3. JavaScript.<br />\r\n<br />\r\n4. PHP -  Hypertext Preprocessor [Personal Home Page].');

-- --------------------------------------------------------

--
-- Table structure for table `codetails`
--

CREATE TABLE `codetails` (
  `Mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pass` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Clubname` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Clubid` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Year` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Branch` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Section` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Profile` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `codetails`
--

INSERT INTO `codetails` (`Mobile`, `Pass`, `Email`, `Name`, `Clubname`, `Clubid`, `Gender`, `Year`, `Branch`, `Section`, `Profile`) VALUES
('6350134497', 'gaurav@1999', 'gaurav.gahlot1111@gmail.com', 'Gaurav Gahlot', 'WebD', 'webd', 'Male', '2nd', 'Computer Science', 'D', '17'),
('7297004027', 'alpha007', 'namankumarjain429@gmail.com', 'Naman', 'DevRoots', 'devroots', 'Male', '3rd', 'Civil', 'a', ''),
('7300255262', 'bharatpur', 'jainj2305@gmail.com', 'Jinendra Jain', 'DevRoots', 'devroots', 'Male', '2nd', 'Computer Science', 'B', ''),
('7568533320', 'Harshkhushi#31', 'harshjai31@gmail.com', 'Harsh Gupta', 'WebD', 'webd', 'Male', '2nd', 'Computer Science', 'D', ''),
('7665523246', 'Js@#7599', 'jayeshsingh001@gmail.com', 'Jayesh Singh', 'DevRoots', 'devroots', 'Male', '2nd', 'Computer Science', 'B', NULL),
('7742811429', 'i am admin', 'mohitagarwal1432@gmail.com', 'Mohit Agarwal', 'WebD', 'webd', 'Male', '2nd', 'Computer Science', 'B', '13');

-- --------------------------------------------------------

--
-- Table structure for table `devroots`
--

CREATE TABLE `devroots` (
  `Studentmno` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devroots`
--

INSERT INTO `devroots` (`Studentmno`, `Name`) VALUES
('7300255262', 'Jinendra Jain'),
('7568533320', 'Harsh Gupta');

-- --------------------------------------------------------

--
-- Table structure for table `devrootsattendance`
--

CREATE TABLE `devrootsattendance` (
  `Sno` int(11) DEFAULT NULL,
  `Date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Studentmno` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Attendance` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devrootsattendance`
--

INSERT INTO `devrootsattendance` (`Sno`, `Date`, `Studentmno`, `Attendance`) VALUES
(1, '28-03-20', '7300255262', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `extrasession`
--

CREATE TABLE `extrasession` (
  `Sno` int(11) NOT NULL,
  `Clubid` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sessiondate` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Accessdate` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Starttime` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Endtime` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Link` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extrasession`
--

INSERT INTO `extrasession` (`Sno`, `Clubid`, `Sessiondate`, `Accessdate`, `Starttime`, `Endtime`, `Link`) VALUES
(1, 'webd', '16-03-20', '22-03-20', '12:00', '05:00', 'skitclub.tk/extraattendance?cid=webd&sdate=16-03-20&adate=22-03-20&stime=12:00&etime=05:00'),
(2, 'webd', '16-03-20', '03-22-20', '12:00', '17:00', 'skitclub.tk/extraattendance?cid=webd&sdate=16-03-20&adate=03-22-20&stime=12:00&etime=17:00'),
(3, 'webd', '16-03-20', '22-03-20', '12:00', '17:35', 'skitclub.tk/extraattendance?cid=webd&sdate=16-03-20&adate=22-03-20&stime=12:00&etime=17:35'),
(4, 'webd', '15-03-20', '22-03-20', '12:00', '18:00', 'skitclub.tk/extraattendance?cid=webd&sdate=15-03-20&adate=22-03-20&stime=12:00&etime=18:00');

-- --------------------------------------------------------

--
-- Table structure for table `fcmtoken`
--

CREATE TABLE `fcmtoken` (
  `Id` int(11) NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Loginas` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Token` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Createdon` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fcmtoken`
--

INSERT INTO `fcmtoken` (`Id`, `Email`, `Loginas`, `Token`, `Createdon`) VALUES
(1, '', 'st', 'fUJbew9bqJ4:APA91bGTJb8sMTuGHzv5bUaNYpQY1CtWnFp2-o8Wy7zNGTOB1V6jZXQW-vocUF5tL27HLQb97H56zFawoDLkdINlvI7HgrgS6iSFc6BI72llxtJGSKDSk3ESucXie6x88etgYcoT9_n_', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Sno` int(11) NOT NULL,
  `Date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Time` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Who` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Feedbackto` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Feedback` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Sno`, `Date`, `Time`, `Who`, `Feedbackto`, `Mobile`, `Feedback`) VALUES
(1, '12-03-20', '12:20:48pm', 'Coordinator', 'website', '7742811429', 'This feedback is from webd club for the website.\r\n'),
(2, '12-03-20', '12:21:49pm', 'Student', 'website', '7742811429', 'This feedback is from student to website.'),
(3, '12-03-20', '12:22:17pm', 'Student', 'WebD', '7742811429', 'This feedback is from student to the webd club.'),
(4, '25-03-20', '01:32:56pm', 'Coordinator', 'website', '7297004027', 'Any  \r\n\r\nOne can \r\n\r\nuse \r\n\r\nit'),
(5, '25-03-20', '01:33:15pm', 'Coordinator', 'website', '7297004027', 'vv');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Sno` int(11) NOT NULL,
  `Startdate` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Time` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Enddate` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Id` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pass` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Login` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Browser` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OS` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Sno`, `Startdate`, `Time`, `Enddate`, `Id`, `Mobile`, `Pass`, `Login`, `Browser`, `OS`) VALUES
(34, '12-03-20', '04:58 pm', '12-04-20', 'tig2o2kcvSdESYibnwbepCiLG', '6350134497', 'gaurav@1999', 'st', 'Google Chrome', 'Android'),
(36, '12-03-20', '05:07 pm', '12-04-20', 'NhuZYchWDMzr9NFsVyHiLIFZ8', '6350134497', 'gaurav@1999', 'co', 'Google Chrome', 'Android'),
(52, '13-03-20', '02:01 pm', '13-04-20', '8QkCMd1dwn4mUQzlUdgNzAqm8', '7665523246', 'Js@#7599', 'st', 'Google Chrome', 'Windows 7'),
(54, '13-03-20', '07:43 pm', '13-04-20', '5xN0ZgYji0SNQKeWLXjg7T697', '8233635235', 'adarsh2409', 'st', 'Google Chrome', 'Android'),
(74, '22-03-20', '09:53 pm', '22-04-20', 'zASC8kTAAtnBuhYpSSf3wvDXO', '9352434721', 'imsarthak@123', 'st', 'Google Chrome', 'Android'),
(75, '22-03-20', '10:07 pm', '22-04-20', '92TE7w4PGupOQzOMfoiyOvSmB', '6377655059', 'Shreyansh@22', 'st', 'Google Chrome', 'Android'),
(81, '23-03-20', '08:45 am', '23-04-20', 'BmW37AFFGCM65CPDbrx7uvdhu', '8432716348', 'abcdefgh', 'st', 'Google Chrome', 'Android'),
(103, '26-03-20', '12:55 pm', '26-04-20', 'Xuth6IdiyAXVyYJT4FI7K0sw9', '7297004027', 'alpha007', 'co', 'Google Chrome', 'Windows 10'),
(119, '27-03-20', '07:54 am', '27-04-20', 'l2mXmXBbUx30CC6baqwT4rJtp', '7297004027', 'alpha007', 'co', 'Google Chrome', 'Android'),
(133, '27-03-20', '11:19 pm', '27-04-20', 'QpPdSo7UpHS4HZI1Ttycgx9kT', '7300255262', 'bharatpur', 'co', 'Google Chrome', 'Android'),
(134, '27-03-20', '11:20 pm', '27-04-20', 'pkQi7RITPE2tRjPVAFFdFsGiS', '7300255262', 'bharatpur', 'st', 'Google Chrome', 'Android'),
(135, '27-03-20', '11:47 pm', '27-04-20', 'Ny7p8RexsANlz3w5mtLpIciuo', '7300255262', 'bharatpur', 'ad', 'Google Chrome', 'Windows 10'),
(159, '29-03-20', '10:44 pm', '29-04-20', 'UzY2ABOSbUKV3ugx7xB0bLuY1', '9352887445', 'skitclub@359', 'st', 'Google Chrome', 'Android'),
(160, '29-03-20', '10:48 pm', '29-04-20', 'c6NCPCCWI2zBTvSqnEzw7T0s8', '9352887445', 'skitclub@359', 'st', 'Google Chrome', 'Android'),
(162, '30-03-20', '12:26 am', '30-03-20', '5XAVu06IivRhtgUamuvwLmQT2', '6350134497', 'gaurav@1999', 'ad', 'Google Chrome', 'Windows 10'),
(169, '31-03-20', '12:18 am', '31-04-20', '7GbZQmmMTlzR6gX4DwJJJQhm8', '8233635235', 'adarsh2409', 'st', 'Google Chrome', 'Windows 10'),
(179, '01-04-20', '09:03 pm', '01-05-20', 'tBnLiIzTJvoF3oYE529k5mbR6', '7742811429', 'i am admin', 'co', 'Google Chrome', 'Windows 8'),
(186, '01-04-20', '11:51 pm', '01-05-20', 'zIHhp8t4m0Vq7rFSqtmk9AQID', '7568533320', 'Harshkhushi#31', 'co', 'Google Chrome', 'Windows 10'),
(195, '03-04-20', '03:40 pm', '03-05-20', 'DA8Oybjnz5pvSb5SdUty3RzV7', '7742811429', 'i am admin', 'ad', 'Google Chrome', 'Android'),
(198, '05-04-20', '10:36 am', '05-05-20', 'p7IfncpD8dmXh6FH2JJWqZbXi', '7742811429', 'i am admin', 'ad', 'Google Chrome', 'Windows 8'),
(210, '05-04-20', '01:40 pm', '05-05-20', 'eFB9NohAteDvMp9yW3CjHPMRG', '7742811429', 'i am admin', 'ad', 'Google Chrome', 'Windows 8'),
(216, '06-04-20', '07:33 am', '06-05-20', 'orm81tuslOlHdWHNK2uSZWW1T', '7742811429', 'i am admin', 'st', 'Google Chrome', 'Android');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `Sno` int(11) NOT NULL,
  `Date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Time` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sendby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Clubid` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Clubname` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Message` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `File` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Download` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`Sno`, `Date`, `Time`, `Sendby`, `Clubid`, `Clubname`, `Message`, `File`, `Download`) VALUES
(3, '27-03-20', '08:08am', 'Naman', 'webd', 'WebD', 'Hello world ', NULL, NULL),
(4, '27-03-20', '11:20pm', 'Jinendra Jain', 'devroots', 'DevRoots', 'Hiii', 'devroots-27-03-20-11:19pm.jpeg', 'https://firebasestorage.googleapis.com/v0/b/skitclub-143.appspot.com/o/Notices%2Fdevroots-27-03-20-11%3A19pm.jpeg?alt=media&token=974af98b-5178-48d8-9b15-50a665d04409'),
(9, '01-04-20', '10:29pm', 'Mohit Agarwal', 'Admin', 'Admin', 'Dear Students,<br />\r\n<br />\r\nClubs at SKIT are for bringing out the best in you. Join a club according to your own interest to make yourself excel in that field with proper guidance and support. And it is highly recommended to attend the club meetings of every Wednesday.<br />\r\n<br />\r\n<button class=\"submit\" style=\"width:auto;padding:0px 10px;margin: 15px 0px 15px  calc(50% - 50px);\" onclick=\"window.open(\'clubs\',\'_self\');\">Join a club</button>', NULL, NULL),
(30, '05-04-20', '01:19pm', 'Mohit Agarwal23', 'webd', 'WebD', 'Now you can also send emojis.<br />\r\n<br />\r\nðð³ð¤­ð¯ðððð¦ðð¦ð¤ð¤¯ð°<br />\r\nð¶ððâ¹ï¸ðð±ðð»ð¹ð¥ð¥ðð', NULL, NULL),
(36, '05-04-20', '07:08pm', 'Mohit Agarwal23', 'Admin', 'Admin', 'ð', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `Sno` int(11) NOT NULL,
  `Mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Skill` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rating` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`Sno`, `Mobile`, `Skill`, `Rating`) VALUES
(1, '7742811429', 'Full-Stack Development', NULL),
(23, '7742811429', 'HTML, CSS, JavaScript, PHP', NULL),
(45, '7742811429', 'C/C++/C#', NULL),
(55, '6350134497', 'C', NULL),
(56, '6350134497', 'C++', NULL),
(62, '7742811429', 'Android development', NULL),
(68, '7742811429', 'Arduino', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `studetails`
--

CREATE TABLE `studetails` (
  `Mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pass` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Year` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Branch` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Section` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Club1` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Club2` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Club3` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Isseen` int(11) DEFAULT NULL,
  `Profile` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studetails`
--

INSERT INTO `studetails` (`Mobile`, `Pass`, `Name`, `Email`, `Year`, `Branch`, `Section`, `Gender`, `Club1`, `Club2`, `Club3`, `Isseen`, `Profile`) VALUES
('6350134497', 'gaurav@1999', 'Gaurav Gahlot', 'gaurav.gahlot1111@gmail.com', '2nd', 'Computer Science', 'D', 'Male', 'WebD', NULL, NULL, 30, '17'),
('6376365191', 'gautam123', 'Gautam tinker', 'gautamtinker83@gmail.com', '1st', 'Computer Science', 'B', 'Male', NULL, NULL, NULL, 1, NULL),
('6377655059', 'Shreyansh@22', 'Shreyansh', 'guptashreyansb22@gmail.com', '1st', 'Computer Science', 'H', 'Male', NULL, NULL, NULL, 1, NULL),
('7297004027', 'alpha007', 'Naman', 'namankumarjain429@gmail.com', '3rd', 'Civil', 'a', 'Male', NULL, NULL, NULL, 1, NULL),
('7300255262', 'bharatpur', 'Jinendra Jain', 'jainj2305@gmail.com', '2nd', 'Computer Science', 'B', 'Male', 'DevRoots', NULL, NULL, 4, NULL),
('7568533320', 'Harshkhushi#31', 'Harsh Gupta', 'harshjai31@gmail.com', '2nd', 'Computer Science', 'D', 'Male', 'DevRoots', NULL, NULL, 4, NULL),
('7665523246', 'Js@#7599', 'Jayesh Singh', 'jayeshsingh001@gmail.com', '2nd', 'Computer Science', 'B', 'Male', NULL, NULL, NULL, 1, NULL),
('7742811429', 'i am admin', 'Mohit Agarwal', 'mohitagarwal1432@gmail.com', '2nd', 'Computer Science', 'B', 'Male', 'WebD', NULL, NULL, 36, '13'),
('8233635235', 'adarsh2409', 'Sudarshan', 'sudarshansaxena2409@gmail.com', '2nd', 'Computer Science', 'D', 'Male', 'WebD', NULL, NULL, 7, NULL),
('8432716348', 'abcdefgh', 'Vikas Mittal', 'vikasneerajmittal@gmail.com', '1st', 'Electronics and Communication', 'O', 'Male', NULL, NULL, NULL, 1, NULL),
('9352434721', 'imsarthak@123', 'Sarthak Sharma', 'sarthak2881@gmail.com', '1st', 'Electronics and Communication', 'M', 'Male', NULL, NULL, NULL, 1, NULL),
('9352887445', 'skitclub@359', 'Nitin Chittoria', 'chittorianitin953@gmail.com', '2nd', 'Electronics and Communication', 'A', 'Male', NULL, NULL, NULL, 1, '15'),
('9462676404', '9462676404', 'Rachit Gupta', 'rachitgarg258@gmail.com', '2nd', 'Computer Science', 'B', 'Male', NULL, NULL, NULL, NULL, NULL),
('9509674021', '12345678', 'Mishu Jain', 'mishujain920@gmail.com', '1st', 'Electronics and Communication', 'M', 'Male', NULL, NULL, NULL, 1, NULL),
('9530104832', 'Palaknl1#', 'Palak gupta', 'palakguptanl@gmail.com', '1st', 'Computer Science', 'D', 'Female', NULL, NULL, NULL, 1, NULL),
('9571949265', '9571949265', 'Lovish Chittora', 'lovishchittora13@gmail.com', '2nd', 'Computer Science', 'B', 'Male', NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `Mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pass` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`Mobile`, `Pass`) VALUES
('6350134497', 'gaurav@1999'),
('6376365191', 'gautam123'),
('6377655059', 'Shreyansh@22'),
('7297004027', 'alpha007'),
('7300255262', 'bharatpur'),
('7568533320', 'Harshkhushi#31'),
('7665523246', 'Js@#7599'),
('7742811429', 'i am admin'),
('7976836746', 'rahulsoni'),
('8233635235', 'adarsh2409'),
('8432716348', 'abcdefgh'),
('9352434721', 'imsarthak@123'),
('9352887445', 'skitclub@359'),
('9460765413', 'qwertyuiop'),
('9462676404', '9462676404'),
('9509674021', '12345678'),
('9530104832', 'Palaknl1#'),
('9571949265', '9571949265');

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `Sno` int(11) NOT NULL,
  `Date` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Time` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Page` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `User` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Browser` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OS` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`Sno`, `Date`, `Time`, `Name`, `Mobile`, `Page`, `User`, `Browser`, `OS`) VALUES
(23, '26-03-20', '12:53pm', 'Naman', '7297004027', 'profile.php', 'co', 'Google Chrome', 'Windows 10'),
(24, '26-03-20', '12:54pm', 'Naman', '7297004027', 'clubs.php', 'co', 'Google Chrome', 'Windows 10'),
(25, '26-03-20', '12:54pm', 'Naman', '7297004027', 'logout.php', 'co', 'Google Chrome', 'Windows 10'),
(26, '26-03-20', '12:55pm', 'Naman', '7297004027', 'profile.php', 'co', 'Google Chrome', 'Windows 10'),
(27, '26-03-20', '12:55pm', 'Naman', '7297004027', 'students.php', 'co', 'Google Chrome', 'Windows 10'),
(28, '26-03-20', '12:57pm', 'Naman', '7297004027', 'feedback.php', 'co', 'Google Chrome', 'Windows 10'),
(29, '26-03-20', '12:57pm', 'Naman', '7297004027', 'clubs.php', 'co', 'Google Chrome', 'Windows 10'),
(30, '26-03-20', '12:59pm', 'Naman', '7297004027', 'clubs.php', 'co', 'Google Chrome', 'Windows 10'),
(31, '26-03-20', '12:59pm', 'Naman', '7297004027', 'clubs.php', 'co', 'Google Chrome', 'Windows 10'),
(32, '26-03-20', '01:03pm', 'Naman', '7297004027', 'clubs.php', 'co', 'Google Chrome', 'Windows 10'),
(33, '26-03-20', '01:04pm', 'Naman', '7297004027', 'clubs.php', 'co', 'Google Chrome', 'Windows 10'),
(34, '26-03-20', '01:04pm', 'Naman', '7297004027', 'clubs.php', 'co', 'Google Chrome', 'Windows 10'),
(35, '26-03-20', '07:22pm', 'Naman', '7297004027', 'profile.php', 'co', 'Google Chrome', 'Windows 10'),
(36, '26-03-20', '07:27pm', 'Naman', '7297004027', 'profile.php', 'co', 'Google Chrome', 'Windows 10'),
(37, '26-03-20', '07:43pm', 'Naman', '7297004027', 'profile.php', 'co', 'Google Chrome', 'Windows 10'),
(38, '26-03-20', '09:10pm', 'Naman', '7297004027', 'profile.php', 'co', 'Google Chrome', 'Windows 10'),
(39, '27-03-20', '07:36am', 'Naman', '7297004027', 'profile.php', 'co', 'Google Chrome', 'Windows 10'),
(40, '27-03-20', '07:37am', 'Naman', '7297004027', 'changepass.php', 'co', 'Google Chrome', 'Windows 10'),
(41, '27-03-20', '07:38am', 'Naman', '7297004027', 'profile.php', 'co', 'Google Chrome', 'Windows 10'),
(42, '27-03-20', '07:39am', 'Naman', '7297004027', 'feedback.php', 'co', 'Google Chrome', 'Windows 10'),
(43, '27-03-20', '07:54am', 'Naman', '7297004027', 'profile.php', 'co', 'Google Chrome', 'Android'),
(44, '27-03-20', '07:55am', 'Naman', '7297004027', 'message.php', 'co', 'Google Chrome', 'Android'),
(45, '27-03-20', '08:07am', 'Naman', '7297004027', 'ajax.php', 'co', 'Google Chrome', 'Android'),
(46, '27-03-20', '08:08am', 'Naman', '7297004027', 'message.php', 'co', 'Google Chrome', 'Android'),
(47, '27-03-20', '08:08am', 'Naman', '7297004027', 'message.php', 'co', 'Google Chrome', 'Android'),
(48, '27-03-20', '08:08am', 'Naman', '7297004027', 'feedback.php', 'co', 'Google Chrome', 'Android'),
(49, '27-03-20', '07:25pm', 'Naman', '7297004027', 'profile.php', 'co', 'Google Chrome', 'Windows 10'),
(50, '27-03-20', '07:26pm', 'Naman', '7297004027', 'profile.php', 'co', 'Google Chrome', 'Windows 10'),
(51, '27-03-20', '11:17pm', 'Jinendra Jain', '7300255262', 'profile.php', 'st', 'Google Chrome', 'Android'),
(52, '27-03-20', '11:17pm', 'Jinendra Jain', '7300255262', 'message.php', 'st', 'Google Chrome', 'Android'),
(53, '27-03-20', '11:17pm', 'Jinendra Jain', '7300255262', 'clubs.php', 'st', 'Google Chrome', 'Android'),
(54, '27-03-20', '11:17pm', 'Jinendra Jain', '7300255262', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(55, '27-03-20', '11:17pm', 'Jinendra Jain', '7300255262', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(56, '27-03-20', '11:18pm', 'Jinendra Jain', '7300255262', 'logout.php', 'st', 'Google Chrome', 'Android'),
(57, '27-03-20', '11:18pm', 'Jinendra Jain', '7300255262', 'profile.php', 'co', 'Google Chrome', 'Android'),
(58, '27-03-20', '11:18pm', 'Jinendra Jain', '7300255262', 'message.php', 'co', 'Google Chrome', 'Android'),
(59, '27-03-20', '11:18pm', 'Jinendra Jain', '7300255262', 'profile.php', 'co', 'Google Chrome', 'Android'),
(60, '27-03-20', '11:19pm', 'Jinendra Jain', '7300255262', 'profile.php', 'co', 'Google Chrome', 'Android'),
(61, '27-03-20', '11:19pm', 'Jinendra Jain', '7300255262', 'message.php', 'co', 'Google Chrome', 'Android'),
(62, '27-03-20', '11:20pm', 'Jinendra Jain', '7300255262', 'message.php', 'co', 'Google Chrome', 'Android'),
(63, '27-03-20', '11:20pm', 'Jinendra Jain', '7300255262', 'message.php', 'co', 'Google Chrome', 'Android'),
(64, '27-03-20', '11:20pm', 'Jinendra Jain', '7300255262', 'logout.php', 'co', 'Google Chrome', 'Android'),
(65, '27-03-20', '11:20pm', 'Jinendra Jain', '7300255262', 'profile.php', 'st', 'Google Chrome', 'Android'),
(66, '27-03-20', '11:20pm', 'Jinendra Jain', '7300255262', 'message.php', 'st', 'Google Chrome', 'Android'),
(67, '27-03-20', '11:20pm', 'Jinendra Jain', '7300255262', 'profile.php', 'st', 'Google Chrome', 'Android'),
(68, '27-03-20', '11:20pm', 'Jinendra Jain', '7300255262', 'message.php', 'st', 'Google Chrome', 'Android'),
(69, '27-03-20', '11:22pm', 'Jinendra Jain', '7300255262', 'clubs.php', 'st', 'Google Chrome', 'Android'),
(70, '27-03-20', '11:22pm', 'Jinendra Jain', '7300255262', 'clubs.php', 'co', 'Google Chrome', 'Android'),
(71, '27-03-20', '11:22pm', 'Jinendra Jain', '7300255262', 'profile.php', 'co', 'Google Chrome', 'Android'),
(72, '27-03-20', '11:47pm', 'Jinendra Jain', '7300255262', 'profile.php', 'ad', 'Google Chrome', 'Windows 10'),
(73, '27-03-20', '11:57pm', 'Jinendra Jain', '7300255262', 'addclub.php', 'ad', 'Google Chrome', 'Windows 10'),
(74, '28-03-20', '12:00am', 'Jinendra Jain', '7300255262', 'allmembers.php', 'ad', 'Google Chrome', 'Windows 10'),
(75, '28-03-20', '12:01am', 'Jinendra Jain', '7300255262', 'message.php', 'ad', 'Google Chrome', 'Windows 10'),
(76, '28-03-20', '12:02am', 'Jinendra Jain', '7300255262', 'track.php', 'ad', 'Google Chrome', 'Windows 10'),
(77, '28-03-20', '12:03am', 'Jinendra Jain', '7300255262', 'clubdata.php', 'ad', 'Google Chrome', 'Windows 10'),
(78, '28-03-20', '12:03am', 'Jinendra Jain', '7300255262', 'ajax.php', 'ad', 'Google Chrome', 'Windows 10'),
(79, '28-03-20', '12:03am', 'Jinendra Jain', '7300255262', 'ajax.php', 'ad', 'Google Chrome', 'Windows 10'),
(80, '28-03-20', '12:04am', 'Jinendra Jain', '7300255262', 'ajax.php', 'ad', 'Google Chrome', 'Windows 10'),
(81, '28-03-20', '12:08am', 'Jinendra Jain', '7300255262', 'allmembers.php', 'ad', 'Google Chrome', 'Windows 10'),
(82, '28-03-20', '12:12am', 'Jinendra Jain', '7300255262', 'allmembers.php', 'ad', 'Google Chrome', 'Windows 10'),
(83, '28-03-20', '12:12am', 'Jinendra Jain', '7300255262', 'allmembers.php', 'ad', 'Google Chrome', 'Windows 10'),
(84, '28-03-20', '09:46am', 'Jinendra Jain', '7300255262', 'profile.php', 'co', 'Google Chrome', 'Android'),
(85, '29-03-20', '11:44am', 'Naman', '7297004027', 'profile.php', 'co', 'Google Chrome', 'Windows 10'),
(86, '29-03-20', '11:45am', 'Naman', '7297004027', 'notiyapa.php', 'co', 'Google Chrome', 'Windows 10'),
(87, '29-03-20', '11:45am', 'Naman', '7297004027', 'notiyapa.php', 'co', 'Google Chrome', 'Windows 10'),
(88, '29-03-20', '11:46am', 'Naman', '7297004027', 'notiyapa.php', 'co', 'Google Chrome', 'Windows 10'),
(89, '29-03-20', '11:46am', 'Naman', '7297004027', 'notiyapa.php', 'co', 'Google Chrome', 'Windows 10'),
(90, '29-03-20', '11:47am', 'Naman', '7297004027', 'notiyapa.php', 'co', 'Google Chrome', 'Windows 10'),
(91, '29-03-20', '12:07pm', 'Naman', '7297004027', 'profile.php', 'co', 'Google Chrome', 'Windows 10'),
(92, '29-03-20', '02:52pm', 'Naman', '7297004027', 'profile.php', 'co', 'Google Chrome', 'Windows 10'),
(93, '29-03-20', '05:51pm', 'Naman', '7297004027', 'profile.php', 'co', 'Google Chrome', 'Windows 10'),
(94, '29-03-20', '07:22pm', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Windows 10'),
(95, '29-03-20', '07:22pm', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Windows 10'),
(96, '29-03-20', '07:23pm', 'Gaurav Gahlot', '6350134497', 'addcoordinator.php', 'ad', 'Google Chrome', 'Windows 10'),
(97, '29-03-20', '07:23pm', 'Gaurav Gahlot', '6350134497', 'allmembers.php', 'ad', 'Google Chrome', 'Windows 10'),
(98, '29-03-20', '09:24pm', 'Gaurav Gahlot', '6350134497', 'extrasession.php', 'ad', 'Google Chrome', 'Windows 10'),
(99, '29-03-20', '09:24pm', 'Gaurav Gahlot', '6350134497', 'extrasession.php', 'ad', 'Google Chrome', 'Windows 10'),
(100, '29-03-20', '10:44pm', 'Nitin Chittoria', '9352887445', 'profile.php', 'st', 'Google Chrome', 'Android'),
(101, '29-03-20', '10:44pm', 'Nitin Chittoria', '9352887445', 'message.php', 'st', 'Google Chrome', 'Android'),
(102, '29-03-20', '10:45pm', 'Nitin Chittoria', '9352887445', 'profile.php', 'st', 'Google Chrome', 'Android'),
(103, '29-03-20', '10:45pm', 'Nitin Chittoria', '9352887445', 'certificate.php', 'st', 'Google Chrome', 'Android'),
(104, '29-03-20', '10:45pm', 'Nitin Chittoria', '9352887445', 'profile.php', 'st', 'Google Chrome', 'Android'),
(105, '29-03-20', '10:46pm', 'Nitin Chittoria', '9352887445', 'changepass.php', 'st', 'Google Chrome', 'Android'),
(106, '29-03-20', '10:47pm', 'Nitin Chittoria', '9352887445', 'profile.php', 'st', 'Google Chrome', 'Android'),
(107, '29-03-20', '10:48pm', 'Nitin Chittoria', '9352887445', 'profile.php', 'st', 'Google Chrome', 'Android'),
(108, '29-03-20', '10:49pm', 'Nitin Chittoria', '9352887445', 'profile.php', 'st', 'Google Chrome', 'Android'),
(109, '29-03-20', '10:49pm', 'Nitin Chittoria', '9352887445', 'profile.php', 'st', 'Google Chrome', 'Android'),
(110, '29-03-20', '10:49pm', 'Nitin Chittoria', '9352887445', 'profile.php', 'st', 'Google Chrome', 'Android'),
(111, '29-03-20', '10:49pm', 'Nitin Chittoria', '9352887445', 'changepass.php', 'st', 'Google Chrome', 'Android'),
(112, '29-03-20', '10:50pm', 'Nitin Chittoria', '9352887445', 'profile.php', 'st', 'Google Chrome', 'Android'),
(113, '29-03-20', '10:51pm', 'Nitin Chittoria', '9352887445', 'profile.php', 'st', 'Google Chrome', 'Android'),
(114, '29-03-20', '11:11pm', 'Gaurav Gahlot', '6350134497', 'extrasession.php', 'ad', 'Google Chrome', 'Windows 10'),
(115, '29-03-20', '11:12pm', 'Gaurav Gahlot', '6350134497', 'logout.php', 'ad', 'Google Chrome', 'Windows 10'),
(116, '29-03-20', '11:12pm', 'Gaurav Gahlot', '6350134497', 'profile.php', 'st', 'Google Chrome', 'Windows 10'),
(117, '29-03-20', '11:13pm', 'Gaurav Gahlot', '6350134497', 'attendance.php', 'st', 'Google Chrome', 'Windows 10'),
(118, '29-03-20', '11:13pm', 'Gaurav Gahlot', '6350134497', 'message.php', 'st', 'Google Chrome', 'Windows 10'),
(119, '29-03-20', '11:13pm', 'Gaurav Gahlot', '6350134497', 'colleague.php', 'st', 'Google Chrome', 'Windows 10'),
(120, '29-03-20', '11:13pm', 'Gaurav Gahlot', '6350134497', 'notiyapa.php', 'st', 'Google Chrome', 'Windows 10'),
(121, '29-03-20', '11:13pm', 'Gaurav Gahlot', '6350134497', 'colleague.php', 'st', 'Google Chrome', 'Windows 10'),
(122, '30-03-20', '12:00am', 'Gaurav Gahlot', '6350134497', 'attendance.php', 'st', 'Google Chrome', 'Windows 10'),
(123, '30-03-20', '12:00am', 'Gaurav Gahlot', '6350134497', 'certificate.php', 'st', 'Google Chrome', 'Windows 10'),
(124, '30-03-20', '12:04am', 'Gaurav Gahlot', '6350134497', 'notiyapa.php', 'st', 'Google Chrome', 'Windows 10'),
(125, '30-03-20', '12:05am', 'Gaurav Gahlot', '6350134497', 'message.php', 'st', 'Google Chrome', 'Windows 10'),
(126, '30-03-20', '12:25am', 'Gaurav Gahlot', '6350134497', 'logout.php', 'st', 'Google Chrome', 'Windows 10'),
(127, '30-03-20', '12:26am', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Windows 10'),
(128, '30-03-20', '12:26am', 'Gaurav Gahlot', '6350134497', 'addadmin.php', 'ad', 'Google Chrome', 'Windows 10'),
(129, '30-03-20', '12:26am', 'Gaurav Gahlot', '6350134497', 'addcoordinator.php', 'ad', 'Google Chrome', 'Windows 10'),
(130, '30-03-20', '12:27am', 'Gaurav Gahlot', '6350134497', 'extrasession.php', 'ad', 'Google Chrome', 'Windows 10'),
(131, '30-03-20', '08:03am', 'Naman', '7297004027', 'profile.php', 'co', 'Google Chrome', 'Windows 10'),
(132, '30-03-20', '08:56am', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Windows 10'),
(133, '30-03-20', '08:56am', 'Gaurav Gahlot', '6350134497', 'message.php', 'ad', 'Google Chrome', 'Windows 10'),
(134, '30-03-20', '08:58am', 'Gaurav Gahlot', '6350134497', 'message.php', 'ad', 'Google Chrome', 'Windows 10'),
(135, '30-03-20', '08:58am', 'Gaurav Gahlot', '6350134497', 'message.php', 'ad', 'Google Chrome', 'Windows 10'),
(136, '30-03-20', '08:59am', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Windows 10'),
(137, '30-03-20', '08:59am', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Windows 10'),
(138, '30-03-20', '09:00am', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Windows 10'),
(139, '30-03-20', '09:00am', 'Gaurav Gahlot', '6350134497', 'message.php', 'ad', 'Google Chrome', 'Windows 10'),
(140, '30-03-20', '09:01am', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Windows 10'),
(141, '30-03-20', '09:02am', 'Gaurav Gahlot', '6350134497', 'logout.php', 'ad', 'Google Chrome', 'Windows 10'),
(142, '30-03-20', '11:50am', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Windows 10'),
(143, '30-03-20', '11:52am', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Windows 10'),
(144, '30-03-20', '11:52am', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Windows 10'),
(145, '30-03-20', '11:52am', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Windows 10'),
(146, '30-03-20', '11:52am', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Windows 10'),
(147, '30-03-20', '11:52am', 'Gaurav Gahlot', '6350134497', 'extrasession.php', 'ad', 'Google Chrome', 'Windows 10'),
(148, '30-03-20', '11:53am', 'Gaurav Gahlot', '6350134497', 'allmembers.php', 'ad', 'Google Chrome', 'Windows 10'),
(149, '30-03-20', '11:53am', 'Gaurav Gahlot', '6350134497', 'allmembers.php', 'ad', 'Google Chrome', 'Windows 10'),
(150, '30-03-20', '11:53am', 'Gaurav Gahlot', '6350134497', 'allmembers.php', 'ad', 'Google Chrome', 'Windows 10'),
(151, '30-03-20', '11:53am', 'Gaurav Gahlot', '6350134497', 'track.php', 'ad', 'Google Chrome', 'Windows 10'),
(152, '30-03-20', '11:54am', 'Gaurav Gahlot', '6350134497', 'clubdata.php', 'ad', 'Google Chrome', 'Windows 10'),
(153, '30-03-20', '11:54am', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Windows 10'),
(154, '30-03-20', '11:55am', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Windows 10'),
(155, '30-03-20', '11:57am', 'Gaurav Gahlot', '6350134497', 'logout.php', 'ad', 'Google Chrome', 'Windows 10'),
(156, '30-03-20', '01:57pm', 'Gaurav Gahlot', '6350134497', 'profile.php', 'st', 'Google Chrome', 'Windows 10'),
(157, '30-03-20', '01:58pm', 'Gaurav Gahlot', '6350134497', 'faq.php', 'st', 'Google Chrome', 'Windows 10'),
(158, '30-03-20', '02:00pm', 'Gaurav Gahlot', '6350134497', 'logout.php', 'st', 'Google Chrome', 'Windows 10'),
(159, '31-03-20', '12:18am', 'Sudarshan', '8233635235', 'profile.php', 'st', 'Google Chrome', 'Windows 10'),
(160, '31-03-20', '12:18am', 'Sudarshan', '8233635235', 'message.php', 'st', 'Google Chrome', 'Windows 10'),
(161, '01-04-20', '08:43pm', 'Sudarshan', '8233635235', 'profile.php', 'st', 'Google Chrome', 'Windows 10'),
(162, '01-04-20', '08:44pm', 'Sudarshan', '8233635235', 'message.php', 'st', 'Google Chrome', 'Windows 10'),
(163, '01-04-20', '09:22pm', 'Harsh Gu', '7568533320', 'profile.php', 'st', 'Google Chrome', 'Windows 10'),
(164, '01-04-20', '09:22pm', 'Harsh Gu', '7568533320', 'changepass.php', 'st', 'Google Chrome', 'Windows 10'),
(165, '01-04-20', '09:22pm', 'Harsh Gu', '7568533320', 'changepass.php', 'st', 'Google Chrome', 'Windows 10'),
(166, '01-04-20', '09:22pm', 'Harsh Gupta', '7568533320', 'profile.php', 'st', 'Google Chrome', 'Windows 10'),
(167, '01-04-20', '09:40pm', 'Harsh Gupta', '7568533320', 'clubs.php', 'st', 'Google Chrome', 'Windows 10'),
(168, '01-04-20', '09:40pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'st', 'Google Chrome', 'Windows 10'),
(169, '01-04-20', '09:40pm', 'Harsh Gupta', '7568533320', 'clubs.php', 'st', 'Google Chrome', 'Windows 10'),
(170, '01-04-20', '09:40pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'st', 'Google Chrome', 'Windows 10'),
(171, '01-04-20', '09:41pm', 'Harsh Gupta', '7568533320', 'clubs.php', 'st', 'Google Chrome', 'Windows 10'),
(172, '01-04-20', '09:45pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'st', 'Google Chrome', 'Windows 10'),
(173, '01-04-20', '09:45pm', 'Harsh Gupta', '7568533320', 'clubs.php', 'st', 'Google Chrome', 'Windows 10'),
(174, '01-04-20', '09:46pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'st', 'Google Chrome', 'Windows 10'),
(175, '01-04-20', '09:46pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'st', 'Google Chrome', 'Windows 10'),
(176, '01-04-20', '09:46pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'st', 'Google Chrome', 'Windows 10'),
(177, '01-04-20', '09:46pm', 'Harsh Gupta', '7568533320', 'clubs.php', 'st', 'Google Chrome', 'Windows 10'),
(178, '01-04-20', '09:46pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'st', 'Google Chrome', 'Windows 10'),
(179, '01-04-20', '09:46pm', 'Harsh Gupta', '7568533320', 'clubs.php', 'st', 'Google Chrome', 'Windows 10'),
(180, '01-04-20', '09:47pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'st', 'Google Chrome', 'Windows 10'),
(181, '01-04-20', '09:47pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'st', 'Google Chrome', 'Windows 10'),
(182, '01-04-20', '09:47pm', 'Harsh Gupta', '7568533320', 'clubs.php', 'st', 'Google Chrome', 'Windows 10'),
(183, '01-04-20', '09:47pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'st', 'Google Chrome', 'Windows 10'),
(184, '01-04-20', '09:47pm', 'Harsh Gupta', '7568533320', 'attendance.php', 'st', 'Google Chrome', 'Windows 10'),
(185, '01-04-20', '09:47pm', 'Harsh Gupta', '7568533320', 'clubs.php', 'st', 'Google Chrome', 'Windows 10'),
(186, '01-04-20', '09:47pm', 'Harsh Gupta', '7568533320', 'attendance.php', 'st', 'Google Chrome', 'Windows 10'),
(187, '01-04-20', '09:49pm', 'Harsh Gupta', '7568533320', 'clubs.php', 'st', 'Google Chrome', 'Windows 10'),
(188, '01-04-20', '09:49pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'st', 'Google Chrome', 'Windows 10'),
(189, '01-04-20', '09:49pm', 'Harsh Gupta', '7568533320', 'clubs.php', 'st', 'Google Chrome', 'Windows 10'),
(190, '01-04-20', '09:49pm', 'Harsh Gupta', '7568533320', 'attendance.php', 'st', 'Google Chrome', 'Windows 10'),
(191, '01-04-20', '09:49pm', 'Harsh Gupta', '7568533320', 'attendancedetail.php', 'st', 'Google Chrome', 'Windows 10'),
(192, '01-04-20', '09:49pm', 'Harsh Gupta', '7568533320', 'message.php', 'st', 'Google Chrome', 'Windows 10'),
(193, '01-04-20', '09:52pm', 'Harsh Gupta', '7568533320', 'certificate.php', 'st', 'Google Chrome', 'Windows 10'),
(194, '01-04-20', '09:52pm', 'Harsh Gupta', '7568533320', 'colleague.php', 'st', 'Google Chrome', 'Windows 10'),
(195, '01-04-20', '09:52pm', 'Harsh Gupta', '7568533320', 'colleague.php', 'st', 'Google Chrome', 'Windows 10'),
(196, '01-04-20', '09:52pm', 'Harsh Gupta', '7568533320', 'feedback.php', 'st', 'Google Chrome', 'Windows 10'),
(197, '01-04-20', '09:53pm', 'Harsh Gupta', '7568533320', 'notiyapa.php', 'st', 'Google Chrome', 'Windows 10'),
(198, '01-04-20', '09:53pm', 'Harsh Gupta', '7568533320', 'faq.php', 'st', 'Google Chrome', 'Windows 10'),
(199, '01-04-20', '09:55pm', 'Harsh Gupta', '7568533320', 'changepass.php', 'st', 'Google Chrome', 'Windows 10'),
(200, '01-04-20', '09:57pm', 'Harsh Gupta', '7568533320', 'profile.php', 'st', 'Google Chrome', 'Windows 10'),
(201, '01-04-20', '09:57pm', 'Harsh Gupta', '7568533320', 'message.php', 'st', 'Google Chrome', 'Windows 10'),
(202, '01-04-20', '09:57pm', 'Harsh Gupta', '7568533320', 'clubs.php', 'st', 'Google Chrome', 'Windows 10'),
(203, '01-04-20', '09:58pm', 'Harsh Gupta', '7568533320', 'feedback.php', 'st', 'Google Chrome', 'Windows 10'),
(204, '01-04-20', '09:58pm', 'Harsh Gupta', '7568533320', 'colleague.php', 'st', 'Google Chrome', 'Windows 10'),
(205, '01-04-20', '09:59pm', 'Harsh Gupta', '7568533320', 'clubs.php', 'st', 'Google Chrome', 'Windows 10'),
(206, '01-04-20', '09:59pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'st', 'Google Chrome', 'Windows 10'),
(207, '01-04-20', '09:59pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'st', 'Google Chrome', 'Windows 10'),
(208, '01-04-20', '10:00pm', 'Harsh Gupta', '7568533320', 'logout.php', 'st', 'Google Chrome', 'Windows 10'),
(209, '01-04-20', '10:00pm', 'Harsh Gupta', '7568533320', 'profile.php', 'co', 'Google Chrome', 'Windows 10'),
(210, '01-04-20', '10:00pm', 'Harsh Gupta', '7568533320', 'clubs.php', 'co', 'Google Chrome', 'Windows 10'),
(211, '01-04-20', '10:02pm', 'Harsh Gupta', '7568533320', 'attendance.php', 'co', 'Google Chrome', 'Windows 10'),
(212, '01-04-20', '10:02pm', 'Harsh Gupta', '7568533320', 'attendancedetail.php', 'co', 'Google Chrome', 'Windows 10'),
(213, '01-04-20', '10:02pm', 'Harsh Gupta', '7568533320', 'attendancedetail.php', 'co', 'Google Chrome', 'Windows 10'),
(214, '01-04-20', '10:02pm', 'Harsh Gupta', '7568533320', 'message.php', 'co', 'Google Chrome', 'Windows 10'),
(215, '01-04-20', '10:02pm', 'Harsh Gupta', '7568533320', 'students.php', 'co', 'Google Chrome', 'Windows 10'),
(216, '01-04-20', '10:02pm', 'Harsh Gupta', '7568533320', 'certificate.php', 'co', 'Google Chrome', 'Windows 10'),
(217, '01-04-20', '10:03pm', 'Harsh Gupta', '7568533320', 'colleague.php', 'co', 'Google Chrome', 'Windows 10'),
(218, '01-04-20', '10:03pm', 'Harsh Gupta', '7568533320', 'feedback.php', 'co', 'Google Chrome', 'Windows 10'),
(219, '01-04-20', '10:03pm', 'Harsh Gupta', '7568533320', 'notiyapa.php', 'co', 'Google Chrome', 'Windows 10'),
(220, '01-04-20', '10:03pm', 'Harsh Gupta', '7568533320', 'faq.php', 'co', 'Google Chrome', 'Windows 10'),
(221, '01-04-20', '10:04pm', 'Harsh Gupta', '7568533320', 'colleague.php', 'co', 'Google Chrome', 'Windows 10'),
(222, '01-04-20', '10:04pm', 'Harsh Gupta', '7568533320', 'feedback.php', 'co', 'Google Chrome', 'Windows 10'),
(223, '01-04-20', '10:04pm', 'Harsh Gupta', '7568533320', 'colleague.php', 'co', 'Google Chrome', 'Windows 10'),
(224, '01-04-20', '10:04pm', 'Harsh Gupta', '7568533320', 'logout.php', 'co', 'Google Chrome', 'Windows 10'),
(225, '01-04-20', '10:05pm', 'Harsh Gupta', '7568533320', 'profile.php', 'ad', 'Google Chrome', 'Windows 10'),
(226, '01-04-20', '10:05pm', 'Harsh Gupta', '7568533320', 'addclub.php', 'ad', 'Google Chrome', 'Windows 10'),
(227, '01-04-20', '10:05pm', 'Harsh Gupta', '7568533320', 'addadmin.php', 'ad', 'Google Chrome', 'Windows 10'),
(228, '01-04-20', '10:05pm', 'Harsh Gupta', '7568533320', 'addcoordinator.php', 'ad', 'Google Chrome', 'Windows 10'),
(229, '01-04-20', '10:06pm', 'Harsh Gupta', '7568533320', 'extrasession.php', 'ad', 'Google Chrome', 'Windows 10'),
(230, '01-04-20', '10:06pm', 'Harsh Gupta', '7568533320', 'allmembers.php', 'ad', 'Google Chrome', 'Windows 10'),
(231, '01-04-20', '10:06pm', 'Harsh Gupta', '7568533320', 'message.php', 'ad', 'Google Chrome', 'Windows 10'),
(232, '01-04-20', '10:06pm', 'Harsh Gupta', '7568533320', 'track.php', 'ad', 'Google Chrome', 'Windows 10'),
(233, '01-04-20', '10:07pm', 'Harsh Gupta', '7568533320', 'clubdata.php', 'ad', 'Google Chrome', 'Windows 10'),
(234, '01-04-20', '10:07pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'ad', 'Google Chrome', 'Windows 10'),
(235, '01-04-20', '10:07pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'ad', 'Google Chrome', 'Windows 10'),
(236, '01-04-20', '10:07pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'ad', 'Google Chrome', 'Windows 10'),
(237, '01-04-20', '10:07pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'ad', 'Google Chrome', 'Windows 10'),
(238, '01-04-20', '10:07pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'ad', 'Google Chrome', 'Windows 10'),
(239, '01-04-20', '10:07pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'ad', 'Google Chrome', 'Windows 10'),
(240, '01-04-20', '10:07pm', 'Harsh Gupta', '7568533320', 'ajax.php', 'ad', 'Google Chrome', 'Windows 10'),
(241, '01-04-20', '10:07pm', 'Harsh Gupta', '7568533320', 'faq.php', 'ad', 'Google Chrome', 'Windows 10'),
(242, '01-04-20', '10:07pm', 'Harsh Gupta', '7568533320', 'logout.php', 'ad', 'Google Chrome', 'Windows 10'),
(243, '01-04-20', '11:51pm', 'Harsh Gupta', '7568533320', 'profile.php', 'co', 'Google Chrome', 'Windows 10'),
(244, '01-04-20', '11:51pm', 'Harsh Gupta', '7568533320', 'clubs.php', 'co', 'Google Chrome', 'Windows 10'),
(245, '01-04-20', '11:51pm', 'Harsh Gupta', '7568533320', 'attendance.php', 'co', 'Google Chrome', 'Windows 10'),
(246, '01-04-20', '11:51pm', 'Harsh Gupta', '7568533320', 'attendancedetail.php', 'co', 'Google Chrome', 'Windows 10'),
(247, '01-04-20', '11:52pm', 'Harsh Gupta', '7568533320', 'attendancedetail.php', 'co', 'Google Chrome', 'Windows 10'),
(248, '01-04-20', '11:52pm', 'Harsh Gupta', '7568533320', 'message.php', 'co', 'Google Chrome', 'Windows 10'),
(249, '02-04-20', '08:28pm', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Android'),
(250, '02-04-20', '08:28pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(251, '02-04-20', '08:28pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(252, '02-04-20', '08:28pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(253, '02-04-20', '08:28pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(254, '02-04-20', '08:28pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(255, '02-04-20', '08:28pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(256, '02-04-20', '08:28pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(257, '02-04-20', '08:28pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(258, '02-04-20', '08:28pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(259, '02-04-20', '08:30pm', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Android'),
(260, '02-04-20', '08:30pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(261, '02-04-20', '08:40pm', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Android'),
(262, '02-04-20', '08:40pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(263, '02-04-20', '08:40pm', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Android'),
(264, '02-04-20', '08:40pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(265, '02-04-20', '08:42pm', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Android'),
(266, '02-04-20', '08:49pm', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Android'),
(267, '02-04-20', '08:49pm', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Android'),
(268, '02-04-20', '08:50pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(269, '02-04-20', '08:51pm', 'Gaurav Gahlot', '6350134497', 'profile.php', 'ad', 'Google Chrome', 'Android'),
(270, '02-04-20', '08:51pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(271, '02-04-20', '08:52pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(272, '02-04-20', '08:52pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(273, '02-04-20', '08:52pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(274, '02-04-20', '08:52pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'ad', 'Google Chrome', 'Android'),
(275, '02-04-20', '08:52pm', 'Gaurav Gahlot', '6350134497', 'logout.php', 'ad', 'Google Chrome', 'Android'),
(276, '05-04-20', '01:35pm', 'Gaurav Gahlot', '6350134497', 'profile.php', 'st', 'Google Chrome', 'Windows 8'),
(277, '05-04-20', '01:35pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Windows 8'),
(278, '05-04-20', '01:35pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Windows 8'),
(279, '05-04-20', '01:35pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Windows 8'),
(280, '05-04-20', '01:35pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Windows 8'),
(281, '05-04-20', '01:35pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Windows 8'),
(282, '05-04-20', '01:35pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Windows 8'),
(283, '05-04-20', '01:36pm', 'Gaurav Gahlot', '6350134497', 'message.php', 'st', 'Google Chrome', 'Windows 8'),
(284, '05-04-20', '01:36pm', 'Gaurav Gahlot', '6350134497', 'profile.php', 'st', 'Google Chrome', 'Windows 8'),
(285, '05-04-20', '01:36pm', 'Gaurav Gahlot', '6350134497', 'logout.php', 'st', 'Google Chrome', 'Windows 8'),
(286, '05-04-20', '01:37pm', 'Gaurav Gahlot', '6350134497', 'profile.php', 'st', 'Google Chrome', 'Android'),
(287, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(288, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(289, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(290, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(291, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(292, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(293, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(294, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(295, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(296, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(297, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(298, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(299, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(300, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(301, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(302, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(303, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(304, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(305, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(306, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'ajax.php', 'st', 'Google Chrome', 'Android'),
(307, '05-04-20', '01:38pm', 'Gaurav Gahlot', '6350134497', 'logout.php', 'st', 'Google Chrome', 'Android'),
(308, '05-04-20', '10:33pm', 'Rachit Gupta', '9462676404', 'profile.php', 'st', 'Mozilla Firefox', 'Unknown'),
(309, '05-04-20', '10:34pm', 'Rachit Gupta', '9462676404', 'logout.php', 'st', 'Mozilla Firefox', 'Unknown'),
(310, '05-04-20', '10:36pm', 'Rachit Gupta', '9462676404', 'profile.php', 'st', 'Mozilla Firefox', 'Unknown'),
(311, '05-04-20', '10:39pm', 'Rachit Gupta', '9462676404', 'profile.php', 'st', 'Mozilla Firefox', 'Unknown'),
(312, '05-04-20', '10:39pm', 'Rachit Gupta', '9462676404', 'profile.php', 'st', 'Mozilla Firefox', 'Unknown'),
(313, '05-04-20', '10:51pm', 'Rachit Gupta', '9462676404', 'profile.php', 'st', 'Mozilla Firefox', 'Unknown'),
(314, '05-04-20', '10:51pm', 'Rachit Gupta', '9462676404', 'logout.php', 'st', 'Mozilla Firefox', 'Unknown'),
(315, '05-04-20', '10:53pm', 'Rachit Gupta', '9462676404', 'profile.php', 'st', 'Mozilla Firefox', 'Unknown'),
(316, '05-04-20', '10:55pm', 'Rachit Gupta', '9462676404', 'logout.php', 'st', 'Mozilla Firefox', 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `webd`
--

CREATE TABLE `webd` (
  `Studentmno` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webd`
--

INSERT INTO `webd` (`Studentmno`, `Name`) VALUES
('6350134497', 'Gaurav Gahlot'),
('8233635235', 'Sudarshan'),
('7742811429', 'Mohit Agarwal');

-- --------------------------------------------------------

--
-- Table structure for table `webdattendance`
--

CREATE TABLE `webdattendance` (
  `Sno` int(11) DEFAULT NULL,
  `Date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Studentmno` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Attendance` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webdattendance`
--

INSERT INTO `webdattendance` (`Sno`, `Date`, `Studentmno`, `Attendance`) VALUES
(1, '12-03-20', '7742811429', 'P'),
(2, '12-03-20', '6350134497', 'P'),
(3, '13-03-20', '6350134497', 'A'),
(4, '13-03-20', '7742811429', 'P'),
(5, '13-03-20', '8233635235', 'P'),
(6, '14-03-20', '6350134497', 'P'),
(7, '14-03-20', '7742811429', 'P'),
(8, '14-03-20', '8233635235', 'P'),
(9, '15-03-20', '6350134497', 'P'),
(10, '15-03-20', '7742811429', 'P'),
(11, '15-03-20', '8233635235', 'A'),
(12, '18-03-20', '6350134497', 'P'),
(13, '18-03-20', '7742811429', 'P'),
(14, '18-03-20', '8233635235', 'P'),
(15, '20-03-20', '6350134497', 'A'),
(16, '20-03-20', '7742811429', 'P'),
(17, '20-03-20', '8233635235', 'P'),
(18, '21-03-20', '6350134497', 'P'),
(19, '21-03-20', '7742811429', 'P'),
(20, '21-03-20', '8233635235', 'P'),
(21, '16-03-20', '6350134497', 'P'),
(22, '16-03-20', '7742811429', 'P'),
(23, '16-03-20', '8233635235', 'P'),
(24, '22-03-20', '6350134497', 'P'),
(25, '22-03-20', '7742811429', 'P'),
(26, '22-03-20', '8233635235', 'P'),
(27, '23-03-20', '6350134497', 'P'),
(28, '23-03-20', '7300255262', 'P'),
(29, '23-03-20', '7742811429', 'A'),
(30, '23-03-20', '8233635235', 'P'),
(31, '24-03-20', '6350134497', 'A'),
(32, '24-03-20', '7300255262', 'P'),
(33, '24-03-20', '7742811429', 'P'),
(34, '24-03-20', '8233635235', 'A'),
(35, '25-03-20', '6350134497', 'P'),
(36, '25-03-20', '7300255262', 'P'),
(37, '25-03-20', '7742811429', 'P'),
(38, '25-03-20', '8233635235', 'P'),
(39, '26-03-20', '6350134497', 'P'),
(40, '26-03-20', '7300255262', 'P'),
(41, '26-03-20', '7742811429', 'P'),
(42, '26-03-20', '8233635235', 'P'),
(43, '27-03-20', '6350134497', 'P'),
(44, '27-03-20', '7300255262', 'A'),
(45, '27-03-20', '7742811429', 'P'),
(46, '27-03-20', '8233635235', 'A'),
(47, '28-03-20', '6350134497', 'P'),
(48, '28-03-20', '7742811429', 'P'),
(49, '28-03-20', '8233635235', 'P'),
(50, '29-03-20', '6350134497', 'P'),
(51, '29-03-20', '7742811429', 'P'),
(52, '29-03-20', '8233635235', 'P'),
(53, '30-03-20', '6350134497', 'P'),
(54, '30-03-20', '7742811429', 'P'),
(55, '30-03-20', '8233635235', 'P'),
(56, '31-03-20', '6350134497', 'A'),
(57, '31-03-20', '7742811429', 'P'),
(58, '31-03-20', '8233635235', 'A'),
(59, '05-04-20', '6350134497', 'P'),
(60, '05-04-20', '7742811429', 'P'),
(61, '05-04-20', '8233635235', 'P');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admindetails`
--
ALTER TABLE `admindetails`
  ADD PRIMARY KEY (`Mobile`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`Clubid`);

--
-- Indexes for table `codetails`
--
ALTER TABLE `codetails`
  ADD PRIMARY KEY (`Mobile`);

--
-- Indexes for table `extrasession`
--
ALTER TABLE `extrasession`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `fcmtoken`
--
ALTER TABLE `fcmtoken`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `studetails`
--
ALTER TABLE `studetails`
  ADD PRIMARY KEY (`Mobile`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`Mobile`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`Sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `extrasession`
--
ALTER TABLE `extrasession`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fcmtoken`
--
ALTER TABLE `fcmtoken`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
