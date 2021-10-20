-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 20, 2021 at 08:17 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `surega`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pin` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `age`, `sex`, `country`, `phone`, `pin`) VALUES
(1, 'Attract ', 5, 'Nuter ', 'India ', '0422 ', '641002'),
(4, 'Kavi Amudan', 22, 'Female    ', 'India     ', '93555825     ', '641002'),
(5, 'Keerthana  ', 22, 'Female  ', 'India  ', '93555825  ', '641002'),
(8, 'Surega', 22, 'never', 'India', '0422', '641002'),
(10, 'Mogan', 22, '55', '2', '22', '55'),
(11, 'SUreg', 22, 'today ', 'India', '02552', '641002'),
(12, 'sure', 125, 'f', 'Indua', '0422', '641'),
(13, 'Ravi', 55, 'M', 'iNIA', '0422', '641002'),
(14, ' Suj ', 12, 'F ', 'India', '11 ', '25 '),
(15, ' Suj ', 12, 'F ', 'India', '11 ', '25 '),
(16, ' Suj ', 12, 'F ', 'India', '11 ', '25 '),
(17, ' Surega ', 15, 'Fe ', 'India ', '9255 ', '25656 '),
(18, 'ravi', 33, '55', 'inda', '0999987', '675'),
(19, 'ravi', 33, '55', 'inda', '0999987', '675'),
(20, 'ravi', 33, '55', 'inda', '0999987', '675'),
(21, 'Surega', 22, 'F', 'iNDIA', '999', '624'),
(22, 'Mathan', 25, 'M', 'Inaid', '9858', '2565'),
(23, 'Mathan', 25, 'M', 'Inaid', '9858', '2565'),
(24, 'Ravindran.C', 47, 'Male.', 'India', '9944416123', '641002');

-- --------------------------------------------------------

--
-- Table structure for table `marke`
--

CREATE TABLE `marke` (
  `id` int(11) NOT NULL,
  `exam` varchar(100) DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `mark1` int(11) DEFAULT NULL,
  `mark2` int(11) DEFAULT NULL,
  `mark3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marke`
--

INSERT INTO `marke` (`id`, `exam`, `stu_id`, `mark1`, `mark2`, `mark3`) VALUES
(4, 'q', 2, 100, 50, 50),
(6, 'h', 2, 80, 30, 50);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `name`, `address`, `phone`) VALUES
(2, 'Ravi', 'GM', '99444'),
(3, 'Aravinth', 'CBE', '9745'),
(4, 'Lakshman', 'Tiru', '9745');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marke`
--
ALTER TABLE `marke`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marke_student_stu_id_fk` (`stu_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `marke`
--
ALTER TABLE `marke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `marke`
--
ALTER TABLE `marke`
  ADD CONSTRAINT `marke_student_stu_id_fk` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
