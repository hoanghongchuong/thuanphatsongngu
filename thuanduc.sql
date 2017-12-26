-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2017 at 11:02 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thuanduc`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` text COLLATE utf8_unicode_ci,
  `mota_en` text CHARACTER SET utf8,
  `link` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `content_en` longtext CHARACTER SET utf8,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `title_en` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `keyword_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text CHARACTER SET utf8,
  `com` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `user_id`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `mota`, `mota_en`, `link`, `content`, `content_en`, `status`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `com`, `created_at`, `updated_at`) VALUES
(31, 0, 'Về chi nhánh', NULL, 've-chi-nhanh', NULL, NULL, NULL, NULL, NULL, '<p>Về chi nh&aacute;nh</p>', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'gioi-thieu', '2017-11-03 01:38:54', '2017-11-03 01:38:54'),
(39, 0, 'về công ty', NULL, 've-cong-ty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'gioi-thieu', '2017-11-03 20:13:39', '2017-11-03 20:13:39'),
(78, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'lien-he', '2017-12-21 18:45:57', '2017-12-21 18:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `banggia`
--

CREATE TABLE `banggia` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `content` text,
  `doc` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banggia`
--

INSERT INTO `banggia` (`id`, `name`, `alias`, `content`, `doc`, `created_at`, `updated_at`) VALUES
(2, 'Bảng giá tại Hà Nội', 'bang-gia-tai-ha-noi', '<p><strong>Bảng gi&aacute; H&agrave;ng Vặn Ren mới nhất tại H&agrave; Nội</strong></p>\r\n<p>Thương hiệu Hathaco &Aacute;p dụng từ ng&agrave;y 8 th&aacute;ng 8 năm 2015 Để nhận được b&aacute;o gi&aacute; vật tư ng&agrave;nh nước v&agrave; c&aacute;c sản phẩm phụ kiện ống nhựa hdpe gi&aacute; tốt nhất c&ugrave;ng với chiết khấu tốt nhất cho đại l&yacute;, c&ocirc;ng tr&igrave;nh</p>\r\n<p><img class=\"img-fluid\" src=\"http://localhost/eu/backend/banggia/edit/images/price-table/price-table-item-1.jpg\" alt=\"\" /></p>\r\n<p>ĐỂ BIẾT TH&Ocirc;NG TIN CHI TIẾT XIN VUI L&Ograve;NG LI&Ecirc;N HỆ:</p>\r\n<p><strong class=\"text-uppercase\">C&Ocirc;NG TY TNHH SẢN XUẤT NHỰA CH&Acirc;U &Acirc;U</strong>&nbsp;<br />Trụ sở Hồ Ch&iacute; Minh : Số 68/8A Đường Trần Tấn, P.T&acirc;n Sơn Nh&igrave;, Q.T&acirc;n Ph&uacute;, TP.HCM&nbsp;<br />Tel :&nbsp;<a title=\"\" href=\"callto:02838493888\">0283.8493888</a>&nbsp;<br />Chi nh&aacute;nh H&agrave; Nội : Số 19 ng&otilde; 79 phố Y&ecirc;n Duy&ecirc;n, P.Y&ecirc;n Sở, Q.Ho&agrave;ng Mai, TP. H&agrave; Nội&nbsp;<br />Tel :&nbsp;<a title=\"\" href=\"callto:02432009195\">0243.2009195</a></p>', '1509933469_GCO PROFILE 2017.pdf', '2017-11-06 01:57:49', '2017-11-05 18:57:49'),
(4, 'Bảng giá tại TP.Hồ Chí Minh', 'bang-gia-tai-tpho-chi-minh', '<p><strong>Bảng gi&aacute; H&agrave;ng Vặn Ren mới nhất tại TP. Hồ Ch&iacute; Minh</strong></p>\r\n<p>Thương hiệu Hathaco &Aacute;p dụng từ ng&agrave;y 8 th&aacute;ng 8 năm 2015 Để nhận được b&aacute;o gi&aacute; vật tư ng&agrave;nh nước v&agrave; c&aacute;c sản phẩm phụ kiện ống nhựa hdpe gi&aacute; tốt nhất c&ugrave;ng với chiết khấu tốt nhất cho đại l&yacute;, c&ocirc;ng tr&igrave;nh sd</p>\r\n<p><img class=\"img-fluid\" src=\"http://localhost/eu/backend/banggia/images/price-table/price-table-item-1.jpg\" alt=\"\" /></p>\r\n<p>ĐỂ BIẾT TH&Ocirc;NG TIN CHI TIẾT XIN VUI L&Ograve;NG LI&Ecirc;N HỆ:</p>\r\n<p><strong class=\"text-uppercase\">C&Ocirc;NG TY TNHH SẢN XUẤT NHỰA CH&Acirc;U &Acirc;U</strong>&nbsp;<br />Trụ sở Hồ Ch&iacute; Minh : Số 68/8A Đường Trần Tấn, P.T&acirc;n Sơn Nh&igrave;, Q.T&acirc;n Ph&uacute;, TP.HCM&nbsp;<br />Tel :&nbsp;<a title=\"\" href=\"callto:02838493888\">0283.8493888</a>&nbsp;<br />Chi nh&aacute;nh H&agrave; Nội : Số 19 ng&otilde; 79 phố Y&ecirc;n Duy&ecirc;n, P.Y&ecirc;n Sở, Q.Ho&agrave;ng Mai, TP. H&agrave; Nội&nbsp;<br />Tel :&nbsp;<a title=\"\" href=\"callto:02432009195\">0243.2009195</a></p>', '1509893148_Tìm kiếm toàn văn.docx', '2017-11-05 14:45:48', '2017-11-05 07:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE `bank_account` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `info` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_account`
--

INSERT INTO `bank_account` (`id`, `img`, `info`, `created_at`, `updated_at`) VALUES
(1, '1507946485_logobidv.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN HẢI YẾN</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh Đống Đa</p>', '2017-10-14 02:01:25', '2017-10-13 19:01:25'),
(3, '1507946490_logobidv.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN Ho&agrave;ng&nbsp;Hải</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh&nbsp;H&agrave; Nội</p>\r\n<p>&nbsp;</p>', '2017-10-14 02:01:30', '2017-10-13 19:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_content`
--

CREATE TABLE `banner_content` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_content`
--

INSERT INTO `banner_content` (`id`, `image`, `link`, `position`, `updated_at`, `created_at`) VALUES
(9, '1513915927_banner-1.jpg', NULL, 4, '2017-12-21 21:12:07', '2017-12-22 04:12:07'),
(10, '1510106837_banner-1.jpg', NULL, 6, '2017-11-07 19:07:17', '2017-11-07 19:07:17'),
(11, '1510106849_banner-1.jpg', NULL, 7, '2017-11-07 19:07:29', '2017-11-07 19:07:29'),
(12, '1510106862_banner-1.jpg', NULL, 2, '2017-11-07 19:07:42', '2017-11-07 19:07:42'),
(13, '1510107779_banner-1.jpg', NULL, 5, '2017-11-07 19:22:59', '2017-11-07 19:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `banner_position`
--

CREATE TABLE `banner_position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_position`
--

INSERT INTO `banner_position` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '2017-09-20 08:29:24', '2017-09-20 01:29:24'),
(2, 'Tin tức', '2017-10-14 03:36:18', '2017-10-13 20:36:18'),
(3, 'Trang giới thiệu', '2017-11-08 02:03:36', '2017-11-07 19:03:36'),
(4, 'Trang sản phẩm', '2017-11-08 02:03:51', '2017-11-07 19:03:51'),
(5, 'Trang chi tiết sản phẩm', '2017-10-16 02:47:30', '2017-10-15 19:47:30'),
(6, 'Trang bảng giá', '2017-11-07 19:05:03', '2017-11-07 19:05:03'),
(7, 'Trang chứng chỉ kĩ thuật', '2017-11-07 19:05:29', '2017-11-07 19:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `note` text,
  `status` tinyint(2) DEFAULT '0',
  `total` int(11) DEFAULT NULL,
  `detail` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `card_code` varchar(250) DEFAULT NULL,
  `payment` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `full_name`, `email`, `phone`, `address`, `province`, `district`, `note`, `status`, `total`, `detail`, `created_at`, `updated_at`, `card_code`, `payment`) VALUES
(1, 'Hoàng Hồng Chương', 'chuonghoanghong@gmail.com', '0987654321', 'Cầu Diễn, Từ Liêm, Hà Nội', '4', NULL, 'sdfs', 1, 15000000, '[{\"product_name\":\"Iphone 5 32GB\",\"product_numb\":\"5\",\"product_price\":3000000,\"product_img\":\"1507862089_shop-item-8.jpg\",\"product_code\":\"tsf3\"}]', '2017-10-25 02:12:25', '2017-10-24 19:12:25', NULL, 1),
(2, 'Hoàng Hồng Chương', 'chuong1194@yahoo.com', '09983292', NULL, NULL, NULL, 'sdfsdf', 0, 22000000, '[{\"product_name\":\"S\\u1ea3n ph\\u1ea9m iphone 6 32GB\",\"product_numb\":\"6\",\"product_price\":2000000,\"product_img\":\"1508820259_upload_0dd04450f7694280ae3315e24e4256ce_large.jpg\",\"product_code\":null},{\"product_name\":\"HTC M8\",\"product_numb\":\"2\",\"product_price\":5000000,\"product_img\":\"1508820166_upload_f2b057cc8c454700a6cfd54fd6a27fc6_large.jpg\",\"product_code\":null}]', '2017-10-24 18:59:30', '2017-10-24 18:59:30', NULL, 0),
(4, 'Trần Văn A', 'admin@team.vn', '0987654321', 'Cầu Diễn, Từ Liêm, Hà Nội', NULL, NULL, 'sdasd', 3, 4000000, '[{\"product_name\":\"S\\u1ea3n ph\\u1ea9m iphone 6 32GB\",\"product_numb\":\"2\",\"product_price\":2000000,\"product_img\":\"1508820259_upload_0dd04450f7694280ae3315e24e4256ce_large.jpg\",\"product_code\":null}]', '2017-10-25 02:12:37', '2017-10-24 19:12:37', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `campaign_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `campaign_type` int(2) DEFAULT NULL,
  `campaign_value` int(10) DEFAULT NULL,
  `campaign_expired` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `del_flg` int(1) NOT NULL DEFAULT '0',
  `card_numb` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `campaign_name`, `campaign_type`, `campaign_value`, `campaign_expired`, `created_at`, `updated_at`, `del_flg`, `card_numb`) VALUES
(1, 'Chào mừng giáng sinh', 1, 100000, '2017-09-30', '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0, 7),
(2, 'Chào thu', 2, 10, '2017-09-30', '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_cards`
--

CREATE TABLE `campaign_cards` (
  `id` int(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `card_code` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `del_flg` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign_cards`
--

INSERT INTO `campaign_cards` (`id`, `campaign_id`, `card_code`, `is_active`, `created_at`, `updated_at`, `del_flg`) VALUES
(1, 1, 'hDXoOAI7BpxYJ', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(2, 1, 'FepHYPARhlTbe', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(3, 1, 'bpDe0nb31sZiN', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(4, 1, '0DK0VoB53JeJj', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(5, 1, 'hF3Ad1g7J411w', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(6, 1, '8PyZN6OTyAIwZ', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(7, 1, 'Zqy0atJII1nzS', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(8, 2, '3Qe06mci6qmMc', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(9, 2, 'vUrrWre9EN6iR', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(10, 2, 'IGzmLXBT9pDk5', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(11, 2, 'OXSiH6ooCzJj7', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chinhanh`
--

CREATE TABLE `chinhanh` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chinhanh`
--

INSERT INTO `chinhanh` (`id`, `name`, `website`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Văn phòng Hồ Chí Minh', 'http://gco.vn/', '0283.8493888', 'Số 68/8A Đường Trần Tấn, P.Tân Sơn Nhì, Q.Tân Phú, TP.HCM', '2017-11-04 03:23:41', '2017-11-03 20:23:41'),
(2, 'Văn phòng Hà Nội', NULL, '0243.2009195', 'Số 19 ngõ 79 phố Yên Duyên, P.Yên Sở, Q.Hoàng Mai, TP. Hà Nội', '2017-11-04 03:24:55', '2017-11-03 20:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `content` text CHARACTER SET latin1,
  `status` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `content`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Hoàng Hồng Chương', 'chuong1194@yahoo.com', NULL, 'dfdsfdfs', 0, '2017-10-30 01:45:06', '2017-12-21 19:00:09'),
(7, 'sssss', 'hoangchuong1194@gmail.com', NULL, 'cccc', 0, '2017-12-21 18:48:02', '2017-12-21 19:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(10) UNSIGNED NOT NULL,
  `tm` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `district_name` varchar(250) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `district_name`, `province_id`, `created_at`, `updated_at`) VALUES
(1, 'Ba Đình', 4, '2017-09-24 18:03:47', '2017-09-24 18:03:47'),
(2, 'Từ Liêm', 4, '2017-09-24 18:04:29', '2017-09-24 18:04:29'),
(3, 'Hoàn Kiếm', 4, '2017-09-24 18:04:40', '2017-09-24 18:04:40'),
(4, 'Cầu giấy', 4, '2017-09-25 00:14:58', '2017-09-25 00:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Mr Lee', '<p>&nbsp;Ch&uacute;ng t&ocirc;i mong muốn lu&ocirc;n được l&agrave; đối t&aacute;c tin cậy, uy t&iacute;n của Qu&yacute; kh&aacute;ch h&agrave;ng v&agrave; k&iacute;nh mong được hợp t&aacute;c c&ugrave;ng Qu&yacute; kh&aacute;ch h&agrave;ng trong thời gian gần nhất.</p>', '2017-11-06 04:21:36', '2017-11-05 21:21:36');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gioithieu`
--

CREATE TABLE `gioithieu` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `name_en` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `image` text,
  `mota` text,
  `mota_en` text,
  `content` text,
  `content_en` text,
  `title` varchar(250) DEFAULT NULL,
  `title_en` varchar(250) DEFAULT NULL,
  `keyword` text,
  `keyword_en` text,
  `description` text,
  `description_en` text,
  `status` int(2) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gioithieu`
--

INSERT INTO `gioithieu` (`id`, `name`, `name_en`, `alias`, `image`, `mota`, `mota_en`, `content`, `content_en`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Giới thiệu về công ty', 'About us', 'gioi-thieu-ve-cong-ty', '1513819499_about-1.jpg', '<p class=\"vk-about__title text-uppercase animation fadeIn animation-active\">C&ocirc;ng ty Cổ phần Thuận Đức được th&agrave;nh lập v&agrave;o ng&agrave;y 22/01/2007 tại Hưng Y&ecirc;n, Việt Nam bởi doanh nh&acirc;n Nguyễn Đức Cường, l&agrave; doanh nghiệp hoạt động trong lĩnh vực sản xuất c&aacute;c sản phẩm từ polypropylene, nổi bật l&agrave; hạt nhựa t&aacute;i chế v&agrave; bao b&igrave; PP.</p>', '<p>Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.</p>', '<p class=\"animation fadeIn animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n<p class=\"animation fadeIn animation-active\">Tại C&ocirc;ng ty TNHH sản xuất nhựa Ch&acirc;u &Acirc;u ch&uacute;ng t&ocirc;i tin tưởng rằng chỉ c&oacute; nghi&ecirc;m ngặt tu&acirc;n theo quy tr&igrave;nh quản l&yacute; chất lượng để tạo ra những sản phẩm đạt chất lượng cao v&agrave; dịch vụ tốt, ch&uacute;ng t&ocirc;i mới chiếm được l&ograve;ng tin của kh&aacute;ch h&agrave;ng đồng thời x&aacute;c lập vị tr&iacute; của m&igrave;nh tr&ecirc;n thị trường, để người Việt c&oacute; thể tin d&ugrave;ng h&agrave;ng Việt</p>\r\n<div class=\"row\">\r\n<div class=\"col-lg-9\">\r\n<p class=\"animation fadeIn delay1 animation-active\"><strong>Lịch sử h&igrave;nh th&agrave;nh</strong></p>\r\n<p class=\"animation fadeIn delay1 animation-active\">C&ocirc;ng ty TNHH Thiết Bị Điện Nước H&agrave; Th&agrave;nh được ch&iacute;nh thức th&agrave;nh lập v&agrave; đi v&agrave;o hoạt động từ th&aacute;ng 3 năm 2009. Ng&agrave;nh nghề ch&iacute;nh của ch&uacute;ng t&ocirc;i l&agrave; sản xuất thiết bị điện nước mang thương hiệu HATHACO. Nh&agrave; m&aacute;y sản xuất phụ kiện ống nhựa HDPE đặt tại Th&agrave;nh phố Hải Dương. Với nhiều m&aacute;y &eacute;p phun, m&aacute;y &eacute;p gioăng cao su v&agrave; hơn 200 bộ khu&ocirc;n sản phẩm kh&aacute;c nhau, ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang sản xuất cung cấp cho thị trường c&aacute;c loại phụ kiện HDPE vặn ren v&agrave; đai khởi thủy k&iacute;ch thước từ D20 đến D110 mang thương hiệu HATHACO đạt ti&ecirc;u chuẩn Dụng cụ bằng nhựa tiếp x&uacute;c trực tiếp thực phẩm của Bộ Y Tế: QCVN 12-1:2011/BYT v&agrave; tu&acirc;n theo Quy tr&igrave;nh quản l&yacute; chất lượng TCVN ISO 9001:2008.</p>\r\n<p class=\"animation fadeIn delay1 animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n</div>\r\n</div>', '<p>Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.</p>\r\n<p>Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.Shunde Joint Stock Company was established on January 22, 2007 in Hung Yen, Viet Nam by entrepreneur Nguyen Duc Cuong, an enterprise engaged in the production of polypropylene products, Recycle and PP packaging.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-12-21 02:45:24', '2017-12-20 19:45:24'),
(2, 'Quá trình phát triển', NULL, 'qua-trinh-phat-trien', NULL, NULL, NULL, '<p class=\"animation fadeIn animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n<p class=\"animation fadeIn animation-active\">Tại C&ocirc;ng ty TNHH sản xuất nhựa Ch&acirc;u &Acirc;u ch&uacute;ng t&ocirc;i tin tưởng rằng chỉ c&oacute; nghi&ecirc;m ngặt tu&acirc;n theo quy tr&igrave;nh quản l&yacute; chất lượng để tạo ra những sản phẩm đạt chất lượng cao v&agrave; dịch vụ tốt, ch&uacute;ng t&ocirc;i mới chiếm được l&ograve;ng tin của kh&aacute;ch h&agrave;ng đồng thời x&aacute;c lập vị tr&iacute; của m&igrave;nh tr&ecirc;n thị trường, để người Việt c&oacute; thể tin d&ugrave;ng h&agrave;ng Việt</p>\r\n<div class=\"row\">\r\n<div class=\"col-lg-9\">\r\n<p class=\"animation fadeIn delay1 animation-active\"><strong>Lịch sử h&igrave;nh th&agrave;nh</strong></p>\r\n<p class=\"animation fadeIn delay1 animation-active\">C&ocirc;ng ty TNHH Thiết Bị Điện Nước H&agrave; Th&agrave;nh được ch&iacute;nh thức th&agrave;nh lập v&agrave; đi v&agrave;o hoạt động từ th&aacute;ng 3 năm 2009. Ng&agrave;nh nghề ch&iacute;nh của ch&uacute;ng t&ocirc;i l&agrave; sản xuất thiết bị điện nước mang thương hiệu HATHACO. Nh&agrave; m&aacute;y sản xuất phụ kiện ống nhựa HDPE đặt tại Th&agrave;nh phố Hải Dương. Với nhiều m&aacute;y &eacute;p phun, m&aacute;y &eacute;p gioăng cao su v&agrave; hơn 200 bộ khu&ocirc;n sản phẩm kh&aacute;c nhau, ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang sản xuất cung cấp cho thị trường c&aacute;c loại phụ kiện HDPE vặn ren v&agrave; đai khởi thủy k&iacute;ch thước từ D20 đến D110 mang thương hiệu HATHACO đạt ti&ecirc;u chuẩn Dụng cụ bằng nhựa tiếp x&uacute;c trực tiếp thực phẩm của Bộ Y Tế: QCVN 12-1:2011/BYT v&agrave; tu&acirc;n theo Quy tr&igrave;nh quản l&yacute; chất lượng TCVN ISO 9001:2008.</p>\r\n<p class=\"animation fadeIn delay1 animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-12-21 02:45:39', '2017-12-20 19:45:39');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `product_id`, `name`, `alias`, `photo`, `status`, `image_path`, `alt`, `stt`, `created_at`, `updated_at`) VALUES
(1, 16, NULL, NULL, '1502966468_noithatnhaodep4.png', 1, NULL, NULL, 0, '2017-08-17 10:41:08', '0000-00-00 00:00:00'),
(61, 1, NULL, NULL, '1509674401_shop-item-1.png', 1, NULL, NULL, 0, '2017-11-03 02:00:01', '2017-11-03 02:00:01'),
(60, 4, NULL, NULL, '1509674112_shop-item-9.png', 1, NULL, NULL, 0, '2017-11-03 01:55:12', '2017-11-03 01:55:12'),
(50, 7, NULL, NULL, '1508904876_upload_3e7375be77c045c697b832dc04d83acc_large.jpg', 1, NULL, NULL, 0, '2017-10-25 04:14:36', '2017-10-25 04:14:36'),
(51, 6, NULL, NULL, '1508914601_upload_1a40f10151d041e3a934b15808a97249_master.jpg', 1, NULL, NULL, 0, '2017-10-25 06:56:41', '2017-10-25 06:56:41'),
(64, 2, NULL, NULL, '1509933631_shop-item-2.png', 1, NULL, NULL, 0, '2017-11-06 02:00:31', '2017-11-06 02:00:31'),
(96, 8, NULL, NULL, '1514251512_shop-detail-1.jpg', 1, NULL, NULL, 0, '2017-12-26 01:25:12', '2017-12-26 01:25:12'),
(97, 8, NULL, NULL, '1514251512_shop-item-1.jpg', 1, NULL, NULL, 0, '2017-12-26 01:25:12', '2017-12-26 01:25:12'),
(98, 8, NULL, NULL, '1514251512_shop-item-2.jpg', 1, NULL, NULL, 0, '2017-12-26 01:25:12', '2017-12-26 01:25:12'),
(81, 17, NULL, NULL, '1513937239_shop-item-9.jpg', 1, NULL, NULL, 0, '2017-12-22 10:07:19', '2017-12-22 10:07:19'),
(93, 11, NULL, NULL, '1514251127_shop-item-5.jpg', 1, NULL, NULL, 0, '2017-12-26 01:18:47', '2017-12-26 01:18:47'),
(94, 11, NULL, NULL, '1514251127_shop-item-6.jpg', 1, NULL, NULL, 0, '2017-12-26 01:18:47', '2017-12-26 01:18:47'),
(95, 11, NULL, NULL, '1514251127_shop-item-7.jpg', 1, NULL, NULL, 0, '2017-12-26 01:18:47', '2017-12-26 01:18:47'),
(62, 1, NULL, NULL, '1509674401_shop-item-2.png', 1, NULL, NULL, 0, '2017-11-03 02:00:01', '2017-11-03 02:00:01'),
(59, 4, NULL, NULL, '1509674112_shop-item-8.png', 1, NULL, NULL, 0, '2017-11-03 01:55:12', '2017-11-03 01:55:12'),
(58, 4, NULL, NULL, '1509674112_shop-item-7.png', 1, NULL, NULL, 0, '2017-11-03 01:55:12', '2017-11-03 01:55:12'),
(63, 1, NULL, NULL, '1509674401_shop-item-3.png', 1, NULL, NULL, 0, '2017-11-03 02:00:01', '2017-11-03 02:00:01'),
(65, 2, NULL, NULL, '1509933631_shop-item-3.png', 1, NULL, NULL, 0, '2017-11-06 02:00:31', '2017-11-06 02:00:31'),
(66, 2, NULL, NULL, '1509933631_shop-item-6.png', 1, NULL, NULL, 0, '2017-11-06 02:00:31', '2017-11-06 02:00:31'),
(80, 17, NULL, NULL, '1513937239_shop-item-8.jpg', 1, NULL, NULL, 0, '2017-12-22 10:07:19', '2017-12-22 10:07:19'),
(79, 17, NULL, NULL, '1513937239_shop-item-7.jpg', 1, NULL, NULL, 0, '2017-12-22 10:07:19', '2017-12-22 10:07:19'),
(82, 9, NULL, NULL, '1513993271_shop-item-6.jpg', 1, NULL, NULL, 0, '2017-12-23 01:41:11', '2017-12-23 01:41:11'),
(83, 9, NULL, NULL, '1513993271_shop-item-7.jpg', 1, NULL, NULL, 0, '2017-12-23 01:41:11', '2017-12-23 01:41:11'),
(84, 9, NULL, NULL, '1513993271_shop-item-8.jpg', 1, NULL, NULL, 0, '2017-12-23 01:41:11', '2017-12-23 01:41:11'),
(85, 13, NULL, NULL, '1513993707_shop-item-7.jpg', 1, NULL, NULL, 0, '2017-12-23 01:48:27', '2017-12-23 01:48:27'),
(86, 13, NULL, NULL, '1513993707_shop-item-8.jpg', 1, NULL, NULL, 0, '2017-12-23 01:48:27', '2017-12-23 01:48:27'),
(87, 13, NULL, NULL, '1513993707_shop-item-9.jpg', 1, NULL, NULL, 0, '2017-12-23 01:48:27', '2017-12-23 01:48:27'),
(92, 20, NULL, NULL, '1514186434_shop-item-2.jpg', 1, NULL, NULL, 0, '2017-12-25 07:20:34', '2017-12-25 07:20:34'),
(91, 20, NULL, NULL, '1513997607_shop-item-3.jpg', 1, NULL, NULL, 0, '2017-12-23 02:53:27', '2017-12-23 02:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `langs`
--

CREATE TABLE `langs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_vi` text COLLATE utf8_unicode_ci NOT NULL,
  `name_en` text COLLATE utf8_unicode_ci,
  `title_en` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `title_vi` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `langs`
--

INSERT INTO `langs` (`id`, `name_vi`, `name_en`, `title_en`, `alias`, `photo`, `status`, `lever`, `title_vi`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(32, 'Sản phẩm liên quan', 'Related products', NULL, '_sanphamlienquan', NULL, 1, 0, NULL, NULL, NULL, 'langs', 12, '2017-08-27 21:07:23', '2017-08-27 21:07:23'),
(31, 'Dịch vụ', 'Service', NULL, '_dichvu', NULL, 1, 0, NULL, NULL, NULL, 'langs', 10, '2017-10-09 08:14:14', '2017-10-09 01:14:14'),
(30, 'Danh mục sản phẩm', 'Product category', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 10, '2017-12-22 07:03:12', '2017-12-22 00:03:12'),
(29, 'Danh mục dự án', 'Project List', NULL, '_danhmucduan', NULL, 1, 0, NULL, NULL, NULL, 'langs', 9, '2017-08-26 01:13:13', '2017-08-25 18:13:13'),
(28, 'Tin tức sự kiện', 'News event', NULL, '_tintucsukien', NULL, 1, 0, NULL, NULL, NULL, 'langs', 8, '2017-08-24 23:40:43', '2017-08-24 23:40:43'),
(27, 'Giới thiệu', 'About Us', NULL, '_gioithieu', NULL, 1, 0, NULL, NULL, NULL, 'langs', 7, '2017-10-09 08:12:46', '2017-10-09 01:12:46'),
(21, 'Trang chủ', 'Home', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 'langs', NULL, '2017-12-20 08:07:27', '2017-12-20 01:07:27'),
(22, 'Sản phẩm', 'Product', NULL, '_sanpham', NULL, 1, 0, NULL, NULL, NULL, 'langs', 2, '2017-08-22 02:50:27', '2017-08-22 02:50:27'),
(23, 'Dự án', 'Project', NULL, '_duan', NULL, 1, 0, NULL, NULL, NULL, 'langs', 3, '2017-08-22 02:51:17', '2017-08-22 02:51:17'),
(24, 'Tin tức', 'News', NULL, '_tintuc', NULL, 1, 0, NULL, NULL, NULL, 'langs', 4, '2017-08-22 02:51:30', '2017-08-22 02:51:30'),
(25, 'Liên hệ', 'Contact', NULL, '_lienhe', NULL, 1, 0, NULL, NULL, NULL, 'langs', 5, '2017-08-22 02:51:42', '2017-08-22 02:51:42'),
(26, 'Tin mới', 'News', NULL, '_tinmoi', NULL, 1, 0, NULL, NULL, NULL, 'langs', 16, '2017-08-26 04:09:58', '2017-08-25 21:09:58'),
(33, 'Họ tên', 'Name', NULL, '_hoten', NULL, 1, 0, NULL, NULL, NULL, 'langs', 13, '2017-08-27 21:41:35', '2017-08-27 21:41:35'),
(34, 'Số điện thoại', 'Phone', NULL, '_sodienthoai', NULL, 1, 0, NULL, NULL, NULL, 'langs', 14, '2017-08-27 21:41:49', '2017-08-27 21:41:49'),
(35, 'Địa chỉ', 'Address', NULL, '_diachi', NULL, 1, 0, NULL, NULL, NULL, 'langs', 15, '2017-08-27 21:42:03', '2017-08-27 21:42:03'),
(36, 'Nội dung', 'Content', NULL, '_noidung', NULL, 1, 0, NULL, NULL, NULL, 'langs', 16, '2017-08-27 21:42:21', '2017-08-27 21:42:21'),
(37, 'Gửi', 'Send', NULL, '_gui', NULL, 1, 0, NULL, NULL, NULL, 'langs', 17, '2017-08-27 21:42:32', '2017-08-27 21:42:32'),
(38, 'Tin tức liên quan', 'Related news', NULL, '_tintuclienquan', NULL, 1, 0, NULL, NULL, NULL, 'langs', 18, '2017-08-28 01:49:13', '2017-08-28 01:49:13'),
(39, 'Tìm kiếm', 'Search', NULL, '_timkiem', NULL, 1, 0, NULL, NULL, NULL, 'langs', 19, '2017-10-09 03:12:37', '2017-10-09 03:12:37'),
(40, 'Từ khóa tìm kiếm', 'Keyword search', NULL, '_tukhoatimkiem', NULL, 1, 0, NULL, NULL, NULL, 'langs', 20, '2017-10-09 03:14:05', '2017-10-09 03:14:05'),
(41, 'Dịch vụ của chúng tôi', 'Our services', NULL, '_dichvucuachung toi', NULL, 1, 0, NULL, NULL, NULL, 'langs', 21, '2017-10-10 20:20:15', '2017-10-10 20:20:15'),
(42, 'Về chúng tôi', 'About us', NULL, '_vechungtoi', NULL, 1, 0, NULL, NULL, NULL, 'langs', 22, '2017-10-11 01:55:11', '2017-10-11 01:55:11'),
(43, 'Tầm nhìn sứ mệnh', 'Vision, mission', NULL, '_tamnhinsumenh', NULL, 1, 0, NULL, NULL, NULL, 'langs', 23, '2017-10-11 01:58:09', '2017-10-11 01:58:09'),
(44, 'Nhân sự chủ chốt', 'Key personnel', NULL, '_nhansuchuchot', NULL, 1, 0, NULL, NULL, NULL, 'langs', 24, '2017-10-11 01:58:31', '2017-10-11 01:58:31'),
(45, 'Diện tích', 'Acreage', NULL, '_dientich', NULL, 1, 0, NULL, NULL, NULL, 'langs', 25, '2017-10-12 20:09:06', '2017-10-12 20:09:06'),
(46, 'Thiết kế, thi công', 'Construction Design', NULL, '_thietkethicong', NULL, 1, 0, NULL, NULL, NULL, 'langs', 26, '2017-10-12 20:09:33', '2017-10-12 20:09:33'),
(47, 'Đọc tiếp', 'Read more', NULL, '_doctiep', NULL, 1, 0, NULL, NULL, NULL, 'langs', 27, '2017-10-13 00:39:31', '2017-10-13 00:39:31'),
(49, 'Liên kết', 'Link', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 28, '2017-12-20 01:59:09', '2017-12-20 01:59:09'),
(50, 'Mạng xã hội', 'Socialite', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 29, '2017-12-20 02:00:13', '2017-12-20 02:00:13'),
(51, 'Gửi liên hệ', 'Send contact', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 30, '2017-12-21 18:36:59', '2017-12-21 18:36:59'),
(52, 'Đăng kí nhận báo giá', 'Sign up for a quote', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 31, '2017-12-21 23:52:51', '2017-12-21 23:52:51'),
(53, 'Quan hệ cổ đông', 'Shareholder relations', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 32, '2017-12-24 19:28:10', '2017-12-24 19:28:10'),
(54, 'Sự khác biệt', 'Difference', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 33, '2017-12-24 20:20:01', '2017-12-24 20:20:01'),
(55, 'Bao bì là phải đẹp', 'Packaging must be beautiful', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'langs', 34, '2017-12-24 23:36:02', '2017-12-24 23:36:02');

-- --------------------------------------------------------

--
-- Table structure for table `lienket`
--

CREATE TABLE `lienket` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lienket`
--

INSERT INTO `lienket` (`id`, `user_id`, `name`, `link`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(4, 5, 'Slider 1', NULL, '1503972273_banner.png', NULL, NULL, 1, 0, 'slider', 1, '2017-08-29 02:04:33', '2017-08-28 19:04:33'),
(5, 5, 'Slider 2', 'http://gco.vn/', '1503972281_banner.png', NULL, NULL, 1, 0, 'slider', 2, '2017-08-29 02:04:41', '2017-08-28 19:04:41'),
(8, 5, 'Chị Thanh Lam', NULL, '1504774299_relation-3.png', NULL, NULL, 1, 0, 'cam-nhan', 1, '2017-09-07 08:51:40', '2017-09-07 01:51:40'),
(9, 5, 'Chị Lê Thu Thủy', 'http://gco.vn/', '1504774309_relation-4.png', NULL, NULL, 1, 0, 'cam-nhan', 2, '2017-09-07 08:51:49', '2017-09-07 01:51:49'),
(10, 5, 'Chị Khánh Ngọc', NULL, '1504774321_relation-1.png', NULL, NULL, 1, 0, 'cam-nhan', 3, '2017-09-07 08:52:01', '2017-09-07 01:52:01'),
(11, 5, 'Anh Tuấn Lâm Nhã', NULL, '1504774330_relation-2.png', NULL, NULL, 1, 0, 'cam-nhan', 4, '2017-09-07 08:52:10', '2017-09-07 01:52:10'),
(45, 5, 'right sidebar', NULL, '1513913614_analystic.jpg', NULL, NULL, 1, 0, 'chuyen-muc', 1, '2017-12-22 03:33:34', '2017-12-21 20:33:34'),
(16, 5, 'Chi nhánh Hà Nội', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782745_bv3.jpg', 'Số 65 Cửa Bắc, Phường Trúc Bạch, Quận Ba Đình', '<p>X&atilde; Trưng Trắc, Huyện Văn L&acirc;m, Tỉnh Hưng Y&ecirc;n&nbsp;<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;<br />Email: chauhungjsc@hn.vnn.vn</p>', 1, 0, 'chi-nhanh', 1, '2017-09-05 09:34:50', '2017-09-05 02:34:50'),
(17, 5, 'Chi nhánh HCM', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782773_bv1.jpg', '85 Nguyễn Thị Thập(Khu dân cư Himlam, Phường Tân Hưng) Quận 7', '<p>144 Khuất Duy Tiến, P. Nh&acirc;n Ch&iacute;nh, Q. Thanh Xu&acirc;n, HN<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;</p>', 1, 0, 'chi-nhanh', 2, '2017-09-05 09:35:59', '2017-09-05 02:35:59'),
(25, 5, 'Đối tác 1', 'http://gco.vn/', '1503974583_dt3.png', NULL, NULL, 1, 0, 'doi-tac', 1, '2017-08-28 19:43:03', '2017-08-28 19:43:03'),
(26, 5, 'Đối tác 2', NULL, '1503974601_dt2.png', NULL, NULL, 1, 0, 'doi-tac', 2, '2017-08-28 19:43:21', '2017-08-28 19:43:21'),
(27, 5, 'Đối tác 3', NULL, '1503974611_dt4.png', NULL, NULL, 1, 0, 'doi-tac', 3, '2017-08-28 19:43:31', '2017-08-28 19:43:31'),
(28, 5, 'Đối tác 4', NULL, '1503974620_dt1.png', NULL, NULL, 1, 0, 'doi-tac', 4, '2017-08-28 19:43:40', '2017-08-28 19:43:40'),
(29, 5, 'Đối tác 5', 'http://gco.vn/', '1503974634_dt5.png', NULL, NULL, 1, 0, 'doi-tac', 5, '2017-08-28 19:43:54', '2017-08-28 19:43:54'),
(35, 5, 'Hình 1', 'http://gco.vn/', '1504230555_1.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 1, '2017-08-31 18:49:15', '2017-08-31 18:49:15'),
(36, 5, 'Hình ảnh 2', NULL, '1504230566_2.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 2, '2017-08-31 18:49:26', '2017-08-31 18:49:26'),
(38, 5, 'lien ket 1', NULL, '', NULL, NULL, 1, 0, 'tieu-chi', 1, '2017-12-26 08:40:26', '2017-12-26 01:40:26'),
(39, 5, 'lien ket 2', NULL, '', NULL, NULL, 1, 0, 'tieu-chi', 2, '2017-12-26 08:40:35', '2017-12-26 01:40:35'),
(40, 5, 'lien ket 3', NULL, '', NULL, NULL, 1, 0, 'tieu-chi', 3, '2017-12-26 08:40:44', '2017-12-26 01:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `linhvuc`
--

CREATE TABLE `linhvuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `linhvuc`
--

INSERT INTO `linhvuc` (`id`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(3, 'Kinh doanh', 'kkk', '2017-12-21 01:56:09', '2017-12-21 01:56:09'),
(4, 'Kế toán', 'kkkkdgdg', '2017-12-21 01:58:21', '2017-12-21 01:58:21'),
(5, 'Bán hàng', 'vccccsss', '2017-12-21 01:58:51', '2017-12-21 01:58:51');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `keyword_en` text CHARACTER SET utf8,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text CHARACTER SET utf8,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `status`, `lever`, `parent_id`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(3, 'Trang chủ', 'Home', 'http://localhost/thuanduc/', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 1, '2017-12-25 01:40:01', '2017-12-24 18:40:01'),
(2, 'Giới thiệu', 'About', 'http://localhost/thuanduc/gioi-thieu/gioi-thieu-ve-cong-ty', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 2, '2017-12-25 07:19:45', '2017-12-25 00:19:45'),
(12, 'Sản phẩm', 'Product', 'http://localhost/thuanduc/san-pham', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 4, '2017-12-22 04:10:25', '2017-12-21 21:10:25'),
(13, 'Tin tức', 'News', 'tin-tuc', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 6, '2017-12-25 04:52:49', '2017-12-24 21:52:49'),
(18, 'Quan hệ cổ đông', 'Shareholder relations', 'http://localhost/thuanduc/quan-he-co-dong', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 4, '2017-12-25 03:02:09', '2017-12-24 20:02:09'),
(19, 'Khách hàng', 'Customer', 'khach-hang', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 5, '2017-12-25 04:52:41', '2017-12-24 21:52:41'),
(33, 'Liên hệ', 'Contact', 'lien-he', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 8, '2017-12-21 02:54:52', '2017-12-20 19:54:52'),
(20, 'Quá trình phát triển', 'Development process', 'http://localhost/thuanduc/gioi-thieu/qua-trinh-phat-trien', NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 9, '2017-12-25 07:12:28', '2017-12-25 00:12:28'),
(21, 'Giới thiệu về công ty', 'About us', 'http://localhost/thuanduc/gioi-thieu/gioi-thieu-ve-cong-ty', NULL, NULL, 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 8, '2017-12-21 02:55:37', '2017-12-20 19:55:37'),
(23, 'Túi shoping', 'SHOPPING BAG', 'http://localhost/thuanduc/san-pham/tui-shoping', NULL, NULL, 1, 0, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 9, '2017-12-21 02:57:28', '2017-12-20 19:57:28'),
(25, 'Hạt nhựa tái sinh', 'Recycled plastic particles', 'http://localhost/thuanduc/san-pham/hat-nhua-tai-sinh', NULL, NULL, 1, 0, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 11, '2017-12-21 02:58:10', '2017-12-20 19:58:10'),
(26, 'Sự khác biệt', 'Differentiation', 'http://localhost/thuanduc/su-khac-biet', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 3, '2017-12-25 03:20:53', '2017-12-24 20:20:53'),
(27, 'Bao bì nông nghiệp', 'agricultural packaging', 'http://localhost/thuanduc/san-pham/bao-bi-nong-nghiep', NULL, NULL, 1, 0, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 13, '2017-12-21 02:59:42', '2017-12-20 19:59:42'),
(28, 'Bao bì pp', 'pp packaging', 'http://localhost/thuanduc/san-pham/bao-bi-pp', NULL, NULL, 1, 0, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 14, '2017-12-21 03:00:23', '2017-12-20 20:00:23'),
(36, 'Tin chứng khoán', NULL, 'http://localhost/thuanduc/tin-tuc/tin-chung-khoan', NULL, NULL, 1, 0, 13, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 17, '2017-12-21 20:58:42', '2017-12-21 20:58:42'),
(34, 'Tuyển dụng', 'Recruitment', 'tuyen-dung', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 7, '2017-12-25 04:53:11', '2017-12-24 21:53:11'),
(35, 'Tin hoạt động', 'Active news', 'http://localhost/thuanduc/tin-tuc/tin-hoat-dong', NULL, NULL, 1, 0, 13, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 16, '2017-12-21 19:16:16', '2017-12-21 19:16:16'),
(37, 'Tin tuyển dụng', 'News recruiment', 'tin-tuyen-dung', NULL, NULL, 1, 0, 34, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 18, '2017-12-22 20:40:22', '2017-12-22 20:40:22'),
(38, 'Cơ hội việc làm', 'Jobs', 'http://localhost/thuanduc/co-hoi-viec-lam', NULL, NULL, 1, 0, 34, NULL, NULL, NULL, NULL, NULL, NULL, 'menu-top', 19, '2017-12-25 04:54:46', '2017-12-24 21:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_06_05_042524_create_products_table', 1),
('2017_06_05_045215_create_images_table', 1),
('2017_06_07_033057_create_news_categories_table', 1),
('2017_06_07_033135_create_news_table', 1),
('2017_06_07_033425_create_setting_table', 1),
('2017_06_07_033619_create_pages_table', 1),
('2017_06_07_033944_create_contact_table', 1),
('2017_06_07_034012_create_footer_table', 1),
('2017_06_07_034035_create_slider_table', 1),
('2017_06_07_034117_create_useronline_table', 1),
('2017_06_07_034335_create_order_table', 1),
('2017_06_07_034407_create_order_detail_table', 1),
('2017_06_07_034448_create_newsletter_table', 1),
('2017_06_07_034655_create_order_status_table', 1),
('2017_06_07_064339_create_counter_table', 1),
('2017_06_07_070934_create_partner_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `mota_en` text CHARACTER SET utf8,
  `content` longtext COLLATE utf8_unicode_ci,
  `content_en` text CHARACTER SET utf8,
  `status` int(11) NOT NULL,
  `noibat` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_en` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text CHARACTER SET utf8,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `cate_id`, `user_id`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `background`, `mota`, `mota_en`, `content`, `content_en`, `status`, `noibat`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 46, 5, 'Thêm 200 triệu đô cải thiện nguồn nước sạch và môi trường', 'demo new', 'them-200-trieu-do-cai-thien-nguon-nuoc-sach-va-moi-truong', 'demo-new', '1509591787_news-grid-1.jpg', '', 'Trên 5 triệu người sống tại các vùng nông thôn và vùng núi nghèo nhất Việt Nam sẽ được tiếp cận với nguồn nước sạch và điều kiện vệ sinh môi trường tốt hơn nhờ vào khoản tín dụng trị giá 200 triệu USD vừa được Ban Giám đốc Điều hành Ngân Hàng Thế Giới phê duyệt hôm nay (ngày 12/11/2015)', NULL, '<p>Th&aacute;ng 5/2016 đ&aacute;nh dấu bước ph&aacute;t triển tiếp theo của c&ocirc;ng ty TNHH Thiết bị điện nước H&agrave; Th&agrave;nh, khi ch&uacute;ng t&ocirc;i li&ecirc;n tiếp nhập về th&ecirc;m 2 m&aacute;y &eacute;p nhựa, n&acirc;ng tổng số m&aacute;y l&ecirc;n 8 chiếc với c&ocirc;ng suất từ 100 tấn cho đến 400 tấn. Vẫn l&agrave; những m&aacute;y nhựa mới 100% mang thương hiệu Hải Thi&ecirc;n, thương hiệu tỷ đ&ocirc; nổi tiếng nhất Trung Quốc (b&aacute;n được 26.000 m&aacute;y, doanh thu 1.13 tỷ USD trong năm 2015) được ch&uacute;ng t&ocirc;i tin tưởng sử dụng. Việc mở rộng quy m&ocirc; sản xuất n&agrave;y sẽ gi&uacute;p năng lực sản xuất của c&ocirc;ng ty tăng l&ecirc;n đ&aacute;ng kể, qua đ&oacute; ch&uacute;ng t&ocirc;i c&oacute; thể đ&aacute;p ứng c&aacute;c đơn h&agrave;ng trong thời gian ngắn hơn nữa. Hẹn gặp lại ở c&aacute;c đơn h&agrave;ng sau.</p>\r\n<p><img class=\"img-fluid\" src=\"http://localhost/eu/backend/news/images/news/news-detail-1.jpg\" alt=\"\" /></p>\r\n<p>Một trong những triển l&atilde;m uy t&iacute;n c&oacute; thương hiệu l&agrave; &ldquo;Triển l&atilde;m quốc tế Vietbuild&rdquo; được tổ chức thường ni&ecirc;n tại c&aacute;c th&agrave;nh phố lớn tr&ecirc;n cả nước. Triển l&atilde;m năm nay tại Trung t&acirc;m Hội chợ Triển l&atilde;m Việt Nam 148 Giảng V&otilde;, Q. Ba Đ&igrave;nh, Tp H&agrave; Nội diễn ra từ ng&agrave;y 11/11/2015 đến 15/11/2015 đ&atilde; quy tụ rất nhiều doanh nghiệp hoạt động trong lĩnh vực x&acirc;y dựng &ndash; bất động sản tham gia để quảng b&aacute; thương hiệu v&agrave; giới thiệu những sản phẩm của doanh nghiệp m&igrave;nh tới kh&aacute;ch h&agrave;ng. Đến với triển l&atilde;m, kh&aacute;ch h&agrave;ng được thoải m&aacute;i t&igrave;m hiểu trực tiếp về sản phẩm m&igrave;nh cần, về thương hiệu m&igrave;nh mua v&agrave; c&oacute; cơ hội được so s&aacute;nh trực tiếp để đưa ra lựa chọn tốt nhất cho m&igrave;nh.</p>\r\n<p>Th&agrave;nh lập v&agrave; đi v&agrave;o hoạt động được 7 năm, đ&atilde; tạo được thương hiệu v&agrave; dấu ấn tr&ecirc;n thị trường đối với ng&agrave;nh mũi nhọn của m&igrave;nh nhưng đ&acirc;y l&agrave; lần đầu ti&ecirc;n C&ocirc;ng ty TNHH thiết bị điện nước H&agrave; Th&agrave;nh tham dự hội chợ Triển l&atilde;m quốc tế Vietbuild.</p>\r\n<p>Ch&uacute;ng t&ocirc;i h&acirc;n hoan tham gia Hội chợ triển l&atilde;m chuy&ecirc;n về ng&agrave;nh vật liệu x&acirc;y dựng v&agrave; tự h&agrave;o l&agrave; đơn vị lu&ocirc;n cam kết về chất lượng sản phẩm m&agrave; c&ocirc;ng ty sản xuất. Ch&uacute;ng t&ocirc;i c&oacute; niềm tin l&agrave; sẽ đưa c&aacute;c sản phẩm về phụ kiện nối ống nhựa HDPE thương hiệu HATHACO th&agrave;nh một thương hiệu phổ biến c&oacute; mặt tại c&aacute;c c&ocirc;ng tr&igrave;nh trải d&agrave;i từ Bắc v&agrave;o Nam.</p>\r\n<p>Tại hội chợ lần n&agrave;y, C&ocirc;ng ty TNHH thiết bị điện nước H&agrave; Th&agrave;nh mang tới rất nhiều c&aacute;c chủng loại h&agrave;ng h&oacute;a. C&aacute;c sản phẩm m&agrave; ch&uacute;ng t&ocirc;i kinh doanh gồm c&aacute;c loại phụ kiện nối ống bằng nhựa PP d&ugrave;ng cho ống HDPE bằng phương ph&aacute;p nối vặn ren, van rắc co PP, phụ kiện PE h&agrave;n nhiệt v&agrave; c&aacute;c loại m&aacute;y h&agrave;n ống HDPE c&aacute;c loại: m&aacute;y h&agrave;n cầm tay, m&aacute;y h&agrave;n quay tay v&agrave; m&aacute;y h&agrave;n ống HDPE thủy lực. Đặc biệt c&aacute;c sản phẩm phụ kiện nối vặn ren do c&ocirc;ng ty ch&uacute;ng t&ocirc;i sản xuất mang thương hiệu HATHACO đ&atilde; nhận được rất nhiều sự quan t&acirc;m của kh&aacute;ch h&agrave;ng v&igrave; l&agrave; h&agrave;ng Việt Nam.</p>\r\n<p>Trong bối cảnh to&agrave;n d&acirc;n chung tay ph&aacute;t triển đất nước th&igrave; việc người Việt Nam sử dụng h&agrave;ng Việt Nam đều được khuyến kh&iacute;ch, trong khi h&agrave;ng Việt Nam chất lượng v&agrave; mẫu m&agrave; ho&agrave;n to&agrave;n được đảm bảo!</p>\r\n<p>Ch&uacute;ng t&ocirc;i tự tin cam kết về sản phẩm của m&igrave;nh được l&agrave;m từ nhựa nguy&ecirc;n sinh 100% v&agrave; lu&ocirc;n c&oacute; chế độ bảo h&agrave;nh đối với c&aacute;c sản phẩm của C&ocirc;ng ty. Rất mong nhận được sự ủng hộ của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i c&oacute; thể khẳng định m&igrave;nh hơn nữa!</p>\r\n<p><img class=\"img-fluid\" src=\"http://localhost/eu/backend/news/images/news/news-detail-2.jpg\" alt=\"\" /></p>\r\n<p>Việc mở rộng quy m&ocirc; sản xuất n&agrave;y sẽ gi&uacute;p năng lực sản xuất của c&ocirc;ng ty tăng l&ecirc;n đ&aacute;ng kể, qua đ&oacute; ch&uacute;ng t&ocirc;i c&oacute; thể đ&aacute;p ứng c&aacute;c đơn h&agrave;ng trong thời gian ngắn hơn nữa. Hẹn gặp lại ở c&aacute;c đơn h&agrave;ng sau.</p>', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 1, '2017-12-22 02:32:52', '2017-12-21 19:32:52'),
(2, 46, 5, 'Một số kinh nghiệm sử dụng máy hàn ống HDPE', 'happy birth day', 'mot-so-kinh-nghiem-su-dung-may-han-ong-hdpe', 'happy-birth-day', '1509591872_news-item-3.jpg', '', 'Bên cạnh việc sản xuất, chúng tôi còn nhập khẩu và phân phối các sản phẩm như: phụ kiện HDPE hàn nối đầu, phụ kiện HDPE hàn điện trở, các loại máy hàn ống nhựa HDPE, máy thử áp lực…', NULL, '<p>Th&aacute;ng 5/2016 đ&aacute;nh dấu bước ph&aacute;t triển tiếp theo của c&ocirc;ng ty TNHH Thiết bị điện nước H&agrave; Th&agrave;nh, khi ch&uacute;ng t&ocirc;i li&ecirc;n tiếp nhập về th&ecirc;m 2 m&aacute;y &eacute;p nhựa, n&acirc;ng tổng số m&aacute;y l&ecirc;n 8 chiếc với c&ocirc;ng suất từ 100 tấn cho đến 400 tấn. Vẫn l&agrave; những m&aacute;y nhựa mới 100% mang thương hiệu Hải Thi&ecirc;n, thương hiệu tỷ đ&ocirc; nổi tiếng nhất Trung Quốc (b&aacute;n được 26.000 m&aacute;y, doanh thu 1.13 tỷ USD trong năm 2015) được ch&uacute;ng t&ocirc;i tin tưởng sử dụng. Việc mở rộng quy m&ocirc; sản xuất n&agrave;y sẽ gi&uacute;p năng lực sản xuất của c&ocirc;ng ty tăng l&ecirc;n đ&aacute;ng kể, qua đ&oacute; ch&uacute;ng t&ocirc;i c&oacute; thể đ&aacute;p ứng c&aacute;c đơn h&agrave;ng trong thời gian ngắn hơn nữa. Hẹn gặp lại ở c&aacute;c đơn h&agrave;ng sau.</p>\r\n<p><img class=\"img-fluid\" src=\"http://localhost/eu/backend/news/images/news/news-detail-1.jpg\" alt=\"\" /></p>\r\n<p>Một trong những triển l&atilde;m uy t&iacute;n c&oacute; thương hiệu l&agrave; &ldquo;Triển l&atilde;m quốc tế Vietbuild&rdquo; được tổ chức thường ni&ecirc;n tại c&aacute;c th&agrave;nh phố lớn tr&ecirc;n cả nước. Triển l&atilde;m năm nay tại Trung t&acirc;m Hội chợ Triển l&atilde;m Việt Nam 148 Giảng V&otilde;, Q. Ba Đ&igrave;nh, Tp H&agrave; Nội diễn ra từ ng&agrave;y 11/11/2015 đến 15/11/2015 đ&atilde; quy tụ rất nhiều doanh nghiệp hoạt động trong lĩnh vực x&acirc;y dựng &ndash; bất động sản tham gia để quảng b&aacute; thương hiệu v&agrave; giới thiệu những sản phẩm của doanh nghiệp m&igrave;nh tới kh&aacute;ch h&agrave;ng. Đến với triển l&atilde;m, kh&aacute;ch h&agrave;ng được thoải m&aacute;i t&igrave;m hiểu trực tiếp về sản phẩm m&igrave;nh cần, về thương hiệu m&igrave;nh mua v&agrave; c&oacute; cơ hội được so s&aacute;nh trực tiếp để đưa ra lựa chọn tốt nhất cho m&igrave;nh.</p>\r\n<p>Th&agrave;nh lập v&agrave; đi v&agrave;o hoạt động được 7 năm, đ&atilde; tạo được thương hiệu v&agrave; dấu ấn tr&ecirc;n thị trường đối với ng&agrave;nh mũi nhọn của m&igrave;nh nhưng đ&acirc;y l&agrave; lần đầu ti&ecirc;n C&ocirc;ng ty TNHH thiết bị điện nước H&agrave; Th&agrave;nh tham dự hội chợ Triển l&atilde;m quốc tế Vietbuild.</p>\r\n<p>Ch&uacute;ng t&ocirc;i h&acirc;n hoan tham gia Hội chợ triển l&atilde;m chuy&ecirc;n về ng&agrave;nh vật liệu x&acirc;y dựng v&agrave; tự h&agrave;o l&agrave; đơn vị lu&ocirc;n cam kết về chất lượng sản phẩm m&agrave; c&ocirc;ng ty sản xuất. Ch&uacute;ng t&ocirc;i c&oacute; niềm tin l&agrave; sẽ đưa c&aacute;c sản phẩm về phụ kiện nối ống nhựa HDPE thương hiệu HATHACO th&agrave;nh một thương hiệu phổ biến c&oacute; mặt tại c&aacute;c c&ocirc;ng tr&igrave;nh trải d&agrave;i từ Bắc v&agrave;o Nam.</p>\r\n<p>Tại hội chợ lần n&agrave;y, C&ocirc;ng ty TNHH thiết bị điện nước H&agrave; Th&agrave;nh mang tới rất nhiều c&aacute;c chủng loại h&agrave;ng h&oacute;a. C&aacute;c sản phẩm m&agrave; ch&uacute;ng t&ocirc;i kinh doanh gồm c&aacute;c loại phụ kiện nối ống bằng nhựa PP d&ugrave;ng cho ống HDPE bằng phương ph&aacute;p nối vặn ren, van rắc co PP, phụ kiện PE h&agrave;n nhiệt v&agrave; c&aacute;c loại m&aacute;y h&agrave;n ống HDPE c&aacute;c loại: m&aacute;y h&agrave;n cầm tay, m&aacute;y h&agrave;n quay tay v&agrave; m&aacute;y h&agrave;n ống HDPE thủy lực. Đặc biệt c&aacute;c sản phẩm phụ kiện nối vặn ren do c&ocirc;ng ty ch&uacute;ng t&ocirc;i sản xuất mang thương hiệu HATHACO đ&atilde; nhận được rất nhiều sự quan t&acirc;m của kh&aacute;ch h&agrave;ng v&igrave; l&agrave; h&agrave;ng Việt Nam.</p>\r\n<p>Trong bối cảnh to&agrave;n d&acirc;n chung tay ph&aacute;t triển đất nước th&igrave; việc người Việt Nam sử dụng h&agrave;ng Việt Nam đều được khuyến kh&iacute;ch, trong khi h&agrave;ng Việt Nam chất lượng v&agrave; mẫu m&agrave; ho&agrave;n to&agrave;n được đảm bảo!</p>\r\n<p>Ch&uacute;ng t&ocirc;i tự tin cam kết về sản phẩm của m&igrave;nh được l&agrave;m từ nhựa nguy&ecirc;n sinh 100% v&agrave; lu&ocirc;n c&oacute; chế độ bảo h&agrave;nh đối với c&aacute;c sản phẩm của C&ocirc;ng ty. Rất mong nhận được sự ủng hộ của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i c&oacute; thể khẳng định m&igrave;nh hơn nữa!</p>\r\n<p><img class=\"img-fluid\" src=\"http://localhost/eu/backend/news/images/news/news-detail-2.jpg\" alt=\"\" /></p>\r\n<p>Việc mở rộng quy m&ocirc; sản xuất n&agrave;y sẽ gi&uacute;p năng lực sản xuất của c&ocirc;ng ty tăng l&ecirc;n đ&aacute;ng kể, qua đ&oacute; ch&uacute;ng t&ocirc;i c&oacute; thể đ&aacute;p ứng c&aacute;c đơn h&agrave;ng trong thời gian ngắn hơn nữa. Hẹn gặp lại ở c&aacute;c đơn h&agrave;ng sau.</p>', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 2, '2017-12-22 02:32:39', '2017-12-21 19:32:39'),
(8, 46, 5, 'tin tuc demo multi language', 'new multi laguage', 'tin-tuc-demo-multi-language', 'new-multi-laguage', '1513909848_news-item-11.jpg', '', 'sdf', 'sfd', '<p>fd s fsd&nbsp;</p>', NULL, 1, 0, 'fx', 'sf sf', 'fx', 'xx', 'fx', 's', 'tin-tuc', 0, '2017-12-22 02:30:48', '2017-12-21 19:30:48'),
(9, 45, 5, 'tin moi 1x', 'demo new 1x', 'tin-moi-1x', 'demo-new-1x', '1513762114_news-item-1.jpg', '', 'Bao Bì Pp, Bao Cám Con Cò, Bao Đạm, Bao Pp, Thân Thiện Môi Trường...', 'description englis', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 0, '2017-12-22 02:29:49', '2017-12-21 19:29:49'),
(12, 0, 5, 'Sự khác biệt 1', 'Differentiation 1', 'su-khac-biet-1', 'differentiation-1', '1513831028_news-item-7.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'su-khac-biet', 0, '2017-12-21 04:37:45', '2017-12-20 21:37:44'),
(11, 0, 5, 'Sự khác biệt 2', 'Differentiation 2', 'su-khac-biet-2', 'differentiation-2', '1513830921_news-item-6.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'su-khac-biet', 0, '2017-12-21 04:37:56', '2017-12-20 21:37:56'),
(13, 0, 5, 'Sự khác biệt 3', 'Differentiation 3', 'su-khac-biet-3', 'differentiation-3', '1513831050_news-item-4.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'su-khac-biet', 0, '2017-12-20 21:37:30', '2017-12-20 21:37:30'),
(14, 0, 5, 'Quan hệ cổ đông 1', 'relation 1', 'quan-he-co-dong-1', 'relation-1', '1513831182_news-item-8.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'quan-he-co-dong', 0, '2017-12-20 21:39:42', '2017-12-20 21:39:42'),
(15, 0, 5, 'Quan hệ cổ đông 2', 'relation 2', 'quan-he-co-dong-2', 'relation-2', '1513831196_news-item-9.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'quan-he-co-dong', 0, '2017-12-20 21:39:56', '2017-12-20 21:39:56'),
(16, 0, 5, 'quan hệ cổ đông 3', 'relation 3', 'quan-he-co-dong-3', 'relation-3', '1513831226_news-item-10.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'quan-he-co-dong', 0, '2017-12-20 21:40:26', '2017-12-20 21:40:26'),
(17, 0, 5, 'Tin tuyển dụng 1', 'recruitment 1', 'tin-tuyen-dung-1', 'recruitment-1', '1513999483_recruitment-item-1.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 0, '2017-12-23 03:24:43', '2017-12-22 20:24:43'),
(18, 0, 5, 'Tin tuyển dụng 2', 'recruitment 2', 'tin-tuyen-dung-2', 'recruitment-2', '1513999498_recruitment-item-2.jpg', '', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 0, '2017-12-22 20:24:58', '2017-12-22 20:24:58'),
(19, 0, 5, 'Tin tuyển dụng 3', 'recruitment 3', 'tin-tuyen-dung-3', 'recruitment-3', '1513999514_recruitment-item-3.jpg', '', NULL, NULL, '<p>fdfff</p>', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 0, '2017-12-23 03:35:46', '2017-12-22 20:35:46'),
(4, 45, 5, 'Một số kinh nghiệm sử dụng ống hàn', 'happy women day 20-10', 'mot-so-kinh-nghiem-su-dung-ong-han', 'happy-women-day-20-10', '1509604750_news-item-5.jpg', '', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 4, '2017-12-21 04:14:57', '2017-12-20 21:14:57'),
(7, 45, 5, 'Vì sao nên sử dụng bao bì nhựa pp', 'Why use pp plastic packaging?', 'vi-sao-nen-su-dung-bao-bi-nhua-pp', 'why-use-pp-plastic-packaging', '1513760995_news-item-1.jpg', '', 'Bao Bì Pp, Bao Cám Con Cò, Bao Đạm, Bao Pp, Thân Thiện Môi Trường...', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,', '<p>Bao B&igrave; Pp, Bao C&aacute;m Con C&ograve;, Bao Đạm, Bao Pp, Th&acirc;n Thiện M&ocirc;i Trường...&nbsp;Bao B&igrave; Pp, Bao C&aacute;m Con C&ograve;, Bao Đạm, Bao Pp, Th&acirc;n Thiện M&ocirc;i Trường...</p>\r\n<p>Bao B&igrave; Pp, Bao C&aacute;m Con C&ograve;, Bao Đạm, Bao Pp, Th&acirc;n Thiện M&ocirc;i Trường...</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 0, '2017-12-22 02:32:22', '2017-12-21 19:32:22');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `user_id`, `name`, `link`, `email`, `phone`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(45, 0, NULL, NULL, 'chuonghoanghong@gmail.com', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2017-12-22 06:43:37', '2017-12-21 23:43:37'),
(46, 0, NULL, NULL, 'c@gmail.com', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2017-12-21 23:47:00', '2017-12-21 23:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias_en` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `mota_en` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `title_en` text CHARACTER SET utf8,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `keyword_en` text CHARACTER SET utf8,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `background` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `mota`, `mota_en`, `status`, `lever`, `parent_id`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `com`, `stt`, `created_at`, `background`, `updated_at`) VALUES
(47, 'Tin tức', NULL, 'tin-tuc', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 1, '2017-12-21 04:11:30', '', '2017-12-20 21:11:30'),
(50, 'Tin tuyển dụng', NULL, 'tin-tuyen-dung', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 1, '2017-12-20 21:41:18', '', '2017-12-20 21:41:18'),
(51, 'Việc làm', NULL, 'viec-lam', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tuyen-dung', 2, '2017-12-20 21:44:53', '', '2017-12-20 21:44:53'),
(54, 'Sự khác biệtx', NULL, 'su-khac-bietx', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'bai-viet', 2, '2017-12-22 02:37:22', '', '2017-12-21 19:37:22'),
(55, 'Quan hệ cổ đôngx', NULL, 'quan-he-co-dongx', '', '', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'bai-viet', 3, '2017-12-22 02:37:31', '', '2017-12-21 19:37:31'),
(45, 'Tin hoạt động', 'Action news', 'tin-hoat-dong', 'action-news', '', NULL, NULL, 1, 0, 47, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 1, '2017-12-22 02:49:41', '', '2017-12-21 19:49:41'),
(46, 'Tin chứng khoán', NULL, 'tin-chung-khoan', '', '', NULL, NULL, 1, 0, 47, NULL, NULL, NULL, NULL, NULL, NULL, 'tin-tuc', 2, '2017-12-21 04:11:41', '', '2017-12-20 21:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `hoten` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `qty` text COLLATE utf8_unicode_ci NOT NULL,
  `totalprice` int(11) NOT NULL,
  `tonggia` int(11) NOT NULL,
  `donhang` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `tinhtrang` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `com` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `name`, `name_en`, `url`, `photo`, `desc`, `content`, `com`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Đối tác 1', NULL, NULL, '1509608276_partner-3.jpg', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:37:56', '2017-11-02 00:39:58'),
(4, 'Đối tác 2', NULL, NULL, '1509608386_partner-1.jpg', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:39:46', '2017-11-02 00:39:46'),
(5, 'Đối tác 3', NULL, NULL, '1509608395_partner-2.jpg', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:39:55', '2017-11-02 00:39:55'),
(6, 'Đối tác 4', NULL, NULL, '1509608410_partner-4.jpg', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:40:10', '2017-11-02 00:40:10'),
(7, 'Đối tác 5', NULL, NULL, '1509608420_partner-5.jpg', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:40:20', '2017-11-02 00:40:20'),
(8, 'Đối tác 6', NULL, NULL, '1509608429_partner-6.jpg', NULL, NULL, 'doi-tac', 1, '2017-11-02 00:40:29', '2017-11-02 00:40:29');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `photo` text,
  `name` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `code` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) DEFAULT '0',
  `price_old` int(11) DEFAULT '0',
  `mota` longtext COLLATE utf8_unicode_ci,
  `mota_en` text CHARACTER SET utf8,
  `content` longtext COLLATE utf8_unicode_ci,
  `content_en` text CHARACTER SET utf8,
  `thuonghieu` text COLLATE utf8_unicode_ci,
  `tinhtrang` int(11) NOT NULL DEFAULT '1',
  `baohanh` text COLLATE utf8_unicode_ci,
  `properties` text CHARACTER SET utf8,
  `model` text COLLATE utf8_unicode_ci,
  `namsanxuat` text COLLATE utf8_unicode_ci,
  `ratepoint` int(2) DEFAULT NULL,
  `quatang` text COLLATE utf8_unicode_ci,
  `huongdan` text COLLATE utf8_unicode_ci,
  `vanchuyen` text COLLATE utf8_unicode_ci,
  `noibat` int(11) NOT NULL DEFAULT '0',
  `spbc` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `title_en` text CHARACTER SET utf8,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `keyword_en` text CHARACTER SET utf8,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text CHARACTER SET utf8,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `cate_id`, `code`, `stt`, `name`, `name_en`, `alias`, `alias_en`, `photo`, `price`, `sale`, `price_old`, `mota`, `mota_en`, `content`, `content_en`, `thuonghieu`, `tinhtrang`, `baohanh`, `properties`, `model`, `namsanxuat`, `ratepoint`, `quatang`, `huongdan`, `vanchuyen`, `noibat`, `spbc`, `status`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `created_at`, `updated_at`) VALUES
(1, 5, 25, NULL, 1, 'Cút ren ngoài', NULL, 'cut-ren-ngoai', NULL, '1513916386_shop-item-4.jpg', 0, 0, 0, '<p>M&aacute;y thử &aacute;p lực nước bằng tay cho ph&eacute;p thử nghiệm &aacute;p lực nước đối với phụ kiện HDPE, ống HDPE, phụ kiện h&agrave;n PE. &Aacute;p lực bơm bằng tay c&oacute; thể l&ecirc;n tới tr&ecirc;n 60MPa (tương đương 611.8 Kg/cm2). &Aacute;p suất n&agrave;y tr&ecirc;n thực tế l&agrave; dư so với y&ecirc;u cầu kiểm tra &aacute;p lực đối với phụ kiện HDPE v&agrave; ống HDPE th&ocirc;ng thường.</p>', NULL, '<p>M&aacute;y thử &aacute;p lực nước bằng tay cho ph&eacute;p thử nghiệm &aacute;p lực nước đối với phụ kiện HDPE, ống HDPE, phụ kiện h&agrave;n PE. &Aacute;p lực bơm bằng tay c&oacute; thể l&ecirc;n tới tr&ecirc;n 60MPa (tương đương 611.8 Kg/cm2). &Aacute;p suất n&agrave;y tr&ecirc;n thực tế l&agrave; dư so với y&ecirc;u cầu kiểm tra &aacute;p lực đối với phụ kiện HDPE v&agrave; ống HDPE th&ocirc;ng thường.</p>', NULL, NULL, 0, NULL, 'Thành phần chính: PP###Công nghệ sản xuất: Ép phun###Loại hàng: Măng sông###Nơi sản xuất: Thành phố Hải Dương, Việt Nam###Thương hiệu: HATHACO###Phương pháp nối: Nối nhanh###Màu sắc: Đen, xanh, trắng', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 04:19:46', '2017-12-21 21:19:46'),
(2, 5, 22, NULL, 2, 'Tê điều hàn', 'categories 11', 'te-dieu-han', NULL, '1513916396_shop-item-7.jpg', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 07:46:58', '2017-12-22 00:46:58'),
(3, 5, 1, NULL, 3, 'Măng sông ren ngoài', NULL, 'mang-song-ren-ngoai', NULL, '1509597441_shop-item-3.png', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, 3, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-06 07:37:38', '2017-11-06 00:37:38'),
(4, 5, 1, NULL, 4, 'Măng sông mặt bích', NULL, 'mang-song-mat-bich', NULL, '1509597967_shop-item-7.png', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-06 08:18:08', '2017-11-06 01:18:08'),
(6, 5, 4, NULL, 6, 'Cút đều HDPE vặn ren', NULL, 'cut-deu-hdpe-van-ren', NULL, '1509597683_shop-item-4.png', 1000000, 0, 0, NULL, NULL, '<p>Đ&egrave;n ch&ugrave;m trang tr&iacute; tạo kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch ấm c&uacute;ng v&agrave; sang trọng</p>\r\n<p>nh s&aacute;ng của đ&egrave;n ch&ugrave;m ph&ograve;ng kh&aacute;ch cực kỳ quan trọng trong việc trang tr&iacute; nội thất căn ph&ograve;ng. Ngo&agrave;i những c&ocirc;ng năng trang tr&iacute; chiếu s&aacute;ng th&ocirc;ng thường ch&uacute;ng c&ograve;n g&oacute;p phần t&ocirc;n l&ecirc;n vẻ đẹp sang trọng, ấm c&uacute;ng cho căn ph&ograve;ng kh&aacute;ch của bạn.</p>\r\n<p>Để tạo ra một ko gian ấm &aacute;p với &aacute;nh nguồn &aacute;nh s&aacute;ng dịu nhẹ, lan tỏa bạn cần treo một chiếc đ&egrave;n ch&ugrave;m trang tr&iacute; đảm bảo cường độ &aacute;nh s&aacute;ng vừa phải, nguồn &aacute;nh s&aacute;ng t&ocirc;ng v&agrave;ng sẽ mang lại một cảm gi&aacute;c ấm &aacute;p cho căn ph&ograve;ng v&agrave; đỡ tr&oacute;i mắt . Ngo&agrave;i ra treo một đ&egrave;n ch&ugrave;m pha l&ecirc; lớn tr&ecirc;n trần của ph&ograve;ng ăn cũng rất tốt v&igrave; n&oacute; tượng trưng cho năng lượng dương, rất tốt cho c&aacute;c bữa ăn.</p>\r\n<p>Lựa chọn đ&egrave;n trang tr&iacute; ph&ugrave; hợp cho ph&ograve;ng kh&aacute;ch Đ&egrave;n ch&ugrave;m ph&ograve;ng kh&aacute;ch phải tạo được cho căn ph&ograve;ng kh&ocirc;ng gian ấm c&uacute;ng v&agrave; sang trọng. C&oacute; thể bố tr&iacute; cho ph&ograve;ng kh&aacute;ch những ngọn đ&egrave;n ch&ugrave;m đẹp lấp l&aacute;nh sẽ l&agrave;m cho ph&ograve;ng kh&aacute;ch th&ecirc;m lung linh</p>\r\n<p>C&oacute; rất nhiều loại đ&egrave;n trang tr&iacute; nội thất như đ&egrave;n ch&ugrave;m, đ&egrave;n trần, đ&egrave;n b&agrave;n, ... mỗi loại c&oacute; một ưu điểm v&agrave; c&aacute;ch b&agrave;i tr&iacute; xắp đặt ri&ecirc;ng, v&igrave; k&iacute;ch cỡ mỗi loại kh&aacute;c nhau n&ecirc;n cần phải lụa chọn cho ph&ugrave; hợp với từng kh&ocirc;ng gian</p>\r\n<p>Ch&iacute;nh v&igrave; vậy m&agrave; treo đ&egrave;n ch&ugrave;m trang tr&iacute; ph&ograve;ng kh&aacute;ch cần phải hiểu r&otilde; chức năng, biết lựa chọn đ&egrave;n c&oacute; k&iacute;ch thước ph&ugrave; hợp, ngo&agrave;i việc bạn cần hiểu về đặc điểm từng loại ra th&igrave; đ&egrave;n c&ograve;n phải gắn với kh&ocirc;ng gian kiến tr&uacute;c v&agrave; nội thất.</p>', NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-02 04:41:23', '2017-11-01 21:41:23'),
(7, 5, 1, NULL, 7, 'Cút ren trong', NULL, 'cut-ren-trong', NULL, '1509597770_shop-item-5.png', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, 4, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-06 07:32:25', '2017-11-06 00:32:25'),
(8, 5, 0, NULL, 8, 'Mang sông ren trong', NULL, 'mang-song-ren-trong', NULL, '1509598229_shop-item-8.png', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-26 01:18:54', '2017-12-25 18:18:54'),
(9, 5, 24, NULL, 9, 'Sản phẩm hàn điện trở', NULL, 'san-pham-han-dien-tro', NULL, '1513916375_shop-item-9.jpg', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 04:19:35', '2017-12-21 21:19:35'),
(10, 5, 2, NULL, 10, 'Đai khởi thủy 3', NULL, 'dai-khoi-thuy-3', NULL, '1509934668_shop-item-3.png', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-06 02:17:48', '2017-11-05 19:17:48'),
(11, 5, 19, NULL, 11, 'Hàn điện trở 1', NULL, 'han-dien-tro-1', NULL, '1513916346_shop-item-8.jpg', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Hãng sản xuất: Apple###sdf sf###sdf s sdf###Xuất xứ: Chính hãng', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 04:19:06', '2017-12-21 21:19:06'),
(13, 5, 18, NULL, 13, 'Sản phẩm hàn lồng 2x', 'product demo english 2', 'san-pham-han-long-2x', NULL, '1513916335_shop-item-7.jpg', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-23 01:56:43', '2017-12-22 18:56:43'),
(14, 5, 16, NULL, 14, 'Sản phẩm hàn lồng 1', NULL, 'san-pham-han-long-1', NULL, '1513916324_shop-item-6.jpg', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'man hinh full hd###bo nho 32gb', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 04:18:44', '2017-12-21 21:18:44'),
(17, 5, 14, NULL, 16, 'Đai khởi thủy 2', NULL, 'dai-khoi-thuy-2', NULL, '1513916310_shop-item-5.jpg', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 04:18:30', '2017-12-21 21:18:30'),
(18, 5, 15, NULL, 17, 'Đai khởi thủy 1', NULL, 'dai-khoi-thuy-1', NULL, '1513916300_shop-item-4.jpg', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 04:18:20', '2017-12-21 21:18:20'),
(19, 5, 13, NULL, 18, 'Hàng vặn ren 1', NULL, 'hang-van-ren-1', NULL, '1513916277_shop-item-2.jpg', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, 4, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 04:17:57', '2017-12-21 21:17:57'),
(20, 5, 12, NULL, 16, 'adf s', 'demo englishx', 'adf-s', 'demo-english', '1513916268_shop-item-1.jpg', 0, 0, 0, '<p>sdf sdf&nbsp;</p>', '<p>description english</p>', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'sf s', 'sdsfdsfdsfd', 'sfs', 'sdsdssfdsfdfssfdsfd', 'sfsf', 'fsdfs', '2017-12-23 02:24:57', '2017-12-22 19:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `stt` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text CHARACTER SET utf8,
  `mota_en` text CHARACTER SET utf8,
  `photo` text COLLATE utf8_unicode_ci,
  `noibat` int(2) DEFAULT '0',
  `status` int(11) NOT NULL,
  `lever` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `keyword_en` text CHARACTER SET utf8,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `stt`, `name`, `name_en`, `alias`, `mota`, `mota_en`, `photo`, `noibat`, `status`, `lever`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `created_at`, `updated_at`) VALUES
(9, 0, 2, 'Túi shoping', 'SHOPPING BAG', 'tui-shoping', '<p>Hạt nhựa t&aacute;i sinh l&agrave; nhựa được t&aacute;i chế nhiều lần từ nhựa nguy&ecirc;n sinh hoặc ch&iacute;nh n&oacute;. Nhựa t&aacute;i sinh c&oacute; gi&aacute; th&agrave;nh rẻ hơn nhựa nguy&ecirc;n sinh n&ecirc;n được sử dụng rất nhiều trong cuộc sống</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br /> tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', '1513820931_cate-item-3.jpg', 0, 1, 0, NULL, NULL, NULL, NULL, '<p>Hạt nhựa t&aacute;i sinh l&agrave; nhựa được t&aacute;i chế nhiều lần từ nhựa nguy&ecirc;n sinh hoặc ch&iacute;nh n&oacute;. Nhựa t&aacute;i sinh c&oacute; gi&aacute; th&agrave;nh rẻ hơn nhựa nguy&ecirc;n sinh n&ecirc;n được sử dụng rất nhiều trong cuộc sống</p>', NULL, '2017-12-21 01:59:26', '2017-12-20 18:59:26'),
(8, 0, 1, 'Hạt nhựa tái sinh', 'recycled plastic particles', 'hat-nhua-tai-sinh', NULL, '<p>Recycled plastic is plastic that is recycled several times from primary or secondary plastic. Recycled plastics are cheaper than plastics and should be used a lot in their life</p>', '1513820944_cate-item-1.jpg', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 01:49:04', '2017-12-20 18:49:04'),
(10, 0, 3, 'Bao bì nông nghiệp', 'agricultural packagingx', 'bao-bi-nong-nghiep', '<p>Hạt nhựa t&aacute;i sinh l&agrave; nhựa được t&aacute;i chế nhiều lần từ nhựa nguy&ecirc;n sinh hoặc ch&iacute;nh n&oacute;. Nhựa t&aacute;i sinh c&oacute; gi&aacute; th&agrave;nh rẻ hơn nhựa nguy&ecirc;n sinh n&ecirc;n được sử dụng rất nhiều trong cuộc sống</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br /> tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', '1513820854_cate-item-2.jpg', 0, 1, 0, NULL, NULL, NULL, NULL, '<p>Hạt nhựa t&aacute;i sinh l&agrave; nhựa được t&aacute;i chế nhiều lần từ nhựa nguy&ecirc;n sinh hoặc ch&iacute;nh n&oacute;. Nhựa t&aacute;i sinh c&oacute; gi&aacute; th&agrave;nh rẻ hơn nhựa nguy&ecirc;n sinh n&ecirc;n được sử dụng rất nhiều trong cuộc sống</p>', NULL, '2017-12-21 01:57:11', '2017-12-20 18:57:11'),
(11, 0, 4, 'Bao bì pp', 'pp packaging', 'bao-bi-pp', '<p>Hạt nhựa t&aacute;i sinh l&agrave; nhựa được t&aacute;i chế nhiều lần từ nhựa nguy&ecirc;n sinh hoặc ch&iacute;nh n&oacute;. Nhựa t&aacute;i sinh c&oacute; gi&aacute; th&agrave;nh rẻ hơn nhựa nguy&ecirc;n sinh n&ecirc;n được s</p>', '<p>Recycled plastic is plastic that is recycled several times from primary or secondary plastic. Recycled plastics are cheaper than plastics and should be used a lot in their life</p>', '1513820919_cate-item-4.jpg', 0, 1, 0, NULL, NULL, NULL, NULL, '<p>Hạt nhựa t&aacute;i sinh l&agrave; nhựa được t&aacute;i chế nhiều lần từ nhựa nguy&ecirc;n sinh hoặc ch&iacute;nh n&oacute;. Nhựa t&aacute;i sinh c&oacute; gi&aacute; th&agrave;nh rẻ hơn nhựa nguy&ecirc;n sinh n&ecirc;n được sử dụng rất nhiều trong cuộc sống</p>', NULL, '2017-12-21 01:57:42', '2017-12-20 18:57:42'),
(12, 8, 5, 'danh mục con 1', 'categories 1', 'danh-muc-con-1', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 07:19:53', '2017-12-22 00:19:53'),
(13, 8, 6, 'Danh mục con 2', 'categories 2', 'danh-muc-con-2', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 07:20:13', '2017-12-22 00:20:13'),
(14, 8, 7, 'Danh mục con 3', NULL, 'danh-muc-con-3', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 03:21:36', '2017-12-20 20:21:36'),
(15, 8, 8, 'Danh mục con 4', NULL, 'danh-muc-con-4', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 03:22:42', '2017-12-20 20:22:42'),
(16, 9, 9, 'Danh mục con 5', 'categories 5', 'danh-muc-con-5', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 07:20:42', '2017-12-22 00:20:42'),
(17, 9, 10, 'Danh mục con 6', 'categories 6', 'danh-muc-con-6', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 07:21:03', '2017-12-22 00:21:03'),
(18, 9, 11, 'Danh mục con 7', NULL, 'danh-muc-con-7', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 20:23:23', '2017-12-20 20:23:23'),
(19, 9, 12, 'Danh mục con 8', NULL, 'danh-muc-con-8', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 20:23:31', '2017-12-20 20:23:31'),
(20, 10, 13, 'Danh mục con 9', NULL, 'danh-muc-con-9', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 20:23:44', '2017-12-20 20:23:44'),
(21, 10, 14, 'Danh mục con 10', NULL, 'danh-muc-con-10', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 20:23:57', '2017-12-20 20:23:57'),
(22, 10, 15, 'Danh mục con 11', NULL, 'danh-muc-con-11', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 20:24:11', '2017-12-20 20:24:11'),
(23, 10, 16, 'Danh mục con 12', NULL, 'danh-muc-con-12', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 20:24:22', '2017-12-20 20:24:22'),
(24, 11, 17, 'Danh mục con 13', NULL, 'danh-muc-con-13', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 20:24:36', '2017-12-20 20:24:36'),
(25, 11, 18, 'Danh mục con 14', NULL, 'danh-muc-con-14', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 20:24:47', '2017-12-20 20:24:47'),
(26, 11, 19, 'Danh mục con 15', NULL, 'danh-muc-con-15', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 20:24:57', '2017-12-20 20:24:57'),
(27, 11, 20, 'Danh mục con 16', NULL, 'danh-muc-con-16', NULL, NULL, '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 20:25:10', '2017-12-20 20:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `province_name` varchar(250) DEFAULT NULL,
  `province_en` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `province_name`, `province_en`, `created_at`, `updated_at`) VALUES
(8, 'Hà Nội', 'Ha noi', '2017-12-20 22:01:17', '2017-12-22 21:01:21'),
(9, 'Đà Nẵng', 'Da Nang', '2017-12-20 22:01:26', '2017-12-22 21:01:30'),
(10, 'Hải Phòng', 'Hai Phong', '2017-12-20 22:01:32', '2017-12-22 21:01:35');

-- --------------------------------------------------------

--
-- Table structure for table `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruitment`
--

INSERT INTO `recruitment` (`id`, `name`, `address`, `phone`, `email`, `created_at`, `updated_at`, `status`) VALUES
(6, 'Công ty Gco', 'trường chinh, thanh xuân, hà nội', '0943249', 'gco@gmail.com', '2017-09-15 04:21:08', '2017-09-14 21:21:08', 1),
(7, 'Hoàng Hồng Chương', 'Hà Nội', '0987654321', 'chuonghoanghong@gmail.com', '2017-09-17 20:31:17', '2017-09-17 20:31:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `title_en` text CHARACTER SET utf8,
  `company` text COLLATE utf8_unicode_ci,
  `company_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `website` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `address_en` text CHARACTER SET utf8,
  `phone` text COLLATE utf8_unicode_ci,
  `hotline` text COLLATE utf8_unicode_ci,
  `fax` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `favico` text COLLATE utf8_unicode_ci,
  `title_index` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `mota_en` text CHARACTER SET utf8,
  `content` longtext COLLATE utf8_unicode_ci,
  `content_en` text CHARACTER SET utf8,
  `facebook` text COLLATE utf8_unicode_ci NOT NULL,
  `twitter` text COLLATE utf8_unicode_ci NOT NULL,
  `skype` text COLLATE utf8_unicode_ci,
  `google` text COLLATE utf8_unicode_ci NOT NULL,
  `youtube` text COLLATE utf8_unicode_ci NOT NULL,
  `slogan` text CHARACTER SET utf8,
  `slogan_en` text CHARACTER SET utf8,
  `status` int(11) NOT NULL DEFAULT '0',
  `toado` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `iframemap` text COLLATE utf8_unicode_ci,
  `codechat` longtext COLLATE utf8_unicode_ci,
  `analytics` longtext COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `name_en`, `title`, `title_en`, `company`, `company_en`, `website`, `address`, `address_en`, `phone`, `hotline`, `fax`, `email`, `photo`, `favico`, `title_index`, `mota`, `mota_en`, `content`, `content_en`, `facebook`, `twitter`, `skype`, `google`, `youtube`, `slogan`, `slogan_en`, `status`, `toado`, `copyright`, `iframemap`, `codechat`, `analytics`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 'THUANDUCJSC', NULL, 'THUANDUCJSC', NULL, 'THUANDUCJSC', 'THUANDUCJSC', NULL, 'Tầng 8, TOYOTA Thanh Xuân 315 Trường Chinh, Thanh Xuân, Hà Nội', '8th , TOYOTA Thanh Xuan, 315 Truong Chinh street, Thanh Xuan, Ha Noi', '0987654321', '091 555 55 44', NULL, 'info@thuanducjsc.vn', '1513753928_logo-1.png', '1513753928_logo-1.png', NULL, NULL, NULL, NULL, NULL, 'https://www.facebook.com/FacebookforDevelopers/', 'https://twitter.com/?lang=vi', 'https://www.pinterest.com/', 'https://plus.google.com/?hl=vi', 'https://www.youtube.com/', '<h1 class=\"vk-cate__heading\"><span style=\"color: #f50233;\">THUANDUCJSC</span>&nbsp;NH&Agrave; SẢN XUẤT NHỰA - BAO B&Igrave; - T&Uacute;I SHOPPING BAG</h1>', '<h1><span style=\"font-size: 24pt;\"><span style=\"color: #ff0000;\">THUANDUCJSC</span> PLASTIC MANUFACTURER - PACKAGING - BAG SHOPPING BAG</span></h1>', 1, NULL, '© GCO 2017. All rights reserved. Design by chuonghoanghong@gmail.com.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7451.171877144796!2d105.871187!3d20.969137!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac25be4ca5e3%3A0xe81d88694b0116b9!2zWcOqbiBEdXnDqm4sIFnDqm4gU-G7nywgSG_DoG5nIE1haSwgSMOgIE7hu5lpLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1509609109763\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5a40cdb7f4461b0b4ef8a897/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', NULL, NULL, NULL, '2017-12-25 10:07:13', '2017-12-25 03:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `user_id`, `name`, `link`, `photo`, `icon`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(41, 5, 'banner', NULL, '1513754543_banner-2.jpg', '', NULL, NULL, 1, 0, 'gioi-thieu', 2, '2017-12-20 07:22:23', '2017-12-20 00:22:23'),
(47, 5, 'Chứng chỉ 3', NULL, '1509931153_certify-3.jpg', '', NULL, NULL, 1, 0, 'thu-vien-anh', 3, '2017-11-05 18:19:13', '2017-11-05 18:19:13'),
(46, 5, 'Chứng chỉ 2', NULL, '1509931145_certify-2.jpg', '', NULL, NULL, 1, 0, 'thu-vien-anh', 2, '2017-11-05 18:19:05', '2017-11-05 18:19:05'),
(45, 5, 'chứng chỉ 1', NULL, '1509931135_certify-1.jpg', '', NULL, NULL, 1, 0, 'thu-vien-anh', 1, '2017-11-08 03:13:43', '2017-11-07 20:13:43'),
(29, 5, 'MIỄN PHÍ VẬN CHUYỂN', NULL, '1504143783_oto.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 1, '2017-08-31 01:44:03', '2017-08-30 18:44:03'),
(30, 5, 'ĐỔI TRẢ TRONG VÒNG 07 NGÀY', NULL, '1504143807_phone.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 2, '2017-08-30 18:43:27', '2017-08-30 18:43:27'),
(31, 5, 'HỖ TRỢ ONLINE 24/7', NULL, '1504143833_watch.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 3, '2017-08-30 18:43:53', '2017-08-30 18:43:53'),
(42, 5, 'New Arrivals', NULL, '1513754551_banner-1.jpg', '', 'Bé trai - bé gái', NULL, 1, 0, 'gioi-thieu', 1, '2017-12-20 07:22:31', '2017-12-20 00:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `slogan`
--

CREATE TABLE `slogan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `photo` text,
  `content` text,
  `content_en` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slogan`
--

INSERT INTO `slogan` (`id`, `name`, `name_en`, `photo`, `content`, `content_en`, `created_at`, `updated_at`) VALUES
(1, 'Giao hàng kịp thời', 'Timely delivery', '1513754983_quality-item-1.png', '<p>Kh&ocirc;ng m&aacute;y in n&agrave;o nhanh hơn. Đặt h&agrave;ng ng&agrave;y h&ocirc;m nay v&agrave;o l&uacute;c 8 giờ tối theo giờ EST</p>', '<p>No printer any faster. Order today at 8pm EST</p>', '2017-12-20 09:42:26', '2017-12-20 02:42:26'),
(3, 'In chất lượng', NULL, '1513754996_quality-item-2.png', '<p>Mực tươi s&aacute;ng. Giấy d&agrave;y. Cắt ch&iacute;nh x&aacute;c. Ch&uacute;ng t&ocirc;i tin rằng vấn đề in chất lượng l&agrave; vấn đề.</p>', NULL, '2017-12-20 07:30:08', '2017-12-20 00:30:08'),
(4, 'Lời hứa của công ty', NULL, '1513755045_quality-item-3.png', '<p>Lu&ocirc;n l&agrave;m việc chuy&ecirc;n nghiệp, sản phẩm uy t&iacute;n v&agrave; chất lượng đến tay kh&aacute;ch h&agrave;ng</p>', NULL, '2017-12-20 07:30:45', '2017-12-20 00:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `useronline`
--

CREATE TABLE `useronline` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '2',
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `level`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'tuanduy2012', '$2y$10$DceYJxR4ALmUW.Vt6k9En.1ubJhJGvWX1HISRloBERLNJ8Qq85itO', 'Tuan Duy', 'duydoan.nina@gmail.com', '', '', 1, NULL, 1, 'X37mpbjW1WDCjwH3s4Vq1Jkv3WRNJceXZlbLwHaa', '2017-06-14 23:42:39', '2017-06-14 23:42:39'),
(4, 'evernigh', '$2y$10$pprRO9LhYKADS60bvetRnOYoS3L74giVWf3D/wNZXlDLDRRx0bH6e', 'Duy Đoàn', 'tuanduy_mc2006@yahoo.com', '', '', 0, NULL, 1, '6CirvIekDhWLx3xFrnv7v39bFmalTsH21F4WABTq', '2017-06-16 02:51:34', '2017-06-16 02:51:34'),
(5, 'gco_admin', '$2y$10$Lm3vxVo0UYuWFSzJkpvmwOKecqZm5coQSy1D3QW/Tc8c569RgBNFK', 'Admin', 'gco@gmail.com', '0985431797', '315 Trường chinh, Thanh Xuân, Hà Nội', 1, '5.jpg', 1, 'DQaWH76KnzFgsWBI0dFjhcT3csqprj4iDVZoOcduTK7pqkTmfOp3TYJfpPss', '2017-11-07 08:29:35', '2017-09-24 19:31:27'),
(7, 'hoangchuong', '$2y$10$PnaSJxmZdL0x0wRtj4q0tODPWKtxI85VefEFNZWDQKEH6q8rxjLc6', 'chuong', 'chuonghoanghong@gmail.com', NULL, NULL, 1, NULL, 1, 'DSYV3dr0q7IjUiVKsa4tl4ApOSuDPybd17EupcaO', '2017-11-07 01:31:10', '2017-11-07 01:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `link` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `link`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nvy3XBg-tmU\" frameborder=\"0\" allowfullscreen></iframe>', '2017-10-15 20:31:58', '2017-10-15 20:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `vieclam`
--

CREATE TABLE `vieclam` (
  `id` int(11) NOT NULL,
  `province_id` int(11) DEFAULT NULL,
  `linhvuc_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `expiration_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mota` text,
  `mota_en` text,
  `content` text,
  `content_en` text,
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `keyword` text,
  `keyword_en` text,
  `description` text,
  `description_en` text,
  `hot` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vieclam`
--

INSERT INTO `vieclam` (`id`, `province_id`, `linhvuc_id`, `name`, `name_en`, `alias`, `expiration_date`, `mota`, `mota_en`, `content`, `content_en`, `title`, `title_en`, `keyword`, `keyword_en`, `description`, `description_en`, `hot`, `created_at`, `updated_at`) VALUES
(1, 8, 5, 'Nhân viên-Triển khai các chiến dịch gọi ra', 'ssf sf sf', 'nhan-vien-trien-khai-cac-chien-dich-goi-ra', '2017-12-21 09:16:31', '<p>ffff</p>', NULL, '<p>sssss</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 02:16:31', '2017-12-21 02:16:31'),
(2, 8, 3, 'Nhân viên tư vấn', 'gggg', 'nhan-vien-tu-van', '2017-12-21 09:17:44', '<p>ggsfsf</p>', '<p>gggg</p>', '<p>fsfsf</p>', '<p>ggggg</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 02:17:44', '2017-12-21 02:17:44'),
(3, 9, 4, 'Kế toán', 'Accountant', 'ke-toan', '2017-12-29 17:00:00', '<p>d</p>', '<p>k</p>', '<p>d</p>', '<p>k</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-25 03:50:02', '2017-12-24 20:50:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banggia`
--
ALTER TABLE `banggia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_content`
--
ALTER TABLE `banner_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_position`
--
ALTER TABLE `banner_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_cards`
--
ALTER TABLE `campaign_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Indexes for table `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lienket`
--
ALTER TABLE `lienket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linhvuc`
--
ALTER TABLE `linhvuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slogan`
--
ALTER TABLE `slogan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vieclam`
--
ALTER TABLE `vieclam`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `banggia`
--
ALTER TABLE `banggia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_content`
--
ALTER TABLE `banner_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `banner_position`
--
ALTER TABLE `banner_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `campaign_cards`
--
ALTER TABLE `campaign_cards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `chinhanh`
--
ALTER TABLE `chinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gioithieu`
--
ALTER TABLE `gioithieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `langs`
--
ALTER TABLE `langs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `lienket`
--
ALTER TABLE `lienket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `linhvuc`
--
ALTER TABLE `linhvuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `slogan`
--
ALTER TABLE `slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `useronline`
--
ALTER TABLE `useronline`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vieclam`
--
ALTER TABLE `vieclam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
