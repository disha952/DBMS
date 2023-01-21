-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
-- 
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2022 at 03:54 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dis`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `ANAME` varchar(15) NOT NULL,
  `AADDRESS` varchar(40) NOT NULL,
  `ANO` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`ANAME`, `AADDRESS`, `ANO`) VALUES
('MUSKAN', 'AJMERAINF', 'A100'),
('AGARSH', 'SALARPURIA', 'A101'),
('SAKSHI', 'SYMPHONY', 'A102'),
('NEIL', 'RAJARRN', 'A103'),
('PRIYANSH', 'ORION', 'A104'),
('AJITH', 'SJR', 'A105'),
('TANAY', 'EQUINOX', 'A106'),
('RITIK', 'NATARAJAN', 'A107'),
('IHA', 'GREENAGE', 'A108'),
('SANJANA', 'CONCORDE', 'A109');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `BUSNO` varchar(10) NOT NULL,
  `BODYNO` varchar(10) NOT NULL,
  `ROUTENAME` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`BUSNO`, `BODYNO`, `ROUTENAME`) VALUES
('AZ51MX2090', 'B105', 'ARZ-LVS'),
('HR51MX3050', 'B106', 'KLN-KUK'),
('HR51MX6054', 'B107', 'PNP-DEL'),
('HR51MX9060', 'B108', 'GGN-UK'),
('JH51MX2060', 'B103', 'DVG-PTN'),
('KA51MX2050', 'B100', 'BLR-CHN'),
('KA51MX2051', 'B101', 'BLR-UDP'),
('KA51MX2072', 'B104', 'BLR-MLR'),
('KA51MX7002', 'B109', 'BLR-GOA'),
('RJ51MX2054', 'B102', 'BKN-DEL');

-- --------------------------------------------------------

--
-- Table structure for table `government`
--

CREATE TABLE `government` (
  `DEPTNAME` varchar(15) NOT NULL,
  `OWNERNO` varchar(10) NOT NULL,
  `TAXNO` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `government`
--

INSERT INTO `government` (`DEPTNAME`, `OWNERNO`, `TAXNO`) VALUES
('HRRTC', '1902', '06-379-25545'),
('HRRTC', '2776', '06-765-18565'),
('DTC', '1345', '07-852-74139'),
('RJRTC', '1938', '08-654-75396'),
('JHRTC', '1234', '27-694-74125'),
('KKRTC-4343', '1002', '29-852-12345'),
('TNSRTC-4716', '1003', '33-741-95135'),
('BMTC–6422', '6792', '51-125-18525'),
('HRRTC', '4097', '51-852-32165');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `OWNERNO` varchar(10) NOT NULL,
  `OWNERNAME` varchar(40) NOT NULL,
  `ADDRESS` varchar(10) NOT NULL,
  `MOBILENO` int(11) NOT NULL,
  `BUSNO` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`OWNERNO`, `OWNERNAME`, `ADDRESS`, `MOBILENO`, `BUSNO`) VALUES
('1002', '', 'MARATHALLI', 2147483647, 'KA51MX2072'),
('1003', '', 'CHENNAI', 2147483647, 'KA51MX2050'),
('1234', '', 'JHARKHAND', 2147483647, 'JH51MX2060'),
('1345', '', 'DELHI', 2147483647, 'RJ51MX2054'),
('1902', '', 'HARYANA', 2147483647, 'HR51MX6054'),
('1938', '', 'RAJASTHAN', 2147483647, 'AZ51MX2090'),
('2776', '', 'HARYANA', 2147483647, 'HR51MX9060'),
('4097', '', 'HARYANA', 2147483647, 'HR51MX3050'),
('6792', '', 'JAYNAGAR', 2147483647, 'KA51MX2051');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `PNO` varchar(10) NOT NULL,
  `PNAME` varchar(10) NOT NULL,
  `MOBILENO` int(11) DEFAULT NULL,
  `ADDRESS` varchar(30) NOT NULL,
  `BUSNO` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`PNO`, `PNAME`, `MOBILENO`, `ADDRESS`, `BUSNO`) VALUES
('PES1', 'RITIK', NULL, 'SYMPHONY,URLANA KALAN', 'BLR-CHN'),
('PES10', 'CHARAN', NULL, 'RELIABLE DOMICILE,BANGALORE', 'BLR-MLR'),
('PES2', 'PRIYA', NULL, 'SILVER PALMS,BIKANER', 'BKN-DEL'),
('PES3', 'SHARMILA', NULL, 'SILVERPOOL,BAGLUR', 'BLR-UDP'),
('PES4', 'PRIYANSH', NULL, 'PESU,DEVGARH', 'BVG-PTN'),
('PES5', 'RISHAB', NULL, 'KEERTHI ROYAL,PANIPAT', 'PNP-DEL'),
('PES6', 'KAPIL', NULL, 'AJMEERA,KARNAL', 'KNL-KUK'),
('PES7', 'SAGAR', NULL, 'DLF,ARIZONA', 'ARZ-LVS'),
('PES8', 'SACHIN', NULL, 'VSR,GURGAON', 'GGN-UK'),
('PES9', 'PARTH', NULL, 'PRESTIGE,BANGALORE', 'BLR-GOA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`ANO`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`BUSNO`);

--
-- Indexes for table `government`
--
ALTER TABLE `government`
  ADD PRIMARY KEY (`TAXNO`),
  ADD KEY `forkey_government` (`OWNERNO`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`OWNERNO`),
  ADD KEY `forkey_owner` (`BUSNO`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`PNO`),
  ADD KEY `forkey_passenger` (`BUSNO`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `government`
--
ALTER TABLE `government`
  ADD CONSTRAINT `forkey_government` FOREIGN KEY (`OWNERNO`) REFERENCES `owner` (`OWNERNO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `forkey_owner` FOREIGN KEY (`BUSNO`) REFERENCES `bus` (`BUSNO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `forkey_passenger` FOREIGN KEY (`BUSNO`) REFERENCES `bus` (`BUSNO`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
