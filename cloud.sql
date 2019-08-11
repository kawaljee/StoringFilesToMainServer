-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2017 at 03:39 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cloud`
--
CREATE DATABASE IF NOT EXISTS `cloud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cloud`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--
-- Creation: Feb 05, 2017 at 07:01 AM
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `user` varchar(30) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `pic` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `login`
--

TRUNCATE TABLE `login`;
--
-- Dumping data for table `login`
--

INSERT DELAYED IGNORE INTO `login` (`user`, `pass`, `email`, `contact`, `pic`) VALUES
('ganesh', 'ganesh', 'ganesh@ganesh', '09876543211', 0x393937393933383457494e5f32303136303831345f31355f31335f30365f50726f2e6a7067),
('gannu', 'ss', 'ds@gf', '87764433', 0x323437373637343157494e5f32303137303131315f32325f30365f34335f50726f2e706e67),
('prakash', 'prakash', 'prak@paa.com', '9876543210', 0x3634313833323536536f6e792b344b2b44656d6f2544372538332b416e6f746865722b576f726c642e6d7034);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`user`), ADD UNIQUE KEY `email` (`email`), ADD FULLTEXT KEY `pass` (`pass`,`contact`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
