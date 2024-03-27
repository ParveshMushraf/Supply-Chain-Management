-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 08:49 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sourcecodester_scm_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `area_id` int(11) NOT NULL,
  `area_name` varchar(50) NOT NULL,
  `area_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `area_name`, `area_code`) VALUES
(1, 'Sarkhej', 'SRKJ'),
(2, 'Vastrapur', 'VSTR'),
(3, 'Maninagar', 'MNGR'),
(4, 'New Ranip', 'NRANIP'),
(5, 'Vejalpur', 'VJLP');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(25) NOT NULL,
  `cat_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_details`) VALUES
(1, 'Pen', ''),
(2, 'Pencil', ''),
(3, 'Eraser', ''),
(4, 'NoteBooks', ''),
(5, 'Sketches', ''),
(6, 'Crayons', ''),
(7, 'Geometry Box', ''),
(8, 'Books', ''),
(9, 'Water Cans', ''),
(10, 'Bags', ''),
(11, 'Shoes', ''),
(12, 'others', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `dist_id` int(11) NOT NULL,
  `dist_name` varchar(25) NOT NULL,
  `dist_email` varchar(50) DEFAULT NULL,
  `dist_phone` varchar(10) NOT NULL,
  `dist_address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`dist_id`, `dist_name`, `dist_email`, `dist_phone`, `dist_address`) VALUES
(1, 'Nishant Shah', 'nishant45@gmail.com', '8980769792', 'Alpha Mall, Vastrapur, Ahmedabad'),
(2, 'Rahul Pandey', 'rahul431@gmail.com', '9099432197', 'Gota, S.G. Highway, Ahmedabad'),
(3, 'Pawan Panchal', 'pawan.rocks@gmail.com', '7878025437', 'Modhera Stadium, Ahmedabad'),
(4, 'Pushpak Patel', 'pushpak@gmail.com', '9012376544', 'Navrangpura, Ahmedabad'),
(5, 'Haniket Patel', 'hanipatel@gmail.com', '8980745372', 'CTM, Ahmedabad');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `retailer_id` int(11) NOT NULL,
  `dist_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `total_amount` decimal(10,3) NOT NULL,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `order_id`, `retailer_id`, `dist_id`, `date`, `total_amount`, `comments`) VALUES
(1, 2, 4, 3, '2015-04-28', '5119.500', ''),
(2, 1, 2, 5, '2015-04-28', '4780.150', ''),
(3, 3, 1, 1, '2015-04-28', '8891.680', ''),
(4, 4, 5, 4, '2015-04-28', '7888.960', ''),
(5, 5, 5, 1, '2020-12-07', '8919.880', 'asd'),
(6, 5, 5, 2, '2024-02-20', '8919.880', ''),
(7, 5, 5, 2, '2024-02-20', '8919.880', ''),
(8, 5, 5, 2, '2024-02-20', '8919.880', ''),
(9, 5, 5, 2, '2024-02-20', '8919.880', 'huhuj'),
(10, 5, 5, 2, '2024-02-20', '8919.880', 'huhuj'),
(11, 5, 5, 2, '2024-02-20', '8919.880', 'huhuj'),
(12, 5, 5, 3, '2024-02-21', '8919.880', ''),
(13, 5, 5, 1, '2024-02-21', '8919.880', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `invoice_items_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`invoice_items_id`, `invoice_id`, `product_id`, `quantity`) VALUES
(1, 1, 4, 20),
(2, 1, 5, 5),
(3, 1, 7, 10),
(4, 1, 9, 10),
(5, 1, 12, 6),
(6, 1, 14, 5),
(7, 2, 1, 20),
(8, 2, 2, 15),
(9, 2, 5, 10),
(10, 2, 8, 5),
(11, 2, 10, 8),
(12, 2, 11, 10),
(13, 2, 13, 2),
(14, 2, 15, 3),
(15, 3, 1, 2),
(16, 3, 2, 4),
(17, 3, 3, 3),
(18, 3, 4, 8),
(19, 3, 5, 10),
(20, 3, 6, 12),
(21, 3, 8, 4),
(22, 3, 11, 10),
(23, 3, 13, 3),
(24, 3, 14, 5),
(25, 3, 15, 6),
(26, 4, 2, 12),
(27, 4, 4, 30),
(28, 4, 8, 4),
(29, 4, 11, 20),
(30, 4, 14, 8);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `man_id` int(11) NOT NULL,
  `man_name` varchar(25) NOT NULL,
  `man_email` varchar(50) DEFAULT NULL,
  `man_phone` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`man_id`, `man_name`, `man_email`, `man_phone`, `username`, `password`) VALUES
