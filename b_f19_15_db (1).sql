-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 15, 2019 at 09:02 PM
-- Server version: 5.5.64-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b_f19_15_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `size`) VALUES
(3, '137.140.237.95', 1, ''),
(7, '137.140.237.82', 1, '2019 Release'),
(10, '137.140.237.77', 1, '2010 Release'),
(11, '137.140.237.82', 1, '2015 Release'),
(12, '137.140.237.74', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Cars', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure voluptates, assumenda dolore quis vero consectetur ullam error, voluptatum doloribus eius nihil autem adipisci voluptas! Magnam tenetur, reiciendis eum ut consequatur.'),
(2, 'SUVs', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure voluptates, assumenda dolore quis vero consectetur ullam error, voluptatum doloribus eius nihil autem adipisci voluptas! Magnam tenetur, reiciendis eum ut consequatur.'),
(3, 'Vans', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure voluptates, assumenda dolore quis vero consectetur ullam error, voluptatum doloribus eius nihil autem adipisci voluptas! Magnam tenetur, reiciendis eum ut consequatur.');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_accno` int(100) NOT NULL,
  `usertype` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_address`, `customer_accno`, `usertype`, `customer_ip`) VALUES
(13, 'p', 'p', 'p', 'p', 0, 'Staff', '137.140.237.69'),
(14, 's', 's', 's', 's', 0, 'Individual', '137.140.237.69'),
(15, 'a', 'a', 'a', 'a', 0, 'Individual', '67.251.218.144'),
(16, 'vaibh', 'vaibh', 'vaibh', 'home', 23874674, 'Individual', '137.140.237.69'),
(17, 'Yash', 'yash@gmail.com', 'yash', 'qwdf', 123456, 'Individual', '137.140.237.70'),
(18, 'test', 'test@gmail.com', 'test', 'home', 82362873, 'B2B Customer', '137.140.237.70'),
(19, 'k', 'k', 'k', 'k', 1234567, 'B2B Customer', '184.152.80.168'),
(20, 'nc', 'nc@gmail.com', 'a', '11 main st ', 2147483647, 'Individual', '98.15.141.133'),
(21, 'Sam', 'sam@gmail.com', '1234', 'USA', 2147483647, 'Individual', '69.206.177.190'),
(22, 'krish', 'k@gmail.com', 'k', 'new paltz', 123456, 'Individual', '137.140.237.80'),
(23, 'Tyler', 'tyler@gmail.com', '1234', 'USA', 2147483647, 'B2B Customer', '69.206.177.190'),
(24, 'test', 'test@t.com', '123456', 'qwerty', 1234567, 'Individual', '137.140.237.82'),
(25, 'navya', 'dfghj', 'navya', 'dfgh', 56789, 'Individual', '184.152.208.255'),
(26, 'test', 'test@gmail.com', 'test', 'ny', 2147483647, 'B2B Customer', '137.140.237.75'),
(27, 'Krishna Solanki', 'rcb@gmail.com', 'rcb123', 'abc', 321654987, 'Individual', '137.140.237.70');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE IF NOT EXISTS `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `pro_id` int(10) NOT NULL,
  `due_amount` int(10) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `ship_address` text NOT NULL,
  `ship_method` text NOT NULL,
  `order_date` date NOT NULL,
  `account_no` int(10) NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `pro_id`, `due_amount`, `invoice_no`, `qty`, `ship_address`, `ship_method`, `order_date`, `account_no`, `order_status`) VALUES
(96, 13, 7, 88, 2120343920, 1, 'gtrdtr', 'Speed Delivery', '2019-12-10', 5465, 'Complete'),
(97, 13, 12, 500, 2120343920, 4, 'gtrdtr', 'Speed Delivery', '2019-12-10', 5465, 'Complete'),
(98, 13, 13, 210, 2120343920, 1, 'gtrdtr', 'Speed Delivery', '2019-12-10', 5465, 'Complete'),
(99, 14, 7, 352, 1618221128, 4, 's', 'Standard Delivery', '2019-12-10', 0, 'Complete'),
(100, 14, 13, 210, 1618221128, 1, 's', 'Standard Delivery', '2019-12-10', 0, 'Complete'),
(101, 15, 13, 210, 1328849046, 1, '123', 'Standard Delivery', '2019-12-11', 2147483647, 'Complete'),
(102, 16, 11, 270, 2133693332, 3, 'home', 'Speed Delivery', '2019-12-11', 2147483647, 'Complete'),
(103, 16, 12, 625, 2133693332, 5, 'home', 'Speed Delivery', '2019-12-11', 2147483647, 'Complete'),
(104, 16, 13, 210, 2133693332, 1, 'home', 'Speed Delivery', '2019-12-11', 2147483647, 'Complete'),
(105, 18, 13, 210, 229089777, 1, 'jhgfd', 'Standard Delivery', '2019-12-11', 2345678, 'Complete'),
(106, 17, 10, 355, 2081643439, 1, 'jhgh', 'Select Category', '2019-12-11', 757, 'Complete'),
(107, 19, 3, 170, 888587308, 1, 'New Paltz', 'Standard Delivery', '2019-12-11', 61, 'Complete'),
(108, 19, 13, 840, 888587308, 4, 'New Paltz', 'Standard Delivery', '2019-12-11', 61, 'Complete'),
(109, 20, 12, 250, 251645442, 2, '11 main st ', 'Standard Delivery', '2019-12-11', 2147483647, 'Complete'),
(110, 21, 13, 210, 168811805, 1, 'USA', 'Standard Delivery', '2019-12-11', 2147483647, 'Complete'),
(111, 22, 7, 88, 2000361349, 1, 'new paltz', 'Standard Delivery', '2019-12-11', 123456, 'Complete'),
(112, 22, 13, 210, 2000361349, 1, 'new paltz', 'Standard Delivery', '2019-12-11', 123456, 'Complete'),
(113, 23, 12, 125, 1222704352, 1, 'USA', 'Standard Delivery', '2019-12-11', 2147483647, 'Complete'),
(114, 24, 3, 170, 1454617545, 1, '12', 'Standard Delivery', '2019-12-11', 37, 'Complete'),
(115, 24, 13, 420, 1454617545, 2, '12', 'Standard Delivery', '2019-12-11', 37, 'Complete'),
(116, 25, 13, 210, 1737465347, 1, 'lkjhg', 'Standard Delivery', '2019-12-11', 2345, 'Complete'),
(117, 18, 3, 170, 651739384, 1, 'ny', 'Standard Delivery', '2019-12-11', 2147483647, 'Complete'),
(118, 27, 11, 90, 368339393, 1, 'abc', 'Speed Delivery', '2019-12-11', 321654987, 'Complete'),
(119, 20, 13, 840, 716454512, 4, '11 main st', 'Standard Delivery', '2019-12-12', 2147483647, 'Complete'),
(120, 16, 3, 170, 1968441637, 1, '9827382', 'Speed Delivery', '2019-12-12', 324, 'Complete'),
(121, 16, 10, 355, 1968441637, 1, '9827382', 'Speed Delivery', '2019-12-12', 324, 'Complete'),
(122, 21, 7, 88, 1710916842, 1, 'USA', 'Standard Delivery', '2019-12-12', 2147483647, 'Complete'),
(123, 21, 11, 90, 1710916842, 1, 'USA', 'Standard Delivery', '2019-12-12', 2147483647, 'Complete'),
(124, 18, 7, 88, 869961403, 1, 'test', 'Standard Delivery', '2019-12-12', 86, 'Complete'),
(125, 24, 11, 90, 177622410, 1, 'w', 'Speed Delivery', '2019-12-12', 1234567, 'Complete'),
(126, 24, 13, 840, 177622410, 4, 'w', 'Speed Delivery', '2019-12-12', 1234567, 'Complete'),
(127, 27, 7, 88, 905582379, 1, 'abc', 'Standard Delivery', '2019-12-12', 321654987, 'Complete'),
(128, 27, 13, 210, 905582379, 1, 'abc', 'Standard Delivery', '2019-12-12', 321654987, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `p_instock` int(11) NOT NULL,
  `p_outstock` int(11) NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `p_instock`, `p_outstock`, `product_desc`) VALUES
(3, 3, 0, '2019-12-12 18:53:52', 'Dodge Grand Caravan', 'DodgeGrandCaravan.jpg', 'DodgeGrandCaravan.jpg', 'DodgeGrandCaravan.jpg', 170, 90, 10, 'The budget-friendly, seven-passenger Dodge Grand Caravan is rented in three trim levels: SE, SE Plus and SXT. All Grand Caravans have a 3.6-liter V6 (283 horsepower, 260 pound-feet of torque) paired to a six-speed automatic transmission.'),
(7, 3, 1, '2019-12-13 04:11:21', 'VW Jetta', 'VW-Jetta.jpg', 'VW-Jetta.jpg', 'VW-Jetta.jpg', 88, 87, 15, 'Jetta Interior Quality Available features include synthetic or genuine leather upholstery, an eight-way power-adjustable driver''s seat, front sport seats, heated rear seats, a leather-wrapped steering wheel, a heated steering wheel, and a sport steering wheel.'),
(10, 9, 2, '2019-12-12 18:53:52', 'Ford Expedition', 'Ford Expedition.jpg', 'Ford Expedition.jpg', 'Ford Expedition.jpg', 355, 90, 10, 'The Ford Expedition is a Full-size SUV manufactured by Ford. Introduced for the 1997 model year as the successor of the Ford Bronco, the Expedition was the first full-size Ford SUV sold with a four-door body.'),
(11, 4, 1, '2019-12-13 03:36:18', 'Ford Fusion', 'FordFusion.jpg', 'FordFusion.jpg', 'FordFusion.jpg', 90, 90, 10, 'The Ford Fusion is a four-door, five-passenger mid-size sedan manufactured and marketed by the Ford Motor Company. '),
(12, 7, 2, '2019-12-12 01:13:49', 'Dodge Durango', 'CompactSUV_DodgeDurango.jpg', 'CompactSUV_DodgeDurango.jpg', 'CompactSUV_DodgeDurango.jpg', 125, 77, 23, 'The Dodge Durango delivers muscle car power and feel in a large, three-row SUV. Available with rear- or all-wheel drive, the Durango competes with the Chevrolet Traverse, Ford Explorer and Honda Pilot.'),
(13, 10, 3, '2019-12-13 04:11:21', 'Mazda5', 'MiniVan_Mazda5.jpg', 'MiniVan_Mazda5.jpg', 'MiniVan_Mazda5.jpg', 210, 71, 29, '2006 Mazda5 is in one body style, a four-door, six-passenger, small minivan-cum-station wagon. The only engine is a 157-horsepower, 2.3-liter inline four-cylinder. ');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE IF NOT EXISTS `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(3, 'Standard Car', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure voluptates, assumenda dolore quis vero consectetur ullam error, voluptatum doloribus eius nihil autem adipisci voluptas! Magnam tenetur, reiciendis eum ut consequatur.'),
(4, 'Full Size Car', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure voluptates, assumenda dolore quis vero consectetur ullam error, voluptatum doloribus eius nihil autem adipisci voluptas! Magnam tenetur, reiciendis eum ut consequatur.'),
(7, 'Compact SUV', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure voluptates, assumenda dolore quis vero consectetur ullam error, voluptatum doloribus eius nihil autem adipisci voluptas! Magnam tenetur, reiciendis eum ut consequatur.'),
(9, 'Full Size SUV', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis modi, minus blanditiis numquam nihil corrupti ratione saepe similique. Quod eius hic atque laudantium neque fugit, laboriosam perferendis natus repudiandae rerum.'),
(10, 'Mini Van', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis modi, minus blanditiis numquam nihil corrupti ratione saepe similique. Quod eius hic atque laudantium neque fugit, laboriosam perferendis natus repudiandae rerum.');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide number 1', 'slide-1.jpg'),
(2, 'Slide number 2', 'slide-2.jpg'),
(3, 'Slide number 3', 'slide-3.jpg'),
(4, 'Slide number 4', 'slide-4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
