-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2017 at 01:20 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `r_tech`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `passcode` varchar(150) NOT NULL,
  `Roll` int(2) NOT NULL,
  `quest` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `passcode`, `Roll`, `quest`) VALUES
(1, 'Mehedy', '123te456', 1, '01784041111'),
(2, 'Tajul', 'tajul', 2, ''),
(3, 'Mehedy Hassan', '123te456', 2, '01737091505'),
(4, 'tagim', '123456', 2, '01750255111');

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `balance_ID` int(11) NOT NULL,
  `dated` date NOT NULL,
  `spent` varchar(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`balance_ID`, `dated`, `spent`, `amount`) VALUES
(1, '2016-09-09', 'Modem', 500),
(2, '2016-10-11', 'Nasta', 399);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_ID` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobile` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_ID`, `name`, `address`, `mobile`) VALUES
(36, 'Mehedy', 'Dinajpur', '01737091500'),
(37, 'Mubaddir', 'Dinajpur', '01737091555'),
(38, 'Taher', 'asdf', '0127888888'),
(39, 'Taher Thakur', 'Gobindagonj,Gaibandha', '01737091599');

-- --------------------------------------------------------

--
-- Table structure for table `customer_sale_report`
--

CREATE TABLE `customer_sale_report` (
  `cust_sale_rep` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  `dated` date NOT NULL,
  `grand_total` int(11) NOT NULL,
  `previous_deu` int(11) NOT NULL,
  `collection` int(11) NOT NULL,
  `net_outstanding` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_sale_report`
--

INSERT INTO `customer_sale_report` (`cust_sale_rep`, `customer_ID`, `dated`, `grand_total`, `previous_deu`, `collection`, `net_outstanding`) VALUES
(1, 36, '2016-09-04', 3980, 0, 3900, -80),
(2, 36, '2016-09-04', 12150, 80, 12000, -230),
(3, 36, '2016-09-04', 7900, 230, 8000, -130),
(18, 36, '2016-09-05', 7900, 230, 8100, 30),
(19, 36, '2016-09-05', 7900, 230, 8130, 0),
(20, 36, '2016-09-05', 3950, 0, 3000, -950),
(21, 36, '2016-09-05', 3950, 0, 3900, 50),
(22, 36, '2016-09-09', 3950, 0, 3925, 25),
(23, 36, '2016-09-11', 3950, 0, 3950, 0),
(24, 38, '2016-10-08', 550, 0, 500, -50),
(25, 38, '2016-10-08', 550, 0, 500, -50),
(26, 37, '2016-10-09', 4050, 0, 4000, -50),
(27, 39, '2016-11-09', 6500, 0, 6000, -500);

-- --------------------------------------------------------

--
-- Table structure for table `daily_buy`
--

