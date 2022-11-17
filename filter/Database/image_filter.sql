-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2022 at 07:37 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `image_filter`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_table`
--

CREATE TABLE `product_table` (
  `id` int(11) NOT NULL,
  `Product_title` varchar(200) NOT NULL,
  `Price` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_table`
--

INSERT INTO `product_table` (`id`, `Product_title`, `Price`, `img`) VALUES
(1, 'Full Black Full sleve T-Shirt Captain America ', '599', 'cp2.jpg'),
(2, 'Nevy Blue Full Sleve T-Shirt Captain Amireca', '799', 'cp3.jpg'),
(3, 'Black &White Captan Amirica Full Sleve T-Shirt', '599', 'cp1.jpg'),
(4, 'Full Sleve Thor Full Black T-Shirt', '350', 'ft8.jpg'),
(5, 'Hulk Full Sleve T-Shirt', '390', 'fth6.jpg'),
(6, 'Batman Full Sleve T-Shirt', '199', 'ft4.jpg'),
(7, 'Monster Half T-Shirt', '490', 'tm7.jpg'),
(8, 'White T-Shirt', '99', 't1.jpg'),
(9, 'Cow Underware', '999', 'un2.jpg'),
(10, 'Printerd Gote Underware', '730', 'un3.jpg'),
(11, 'Mouce Comfortabe Underware', '750', 'un1.jpg'),
(12, 'Yellow & Gray Cotton T-Shirt', '99', 't4.jpg'),
(13, 'Batman white T-Shirt', '255', 'ft5.jpg'),
(14, 'Monster Hoddie', '1200', 'h2.jpg'),
(15, 'Nevy Blue Full Sleve T-Shirt Thor', '690', 'ft7.jpg'),
(16, 'Borwn Winter Jacket For men', '2500', 'j1.jpg'),
(17, 'Black Winter Jacket For men', '3000', 'j2.jpg'),
(18, 'Comfortable Winter Jacket for Men', '1500', 'j3.jpg'),
(19, 'Blue Stylish Jeans', '1200', 'p1.jpg'),
(20, 'Apolo Jeans for Men', '1700', 'p2.jpg'),
(21, 'Black Matal Sunglass for men', '1200', 's2.jpg'),
(22, 'Black & White Hoddie', '999', 'h1.jpg'),
(23, 'Red T-Shirt', '150', 'ft3.jpg'),
(24, 'Apple', '10', 'fb-logo.png'),
(25, 'Slider', '100', 'slider-1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_table`
--
ALTER TABLE `product_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_table`
--
ALTER TABLE `product_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
