-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 19, 2019 lúc 02:19 CH
-- Phiên bản máy phục vụ: 5.7.14
-- Phiên bản PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bookinghotel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `address`, `country`, `email`, `phone`, `name`, `status`) VALUES
(1, 'Nguyen Kiem , Phu Nhuan , Tp HCM', 'Viet Nam', 'bookbed@gmail.com', '0947443148', 'BookBed Online', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
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
  `created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `fullname`, `birthday`, `email`, `address`, `type`, `gender`, `avatar`, `identitycard`, `score`, `status`, `created`) VALUES
(1, 'admin', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'Admin Admin', '1998-01-01', 'admin@gmail.com', 'Ho Chi Minh', NULL, 'Male', 'admin.PNG', '123456987963', 0, 1, NULL),
(2, 'superadmin', '$2a$10$uCamWdBo2me8pwRARwQhtO9uwYzj75vjp.Gm7q0vR/FijwgcedHHa', 'Super Admin', '1998-01-01', 'superadmin@gmail.com', 'Ha Noi', NULL, 'Male', 'superadmin.PNG', '123456987963', 0, 1, NULL),
(3, 'tien_user', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'Nguyen Tien', '1998-01-01', 'huutien921@gmail.com', 'ca mau', NULL, 'Male', '08122019144921destination-2.jpg', '381839139', 0, 1, NULL),
(4, 'thuan_super', '$2a$10$uCamWdBo2me8pwRARwQhtO9uwYzj75vjp.Gm7q0vR/FijwgcedHHa', 'Nguyen Thuan', '1998-01-01', 'huutien920@gmail.com', 'Vinh tau', NULL, 'Male', 'thuan.PNG', '381839139', 0, 1, NULL),
(5, 'lam_employee', '$2a$10$i4Ci8SApa5tglJQ4jog9cuCeSri0MA3SRBDMkimxIQus.8Oo49yaC', 'Nguyen Thuan', '2020-07-12', 'huutien920@gmail.com', 'Vinh tau', '', 'Female', '10122019233714', '381839139', 0, 1, NULL),
(6, 'Huutien', '$2a$10$Z8UL0O4y1eQnHYZDK7W.JeQwR6t/4qf0BNc21kqhqxUPrIN6m.gmS', 'Tien', '2021-04-12', 'huutien921@gmail.com', 'ca mau', '', 'Female', '10122019233631', '7414585205252', NULL, 1, '2019-12-08'),
(7, 'lam', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'hoang lam', '2019-10-12', 'lam@gmail.com', 'hochiminh city', '', 'Female', '11122019011332', '', 123, 1, '2019-12-08'),
(8, 'nguyenhoang', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'nguyenlam', '2000-12-11', 'nguyenlam@gmail.com', 'XTT, HM, HCM, VN', NULL, 'Male', 'default.png', '5464563463456', 100, 1, '2019-12-08'),
(9, 'khongcoten', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'khong co ten', '1999-09-20', 'khongcoten@gmail.com', 'Da Lat, Lam Dong', NULL, 'Male', 'default.png', '12314784456', 4534, 1, '2019-12-07'),
(10, 'skyboyno1', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'boy vip no 1', '1997-07-13', 'skyboyno1@gmail.com', 'Quan1, HCM', NULL, 'Male', 'default.png', '123123654', 3221, 1, '2019-12-07'),
(11, 'sktfaker', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'skt faker', '1997-07-13', 'sktfaker@gmail.com', 'Seoul, Korea', NULL, 'Male', 'default.png', '1423543523', 345345, 1, '2019-12-20'),
(12, 'sktlam', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'skt lam', '1997-07-13', 'skt lam@gmail.com', 'HM HCM', NULL, 'Male', 'default.png', '76746433', 234, 1, '2019-12-08'),
(13, 'sontungmtp', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'son tung mtp', '1997-07-13', 'sontungmtp@gmail.com', 'hai phong', NULL, 'Male', 'default.png', '731355235', 234231, 1, '2019-12-01'),
(14, 'snopdogg', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'snop dogg', '1997-07-05', 'snopdogg@gmail.com', 'A me ri ca', NULL, 'Male', 'default.png', '5634623424', 345235, 1, '2019-12-01'),
(15, 'padorupadoru', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'padoru padoru', '1997-07-05', 'padorupadoru@gmail.com', 'tokyo japan', NULL, 'Female', 'default.png', '236547567567', 23451, 1, '2019-12-02'),
(16, 'Atoria', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'Atoria', '1997-07-05', 'Atoria@gmail.com', 'kyoto japan', NULL, 'Female', 'default.png', '54646342142457', 867, 1, '2019-12-15'),
(17, 'noname', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'noname', '1997-07-05', 'noname@gmail.com', 'canada', NULL, 'Male', 'default.png', '67856896', 5675, 1, '2019-12-15'),
(18, 'padoru', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'padoru', '1997-07-05', 'padoru@gmail.com', 'japan', NULL, 'Female', 'default.png', '97869679678968', 653, 1, '2019-12-15'),
(19, 'jack', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'jack', '1997-07-05', 'jack@gmail.com', 'HCM VN', NULL, 'Male', 'default.png', '644567654643', 45623, 1, '2019-12-05'),
(20, 'megumin', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'megumin', '1997-07-05', 'megumin@gmail.com', 'konoshubarashi', NULL, 'Female', 'default.png', '967979', 678, 1, '2019-12-01'),
(21, 'winner62zz', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'tre trau', '1997-07-05', 'winer62@gmail.com', 'HM HCM VN', NULL, 'Male', 'default.png', '967979324', 125, 1, '2019-12-11'),
(22, 'thebestvung', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'trum truong', '1994-07-02', 'trumtruong@gmail.com', 'TayNinh, VN', NULL, 'Male', 'default.png', '96797932443', 12532, 1, '2019-12-13'),
(23, 'cutibestjizz', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'best fizz', '1994-07-02', 'cutithai@gmail.com', 'TVM, VN', NULL, 'Male', 'default.png', '96797932443', 129, 1, '2019-12-13'),
(24, 'tambestdarius', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'best darius', '1994-07-02', 'tamdarius@gmail.com', 'TVM, VN', NULL, 'Male', 'default.png', '96797932442', 532, 1, '2019-12-13'),
(25, 'mid24', '$2a$10$yC9y/KuNGtMvMrKT/qk0muvMvIgUJAPLsTugi8vf53cbngdju.z1i', 'hide on bust', '1994-07-02', 'faker@gmail.com', 'korea', NULL, 'Male', 'default.png', '96797932442', 532231, 1, '2019-12-13'),
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
(37, 'daoko', '$2a$10$5edLzKwv9P3ZlA60wdMDNOi0UHtBJsuK8x8o4AQa5f58BG2pbIwDq', 'daoko', NULL, 'daoko123@gmail.com', NULL, NULL, 'Female', 'default.png', NULL, NULL, 1, '2019-12-11'),
(38, 'daoko2', '$2a$10$23ZdpCFBuU/5Geimb99b1.B1C5Kv7vqpTOrCDw8PG/epSVCVTGEVi', '123', NULL, '12321321313', NULL, NULL, 'Male', 'default.png', NULL, NULL, 1, '2019-12-11'),
(40, 'test', '$2a$10$l3P9bOXEp4nqnlZcImPp3OPrGnmQKvD/9yqrW3atdJwWgmJX0KLJK', 'testtttt', NULL, 'test@gmail.com', NULL, NULL, 'Male', 'default.png', NULL, NULL, 1, '2019-12-12'),
(41, 'tt', '$2a$10$YIwYGdMLbLNnenguZ6QmjeYdRCzfTc1S3ghaH7QkEx8ejpG/wGirq', 'tt', NULL, 'tt', NULL, NULL, 'Male', 'default.png', NULL, NULL, 1, '2019-12-14'),
(42, 'tien_user2', '$2a$10$SoIuKpTfsQfh13aMI6a4z.yq9jld4zMGJRTzzj5zRNEptUVS30gVG', '123', NULL, '33', NULL, NULL, 'Male', 'default.png', NULL, NULL, 1, '2019-12-15'),
(43, 'ttt', '$2a$10$Z85GdJ70kO8crso5kKepEOJYQYMCNAqJ2cW0XhZ2all7hFvOKU5Yi', 'ttt', NULL, 'ttt', NULL, NULL, 'Male', 'default.png', NULL, NULL, 1, '2019-12-17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bed_type`
--

CREATE TABLE `bed_type` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bed_type`
--

INSERT INTO `bed_type` (`id`, `name`, `status`) VALUES
(1, 'Single', 1),
(2, 'Queen', 1),
(3, 'King', 1),
(4, 'Double', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `content` text,
  `account_id` int(11) NOT NULL,
  `src` varchar(250) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `blog`
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
-- Cấu trúc bảng cho bảng `coppon_hotel`
--

CREATE TABLE `coppon_hotel` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `sale` double DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `coppon_hotel`
--

INSERT INTO `coppon_hotel` (`id`, `name`, `sale`, `status`) VALUES
(1, 'envet 11', 70, 1),
(2, 'sale Manh', 50, 1),
(3, 'sale 20', 20, 1),
(4, 't2', 20, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coppon_room`
--

CREATE TABLE `coppon_room` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `sale` double DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `coppon_room`
--

INSERT INTO `coppon_room` (`id`, `name`, `sale`, `status`) VALUES
(111, 'salevn', 10, 1),
(123, '333', 33, 1),
(126, '3', 3, 1),
(128, 'SADFGH', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `emailsend` varchar(50) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `content` text,
  `status` tinyint(1) NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `evaluate`
--

CREATE TABLE `evaluate` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `number_of_stars` int(11) DEFAULT '3',
  `content` text,
  `created` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `evaluate`
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
-- Cấu trúc bảng cho bảng `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
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
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hotel`
--

INSERT INTO `hotel` (`id`, `name`, `image`, `description`, `address_full`, `ward`, `city`, `provincial`, `country`, `wifi`, `parking`, `spa`, `gym`, `car_rental`, `airport_transfer`, `free_breakfast`, `swimming_pool`, `elevator`, `receptionist`, `air_conditioner`, `free_cancellation`, `pay_at_hotel`, `assembly_facilites`, `driveway`, `account_id`, `id_ac_employee`, `starrating_id`, `id_coppon_hotel`, `status`) VALUES
(1, 'Long Phung hoang', '28112019172057about.jpg', '<h1>toi ten</h1><p>Nguyen Huu<u> Tien</u><br></p><h1></h1>', '250 Mau Than, Phuong 12 , Da Lat , Lam Dong', 'Phuong 12', 'Da Lat', 'Lam Dong', 'Viet Nam', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, 5, 5, 4, 1),
(2, 'Vin Hotel', 'hotel-2.jpg', 'Phuc vu tan tinh cho khach hang !\nDay du tien nghi, sach se,, lich su chu Phuc vu tan tinh cho khach hang !\nDay du tien nghi, sach se,, lich su chu dao.Phuc vu tan tinh cho khach hang !\nDay du tien nghi, sach se,, lich su chu dao. Phuc vu tan tinh cho khach hang !\nDay du tien nghi, sach se,, lich su chu dao. Phuc vu tan tinh cho khach hang !\nDay du tien nghi, sach se,, lich su chu dao.dao.', '250 Mau Than2, Phuong 10 , Da Lat , Lam Dong', 'Phuong 10', 'Da Lat', 'Lam Dong', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, 5, 2, 2, 1),
(3, 'Hanh Phuc', 'hotel-3.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '226 Mau Than, Phuong 12 , Da Lat , Lam Dong', 'Phuong 12', 'Da Lat', 'Lam Dong', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, 5, 2, NULL, 0),
(4, 'Da nang', 'hotel-4.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '250 Mau Than2, Phuong 10 , Da nang', 'Phuong 10', 'Da Nang', 'Da Nang', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 2, NULL, 1),
(5, 'Da nang 2', 'hotel-5.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '2502 Mau Ty, Phuong 12 , Da nang', 'Phuong 12', 'Da Nang', 'Da Nang', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 2, NULL, 1),
(6, 'Da nang 3', 'hotel-6.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '250 Mau Than2, Phuong 10 , Da nang', 'Phuong 10', 'Da Nang', 'Da Nang', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 2, NULL, 1),
(7, 'Da nang 4', 'hotel-1.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '2502 Mau Ty, Phuong 12 , Da nang', 'Phuong 12', 'Da Nang', 'Da Nang', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 2, NULL, 1),
(8, 'Sapa ', 'hotel-2.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '250 Mau Than2, Phuong 10 , Sapa', 'Phuong 10', 'sapa', 'Lao Cai', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 2, NULL, 1),
(9, 'Sapa2', 'hotel-3.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '2502 Mau Ty, Phuong 12 ,Sapa', 'Phuong 12', 'Sapa', 'Lao cai', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 2, NULL, 1),
(10, 'Hanh Phuc false', 'hotel-4.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '226 Mau Than, Phuong 12 , Da Lat , Lam Dong', 'Phuong 12', 'Da Lat', 'Lam Dong', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, 5, 2, NULL, 1),
(11, 'Chua Ba Danh', 'hotel-5.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '250 Mau Than, Phuong 12 , Da Lat , Lam Dong', 'Phuong 12', 'Da Lat', 'Lam Dong', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 2, 2, 1),
(12, 'Cho Dem', 'hotel-6.jpg', 'Phuc vu tan tinh cho khach hang !\r\nDay du tien nghi, sach se,, lich su chu dao.', '250 Mau Than2, Phuong 10 , Da Lat , Lam Dong', 'Phuong 10', 'Da Lat', 'Lam Dong', 'Viet Nam', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 4, NULL, 2, 3, 1),
(16, 'Aroma', '0212201909025328112019110139thit.jpg', '<p>resort aroma lua dao khach 2tr</p>', 'Aroma Phan Thiet', 'Aroma', 'Phan Thiet', 'Mui Ne', 'Viet Nam', 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 3, 5, 3, NULL, 1),
(17, 'Victoria', '02122019095837destination-2.jpg', '<p>Victoria</p>', 'Phan Thiet, Victoria', 'Victoria', 'Phan Thiet', 'Mui ne', 'Viet Nam', 1, 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 10, NULL, 1, 3, 0),
(18, 'Vin Pear', 'hotelDefault.jpg', '<p>tttt</p>', 'Hoi An', 'Hoi An', 'Hoi An', 'Hoi An', 'Viet Nam', 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 3, 5, 5, NULL, 1),
(19, 'Vinpearl Land', 'hotelDefault.jpg', '<p>hhh</p>', 'Nha trang', 'Nha trang', 'Nha trang', 'Nha trang', 'Viet Nam', 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 6, NULL, 5, 4, 0),
(20, 'VinPear Luxury Landmark81', 'hotelDefault.jpg', '<p>VinPear Luxury Landmark81</p>', 'VinPear Luxury Landmark81, Dien Bien Phu', 'Dien Bien Phu', 'Ho CHi Minh', 'Q1', 'Viet Nam', 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 3, NULL, 5, NULL, 0),
(21, 'Bui Chuoi', '08122019213828chup-hinh-kien-truc-1-1.jpg', '', '5/7B ap Xuan Thoi Son', 'Xuan Thoi son', 'Ho Chi Minh', 'Hoc Mon', 'Viet Nam', 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 7, 5, 3, NULL, 1),
(22, 'Beauty Garden', 'hotelDefault.jpg', '<p>Beauty Garden</p>', 'Beauty Garden, Da Alt', 'Da Lat', 'Da Lat', 'Da Lat', 'Viet Nam', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 3, NULL, 4, NULL, 0),
(23, 'f?df?dfs&#7845;df', 'hotelDefault.jpg', '<p>sdafd</p>', 'sdf?dfsfd', '?dfsdf', 'sadf?df?', 'df?df', '?df?df', 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 37, 5, 3, NULL, 1),
(24, '21312', 'hotelDefault.jpg', '', '1232131', '23123', '1231', '3131', '313', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, NULL, 1, NULL, 0),
(25, 'Tre Truc', '12122019135928destination-6.jpg', '<h1>It is Hotel good !</h1><p>full function basic</p>', 'Ho Chi Minh', 'Phuong 12', 'Ho chi minh', 'Ho chi minh', 'Viet nam', 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 40, 5, 5, NULL, 1),
(26, 'Tre 2', '12122019140241image_1.jpg', '<p>sss</p>', 'Ha Noi', 'Pho giay', 'Pho giay', 'Pho giay', 'Pho giay', 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 40, NULL, 4, NULL, 0),
(27, 'Aptech', '14122019182551image_1.jpg', '', 'Nguyen Kiem Ho chi minh', 'Ho chi minh', 'ho chi minh', '12345', 'dd', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 5, 2, NULL, 1),
(28, 'tetst', '18122019185617destination-6.jpg', '<p>rr</p>', 'rr', 'rr', 'rr', 'rr', 'r', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `imageblog`
--

CREATE TABLE `imageblog` (
  `id` int(11) NOT NULL,
  `src` varchar(250) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_room`
--

CREATE TABLE `image_room` (
  `id` int(11) NOT NULL,
  `src` varchar(250) DEFAULT NULL,
  `alt` varchar(250) DEFAULT NULL,
  `room_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `image_room`
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
(54, '12122019212353', 'Nguyen', 23, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `payment` varchar(250) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `orders`
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
(40, 'payathotel', 'payathotel', '2019-12-19', 4, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `namestaying` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `note` text,
  `order_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `room_id`, `check_in_date`, `check_out_date`, `quantity`, `namestaying`, `email`, `note`, `order_id`, `status`) VALUES
(34, 10, '2019-12-17', '2019-12-22', 2, 'Nguyen Tien', 'huutien921@gmail.com', '', 32, 1),
(35, 1, '2019-12-18', '2019-12-30', 5, 'Nguyen Tien', 'huutien921@gmail.com', '', 33, 1),
(36, 1, '2019-12-21', '2019-12-29', 2, 'Nguyen Tien', 'huutien921@gmail.com', '', 34, 1),
(37, 10, '2019-12-17', '2019-12-21', 2, 'Nguyen Tien', 'huutien921@gmail.com', '', 35, 1),
(38, 10, '2019-12-17', '2019-12-21', 10, 'Nguyen Tien', 'huutien921@gmail.com', '', 36, 1),
(39, 11, '2019-12-02', '2019-12-07', 2, 'Nguyen Tien', 'huutien921@gmail.com', '', 37, 1),
(40, 11, '2019-12-25', '2019-12-29', 2, 'Nguyen Tien', 'huutien921@gmail.com', '', 38, 1),
(41, 11, '2019-12-19', '2019-12-22', 2, 'Nguyen Tien', 'huutien921@gmail.com', '', 39, 1),
(42, 1, '2019-12-20', '2019-12-22', 2, 'Nguyen Thuan', 'huutien920@gmail.com', '', 40, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `panel`
--

CREATE TABLE `panel` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `image_src` varchar(250) NOT NULL,
  `id_super_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `id_service_hotel` int(11) DEFAULT NULL,
  `id_order` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `paymentcode` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reason_report`
--

CREATE TABLE `reason_report` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `content` text,
  `created` date NOT NULL,
  `id_reason` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_SUPER_ADMIN'),
(2, 'ROLE_ADMIN'),
(3, 'ROLE_EMPLOYEE'),
(4, 'ROLE_USER'),
(5, 'ROLE_SUPER_USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_account`
--

CREATE TABLE `role_account` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `role_account`
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
(30, 43, 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
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
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `room`
--

INSERT INTO `room` (`id`, `name`, `src_icon`, `price`, `amount_of_bed`, `capacity`, `bedtype_id`, `roomtype_id`, `roomcategory_id`, `amount_of_room`, `hotel_id`, `id_coppon_room`, `status`) VALUES
(1, 'Thu dong', 'room-1.jpg', 80, 1, 2, 1, 1, 2, 10, 1, 111, 1),
(2, 'Mua Xuan', NULL, 100, 2, 4, 1, 2, 1, 2, 1, 126, 1),
(3, 'Thu dong Vin', 'thudong.PNG', 90, 1, 2, 1, 1, 2, 10, 2, NULL, 1),
(4, 'Mua Xuan Vin', 'muaxuan.jpg', 100, 2, 4, 1, 2, 1, 2, 2, NULL, 1),
(5, 'Thu dong Da Nang', 'thudong.PNG', 65, 1, 2, 1, 1, 2, 10, 4, NULL, 1),
(6, 'Mua Xuan Dang', 'muaxuan.jpg', 110, 2, 4, 1, 2, 1, 2, 4, NULL, 1),
(7, 'Mua Xuan Hanh Phuc', 'muaxuan.jpg', 10, 2, 4, 1, 2, 1, 2, 3, NULL, 1),
(8, 'Mua Xuan cho Dem', 'muaxuan.jpg', 20, 2, 4, 1, 2, 1, 2, 12, NULL, 1),
(9, 'Thu dong ChoDem', 'thudong.PNG', 53, 1, 2, 1, 1, 2, 10, 12, NULL, 1),
(10, 'Thu dong chua', 'room-1.jpg', 70, 1, 2, 1, 1, 2, 10, 11, NULL, 1),
(11, 'Mua Xuan chua', 'muaxuan.jpg', 80, 2, 4, 1, 2, 1, 2, 11, NULL, 1),
(23, 'Nguyen', '12122019212353destination-2.jpg', 10, 10, 10, 1, 1, 1, 10, 1, 128, 1),
(24, 'tttt', NULL, 10, 10, 7, 1, 1, 1, 20, 1, 123, 1),
(25, 'tttt', NULL, 10, 10, 7, 1, 1, 1, 20, 1, 123, 1),
(26, 'rom 1', '09122019094009logobed.jpg', 10, 2, 2, 1, 1, 1, 5, 21, NULL, 1),
(27, 'vxcvx', NULL, 12, 12, 13, 1, 2, 2, 1, 21, NULL, 0),
(28, 'zxcvzxcv', '111220190046401.png', 12, 12, 12, 1, 1, 1, 21, 21, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_category`
--

CREATE TABLE `room_category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `room_category`
--

INSERT INTO `room_category` (`id`, `name`, `status`) VALUES
(1, 'Phong Vip', 1),
(2, 'Phong Thuong', 1),
(3, 'Phong Pho Thong', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_type`
--

CREATE TABLE `room_type` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `room_type`
--

INSERT INTO `room_type` (`id`, `name`, `status`) VALUES
(1, 'DON', 1),
(2, 'DOI', 1),
(3, 'Team', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `code` varchar(250) NOT NULL,
  `description` text,
  `sales` double NOT NULL,
  `startday` date DEFAULT NULL,
  `endday` date DEFAULT NULL,
  `src` varchar(250) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sale`
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
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `core` char(10) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `icon_src` varchar(50) DEFAULT NULL,
  `id_account` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `description` text,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`id`, `name`, `price`, `core`, `priority`, `icon_src`, `id_account`, `type_id`, `description`, `status`) VALUES
(1, 'QC', '80000', 'QC01', 1, NULL, 2, 1, '<p><strong>Day tin Len dau muc 1</strong></p>\r\n', 0),
(2, 'QC', '90000', 'QC02', 2, 'lv2.PNG', 1, 1, 'Day tin Len dau muc 2', 0),
(3, 'QC', '100000', 'QC03', 3, 'lv2.PNG', 2, 1, '<p>Day tin Len dau muc 3</p>\r\n', 1),
(4, 'QC', '110000', 'QC04', 4, 'lv2.PNG', 2, 1, '<p>Day tin Len dau muc 4</p>\r\n', 1),
(5, 'Add Hotel', '120000', 'add', 0, NULL, 1, 2, 'Create Hotel', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicetype`
--

CREATE TABLE `servicetype` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `servicetype`
--

INSERT INTO `servicetype` (`id`, `name`) VALUES
(1, 'Push the news first'),
(2, 'Create Hotel');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_hotel`
--

CREATE TABLE `service_hotel` (
  `id` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created` date NOT NULL,
  `tatol` double DEFAULT NULL,
  `payment` varchar(250) DEFAULT NULL,
  `idpayer` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `service_hotel`
--

INSERT INTO `service_hotel` (`id`, `id_hotel`, `id_service`, `start_date`, `end_date`, `created`, `tatol`, `payment`, `idpayer`, `status`) VALUES
(1, 1, 4, '2019-11-06', '2019-12-06', '2019-11-07', NULL, NULL, NULL, 1),
(2, 4, 2, '2019-11-06', '2019-12-06', '2019-11-07', NULL, NULL, NULL, 1),
(3, 2, 1, '2019-11-06', '2019-12-06', '2019-11-07', NULL, NULL, NULL, 1),
(4, 4, 3, '2019-11-06', '2019-12-06', '2019-11-07', NULL, NULL, NULL, 1),
(5, 2, 3, '2019-10-05', '2019-11-05', '2019-10-04', NULL, NULL, NULL, 1),
(6, 11, 3, '2019-10-05', '2019-11-05', '2019-10-04', NULL, NULL, NULL, 1),
(7, 11, 3, '2019-11-06', '2020-01-31', '2019-11-07', NULL, NULL, NULL, 1),
(8, 12, 3, '2019-11-06', '2019-12-06', '2019-11-07', NULL, NULL, NULL, 1),
(9, 16, 5, '2019-12-02', '2020-12-02', '2019-12-02', 1440000, NULL, NULL, 0),
(11, 17, 5, '2019-12-02', '2020-12-02', '2019-12-02', 1440000, NULL, NULL, 1),
(12, 18, 5, '2019-12-02', '2020-12-02', '2019-12-02', 1440000, NULL, NULL, 1),
(13, 1, 1, '2019-12-07', '2020-12-07', '2019-12-07', 960000, NULL, NULL, 1),
(14, 4, 1, '2019-12-07', '2020-12-07', '2019-12-07', 960000, NULL, NULL, 1),
(15, 20, 5, '2019-12-07', '2020-12-07', '2019-12-07', 1440000, NULL, NULL, 1),
(16, 23, 5, '2019-12-07', '2020-12-07', '2019-12-07', 1440000, NULL, NULL, 1),
(17, 21, 5, '2019-12-07', '2020-12-07', '2019-12-07', 1440000, NULL, NULL, 1),
(18, 26, 5, '2019-12-12', '2020-12-12', '2019-12-12', 1440000, NULL, NULL, 1),
(19, 2, 1, '2019-12-18', '2020-12-18', '2019-12-18', 960000, NULL, NULL, 1),
(20, 28, 5, '2019-12-18', '2020-12-18', '2019-12-18', 1440000, NULL, NULL, 1),
(21, 28, 1, '2019-12-18', '2020-12-18', '2019-12-18', 960000, NULL, NULL, 1),
(22, 16, 3, '2019-12-19', '2020-12-19', '2019-12-19', 1200000, 'PAYID-LX5SYGI9CU90840771129722', 'TS4GDET7V57TS', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `star_rating`
--

CREATE TABLE `star_rating` (
  `id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `star_rating`
--

INSERT INTO `star_rating` (`id`, `amount`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `bed_type`
--
ALTER TABLE `bed_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Chỉ mục cho bảng `coppon_hotel`
--
ALTER TABLE `coppon_hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_id` (`name`);

--
-- Chỉ mục cho bảng `coppon_room`
--
ALTER TABLE `coppon_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_id` (`name`);

--
-- Chỉ mục cho bảng `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Chỉ mục cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Chỉ mục cho bảng `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `starrating_id` (`starrating_id`),
  ADD KEY `id_coppon_hotel` (`id_coppon_hotel`),
  ADD KEY `id_ac_employee` (`id_ac_employee`);

--
-- Chỉ mục cho bảng `imageblog`
--
ALTER TABLE `imageblog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Chỉ mục cho bảng `image_room`
--
ALTER TABLE `image_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Chỉ mục cho bảng `panel`
--
ALTER TABLE `panel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_super_admin` (`id_super_admin`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_service_hotel` (`id_service_hotel`),
  ADD KEY `id_order` (`id_order`);

--
-- Chỉ mục cho bảng `reason_report`
--
ALTER TABLE `reason_report`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `room_id` (`hotel_id`),
  ADD KEY `id_reason` (`id_reason`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_account`
--
ALTER TABLE `role_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Chỉ mục cho bảng `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bedtype_id` (`bedtype_id`),
  ADD KEY `hotel_id` (`hotel_id`),
  ADD KEY `roomcategory_id` (`roomcategory_id`),
  ADD KEY `roomtype_id` (`roomtype_id`),
  ADD KEY `id_coppon_room` (`id_coppon_room`);

--
-- Chỉ mục cho bảng `room_category`
--
ALTER TABLE `room_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `account_id` (`account_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `id_account` (`id_account`);

--
-- Chỉ mục cho bảng `servicetype`
--
ALTER TABLE `servicetype`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service_hotel`
--
ALTER TABLE `service_hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hotel` (`id_hotel`),
  ADD KEY `id_service` (`id_service`);

--
-- Chỉ mục cho bảng `star_rating`
--
ALTER TABLE `star_rating`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT cho bảng `bed_type`
--
ALTER TABLE `bed_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `coppon_hotel`
--
ALTER TABLE `coppon_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `coppon_room`
--
ALTER TABLE `coppon_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT cho bảng `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT cho bảng `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT cho bảng `imageblog`
--
ALTER TABLE `imageblog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `image_room`
--
ALTER TABLE `image_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT cho bảng `panel`
--
ALTER TABLE `panel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `role_account`
--
ALTER TABLE `role_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT cho bảng `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT cho bảng `room_category`
--
ALTER TABLE `room_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `room_type`
--
ALTER TABLE `room_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `servicetype`
--
ALTER TABLE `servicetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `service_hotel`
--
ALTER TABLE `service_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT cho bảng `star_rating`
--
ALTER TABLE `star_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `email`
--
ALTER TABLE `email`
  ADD CONSTRAINT `email_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  ADD CONSTRAINT `evaluate_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `evaluate_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`),
  ADD CONSTRAINT `evaluate_ibfk_3` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`);

--
-- Các ràng buộc cho bảng `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `hotel_ibfk_2` FOREIGN KEY (`starrating_id`) REFERENCES `star_rating` (`id`),
  ADD CONSTRAINT `hotel_ibfk_3` FOREIGN KEY (`id_coppon_hotel`) REFERENCES `coppon_hotel` (`id`),
  ADD CONSTRAINT `hotel_ibfk_4` FOREIGN KEY (`id_ac_employee`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `imageblog`
--
ALTER TABLE `imageblog`
  ADD CONSTRAINT `imageblog_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`);

--
-- Các ràng buộc cho bảng `image_room`
--
ALTER TABLE `image_room`
  ADD CONSTRAINT `image_room_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Các ràng buộc cho bảng `panel`
--
ALTER TABLE `panel`
  ADD CONSTRAINT `panel_ibfk_1` FOREIGN KEY (`id_super_admin`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`id_service_hotel`) REFERENCES `service_hotel` (`id`);

--
-- Các ràng buộc cho bảng `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `report_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `room` (`id`),
  ADD CONSTRAINT `report_ibfk_3` FOREIGN KEY (`id_reason`) REFERENCES `reason_report` (`id`);

--
-- Các ràng buộc cho bảng `role_account`
--
ALTER TABLE `role_account`
  ADD CONSTRAINT `role_account_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `role_account_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Các ràng buộc cho bảng `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`bedtype_id`) REFERENCES `bed_type` (`id`),
  ADD CONSTRAINT `room_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`),
  ADD CONSTRAINT `room_ibfk_3` FOREIGN KEY (`roomcategory_id`) REFERENCES `room_category` (`id`),
  ADD CONSTRAINT `room_ibfk_4` FOREIGN KEY (`roomtype_id`) REFERENCES `room_type` (`id`),
  ADD CONSTRAINT `room_ibfk_5` FOREIGN KEY (`id_coppon_room`) REFERENCES `coppon_room` (`id`);

--
-- Các ràng buộc cho bảng `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `servicetype` (`id`),
  ADD CONSTRAINT `service_ibfk_3` FOREIGN KEY (`id_account`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `service_hotel`
--
ALTER TABLE `service_hotel`
  ADD CONSTRAINT `service_hotel_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id`),
  ADD CONSTRAINT `service_hotel_ibfk_2` FOREIGN KEY (`id_service`) REFERENCES `service` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
