-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 12:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(2, 1, 2, 'Brown Vintage Knitting  Bag', 30, 1, 'IMG_9687-removebg-preview.png'),
(3, 1, 3, 'White Knitting Bag', 34, 1, 'IMG_9688-removebg-preview.png');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'sabila', 'sabila@gmail.com', '0834567892', 'Pesanan saya segera diproses ya');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'Sabila', '0897534679', 'sabila@gmail.com', 'paytm', 'flat no. Bumijo, Jetis, Yogyakarta, Pingit, Indonesia - 55326', 'Brown Vintage Knitting  Bag (30 x 1) - ', 30, '2023-06-12', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(1, 'Brown Casual Knitting Bag', 'Setiap tas rajut yang kami tawarkan dihasilkan dengan hati-hati oleh para pengrajin berbakat yang memiliki pengalaman bertahun-tahun dalam membuat produk berkualitas tinggi. Kami menggunakan bahan rajutan berkualitas terbaik yang memberikan kekuatan dan ketahanan luar biasa pada tas kami, sehingga tas rajut kami tidak hanya tampak indah tetapi juga awet dan tahan lama.', 24, 'IMG_9686-removebg-preview.png', 'IMG_9686-removebg-preview.png', 'IMG_9686-removebg-preview.png'),
(2, 'Brown Vintage Knitting  Bag', 'Setiap tas rajut yang kami tawarkan dihasilkan dengan hati-hati oleh para pengrajin berbakat yang memiliki pengalaman bertahun-tahun dalam membuat produk berkualitas tinggi. Kami menggunakan bahan rajutan berkualitas terbaik yang memberikan kekuatan dan ketahanan luar biasa pada tas kami, sehingga tas rajut kami tidak hanya tampak indah tetapi juga awet dan tahan lama.', 30, 'IMG_9687-removebg-preview.png', 'IMG_9687-removebg-preview.png', 'IMG_9687-removebg-preview.png'),
(3, 'White Knitting Bag', 'Setiap tas rajut yang kami tawarkan dihasilkan dengan hati-hati oleh para pengrajin berbakat yang memiliki pengalaman bertahun-tahun dalam membuat produk berkualitas tinggi. Kami menggunakan bahan rajutan berkualitas terbaik yang memberikan kekuatan dan ketahanan luar biasa pada tas kami, sehingga tas rajut kami tidak hanya tampak indah tetapi juga awet dan tahan lama.', 34, 'IMG_9688-removebg-preview.png', 'IMG_9688-removebg-preview.png', 'IMG_9688-removebg-preview.png'),
(4, 'White Knitting Wallet', 'Setiap dompet rajut kami dibuat dengan tangan oleh pengrajin terampil yang menggunakan benang berkualitas tinggi, menghasilkan rajutan yang presisi dan kuat. Kualitas kerajinan tangan ini memastikan bahwa dompet kami tahan lama dan dapat digunakan dalam jangka waktu yang lama.\r\nSelain keindahannya, dompet rajut kami juga sangat fungsional. ', 11, 'IMG_9689-removebg-preview.png', 'IMG_9689-removebg-preview.png', 'IMG_9689-removebg-preview.png'),
(5, 'Grey Knitting Wallet', 'Setiap dompet rajut kami dibuat dengan tangan oleh pengrajin terampil yang menggunakan benang berkualitas tinggi, menghasilkan rajutan yang presisi dan kuat. Kualitas kerajinan tangan ini memastikan bahwa dompet kami tahan lama dan dapat digunakan dalam jangka waktu yang lama.\r\nSelain keindahannya, dompet rajut kami juga sangat fungsional. ', 12, 'IMG_9690-removebg-preview.png', 'IMG_9690-removebg-preview.png', 'IMG_9690-removebg-preview.png'),
(6, 'Vintage Knitt Wallet', 'Setiap dompet rajut kami dibuat dengan tangan oleh pengrajin terampil yang menggunakan benang berkualitas tinggi, menghasilkan rajutan yang presisi dan kuat. Kualitas kerajinan tangan ini memastikan bahwa dompet kami tahan lama dan dapat digunakan dalam jangka waktu yang lama.\r\nSelain keindahannya, dompet rajut kami juga sangat fungsional. ', 14, 'IMG_9691-removebg-preview.png', 'IMG_9691-removebg-preview.png', 'IMG_9691-removebg-preview.png'),
(7, 'Blue Knitted Belt', 'Desain sabuk rajut kami menampilkan keindahan pola rajutan yang unik dan menarik. Kami menawarkan berbagai pilihan desain, mulai dari pola sederhana hingga yang lebih rumit, sesuai dengan selera dan gaya Anda. Anda dapat memilih warna yang sesuai dengan pakaian atau menambahkan sentuhan kontras untuk menonjolkan penampilan Anda.', 13, 'IMG_9692-removebg-preview.png', 'IMG_9692-removebg-preview.png', 'IMG_9692-removebg-preview.png'),
(8, 'Casual Knitting Belt', 'Desain sabuk rajut kami menampilkan keindahan pola rajutan yang unik dan menarik. Kami menawarkan berbagai pilihan desain, mulai dari pola sederhana hingga yang lebih rumit, sesuai dengan selera dan gaya Anda. Anda dapat memilih warna yang sesuai dengan pakaian atau menambahkan sentuhan kontras untuk menonjolkan penampilan Anda.', 13, 'IMG_9693-removebg-preview.png', 'IMG_9693-removebg-preview.png', 'IMG_9693-removebg-preview.png'),
(9, 'Vintage Knitt Belt', 'Desain sabuk rajut kami menampilkan keindahan pola rajutan yang unik dan menarik. Kami menawarkan berbagai pilihan desain, mulai dari pola sederhana hingga yang lebih rumit, sesuai dengan selera dan gaya Anda. Anda dapat memilih warna yang sesuai dengan pakaian atau menambahkan sentuhan kontras untuk menonjolkan penampilan Anda.', 14, 'IMG_9694-removebg-preview.png', 'IMG_9694-removebg-preview.png', 'IMG_9694-removebg-preview.png'),
(10, 'Black Knitting Shoes', 'Setiap sepasang sepatu rajut kami dibuat dengan tangan penuh keahlian dan perhatian detail. Dengan menggunakan teknik rajut yang cermat dan benang berkualitas tinggi, kami menghasilkan produk yang tidak hanya indah secara visual, tetapi juga tahan lama dan nyaman untuk dipakai.', 41, 'IMG_9695-removebg-preview.png', 'IMG_9695-removebg-preview.png', 'IMG_9695-removebg-preview.png'),
(11, 'Brown Elegance Knitting Shoes', 'Setiap sepasang sepatu rajut kami dibuat dengan tangan penuh keahlian dan perhatian detail. Dengan menggunakan teknik rajut yang cermat dan benang berkualitas tinggi, kami menghasilkan produk yang tidak hanya indah secara visual, tetapi juga tahan lama dan nyaman untuk dipakai.', 41, 'IMG_9697-removebg-preview.png', 'IMG_9697-removebg-preview.png', 'IMG_9697-removebg-preview.png'),
(12, 'Hair Tie - Accessories', 'Hair Tie rajut kami dibuat menggunakan benang berkualitas tinggi yang lembut dan tahan lama, memberikan kenyamanan ekstra saat digunakan. Dengan tangan yang terampil dan detail yang cermat, kami menghasilkan hair tie yang indah, dilengkapi dengan berbagai pola dan warna yang memikat. Dari pola klasik hingga desain modern yang trendi, kami menawarkan berbagai pilihan yang sesuai dengan gaya dan kepribadian Anda.', 7, 'IMG_9698-removebg-preview.png', 'IMG_9698-removebg-preview.png', 'IMG_9698-removebg-preview.png'),
(13, 'Bandana Knitt - Accessories', 'Hair Tie rajut kami dibuat menggunakan benang berkualitas tinggi yang lembut dan tahan lama, memberikan kenyamanan ekstra saat digunakan. Dengan tangan yang terampil dan detail yang cermat, kami menghasilkan hair tie yang indah, dilengkapi dengan berbagai pola dan warna yang memikat. Dari pola klasik hingga desain modern yang trendi, kami menawarkan berbagai pilihan yang sesuai dengan gaya dan kepribadian Anda.', 3, 'IMG_9699-removebg-preview.png', 'IMG_9699-removebg-preview.png', 'IMG_9699-removebg-preview.png'),
(14, 'Knitt Scarves - Accessories', 'Hair Tie rajut kami dibuat menggunakan benang berkualitas tinggi yang lembut dan tahan lama, memberikan kenyamanan ekstra saat digunakan. Dengan tangan yang terampil dan detail yang cermat, kami menghasilkan hair tie yang indah, dilengkapi dengan berbagai pola dan warna yang memikat. Dari pola klasik hingga desain modern yang trendi, kami menawarkan berbagai pilihan yang sesuai dengan gaya dan kepribadian Anda.', 9, 'IMG_9700-removebg-preview.png', 'IMG_9700-removebg-preview.png', 'IMG_9700-removebg-preview.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'sabila', 'sabila@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
