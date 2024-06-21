-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 12:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atm`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bID` int(20) NOT NULL,
  `signID` int(50) DEFAULT NULL,
  `pin` varchar(100) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bID`, `signID`, `pin`, `date`, `type`, `amount`) VALUES
(7, NULL, '99999999', 'Fri May 31 17:37:56 SGT 2024', 'Deposit', '1000'),
(8, NULL, '73dZiJQ4JdKHHhz6dUc+wA==', '2024-05-31', 'Withdraw', '1'),
(9, NULL, '73dZiJQ4JdKHHhz6dUc+wA==', '2024-05-31', 'Withdraw', '12323'),
(10, 8, '88888888', 'Mon Jun 03 13:42:36 SGT 2024', 'Deposit', '500'),
(11, 8, '88888888', 'Mon Jun 03 13:42:52 SGT 2024', 'Deposit', '500'),
(12, NULL, 'G72IZGCCcBXl1gXtRCUiUQ==', '2024-06-03', 'Withdraw', '500'),
(13, 8, 'G72IZGCCcBXl1gXtRCUiUQ==', '2024-06-03', 'Withdraw', '500'),
(14, 8, '88888888', 'Mon Jun 03 13:52:19 SGT 2024', 'Deposit', '1000'),
(15, 8, 'G72IZGCCcBXl1gXtRCUiUQ==', '2024-06-03', 'Withdraw', '500'),
(16, 8, '88888888', 'Mon Jun 03 13:52:59 SGT 2024', 'Deposit', '100'),
(17, 8, 'G72IZGCCcBXl1gXtRCUiUQ==', '2024-06-03', 'Withdraw', '100'),
(18, 8, 'jdz/OoD0GJyhydTZAsPJCQ==', 'Mon Jun 03 13:59:58 SGT 2024', 'Withdraw', '500'),
(19, 11, '55555555', 'Mon Jun 03 14:26:36 SGT 2024', 'Deposit', '500'),
(20, 11, 'AcAndtcpDpmcYK+EE5J98dOJaQqrjKwSUDBmz2LomfY=', '2024-06-03', 'Withdraw', '500'),
(21, 11, '55555555', 'Mon Jun 03 14:26:54 SGT 2024', 'Deposit', '1000'),
(22, 11, '55555555', 'Mon Jun 03 14:26:58 SGT 2024', 'Withdraw', '500'),
(23, 12, '12121212', 'Mon Jun 03 14:49:21 SGT 2024', 'Deposit', '1500'),
(24, 12, 'BU47MIcINw6gKdwuvRZGxJjVnXIDyeGkTPBITfmOWBo=', '2024-06-03', 'Withdraw', '100'),
(25, 12, '12121212', 'Mon Jun 03 14:49:39 SGT 2024', 'Withdraw', '100'),
(26, 12, '12121212', 'Mon Jun 03 14:50:18 SGT 2024', 'Withdraw', '1000'),
(27, 12, '12121212', 'Mon Jun 03 14:50:29 SGT 2024', 'Withdraw', '100'),
(28, 15, '2', 'Mon Jun 03 15:06:42 SGT 2024', 'Deposit', '500'),
(29, 15, '1HNeOiZeFu7gP1lxi5tdAwGcB9i2xR+Q2jpmbuwTqzU=', '2024-06-03', 'Withdraw', '100'),
(30, 15, '2', 'Mon Jun 03 15:06:56 SGT 2024', 'Withdraw', '100'),
(31, 15, '2', 'Mon Jun 03 15:07:45 SGT 2024', 'Deposit', '700'),
(32, 15, '1HNeOiZeFu7gP1lxi5tdAwGcB9i2xR+Q2jpmbuwTqzU=', '2024-06-03', 'Withdraw', '500'),
(33, 15, '1HNeOiZeFu7gP1lxi5tdAwGcB9i2xR+Q2jpmbuwTqzU=', '2024-06-03', 'Withdraw', '500'),
(34, 15, '2', 'Mon Jun 03 15:09:30 SGT 2024', 'Deposit', '100'),
(35, 15, '2', 'Mon Jun 03 15:09:34 SGT 2024', 'Deposit', '900'),
(36, 15, '1HNeOiZeFu7gP1lxi5tdAwGcB9i2xR+Q2jpmbuwTqzU=', '2024-06-03', 'Withdraw', '500'),
(37, 15, '2', 'Mon Jun 03 15:09:41 SGT 2024', 'Withdraw', '100'),
(38, 15, '2', 'Mon Jun 03 15:53:36 SGT 2024', 'Deposit', '500'),
(39, 15, '2', 'Mon Jun 03 15:55:03 SGT 2024', 'Deposit', '100'),
(40, 15, '1HNeOiZeFu7gP1lxi5tdAwGcB9i2xR+Q2jpmbuwTqzU=', '2024-06-03', 'Withdraw', '500'),
(41, 15, '2', 'Mon Jun 03 15:59:39 SGT 2024', 'Withdraw', '100'),
(42, 20, '1', 'Mon Jun 03 17:30:50 SGT 2024', 'Deposit', '1'),
(43, 20, '1', 'Mon Jun 03 17:30:57 SGT 2024', 'Deposit', '999'),
(44, 20, 'a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=', '2024-06-03', 'Withdraw', '500'),
(45, 20, '1', 'Mon Jun 03 17:31:10 SGT 2024', 'Withdraw', '100'),
(46, 21, '5', 'Mon Jun 03 17:34:11 SGT 2024', 'Deposit', '100'),
(47, 21, '5', 'Mon Jun 03 17:34:17 SGT 2024', 'Deposit', '900'),
(48, 21, '5', 'Mon Jun 03 17:39:00 SGT 2024', 'Deposit', '100'),
(49, 21, '5', 'Mon Jun 03 17:39:28 SGT 2024', 'Deposit', '5'),
(50, 21, '5', 'Mon Jun 03 17:39:44 SGT 2024', 'Withdraw', '500'),
(51, 21, '7y0SfeN7lCuq0GFF5UsMYZofIjJ7LrvPvsePVWSv450=', '2024-06-03', 'Withdraw', '12'),
(52, 21, '1', 'Mon Jun 03 17:40:52 SGT 2024', 'Deposit', '12'),
(53, 21, 'a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=', '2024-06-03', 'Withdraw', '12'),
(54, 21, '1', 'Mon Jun 03 17:41:10 SGT 2024', 'Withdraw', '500'),
(55, 21, '1', 'Mon Jun 03 17:43:03 SGT 2024', 'Deposit', '100'),
(56, 21, '1', 'Mon Jun 03 17:43:12 SGT 2024', 'Deposit', '100'),
(57, 21, '1', 'Mon Jun 03 17:43:18 SGT 2024', 'Withdraw', '100'),
(58, 22, 'null', 'Fri Jun 21 15:42:50 CST 2024', 'Deposit', '1000'),
(59, 22, '9co490ih1ur3JrikL7V1w8cfGGSoFDMBeC3hPaLZICs=', '2024-06-21', 'Withdraw', '100'),
(60, 22, '9co490ih1ur3JrikL7V1w8cfGGSoFDMBeC3hPaLZICs=', '2024-06-21', 'Withdraw', '100'),
(61, 22, '20', 'Fri Jun 21 16:12:31 CST 2024', 'Withdraw', '00'),
(62, 22, '20', 'Fri Jun 21 16:12:37 CST 2024', 'Withdraw', '0'),
(63, 22, '20', 'Fri Jun 21 16:12:43 CST 2024', 'Withdraw', '0'),
(64, 22, '20', 'Fri Jun 21 16:12:49 CST 2024', 'Withdraw', '00'),
(65, 22, '20', 'Fri Jun 21 16:15:04 CST 2024', 'Withdraw', '0'),
(66, 22, 'null', 'Fri Jun 21 16:15:56 CST 2024', 'Withdraw', '0'),
(67, 22, 'null', 'Fri Jun 21 16:16:01 CST 2024', 'Withdraw', '00'),
(68, 22, 'null', 'Fri Jun 21 16:16:04 CST 2024', 'Withdraw', '00'),
(69, 22, 'null', 'Fri Jun 21 16:16:07 CST 2024', 'Withdraw', '0'),
(70, 22, '20', 'Fri Jun 21 16:16:25 CST 2024', 'Withdraw', '100'),
(71, 22, 'null', 'Fri Jun 21 16:16:39 CST 2024', 'Withdraw', '500'),
(72, 22, '20', 'Fri Jun 21 16:17:00 CST 2024', 'Withdraw', '00'),
(73, 22, '20', 'Fri Jun 21 16:18:57 CST 2024', 'Deposit', '800'),
(74, 22, 'null', 'Fri Jun 21 16:19:06 CST 2024', 'Withdraw', '500'),
(75, 22, 'null', 'Fri Jun 21 16:19:45 CST 2024', 'Withdraw', '100'),
(76, 22, 'null', 'Fri Jun 21 16:20:53 CST 2024', 'Withdraw', '100'),
(77, 22, '20', 'Fri Jun 21 16:28:09 CST 2024', 'Withdraw', '100'),
(78, 22, 'null', 'Fri Jun 21 16:29:48 CST 2024', 'Deposit', '800'),
(79, 22, '20', 'Fri Jun 21 16:31:14 CST 2024', 'Withdraw', '100'),
(80, 22, '9co490ih1ur3JrikL7V1w8cfGGSoFDMBeC3hPaLZICs=', '2024-06-21', 'Withdraw', '100'),
(81, 22, 'null', 'Fri Jun 21 16:37:56 CST 2024', 'Withdraw', '100'),
(82, 22, '9co490ih1ur3JrikL7V1w8cfGGSoFDMBeC3hPaLZICs=', '2024-06-21', 'Withdraw', '100'),
(83, 22, '20', 'Fri Jun 21 17:07:01 CST 2024', 'Deposit', '100'),
(84, 22, 'null', 'Fri Jun 21 17:07:10 CST 2024', 'Withdraw', '100');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(50) NOT NULL,
  `signID` int(20) NOT NULL,
  `formno` varchar(20) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `signID`, `formno`, `pin`, `status`, `type`) VALUES
(1, 0, '7179', 'TgdAhWK+24tgzgXB3s/jrRa3IjCWfeAfZAt+Rym0n84=', 'pending', 'admin'),
(2, 0, '6191', 'SyJ3d9TdH8Ycb4hPSGQdArTRIdP9Moywi1Ux/Kzav4o=', 'pending', 'admin'),
(3, 0, '8476', 'a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=', 'active', 'user'),
(4, 0, '3588', '9co490ih1ur3JrikL7V1w8cfGGSoFDMBeC3hPaLZICs=', 'pending', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `signID` int(20) NOT NULL,
  `formno` varchar(50) DEFAULT NULL,
  `pin` varchar(100) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`signID`, `formno`, `pin`, `dob`, `gender`, `email`, `type`, `status`, `image`) VALUES
(2, '769', 'XoZnpDnGj1FF3S/L7PAiCQ==', 'Aug 26, 2024', 'Male', 'leevan@gmail.com', 'user', 'active', 'src/UsersImage/aaaaaaa.PNG'),
(3, '4716', 'JdVa0oOqQAr0ZMdtcTwHrQ==', 'Nov 2, 2024', 'Male', 'carl@gmail.com', 'admin', 'ACTIVE', 'src/UsersImage/212.JPG'),
(4, '3878', 'UIc8kiZNUgr//ltXpLSbyQ==', '05-06-2024', 'leevanamizola@gmail.com', 'male', 'admin', 'pending', 'src/UsersImage/ATM.JPG'),
(5, '7309', '1B2M2Y8AsgTpgAmY7PhCfg==', 'May 12, 2024', 'Male', 'rfaesf@gmail.com', 'admin', 'pending', 'src/UsersImage/FLOW CHART2.JPG'),
(6, '9502', 'G72IZGCCcBXl1gXtRCUiUQ==', 'May 8, 2024', 'Male', 'sfadsfs@gmail.com', 'admin', 'ACTIVE', 'src/UsersImage/FLOW CHART.JPG'),
(7, '2153', '73dZiJQ4JdKHHhz6dUc+wA==', 'May 1, 2024', 'Male', 'ew@gmail.com', 'user', 'pending', 'src/UsersImage/31.png'),
(8, '2247', 'G72IZGCCcBXl1gXtRCUiUQ==', '05-04-23', 'male', '05-04-23', 'user', 'active', 'src/UsersImage/FLOW CHART2.JPG'),
(9, '9100', 'M6fT2kdqMqwjez9gOhvmL60AKZ4NS1qNuNkTEE7exik=', 'Nov 29, 2024', 'Male', 'dygaeseyut@gmail.comm', 'user', 'pending', 'src/UsersImage/regun.jpg'),
(10, '9644', '7nmXbJOA1eM3/BwJXs6MjyL5HzBs7rFh+lH+zt4sS6E=', 'Jun 18, 2024', 'Male', '1', 'admin', 'pending', 'src/UsersImage/tisoyins.jpg'),
(11, '119', 'AcAndtcpDpmcYK+EE5J98dOJaQqrjKwSUDBmz2LomfY=', 'Jun 19, 2024', 'Male', 'eqw', 'user', 'pending', 'src/UsersImage/sideview.jpg'),
(12, '3336', 'dFJvFsmE35sFeUmxm888fNEFBFPV0Qaac251P91N9Ec=', 'Jul 8, 2024', 'Male', 'wwead@gmail.com', 'user', 'pending', 'src/UsersImage/sir.jpg'),
(13, '9901', 'a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=', 'Sep 18, 2024', 'Male', '1', 'user', 'pending', 'src/UsersImage/woww.jpg'),
(14, '4232', 'a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=', 'Jun 18, 2024', 'Male', '1', 'user', 'pending', 'src/UsersImage/sir.jpg'),
(15, '5001', '1HNeOiZeFu7gP1lxi5tdAwGcB9i2xR+Q2jpmbuwTqzU=', 'Jun 5, 2024', 'Male', '2', 'user', 'pending', 'src/UsersImage/regun.jpg'),
(16, '4720', 'a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=', 'Jun 5, 2024', 'Male', '1', 'user', 'pending', 'src/UsersImage/gwapo.jpg'),
(17, '4720', 'a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=', 'Jun 5, 2024', 'Male', '1', 'user', 'pending', 'src/UsersImage/gwapo.jpg'),
(18, '7179', 'TgdAhWK+24tgzgXB3s/jrRa3IjCWfeAfZAt+Rym0n84=', 'Jun 10, 2024', 'Male', '3', 'user', 'pending', 'src/UsersImage/tisoyins.jpg'),
(19, '6191', 'SyJ3d9TdH8Ycb4hPSGQdArTRIdP9Moywi1Ux/Kzav4o=', 'Jun 19, 2024', 'Female', 'dqwweqrq@gmail.com', 'admin', 'pending', 'src/UsersImage/212.JPG'),
(20, '8476', 'a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=', 'Jun 11, 2024', 'female', 'Jun 11, 2024', 'user', 'ACTIVE', 'src/UsersImage/gwapo.jpg'),
(21, '4299', 'a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=', 'Jun 12, 2024', 'Male', '5', 'user', 'active', 'src/UsersImage/regun.jpg'),
(22, '3588', '9co490ih1ur3JrikL7V1w8cfGGSoFDMBeC3hPaLZICs=', 'Jun 7, 2024', 'Male', 't@gmail.com', 'user', 'active', 'src/UsersImage/2.png'),
(23, '1603', '7y0SfeN7lCuq0GFF5UsMYZofIjJ7LrvPvsePVWSv450=', 'Jun 11, 2024', 'Male', '6rwe@gmail.com', 'user', 'pending', 'src/UsersImage/Log out@1x.png'),
(24, '1603', '7y0SfeN7lCuq0GFF5UsMYZofIjJ7LrvPvsePVWSv450=', 'Jun 11, 2024', 'Male', '6rwe@gmail.com', 'user', 'pending', 'src/UsersImage/Log out@1x.png'),
(25, '1603', '7y0SfeN7lCuq0GFF5UsMYZofIjJ7LrvPvsePVWSv450=', 'Jun 11, 2024', 'Male', '6rwe@gmail.com', 'user', 'pending', 'src/UsersImage/Log out@1x.png'),
(26, '7951', '47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=', 'Jun 2, 2024', 'Male', 'fase@gmail.com', 'user', 'pending', 'src/UsersImage/icons8-fish-100.png'),
(27, '2203', '47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=', 'Jun 3, 2024', 'Male', 'dsfgs@gmail.com', 'user', 'pending', 'src/UsersImage/icons8-splash-96.png'),
(28, '4872', '47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=', 'Jun 3, 2024', 'Male', 'asda@gmail.com', 'user', 'pending', 'src/UsersImage/Screen 1.4@1x.png'),
(29, '4872', '9co490ih1ur3JrikL7V1w8cfGGSoFDMBeC3hPaLZICs=', 'Jun 3, 2024', 'Male', 'asda@gmail.com', 'user', 'pending', 'src/UsersImage/Screen 1.4@1x.png'),
(30, '5528', 'TgdAhWK+24tgzgXB3s/jrRa3IjCWfeAfZAt+Rym0n84=', 'Jun 4, 2024', 'Male', 'sdag@gmail.com', 'user', 'pending', 'src/UsersImage/screen 1.2@1x.png'),
(31, '6982', 'SyJ3d9TdH8Ycb4hPSGQdArTRIdP9Moywi1Ux/Kzav4o=', 'Jun 4, 2024', 'Male', 'fsdf@gmail.com', 'user', 'pending', 'src/UsersImage/Sign in@1x.png'),
(32, '4929', 'SyJ3d9TdH8Ycb4hPSGQdArTRIdP9Moywi1Ux/Kzav4o=', 'Jun 4, 2024', 'Male', 'sgrt@gmail.com', 'user', 'pending', 'src/UsersImage/screen 1.2@1x.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `FK_user` (`signID`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `signID` (`signID`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`signID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `signID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bank`
--
ALTER TABLE `bank`
  ADD CONSTRAINT `bank_ibfk_1` FOREIGN KEY (`signID`) REFERENCES `signup` (`signID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
