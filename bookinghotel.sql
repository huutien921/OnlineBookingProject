-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 01, 2019 at 11:26 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookinghotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `address`, `country`, `email`, `phone`, `name`, `status`) VALUES
(1, 'Nguyen Kiem , Phu Nhuan , Tp HCM', 'Viet Nam', 'bookbed@gmail.com', '0947443148', 'BookBed Online', 1);

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `fullname` varchar(250) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  `identitycard` varchar(25) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `fullname`, `birthday`, `email`, `address`, `type`, `gender`, `avatar`, `identitycard`, `score`, `created`, `status`) VALUES
(1, 'admin', '123', 'Admin Admin', '1998-01-01', 'admin@gmail.com', 'Ho Chi Minh', NULL, 'Male', 'admin.PNG', '123456987963', 0, '2019-12-03', 1),
(2, 'superadmin', '123', 'Super Admin', '1998-01-01', 'superadmin@gmail.com', 'Ha Noi', NULL, 'Male', 'superadmin.PNG', '123456987963', 0, NULL, 1),
(3, 'tien_user', '123', 'Nguyen Tien', '1998-01-01', 'huutien921@gmail.com', 'ca mau', NULL, 'Male', 'tien.PNG', '381839139', 0, '2019-12-04', 1),
(4, 'thuan_super', '123', 'Nguyen Thuan', '1998-01-01', 'huutien920@gmail.com', 'Vinh tau', NULL, 'Male', 'thuan.PNG', '381839139', 0, NULL, 1),
(5, 'lam_employee', '123', 'Nguyen Thuan', '1998-01-01', 'huutien920@gmail.com', 'Vinh tau', NULL, 'Male', 'lam.PNG', '381839139', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bed_type`
--

DROP TABLE IF EXISTS `bed_type`;
CREATE TABLE IF NOT EXISTS `bed_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed_type`
--

INSERT INTO `bed_type` (`id`, `name`, `status`) VALUES
(1, 'Don', 1),
(2, 'DOi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `content` text,
  `account_id` int(11) NOT NULL,
  `src` varchar(250) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `content`, `account_id`, `src`, `created`, `status`) VALUES
(1, '8 Best hotel in Dubai that you don\'t miss out', '8 Best hotel in Dubai that you don\'t miss out8 Best hotel in Dubai that you don\'t miss out8 Best hotel in Dubai that you don\'t miss out8 Best hotel in Dubai that you don\'t miss out8 Best hotel in Dubai that you don\'t miss out', 5, 'hotel-6.jpg', '2019-11-30', 1),
(2, 'Share 4 ideal destinations for the winter 2019', 'Share 4 ideal destinations for the winter 2019Share 4 ideal destinations for the winter 2019Share 4 ideal destinations for the winter 2019Share 4 ideal destinations for the winter 2019Share 4 ideal destinations for the winter 2019', 5, 'destination-6.jpg', '2019-11-30', 1),
(3, '5 best restauran in Dubai that you don\'t miss out', '5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out\r\n\r\n5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out\r\n\r\n5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out\r\n\r\n5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out\r\n\r\n\r\n5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out', 5, 'restaurant-1.jpg', '2019-11-30', 1),
(4, 'Share 10 experience of traveling abroad', 'Share 10 experience of traveling abroadShare 10 experience of traveling abroadShare 10 experience of traveling abroadShare 10 experience of traveling abroadShare 10 experience of traveling abroadShare 10 experience of traveling abroadShare 10 experience of traveling abroad', 5, 'image_1.jpg', '2019-11-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coppon_hotel`
--

DROP TABLE IF EXISTS `coppon_hotel`;
CREATE TABLE IF NOT EXISTS `coppon_hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `sale` double DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_id` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coppon_hotel`
--

INSERT INTO `coppon_hotel` (`id`, `name`, `sale`, `status`) VALUES
(1, 'envet 11', 70, 1),
(2, 'sale Manh', 50, 1),
(3, 'sale 20', 20, 1),
(4, 't2222', 25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `coppon_room`
--

DROP TABLE IF EXISTS `coppon_room`;
CREATE TABLE IF NOT EXISTS `coppon_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `sale` double DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_id` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coppon_room`
--

INSERT INTO `coppon_room` (`id`, `name`, `sale`, `status`) VALUES
(109, '66', 6, 1),
(111, 'hhhh', 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
CREATE TABLE IF NOT EXISTS `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailsend` varchar(50) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `content` text,
  `status` tinyint(1) NOT NULL,
  `account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `evaluate`
--

DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE IF NOT EXISTS `evaluate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `number_of_stars` int(11) DEFAULT '3',
  `content` text,
  `created` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `room_id` (`room_id`),
  KEY `hotel_id` (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evaluate`
--

INSERT INTO `evaluate` (`id`, `account_id`, `room_id`, `hotel_id`, `number_of_stars`, `content`, `created`, `status`) VALUES
(1, 3, NULL, 1, 5, 'qua tot luon nne ba con oi ba con ne su dung thu nha , nhan vien nhiet tinh chu dao than thieenj', '2019-11-09', 1),
(2, 3, NULL, 1, 5, 'qua tot', '2019-11-09', 1),
(3, 3, NULL, 1, 5, 'qua tot', '2019-11-09', 1),
(4, 3, NULL, 1, 4, 'hoi tot', '2019-11-09', 1),
(5, 3, NULL, 1, 2, 'nhu shit', '2019-11-09', 1),
(6, 3, NULL, 1, 5, 'qua tot6 qua tot luon nne ba con oi ba con ne su dung thu nha , nhan vien nhiet tinh chu dao than thieenj', '2019-11-09', 1),
(7, 3, NULL, 1, 5, 'qua tot7', '2019-11-09', 1),
(8, 3, NULL, 1, 4, 'qua tot luon nne ba con oi ba con ne su dung thu nha , nhan vien nhiet tinh chu dao than thieenj', '2019-11-09', 1),
(21, 3, NULL, 2, 5, 'qua tot', '2019-11-09', 1),
(22, 3, NULL, 2, 5, 'qua tot', '2019-11-09', 1),
(23, 3, NULL, 2, 5, 'qua tot', '2019-11-09', 1),
(24, 3, NULL, 2, 4, 'hoi tot', '2019-11-09', 1),
(25, 3, NULL, 2, 2, 'nhu shit', '2019-11-09', 1),
(26, 3, NULL, 2, 5, 'qua tot6', '2019-11-09', 1),
(27, 3, NULL, 3, 5, 'qua tot', '2019-11-09', 1),
(28, 3, NULL, 3, 5, 'qua tot', '2019-11-09', 1),
(29, 3, NULL, 3, 5, 'qua tot', '2019-11-09', 1),
(30, 3, NULL, 3, 4, 'hoi tot', '2019-11-09', 1),
(31, 3, NULL, 4, 2, 'nhu shit', '2019-11-09', 1),
(32, 3, NULL, 5, 5, 'qua tot6', '2019-11-09', 1),
(33, 3, NULL, 5, 5, 'qua tot7', '2019-11-09', 1),
(34, 3, NULL, 6, 4, 'hoi tot 8', '2019-11-09', 1),
(35, 3, NULL, 7, 5, 'qua tot', '2019-11-09', 1),
(36, 3, NULL, 8, 5, 'qua tot', '2019-11-09', 1),
(37, 3, NULL, 9, 5, 'qua tot', '2019-11-09', 1),
(38, 3, NULL, 10, 4, 'hoi tot', '2019-11-09', 1),
(39, 3, NULL, 11, 2, 'nhu shit', '2019-11-09', 1),
(40, 3, NULL, 12, 5, 'qua tot6', '2019-11-09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `description` text,
  `address_full` varchar(500) DEFAULT NULL,
  `ward` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `provincial` varchar(50) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `wifi` tinyint(1) DEFAULT NULL,
  `parking` tinyint(1) DEFAULT NULL,
  `spa` tinyint(1) DEFAULT NULL,
  `gym` tinyint(1) DEFAULT NULL,
  `car_rental` tinyint(1) DEFAULT NULL,
  `airport_transfer` tinyint(1) DEFAULT NULL,
  `free_breakfast` tinyint(1) DEFAULT NULL,
  `swimming_pool` tinyint(1) DEFAULT NULL,
  `elevator` tinyint(1) DEFAULT NULL,
  `receptionist` tinyint(1) DEFAULT NULL,
  `air_conditioner` tinyint(1) DEFAULT NULL,
  `free_cancellation` tinyint(1) DEFAULT NULL,
  `pay_at_hotel` tinyint(1) DEFAULT NULL,
  `assembly_facilites` tinyint(1) DEFAULT NULL,
  `driveway` tinyint(1) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `id_ac_employee` int(11) DEFAULT NULL,
  `starrating_id` int(11) NOT NULL,
  `id_coppon_hotel` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `starrating_id` (`starrating_id`),
  KEY `id_coppon_hotel` (`id_coppon_hotel`),
  KEY `id_ac_employee` (`id_ac_employee`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `name`, `image`, `description`, `address_full`, `ward`, `city`, `provincial`, `country`, `wifi`, `parking`, `spa`, `gym`, `car_rental`, `airport_transfer`, `free_breakfast`, `swimming_pool`, `elevator`, `receptionist`, `air_conditioner`, `free_cancellation`, `pay_at_hotel`, `assembly_facilites`, `driveway`, `account_id`, `id_ac_employee`, `starrating_id`, `id_coppon_hotel`, `status`) VALUES
(1, 'Long Phung hoang', '28112019172057about.jpg', '<h1>toi ten</h1><p>Nguyen Huu<u> Tien</u><br></p><h1></h1>', '250 Mau Than, Phuong 12 , Da Lat , Lam Dong', 'Phuong 12', 'Da Lat', 'Lam Dong', 'Viet Nam', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 5, 4, 1),
(2, 'Vin Hotel', 'hotel-2.jpg', 'Phuc vu tan tinh cho khach hang !\nDay du tien nghi, sach se,, lich su chu Phuc vu tan tinh cho khach hang !\nDay du tien nghi, sach se,, lich su chu dao.Phuc vu tan tinh cho khach hang !\nDay du tien nghi, sach se,, lich su chu dao. Phuc vu tan tinh cho khach hang !\nDay du tien nghi, sach se,, lich su chu dao. Phuc vu tan tinh cho khach hang !\nDay du tien nghi, sach se,, lich su chu dao.dao.', '250 Mau Than2, Phuong 10 , Da Lat , Lam Dong', 'Phuong 10', 'Da Lat', 'Lam Dong', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, 5, 2, 2, 0),
(3, 'Hanh Phuc', 'hotel-3.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '226 Mau Than, Phuong 12 , Da Lat , Lam Dong', 'Phuong 12', 'Da Lat', 'Lam Dong', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 2, NULL, 1),
(4, 'Da nang', 'hotel-4.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '250 Mau Than2, Phuong 10 , Da nang', 'Phuong 10', 'Da Nang', 'Da Nang', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 2, NULL, 1),
(5, 'Da nang 2', 'hotel-5.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '2502 Mau Ty, Phuong 12 , Da nang', 'Phuong 12', 'Da Nang', 'Da Nang', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 2, NULL, 1),
(6, 'Da nang 3', 'hotel-6.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '250 Mau Than2, Phuong 10 , Da nang', 'Phuong 10', 'Da Nang', 'Da Nang', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 2, NULL, 1),
(7, 'Da nang 4', 'hotel-1.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '2502 Mau Ty, Phuong 12 , Da nang', 'Phuong 12', 'Da Nang', 'Da Nang', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 2, NULL, 1),
(8, 'Sapa ', 'hotel-2.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '250 Mau Than2, Phuong 10 , Sapa', 'Phuong 10', 'sapa', 'Lao Cai', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 2, NULL, 1),
(9, 'Sapa2', 'hotel-3.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '2502 Mau Ty, Phuong 12 ,Sapa', 'Phuong 12', 'Sapa', 'Lao cai', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 2, NULL, 1),
(10, 'Hanh Phuc false', 'hotel-4.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '226 Mau Than, Phuong 12 , Da Lat , Lam Dong', 'Phuong 12', 'Da Lat', 'Lam Dong', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, 5, 2, NULL, 1),
(11, 'Chua Ba Danh', 'hotel-5.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '250 Mau Than, Phuong 12 , Da Lat , Lam Dong', 'Phuong 12', 'Da Lat', 'Lam Dong', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 2, 2, 1),
(12, 'Cho Dem', 'hotel-6.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '250 Mau Than2, Phuong 10 , Da Lat , Lam Dong', 'Phuong 10', 'Da Lat', 'Lam Dong', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `imageblog`
--

DROP TABLE IF EXISTS `imageblog`;
CREATE TABLE IF NOT EXISTS `imageblog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(250) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_id` (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `image_room`
--

DROP TABLE IF EXISTS `image_room`;
CREATE TABLE IF NOT EXISTS `image_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(250) DEFAULT NULL,
  `alt` varchar(250) DEFAULT NULL,
  `room_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `room_id` (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_room`
--

INSERT INTO `image_room` (`id`, `src`, `alt`, `room_id`, `status`) VALUES
(1, 'room-1.jpg', 'hinh mo ta', 1, 1),
(2, 'room-2.jpg', 'hinh mo ta', 1, 1),
(5, 'room-1.jpg', 'hinh mo ta', 2, 1),
(6, 'room-2.jpg', 'hinh mo ta', 2, 1),
(7, 'room-3.jpg', 'hinh mo ta', 2, 1),
(8, 'room-4.jpg', 'hinh mo ta', 2, 1),
(9, 'room-2.jpg', 'hinh mo ta', 2, 1),
(10, 'room-3.jpg', 'hinh mo ta', 2, 1),
(11, 'room-4.jpg', 'hinh mo ta', 2, 1),
(12, 'room-4.jpg', 'hinh mo ta', 2, 1),
(13, '30112019095022destination-4.jpg', 'tttt', 23, 0),
(14, '30112019095022destination-5.jpg', 'tttt', 23, 0),
(15, '30112019095022destination-6.jpg', 'tttt', 23, 0),
(16, '30112019095022hotel-1.jpg', 'tttt', 23, 0),
(17, '30112019095022hotel-2.jpg', 'tttt', 23, 0),
(18, '30112019095022hotel-3.jpg', 'tttt', 23, 0),
(19, '30112019095022hotel-5.jpg', 'tttt', 23, 0),
(20, '30112019095022hotel-6.jpg', 'tttt', 23, 0),
(21, '30112019095022image_1.jpg', 'tttt', 23, 0),
(22, '30112019095326bg_1.jpg', 'tttt', 24, 0),
(23, '30112019095326destination-1.jpg', 'tttt', 24, 0),
(24, '30112019095326destination-2.jpg', 'tttt', 24, 0),
(25, '30112019095326destination-2-1.jpg', 'tttt', 24, 0),
(26, '30112019095326destination-3.jpg', 'tttt', 24, 0),
(27, '30112019095326destination-4.jpg', 'tttt', 24, 0),
(28, '30112019095326destination-5.jpg', 'tttt', 24, 0),
(29, '30112019095447bg_1.jpg', 'tttt', 25, 0),
(30, '30112019095447destination-1.jpg', 'tttt', 25, 0),
(31, '30112019095447destination-2.jpg', 'tttt', 25, 0),
(32, '30112019095447destination-2-1.jpg', 'tttt', 25, 0),
(33, '30112019095447destination-3.jpg', 'tttt', 25, 0),
(34, '30112019095447destination-4.jpg', 'tttt', 25, 0),
(35, '30112019095447destination-5.jpg', 'tttt', 25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` date DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `sale_id` (`sale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created`, `account_id`, `sale_id`, `status`) VALUES
(1, '2019-11-06', 3, NULL, 1),
(2, '2019-11-05', 3, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE IF NOT EXISTS `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `note` text,
  `order_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `room_id` (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `room_id`, `check_in_date`, `check_out_date`, `quantity`, `note`, `order_id`, `status`) VALUES
(1, 1, '2019-11-06', '2019-11-10', 2, 'nho mua do an sang !', 1, 1),
(2, 1, '2019-11-06', '2019-11-10', 3, 'nho mua do an sang 2 !', 1, 1),
(3, 1, '2019-11-07', '2019-11-11', 3, 'nho mua do an sang 2 !', 2, 1),
(4, 1, '2019-11-20', '2019-11-23', 2, 'nho mua do an sang 2 !', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `panel`
--

DROP TABLE IF EXISTS `panel`;
CREATE TABLE IF NOT EXISTS `panel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `image_src` varchar(250) NOT NULL,
  `id_super_admin` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_super_admin` (`id_super_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_service_hotel` int(11) DEFAULT NULL,
  `id_order` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `paymentcode` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_service_hotel` (`id_service_hotel`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reason_report`
--

DROP TABLE IF EXISTS `reason_report`;
CREATE TABLE IF NOT EXISTS `reason_report` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE IF NOT EXISTS `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `content` text,
  `created` date NOT NULL,
  `id_reason` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `room_id` (`hotel_id`),
  KEY `id_reason` (`id_reason`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_SUPER_ADMIN'),
(2, 'ROLE_ADMIN'),
(3, 'ROLE_EMPLOYEE'),
(4, 'ROLE_USER'),
(5, 'ROLE_SUPER_USER');

-- --------------------------------------------------------

--
-- Table structure for table `role_account`
--

DROP TABLE IF EXISTS `role_account`;
CREATE TABLE IF NOT EXISTS `role_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_account`
--

INSERT INTO `role_account` (`id`, `account_id`, `role_id`, `status`) VALUES
(3, 1, 2, 1),
(4, 2, 1, 1),
(5, 3, 4, 1),
(6, 4, 5, 1),
(7, 5, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `src_icon` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `amount_of_bed` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `bedtype_id` int(11) NOT NULL,
  `roomtype_id` int(11) NOT NULL,
  `roomcategory_id` int(11) NOT NULL,
  `amount_of_room` int(11) DEFAULT NULL,
  `hotel_id` int(11) NOT NULL,
  `id_coppon_room` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bedtype_id` (`bedtype_id`),
  KEY `hotel_id` (`hotel_id`),
  KEY `roomcategory_id` (`roomcategory_id`),
  KEY `roomtype_id` (`roomtype_id`),
  KEY `id_coppon_room` (`id_coppon_room`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `name`, `src_icon`, `price`, `amount_of_bed`, `capacity`, `bedtype_id`, `roomtype_id`, `roomcategory_id`, `amount_of_room`, `hotel_id`, `id_coppon_room`, `status`) VALUES
(1, 'Thu dong', 'room-1.jpg', 80, 1, 2, 1, 1, 2, 10, 1, 111, 1),
(2, 'Mua Xuan', 'muaxuan.jpg', 100, 2, 4, 1, 2, 1, 2, 1, 109, 1),
(3, 'Thu dong Vin', 'thudong.PNG', 90, 1, 2, 1, 1, 2, 10, 2, NULL, 1),
(4, 'Mua Xuan Vin', 'muaxuan.jpg', 100, 2, 4, 1, 2, 1, 2, 2, NULL, 1),
(5, 'Thu dong Da Nang', 'thudong.PNG', 65, 1, 2, 1, 1, 2, 10, 4, NULL, 1),
(6, 'Mua Xuan Dang', 'muaxuan.jpg', 110, 2, 4, 1, 2, 1, 2, 4, NULL, 1),
(7, 'Mua Xuan Hanh Phuc', 'muaxuan.jpg', 10, 2, 4, 1, 2, 1, 2, 3, NULL, 1),
(8, 'Mua Xuan cho Dem', 'muaxuan.jpg', 20, 2, 4, 1, 2, 1, 2, 12, NULL, 1),
(9, 'Thu dong ChoDem', 'thudong.PNG', 53, 1, 2, 1, 1, 2, 10, 12, NULL, 1),
(10, 'Thu dong chua', 'room-1.jpg', 70, 1, 2, 1, 1, 2, 10, 11, NULL, 1),
(11, 'Mua Xuan chua', 'muaxuan.jpg', 80, 2, 4, 1, 2, 1, 2, 11, NULL, 1),
(23, 'tttt', NULL, 10, 10, 10, 1, 1, 1, 10, 1, NULL, 0),
(24, 'tttt', NULL, 10, 10, 7, 1, 1, 1, 20, 1, NULL, 1),
(25, 'tttt', NULL, 10, 10, 7, 1, 1, 1, 20, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_category`
--

DROP TABLE IF EXISTS `room_category`;
CREATE TABLE IF NOT EXISTS `room_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_category`
--

INSERT INTO `room_category` (`id`, `name`, `status`) VALUES
(1, 'Phong Vip', 1),
(2, 'Phong Thuong', 1),
(3, 'Phong Pho Thong', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
CREATE TABLE IF NOT EXISTS `room_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`id`, `name`, `status`) VALUES
(1, 'DON', 1),
(2, 'DOI', 1),
(3, 'Team', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
CREATE TABLE IF NOT EXISTS `sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(250) NOT NULL,
  `description` text,
  `sales` double NOT NULL,
  `startday` date DEFAULT NULL,
  `endday` date DEFAULT NULL,
  `src` varchar(250) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `code`, `description`, `sales`, `startday`, `endday`, `src`, `account_id`, `status`) VALUES
(1, 'MERRYXMAX', 'description description description description description description description description description description description description description description description description description description description description description description description description  description description description description description  description description description description description  description description description description description  description description description description description description  description description', 0.1, '2019-12-20', '2019-12-31', 'promotion1.png', 5, 1),
(2, 'TETDUONGLICH', NULL, 0.1, '2020-01-28', '2020-01-11', 'promotion2.png', 5, 1),
(3, 'VIVUTET', NULL, 0.2, '2019-12-26', '2020-01-31', 'promotion3.png', 5, 1),
(4, 'CUOINAM', NULL, 0.3, '2019-12-17', '2020-01-31', 'promotion4.png', 5, 1),
(5, 'DULICHANTETNIEN', NULL, 0.25, '2020-01-02', '2020-01-31', 'promotion5.png', 5, 1),
(6, 'TETAMLICH', NULL, 0.35, '2020-01-17', '2020-01-31', 'promotion6.png', 5, 1),
(8, 'TIMETOGOHOME', NULL, 0.35, '2020-01-17', '2020-01-31', 'promotion6.png', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `core` char(10) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `icon_src` varchar(50) DEFAULT NULL,
  `id_account` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `description` text,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  KEY `id_account` (`id_account`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `name`, `price`, `core`, `priority`, `icon_src`, `id_account`, `type_id`, `description`, `status`) VALUES
(1, 'QC', '80000', 'QC01', 1, NULL, 1, 1, 'Day tin Len dau muc 1', 1),
(2, 'QC', '90000', 'QC02', 2, NULL, 1, 1, 'Day tin Len dau muc 2', 1),
(3, 'QC', '100000', 'QC03', 3, NULL, 1, 1, 'Day tin Len dau muc 3', 1),
(4, 'QC', '110000', 'QC04', 4, NULL, 1, 1, 'Day tin Len dau muc 4', 1),
(5, 'Add Hotel', '120000', 'add', 0, NULL, 1, 2, 'Create Hotel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `servicetype`
--

DROP TABLE IF EXISTS `servicetype`;
CREATE TABLE IF NOT EXISTS `servicetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicetype`
--

INSERT INTO `servicetype` (`id`, `name`) VALUES
(1, 'Push the news first'),
(2, 'Create Hotel');

-- --------------------------------------------------------

--
-- Table structure for table `service_hotel`
--

DROP TABLE IF EXISTS `service_hotel`;
CREATE TABLE IF NOT EXISTS `service_hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_hotel` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_hotel` (`id_hotel`),
  KEY `id_service` (`id_service`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_hotel`
--

INSERT INTO `service_hotel` (`id`, `id_hotel`, `id_service`, `start_date`, `end_date`, `created`, `status`) VALUES
(1, 1, 4, '2019-11-06', '2019-12-06', '2019-11-07', 1),
(2, 4, 2, '2019-11-06', '2019-12-06', '2019-11-07', 1),
(3, 2, 1, '2019-11-06', '2019-12-06', '2019-11-07', 1),
(4, 4, 3, '2019-11-06', '2019-12-06', '2019-11-07', 1),
(5, 2, 3, '2019-10-05', '2019-11-05', '2019-10-04', 1),
(6, 11, 3, '2019-10-05', '2019-11-05', '2019-10-04', 1),
(7, 11, 3, '2019-11-06', '2020-01-31', '2019-11-07', 1),
(8, 12, 3, '2019-11-06', '2019-12-06', '2019-11-07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `star_rating`
--

DROP TABLE IF EXISTS `star_rating`;
CREATE TABLE IF NOT EXISTS `star_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `star_rating`
--

INSERT INTO `star_rating` (`id`, `amount`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `email`
--
ALTER TABLE `email`
  ADD CONSTRAINT `email_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `evaluate`
--
ALTER TABLE `evaluate`
  ADD CONSTRAINT `evaluate_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `evaluate_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`),
  ADD CONSTRAINT `evaluate_ibfk_3` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `hotel_ibfk_2` FOREIGN KEY (`starrating_id`) REFERENCES `star_rating` (`id`),
  ADD CONSTRAINT `hotel_ibfk_3` FOREIGN KEY (`id_coppon_hotel`) REFERENCES `coppon_hotel` (`id`),
  ADD CONSTRAINT `hotel_ibfk_4` FOREIGN KEY (`id_ac_employee`) REFERENCES `account` (`id`);

--
-- Constraints for table `imageblog`
--
ALTER TABLE `imageblog`
  ADD CONSTRAINT `imageblog_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`);

--
-- Constraints for table `image_room`
--
ALTER TABLE `image_room`
  ADD CONSTRAINT `image_room_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Constraints for table `panel`
--
ALTER TABLE `panel`
  ADD CONSTRAINT `panel_ibfk_1` FOREIGN KEY (`id_super_admin`) REFERENCES `account` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`id_service_hotel`) REFERENCES `service_hotel` (`id`);

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `report_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `room` (`id`),
  ADD CONSTRAINT `report_ibfk_3` FOREIGN KEY (`id_reason`) REFERENCES `reason_report` (`id`);

--
-- Constraints for table `role_account`
--
ALTER TABLE `role_account`
  ADD CONSTRAINT `role_account_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `role_account_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`bedtype_id`) REFERENCES `bed_type` (`id`),
  ADD CONSTRAINT `room_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`),
  ADD CONSTRAINT `room_ibfk_3` FOREIGN KEY (`roomcategory_id`) REFERENCES `room_category` (`id`),
  ADD CONSTRAINT `room_ibfk_4` FOREIGN KEY (`roomtype_id`) REFERENCES `room_type` (`id`),
  ADD CONSTRAINT `room_ibfk_5` FOREIGN KEY (`id_coppon_room`) REFERENCES `coppon_room` (`id`);

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `servicetype` (`id`),
  ADD CONSTRAINT `service_ibfk_3` FOREIGN KEY (`id_account`) REFERENCES `account` (`id`);

--
-- Constraints for table `service_hotel`
--
ALTER TABLE `service_hotel`
  ADD CONSTRAINT `service_hotel_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id`),
  ADD CONSTRAINT `service_hotel_ibfk_2` FOREIGN KEY (`id_service`) REFERENCES `service` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