(1, 'Suresh Kumar', 'suresh@gmail.com', '9890234510', 'suresh', 'suresh123'),
(2, 'Ankit Pandya', 'ankitp@gmail.com', '8980956231', 'ankit', 'ankit123'),
(3, 'Paawan Shah', 'paawanshah@gmail.com', '9934672300', 'paawan', 'paawan123'),
(4, 'Jainish Shah', 'jainishshah@gmail.com', '9807634905', 'jainish', 'jainish123'),
(5, 'Krupal Joshi', 'krupal12@yahoo.co.in', '7634507610', 'krupal', 'krupal123'),
(6, 'janobe sourcecode', 'janobe@gmail.com', '9876565421', 'janobe', 'janobe'),
(7, 'Mohamed Akthar', 'mohamedakthar100@gmail.com', '9843463123', 'akthar', '12345'),
(8, 'xavier', 'abc@gamil.com', '1212121212', 'xavier', 'xavier');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `retailer_id` int(11) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `total_amount` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `date`, `retailer_id`, `approved`, `status`, `total_amount`) VALUES
(1, '2015-04-28', 2, 1, 1, '4780.150'),
(2, '2015-04-28', 4, 1, 1, '5119.500'),
(3, '2015-04-28', 1, 1, 1, '8891.680'),
(4, '2015-04-28', 5, 1, 1, '7888.960'),
(5, '2015-04-28', 5, 1, 0, '8919.880'),
(6, '2020-12-07', 1, 0, 0, '50.010'),
(7, '2024-02-20', 6, 0, 0, '61709.000'),
(8, '2024-02-21', 6, 0, 0, '26200.000');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_items_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `quantity` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_items_id`, `order_id`, `pro_id`, `quantity`) VALUES
(1, 1, 1, 20),
(2, 1, 2, 15),
(3, 1, 5, 10),
(4, 1, 8, 5),
(5, 1, 10, 8),
(6, 1, 11, 10),
(7, 1, 13, 2),
(8, 1, 15, 3),
(9, 2, 4, 20),
(10, 2, 5, 5),
(11, 2, 7, 10),
(12, 2, 9, 10),
(13, 2, 12, 6),
(14, 2, 14, 5),
(15, 3, 1, 2),
(16, 3, 2, 4),
(17, 3, 3, 3),
(18, 3, 4, 8),
(19, 3, 5, 10),
(20, 3, 6, 12),
(21, 3, 8, 4),
(22, 3, 11, 10),
(23, 3, 13, 3),
(24, 3, 14, 5),
(25, 3, 15, 6),
(26, 4, 2, 12),
(27, 4, 4, 30),
(28, 4, 8, 4),
(29, 4, 11, 20),
(30, 4, 14, 8),
(31, 5, 1, 1),
(32, 5, 2, 3),
(33, 5, 3, 5),
(34, 5, 4, 15),
(35, 5, 6, 30),
(36, 5, 8, 45),
(37, 5, 12, 20),
(38, 5, 14, 5),
(39, 6, 1, 1),
(40, 6, 2, 2),
(41, 7, 1, 200),
(42, 7, 4, 40),
(43, 7, 6, 67),
(44, 7, 7, 30),
(45, 7, 9, 100),
(46, 7, 12, 20),
(47, 7, 14, 20),
(48, 7, 15, 200),
(49, 7, 16, 20),
(50, 8, 2, 300),
(51, 8, 7, 20);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(25) NOT NULL,
  `pro_desc` text DEFAULT NULL,
  `pro_price` decimal(10,3) NOT NULL,
  `unit` int(11) NOT NULL,
  `pro_cat` int(11) NOT NULL,
  `quantity` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_id`, `pro_name`, `pro_desc`, `pro_price`, `unit`, `pro_cat`, `quantity`) VALUES
