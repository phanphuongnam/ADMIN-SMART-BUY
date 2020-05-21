-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th5 21, 2020 lúc 09:06 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `u749523393_ppn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `image`, `name`, `url`) VALUES
(1, 'public/images/colors-curl-logo-template_23-2147536125.jpg', 'DLDLDLDL', 'https://www.dell.com'),
(2, 'public/images/background-of-spots-halftone_1035-3847.jpg', 'Intel', 'https://www.intel.com '),
(4, 'public/images/blue-tech-logo_1103-822.jpg', NULL, NULL),
(13, 'public/images/colors-curl-logo-template_23-2147536125.jpg', 'xxx', ''),
(14, 'public/images/background-of-spots-halftone_1035-3847.jpg', NULL, NULL),
(15, 'public/images/blue-tech-logo_1103-822.jpg', NULL, NULL),
(16, 'public/images/colors-curl-logo-template_23-2147536125.jpg', 'xxx', ''),
(17, 'public/images/background-of-spots-halftone_1035-3847.jpg', NULL, NULL),
(18, 'public/images/blue-tech-logo_1103-822.jpg', NULL, NULL),
(19, 'public/images/colors-curl-logo-template_23-2147536125.jpg', 'xxx', ''),
(20, 'public/images/background-of-spots-halftone_1035-3847.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `cate_name` varchar(190) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `cate_name`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Máy Tính', '1weqefsgdf', NULL, '2019-12-09 08:33:56', '2020-04-03 08:49:03'),
(3, 'Linh kiện máy tính', '<p>&aacute;dasd</p>\r\n', NULL, '2019-12-18 03:08:03', '2020-04-03 08:49:03'),
(28, 'Thiết Bị Internet', '<p>zvxbn vmbn,m,</p>\r\n', NULL, '2019-12-18 03:13:16', '2020-04-03 08:49:03'),
(34, 'Đồng Hồ', 'dong-ho', NULL, '2020-05-03 11:39:21', '2020-05-03 11:39:21'),
(35, 'Thể Thao & Du Lịch', 'the-thao-du-lich', NULL, '2020-05-03 11:40:03', '2020-05-03 11:40:03'),
(36, 'Ô tô - Xe máy - Xe đạp', 'oto-xemay-xedap', NULL, '2020-05-03 11:40:52', '2020-05-03 11:40:52'),
(37, 'Thời trang nữ', 'thoi-trang-nu', NULL, '2020-05-03 11:41:22', '2020-05-03 11:41:22'),
(38, 'Thời trang nam', 'thoi-trang-nam', NULL, '2020-05-03 11:41:34', '2020-05-03 11:41:34'),
(40, 'Mẹ & Bé', 'me-va-be', NULL, '2020-05-03 11:42:18', '2020-05-03 11:42:18'),
(41, 'Phụ kiện thời trang', 'phụ-kien-thoi-trang', NULL, '2020-05-03 11:42:55', '2020-05-03 11:42:55'),
(42, 'Đồ chơi', 'do-choi', NULL, '2020-05-03 11:43:26', '2020-05-03 11:43:26'),
(43, 'Sản phẩm khác', 'san-pham-khac', NULL, '2020-05-03 11:43:39', '2020-05-03 11:43:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reply_for` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `content`, `product_id`, `user_id`, `reply_for`, `created_at`) VALUES
(313, 'hellô sản phẩm tốt đó', 2, 22, NULL, '2020-04-12 23:02:37'),
(314, 'goôđ', 2, 22, NULL, '2020-04-12 23:05:01'),
(315, 'tuyệt vờiiiiiiiiiiiiiiiiiiiiiiiiii', 10, 22, NULL, '2020-04-12 23:06:18'),
(316, 'oki', 2, 22, NULL, '2020-04-12 23:09:06'),
(317, 'hay lắm', 10, 22, NULL, '2020-04-13 09:24:06'),
(318, 'goôd', 5, 22, NULL, '2020-04-13 09:25:04'),
(319, 'được :D', 2, 22, NULL, '2020-04-13 09:53:00'),
(320, 'hihiih', 11, 22, NULL, '2020-04-13 10:01:36'),
(321, 'sản phẩm ổn', 5, 22, NULL, '2020-04-13 10:11:19'),
(322, 'Hay', 7, 22, NULL, '2020-04-13 12:27:57'),
(323, 'Dc', 7, 22, NULL, '2020-04-13 12:28:19'),
(324, 'Tot', 7, 22, NULL, '2020-04-13 12:28:32'),
(325, 'Good', 7, 22, NULL, '2020-04-13 12:28:44'),
(326, 'Hi', 8, 22, NULL, '2020-04-14 10:12:19'),
(327, 'Hay', 8, 22, NULL, '2020-04-14 10:12:34'),
(328, 'Dc', 11, 22, NULL, '2020-04-14 10:17:07'),
(329, 'Hi', 5, NULL, NULL, '2020-04-14 10:36:05'),
(330, 'Hi', 2, 31, NULL, '2020-04-14 10:48:01'),
(331, 'Bình luận oke', 2, 31, NULL, '2020-04-14 10:48:13'),
(332, 'Cmt', 2, 31, NULL, '2020-04-14 10:50:58'),
(333, 'Híb', 2, 31, NULL, '2020-04-14 10:51:05'),
(334, 'Dk thanh cong', 2, 32, NULL, '2020-04-14 11:30:46'),
(335, 'Okie', 2, 32, NULL, '2020-04-14 11:31:20'),
(336, 'Ok', 2, 32, NULL, '2020-04-14 11:31:33'),
(337, 'Hi', 11, 22, NULL, '2020-04-14 23:22:35'),
(338, 'Hi', 11, 22, NULL, '2020-04-14 23:22:43'),
(339, 'Dc', 11, 22, NULL, '2020-04-14 23:22:57'),
(340, 'Hi', 11, 22, NULL, '2020-04-14 23:23:46'),
(341, 'Good', 11, 22, NULL, '2020-04-14 23:23:54'),
(342, 'Tot', 11, 22, NULL, '2020-04-14 23:24:03'),
(343, 'tại sao tren android touch được cart mà iphone không được vô lí vậy bạn =))', 11, 23, NULL, '2020-04-15 12:34:09'),
(344, 'Took', 8, 3, NULL, '2020-04-15 23:04:01'),
(345, 'Dc', 5, 1, NULL, '2020-04-16 12:36:31'),
(346, 'Lolo', 7, 3, NULL, '2020-04-18 22:11:51'),
(347, 'N', 5, 3, NULL, '2020-04-18 22:26:01'),
(348, 'Lol', 5, 3, NULL, '2020-04-18 22:26:12'),
(349, 'Hn', 5, 3, NULL, '2020-04-18 22:26:21'),
(351, 'Smsn', 7, 4, NULL, '2020-04-19 16:24:46'),
(352, 'Hi', 2, 4, NULL, '2020-04-20 05:58:39'),
(353, 'Hi', 7, 4, NULL, '2020-04-21 06:11:06'),
(354, 'Good', 10, 4, NULL, '2020-04-21 06:17:46'),
(355, 'No bà\n\nNo bad', 10, 4, NULL, '2020-04-21 06:18:18'),
(356, 'Nope', 5, 4, NULL, '2020-04-21 06:21:30'),
(357, 'No bad', 12, 4, NULL, '2020-04-23 07:54:43'),
(358, 'Goood\nGôd', 12, 4, NULL, '2020-04-23 07:54:58'),
(360, 'Hi', 5, 1, NULL, '2020-04-23 12:30:21'),
(361, 'Hi', 10, 1, NULL, '2020-04-23 12:33:57'),
(362, 'Hihi', 2, 1, NULL, '2020-04-23 12:40:49'),
(363, 'Hi', 12, 4, NULL, '2020-04-26 10:35:36'),
(364, 'Hi', 12, 4, NULL, '2020-04-26 10:35:45'),
(365, 'Hi', 11, 4, NULL, '2020-04-26 10:43:52'),
(366, 'Hai', 11, 4, NULL, '2020-04-26 10:46:53'),
(367, 'Ok', 5, 1, NULL, '2020-04-26 15:19:43'),
(368, 'Good', 11, 1, NULL, '2020-04-27 13:12:27'),
(369, 'Gd', 72, 4, NULL, '2020-04-29 04:09:56'),
(370, 'Good', 74, 4, NULL, '2020-04-29 04:10:07'),
(371, 'No bad', 73, 4, NULL, '2020-04-29 04:10:19'),
(372, 'Yéh', 71, 4, NULL, '2020-04-29 04:10:46'),
(375, 'Ok', 75, 4, NULL, '2020-05-01 15:28:08'),
(376, 'So good', 74, 4, NULL, '2020-05-01 15:30:08'),
(377, 'I think i should buy it', 75, 4, NULL, '2020-05-02 05:13:17'),
(378, 'Yepp', 7, 5, NULL, '2020-05-03 11:29:08'),
(379, 'Buy it', 7, 5, NULL, '2020-05-03 11:29:35'),
(380, 'Ok', 2, 3, NULL, '2020-05-04 02:20:30'),
(381, 'Dc', 90, 3, NULL, '2020-05-06 07:12:33'),
(382, 'Ok good', 93, 4, NULL, '2020-05-09 16:02:11'),
(383, 'test', 94, 3, NULL, '2020-05-10 14:33:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `fullname` varchar(250) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `phone_number` int(20) DEFAULT NULL,
  `address` varchar(250) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `fullname`, `title`, `content`, `status`, `email`, `phone_number`, `address`, `created_at`) VALUES
