-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 03:30 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(9, 11, 985654240, '2022-05-29', '13:10:00', 'NA', '2022-05-29 07:34:47', 'Your appointment is confirmed', 'Selected', '2022-05-29 07:35:36');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(19, 11, 3, 460087279, '2022-06-01 01:03:58');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '        Our main focus is on quality and hygiene. Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials &amp; fashion hair colourings.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '890,Sector 62, Gyan Sarovar, GAIL Noida(Delhi/NCR)', 'info@gmail.com', 7896541236, NULL, '10:30 am to 7:30 pm');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(11, 'John', 'Doe', 1452632541, 'johndoe@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-05-29 07:33:58');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbook`
--
ALTER TABLE `tblbook`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