CREATE TABLE `daily_buy` (
  `dailybuy_ID` int(11) NOT NULL,
  `dated` date NOT NULL,
  `product` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `wnty` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `company` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_buy`
--

INSERT INTO `daily_buy` (`dailybuy_ID`, `dated`, `product`, `brand`, `model`, `wnty`, `unit_price`, `qty`, `total`, `company`) VALUES
(1, '2016-10-12', 'Monitor', 'HP', '17"', 365, 4500, 1, 4500, 'Computer Vision'),
(2, '2016-10-12', 'Monitor', 'HP', '17"', 365, 4500, 1, 4500, 'Computer Vision'),
(3, '2016-10-12', 'Mouse', 'A4tech', 'USB', 0, 250, 5, 1250, 'Smart Technogy'),
(4, '2016-10-12', 'Monitor', 'Samsung', 'White', 750, 5000, 1, 5000, 'Smart Technogy');

-- --------------------------------------------------------

--
-- Table structure for table `daily_sale`
--

CREATE TABLE `daily_sale` (
  `dailysale_ID` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  `order_no` varchar(150) NOT NULL,
  `sold_by` varchar(100) NOT NULL,
  `dated` date NOT NULL,
  `product` varchar(150) NOT NULL,
  `brand` varchar(150) NOT NULL,
  `model` varchar(50) NOT NULL,
  `sl` varchar(100) NOT NULL,
  `wnty` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `buy_price` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `grand_profit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_sale`
--

INSERT INTO `daily_sale` (`dailysale_ID`, `customer_ID`, `order_no`, `sold_by`, `dated`, `product`, `brand`, `model`, `sl`, `wnty`, `qty`, `buy_price`, `unit_price`, `grand_total`, `grand_profit`) VALUES
(1, 39, 'RT1643275', 'Mehedy', '2016-11-09', 'Monitor', 'Samsung', 'White', '54SDESS20', 750, 1, 5000, 6500, 6500, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `sl`
--

CREATE TABLE `sl` (
  `si_id` int(11) NOT NULL,
  `daily_buy_id` int(11) NOT NULL,
  `si_no` varchar(100) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl`
--

INSERT INTO `sl` (`si_id`, `daily_buy_id`, `si_no`, `status`) VALUES
(1, 1, '0155RRES', 'on'),
(2, 2, 'KOIIE00254', 'on'),
(3, 3, '0', 'on'),
(4, 4, '54SDESS20', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `warrenty`
--

CREATE TABLE `warrenty` (
  `warr_id` int(11) NOT NULL,
  `send_date` date NOT NULL,
  `send_media` varchar(150) NOT NULL,
  `received_date` date NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `problem` varchar(150) NOT NULL,
  `qty` int(11) NOT NULL,
  `sn` varchar(150) NOT NULL,
  `new_sn` varchar(150) NOT NULL,
  `customer_info` varchar(150) NOT NULL,
  `receive` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warrenty`
--

INSERT INTO `warrenty` (`warr_id`, `send_date`, `send_media`, `received_date`, `product_name`, `problem`, `qty`, `sn`, `new_sn`, `customer_info`, `receive`) VALUES
(1, '2016-10-09', 'Dhaka', '2016-10-09', 'keyboard', 'not working', 1, 'asdf sadf', '', 'Modon mia 01245788', 'OK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`balance_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_ID`);

--
-- Indexes for table `customer_sale_report`
--
ALTER TABLE `customer_sale_report`
  ADD PRIMARY KEY (`cust_sale_rep`),
  ADD KEY `customer_ID` (`customer_ID`);

--
-- Indexes for table `daily_buy`
--
ALTER TABLE `daily_buy`
  ADD PRIMARY KEY (`dailybuy_ID`);

--
-- Indexes for table `daily_sale`
--
ALTER TABLE `daily_sale`
  ADD PRIMARY KEY (`dailysale_ID`),
  ADD KEY `customer_ID` (`customer_ID`);

--
-- Indexes for table `sl`
--
ALTER TABLE `sl`
  ADD PRIMARY KEY (`si_id`),
  ADD KEY `daily_buy_id` (`daily_buy_id`);

--
-- Indexes for table `warrenty`
--
ALTER TABLE `warrenty`
  ADD PRIMARY KEY (`warr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `balance_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `customer_sale_report`
--
ALTER TABLE `customer_sale_report`
  MODIFY `cust_sale_rep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `daily_buy`
--
ALTER TABLE `daily_buy`
  MODIFY `dailybuy_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `daily_sale`
--
ALTER TABLE `daily_sale`
  MODIFY `dailysale_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sl`
--
ALTER TABLE `sl`
  MODIFY `si_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `warrenty`
--
ALTER TABLE `warrenty`
  MODIFY `warr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_sale_report`
--
ALTER TABLE `customer_sale_report`
  ADD CONSTRAINT `customer_sale_report_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_ID`);

--
-- Constraints for table `daily_sale`
--
ALTER TABLE `daily_sale`
  ADD CONSTRAINT `daily_sale_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_ID`);

--
-- Constraints for table `sl`
--
ALTER TABLE `sl`
  ADD CONSTRAINT `sl_ibfk_1` FOREIGN KEY (`daily_buy_id`) REFERENCES `daily_buy` (`dailybuy_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
