-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 20, 2019 at 07:56 AM
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
  `status` tinyint(1) DEFAULT NULL,
  `created` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `fullname`, `birthday`, `email`, `address`, `type`, `gender`, `avatar`, `identitycard`, `score`, `status`, `created`) VALUES
(1, 'admin', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'Admin Admin', '1998-01-01', 'admin@gmail.com', 'Ho Chi Minh', NULL, 'Male', 'admin.PNG', '123456987963', 0, 1, NULL),
(2, 'superadmin', '$2a$10$uCamWdBo2me8pwRARwQhtO9uwYzj75vjp.Gm7q0vR/FijwgcedHHa', 'Super Admin', '1998-01-01', 'superadmin@gmail.com', 'Ha Noi', NULL, 'Male', 'superadmin.PNG', '123456987963', 0, 1, NULL),
(3, 'tien_user', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'Nguyen Tien', '1998-01-01', 'huutien921@gmail.com', 'ca mau', NULL, 'Male', '08122019144921destination-2.jpg', '381839139', 0, 1, NULL),
(4, 'thuan_super', '$2a$10$uCamWdBo2me8pwRARwQhtO9uwYzj75vjp.Gm7q0vR/FijwgcedHHa', 'Nguyen Thuan', '1998-01-01', 'huutien920@gmail.com', 'Vinh tau', NULL, 'Male', 'avatar1.PNG', '381839139', 0, 1, NULL),
(5, 'lam_employee', '$2a$10$i4Ci8SApa5tglJQ4jog9cuCeSri0MA3SRBDMkimxIQus.8Oo49yaC', 'Nguyen Thuan', '2020-07-12', 'huutien920@gmail.com', 'Vinh tau', '', 'Female', '10122019233714', '381839139', 0, 1, NULL),
(6, 'Huutien', '$2a$10$Z8UL0O4y1eQnHYZDK7W.JeQwR6t/4qf0BNc21kqhqxUPrIN6m.gmS', 'Tien', '2021-04-12', 'huutien921@gmail.com', 'ca mau', '', 'Female', 'avatar1.PNG', '7414585205252', NULL, 1, '2019-02-08'),
(7, 'lam', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'hoang lam', '2019-10-12', 'lam@gmail.com', 'hochiminh city', '', 'Female', 'avatar1.PNG', '', 123, 1, '2019-06-08'),
(8, 'nguyenhoang', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'nguyenlam', '2000-12-11', 'nguyenlam@gmail.com', 'XTT, HM, HCM, VN', NULL, 'Male', 'default.png', '5464563463456', 100, 1, '2019-02-08'),
(9, 'khongcoten', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'khong co ten', '1999-09-20', 'khongcoten@gmail.com', 'Da Lat, Lam Dong', NULL, 'Male', 'default.png', '12314784456', 4534, 1, '2019-01-07'),
(10, 'skyboyno1', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'boy vip no 1', '1997-07-13', 'skyboyno1@gmail.com', 'Quan1, HCM', NULL, 'Male', 'default.png', '123123654', 3221, 1, '2019-07-07'),
(11, 'sktfaker', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'skt faker', '1997-07-13', 'sktfaker@gmail.com', 'Seoul, Korea', NULL, 'Male', 'default.png', '1423543523', 345345, 1, '2019-02-20'),
(12, 'sktlam', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'skt lam', '1997-07-13', 'skt lam@gmail.com', 'HM HCM', NULL, 'Male', 'default.png', '76746433', 234, 1, '2019-12-08'),
(13, 'sontungmtp', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'son tung mtp', '1997-07-13', 'sontungmtp@gmail.com', 'hai phong', NULL, 'Male', 'default.png', '731355235', 234231, 1, '2019-03-01'),
(14, 'snopdogg', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'snop dogg', '1997-07-05', 'snopdogg@gmail.com', 'A me ri ca', NULL, 'Male', 'default.png', '5634623424', 345235, 1, '2019-12-01'),
(15, 'padorupadoru', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'padoru padoru', '1997-07-05', 'padorupadoru@gmail.com', 'tokyo japan', NULL, 'Female', 'default.png', '236547567567', 23451, 1, '2019-12-02'),
(16, 'Atoria', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'Atoria', '1997-07-05', 'Atoria@gmail.com', 'kyoto japan', NULL, 'Female', 'default.png', '54646342142457', 867, 1, '2019-12-15'),
(17, 'noname', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'noname', '1997-07-05', 'noname@gmail.com', 'canada', NULL, 'Male', 'default.png', '67856896', 5675, 1, '2019-01-15'),
(18, 'padoru', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'padoru', '1997-07-05', 'padoru@gmail.com', 'japan', NULL, 'Female', 'default.png', '97869679678968', 653, 1, '2019-12-15'),
(19, 'jack', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'jack', '1997-07-05', 'jack@gmail.com', 'HCM VN', NULL, 'Male', 'default.png', '644567654643', 45623, 1, '2019-02-05'),
(20, 'megumin', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'megumin', '1997-07-05', 'megumin@gmail.com', 'konoshubarashi', NULL, 'Female', 'default.png', '967979', 678, 1, '2019-11-01'),
(21, 'winner62zz', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'tre trau', '1997-07-05', 'winer62@gmail.com', 'HM HCM VN', NULL, 'Male', 'default.png', '967979324', 125, 1, '2019-12-11'),
(22, 'thebestvung', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'trum truong', '1994-07-02', 'trumtruong@gmail.com', 'TayNinh, VN', NULL, 'Male', 'default.png', '96797932443', 12532, 1, '2019-01-14'),
(23, 'cutibestjizz', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'best fizz', '1994-07-02', 'cutithai@gmail.com', 'TVM, VN', NULL, 'Male', 'default.png', '96797932443', 129, 1, '2019-12-13'),
(24, 'tambestdarius', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'best darius', '1994-07-02', 'tamdarius@gmail.com', 'TVM, VN', NULL, 'Male', 'default.png', '96797932442', 532, 1, '2019-02-05'),
(25, 'mid24', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'hide on bust', '1994-07-02', 'faker@gmail.com', 'korea', NULL, 'Male', 'default.png', '96797932442', 532231, 1, '2019-04-13'),
(26, 'donanchum', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'do nan chum', '1994-07-02', 'donanchum@gmail.com', 'A me ri ca', NULL, 'Male', 'default.png', '967979324422', 532231342, 1, '2019-12-24'),
(27, 'CoThamKoVe', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'Co tham ko ve', '1994-07-02', 'cotham@gmail.com', 'ko ve nen ko biet dang o dau', NULL, 'Female', 'default.png', '111345352432', 123, 1, '2019-12-04'),
(28, 'BacPhan', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'bac phan', '1994-07-02', 'bacphan@gmail.com', 'VN', NULL, 'Male', 'default.png', '96797932442', 234, 1, '2019-12-13'),
(29, 'HongNhan', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'Hong Nhan', '1994-07-02', 'HongNhan@gmail.com', 'VN', NULL, 'Male', 'default.png', '96797932442', 234, 1, '2019-12-13'),
(30, 'SongGio', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'Song Gio', '1994-07-02', 'SongGio@gmail.com', 'VN', NULL, 'Male', 'default.png', '96797932442', 234, 1, '2019-12-13'),
(31, 'NoiNayCoAnh', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'Noi Nay Co Anh', '1994-07-02', 'NoiNayCoAnh@gmail.com', 'VN', NULL, 'Male', 'default.png', '9679793212', 2342, 1, '2019-12-13'),
(32, 'Lac Troi', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'Lac Troi', '1994-07-02', 'Lac Troi@gmail.com', 'VN', NULL, 'Male', 'default.png', '96797932122', 234212, 1, '2019-12-13'),
(33, 'ChayNgayDi', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'Chay Nga yDi', '1994-07-02', 'ChayNgayDi@gmail.com', 'VN', NULL, 'Male', 'default.png', '96745332', 232, 1, '2019-12-13'),
(34, 'SheNevarKnow', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'SheNevarKnow', '1994-07-02', 'SheNevarKnow@gmail.com', 'VN', NULL, 'Female', 'default.png', '967453322', 232231, 1, '2019-12-13'),
(35, 'emp', '$2a$10$t14SrXDL..XvZNC4KjIZr.sgaByMWDcLFakQ9M4yvnwYOnmcrGt6K', 'emp', '2020-08-12', 'empppppppppppppppppppppppppppppp@gmail.com', 'address', '', 'Male', '19122019154958destination-1.jpg', '32523514354234234', NULL, 1, '2019-12-10'),
(36, 'emp2', '$2a$10$j6GsE03YWBFq/scdIaD6/.C794PCc9w2izBdzUuKdJltJeutRSrC6', '123', '2020-08-12', '123@gmail.com', '123', '123', 'Male', '10122019233511', '32523514354234234', NULL, 0, '2019-12-10'),
(37, 'daoko', '$2a$10$5edLzKwv9P3ZlA60wdMDNOi0UHtBJsuK8x8o4AQa5f58BG2pbIwDq', 'daoko', NULL, 'daoko123@gmail.com', NULL, NULL, 'Female', 'default.png', NULL, NULL, 1, '2019-05-11'),
(38, 'daoko2', '$2a$10$23ZdpCFBuU/5Geimb99b1.B1C5Kv7vqpTOrCDw8PG/epSVCVTGEVi', '123', NULL, '12321321313', NULL, NULL, 'Male', 'default.png', NULL, NULL, 1, '2019-03-11'),
(40, 'test', '$2a$10$l3P9bOXEp4nqnlZcImPp3OPrGnmQKvD/9yqrW3atdJwWgmJX0KLJK', 'testtttt', NULL, 'test@gmail.com', NULL, NULL, 'Male', 'default.png', NULL, NULL, 1, '2019-02-12'),
(41, 'tt', '$2a$10$YIwYGdMLbLNnenguZ6QmjeYdRCzfTc1S3ghaH7QkEx8ejpG/wGirq', 'tt', NULL, 'tt', NULL, NULL, 'Male', 'default.png', NULL, NULL, 1, '2019-12-14'),
(42, 'tien_user2', '$2a$10$SoIuKpTfsQfh13aMI6a4z.yq9jld4zMGJRTzzj5zRNEptUVS30gVG', '123', NULL, '33', NULL, NULL, 'Male', 'default.png', NULL, NULL, 1, '2019-08-15'),
(43, 'ttt', '$2a$10$Z85GdJ70kO8crso5kKepEOJYQYMCNAqJ2cW0XhZ2all7hFvOKU5Yi', 'ttt', NULL, 'ttt', NULL, NULL, 'Male', 'default.png', NULL, NULL, 1, '2019-01-17'),
(44, 'Khachhang1', '$2a$10$QhbHM42gCIwwPmajLilmTO9J7oBekclqRutfnysJM2Yf6ZRPh.hMC', 'Nguyen Khach Hang', NULL, 'khach@gmail.com', NULL, NULL, 'Male', 'default.png', NULL, NULL, 1, '2019-01-20');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed_type`
--

INSERT INTO `bed_type` (`id`, `name`, `status`) VALUES
(1, 'Single', 1),
(2, 'Queen', 1),
(3, 'King', 1),
(4, 'Double', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `content`, `account_id`, `src`, `created`, `status`) VALUES
(1, '8 Best hotel in Dubai that you don\'t miss out', '8 Best hotel in Dubai that you don\'t miss out8 Best hotel in Dubai that you don\'t miss out8 Best hotel in Dubai that you don\'t miss out8 Best hotel in Dubai that you don\'t miss out8 Best hotel in Dubai that you don\'t miss out', 5, 'hotel-6.jpg', '2019-11-30', 1),
(2, 'Share 4 ideal destinations for the winter 2019', 'Share 4 ideal destinations for the winter 2019Share 4 ideal destinations for the winter 2019Share 4 ideal destinations for the winter 2019Share 4 ideal destinations for the winter 2019Share 4 ideal destinations for the winter 2019', 5, 'destination-6.jpg', '2019-11-30', 1),
(3, '5 best restauran in Dubai that you don\'t miss out', '5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out\r\n\r\n5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out\r\n\r\n5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out\r\n\r\n5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out\r\n\r\n\r\n5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out5 best restauran in Dubai that you don\'t miss out', 5, 'restaurant-1.jpg', '2019-11-30', 1),
(4, 'Share 10 experience of traveling abroad', 'Share 10 experience of traveling abroadShare 10 experience of traveling abroadShare 10 experience of traveling abroadShare 10 experience of traveling abroadShare 10 experience of traveling abroadShare 10 experience of traveling abroadShare 10 experience of traveling abroad', 5, 'image_1.jpg', '2019-11-30', 0),
(5, 'Share 10 experience of traveling abroad', '<h1>Share 10 experience of traveling </h1>\nabroadShare 10 experience of traveling abroadShare 10 experience of traveling abroadShare 10 experience of traveling abroadShare 10 experience of traveling abroadShare 10 experience of traveling abroadShare 10 experience of traveling abroad', 5, 'image_1.jpg', '2019-11-30', 0),
(6, 'How to booking on Bookbed?', '<p><b>How to booking on Bookbed?</b></p><p><b><br></b></p><p><b>\r\n\r\n</b><u>How to booking on Bookbed?\r\n</u>\r\n<br></p><p>\r\n\r\nHow to booking on Bookbed?\r\n\r\n<br></p><p>\r\n\r\nHow to booking on Bookbed?\r\n\r\n<br></p><p>\r\n\r\nHow to booking on Bookbed?\r\n\r\n<br></p><p>\r\n\r\nHow to booking on Bookbed?\r\n\r\n<br></p><p>\r\n\r\nHow to booking on Bookbed?\r\n\r\n<br></p><p>\r\n\r\nHow to booking on Bookbed?\r\n<b>\r\n<br></b></p>', 5, '10122019231559logobed.jpg', '2019-12-10', 0),
(7, 'How to become partner?', '<p><b>How to become partner?</b><br></p><p>How to become partner?<br></p><p>How to become partner?<br></p><p>How to become partner?How to become partner?<br></p>', 7, '10122019232033sweethome.jpg', '2019-12-10', 0);

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
(4, 't2', 20, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coppon_room`
--

