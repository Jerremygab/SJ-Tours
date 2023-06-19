-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2023 at 06:14 AM
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
  `details` varchar(1000) NOT NULL,
  `fb_link` varchar(300) NOT NULL,
  `ig_link` varchar(50) NOT NULL,
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

INSERT INTO `attractions` (`id`, `place_name`, `location`, `details`, `fb_link`, `ig_link`, `web_link`, `gmail_link1`, `gmail_link2`, `phone_link1`, `phone_link2`, `map_link`, `embedded_map`, `img1`, `img2`, `img3`, `img4`, `img5`, `views`, `search`) VALUES
(1, 'San Juan Nepomuceno Parish', 'P. Burgos St., Poblacion, 4226 San Juan, Batangas', 'The Parish of San Juan Nepomuceno began in 1843 in the old town called Pinagbayanan, the first town of San Juan. The church was mostly made only of bamboos and materials from coconut trees.\r\n\r\nOn August 10, 1855, through the initiative Fr. Damaso Mojica, OAR, a church made of stones was built. Twenty eight years later, floods destroyed the church. In 1894, It was transferred to its present site. It was formally inaugurated in 1894 with Father Celestino Yoldi, OAR as its parish priest. A bell tower was appended to the building between 1928 and 1935.\r\n<br>\r\nSCHEDULE OF MASSES\r\n<br>\r\nWednesday - 6:00 PM\r\n<br>\r\nThursday - 6:00 PM\r\n<br>\r\nFriday - 6:00 PM\r\n<br>\r\nSaturday - 7:00 AM\r\n<br>\r\nSunday - 6:00 AM, 8:00 AM, 10:00 AM, 5:00 PM', 'fb.com/sjnp1843', '', '', 'sanjuannepomuceno2016@yahoo.com', '', ' (+63) 945 843 2021', '', 'https://goo.gl/maps/pUGz6E1X5wJnioAr8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d482.76206728075033!2d121.01010096964436!3d14.536470299727467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c94781dd8f33%3A0xa0023c7ac579f75d!2sSan%20Juan%20Nepomuceno%20Parish!5e0!3m2!1sen!2sph!4v1682175164500!5m2!1sen!2sph', 'Parish/parish.jpg', 'Parish/parish2.jpg', 'Parish/parish3.jpg', 'Parish/parish4.jpg', 'Parish/parish5.jpg', 414, 'San Juan Nepomuceno Parish\r\nP. Burgos St., Poblacion, 4226 San Juan, Batangas\r\nThe Parish of San Juan Nepomuceno began in 1843 in the old town called Pinagbayanan, the first town of San Juan. The church was mostly made only of bamboos and materials from coconut trees.\r\n\r\nOn August 10, 1855, through the initiative Fr. Damaso Mojica, OAR, a church made of stones was built. Twenty eight years later, floods destroyed the church. In 1894, It was transferred to its present site. It was formally inaugurated in 1894 with Father Celestino Yoldi, OAR as its parish priest. A bell tower was appended to the building between 1928 and 1935.\r\n<br>\r\nSCHEDULE OF MASSES\r\n<br>\r\nWednesday - 6:00 PM\r\n<br>\r\nThursday - 6:00 PM\r\n<br>\r\nFriday - 6:00 PM\r\n<br>\r\nSaturday - 7:00 AM\r\n<br>\r\nSunday - 6:00 AM, 8:00 AM, 10:00 AM, 5:00 PM'),
(2, 'Lambayok Festival', 'San Juan, Batangas', 'One of the things we Filipinos can be proud of are the festivals in the country. Each one is celebrated with colorful banderitas, street parades and sumptuous feasts. Recently, I was invited to witness the Lambayok Festival in San Juan, Batangas.\r\n\r\nLambayok Festival celebrates the founding anniversary of the municipality of San Juan. It also pays homage to the three growing industries in the area: lambanog (coconut wine), palayok (clay pot) and karagatan (ocean). The last refers not only to the abundant marine industry but also the beach resorts that San Juan is usually visited for.\r\n\r\nThe theme of 2019’s festival is Saing, Sisid, Barik. It featured a handful of activities, including pottery-making contest, lambanog expo, mural painting contest, cookfest, bartending competition and fun run. A recognition event called Gabi ng Parangal was also held to acknowledge the outstanding San Juanenos who are still active in making lambanog and palayok and in fishing.', 'error-page.php', 'error-page.php', 'error-page.php', 'tourism@sanjuanbatangas.gov.ph', '', '(+63) 961 955 2607', '(+63) 977 156 8826', 'https://goo.gl/maps/waiewV9NyrvKCR8s8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7748.416330672004!2d121.39145481954671!3d13.826535239968468!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd39742ebe485b%3A0x9b995e579c08573c!2sSan%20Juan%20Municipal%20Hall!5e0!3m2!1sen!2sph!4v1682257009369!5m2!1sen!2sph', 'Lambayok/lambayok.jpg', 'Lambayok/lambayok2.jpg', 'Lambayok/lambayok3.jpg', 'Lambayok/lambayok4.jpg', 'Lambayok/lambayok5.jpg', 512, 'Lambayok Festival\r\nOne of the things we Filipinos can be proud of are the festivals in the country. Each one is celebrated with colorful banderitas, street parades and sumptuous feasts. Recently, I was invited to witness the Lambayok Festival in San Juan, Batangas.\r\n\r\nLambayok Festival celebrates the founding anniversary of the municipality of San Juan. It also pays homage to the three growing industries in the area: lambanog (coconut wine), palayok (clay pot) and karagatan (ocean). The last refers not only to the abundant marine industry but also the beach resorts that San Juan is usually visited for.\r\n\r\nThe theme of 2019’s festival is Saing, Sisid, Barik. It featured a handful of activities, including pottery-making contest, lambanog expo, mural painting contest, cookfest, bartending competition and fun run. A recognition event called Gabi ng Parangal was also held to acknowledge the outstanding San Juanenos who are still active in making lambanog and palayok and in fishing.'),
(3, 'Holy Mt. Calvary Station of the Cross', 'Sitio Kalbaryo, Bulsa, San Juan, Batangas', ' NO OTHER season have the Catholic churches been so alive for a longer period of time than during Lent, when most people leave work or whatever preoccupation they have to meditate on their wrongdoings inside their favorite church or churches while doing the Stations of the Cross.\r\nIndeed, no other occasion has captured the attention of Batanguenos into repentance for their sins than the death and resurrection of Jesus Christ.\r\nIn Batangas, where people don\'t whip themselves in public or have themselves crucified, the sacrifice is done through fasting and church visits or the Visita Iglesia.\r\nStations\r\n\r\nThe Batangas City\'s Basilica of the Immaculate Concepcion is also included\r\n in the list of pilgrims\'  Visita Iglesia every Holy Week.\r\nCompleting the 14 Stations of the Cross with prayers said in 14 churches in different towns and cities is like Christ\'s journey to Mt. Calvary.', 'https://www.facebook.com/juanderfulsanjuan', 'error-page.php', 'error-page.php', 'tourism@sanjuanbatangas.gov.ph', '', '(+63) 961 955 2607', '(+63) 977 156 8826', 'https://goo.gl/maps/JifeQ5HuJhskxo2G7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5481.866106508497!2d121.40962270638279!3d13.702411858437081!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd25fafb49fa09%3A0xbe7dabc683da5107!2sBulsa%20Sampaloc%20San%20Juan%20Batangas!5e0!3m2!1sen!2sph!4v1682257904322!5m2!1sen!2sph', 'Calvary/calvary.jpg', 'Calvary/calvary2.jpg', 'Calvary/calvary3.jpg', 'Calvary/calvary4.jpg', 'Calvary/calvary5.jpg', 487, ' Holy Mt. Calvary Station of the Cross\r\nNO OTHER season have the Catholic churches been so alive for a longer period of time than during Lent, when most people leave work or whatever preoccupation they have to meditate on their wrongdoings inside their favorite church or churches while doing the Stations of the Cross.\r\nIndeed, no other occasion has captured the attention of Batanguenos into repentance for their sins than the death and resurrection of Jesus Christ.\r\nIn Batangas, where people don\'t whip themselves in public or have themselves crucified, the sacrifice is done through fasting and church visits or the Visita Iglesia.\r\nStations\r\n\r\nThe Batangas City\'s Basilica of the Immaculate Concepcion is also included\r\n in the list of pilgrims\'  Visita Iglesia every Holy Week.\r\nCompleting the 14 Stations of the Cross with prayers said in 14 churches in different towns and cities is like Christ\'s journey to Mt. Calvary.'),
(4, 'Naambon falls', 'Brgy. Hugom, San Juan, Batangas', '“Naambon”, in the local dialect, means “drizzling”. A closer look at the physical features of the falls reveals why. The water in it drops from a huge boulder covered with a rough surface. It is not hard to imagine that during the rainy season, the surge of water in the falls would flow very fast over the rough boulder and drizzle into the surroundings.\r\n\r\nThe water from the falls collects into a shallow basin at its foot before flowing out into a series of pools, into a stream, and finally, out into the sea. The shallow pools of Naambon Falls make swimming impossible. Yet, the place is not without its charms. A trip to the falls and its serene forest setting is a refreshing twist to an otherwise usual visit to the beach. It can also serve as a rest stop or a side destination for climbers going up Mt. Daguldol in whose foothills it lies.', 'https://www.facebook.com/juanderfulsanjuan', 'error-page.php', 'error-page.php', 'tourism@sanjuanbatangas.gov.ph', '', '(+63) 961 955 2607', '', 'https://goo.gl/maps/Y5sbW6ezMkucP3DV8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d18436.962729845276!2d121.29484880800612!3d13.724868888465405!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd23943283299d%3A0x957e42d9be419828!2sNaambon%20Falls%2C%20Rosario%20Batangas!5e0!3m2!1sen!2sph!4v1682259024262!5m2!1sen!2sph', 'Naambon/naambon.jpg', 'Naambon/naambon2.jpg', 'Naambon/naambon3.jpg', 'Naambon/naambon4.jpg', 'Naambon/naambon5.jpg', 346, 'Naambon Falls Batangas\r\n“Naambon”, in the local dialect, means “drizzling”. A closer look at the physical features of the falls reveals why. The water in it drops from a huge boulder covered with a rough surface. It is not hard to imagine that during the rainy season, the surge of water in the falls would flow very fast over the rough boulder and drizzle into the surroundings.\r\n\r\nThe water from the falls collects into a shallow basin at its foot before flowing out into a series of pools, into a stream, and finally, out into the sea. The shallow pools of Naambon Falls make swimming impossible. Yet, the place is not without its charms. A trip to the falls and its serene forest setting is a refreshing twist to an otherwise usual visit to the beach. It can also serve as a rest stop or a side destination for climbers going up Mt. Daguldol in whose foothills it lies.'),
(5, 'Mt. Daguldol', 'Barangay Hugom, San Juan, Batangas', 'Mt. Daguldol is a coastal mountain located in the province of Batangas. It offers a scenic view of nearby Batangas mountains and beaches. Additionally, Mt. Daguldol has an elevation of 672 MASL or 2204 feet. Mt. Daguldol is exactly situated in Sitio Biga, Barangay, Hugom San Juan, Batangas. It is bound between the municipality of San Juan and Lobo. The Lobo municipality is also a highlands, with Mt. Naguiling being the tallest mountain.\r\n\r\nThe Tagalog word “Daguldol” means a feeling of apprehension and grandiosity. According to locals, the mountain was named as such because it describes the magnificence of the mountain range and the blunt rolling of its slopes. Mt. Daguldol has a total trail length of nine kilometers. \r\n\r\nAlthough Mt. Daguldol is not as popular as the other mountain in Batangas such as Mt. Maculot and Mt. Batulao. However, it’s one of a kind mountain where hikers can be able to experience a diversity of landscapes. Mt. Daguldol has three different trails. First is the ', 'https://www.facebook.com/juanderfulsanjuan', 'error-page.php', 'error-page.php', 'tourism@sanjuanbatangas.gov.ph', '', '(+63) 961 955 2607', '(+63) 977 156 8826', 'https://goo.gl/maps/BYebSW8i9UqwXCTM7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31016.631912764293!2d121.31211863476562!3d13.652958900000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd216077f985ef%3A0xd5d919c53f28724d!2sMount%20Daguldol!5e0!3m2!1sen!2sph!4v1682262199590!5m2!1sen!2sph', 'Daguldol/daguldol.jpg', 'Daguldol/daguldol2.jpg', 'Daguldol/daguldol3.jpg', 'Daguldol/daguldol4.jpg', 'Daguldol/daguldol5.jpg', 366, 'Mt. Daguldol\r\nMt. Daguldol is a coastal mountain located in the province of Batangas. It offers a scenic view of nearby Batangas mountains and beaches. Additionally, Mt. Daguldol has an elevation of 672 MASL or 2204 feet. Mt. Daguldol is exactly situated in Sitio Biga, Barangay, Hugom San Juan, Batangas. It is bound between the municipality of San Juan and Lobo. The Lobo municipality is also a highlands, with Mt. Naguiling being the tallest mountain.\r\n\r\nThe Tagalog word “Daguldol” means a feeling of apprehension and grandiosity. According to locals, the mountain was named as such because it describes the magnificence of the mountain range and the blunt rolling of its slopes. Mt. Daguldol has a total trail length of nine kilometers. \r\n\r\nAlthough Mt. Daguldol is not as popular as the other mountain in Batangas such as Mt. Maculot and Mt. Batulao. However, it’s one of a kind mountain where hikers can be able to experience a diversity of landscapes. Mt. Daguldol has three different trails. First is the trail where one can see the beach or seaside. The second is the trail that passes by woodlands and forests. The third is the grassland trail at the top of the mountain where one can see the mountain ranges and coastal view of Batangas.'),
(6, 'Laiya Adventure Park', 'Laiya Aplaya, San Juan, Batangas', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Commodi placeat qui, maxime labore error consectetur rem accusantium ipsa quisquam, illum excepturi itaque beatae recusandae natus veniam aut voluptate illo porro velit nihil. Praesentium alias tempore, temporibus voluptas delectus sequi. Ex fugiat error nostrum illum saepe tempore beatae blanditiis doloribus dolorem sit esse, est quo modi rerum voluptatum velit, ut eveniet, inventore voluptate libero. Recusandae dolorem sequi voluptas nemo, provident officiis.\r\n', 'https://www.facebook.com/LaiyaAdventurePark', 'http://laiyaadventurepark.net/', 'error-page.php', 'laiyapark@gmail.com', '', '(+63) 977 832 0630', '', 'https://goo.gl/maps/syr6G5izHr7eYWcL8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.6049732404636!2d121.40771231125582!3d13.681767807559554!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd25a91116a0c3%3A0x2d94d355f7b79eb2!2sLaiya%20Adventure%20Park!5e0!3m2!1sen!2sph!4v1682842414302!5m2!1sen!2sph', 'Park/park.jpg', 'Park/park2.jpg', 'Park/park3.jpg', 'Park/park4.jpg', 'Park/park5.jpg', 433, 'Laiya Adventure Park\r\nLaiya Aplaya, Laiya, San Juan, Luzon Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `place_id` int(10) NOT NULL,
  `place_name` varchar(50) NOT NULL,
  `fullname` varchar(70) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` int(12) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `place_id`, `place_name`, `fullname`, `email`, `number`, `message`) VALUES
(14, 5, 'Virgin Beach Resort', 'qwerty', 'dahsd@fasds', 0, 'Hello'),
(16, 4, 'Danaya Bar and Restaurant', 'Niko maralit', 'niko@gmail.com', 0, 'hellooooo goodafternoon'),
(17, 4, 'Danaya Bar and Restaurant', 'keanu', 'keanu@gmail.com', 0, 'pabileeee po'),
(18, 5, 'Ben&#39;s Halo-Halo Ice Cream', 'Niko maralit', 'niko@gmail.com', 0, 'masarap po ba halo halo nyo'),
(19, 5, 'Virgin Beach Resort', 'keanu', 'keanu@gmail.com', 0, 'malinis po ba ang tubig ng dagat'),
(20, 3, 'La Luz Beach Resort', 'Niko maralit', 'niko@gmail.com', 0, 'gano po kadami ang buhangin sa beach nyo'),
(21, 1, 'Acuatico Beach Resort', 'Niko maralit', 'gabrieljerremy1@gmail.com', 0, 'hello world'),
(22, 1, 'Acuatico Beach Resort', 'Niko maralit', 'jerremygab@gmail.com', 0, 'hello world'),
(23, 1, 'Acuatico Beach Resort', 'Niko maralit', 'jerremygab@gmail.com', 0, 'hi hello'),
(24, 1, 'Acuatico Beach Resort', 'Niko maralit', 'jerremygab@gmail.com\r\n', 0, 'hasdjhkjhasd'),
(25, 1, 'Acuatico Beach Resort', 'Niko maralit', 'jerremygab@gmail.com\r\n', 0, 'qwkjehjgajg'),
(26, 1, 'Acuatico Beach Resort', 'asd', 'jerremygab@gmail.com\r\n', 0, 'bobo ka majed'),
(27, 1, 'Acuatico Beach Resort', 'das', 'ashdasd@gasd', 0, 'asdadas'),
(28, 1, 'Acuatico Beach Resort', 'das', 'ashdasd@gasd', 99123, 'asdadas'),
(29, 1, 'Acuatico Beach Resort', 'Jerremy Gabriel Galleto', 'jerremygabriel@gmail.com', 2147483647, '123123123'),
(30, 1, 'Acuatico Beach Resort', 'Jerremy Gabriel Galleto', 'jerremygabriel@gmail.com', 2147483647, '123123123'),
(31, 1, 'Acuatico Beach Resort', 'Jerremy Gabriel Galleto', 'jerremygab@gmail.com\r\n', 2147483647, '123asdasd'),
(32, 1, 'Acuatico Beach Resort', 'Jerremy Gabriel Galleto', 'jerremygab@gmail.com\r\n', 2147483647, '123asdasd'),
(33, 1, 'Acuatico Beach Resort', 'Jerremy Gabriel Galleto', 'jerremygab@gmail.com\r\n', 2147483647, '123asdasd'),
(34, 1, 'Acuatico Beach Resort', 'hello', 'jerremygab@gmail.com\r\n', 123123, 'njjkjhcbnascbjasc'),
(35, 0, 'juanderfulsanjuan', 'Jerremy Gabriel Galleto', 'sanjuantourismwebsite@gmail.com', 2147483647, 'im qweasnzxcu');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `location` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `img1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `description`, `location`, `date`, `img1`) VALUES
(1, 'Summer EnDive!', 'Mag-tatagulan na!?!\r\nNaka-lifevest ka pa din ba?!?\r\n\r\nTakot sa malalim?\r\nNagpa-panic kapag wala ng maaapakan?\r\nHindi pwedeng walang life-vest kapag tour?\r\n\r\nPARA SA\'YO TO!\r\n\r\nBasics of Freediving – 2 Days, 1 Night.\r\n2 Hours Classroom Theory, 2 Open Water Sessions, Underwater Pictures/Videos, 1 Mentor: 4 Students Ratio, FREE GEAR RENTALS!\r\n\r\nAgain, kahit HINDI ka marunong lumangoy, kami ang bahala sa iyo!\r\n\r\nFor experienced freedivers:\r\n\r\nLine Training - 1-2hrs Open Water Dive\r\n\r\nAdd-ons:\r\nAccommodation – The resort is just a few walks away from the road, easily accessible and no need to ride a boat to go there. We have AC rooms with own CR, towels and comfortable beds for the joiner. Check-in as early as 7am and checkout 12nn on the next. The dive-site is just in front of the resort so a lot of time saved for other activities. Great marine life perfect for underwater pictures and videos! Awra pa more!\r\n\r\nFood –\r\nWe serve 4 meals (Day 1 Lunch, Dinner. Day 2 Breakfast, Light Lunch. We also provide FREE MERIENDA after the Day 1 dive! For Vegans, we offer Vegan meals at NO EXTRA CHARGE!!!\r\n\r\nTransportation –\r\nWe offer carpool from NCR to the resort and vice versa. (You just need to bring yourself!)\r\n\r\nAbout Us:\r\n- We manage the largest Freediving Community on Social Media – Freediving Buddies (Community).\r\n72,000 strong and counting! A community in which you can learn and/or share tips and tricks, experiences and safety of the sport.\r\n\r\n- We have a lot of solo-joiners in the past who are now coming back with their batchmates and they are also referring their friends too!\r\n\r\n- You are guaranteed to be in Manila before 5pm on Sunday as we value your time with your family, religious beliefs and we want you to still have time for anything before you start the week the next day (Monday.)\r\n\r\n- We donate dive gears that we no longer need (but can still be used) to people who need it the most (fishermen, tour guides etc) so they can still use these gears to earn a living.\r\n\r\nClasses are held in Mabini, Batangas on weekends.\r\nAll our mentors/coaches are certified Freedivers.\r\n\r\nBasic package starts at P2499.\r\n\r\n\r\nYou may also like the following events from Freediving Buddies PH:\r\n\r\nThis Saturday, 20th May, 11:00 am, MAY Dive II in Batangas\r\nAlso check out other Workshops in Batangas, Sports Events in Batangas, Nonprofit Events in Batangas.', 'Bagalangit, Mabini, Batangas', '2023-05-29', '/summer_endive.jpg'),
(2, 'Summer Art Classes', 'Enjoy summer by learning arts with oils and acrylics. Open for all ages with flexible weekend and weekday schedules.\r\n\r\nReserve a slot by filling up any of the forms:\r\n\r\nDownloadable form: bit.ly/DownloadArtRegForm\r\n• Submit through messenger or email to: studioangeli.cafe@gmail.com\r\n\r\nOnline form:\r\n• Click here bit.ly/ArtWorkshopRegForm\r\n\r\nHard copies are available at Studio Angeli Gallery Café.\r\n• Contact Portia (0917 125 8599) for directions.\r\n\r\n\r\nAlso check out other Workshops in Batangas, Arts Events in Batangas.', 'Hilltop ,Batangas City', '2023-06-03', '/summer_art.jpg'),
(3, 'MAY Dive II', 'Patapos na ang Summer!?!\r\nNaka-lifevest ka pa din ba?!?\r\n\r\nTakot sa malalim?\r\nNagpa-panic kapag wala ng maaapakan?\r\nHindi pwedeng walang life-vest kapag tour?\r\n\r\nPARA SA\'YO TO!\r\n\r\nBasics of Freediving – 2 Days, 1 Night.\r\n2 Hours Classroom Theory, 2 Open Water Sessions, Underwater Pictures/Videos, 1 Mentor: 4 Students Ratio, FREE GEAR RENTALS!\r\n\r\nAgain, kahit HINDI ka marunong lumangoy, kami ang bahala sa iyo!\r\n\r\nFor experienced freedivers:\r\n\r\nLine Training - 1-2hrs Open Water Dive\r\n\r\nAdd-ons:\r\nAccommodation – The resort is just a few walks away from the road, easily accessible and no need to ride a boat to go there. We have AC rooms with own CR, towels and comfortable beds for the joiner. Check-in as early as 7am and checkout 12nn on the next. The dive-site is just in front of the resort so a lot of time saved for other activities. Great marine life perfect for underwater pictures and videos! Awra pa more!\r\n\r\nFood –\r\nWe serve 4 meals (Day 1 Lunch, Dinner. Day 2 Breakfast, Light Lunch. We also provide FREE MERIENDA after the Day 1 dive! For Vegans, we offer Vegan meals at NO EXTRA CHARGE!!!\r\n\r\nTransportation –\r\nWe offer carpool from NCR to the resort and vice versa. (You just need to bring yourself!)\r\n\r\nAbout Us:\r\n- We manage the largest Freediving Community on Social Media – Freediving Buddies (Community).\r\n72,000 strong and counting! A community in which you can learn and/or share tips and tricks, experiences and safety of the sport.\r\n\r\n- We have a lot of solo-joiners in the past who are now coming back with their batchmates and they are also referring their friends too!\r\n\r\n- You are guaranteed to be in Manila before 5pm on Sunday as we value your time with your family, religious beliefs and we want you to still have time for anything before you start the week the next day (Monday.)\r\n\r\n- We donate dive gears that we no longer need (but can still be used) to people who need it the most (fishermen, tour guides etc) so they can still use these gears to earn a living.\r\n\r\nClasses are held in Mabini, Batangas on weekends.\r\nAll our mentors/coaches are certified Freedivers.\r\n\r\nBasic package starts at P2499.\r\n\r\n\r\nYou may also like the following events from Freediving Buddies PH:\r\n\r\nNext Saturday, 27th May, 11:00 am, Summer EnDive! in Batangas\r\nAlso check out other Workshops in Batangas, Sports Events in Batangas, Nonprofit Events in Batangas.', 'Bagalangit, Mabini, Batangas', '2023-05-20', '/may_dive.jpg'),
(4, 'San Juan + Manalo Nuptials', '6pc Band\r\n\r\n\r\nYou may also like the following events from The Pastel Strings:\r\n\r\nNext Friday, 26th May, 01:00 pm, San Pedro + Galvez Nuptials in Malolos\r\nNext month, 6th June, 01:00 pm, Bagunas + Tan Nuptials in Nasugbu\r\nNext month, 7th June, 03:00 pm, Lalu + Lee Nuptials in Pasay\r\nAlso check out other Music Events in Batangas, Entertainment Events in Batangas.', 'Grand Terraza Event Center, Balisong, Taal, Batangas', '2023-06-18', '/Manalo.jpg');

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
(1, 'Cafeno', 'Rizal Street No. 9, Corner General Luna, San Juan, Luzon 4226 Philippines', 'CAFENO MANILA CAFE | KITCHEN | RETAIL established in 2006 is uniquely located in a heritage ancestral house in San Juan, Batangas. We serve premium locally-brewed coffee, creative menu offerings and secret menu desserts. We also offer frozen goods and premium gourmet bottles for take home.', 'Contemporary, Filipino, Cafe', '<li>Breakfast</li>\r\n<li>Brunch</li>\r\n<li>Lunch</li>\r\n<li>Dinner</li>\r\n<li>Drinks</li>', '<li>Takeout</li>\r\n<li>Reservations</li>\r\n<li>Seating</li>\r\n<li>Private Dining</li>\r\n<li>Parking</li>\r\n<li>Digital Payments</li>\r\n<li>Non-smoking restaurants</li>', '<li>Coffee</li>\r\n<li>Small Plates</li>', '7am - 7pm', 112, 'https://www.instagram.com/cafeno.mnl/', 'https://www.facebook.com/cafeno.mnl', 'error-page.php', 'cafeno.cafe@gmail.com', '', 'https://goo.gl/maps/aRki3PJPP3Q5SSc56', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3874.2271669550278!2d121.39215927594232!3d13.825393386574216!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd39a0132344b3%3A0x20ed664c6440940!2zQ2FmZcOxbw!5e0!3m2!1sen!2sph!4v1682070853014!5m2!1sen!2sph', '(+63) 995 412 1355', '', 'Cafeno/cafeno.jpg', 'Cafeno/cafeno2.jpg', 'Cafeno/cafeno3.jpg', 'Cafeno/cafeno4.jpg', 'Cafeno/cafeno5.jpg', 418, 'Cafeno\r\nCAFENO MANILA CAFE | KITCHEN | RETAIL established in 2006 is uniquely located in a heritage ancestral house in San Juan, Batangas. We serve premium locally-brewed coffee, creative menu offerings and secret menu desserts. We also offer frozen goods and premium gourmet bottles for take home.\r\nPRICE RANGE\r\n₱112 - ₱449\r\nCUISINES\r\nContemporary, Filipino, Cafe\r\nMEALS\r\nLunch, Breakfast, Dinner, Brunch, Drinks\r\nFEATURES\r\nTakeout, Reservations, Seating, Private Dining, Parking Available, Street Parking, Digital Payments, Table Service, Family style, Non-smoking restaurants'),
(2, 'La Barrida Pizza Haus', 'Alday St cor Cabuñag St, Candelaria, Philippines, 4323', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Pizza', '<li>Lunch</li>\r\n<li>Dinner</li>', '<li>Dine-in</li>\r\n<li>Curbside pickup</li>\r\n<li>No-contact delivery</li>', '<li>Small Plates</li>', '9am - 9pm', 100, 'error-page.php', 'https://www.facebook.com/LaBarridaPizzaHaus', 'error-page.php', 'lqfranchise@gmail.com', '', 'https://goo.gl/maps/BgApKMG7C2KvfSZ49', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3874.2066317048193!2d121.3930194758884!3d13.826627395555084!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd39744208f38b%3A0x2c13da0fc2508d6c!2sLa%20Barrida%20San%20Juan%20Batangas!5e0!3m2!1sen!2sph!4v1681913306410!5m2!1sen!2sph', '(+63) 963 809 4510', '', 'La_barrida/la_barrida.jpg', 'La_barrida/la_barrida2.jpg', 'La_barrida/la_barrida3.jpg', 'La_barrida/la_barrida4.jpg', 'La_barrida/la_barrida5.jpg', 380, 'La Barrida Pizza Haus\r\nAlday St cor Cabuñag St, Candelaria, Philippines, 4323\r\nsizzling \r\nsisig\r\nmeal\r\nkids\r\nchildren\r\nreservation\r\nrestaurant\r\n'),
(3, 'Nuevo Comedor Parilla & Restaurant', '08 Javier St., San Juan, Philippines , San Juan, Philippines', 'Spanish era house converted into restaurant..Good place for typical Filipino dishes like BBQ, Pinakbet and etc..', 'Filipino', '<li>Brunch</li>\r\n<li>Lunch</li>\r\n<li>Dinner</li>\r\n<li>Dessert</li>\r\n', '<li>Dine-in</li>\r\n<li>Takeout</li>\r\n<li>Reservations</li>\r\n', '<li>Coffee<li>\r\n<li>Small Plates\r\n\r\n<li>', '9am - 9pm', 100, 'error-page.php\r\n', 'https://www.facebook.com/profile.php?id=100069874502192', 'error-page.php', 'nuevocomedor2014@gmail.com', '', 'https://goo.gl/maps/J8yDGVefn9r44zp7A', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d968.5509526665462!2d121.39575920484776!3d13.826796909621574!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd397467cec171%3A0x4b513cf16f995cbc!2sNuevo%20Comedor%20Parilla%20%26%20Restaurant!5e0!3m2!1sen!2sph!4v1682075204579!5m2!1sen!2sph', '(+63) 917 867 7442', '(+63) 946 317 7316', 'Nuevo/nuevo.jpg', 'Nuevo/nuevo2.jpg', 'Nuevo/nuevo3.jpg', 'Nuevo/nuevo4.jpg', 'Nuevo/nuevo5.jpg', 355, 'Nuevo Comedor Parilla & Restaurant\r\nTakeout\r\n\r\nDine-in\r\nAccessibility\r\n\r\nWheelchair accessible entrance\r\n\r\nWheelchair accessible seating\r\nOfferings\r\n\r\nCoffee\r\n\r\nSmall plates\r\nDining options\r\n\r\nBreakfast\r\n\r\nLunch\r\n\r\nDinner\r\n\r\nDessert\r\nAmenities\r\n\r\nGood for kids\r\n\r\nRestroom\r\nAtmosphere\r\n\r\nCasual\r\nCrowd\r\n\r\nGroups\r\nPlanning\r\n\r\nAccepts reservations\r\n'),
(4, 'Danaya Bar and Restaurant', ' Sitio Masunurin, San Juan, 4226 Batangas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Filipino', '<li>Brunch</li>\r\n<li>Lunch</li>\r\n<li>Dinner</li>\r\n<li>Dessert</li>', '<li>No-contact delivery</li>\r\n<li>Delivery</li>\r\n<li>Takeout</li>\r\n<li>Dine-in</li>\r\n<li>Bar onsite</li>\r\n<li>Reservations</li>', '<li>Alcohol</li>\r\n<li>Coffee</li>\r\n<li>Beer</li>\r\n<li>Small plates</li>\r\n<li>Hard liquor</li>', '11:00am - 9:00pm', 90, 'error-page.php', 'https://www.facebook.com/DanayaRestoBar', 'error-page.php', 'dummyemail@dummy.com', '', 'https://goo.gl/maps/qbu1h3kbHarEWavr6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2305.0765933274424!2d121.41418182839324!3d13.67834829706902!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd2596d6d21775%3A0x8ba01770a5f4d691!2sDanaya%20Bar%20and%20Restaurant!5e0!3m2!1sen!2sph!4v1682076103919!5m2!1sen!2sph', '(+63) 919 825 5445', '', 'Danaya/danaya.jpg', 'Danaya/danaya2.jpg', 'Danaya/danaya3.jpg', 'Danaya/danaya4.jpg', 'Danaya/danaya5.jpg', 369, 'Service options\r\n\r\nNo-contact delivery\r\nDanaya Bar and Restaurant\r\nDelivery\r\n Sitio Masunurin, San Juan, 4226 Batangas\r\nTakeout\r\n\r\nDine-in\r\nOfferings\r\n\r\nAlcohol\r\n\r\nBeer\r\n\r\nCoffee\r\n\r\nHard liquor\r\n\r\nSmall plates\r\nDining options\r\n\r\nBrunch\r\n\r\nLunch\r\n\r\nDinner\r\n\r\nDessert\r\nAmenities\r\n\r\nBar onsite\r\n\r\nGood for kids\r\n\r\nRestroom\r\nAtmosphere\r\n\r\nCasual\r\nCrowd\r\n\r\nGroups\r\nPlanning\r\n\r\nAccepts reservations'),
(5, 'Ben\'s Halo-Halo Ice Cream', 'Phoenix Gas Station, San Juan - Laiya Rd, San Juan, 4226 Batangas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Filipino', '<li>Breakfast</li>\r\n<li>Lunch</li>\r\n<li>Dessert</li>\r\n', '<li>Dine-in</li>\r\n<li>Delivery</li>\r\n<li>Takeout</li>\r\n<li>Reservations</li>', '<li>Kids\' menu</li>\r\n<li>Small plates</li>', '10:00am - 8:00pm', 80, 'error-page.php', 'https://www.facebook.com/Benhalohalo', 'error-page.php', 'pascobenildo@yahoo.com', '', 'https://goo.gl/maps/ihziB6Bio4npRMWo6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10132.21250031352!2d121.40287324244251!3d13.81367334808489!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd3bf737200f1d%3A0x48d03180a02a5d78!2sBen&#39;s%20Halo-Halo%20Ice%20Cream%20%40%20San%20Juan%20Batangas!5e0!3m2!1sen!2sph!4v1682076861204!5m2!1sen!2sph', '(+63) 936 909 3425', '', 'Ben/ben.jpg', 'Ben/ben2.jpg', 'Ben/ben3.jpg', 'Ben/ben4.jpg', 'Ben/ben5.jpg', 400, 'Ben\'s Halo-Halo Ice Cream @ San Juan Batangas\r\nPhoenix Gas Station, San Juan - Laiya Rd, San Juan, 4226 Batangas\r\nService options\r\n\r\nDelivery\r\n\r\nTakeout\r\n\r\nDine-in\r\nAccessibility\r\n\r\nWheelchair accessible entrance\r\n\r\nWheelchair accessible parking lot\r\n\r\nWheelchair accessible seating\r\nOfferings\r\n\r\nKids\' menu\r\n\r\nSmall plates\r\nDining options\r\n\r\nBreakfast\r\n\r\nLunch\r\n\r\nDessert\r\nAmenities\r\n\r\nGood for kids\r\n\r\nRestroom\r\nAtmosphere\r\n\r\nCasual\r\nCrowd\r\n\r\nGroups\r\nPlanning\r\n\r\nAccepts reservations'),
(6, 'Bulalohan sa Pipisik', '\r\nBrgy. Hugom, San Juan, Philippines', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Filipino', '<li>Breakfast</li>\r\n<li>Lunch</li>\r\n<li>Dinner</li>\r\n<li>Dessert</li>\r\n<li>Seating</li>', '<li>Outdoor seating</li>\r\n<li>Takeout</li>\r\n<li>Dinner</li>\r\n<li>Delivery</li>\r\n<li>Dine-in</li>', '<li>Coffee</li>\r\n<li>Small plates</li>', '6:00am - 8:00pm', 100, 'error-page.php', 'https://www.facebook.com/BulalohansaPipisik', 'error-page.php', 'dummyemail@dummy.com', '', 'https://goo.gl/maps/W6HZLxpyLpTYTKadA', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13040.453303139737!2d121.36714753844431!3d13.66080654185377!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd240ff8a17a31%3A0x58129c5902c0f3a6!2sBulalohan%20sa%20Pipisik!5e0!3m2!1sen!2sph!4v1682077737273!5m2!1sen!2sph', ' (+63) 920 602 9121', '', 'Bulalo/bulalo.jpg', 'Bulalo/bulalo2.jpg', 'Bulalo/bulalo3.jpg', 'Bulalo/bulalo4.jpg', 'Bulalo/bulalo5.jpg', 348, 'Bulalohan sa Pipisik\r\nSan Juan - Laiya Rd., San Juan, 4226 Batangas\r\nService options\r\n\r\nOutdoor seating\r\n\r\nDelivery\r\n\r\nTakeout\r\n\r\nDine-in\r\nOfferings\r\n\r\nCoffee\r\n\r\nSmall plates\r\nDining options\r\n\r\nBreakfast\r\n\r\nLunch\r\n\r\nDinner\r\n\r\nDessert\r\n\r\nSeating\r\nAmenities\r\n\r\nGood for kids\r\n\r\nRestroom\r\nAtmosphere\r\n\r\nCasual\r\nCrowd\r\n\r\nGroups');

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
  `details` varchar(1000) NOT NULL,
  `fb_link` varchar(300) NOT NULL,
  `web_link` varchar(300) NOT NULL,
  `ig_link` varchar(100) NOT NULL,
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
-- Dumping data for table `souvenirs`
--

INSERT INTO `souvenirs` (`id`, `place_name`, `location`, `details`, `fb_link`, `web_link`, `ig_link`, `gmail_link1`, `gmail_link2`, `phone_link1`, `phone_link2`, `map_link`, `embedded_map`, `img1`, `img2`, `img3`, `img4`, `img5`, `views`, `search`) VALUES
(1, 'RPL Lambanog', 'Calitcalit, San Juan, Philippines', 'San juan Lambanog is a traditional Philippine distilled spirit made from coconut. With San Juan Lambanog, we have improved production by fermenting on-site which guarantees finer and cleaner spirit that preserves the complexity of a true Lambanog. Lambanog is very much part of the Philippine\'s culture and tradition, a Philippine favorite that is quickly gaining recognition and distinction worldwide. Enjoy San Juan Lambanog neat or on the rocks!', 'https://www.facebook.com/JUANandRPLLambanog.TiaLindasCoconutVinegarPh/', 'quinlanenterprises.com.ph', '', 'quinlan.enterprises@yahoo.com', '', '(215) 722-7200', '0', 'https://goo.gl/maps/PWdLUXyJU14xWWk27', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3252.7230760851944!2d121.17000281721694!3d14.185321790409954!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd6149cbc7301d%3A0x53db5941587aa1e6!2sLAMBANOG!5e0!3m2!1sen!2sph!4v1682307735258!5m2!1sen!2sph', 'Lambanog/lambanog.jpg', 'Lambanog/lambanog2.jpg', 'Lambanog/lambanog3.jpg', 'Lambanog/lambanog4.jpg', 'Lambanog/lambanog5.jpg', 341, 'San juan Lambanog is a traditional Philippine distilled spirit made from coconut. With San Juan Lambanog, we have improved production by fermenting on-site which guarantees finer and cleaner spirit that preserves the complexity of a true Lambanog. Lambanog is very much part of the Philippine\'s culture and tradition, a Philippine favorite that is quickly gaining recognition and distinction worldwide. Enjoy San Juan Lambanog neat or on the rocks!'),
(2, 'Julie&#39;s Pottery and Garden', '336 Palahanan 2nd, San Juan, Batangas', 'Julie specializes in the contemporary and traditional handmade Santa Clara pottery that is etched and crafted with authentic turquoise stones. Julie hand etches her pots with flowers. Her trademark is the turquoise stones she adds to the center of each rosette. Aside from vases and bowls, Julie hand coils small mushrooms and small animals. She signs her pottery: J.A. Gutierrez, SCP. Julie is also related to Tony and Terry Gutierrez (uncle and aunt).', 'https://www.facebook.com/juliaderamon2011', 'error-page.php', 'error-page.php', 'julies.potteryy@gmail.com', 'juliespottrading@gmail.com', '(+63) 908 458 2390', '', 'https://goo.gl/maps/CmcWr6Yc9bgCycmb8', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1937.0887649747453!2d121.3483883!3d13.828376!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd3eb235dbf80f%3A0x17e26dd7d03786e7!2sJulie&#39;s%20Pottery!5e0!3m2!1sen!2sph!4v1682561878304!5m2!1sen!2sph', 'Pottery/pottery.jpg', 'Pottery/pottery2.jpg', 'Pottery/pottery3.jpg', 'Pottery/pottery4.jpg', 'Pottery/pottery5.jpg', 385, 'Julie specializes in the contemporary and traditional handmade Santa Clara pottery that is etched and crafted with authentic turquoise stones. Julie hand etches her pots with flowers. Her trademark is the turquoise stones she adds to the center of each rosette. Aside from vases and bowls, Julie hand coils small mushrooms and small animals. She signs her pottery: J.A. Gutierrez, SCP. Julie is also related to Tony and Terry Gutierrez (uncle and aunt).'),
(3, 'Sonias Pasalubong Center', 'Poblacion Public Market, San Juan, Batangas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'https://www.facebook.com/profile.php?id=100063966010956&mibextid=ZbWKwL', 'error-page.php', '', 'danweb687@gmail.com', '', '(+63) 918 3114 656', '(+63) 945 1464 806', 'https://goo.gl/maps/Bkbb5GmxuRvPFJro6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3874.2470536860865!2d121.39064042608521!3d13.824198245611198!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd39714f1d5641%3A0x92c97876507b3c8c!2sSan%20Juan%20Public%20Market%2C%20San%20Juan%2C%20Batangas!5e0!3m2!1sen!2sph!4v1682561991343!5m2!1sen!2sph', 'Sonias/sonias.jpg', 'Sonias/sonias2.jpg', 'Sonias/sonias3.jpg', 'Sonias/sonias4.jpg', 'Sonias/sonias5.jpg', 321, 'Sonias Pasalubong Center\r\nPoblacion Public Market, San Juan, Batangas'),
(4, 'Juanito\'s Furniture and Souvenir Shop', 'Subukin, San Juan (Batangas)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'https://www.facebook.com/profile.php?id=100057520725182', 'error-page.php', '', 'airyn_16@yahoo.com', '', '(+63) 995 915 5262', '', 'https://goo.gl/maps/48k3miQiaRh7pCXM7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3875.789317459419!2d121.43572570462611!3d13.731201517824596!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd3bfb3d0616eb%3A0x192fcacd1329a81d!2sSubukin%2C%20San%20Juan%2C%20Batangas!5e0!3m2!1sen!2sph!4v1682562857365!5m2!1sen!2sph', 'Juanito/juanito.jpg', 'Juanito/juanito2.jpg', 'Juanito/juanito3.jpg', 'Juanito/juanito4.jpg', 'Juanito/juanito5.jpg', 345, 'Juanito\'s Furniture and Souvenir Shop\r\nsan juan batangas'),
(5, 'FOODGANDA Snack Bar & Gift Shop', 'KMB Food Park & Conm’l Center, San Juan - Laiya Rd, San Juan, Batangas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'https://www.facebook.com/Foodgandashop', 'error-page.php', '', 'foodganda13@gmail.com', '', '(+63) 968 858 8813', '', 'https://goo.gl/maps/havL4JXcrxLUfsWu5', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1937.2144928328216!2d121.39771777118607!3d13.813259898814287!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd39d03002e805%3A0xfc4557e26dbe7799!2sFOODGANDA%20Snack%20Bar%20%26%20Gift%20Shop!5e0!3m2!1sen!2sph!4v1682563206081!5m2!1sen!2sph', 'Food/food.jpg', 'Food/food2.jpg', 'Food/food3.jpg', 'Food/food4.jpg', 'Food/food5.jpg', 478, 'FOODGANDA Snack Bar & Gift Shop\r\nSan juan batangas');

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
(1, 'Acuatico Beach Resort', 'Laiya, San Juan, Batangas, Philippines', 'Need an escape? Acuatico Beach Resort in the Philippines offers you the perfect sanctuary to reset and recharge. Just a few hours’ drive from Manila, Acuatico is the idyllic setting for all your getaway needs. Enjoy swimming in our famous infinity pool and witness its merge with the azure waters of the adjacent seas.', 9800, 'https://www.facebook.com/AcuaticoBeachResort', 'https://www.instagram.com/acuaticobeachresort/', 'https://acuaticoresort.com.ph/', '\r\nreservations@acuaticoresort.com.ph', 'events@acuaticoresort.com.ph', '(+63) 917 706 9136', '(+63) 968 871 4516', 'https://goo.gl/maps/E5gdrWd5AM31XFdU9', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d969.2222647227761!2d121.3757907!3d13.6645093!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd244c3e29e1ad%3A0xa4f9b32c2ccb66f0!2sAcuatico%20Resort%20Manila%20Sales%20and%20Reservations%20Corporate%20Office!5e0!3m2!1sen!2sph!4v1680444229056!5m2!1sen!2sph', '<li>Free Parking</li>\r\n<li>Pool</li>\r\n<li>Beach</li>\r\n<li>Bar / Lounge</li>\r\n<li>Restaurant</li>\r\n<li>Poolside Bar</li>\r\n<li>Banquet Room</li>\r\n<li>Spa</li>\r\n<li>Full Body Massage</li>\r\n<li>Baggage Storage</li>\r\n<li>Newspaper</li>\r\n<li>Shops</li>\r\n<li>ATM on site</li>\r\n<li>Laundry Service</li>\r\n<li>Wi-Fi</li>\r\n<li>Breakfast</li>\r\n<li>Game Room</li>\r\n<li>Kids Pool</li>\r\n<li>Infinity Pool</li>\r\n<li>Coffee Shop</li>\r\n<li>Breakfast Buffet</li>\r\n<li>Swim up Bar</li>\r\n<li>Indoor Play Area for Children</li>', '<li>Air Condition</li>\r\n<li>Private Balcony</li>\r\n<li>Coffee / Tea Maker</li>\r\n<li>Flat screen TV</li>\r\n<li>Telephone</li>\r\n<li>Refrigerator</li>\r\n<li>Complimentary Toiletries</li>\r\n<li>Private Beach</li>\r\n<li>Safe</li>\r\n<li>Minibar</li>\r\n<li>Bidet</li>\r\n<li>Bottled Water</li>\r\n<li>Bath / Shower</li>\r\n<li>Hair Dryer</li>\r\n<li>Beach Towel</li>', '<li>Ocean View</li>\r\n<li>Suites</li>\r\n<li>Non-Smoking Rooms</li>\r\n<li>Family Rooms</li>', 'Acuatico/acuatico.jpg', 'Acuatico/acuatico2.jpg', 'Acuatico/acuatico3.jpg', 'Acuatico/acuatico4.jpg', 'Acuatico/acuatico5.jpg', 777, 'Acuatico Beach Resort\r\nLaiya, San Juan, Batangas, Philippines\r\nNeed an escape? Acuatico Beach Resort in the Philippines offers you the perfect sanctuary to reset and recharge. Just a few hours’ drive from Manila, Acuatico is the idyllic setting for all your getaway needs. Enjoy swimming in our famous infinity pool and witness its merge with the azure waters of the adjacent seas.\r\n9800\r\nFree Parking\r\nPool\r\nBeach\r\nBar / Lounge\r\nRestaurant\r\nPoolside Bar\r\nBanquet Room\r\nSpa\r\nFull Body Massage\r\nBaggage Storage\r\nNewspaper\r\nShops\r\nATM on site\r\nLaundry Service\r\nWi-Fi\r\nBreakfast\r\nGame Room\r\nKids Pool\r\nInfinity Pool\r\nCoffee Shop\r\nBreakfast Buffet\r\nSwim up Bar\r\nIndoor Play Area for Children\r\nAir Condition\r\nPrivate Balcony\r\nCoffee / Tea Maker\r\nFlat screen TV\r\nTelephone\r\nRefrigerator\r\nComplimentary Toiletries\r\nPrivate Beach\r\nSafe\r\nMinibar\r\nBidet\r\nBottled Water\r\nBath / Shower\r\nHair Dryer\r\nBeach Towel\r\nOcean View\r\nSuites\r\nNon-Smoking Rooms\r\nFamily Rooms\r\nwifi'),
(2, 'Acuaverde Beach', 'Laiya, San Juan, Batangas, Philippines', 'Acuaverde Beach Resort is another one of the top beach resorts in Laiya. They are popular among families and company outings, as they own one of the widest beachfronts in Laiya.\r\n\r\nThis resort promises serenity, privacy, and comfort to guests. Each room is fitted with modern amenities and additional comforts such as LC cable TV, well-stocked minibar, and private veranda.\r\n\r\nFacilities include a restaurant that serves local and international dishes (ala carte or buffet style), a spa, a waterpark for water activities, and dedicated areas for other indoor and outdoor activities.\r\n\r\nThey are also pet-friendly, so you can bring your furbabies with you in Laiya!', 7900, 'https://www.facebook.com/AcuaverdeBeachResort', 'https://www.instagram.com/acuaverdebeachresort/', 'https://acuaverderesort.com.ph/', 'reservations@acuaverderesort.com.ph', 'events@acuaverderesort.com.ph', '(+63) 928 854 3805', '(+63) 969 617 5021', 'https://goo.gl/maps/Y94ZQE4szYhKSj9x8', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d969.2222647227761!2d121.3757907!3d13.6645093!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd2f9da389cdbf%3A0x84b1aca0a1d2a37b!2sAcuaverde%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1680445321781!5m2!1sen!2sph', '<li>Free parking</li>\r\n<li>Public Wi-Fi</li>\r\n<li>Free breakfast</li>\r\n<li>Beach</li>\r\n<li>Children\'s playground</li>\r\n<li>Family Activities</li>\r\n<li>Meeting rooms</li>\r\n<li>Spa</li>\r\n<li>Bar / lounge</li>\r\n<li>Restaurant</li>\r\n<li>Breakfast buffet</li>\r\n<li>Massage</li>\r\n<li>Concierge</li>\r\n<li>Gift shop</li>\r\n<li>Non-smoking hotel</li>\r\n<li>Sun loungers / beach chairs</li>', '<li>Air Condition</li>\r\n<li>Mini Bar</li>\r\n<li>Bidet</li>\r\n<li>Complimentary Toiletries</li>\r\n<li>Private Balcony</li>\r\n<li>Flat screen TV</li>\r\n<li>Hair Dryer</li>', '<li>Ocean View</li>\r\n<li>Family Rooms</li>\r\n<li>Non-smoking Rooms</li>', 'Acuaverde/acuaverde.jpg', 'Acuaverde/acuaverde2.jpg', 'Acuaverde/acuaverde3.jpg', 'Acuaverde/acuaverde4.jpg', 'Acuaverde/acuaverde5.jpg', 757, 'Acuaverde Beach Resort and Hotel\r\nLaiya, San Juan, Batangas, Philippines\r\nAcuaverde Beach Resort is another one of the top beach resorts in Laiya. They are popular among families and company outings, as they own one of the widest beachfronts in Laiya. This resort promises serenity, privacy, and comfort to guests. Each room is fitted with modern amenities and additional comforts such as LC cable TV, well-stocked minibar, and private veranda. Facilities include a restaurant that serves local and international dishes (ala carte or buffet style), a spa, a waterpark for water activities, and dedicated areas for other indoor and outdoor activities. They are also pet-friendly, so you can bring your furbabies with you in Laiya!\r\nRate starts at: PHP 7900.00\r\nFree parking\r\nPublic Wi-Fi\r\nFree breakfast\r\nBeach\r\nChildren\'s playground\r\nFamily Activities\r\nMeeting rooms\r\nSpa\r\nBar / lounge\r\nRestaurant\r\nBreakfast buffet\r\nMassage\r\nConcierge\r\nGift shop\r\nNon-smoking hotel\r\nAir Condition\r\nMini Bar\r\nBidet\r\nComplimentary Toiletries\r\nPrivate Balcony\r\nFlat screen TV\r\nHair Dryer\r\nOcean View\r\nFamily Rooms\r\nNon-smoking Rooms\r\nwifi'),
(3, 'La Luz Beach Resort', 'Brgy. Hugom , San Juan, Philippines', 'La Luz Beach Resort started as a private vacation home for a family until it developed into the beloved beach resort that it is known today. Unlike other beach resorts in Laiya that are usually packed with crowds, you can expect peace and tranquility here as it is located at the farthermost end of the shoreline.\r\n\r\nThis beach resort has a beautiful beachfront ideal for swimming and snorkeling, as well as rock formations that serve as perfect backdrop for snap-worthy pictures.\r\n\r\nIt has Filipino-themed rooms with bamboo wood accents. There are rooms good for couples and small groups and also a dormitory for those in a budget or in a large group. Other facilities include a pool and a restaurant and bar.', 8100, 'https://www.facebook.com/laluzbeachresortandspa', 'https://www.instagram.com/laluzbeachresort/', 'laluzbeachresort.com', 'customerservice@laluzbeachresort.com', 'llbr.customerservice@gmail.com', '(+63) 916 370 4017', '(+63) 927 805 3484', 'https://goo.gl/maps/7b8SZxK25wVsH7Qc9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.944962128064!2d121.37187589999999!3d13.661110599999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd3afcd468b6e5%3A0xeea7fc120a879422!2sLa%20Luz%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1680445757875!5m2!1sen!2sph', '<li>Free Parking</li>\r\n<li>Sauna</li>\r\n<li>Beach</li>\r\n<li>Children Activities</li>\r\n<li>Bar / Lounge</li>\r\n<li>Breakfast</li>\r\n<li>Diving</li>\r\n<li>Snorkeling</li>\r\n<li>Massage</li>\r\n<li>Chapel / Shrine</li>\r\n<li>Wi-Fi</li>\r\n<li>Bicycle Rental</li>\r\n<li>Pets Allowed</li>\r\n<li>Restaurant</li>\r\n<li>Boating</li>\r\n<li>Hiking</li>\r\n<li>Water Sports Equipment Rental</li>\r\n<li>24-hour Security</li>\r\n<li>Umbrella</li>\r\n', '<li>Soundproof Rooms</li>\r\n<li>Private Beach</li>\r\n<li>Housekeeping</li>\r\n<li>Bath / Shower</li>\r\n<li>Air Condition</li>\r\n<li>Desk</li>\r\n<li>Interconnected Rooms Available</li>\r\n<li>Complimentary Toiletries</li>', '<li>Ocean View</li>\r\n<li>Family Rooms</li>\r\n<li>Non-Smoking Rooms</li>', 'Laluz/laluz.jpg', 'Laluz/laluz2.jpg', 'Laluz/laluz3.jpg', 'Laluz/laluz4.jpg', 'Laluz/laluz5.jpg', 714, 'La Luz Beach Resort\r\nBrgy. Hugom , San Juan, Philippines\r\nLa Luz Beach Resort started as a private vacation home for a family until it developed into the beloved beach resort that it is known today. Unlike other beach resorts in Laiya that are usually packed with crowds, you can expect peace and tranquility here as it is located at the farthermost end of the shoreline. This beach resort has a beautiful beachfront ideal for swimming and snorkeling, as well as rock formations that serve as perfect backdrop for snap-worthy pictures. It has Filipino-themed rooms with bamboo wood accents. There are rooms good for couples and small groups and also a dormitory for those in a budget or in a large group. Other facilities include a pool and a restaurant and bar.\r\nRate starts at: PHP 8100.00\r\nFree Parking\r\nSauna\r\nBeach\r\nChildren Activities\r\nBar / Lounge\r\nBreakfast\r\nDiving\r\nSnorkeling\r\nMassage\r\nChapel / Shrine\r\nWi-Fi\r\nBicycle Rental\r\nPets Allowed\r\nRestaurant\r\nBoating\r\nHiking\r\nWater Sports Equipment Rental\r\n24-hour Security\r\nUmbrella\r\nSoundproof Rooms\r\nPrivate Beach\r\nHousekeeping\r\nBath / Shower\r\nAir Condition\r\nDesk\r\nInterconnected Rooms Available\r\nComplimentary Toiletries\r\nOcean View\r\nFamily Rooms\r\nNon-Smoking Rooms\r\nwifi'),
(4, 'Sabangan Beach Resort', 'Brgy. Laiya, San Juan, Batangas, Philippines 4226', 'This resort features Filipino-themed rooms with veranda, alfresco lounge area where you can relax while appreciating the ocean view, and a clean beachfront where you can swim or just beach bum. There is also a play area and a small store inside where you can buy necessities.\r\n\r\nAnother good thing about Sabangan Beach Resort is that each booking comes with complimentary breakfast, lunch, and dinner! No need to worry about locating other restaurants or additional expenses.', 7000, 'https://www.facebook.com/mysabangan', 'https://www.instagram.com/mysabangan/', 'https://www.sabangan.com/', 'sabanganbeachresortph@gmail.com', '', '(+63) 927 9149  640', '(+63) 928 667 3997', 'https://goo.gl/maps/GYV3rSDod4qwRHKC7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.8858987427666!2d121.3765246!3d13.6647014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd2f7be5555555%3A0x230b71371e0a318f!2sSabangan%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1680446095534!5m2!1sen!2sph', '<li>Free Parking</li>\r\n<li>Pool</li>\r\n<li>Beach</li>\r\n<li>Children Activities</li>\r\n<li>Adult Pool</li>\r\n<li>Shallow End in Pool</li>\r\n<li>Breakfast Buffet</li>\r\n<li>Massage</li>\r\n<li>Outdoor Furniture</li>\r\n<li>Wi-Fi</li>\r\n<li>Boating</li>\r\n<li>Pets Allowed</li>\r\n<li>Restaurant</li>\r\n<li>Diving</li>\r\n<li>Water Park Offsite</li>\r\n<li>24-hour Security</li>\r\n<li>Convenience Store</li>\r\n<li>Shops</li>\r\n<li>Sun Umbrellas</li>\r\n<li>Concierge</li>\r\n<li>Water Sport Equipment Rentals</li>\r\n<li>Sun Loungers / Beach Chairs</li>', '<li>Air Condition</li>\r\n<li>Private Balcony</li>\r\n<li>Refrigerator</li>\r\n<li>Flat screen TV</li>\r\n<li>Seating Area</li>\r\n<li>Private Bathrooms</li>\r\n<li>Bath / Shower</li>\r\n<li>Dining Area</li>\r\n<li>Safe</li>\r\n<li>Cable / Satellite TV</li>\r\n<li>Bidet</li>\r\n<li>Bottled Water</li>\r\n<li>Tile / Marble Floor</li>\r\n<li>Complimentary Toiletries</li>', '<li>Ocean View</li>\r\n<li>Pool View</li>\r\n<li>Non-Smoking Rooms</li>\r\n<li>Family Rooms</li>', 'Sabangan/sabangan.jpg', 'Sabangan/sabangan2.jpg', 'Sabangan/sabangan3.jpg', 'Sabangan/sabangan4.jpg', 'Sabangan/sabangan5.jpg', 669, 'Sabangan Beach Resort\r\nBrgy. Laiya, San Juan, Batangas, Philippines 4226\r\nThis resort features Filipino-themed rooms with veranda, alfresco lounge area where you can relax while appreciating the ocean view, and a clean beachfront where you can swim or just beach bum. There is also a play area and a small store inside where you can buy necessities. Another good thing about Sabangan Beach Resort is that each booking comes with complimentary breakfast, lunch, and dinner! No need to worry about locating other restaurants or additional expenses.\r\nRate starts at: PHP 7000.00\r\nFree Parking\r\nPool\r\nBeach\r\nChildren Activities\r\nAdult Pool\r\nShallow End in Pool\r\nBreakfast Buffet\r\nMassage\r\nOutdoor Furniture\r\nWi-Fi\r\nBoating\r\nPets Allowed\r\nRestaurant\r\nDiving\r\nWater Park Offsite\r\n24-hour Security\r\nConvenience Store\r\nShops\r\nSun Umbrellas\r\nConcierge\r\nWater Sport Equipment Rentals\r\nSun Loungers / Beach Chairs\r\nAir Condition\r\nPrivate Balcony\r\nRefrigerator\r\nFlat screen TV\r\nSeating Area\r\nPrivate Bathrooms\r\nBath / Shower\r\nDining Area\r\nSafe\r\nCable / Satellite TV\r\nBidet\r\nBottled Water\r\nTile / Marble Floor\r\nComplimentary Toiletries\r\nOcean View\r\nPool View\r\nNon-Smoking Rooms\r\nFamily Rooms\r\nwifi'),
(5, 'Virgin Beach Resort', 'Laiya, San Juan, San Juan, Philippines', 'This beach resort in Laiya aims to offer a tranquil beach experience, “reminiscent of beaches in the old days.” It is situated in a cove adjacent to Sigayan Bay, which is one of the cleanest bays in the country and is part of the Verde Island Passage, one of the most diverse marine habitats in the world.\r\n\r\nTheir accommodations include rustic casitas facing the 1.3-kilometer white-ish sand shore of Laiya.\r\n\r\nThey also have an alfresco restaurant so you can enjoy local and international dishes outdoors, a spa, and various activities including kayaking, snorkeling, biking, bird watching, and bonfire by the beach.', 7050, 'https://www.facebook.com/virginbeachresortlaiya', 'https://www.instagram.com/virginbeachresort/', 'https://virginbeachresort.com/', 'virginbeachresortreservations@gmail.com', '', '(+63) 998 563 8810', '', 'https://goo.gl/maps/Gr1iTKkau8ipa6wv5', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.849423101083!2d121.38084300000001!3d13.6669185!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd2587d26bbb89%3A0x782228f859fef35b!2sVirgin%20Beach%20Resort%20Laiya!5e0!3m2!1sen!2sph!4v1680446179549!5m2!1sen!2sph', '<li>Free Parking</li>\r\n<li>Bar / Lounge</li>\r\n<li>Boating</li>\r\n<li>24-hour Security</li>\r\n<li>Snorkeling</li>\r\n<li>Laundry Service</li>\r\n<li>Wi-Fi</li>\r\n<li>Beach</li>\r\n<li>Massage</li>\r\n<li>Chapel / Shrine</li>\r\n<li>Restaurant</li>\r\n<li>Umbrella</li>\r\n<li>Water Sport Equipment Rental</li>\r\n\r\n', '<li>Air Condition</li>\r\n<li>Housekeeping</li>\r\n<li>Seating Area</li>\r\n<li>Bath / Shower</li>\r\n<li>Bottled Water</li>\r\n<li>Private Beach</li>\r\n<li>Safe</li>\r\n<li>Coffee / Tea Maker</li>\r\n<li>Clothes Rack</li>\r\n<li>Complimentary Toiletries</li>', '<li>Ocean View</li>\r\n<li>Non-smoking Rooms</li>', 'Virgin/virgin.jpg', 'Virgin/virgin2.jpg', 'Virgin/virgin3.jpg', 'Virgin/virgin4.jpg', 'Virgin/virgin5.jpg', 759, 'Virgin Beach Resort\r\nLaiya, San Juan, San Juan, Philippines\r\nThis beach resort in Laiya aims to offer a tranquil beach experience, “reminiscent of beaches in the old days.” It is situated in a cove adjacent to Sigayan Bay, which is one of the cleanest bays in the country and is part of the Verde Island Passage, one of the most diverse marine habitats in the world. Their accommodations include rustic casitas facing the 1.3-kilometer white-ish sand shore of Laiya. They also have an alfresco restaurant so you can enjoy local and international dishes outdoors, a spa, and various activities including kayaking, snorkeling, biking, bird watching, and bonfire by the beach.\r\nRate starts at: PHP 7050.00\r\nFree Parking\r\nBar / Lounge\r\nBoating\r\n24-hour Security\r\nSnorkeling\r\nLaundry Service\r\nWiFi\r\nBeach\r\nMassage\r\nChapel / Shrine\r\nRestaurant\r\nUmbrella\r\nWater Sport Equipment Rental\r\nAir Condition\r\nHousekeeping\r\nSeating Area\r\nBath / Shower\r\nBottled Water\r\nPrivate Beach\r\nSafe\r\nCoffee / Tea Maker\r\nClothes Rack\r\nComplimentary Toiletries\r\nOcean View\r\nNon smoking Rooms'),
(6, 'Palm Beach Resort', 'Laiya, San Juan, Batangas, Philippines', 'Palm Beach is your private sanctuary. This exclusive resort located in Laiya, Batangas is a tranquil retreat for anyone looking to unwind and gain peace of mind.\r\n\r\nYou can find what best suits your needs from our wide range of accommodations and facilities. Couples ignite their romance with our special candlelight dinners. Families grow closer to each other as they glide down our waterslide and move from one infinity pool to another. Companies strengthen their work relationships with our obstacle course and various team-building activities.\r\n\r\nGuests also choose our beachfront resort to make their celebrations more memorable. We have the ideal venue for weddings, birthdays, reunions, and other special occasions.\r\n\r\nRediscover paradise at Palm Beach Resort!', 8900, 'https://www.facebook.com/PalmBeachResortLaiya', 'https://www.instagram.com/palmbeachlaiya/', 'https://www.palmbeachlaiya.com/', 'palmbeachlaiya@gmail.com', '', '(+63) 919 994 5781', '(+63) 917 884 4425', 'https://goo.gl/maps/mYgJgvssgZFTqNs7A', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13040.377547080374!2d121.36124104257!3d13.66217594676448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd24112dabe13f%3A0x1d4eae108a7d00c9!2sPalm%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1680946453922!5m2!1sen!2sph', '<li>Free parking</li>\r\n<li>Beach</li>\r\n<li>Pool with view</li>\r\n<li>Breakfast buffet</li>\r\n<li>Horseback riding</li>\r\n<li>Waterslide</li>\r\n<li>Children Activities</li>\r\n<li>Highchairs available</li>\r\n<li>Meeting rooms</li>\r\n<li>Massage</li>\r\n<li>Concierge</li>\r\n<li>Shops</li>\r\n<li>Sun umbrellas</li>\r\n<li>Infirmary</li>\r\n<li>24-hour front desk</li>\r\n<li>Wi-Fi</li>\r\n<li>Badminton</li>\r\n<li>Restaurant</li>\r\n<li>Infinity pool</li>\r\n<li>Outdoor dining area</li>\r\n<li>Snorkeling</li>\r\n<li>Billiards</li>\r\n<li>Board games / puzzles</li>\r\n<li>Kids pool</li>\r\n<li>Conference facilities</li>\r\n<li>24-hour security</li>\r\n<li>Sun loungers / beach chairs</li>\r\n', '<li>Air condition</li>\r\n<li>Housekeeping</li>\r\n<li>Refrigerator</li>\r\n<li>Bath / shower</li>\r\n<li>Safe</li>\r\n<li>Clothes rack</li>\r\n<li>Private beach</li>\r\n<li>Private balcony</li>\r\n<li>Flat screen TV</li>\r\n<li>Bottled water</li>\r\n<li>Hair dryer</li>\r\n<li>Complimentary toiletries</li>', '<li>Ocean view</li>\r\n<li>Non-smoking rooms</li>\r\n<li>Family rooms</li>\r\n<li>Pool view</li>\r\n<li>Suites</li>\r\n', 'Palm/palm_beach.jpg', 'Palm/palm_beach2.jpg', 'Palm/palm_beach3.jpg', 'Palm/palm_beach4.jpg', 'Palm/palm_beach5.jpg', 728, 'Palm Beach Resort\r\nLaiya, San Juan, Batangas, Philippines\r\nPalm Beach is your private sanctuary. This exclusive resort located in Laiya, Batangas is a tranquil retreat for anyone looking to unwind and gain peace of mind. You can find what best suits your needs from our wide range of accommodations and facilities. Couples ignite their romance with our special candlelight dinners. Families grow closer to each other as they glide down our waterslide and move from one infinity pool to another. Companies strengthen their work relationships with our obstacle course and various team-building activities. Guests also choose our beachfront resort to make their celebrations more memorable. We have the ideal venue for weddings, birthdays, reunions, and other special occasions. Rediscover paradise at Palm Beach Resort!\r\nRate starts at: PHP 8900.00\r\nFree parking\r\nBeach\r\nPool with view\r\nBreakfast buffet\r\nHorseback riding\r\nWaterslide\r\nChildren Activities\r\nHighchairs available\r\nMeeting rooms\r\nMassage\r\nConcierge\r\nShops\r\nSun umbrellas\r\nInfirmary\r\n24-hour front desk\r\nWi-Fi\r\nBadminton\r\nRestaurant\r\nInfinity pool\r\nOutdoor dining area\r\nSnorkeling\r\nBilliards\r\nBoard games / puzzles\r\nKids pool\r\nConference facilities\r\n24-hour security\r\nSun loungers / beach chairs\r\nAir condition\r\nHousekeeping\r\nRefrigerator\r\nBath / shower\r\nSafe\r\nClothes rack\r\nPrivate beach\r\nPrivate balcony\r\nFlat screen TV\r\nBottled water\r\nHair dryer\r\nComplimentary toiletries\r\nOcean view\r\nNon-smoking rooms\r\nFamily rooms\r\nPool view\r\nSuites'),
(7, 'Cala Laiya', 'Laiya Ibabao, San Juan, Batangas City Philippines, 4226', 'Cala Laiya is a Staycation and can accommodate guests of all ages, except those with comorbidities.\r\n\r\nWhen in Cala Laiya, we greet all our guests with a sincere smile, a subtle nod, coupled with clasped hands.  This courteous greeting is not just done as a welcome to every guest arriving at the resort; it is done each time a guest is encountered at any time of day, regardless of the number of encounters.\r\n\r\nThe nod – almost a half bow – acknowledges one’s presence.  Contact is minimal yet significant, polite, subtle, and respectful. The clasped hands – with one palm placed on top of the other – are symbolic of providing comfort and security.  It is the Cala Laiya way of expressing our willingness to extend assistance and tireless service.Cala Laiya takes health and safety seriously by strictly complying with the safety protocols mandated by the government, and taking extra measures to keep guests and staff from harm’s way regardless of cost. Below are safety protocols and travel requirements to be strictly complied with by every guest.  Violations of said requirements shall be addressed accordingly.', 6500, 'https://www.facebook.com/calalaiya', 'https://www.instagram.com/calalaiya/', 'https://calalaiya.com/', 'reservations@calalaiya.ph', '', '(+63) 919-0709900', '(+63) 919-0709900', 'https://goo.gl/maps/gUwFEMVmx8u6xitU7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1938.4611253393718!2d121.41460889854864!3d13.6624914680665!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd25c7726960c1%3A0x8c89896b7f757f68!2sCala%20Laiya!5e0!3m2!1sen!2sph!4v1680950866640!5m2!1sen!2sph', '<li>Free parking</li>\r\n<li>Pool with view</li>\r\n<li>Beach</li>\r\n<li>Children\'s playground</li>\r\n<li>Swimming pool toys</li>\r\n<li>Kids\' meals</li>\r\n<li>Wine / champagne</li>\r\n<li>Hiking</li>\r\n<li>Board games / puzzles</li>\r\n<li>Highchairs available</li>\r\n<li>Full body massage</li>\r\n<li>Gift shop</li>\r\n<li>Wi-Fi</li>\r\n<li>Bar / lounge</li>\r\n<li>Badminton</li>\r\n<li>Restaurant</li>\r\n<li>Outdoor dining area</li>\r\n<li>Boating</li>\r\n<li>Snorkeling</li>\r\n<li>Pets Allowed </li>\r\n<li>24-hour security</li>\r\n<li>Outdoor furniture</li>\r\n<li>Sun umbrellas</li>', '<li>Blackout curtains</li>\r\n<li>Dining area</li>\r\n<li>Safe</li>\r\n<li>Cable / satellite TV</li>\r\n<li>Bottled water</li>\r\n<li>Private bathrooms</li>\r\n<li>Electric kettle</li>\r\n<li>Bath / shower</li>\r\n<li>Hair dryer</li>\r\n<li>Air condition</li>\r\n<li>Housekeeping</li>\r\n<li>Coffee / tea maker</li>\r\n<li>Bidet</li>\r\n<li>Clothes rack</li>\r\n<li>Refrigerator</li>\r\n<li>Flat screen TV</li>\r\n<li>Complimentary toiletries</li>', '<li>Non-smoking rooms</li>', 'Cala/cala.jpg', 'Cala/cala2.jpg', 'Cala/cala3.jpg', 'Cala/cala4.jpg', 'Cala/cala5.jpg', 578, 'Cala Laiya\r\nLaiya Ibabao, San Juan, Batangas City Philippines, 4226\r\nCala Laiya is a Staycation and can accommodate guests of all ages, except those with comorbidities. When in Cala Laiya, we greet all our guests with a sincere smile, a subtle nod, coupled with clasped hands. This courteous greeting is not just done as a welcome to every guest arriving at the resort; it is done each time a guest is encountered at any time of day, regardless of the number of encounters. The nod – almost a half bow – acknowledges one’s presence. Contact is minimal yet significant, polite, subtle, and respectful. The clasped hands – with one palm placed on top of the other – are symbolic of providing comfort and security. It is the Cala Laiya way of expressing our willingness to extend assistance and tireless service.Cala Laiya takes health and safety seriously by strictly complying with the safety protocols mandated by the government, and taking extra measures to keep guests and staff from harm’s way regardless of cost. Below are safety protocols and travel requirements to be strictly complied with by every guest. Violations of said requirements shall be addressed accordingly.\r\nRate starts at: PHP 6500.00\r\nFree parking\r\nPool with view\r\nBeach\r\nChildren\'s playground\r\nSwimming pool toys\r\nKids\' meals\r\nWine / champagne\r\nHiking\r\nBoard games / puzzles\r\nHighchairs available\r\nFull body massage\r\nGift shop\r\nWi-Fi\r\nBar / lounge\r\nBadminton\r\nRestaurant\r\nOutdoor dining area\r\nBoating\r\nSnorkeling\r\nPets Allowed\r\n24-hour security\r\nOutdoor furniture\r\nSun umbrellas\r\nBlackout curtains\r\nDining area\r\nSafe\r\nCable / satellite TV\r\nBottled water\r\nPrivate bathrooms\r\nElectric kettle\r\nBath / shower\r\nHair dryer\r\nAir condition\r\nHousekeeping\r\nCoffee / tea maker\r\nBidet\r\nClothes rack\r\nRefrigerator\r\nFlat screen TV\r\nComplimentary toiletries\r\nNon-smoking rooms\r\n'),
(8, 'Blue Coral Beach Resort', 'Laiya, San Juan, Batangas, Philippines', 'Blue Coral Beach Resort is a popular beach resort in Laiya, Batangas. They are strategically located in the center of Laiya and they offer everything that you need for a tropical vacation.\r\nHere you find spacious rooms and suites equipped with basic amenities, swimming pools including an infinity pool and a warm pool jacuzzi, a restaurant, a poolside bar, an entertainment and sports deck, and a souvenir shop. They also have a koi pond and a treehouse – something that kids will surely love!\r\n\r\nWatersport facilities in this resort include jetski, kayak, snorkeling, banana boat, and speedboat. They also offer sightseeing tours.', 7000, 'https://www.facebook.com/bluecoralbeachresortlaiya', 'https://www.instagram.com/bluecoralofficial/', 'bluecoralbeachresort.wixsite.com/bluecoralbeachresort', 'bluecoralbeachresort@gmail.com', '', '(02) 559 9747', '', 'https://goo.gl/maps/TW7sMCJ1xaP9BodY7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.882812591341!2d121.37431717608368!3d13.664888999297737!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd2f7be547de2d%3A0x630a26f62e849056!2sBlue%20Coral%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1687143027985!5m2!1sen!2sph', '<li>Free Parking</li>\r\n<li>Pool</li>\r\n<li>Beach</li>\r\n<li>Bar / Lounge</li>\r\n<li>Restaurant</li>\r\n<li>Poolside Bar</li>\r\n<li>Banquet Room</li>\r\n<li>Spa</li>\r\n<li>Full Body Massage</li>\r\n<li>Baggage Storage</li>\r\n<li>Newspaper</li>\r\n<li>Shops</li>\r\n<li>ATM on site</li>\r\n<li>Laundry Service</li>\r\n<li>Wi-Fi</li>\r\n<li>Breakfast</li>\r\n<li>Game Room</li>\r\n<li>Kids Pool</li>\r\n<li>Infinity Pool</li>\r\n<li>Coffee Shop</li>\r\n<li>Breakfast Buffet</li>\r\n<li>Swim up Bar</li>\r\n<li>Indoor Play Area for Children</li>', '<li>Air Condition</li>\r\n<li>Private Balcony</li>\r\n<li>Coffee / Tea Maker</li>\r\n<li>Flat screen TV</li>\r\n<li>Telephone</li>\r\n<li>Refrigerator</li>\r\n<li>Complimentary Toiletries</li>\r\n<li>Private Beach</li>\r\n<li>Safe</li>\r\n<li>Minibar</li>\r\n<li>Bidet</li>\r\n<li>Bottled Water</li>\r\n<li>Bath / Shower</li>\r\n<li>Hair Dryer</li>\r\n<li>Beach Towel</li>', '<li>Ocean View</li>\r\n<li>Suites</li>\r\n<li>Non-Smoking Rooms</li>\r\n<li>Family Rooms</li>', 'BlueCoral/bluecoral.jpg', 'BlueCoral/bluecoral2.jpg', 'BlueCoral/bluecoral3.jpg', 'BlueCoral/bluecoral4.jpg', 'BlueCoral/bluecoral5.jpg', 738, 'Blue Coral Beach Resort\r\n7000\r\nLaiya, San Juan, Batangas, Philippines\r\nBlue Coral Beach Resort is a popular beach resort in Laiya, Batangas. They are strategically located in the center of Laiya and they offer everything that you need for a tropical vacation.\r\nHere you find spacious rooms and suites equipped with basic amenities, swimming pools including an infinity pool and a warm pool jacuzzi, a restaurant, a poolside bar, an entertainment and sports deck, and a souvenir shop. They also have a koi pond and a treehouse – something that kids will surely love!\r\n\r\nWatersport facilities in this resort include jetski, kayak, snorkeling, banana boat, and speedboat. They also offer sightseeing tours.\r\n<li>Free Parking</li>\r\n<li>Pool</li>\r\n<li>Beach</li>\r\n<li>Bar / Lounge</li>\r\n<li>Restaurant</li>\r\n<li>Poolside Bar</li>\r\n<li>Banquet Room</li>\r\n<li>Spa</li>\r\n<li>Full Body Massage</li>\r\n<li>Baggage Storage</li>\r\n<li>Newspaper</li>\r\n<li>Shops</li>\r\n<li>ATM on site</li>\r\n<li>Laundry Service</li>\r\n<li>Wi-Fi</li>\r\n<li>Breakfast</li>\r\n<li>Game Room</li>\r\n<li>Kids Pool</li>\r\n<li>Infinity Pool</li>\r\n<li>Coffee Shop</li>\r\n<li>Breakfast Buffet</li>\r\n<li>Swim up Bar</li>\r\n<li>Indoor Play Area for Children</li>\r\n<li>Air Condition</li>\r\n<li>Private Balcony</li>\r\n<li>Coffee / Tea Maker</li>\r\n<li>Flat screen TV</li>\r\n<li>Telephone</li>\r\n<li>Refrigerator</li>\r\n<li>Complimentary Toiletries</li>\r\n<li>Private Beach</li>\r\n<li>Safe</li>\r\n<li>Minibar</li>\r\n<li>Bidet</li>\r\n<li>Bottled Water</li>\r\n<li>Bath / Shower</li>\r\n<li>Hair Dryer</li>\r\n<li>Beach Towel</li>\r\n<li>Ocean View</li>\r\n<li>Suites</li>\r\n<li>Non-Smoking Rooms</li>\r\n<li>Family Rooms</li>'),
(9, 'Buracai De Laiya Hotel & Resort', 'Sitio Biga, Brgy. Hugom, San Juan, Batangas, Philippines', 'Want to experience the ultimate staycation in Laiya? Buracai de Laiya Hotel & Resort is one of the newest resorts in Laiya, offering premium full service so you can enjoy a worry-free beach vacation.\r\n\r\nLocated in a mountainous part of Laiya, guests can book a room with either an ocean or a mountain view. There are also two pools including an infinity pool, a restaurant, and a bar.\r\n\r\nActivities include kayaking, boating, snorkeling, and other watersports such as banana boat, jet ski, speed boat, and flying fish.', 6500, 'https://www.facebook.com/BuracaiDelaiya', 'https://www.instagram.com/buracaidelaiya/?hl=en', 'https://buracaidelaiya.com/', '\r\nburacaidelaiya08@gmail.com', '', '', '', 'https://goo.gl/maps/JkX2YERaPpQdckwV9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.9935594041126!2d121.36001681744385!3d13.658155400000014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd246dace3f1a3%3A0xb2741d011c113034!2sBuracai%20de%20Laiya%20Beach%20Resort%20Med%20Mats%20%26%20Ruth%202019-01-16%2F17!5e0!3m2!1sen!2sph!4v1687144188570!5m2!1sen!2sph', '<li>Free Parking</li>\r\n<li>Pool</li>\r\n<li>Beach</li>\r\n<li>Bar / Lounge</li>\r\n<li>Restaurant</li>\r\n<li>Poolside Bar</li>\r\n<li>Banquet Room</li>\r\n<li>Spa</li>\r\n<li>Full Body Massage</li>\r\n<li>Baggage Storage</li>\r\n<li>Newspaper</li>\r\n<li>Shops</li>\r\n<li>ATM on site</li>\r\n<li>Laundry Service</li>\r\n<li>Wi-Fi</li>\r\n<li>Breakfast</li>\r\n<li>Game Room</li>\r\n<li>Kids Pool</li>\r\n<li>Infinity Pool</li>\r\n<li>Coffee Shop</li>\r\n<li>Breakfast Buffet</li>\r\n<li>Swim up Bar</li>\r\n<li>Indoor Play Area for Children</li>', '<li>Air Condition</li>\r\n<li>Private Balcony</li>\r\n<li>Coffee / Tea Maker</li>\r\n<li>Flat screen TV</li>\r\n<li>Telephone</li>\r\n<li>Refrigerator</li>\r\n<li>Complimentary Toiletries</li>\r\n<li>Private Beach</li>\r\n<li>Safe</li>\r\n<li>Minibar</li>\r\n<li>Bidet</li>\r\n<li>Bottled Water</li>\r\n<li>Bath / Shower</li>\r\n<li>Hair Dryer</li>\r\n<li>Beach Towel</li>', '<li>Ocean View</li>\r\n<li>Suites</li>\r\n<li>Non-Smoking Rooms</li>\r\n<li>Family Rooms</li>', 'Buracai/buracai.jpg', 'Buracai/buracai2.jpg', 'Buracai/buracai3.jpg', 'Buracai/buracai4.jpg', 'Buracai/buracai5.jpg', 654, 'Buracai De Laiya Hotel & Resort\r\nSitio Biga, Brgy. Hugom, San Juan, Batangas, Philippines\r\nWant to experience the ultimate staycation in Laiya? Buracai de Laiya Hotel & Resort is one of the newest resorts in Laiya, offering premium full service so you can enjoy a worry-free beach vacation.\r\n\r\nLocated in a mountainous part of Laiya, guests can book a room with either an ocean or a mountain view. There are also two pools including an infinity pool, a restaurant, and a bar.\r\n\r\nActivities include kayaking, boating, snorkeling, and other watersports such as banana boat, jet ski, speed boat, and flying fish.\r\n6500\r\n<li>Free Parking</li>\r\n<li>Pool</li>\r\n<li>Beach</li>\r\n<li>Bar / Lounge</li>\r\n<li>Restaurant</li>\r\n<li>Poolside Bar</li>\r\n<li>Banquet Room</li>\r\n<li>Spa</li>\r\n<li>Full Body Massage</li>\r\n<li>Baggage Storage</li>\r\n<li>Newspaper</li>\r\n<li>Shops</li>\r\n<li>ATM on site</li>\r\n<li>Laundry Service</li>\r\n<li>Wi-Fi</li>\r\n<li>Breakfast</li>\r\n<li>Game Room</li>\r\n<li>Kids Pool</li>\r\n<li>Infinity Pool</li>\r\n<li>Coffee Shop</li>\r\n<li>Breakfast Buffet</li>\r\n<li>Swim up Bar</li>\r\n<li>Indoor Play Area for Children</li>\r\n<li>Air Condition</li>\r\n<li>Private Balcony</li>\r\n<li>Coffee / Tea Maker</li>\r\n<li>Flat screen TV</li>\r\n<li>Telephone</li>\r\n<li>Refrigerator</li>\r\n<li>Complimentary Toiletries</li>\r\n<li>Private Beach</li>\r\n<li>Safe</li>\r\n<li>Minibar</li>\r\n<li>Bidet</li>\r\n<li>Bottled Water</li>\r\n<li>Bath / Shower</li>\r\n<li>Hair Dryer</li>\r\n<li>Beach Towel</li>\r\n<li>Ocean View</li>\r\n<li>Suites</li>\r\n<li>Non-Smoking Rooms</li>\r\n<li>Family Rooms</li>\r\n'),
(18, 'Laiya White Cove Beach Resort', '112 Baranggay Laiya Aplaya, San Juan, Philippines', 'Enjoy a simple, fuss-free beach vacation in this cozy beach resort in Laiya.\r\n\r\nLaiya White Cove Beach Resort offers several hotel-type rooms complete with airconditioning and basic amenities, spacious outdoors that doubles as a place of relaxation and grounds for group activities, an alfresco restaurant and function area, and sports amenities such as volleyball, chess, and board games.\r\nIt’s also a proud beach-only resort. There is no pool, but you get access to the creamy-sand beach of Laiya, the nearby snorkeling sites, and view of the mountain ranges filled with forests, coconut groves, and wildlife.', 8500, 'https://www.facebook.com/LaiyaWhiteCoveOfficial', 'https://www.instagram.com/laiyawhitecoveofficial/', 'https://www.laiyawhitecovebeachresort.com/?fbclid=IwAR2srxMuEX332vYwSK-D7suVmFDyx7nuM5PPz_UJkXlPw_4WLGWHwAj_Nrs', 'laiyawhitecovemarketing@gmail.com', '', '(+63) 915 654 0203', '', 'https://goo.gl/maps/fbdSY53RVAPvovmv5', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3876.753640147299!2d121.3937373760839!3d13.672738799117093!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd25894ae10b57%3A0x9189d8726b7233a!2sLaiya%20White%20Cove%20Beach%20Resort!5e0!3m2!1sen!2sph!4v1687147664000!5m2!1sen!2sph', '<li>Free parking</li>\r\n<li>Beach</li>\r\n<li>Pool with view</li>\r\n<li>Breakfast buffet</li>\r\n<li>Horseback riding</li>\r\n<li>Waterslide</li>\r\n<li>Children Activities</li>\r\n<li>Highchairs available</li>\r\n<li>Meeting rooms</li>\r\n<li>Massage</li>\r\n<li>Concierge</li>\r\n<li>Shops</li>\r\n<li>Sun umbrellas</li>\r\n<li>Infirmary</li>\r\n<li>24-hour front desk</li>\r\n<li>Wi-Fi</li>\r\n<li>Badminton</li>\r\n<li>Restaurant</li>\r\n<li>Infinity pool</li>\r\n<li>Outdoor dining area</li>\r\n<li>Snorkeling</li>\r\n<li>Billiards</li>\r\n<li>Board games / puzzles</li>\r\n<li>Kids pool</li>\r\n<li>Conference facilities</li>\r\n<li>24-hour security</li>\r\n<li>Sun loungers / beach chairs</li>\r\n', '<li>Air condition</li>\r\n<li>Housekeeping</li>\r\n<li>Refrigerator</li>\r\n<li>Bath / shower</li>\r\n<li>Safe</li>\r\n<li>Clothes rack</li>\r\n<li>Private beach</li>\r\n<li>Private balcony</li>\r\n<li>Flat screen TV</li>\r\n<li>Bottled water</li>\r\n<li>Hair dryer</li>\r\n<li>Complimentary toiletries</li>', '<li>Ocean view</li>\r\n<li>Non-smoking rooms</li>\r\n<li>Family rooms</li>\r\n<li>Pool view</li>\r\n<li>Suites</li>\r\n', 'WhiteCove/white-cove.jpg', 'WhiteCove/white-cove2.jpg', 'WhiteCove/white-cove3.jpg', 'WhiteCove/white-cove4.jpg', 'WhiteCove/white-cove5.jpg', 713, 'Laiya White Cove Beach Resort\r\n112 Baranggay Laiya Aplaya, San Juan, Philippines\r\nEnjoy a simple, fuss-free beach vacation in this cozy beach resort in Laiya.\r\n\r\nLaiya White Cove Beach Resort offers several hotel-type rooms complete with airconditioning and basic amenities, spacious outdoors that doubles as a place of relaxation and grounds for group activities, an alfresco restaurant and function area, and sports amenities such as volleyball, chess, and board games.\r\nIt’s also a proud beach-only resort. There is no pool, but you get access to the creamy-sand beach of Laiya, the nearby snorkeling sites, and view of the mountain ranges filled with forests, coconut groves, and wildlife.\r\n<li>Free parking</li>\r\n<li>Beach</li>\r\n<li>Pool with view</li>\r\n<li>Breakfast buffet</li>\r\n<li>Horseback riding</li>\r\n<li>Waterslide</li>\r\n<li>Children Activities</li>\r\n<li>Highchairs available</li>\r\n<li>Meeting rooms</li>\r\n<li>Massage</li>\r\n<li>Concierge</li>\r\n<li>Shops</li>\r\n<li>Sun umbrellas</li>\r\n<li>Infirmary</li>\r\n<li>24-hour front desk</li>\r\n<li>Wi-Fi</li>\r\n<li>Badminton</li>\r\n<li>Restaurant</li>\r\n<li>Infinity pool</li>\r\n<li>Outdoor dining area</li>\r\n<li>Snorkeling</li>\r\n<li>Billiards</li>\r\n<li>Board games / puzzles</li>\r\n<li>Kids pool</li>\r\n<li>Conference facilities</li>\r\n<li>24-hour security</li>\r\n<li>Sun loungers / beach chairs</li>\r\n<li>Air condition</li>\r\n<li>Housekeeping</li>\r\n<li>Refrigerator</li>\r\n<li>Bath / shower</li>\r\n<li>Safe</li>\r\n<li>Clothes rack</li>\r\n<li>Private beach</li>\r\n<li>Private balcony</li>\r\n<li>Flat screen TV</li>\r\n<li>Bottled water</li>\r\n<li>Hair dryer</li>\r\n<li>Complimentary toiletries</li>\r\n<li>Ocean view</li>\r\n<li>Non-smoking rooms</li>\r\n<li>Family rooms</li>\r\n<li>Pool view</li>\r\n<li>Suites</li>\r\n');

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
-- Indexes for table `events`
--
ALTER TABLE `events`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `weekend_gateaway`
--
ALTER TABLE `weekend_gateaway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
