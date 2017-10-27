-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2017 at 02:54 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `comp_id` int(11) NOT NULL,
  `username` int(6) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `email` varchar(36) NOT NULL,
  `password` varchar(24) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `zip` int(6) NOT NULL,
  `state` varchar(60) NOT NULL,
  `address` varchar(150) NOT NULL,
  `latitude` varchar(20) NOT NULL DEFAULT '0',
  `longitude` varchar(20) DEFAULT '0',
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `addharno` bigint(12) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(140) NOT NULL,
  `state` varchar(50) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `zip` int(6) NOT NULL,
  `skill` varchar(24) NOT NULL,
  `comp_id` int(11) NOT NULL,
  `iti_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE `institute` (
  `iti_id` int(11) NOT NULL,
  `username` varchar(6) NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `email` varchar(36) NOT NULL,
  `password` varchar(24) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `zip` int(6) NOT NULL,
  `state` varchar(60) NOT NULL,
  `address` varchar(150) NOT NULL,
  `latitude` varchar(20) NOT NULL DEFAULT '0',
  `longitude` varchar(20) DEFAULT '0',
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`iti_id`, `username`, `fullname`, `email`, `password`, `contact`, `zip`, `state`, `address`, `latitude`, `longitude`, `visibility`, `added_on`) VALUES
(1, '147258', 'Avinash Barfa', 'avinash.barfa@sitpune.edu.in', 'abcdef', 9179686919, 411045, 'Madhya Pradesh', 'B4-903 Aldea Espanola Puraniks, near orchid hotel Baner', '0', '0', 1, '2017-10-19 12:25:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`comp_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `addharno` (`addharno`);

--
-- Indexes for table `institute`
--
ALTER TABLE `institute`
  ADD PRIMARY KEY (`iti_id`),
  ADD UNIQUE KEY `iti_number` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `institute`
--
ALTER TABLE `institute`
  MODIFY `iti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
