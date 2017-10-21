-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2017 at 07:02 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unnati`
--

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE `institute` (
  `iti_id` int(11) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `email` varchar(36) NOT NULL,
  `password` varchar(24) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `zip` int(6) NOT NULL,
  `state` varchar(60) NOT NULL,
  `address` varchar(150) NOT NULL,
  `latitude` decimal(10,0) NOT NULL DEFAULT '0',
  `longitude` decimal(10,0) DEFAULT '0',
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`iti_id`, `fullname`, `email`, `password`, `contact`, `zip`, `state`, `address`, `latitude`, `longitude`, `visibility`, `added_on`) VALUES
(1, 'Avinash Barfa', 'avinash.barfa@sitpune.edu.in', 'sdsjfj', 9179686919, 411045, 'Madhya Pradesh', 'B4-903 Aldea Espanola Puraniks, near orchid hotel Baner', '0', '0', 1, '2017-10-19 12:25:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `institute`
--
ALTER TABLE `institute`
  ADD PRIMARY KEY (`iti_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `institute`
--
ALTER TABLE `institute`
  MODIFY `iti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
