-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2023 at 06:18 AM
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
-- Database: `cart_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`) VALUES
(12, 'MUBASHIRA SHAIKH', 'MUBASHIRA.612055.it@mhssce.ac.in', '9833691762', 'Sahakar road\r\nJogeshwari', 'cod', 'Influencer Kit(1), Bridal Kit(1), Makeup Brushes(2)', '7349'),
(13, 'MUBASHIRA SHAIKH', 'MUBASHIRA.612055.it@mhssce.ac.in', '9833691762', 'Sahakar road\r\nJogeshwari', 'cod', 'Bath & Spa Kit(1), Bridal Kit(2)', '11500'),
(14, 'Mubashira', 'sarashaikh@gmail.com', '1234567899', 'Jogeshwari', 'cod', 'Bath & Spa Kit(2), Mystery Box(1)', '5000'),
(15, 'MUBASHIRA SHAIKH', 'MUBASHIRA.612055.it@mhssce.ac.in', '9833691762', 'Sahakar road\r\nJogeshwari', 'netbanking', 'Bath & Spa Kit(1), Influencer Kit(2)', '4598');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT 1,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_code`) VALUES
(1, 'Mystery Box', '2000', 0, 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRV_lHcXGgbGOWTZbiNatfkKNqjDeVb19kjPpwQZHe4qagzuwzVcuXymg370f90A_Ys27xHP_3nrDmm2p31zadpjJ9OWoTcx4Sf-z-RBUw&usqp=CAE', 'p1000'),
(2, 'Influencer Kit', '1549', 0, 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSDmrvk6lGKztO75VRrRSZGxx-53GGgxeAkgo-i9zV_l71PFucrpaer4r1anY4VtG7oCc1vDjRmFBSTZDLT3LCPSQOMtA_iqnj3SABj1YftOxoG2qmyblA3&usqp=CAE', 'p1001'),
(3, 'Bridal Kit', '5000', 0, 'https://blog.venuelook.com/wp-content/uploads/2021/07/Estee-Lauder-2-640x564.jpg', 'p1002'),
(4, 'Bath & Spa Kit', '1500', 0, 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcT0vVNf15oSKR-vfSLUcD9uC6ps9vfWtHxSPsPPbPq3hk1n5D-mkz-aiwmMfppbwEK6JUOvej9OChr7LM00nDJzAdykv3liCfs5-SnPL5JCcBcUBx6Sl8EG6g&usqp=CAE', 'p1003'),
(5, 'Wedding Kit', '3000', 0, 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcReGDdQOoHBoR6kzm0FDwV15r0movDErJjlQ-pGSPhyb4q42D28EKNgv9p3BEZglagY8SzKbIyUbR4R34BO6lwlA8HWeDozVOGBS8jOc52U&usqp=CAE', 'p1004'),
(6, 'Good Girl Perfume', '5000', 0, 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRFAbj3a2QxBSphbriNbey61fPbGJ3Uqe8zKd5bs70Yf189JMN0lY4ImfGXC4FvU_vWlW0daxueFyWU0LvGF74kwQ5UVVFV6JySJhFK5-KgWQZfvdh0dv97&usqp=CAE', 'p1005'),
(7, 'Styling Combo', '6960', 0, 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQ3PTcXRkTtifnhL3Q1Pn3SJ9A1UYrfvL0_M37r4nej2yWbVMWiwaBRwDIcFMaW4y34Qg55uLBcQjj-vIHUsnLb0nTqz8PW2ETV1xy3vLG9JClBRXbPfzVp&usqp=CAE', 'p1006'),
(8, 'Makeup Brushes', '400', 0, 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQRKMpqerOt6dOXKY9HkaxUeTDQ_trXXrEndqslXcvqr-N7p-hrKDClDEPrc62fATK1xGyGFREReLNdNTQU_zVV1_vc2rZjN_ScRqqOzPVcfHph_K2zaJcFuQ&usqp=CAE', 'p1007'),
(9, 'Velvet Lipsticks', '510', 0, 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSrbZEsX9675tj21bIgSAsidqW5XxgltmQktLa8wAoCCbocps-Fw40Dyu4wRBu3-wedUJN6tpKAJNkNmW3KSa2V4sd1nniHqMiHZgXOnwyzMLSJ__HWTxEw&usqp=CAE', 'p1008'),
(10, 'Gold Facial', '800', 0, 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQFBWkcEId7z8yT-YlJucxCoOzNGabe8JjT6qUvzUsmoM-Sv8BDMPSkznLG5D_J4xHhwBUhIFmmpFWPzNkFMYnyB6DuhdM-nxQ6kYKOWAcAgXfnPn8CkY6O&usqp=CAE', 'p1009'),
(11, 'Gift Kit', '980', 0, 'https://bryanandcandy.com/cdn/shop/products/BRYAN00000048_1_700x.jpg?v=1649686110', 'p1010'),
(12, 'Perfume Kit', '2000', 0, 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRusdANzBVA8BHihOY4udMEOiFWJq6Qy-nXl-xHTcnZLSBIkwPaXFg-2G6gt_IAQQwd99iuXzJYf3pEV9GS3QgjzN6vGGgoVxVG4GL0CwT0ZK3VcBUrJ5jFiQ&usqp=CAE', 'p1011');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code_2` (`product_code`),
  ADD KEY `product_code` (`product_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
