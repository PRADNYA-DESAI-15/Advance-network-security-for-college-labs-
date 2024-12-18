-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2023 at 04:55 PM
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
(1, 'sumit patil', 9922746393, 1234, 'sumit9@gmail.com', 'BSC', 'CS', '2022-12-26', '17:15:13', '2023-03-13', '15:43:36'),
(2, 'Amit Patil', 8956231245, 123456, 'amit29@gmail.com', 'BSC', 'CS', '2022-12-26', '17:16:51', '2022-12-26', '19:17:16'),
(3, 'sumit patil', 9922746393, 1234, 'sumit9@gmail.com', 'BSC', 'CS', '2022-12-26', '17:16:51', '2023-03-13', '15:43:36'),
(4, 'sumit patil', 9922746393, 1234, 'sumit9@gmail.com', 'BSC', 'CS', '2023-03-13', '15:43:21', '2023-03-13', '15:43:36'),
(5, 'Amit Patil', 8956231245, 1234567, 'amit29@gmail.com', 'BSC 2', 'CS', '2023-03-14', '11:54:57', '2023-04-21', '19:06:50'),
(6, 'Amit Patil', 8956231245, 1234567, 'amit29@gmail.com', 'BSC 2', 'CS', '2023-03-14', '11:59:29', '2023-04-21', '19:06:50'),
(7, 'Amit Patil', 8956231245, 1234567, 'amit29@gmail.com', 'BSC 2', 'CS', '2023-03-14', '12:05:42', '2023-04-21', '19:06:50'),
(8, 'Amit Patil', 8956231245, 1234567, 'amit29@gmail.com', 'BSC 2', 'CS', '2023-03-14', '12:06:40', '2023-04-21', '19:06:50'),
(9, 'Amit Patil', 8956231245, 1234567, 'amit29@gmail.com', 'BSC 2', 'CS', '2023-03-14', '12:07:41', '2023-04-21', '19:06:50'),
(10, 'Amit Patil', 8956231245, 1234567, 'amit29@gmail.com', 'BSC 2', 'CS', '2023-03-14', '12:29:40', '2023-04-21', '19:06:50'),
(11, 'Sumit Amit Patil', 9865321245, 789456, 'sumit123@gmail.com', 'BSC', 'CS', '2023-03-16', '19:46:52', '2023-03-16', '19:47:11'),
(12, 'Amit Patil', 8956231245, 1234567, 'amit29@gmail.com', 'BSC 2', 'CS', '2023-04-20', '13:03:15', '2023-04-21', '19:06:50'),
(13, 'Amit Patil', 8956231245, 1234567, 'amit29@gmail.com', 'BSC 2', 'CS', '2023-04-20', '13:23:28', '2023-04-21', '19:06:50'),
(14, 'Amit Patil', 8956231245, 1234567, 'amit29@gmail.com', 'BSC 2', 'CS', '2023-04-20', '13:24:03', '2023-04-21', '19:06:50'),
(15, 'Amit Patil', 8956231245, 1234567, 'amit29@gmail.com', 'BSC 2', 'CS', '2023-04-20', '13:24:12', '2023-04-21', '19:06:50'),
(16, 'Amit Patil', 8956231245, 1234567, 'amit29@gmail.com', 'BSC 2', 'CS', '2023-04-20', '13:42:55', '2023-04-21', '19:06:50'),
(17, 'Amit Patil', 8956231245, 1234567, 'amit29@gmail.com', 'BSC 2', 'CS', '2023-04-21', '19:05:23', '2023-04-21', '19:06:50');

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
(1, 'Amit Patil', 'Gadhinglaj', 8956231245, 'amit29@gmail.com', 1234567, 'BSC 2', 'CS', 1),
(5, 'Sumit Amit Patil', 'Gadhinglaj', 9865321245, 'sumit123@gmail.com', 789456, 'BSC', 'CS', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
