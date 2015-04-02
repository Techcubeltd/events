-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 02, 2015 at 06:44 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `events`
--

-- --------------------------------------------------------

--
-- Table structure for table `eventplan`
--

CREATE TABLE IF NOT EXISTS `eventplan` (
  `eventID` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(50) DEFAULT NULL,
  `description` text,
  `eventtype` varchar(50) DEFAULT NULL,
  `eventfrom` date DEFAULT NULL,
  `eventto` date DEFAULT NULL,
  `isworkingday` enum('yes','no') NOT NULL,
  `dateadded` date NOT NULL,
  `datemodified` date NOT NULL,
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `userName` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'active',
  `accountType` int(11) NOT NULL DEFAULT '1',
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userName` (`userName`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `password`, `userName`, `status`, `accountType`, `dateadded`) VALUES
(8, 'admin admin', 'admin@gmail.com', 'admin', 'admin', 'active', 1, '2015-04-01 19:49:37'),
(9, 'kelvin  otieno', 'otieno@gmail.com', 'test', 'otienok', 'active', 1, '2015-04-01 20:20:33');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
