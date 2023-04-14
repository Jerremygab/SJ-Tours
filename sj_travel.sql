-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2023 at 01:29 PM
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
  `img5` varchar(100) NOT NULL,
  `views` int(50) NOT NULL,
  `search` varchar(1500) NOT NULL
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
(2, 1, '', 'Jerremy Gabriel P. Gallleto', '123123', 'jerremygab@gmail.com', 'asdasd'),
(3, 3, '', 'Jerremy Gabriel P. Gallleto', '0', 'jerremygab@gmail.com', 'asdasdasd'),
(4, 5, '', 'Jerremy Gabriel P. Gallleto', '123213', 'jerremygab@gmail.com', 'asdasd'),
(5, 4, '', 'Jerremy Gabriel P. Gallleto', '123123', 'jerremygab@gmail.com', 'hellloo'),
(6, 2, '', 'Jerremy Gabriel P. Gallleto', '123', 'jerremygab@gmail.com', 'asd'),
(7, 2, '', 'Jerremy Gabriel P. Gallleto', '123123', 'jerremygab@gmail.com', '1231232'),
(8, 1, '', 'Jerremy Gabriel P. Gallleto', '123', 'jerremygab@gmail.com', 'qwerty'),
(9, 2, '', 'laluz', '1232', 'laluz@laluz', 'asdasd'),
(10, 0, '', 'Jerremy Gabriel P. Gallleto', '111111111', 'jerremygab@gmail.com', '1111111'),
(11, 0, '', 'asd', '123123', 'jerremygab@gmail.com', 'zxczxc'),
(12, 0, 'Acuatico Beach Resort', 'Jerremy Gabriel P. Gallleto', '123', 'jerremygab@gmail.com', 'zxczcczx'),
(13, 6, 'Palm Beach Resort', 'idid', '12312', 'id@asd', 'cvb');

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
  `img5` varchar(100) NOT NULL,
  `views` int(50) NOT NULL,
  `search` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gastronomic_exp`
--

INSERT INTO `gastronomic_exp` (`id`, `place_name`, `location`, `description`, `fb_link`, `web_link`, `gmail_link1`, `gmail_link2`, `map_link`, `phone_link1`, `phone_link2`, `img1`, `img2`, `img3`, `img4`, `img5`, `views`, `search`) VALUES
(1, 'Naranja Orange Restaurant', 'Kapitan Dayo Building, General Luna St. Poblacion, San Juan, Philippines', 'Naranja Orange Restaurant is one of San Juan\'s best restaurant established in 2005. After closing it', 'https://www.facebook.com/NaranjaOrangeRestaurant', 'error-page.php', 'naranjaorangerestaurant@gmail.com', '', '', 9682310678, 0, '/naranja_orange.jpg', '/naranja_orange2.jpg', '/naranja_orange3.jpg', '/naranja_orange4.jpg', '/naranja_orange5.jpg', 2, ''),
(2, 'La Barrida Pizza Haus', 'Alday St cor Cabuñag St, Candelaria, Philippines, 4323', '', 'https://www.facebook.com/LaBarridaPizzaHaus', 'error-page.php', 'lqfranchise@gmail.com', '', 'https://goo.gl/maps/pbQqMDWRxqSGA5Fc6', 9236339678, 0, '/la_barrida.jpg', '/la_barrida2.jpg', '/la_barrida3.jpg', '/la_barrida4.jpg', '/la_barrida5.jpg', 3, '');

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
(5, '/ig5.jpg'),
(6, '/ig6.jpg'),
(7, '/ig7.jpg'),
(8, '/ig8.jpg'),
(9, '/ig9.jpg'),
(10, '/ig10.jpg');

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
  `img5` varchar(100) NOT NULL,
  `views` int(50) NOT NULL,
  `search` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `weekend_gateaway`
--

CREATE TABLE `weekend_gateaway` (
  `id` int(11) NOT NULL,
  `place_name` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `details` varchar(10000) NOT NULL,
  `rate` int(50) NOT NULL,
  `fb_link` varchar(300) NOT NULL,
  `ig_link` varchar(100) NOT NULL,
  `web_link` varchar(300) NOT NULL,
  `gmail_link1` varchar(100) NOT NULL,
  `gmail_link2` varchar(100) NOT NULL,
  `phone_link1` varchar(50) NOT NULL,
  `phone_link2` varchar(50) NOT NULL,
  `map_link` varchar(150) NOT NULL,
  `embedded_map` varchar(1000) NOT NULL,
  `property_amenities` varchar(1000) NOT NULL,
  `room_features` varchar(500) NOT NULL,
  `room_types` varchar(500) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `img3` varchar(100) NOT NULL,
  `img4` varchar(100) NOT NULL,
  `img5` varchar(100) NOT NULL,
  `views` int(100) NOT NULL,
  `search` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weekend_gateaway`
