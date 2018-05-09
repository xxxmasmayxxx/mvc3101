-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2018 at 06:39 AM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mvc1`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `first_name`, `last_name`, `birth_date`) VALUES
(1, 'Jeth', 'Jantot', '1972-05-31'),
(2, 'Norry', 'Engledow', '1978-12-17'),
(3, 'Kalli', 'Lokier', '1967-11-12'),
(4, 'Forster', 'Spensley', '1995-01-16'),
(5, 'Fielding', 'Hestrop', '1984-11-27'),
(6, 'Auroora', 'Spore', '1986-12-20'),
(7, 'Madeline', 'Quince', '1960-03-20'),
(8, 'Bert', 'Exton', '1986-06-13'),
(9, 'Melessa', 'Peirpoint', '1950-06-27'),
(10, 'Daffie', 'Scud', '1961-04-23'),
(11, 'Jennie', 'O''Cannovane', '1961-03-02'),
(12, 'Quintana', 'Fratson', '1968-09-08'),
(13, 'Matthew', 'Darby', '1969-02-27'),
(14, 'Hope', 'Arpino', '1951-10-11'),
(15, 'Gusella', 'Hould', '1991-08-15'),
(16, 'Demetris', 'Punch', '1960-09-15'),
(17, 'Torry', 'Edlestone', '1978-01-08'),
(18, 'Kira', 'Roulston', '1971-05-25'),
(19, 'Jenni', 'Taylorson', '1995-10-19'),
(20, 'Sari', 'Fritz', '1976-06-04'),
(21, 'Chucho', 'Figgs', '1992-07-30'),
(22, 'Aveline', 'Sibille', '1996-05-21'),
(23, 'Olly', 'Gannicleff', '1967-09-02'),
(24, 'Granthem', 'Karpets', '1957-09-20'),
(25, 'Jessamine', 'Downs', '1995-10-25'),
(26, 'Maurice', 'Cornelissen', '1951-04-27'),
(27, 'Babara', 'Pottle', '1990-02-09'),
(28, 'Ameline', 'Baldam', '1983-10-26'),
(29, 'Hinda', 'Amdohr', '1990-11-07'),
(30, 'Milo', 'McNalley', '1969-09-27'),
(31, 'Katlin', 'Augustine', '1955-05-11'),
(32, 'Mose', 'Rowesby', '1998-06-16'),
(33, 'Rochette', 'Calderon', '1971-06-12'),
(34, 'Starr', 'Hawkings', '1971-06-09'),
(35, 'Kip', 'Dripp', '1984-10-12'),
(36, 'Skyler', 'Reveley', '1958-01-07'),
(37, 'Marys', 'Depper', '1970-12-03'),
(38, 'Bruce', 'Cadle', '1967-10-04'),
(39, 'Perle', 'Alderman', '1952-01-21'),
(40, 'Vitoria', 'Westwell', '1963-04-13'),
(41, 'Shirl', 'Baggarley', '1956-10-13'),
(42, 'Trent', 'Seefus', '1987-10-22'),
(43, 'Birk', 'Dennitts', '1982-05-04'),
(44, 'Eleanor', 'Drain', '1988-06-24'),
(45, 'Waldo', 'Clempton', '1961-09-01'),
(46, 'Benn', 'Hammerich', '1966-12-28'),
(47, 'Jory', 'Cotgrave', '1959-04-10'),
(48, 'Geno', 'Mattheissen', '1989-12-07'),
(49, 'Starlene', 'Whewill', '1978-09-11'),
(50, 'Heidi', 'Posen', '1951-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `category_id` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `price`, `description`, `created_at`, `active`, `category_id`) VALUES
(1, 'Distaff Thistle', '814.57', NULL, '2018-03-19 10:25:32', 1, 8),
(2, 'Heterocladium Moss', '4372.42', NULL, '2018-03-15 01:25:19', 1, 2),
(3, 'Alabama Paraparmelia Lichen', '2814.37', 'amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel', '2018-02-11 17:16:13', 1, 4),
(4, 'Night Scented Stock', '7791.76', NULL, '2018-02-06 09:00:57', 1, 7),
(5, 'Marsh Parsley', '4997.12', NULL, '2018-02-06 00:10:38', 0, 10),
(6, 'Cup Lichen', '6117.72', 'bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean', '2018-03-12 11:09:57', 1, 3),
(7, 'Prickleleaf', '264.32', 'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit', '2018-02-17 02:05:24', 1, 1),
(8, 'Chewstick', '3354.70', NULL, '2018-03-01 20:27:57', 1, 5),
(9, 'Hybrid Willow', '8529.82', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst', '2018-01-27 09:44:22', 1, 4),
(10, 'Desert Tobacco', '8450.38', NULL, '2018-02-02 20:50:36', 0, 10),
(11, 'Milolii Kopiwai', '6329.73', 'primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa', '2018-03-18 21:37:47', 1, 10),
(12, 'Shortleaf Dicranum Moss', '7254.70', 'congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', '2018-03-02 08:32:16', 1, 5),
(13, 'Marie Galante Cotton', '2252.81', NULL, '2018-03-07 12:54:40', 1, 3),
(14, 'Rimmed Lichen', '9477.60', NULL, '2018-01-23 00:45:18', 1, 4),
(15, 'Gooseberry Geranium', '6112.20', 'ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar', '2018-02-26 10:44:35', 0, 7),
(16, 'Yellow Willowherb', '2839.29', 'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in', '2018-03-07 05:01:17', 1, 6),
(17, 'Lacy Spleenwort', '3845.95', 'sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus', '2018-02-26 19:08:16', 1, 6),
(18, 'Snow Lichen', '9508.43', NULL, '2018-03-05 05:51:43', 1, 8),
(19, 'Harlequin Monkeyflower', '1245.27', 'mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', '2018-02-20 04:37:55', 1, 4),
(20, 'Fescue', '8289.27', 'sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa', '2018-02-20 14:14:09', 0, 5),
(21, 'Green Bonnet Orchid', '9219.18', 'consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero', '2018-01-24 09:45:04', 1, 9),
(22, 'Hollyleaf Gilia', '1914.34', 'sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus', '2018-02-28 04:04:49', 1, 2),
(23, 'Doum Palm', '9059.60', 'sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non', '2018-03-18 08:33:03', 1, 10),
(24, 'Jones'' Stickseed', '3635.68', NULL, '2018-02-19 06:18:28', 1, 10),
(25, 'Graphina Lichen', '5725.33', NULL, '2018-02-03 08:35:42', 0, 4),
(26, 'Pinkfairies', '8603.93', 'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum', '2018-02-13 10:07:39', 1, 1),
(27, 'Roundhead Rush', '4513.12', 'faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh', '2018-01-23 09:13:26', 1, 7),
(28, 'Dogweed', '3282.02', 'ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum', '2018-02-10 15:36:59', 1, 2),
(29, 'Beach Knotweed', '7043.33', NULL, '2018-02-23 11:38:18', 1, 4),
(30, 'Virginia Buttonweed', '2911.52', 'orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci', '2018-01-29 04:33:10', 0, 9),
(31, 'Winding Mariposa Lily', '3275.66', NULL, '2018-03-17 04:18:17', 1, 3),
(32, 'Pouzolzia', '2283.57', NULL, '2018-02-27 14:51:22', 1, 1),
(33, 'Alpine Hawkweed', '7852.62', 'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque', '2018-01-27 15:20:38', 1, 8),
(34, 'Hansen''s Clover', '923.60', 'platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat', '2018-02-27 21:20:03', 1, 2),
(35, 'Arctic Starflower', '1492.36', 'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum', '2018-02-04 05:03:00', 0, 9),
(36, 'Arctic Daisy', '7887.38', 'vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi', '2018-01-31 19:42:40', 1, 10),
(37, 'Eggyolk Lichen', '1624.70', 'lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit', '2018-02-02 06:15:48', 1, 10),
(38, 'Oceanblue Morning-glory', '1940.39', 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue', '2018-01-28 17:26:26', 1, 8),
(39, 'Wherry''s Catchfly', '6591.94', NULL, '2018-02-10 08:20:32', 1, 9),
(40, 'Floating Spurge', '3961.42', 'in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis', '2018-03-04 07:44:28', 0, 8),
(41, 'Mangrove', '1599.13', 'vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at', '2018-03-11 00:03:44', 1, 2),
(42, 'Eyebright', '312.40', NULL, '2018-01-30 15:17:29', 1, 2),
(43, 'Prostrate Chamomile', '4781.69', 'odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at', '2018-03-01 23:55:53', 1, 3),
(44, 'Nineawn Pappusgrass', '6119.90', 'vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis', '2018-03-01 23:57:43', 1, 7),
(45, 'Flame Beard Lichen', '1786.02', NULL, '2018-01-31 18:00:50', 0, 3),
(46, 'Katsura Tree', '9613.94', 'cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed', '2018-02-04 01:20:57', 1, 6),
(47, 'Glandular Speedwell', '9258.45', 'duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel', '2018-02-27 09:39:56', 1, 3),
(48, 'Veiny Geranium', '2154.49', 'odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor', '2018-02-13 14:06:59', 1, 6),
(49, 'Myriotrema Lichen', '1433.86', 'donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse', '2018-02-09 09:24:15', 1, 6),
(50, 'Green Fly Orchid', '6052.41', 'etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices', '2018-01-28 17:14:02', 0, 2),
(51, 'Skunk Cabbage', '7234.63', NULL, '2018-02-04 19:05:08', 1, 9),
(52, 'Ribbed False Pennyroyal', '1687.70', 'pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', '2018-02-23 10:57:18', 1, 1),
(53, 'Spleenwort', '1478.02', 'sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus', '2018-02-13 18:34:19', 1, 5),
(54, 'New Mexico Fameflower', '9559.97', 'justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae', '2018-01-26 08:51:48', 1, 7),
(55, 'Leucolepis Umbrella Moss', '1516.84', 'placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec', '2018-02-14 08:53:20', 0, 6),
(56, 'Zion False Goldenaster', '724.86', NULL, '2018-02-18 07:47:42', 1, 9),
(57, 'Clubhair Mariposa Lily', '9868.49', 'aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum', '2018-03-02 16:16:44', 1, 5),
(58, 'Lesica''s Draba', '7297.64', 'felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes', '2018-02-03 06:19:52', 1, 7),
(59, 'Florida Sedge', '8672.73', 'dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate', '2018-02-20 11:15:48', 1, 1),
(60, 'Florida Burhead', '9608.36', 'ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing', '2018-03-16 08:50:57', 0, 10),
(61, 'Piedmont Leather-root', '6429.50', 'felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla', '2018-02-22 09:46:59', 1, 8),
(62, 'Pseudoleskea Moss', '4117.35', 'ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar', '2018-02-25 23:54:40', 1, 1),
(63, 'Parish''s Onion', '6344.71', NULL, '2018-03-12 22:06:34', 1, 2),
(64, 'African Jointfir', '2925.51', 'justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla', '2018-03-12 19:26:50', 1, 7),
(65, 'Halecania Lichen', '1094.62', 'varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in', '2018-02-08 04:23:24', 0, 9),
(66, 'Carolina Redroot', '5872.75', 'erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus', '2018-03-01 01:28:18', 1, 3),
(67, 'Northern Wildrice', '1594.24', 'praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit', '2018-02-15 12:17:26', 1, 2),
(68, 'Finger Rush', '4577.53', 'consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus', '2018-02-05 13:28:55', 1, 10),
(69, 'Smooth Arizona Cypress', '9661.14', 'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis', '2018-01-29 17:52:49', 1, 9),
(70, 'Feathered Pink', '3967.66', 'sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio', '2018-02-02 19:24:25', 0, 8),
(71, 'Northern Blue Monkshood', '241.44', 'egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in', '2018-03-10 09:57:10', 1, 8),
(72, 'Jojo', '883.79', 'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy', '2018-01-21 12:57:13', 1, 9),
(73, 'Stonecrop', '1079.10', NULL, '2018-03-17 03:37:08', 1, 4),
(74, 'Fire Pink', '3435.00', 'leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere', '2018-01-28 08:19:04', 1, 8),
(75, 'Pearlflower', '8229.92', 'amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus', '2018-01-30 13:08:28', 0, 10),
(76, 'Rothrock''s Crownbeard', '4354.17', NULL, '2018-02-02 18:17:15', 1, 2),
(77, 'White Fairypoppy', '1361.66', 'congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla', '2018-01-25 14:26:16', 1, 10),
(78, 'Tenangle Pipewort', '8213.20', 'magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante', '2018-01-21 10:45:44', 1, 4),
(79, 'Alakai Swamp Lobelia', '9181.50', 'mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non', '2018-02-08 22:02:52', 1, 5),
(80, 'Needle-bark Stringybark', '5990.93', NULL, '2018-01-26 06:37:34', 0, 9),
(81, 'Cithara Buckwheat', '4074.85', NULL, '2018-02-12 04:37:46', 1, 2),
(82, 'Mountain Snowberry', '3305.97', 'in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate', '2018-02-02 11:05:51', 1, 7),
(83, 'Tailed Kittentails', '2155.92', NULL, '2018-02-12 03:12:09', 1, 7),
(84, 'Streambank Springbeauty', '6840.82', NULL, '2018-03-10 11:01:11', 1, 8),
(85, 'Iowa Rinodina Lichen', '3180.68', 'eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl', '2018-01-31 08:13:54', 0, 4),
(86, 'Pride Of Ohio', '184.88', 'augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', '2018-03-18 21:52:05', 1, 4),
(87, 'Field Chickweed', '7123.67', NULL, '2018-01-29 04:00:58', 1, 10),
(88, 'Cutleaf Waterparsnip', '146.61', 'amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum', '2018-02-15 13:26:17', 1, 5),
(89, 'Humboldt Bay Owl''s-clover', '4556.44', 'molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl', '2018-02-23 19:51:45', 1, 3),
(90, 'Browneyed Susan', '6231.50', 'sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis', '2018-02-25 16:56:12', 0, 5),
(91, 'Largeflower Wild Hollyhock', '3129.64', NULL, '2018-03-04 02:25:28', 1, 1),
(92, 'Oxytenanthera', '2844.11', 'metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus', '2018-02-14 23:31:55', 1, 5),
(93, 'Cyrtandra', '9327.61', NULL, '2018-01-25 04:21:40', 1, 7),
(94, 'Lluvia De Orquideas', '6316.68', NULL, '2018-02-25 01:02:10', 1, 8),
(95, 'Caterpillar Phacelia', '7006.33', NULL, '2018-02-23 14:57:20', 0, 2),
(96, 'Yucatan Camphorweed', '8691.71', NULL, '2018-03-06 01:58:30', 1, 4),
(97, 'Taique', '4308.91', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie', '2018-02-04 05:21:09', 1, 9),
(98, 'Little White Bird''s-foot', '4281.66', NULL, '2018-01-27 07:19:26', 1, 1),
(99, 'Lemmon''s Rockcress', '4437.49', 'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea', '2018-03-15 01:31:04', 1, 7),
(100, 'Mountain Owl''s-clover', '6303.51', 'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in', '2018-02-19 16:12:31', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `book_author`
--

CREATE TABLE IF NOT EXISTS `book_author` (
  `book_id` int(10) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`book_id`,`author_id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_author`
--

INSERT INTO `book_author` (`book_id`, `author_id`) VALUES
(36, 1),
(8, 2),
(19, 2),
(30, 2),
(61, 2),
(62, 2),
(76, 2),
(87, 2),
(97, 3),
(74, 4),
(9, 5),
(35, 6),
(41, 6),
(43, 6),
(51, 6),
(67, 6),
(92, 6),
(9, 7),
(25, 7),
(41, 7),
(42, 7),
(50, 7),
(79, 7),
(16, 8),
(99, 8),
(11, 9),
(88, 9),
(97, 9),
(12, 10),
(14, 11),
(28, 11),
(48, 11),
(65, 11),
(65, 12),
(1, 14),
(100, 14),
(13, 15),
(21, 15),
(42, 15),
(93, 15),
(4, 16),
(7, 17),
(14, 17),
(39, 17),
(49, 17),
(81, 17),
(83, 17),
(99, 17),
(4, 18),
(27, 18),
(29, 18),
(37, 18),
(56, 18),
(74, 18),
(33, 19),
(66, 19),
(72, 19),
(85, 19),
(87, 19),
(59, 21),
(78, 21),
(94, 21),
(43, 22),
(53, 22),
(58, 22),
(73, 22),
(21, 23),
(31, 23),
(59, 23),
(68, 23),
(73, 23),
(57, 24),
(20, 25),
(52, 25),
(63, 25),
(98, 25),
(99, 25),
(6, 26),
(43, 26),
(1, 27),
(8, 27),
(89, 27),
(99, 27),
(29, 28),
(65, 28),
(8, 29),
(16, 29),
(40, 29),
(92, 30),
(86, 33),
(90, 33),
(23, 34),
(54, 34),
(70, 34),
(97, 34),
(13, 35),
(13, 36),
(66, 36),
(95, 36),
(2, 37),
(16, 37),
(52, 37),
(99, 37),
(15, 38),
(22, 38),
(61, 38),
(100, 39),
(47, 40),
(41, 41),
(65, 41),
(10, 42),
(36, 42),
(66, 42),
(72, 44),
(56, 45),
(79, 45),
(12, 46),
(66, 46),
(12, 47),
(13, 47),
(22, 47),
(86, 47),
(96, 47),
(37, 48),
(71, 48),
(83, 48),
(68, 49),
(74, 49),
(5, 50);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` tinyint(3) unsigned DEFAULT NULL,
  `name` char(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`) VALUES
(1, NULL, 'Directional'),
(2, 1, 'Object-based'),
(3, NULL, 'Networked'),
(4, 2, 'user-facing'),
(5, NULL, 'analyzing'),
(6, NULL, 'middleware'),
(7, 9, 'Configurable'),
(8, NULL, 'background'),
(9, NULL, 'Optional'),
(10, NULL, 'Expanded'),
(11, NULL, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `name`, `message`) VALUES
(1, 'sfsdf', 'ssddf@sfsdf', 'sdfsdfsdf');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_author_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
