-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 07:47 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sj_travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `attractions`
--

CREATE TABLE `attractions` (
  `id` int(11) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `fb_link` varchar(300) NOT NULL,
  `website_link` varchar(300) NOT NULL,
  `gmail_link1` varchar(100) NOT NULL,
  `gmail_link2` varchar(100) NOT NULL,
  `phone_link1` bigint(20) NOT NULL,
  `phone_link2` bigint(20) NOT NULL,
  `maps` varchar(100) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `img3` varchar(100) NOT NULL,
  `img4` varchar(100) NOT NULL,
  `img5` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `place_id` int(10) NOT NULL,
  `place_name` varchar(50) NOT NULL,
  `fullname` varchar(70) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `place_id`, `place_name`, `fullname`, `number`, `email`, `message`) VALUES
(2, 0, '', 'Jerremy Gabriel P. Gallleto', '123123', 'jerremygab@gmail.com', 'asdasd'),
(3, 0, '', 'Jerremy Gabriel P. Gallleto', '0', 'jerremygab@gmail.com', 'asdasdasd'),
(4, 0, '', 'Jerremy Gabriel P. Gallleto', '123213', 'jerremygab@gmail.com', 'asdasd'),
(5, 0, '', 'Jerremy Gabriel P. Gallleto', '123123', 'jerremygab@gmail.com', 'hellloo'),
(6, 0, '', 'Jerremy Gabriel P. Gallleto', '123', 'jerremygab@gmail.com', 'asd'),
(7, 0, '', 'Jerremy Gabriel P. Gallleto', '123123', 'jerremygab@gmail.com', '1231232'),
(8, 0, '', 'Jerremy Gabriel P. Gallleto', '123', 'jerremygab@gmail.com', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `gastronomic_exp`
--

CREATE TABLE `gastronomic_exp` (
  `id` int(11) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `fb_link` varchar(150) NOT NULL,
  `web_link` varchar(150) NOT NULL,
  `gmail_link1` varchar(150) NOT NULL,
  `gmail_link2` varchar(150) NOT NULL,
  `map_link` varchar(300) NOT NULL,
  `phone_link1` bigint(50) NOT NULL,
  `phone_link2` bigint(50) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `img3` varchar(100) NOT NULL,
  `img4` varchar(100) NOT NULL,
  `img5` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gastronomic_exp`
--

INSERT INTO `gastronomic_exp` (`id`, `place_name`, `location`, `description`, `fb_link`, `web_link`, `gmail_link1`, `gmail_link2`, `map_link`, `phone_link1`, `phone_link2`, `img1`, `img2`, `img3`, `img4`, `img5`) VALUES
(1, 'Naranja Orange Restaurant', 'Kapitan Dayo Building, General Luna St. Poblacion, San Juan, Philippines', 'Naranja Orange Restaurant is one of San Juan\'s best restaurant established in 2005. After closing it', 'https://www.facebook.com/NaranjaOrangeRestaurant', 'error-page.php', 'naranjaorangerestaurant@gmail.com', '', '', 9682310678, 0, '/naranja_orange.jpg', '/naranja_orange2.jpg', '/naranja_orange3.jpg', '/naranja_orange4.jpg', '/naranja_orange5.jpg'),
(2, 'La Barrida Pizza Haus', 'Alday St cor Cabuñag St, Candelaria, Philippines, 4323', '', 'https://www.facebook.com/LaBarridaPizzaHaus', 'error-page.php', 'lqfranchise@gmail.com', '', 'https://goo.gl/maps/pbQqMDWRxqSGA5Fc6', 9236339678, 0, '/la_barrida.jpg', '/la_barrida2.jpg', '/la_barrida3.jpg', '/la_barrida4.jpg', '/la_barrida5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ig_post`
--

CREATE TABLE `ig_post` (
  `id` int(11) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ig_post`
--

INSERT INTO `ig_post` (`id`, `img`) VALUES
(1, '/ig1.jpg'),
(2, '/ig2.jpg'),
(3, '/ig5.jpg'),
(4, '/ig6.jpg'),
(5, '/ig7.jpg'),
(6, '/ig8.jpg'),
(7, '/ig9.jpg'),
(8, '/ig10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `souvenirs`
--

CREATE TABLE `souvenirs` (
  `id` int(11) NOT NULL,
  `place_name` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `fb_link` varchar(300) NOT NULL,
  `website_link` varchar(300) NOT NULL,
  `gmail_link1` varchar(100) NOT NULL,
  `gmail_link2` varchar(100) NOT NULL,
  `phone_link1` bigint(20) NOT NULL,
  `phone_link2` bigint(20) NOT NULL,
  `maps` varchar(100) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `img3` varchar(100) NOT NULL,
  `img4` varchar(100) NOT NULL,
  `img5` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `weekend_gateaway`
--

CREATE TABLE `weekend_gateaway` (
  `id` int(11) NOT NULL,
  `place_name` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `fb_link` varchar(300) NOT NULL,
  `ig_link` varchar(100) NOT NULL,
  `web_link` varchar(300) NOT NULL,
  `gmail_link1` varchar(100) NOT NULL,
  `gmail_link2` varchar(100) NOT NULL,
  `phone_link1` varchar(50) NOT NULL,
  `phone_link2` varchar(50) NOT NULL,
  `map_link` varchar(150) NOT NULL,
  `embedded_map` varchar(1000) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `img3` varchar(100) NOT NULL,
  `img4` varchar(100) NOT NULL,
  `img5` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weekend_gateaway`
--

INSERT INTO `weekend_gateaway` (`id`, `place_name`, `location`, `description`, `fb_link`, `ig_link`, `web_link`, `gmail_link1`, `gmail_link2`, `phone_link1`, `phone_link2`, `map_link`, `embedded_map`, `img1`, `img2`, `img3`, `img4`, `img5`) VALUES
(1, 'Acuatico Beach Resort', 'Laiya, San Juan, Batangas, Philippines', 'Need an escape? Acuatico Beach Resort in the Philippines offers you the perfect sanctuary to reset and recharge. Just a few hours’ drive from Manila, Acuatico is the idyllic setting for all your getaway needs. Enjoy swimming in our famous infinity pool and witness its merge with the azure waters of the adjacent seas.', 'https://www.facebook.com/AcuaticoBeachResort', 'https://www.instagram.com/acuaticobeachresort/', 'https://acuaticoresort.com.ph/', 'reservations@acuaticoresort.com.ph\r\n', 'events@acuaticoresort.com.ph', '(+63) 917 706 9136', '(+63) 968 871 4516', 'https://goo.gl/maps/E5gdrWd5AM31XFdU9', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d969.2222647227761!2d121.3757907!3d13.6645093!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd244c3e29e1ad%3A0xa4f9b32c2ccb66f0!2sAcuatico%20Resort%20Manila%20Sales%20and%20Reservations%20Corporate%20Office!5e0!3m2!1sen!2sph!4v1680444229056!5m2!1sen!2sph', '/acuatico.jpg', '/acuatico2.jpg', '/acuatico3.jpg', '/acuatico4.jpg', '/acuatico5.jpg'),
(2, 'Acuaverde Beach Resort and Hotel', 'Laiya, San Juan, Batangas, Philippines', 'Acuaverde Beach Resort is another one of the top beach resorts in Laiya. They are popular among families and company outings, as they own one of the widest beachfronts in Laiya.\r\n\r\nThis resort promises serenity, privacy, and comfort to guests. Each room is fitted with modern amenities and additional comforts such as LC cable TV, well-stocked minibar, and private veranda.\r\n\r\nFacilities include a restaurant that serves local and international dishes (ala carte or buffet style), a spa, a waterpark for water activities, and dedicated areas for other indoor and outdoor activities.\r\n\r\nThey are also pet-friendly, so you can bring your furbabies with you in Laiya!', 'https://www.facebook.com/AcuaverdeBeachResort', 'https://www.instagram.com/acuaverdebeachresort/', 'https://acuaverderesort.com.ph/', 'reservations@acuaverderesort.com.ph', 'events@acuaverderesort.com.ph', '(+63) 928 854 3805', '(+63) 969 617 5021', 'https://goo.gl/maps/Y94ZQE4szYhKSj9x8', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d969.2222647227761!2d121.3757907!3d13.6645093!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd2f9da389cdbf%3A0x84b1aca0a1d2a37b!2sAcuaverde%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1680445321781!5m2!1sen!2sph', '/acuaverde.jpg', '/acuaverde2.jpg', '/acuaverde3.jpg', '/acuaverde4.jpg', '/acuaverde5.jpg'),
(3, 'La Luz Beach Resort', 'Brgy. Hugom , San Juan, Philippines', 'La Luz Beach Resort started as a private vacation home for a family until it developed into the beloved beach resort that it is known today. Unlike other beach resorts in Laiya that are usually packed with crowds, you can expect peace and tranquility here as it is located at the farthermost end of the shoreline.\r\n\r\nThis beach resort has a beautiful beachfront ideal for swimming and snorkeling, as well as rock formations that serve as perfect backdrop for snap-worthy pictures.\r\n\r\nIt has Filipino-themed rooms with bamboo wood accents. There are rooms good for couples and small groups and also a dormitory for those in a budget or in a large group. Other facilities include a pool and a restaurant and bar.', 'https://www.facebook.com/laluzbeachresortandspa', 'https://www.instagram.com/laluzbeachresort/', 'laluzbeachresort.com', 'customerservice@laluzbeachresort.com', 'llbr.customerservice@gmail.com', '(+63) 916 370 4017', '(+63) 927 805 3484', 'https://goo.gl/maps/7b8SZxK25wVsH7Qc9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.944962128064!2d121.37187589999999!3d13.661110599999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd3afcd468b6e5%3A0xeea7fc120a879422!2sLa%20Luz%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1680445757875!5m2!1sen!2sph', '/laluz.jpg', '/laluz2.jpg', '/laluz3.jpg', '/laluz4.jpg', '/laluz5.jpg'),
(4, 'Sabangan Beach Resort', 'Brgy. Laiya, San Juan, Batangas, Philippines 4226', 'This resort features Filipino-themed rooms with veranda, alfresco lounge area where you can relax while appreciating the ocean view, and a clean beachfront where you can swim or just beach bum. There is also a play area and a small store inside where you can buy necessities.\r\n\r\nAnother good thing about Sabangan Beach Resort is that each booking comes with complimentary breakfast, lunch, and dinner! No need to worry about locating other restaurants or additional expenses.', 'https://www.facebook.com/mysabangan', 'https://www.instagram.com/mysabangan/', 'https://www.sabangan.com/', 'sabanganbeachresortph@gmail.com', '', '(+63) 927 9149  640', '(+63) 928 667 3997', 'https://goo.gl/maps/GYV3rSDod4qwRHKC7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.8858987427666!2d121.3765246!3d13.6647014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd2f7be5555555%3A0x230b71371e0a318f!2sSabangan%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1680446095534!5m2!1sen!2sph', '/sabangan.jpg', '/sabangan2.jpg', '/sabangan3.jpg', '/sabangan4.jpg', '/sabangan5.jpg'),
(5, 'Virgin Beach Resort', 'Laiya, San Juan, San Juan, Philippines', 'This beach resort in Laiya aims to offer a tranquil beach experience, “reminiscent of beaches in the old days.” It is situated in a cove adjacent to Sigayan Bay, which is one of the cleanest bays in the country and is part of the Verde Island Passage, one of the most diverse marine habitats in the world.\r\n\r\nTheir accommodations include rustic casitas facing the 1.3-kilometer white-ish sand shore of Laiya.\r\n\r\nThey also have an alfresco restaurant so you can enjoy local and international dishes outdoors, a spa, and various activities including kayaking, snorkeling, biking, bird watching, and bonfire by the beach.', 'https://www.facebook.com/virginbeachresortlaiya', 'https://www.instagram.com/virginbeachresort/', 'https://virginbeachresort.com/', 'virginbeachresortreservations@gmail.com', '', '(+63) 998 563 8810', '', 'https://goo.gl/maps/Gr1iTKkau8ipa6wv5', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.849423101083!2d121.38084300000001!3d13.6669185!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd2587d26bbb89%3A0x782228f859fef35b!2sVirgin%20Beach%20Resort%20Laiya!5e0!3m2!1sen!2sph!4v1680446179549!5m2!1sen!2sph', '/virgin.jpg', '/virgin2.jpg', '/virgin3.jpg', '/virgin4.jpg', '/virgin5.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attractions`
--
ALTER TABLE `attractions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gastronomic_exp`
--
ALTER TABLE `gastronomic_exp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ig_post`
--
ALTER TABLE `ig_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `souvenirs`
--
ALTER TABLE `souvenirs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weekend_gateaway`
--
ALTER TABLE `weekend_gateaway`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attractions`
--
ALTER TABLE `attractions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gastronomic_exp`
--
ALTER TABLE `gastronomic_exp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ig_post`
--
ALTER TABLE `ig_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `souvenirs`
--
ALTER TABLE `souvenirs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weekend_gateaway`
--
ALTER TABLE `weekend_gateaway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
