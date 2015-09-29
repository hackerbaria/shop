-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2015 at 04:17 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE IF NOT EXISTS `areas` (
`ID` int(10) NOT NULL,
  `AreaName` varchar(255) NOT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`ID`, `AreaName`, `Description`) VALUES
(1, 'Area 1', 'Phong 2, Tang 1'),
(2, 'Area 2', 'Phong 3, Tang 1');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
`ID` int(10) NOT NULL,
  `NAME` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `PHONE` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

CREATE TABLE IF NOT EXISTS `manufactures` (
`ID` int(10) NOT NULL,
  `ManufactureName` varchar(255) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone` varchar(13) DEFAULT NULL,
  `due_amount` float DEFAULT NULL,
  `paid_amount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`ID` int(10) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `input_amount` int(10) DEFAULT NULL,
  `exist_amount` int(10) DEFAULT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `productTypeID` int(10) DEFAULT NULL,
  `areaID` int(10) DEFAULT NULL,
  `IMAGE` varchar(200) DEFAULT NULL,
  `sale_prices` float NOT NULL DEFAULT '1000000'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `ProductName`, `input_amount`, `exist_amount`, `date_created`, `productTypeID`, `areaID`, `IMAGE`, `sale_prices`) VALUES
(1, 'Panram Ninja-V 8GB ( 2x4GB ) bus 2400 - DDR4', 100, 100, '2015-09-26 14:18:58', 1, 1, 'panram1.jpg', 2000000),
(2, 'Mushkin Enhanced Redline Pro 8GB ( 1x8GB ) bus 2666 cas 15 - DDR4', 200, 200, '2015-09-26 14:20:41', 1, 1, 'mushkin1.jpg', 1000000),
(4, 'Corsair Dominator Platinium 16GB ( 4x4GB ) Bus 2666 Cas 16 -DDR4', 150, 150, '2015-09-26 15:36:32', 1, 2, 'corsair.jpg', 5605480);

-- --------------------------------------------------------

--
-- Table structure for table `producttypes`
--

CREATE TABLE IF NOT EXISTS `producttypes` (
`ID` int(10) NOT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `producttypes`
--

INSERT INTO `producttypes` (`ID`, `NAME`) VALUES
(1, 'RAM'),
(2, 'CPU'),
(3, 'HDD'),
(4, 'MainBoard');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
`ID` int(10) NOT NULL,
  `RoleName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`ID`, `RoleName`, `Description`) VALUES
(1, 'Employee', 'This is Role of who sales Product.'),
(2, 'BOSS', 'Roles of the owner shop');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`ID` int(10) NOT NULL,
  `UserName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `RoleID` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `UserName`, `Password`, `RoleID`) VALUES
(1, 'thong', 'thong@123', 1),
(2, 'ngoc', 'ngoc@123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
 ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
 ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `manufactures`
--
ALTER TABLE `manufactures`
 ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`ID`) USING BTREE, ADD KEY `fk_product_type` (`productTypeID`), ADD KEY `fk_area` (`areaID`);

--
-- Indexes for table `producttypes`
--
ALTER TABLE `producttypes`
 ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`ID`) USING BTREE, ADD KEY `RoleID` (`RoleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `manufactures`
--
ALTER TABLE `manufactures`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `producttypes`
--
ALTER TABLE `producttypes`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
ADD CONSTRAINT `fk_area` FOREIGN KEY (`areaID`) REFERENCES `areas` (`ID`),
ADD CONSTRAINT `fk_product_type` FOREIGN KEY (`productTypeID`) REFERENCES `producttypes` (`ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `roles` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
