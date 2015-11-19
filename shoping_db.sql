-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2015 at 12:38 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shoping_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'james', 'c1e3f40f0cd481f1626dd6777c6dd1506d4d7234');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'beverages'),
(2, 'cakes');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `add1` varchar(50) NOT NULL,
  `add2` varchar(50) NOT NULL,
  `add3` varchar(50) NOT NULL,
  `Address` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `registered` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `surname`, `add1`, `add2`, `add3`, `Address`, `phone`, `email`, `registered`) VALUES
(1, 'James', 'Maina', 'Nairobi, Kenya', 'Tomboya street', 'dkjf, lksd kl', '1200', '9879797', 'mj@gmail.com', 1),
(2, 'Joyce', 'Hossain', 'Dhaka', 'Coxbazar', 'Gulshan', '9879', '9898797', 'joyyy@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE IF NOT EXISTS `delivery_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `add1` varchar(50) NOT NULL,
  `add2` varchar(50) NOT NULL,
  `add3` varchar(50) NOT NULL,
  `Address` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE IF NOT EXISTS `logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `customer_id`, `username`, `password`) VALUES
(1, 1, 'james', '917ffaf0b1101ef1c2621fc42f591f47ad41dccc'),
(2, 2, 'joyce', 'd853f3c4deca03e000da5cdf692ca66bea4a416a');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE IF NOT EXISTS `orderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 0, 1, 2),
(2, 0, 1, 4),
(3, 0, 1, 1),
(4, 0, 1, 12),
(5, 0, 1, 1),
(6, 0, 1, 1),
(7, 0, 2, 2),
(8, 0, 1, 5),
(9, 0, 1, 1),
(10, 0, 1, 4),
(11, 0, 1, 1),
(12, 0, 1, 1),
(13, 0, 1, 1),
(14, 0, 1, 6),
(15, 0, 2, 1),
(16, 0, 2, 11),
(17, 0, 2, 3),
(18, 0, 1, 1),
(19, 0, 1, 1),
(20, 0, 1, 1),
(21, 0, 1, 1),
(22, 0, 2, 1),
(23, 0, 1, 1),
(24, 0, 2, 3),
(25, 0, 1, 1),
(28, 1, 1, 1),
(30, 1, 2, 2),
(31, 0, 1, 8),
(32, 0, 1, 20),
(33, 0, 2, 1),
(34, 0, 1, 1),
(35, 0, 1, 1),
(36, 0, 1, 1),
(37, 0, 2, 1),
(38, 0, 1, 2),
(39, 0, 1, 1),
(40, 0, 1, 1),
(41, 0, 1, 1),
(42, 0, 1, 1),
(43, 0, 1, 1),
(44, 0, 1, 1),
(45, 0, 2, 2),
(46, 0, 1, 1),
(47, 0, 1, 2),
(48, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `registered` int(11) NOT NULL,
  `delivery_add_id` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `session` varchar(100) NOT NULL,
  `total` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `registered`, `delivery_add_id`, `payment_type`, `date`, `status`, `session`, `total`) VALUES
(1, 1, 1, 0, 1, '2015-11-19 11:46:16', 2, '', 100),
(2, 0, 0, 0, 0, '2015-11-19 11:52:58', 0, '757hisbqr0sh3rlob0oprebc21', 0),
(3, 0, 0, 0, 0, '2015-11-19 11:55:04', 0, '6vj18mgiv7erp6uf4elsc48n42', 0),
(4, 0, 0, 0, 0, '2015-11-19 12:24:54', 0, 'ugd9h8ohec428ndg54lisl32p5', 0),
(5, 0, 0, 0, 0, '2015-11-19 13:24:30', 0, 'sa627lo9imfal8badujmpekoj0', 0),
(6, 1, 1, 0, 0, '2015-11-19 13:32:41', 0, '', 0),
(7, 0, 0, 0, 0, '2015-11-19 13:43:20', 0, 'sa627lo9imfal8badujmpekoj0', 0),
(8, 1, 1, 0, 0, '2015-11-19 13:44:37', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` tinyint(4) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(30) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cat_id`, `name`, `description`, `image`, `price`) VALUES
(1, 1, 'Best Bags', 'A quality pack of tea bags.200 bags in each box', '', 60),
(2, 1, 'Best Orange Juice', 'One gallon of quality sequeezed orange juice.', 'bestorange-juice.jpg', 20);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
