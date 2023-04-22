-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2023 at 05:02 PM
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
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

-- --------------------------------------------------------

--
-- Table structure for table `attractions`
--

CREATE TABLE `attractions` (
  `id` int(11) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `fb_link` varchar(300) NOT NULL,
  `web_link` varchar(100) NOT NULL,
  `gmail_link1` varchar(100) NOT NULL,
  `gmail_link2` varchar(100) NOT NULL,
  `phone_link1` varchar(20) NOT NULL,
  `phone_link2` varchar(20) NOT NULL,
  `map_link` varchar(100) NOT NULL,
  `embedded_map` varchar(1000) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `img3` varchar(100) NOT NULL,
  `img4` varchar(100) NOT NULL,
  `img5` varchar(100) NOT NULL,
  `views` int(50) NOT NULL,
  `search` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attractions`
--

INSERT INTO `attractions` (`id`, `place_name`, `location`, `description`, `fb_link`, `web_link`, `gmail_link1`, `gmail_link2`, `phone_link1`, `phone_link2`, `map_link`, `embedded_map`, `img1`, `img2`, `img3`, `img4`, `img5`, `views`, `search`) VALUES
(1, 'San Juan Nepomuceno Parish', 'P. Burgos St., Poblacion, 4226 San Juan, Batangas', 'The Parish of San Juan Nepomuceno began in 1843 in the old town called Pinagbayanan, the first town of San Juan. The church was mostly made only of bamboos and materials from coconut trees.\r\n\r\nOn August 10, 1855, through the initiative Fr. Damaso Mojica, OAR, a church made of stones was built. Twenty eight years later, floods destroyed the church. In 1894, It was transferred to its present site. It was formally inaugurated in 1894 with Father Celestino Yoldi, OAR as its parish priest. A bell tower was appended to the building between 1928 and 1935.\r\n<br>\r\nSCHEDULE OF MASSES\r\n<br>\r\nWednesday - 6:00 PM\r\n<br>\r\nThursday - 6:00 PM\r\n<br>\r\nFriday - 6:00 PM\r\n<br>\r\nSaturday - 7:00 AM\r\n<br>\r\nSunday - 6:00 AM, 8:00 AM, 10:00 AM, 5:00 PM', 'fb.com/sjnp1843', '', 'sanjuannepomuceno2016@yahoo.com', '', ' (+63) 945 843 2021', '', 'https://goo.gl/maps/pUGz6E1X5wJnioAr8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d482.76206728075033!2d121.01010096964436!3d14.536470299727467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c94781dd8f33%3A0xa0023c7ac579f75d!2sSan%20Juan%20Nepomuceno%20Parish!5e0!3m2!1sen!2sph!4v1682175164500!5m2!1sen!2sph', 'Parish/parish.jpg', 'Parish/parish2.jpg', 'Parish/parish3.jpg', 'Parish/parish4.jpg', 'Parish/parish5.jpg', 413, 'San Juan Nepomuceno Parish\r\nP. Burgos St., Poblacion, 4226 San Juan, Batangas\r\nThe Parish of San Juan Nepomuceno began in 1843 in the old town called Pinagbayanan, the first town of San Juan. The church was mostly made only of bamboos and materials from coconut trees.\r\n\r\nOn August 10, 1855, through the initiative Fr. Damaso Mojica, OAR, a church made of stones was built. Twenty eight years later, floods destroyed the church. In 1894, It was transferred to its present site. It was formally inaugurated in 1894 with Father Celestino Yoldi, OAR as its parish priest. A bell tower was appended to the building between 1928 and 1935.\r\n<br>\r\nSCHEDULE OF MASSES\r\n<br>\r\nWednesday - 6:00 PM\r\n<br>\r\nThursday - 6:00 PM\r\n<br>\r\nFriday - 6:00 PM\r\n<br>\r\nSaturday - 7:00 AM\r\n<br>\r\nSunday - 6:00 AM, 8:00 AM, 10:00 AM, 5:00 PM');

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
(13, 6, 'Palm Beach Resort', 'idid', '12312', 'id@asd', 'cvb'),
(14, 5, 'Virgin Beach Resort', 'qwerty', '1234567', 'dahsd@fasds', 'Hello');

-- --------------------------------------------------------

--
-- Table structure for table `gastronomic_exp`
--

CREATE TABLE `gastronomic_exp` (
  `id` int(11) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `cuisine` varchar(100) NOT NULL,
  `diets` varchar(500) NOT NULL,
  `features` varchar(500) NOT NULL,
  `offering` varchar(500) NOT NULL,
  `opening` varchar(100) NOT NULL,
  `rate` int(50) NOT NULL,
  `ig_link` varchar(100) NOT NULL,
  `fb_link` varchar(150) NOT NULL,
  `web_link` varchar(150) NOT NULL,
  `gmail_link1` varchar(150) NOT NULL,
  `gmail_link2` varchar(150) NOT NULL,
  `map_link` varchar(300) NOT NULL,
  `embedded_map` varchar(1000) NOT NULL,
  `phone_link1` varchar(50) NOT NULL,
  `phone_link2` varchar(50) NOT NULL,
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

INSERT INTO `gastronomic_exp` (`id`, `place_name`, `location`, `details`, `cuisine`, `diets`, `features`, `offering`, `opening`, `rate`, `ig_link`, `fb_link`, `web_link`, `gmail_link1`, `gmail_link2`, `map_link`, `embedded_map`, `phone_link1`, `phone_link2`, `img1`, `img2`, `img3`, `img4`, `img5`, `views`, `search`) VALUES
(1, 'Cafeno', 'Rizal Street No. 9, Corner General Luna, San Juan, Luzon 4226 Philippines', 'CAFENO MANILA CAFE | KITCHEN | RETAIL established in 2006 is uniquely located in a heritage ancestral house in San Juan, Batangas. We serve premium locally-brewed coffee, creative menu offerings and secret menu desserts. We also offer frozen goods and premium gourmet bottles for take home.', 'Contemporary, Filipino, Cafe', '<li>Breakfast</li>\r\n<li>Brunch</li>\r\n<li>Lunch</li>\r\n<li>Dinner</li>\r\n<li>Drinks</li>', '<li>Takeout</li>\r\n<li>Reservations</li>\r\n<li>Seating</li>\r\n<li>Private Dining</li>\r\n<li>Parking</li>\r\n<li>Digital Payments</li>\r\n<li>Non-smoking restaurants</li>', '<li>Coffee</li>\r\n<li>Small Plates</li>', '7am - 7pm', 112, 'https://www.instagram.com/cafeno.mnl/', 'https://www.facebook.com/cafeno.mnl', 'error-page.php', 'cafeno.cafe@gmail.com', '', 'https://goo.gl/maps/aRki3PJPP3Q5SSc56', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3874.2271669550278!2d121.39215927594232!3d13.825393386574216!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd39a0132344b3%3A0x20ed664c6440940!2zQ2FmZcOxbw!5e0!3m2!1sen!2sph!4v1682070853014!5m2!1sen!2sph', '(+63) 995 412 1355', '', 'Cafeno/cafeno.jpg', 'Cafeno/cafeno2.jpg', 'Cafeno/cafeno3.jpg', 'Cafeno/cafeno4.jpg', 'Cafeno/cafeno5.jpg', 416, 'Cafeno\r\nCAFENO MANILA CAFE | KITCHEN | RETAIL established in 2006 is uniquely located in a heritage ancestral house in San Juan, Batangas. We serve premium locally-brewed coffee, creative menu offerings and secret menu desserts. We also offer frozen goods and premium gourmet bottles for take home.\r\nPRICE RANGE\r\n₱112 - ₱449\r\nCUISINES\r\nContemporary, Filipino, Cafe\r\nMEALS\r\nLunch, Breakfast, Dinner, Brunch, Drinks\r\nFEATURES\r\nTakeout, Reservations, Seating, Private Dining, Parking Available, Street Parking, Digital Payments, Table Service, Family style, Non-smoking restaurants'),
(2, 'La Barrida Pizza Haus', 'Alday St cor Cabuñag St, Candelaria, Philippines, 4323', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Pizza', '<li>Lunch</li>\r\n<li>Dinner</li>', '<li>Dine-in</li>\r\n<li>Curbside pickup</li>\r\n<li>No-contact delivery</li>', '<li>Small Plates</li>', '9am - 9pm', 100, 'error-page.php', 'https://www.facebook.com/LaBarridaPizzaHaus', 'error-page.php', 'lqfranchise@gmail.com', '', 'https://goo.gl/maps/BgApKMG7C2KvfSZ49', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3874.2066317048193!2d121.3930194758884!3d13.826627395555084!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd39744208f38b%3A0x2c13da0fc2508d6c!2sLa%20Barrida%20San%20Juan%20Batangas!5e0!3m2!1sen!2sph!4v1681913306410!5m2!1sen!2sph', '(+63) 963 809 4510', '', 'La_barrida/la_barrida.jpg', 'La_barrida/la_barrida2.jpg', 'La_barrida/la_barrida3.jpg', 'La_barrida/la_barrida4.jpg', 'La_barrida/la_barrida5.jpg', 378, 'La Barrida Pizza Haus\r\nAlday St cor Cabuñag St, Candelaria, Philippines, 4323\r\nsizzling \r\nsisig\r\nmeal\r\nkids\r\nchildren\r\nreservation\r\nrestaurant\r\n'),
(3, 'Nuevo Comedor Parilla & Restaurant', '08 Javier St., San Juan, Philippines , San Juan, Philippines', 'Spanish era house converted into restaurant..Good place for typical Filipino dishes like BBQ, Pinakbet and etc..', 'Filipino', '<li>Brunch</li>\r\n<li>Lunch</li>\r\n<li>Dinner</li>\r\n<li>Dessert</li>\r\n', '<li>Dine-in</li>\r\n<li>Takeout</li>\r\n<li>Reservations</li>\r\n', '<li>Coffee<li>\r\n<li>Small Plates\r\n\r\n<li>', '9am - 9pm', 100, 'error-page.php\r\n', 'https://www.facebook.com/profile.php?id=100069874502192', 'error-page.php', 'nuevocomedor2014@gmail.com', '', 'https://goo.gl/maps/J8yDGVefn9r44zp7A', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d968.5509526665462!2d121.39575920484776!3d13.826796909621574!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd397467cec171%3A0x4b513cf16f995cbc!2sNuevo%20Comedor%20Parilla%20%26%20Restaurant!5e0!3m2!1sen!2sph!4v1682075204579!5m2!1sen!2sph', '(+63) 917 867 7442', '(+63) 946 317 7316', 'Nuevo/nuevo.jpg', 'Nuevo/nuevo2.jpg', 'Nuevo/nuevo3.jpg', 'Nuevo/nuevo4.jpg', 'Nuevo/nuevo5.jpg', 355, 'Nuevo Comedor Parilla & Restaurant\r\nTakeout\r\n\r\nDine-in\r\nAccessibility\r\n\r\nWheelchair accessible entrance\r\n\r\nWheelchair accessible seating\r\nOfferings\r\n\r\nCoffee\r\n\r\nSmall plates\r\nDining options\r\n\r\nBreakfast\r\n\r\nLunch\r\n\r\nDinner\r\n\r\nDessert\r\nAmenities\r\n\r\nGood for kids\r\n\r\nRestroom\r\nAtmosphere\r\n\r\nCasual\r\nCrowd\r\n\r\nGroups\r\nPlanning\r\n\r\nAccepts reservations\r\n'),
(4, 'Danaya Bar and Restaurant', ' Sitio Masunurin, San Juan, 4226 Batangas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Filipino', '<li>Brunch</li>\r\n<li>Lunch</li>\r\n<li>Dinner</li>\r\n<li>Dessert</li>', '<li>No-contact delivery</li>\r\n<li>Delivery</li>\r\n<li>Takeout</li>\r\n<li>Dine-in</li>\r\n<li>Bar onsite</li>\r\n<li>Reservations</li>', '<li>Alcohol</li>\r\n<li>Coffee</li>\r\n<li>Beer</li>\r\n<li>Small plates</li>\r\n<li>Hard liquor</li>', '11:00am - 9:00pm', 90, 'error-page.php', 'https://www.facebook.com/DanayaRestoBar', 'error-page.php', 'dummyemail@dummy.com', '', 'https://goo.gl/maps/qbu1h3kbHarEWavr6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2305.0765933274424!2d121.41418182839324!3d13.67834829706902!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd2596d6d21775%3A0x8ba01770a5f4d691!2sDanaya%20Bar%20and%20Restaurant!5e0!3m2!1sen!2sph!4v1682076103919!5m2!1sen!2sph', '(+63) 919 825 5445', '', 'Danaya/danaya.jpg', 'Danaya/danaya2.jpg', 'Danaya/danaya3.jpg', 'Danaya/danaya4.jpg', 'Danaya/danaya5.jpg', 368, 'Service options\r\n\r\nNo-contact delivery\r\nDanaya Bar and Restaurant\r\nDelivery\r\n Sitio Masunurin, San Juan, 4226 Batangas\r\nTakeout\r\n\r\nDine-in\r\nOfferings\r\n\r\nAlcohol\r\n\r\nBeer\r\n\r\nCoffee\r\n\r\nHard liquor\r\n\r\nSmall plates\r\nDining options\r\n\r\nBrunch\r\n\r\nLunch\r\n\r\nDinner\r\n\r\nDessert\r\nAmenities\r\n\r\nBar onsite\r\n\r\nGood for kids\r\n\r\nRestroom\r\nAtmosphere\r\n\r\nCasual\r\nCrowd\r\n\r\nGroups\r\nPlanning\r\n\r\nAccepts reservations'),
(5, 'Ben\'s Halo-Halo Ice Cream', 'Phoenix Gas Station, San Juan - Laiya Rd, San Juan, 4226 Batangas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Filipino', '<li>Breakfast</li>\r\n<li>Lunch</li>\r\n<li>Dessert</li>\r\n', '<li>Dine-in</li>\r\n<li>Delivery</li>\r\n<li>Takeout</li>\r\n<li>Reservations</li>', '<li>Kids\' menu</li>\r\n<li>Small plates</li>', '10:00am - 8:00pm', 80, 'error-page.php', 'https://www.facebook.com/Benhalohalo', 'error-page.php', 'pascobenildo@yahoo.com', '', 'https://goo.gl/maps/ihziB6Bio4npRMWo6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10132.21250031352!2d121.40287324244251!3d13.81367334808489!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd3bf737200f1d%3A0x48d03180a02a5d78!2sBen&#39;s%20Halo-Halo%20Ice%20Cream%20%40%20San%20Juan%20Batangas!5e0!3m2!1sen!2sph!4v1682076861204!5m2!1sen!2sph', '(+63) 936 909 3425', '', 'Ben/ben.jpg', 'Ben/ben2.jpg', 'Ben/ben3.jpg', 'Ben/ben4.jpg', 'Ben/ben5.jpg', 397, 'Ben\'s Halo-Halo Ice Cream @ San Juan Batangas\r\nPhoenix Gas Station, San Juan - Laiya Rd, San Juan, 4226 Batangas\r\nService options\r\n\r\nDelivery\r\n\r\nTakeout\r\n\r\nDine-in\r\nAccessibility\r\n\r\nWheelchair accessible entrance\r\n\r\nWheelchair accessible parking lot\r\n\r\nWheelchair accessible seating\r\nOfferings\r\n\r\nKids\' menu\r\n\r\nSmall plates\r\nDining options\r\n\r\nBreakfast\r\n\r\nLunch\r\n\r\nDessert\r\nAmenities\r\n\r\nGood for kids\r\n\r\nRestroom\r\nAtmosphere\r\n\r\nCasual\r\nCrowd\r\n\r\nGroups\r\nPlanning\r\n\r\nAccepts reservations'),
(6, 'Bulalohan sa Pipisik', '\r\nBrgy. Hugom, San Juan, Philippines', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Filipino', '<li>Breakfast</li>\r\n<li>Lunch</li>\r\n<li>Dinner</li>\r\n<li>Dessert</li>\r\n<li>Seating</li>', '<li>Outdoor seating</li>\r\n<li>Takeout</li>\r\n<li>Dinner</li>\r\n<li>Delivery</li>\r\n<li>Dine-in</li>', '<li>Coffee</li>\r\n<li>Small plates</li>', '6:00am - 8:00pm', 100, 'error-page.php', 'https://www.facebook.com/BulalohansaPipisik', 'error-page.php', 'dummyemail@dummy.com', '', 'https://goo.gl/maps/W6HZLxpyLpTYTKadA', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13040.453303139737!2d121.36714753844431!3d13.66080654185377!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd240ff8a17a31%3A0x58129c5902c0f3a6!2sBulalohan%20sa%20Pipisik!5e0!3m2!1sen!2sph!4v1682077737273!5m2!1sen!2sph', ' (+63) 920 602 9121', '', 'Bulalo/bulalo.jpg', 'Bulalo/bulalo2.jpg', 'Bulalo/bulalo3.jpg', 'Bulalo/bulalo4.jpg', 'Bulalo/bulalo5.jpg', 347, 'Bulalohan sa Pipisik\r\nSan Juan - Laiya Rd., San Juan, 4226 Batangas\r\nService options\r\n\r\nOutdoor seating\r\n\r\nDelivery\r\n\r\nTakeout\r\n\r\nDine-in\r\nOfferings\r\n\r\nCoffee\r\n\r\nSmall plates\r\nDining options\r\n\r\nBreakfast\r\n\r\nLunch\r\n\r\nDinner\r\n\r\nDessert\r\n\r\nSeating\r\nAmenities\r\n\r\nGood for kids\r\n\r\nRestroom\r\nAtmosphere\r\n\r\nCasual\r\nCrowd\r\n\r\nGroups');

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
  `details` varchar(1500) NOT NULL,
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
  `search` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weekend_gateaway`
--

INSERT INTO `weekend_gateaway` (`id`, `place_name`, `location`, `details`, `rate`, `fb_link`, `ig_link`, `web_link`, `gmail_link1`, `gmail_link2`, `phone_link1`, `phone_link2`, `map_link`, `embedded_map`, `property_amenities`, `room_features`, `room_types`, `img1`, `img2`, `img3`, `img4`, `img5`, `views`, `search`) VALUES
(1, 'Acuatico Beach Resort', 'Laiya, San Juan, Batangas, Philippines', 'Need an escape? Acuatico Beach Resort in the Philippines offers you the perfect sanctuary to reset and recharge. Just a few hours’ drive from Manila, Acuatico is the idyllic setting for all your getaway needs. Enjoy swimming in our famous infinity pool and witness its merge with the azure waters of the adjacent seas.', 9800, 'https://www.facebook.com/AcuaticoBeachResort', 'https://www.instagram.com/acuaticobeachresort/', 'https://acuaticoresort.com.ph/', 'reservations@acuaticoresort.com.ph\r\n', 'events@acuaticoresort.com.ph', '(+63) 917 706 9136', '(+63) 968 871 4516', 'https://goo.gl/maps/E5gdrWd5AM31XFdU9', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d969.2222647227761!2d121.3757907!3d13.6645093!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd244c3e29e1ad%3A0xa4f9b32c2ccb66f0!2sAcuatico%20Resort%20Manila%20Sales%20and%20Reservations%20Corporate%20Office!5e0!3m2!1sen!2sph!4v1680444229056!5m2!1sen!2sph', '<li>Free Parking</li>\r\n<li>Pool</li>\r\n<li>Beach</li>\r\n<li>Bar / Lounge</li>\r\n<li>Restaurant</li>\r\n<li>Poolside Bar</li>\r\n<li>Banquet Room</li>\r\n<li>Spa</li>\r\n<li>Full Body Massage</li>\r\n<li>Baggage Storage</li>\r\n<li>Newspaper</li>\r\n<li>Shops</li>\r\n<li>ATM on site</li>\r\n<li>Laundry Service</li>\r\n<li>Wi-Fi</li>\r\n<li>Breakfast</li>\r\n<li>Game Room</li>\r\n<li>Kids Pool</li>\r\n<li>Infinity Pool</li>\r\n<li>Coffee Shop</li>\r\n<li>Breakfast Buffet</li>\r\n<li>Swim up Bar</li>\r\n<li>Indoor Play Area for Children</li>', '<li>Air Condition</li>\r\n<li>Private Balcony</li>\r\n<li>Coffee / Tea Maker</li>\r\n<li>Flat screen TV</li>\r\n<li>Telephone</li>\r\n<li>Refrigerator</li>\r\n<li>Complimentary Toiletries</li>\r\n<li>Private Beach</li>\r\n<li>Safe</li>\r\n<li>Minibar</li>\r\n<li>Bidet</li>\r\n<li>Bottled Water</li>\r\n<li>Bath / Shower</li>\r\n<li>Hair Dryer</li>\r\n<li>Beach Towel</li>', '<li>Ocean View</li>\r\n<li>Suites</li>\r\n<li>Non-Smoking Rooms</li>\r\n<li>Family Rooms</li>', 'Acuatico/acuatico.jpg', 'Acuatico/acuatico2.jpg', 'Acuatico/acuatico3.jpg', 'Acuatico/acuatico4.jpg', 'Acuatico/acuatico5.jpg', 763, 'Acuatico Beach Resort\r\nLaiya, San Juan, Batangas, Philippines\r\nNeed an escape? Acuatico Beach Resort in the Philippines offers you the perfect sanctuary to reset and recharge. Just a few hours’ drive from Manila, Acuatico is the idyllic setting for all your getaway needs. Enjoy swimming in our famous infinity pool and witness its merge with the azure waters of the adjacent seas.\r\n9800\r\nFree Parking\r\nPool\r\nBeach\r\nBar / Lounge\r\nRestaurant\r\nPoolside Bar\r\nBanquet Room\r\nSpa\r\nFull Body Massage\r\nBaggage Storage\r\nNewspaper\r\nShops\r\nATM on site\r\nLaundry Service\r\nWi-Fi\r\nBreakfast\r\nGame Room\r\nKids Pool\r\nInfinity Pool\r\nCoffee Shop\r\nBreakfast Buffet\r\nSwim up Bar\r\nIndoor Play Area for Children\r\nAir Condition\r\nPrivate Balcony\r\nCoffee / Tea Maker\r\nFlat screen TV\r\nTelephone\r\nRefrigerator\r\nComplimentary Toiletries\r\nPrivate Beach\r\nSafe\r\nMinibar\r\nBidet\r\nBottled Water\r\nBath / Shower\r\nHair Dryer\r\nBeach Towel\r\nOcean View\r\nSuites\r\nNon-Smoking Rooms\r\nFamily Rooms\r\nwifi'),
(2, 'Acuaverde Beach', 'Laiya, San Juan, Batangas, Philippines', 'Acuaverde Beach Resort is another one of the top beach resorts in Laiya. They are popular among families and company outings, as they own one of the widest beachfronts in Laiya.\r\n\r\nThis resort promises serenity, privacy, and comfort to guests. Each room is fitted with modern amenities and additional comforts such as LC cable TV, well-stocked minibar, and private veranda.\r\n\r\nFacilities include a restaurant that serves local and international dishes (ala carte or buffet style), a spa, a waterpark for water activities, and dedicated areas for other indoor and outdoor activities.\r\n\r\nThey are also pet-friendly, so you can bring your furbabies with you in Laiya!', 7900, 'https://www.facebook.com/AcuaverdeBeachResort', 'https://www.instagram.com/acuaverdebeachresort/', 'https://acuaverderesort.com.ph/', 'reservations@acuaverderesort.com.ph', 'events@acuaverderesort.com.ph', '(+63) 928 854 3805', '(+63) 969 617 5021', 'https://goo.gl/maps/Y94ZQE4szYhKSj9x8', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d969.2222647227761!2d121.3757907!3d13.6645093!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd2f9da389cdbf%3A0x84b1aca0a1d2a37b!2sAcuaverde%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1680445321781!5m2!1sen!2sph', '<li>Free parking</li>\r\n<li>Public Wi-Fi</li>\r\n<li>Free breakfast</li>\r\n<li>Beach</li>\r\n<li>Children\'s playground</li>\r\n<li>Family Activities</li>\r\n<li>Meeting rooms</li>\r\n<li>Spa</li>\r\n<li>Bar / lounge</li>\r\n<li>Restaurant</li>\r\n<li>Breakfast buffet</li>\r\n<li>Massage</li>\r\n<li>Concierge</li>\r\n<li>Gift shop</li>\r\n<li>Non-smoking hotel</li>\r\n<li>Sun loungers / beach chairs</li>', '<li>Air Condition</li>\r\n<li>Mini Bar</li>\r\n<li>Bidet</li>\r\n<li>Complimentary Toiletries</li>\r\n<li>Private Balcony</li>\r\n<li>Flat screen TV</li>\r\n<li>Hair Dryer</li>', '<li>Ocean View</li>\r\n<li>Family Rooms</li>\r\n<li>Non-smoking Rooms</li>', 'Acuaverde/acuaverde.jpg', 'Acuaverde/acuaverde2.jpg', 'Acuaverde/acuaverde3.jpg', 'Acuaverde/acuaverde4.jpg', 'Acuaverde/acuaverde5.jpg', 751, 'Acuaverde Beach Resort and Hotel\r\nLaiya, San Juan, Batangas, Philippines\r\nAcuaverde Beach Resort is another one of the top beach resorts in Laiya. They are popular among families and company outings, as they own one of the widest beachfronts in Laiya. This resort promises serenity, privacy, and comfort to guests. Each room is fitted with modern amenities and additional comforts such as LC cable TV, well-stocked minibar, and private veranda. Facilities include a restaurant that serves local and international dishes (ala carte or buffet style), a spa, a waterpark for water activities, and dedicated areas for other indoor and outdoor activities. They are also pet-friendly, so you can bring your furbabies with you in Laiya!\r\nRate starts at: PHP 7900.00\r\nFree parking\r\nPublic Wi-Fi\r\nFree breakfast\r\nBeach\r\nChildren\'s playground\r\nFamily Activities\r\nMeeting rooms\r\nSpa\r\nBar / lounge\r\nRestaurant\r\nBreakfast buffet\r\nMassage\r\nConcierge\r\nGift shop\r\nNon-smoking hotel\r\nAir Condition\r\nMini Bar\r\nBidet\r\nComplimentary Toiletries\r\nPrivate Balcony\r\nFlat screen TV\r\nHair Dryer\r\nOcean View\r\nFamily Rooms\r\nNon-smoking Rooms\r\nwifi'),
(3, 'La Luz Beach Resort', 'Brgy. Hugom , San Juan, Philippines', 'La Luz Beach Resort started as a private vacation home for a family until it developed into the beloved beach resort that it is known today. Unlike other beach resorts in Laiya that are usually packed with crowds, you can expect peace and tranquility here as it is located at the farthermost end of the shoreline.\r\n\r\nThis beach resort has a beautiful beachfront ideal for swimming and snorkeling, as well as rock formations that serve as perfect backdrop for snap-worthy pictures.\r\n\r\nIt has Filipino-themed rooms with bamboo wood accents. There are rooms good for couples and small groups and also a dormitory for those in a budget or in a large group. Other facilities include a pool and a restaurant and bar.', 8100, 'https://www.facebook.com/laluzbeachresortandspa', 'https://www.instagram.com/laluzbeachresort/', 'laluzbeachresort.com', 'customerservice@laluzbeachresort.com', 'llbr.customerservice@gmail.com', '(+63) 916 370 4017', '(+63) 927 805 3484', 'https://goo.gl/maps/7b8SZxK25wVsH7Qc9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.944962128064!2d121.37187589999999!3d13.661110599999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd3afcd468b6e5%3A0xeea7fc120a879422!2sLa%20Luz%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1680445757875!5m2!1sen!2sph', '<li>Free Parking</li>\r\n<li>Sauna</li>\r\n<li>Beach</li>\r\n<li>Children Activities</li>\r\n<li>Bar / Lounge</li>\r\n<li>Breakfast</li>\r\n<li>Diving</li>\r\n<li>Snorkeling</li>\r\n<li>Massage</li>\r\n<li>Chapel / Shrine</li>\r\n<li>Wi-Fi</li>\r\n<li>Bicycle Rental</li>\r\n<li>Pets Allowed</li>\r\n<li>Restaurant</li>\r\n<li>Boating</li>\r\n<li>Hiking</li>\r\n<li>Water Sports Equipment Rental</li>\r\n<li>24-hour Security</li>\r\n<li>Umbrella</li>\r\n', '<li>Soundproof Rooms</li>\r\n<li>Private Beach</li>\r\n<li>Housekeeping</li>\r\n<li>Bath / Shower</li>\r\n<li>Air Condition</li>\r\n<li>Desk</li>\r\n<li>Interconnected Rooms Available</li>\r\n<li>Complimentary Toiletries</li>', '<li>Ocean View</li>\r\n<li>Family Rooms</li>\r\n<li>Non-Smoking Rooms</li>', 'Laluz/laluz.jpg', 'Laluz/laluz2.jpg', 'Laluz/laluz3.jpg', 'Laluz/laluz4.jpg', 'Laluz/laluz5.jpg', 705, 'La Luz Beach Resort\r\nBrgy. Hugom , San Juan, Philippines\r\nLa Luz Beach Resort started as a private vacation home for a family until it developed into the beloved beach resort that it is known today. Unlike other beach resorts in Laiya that are usually packed with crowds, you can expect peace and tranquility here as it is located at the farthermost end of the shoreline. This beach resort has a beautiful beachfront ideal for swimming and snorkeling, as well as rock formations that serve as perfect backdrop for snap-worthy pictures. It has Filipino-themed rooms with bamboo wood accents. There are rooms good for couples and small groups and also a dormitory for those in a budget or in a large group. Other facilities include a pool and a restaurant and bar.\r\nRate starts at: PHP 8100.00\r\nFree Parking\r\nSauna\r\nBeach\r\nChildren Activities\r\nBar / Lounge\r\nBreakfast\r\nDiving\r\nSnorkeling\r\nMassage\r\nChapel / Shrine\r\nWi-Fi\r\nBicycle Rental\r\nPets Allowed\r\nRestaurant\r\nBoating\r\nHiking\r\nWater Sports Equipment Rental\r\n24-hour Security\r\nUmbrella\r\nSoundproof Rooms\r\nPrivate Beach\r\nHousekeeping\r\nBath / Shower\r\nAir Condition\r\nDesk\r\nInterconnected Rooms Available\r\nComplimentary Toiletries\r\nOcean View\r\nFamily Rooms\r\nNon-Smoking Rooms\r\nwifi'),
(4, 'Sabangan Beach Resort', 'Brgy. Laiya, San Juan, Batangas, Philippines 4226', 'This resort features Filipino-themed rooms with veranda, alfresco lounge area where you can relax while appreciating the ocean view, and a clean beachfront where you can swim or just beach bum. There is also a play area and a small store inside where you can buy necessities.\r\n\r\nAnother good thing about Sabangan Beach Resort is that each booking comes with complimentary breakfast, lunch, and dinner! No need to worry about locating other restaurants or additional expenses.', 7000, 'https://www.facebook.com/mysabangan', 'https://www.instagram.com/mysabangan/', 'https://www.sabangan.com/', 'sabanganbeachresortph@gmail.com', '', '(+63) 927 9149  640', '(+63) 928 667 3997', 'https://goo.gl/maps/GYV3rSDod4qwRHKC7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.8858987427666!2d121.3765246!3d13.6647014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd2f7be5555555%3A0x230b71371e0a318f!2sSabangan%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1680446095534!5m2!1sen!2sph', '<li>Free Parking</li>\r\n<li>Pool</li>\r\n<li>Beach</li>\r\n<li>Children Activities</li>\r\n<li>Adult Pool</li>\r\n<li>Shallow End in Pool</li>\r\n<li>Breakfast Buffet</li>\r\n<li>Massage</li>\r\n<li>Outdoor Furniture</li>\r\n<li>Wi-Fi</li>\r\n<li>Boating</li>\r\n<li>Pets Allowed</li>\r\n<li>Restaurant</li>\r\n<li>Diving</li>\r\n<li>Water Park Offsite</li>\r\n<li>24-hour Security</li>\r\n<li>Convenience Store</li>\r\n<li>Shops</li>\r\n<li>Sun Umbrellas</li>\r\n<li>Concierge</li>\r\n<li>Water Sport Equipment Rentals</li>\r\n<li>Sun Loungers / Beach Chairs</li>', '<li>Air Condition</li>\r\n<li>Private Balcony</li>\r\n<li>Refrigerator</li>\r\n<li>Flat screen TV</li>\r\n<li>Seating Area</li>\r\n<li>Private Bathrooms</li>\r\n<li>Bath / Shower</li>\r\n<li>Dining Area</li>\r\n<li>Safe</li>\r\n<li>Cable / Satellite TV</li>\r\n<li>Bidet</li>\r\n<li>Bottled Water</li>\r\n<li>Tile / Marble Floor</li>\r\n<li>Complimentary Toiletries</li>', '<li>Ocean View</li>\r\n<li>Pool View</li>\r\n<li>Non-Smoking Rooms</li>\r\n<li>Family Rooms</li>', 'Sabangan/sabangan.jpg', 'Sabangan/sabangan2.jpg', 'Sabangan/sabangan3.jpg', 'Sabangan/sabangan4.jpg', 'Sabangan/sabangan5.jpg', 666, 'Sabangan Beach Resort\r\nBrgy. Laiya, San Juan, Batangas, Philippines 4226\r\nThis resort features Filipino-themed rooms with veranda, alfresco lounge area where you can relax while appreciating the ocean view, and a clean beachfront where you can swim or just beach bum. There is also a play area and a small store inside where you can buy necessities. Another good thing about Sabangan Beach Resort is that each booking comes with complimentary breakfast, lunch, and dinner! No need to worry about locating other restaurants or additional expenses.\r\nRate starts at: PHP 7000.00\r\nFree Parking\r\nPool\r\nBeach\r\nChildren Activities\r\nAdult Pool\r\nShallow End in Pool\r\nBreakfast Buffet\r\nMassage\r\nOutdoor Furniture\r\nWi-Fi\r\nBoating\r\nPets Allowed\r\nRestaurant\r\nDiving\r\nWater Park Offsite\r\n24-hour Security\r\nConvenience Store\r\nShops\r\nSun Umbrellas\r\nConcierge\r\nWater Sport Equipment Rentals\r\nSun Loungers / Beach Chairs\r\nAir Condition\r\nPrivate Balcony\r\nRefrigerator\r\nFlat screen TV\r\nSeating Area\r\nPrivate Bathrooms\r\nBath / Shower\r\nDining Area\r\nSafe\r\nCable / Satellite TV\r\nBidet\r\nBottled Water\r\nTile / Marble Floor\r\nComplimentary Toiletries\r\nOcean View\r\nPool View\r\nNon-Smoking Rooms\r\nFamily Rooms\r\nwifi'),
(5, 'Virgin Beach Resort', 'Laiya, San Juan, San Juan, Philippines', 'This beach resort in Laiya aims to offer a tranquil beach experience, “reminiscent of beaches in the old days.” It is situated in a cove adjacent to Sigayan Bay, which is one of the cleanest bays in the country and is part of the Verde Island Passage, one of the most diverse marine habitats in the world.\r\n\r\nTheir accommodations include rustic casitas facing the 1.3-kilometer white-ish sand shore of Laiya.\r\n\r\nThey also have an alfresco restaurant so you can enjoy local and international dishes outdoors, a spa, and various activities including kayaking, snorkeling, biking, bird watching, and bonfire by the beach.', 7050, 'https://www.facebook.com/virginbeachresortlaiya', 'https://www.instagram.com/virginbeachresort/', 'https://virginbeachresort.com/', 'virginbeachresortreservations@gmail.com', '', '(+63) 998 563 8810', '', 'https://goo.gl/maps/Gr1iTKkau8ipa6wv5', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.849423101083!2d121.38084300000001!3d13.6669185!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd2587d26bbb89%3A0x782228f859fef35b!2sVirgin%20Beach%20Resort%20Laiya!5e0!3m2!1sen!2sph!4v1680446179549!5m2!1sen!2sph', '<li>Free Parking</li>\r\n<li>Bar / Lounge</li>\r\n<li>Boating</li>\r\n<li>24-hour Security</li>\r\n<li>Snorkeling</li>\r\n<li>Laundry Service</li>\r\n<li>Wi-Fi</li>\r\n<li>Beach</li>\r\n<li>Massage</li>\r\n<li>Chapel / Shrine</li>\r\n<li>Restaurant</li>\r\n<li>Umbrella</li>\r\n<li>Water Sport Equipment Rental</li>\r\n\r\n', '<li>Air Condition</li>\r\n<li>Housekeeping</li>\r\n<li>Seating Area</li>\r\n<li>Bath / Shower</li>\r\n<li>Bottled Water</li>\r\n<li>Private Beach</li>\r\n<li>Safe</li>\r\n<li>Coffee / Tea Maker</li>\r\n<li>Clothes Rack</li>\r\n<li>Complimentary Toiletries</li>', '<li>Ocean View</li>\r\n<li>Non-smoking Rooms</li>', 'Virgin/virgin.jpg', 'Virgin/virgin2.jpg', 'Virgin/virgin3.jpg', 'Virgin/virgin4.jpg', 'Virgin/virgin5.jpg', 749, 'Virgin Beach Resort\r\nLaiya, San Juan, San Juan, Philippines\r\nThis beach resort in Laiya aims to offer a tranquil beach experience, “reminiscent of beaches in the old days.” It is situated in a cove adjacent to Sigayan Bay, which is one of the cleanest bays in the country and is part of the Verde Island Passage, one of the most diverse marine habitats in the world. Their accommodations include rustic casitas facing the 1.3-kilometer white-ish sand shore of Laiya. They also have an alfresco restaurant so you can enjoy local and international dishes outdoors, a spa, and various activities including kayaking, snorkeling, biking, bird watching, and bonfire by the beach.\r\nRate starts at: PHP 7050.00\r\nFree Parking\r\nBar / Lounge\r\nBoating\r\n24-hour Security\r\nSnorkeling\r\nLaundry Service\r\nWiFi\r\nBeach\r\nMassage\r\nChapel / Shrine\r\nRestaurant\r\nUmbrella\r\nWater Sport Equipment Rental\r\nAir Condition\r\nHousekeeping\r\nSeating Area\r\nBath / Shower\r\nBottled Water\r\nPrivate Beach\r\nSafe\r\nCoffee / Tea Maker\r\nClothes Rack\r\nComplimentary Toiletries\r\nOcean View\r\nNon smoking Rooms'),
(6, 'Palm Beach Resort', 'Laiya, San Juan, Batangas, Philippines', 'Palm Beach is your private sanctuary. This exclusive resort located in Laiya, Batangas is a tranquil retreat for anyone looking to unwind and gain peace of mind.\r\n\r\nYou can find what best suits your needs from our wide range of accommodations and facilities. Couples ignite their romance with our special candlelight dinners. Families grow closer to each other as they glide down our waterslide and move from one infinity pool to another. Companies strengthen their work relationships with our obstacle course and various team-building activities.\r\n\r\nGuests also choose our beachfront resort to make their celebrations more memorable. We have the ideal venue for weddings, birthdays, reunions, and other special occasions.\r\n\r\nRediscover paradise at Palm Beach Resort!', 8900, 'https://www.facebook.com/PalmBeachResortLaiya', 'https://www.instagram.com/palmbeachlaiya/', 'https://www.palmbeachlaiya.com/', 'palmbeachlaiya@gmail.com', '', '(+63) 919 994 5781', '(+63) 917 884 4425', 'https://goo.gl/maps/mYgJgvssgZFTqNs7A', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13040.377547080374!2d121.36124104257!3d13.66217594676448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd24112dabe13f%3A0x1d4eae108a7d00c9!2sPalm%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1680946453922!5m2!1sen!2sph', '<li>Free parking</li>\r\n<li>Beach</li>\r\n<li>Pool with view</li>\r\n<li>Breakfast buffet</li>\r\n<li>Horseback riding</li>\r\n<li>Waterslide</li>\r\n<li>Children Activities</li>\r\n<li>Highchairs available</li>\r\n<li>Meeting rooms</li>\r\n<li>Massage</li>\r\n<li>Concierge</li>\r\n<li>Shops</li>\r\n<li>Sun umbrellas</li>\r\n<li>Infirmary</li>\r\n<li>24-hour front desk</li>\r\n<li>Wi-Fi</li>\r\n<li>Badminton</li>\r\n<li>Restaurant</li>\r\n<li>Infinity pool</li>\r\n<li>Outdoor dining area</li>\r\n<li>Snorkeling</li>\r\n<li>Billiards</li>\r\n<li>Board games / puzzles</li>\r\n<li>Kids pool</li>\r\n<li>Conference facilities</li>\r\n<li>24-hour security</li>\r\n<li>Sun loungers / beach chairs</li>\r\n', '<li>Air condition</li>\r\n<li>Housekeeping</li>\r\n<li>Refrigerator</li>\r\n<li>Bath / shower</li>\r\n<li>Safe</li>\r\n<li>Clothes rack</li>\r\n<li>Private beach</li>\r\n<li>Private balcony</li>\r\n<li>Flat screen TV</li>\r\n<li>Bottled water</li>\r\n<li>Hair dryer</li>\r\n<li>Complimentary toiletries</li>', '<li>Ocean view</li>\r\n<li>Non-smoking rooms</li>\r\n<li>Family rooms</li>\r\n<li>Pool view</li>\r\n<li>Suites</li>\r\n', 'Palm/palm_beach.jpg', 'Palm/palm_beach2.jpg', 'Palm/palm_beach3.jpg', 'Palm/palm_beach4.jpg', 'Palm/palm_beach5.jpg', 727, 'Palm Beach Resort\r\nLaiya, San Juan, Batangas, Philippines\r\nPalm Beach is your private sanctuary. This exclusive resort located in Laiya, Batangas is a tranquil retreat for anyone looking to unwind and gain peace of mind. You can find what best suits your needs from our wide range of accommodations and facilities. Couples ignite their romance with our special candlelight dinners. Families grow closer to each other as they glide down our waterslide and move from one infinity pool to another. Companies strengthen their work relationships with our obstacle course and various team-building activities. Guests also choose our beachfront resort to make their celebrations more memorable. We have the ideal venue for weddings, birthdays, reunions, and other special occasions. Rediscover paradise at Palm Beach Resort!\r\nRate starts at: PHP 8900.00\r\nFree parking\r\nBeach\r\nPool with view\r\nBreakfast buffet\r\nHorseback riding\r\nWaterslide\r\nChildren Activities\r\nHighchairs available\r\nMeeting rooms\r\nMassage\r\nConcierge\r\nShops\r\nSun umbrellas\r\nInfirmary\r\n24-hour front desk\r\nWi-Fi\r\nBadminton\r\nRestaurant\r\nInfinity pool\r\nOutdoor dining area\r\nSnorkeling\r\nBilliards\r\nBoard games / puzzles\r\nKids pool\r\nConference facilities\r\n24-hour security\r\nSun loungers / beach chairs\r\nAir condition\r\nHousekeeping\r\nRefrigerator\r\nBath / shower\r\nSafe\r\nClothes rack\r\nPrivate beach\r\nPrivate balcony\r\nFlat screen TV\r\nBottled water\r\nHair dryer\r\nComplimentary toiletries\r\nOcean view\r\nNon-smoking rooms\r\nFamily rooms\r\nPool view\r\nSuites'),
(7, 'Cala Laiya', 'Laiya Ibabao, San Juan, Batangas City Philippines, 4226', 'Cala Laiya is a Staycation and can accommodate guests of all ages, except those with comorbidities.\r\n\r\nWhen in Cala Laiya, we greet all our guests with a sincere smile, a subtle nod, coupled with clasped hands.  This courteous greeting is not just done as a welcome to every guest arriving at the resort; it is done each time a guest is encountered at any time of day, regardless of the number of encounters.\r\n\r\nThe nod – almost a half bow – acknowledges one’s presence.  Contact is minimal yet significant, polite, subtle, and respectful. The clasped hands – with one palm placed on top of the other – are symbolic of providing comfort and security.  It is the Cala Laiya way of expressing our willingness to extend assistance and tireless service.Cala Laiya takes health and safety seriously by strictly complying with the safety protocols mandated by the government, and taking extra measures to keep guests and staff from harm’s way regardless of cost. Below are safety protocols and travel requirements to be strictly complied with by every guest.  Violations of said requirements shall be addressed accordingly.', 6500, 'https://www.facebook.com/calalaiya', 'https://www.instagram.com/calalaiya/', 'https://calalaiya.com/', 'reservations@calalaiya.ph', '', '(+63) 919-0709900', '(+63) 919-0709900', 'https://goo.gl/maps/gUwFEMVmx8u6xitU7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1938.4611253393718!2d121.41460889854864!3d13.6624914680665!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd25c7726960c1%3A0x8c89896b7f757f68!2sCala%20Laiya!5e0!3m2!1sen!2sph!4v1680950866640!5m2!1sen!2sph', '<li>Free parking</li>\r\n<li>Pool with view</li>\r\n<li>Beach</li>\r\n<li>Children\'s playground</li>\r\n<li>Swimming pool toys</li>\r\n<li>Kids\' meals</li>\r\n<li>Wine / champagne</li>\r\n<li>Hiking</li>\r\n<li>Board games / puzzles</li>\r\n<li>Highchairs available</li>\r\n<li>Full body massage</li>\r\n<li>Gift shop</li>\r\n<li>Wi-Fi</li>\r\n<li>Bar / lounge</li>\r\n<li>Badminton</li>\r\n<li>Restaurant</li>\r\n<li>Outdoor dining area</li>\r\n<li>Boating</li>\r\n<li>Snorkeling</li>\r\n<li>Pets Allowed </li>\r\n<li>24-hour security</li>\r\n<li>Outdoor furniture</li>\r\n<li>Sun umbrellas</li>', '<li>Blackout curtains</li>\r\n<li>Dining area</li>\r\n<li>Safe</li>\r\n<li>Cable / satellite TV</li>\r\n<li>Bottled water</li>\r\n<li>Private bathrooms</li>\r\n<li>Electric kettle</li>\r\n<li>Bath / shower</li>\r\n<li>Hair dryer</li>\r\n<li>Air condition</li>\r\n<li>Housekeeping</li>\r\n<li>Coffee / tea maker</li>\r\n<li>Bidet</li>\r\n<li>Clothes rack</li>\r\n<li>Refrigerator</li>\r\n<li>Flat screen TV</li>\r\n<li>Complimentary toiletries</li>', '<li>Non-smoking rooms</li>', 'Cala/cala.jpg', 'Cala/cala2.jpg', 'Cala/cala3.jpg', 'Cala/cala4.jpg', 'Cala/cala5.jpg', 567, 'Cala Laiya\r\nLaiya Ibabao, San Juan, Batangas City Philippines, 4226\r\nCala Laiya is a Staycation and can accommodate guests of all ages, except those with comorbidities. When in Cala Laiya, we greet all our guests with a sincere smile, a subtle nod, coupled with clasped hands. This courteous greeting is not just done as a welcome to every guest arriving at the resort; it is done each time a guest is encountered at any time of day, regardless of the number of encounters. The nod – almost a half bow – acknowledges one’s presence. Contact is minimal yet significant, polite, subtle, and respectful. The clasped hands – with one palm placed on top of the other – are symbolic of providing comfort and security. It is the Cala Laiya way of expressing our willingness to extend assistance and tireless service.Cala Laiya takes health and safety seriously by strictly complying with the safety protocols mandated by the government, and taking extra measures to keep guests and staff from harm’s way regardless of cost. Below are safety protocols and travel requirements to be strictly complied with by every guest. Violations of said requirements shall be addressed accordingly.\r\nRate starts at: PHP 6500.00\r\nFree parking\r\nPool with view\r\nBeach\r\nChildren\'s playground\r\nSwimming pool toys\r\nKids\' meals\r\nWine / champagne\r\nHiking\r\nBoard games / puzzles\r\nHighchairs available\r\nFull body massage\r\nGift shop\r\nWi-Fi\r\nBar / lounge\r\nBadminton\r\nRestaurant\r\nOutdoor dining area\r\nBoating\r\nSnorkeling\r\nPets Allowed\r\n24-hour security\r\nOutdoor furniture\r\nSun umbrellas\r\nBlackout curtains\r\nDining area\r\nSafe\r\nCable / satellite TV\r\nBottled water\r\nPrivate bathrooms\r\nElectric kettle\r\nBath / shower\r\nHair dryer\r\nAir condition\r\nHousekeeping\r\nCoffee / tea maker\r\nBidet\r\nClothes rack\r\nRefrigerator\r\nFlat screen TV\r\nComplimentary toiletries\r\nNon-smoking rooms\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attractions`
--
ALTER TABLE `attractions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gastronomic_exp`
--
ALTER TABLE `gastronomic_exp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
