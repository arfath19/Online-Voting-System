-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2017 at 04:44 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `raja`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `auname` varchar(20) NOT NULL,
  `apwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`auname`, `apwd`) VALUES
('raja', 'raja1234'),
('123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `cid` int(15) NOT NULL,
  `cuname` varchar(30) NOT NULL,
  `cpname` varchar(30) NOT NULL,
  `cemail` varchar(30) NOT NULL,
  `cmobile` varchar(14) NOT NULL,
  `cpass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`cid`, `cuname`, `cpname`, `cemail`, `cmobile`, `cpass`) VALUES
(567890, 'srikanth', 'TDP', 'K@GMAIL.COM', '9533170677', 'srikanth8'),
(4567890, 'raja', 'janasena', 'k@gmail.com', '2147483647', 'srikanth8');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_request`
--

CREATE TABLE `candidate_request` (
  `eid` int(30) NOT NULL,
  `cid` int(30) NOT NULL,
  `cname` varchar(150) NOT NULL,
  `description` varchar(30) NOT NULL,
  `party` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_verify`
--

CREATE TABLE `candidate_verify` (
  `cid` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_verify`
--

INSERT INTO `candidate_verify` (`cid`) VALUES
(567890),
(4567890);

-- --------------------------------------------------------

--
-- Table structure for table `election`
--

CREATE TABLE `election` (
  `eid` int(8) NOT NULL,
  `ename` varchar(30) NOT NULL,
  `noc` int(3) NOT NULL,
  `constiuency` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `election`
--

INSERT INTO `election` (`eid`, `ename`, `noc`, `constiuency`) VALUES
(10, 'raj', 2, 'dsnr');

-- --------------------------------------------------------

--
-- Table structure for table `election2`
--

CREATE TABLE `election2` (
  `eid` int(8) DEFAULT NULL,
  `cid` int(30) NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `image` blob NOT NULL,
  `party` varchar(20) NOT NULL,
  `vcount` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `election2`
--

INSERT INTO `election2` (`eid`, `cid`, `cname`, `description`, `image`, `party`, `vcount`) VALUES
(10, 4590, 'erty', 'fgfg', 0x312e706e67, 'fdsf', 1),
(10, 4567890, 'raja', 'gfhgfhfg', '', 'janasena', 0);

-- --------------------------------------------------------

--
-- Table structure for table `endelection`
--

CREATE TABLE `endelection` (
  `eid` varchar(20) DEFAULT NULL,
  `cid` varchar(20) DEFAULT NULL,
  `cname` varchar(30) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `party` varchar(30) DEFAULT NULL,
  `vcount` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `endelection`
--

INSERT INTO `endelection` (`eid`, `cid`, `cname`, `description`, `party`, `vcount`) VALUES
('123', '8977', 'kalamma', 'fskdjfskdf', 'TDP', 0),
('123', '9059', 'tarun', 'djfhsjdf', 'YSRCP', 0),
('123', '9533', 'raja', 'dhsdjf', 'JANASENA', 2),
('123', '567890', 'srikanth', 'fdsdfsdf', 'TDP', 0),
('345', '289', 'tarun', 'dfsd', 'TDP', 0),
('345', '567', 'srikanth', 'asfd', 'janasena', 0),
('345', '905', 'sai', 'sdf', 'ysrcp', 0),
('567', '5', 'sdf', 'dsf', 'sdf', 0),
('567', '9', 'sdf', 'sdf', 'dsfsd', 0),
('567', '389', 'fddf', 'df', 'df', 0),
('567', '678', 'muk', 'fgd', 'dfgdf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `endelection1`
--

CREATE TABLE `endelection1` (
  `eid` varchar(30) NOT NULL,
  `ename` varchar(30) NOT NULL,
  `noc` int(30) NOT NULL,
  `constiuency` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `endelection1`
--

INSERT INTO `endelection1` (`eid`, `ename`, `noc`, `constiuency`) VALUES
('123', 'painting', 4, 'lbnagar'),
('345', 'running', 3, 'dsnr'),
('567', 'qwerty', 4, 'lbnagar');

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `id` varchar(20) NOT NULL,
  `name` char(32) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`id`, `name`, `pass`, `mobile`, `email`) VALUES
('62308640690', 'srikanth', 'srikanth8', '9533170677', 's@gmail.com'),
('62308640691', 'raja', 'srikanth8', '8977131671', 'p@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `verify_signup`
--

CREATE TABLE `verify_signup` (
  `id` varchar(20) NOT NULL,
  `aadhar_number` int(12) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `constiuency` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verify_signup`
--

INSERT INTO `verify_signup` (`id`, `aadhar_number`, `mobile`, `constiuency`) VALUES
('62308640690', 987654321, '9533170677', 'lbnagar'),
('62308640691', 987654322, '9533170678', 'dsnr');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `id` varchar(20) NOT NULL,
  `eid` varchar(20) NOT NULL,
  `cname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`id`, `eid`, `cname`) VALUES
('62308640690', '123', 'raja'),
('62308640691', '123', 'raja'),
('62308640691', '10', 'erty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `candidate_request`
--
ALTER TABLE `candidate_request`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `candidate_verify`
--
ALTER TABLE `candidate_verify`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `election`
--
ALTER TABLE `election`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `election2`
--
ALTER TABLE `election2`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `eid` (`eid`);

--
-- Indexes for table `endelection`
--
ALTER TABLE `endelection`
  ADD KEY `eid` (`eid`);

--
-- Indexes for table `endelection1`
--
ALTER TABLE `endelection1`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verify_signup`
--
ALTER TABLE `verify_signup`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidate`
--
ALTER TABLE `candidate`
  ADD CONSTRAINT `candidate_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `candidate_verify` (`cid`);

--
-- Constraints for table `election2`
--
ALTER TABLE `election2`
  ADD CONSTRAINT `election2_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `election` (`eid`);

--
-- Constraints for table `endelection`
--
ALTER TABLE `endelection`
  ADD CONSTRAINT `endelection_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `endelection1` (`eid`);

--
-- Constraints for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD CONSTRAINT `user_reg_ibfk_1` FOREIGN KEY (`id`) REFERENCES `verify_signup` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
