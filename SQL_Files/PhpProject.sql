-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2019 at 09:25 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PhpProject`
--

-- --------------------------------------------------------

--
-- Table structure for table `Login`
--

CREATE TABLE `Login` (
  `Username` varchar(30) NOT NULL,
  `Password` varchar(1000) NOT NULL,
  `Designation` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Salary` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Login`
--

INSERT INTO `Login` (`Username`, `Password`, `Designation`, `Email`, `Salary`) VALUES
('kumar', 'kumar\r\n', 'chef', '1', '50000'),
('nem', 'nem', 'chef', '1', '11232'),
('nemish', 'nemish', 'admin', '13101999znemish@gmail.com', '0'),
('worker', 'wo', 'worker', '1', '12000');

-- --------------------------------------------------------

--
-- Table structure for table `Menu`
--

CREATE TABLE `Menu` (
  `Category` varchar(30) NOT NULL,
  `ItemName` varchar(30) NOT NULL,
  `Price` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Menu`
--

INSERT INTO `Menu` (`Category`, `ItemName`, `Price`) VALUES
('gujarati', 'bateta', 25),
('gujarati', 'bhakhari', 15),
('gujarati', 'bhel', 12),
('dessert', 'choco', 40),
('dessert', 'chocobar', 56),
('punjabi', 'makhani', 100),
('italic', 'meggie', 25),
('punjabi', 'paneer', 150),
('Punjabi', 'Panner_Bhurji', 150),
('punjabi', 'Panner_Tadka', 180),
('punjabi', 'parotha', 30),
('Italian', 'Pasta_big', 160),
('punjabi', 'randhvo', 30),
('dessert', 'Rassperrybar', 120),
('gujarati', 'rotalo', 34),
('dessert', 'Vanila', 60);

-- --------------------------------------------------------

--
-- Table structure for table `Ordering`
--

CREATE TABLE `Ordering` (
  `OrderNo` int(3) NOT NULL,
  `Food` varchar(3000) NOT NULL,
  `Dessert` varchar(3000) NOT NULL,
  `Total_Price` int(6) NOT NULL,
  `Ch` int(1) NOT NULL DEFAULT '1',
  `Date_of_Order` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ordering`
--

INSERT INTO `Ordering` (`OrderNo`, `Food`, `Dessert`, `Total_Price`, `Ch`, `Date_of_Order`) VALUES
(44, 'Total Food Price=40', 'Total Dessert Price=40', 80, 0, '2019-04-09'),
(45, 'bateta 25*1.bhakhari 15*1.Total Food Price=40', 'Rassperrybar    120*120.Total Dessert Price=120', 160, 0, '2019-04-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Login`
--
ALTER TABLE `Login`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `Menu`
--
ALTER TABLE `Menu`
  ADD PRIMARY KEY (`ItemName`);

--
-- Indexes for table `Ordering`
--
ALTER TABLE `Ordering`
  ADD PRIMARY KEY (`OrderNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Ordering`
--
ALTER TABLE `Ordering`
  MODIFY `OrderNo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
