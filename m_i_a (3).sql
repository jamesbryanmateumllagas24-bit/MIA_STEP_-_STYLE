-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2025 at 02:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m.i.a`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `order_numbers` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Items` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`order_numbers`, `fullname`, `address`, `email`, `user_name`, `password`, `Items`, `price`, `quantity`) VALUES
(1, 'Isabel Mayelin Arickx', 'Stacruz, Polangui, Albay', 'IMarickx@email.com', 'IMA01', '101010', 'BLACK SHOES, FORMAL SHOES', '269,359', 1),
(2, 'James Bryan Llagas', 'Irayasur, Oas, Albay', 'JBllagas@email.com', 'JL02', '10381', 'BROWN OUTDOOR  SANDALS', '499', 1),
(3, 'Marife Son', 'Macabugos, Libon, Albay', 'Mson@email.com', 'MS03', '60189', 'NUDE, CLASSY HIGH HEELS, RED, CLASSY HIGH HEELS', '1200,1200', 1),
(4, 'Angela Sofia Salimpade', 'Gabon, Polangui, Albay', 'Asalimpade@email.com', 'AS04', '11034', 'BLACK FLAT SANDALS', '235', 1),
(5, 'Mark James Bermido', 'Sagrada Familia, Libon, Albay', 'MJbermido@email.com', 'MJB05', '7348', 'BLACK LEATHER SANDALS, BROWN LEATHER SANDALS, WHITE LEATHER SANDALS', '359,359,359', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order details`
--

CREATE TABLE `order details` (
  `Order_id` int(11) NOT NULL,
  `Items` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order details`
--

INSERT INTO `order details` (`Order_id`, `Items`) VALUES
(1, 'BLACK DOLL SHOES, FORMAL SANDALS'),
(2, 'BROWN OUTDOOR SANDALS'),
(3, 'NUDE, CLASSY HIGH HEELS, RED CLASSY HIGH HEELS'),
(4, 'BLACK FLAT SANDALS'),
(5, 'BLACK LEATHER SANDALS, BROWN LEATHER SANDALS, WHITE LEATHER SANDALS');

-- --------------------------------------------------------

--
-- Table structure for table `order details table`
--

CREATE TABLE `order details table` (
  `Order_id` int(11) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order details table`
--

INSERT INTO `order details table` (`Order_id`, `product_id`, `quantity`) VALUES
(1, 'MIA-02, MIA-03', 1),
(2, 'MIA-06', 1),
(3, 'MIA-04, MIA-05', 1),
(4, 'MIA-01', 1),
(5, 'MIA-07, MIA-08, MIA-09', 1),
(95, '543', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_numbers` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Items` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT 'Processing',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_numbers`, `customer_name`, `address`, `email`, `user_name`, `password`, `Items`, `quantity`, `order_status`, `user_id`) VALUES
(1, 'Isabel Mayelin Arickx', 'Stacruz, Polangui, Albay', 'IMarickx@email.com', 'IMA01', 'IM101010', 'BLACK DOLLSHOES, 269 FORMAL SANDALS, 499', 2, 'Confirmed', 0),
(2, 'James Bryan Llagas', 'Irayasur, Oas, Albay', 'JBllagas@email.com', 'JL02', 'JL10381', 'BROWN OUTDOORS SANDALS, 359', 1, 'Processing', 0),
(3, 'Marife Son', 'Macabugos, Libon, Albay', 'Mson@email.com', 'MS03', 'MS60189', 'CLASSY HIGH HEELS, NUDE AND RED,1200', 2, 'Processing', 0),
(4, 'Angela Sofia Salimpade', 'Gabon, Polangui, Albay', 'Asalimpade@email.con', 'AS04', 'AS110347', 'BLACK FLAT SANDALS,235', 1, 'Processing', 0),
(5, 'Mark James Bermido', 'Sagrada Familia, Libon, Albay', 'MJbermido@email.com', 'MJB05', 'MJ734891', 'LEATHER SANDALS BLACK, BROWN WHITE, 359', 3, 'Processing', 0),
(26, '', '', '', 'markjames', '', 'Elegant Red High Heels', 2, 'Processing', 0),
(27, '', '', '', 'markjames', '', 'Elegant Red High Heels, Hiking Boots', 4, 'Processing', 0),
(28, '', '', '', 'markjames', '', 'Hiking Boots, Elegant Nude High Heels', 2, 'Processing', 0),
(29, '', '', '', 'markjames', '', 'Hiking Boots, Elegant Red High Heels, Elegant Nude High Heels', 3, 'Processing', 0),
(30, '', '', '', 'kupal ako', '', 'Hiking Boots', 1, 'Processing', 0),
(31, '', '', '', 'kupal ako', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(32, '', '', '', 'kupal ako', '', 'Hiking Boots', 1, 'Processing', 0),
(33, '', '', '', 'kupal ako', '', 'Hiking Boots', 1, 'Processing', 0),
(34, '', '', '', 'markjames', '', 'Hiking Boots', 1, 'Processing', 0),
(35, '', '', '', 'markjames', '', 'Elegant Nude High Heels, Hiking Boots, Elegant Red High Heels, White Leather Sandals, Doll Shoes, Fo', 9, 'Processing', 0),
(36, '', '', '', 'markjames', '', 'Hiking Boots', 1, 'Processing', 0),
(37, '', '', '', 'markjames', '', 'White Leather Sandals, Elegant Red High Heels', 2, 'Processing', 0),
(38, '', '', '', 'markjames', '', 'Brown Leather Sandals, Hiking Boots', 2, 'Processing', 0),
(39, '', '', '', 'markjames', '', 'Hiking Boots', 2, 'Processing', 0),
(40, '', '', '', 'markjames', '', 'Elegant Nude High Heels', 1, 'Processing', 0),
(41, '', '', '', 'markjames', '', 'White Leather Sandals, Elegant Red High Heels, Hiking Boots, Elegant Nude High Heels, Doll Shoes', 5, 'Processing', 0),
(42, '', '', '', 'markjames', '', 'Hiking Boots', 1, 'Processing', 0),
(43, '', '', '', 'markjames', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(44, '', '', '', 'markjames', '', 'Elegant Red High Heels, White Leather Sandals', 2, 'Processing', 0),
(45, '', '', '', 'james', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(46, '', '', '', 'markjames', '', 'Elegant Red High Heels, Hiking Boots', 2, 'Processing', 0),
(47, '', '', '', 'markjames', '', 'Black Leather Sandals, Elegant Red High Heels, White Leather Sandals', 7, 'Processing', 0),
(48, '', '', '', 'markjames', '', 'Elegant Red High Heels', 2, 'Processing', 0),
(49, '', '', '', 'markjames', '', 'Hiking Boots', 1, 'Processing', 0),
(50, '', '', '', 'markjames', '', 'Hiking Boots', 1, 'Processing', 0),
(51, '', '', '', 'markjames', '', 'White Leather Sandals', 1, 'Processing', 0),
(52, '', '', '', 'markjames', '', 'White Leather Sandals', 1, 'Processing', 0),
(53, '', '', '', 'kupal ako', '', 'Hiking Boots', 1, 'Processing', 0),
(54, '', '', '', 'markjames', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(55, '', '', '', 'pogiako', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(56, '', '', '', 'markjames', '', 'White Leather Sandals, Hiking Boots, Elegant Nude High Heels', 3, 'Processing', 0),
(57, 'mark james', 'libon', 'mjbermido@email.com', 'markjames', '', 'BLACK DOLL SHOES', 1, 'Processing', 0),
(58, 'mark james', 'libon', 'mjbermido@email.com', 'markjames', '', '', 0, 'Processing', 0),
(59, 'mark james', 'libon', 'mjbermido@email.com', 'markjames', '', '', 0, 'Processing', 0),
(60, 'mark james', 'libon', 'mjbermido@email.com', 'markjames', '', '', 0, 'Processing', 0),
(61, 'mark james', 'libon', 'mjbermido@email.com', 'markjames', '', '', 0, 'Processing', 0),
(62, 'mark james', 'libon', 'mjbermido@email.com', 'markjames', '', '', 0, 'Processing', 0),
(63, 'mark james', 'libon', 'mjbermido@email.com', 'markjames', '', 'BLACK DOLL SHOES', 1, 'Processing', 0),
(64, 'mark james', 'libon', 'mjbermido@email.com', 'markjames', '', '', 0, 'Processing', 0),
(65, 'mark james', 'libon', 'mjbermido@email.com', 'markjames', '', '', 0, 'Processing', 0),
(66, 'mark james', 'libon', 'mjbermido@email.com', 'markjames', '', '', 0, 'Processing', 0),
(67, '', '', '', 'markjames', '', 'Elegant Red High Heels', 3, 'Processing', 0),
(68, 'mark james', 'libon', 'mjbermido@email.com', 'markjames', '', 'BLACK DOLL SHOES', 1, 'Processing', 0),
(69, 'mark james', 'libon', 'mjbermido@email.com', 'markjames', '', '', 0, 'Processing', 0),
(70, 'mark james', 'libon', 'mjbermido@email.com', 'markjames', '', 'FORMAL SANDALS', 1, 'Processing', 0),
(71, '', '', '', 'markjames', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(72, '', '', '', 'markjames', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(73, '', '', '', 'engot', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(74, '', '', '', 'markjames', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(75, '', '', '', 'markjames', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(76, '', '', '', 'markjames', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(77, '', '', '', 'markjames', '', 'Elegant Red High Heels, ', 2, 'Processing', 0),
(78, '', '', '', 'markjames', '', '', 2, 'Processing', 0),
(79, '', '', '', 'markjames', '', ', ', 3, 'Processing', 0),
(80, '', '', '', 'markjames', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(81, '', '', '', 'markjames', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(82, '', '', '', 'markjames', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(83, '', '', '', 'ediwow', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(84, '', '', '', 'ediwow', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(85, '', '', '', 'ediwow', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(86, '', '', '', 'ediwow', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(87, '', '', '', 'ediwow', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(88, '', '', '', 'ediwow', '', 'White Leather Sandals', 1, 'Processing', 0),
(89, '', '', '', 'bermidokupal', '', 'Hiking Boots', 1, 'Processing', 0),
(90, '', '', '', 'bermidokupal', '', '', 1, 'Processing', 0),
(91, '', '', '', 'bermidokupal', '', 'Brown Leather Sandals', 1, 'Processing', 0),
(92, '', '', '', 'bermidokupal', '', '', 1, 'Processing', 0),
(93, '', '', '', 'bermidokupal', '', '', 1, 'Processing', 0),
(94, '', '', '', 'bermidokupal', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(95, 'bermido', 'Germany', 'bermidokupal@email.com', 'bermidokupal', 'bermidokupal', '543,2', 3, 'Processing', 0),
(96, '', '', '', 'bermidokupal', '', ', Elegant Red High Heels', 3, 'Processing', 0),
(97, '', '', '', 'jamesbermido', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(98, '', '', '', 'jamesbermido', '', 'Elegant Red High Heels', 1, 'Processing', 0),
(99, '', '', '', 'jamesbermido', '', '', 1, 'Processing', 0),
(100, '', '', '', 'jamesbermido', '', '', 1, 'Processing', 0),
(101, '', '', '', 'jamesbermido', '', 'Elegant Red High Heels x1', 1, 'Processing', 0),
(102, '', '', '', 'jamesbermido', '', 'blackshoes x1', 1, 'Processing', 0),
(103, '', '', '', 'jamesbermido', '', 'Elegant Red High Heels x1', 1, 'Processing', 0),
(104, '', '', '', 'jamesbermido', '', 'blackshoes x1', 1, 'Processing', 0),
(105, '', '', '', 'jamesbermido', '', 'Elegant Red High Heels x1', 1, 'Processing', 0),
(106, '', '', '', 'jamesbermido', '', 'blackshoes x1', 1, 'Processing', 0),
(107, '', '', '', 'jamesbermido', '', 'blackshoes x1, Elegant Red High Heels x1, Hiking Boots x1', 3, 'Processing', 0),
(108, '', '', '', 'jamesbermido', '', 'Elegant Red High Heels x1', 1, 'Processing', 0),
(109, '', '', '', 'jamesbermido', '', 'Elegant Red High Heels x1', 1, 'Processing', 0),
(110, '', '', '', 'jamesbermido', '', 'blackshoes x1', 1, 'Processing', 0),
(111, '', '', '', 'jamesbermido', '', 'blackshoes x1', 1, 'Processing', 0),
(112, '', '', '', 'jamesbermido', '', 'Brown Leather Sandals x1, blackshoes x1', 2, 'Processing', 0),
(113, '', '', '', 'JB', '', 'Elegant Red High Heels x1', 1, 'Processing', 0),
(114, '', '', '', 'JB', '', 'sport shoes x1', 1, 'Processing', 0),
(115, '', '', '', 'JB', '', 'blackshoes x1', 1, 'Processing', 0),
(116, '', '', '', 'JB', '', 'Elegant Red High Heels x1', 1, 'Processing', 0),
(117, '', '', '', 'JB', '', 'White Leather Sandals x1', 1, 'Processing', 0),
(118, '', '', '', 'JB', '', 'Hiking Boots x1, Elegant Red High Heels x1, White Leather Sandals x1', 3, 'Processing', 0),
(119, '', '', '', 'JB', '', 'Elegant Red High Heels x1', 1, 'Processing', 0),
(120, '', '', '', 'JB', '', 'bermido shoes x1', 1, 'Confirmed', 0),
(121, '', '', '', 'JB', '', 'bermido shoes x1', 1, 'Processing', 0),
(122, '', '', '', 'JB', '', 'bermido shoes x1', 1, 'Processing', 0),
(123, '', '', '', 'JB', '', 'Elegant Red High Heels x1', 1, 'Processing', 0),
(124, '', '', '', 'JB', '', 'Elegant Red High Heels x1', 1, 'Processing', 0),
(125, '', '', '', 'lao', '', 'bermido shoes x1', 1, 'Processing', 0),
(126, '', '', '', 'lao', '', 'Elegant Red High Heels x1', 1, 'Processing', 0),
(127, '', '', '', 'lao', '', 'bermido shoes x1', 1, 'Processing', 0),
(128, '', '', '', 'lao', '', 'Elegant Red High Heels x1', 1, 'Processing', 0),
(129, '', '', '', 'lao', '', 'Elegant Red High Heels x1', 1, 'Processing', 0),
(130, '', '', '', 'lao', '', 'bermido shoes x2', 2, 'Processing', 0),
(131, '', '', '', 'lao', '', 'Elegant Red High Heels x1, Formal Sandals x1', 2, 'Processing', 0),
(132, '', '', '', 'wahhh', '', 'Hiking Boots x1, Black Flat Sandals x1', 2, 'Processing', 0),
(133, '', '', '', 'JB', '', 'KUMAG x1', 1, 'Processing', 0),
(134, '', '', '', 'JB', '', 'sda x1', 1, 'Processing', 0),
(135, '', '', '', 'JB', '', 'Elegant Red High Heels x1', 1, 'Confirmed', 0),
(136, '', '', '', 'JB', '', 'Hiking Boots x1', 1, 'Confirmed', 0),
(137, '', '', '', 'bermido', '', 'Elegant Red High Heels x1', 1, 'Processing', 0),
(138, '', '', '', 'bermido', '', 'Elegant Red High Heels x1', 1, 'Confirmed', 0),
(139, '', '', '', 'bermido', '', 'NIKE Lebron 20 x1', 1, 'Confirmed', 0),
(140, '', '', '', 'bermido', '', 'Elegant Red High Heels x1', 1, 'Confirmed', 0),
(141, '', '', '', 'bermido', '', 'NIKE Lebron 20 x1', 1, 'Confirmed', 0),
(142, '', '', '', 'jems', '', 'Elegant Red High Heels x1', 1, 'Confirmed', 0),
(143, '', '', '', 'jon', '', 'Hiking Boots x1', 1, 'Confirmed', 0),
(144, '', '', '', 'gela', '', 'Hiking Boots x1', 1, 'Confirmed', 0),
(145, '', '', '', 'jon', '', 'Elegant Red High Heels x1', 1, 'Confirmed', 0),
(146, '', '', '', 'jon', '', 'Hiking Boots x1', 1, 'Confirmed', 0),
(147, '', '', '', 'jon', '', 'Hiking Boots x1', 1, 'Confirmed', 0),
(148, '', '', '', 'jon', '', 'White Leather Sandals x1', 1, 'Confirmed', 0),
(149, '', '', '', 'jon', '', 'NIKE Lebron 20 x1', 1, 'Confirmed', 0),
(150, '', '', '', 'jon', '', 'Hiking Boots x1', 1, 'Confirmed', 0),
(151, '', '', '', 'jon', '', 'Hiking Boots x1', 1, 'Confirmed', 0),
(152, '', '', '', 'james', '', 'Elegant Red High Heels x1, Elegant Nude High Heels x1', 2, 'Confirmed', 0),
(153, '', '', '', 'james', '', 'NIKE Lebron 20 x1', 1, 'Confirmed', 0),
(154, '', '', '', 'james', '', 'leather shoes x1', 1, 'Confirmed', 0),
(155, '', '', '', 'lablan', '', 'Hiking Boots x2', 2, 'Confirmed', 0),
(156, '', '', '', 'mar', '', 'Doll Shoes x1', 1, 'Confirmed', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order table`
--

CREATE TABLE `order table` (
  `Order_id` int(11) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `Order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order table`
--

INSERT INTO `order table` (`Order_id`, `Customer_id`, `Order_date`) VALUES
(1, 11, '2025-09-17 01:18:19'),
(2, 12, '2025-09-17 01:18:19'),
(3, 13, '2025-09-18 01:18:19'),
(4, 14, '2025-09-18 01:18:19'),
(5, 15, '2025-09-19 01:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `image_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_id`, `product_name`, `price`, `description`, `image_link`) VALUES
(1, 'White Leather Sandals', 359.00, 'Comfortable loafers, sizes 7-13. Perfect for casual wear.', 'WHITE SANDALS.jpg'),
(2, 'Elegant Red High Heels', 1200.00, 'Leather pair with 3-inch heel, sizes 5-11. Ideal for parties or work.', 'RED CLASSY HIGH HEELS.jpg'),
(3, 'Hiking Boots', 499.00, 'Waterproof pair, sizes 7-13. Built for trails and tough terrains.', 'HIKING BOOTS.jpg'),
(4, 'Elegant Nude High Heels', 1200.00, 'Leather pair with 3-inch heel, sizes 5-11. Ideal for parties or work.', 'NUDE CLASSY HIGH HEELS.jpg'),
(5, 'Doll Shoes', 269.00, 'Casual and comfortable for everyday use, sizes 7-11.', 'DOLLSHOES.jpg'),
(6, 'Formal Sandals', 359.00, 'Casual, sizes 7-11. Ideal for work.', 'FORMAL SANDALS.jpg'),
(7, 'Black Flat Sandals', 235.00, 'Lightweight everyday shoes, sizes 6-11.', 'BLACK FLAT SANDALS.jpg'),
(8, 'Black Leather Sandals', 359.00, 'Comfortable loafers, sizes 7-13. Perfect for casual wear.', 'BLACK LEATHER SANDALS.jpg'),
(9, 'Brown Leather Sandals', 359.00, 'Comfortable loafers, sizes 7-13. Perfect for casual wear.', 'BROWN LEATHER SANDALS.jpg'),
(11, 'blackshoes', 100.00, 'Good for schools and jobs', 'blackshoes.jpg'),
(12, 'NIKE Lebron 20', 10000.00, 'size 7-15 Good for basketball', 'lebron.jpg'),
(14, 'leather shoes', 900.00, 'ddsad', 'leather.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `customer_name`, `address`, `email`, `user_name`, `password`) VALUES
(1, 'kevin', 'UK', 'kevin@email.com', 'nash', '$2y$10$9SnDL5D.OfC7BIwC7nvj9umucsxLA6fsFTVwtpckYWqf5Bzw9sTTK'),
(11, 'Isabel Mayelin Arickx', 'Stacruz, Polangui ,Albay', 'IMarickx@email.com', 'IMA01', 'IM101010'),
(12, 'James Bryan Llagas', 'Irayasur, Oas ,Albay', 'JBllagas@email.com', 'JL02', 'JL103812'),
(13, 'Marife Son', 'Macabugos, Libon ,Albay', 'Mson@email.com', 'MS03', 'MS601895'),
(14, 'Angela Sofia Salimpade', 'Gabon, Polangui ,Albay', 'Asalimpade@email.com', 'AS04', 'AS110347'),
(15, 'Mark James Bermido', 'Sagrada Familia, Libon ,Albay', 'MJbermido@email.com', 'MJB05', 'MJ734891 '),
(41, 'mark bermido', 'libon', 'bermido@email.com', 'bermido', '$2y$10$sb6bgq8iMKpwyZSjWK2Tt.lziN080BfHQCNhriLRggFENI4bLXTkW'),
(42, 'llagas', 'france', 'llagas@email.com', 'jems', '$2y$10$mDt2hMXvQ4Aor1k0zBvgh.V9kTSLHB.j6pk7RPB2aySWVM0ocMZMi'),
(44, 'jonjon', 'samar', 'jonjon@email.com', 'jon', '$2y$10$teaGKfc1LrnPMbIhqe3SVOmJmMBRjszAcLSCWa9SuyXF4MCsUabcO'),
(45, 'isabel', 'gabon', 'sabel@email.com', 'sabel', '$2y$10$SSPsap.0AFMz2XNeFrgAiefGurm0BJJu.6V/gt.kngynbB41X.LRK'),
(46, 'angela', 'gabon', 'angela@email.com', 'gela', '$2y$10$meLPUegRUI3wfFExToK7AeX8mrCDK.U6bmhk1Kf9Ev6G4fuJ9c3.6'),
(47, 'James', 'oas', 'james@email.com', 'james', '$2y$10$UhUS1oY0u5D2USrcFYQohOfH.dPCJnE6oeeDugxLXRWuOdKOLlu9O'),
(48, 'kew', 'Libon', 'kew@email.com', 'kew', '$2y$10$WY2a/20Br.X4vVVks/QTKuR2vdD.CzrbHh6Cni7cqY64UfAy8qSAe'),
(49, ' Joana mae', 'Sagrada Familia Libon, Albay', 'joanamae@email.com', 'lablan', '$2y$10$JcRP0hppVHQwrKj0fVog4elOciJIz7D5elfkSYq/q/A1tB..n/0eK'),
(50, 'mar', 'samar', 'mar@email.com', 'mar', '$2y$10$JGDv1oTk2m39i7BJ3Zi4..SXAJFGt7aS/1L.ay7xu8FKCNapghDT.'),
(51, 'Marl', 'gabon', 'marl@email.com', 'marl', '$2y$10$fbN/QoMDlQLS/QZ0A2sncuitBGe9A8mLLKTCZHc73HiVYBlnBRIuK'),
(52, 'bew', 'Libon', 'bew@email.com', 'bew', '$2y$10$nPOKenAOCp88Tq9HnB.1nub6LsHboqRag0xGIyzefnfhg.zeGJd76');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`order_numbers`);

--
-- Indexes for table `order details`
--
ALTER TABLE `order details`
  ADD PRIMARY KEY (`Order_id`);

--
-- Indexes for table `order details table`
--
ALTER TABLE `order details table`
  ADD PRIMARY KEY (`Order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_numbers`);

--
-- Indexes for table `order table`
--
ALTER TABLE `order table`
  ADD PRIMARY KEY (`Order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `order_numbers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order details`
--
ALTER TABLE `order details`
  MODIFY `Order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order details table`
--
ALTER TABLE `order details table`
  MODIFY `Order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_numbers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `order table`
--
ALTER TABLE `order table`
  MODIFY `Order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=544;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