(15, 'Quang Nguyễn', 'Feedback', 'Oke', NULL, 'Kangnguyen260399@gmail.com', 967521045, '63 lê đức thọ', '2020-04-15 07:23:57'),
(17, 'Ntq kangnt', 'Ntq', 'I think i use smartbuy <3', 1, 'Kangnguyen260399@gmail.com', 1900585885, '270 thay doi', '2020-05-02 05:15:41'),
(18, 'Kang nt', '4.5', 'Ondnd', 1, 'Kangnguyen260399@gmail.com', 383838, '238 hihi', '2020-05-04 13:37:50'),
(19, 'Dnxndn', 'Dndnd', ';₫;₫₫,', NULL, 'Xnxnxnx@gmail.com', 74748474, 'Hfdhjdjdj', '2020-05-06 04:08:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favourites`
--

CREATE TABLE `favourites` (
  `user_ID` int(11) NOT NULL,
  `product_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `favourites`
--

INSERT INTO `favourites` (`user_ID`, `product_ID`) VALUES
(1, 0),
(1, 7),
(3, 2),
(3, 5),
(3, 91),
(3, 93),
(3, 94),
(3, 95),
(4, 5),
(4, 7),
(4, 10),
(4, 12),
(5, 87),
(5, 91),
(5, 92),
(5, 93),
(5, 94),
(5, 95),
(6, 93),
(6, 95),
(22, 11),
(23, 2),
(30, 2),
(30, 5),
(30, 10),
(31, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `histories`
--

CREATE TABLE `histories` (
  `id_user` int(11) NOT NULL,
  `id_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `histories`
--

INSERT INTO `histories` (`id_user`, `id_order`) VALUES
(1, 342),
(1, 343),
(1, 345),
(1, 350),
(1, 351),
(1, 371),
(1, 372),
(1, 374),
(1, 375),
(1, 376),
(1, 381),
(1, 382),
(1, 383),
(1, 385),
(1, 386),
(1, 388),
(1, 389),
(1, 391),
(1, 392),
(1, 399),
(1, 401),
(1, 403),
(1, 406),
(3, 437),
(3, 448),
(3, 449),
(3, 450),
(3, 451),
(3, 452),
(3, 459),
(3, 468),
(3, 470),
(4, 336),
(4, 344),
(4, 346),
(4, 349),
(4, 377),
(4, 378),
(4, 379),
(4, 380),
(4, 384),
(4, 387),
(4, 390),
(4, 394),
(4, 395),
(4, 396),
(4, 397),
(4, 398),
(4, 400),
(4, 402),
(4, 404),
(4, 405),
(4, 410),
(4, 411),
(4, 412),
(4, 413),
(4, 414),
(4, 415),
(4, 416),
(4, 417),
(4, 418),
(4, 419),
(4, 420),
(4, 421),
(4, 422),
(4, 423),
(4, 424),
(4, 425),
(4, 426),
(4, 427),
(4, 429),
(4, 430),
(4, 431),
(4, 432),
(4, 439),
(4, 455),
(4, 456),
(4, 457),
(4, 464),
(4, 466),
(5, 433),
(5, 434),
(5, 435),
(5, 441),
(5, 442),
(5, 443),
(5, 444),
(5, 446),
(5, 447),
(5, 454),
(5, 463),
(5, 465),
(5, 467),
(5, 471),
(5, 472),
(6, 438),
(6, 440),
(6, 460),
(6, 461);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `customer_phone` int(20) DEFAULT NULL,
  `customer_email` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `total_price` int(11) DEFAULT NULL,
  `payment_method` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `buyer_id` varchar(11) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `status`, `total_price`, `payment_method`, `discount`, `buyer_id`, `voucher_id`, `message`, `created_at`) VALUES
(342, 'Nam', 999999, 'Nam@gmail.com', 'Ha noi', 3, 220, 2, NULL, NULL, NULL, NULL, '2020-04-26 01:12:38'),
(343, 'Ppn', 9999999, 'Nam@gmail.com', 'Ppn', 0, 520, 2, NULL, NULL, NULL, NULL, '2020-04-26 04:33:05'),
(344, 'Nguyễn Thiện Quang', 967521045, 'Kangnguyen260399@gmail.com', '63 lê đức thọ', 0, 300, 4, NULL, NULL, NULL, NULL, '2020-04-26 04:58:06'),
(345, 'Ydhxj', 9999, 'Hzjjzjzu@gmail.com', 'Jdjdjd', 0, 200, 4, NULL, NULL, NULL, NULL, '2020-04-26 16:06:53'),
(346, 'Kang', 967521045, 'quangntph06374@fpt.edu.vn', '26 hồ tùng mậu', 0, 10, 4, NULL, NULL, NULL, NULL, '2020-04-27 06:49:16'),
(349, 'Anna same', 0, 'Anna@gmai.com', '106 hoàng quốc việt', 0, 300, 4, NULL, NULL, NULL, NULL, '2020-04-27 12:16:37'),
(350, 'Hdsssz', 62627272, 'nam123@gmail.com', 'Hdhd', 0, 10, 2, NULL, NULL, NULL, NULL, '2020-04-27 20:06:14'),
(351, '2334', 245555, 'nam123@gmail.com', 'nam123@gmail.com', 0, 10, 1, NULL, NULL, NULL, NULL, '2020-04-27 20:07:51'),
(352, 'nam', 121222, 'nam@gmail.com', 'ha noi', 1, 230, 3, NULL, NULL, NULL, NULL, '2020-04-28 09:19:49'),
(353, 'nam', 121222, 'nam@gmail.com', 'ha noi', 1, 230, 3, NULL, NULL, NULL, NULL, '2020-04-28 09:20:12'),
(354, 'nam', 121222, 'nam@gmail.com', 'ha noi', 1, 230, 3, NULL, NULL, NULL, NULL, '2020-04-28 09:21:01'),
(355, '423333', 324, '342@gmail.con', '34a@gmail.com', 1, 222, 1, NULL, NULL, NULL, NULL, '2020-04-28 09:22:59'),
(356, '423333', 324, '342@gmail.con', '34a@gmail.com', 1, 222, 1, NULL, NULL, NULL, NULL, '2020-04-28 09:26:28'),
(357, '423333', 324, '342@gmail.con', '34a@gmail.com', 1, 222, 1, NULL, NULL, NULL, NULL, '2020-04-28 09:27:20'),
(358, 'nam', 121222, 'nam@gmail.com', 'ha noi', 1, 230, 3, NULL, NULL, NULL, NULL, '2020-04-28 09:27:35'),
(359, '423333', 324, '342@gmail.con', '34a@gmail.com', 1, 222, 1, NULL, NULL, NULL, NULL, '2020-04-28 09:28:14'),
(360, '423333', 324, '342@gmail.con', '34a@gmail.com', 1, 222, 1, NULL, NULL, NULL, NULL, '2020-04-28 09:28:39'),
(361, '423333', 324, '342@gmail.con', '34a@gmail.com', 1, 222, 1, NULL, NULL, NULL, NULL, '2020-04-28 09:40:12'),
(363, '423333', 324, 'namppph05917@fpt.edu.vn', '34a@gmail.com', 1, 222, 1, NULL, NULL, NULL, NULL, '2020-04-28 09:50:14'),
(364, '423333', 324, 'namppph05917@fpt.edu.vn', '34a@gmail.com', 1, 222, 1, NULL, NULL, NULL, NULL, '2020-04-28 09:51:13'),
(365, '423333', 324, 'namppph05917@fpt.edu.vn', '34a@gmail.com', 1, 222, 1, NULL, NULL, NULL, NULL, '2020-04-28 09:56:05'),
(366, '423333', 324, 'namppph05917@fpt.edu.vn', '34a@gmail.com', 1, 222, 1, NULL, NULL, NULL, NULL, '2020-04-28 10:34:08'),
(367, '423333', 324, 'namppph05917@fpt.edu.vn', '34a@gmail.com', 1, 222, 1, NULL, NULL, NULL, NULL, '2020-04-28 10:36:20'),
(368, '423333', 324, 'namppph05917@fpt.edu.vn', 'Hà Nội', 1, 222, 1, NULL, NULL, NULL, NULL, '2020-04-28 10:37:25'),
(369, '423333', 324, 'namppph05917@fpt.edu.vn', 'Hà Nội', 1, 222, 1, NULL, NULL, NULL, NULL, '2020-04-28 10:46:22'),
(370, '423333', 324, 'namppph05917@fpt.edu.vn', 'Hà Nội', 1, 222, 1, NULL, NULL, NULL, NULL, '2020-04-28 10:53:26'),
(371, '423333', 324, 'namppph05917@fpt.edu.vn', 'Hà Nội', 0, 222, 1, NULL, NULL, NULL, NULL, '2020-04-28 10:53:53'),
(372, 'Phan Nam', 324, 'namppph05917@fpt.edu.vn', 'Hà Nội', 0, 222, 1, NULL, NULL, NULL, NULL, '2020-04-28 10:54:18'),
(373, 'TNT', 9, 'namppph05917@fpt.edu.vn', '23', 1, 230, 1, NULL, NULL, NULL, NULL, '2020-04-28 10:58:31'),
(374, '132', 222222, 'namppph05917@fpt.edu.vn', 'vcb', 0, 230, 1, NULL, NULL, NULL, NULL, '2020-04-28 11:04:12'),
(375, 'Nam PP', 397176506, 'namppph05917@fpt.edu.vn', 'Ha noi', 0, 4444, 1, NULL, NULL, NULL, NULL, '2020-04-28 14:42:46'),
(376, 'Phan Phương Nam', 99999999, 'namthpttienthinh@gmail.com', 'Hà nội', 0, 4544, 1, NULL, NULL, NULL, NULL, '2020-04-28 15:10:35'),
(377, 'Kangnt', 967521045, 'kangnguyen260399@gmail.com', '66 hồ tung mậu', 0, 2222, 4, NULL, NULL, NULL, NULL, '2020-04-28 16:27:13'),
(378, 'Nguyen Quang', 967521045, 'quangntph06374@fpt.edu.vn', '63 le đức họ', 1, 2242, 4, NULL, NULL, NULL, NULL, '2020-04-28 16:30:37'),
(379, 'Hshdhdhđhhdh', 967521045, 'kangnguyen260399@gmail.com', 'Dhdhdhhhdhd', 1, 2222, 3, NULL, NULL, NULL, NULL, '2020-04-28 16:36:28'),
(380, 'Dndjdhhd', 96731045, 'kangnguyen260399@gmail.com', 'Xjdjdjdhj', 1, 2222, 3, NULL, NULL, NULL, NULL, '2020-04-28 16:39:20'),
(381, 'Nam', 9999999, 'namppph05917@fpt.edu.vn', 'Ha noi', 0, 2222, 1, NULL, NULL, NULL, NULL, '2020-04-29 03:25:02'),
(382, 'Nam', 9999999, 'namppph05917 @fpt.edu.vn', 'Ha noi', 0, 31188, 3, NULL, NULL, NULL, NULL, '2020-04-29 03:56:33'),
(383, 'Phan Phương Nam', 999, 'namthpttienthinh@gmail.com', 'ha noi', 1, 6726, 1, NULL, NULL, NULL, NULL, '2020-04-29 04:00:14'),
(384, 'Xnxnxn', 967521044, 'Kangnguyen260399@gmail.com', 'Dnxjb', 1, 2222, 4, NULL, NULL, NULL, NULL, '2020-04-29 04:03:25'),
(385, 'nam', 99999, 'namthpttienthinh@gmail.com', 'Hà Nội', 1, 22320, 1, NULL, NULL, NULL, NULL, '2020-04-29 04:06:21'),
(386, 'Nam', 999999, 'namthpttienthinh@gmail.com', 'Hà Nội', 1, 22320, 3, NULL, NULL, NULL, NULL, '2020-04-29 04:09:41'),
(387, 'Djdjjđj', 2147483647, 'kangnguyen260399@gmail.com', 'Đjssjjsj', 0, 2222, 2, NULL, NULL, NULL, NULL, '2020-04-30 02:14:58'),
(388, 'Nam', 999999, 'namthpttienthinh@gmail.com', 'Ha noi', 0, 200, 2, NULL, NULL, NULL, NULL, '2020-04-30 02:59:48'),
(389, 'Nam', 9999999, 'namppph05917@fpt.edu.vn', 'Nam', 0, 4444, 1, NULL, NULL, NULL, NULL, '2020-04-30 03:07:30'),
(390, 'Dhdbdhh', 9474744, 'kangnguyen260399@gmail.com', 'Dbdbbz', 3, 2222, 4, NULL, NULL, NULL, NULL, '2020-04-30 03:19:53'),
(391, 'nam', 9999, 'namthpttienthinh@gmail.com', 'ha noi', 0, 35552, 1, NULL, NULL, NULL, NULL, '2020-04-30 03:37:55'),
(392, 'Nam', 999999, 'namthpttienthinh@gmail.com', 'hà nội', 1, 2222, 1, NULL, NULL, NULL, NULL, '2020-04-30 03:53:21'),
(393, 'Hi', 0, 'namppph05917@gmail.com', 'Hi', 1, 400, 3, NULL, NULL, NULL, NULL, '2020-04-30 10:35:15'),
(394, 'John wick', 967521045, 'John123@gmail.com', '66 hồ tùng mậu', 0, 100, 4, NULL, NULL, NULL, NULL, '2020-04-30 11:36:28'),
(395, 'Dbdbbx', 967521045, 'kangnguyen260399@gmail.com', 'Dhdhhd', 0, 100, 4, NULL, NULL, NULL, NULL, '2020-04-30 16:02:44'),
(396, 'Dhdjdhdh', 967521045, 'kangnguyen260399@gmail.com', 'Djddhdh', 1, 100, 4, NULL, NULL, NULL, NULL, '2020-04-30 16:09:21'),
(397, 'Dbdbdbdb', 967521045, 'quangntph06374@fpt.edu.vn', 'Dhdhđh', 1, 100, 4, NULL, NULL, NULL, NULL, '2020-04-30 16:11:55'),
(398, 'Đjdjd', 967521045, 'quangntph06374@fpt.edu.vn', 'Dhdvdhdb', 1, 100, 3, NULL, NULL, NULL, NULL, '2020-04-30 16:15:12'),
(399, 'nam', 90000000, 'namppph05917@fpt.edu.vn', 'nam', 1, 200, 3, NULL, NULL, NULL, NULL, '2020-04-30 16:27:31'),
(401, 'nam', 90000000, 'namthpttienthinh@gmail.com', 'nam', 1, 300, 2, NULL, NULL, NULL, NULL, '2020-04-30 16:30:45'),
(402, 'Dndhdhdh', 74748, 'Kangnguyen260399@gmail.com', 'Dndbdhhdb', 2, 2222, 4, NULL, NULL, NULL, NULL, '2020-04-30 16:34:14'),
(403, 'nam', 999999, 'namthpttienthinh@gmail.com', 'nam', 1, 100, 3, NULL, NULL, NULL, NULL, '2020-04-30 16:34:29'),
(404, 'Cnxnbzjdh', 9463737, 'kangnguyen260399@gmail.com', 'Dhdjnxhx', 3, 220, 4, NULL, NULL, NULL, NULL, '2020-04-30 16:37:41'),
(405, 'Cnxnxnbx', 96472848, 'kangnguyen260399@gmail.com', 'Dnhbz', 0, 220, 4, NULL, NULL, NULL, NULL, '2020-04-30 16:39:47'),
(406, 'Nam', 99999999, 'namppph05917@fpt.edu.vn', 'Ha noi', 1, 100, 3, NULL, NULL, NULL, NULL, '2020-05-01 05:31:14'),
(408, 'Nam', 999999, 'namppph05917@fpt.edu.vn', 'Hsjsjs', 1, 200, 1, NULL, NULL, NULL, NULL, '2020-05-01 05:36:40'),
(409, 'H', 999999, 'namppph05917@fpt.edu.vn', 'H', 1, 100, 1, NULL, NULL, NULL, NULL, '2020-05-01 05:37:52'),
(410, 'Bdbđndbbz', 9746474, 'kangnguyen260399@gmail.com', 'Dbdbdbbdb', 0, 220, 4, NULL, NULL, NULL, NULL, '2020-05-01 07:56:30'),
(412, 'Dhhdhhd', 74743, 'kangnguyen260399@gmail.com', 'Dhhh', 1, 520, 4, NULL, NULL, NULL, NULL, '2020-05-01 08:05:47'),
(413, 'Hdbhđ', 74747744, 'kangnguyen260399@gmail.com', 'Hhdhdhđ', 1, 100, 4, NULL, NULL, NULL, NULL, '2020-05-01 08:36:30'),
(414, 'Bxdbgx', 2147483647, 'Kangnguyen260399@gmail.com', 'Dhdjhdhd', 2, 200, 4, NULL, NULL, NULL, NULL, '2020-05-01 08:45:15'),
(415, 'Shshshhd', 9383734, 'kangnguyen260399@gmail.com', 'Djdhdhhhdhd', 1, 2222, 4, NULL, NULL, NULL, NULL, '2020-05-01 09:17:29'),
(418, 'Dbdbhd', 2147483647, 'kangnguyen260399@gmail.com', 'Hdhdhd', 1, 4444, 4, NULL, NULL, NULL, NULL, '2020-05-01 09:22:28'),
(419, 'Dbbdbdbđhdhd', 2147483647, 'Kangnguyen260399@gmail.com', 'Xbbxbzb', 1, 220, 4, NULL, NULL, NULL, NULL, '2020-05-01 10:09:22'),
(420, 'Đhdhdh', 747474, 'kangnguyen260399@gmail.com', 'Đbdhfb', 1, 100, 4, NULL, NULL, NULL, NULL, '2020-05-01 13:19:23'),
(421, 'Ndhdhhdh', 7447744, 'Kangnguyen260399@gmail.com', 'Dhdhhd', 1, 2222, 3, NULL, NULL, NULL, NULL, '2020-05-01 13:21:21'),
(422, 'Dbdhdhhd', 647474774, 'Quangntph06374@fpt.edu.vn', 'Dhdbdbbdbdh', 1, 2222, 4, NULL, NULL, NULL, NULL, '2020-05-01 13:22:08'),
(423, 'Dhdhhd', 737373747, 'Kangnguyen260399@gmail.com', 'Qhdhhd', 0, 222, 4, NULL, NULL, NULL, NULL, '2020-05-01 14:48:06'),
(424, 'Dndbd', 7474748, 'Kangnguyen260399@gmail.com', 'Ndjdjdj', 1, 222, 4, NULL, NULL, NULL, NULL, '2020-05-01 14:49:43'),
(427, 'Cnxbxbd', 747477474, 'Kangnguyen260399@gmail.com', 'Dhdhdh', 1, 2222, 4, NULL, NULL, NULL, NULL, '2020-05-01 15:18:56'),
(428, 'TQV', 338838328, 'phamkhaquang@gmail.com', 'phamkhaquang', 0, 2100, 2, NULL, NULL, NULL, NULL, '2020-05-01 15:32:58'),
(431, 'Shshjs', 747474, 'Kangnguyen260399@gmail.com', 'Qiqiiquqiiq', 1, 100, 4, NULL, NULL, NULL, NULL, '2020-05-02 04:58:41'),
(432, 'Xhdhđhd', 737373, 'Kangnguyen260399@gmail.com', 'Xbxnxbxbx', 3, 2222, 4, NULL, NULL, NULL, NULL, '2020-05-02 05:10:31'),
(433, 'Joijnajd', 26038484, 'kangnguyen260399@gmail.com', 'Le duc tho ha noi', 1, 1000000, 4, NULL, NULL, NULL, NULL, '2020-04-03 12:20:47'),
(434, 'Djdjjdj', 2147483647, 'Kangnguyen260399@gmail.com', 'Snsndn', 0, 1000000, 2, NULL, NULL, NULL, NULL, '2020-05-03 14:51:51'),
(435, 'Xhxbdhdhd', 2147483647, 'Kangnguyen260399@gmail.com', 'Eudhdhhd', 0, 450000, 4, NULL, NULL, NULL, NULL, '2020-05-03 23:55:10'),
(436, 'Quanngpk', 338838328, 'phamkhaquang@gmail.com', 'Hà Nội', 0, 40000, 4, NULL, NULL, NULL, NULL, '2020-04-04 01:59:08'),
(437, 'Quang', 338838328, 'phamkhaquang@gmail.com', 'Hà noi', 3, 6500000, 2, NULL, NULL, NULL, NULL, '2020-04-04 18:37:33'),
(438, 'Dbdndbb', 338838328, 'phamkhaquang@gmail.com', 'Bdbdbb', 1, 100000, 4, NULL, NULL, NULL, NULL, '2020-05-04 11:43:05'),
(439, 'Xnxnxnxbx', 2147483647, 'Kangnguyen260399@gmail.com', 'Dbdbbdbd', 1, 50000, 4, NULL, NULL, NULL, NULL, '2020-05-04 11:44:00'),
(440, 'Quang', 338838328, 'phamkhaquang@gmail.com', 'Hn', 0, 40000, 4, NULL, NULL, NULL, NULL, '2020-05-04 11:46:21'),
(441, 'Dbdbdb', 2147483647, 'Kangnguyen260399@gmail.com', 'Dndbdb', 1, 418000, 4, NULL, NULL, NULL, NULL, '2020-05-04 13:23:52'),
(442, 'Hihihi', 47748484, 'Kangnguyen260399@gmail.com', 'Kangr', 2, 100, 4, NULL, NULL, NULL, NULL, '2020-05-04 13:28:27'),
(443, 'Lê', 11111111, 'Abc@gmail.com', 'Abc', 1, 1145000, 3, NULL, NULL, NULL, NULL, '2020-05-04 13:50:28'),
(444, 'Đạt', 91111112, 'Datlt2306@gmail.com', 'Test', 3, 229000, 2, NULL, NULL, NULL, NULL, '2020-05-04 13:52:37'),
(445, 'ád', 231321, 'namthpttienthinh@gmail.com', 'ad', 1, 50000, 1, NULL, NULL, NULL, NULL, '2020-05-06 00:25:42'),
(446, 'Kangnguyen', 4847393, 'Kangnguyen260399@gmail.com', '666 htm', 2, 199000, 4, NULL, NULL, NULL, NULL, '2020-05-06 09:06:27'),
(447, 'Cnxnxn', 474774, 'Kangnguyen260399@gmail.com', 'Dndxhb', 1, 3745000, 4, NULL, NULL, NULL, NULL, '2020-05-06 18:37:49'),
(449, 'ads', 213123, 'namppph05917@fpt.edu.vn', 'ád', 3, 3500000, 2, NULL, NULL, NULL, NULL, '2020-05-06 23:26:08'),
(453, 'Nguyễn Thiện Quang', 967521045, 'Kangnguyen260399@gmail.com', '66 hồ tùng mậu', 1, 500000, 4, NULL, NULL, NULL, NULL, '2020-02-07 03:16:30'),
(454, 'Xjdjjdjdhd', 374758, 'Kangnguyen260399@gmail.com', 'Djdjdj', 1, 3550000, 4, NULL, NULL, NULL, NULL, '2020-03-07 11:19:42'),
(455, 'Dndnbd', 8384847, 'Quangntph06374@fpt.edu.vn', 'Dnxnbz', 1, 16000, 4, NULL, NULL, NULL, NULL, '2020-05-07 12:10:35'),
(456, 'Xhxnbxnx', 84847485, 'Quangntph06374@fpt.edu.vn', 'Xbxnbznxb', 1, 16000, 4, NULL, NULL, NULL, NULL, '2020-02-01 12:12:26'),
(457, 'Ndjdjjd', 2147483647, 'Quangntph06374@fpt.edu.vn', 'Dndbdb', 1, 50000, 4, NULL, NULL, NULL, NULL, '2020-05-07 12:14:50'),
(458, 'Djdfjdj', 8277373, 'Kangnguyen260399@gmail.com', 'Hxjxjx', 0, 16000, 4, NULL, NULL, NULL, NULL, '2020-05-08 23:50:24'),
(459, 'Nam', 9, 'namppph05917@edu.vn', 'Ha noi', 3, 1500000, 3, NULL, NULL, NULL, NULL, '2020-05-09 07:48:02'),
(460, 'Dbdndb', 38383, 'Phamkhaquang@gmail.com', 'Vhzbbxx', 1, 270, 4, NULL, NULL, NULL, NULL, '2020-05-09 10:08:44'),
(461, 'Nsndnbd', 48474, 'phamkhaquang@gmail.con', 'Cncndb', 1, 16270, 4, NULL, NULL, NULL, NULL, '2020-05-09 10:10:32'),
(462, 'Quang', 967521045, 'Kangnguyen260399@gmail.com', 'Fpt poly', 1, 999000, 4, NULL, NULL, NULL, NULL, '2020-05-09 13:35:11'),
(463, 'Quangnt', 967521045, 'Kangnguyen260399@gmail.com', 'Pftplodu', 3, 999000, 4, NULL, NULL, NULL, NULL, '2020-05-09 13:38:01'),
(464, 'Dbdbd', 967521045, 'Kangnguyen260399@gmail.com', 'Nzxb', 3, 50000, 4, NULL, NULL, NULL, NULL, '2020-05-09 15:50:40'),
(465, 'nnsdfnsadf', 967521045, 'kangnguyen@gmail.com', 'dsgfjhsdgjjfkjgs', 2, 50000, 4, NULL, NULL, NULL, NULL, '2020-05-10 04:15:27'),
(466, 'Quang nguyen', 967521045, 'Kangnguyen260399@gmail.com', 'Kow 39 cầu diễn', 1, 50000, 4, NULL, NULL, NULL, NULL, '2020-05-10 09:40:01'),
(467, 'kangnt', 967521045, 'kangnguyen260399@gmail.com', '39 cầu diễn', 3, 90000, 4, NULL, NULL, NULL, NULL, '2020-05-10 12:00:23'),
(468, 'nam', 99999999, 'namppph05917@fpt.edu.vn', 'Ha noi', 3, 50000, 4, NULL, NULL, NULL, NULL, '2020-05-10 15:33:25'),
(469, 'kang nt', 967521045, 'kangnguyen260399@gmail.com', '39 cau dien', 1, 500000, 4, NULL, NULL, NULL, NULL, '2020-05-11 06:39:29'),
(470, 'Vũ chí thành', 969749493, 'Thienth@fpt.edu.vn', 'Trịnh văn bô', 3, 55555, 4, NULL, NULL, NULL, NULL, '2020-05-11 06:55:15'),
(471, 'Xhdhdh', 96373747, 'Kangnguyen260399@gmail.come', 'Dhdhhd', 1, 3500000, 4, NULL, NULL, NULL, NULL, '2020-05-14 07:09:45'),
(472, 'Xnxxb', 9388383, 'Kangnguyen260399@gmail.com', 'Snzbx', 3, 40000, 4, NULL, NULL, NULL, NULL, '2020-05-14 07:10:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `product_id`, `quantity`, `unit_price`) VALUES
(342, 7, 1, 220),
(343, 5, 3, 100),
(343, 7, 1, 220),
(344, 2, 1, 300),
(345, 5, 2, 100),
(346, 12, 1, 10),
(349, 2, 1, 300),
(350, 12, 1, 10),
(351, 12, 1, 10),
(371, 14, 23, 233),
(372, 14, 23, 233),
(374, 7, 1, 220),
(374, 12, 1, 10),
(375, 74, 1, 2222),
(375, 75, 1, 2222),
(376, 5, 1, 100),
(376, 73, 1, 2222),
(376, 74, 1, 2222),
(377, 72, 1, 2222),
(378, 12, 2, 10),
(378, 73, 1, 2222),
(379, 74, 1, 2222),
(380, 75, 1, 2222),
(381, 75, 1, 2222),
(382, 12, 5, 10),
(382, 74, 5, 2222),
(382, 75, 9, 2222),
(383, 12, 6, 10),
(383, 75, 3, 2222),
(384, 75, 1, 2222),
(385, 12, 10, 10),
(385, 75, 10, 2222),
(386, 12, 10, 10),
(386, 75, 10, 2222),
(387, 75, 1, 2222),
(388, 20, 2, 100),
(389, 75, 2, 2222),
(390, 74, 1, 2222),
(391, 74, 6, 2222),
(391, 75, 10, 2222),
(392, 74, 1, 2222),
(393, 20, 4, 100),
(394, 5, 1, 100),
(395, 20, 1, 100),
(396, 20, 1, 100),
(397, 20, 1, 100),
(398, 20, 1, 100),
(399, 5, 1, 100),
(399, 8, 1, 100),
(400, 20, 1, 100),
(401, 5, 3, 100),
(402, 75, 1, 2222),
(403, 5, 1, 100),
(404, 7, 1, 220),
(405, 7, 1, 220),
(406, 20, 1, 100),
(407, 2, 1, 300),
(408, 5, 2, 100),
(409, 8, 1, 100),
(410, 7, 1, 220),
(411, 7, 1, 220),
(412, 2, 1, 300),
(412, 7, 1, 220),
(413, 20, 1, 100),
(414, 20, 2, 100),
(415, 75, 1, 2222),
(416, 5, 1, 100),
(417, 74, 1, 2222),
(418, 75, 2, 2222),
(419, 7, 1, 220),
(420, 20, 1, 100),
(421, 75, 1, 2222),
(422, 75, 1, 2222),
(423, 11, 1, 222),
(424, 11, 1, 222),
(425, 12, 1, 10),
(426, 2, 1, 300),
(427, 75, 1, 2222),
(428, 8, 1, 100),
(428, 10, 1, 2000),
(429, 8, 1, 100),
(430, 2, 1, 300),
(430, 8, 1, 100),
(431, 5, 1, 100),
(432, 75, 1, 2222),
(433, 79, 1, 1000000),
(434, 79, 1, 1000000),
(435, 95, 1, 450000),
(436, 93, 1, 40000),
(437, 75, 1, 6500000),
(438, 95, 2, 50000),
(439, 95, 1, 50000),
(440, 93, 1, 40000),
(441, 85, 1, 418000),
(442, 8, 1, 100),
(443, 5, 5, 229000),
(444, 5, 1, 229000),
(445, 95, 1, 50000),
(446, 90, 1, 199000),
(447, 87, 5, 749000),
(448, 94, 5, 3500000),
(449, 94, 1, 3500000),
(450, 94, 1, 3500000),
(451, 94, 1, 3500000),
(452, 92, 3, 999000),
(452, 93, 2, 40000),
(453, 91, 1, 500000),
(454, 94, 1, 3500000),
(454, 95, 1, 50000),
(455, 2, 1, 16000),
(456, 2, 1, 16000),
(457, 95, 1, 50000),
(458, 2, 1, 16000),
(459, 91, 3, 500000),
(460, 7, 1, 270),
(461, 2, 1, 16000),
(461, 7, 1, 270),
(462, 92, 1, 999000),
(463, 92, 1, 999000),
(464, 95, 1, 50000),
(465, 95, 1, 50000),
(466, 95, 1, 50000),
(467, 93, 1, 40000),
(467, 95, 1, 50000),
(468, 95, 1, 50000),
(469, 91, 1, 500000),
(470, 99, 1, 55555),
(471, 94, 1, 3500000),
(472, 93, 1, 40000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale_off` int(11) DEFAULT NULL,
  `desc_short` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `views` int(11) DEFAULT 1,
  `rating` double DEFAULT NULL,
  `disabled_comment` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `image`, `price`, `sale_off`, `desc_short`, `detail`, `amount`, `status`, `views`, `rating`, `disabled_comment`, `created_at`, `updated_at`) VALUES
(2, 1, 'KEO TẢN NHIỆT ỐNG CHÍCH LỚN', 'http://demo-project01.gq/images/78ab331f1668ad94be216985015dae1a.jpg', 16000, 20, 'Keo tản nhiệt là thứ không thể thiếu trong các bộ tản nhiệt ngày nay, bởi nó có khả năng lấp đi phần không khí dẫn nhiệt kém nằm giữa 2 bề mặt. Nhưng liệu các bạn đã biết cách bôi keo thế nào cho đúng?\r\nBạn đã bao giờ thắc mắc tại sao trước khi đặt quạt tản nhiệt lên cpu ta lại phải tra một lớp keo màu trắng trước chứ không được đặt trực tiếp? Hôm nay chúng ta sẽ cùng tìm hiểu về vấn đề này qua bài viết dưới đây.', 'Keo tản nhiệt là thứ không thể thiếu trong các bộ tản nhiệt ngày nay, bởi nó có khả năng lấp đi phần không khí dẫn nhiệt kém nằm giữa 2 bề mặt. Nhưng liệu các bạn đã biết cách bôi keo thế nào cho đúng?\r\nBạn đã bao giờ thắc mắc tại sao trước khi đặt quạt tản nhiệt lên cpu ta lại phải tra một lớp keo màu trắng trước chứ không được đặt trực tiếp? Hôm nay chúng ta sẽ cùng tìm hiểu về vấn đề này qua bài viết dưới đây.', 10, NULL, 15, NULL, 1, '2020-05-01 14:49:49', '2020-05-06 10:14:33'),
(5, 1, 'Đầu đọc thẻ TF, SD Chân Cắm USB-C & USB (50706)', 'http://demo-project01.gq/images/481e8a23391f340a3cd33488cd72ffd3.jpg', 229000, 20, '📌 MÔ TẢ SẢN PHẨM\r\n➖ Đầu đọc thẻ nhớ SD, TF Ugreen 50706 chính hãng. Thiết kế cực kỳ nhỏ gọn, và thời trang. Ugreen 50706 hỗ trợ 2 loại thẻ phổ biến hay dùng SD, TF\r\n➖ Đầu đọc thẻ Ugreen 50706 có 2 chân cắm rất tiện lợi: USB 3.0 dùng cho máy tính thông thường và 1 cổng USB Type C (USB Chuẩn C) dùng cho các các thiết USB Type C như: điện thoại Samsung S8, 8 Plus, HTC 10, LG V20, G Macbook 12, Macbook 13, Macbook 15 Touchbar, Dell XPS 13, các dòng Laptop có USB-C khác.\r\n➖ Khe cắm thẻ SD: SD, SDHC, SDXC, MMC II, RS MMC hỗ trợ thẻ nhớ lên đến 2TB\r\n➖ Sử dụng chipset hãng Genesys Logic GL3224\r\n➖ Đầu đọc thẻ nhớ USB 3.0 Ugreen 50706 hỗ trợ: Windows XP, 7, 8, 10, Linux, Mac OS Xài ra bạn có thể sử dụng cho máy tính bảng, điện thoại Android\r\n➖ Sản phẩm chính hãng phân phối bởi Ugreen,Bảo hành 18 Tháng', 'hi', 10, NULL, 20, NULL, 0, '2020-04-30 05:59:15', '2020-05-04 03:03:08'),
(7, 3, 'LÓT CHUỘT TYLO', 'http://demo-project01.gq/images/9d7cd33b53db8e8e20d1d48a3d6e50fb.jpg', 270, 1, 'Lót chuột chất lượng với giá thành cực kỳ ấn tượng, bạn sẽ được trang bị bệ phóng cho từng cú click chuột thăng hoa của riêng mình, giúp bạn dùng máy tính thoải mái.Tấm lót chuột, bàn di chuột, mouse pad tranh Cổ Phong Trung Quốc SIZE lớn', 'Lót chuột chất lượng với giá thành cực kỳ ấn tượng, bạn sẽ được trang bị bệ phóng cho từng cú click chuột thăng hoa của riêng mình, giúp bạn dùng máy tính thoải mái', 100, 1, 10, NULL, 0, '2020-04-30 05:53:04', '2020-05-03 11:21:29'),
(8, 28, 'USB Wifi - USB thu sóng Wifi cho máy tính để bàn có Anten - USB wifi', 'http://demo-project01.gq/images/826f846f23974a85f56493e63da55839.jpg', 100, 20, 'Bạn có thể tải file driver trên về cài trong trường hợp máy tính của bạn không có ổ đĩa, ổ đĩa bị lỗi, hoặc không đọc được đĩa đi kèm.\r\n\r\n(Một số bản Win mới đã có sẵn driver nên có thể bạn không cần cài thêm gì cả và dùng luôn, còn lại hầu hết là phải cài drive mới dùng được).\r\n\r\nĐối với hệ điều hành Windows bạn cần cài cả 2 file file \"setup.exe\" (Thư mục chính) và file \"ralink_5_1_7_0_win.exe\" (Trong mục Windows)\r\n\r\nThiết bị dùng được cho cả hệ điều hành Windows, Linux và Mac OS\r\n\r\nThiết bị thu wifi tốc độ 150Mb thích hợp với tất cả các chuẩn IEEE 802.11n, IEEE 802.11b, IEEE 802.3, IEEE 802.11g tích hợp thêm ăngten giúp cây máy tính để bàn (PC) kết nối mạng không dây rất gọn gàng, không cần phải kéo dây mạng rất bất tiện và mất thẩm mỹ.', 'Bạn có thể tải file driver trên về cài trong trường hợp máy tính của bạn không có ổ đĩa, ổ đĩa bị lỗi, hoặc không đọc được đĩa đi kèm.\n\n(Một số bản Win mới đã có sẵn driver nên có thể bạn không cần cài thêm gì cả và dùng luôn, còn lại hầu hết là phải cài drive mới dùng được).\n\nĐối với hệ điều hành Windows bạn cần cài cả 2 file file \"setup.exe\" (Thư mục chính) và file \"ralink_5_1_7_0_win.exe\" (Trong mục Windows)\n\nThiết bị dùng được cho cả hệ điều hành Windows, Linux và Mac OS\n\nThiết bị thu wifi tốc độ 150Mb thích hợp với tất cả các chuẩn IEEE 802.11n, IEEE 802.11b, IEEE 802.3, IEEE 802.11g tích hợp thêm ăngten giúp cây máy tính để bàn (PC) kết nối mạng không dây rất gọn gàng, không cần phải kéo dây mạng rất bất tiện và mất thẩm mỹ.', 20, NULL, 5, NULL, 1, '2020-05-01 15:04:30', '2020-05-03 11:15:29'),
(12, 1, 'VỎ CASE VSP 3009 - 3009', 'https://smartbuy01.gq/images/unnamed.jpg', 10, 0, '<p>M&atilde; h&agrave;ng: 3009</p>\r\n\r\n<p>H&atilde;ng sản xuất: VSP</p>\r\n\r\n<p>M&agrave;u : Đen</p>\r\n\r\n<p>Vật liệu: SECC phủ đen, Plastic ABS</p>\r\n\r\n<p>Hỗ trợ: HDD 3.5&quot; x 2</p>\r\n\r\n<p>Hỗ trợ: SSD 2.5&quot; x 2</p>\r\n\r\n<p>Kh&ocirc;ng hỗ trợ gắn DVD 5.25&quot;</p>\r\n\r\n<p>Khe mở rộng: 7 slots</p>\r\n', 'áđấ', 12, 0, 7, NULL, 0, '2020-04-04 19:53:36', '2020-05-01 15:19:08'),
(75, 1, 'Case máy tính CÓ SẴN Ram 4G 8G 16G', 'http://demo-project01.gq/images/9281e10df842dcc977f1736dd5737034.jpg', 6500000, 1000000, 'Case máy tính CÓ SẴN Ram 4G 8G 16G Chiến games CF LOL,GTA5,PUBG,FIFA 4Case máy tính CÓ SẴN Ram 4G 8G 16G Chiến games CF LOL,GTA5,PUBG,FIFA 4Case máy tính CÓ SẴN Ram 4G 8G 16G Chiến games CF LOL,GTA5,PUBG,FIFA 4Case máy tính CÓ SẴN Ram 4G 8G 16G Chiến games CF LOL,GTA5,PUBG,FIFA 4', NULL, 2, NULL, 5, NULL, 1, '2020-04-27 20:33:46', '2020-05-03 11:25:40'),
(77, 34, 'Đồng hồ nam CUENA CNA05 chính hãng dây da đẳng cấp siêu mỏng có lịch', 'http://demo-project01.gq/images/d17d1b64f56e4932fb68de1d5e426da2.jpg', 385000, NULL, NULL, NULL, 10, NULL, 2, NULL, 1, '2020-05-03 11:47:56', '2020-05-03 11:47:56'),
(78, 34, 'ĐỒNG HỒ NAM TADA N009 THỜI TRANG HÀN QUỐC', 'http://demo-project01.gq/images/04ede40abc719621b7800c359a2c87e3.jpg', 599000, NULL, NULL, NULL, 5, NULL, 10, NULL, 1, '2020-05-03 11:51:26', '2020-05-03 11:51:26'),
(79, 34, 'Đồng hồ unisex dây hợp kim WR', 'http://demo-project01.gq/images/bdca86f080eae80856160cd05afa2170.jpg', 1000000, NULL, NULL, NULL, 12, NULL, 19, NULL, 1, '2020-05-03 11:54:08', '2020-05-03 11:54:08'),
(80, 34, 'Đồng hồ unisex thể thao Ulzzang sport đèn led chống nước cực tốt mẫu mới hot', 'http://demo-project01.gq/images/eafe30f6e0f9dffa9875632fabd48e6a.jpg', 199000, NULL, NULL, NULL, 20, NULL, 12, NULL, 1, '2020-05-03 11:56:53', '2020-05-03 11:56:53'),
(81, 35, 'Găng Tay Oakley Ngón Cụt (Loại 1)', 'http://demo-project01.gq/images/0534dfa0818b24b74ddf5e3a8a0329c7.jpg', 65000, NULL, NULL, NULL, 3, NULL, 3, NULL, 1, '2020-05-03 13:07:25', '2020-05-03 13:07:25'),
(82, 35, 'Balo xuất dư 💙 Freeship 💙 Giảm 10k khi nhập [ mã Ba lô ] – Balo thời trang Adiidas', 'http://demo-project01.gq/images/674475d3acd332fb88249180a5104828.jpg', 219000, NULL, NULL, NULL, 10, NULL, 12, NULL, 0, '2020-05-03 13:09:41', '2020-05-04 13:12:42'),
(83, 35, '[FREESHIP 99K]Giày đá bóng Vapor Furi XII xanh chuối TF (Combo kèm túi mang giày)', 'http://demo-project01.gq/images/ae3d0471f4c3232595dfe8dee4811e89.jpg', 420000, NULL, NULL, NULL, 3, NULL, 23, NULL, 1, '2020-05-03 13:11:43', '2020-05-03 13:11:43'),
(84, 36, 'Bộ ốp nội thất xe mazda CX5 2018 - mẫu titan hàng đẹp', 'http://demo-project01.gq/images/4324dddfeda9cf7157772bda6f6da2d0.jpg', 429000, NULL, NULL, NULL, 2, NULL, 5, NULL, 1, '2020-05-03 13:17:28', '2020-05-03 13:17:28'),
(85, 36, 'Mũ Bảo Hiểm Fullface Royal M136 - Đen trơn', 'http://demo-project01.gq/images/ade6a4818e7ab97c866657762a503414.jpg', 418000, NULL, 'aoidahfjka', 'Mũ Bảo Hiểm Fullface Royal M136 - Đen trơn', 5, NULL, 19, NULL, 1, '2020-05-03 13:18:10', '2020-05-04 13:24:41'),
(86, 40, 'Lốc 4 hộp Sữa nước Abbott Grow Gold 180ml', 'http://demo-project01.gq/images/ccc53d7ef1a9c1a1df2e3536549f163b.jpg', 80000, NULL, NULL, NULL, 99, NULL, 199, NULL, 1, '2020-05-03 13:36:53', '2020-05-03 13:36:53'),
(87, 40, 'Thùng Mega Tã Quần Giữ Dáng Pampers Tiết Kiệm M180/L162/XL144', 'http://demo-project01.gq/images/f758994c12129bf0a733ba8351e763bf.jpg', 749000, NULL, NULL, NULL, 20, NULL, 23, NULL, 1, '2020-05-03 13:40:24', '2020-05-03 13:40:24'),
(88, 41, 'Dây chuyền cặp đôi bạc mặt đôi dép khắc tên DCD0015', 'http://demo-project01.gq/images/dc8c75ad77a0e1d72975854b87bc862d.jpg', 499000, NULL, NULL, '- Chất liệu: 100% chất cotton lụa, thấm hút mồ hôi \r\n--Chất vải sờ mịn không bai, không nhăn, không xù\r\n- Quy cách, tiêu chuẩn đường may tinh tế, tỉ mỉ trong từng chi tiết\r\n- Kiểu dáng: Thiết kế đơn giản, dễ mặc, dễ phối đồ\r\n- Form body Hàn Quốc mang lại phong cách trẻ trung, lịch lãm\r\n- Chất lượng sản phẩm tốt, giá cả hợp lý', 9, NULL, 51, NULL, 1, '2020-05-03 13:43:43', '2020-05-06 09:12:13'),
(89, 41, 'Nón Bucket Có Kính Che Bụi Hot Trend', 'http://demo-project01.gq/images/8fda9dbe170231fbf6c362b052cee41d.jpg', 65000, NULL, NULL, '- Chất liệu: 100% chất cotton lụa, thấm hút mồ hôi \r\n--Chất vải sờ mịn không bai, không nhăn, không xù\r\n- Quy cách, tiêu chuẩn đường may tinh tế, tỉ mỉ trong từng chi tiết\r\n- Kiểu dáng: Thiết kế đơn giản, dễ mặc, dễ phối đồ\r\n- Form body Hàn Quốc mang lại phong cách trẻ trung, lịch lãm\r\n- Chất lượng sản phẩm tốt, giá cả hợp lý', 11, NULL, 74, NULL, 1, '2020-05-03 13:54:01', '2020-05-06 09:12:07'),
(90, 41, 'Kính Chống Bụi Bảo Vệ Mặt Unisex Sống Ảo Cực Sịn', 'http://demo-project01.gq/images/60174987d4a845578bf8b0b3aa35a615.jpg', 199000, NULL, NULL, '- Chất liệu: 100% chất cotton lụa, thấm hút mồ hôi \r\n--Chất vải sờ mịn không bai, không nhăn, không xù\r\n- Quy cách, tiêu chuẩn đường may tinh tế, tỉ mỉ trong từng chi tiết\r\n- Kiểu dáng: Thiết kế đơn giản, dễ mặc, dễ phối đồ\r\n- Form body Hàn Quốc mang lại phong cách trẻ trung, lịch lãm\r\n- Chất lượng sản phẩm tốt, giá cả hợp lý', 20, NULL, 123, NULL, 1, '2020-05-03 13:56:44', '2020-05-06 09:11:59'),
(91, 42, 'Găng tay Vô Cực Thanos Infinity Gauntlet', 'http://demo-project01.gq/images/c3b3ec54cc01bc3866315011a357e720.jpg', 500000, NULL, NULL, '- Chất liệu: 100% chất cotton lụa, thấm hút mồ hôi \r\n--Chất vải sờ mịn không bai, không nhăn, không xù\r\n- Quy cách, tiêu chuẩn đường may tinh tế, tỉ mỉ trong từng chi tiết\r\n- Kiểu dáng: Thiết kế đơn giản, dễ mặc, dễ phối đồ\r\n- Form body Hàn Quốc mang lại phong cách trẻ trung, lịch lãm\r\n- Chất lượng sản phẩm tốt, giá cả hợp lý', 3, NULL, 12, NULL, 1, '2020-05-03 14:06:27', '2020-05-06 09:11:53'),
(92, 42, 'Xe mô hình Mercedes-Benz cls63 AMG 1:36', 'http://demo-project01.gq/images/46e397784ae38074d66c2c4c0d97c068.jpg', 999000, NULL, NULL, '- Chất liệu: 100% chất cotton lụa, thấm hút mồ hôi \r\n--Chất vải sờ mịn không bai, không nhăn, không xù\r\n- Quy cách, tiêu chuẩn đường may tinh tế, tỉ mỉ trong từng chi tiết\r\n- Kiểu dáng: Thiết kế đơn giản, dễ mặc, dễ phối đồ\r\n- Form body Hàn Quốc mang lại phong cách trẻ trung, lịch lãm\r\n- Chất lượng sản phẩm tốt, giá cả hợp lý', 5, NULL, 40, NULL, 1, '2020-05-03 14:34:08', '2020-05-06 09:11:47'),
(93, 43, 'Capo acoustic', 'http://demo-project01.gq/images/643b6b08d1446925dc7683f56b84009f.jpg', 40000, NULL, NULL, '- Chất liệu: 100% chất cotton lụa, thấm hút mồ hôi \r\n--Chất vải sờ mịn không bai, không nhăn, không xù\r\n- Quy cách, tiêu chuẩn đường may tinh tế, tỉ mỉ trong từng chi tiết\r\n- Kiểu dáng: Thiết kế đơn giản, dễ mặc, dễ phối đồ\r\n- Form body Hàn Quốc mang lại phong cách trẻ trung, lịch lãm\r\n- Chất lượng sản phẩm tốt, giá cả hợp lý', 5, NULL, 15, NULL, 0, '2020-05-03 14:40:23', '2020-05-06 09:11:42'),
(94, 37, 'Đầm dự tiệc trắng tay phồng kết hạt siêu xinh', 'http://demo-project01.gq/images/f2e3b7127823c807220e05a11f3b74ca.jpg', 3500000, NULL, NULL, '- Chất liệu: 100% chất cotton lụa, thấm hút mồ hôi \r\n--Chất vải sờ mịn không bai, không nhăn, không xù\r\n- Quy cách, tiêu chuẩn đường may tinh tế, tỉ mỉ trong từng chi tiết\r\n- Kiểu dáng: Thiết kế đơn giản, dễ mặc, dễ phối đồ\r\n- Form body Hàn Quốc mang lại phong cách trẻ trung, lịch lãm\r\n- Chất lượng sản phẩm tốt, giá cả hợp lý', 2, NULL, 19, NULL, 1, '2020-05-03 14:44:27', '2020-05-06 09:11:36'),
(95, 38, 'Áo Sơ Mi Nam trắng dài tay Hàn Quốc', 'http://demo-project01.gq/images/72613cd1aab9daa0de87477ceef6429a.jpg', 50000, NULL, NULL, '- Chất liệu: 100% chất cotton lụa, thấm hút mồ hôi \r\n--Chất vải sờ mịn không bai, không nhăn, không xù\r\n- Quy cách, tiêu chuẩn đường may tinh tế, tỉ mỉ trong từng chi tiết\r\n- Kiểu dáng: Thiết kế đơn giản, dễ mặc, dễ phối đồ\r\n- Form body Hàn Quốc mang lại phong cách trẻ trung, lịch lãm\r\n- Chất lượng sản phẩm tốt, giá cả hợp lý', 5, NULL, 99, NULL, 1, '2020-05-03 14:48:15', '2020-05-06 09:10:38'),
(99, 38, 'Ao thun', 'http://demo-project01.gq/images/72613cd1aab9daa0de87477ceef6429a.jpg', 55555, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, '2020-05-11 06:50:25', '2020-05-11 06:50:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_gallreries`
--

CREATE TABLE `product_gallreries` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_url` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image_text` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `product_gallreries`
--

INSERT INTO `product_gallreries` (`id`, `product_id`, `image_url`, `image_text`, `updated_at`) VALUES
(13, 2, 'public/images/anh-bia-facebook-3.jpg', '', '2020-04-04 08:47:51'),
(15, 4, 'public/images/anh-bia-facebook-3.jpg', '', '2020-04-04 08:47:51'),
(16, 6, 'public/images/anh-bia-facebook-3.jpg', '', '2020-04-04 08:47:51'),
(19, 12, 'public/images/a5GxEL_simg_de2fe0_500x500_maxb.png', '', '2020-04-04 08:47:51'),
(20, 5, 'public/images/AhSb3m_simg_de2fe0_500x500_maxb.jpg', '', '2020-04-04 08:47:51'),
(21, 2, 'public/images/F1hdj3_simg_de2fe0_500x500_maxb.jpg', '', '2020-04-04 08:47:51'),
(22, 8, 'public/images/OVL8tR_simg_de2fe0_500x500_maxb.jpg', '', '2020-04-04 08:47:51'),
(23, 1, 'C:\\xampp\\tmp\\php6798.tmp', NULL, '2020-04-04 08:47:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings_system`
--

CREATE TABLE `settings_system` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `slogan` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `hotline` varchar(25) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `content_about` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `map` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `url_facebook` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `url_youtube` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `url_twitter` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `url_instagram` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `settings_system`
--

INSERT INTO `settings_system` (`id`, `logo`, `slogan`, `hotline`, `email`, `company_name`, `content_about`, `map`, `address`, `url_facebook`, `url_youtube`, `url_twitter`, `url_instagram`, `updated_at`, `created_at`) VALUES
(1, 'http://127.0.0.1:8000/images/49698536_486971861707165_3567848707384672256_o.jpg', 'ád', '1111', 'phukienmaytinh@gmail.com', 'PPN', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.873645331407!2d105.79863171493275!3d21.037741185993465!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab38b547a3ab%3A0x619c9575e94b3978!2zTmd1eeG7hW4gS2jDoW5oIFRvw6BuLCBD4bqndSBHaeG6pXksIEjDoCBO4buZaQ!5e0!3m2!1svi!2s!4v1575813543418!5m2!1svi!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\">', 'Ngõ 58 Nguyễn Khánh Toàn Quan Hoa Cầu Giấy, Hà Nội1', NULL, 'https://www.yotube.com', 'https://www.twitter.com', '12`232eqrwshj', '2020-04-03 08:43:18', '2020-04-03 15:07:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `image`, `description`, `url`, `status`, `updated_at`) VALUES
(14, 'https://smartbuy01.gq/images/slide1.jpg', 'Điện gia dụng giảm giá', NULL, NULL, '2020-05-04 03:16:32'),
(15, 'https://smartbuy01.gq/images/silde2.jpg', 'Bê ngay dễ ngon, giảm giá cực khủng', NULL, NULL, '2020-05-04 03:17:25'),
(16, 'https://smartbuy01.gq/images/slide3.jpg', 'Đọc sách hay dinh ngay phần thưởng cùng nhiều khuyến mãi hấp dẫn', NULL, NULL, '2020-05-04 03:18:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_verify` int(11) NOT NULL,
  `token_expire` datetime NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `phone_number` int(15) DEFAULT NULL,
  `address_user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `password`, `token_verify`, `token_expire`, `role`, `status`, `phone_number`, `address_user`, `created_at`, `updated_at`) VALUES
(1, 'TEST', 'https://smartbuy01.gq/images/user_default.png', 'nam123@gmail.com', '$2y$10$XtJxX.75gOBCv9KNC5EJgupCJTkH4i3z9eK73LPF9kx3zjTtv5ke.', 0, '0000-00-00 00:00:00', 0, -5, 1997, 'Ha Noi', '2020-04-15 21:09:24', '2020-05-10 05:15:21'),
(3, 'Phan Phuong Nam', 'https://smartbuy01.gq/images/user_default.png', 'namppph05917@fpt.edu.vn', '$2y$10$i/f1.lI7kTvCiDtQ6/RIUuKGOBLBRk6GJDdSqC3g9N4G5y/dgVW.S', 816168, '2020-05-10 07:28:41', 10, 0, 9999999, 'Ha noi ml', '2020-04-15 22:58:36', '2020-05-10 16:00:40'),
(4, 'Kang', 'https://smartbuy01.gq/images/user_default.png', 'quangntph06374@fpt.edu.vn', '$2y$10$K1B8m9Hwn47fwUUmXI46puUC3R7md/siSGeg5CYLrJMYYtkyraXre', 861586, '2020-05-07 12:13:42', 0, -1, NULL, NULL, '2020-04-19 08:21:59', '2020-05-09 14:13:29'),
(5, 'John K', 'https://smartbuy01.gq/images/user_default.png', 'quangnt@novaon.vn', '$2y$10$RvL9E.N513w68N/83Zi8leNOUyTeqrQn3739e1qxuje00J8qWmlom', 986699, '2020-05-10 14:02:18', 10, 0, NULL, NULL, '2020-05-03 10:58:08', '2020-05-03 10:59:11'),
(8, 'Dhdhhdjdhdh', 'https://smartbuy01.gq/images/user_default.png', 'Xbxbbzbdb@gmail.com', '$2y$10$UzxjD.3s2qmIWInTbphJ4eOSEd5SSfPGzK6F73xFdwF7KoZfRedgm', 0, '0000-00-00 00:00:00', 0, -5, NULL, NULL, '2020-05-07 12:07:21', '2020-05-07 12:08:04'),
(10, 'Annaaaaa', 'https://smartbuy01.gq/images/user_default.png', 'Annaachae@gmail.com', '$2y$10$.ev9GsmMwRldMSaabegw1uzzW4tBDC/7cZztR5LR9xRGmo9ujQgLe', 0, '0000-00-00 00:00:00', 0, -5, NULL, NULL, '2020-05-07 12:01:40', '2020-05-15 13:24:13'),
(12, 'hoanganh', 'https://smartbuy01.gq/images/user_default.png', 'anhthph05566@fpt.edu.vn', '$2y$10$pw86ejdljzQDbFKOfjAk1e8ZVuccd.o642A9sDNr5FcS1Bh5fCT4.', 0, '0000-00-00 00:00:00', 0, 0, NULL, NULL, '2020-05-11 06:41:57', '2020-05-11 06:41:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `used_count` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cate_name` (`cate_name`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`user_ID`,`product_ID`);

--
-- Chỉ mục cho bảng `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id_user`,`id_order`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_gallreries`
--
ALTER TABLE `product_gallreries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings_system`
--
ALTER TABLE `settings_system`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=473;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `product_gallreries`
--
ALTER TABLE `product_gallreries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `settings_system`
--
ALTER TABLE `settings_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