INSERT INTO `coppon_room` (`id`, `name`, `sale`, `status`) VALUES
(111, 'salevn', 10, 1),
(123, '333', 33, 1),
(126, '3', 3, 1),
(128, 'SADFGH', 2, 1),
(129, 'Nha dat lanh', 20, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evaluate`
--

INSERT INTO `evaluate` (`id`, `account_id`, `room_id`, `hotel_id`, `number_of_stars`, `content`, `created`, `status`) VALUES
(41, 3, NULL, 30, 3, 'Good', '2019-12-20', 1),
(42, 3, NULL, 30, 3, 'Good', '2019-12-20', 1),
(43, 9, NULL, 30, 3, 'Okkkkkkk', '2019-12-19', 1),
(44, 3, NULL, 30, 5, 'Good', '2019-12-20', 1),
(45, 3, NULL, 30, 3, 'Good', '2019-12-20', 1),
(46, 9, NULL, 30, 3, 'Okkkkkkk', '2019-12-19', 1),
(47, 15, 1, NULL, 3, 'Good hhhhhhh', '2019-12-20', 1),
(48, 3, NULL, 30, 3, 'Good', '2019-12-20', 1),
(49, 3, NULL, 30, 5, 'Good', '2019-12-20', 1),
(50, 3, NULL, 30, 3, 'Good', '2019-12-20', 1),
(51, 9, NULL, 30, 3, 'Okkkkkkk', '2019-12-19', 1),
(52, 9, NULL, 30, 3, 'Okkkkkkk', '2019-12-19', 1),
(53, 3, 1, NULL, 3, 'Good', '2019-12-20', 1),
(54, 3, 1, NULL, 4, 'Good', '2019-12-20', 1),
(55, 18, 1, NULL, 5, 'Good', '2019-12-20', 1),
(56, 3, 1, NULL, 2, 'Good', '2019-12-20', 1),
(57, 29, 1, NULL, 2, 'bad', '2019-12-20', 1),
(58, 3, NULL, 30, 5, 'Good okkkk', '2019-12-20', 1),
(59, 3, 2, NULL, 3, 'Goodfffff', '2019-12-20', 1),
(60, 9, 23, 30, 3, 'Okkkkkkk', '2019-12-19', 1),
(61, 1, NULL, 30, 2, 'Okkkkkkk', '2019-12-19', 1),
(62, 9, NULL, 30, 3, 'Okkkkkkk', '2019-12-19', 1),
(63, 9, NULL, 1, 3, 'Okkkkkkk', '2019-12-19', 1),
(64, 15, NULL, 1, 5, 'Good hhhhhhh', '2019-12-20', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `name`, `image`, `description`, `address_full`, `ward`, `city`, `provincial`, `country`, `wifi`, `parking`, `spa`, `gym`, `car_rental`, `airport_transfer`, `free_breakfast`, `swimming_pool`, `elevator`, `receptionist`, `air_conditioner`, `free_cancellation`, `pay_at_hotel`, `assembly_facilites`, `driveway`, `account_id`, `id_ac_employee`, `starrating_id`, `id_coppon_hotel`, `status`) VALUES
(1, 'Vuon Dau Hotel', '28112019172057about.jpg', '<h1>toi ten</h1><p>Nguyen Huu<u> Tien</u><br></p><h1></h1>', '250 Mau Than, Phuong 12 , Da Lat , Lam Dong', 'Phuong 12', 'Da Lat', 'Lam Dong', 'Viet Nam', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, 5, 5, 4, 1),
(17, 'Victoria', '02122019095837destination-2.jpg', '<p>Victoria</p>', 'Phan Thiet, Victoria', 'Victoria', 'Phan Thiet', 'Mui ne', 'Viet Nam', 1, 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 10, NULL, 1, 3, 0),
(21, 'Bui Chuoi', '08122019213828chup-hinh-kien-truc-1-1.jpg', '', '5/7B ap Xuan Thoi Son', 'Xuan Thoi son', 'Ho Chi Minh', 'Hoc Mon', 'Viet Nam', 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 7, 5, 3, NULL, 1),
(26, 'Tre 2', '12122019140241image_1.jpg', '<p>sss</p>', 'Ha Noi', 'Pho giay', 'Pho giay', 'Pho giay', 'Pho giay', 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 40, NULL, 4, NULL, 0),
(29, 'Da lat View', '20122019081013hotel-6.jpg', '<p>\r\n\r\nVery clean. The family was great, and the son was helpful and friendly.\r\n\r\n<br></p>', '222  Mau Than, Phuong 12 , Da Lat , Lam Dong', 'Phuong 12', 'Da Lat', 'Lam Dong', 'Viet Nam', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, NULL, 3, NULL, 0),
(30, 'Bien Xanh', '20122019082924hotel-3.jpg', '<p>\r\n\r\n</p><div><div><div><div><div><div><pre>As a coastal hotel in Da Nang, A La Carte always impresses visitors with its bold design of modern French architecture and sophisticated western-style interiors, taking white as the main color. Each bedroom here brings a separate living space, with views overlooking the beautiful blue sea. The highlight here is the overflow swimming pool on the hotel\'s rooftop.</pre></div></div></div></div></div></div><p></p>', ' Vo Nguyen Giap, Phuoc My, Son Tra and Da Nang', 'Phuoc My', ' Da Nang', ' Da Nang', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 3, 5, 2, NULL, 1),
(31, 'Da Lat Hotel', '28112019172057about.jpg', 'Da Lat Hotel is a hotel hostel established in 2017 with 26 rooms of different sizes to suit the needs of customers. System of modern equipment, air-conditioner, television, tables and chairs made from wood, wifi and other services to take tourists to visit the tourist destinations. Designed and decorated in a royal style that is luxurious and noble. The equipment and rooms of the guest house - the hotel are very comfortable and modern to bring satisfaction and comfort to customers during their stay in the hotel room.\r\n', '250 Mau Than, Phuong 12 , Da Lat , Lam Dong', 'Phuong 12', 'Da Lat', 'Lam Dong', 'Viet Nam', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, 5, 1, NULL, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_room`
--

INSERT INTO `image_room` (`id`, `src`, `alt`, `room_id`, `status`) VALUES
(1, 'room-1.jpg', 'hinh mo ta', 1, 1),
(2, 'room-2.jpg', 'hinh mo ta', 1, 1),
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
(35, '30112019095447destination-5.jpg', 'tttt', 25, 0),
(36, '09122019094009sweethome.jpg', 'rom 1', 26, 0),
(37, '11122019004518', 'vxcvx', 27, 0),
(38, '111220190046402.png', 'zxcvzxcv', 28, 0),
(39, '12122019211925destination-5.jpg', 'Mua Xuan', 2, 0),
(40, '12122019211925destination-6.jpg', 'Mua Xuan', 2, 0),
(41, '12122019211925hotel-1.jpg', 'Mua Xuan', 2, 0),
(42, '12122019211925hotel-2.jpg', 'Mua Xuan', 2, 0),
(43, '12122019211925hotel-3.jpg', 'Mua Xuan', 2, 0),
(44, '12122019211925hotel-4.jpg', 'Mua Xuan', 2, 0),
(45, '12122019212301hotel-3.jpg', 'tttt', 23, 0),
(46, '12122019212325destination-5.jpg', 'tttt', 23, 0),
(47, '12122019212325destination-6.jpg', 'tttt', 23, 0),
(48, '12122019212325hotel-1.jpg', 'tttt', 23, 0),
(49, '12122019212325hotel-2.jpg', 'tttt', 23, 0),
(50, '12122019212325hotel-3.jpg', 'tttt', 23, 0),
(51, '12122019212325hotel-4.jpg', 'tttt', 23, 0),
(52, '12122019212325hotel-5.jpg', 'tttt', 23, 0),
(53, '12122019212325hotel-6.jpg', 'tttt', 23, 0),
(54, '12122019212353', 'Nguyen', 23, 0),
(55, '20122019081311destination-5.jpg', 'Room vip', 29, 0),
(56, '20122019081311destination-6.jpg', 'Room vip', 29, 0),
(57, '20122019081311hotel-1.jpg', 'Room vip', 29, 0),
(58, '20122019081311hotel-2.jpg', 'Room vip', 29, 0),
(59, '20122019081311hotel-3.jpg', 'Room vip', 29, 0),
(60, '20122019081311hotel-5.jpg', 'Room vip', 29, 0),
(61, '20122019081311hotel-6.jpg', 'Room vip', 29, 0),
(62, '20122019081311image_1.jpg', 'Room vip', 29, 0),
(63, '20122019081311image_5.jpg', 'Room vip', 29, 0),
(64, '20122019081428destination-5.jpg', 'Room Vip', 30, 0),
(65, '20122019081428destination-6.jpg', 'Room Vip', 30, 0),
(66, '20122019081428hotel-1.jpg', 'Room Vip', 30, 0),
(67, '20122019081428hotel-2.jpg', 'Room Vip', 30, 0),
(68, '20122019081428hotel-3.jpg', 'Room Vip', 30, 0),
(69, '20122019083129room-1.jpg', 'Room Bao Ngu', 31, 0),
(70, '20122019083129room-2.jpg', 'Room Bao Ngu', 31, 0),
(71, '20122019083129room-3.jpg', 'Room Bao Ngu', 31, 0),
(72, '20122019083129room-4.jpg', 'Room Bao Ngu', 31, 0),
(73, '20122019083129room-6.jpg', 'Room Bao Ngu', 31, 0),
(74, '20122019083129thudong.png', 'Room Bao Ngu', 31, 0),
(75, '20122019083619room-1.jpg', 'Vip room', 32, 0),
(76, '20122019083619room-2.jpg', 'Vip room', 32, 0),
(77, '20122019083619room-3.jpg', 'Vip room', 32, 0),
(78, '20122019083619room-4.jpg', 'Vip room', 32, 0),
(79, '20122019091112room-1.jpg', 'Phong Base', 33, 0),
(80, '20122019091112room-2.jpg', 'Phong Base', 33, 0),
(81, '20122019091112room-3.jpg', 'Phong Base', 33, 0),
(82, '20122019091112room-4.jpg', 'Phong Base', 33, 0),
(83, '20122019091112room-6.jpg', 'Phong Base', 33, 0),
(84, '20122019091112thudong.png', 'Phong Base', 33, 0),
(85, '20122019091245room-1.jpg', 'Phong Vip', 34, 0),
(86, '20122019091245room-2.jpg', 'Phong Vip', 34, 0),
(87, '20122019091245room-3.jpg', 'Phong Vip', 34, 0),
(88, '20122019091245room-4.jpg', 'Phong Vip', 34, 0),
(89, '20122019091245room-6.jpg', 'Phong Vip', 34, 0),
(90, '20122019091245thudong.png', 'Phong Vip', 34, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `payment` varchar(250) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `sale_id` (`sale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `payment`, `created`, `account_id`, `sale_id`, `status`) VALUES
(32, 'TS4GDET7V57TS', 'PAYID-LX3UQAI2S944074L2099983K', '2019-12-16', 3, NULL, 0),
(33, 'TS4GDET7V57TS', 'PAYID-LX3OSWI8AG97376X5636483Y', '2019-12-16', 3, NULL, 1),
(34, 'TS4GDET7V57TS', 'PAYID-LX3OTDA7G6145706W219583Y', '2019-12-16', 3, NULL, 0),
(35, 'TS4GDET7V57TS', 'PAYID-LX3QNAY5FU93636VY113034P', '2019-12-16', 3, NULL, 1),
(36, 'TS4GDET7V57TS', 'PAYID-LX3QQDA7SJ783711P965651Y', '2019-12-16', 3, NULL, 1),
(37, 'payathotel', 'payathotel', '2019-12-16', 3, NULL, 0),
(38, 'TS4GDET7V57TS', 'PAYID-LX3U3ZQ7TB95285KL411260A', '2019-12-16', 3, NULL, 0),
(39, 'payathotel', 'payathotel', '2019-12-18', 3, NULL, 0),
(40, 'payathotel', 'payathotel', '2019-12-19', 4, NULL, 0),
(41, 'payathotel', 'payathotel', '2019-12-20', 3, NULL, 0),
(42, 'TS4GDET7V57TS', 'PAYID-LX6DALY52625905WR635562F', '2019-12-20', 3, NULL, 0);

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
  `namestaying` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `note` text,
  `order_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `room_id` (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `room_id`, `check_in_date`, `check_out_date`, `quantity`, `namestaying`, `email`, `note`, `order_id`, `status`) VALUES
(43, 1, '2019-12-21', '2019-12-26', 2, 'Nguyen Tien', 'huutien921@gmail.com', '', 41, 1),
(44, 2, '2019-12-21', '2019-12-26', 2, 'Nguyen Tien', 'huutien921@gmail.com', '', 42, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_account`
--

INSERT INTO `role_account` (`id`, `account_id`, `role_id`, `status`) VALUES
(3, 1, 2, 1),
(4, 2, 1, 1),
(5, 3, 4, 1),
(6, 4, 5, 1),
(7, 5, 3, 1),
(9, 3, 5, 1),
(10, 6, 3, 1),
(11, 7, 4, 1),
(13, 7, 5, 1),
(14, 7, 3, 1),
(15, 35, 3, 1),
(16, 36, 3, 1),
(17, 37, 4, 1),
(19, 37, 5, 1),
(20, 38, 4, 1),
(21, 38, 5, 1),
(22, 7, 2, 1),
(23, 7, 1, 1),
(24, 25, 4, 1),
(25, 40, 4, 1),
(26, 40, 5, 1),
(27, 41, 4, 1),
(28, 41, 5, 1),
(29, 42, 4, 1),
(30, 43, 4, 1),
(31, 3, 5, 1),
(32, 44, 4, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `name`, `src_icon`, `price`, `amount_of_bed`, `capacity`, `bedtype_id`, `roomtype_id`, `roomcategory_id`, `amount_of_room`, `hotel_id`, `id_coppon_room`, `status`) VALUES
(1, 'Thu dong', 'room-1.jpg', 80, 1, 2, 1, 1, 2, 10, 1, 111, 1),
(2, 'Mua Xuan', 'room-2.jpg', 100, 2, 4, 1, 2, 1, 2, 1, 126, 1),
(23, 'Mua Mua', '12122019212353destination-2.jpg', 10, 10, 10, 1, 1, 1, 10, 1, 128, 1),
(24, 'Mua Ha', 'room-2.jpg', 10, 10, 7, 1, 1, 1, 20, 1, 123, 1),
(25, 'Mua Thu', 'room-2.jpg', 10, 10, 7, 1, 1, 1, 20, 1, 123, 1),
(26, 'rom 1', '09122019094009logobed.jpg', 10, 2, 2, 1, 1, 1, 5, 21, NULL, 1),
(27, 'vxcvx', 'room-2.jpg', 12, 12, 13, 1, 2, 2, 1, 21, NULL, 0),
(28, 'zxcvzxcv', '111220190046401.png', 12, 12, 12, 1, 1, 1, 21, 21, NULL, 0),
(29, 'Room vip', '20122019081311hotel-2.jpg', 80, 10, 7, 3, 1, 1, 10, 29, 129, 1),
(30, 'Room Vip', '20122019081428hotel-6.jpg', 100, 2, 4, 1, 1, 1, 20, 29, 129, 1),
(31, 'Room Bao Ngu', '20122019083128room-1.jpg', 50, 1, 2, 1, 1, 2, 15, 30, NULL, 1),
(32, 'Vip room', '20122019083619room-1.jpg', 60, 2, 4, 1, 1, 1, 15, 30, NULL, 1),
(33, 'Phong Base', '20122019091112room-2.jpg', 79, 2, 4, 2, 1, 2, 15, 31, NULL, 1),
(34, 'Phong Vip', '20122019091245room-3.jpg', 60, 2, 5, 3, 2, 1, 10, 31, NULL, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `code`, `description`, `sales`, `startday`, `endday`, `src`, `account_id`, `status`) VALUES
(1, 'MERRYXMAX', 'description description description description description description description description description description description description description description description description description description description description description description description description  description description description description description  description description description description description  description description description description description  description description description description description description  description description', 20, '2019-12-01', '2019-12-31', 'promotion1.png', 5, 1),
(2, 'TETDUONGLICH', NULL, 30, '2019-12-01', '2019-12-31', 'promotion2.png', 5, 1),
(3, 'VIVUTET', NULL, 0.2, '2019-12-01', '2020-01-31', 'promotion3.png', 5, 1),
(4, 'CUOINAM', NULL, 0.3, '2019-12-17', '2020-01-31', 'promotion4.png', 5, 1),
(5, 'DULICHANTETNIEN', NULL, 0.25, '2020-01-02', '2020-01-31', 'promotion5.png', 5, 1),
(6, 'TETAMLICH', NULL, 0.35, '2020-01-17', '2020-01-31', 'promotion6.png', 5, 1),
(8, 'TIMETOGOHOME', '', 0.35, '1904-12-14', '1914-08-21', 'promotion6.png', 5, 0),
(9, 'VNVODICH', '<p><b>VNVODICH</b></p>', 80, '2019-12-31', '2019-12-25', '10122019232523promotion4.png', 7, 0),
(10, 'HAPPYNEWYEAR', '<p><b>HAPPYNEWYEAR</b><br></p><p><b><u><i></i></u></b><u><i>HAPPYNEWYEAR</i></u><br></p><p><u><i>HAPPYNEWYEAR</i></u><br></p><p><u><i>HAPPYNEWYEAR</i></u><br></p><p><u><i>HAPPYNEWYEAR</i></u><br></p><p><u><i>HAPPYNEWYEAR</i></u><b><u><i></i></u><br></b></p>', 30, '2019-12-31', '2020-01-11', '10122019232720promotion2.png', 7, 1);

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
(1, 'QC', '40', 'QC01', 1, NULL, 2, 1, '<p><strong>\r\npush news to section 1</strong></p>\r\n', 0),
(2, 'QC', '50', 'QC02', 2, 'lv2.PNG', 1, 1, 'push news to section 2', 0),
(3, 'QC', '100', 'QC03', 3, 'lv2.PNG', 2, 1, '<p>push news to section 3</p>\r\n', 1),
(4, 'QC', '150', 'QC04', 4, 'lv2.PNG', 2, 1, '<p>push news to section 4</p>\r\n', 1),
(5, 'Add Hotel', '200', 'add', 0, NULL, 1, 2, 'Create Hotel', 1);

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
  `tatol` double DEFAULT NULL,
  `payment` varchar(250) DEFAULT NULL,
  `idpayer` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_hotel` (`id_hotel`),
  KEY `id_service` (`id_service`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_hotel`
--

INSERT INTO `service_hotel` (`id`, `id_hotel`, `id_service`, `start_date`, `end_date`, `created`, `tatol`, `payment`, `idpayer`, `status`) VALUES
(1, 1, 4, '2019-11-06', '2019-12-06', '2019-11-07', 200, NULL, NULL, 1),
(11, 17, 5, '2019-12-02', '2020-12-02', '2019-12-02', 300, NULL, NULL, 1),
(13, 1, 1, '2019-12-07', '2020-12-07', '2019-12-07', 100, NULL, NULL, 1),
(17, 21, 5, '2019-10-07', '2020-12-07', '2019-10-07', 1443, NULL, NULL, 1),
(18, 26, 5, '2019-07-14', '2020-12-12', '2019-07-12', 500, NULL, NULL, 1),
(23, 29, 5, '2019-06-22', '2020-12-20', '2019-06-20', 1000, NULL, NULL, 1),
(24, 31, 5, '2019-05-04', '2020-12-20', '2019-05-02', 600, NULL, NULL, 1),
(25, 1, 1, '2019-01-07', '2020-02-02', '2019-01-05', 100, NULL, NULL, 1),
(26, 31, 5, '2019-02-10', '2020-12-07', '2019-02-05', 600, NULL, NULL, 1),
(27, 31, 5, '2019-03-20', '2020-05-20', '2019-03-05', 600, NULL, NULL, 1),
(28, 31, 5, '2019-04-02', '2020-12-20', '2019-04-05', 600, NULL, NULL, 1),
(29, 17, 5, '2019-08-02', '2020-12-02', '2019-08-02', 300, NULL, NULL, 1),
(30, 17, 5, '2019-09-02', '2020-12-02', '2019-09-02', 300, NULL, NULL, 1);

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
