-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 20, 2023 at 11:51 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miniwordpressproj`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(1, 'News'),
(2, 'Entertainment'),
(3, 'Science'),
(4, 'Lifestyles'),
(5, 'Gaming'),
(6, 'Miscellaneous'),
(7, 'Technologies'),
(8, 'Fashion');

-- --------------------------------------------------------

--
-- Table structure for table `pinnedposts`
--

DROP TABLE IF EXISTS `pinnedposts`;
CREATE TABLE IF NOT EXISTS `pinnedposts` (
  `pinned_id` int NOT NULL AUTO_INCREMENT,
  `sponsor_id` int NOT NULL,
  `pinned_img` varchar(255) NOT NULL,
  `issponsored` tinyint NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`pinned_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pinnedposts`
--

INSERT INTO `pinnedposts` (`pinned_id`, `sponsor_id`, `pinned_img`, `issponsored`, `link`) VALUES
(1, 1, 'Pchumbencropped.jpg', 1, 'https://www.beltei.edu.kh/biue/'),
(2, 2, 'watch1.jpg', 1, 'https://watchempire.com.kh/');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
CREATE TABLE IF NOT EXISTS `sponsor` (
  `sponsor_id` tinyint NOT NULL AUTO_INCREMENT,
  `sponsor_name` varchar(50) NOT NULL,
  `sponsor_pfp` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sponsor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`sponsor_id`, `sponsor_name`, `sponsor_pfp`) VALUES
(1, 'BELTEI International School', 'beltei.png'),
(2, 'Empire Watch', 'watchemp.png');

-- --------------------------------------------------------

--
-- Table structure for table `userpass`
--

DROP TABLE IF EXISTS `userpass`;
CREATE TABLE IF NOT EXISTS `userpass` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_pfp` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_role` varchar(50) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `token` varchar(12) DEFAULT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `preferred_theme` tinyint DEFAULT '1',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `userpass`
--

INSERT INTO `userpass` (`user_id`, `user_pfp`, `user_name`, `user_email`, `user_password`, `user_role`, `verified`, `token`, `user_status`, `preferred_theme`) VALUES
(1, 'images/visal.jpg', 'Visal', 'sokvisal02@gmail.com', '71c7e6e77e98030729f1ee66b886dd329f606b880cb28055b43bb1ae40eb7867', 'Admin', 1, '3KJP58', 1, 1),
(2, NULL, 'NhomaSal', 'nhomasal168@gmail.com', '71c7e6e77e98030729f1ee66b886dd329f606b880cb28055b43bb1ae40eb7867', 'Guest', 0, NULL, 1, 3),
(3, NULL, 'Nick', 'sokvisal168@gmail.com', '71c7e6e77e98030729f1ee66b886dd329f606b880cb28055b43bb1ae40eb7867', 'Guest', 1, 'EXN76G', 1, 1),
(16, NULL, 'v123', 'v123@gmail.com', '7317c4571c048bc6972a70ca4b4f4cc1151590fb5fc7a11f3cb31b6b33b46a54', 'Guest', 1, 'BXAHP4', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userspost`
--

