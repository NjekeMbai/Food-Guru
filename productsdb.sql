-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2020 at 03:14 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `productsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `UserName` varchar(255) DEFAULT NULL,
  `OrderID` varchar(255) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductPrice` varchar(255) DEFAULT NULL,
  `Total` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`UserName`, `OrderID`, `ProductName`, `ProductPrice`, `Total`) VALUES
('Anne', 'Anne1860', NULL, NULL, '1860'),
(NULL, 'AnnePie', 'Pie', '200', NULL),
(NULL, 'AnnePizza', 'Pizza', '960', NULL),
(NULL, 'AnneSteak', 'Steak', '700', NULL),
('Victor', 'Victor670', NULL, NULL, '670'),
(NULL, 'VictorBeef', 'Beef', '400', NULL),
(NULL, 'VictorBurgers', 'Burgers', '100', NULL),
(NULL, 'VictorChicken', 'Chicken', '170', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `producttb`
--

CREATE TABLE `producttb` (
  `id` int(11) NOT NULL,
  `product_name` varchar(25) NOT NULL,
  `product_price` float DEFAULT NULL,
  `product_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producttb`
--

INSERT INTO `producttb` (`id`, `product_name`, `product_price`, `product_image`) VALUES
(11, 'Burgers', 100, 'uploads/5f2564e0477a32.21850793.jpg'),
(12, 'Cake', 2000, 'uploads/5f2564f8b4d8b6.30246087.jpg'),
(13, 'Chicken', 170, 'uploads/5f256526dc2472.32740904.jpg'),
(14, 'Beef', 400, 'uploads/5f25653fbe61e5.95645192.jpg'),
(15, 'French Fries', 140, 'uploads/5f25655aad4c96.16896091.jpg'),
(16, 'Githeri', 130, 'uploads/5f256572f25a60.48874871.jpg'),
(17, 'Jollof', 180, 'uploads/5f25658d3a0085.69033569.jpg'),
(18, 'Roast Maize', 30, 'uploads/5f2565a9b597d5.01248625.jpg'),
(19, 'Pie', 200, 'uploads/5f2570a4101033.35570607.jpg'),
(20, 'Pizza', 960, 'uploads/5f2570c8eb8430.33609138.jpg'),
(21, 'Steak', 700, 'uploads/5f257101ae7da8.78356729.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `producttb`
--
ALTER TABLE `producttb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `producttb`
--
ALTER TABLE `producttb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
