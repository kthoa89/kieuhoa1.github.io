-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2021 at 07:53 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo_tx`
--

-- --------------------------------------------------------

--
-- Table structure for table `image_library`
--

CREATE TABLE `image_library` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_library`
--

INSERT INTO `image_library` (`id`, `product_id`, `path`, `created_time`, `last_updated`) VALUES
(12, 20, 'uploads/21-04-2020/e1.png', 1587486207, 1587486207),
(13, 20, 'uploads/21-04-2020/e2.png', 1587486375, 1587486375),
(14, 20, 'uploads/21-04-2020/e3.png', 1587486375, 1587486375),
(15, 20, 'uploads/21-04-2020/e4.png', 1587486375, 1587486375),
(16, 20, 'uploads/21-04-2020/e5.png', 1587486375, 1587486375),
(17, 20, 'uploads/21-04-2020/e6.png', 1587486397, 1587486397);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `parent_id`, `name`, `link`, `position`, `created_time`, `last_updated`) VALUES
(4, 0, 'Level 1', 'home2.php', 0, 1555232698, 1555232698),
(5, 4, 'Level 2', 'product.php', 1, 1555232976, 1555232976),
(6, 5, 'Level 3', 'product.php', 0, 1555232976, 1555232976),
(7, 6, 'Level 4', 'home.php', 0, 1555232976, 1555232976),
(8, 4, 'Level 2.2', 'product.php', 2, 1555232976, 1555232976),
(9, 8, 'Level 3.2', 'product.php', 1, 1555427808, 1555427808),
(10, 7, 'Level 5', 'home.php', 0, 1555427808, 1555427808),
(16, 0, 'Level 1.2', 'home2.php', 1, 1555232698, 1555232698),
(17, 10, 'Level 6', '#', 1, 1555542591, 1555542591),
(20, 17, 'Level 7', '#', 1, 1555542591, 1555542591),
(21, 16, 'Level 2.2.2', 'home2.php', 1, 1555232698, 1555232698);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `phone`, `address`, `note`, `total`, `created_time`, `last_updated`) VALUES
(29, 'Andn', '0654654615', 'Ha Noi', 'Ghi chu', 8290000, 1587872426, 1587872426),
(29, 'Andn', '0654654615', 'Ha Noi', 'Ghi chu', 8290000, 1587872426, 1587872426);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_time`, `last_updated`) VALUES
(19, 29, 2, 1, 540000, 1587872426, 1587872426),
(20, 29, 18, 3, 1450000, 1587872426, 1587872426),
(21, 29, 20, 4, 850000, 1587872426, 1587872426);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` float NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `content`, `created_time`, `last_updated`) VALUES
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t1.png', 2000000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t2.png', 8000000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t3.png', 5600000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t4.png', 45000000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t5.png', 3400000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t6.png', 23000000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t7.png', 5700000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t8.png', 3500000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t9.png', 2550000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t10.png', 4500000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t11.png', 6800000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t12.png', 5050000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t13.png', 2900000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t2.png', 2400000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t2.png', 1200000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t1.png', 2000000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t3.png', 8000000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t5.png', 5600000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987),
(20, 'Túi xách đeo chéo nữ', 'uploads/06-03-2019/t6.png', 45000000, 'Túi xách đeo chéo nữ đẹp nhất 2021, siêu dễ thương – BH 12 Tháng', 1552615987, 1552615987);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `fullname`, `password`, `birthday`, `created_time`, `last_updated`) VALUES
(1, 'admin', 'Andn', '25d55ad283aa400af464c76d713c07ad', 123, 123, 1553185530);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image_library`
--
ALTER TABLE `image_library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
