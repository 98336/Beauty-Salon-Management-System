-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2023 at 05:56 AM
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
-- Database: `bpmsdb`
--
CREATE DATABASE IF NOT EXISTS `bpmsdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bpmsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `price` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `description`, `price`, `image`, `created`, `modified`) VALUES
(12345678, 'Review Our Website & Services', '', 34000, 'apple-iphone-6.jpeg', '0000-00-00 00:00:00', '2019-01-19 08:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `item_rating`
--

CREATE TABLE `item_rating` (
  `ratingId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `ratingNumber` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = Block, 0 = Unblock'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item_rating`
--

INSERT INTO `item_rating` (`ratingId`, `itemId`, `userId`, `ratingNumber`, `title`, `comments`, `created`, `modified`, `status`) VALUES
(14, 12345678, 1, 4, 'A Must-Have for Beauty Lovers', 'I can\'t recommend this salon management system enough. It\'s a must-have for anyone who cares about their beauty regimen. It\'s a game-changer.', '2018-08-19 09:13:01', '2018-08-19 09:13:01', 1),
(15, 12345678, 2, 5, 'Modernizing the Beauty Industry', 'This system is modernizing the beauty industry. It\'s a glimpse into the future of beauty salons. I\'m impressed by the innovation and convenience it offers.', '2018-08-19 09:13:37', '2018-08-19 09:13:37', 1),
(16, 12345678, 3, 4, 'Efficient and Time-Saving', 'I appreciate how this system values my time. No more long queues or endless searching for the right product. It\'s a one-stop-shop for all my beauty needs.', '2018-08-19 09:14:19', '2018-08-19 09:14:19', 1),
(17, 12345678, 4, 5, 'Shop Your Favorite Products', 'I love the shopping feature. It\'s convenient and trustworthy. I can shop for my favorite beauty products without leaving the app. It\'s made my beauty routine so much more efficient.', '2018-08-19 09:18:00', '2018-08-19 09:18:00', 1),
(23, 12345678, 5, 5, 'Chatbot Convenience', 'The chatbot feature is a real time-saver. It\'s like having a beauty expert at your fingertips 24/7. You can get advice, recommendations, and answers to your questions instantly.', '2019-01-20 17:01:37', '2019-01-20 17:01:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_users`
--

CREATE TABLE `item_users` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `item_users`
--

INSERT INTO `item_users` (`userid`, `username`, `password`, `avatar`) VALUES
(1, 'rose', '123', 'user1.jpg'),
(2, 'smith', '123', 'user2.jpg'),
(3, 'adam', '123', 'user3.jpg'),
(4, 'merry', '123', 'user4.jpg'),
(5, 'katrina', '123', 'user5.jpg'),
(6, 'rhodes', '123', 'user6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7898799798, 'tester1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-05-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblbook`
--

CREATE TABLE `tblbook` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `AptNumber` int(10) DEFAULT NULL,
  `AptDate` date DEFAULT NULL,
  `AptTime` time DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbook`
--

INSERT INTO `tblbook` (`ID`, `UserID`, `AptNumber`, `AptDate`, `AptTime`, `Message`, `BookingDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, 7, 729411824, '2022-05-12', '19:03:00', 'Test msg', '2022-05-12 18:30:00', 'Your appointment has been book.', 'Selected', '2022-05-13 06:11:41'),
(2, 7, 767068476, '2022-05-14', '09:00:00', 'fghfshdgfahgrfgh', '2022-05-12 18:30:00', 'Sorry your appointment has been cancelled', 'Rejected', '2022-05-13 06:14:39'),
(4, 10, 931783426, '2022-05-18', '15:40:00', 'NA', '2022-05-15 05:04:13', NULL, NULL, NULL),
(5, 10, 284544154, '2022-05-18', '15:40:00', 'NA', '2022-05-15 05:04:13', NULL, NULL, NULL),
(6, 10, 494039785, '2022-05-31', '14:47:00', 'NA', '2022-05-15 05:13:24', NULL, NULL, NULL),
(8, 10, 891247645, '2022-05-28', '20:14:00', 'nA', '2022-05-28 08:43:55', 'Your booking is confirmed.', 'Selected', '2022-05-28 08:51:22'),
(9, 11, 985654240, '2022-05-29', '13:10:00', 'NA', '2022-05-29 07:34:47', 'Your appointment is confirmed', 'Selected', '2022-05-29 07:35:36'),
(10, 12, 368156502, '2023-10-25', '19:00:00', 'F3 Facial', '2023-10-22 12:52:59', 'Accepted', 'Selected', '2023-10-22 12:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `FirstName`, `LastName`, `Phone`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(5, 'Kajal', 'Sharma', 9879878798, 'kajal@gmail.com', 'guhgjhg', '2022-05-10 08:43:18', 1),
(6, 'Anuj', 'Kumar', 1234567890, 'ak@gmail.com', 'Need booking for marriage', '2022-06-01 01:05:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(4, 7, 4, 138889283, '2022-05-13 11:42:21'),
(5, 7, 9, 138889283, '2022-05-13 11:42:21'),
(6, 7, 16, 138889283, '2022-05-13 11:42:21'),
(7, 8, 3, 555850701, '2022-05-13 11:42:51'),
(8, 8, 6, 555850701, '2022-05-13 11:42:51'),
(9, 8, 9, 555850701, '2022-05-13 11:42:51'),
(10, 8, 11, 555850701, '2022-05-13 11:42:51'),
(13, 10, 1, 330026346, '2022-05-28 08:51:42'),
(14, 10, 2, 330026346, '2022-05-28 08:51:42'),
(15, 11, 2, 379060040, '2022-05-29 07:36:17'),
(16, 11, 5, 379060040, '2022-05-29 07:36:18'),
(17, 11, 6, 379060040, '2022-05-29 07:36:18'),
(18, 11, 12, 379060040, '2022-05-29 07:36:18'),
(19, 11, 3, 460087279, '2022-06-01 01:03:58'),
(20, 12, 1, 921766321, '2023-10-22 12:54:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '        Our main focus is on quality and hygiene. Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials &amp; fashion hair colourings.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '              Jogeshwari West, Mumbai 400102', 'info@gmail.com', 1234567890, NULL, '9:00 am to 9:00 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServiceDescription` mediumtext DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `ServiceDescription`, `Cost`, `Image`, `CreationDate`) VALUES
(1, 'O3 Facial', 'O3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 FacialO3 Facial', 1200, 'o3plus-professional-bridal-facial-kit-for-radiant-glowing-skin.jpg', '2022-05-24 22:37:38'),
(2, 'Fruit Facial', 'Fruit facials contain certain fruit acid like glycolic acid, alpha hydroxyl acid, citric acid, phenolic acid, vitamins and minerals in it. These acids are antiblemish, antiwrinkle and help your skin to exfoliate, it highly detoxifies your skin, it excretes out all the toxins and it hydrates your face', 500, 'How-To-Do-Fruit-Facial-At-Home.jpg', '2022-05-24 22:37:53'),
(3, 'Charcol Facial', 'Activated charcoal is created from bone char, coconut shells, peat, petroleum coke, coal, olive pits, bamboo, or sawdust. It is in the form of a fine black dust that is produced when regular charcoal is activated by exposing it to very high temperatures. This is done to alter its internal structure and increase its surface area to increase absorbability. The charcoal that you get after it has undergone this process is very porous.', 1000, 'b9fb9d37bdf15a699bc071ce49baea531652852364.jpg', '2022-05-24 22:37:10'),
(4, 'Deluxe Menicure', 'A luxurious treatment including a soak and moisturizing exfoliation, cuticle work, nails clipped and filed, hard skin is removed (pedicure) and a renewing mask is applied. A short massage and your nails are buffed and ready to paint.', 500, 'efc1a80c391be252d7d777a437f868701652852477.jpg', '2022-05-24 22:37:34'),
(5, 'Deluxe Pedicure', 'A luxurious treatment including a soak and moisturizing exfoliation, cuticle work, nails clipped and filed, hard skin is removed (pedicure) and a renewing mask is applied. A short massage and your nails are buffed and ready to paint.', 600, '1e6ae4ada992769567b71815f124fac51652852492.jpg', '2022-05-24 22:37:47'),
(6, 'Normal Menicure', 'A luxurious treatment including a soak and moisturizing exfoliation, cuticle work, nails clipped and filed, hard skin is removed (pedicure) and a renewing mask is applied. A short massage and your nails are buffed and ready to paint.', 300, 'The-Dummys-Guide-To-Using-A-Manicure-Kit_OI.jpg', '2022-05-24 22:37:01'),
(7, 'Normal Pedicure', 'A luxurious treatment including a soak and moisturizing exfoliation, cuticle work, nails clipped and filed, hard skin is removed (pedicure) and a renewing mask is applied. A short massage and your nails are buffed and ready to paint.', 400, '1e6ae4ada992769567b71815f124fac51652852492.jpg', '2022-05-24 22:37:19'),
(8, 'U-Shape Hair Cut', 'U-Shape Hair Cut', 250, 'cff8ad28cf40ebf4fbdd383fe546098d1652852593.jpg', '2022-05-24 22:37:38'),
(9, 'Layer Haircut', 'Layer Haircut', 550, '74375080377499ab76dad37484ee7f151652852649.jpg', '2022-05-24 22:37:53'),
(10, 'Rebonding', 'Hair rebonding is a chemical process that changes your hair\'s natural texture and creates a smooth, straight style. It\'s also called chemical straightening. Hair rebonding is typically performed by a licensed cosmetologist at your local hair salon.', 3999, 'c362f21370120580f5779a2d019392851652852555.jpg', '2022-05-24 22:37:08'),
(11, 'Loreal Hair Color(Full)', 'Loreal Hair Color(Full),Loreal Hair Color(Full),Loreal Hair Color(Full)', 1200, 'images.jpg', '2022-05-24 22:37:35'),
(12, 'Body Spa', 'It is typically a massage spa therapy that helps reduce pain. The technique involves using fingertips, palm, elbow, or even feet to apply firm pressure on certain body parts or acupoint to encourage blood flow and promote healing', 1500, 'efc1a80c391be252d7d777a437f868701652852477.jpg', '2022-05-19 01:38:27'),
(16, 'Aroma Oil Massage Therapy', 'Aroma Oil Massage TherapyAroma Oil Massage TherapyAroma Oil Massage TherapyAroma Oil Massage TherapyAroma Oil Massage', 700, '032b2cc936860b03048302d991c3498f1652173213.jpg', '2022-05-09 20:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(120) DEFAULT NULL,
  `LastName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Khusi', NULL, 8956234569, 'khusi@gmail.com', '202cb962ac59075b964b07152d234b70', '2021-10-16 14:22:03'),
(2, 'Rishi Singh', NULL, 5689234578, 'rishi@gmail.com', '202cb962ac59075b964b07152d234b70', '2021-10-16 14:37:49'),
(3, 'Abir Singh', NULL, 2147483649, 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2021-10-16 14:40:20'),
(4, 'Test Sample', NULL, 8797977779, 'sample@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-04-08 05:51:06'),
(5, 'Anuj  kumar', NULL, 1236547890, 'test@test.com', 'f925916e2754e5e03f75dd58a5733251', '2020-05-07 08:52:34'),
(6, 'ghhg', NULL, 8888888888, 'c@gmail.com', '202cb962ac59075b964b07152d234b70', '2021-12-14 05:27:32'),
(7, 'Tina', 'Khan', 9789797987, 'tina@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-05-11 09:21:46'),
(8, 'Hima', 'Sharma', 8979798789, 'hima@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-05-11 09:23:16'),
(10, 'Anuj', 'Kumar', 1425362514, 'ak@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-05-15 05:03:32'),
(11, 'John', 'Doe', 1452632541, 'johndoe@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-05-29 07:33:58'),
(12, 'Sara', 'SHAIKH', 1234567890, 'sara@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-10-22 11:13:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_rating`
--
ALTER TABLE `item_rating`
  ADD PRIMARY KEY (`ratingId`);

--
-- Indexes for table `item_users`
--
ALTER TABLE `item_users`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbook`
--
ALTER TABLE `tblbook`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12345680;

--
-- AUTO_INCREMENT for table `item_rating`
--
ALTER TABLE `item_rating`
  MODIFY `ratingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `item_users`
--
ALTER TABLE `item_users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbook`
--
ALTER TABLE `tblbook`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `cart_system`
--
CREATE DATABASE IF NOT EXISTS `cart_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cart_system`;

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
(13, 'MUBASHIRA SHAIKH', 'MUBASHIRA.612055.it@mhssce.ac.in', '9833691762', 'Sahakar road\r\nJogeshwari', 'cod', 'Bath & Spa Kit(1), Bridal Kit(2)', '11500');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `chat_bot_db`
--
CREATE DATABASE IF NOT EXISTS `chat_bot_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `chat_bot_db`;

-- --------------------------------------------------------

--
-- Table structure for table `keyword_fetched`
--

CREATE TABLE `keyword_fetched` (
  `response_id` int(30) NOT NULL,
  `client` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keyword_fetched`
--

INSERT INTO `keyword_fetched` (`response_id`, `client`) VALUES
(1, '::1'),
(1, '::1'),
(1, '::1'),
(1, '::1'),
(1, '::1'),
(1, '::1'),
(1, '::1'),
(1, '::1'),
(9, '::1'),
(1, '::1'),
(1, '::1'),
(11, '::1'),
(13, '::1'),
(14, '::1'),
(1, '::1'),
(11, '::1'),
(12, '::1'),
(13, '::1'),
(14, '::1'),
(17, '::1'),
(21, '::1'),
(9, '::1'),
(10, '::1'),
(13, '::1'),
(14, '::1'),
(17, '::1'),
(20, '::1'),
(25, '::1'),
(26, '::1'),
(9, '::1'),
(12, '::1'),
(13, '::1'),
(29, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `keyword_list`
--

CREATE TABLE `keyword_list` (
  `response_id` int(30) NOT NULL,
  `keyword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keyword_list`
--

INSERT INTO `keyword_list` (`response_id`, `keyword`) VALUES
(9, 'What services do you offer?'),
(9, 'Services'),
(10, 'How can I book an appointment?'),
(12, 'How much does a haircut and style cost?'),
(13, 'Do you offer any discounts or promotions?'),
(14, 'Can I bring my own nail polish?'),
(15, 'What\'s the cancellation policy?'),
(16, 'Do you offer wedding or event packages?'),
(18, 'What hair products do you use?'),
(19, 'How long does a typical appointment take?'),
(20, 'Can I request a specific stylist?'),
(21, 'What hair treatments do you offer?'),
(22, 'Are your products cruelty-free?'),
(24, 'Do you offer makeup services?'),
(25, 'Can I change my hairstyle during my appointment?'),
(27, 'What types of facials do you offer?'),
(28, 'Do you offer hair and makeup services for bridal parties?'),
(26, 'Thank You'),
(26, 'Thanks'),
(29, 'Bye'),
(1, 'Hello'),
(1, 'Hi'),
(1, 'Hey'),
(11, 'What are your operating hours?'),
(17, 'Can I buy gift certificates for your services?'),
(23, 'Can I bring my children to the salon?');

-- --------------------------------------------------------

--
-- Table structure for table `response_list`
--

CREATE TABLE `response_list` (
  `id` int(30) NOT NULL,
  `response` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `response_list`
--

INSERT INTO `response_list` (`id`, `response`, `status`, `date_created`, `date_updated`) VALUES
(1, 'Hi, welcome to Beauty Salon ChatBot.', 1, '2022-05-05 10:30:35', '2023-10-22 17:30:56'),
(9, '<p>We offer a range of services including haircuts, styling, coloring, extensions, manicures, pedicures, facials, waxing, and more. Is there a specific service you\'re interested in?<br></p>', 1, '2023-10-22 17:14:20', '2023-10-22 17:14:20'),
(10, '<p>You can easily book an appointment by visiting our website or calling our salon directly. Additionally, you can use our website&nbsp; to book an appointment by providing your preferred date and time.<br></p>', 1, '2023-10-22 17:15:27', '2023-10-22 17:15:27'),
(11, '<p>We are open from 9:00 am to 9:00 pm on all 7 days. Feel free to book an appointment during these hours.<br></p>', 1, '2023-10-22 17:16:41', '2023-10-22 17:16:41'),
(12, '<p>Our haircut and style services start at 400 INR. The final cost may vary based on the complexity of the style and additional treatments.&nbsp;<br></p>', 1, '2023-10-22 17:17:37', '2023-10-22 17:17:37'),
(13, '<p>Yes, we often have special promotions and discounts available. Please check our website or ask our staff for the current offers.<br></p>', 1, '2023-10-22 17:18:19', '2023-10-22 17:18:19'),
(14, '<p>We prefer to use our own professional-grade products to ensure the best results. However, if you have a specific color in mind, we can try to match it from our collection.<br></p>', 1, '2023-10-22 17:19:00', '2023-10-22 17:19:00'),
(15, '<p>We understand that plans can change. Please let us know at least 24 hours in advance if you need to cancel or reschedule your appointment.<br></p>', 1, '2023-10-22 17:19:57', '2023-10-22 17:19:57'),
(16, '<p>Yes, we offer customized packages for weddings and special events. Please contact us directly to discuss your specific needs.</p><div><br></div>', 1, '2023-10-22 17:20:44', '2023-10-22 17:20:44'),
(17, '<p>Absolutely! We offer gift certificates that can be used for any of our services. They make wonderful presents for special occasions.</p><div><br></div>', 1, '2023-10-22 17:21:16', '2023-10-22 17:21:16'),
(18, '<p>We use a variety of high-quality professional products that are suitable for different hair types. Our stylists can recommend products tailored to your specific needs.<br></p>', 1, '2023-10-22 17:22:10', '2023-10-22 17:22:10'),
(19, '<p>The duration of an appointment depends on the service you\'re interested in. For example, a haircut and style usually takes about 30-45 minutes, while a manicure can take around an hour. Would you like more specific information?<br></p>', 1, '2023-10-22 17:23:11', '2023-10-22 17:23:11'),
(20, '<p>Yes, you can certainly request a specific stylist when booking your appointment. If you have a preference, please let us know and we\'ll do our best to accommodate your request.<br></p>', 1, '2023-10-22 17:24:03', '2023-10-22 17:24:03'),
(21, '<p>We offer a range of hair treatments including deep conditioning, keratin treatments, and more. These treatments are designed to improve the health and appearance of your hair.<br></p>', 1, '2023-10-22 17:24:55', '2023-10-22 17:24:55'),
(22, '<p>Yes, we prioritize using cruelty-free and ethically sourced products in our salon. We believe in providing quality services that align with our values.<br></p>', 1, '2023-10-22 17:25:30', '2023-10-22 17:25:30'),
(23, '<p>Absolutely! We welcome clients of all ages. We have services available for children as well, and we strive to create a family-friendly environment.</p><div><br></div>', 1, '2023-10-22 17:26:07', '2023-10-22 17:26:07'),
(24, '<p>Yes, we provide professional makeup services for various occasions including weddings, events, and special occasions. Our makeup artists are skilled in creating a look that suits your preferences.</p><p><br></p>', 1, '2023-10-22 17:26:47', '2023-10-22 17:26:47'),
(25, '<p>Absolutely! If you\'d like to try a different hairstyle or make adjustments during your appointment, just let your stylist know. We\'re here to make sure you leave feeling your best.<br></p>', 1, '2023-10-22 17:27:09', '2023-10-22 17:27:09'),
(26, '<p>You are Welcome!</p>', 1, '2023-10-22 17:27:45', '2023-10-22 17:27:45'),
(27, '<p>We offer a variety of facials tailored to different skin types and concerns, including deep cleansing, hydrating, anti-aging, and more. Our experienced estheticians can recommend the best option for you.<br></p>', 1, '2023-10-22 17:28:23', '2023-10-22 17:28:23'),
(28, '<p>Yes, we offer bridal packages that can include hair and makeup services for the bride and bridal party. Please contact us in advance to discuss your specific needs and preferences.<br></p>', 1, '2023-10-22 17:28:47', '2023-10-22 17:28:47'),
(29, '<p>Bye. Have a Nice Day!</p>', 1, '2023-10-22 17:29:18', '2023-10-22 17:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion_list`
--

CREATE TABLE `suggestion_list` (
  `response_id` int(30) NOT NULL,
  `suggestion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suggestion_list`
--

INSERT INTO `suggestion_list` (`response_id`, `suggestion`) VALUES
(9, 'How can I book an appointment?'),
(9, 'What are your operating hours?'),
(9, 'How much does a haircut and style cost?'),
(10, 'What are your operating hours?'),
(10, 'Do you offer any discounts or promotions?'),
(10, 'Can I bring my own nail polish?'),
(12, 'Do you offer any discounts or promotions?'),
(12, 'Thanks'),
(13, 'Can I bring my own nail polish?'),
(13, 'Bye'),
(14, 'Do you offer wedding or event packages?'),
(14, 'Can I buy gift certificates for your services?'),
(14, 'What hair products do you use?'),
(15, 'Do you offer wedding or event packages?'),
(15, 'What hair products do you use?'),
(16, 'What\'s the cancellation policy?'),
(16, 'What hair products do you use?'),
(18, 'How long does a typical appointment take?'),
(18, 'Can I request a specific stylist?'),
(19, 'Can I request a specific stylist?'),
(19, 'Are your products cruelty-free?'),
(20, 'Can I change my hairstyle during my appointment?'),
(20, 'What types of facials do you offer?\r\n'),
(20, 'Do you offer hair and makeup services for bridal parties?'),
(21, 'Are your products cruelty-free?'),
(21, 'Can I bring my children to the salon?\r\n'),
(21, 'Can I change my hairstyle during my appointment?'),
(22, 'Can I change my hairstyle during my appointment?'),
(22, 'Do you offer hair and makeup services for bridal parties?'),
(24, 'Can I change my hairstyle during my appointment?'),
(24, 'What types of facials do you offer?'),
(25, 'Thanks'),
(27, 'Do you offer hair and makeup services for bridal parties?'),
(27, 'Thank You'),
(27, 'Bye'),
(28, 'Bye'),
(28, 'Thanks'),
(1, 'What services do you offer?'),
(1, 'How can I book an appointment?'),
(1, 'What are your operating hours?'),
(11, 'Do you offer any discounts or promotions?'),
(11, 'How much does a haircut and style cost?'),
(17, 'How long does a typical appointment take?'),
(17, 'Can I request a specific stylist?'),
(17, 'What hair treatments do you offer?'),
(23, 'Can I change my hairstyle during my appointment?'),
(23, 'What types of facials do you offer?');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Beauty Bot'),
(6, 'short_name', 'BB'),
(11, 'logo', 'uploads/logo.png?v=1651712009'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1651712184'),
(15, 'no_answer', '<p>Sorry, I don&apos;t have any response to your query. Try to rephrase or rewrite your query. Thanks!</p>'),
(16, 'suggestion', '[\"What services do you offer?\",\"Hello\",\"Hi\"]'),
(17, 'welcome_message', '<p>Hi there! Welcome to our site.  You can ask me anything and I will try my best to answer it all.  </p>'),
(18, 'bot_name', 'ChattyBot');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Beauty', 'Bot', 'BB', 'f925916e2754e5e03f75dd58a5733251', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2021-01-20 14:02:37', '2023-10-22 17:08:33'),
(4, 'Sara', 'Shaikh', 'Sara123', 'c7162ff89c647f444fcaa5c635dac8c3', 'https://img.freepik.com/premium-vector/woman-profile-cartoon_18591-58480.jpg', NULL, 2, '2022-05-04 14:27:21', '2023-10-22 17:07:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keyword_fetched`
--
ALTER TABLE `keyword_fetched`
  ADD KEY `response_id` (`response_id`);

--
-- Indexes for table `keyword_list`
--
ALTER TABLE `keyword_list`
  ADD KEY `response_id` (`response_id`);

--
-- Indexes for table `response_list`
--
ALTER TABLE `response_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion_list`
--
ALTER TABLE `suggestion_list`
  ADD KEY `response_id` (`response_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `response_list`
--
ALTER TABLE `response_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keyword_fetched`
--
ALTER TABLE `keyword_fetched`
  ADD CONSTRAINT `response_id_fk_kf` FOREIGN KEY (`response_id`) REFERENCES `response_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `keyword_list`
--
ALTER TABLE `keyword_list`
  ADD CONSTRAINT `response_id_fk_kl` FOREIGN KEY (`response_id`) REFERENCES `response_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `suggestion_list`
--
ALTER TABLE `suggestion_list`
  ADD CONSTRAINT `response_id_fk_sl` FOREIGN KEY (`response_id`) REFERENCES `response_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `newsbuzz`
--
CREATE DATABASE IF NOT EXISTS `newsbuzz` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `newsbuzz`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(4) NOT NULL,
  `title` varchar(225) NOT NULL,
  `author` varchar(225) NOT NULL,
  `postdate` date NOT NULL,
  `image` text NOT NULL,
  `content` text NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(225) NOT NULL,
  `tag` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `author`, `postdate`, `image`, `content`, `updated_on`, `status`, `tag`) VALUES
(48, 'FACE WASHING 101: HOW TO WASH FACE CORRECTLY', 'admin', '2023-10-22', '689421.jpg', 'Cleansing your face has got to be the easiest thing to do, right? I mean, how tough can this be - you splash water on your face, rub in the cleanser and then rinse. Over the top, this is how you do it yes, but if you want to know how to properly wash your face, then today you will take away a thing or two. To begin with, not cleansing your face correctly can lead to skin problems like acne or dullness. In addition, any skincare product you apply thereafter, will not penetrate your skin fully, as there is still uncleared debris on your skin. Not just that, having a squeaky clean face also has to do with the fact about when, how often and what kind of cleanser you use. Simply cleansing your face right will shoo away all these problems, so what are we waiting for? Let&rsquo;s begin.\r\nHow To Wash Face Correctly?\r\nThe duration\r\nAs a thumb rule, you should massage your face for a minimum of 30 seconds to 1 minute. Any less and the product did not have enough time to clean your skin, any more, you might dry out your skin.\r\nThe quantity\r\nIt might seem the more product you use, the better results you reap. But, that&rsquo;s not the case. Always follow the quantity mentioned on the product. If there isn&rsquo;t any, then a coin-sized amount should suffice.\r\nThe water temperature\r\nYour face&rsquo;s skin is waaayy thinner and sensitive than the rest of your body. So, even though you might love those long hot showers, always cleanse your face with lukewarm water. Why? Couple of reasons here. Hot water can dilate blood vessels and cause breakage in the delicate tissue. It can also dry out your face, making it scaly over time.\r\nThe frequency\r\nIdeally, you should be cleansing your face twice a day - once in the morning and once before bed. Although, if you do have extremely dry and sensitive skin then you may swap the morning wash with a water-only rinse. But say, if there is excessive sweating after a workout or so, you should use a cleanser.\r\nThe perfect match\r\nDo you feel as if your skin is greasy even after cleansing? Or does it feel too tight or rough after you&rsquo;ve cleansed it? In both cases, you can be using the wrong cleanser. You need a gentle and creamy cleanser if your skin tends to be dry and sensitive. Those with oily skin should pick a gel or foam based cleanser. If your skin is prone to acne, pick a cleanser with ingredients like tea tree oil or salicylic acid for best results.\r\nThe additional step\r\nGuess what, learning how to wash face correctly may require an extra step. It&rsquo;s for those who wear long-wear, smudge-proof makeup, where your gentle cleanser may not cut through. What you need here is micellar water, or an oil-based cleanser. This is the concept of double cleansing. You melt away stubborn makeup using either of these, then follow up with your regular water-based cleanser. Doing this will eliminate traces of makeup and dirt like no other.\r\nThe right order\r\nSplash your face with lukewarm water, take a sufficient amount of your cleanser and massage your face, jaw and neck for 30 seconds - 60 seconds. Then thoroughly rinse, and you&rsquo;re done! Always ensure that you&rsquo;re using a clean face towel and following up with moisturiser.\r\n&nbsp;\r\n&nbsp;\r\n&nbsp;\r\n&nbsp;\r\n&nbsp;\r\n&nbsp;\r\n&nbsp;\r\n&nbsp;', '2023-10-22 13:54:14', 'published', 'Face wash'),
(47, 'DRY V/S DEHYDRATED SKIN. WHAT’S THE DIFFERENCE?', 'admin', '2023-10-22', '983465.jpg', 'Dry skin and dehydrated skin are both common skincare conditions that can occur in people of all ages. While the two conditions may look and feel similar, they are very different. Dry skin is caused by a lack of oil production, while dehydration is caused by a lack of water in the skin. Understanding the difference between these two conditions is essential to finding the right treatment and achieving healthy, glowing skin. In this article, we will discuss the differences between dryness and dehydration, as well as how to identify them and treat them effectively.\r\nDry skin is a skin type that doesn&#39;t produce enough oils to keep your skin moisturised and protect it from the environment.&nbsp; Whereas dehydrated skin lacks water and moisture in the uppermost layer of the skin. The loss in water can disrupt the skin&rsquo;s barrier and can cause your skin to feel itchy, tight and uncomfortable. Dehydrated skin can happen to varying skin types: oily, normal, combination and acne-prone.\r\nHow to identify if your skin is dry or dehydrated?\r\nThe easiest way to tell if your skin is dehydrated is if you pinch your cheek or the back of your hand and it wrinkles with slight pressure instead of bouncing back. Dehydrated skin will also appear dull and feel tight. On the other hand, dry skin is characterised by lack of oil. So, think flaky, rough and itchy skin. It&rsquo;s vital to understand if your skin is dehydrated or dry, as your choice of moisturisers would depend on it.\r\nHow to treat dry and dehydrated skin?\r\nIf you have dry skin then stick to using cream-based and oil-based skincare products to tackle this condition. If you think your skin is dehydrated, then stick to using humectants that will attract moisture to your skin. You should steer clear from products that strip the skin of water. Look for ingredients like squalane,&nbsp;ceramides&nbsp;and peptides that will aid in hydrating your skin, maintaining your skin health, improving your skin&nbsp;barrier&nbsp;and calming inflammation.\r\nTo combat dry skin incorporate a moisturising cleanser, sunscreen deemed fit for the pertinent skin type. You may look for ingredients like HA and paraffin that give your skin the adequate amount of hydration, round the clock.\r\nFor dehydrated skin, use formulations that will help repair the marred acid mantle while also dwindling episodes of inflammation. Usage of soothing ingredients like Aloe Vera, Vitamin E, Avocado Oil and Olive Oil along with ceramides would be recommended. If you are grappling with dehydrated skin it is advisable to steer clear of actives, from time to time. Case in point:If you have a combination or oily skin type (generally) which is dehydrated at the moment &mdash; directing efforts towards treating the skin barrier should take precedence over your regular administration of active-imbued skincare.\r\n&nbsp;', '2023-10-22 13:54:20', 'published', 'dry, dehydrated'),
(45, 'THE BEST ANTI-AGING SKIN CARE ROUTINE', 'SARA', '2023-10-22', '929224.jpg', 'How many of you remember actress&nbsp;Ira Dubey&nbsp;in the&nbsp;Olay&nbsp;ad? The 20 something actress talked about her carefree attitude to skincare till she had it professionally evaluated, only to discover she had age spots, fines lines, the works. Oh horror! Still, the dizzying range of anti-aging skincare products with their long lists of ingredients can be off putting. We&rsquo;ll show you where to start and how to find the right anti-aging skin strategy for girls in their 20s and 30s.\r\nHere are some of the best anti-ageing skin care tips nobody told you before:\r\n1. Prevention is the first step\r\nThis doesn&rsquo;t mean you should rush off to your dermatologist and ask for Botox and Fillers to smooth out barely-there lines! Instead start by taking care of your skin, with a sensible skin care routine, sun protection, a healthy diet and not smoking. Don&rsquo;t ever leave home without sun protection. In fact apply it indoors and outdoors even on cloudy days. Take your pick from&nbsp;Neutrogena UltraSheer Dry Touch Sunblock SPF 50+,&nbsp;Lakme Sun Expert SPF 50 PA+++ Ultra Matte Gel Sunscreen&nbsp;Sebamed Multiprotect Sunsreen SPF 50+&nbsp;or&nbsp;Kaya Sweat Proof Sunscreen SPF 30+&nbsp;depending on your skin type. It won&rsquo;t hurt to take a daily skin loving multivitamin too like&nbsp;Purayati Vitamins For Hair Skin And Nails - 90 Tablets. &nbsp;\r\nMost anti-aging creams are targeted at the above 40 set, so do you really need a tightening potion when you&rsquo;re still young? Skin expert Dr. Dhimant Goleria says, &ldquo;Women enter a &lsquo;pre-age&rsquo; phase in their late 20s to mid-30s when barely noticeable fine lines around the mouth and sun spots first start showing up.&rdquo; His advice: &ldquo;It&rsquo;s sensible for women in their mid-20s to start using appropriate skin care to ward off skin aging.&rdquo;&nbsp;&nbsp;\r\n2. Start small and build from there\r\nThis doesn&rsquo;t mean you should rush out and stockpile every anti-aging potion you can lay your hands on. Start by integrating one new product instead of an army of heavy hitters. Adding one formula that sun protects, hydrates and evens out your skin tone is more than enough. Try&nbsp;Olay Regenerist Advanced Anti-Ageing Revitalizing Serum&nbsp;an intensive treatment with&nbsp;anti ageing ingredients such as Vitamin E, Pro-Vitamin B5, Green Tea Extract, Allantion and Glycerin. Another good option is&nbsp;Olay Total Effects 7 In One Anti-Ageing Skin Cream Day / Normal&nbsp;that fights the first signs of skin aging; dark spots, loss of elasticity, lines, wrinkles, uneven skin tone and open pores. Apply this twice a day after your toner and before your moisturizer or foundation.\r\n3. Retinol: To use or not to use?\r\nSure it&rsquo;s the proven gold standard in anti-aging skin care routine because of its proven benefits in treating blemishes, uneven tone and regenerating collagen. So isn&rsquo;t a retinoid cream the one you should pick right away? No! It isn&rsquo;t the case of one size fits all. While retinols can increases cell cycle turnover, decreases pore size and reduce sun damage, it may not be the best option for you. Retinoids can cause flare-ups on acne prone skin while dry skins can get even drier.&nbsp;Instead look for products with tiny concentrations of Retinol, and a mix of Alpha Hydroxy Acid and antioxidants such as&nbsp;Kaya Brightening Night Cream&nbsp;and&nbsp;Lakme Youth Infinity Skin Sculpting Day Creme SPF 15 ++As for your nighttime routine, look no further than Ponds Age Miracle Wrinkle Corrector Night Cream that works on all skin types at every age. It is specially designed to speed up cell renewal while simultaneously stimulating your skin from within work on all skin types at every age. And don&rsquo;t underestimate the power of an eye cream.&nbsp;Lakme Absolute&rsquo;s Argan Oil Radiance Night Revival Eye Cream&nbsp;is a non-sticky formula that&rsquo;s enriched with moroccan argan oil and Opti Glow Complex that works wonders at night. &nbsp;\r\n4. Revise your morning skin care routine\r\nStart your day with an antioxidant-rich potion that contains peptides and plant stem cells because of their preventive qualities.&nbsp;Since air pollution and the sun&rsquo;s rays are the source of free radicals that damage living cells causing aging, its sensible to use an antioxidant-rich formula before stepping out for the day, says Dr. Goleria.&nbsp;You could use&nbsp;Himalaya Herbals Nourishing Skin Cream&nbsp;that contains herbal extracts of Aloe Vera, Winter Cherry and India Kino tree extracts that moisturize, nourish and protect against pollution. Or try&nbsp;Fabindia Vitamin E Cream De-Pigmentation&nbsp;that is blended with Vitamins A, C and E to provide deep hydration and optimal skin protection from harmful UVA and UVB rays.\r\n5. Skin smart tip: Use a moisturizing sunscreen\r\nWe can&rsquo;t stress enough how important sunscreen is. Instead of slathering on multiple layers of formula on your face, get skin smart by buying a moisturizing sunscreen formula; it keeps skin soft and supple and protects against sun induced photo aging. Remember not to fall into the trap of lavishing all your attention only on your face. &ldquo;Get into the good habit of applying sunscreen on your neck, d&eacute;colletage, arms, hands and feet as well. In fact, all visible skin should be sun protected,&rdquo; says Dr. Goleria. Your neck and hands are where sun damage start showing up. &nbsp;Use&nbsp;Age Lock SPF 40 Multi-Vitamin, a double action sunscreen that is also infused with multi vitamins that protect skin from harmful rays and pollution to give you a healthy glow.&nbsp;Nivea Moisturising Sun Lotion SPF 50&nbsp;is also a good option. It not only protects against harmful UVA and UVB rays but also helps maintain essential hydration and nourishment. Another broad-spectrum hero is&nbsp;Lakme Sun Expert SPF 50 PA+++ Ultra Matte Gel Sunscreen. Its gel texture allows you to face the sunscreen with confidence since it glides on effortlessly and barely feels like you are wearing anything.', '2023-10-22 13:50:44', 'published', 'anti aging'),
(46, 'REVEALED: THE MANY BENEFITS OF AN OIL MASSAGE FOR YOUR HAIR', 'SARA', '2023-10-22', '885650.jpg', 'Everyone has different hair types, and it&rsquo;s difficult to know what solution would suit your hair concern. Trying out every solution you come across might not be the best idea for the overall health of your hair. So, whenever I face any hair problems, I like to go by the old school: my grandma&rsquo;s home remedies. Out of all the&nbsp;haircare&nbsp;solutions she has passed on to me, a scalp massage for hair growth has immensely boosted my hair&rsquo;s health. Pampering my hair with a head massage oil nourishes my hair from within and makes it softer and stronger. However, she always lays emphasis on the right method of oil massage for hair. Here is an easy guide on how to massage your scalp.\r\nHead Massage Benefits\r\n1. Strengthens Hair And Roots\r\nIf you are experiencing flat and limp hair, extreme dryness, excess oily scalp, split ends, and hair breakage, your hair roots might be weak and undernourished. Massaging oil onto the scalp strengthens the roots and helps boost blood circulation, giving you healthy lustrous hair. Hair oils like coconut oil or virgin olive oil can also unclog your hair follicles and promote better absorption of nutrients in your scalp.\r\nDos:\r\nMassage oil gently onto your scalp with your fingers in a circular motion.\r\nDont&#39;s:\r\nNever apply oil to your scalp rigorously. It can weaken your roots more and cause hair fall.\r\n2. Keeps Away Dandruff And Itchiness\r\nOften, we use chemical-based products that strip our scalp of moisture and nutrients, causing dehydration. A dehydrated scalp results in flaking, itching and broken skin and is less effective in protecting your hair against the environment, leading to dandruff and infections. Oil massage for hair effectively hydrates your scalp and keeps dandruff at bay. Head massage benefits you by stimulating the oil glands to produce more natural oil keeping your scalp healthy and nourished.\r\nDos:\r\nIf your scalp is prone to dandruff, use a lightweight hair oil. It would be best to avoid oils which have a thick consistency, like castor oil.\r\nDont&#39;s:\r\nDo not keep oil in your hair overnight if you have an oily scalp. For dry or damaged hair, massage your scalp and hair shafts with warm oil, 1 to 2 hour before washing off with a mild&nbsp;shampoo.\r\n3. Nourishes Your Scalp\r\nRemember how your skin feels soft, plump and glossy when you hydrate it sufficiently? Well, your scalp is an extension of your skin and so feels the same after an oil massage. The best massage oils nourish the scalp, making it healthier. A good oil massage with the right kind of oil penetrates deep into the scalp, nourishing the hair follicles and hair shaft from within, helping them grow faster and stronger.\r\nDos:\r\nIdentify your hair type. If you have an oily scalp, keep oil in your hair for only an hour before shampoo.\r\nDont&#39;s:\r\nAvoid stepping out after a scalp massage. Dirt can stick to your scalp, clogging pores, causing dandruff and hair fall.\r\n4. Reduces Frizz And Split Ends\r\nPollution, UV rays and other environmental aggressors can cause split ends, dryness, frizz and breakage. Oil forms a protective layer on the scalp, protecting your roots from dryness, harmful rays and pollution. It also provides deep conditioning that makes your hair more resistant to damage and hair fall.\r\nDos:\r\nDetangle your hair before oiling with a wide tooth comb to avoid breakage.\r\nDont&#39;s:\r\nAvoid brushing your hair with a comb or tying it in a tight braid or ponytail after oil massage.\r\nHow To Do Scalp Massage For Hair Growth\r\nWith a hot oil treatment, you can reap the maximum benefits of a head massage. Take your preferred&nbsp;hair oil&nbsp;in a bowl and heat it through the double boiler method. When it is warm enough (not hot!), take a few drops in your palms, rub them together and apply on your roots and hair. Lightly coat your hair&rsquo;s entire length too. Once you apply the oil, use your fingertips to gently massage your scalp all over. Avoid massaging for too long if you are suffering from hair fall. To let the oil penetrate deeper into the scalp, wrap a warm towel over your head and wash it off after an hour. You can repeat it thrice a week. If you have oily hair, restrict this head massage to once a week.\r\n&nbsp;\r\n&nbsp;\r\n&nbsp;', '2023-10-22 13:50:49', 'published', 'massage'),
(42, 'Skin icing is the new chilly facial trend that instantly tackles spots and redness', 'admin', '2023-10-22', '375249.jpg', 'Skin icing is the latest facial trend making rounds on the internet, from celebrities swearing by it to experts counting its benefits. Thankfully, it&#39;s a form of&nbsp;ice&nbsp;therapy that you can easily do at home.\r\nMuch like cryotherapy (treatments using cold temperatures), and CoolSculpting (that breaks down fat cells), skin icing harnesses the power of ice to help boost circulation, improve redness and tackle&nbsp;breakouts.\r\nWhat is skin icing?\r\n&ldquo;Skin icing, also known as cold therapy or ice facials, is the process of gently applying ice or a cold compress to the skin. This technique aims to enhance the appearance of the skin by improving circulation, reducing&nbsp;inflammation, and promoting a healthy complexion.&rdquo;\r\nWhat are the benefits of skin icing?\r\nImproved&nbsp;circulation\r\n&ldquo;Cold temperatures constrict blood vessels, and when the skin is exposed to ice, blood flow is momentarily reduced. When the skin is warmed after icing, blood vessels dilate, promoting better circulation and delivering essential nutrients to the skin. You can also expect reduced&nbsp;puffiness and&nbsp;inflammation, as icing helps to shrink blood vessels and reduce inflammation, which can effectively decrease&nbsp;under-eye bags and swelling. This is particularly useful after a sleepless night or to counteract morning&nbsp;puffiness.&rdquo;\r\nSoothing irritated skin\r\n&ldquo;Cold therapy can soothe and calm irritated or sensitive skin, providing relief from redness and discomfort,&nbsp;and&nbsp;may&nbsp;temporarily tighten and minimise the appearance of pores, creating a smoother skin texture.&nbsp;Applying ice before your skincare routine can help products penetrate more effectively, maximising their&nbsp;benefits&nbsp;too.&rdquo;\r\nHow should I prepare for skin icing?\r\n&ldquo;I&#39;d recommend you begin with a gentle cleanser to remove any&nbsp;makeup, dirt, or oil from the face. You can use ice cubes, ice packs, or specially designed ice globes. Wrap the ice in a thin cloth or plastic wrap to avoid direct contact with the skin.&nbsp;Ensure your face is dry and free of excess moisture, and then start with a&nbsp;patch&nbsp;test. If you&#39;re new to skin icing, perform a patch test on a small area of skin to ensure there are no adverse reactions.&rdquo;  Sharing the technique, he explains: &ldquo;Hold the ice or ice globe wrapped in a cloth and gently massage it in circular motions over different areas of your face. Focus on one area at a time, such as the forehead,&nbsp;cheeks, and jawline.&nbsp;Limit each icing session to around 5-10 minutes to avoid excessive cold exposure, and after icing, continue with your regular skincare routine. The cooled skin may better absorb products.&rdquo;\r\nWhat can I expect after skin icing?\r\n&ldquo;After skin icing, you may notice a refreshed and awakened appearance, puffiness and redness should be visibly reduced. Your skin may feel tighter and smoother due to&nbsp;minimised&nbsp;pores.&rdquo;\r\nAre there any possible side effects to skin icing?\r\n &#34;While skin icing is generally safe, some individuals may experience redness or&nbsp;irritation - a&nbsp;slight pinkish hue is normal after icing but should subside within a short time.&nbsp;Applying ice directly to the skin without proper insulation can lead to cold&nbsp;burns. Always wrap the ice in a cloth or plastic wrap.  &ldquo;I recommend incorporating skin icing into your skincare routine for its numerous benefits - but with proper preparation and mindful application.&nbsp;Remember to pay attention to your skin&#39;s response and adjust the frequency of icing to suit your individual needs. If you have any concerns or experience persistent&nbsp;side effects, it&#39;s always advisable to consult a skincare professional.&rdquo;', '2023-10-22 13:35:11', 'published', 'skin icing'),
(43, 'EVERYONE IS MOVING TO MINERAL SUNSCREENS. HERE&#39;S WHY.', '', '2023-10-22', '816794.jpg', 'When you shop for your sunblock, it&rsquo;s imperative that you choose a formula that ensures continuous coverage and most importantly a product that you enjoy&mdash;something that you&rsquo;re actually going to use. And to be honest, despite being an editor with the privilege of getting access to a gazillion products for testing and reviewing, I&rsquo;ve often struggled to find the right sunscreen that&rsquo;s nice to my skin\r\nSo, I dove into some research this month and discovered an influx of articles and reviews from fellow publications about mineral sunscreens&mdash;I was apparently late to the party because EVERYBODY had moved to mineral sunscreens already. This got me to try a few in the market (because FOMO, you see?). Plus, I just had to see what the hype was all about. Post testing a couple of formulas last week, it&rsquo;s safe to say that I won&rsquo;t be moving back to my regular chemical sunscreen anymore. The benefits got me to stay (more on this below). Ahead, details on what they exactly contain, a couple of strong benefits and a few of my personal recommendations that actually work.\r\n&nbsp;\r\nWHAT ARE MINERAL SUNSCREENS?\r\nThey are typically powered with minerals like zinc oxide and titanium oxide that provide a barrier between your skin and the sun&rsquo;s rays that help deflect the harmful radiations. Also commonly known as physical blockers, they are safer to use for children and those with sensitive skin. They offer full-spectrum protection, easy to apply and no, if applied evenly they do not leave a white cast on your skin. They also provide immediate protection on application&mdash; you can slap it on at the last minute (unlike chemical sunscreens that take time to activate). Oh, and they last longer in direct sunlight which means that you don&rsquo;t need to worry about the hassle of constantly reapplying.', '2023-10-22 13:39:41', 'published', 'Sunscreen'),
(44, 'Do you have sensitive skin? A dermatologist wants you to stay away from these ingredient combinations', 'SARA', '2023-10-22', '203520.jpg', '&nbsp;\r\n&lsquo;Less is more&rsquo; is a good rule of thumb to follow in skincare in general; all the more when you have sensitive skin. Indeed, sensitive skin requires some extra TLC&mdash;and mixing together multiple actives isn&rsquo;t how you&rsquo;re getting it. Actives, when used correctly have transformative powers, no doubt; however when used without the right knowledge, they can have quite the opposite effect. So, this is your periodical reminder about the ingredients that don&rsquo;t mix well together&mdash;least of all if you have sensitive skin.\r\nVitamin C and retinol\r\nVitamic C and&nbsp;retinol&mdash;the two ingredients you&rsquo;re most likely to see on skincare labels&mdash;are highly potent on their own. Used together however is a different story altogether as warns Dr. Renita Rajan, dermatologist who in general is against the concept of layering: &ldquo;A simple routine often does more wonders than adding too many incompatible products, just because &#39;layering&#39; is trending!&rdquo; She strongly warns against layering anything over retinol, particularly Vitamin C. &ldquo;Retinol goes solo on clean, dry skin&mdash;apply lightly, without rubbing since retinol is lipophilic and will make its own way into the skin. Rubbing will only irritate the skin,&rdquo; she explains. Similarly, Vitamin C also makes the skin sensitive. &ldquo;Vitamin C and retinol cannot be layered&mdash;if you must layer, it should be a quenching agent like hyaluronic acid, methylsulfonylmethane and tranexamic acid. If you&rsquo;re using both Vitamin C and retinol, make sure it&rsquo;s at different times,&rdquo; she says.\r\nRetinol and AHAs/ BHAs\r\nAs far as retinol is concerned, you need to tread with caution. AHAs (alpha hydroxy acids) and BHAs (beta hydroxy acids) are chemical exfoliants that slough off dead skin&mdash;and should never be paired with retinol. Dr. Rashmi Shetty, dermatologist shares why: &ldquo;Retinols slow down the signs of ageing by increasing the synthesis of collagen and minimising wrinkles, fine lines, and age spots. In contrast, AHAs and BHAs exfoliate the top layer of your skin to promote the development of younger, uniformly-coloured cells. Combining these chemicals might result in irritation or severe dryness.&rdquo;\r\nGlycolic and salicylic acid\r\nTwo other names you&rsquo;re likely to find at your drugstore are glycolic and salicylic acid respectively. Great on their own, but together? Not so much. In fact according to Dr. Shetty salicylic acid should be used carefully even on its own: &ldquo;Avoid using this component unless specifically advised by a skincare expert&mdash;it can be extremely drying and even cause burning and redness in sensitive skin.&rdquo; Dr Chytra V Anand advises against combining both ingredients together: &ldquo;Glycolic acid (an&nbsp;AHA) and salicylic acid (a BHA) together can be too harsh for most skin types. Both are exfoliating agents that can potentially cause skin irritation, dryness, and increased sensitivity when used together. It&#39;s advisable to choose one acid that suits your skin type and concerns and incorporate it into your skincare routine gradually. If you still wish to use both, it&#39;s best to alternate their usage or use products that contain a blend of both acids in balanced concentrations,&rdquo; she says.\r\nChemical and physical exfoliants\r\nToo much of a good thing is a bad thing&mdash;particularly when it comes to exfoliation! &ldquo;Combining exfoliating actives, such as AHAs, BHAs, or enzymes with physical scrubs can lead to over-exfoliation and irritation. Physical scrubs already provide mechanical&nbsp;exfoliation, so adding chemical exfoliants on top can disrupt the skin&#39;s barrier function and cause redness, sensitivity, or even micro-tears,&rdquo; says Dr. Anand.  Like all good things, keep it simple&mdash;your skin will thank you for it.\r\n&nbsp;', '2023-10-22 13:50:54', 'published', 'sensitive skin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(4) NOT NULL,
  `username` varchar(225) NOT NULL,
  `firstname` varchar(225) NOT NULL,
  `lastname` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role` varchar(225) NOT NULL DEFAULT 'user'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `role`) VALUES
(17, 'superadmin', 'admin', 'root', 'admin@gmail.com', '$2y$10$lapZDjwd7TQxuUYpj1.QR.oDYVUHVpSrIrE3Du9uYVdfut8LbeeFy', 'superadmin'),
(34, 'rohit', 'rohit', 'mishra', 'asd@fma.com', '$2y$10$3F9Ed09M.6XME1X4A8DjJeqUuKYaNgRl15Y2Hg6crzB.kyE63fSWi', 'admin'),
(33, 'admin', 'admin', 'admin', 'admin@admin.com', '$2y$10$1poQ2ZnrZI8lvEHHBFWXC.pKAZ..HFbWCWEvECdd11fo94Q7IZ0.2', 'admin'),
(32, 'Anita', 'Anita', 'Tripathi', 'Anita@news.com', '$2y$10$7KfUKekvwokLRG0knATc0Oz5HDT1nU7atLW1pdJcoEiISAwfPukfK', 'user'),
(31, 'Subham', 'Subham', 'Arora', 'subham@news.com', '$2y$10$kS5lgQuoeKg9tMmdp0dTxe9vrj7cULMleMUfZ50o4JvIz.ts3J8QC', 'admin'),
(30, 'Roshni', 'Roshni', 'Pathak', 'roshni@xolo.com', '$2y$10$amwr587NQMax/y6oo52tceGocu8UeR3ZFSZTikVplS6n7cGZvxS6S', 'user'),
(29, 'Anirban', 'Anirban', 'Dutta', 'anirban@fmail.cm', '$2y$10$1gC7/hXMInsGTViwqe4Rc.E04Wi8AZzd7HHVvLIMtcungTGZ.C1Me', 'user'),
(28, 'user', 'User', 'John', 'user@gmail.com', '$2y$10$t.iuj8gRymllrHDcVvzcLOwPilfxwNKknJH2rnLr3zFdwRVzQnR7q', 'user'),
(35, 'Sara123', 'SARA', 'SHAIKH', 'sara@gmail.com', '$2y$10$oVncrJiJvWUjIlzExGN/EujitRp.dbQVAhv89AVNna6xL3GfiHOFG', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bpmsdb\",\"table\":\"item_rating\"},{\"db\":\"bpmsdb\",\"table\":\"item\"},{\"db\":\"chat_bot_db\",\"table\":\"system_info\"},{\"db\":\"chat_bot_db\",\"table\":\"users\"},{\"db\":\"chat_bot_db\",\"table\":\"response_list\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-10-22 18:09:48', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
