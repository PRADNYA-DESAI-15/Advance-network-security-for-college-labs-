-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2023 at 08:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qrsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `caltime`
--

CREATE TABLE `caltime` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `prn` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `date1` date NOT NULL,
  `time1` time NOT NULL,
  `date2` date NOT NULL,
  `time2` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `caltime`
--

INSERT INTO `caltime` (`id`, `name`, `contact`, `prn`, `email`, `class`, `dept`, `date1`, `time1`, `date2`, `time2`) VALUES
(1, 'sumit patil', 9922746393, 1234, 'sumit9@gmail.com', 'BSC', 'CS', '2022-12-26', '17:15:13', '2022-12-26', '17:17:11'),
(2, 'Amit Patil', 8956231245, 123456, 'amit29@gmail.com', 'BSC', 'CS', '2022-12-26', '17:16:51', '2022-12-26', '19:17:16'),
(3, 'sumit patil', 9922746393, 1234, 'sumit9@gmail.com', 'BSC', 'CS', '2022-12-26', '17:16:51', '2022-12-26', '18:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `prn` bigint(20) NOT NULL,
  `class` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `address`, `contact`, `email`, `prn`, `class`, `dept`, `status`) VALUES
(1, 'Amit Patil', 'Gadhinglaj', 8956231245, 'amit29@gmail.com', 123456, 'BSC', 'CS', 1),
(2, 'sumit patil', 'Gadhinglaj ', 9922746393, 'sumit9@gmail.com', 1234, 'BSC', 'CS', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caltime`
--
ALTER TABLE `caltime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caltime`
--
ALTER TABLE `caltime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
