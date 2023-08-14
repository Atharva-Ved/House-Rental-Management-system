-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2023 at 08:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `cost`
--

CREATE TABLE `cost` (
  `House_No` varchar(40) NOT NULL,
  `Month` varchar(40) NOT NULL,
  `Year` int(40) NOT NULL,
  `Perpous` varchar(40) NOT NULL,
  `Amount` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `houseinfo`
--

CREATE TABLE `houseinfo` (
  `House_No` varchar(40) NOT NULL,
  `Floor` varchar(40) NOT NULL,
  `Unit` varchar(40) NOT NULL,
  `Details` varchar(40) NOT NULL,
  `Rent` decimal(40,0) NOT NULL,
  `About` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `houserent`
--

CREATE TABLE `houserent` (
  `House_No` decimal(50,0) NOT NULL,
  `Floor` varchar(10) NOT NULL,
  `Unit` char(10) NOT NULL,
  `Tentant_Name` text NOT NULL,
  `Contact` decimal(12,0) NOT NULL,
  `N_Id` varchar(30) NOT NULL,
  `Family_Member` int(15) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `houserent`
--

INSERT INTO `houserent` (`House_No`, `Floor`, `Unit`, `Tentant_Name`, `Contact`, `N_Id`, `Family_Member`, `Date`) VALUES
('101', '1st', 'A', 'praitk', '11231', '123', 4, '2017-01-01'),
('102', '1st', 'A', 'praniv', '123567891', '213', 2, '2017-02-02'),
('204', '1st', 'A', 'anishika', '3214569871', '312', 5, '2017-05-04'),
('101', '1st', 'A', 'anurag', '245321789', '45', 3, '2018-05-20'),
('501', '1st', 'A', 'siddhi', '1234567891', '505', 4, '2017-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `House_No` decimal(65,0) NOT NULL,
  `Floor` varchar(10) NOT NULL,
  `Unit` varchar(10) NOT NULL,
  `Status` char(15) NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`House_No`, `Floor`, `Unit`, `Status`, `Date`) VALUES
('101', '1st', 'A', 'WILL GO.....', '2017-01-01'),
('101', '1st', 'A', 'WILL GO.....', '2017-02-02'),
('101', '3rd', 'A', 'WILL GO.....', '2017-02-03'),
('107', '5th', 'B', 'WILL GO.....', '2017-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `Month` decimal(12,0) NOT NULL,
  `Year` decimal(65,0) NOT NULL,
  `House_No` decimal(65,0) NOT NULL,
  `Floor` varchar(10) NOT NULL,
  `Unit` char(10) NOT NULL,
  `Rent` int(65) NOT NULL,
  `Electricity_Bill` int(65) NOT NULL,
  `Gas_Bill` int(65) NOT NULL,
  `Water_bill` int(65) NOT NULL,
  `Other_Charges` int(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Name` text NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Sec_Q` text NOT NULL,
  `Answer` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `Username`, `Sec_Q`, `Answer`, `Password`) VALUES
('pratik', 'pratik', 'What is your nick name?', 'pratik', 'pratik'),
('Darshan', 'darshan', 'Who is your favourate teacher?', 'KBD', 'kbd'),
('sushant', 'mhatre', 'Who is your favourate teacher?', 'Charul', 'charul'),
('praniv', 'praniv ', 'What is your nick name?', 'pran', 'praniv'),
('siddhi', 'sid', 'What is your nick name?', 'sidhi', '123456');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