(1, 'Fountain Pens', 'stationary', '80.000', 2, 1, 10000),
(2, 'Ink Pen', '', '50.000', 2, 1, 10000),
(3, 'Flair Pen', '', '10.000', 2, 1, 10000),
(4, 'ParkerPen', '', '200.000', 2, 1, 10000),
(5, 'Apsara Pencils', '', '7.000', 2, 2, 10000),
(6, 'Nataraj Pencils', '', '7.000', 2, 2, 10000),
(7, 'Adidas Bags', '', '560.000', 2, 10, 10000),
(8, 'Puma Bags', '', '700.000', 2, 10, 10000),
(9, 'Apsara Geometric Box', '', '120.000', 2, 7, 10000),
(10, 'Camlin Crayons', '', '35.000', 2, 7, 10000),
(11, 'Plastic Cans', '', '120.000', 2, 9, 10000),
(12, 'Silver Cans', '', '112.000', 2, 9, 10000),
(13, 'Apsara Eraser', '', '12.000', 2, 3, 10000),
(14, 'Kids Color Books', '', '70.000', 2, 8, 10000),
(15, 'Colors Pen Sketches', '', '20.000', 2, 5, 10000),
(16, 'Nataraj Sketches', '', '40.000', 2, 5, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `retailer`
--

CREATE TABLE `retailer` (
  `retailer_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `address` varchar(200) NOT NULL,
  `area_id` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retailer`
--

INSERT INTO `retailer` (`retailer_id`, `username`, `password`, `address`, `area_id`, `phone`, `email`) VALUES
(1, 'altaf', 'altaf123', 'A4 Ali Abad Appt, Kajal Park Soci, Sarkhej Road, Ahmedabad', 1, '9978454323', 'altafneva@gmail.com'),
(2, 'nayan', 'nayan123', 'Opp. Shivalik Complex, Vastrapur, Ahmedabad', 2, '9898906523', 'nayan@gmail.com'),
(3, 'nishit', 'nishit123', 'B/H Kakariya Lake, Maninagar, Ahmedabad', 3, '8980941941', 'nishit@gmail.com'),
(4, 'dharmil', 'dharmil123', 'Near Vejalpur Police Station, Vejalpur, Ahmedabad', 5, '7865340091', 'dharmil123@gmail.com'),
(5, 'rajesh', 'rajesh123', 'C4-Pushpak Complex, New Ranip, Ahmedabad', 4, '7898902365', 'rajesh123@gmail.com'),
(6, 'saravanan', '12345', 'east street', 1, '9876545678', 'asd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(20) NOT NULL,
  `unit_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `unit_name`, `unit_details`) VALUES
(1, 'KG', 'Kilo Gram'),
(2, 'PCS', 'Pieces'),
(3, 'LTR', 'Litre');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`dist_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `retailer_id` (`retailer_id`),
  ADD KEY `dist_id` (`dist_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`invoice_items_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`man_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `retailer_id` (`retailer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_items_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `unit` (`unit`),
  ADD KEY `pro_cat` (`pro_cat`);

--
-- Indexes for table `retailer`
--
ALTER TABLE `retailer`
  ADD PRIMARY KEY (`retailer_id`),
  ADD KEY `area_code` (`area_id`),
  ADD KEY `area_id` (`area_id`),
  ADD KEY `area_id_2` (`area_id`),
  ADD KEY `area_id_3` (`area_id`),
  ADD KEY `area_id_4` (`area_id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `dist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `invoice_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `man_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `retailer`
--
ALTER TABLE `retailer`
  MODIFY `retailer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`retailer_id`) REFERENCES `retailer` (`retailer_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_ibfk_3` FOREIGN KEY (`dist_id`) REFERENCES `distributor` (`dist_id`) ON UPDATE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`pro_id`) ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`retailer_id`) REFERENCES `retailer` (`retailer_id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `products` (`pro_id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`unit`) REFERENCES `unit` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`pro_cat`) REFERENCES `categories` (`cat_id`) ON UPDATE CASCADE;

--
-- Constraints for table `retailer`
--
ALTER TABLE `retailer`
  ADD CONSTRAINT `retailer_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