DROP TABLE IF EXISTS `userspost`;
CREATE TABLE IF NOT EXISTS `userspost` (
  `user_id` int NOT NULL,
  `post_id` int NOT NULL AUTO_INCREMENT,
  `post_content` varchar(550) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `post_date` timestamp NULL DEFAULT NULL,
  `post_category` varchar(50) DEFAULT NULL,
  `post_pinned` int NOT NULL,
  `post_engagements` int NOT NULL,
  `ishidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `userspost`
--

INSERT INTO `userspost` (`user_id`, `post_id`, `post_content`, `post_date`, `post_category`, `post_pinned`, `post_engagements`, `ishidden`) VALUES
(1, 1, 'Pregnancy can do weird things to the body. For some bats, it can hamper their ability to “see” the world around them.\n\nKuhl’s pipistrelle bats (Pipistrellus kuhlii) echolocate less frequently while pregnant, researchers report March 28 in BMC Biology. The change may make it harder for the tiny bats to detect prey and potential obstacles in the environment.\n\nThe study is among the first to show that pregnancy can shape how nonhuman mammals sense their surroundings, says Yossi Yovel, a neuroecologist at Tel Aviv University in Israel.', '2023-01-01 02:57:03', 'Science', 0, 187, 0),
(1, 2, 'CNN\n — \nAfter a wild week full of production changes for the MTV Movie & TV Awards amid the writers’ strike, a motley crew of stars received golden popcorn statuettes on Sunday.\n\nBlockbuster film “Top Gun: Maverick” joined TV shows “Stranger Things,” “The Last of Us,” “The White Lotus” and “Wednesday” with the most nominations among the scripted content. Leading the nominations in the unscripted categories were shows such as “Jersey Shore Family Vacation,” “RuPaul’s Drag Race,” “The Real Housewives of Bev', '2023-01-01 00:38:14', 'Entertainment', 0, 232, 0),
(1, 3, 'CNN\n — \nA cargo train loaded with tanks chugs along under the crisp, spring sun. “Wow,” a woman says, pointing her camera phone at the convoy. “This is the second train, there was one like it just before.”\n\nThe video, seemingly filmed in late March, shows old Soviet tanks being transported, somewhere in Russia. Moscow has been known to bring out older military equipment from storage to help it prosecute the war in Ukraine, but these are different.\n', '2023-01-01 07:25:30', 'News', 0, 542, 0),
(2, 4, 'Astronomers used NASA’s James Webb Space Telescope to image the warm dust around a nearby young star, Fomalhaut, in order to study the first asteroid belt ever seen outside of our solar system in infrared light. But to their surprise, the dusty structures are much more complex than the asteroid and Kuiper dust belts of our solar system. Overall, there are three nested belts extending out to 14 billion miles (23 billion kilometers) from the star; that’s 150 times the distance of Earth from the Sun.', '2023-01-01 12:12:24', 'News', 0, 383, 0),
(1, 19, '\"Amazon to Open 100 New Warehouses Across the US, Creating Over 100,000 Jobs\" - In an effort to keep up with the surge in online shopping, Amazon has announced plans to open 100 new warehouses across the United States. The move is expected to create over 100,000 jobs in areas ranging from logistics to customer service. Amazon CEO Jeff Bezos stated that these new facilities will enable the company to better serve its customers and meet the growing demand for fast and reliable delivery.', '2023-05-18 09:27:14', 'News', 0, 543, 0),
(3, 20, '\"New Study Finds Link Between Exercise and Improved Brain Functioning\" - A recent study conducted by researchers at Stanford University has found a link between regular exercise and improved cognitive functioning. The study, which looked at participants aged 50 and older, found that those who engaged in moderate to high levels of physical activity had better memory and attention skills than those who were less active. The findings suggest that exercise could be an effective way to combat age-related declines in brain function.', '2023-05-18 10:42:58', 'Science', 0, 321, 0),
(2, 21, '\"NASA Announces Plans for Mission to Explore Jovian Moons\" - NASA has unveiled plans for a new mission to explore the moons of Jupiter. The mission, called Jovian Moons Explorer, is set to launch in 2025 and will involve sending a spacecraft to orbit three of Jupiter\'s largest moons: Europa, Ganymede, and Callisto. Scientists hope to gather data on the moons\' composition, structure, and potential habitability, as well as search for signs of life.', '2023-05-18 10:43:31', 'Science', 0, 536, 0),
(1, 22, '\"New Study Shows Benefits of Plant-Based Diets for Heart Health\" - A new study published in the Journal of the American College of Cardiology has found that plant-based diets can significantly reduce the risk of heart disease. The study, which followed over 200,000 participants, found that those who followed a mostly plant-based diet had a 32% lower risk of developing heart disease compared to those who consumed more animal products. The findings suggest that incorporating more plant-based foods into one\'s diet could be a simple and effective w', '2023-05-18 10:44:29', 'Lifestyles', 0, 744, 0),
(1, 23, '\"Tesla Unveils New Electric Car Model with Advanced Self-Driving Features\" - Tesla has announced the release of its latest electric car model, the Model X Plus. The new vehicle boasts advanced self-driving features, including a fully autonomous mode that allows passengers to sit back and relax while the car drives itself. The Model X Plus also features longer battery life and faster charging times than previous models, making it a more practical choice for long-distance travel.', '2023-05-18 10:45:03', 'Technologies', 0, 742, 0),
(1, 24, '\"Study Finds Meditation Can Help Reduce Symptoms of Anxiety and Depression\" - Regular meditation practice can help reduce symptoms of anxiety and depression, according to a study by Harvard Medical School. The research suggests that mindfulness meditation may be an effective alternative or complement to traditional forms of therapy. Practicing just a few minutes a day can make a big difference in mental health.', '2023-05-18 10:45:46', 'Lifestyles', 0, 785, 0),
(3, 25, '\"Fashion Industry Embraces Sustainable Materials in Response to Climate Change\" - The fashion industry is starting to embrace more sustainable materials and production methods in response to climate change. Brands are experimenting with new fabrics made from recycled materials or natural fibers like bamboo and hemp. The shift towards sustainability is a step in the right direction for reducing the industry\'s environmental impact.', '2023-05-18 10:47:17', 'Fashion', 0, 967, 0),
(3, 26, '\"Treasure Hunter,\" a mobile game that has taken the app store by storm, challenges players to go on a virtual treasure hunt around the world. With stunning graphics and addictive gameplay, the game has become incredibly popular. Players must solve clues and complete challenges to uncover virtual treasure hidden in locations across the globe. If you\'re looking for a thrilling adventure from the comfort of your own phone, this game is definitely worth checking out', '2023-05-18 10:49:17', 'Gaming', 0, 532, 0),
(2, 27, '\"Celebrity Chef Launches Plant-Based Meal Delivery Service\" - A popular celebrity chef has launched a new meal delivery service that focuses exclusively on plant-based dishes. The service offers weekly meal plans designed to make it easy for customers to eat healthily and sustainably. Whether you\'re a vegan or just looking to incorporate more plant-based meals into your diet, this service is worth trying.', '2023-05-18 10:49:44', 'Lifestyles', 0, 967, 0),
(3, 28, 'A new study published in the journal Physical Review Letters suggests that black holes may not be completely black after all. While black holes absorb everything they encounter, including light, the researchers found that they might emit a small amount of light as well. This is due to quantum effects, which allow particles to escape the gravity of the black hole in the form of radiation. The study also suggests that black holes may not be completely spherical, but rather have a distorted shape. These findings could help scientists better unders', '2023-05-18 17:55:04', 'Science', 0, 1044, 0),
(2, 29, 'A team of scientists has discovered evidence of a previously unknown hominin species in a cave in the Philippines. The new species has been named Homo luzonensis and is believed to have lived on the island of Luzon at least 50,000 years ago. The discovery was made by examining fossils recovered from Callao Cave, including teeth, hand and foot bones, and a thigh bone. The researchers believe that Homo luzonensis was small in stature, with some features resembling those of modern humans and others more similar to those of earlier hominins like Au', '2023-05-18 17:55:37', 'Science', 0, 599, 0),
(1, 30, '\"NASA\'s InSight Lander Detects First \'Marsquake\'\"\r\nNASA\'s InSight lander, which touched down on the surface of Mars in November 2018, has detected the first tremors from the red planet\'s interior. The event, dubbed a \"marsquake,\" was detected on April 6, 2019, and is estimated to have had a magnitude of 2.5. Scientists hope that by studying these seismic waves, they will be able to better understand the planet\'s geology and composition, as well as gain insight into how rocky planets like Earth are formed.', '2023-05-18 17:58:37', 'Science', 0, 772, 1),
(11, 32, 'Hello World', '2023-05-20 04:07:00', 'Lifestyles', 0, 0, 1),
(16, 33, 'Hello World', '2023-05-20 04:27:20', 'News', 0, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