--

INSERT INTO `weekend_gateaway` (`id`, `place_name`, `location`, `details`, `rate`, `fb_link`, `ig_link`, `web_link`, `gmail_link1`, `gmail_link2`, `phone_link1`, `phone_link2`, `map_link`, `embedded_map`, `property_amenities`, `room_features`, `room_types`, `img1`, `img2`, `img3`, `img4`, `img5`, `views`, `search`) VALUES
(1, 'Acuatico Beach Resort', 'Laiya, San Juan, Batangas, Philippines', 'Need an escape? Acuatico Beach Resort in the Philippines offers you the perfect sanctuary to reset and recharge. Just a few hours’ drive from Manila, Acuatico is the idyllic setting for all your getaway needs. Enjoy swimming in our famous infinity pool and witness its merge with the azure waters of the adjacent seas.', 9800, 'https://www.facebook.com/AcuaticoBeachResort', 'https://www.instagram.com/acuaticobeachresort/', 'https://acuaticoresort.com.ph/', 'reservations@acuaticoresort.com.ph\r\n', 'events@acuaticoresort.com.ph', '(+63) 917 706 9136', '(+63) 968 871 4516', 'https://goo.gl/maps/E5gdrWd5AM31XFdU9', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d969.2222647227761!2d121.3757907!3d13.6645093!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd244c3e29e1ad%3A0xa4f9b32c2ccb66f0!2sAcuatico%20Resort%20Manila%20Sales%20and%20Reservations%20Corporate%20Office!5e0!3m2!1sen!2sph!4v1680444229056!5m2!1sen!2sph', '<li>Free Parking</li>\r\n<li>Pool</li>\r\n<li>Beach</li>\r\n<li>Bar / Lounge</li>\r\n<li>Restaurant</li>\r\n<li>Poolside Bar</li>\r\n<li>Banquet Room</li>\r\n<li>Spa</li>\r\n<li>Full Body Massage</li>\r\n<li>Baggage Storage</li>\r\n<li>Newspaper</li>\r\n<li>Shops</li>\r\n<li>ATM on site</li>\r\n<li>Laundry Service</li>\r\n<li>Wi-Fi</li>\r\n<li>Breakfast</li>\r\n<li>Game Room</li>\r\n<li>Kids Pool</li>\r\n<li>Infinity Pool</li>\r\n<li>Coffee Shop</li>\r\n<li>Breakfast Buffet</li>\r\n<li>Swim up Bar</li>\r\n<li>Indoor Play Area for Children</li>', '<li>Air Condition</li>\r\n<li>Private Balcony</li>\r\n<li>Coffee / Tea Maker</li>\r\n<li>Flat screen TV</li>\r\n<li>Telephone</li>\r\n<li>Refrigerator</li>\r\n<li>Complimentary Toiletries</li>\r\n<li>Private Beach</li>\r\n<li>Safe</li>\r\n<li>Minibar</li>\r\n<li>Bidet</li>\r\n<li>Bottled Water</li>\r\n<li>Bath / Shower</li>\r\n<li>Hair Dryer</li>\r\n<li>Beach Towel</li>', '<li>Ocean View</li>\r\n<li>Suites</li>\r\n<li>Non-Smoking Rooms</li>\r\n<li>Family Rooms</li>', 'Acuatico/acuatico.jpg', 'Acuatico/acuatico2.jpg', 'Acuatico/acuatico3.jpg', 'Acuatico/acuatico4.jpg', 'Acuatico/acuatico5.jpg', 756, 'Acuatico Beach Resort Laiya, San Juan, Batangas, \r\nRate starts at: PHP 9800.00 Philippines Need an escape? Acuatico Beach Resort in the Philippines offers you the perfect sanctuary to reset and recharge. Just a few hours’ drive from Manila, Acuatico is the idyllic setting for all your getaway needs. Enjoy swimming in our famous infinity pool and witness its merge with the azure waters of the adjacent seas.Free Parking\r\nPool\r\nBeach\r\nBar / Lounge\r\nRestaurant\r\nPoolside Bar\r\nBanquet Room\r\nSpa\r\nFull Body Massage\r\nBaggage Storage\r\nNewspaper\r\nShops\r\nATM on site\r\nLaundry Service\r\nWiFi\r\nBreakfast\r\nGame Room\r\nKids Pool\r\nInfinity Pool\r\nCoffee Shop\r\nBreakfast Buffet\r\nSwim up Bar\r\nIndoor Play Area for ChildrenAir Condition\r\nPrivate Balcony\r\nCoffee / Tea Maker\r\nFlat screen TV\r\nTelephone\r\nRefrigerator\r\nComplimentary Toiletries\r\nPrivate Beach\r\nSafe\r\nMinibar\r\nBidet\r\nBottled Water\r\nBath / Shower\r\nHair Dryer\r\nBeach TowelOcean View\r\nSuites\r\nNon-Smoking Rooms\r\nFamily Rooms\r\n'),
(2, 'Acuaverde Beach Resort and Hotel', 'Laiya, San Juan, Batangas, Philippines', 'Acuaverde Beach Resort is another one of the top beach resorts in Laiya. They are popular among families and company outings, as they own one of the widest beachfronts in Laiya.\r\n\r\nThis resort promises serenity, privacy, and comfort to guests. Each room is fitted with modern amenities and additional comforts such as LC cable TV, well-stocked minibar, and private veranda.\r\n\r\nFacilities include a restaurant that serves local and international dishes (ala carte or buffet style), a spa, a waterpark for water activities, and dedicated areas for other indoor and outdoor activities.\r\n\r\nThey are also pet-friendly, so you can bring your furbabies with you in Laiya!', 7900, 'https://www.facebook.com/AcuaverdeBeachResort', 'https://www.instagram.com/acuaverdebeachresort/', 'https://acuaverderesort.com.ph/', 'reservations@acuaverderesort.com.ph', 'events@acuaverderesort.com.ph', '(+63) 928 854 3805', '(+63) 969 617 5021', 'https://goo.gl/maps/Y94ZQE4szYhKSj9x8', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d969.2222647227761!2d121.3757907!3d13.6645093!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd2f9da389cdbf%3A0x84b1aca0a1d2a37b!2sAcuaverde%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1680445321781!5m2!1sen!2sph', '<li>Free parking</li>\r\n<li>Public Wi-Fi</li>\r\n<li>Free breakfast</li>\r\n<li>Beach</li>\r\n<li>Children\'s playground</li>\r\n<li>Family Activities</li>\r\n<li>Meeting rooms</li>\r\n<li>Spa</li>\r\n<li>Bar / lounge</li>\r\n<li>Restaurant</li>\r\n<li>Breakfast buffet</li>\r\n<li>Massage</li>\r\n<li>Concierge</li>\r\n<li>Gift shop</li>\r\n<li>Non-smoking hotel</li>\r\n<li>Sun loungers / beach chairs</li>', '<li>Air Condition</li>\r\n<li>Mini Bar</li>\r\n<li>Bidet</li>\r\n<li>Complimentary Toiletries</li>\r\n<li>Private Balcony</li>\r\n<li>Flat screen TV</li>\r\n<li>Hair Dryer</li>', '<li>Ocean View</li>\r\n<li>Family Rooms</li>\r\n<li>Non-smoking Rooms</li>', 'Acuaverde/acuaverde.jpg', 'Acuaverde/acuaverde2.jpg', 'Acuaverde/acuaverde3.jpg', 'Acuaverde/acuaverde4.jpg', 'Acuaverde/acuaverde5.jpg', 746, 'Acuaverde Beach Resort and Hotel\r\nLaiya, San Juan, Batangas, Philippines\r\nAcuaverde Beach Resort is another one of the top beach resorts in Laiya. They are popular among families and company outings, as they own one of the widest beachfronts in Laiya. This resort promises serenity, privacy, and comfort to guests. Each room is fitted with modern amenities and additional comforts such as LC cable TV, well-stocked minibar, and private veranda. Facilities include a restaurant that serves local and international dishes (ala carte or buffet style), a spa, a waterpark for water activities, and dedicated areas for other indoor and outdoor activities. They are also pet-friendly, so you can bring your furbabies with you in Laiya!\r\nRate starts at: PHP 7900.00\r\nFree parking\r\nPublic WiFi\r\nFree breakfast\r\nBeach\r\nChildren\'s playground\r\nFamily Activities\r\nMeeting rooms\r\nSpa\r\nBar / lounge\r\nRestaurant\r\nBreakfast buffet\r\nMassage\r\nConcierge\r\nGift shop\r\nNon-smoking hotel\r\nSun loungers / beach chairs\r\nAir Condition\r\nMini Bar\r\nBidet\r\nComplimentary Toiletries\r\nPrivate Balcony\r\nFlat screen TV\r\nHair Dryer\r\nOcean View\r\nFamily Rooms\r\nNon-smoking Rooms\r\n'),
(3, 'La Luz Beach Resort', 'Brgy. Hugom , San Juan, Philippines', 'La Luz Beach Resort started as a private vacation home for a family until it developed into the beloved beach resort that it is known today. Unlike other beach resorts in Laiya that are usually packed with crowds, you can expect peace and tranquility here as it is located at the farthermost end of the shoreline.\r\n\r\nThis beach resort has a beautiful beachfront ideal for swimming and snorkeling, as well as rock formations that serve as perfect backdrop for snap-worthy pictures.\r\n\r\nIt has Filipino-themed rooms with bamboo wood accents. There are rooms good for couples and small groups and also a dormitory for those in a budget or in a large group. Other facilities include a pool and a restaurant and bar.', 8100, 'https://www.facebook.com/laluzbeachresortandspa', 'https://www.instagram.com/laluzbeachresort/', 'laluzbeachresort.com', 'customerservice@laluzbeachresort.com', 'llbr.customerservice@gmail.com', '(+63) 916 370 4017', '(+63) 927 805 3484', 'https://goo.gl/maps/7b8SZxK25wVsH7Qc9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.944962128064!2d121.37187589999999!3d13.661110599999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd3afcd468b6e5%3A0xeea7fc120a879422!2sLa%20Luz%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1680445757875!5m2!1sen!2sph', '<li>Free Parking</li>\r\n<li>Sauna</li>\r\n<li>Beach</li>\r\n<li>Children Activities</li>\r\n<li>Bar / Lounge</li>\r\n<li>Breakfast</li>\r\n<li>Diving</li>\r\n<li>Snorkeling</li>\r\n<li>Massage</li>\r\n<li>Chapel / Shrine</li>\r\n<li>Wi-Fi</li>\r\n<li>Bicycle Rental</li>\r\n<li>Pets Allowed</li>\r\n<li>Restaurant</li>\r\n<li>Boating</li>\r\n<li>Hiking</li>\r\n<li>Water Sports Equipment Rental</li>\r\n<li>24-hour Security</li>\r\n<li>Umbrella</li>\r\n', '<li>Soundproof Rooms</li>\r\n<li>Private Beach</li>\r\n<li>Housekeeping</li>\r\n<li>Bath / Shower</li>\r\n<li>Air Condition</li>\r\n<li>Desk</li>\r\n<li>Interconnected Rooms Available</li>\r\n<li>Complimentary Toiletries</li>', '<li>Ocean View</li>\r\n<li>Family Rooms</li>\r\n<li>Non-Smoking Rooms</li>', 'Laluz/laluz.jpg', 'Laluz/laluz2.jpg', 'Laluz/laluz3.jpg', 'Laluz/laluz4.jpg', 'Laluz/laluz5.jpg', 699, 'La Luz Beach Resort\r\nBrgy. Hugom , San Juan, Philippines\r\nLa Luz Beach Resort started as a private vacation home for a family until it developed into the beloved beach resort that it is known today. Unlike other beach resorts in Laiya that are usually packed with crowds, you can expect peace and tranquility here as it is located at the farthermost end of the shoreline. This beach resort has a beautiful beachfront ideal for swimming and snorkeling, as well as rock formations that serve as perfect backdrop for snap-worthy pictures. It has Filipino-themed rooms with bamboo wood accents. There are rooms good for couples and small groups and also a dormitory for those in a budget or in a large group. Other facilities include a pool and a restaurant and bar.\r\nRate starts at: PHP 8100.00\r\nFree Parking\r\nSauna\r\nBeach\r\nChildren Activities\r\nBar / Lounge\r\nBreakfast\r\nDiving\r\nSnorkeling\r\nMassage\r\nChapel / Shrine\r\nWi-Fi\r\nBicycle Rental\r\nPets Allowed\r\nRestaurant\r\nBoating\r\nHiking\r\nWater Sports Equipment Rental\r\n24-hour Security\r\nUmbrella\r\nSoundproof Rooms\r\nPrivate Beach\r\nHousekeeping\r\nBath / Shower\r\nAir Condition\r\nDesk\r\nInterconnected Rooms Available\r\nOcean View\r\nFamily Rooms\r\nNon-Smoking Rooms'),
(4, 'Sabangan Beach Resort', 'Brgy. Laiya, San Juan, Batangas, Philippines 4226', 'This resort features Filipino-themed rooms with veranda, alfresco lounge area where you can relax while appreciating the ocean view, and a clean beachfront where you can swim or just beach bum. There is also a play area and a small store inside where you can buy necessities.\r\n\r\nAnother good thing about Sabangan Beach Resort is that each booking comes with complimentary breakfast, lunch, and dinner! No need to worry about locating other restaurants or additional expenses.', 7000, 'https://www.facebook.com/mysabangan', 'https://www.instagram.com/mysabangan/', 'https://www.sabangan.com/', 'sabanganbeachresortph@gmail.com', '', '(+63) 927 9149  640', '(+63) 928 667 3997', 'https://goo.gl/maps/GYV3rSDod4qwRHKC7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.8858987427666!2d121.3765246!3d13.6647014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd2f7be5555555%3A0x230b71371e0a318f!2sSabangan%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1680446095534!5m2!1sen!2sph', '<li>Free Parking</li>\r\n<li>Pool</li>\r\n<li>Beach</li>\r\n<li>Children Activities</li>\r\n<li>Adult Pool</li>\r\n<li>Shallow End in Pool</li>\r\n<li>Breakfast Buffet</li>\r\n<li>Massage</li>\r\n<li>Outdoor Furniture</li>\r\n<li>Wi-Fi</li>\r\n<li>Boating</li>\r\n<li>Pets Allowed</li>\r\n<li>Restaurant</li>\r\n<li>Diving</li>\r\n<li>Water Park Offsite</li>\r\n<li>24-hour Security</li>\r\n<li>Convenience Store</li>\r\n<li>Shops</li>\r\n<li>Sun Umbrellas</li>\r\n<li>Concierge</li>\r\n<li>Water Sport Equipment Rentals</li>\r\n<li>Sun Loungers / Beach Chairs</li>', '<li>Air Condition</li>\r\n<li>Private Balcony</li>\r\n<li>Refrigerator</li>\r\n<li>Flat screen TV</li>\r\n<li>Seating Area</li>\r\n<li>Private Bathrooms</li>\r\n<li>Bath / Shower</li>\r\n<li>Dining Area</li>\r\n<li>Safe</li>\r\n<li>Cable / Satellite TV</li>\r\n<li>Bidet</li>\r\n<li>Bottled Water</li>\r\n<li>Tile / Marble Floor</li>\r\n<li>Complimentary Toiletries</li>', '<li>Ocean View</li>\r\n<li>Pool View</li>\r\n<li>Non-Smoking Rooms</li>\r\n<li>Family Rooms</li>', 'Sabangan/sabangan.jpg', 'Sabangan/sabangan2.jpg', 'Sabangan/sabangan3.jpg', 'Sabangan/sabangan4.jpg', 'Sabangan/sabangan5.jpg', 659, 'Sabangan Beach Resort\r\nBrgy. Laiya, San Juan, Batangas, Philippines 4226\r\nThis resort features Filipino-themed rooms with veranda, alfresco lounge area where you can relax while appreciating the ocean view, and a clean beachfront where you can swim or just beach bum. There is also a play area and a small store inside where you can buy necessities. Another good thing about Sabangan Beach Resort is that each booking comes with complimentary breakfast, lunch, and dinner! No need to worry about locating other restaurants or additional expenses.\r\nRate starts at: PHP 7000.00\r\nFree Parking\r\nPool\r\nBeach\r\nChildren Activities\r\nAdult Pool\r\nShallow End in Pool\r\nBreakfast Buffet\r\nMassage\r\nOutdoor Furniture\r\nWiFi\r\nBoating\r\nPets Allowed\r\nRestaurant\r\nDiving\r\nWater Park Offsite\r\n24-hour Security\r\nConvenience Store\r\nShops\r\nSun Umbrellas\r\nConcierge\r\nWater Sport Equipment Rentals\r\nSun Loungers / Beach Chairs\r\nAir Condition\r\nPrivate Balcony\r\nRefrigerator\r\nFlat screen TV\r\nSeating Area\r\nPrivate Bathrooms\r\nBath / Shower\r\nDining Area\r\nSafe\r\nCable / Satellite TV\r\nBidet\r\nBottled Water\r\nTile / Marble Floor\r\nComplimentary Toiletries\r\nOcean View\r\nPool View\r\nNon-Smoking Rooms\r\nFamily Rooms'),
(5, 'Virgin Beach Resort', 'Laiya, San Juan, San Juan, Philippines', 'This beach resort in Laiya aims to offer a tranquil beach experience, “reminiscent of beaches in the old days.” It is situated in a cove adjacent to Sigayan Bay, which is one of the cleanest bays in the country and is part of the Verde Island Passage, one of the most diverse marine habitats in the world.\r\n\r\nTheir accommodations include rustic casitas facing the 1.3-kilometer white-ish sand shore of Laiya.\r\n\r\nThey also have an alfresco restaurant so you can enjoy local and international dishes outdoors, a spa, and various activities including kayaking, snorkeling, biking, bird watching, and bonfire by the beach.', 7050, 'https://www.facebook.com/virginbeachresortlaiya', 'https://www.instagram.com/virginbeachresort/', 'https://virginbeachresort.com/', 'virginbeachresortreservations@gmail.com', '', '(+63) 998 563 8810', '', 'https://goo.gl/maps/Gr1iTKkau8ipa6wv5', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.849423101083!2d121.38084300000001!3d13.6669185!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd2587d26bbb89%3A0x782228f859fef35b!2sVirgin%20Beach%20Resort%20Laiya!5e0!3m2!1sen!2sph!4v1680446179549!5m2!1sen!2sph', '<li>Free Parking</li>\r\n<li>Bar / Lounge</li>\r\n<li>Boating</li>\r\n<li>24-hour Security</li>\r\n<li>Snorkeling</li>\r\n<li>Laundry Service</li>\r\n<li>Wi-Fi</li>\r\n<li>Beach</li>\r\n<li>Massage</li>\r\n<li>Chapel / Shrine</li>\r\n<li>Restaurant</li>\r\n<li>Umbrella</li>\r\n<li>Water Sport Equipment Rental</li>\r\n\r\n', '<li>Air Condition</li>\r\n<li>Housekeeping</li>\r\n<li>Seating Area</li>\r\n<li>Bath / Shower</li>\r\n<li>Bottled Water</li>\r\n<li>Private Beach</li>\r\n<li>Safe</li>\r\n<li>Coffee / Tea Maker</li>\r\n<li>Clothes Rack</li>\r\n<li>Complimentary Toiletries</li>', '<li>Ocean View</li>\r\n<li>Non-smoking Rooms</li>', 'Virgin/virgin.jpg', 'Virgin/virgin2.jpg', 'Virgin/virgin3.jpg', 'Virgin/virgin4.jpg', 'Virgin/virgin5.jpg', 743, 'Virgin Beach Resort\r\nLaiya, San Juan, San Juan, Philippines\r\nThis beach resort in Laiya aims to offer a tranquil beach experience, “reminiscent of beaches in the old days.” It is situated in a cove adjacent to Sigayan Bay, which is one of the cleanest bays in the country and is part of the Verde Island Passage, one of the most diverse marine habitats in the world. Their accommodations include rustic casitas facing the 1.3-kilometer white-ish sand shore of Laiya. They also have an alfresco restaurant so you can enjoy local and international dishes outdoors, a spa, and various activities including kayaking, snorkeling, biking, bird watching, and bonfire by the beach.\r\nRate starts at: PHP 7050.00\r\nFree Parking\r\nBar / Lounge\r\nBoating\r\n24-hour Security\r\nSnorkeling\r\nLaundry Service\r\nWiFi\r\nBeach\r\nMassage\r\nChapel / Shrine\r\nRestaurant\r\nUmbrella\r\nWater Sport Equipment Rental\r\nAir Condition\r\nHousekeeping\r\nSeating Area\r\nBath / Shower\r\nBottled Water\r\nPrivate Beach\r\nSafe\r\nCoffee / Tea Maker\r\nClothes Rack\r\nComplimentary Toiletries\r\nOcean View\r\nNon-smoking Rooms'),
(6, 'Palm Beach Resort', 'Laiya, San Juan, Batangas, Philippines', 'Palm Beach is your private sanctuary. This exclusive resort located in Laiya, Batangas is a tranquil retreat for anyone looking to unwind and gain peace of mind.\r\n\r\nYou can find what best suits your needs from our wide range of accommodations and facilities. Couples ignite their romance with our special candlelight dinners. Families grow closer to each other as they glide down our waterslide and move from one infinity pool to another. Companies strengthen their work relationships with our obstacle course and various team-building activities.\r\n\r\nGuests also choose our beachfront resort to make their celebrations more memorable. We have the ideal venue for weddings, birthdays, reunions, and other special occasions.\r\n\r\nRediscover paradise at Palm Beach Resort!', 8900, 'https://www.facebook.com/PalmBeachResortLaiya', 'https://www.instagram.com/palmbeachlaiya/', 'https://www.palmbeachlaiya.com/', 'palmbeachlaiya@gmail.com', '', '(+63) 919 994 5781', '(+63) 917 884 4425', 'https://goo.gl/maps/mYgJgvssgZFTqNs7A', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13040.377547080374!2d121.36124104257!3d13.66217594676448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd24112dabe13f%3A0x1d4eae108a7d00c9!2sPalm%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1680946453922!5m2!1sen!2sph', '<li>Free parking</li>\r\n<li>Beach</li>\r\n<li>Pool with view</li>\r\n<li>Breakfast buffet</li>\r\n<li>Horseback riding</li>\r\n<li>Waterslide</li>\r\n<li>Children Activities</li>\r\n<li>Highchairs available</li>\r\n<li>Meeting rooms</li>\r\n<li>Massage</li>\r\n<li>Concierge</li>\r\n<li>Shops</li>\r\n<li>Sun umbrellas</li>\r\n<li>Infirmary</li>\r\n<li>24-hour front desk</li>\r\n<li>Wi-Fi</li>\r\n<li>Badminton</li>\r\n<li>Restaurant</li>\r\n<li>Infinity pool</li>\r\n<li>Outdoor dining area</li>\r\n<li>Snorkeling</li>\r\n<li>Billiards</li>\r\n<li>Board games / puzzles</li>\r\n<li>Kids pool</li>\r\n<li>Conference facilities</li>\r\n<li>24-hour security</li>\r\n<li>Sun loungers / beach chairs</li>\r\n', '<li>Air condition</li>\r\n<li>Housekeeping</li>\r\n<li>Refrigerator</li>\r\n<li>Bath / shower</li>\r\n<li>Safe</li>\r\n<li>Clothes rack</li>\r\n<li>Private beach</li>\r\n<li>Private balcony</li>\r\n<li>Flat screen TV</li>\r\n<li>Bottled water</li>\r\n<li>Hair dryer</li>\r\n<li>Complimentary toiletries</li>', '<li>Ocean view</li>\r\n<li>Non-smoking rooms</li>\r\n<li>Family rooms</li>\r\n<li>Pool view</li>\r\n<li>Suites</li>\r\n', 'Palm/palm_beach.jpg', 'Palm/palm_beach2.jpg', 'Palm/palm_beach3.jpg', 'Palm/palm_beach4.jpg', 'Palm/palm_beach5.jpg', 718, 'Palm Beach Resort\r\nPalm Beach is your private sanctuary. This exclusive resort located in Laiya, Batangas is a tranquil retreat for anyone looking to unwind and gain peace of mind.\r\n\r\nYou can find what best suits your needs from our wide range of accommodations and facilities. Couples ignite their romance with our special candlelight dinners. Families grow closer to each other as they glide down our waterslide and move from one infinity pool to another. Companies strengthen their work relationships with our obstacle course and various team-building activities.\r\n\r\nGuests also choose our beachfront resort to make their celebrations more memorable. We have the ideal venue for weddings, birthdays, reunions, and other special occasions.\r\n\r\nRediscover paradise at Palm Beach Resort!\r\n8900\r\nFree parking\r\nFree internet\r\nPool\r\nRestaurant\r\nBeach\r\nBadminton\r\nKids stay free\r\nChildren\'s playground\r\nSecured parking\r\nInternet\r\nPool / beach towels\r\nInfinity pool\r\nPool with view\r\nOutdoor pool\r\nBreakfast buffet\r\nComplimentary Instant Coffee\r\nComplimentary welcome drink\r\nOutdoor dining area\r\nHorseback riding\r\nSnorkelling\r\nWater sport equipment rentals\r\nBilliards\r\nWaterslide\r\nBoard games / puzzles\r\nChildren Activities (Kid / Family Friendly)\r\nKids pool\r\nHighchairs available\r\nConference facilities\r\nMeeting rooms\r\nFull body massage\r\nMassage\r\n24-hour security\r\nConcierge\r\nGift shop\r\nShops\r\nSun loungers / beach chairs\r\nSun umbrellas\r\nFirst aid kit\r\nInfirmary\r\nUmbrella\r\n24-hour front desk\r\nAir conditio'),
(7, 'Cala Laiya', 'Laiya Ibabao, San Juan, Batangas City Philippines, 4226', 'Cala Laiya is a Staycation and can accommodate guests of all ages, except those with comorbidities.\r\n\r\nWhen in Cala Laiya, we greet all our guests with a sincere smile, a subtle nod, coupled with clasped hands.  This courteous greeting is not just done as a welcome to every guest arriving at the resort; it is done each time a guest is encountered at any time of day, regardless of the number of encounters.\r\n\r\nThe nod – almost a half bow – acknowledges one’s presence.  Contact is minimal yet significant, polite, subtle, and respectful. The clasped hands – with one palm placed on top of the other – are symbolic of providing comfort and security.  It is the Cala Laiya way of expressing our willingness to extend assistance and tireless service.Cala Laiya takes health and safety seriously by strictly complying with the safety protocols mandated by the government, and taking extra measures to keep guests and staff from harm’s way regardless of cost. Below are safety protocols and travel requirements to be strictly complied with by every guest.  Violations of said requirements shall be addressed accordingly.', 6500, 'https://www.facebook.com/calalaiya', 'https://www.instagram.com/calalaiya/', 'https://calalaiya.com/', 'reservations@calalaiya.ph', '', '(+63) 919-0709900', '(+63) 919-0709900', 'https://goo.gl/maps/gUwFEMVmx8u6xitU7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1938.4611253393718!2d121.41460889854864!3d13.6624914680665!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd25c7726960c1%3A0x8c89896b7f757f68!2sCala%20Laiya!5e0!3m2!1sen!2sph!4v1680950866640!5m2!1sen!2sph', '<li>Free parking</li>\r\n<li>Pool with view</li>\r\n<li>Beach</li>\r\n<li>Children\'s playground</li>\r\n<li>Swimming pool toys</li>\r\n<li>Kids\' meals</li>\r\n<li>Wine / champagne</li>\r\n<li>Hiking</li>\r\n<li>Board games / puzzles</li>\r\n<li>Highchairs available</li>\r\n<li>Full body massage</li>\r\n<li>Gift shop</li>\r\n<li>Wi-Fi</li>\r\n<li>Bar / lounge</li>\r\n<li>Badminton</li>\r\n<li>Restaurant</li>\r\n<li>Outdoor dining area</li>\r\n<li>Boating</li>\r\n<li>Snorkeling</li>\r\n<li>Pets Allowed </li>\r\n<li>24-hour security</li>\r\n<li>Outdoor furniture</li>\r\n<li>Sun umbrellas</li>', '<li>Blackout curtains</li>\r\n<li>Dining area</li>\r\n<li>Safe</li>\r\n<li>Cable / satellite TV</li>\r\n<li>Bottled water</li>\r\n<li>Private bathrooms</li>\r\n<li>Electric kettle</li>\r\n<li>Bath / shower</li>\r\n<li>Hair dryer</li>\r\n<li>Air condition</li>\r\n<li>Housekeeping</li>\r\n<li>Coffee / tea maker</li>\r\n<li>Bidet</li>\r\n<li>Clothes rack</li>\r\n<li>Refrigerator</li>\r\n<li>Flat screen TV</li>\r\n<li>Complimentary toiletries</li>', '<li>Non-smoking rooms</li>', 'Cala/cala.jpg', 'Cala/cala2.jpg', 'Cala/cala3.jpg', 'Cala/cala4.jpg', 'Cala/cala5.jpg', 564, 'Cala Laiya\r\nLaiya Ibabao, San Juan, Batangas City Philippines, 4226\r\nCala Laiya is a Staycation and can accommodate guests of all ages, except those with comorbidities.\r\n\r\nThe nod – almost a half bow – acknowledges one’s presence.  Contact is minimal yet significant, polite, subtle, and respectful. The clasped hands – with one palm placed on top of the other – are symbolic of providing comfort and security.  It is the Cala Laiya way of expressing our willingness to extend assistance and tireless service.Cala Laiya takes health and safety seriously by strictly complying with the safety protocols mandated by the government, and taking extra measures to keep guests and staff from harm’s way regardless of cost. Below are safety protocols and travel requirements to be strictly complied with by every guest.  Violations of said requirements shall be addressed accordingly.\r\n6500\r\nFree parking\r\nWifi\r\nPool with view\r\nBar / lounge\r\nBeach\r\nBadminton\r\nChildren\'s playground\r\nChildren Activities (Kid / Family Friendly)\r\nCar park\r\nPool / beach towels\r\nSwimming pool toys\r\nRestaurant\r\nComplimentary Instant Coffee\r\nComplimentary welcome drink\r\nKids\' meals\r\nOutdoor dining area\r\nWine / champagne\r\nBoating\r\nHiking\r\nSnorkelling\r\nBoard games / puzzles\r\nKids\' outdoor play equipment\r\nHighchairs available\r\nPets Allowed ( Dog / Pet Friendly )\r\nFull body massage\r\n24-hour security\r\nGift shop\r\nOutdoor furniture\r\nSun loungers / beach chairs\r\nSun umbrellas\r\nBlackout curtains\r\nAir conditioning\r\nDining area\r\nHo');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
