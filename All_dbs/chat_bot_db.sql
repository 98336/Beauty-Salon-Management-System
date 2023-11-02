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
-- Database: `chat_bot_db`
--

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
(29, '::1'),
(1, '::1'),
(9, '::1'),
(12, '::1'),
(13, '::1'),
(14, '::1'),
(17, '::1'),
(21, '::1'),
(22, '::1'),
(28, '::1'),
(26, '::1'),
(29, '::1'),
(9, '::1'),
(11, '::1'),
(1, '::1'),
(9, '::1'),
(29, '::1'),
(1, '::1'),
(30, '::1'),
(18, '::1');

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
(15, 'What is the cancellation policy?'),
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
(23, 'Can I bring my children to the salon?'),
(30, 'Cancellation'),
(30, 'cancellation policy');

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
(29, '<p>Bye. Have a Nice Day!</p>', 1, '2023-10-22 17:29:18', '2023-10-22 17:29:18'),
(30, '<p>We understand that plans can change. Please let us know at least 24 hours in advance if you need to cancel or reschedule your appointment.<br></p>', 1, '2023-10-30 10:36:58', '2023-10-30 10:36:58');

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
(16, 'What is the cancellation policy?'),
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
(23, 'What types of facials do you offer?'),
(30, 'Do you offer wedding or event packages?'),
(30, 'What hair products do you use?');

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
(18, 'bot_name', 'Beauty Bot');

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
(1, 'Adminstrator', 'Admin', 'admin', 'f925916e2754e5e03f75dd58a5733251', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2021-01-20 14:02:37', '2023-10-23 10:50:47'),
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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
