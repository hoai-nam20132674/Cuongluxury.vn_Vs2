-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 29, 2023 lúc 08:18 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cuongluxury.vn_vs2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL,
  `href` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(1) NOT NULL,
  `stt` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ads`
--

INSERT INTO `ads` (`id`, `type`, `href`, `url`, `target`, `display`, `stt`, `created_at`, `updated_at`) VALUES
(5, 1, NULL, 'Bảng giá chuyển nhượng Vinhomes West Point 1500.png', '_self', 1, NULL, '2021-11-20 17:22:27', '2021-11-21 19:13:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bcids`
--

CREATE TABLE `bcids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bcids`
--

INSERT INTO `bcids` (`id`, `blog_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(6, 6, 1, '2021-10-26 01:00:02', '2021-10-26 01:00:02'),
(7, 7, 1, '2021-10-26 01:02:04', '2021-10-26 01:02:04'),
(8, 5, 6, '2021-10-27 07:41:17', '2021-10-27 07:41:17'),
(9, 5, 5, '2021-10-27 07:53:54', '2021-10-27 07:53:54'),
(12, 8, 5, '2021-10-27 08:39:59', '2021-10-27 08:39:59'),
(13, 8, 6, '2021-10-27 08:39:59', '2021-10-27 08:39:59'),
(14, 9, 5, '2021-10-27 08:44:54', '2021-10-27 08:44:54'),
(15, 9, 7, '2021-10-27 08:44:54', '2021-10-27 08:44:54'),
(16, 10, 5, '2021-10-27 08:47:42', '2021-10-27 08:47:42'),
(17, 10, 7, '2021-10-27 08:47:42', '2021-10-27 08:47:42'),
(18, 11, 5, '2021-10-27 08:55:40', '2021-10-27 08:55:40'),
(19, 11, 7, '2021-10-27 08:55:40', '2021-10-27 08:55:40'),
(20, 12, 5, '2021-10-27 08:58:59', '2021-10-27 08:58:59'),
(21, 12, 8, '2021-10-27 08:58:59', '2021-10-27 08:58:59'),
(22, 13, 3, '2021-11-29 05:47:13', '2021-11-29 05:47:13'),
(23, 14, 4, '2021-11-30 03:18:49', '2021-11-30 03:18:49'),
(26, 17, 3, '2022-03-02 10:03:52', '2022-03-02 10:03:52'),
(27, 18, 3, '2022-03-03 04:33:35', '2022-03-03 04:33:35'),
(28, 19, 3, '2022-03-03 07:13:03', '2022-03-03 07:13:03'),
(30, 20, 6, '2022-05-26 08:25:41', '2022-05-26 08:25:41'),
(31, 20, 1, '2022-05-26 10:42:29', '2022-05-26 10:42:29'),
(32, 20, 5, '2022-05-26 11:10:09', '2022-05-26 11:10:09'),
(33, 21, 1, '2022-06-02 03:24:38', '2022-06-02 03:24:38'),
(34, 21, 10, '2022-06-02 03:24:38', '2022-06-02 03:24:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(1) NOT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avata` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `user_id`, `title`, `content`, `seo_description`, `short_description`, `seo_keyword`, `url`, `display`, `type`, `lang`, `avata`, `created_at`, `updated_at`) VALUES
(5, 'THE MATRIX ONE- TÂM ĐIỂM CỦA THỊ TRƯỜNG PHÍA TÂY HÀ NỘI', 1, 'THE MATRIX ONE- TÂM ĐIỂM CỦA THỊ TRƯỜNG PHÍA TÂY HÀ NỘI', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong><em>C&ugrave;ng với sự chuyển m&igrave;nh mạnh mẽ của khu vực ph&iacute;a T&acirc;y H&agrave; Nội, những dự &aacute;n địa ốc dần xuất hiện, đưa nơi đ&acirc;y trở th&agrave;nh một v&ugrave;ng đất thay &aacute;o mới, đẹp đẽ v&agrave; hiện đại. Trong cuộc chuyển m&igrave;nh đ&oacute;, The Matrix One - Dự &aacute;n hạng sang chuẩn sống mới, nổi l&ecirc;n như t&acirc;m điểm giữa T&acirc;y H&agrave; Nội.</em></strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong><em><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/blogs/matrix%20one%20-1.jpg\" style=\"width:100%\" /></em></strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Hơn 1 thập kỷ trước, khi quỹ đất nội đ&ocirc; đ&atilde; bước v&agrave;o ngưỡng giới hạn, khan hiếm, đắt đỏ, đi c&ugrave;ng với cơn n&oacute;ng ấm của thị trường, l&agrave;n s&oacute;ng dịch chuyển ra ph&iacute;a T&acirc;y H&agrave; Nội đ&atilde; bắt đầu th&agrave;nh h&igrave;nh.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Đ&oacute; l&agrave; những năm khi nh&igrave;n v&agrave;o c&aacute;nh đồng cỏ hoang trải d&agrave;i bạt ng&agrave;n, kh&ocirc;ng &iacute;t nh&agrave; đầu tư đ&atilde; đặt chiếc cọc cắm v&agrave;o mảnh đất với một niềm tin đầy kỳ vọng, nơi đ&acirc;y sẽ trở th&agrave;nh một nơi đ&aacute;ng sống, hiện đại, s&ocirc;i động v&agrave; văn minh.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Đ&oacute; cũng l&agrave; những năm th&aacute;ng, từng con đường được trải d&agrave;i, tạo n&ecirc;n một mạng lưới giao th&ocirc;ng thuận lợi, từng ng&ocirc;i nh&agrave; mọc l&ecirc;n khang trang. V&agrave; đến giờ đ&acirc;y, nhắc đến T&acirc;y H&agrave; Nội, người ta nhắc đến một v&ugrave;ng đất sống mới, trẻ trung, năng động.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Sức h&uacute;t của T&acirc;y H&agrave; Nội c&ograve;n l&agrave; nơi tụ hội của c&aacute;c trụ sở lớn, c&aacute;c trung t&acirc;m thương mại cao cấp, những cơ sở y tế chất lượng cao v&agrave; hệ thống trường học chất quốc tế&hellip;</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/blogs/MIK_MTO_birdview%20truong%20hoc-DA-%20Cong%20vien%20003.jpg\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Giới ph&acirc;n t&iacute;ch nhận định rằng, yếu tố tạo n&ecirc;n khả năng &ldquo;hữu xạ tự nhi&ecirc;n hương&rdquo; của v&ugrave;ng đất ph&iacute;a T&acirc;y kh&ocirc;ng chỉ nằm ở sức h&uacute;t phong thuỷ của mảnh đất &ldquo;vượng kh&iacute;&rdquo; m&agrave; c&ograve;n đến từ bản quy hoạch mới chuy&ecirc;n nghiệp v&agrave; b&agrave;i bản. Nơi đ&aacute;ng sống dần được tạo h&igrave;nh với sự n&acirc;ng tầm của hạ tầng giao th&ocirc;ng, hạ tầng x&atilde; hội. Bởi sự hội tụ của tinh hoa m&agrave; khu vực ph&iacute;a T&acirc;y đang trở th&agrave;nh sự lựa chọn của thị d&acirc;n H&agrave; Nội v&agrave; kh&aacute;ch nước ngo&agrave;i.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Tiềm năng v&agrave; sự trỗi dậy của khu T&acirc;y H&agrave; Nội sẽ c&ograve;n tiếp tục tạo ra dấu mốc đầy ấn tượng khi sức hấp dẫn của nơi đ&acirc;y vẫn c&ograve;n nhiều dư địa lớn.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">TS. Nguyễn Văn Đ&iacute;nh, Tổng thư k&yacute; Hội M&ocirc;i giới Bất động sản Việt Nam cho rằng, sự xuất hiện của hạ tầng đồng bộ đ&atilde; đưa ph&iacute;a T&acirc;y H&agrave; Nội trở th&agrave;nh một thị trường bất động sản s&ocirc;i động.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&ldquo;Dư địa ph&aacute;t triển của khu vực T&acirc;y H&agrave; Nội vẫn c&ograve;n rất lớn v&igrave; quỹ đất rộng. Đặc biệt, với sự đầu tư lớn cho hạ tầng như giao th&ocirc;ng, trường học,&hellip; T&acirc;y H&agrave; Nội sẽ c&ograve;n hấp dẫn v&agrave; thu h&uacute;t nhiều nh&agrave; đầu tư hơn&rdquo;, vị l&atilde;nh đạo của Hội M&ocirc;i giới Bất động sản Việt Nam nhấn mạnh.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/blogs/box-01.jpg\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Đồng quan điểm đ&oacute;, đ&aacute;nh gi&aacute; về tiềm năng của khu vực ph&iacute;a T&acirc;y H&agrave; Nội, TS. Nguyễn Tr&iacute; Hiếu, chuy&ecirc;n gia kinh tế cho rằng, c&oacute; 2 yếu tố để một thị trường bất động sản trở n&ecirc;n s&ocirc;i động, đ&oacute; l&agrave; nguồn cầu v&agrave; cung gặp nh&acirc;u.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&ldquo;Ở ph&iacute;a T&acirc;y H&agrave; Nội, sự ph&aacute;t triển l&agrave; tất yếu khi nơi đ&acirc;y nằm trong định hướng Quy hoạch trở th&agrave;nh một trung t&acirc;m kinh tế, h&agrave;nh ch&iacute;nh, văn h&oacute;a x&atilde; hội mới của Thủ đ&ocirc;. M&agrave; chắc chắn rằng, ph&iacute;a T&acirc;y sẽ phải trở th&agrave;nh trung t&acirc;m mới, &ldquo;vệ tinh&rdquo; của H&agrave; Nội v&igrave; nội đ&ocirc; đ&atilde; chật chội. Nhu cầu của người d&acirc;n về nh&agrave; ở kh&ocirc;ng ngừng tăng l&ecirc;n trong khi nguồn cung sản phẩm bất động sản nh&agrave; ở đa dạng v&agrave; nhiều lựa chọn. Đ&acirc;y l&agrave; l&yacute; do khiến thị trường bất động sản T&acirc;y H&agrave; Nội rất s&ocirc;i động&rdquo;, TS. Nguyễn Tr&iacute; Hiếu nhấn mạnh.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/blogs/box-02.jpg\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Cuộc chuyển m&igrave;nh những năm qua đ&atilde; cho thấy tốc độ ph&aacute;t triển của khu T&acirc;y H&agrave; Nội đang diễn ra mạnh mẽ v&agrave; nhanh ch&oacute;ng. Một trung t&acirc;m kinh tế, h&agrave;nh ch&iacute;nh, văn ho&aacute;, x&atilde; hội mới của Thủ đ&ocirc; đ&atilde; v&agrave; đang dần được h&igrave;nh th&agrave;nh. Cũng ch&iacute;nh nơi đ&acirc;y hứa hẹn một cuộc sống chuẩn mới: hiện đại, văn minh v&agrave; năng động.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/blogs/maxtrix%20one%202.jpg\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Trong l&agrave;n s&oacute;ng chuyển m&igrave;nh của ph&iacute;a T&acirc;y H&agrave; Nội, The Matrix One do nh&agrave; ph&aacute;t triển bất động sản MIK Group, được nhắc đến như thỏi nam ch&acirc;m tr&ecirc;n thị trường bất động sản. Đ&aacute;nh gi&aacute; tổng quan về dự &aacute;n dựa tr&ecirc;n bức tranh chung của thị trường, giới ph&acirc;n t&iacute;ch cho rằng, The Matrix One l&agrave; dự &aacute;n hội tụ đầy đủ c&aacute;c yếu tố then chốt của một sản phẩm bất động sản cao cấp chinh phục nh&agrave; đầu tư v&agrave; kh&aacute;ch h&agrave;ng lựa chọn mua để ở.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Từ vị tr&iacute; đắc địa, kh&ocirc;ng gian xanh c&ugrave;ng hệ thống tiện &iacute;ch được đầu tư tối ưu đến thiết kế chuẩn sống mới trong từng căn hộ, tất cả đ&atilde; đưa The Matrix One trở th&agrave;nh c&aacute;i t&ecirc;n được &ldquo;xướng&rdquo; danh trong con mắt của c&aacute;c nh&agrave; đầu tư s&agrave;nh sỏi.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><em>Vị tr&iacute; đắc địa</em></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&Aacute;n ngữ ở ngay mặt đường L&ecirc; Quang Đạo, The Matrix One l&agrave; dự &aacute;n hiếm hoi c&ograve;n s&oacute;t lại nằm ngay cửa ng&otilde; ph&iacute;a T&acirc;y H&agrave; Nội, nơi kết nối trực tiếp với c&aacute;c tuyến đường huyết mạch trong địa b&agrave;n H&agrave; Nội v&agrave; c&aacute;c tỉnh th&agrave;nh l&acirc;n cận. T&iacute;nh đến hiện tại, c&aacute;c tuyến đường huyết mạch như Mễ Tr&igrave;, Đại lộ Thăng Long, v&agrave; L&ecirc; Quang Đạo đ&atilde; ho&agrave;n thiện, tạo ra sự di chuyển thuận lợi v&agrave; dễ d&agrave;ng cho những cư d&acirc;n tương lai của The Matrix One.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Từ The Matrix One, t&acirc;m điểm của khu T&acirc;y H&agrave; Nội, những cư d&acirc;n c&oacute; thể dễ d&agrave;ng dịch chuyển đến c&aacute;c trung t&acirc;m thể thao văn h&oacute;a, giải tr&iacute; h&agrave;ng đầu cả nước như: Trung t&acirc;m Hội nghị Quốc gia, S&acirc;n vận động Quốc gia Mỹ Đ&igrave;nh, Khu li&ecirc;n hợp thể thao quốc gia chỉ v&agrave;i ph&uacute;t. V&agrave; cũng từ t&acirc;m điểm n&agrave;y, sự kết nối đến hệ thống trường học danh tiếng như trường li&ecirc;n cấp Amsterdam, Marie Curie, Lomonoxop, ĐH Quốc gia H&agrave; Nội hay hệ thống trung t&acirc;m thương mại đẳng cấp như TTTM The Garden, Vincom Center đều chỉ diễn ra trong &iacute;t ph&uacute;t.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/blogs/Matrix%202.jpg\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><em>Kh&ocirc;ng gian sống xanh</em></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Sức h&uacute;t của The Matrix One c&ograve;n đến từ những gi&aacute; trị độc bản, điều m&agrave; thật kh&oacute; c&oacute; một dự &aacute;n nằm nay ngay ở vị tr&iacute; đắc địa, giữa trung t&acirc;m mới lại c&oacute; được. Đ&oacute; l&agrave; dự &aacute;n c&ocirc;ng vi&ecirc;n 14ha xuất hiện ở ngay ngưỡng cửa dự &aacute;n The Matrix One. Một bước xuống kh&ocirc;ng gian xanh mướt với hồ nước, c&acirc;y xanh, khu vui chơi gảii tr&iacute;, khu thể dục thể thao đường chạy bộ, nh&agrave; văn h&oacute;a - thể thao đa năng l&agrave; điều ho&agrave;n to&agrave;n sẽ được hiện thực ho&aacute; khi dự &aacute;n ch&iacute;nh thức ch&agrave;o đ&oacute;n những cư d&acirc;n tương lai.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Khi quỹ đất trung t&acirc;m ng&agrave;y c&agrave;ng co hẹp, sự b&ecirc; t&ocirc;ng ho&aacute; của những bức tường, &aacute;p lực dịch bệnh, &ocirc; nhiễm c&agrave;ng khiến cho mỗi thị d&acirc;n đ&ocirc; thị kh&aacute;t khao một cuộc sống xanh -</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&nbsp;trong l&agrave;nh. Lợi thế cạnh tranh độc bản của The Matrix One c&agrave;ng đưa c&aacute;i t&ecirc;n &ldquo;The Matrix One&rdquo; c&agrave;ng trở th&agrave;nh &ldquo;từ kho&aacute;&rdquo; được kh&aacute;ch h&agrave;ng săn t&igrave;m.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Chưa dừng lại tại đ&oacute;, nh&agrave; ph&aacute;t triển bất động sản MIK Group c&ograve;n đặc biệt ch&uacute; trọng đến hệ thống c&acirc;y xanh trong nội khu. Với quỹ đất hạn hẹn, yếu tố thiết kế th&ocirc;ng minh, phủ sắc xanh từ từng 1 l&ecirc;n tầng m&aacute;i l&agrave; c&aacute;ch để biến ng&ocirc;i nh&agrave; kh&ocirc; cứng trở th&agrave;nh nơi nghỉ dưỡng trong l&agrave;nh.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Th&ocirc;ng tin từ chủ đầu tư tiết lộ, c&aacute;c thiết kế cảnh quan của The Matrix One mang đậm hơi thở &Aacute; Đ&ocirc;ng với khu vườn xanh tự nhi&ecirc;n ở tầng 1. Dải xanh của thi&ecirc;n nhi&ecirc;n được k&eacute;o d&agrave;i l&ecirc;n tới tầng m&aacute;i với &ldquo;rừng&rdquo; c&acirc;y được thiết kế theo tầng lớp, đảm bảo độ phủ xanh tối đa cho dự &aacute;n. Thiết kế n&agrave;y kh&ocirc;ng chỉ tạo ra sự duy mỹ về h&igrave;nh ảnh m&agrave; c&ograve;n mang đến m&ocirc;i trường sống trong l&agrave;nh với sự bảo vệ của lớp c&acirc;y xanh trước tiếng ồn, kh&oacute;i bụi v&agrave; &ocirc; nhiễm m&ocirc;i trường.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/blogs/MIK_MTO%20phong%20ngu%20view%20cong%20vien.jpg\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><em>Chuỗi tiện &iacute;ch đẳng cấp</em></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Cuộc sống tại The Matrix One sẽ xoay quanh như trong một th&agrave;nh phố xanh thu nhỏ với hơn 39 tiện &iacute;ch xuất hiện ở ngay ngưỡng cửa. Chỉ bằng một n&uacute;t bấm thang m&aacute;y, những cư d&acirc;n đều c&oacute; thể chạm tới tất cả dịch vụ hiện đại đẳng cấp nhất như bể bơi bốn m&ugrave;a, hệ thống s&acirc;n tập thể thao, ph&ograve;ng tập gym, yoga, vườn thiền, si&ecirc;u thị, trường học&hellip; Xu hướng All &ndash; in &ndash; one, tất cả trong một đ&atilde; trở th&agrave;nh sự tất yếu trong mỗi dự &aacute;n d&acirc;n cư v&agrave; đ&oacute; cũng l&agrave; điều kh&ocirc;ng thể thiếu tại The Matrix One.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Đặc biệt, trong từng căn hộ, c&aacute;c thiết bị th&ocirc;ng minh v&agrave; thiết kế theo ti&ecirc;u chuẩn căn hộ 5 sao đảm bảo mang tới giải ph&aacute;p t&acirc;n tiến v&agrave; hiện đại bậc nhất tại H&agrave; Nội. Điểm t&iacute;n nhiệm của dự &aacute;n c&ograve;n đến từ sự ri&ecirc;ng biệt về tỷ lệ diện t&iacute;ch th&ocirc;ng thủy tr&ecirc;n diện t&iacute;ch x&acirc;y dựng (NFA/CFA) chỉ ở ngưỡng 54%, trong khi c&aacute;c to&agrave; nh&agrave; kh&aacute;c l&ecirc;n con số n&agrave;y l&agrave; hơn 65%. Số lượng căn hộ tr&ecirc;n một mặt s&agrave;n thấp, chỉ 10 căn/s&agrave;n với 7 thang m&aacute;y/t&ograve;a. Mật độ x&acirc;y dựng thấp sẽ đảm bảo sự th&ocirc;ng tho&aacute;ng cho cuộc sống của cư d&acirc;n The Matrix One.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/blogs/MIK_MTO_HH2%20khu%20vui%20choi%20tre%20em(1).jpg\" style=\"width:50%\" /><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/blogs/Matrix.jpg\" style=\"width:50%\" /></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/blogs/tit%203.jpg\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Ngay từ khi c&ograve;n tr&ecirc;n bản vẽ, The Matrix One đ&atilde; được nh&agrave; ph&aacute;t triển dự &aacute;n MIK Group định hướng nơi đ&acirc;y sẽ tạo ra một chuẩn mực sống mới, chuẩn mực của cuộc sống hạng sang d&agrave;nh cho giới thượng lưu. Định hướng n&agrave;y dựa tr&ecirc;n sự th&agrave;nh c&ocirc;ng từ những dự &aacute;n mang thương hiệu &ldquo;Imperia&rdquo; đ&igrave;nh đ&aacute;m với thiết kế kh&ocirc;ng gian sống chuẩn mực với khu vườn tr&ecirc;n m&acirc;y.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">The Matrix One kh&ocirc;ng chỉ thừa hưởng sự ưu việt của thiết kế mang tầm quốc tế m&agrave; c&ograve;n được chăm ch&uacute;t đến từng kh&ocirc;ng gian sống v&agrave; qu&aacute; tr&igrave;nh vận h&agrave;nh, quản l&yacute;.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">The Matrix One tiếp tục l&agrave; c&aacute;i &ldquo;bắt tay&rdquo; giữa MIKGroup với c&aacute;c tập đo&agrave;n thiết kế h&agrave;ng đầu thế giới như C&ocirc;ng ty MBaumschlager Eberle Architects (BEA), doanh nghiệp đ&atilde; g&oacute;p phần tạo n&ecirc;n t&ecirc;n tuổi của c&aacute;c dự &aacute;n như Imperia Sky Garden, M&ouml;venpick Resort Waverly Ph&uacute; Quốc. Ng&ocirc;n ngữ kiến tr&uacute;c đi theo hướng đơn giản m&agrave; tinh tế nhằm tạo ra sự sang trọng đẳng cấp của The Matrix One.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/blogs/14_%20Eyeview%20Zen.jpg\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Dưới b&agrave;n tay của c&aacute;c kiến tr&uacute;c sư t&agrave;i hoa đến từ BEA, từng chi tiết đều mang sự hiện đại, sang trọng của phương T&acirc;y m&agrave; kh&ocirc;ng bỏ qua sự truyền thống của phương Đ&ocirc;ng. Yếu tố tối giản trong ng&ocirc;n ngữ thiết kế đi từ triết l&yacute; &ldquo;lấy con người l&agrave;m trung t&acirc;m trong sự trải nghiệm&rdquo; đ&atilde; mang đến một kh&ocirc;ng gian sống chuẩn mực mới.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Ngay trong từng căn hộ, c&aacute;c bố tr&iacute; c&aacute;c ph&ograve;ng chức năng đều được t&iacute;nh to&aacute;n kỹ lưỡng về phong thuỷ v&agrave; sự khoa học, hạn chế khoảng kh&ocirc;ng cứng. Mỗi căn hộ đều c&oacute; bố tr&iacute; tối ưu c&aacute;c mặt tho&aacute;ng với kh&ocirc;ng gian b&ecirc;n ngo&agrave;i. Ban c&ocirc;ng, cửa sổ trở th&agrave;nh nơi đ&oacute;n &aacute;nh nắng tự nhi&ecirc;n, tạo ra nhiệt năng cho cuộc sống của mỗi gia chủ. Chất liệu, kiểu d&aacute;ng, c&aacute;ch sắp đặt đều dựa tr&ecirc;n ti&ecirc;u ch&iacute; về một kh&ocirc;ng gian sống tiện nghi như resort. Đặc biệt, mỗi căn hộ tại The Matrix One c&ograve;n được lắp đặt thiết bị c&ocirc;ng nghệ th&ocirc;ng minh, gia tăng c&ocirc;ng năng tiện &iacute;ch.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Kh&ocirc;ng chỉ ch&uacute; trọng đến việc n&acirc;ng tầm gi&aacute; trị sống thượng lưu cho c&aacute;c chủ nh&acirc;n tương lai, đơn vị ph&aacute;t triển dự &aacute;n c&ograve;n muốn mang tới một kh&ocirc;ng gian sống xanh, gần gũi với thi&ecirc;n nhi&ecirc;n khi yếu tố m&ocirc;i trường trong l&agrave;nh được c&aacute;c nh&agrave; thiết kế cảnh quan h&agrave;ng đầu kiến tạo. Chuẩn sống mới của giới thượng lưu l&agrave; &ldquo;an cư như nghỉ dưỡng&rdquo; giữa phố thị s&ocirc;i động.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Cuộc sống của những cư d&acirc;n th&agrave;nh đạt 4.0 đ&atilde; được trải phẳng với chuỗi tiện &iacute;ch 5 sao, trong căn hộ tiện nghi đủ đầy, giữa ốc đảo xanh mướt ở ngay tại The Matrix One &ndash; t&acirc;m điểm của khu vực ph&iacute;a T&acirc;y H&agrave; Nội.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Chuẩn sống mới với phong c&aacute;ch hạng sang, đặc quyền của giới thượng lưu đ&atilde; v&agrave; đang được x&aacute;c lập tại The Matrix One. Chắc chắn rằng, trong tương lai ngắn, t&acirc;m điểm của khu T&acirc;y H&agrave; Nội sẽ trở th&agrave;nh hạt nh&acirc;n thu h&uacute;t sự s&ocirc;i động v&agrave; nhộn nhịp của trung t&acirc;m mới.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/blogs/box-03.jpg\" style=\"width:100%\" /></span></span></p>', 'THE MATRIX ONE- TÂM ĐIỂM CỦA THỊ TRƯỜNG PHÍA TÂY HÀ NỘI', 'Cùng với sự chuyển mình mạnh mẽ của khu vực phía Tây Hà Nội, những dự án địa ốc dần xuất hiện, đưa nơi đây trở thành một vùng đất thay áo mới, đẹp đẽ và hiện đại. Trong cuộc chuyển mình đó, The Matrix One - Dự án hạng sang chuẩn sống mới, nổi lên như tâm điểm giữa Tây Hà Nội.', 'THE MATRIX ONE- TÂM ĐIỂM CỦA THỊ TRƯỜNG PHÍA TÂY HÀ NỘI', 'the-matrix-one-tam-diem-cua-thi-truong-phia-tay-ha-noi-bi5', 1, NULL, 'vi', 'box-03.jpg', '2021-10-26 00:55:56', '2021-10-26 00:55:56'),
(6, 'Hà Nội thêm chung cư, nhà liền kề vào ô đất công cộng Khu đô thị mới Mỹ Đình II', 1, 'Hà Nội thêm chung cư, nhà liền kề vào ô đất công cộng Khu đô thị mới Mỹ Đình II', '<h2 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&Ocirc; đất&nbsp;CC1 c&oacute; diện t&iacute;ch gần 8.000m2 thuộc Khu đ&ocirc; thị mới Mỹ Đ&igrave;nh II (quận Nam Từ Li&ecirc;m, H&agrave; Nội) c&oacute;&nbsp;chức năng đất c&ocirc;ng cộng nay được điều chỉnh th&agrave;nh đất ở&nbsp;(gồm nh&agrave; ở chung cư kết hợp dịch vụ, thương mại, nh&agrave; trẻ v&agrave; nh&agrave; ở li&ecirc;n kế) với tầng cao c&ocirc;ng tr&igrave;nh 6-21 tầng, d&acirc;n số tăng l&ecirc;n 700 người...</span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/blogs/photo1634898653837-1634898653906978621826.jpg\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Ph&oacute; Chủ tịch UBND TP H&agrave; Nội Dương Đức Tuấn vừa k&yacute; ban h&agrave;nh Quyết định số 4519 về việc ph&ecirc; duyệt điều chỉnh cục bộ Quy hoạch chi tiết Khu đ&ocirc; thị mới Mỹ Đ&igrave;nh II tỷ lệ 1/500 tại &ocirc; đất k&yacute; hiệu CC1 tại phường Mỹ Đ&igrave;nh 2, quận Nam Từ Li&ecirc;m.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/blogs/photo-1-16348986486641174654458.jpg\" style=\"width:100%\" /></span></span></p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">H&agrave; Nội điều chỉnh &ocirc; đất CC1 Khu đ&ocirc; thị mới Mỹ Đ&igrave;nh II (quận Nam Từ Li&ecirc;m, H&agrave; Nội) c&oacute; chức năng đất c&ocirc;ng cộng th&agrave;nh đất ở.</span></span></p>\r\n\r\n			<p style=\"text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&Ocirc; đất điều chỉnh quy hoạch c&oacute; diện t&iacute;ch khoảng 7.781,5m2, gồm: Khoảng 674,8m2 đất nằm v&agrave;o phạm vi đường giao th&ocirc;ng nội bộ trong khu đ&ocirc; thị v&agrave; khoảng 7.106,7m2 đất để thực hiện dự &aacute;n. &Ocirc; đất c&oacute; ranh giới ph&iacute;a Đ&ocirc;ng gi&aacute;p đường L&ecirc; Đức Thọ; ph&iacute;a Bắc gi&aacute;p đường H&agrave;m Nghi; ph&iacute;a T&acirc;y Nam gi&aacute;p đường nội bộ thuộc Khu đ&ocirc; thị Mỹ Đ&igrave;nh II; ph&iacute;a Nam gi&aacute;p đường Cao Xu&acirc;n Huy.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Theo Quy hoạch chi tiết Khu đ&ocirc; thị Mỹ Đ&igrave;nh II tỷ lệ 1/500 được duyệt, &ocirc; đất CC1 được x&aacute;c định chức năng đất c&ocirc;ng cộng th&agrave;nh phố v&agrave; khu vực c&oacute; c&aacute;c chỉ ti&ecirc;u quy hoạch kiến tr&uacute;c: Diện t&iacute;ch đất khoảng 7.782m2 (bao gồm cả đường giao th&ocirc;ng); diện t&iacute;ch x&acirc;y dựng 3.610m2; mật độ x&acirc;y dựng 46,4%; tầng cao b&igrave;nh qu&acirc;n 5,3 tầng (c&ocirc;ng tr&igrave;nh cao 5 - 9 tầng); hệ số sử dụng đất 2,45 lần.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Nay, giữ nguy&ecirc;n phạm vi ranh giới của &ocirc; đất theo quy hoạch được duyệt, đề xuất điều chỉnh th&agrave;nh &ocirc; đất k&yacute; hiệu NO c&oacute; chức năng đất ở (gồm nh&agrave; ở chung cư kết hợp dịch vụ, thương mại, nh&agrave; trẻ v&agrave; nh&agrave; ở li&ecirc;n kế) với c&aacute;c chỉ ti&ecirc;u quy hoạch kiến tr&uacute;c: Diện t&iacute;ch đường giao th&ocirc;ng 674,8m2; diện t&iacute;ch đất thực hiện dự &aacute;n 7,106,7m2; mật độ x&acirc;y dựng 50%; hệ số sử dụng đất 6,0 lần; tầng cao c&ocirc;ng tr&igrave;nh 6 v&agrave; 21 tầng; tầng hầm 1 - 3 tầng; d&acirc;n số 700 người.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Mục ti&ecirc;u của đồ &aacute;n quy hoạch nhằm cụ thể h&oacute;a Quy hoạch chung x&acirc;y dựng Thủ đ&ocirc; H&agrave; Nội đến năm 2030 tầm nh&igrave;n đến năm 2050, Quy hoạch ph&acirc;n khu đ&ocirc; thị H2-2 tỷ lệ 1/2000 đ&atilde; được c&aacute;c cấp thẩm quyền ph&ecirc; duyệt. Đồng thời, nhằm khai th&aacute;c v&agrave; tăng hiệu quả sử dụng quỹ đất, ph&ugrave; hợp với nhu cầu ph&aacute;t triển đ&ocirc; thị tại khu vực, ph&ugrave; hợp với định hướng Quy hoạch chung x&acirc;y dựng Thủ đ&ocirc; H&agrave; Nội v&agrave; Quy hoạch ph&acirc;n khu đ&ocirc; thị H2-2.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/blogs/photo-1-16348986499491932457008.jpg\" style=\"width:100%\" /></span></span></p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&Ocirc; đất CC1 c&oacute; diện t&iacute;ch gần 8.000m2 thuộc Khu đ&ocirc; thị mới Mỹ Đ&igrave;nh II (quận Nam Từ Li&ecirc;m, H&agrave; Nội) c&oacute; chức năng đất c&ocirc;ng cộng nay được điều chỉnh th&agrave;nh đất ở (gồm nh&agrave; ở chung cư kết hợp dịch vụ, thương mại, nh&agrave; trẻ v&agrave; nh&agrave; ở li&ecirc;n kế) với tầng cao c&ocirc;ng tr&igrave;nh 6-21 tầng, d&acirc;n số tăng l&ecirc;n 700 người...</span></span></p>\r\n\r\n			<p style=\"text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">UBND TP giao quận Nam Từ Li&ecirc;m chủ tr&igrave; phối hợp với Sở Quy hoạch - Kiến tr&uacute;c v&agrave; Tổng c&ocirc;ng ty Đầu tư ph&aacute;t triển nh&agrave; v&agrave; đ&ocirc; thị (HUD) tổ chức c&ocirc;ng bố c&ocirc;ng khai điều chỉnh cục bộ Quy hoạch chi tiết được duyệt cho c&aacute;c tổ chức, cơ quan v&agrave; Nh&acirc;n d&acirc;n biết, thực hiện.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Giao Chủ tịch UBND quận Nam Từ Li&ecirc;m, UBND phường Mỹ Đ&igrave;nh 2 chịu tr&aacute;ch nhiệm kiểm tra, gi&aacute;m s&aacute;t việc x&acirc;y dựng theo quy hoạch được ph&ecirc; duyệt, xử l&yacute; c&aacute;c trường hợp x&acirc;y dựng sai quy hoạch theo thẩm quyền v&agrave; quy định của ph&aacute;p luật; phối hợp v&agrave; tạo điều kiện cho chủ đầu tư dự &aacute;n trong qu&aacute; tr&igrave;nh triển khai thực hiện dự &aacute;n đầu tư x&acirc;y dựng.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Giao c&aacute;c Sở: Kế hoạch v&agrave; Đầu tư, T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường, X&acirc;y dựng, T&agrave;i ch&iacute;nh v&agrave; c&aacute;c Sở, ng&agrave;nh c&oacute; li&ecirc;n quan hướng dẫn nh&agrave; đầu tư c&aacute;c thủ tục về chủ trương dự &aacute;n đầu tư, đất đai, nghĩa vụ t&agrave;i ch&iacute;nh, quỹ nh&agrave; ở x&atilde; hội&hellip; theo đ&uacute;ng quy định.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Chủ đầu tư c&oacute; tr&aacute;ch nhiệm triển khai thực hiện dự &aacute;n đầu tư tu&acirc;n thủ quy định của ph&aacute;p luật, ph&ugrave; hợp với điều chỉnh cục bộ Quy hoạch chi tiết Khu đ&ocirc; thị mới Mỹ Đ&igrave;nh II tỷ lệ 1/500 tại &ocirc; đất k&yacute; hiệu CC1 được ph&ecirc; duyệt; li&ecirc;n hệ với c&aacute;c Sở, ng&agrave;nh li&ecirc;n quan để được hướng dẫn c&aacute;c thủ tục về đầu tư, đất đai, nghĩa vụ t&agrave;i ch&iacute;nh&hellip;</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><em>Được biết, Quy hoạch chi tiết Khu đ&ocirc; thị mới Mỹ Đ&igrave;nh II tỷ lệ 1/500 được UBND TP H&agrave; Nội ph&ecirc; duyệt từ năm 2001. &Ocirc; đất CC1 Khu đ&ocirc; thị mới Mỹ Đ&igrave;nh II c&oacute; chức năng đất c&ocirc;ng cộng th&agrave;nh phố v&agrave; khu vực. Tuy nhi&ecirc;n, đến nay đ&atilde; 20 năm nhưng chủ đầu tư kh&ocirc;ng triển khai x&acirc;y dựng c&ocirc;ng tr&igrave;nh theo quy hoạch được duyệt ban đầu.</em></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><em>Mới đ&acirc;y, tại b&aacute;o c&aacute;o kết quả t&aacute;i gi&aacute;m s&aacute;t của Thường trực HĐND TP về thực hiện kết luận gi&aacute;m s&aacute;t của HĐND TP về t&igrave;nh h&igrave;nh quản l&yacute; c&aacute;c dự &aacute;n đầu tư vốn ngo&agrave;i ng&acirc;n s&aacute;ch sử dụng đất chậm triển khai, vi phạm Luật Đất đai th&igrave; &ocirc; đất CC1 v&agrave; &ocirc; đất CC3 Khu đ&ocirc; thị Mỹ Đ&igrave;nh 2 nằm trong danh s&aacute;ch h&agrave;ng trăm dự &aacute;n đ&atilde; được giao đất c&oacute; vi phạm.</em></span></span></p>', 'Hà Nội thêm chung cư, nhà liền kề vào ô đất công cộng Khu đô thị mới Mỹ Đình II', 'Ô đất CC1 có diện tích gần 8.000m2 thuộc Khu đô thị mới Mỹ Đình II (quận Nam Từ Liêm, Hà Nội) có chức năng đất công cộng nay được điều chỉnh thành đất ở (gồm nhà ở chung cư kết hợp dịch vụ, thương mại, nhà trẻ và nhà ở liên kế) với tầng cao công trình 6-21 tầng, dân số tăng lên 700 người...', 'Hà Nội thêm chung cư, nhà liền kề vào ô đất công cộng Khu đô thị mới Mỹ Đình II', 'ha-noi-them-chung-cu-nha-lien-ke-vao-o-dat-cong-cong-khu-do-thi-moi-my-dinh-ii-bi6', 1, NULL, 'vi', 'photo1634898653837-1634898653906978621826.jpg', '2021-10-26 01:00:02', '2021-10-26 01:00:02'),
(7, 'Lý do giá nhà tại Hà Nội sẽ không giảm sau dịch', 1, 'Lý do giá nhà tại Hà Nội sẽ không giảm sau dịch', '<h2 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Khi dịch bệnh được kiểm so&aacute;t, nhiều nhận định cho rằng, với nhu cầu của người mua đang rất ổn định, nguồn cung dự &aacute;n mới rất &iacute;t... n&ecirc;n gần như kh&ocirc;ng c&oacute; chuyện giảm gi&aacute; ở c&aacute;c chủ đầu tư dự &aacute;n nh&agrave; ở tại H&agrave; Nội.</span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Theo số liệu khảo s&aacute;t của CBRE Việt Nam cho thấy, gi&aacute; b&aacute;n sơ cấp trong qu&yacute; 2 ở thị trường H&agrave; Nội trung b&igrave;nh ở mức 1.472 USD/m2, tăng 7% theo năm v&agrave; 1% theo qu&yacute;.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Tr&ecirc;n thị trường thứ cấp, gi&aacute; b&aacute;n trung b&igrave;nh ở ngưỡng 1.180 USD/m2, tăng 4% theo năm. C&aacute;c dự &aacute;n trung cấp mới ho&agrave;n thiện, c&oacute; vị tr&iacute; thuận tiện như ở quận Hai B&agrave; Trưng hay quận Bắc Từ Li&ecirc;m ghi nhận mức tăng gi&aacute; cao nhất trong v&ograve;ng một năm trở lại đ&acirc;y. Một số dự &aacute;n ghi nhận mức tăng 8-9% mỗi năm.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Đơn vị n&agrave;y đ&aacute;nh gi&aacute;, gi&aacute; b&aacute;n sơ cấp trong hai năm tới dự kiến tăng trong khoảng từ 4-6%, cao hơn mức tăng của năm 2020 l&agrave; 3% nhờ hệ thống cơ sở hạ tầng đang dần cải thiện v&agrave; nguồn cung mới kh&ocirc;ng qu&aacute; dồi d&agrave;o như so với giai đoạn trước dịch Covid-19.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/blogs/photo-1-16327028048761103973572.jpg\" style=\"width:100%\" /></span></span></p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Hiện nay gần như khu vực nội đ&ocirc; v&agrave; v&agrave;nh đai 3, c&aacute;c dự &aacute;n rất hiếm, nếu c&oacute; th&igrave; mức gi&aacute; rất cao, dao động từ tr&ecirc;n 45 &ndash; 60 triệu đồng/m2.</span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Chia sẻ với PV Infonet, l&atilde;nh đạo một doanh nghiệp chuy&ecirc;n ph&acirc;n phối c&aacute;c dự &aacute;n bất động sản cho rằng, mặc d&ugrave; c&aacute;c hoạt động giao dịch bị ngưng trệ do Covid-19 nhưng gi&aacute; b&aacute;n sơ cấp vẫn kh&ocirc;ng giảm gi&aacute; đ&aacute;ng kể, thậm ch&iacute; c&oacute; một số dự &aacute;n c&ograve;n tăng bởi do gi&aacute; đầu v&agrave;o tăng cao.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Cụ thể, theo vị n&agrave;y, thời gian qua, quỹ đất ở H&agrave; Nội ng&agrave;y c&agrave;ng khan hiếm, gi&aacute; đất cũng tăng cao; trong khi c&aacute;c chi ph&iacute; đầu v&agrave;o kh&aacute;c như gi&aacute; vật liệu x&acirc;y dựng, nhất l&agrave; th&eacute;p, gi&aacute; nh&acirc;n c&ocirc;ng tăng... khiến gi&aacute; vốn của c&aacute;c sản phẩm cũng tăng cao đ&aacute;ng kể.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">C&ugrave;ng với đ&oacute;, số lượng dự &aacute;n mới được cấp ph&eacute;p kh&ocirc;ng c&oacute; nhiều tr&ecirc;n thị trường cũng l&agrave; lợi thế cho ch&iacute;nh c&aacute;c chủ đầu tư để neo gi&aacute; b&aacute;n ở mức cao nhằm tối đa h&oacute;a lợi nhuận.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&ldquo;Khi dịch bệnh được khống chế, nhu cầu quay trở lại thị trường bất động sản c&oacute; thể tăng nhanh th&igrave; tr&ecirc;n thị trường cũng chỉ c&oacute; từng ấy sản phẩm, chứ kh&ocirc;ng c&oacute; nhiều hơn n&ecirc;n kh&oacute; c&oacute; chuyện giảm gi&aacute; nh&agrave;&rdquo;, vị l&atilde;nh đạo n&agrave;y n&oacute;i.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Cũng cho rằng, sau dịch sẽ kh&oacute; c&oacute; chuyện giảm gi&aacute; nh&agrave;, &ocirc;ng Phạm Văn Ngọc, Gi&aacute;m đốc C&ocirc;ng ty CP Dịch vụ Địa ốc H&agrave; Nội Starland&nbsp;n&ecirc;u thực trạng khi quỹ đất H&agrave; Nội ng&agrave;y c&agrave;ng khan hiếm, dần dần c&aacute;c chủ đầu tư phải dịch chuyển ra ngoại đ&ocirc;.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Theo &ocirc;ng Ngọc, hiện nay gần như khu vực nội đ&ocirc; v&agrave; v&agrave;nh đai 3, c&aacute;c dự &aacute;n rất hiếm, nếu c&oacute; th&igrave; mức gi&aacute; rất cao, dao động từ tr&ecirc;n 45 &ndash; 60 triệu đồng/m2, thậm ch&iacute; c&oacute; dự &aacute;n mức gi&aacute; c&ograve;n cao hơn.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&ldquo;Mức gi&aacute; n&agrave;y kh&ocirc;ng c&ograve;n ph&ugrave; hợp với những người c&oacute; thu nhập vừa phải. Với kh&aacute;ch h&agrave;ng muốn mua bất động sản c&oacute; gi&aacute; dưới 40 triệu đồng/m2 th&igrave; phải chấp nhận đi xa, ra ngo&agrave;i khu vực v&agrave;nh đai 3&rdquo;, &ocirc;ng Ngọc n&oacute;i.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Vị gi&aacute;m đốc n&agrave;y dẫn chứng th&ecirc;m, đơn cử như quận Bắc Từ Li&ecirc;m, gần như kh&ocirc;ng c&ograve;n dự &aacute;n c&oacute; mức gi&aacute; tốt, hầu như gi&aacute; rất cao. Đặc biệt, một số dự &aacute;n ở tiệm cận khu vực Ngoại giao đo&agrave;n hiện kh&ocirc;ng c&ograve;n mức gi&aacute; dưới 40 triệu đồng/m2; hầu hết c&aacute;c dự &aacute;n đều c&oacute; gi&aacute; tr&ecirc;n 50 triệu đồng/m2, kh&aacute;ch h&agrave;ng kh&aacute; kh&oacute; tiếp cận những dự &aacute;n n&agrave;y.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Theo &ocirc;ng Ngọc, c&aacute;c dự &aacute;n mở b&aacute;n mới ở năm 2021 tương đối hiếm, người mua c&oacute; thể c&acirc;n nhắc c&oacute; thể t&igrave;m mua ở những dự &aacute;n thứ cấp, đ&atilde; b&agrave;n giao v&agrave; đi v&agrave;o hoạt động ổn định một thời gian th&igrave; sẽ c&oacute; mức gi&aacute; vừa phải.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Khi dịch bệnh được kiểm so&aacute;t, &ocirc;ng Ngọc cho rằng, với nhu cầu của người mua đang rất ổn định, nguồn cung dự &aacute;n mới rất &iacute;t... n&ecirc;n gần như kh&ocirc;ng c&oacute; chuyện giảm gi&aacute; ở c&aacute;c chủ đầu tư dự &aacute;n nh&agrave; ở.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&ldquo;Với ch&iacute;nh s&aacute;ch của nh&agrave; nước sẽ c&ograve;n giảm l&atilde;i suất, d&ograve;ng tiền tiếp tục &ldquo;chảy&rdquo; v&agrave;o bất động sản v&agrave; chứng kho&aacute;n l&agrave; điều kh&oacute; tr&aacute;nh khỏi.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Do đ&oacute;, nếu người mua kỳ vọng gi&aacute; bất động sản sẽ thấp hơn thời điểm sau dịch th&igrave; khả năng kh&ocirc;ng c&oacute;; c&oacute; chăng chỉ c&oacute; ở cục bộ một số chủ đầu tư c&oacute; t&igrave;nh h&igrave;nh t&agrave;i ch&iacute;nh kh&ocirc;ng tốt. C&ograve;n với những chủ đầu tư c&oacute; t&agrave;i ch&iacute;nh tốt th&igrave; kh&ocirc;ng c&oacute; chuyện giảm gi&aacute;, chỉ c&oacute; đưa ra ch&iacute;nh s&aacute;ch hỗ trợ tốt hơn c&oacute; lợi cho kh&aacute;ch h&agrave;ng&rdquo;, &ocirc;ng Ngọc nhận định.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">B&ecirc;n cạnh đ&oacute;, khi đưa ra quyết định mua bất động sản để ở hay đầu tư, &ocirc;ng Ngọc cho rằng c&oacute; thể mua bất động sản ở bất kỳ thời điểm n&agrave;o cũng được nhưng phải ph&ugrave; hợp với động lực, phương &aacute;n t&agrave;i ch&iacute;nh, ưng thuận của người mua.</span></span></p>', 'Lý do giá nhà tại Hà Nội sẽ không giảm sau dịch', 'Khi dịch bệnh được kiểm soát, nhiều nhận định cho rằng, với nhu cầu của người mua đang rất ổn định, nguồn cung dự án mới rất ít... nên gần như không có chuyện giảm giá ở các chủ đầu tư dự án nhà ở tại Hà Nội.', 'Lý do giá nhà tại Hà Nội sẽ không giảm sau dịch', 'ly-do-gia-nha-tai-ha-noi-se-khong-giam-sau-dich-bi7', 1, NULL, 'vi', 'photo-1-16327028048761103973572.jpg', '2021-10-26 01:02:04', '2021-10-26 01:02:04');
INSERT INTO `blogs` (`id`, `name`, `user_id`, `title`, `content`, `seo_description`, `short_description`, `seo_keyword`, `url`, `display`, `type`, `lang`, `avata`, `created_at`, `updated_at`) VALUES
(8, 'DỰ ÁN THE MATRIX ONE SỞ HỮU TIÊU CHUẨN VÀNG CHO BĐS XANH', 1, 'DỰ ÁN THE MATRIX ONE SỞ HỮU TIÊU CHUẨN VÀNG CHO BĐS XANH', '<p dir=\"ltr\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Một dự &aacute;n xanh thực thụ phải đến từ &#39;cốt l&otilde;i&#39; sản phẩm v&agrave; ở c&aacute;ch m&agrave; mỗi th&agrave;nh tố của kh&ocirc;ng gian sống đ&oacute; tương t&aacute;c với cư d&acirc;n.</span></span></strong></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img src=\"https://lh6.googleusercontent.com/WbJBykiD9TT9wZhCC5A5G6XxA1GSXbIMiNie_lHTq7_br0j9-RxuTcW0Jd6SnxHQqrppjyQ4-7ETS98mGZFmsdEUN4erC-rbd2R4L3cCDfR6lXRiLMbFltMI4cyULHNhMhVe28RT\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Ngay từ những dự &aacute;n đầu ti&ecirc;n ra mắt thị trường, MIKGroup đ&atilde; quyết định thử th&aacute;ch ch&iacute;nh m&igrave;nh bằng c&aacute;ch ph&aacute;t triển dự &aacute;n xanh v&agrave; được thị trường đ&oacute;n nhận.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Kh&ocirc;ng phải ngẫu nhi&ecirc;n, vừa ra mắt thị trường H&agrave; Nội, Imperia Garden đ&atilde; trở th&agrave;nh &quot;hiện tượng bất động sản 2015&quot; hay Imperia Sky Garden với tuyệt t&aacute;c &quot;vườn ch&acirc;n m&acirc;y&quot; đ&atilde; xuất sắc vượt qua nhiều &quot;đối thủ nặng k&yacute;&quot; để được vinh danh l&agrave; &quot;Dự &aacute;n xanh tốt nhất Việt Nam&quot; tại giải thưởng Dot Property Awards Vietnam 2017.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Imperia Sky Garden được đ&aacute;nh gi&aacute; l&agrave; dự &aacute;n duy nhất ph&iacute;a Nam thủ đ&ocirc; d&agrave;nh tr&ecirc;n 60% trong hơn 50.000 m2 diện t&iacute;ch cho kh&ocirc;ng gian xanh. Nếu như s&acirc;n thượng của c&aacute;c chung cư thường để thiết bị kỹ thuật, th&igrave; Imperia Sky Garden lại được kiến tạo trở th&agrave;nh &quot;vườn ch&acirc;n m&acirc;y&quot; với h&agrave;ng trăm loại c&acirc;y v&agrave; hoa theo m&ugrave;a. Được phủ xanh từ mặt đất đến tầng m&aacute;i n&ecirc;n nh&igrave;n từ tr&ecirc;n cao, Imperia Sky Garden giống như một khu vườn y&ecirc;n b&igrave;nh giữa phố thị ồn &agrave;o.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Một sản phẩm kh&aacute;c do MIKGroup ph&aacute;t triển l&agrave; khu nghỉ dưỡng 5 sao M&ouml;venpick Resort Waverly Ph&uacute; Quốc cũng d&agrave;nh phần lớn diện t&iacute;ch cho c&aacute;c tiện &iacute;ch, phủ xanh bởi c&acirc;y cối v&agrave; hồ nước với mật độ x&acirc;y dựng chỉ 12,32%.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Điều đ&oacute; c&agrave;ng chứng tỏ độ &quot;chịu chơi&quot; của nh&agrave; ph&aacute;t triển bất động sản n&agrave;y khi đổi diện t&iacute;ch thương mại lấy kh&ocirc;ng gian &quot;xanh&quot; đ&uacute;ng nghĩa v&agrave; sự thư th&aacute;i, sức khỏe cho cư d&acirc;n v&agrave; du kh&aacute;ch.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img src=\"https://lh6.googleusercontent.com/vYXBzjCl95tjW8Js8ezDSQ_yWUKeWy76nw6QcFGSGSJJCXQ_3il-vp-xaMlzUkhIURlyvdF6i-ich-BkZIE8Ad7t8qwQmN4scm0YSz0dxna0qF6rLHDHshiApBygwof2KPUVD3Fh\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Khu nghỉ dưỡng 5 sao M&ouml;venpick Resort Waverly Ph&uacute; Quốc do MIKGroup ph&aacute;t triển được phủ xanh từ &quot;l&otilde;i&quot;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Tuy nhi&ecirc;n, bất động sản xanh kh&ocirc;ng đơn thuần chỉ trồng nhiều c&acirc;y xanh xung quanh m&agrave; phải bảo đảm từ kh&acirc;u thiết kế, chọn vật liệu cho đến qu&aacute; tr&igrave;nh thi c&ocirc;ng v&agrave; vận h&agrave;nh dự &aacute;n. Việc tu&acirc;n thủ c&aacute;c quy định của ti&ecirc;u chuẩn xanh sẽ gi&uacute;p c&aacute;c căn hộ đạt được những mục ti&ecirc;u như tiết kiệm năng lượng, sử dụng nước hiệu quả, giảm lượng kh&iacute; thải CO2, cải thiện chất lượng m&ocirc;i trường kh&ocirc;ng chỉ b&ecirc;n ngo&agrave;i m&agrave; cả b&ecirc;n trong ng&ocirc;i nh&agrave;.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Vẫn với độ &quot;chịu chơi&quot; v&agrave; t&acirc;m thế ấy, đến The Matrix One, nh&agrave; ph&aacute;t triển bất động sản n&agrave;y đ&atilde; định vị cho m&igrave;nh một phong c&aacute;ch xanh từ những yếu tố cốt l&otilde;i của sản phẩm.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Gần như duy nhất tại ph&iacute;a T&acirc;y H&agrave; Nội, The Matrix One sở hữu hệ thống &quot;&aacute;o gi&aacute;p xanh&quot; c&ocirc;ng vi&ecirc;n, hồ nước 14ha v&agrave; 4 lớp c&acirc;y xanh nội khu gi&uacute;p điều h&ograve;a kh&ocirc;ng kh&iacute;. Chủ đầu tư c&ograve;n ch&uacute; trọng lựa chọn nhiều giống c&acirc;y qu&yacute;, c&oacute; gi&aacute; trị lọc kh&ocirc;ng kh&iacute;, an thần v&agrave; dưỡng t&acirc;m như Long N&atilde;o, Nh&agrave;i nhật, Hồng, Nguyệt qu&yacute;, Ch&agrave; l&agrave; Trung Đ&ocirc;ng...</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img src=\"https://lh4.googleusercontent.com/W-C6jrmOLe2cwtK-cQY8XywyDbtx2Bw4Fsvu13s8Qj149MkmPZrK-dBpDDfztjbGaCilpH9s_DB0kT-Y-OBMCQPJ9HzL4yHRlveE-M7hoNBeIPKxv-RUCX8KPa3-w8IeBkVMFTNA\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Tại vườn Nhật tr&ecirc;n tầng 43 của hai t&ograve;a căn hộ l&agrave; c&aacute;c chậu c&acirc;y bonsai được tuyển chọn từ c&aacute;c nh&agrave; vườn c&oacute; truyền thống l&acirc;u đời, kết hợp với c&aacute;c c&acirc;y h&agrave;ng trăm năm tuổi được nhập khẩu từ Nhật về, h&igrave;nh th&agrave;nh c&aacute;c khu &quot;Zen garden&quot;, l&agrave; nơi l&yacute; tưởng để ngắm ho&agrave;ng h&ocirc;n.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Nhưng kh&ocirc;ng chỉ l&agrave; một &quot;c&ocirc;ng vi&ecirc;n dự &aacute;n&quot;, yếu tố xanh tại The Matrix One c&ograve;n được đo đếm bởi &quot;chất&quot; từ kh&acirc;u thiết kế, chọn vật liệu x&acirc;y dựng đến c&ocirc;ng t&aacute;c vận h&agrave;nh dự &aacute;n sau n&agrave;y.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Chẳng hạn, quyết định phủ k&iacute;n mặt ngo&agrave;i căn hộ bằng hơn 25.000 m2 k&iacute;nh Low-E cực đắt đỏ c&oacute; thể ti&ecirc;u tốn th&ecirc;m của MIKGroup h&agrave;ng chục tỷ đồng. Nhưng n&oacute; kh&ocirc;ng chỉ mang lại tầm view 360 độ giữa tầng kh&ocirc;ng cho từng căn hộ, m&agrave; đ&acirc;y c&ograve;n l&agrave; loại vật liệu phủ ngo&agrave;i tối ưu cho sức khỏe con người.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Những lớp vật liệu v&ocirc; cơ với kết cấu nano phủ l&ecirc;n bề mặt k&iacute;nh Low-E gi&uacute;p tiết kiệm năng lượng, ti&ecirc;u &acirc;m, giảm tiếng ồn, giảm tia cực t&iacute;m. Loại k&iacute;nh n&agrave;y cũng gi&uacute;p căn ph&ograve;ng ấm &aacute;p v&agrave;o m&ugrave;a đ&ocirc;ng, m&aacute;t mẻ v&agrave;o m&ugrave;a h&egrave;, giải quyết được vấn đề ẩm thấp trong m&ugrave;a nồm - đặc trưng của kh&iacute; hậu miền Bắc.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img src=\"https://lh3.googleusercontent.com/NgFygkJLpE0KtW-rYH9ieTxdjm2-YXzAkBEQgOziny5iqlpHjbUhPqmFKOkZcn_nnylbP5PAhPqyJ_ZYZWEtPlynjkwsDktjWVpJQ6xuKOmnTs3e9G3h_n_dFbgbJaLIHUfqXayB\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">B&ecirc;n cạnh đ&oacute;, tất cả c&aacute;c căn hộ tại The Matrix One đều c&oacute; &aacute;nh s&aacute;ng, đ&oacute;n gi&oacute; trời tự nhi&ecirc;n, c&ugrave;ng với 4 lớp &quot;&aacute;o gi&aacute;p xanh&quot; bao phủ xung quanh c&ograve;n c&oacute; thể gi&uacute;p gia chủ tiết kiệm được một khoản h&oacute;a đơn tiền điện hằng th&aacute;ng.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">MIK Group, The Matrix One , Imperia Sky Garden , M&ouml;venpick Resort Waverly Ph&uacute; Quốc, Bất động sản ph&iacute;a T&acirc;y H&agrave; Nội</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">B&ecirc;n trong căn hộ, nơi tương t&aacute;c nhiều nhất với c&aacute;c chủ nh&acirc;n, được ho&agrave;n thiện bởi c&aacute;c vật liệu bền vững v&agrave; th&acirc;n thiện nhất. Tường được phủ bằng 3 lớp sơn phủ cao cấp Valspar c&oacute; t&aacute;c dụng chống ẩm, chống b&aacute;m bẩn v&agrave; an to&agrave;n cho sức khỏe cư d&acirc;n.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">C&ugrave;ng với đ&oacute; l&agrave; bộ lọc kh&iacute; tươi tại ph&ograve;ng kh&aacute;ch, lọc nước sạch đảm bảo ti&ecirc;u chuẩn để d&ugrave;ng ngay tại v&ograve;i trong từng căn hộ&hellip; khiến những cư d&acirc;n kỹ t&iacute;nh nhất c&oacute; thể an t&acirc;m về sức khỏe thể chất. Ngay tại h&agrave;nh lang, thay v&igrave; sử dụng hệ thống điều h&ograve;a k&iacute;n, chủ đầu tư cũng d&ugrave;ng hệ thống cấp kh&iacute; tươi gi&uacute;p kh&ocirc;ng kh&iacute; lưu th&ocirc;ng, triệt ti&ecirc;u m&ocirc;i trường tồn tại của c&aacute;c loại virus độc hại.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Từ phong c&aacute;ch &quot;truyền thống&quot; của MIKGroup đến mong muốn định vị ti&ecirc;u chuẩn xanh mới, The Matrix One thực sự l&agrave; một sản phẩm &quot;xanh từ chất&quot;, một địa chỉ được t&igrave;m kiếm khi lối sống khỏe l&ecirc;n ng&ocirc;i.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Để nhận được tư vấn chi tiết về dự &aacute;n The Matrix One xin li&ecirc;n hệ:</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">C&ocirc;ng ty TNHH Bất động sản KkumHouse&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Hotline: 0888851098&nbsp;</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Website: <a href=\"https://kkumhouse.vn/\">https://kkumhouse.vn/</a> </span></span></p>', 'DỰ ÁN THE MATRIX ONE SỞ HỮU TIÊU CHUẨN VÀNG CHO BĐS XANH', 'Một dự án xanh thực thụ phải đến từ \'cốt lõi\' sản phẩm và ở cách mà mỗi thành tố của không gian sống đó tương tác với cư dân.', 'DỰ ÁN THE MATRIX ONE SỞ HỮU TIÊU CHUẨN VÀNG CHO BĐS XANH', 'du-an-the-matrix-one-so-huu-tieu-chuan-vang-cho-bds-xanh-bi8', 1, NULL, 'vi', 'congvien-16333300232181621056586.jpg', '2021-10-27 08:39:59', '2021-10-27 08:39:59'),
(9, 'MÔI TRƯỜNG SỐNG CHO CÔNG D N TOÀN CẦU TẠI VINHOMES SMART CITY', 1, 'MÔI TRƯỜNG SỐNG CHO CÔNG D N TOÀN CẦU TẠI VINHOMES SMART CITY', '<p dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Vinhomes Smart City đang l&agrave; lựa chọn của nhiều gia đ&igrave;nh hướng tới cuộc sống hội nhập hay những bạn trẻ y&ecirc;u th&iacute;ch sự đa dạng về văn ho&aacute;, phong c&aacute;ch sống.</span></span></strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Khu vực ph&iacute;a T&acirc;y đang l&agrave; biểu tượng cho tốc độ ph&aacute;t triển của hạ tầng giao th&ocirc;ng, hạ tầng x&atilde; hội c&ugrave;ng hệ thống dịch vụ tiện &iacute;ch đa dạng tại H&agrave; Nội. Đặc biệt, trong tương lai khi c&aacute;c tuyến metro số 5, 6, 7 đi v&agrave;o hoạt động sẽ g&oacute;p phần tạo n&ecirc;n một mạng lưới giao th&ocirc;ng nhanh ch&oacute;ng, thuận tiện tương tự c&aacute;c đ&ocirc; thị ph&aacute;t triển tr&ecirc;n thế giới. Khu vực n&agrave;y được nhiều chuy&ecirc;n gia dự đo&aacute;n sẽ l&agrave; một trong những nơi thể hiện sự quốc tế ho&aacute; mạnh mẽ h&agrave;ng đầu tại H&agrave; Nội.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Ti&ecirc;u biểu phải kể đến l&agrave; Vinhomes Smart City, đại đ&ocirc; thị nằm tại v&ugrave;ng l&otilde;i ph&iacute;a T&acirc;y th&agrave;nh phố. Theo thống k&ecirc; của chủ đầu tư, chỉ sau gần 3 năm ra mắt, cư d&acirc;n tới từ 20 quốc gia v&agrave; v&ugrave;ng l&atilde;nh thổ đ&atilde; &quot;x&aacute;ch vali&quot; chuyển về sinh sống tại Vinhomes Smart City, dần tạo dựng một &quot;th&agrave;nh phố ph&iacute;a T&acirc;y&quot; với một cộng đồng đa dạng văn h&oacute;a, phong c&aacute;ch sống.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img src=\"https://lh5.googleusercontent.com/ex13yC2Fx0HLCgvF9kRA86Tt6sRn2Agnd8Pw_iVbUVMsP1j_ZDtFg7D9F8la5rGuo_TvyJMefAzNpjpEsqxQ0x-N94WSkrS87bfPGjDGTpFbZVrxOZQ3upj2zV1tRrYlHC20bBDS\" style=\"width:100%\" /><em>Khu đ&ocirc; thi Vinhomes Smart City nằm tại ph&iacute;a T&acirc;y H&agrave; Nội hưởng những lợi thế về hạ tầng. Ảnh: Vinhomes</em></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Trong những năm qua, sự ph&aacute;t triển của c&ocirc;ng nghệ, truyền th&ocirc;ng đ&atilde; c&oacute; những t&aacute;c động lớn đến lối sống của một bộ phận người d&acirc;n Việt Nam. Kh&ocirc;ng chỉ ng&ocirc;n ngữ, nhiều tr&agrave;o lưu, phong c&aacute;ch sống &quot;t&acirc;y&quot; được người Việt học hỏi v&agrave; &aacute;p dụng. Với c&aacute;c gia đ&igrave;nh trẻ, sống &quot;T&acirc;y&quot; nghĩa l&agrave; c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh biết ph&acirc;n bổ thời gian l&agrave;m việc - học tập - thư gi&atilde;n - vui chơi giải tr&iacute; khoa học, bố mẹ sẽ chọn cho con m&ocirc;i trường sống hiện đại để dạy con sống tự lập từ sớm.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Với việc chủ động quyết định mọi thứ của bản th&acirc;n v&agrave; biết m&igrave;nh th&iacute;ch g&igrave;, muốn g&igrave;, c&aacute;c gia đ&igrave;nh trẻ v&agrave; c&aacute;c bạn trẻ c&oacute; nhu cầu t&igrave;m kiếm m&ocirc;i trường sống hiện đại c&oacute; cộng đồng quốc tế để c&oacute; thể thỏa sức kh&aacute;m ph&aacute; v&agrave; hội nhập.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Kh&ocirc;ng chỉ l&agrave; m&aacute;i nh&agrave; chung của cộng đồng c&ocirc;ng d&acirc;n quốc tế, Vinhomes Smart City c&ograve;n sở hữu hệ thống tiện &iacute;ch đẳng cấp. Tại đ&acirc;y, cư d&acirc;n được trải nghiệm hệ sinh th&aacute;i to&agrave;n diện của Vingroup từ trường học, bệnh viện, đến mua sắm, giải tr&iacute;. Mật độ x&acirc;y dựng tại đ&acirc;y ở mức 14,7%, gi&uacute;p d&acirc;n cư được tận hưởng kh&ocirc;ng gian tho&aacute;ng đ&atilde;ng, trong l&agrave;nh.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Hướng tới kiến tạo phong c&aacute;ch sống chuẩn quốc tế, Vinhomes Smart City đặc biệt coi trọng sức khoẻ, tinh thần của cư d&acirc;n. Ch&iacute;nh v&igrave; vậy, hệ thống 3 c&ocirc;ng vi&ecirc;n li&ecirc;n ho&agrave;n rộng 16,3 ha đ&atilde; được tạo dựng ngay trong khu&ocirc;n vi&ecirc;n khu đ&ocirc; thị gồm c&ocirc;ng vi&ecirc;n Trung t&acirc;m Central Park rộng 10,2ha với hồ lớn trung t&acirc;m 4,8ha; c&ocirc;ng vi&ecirc;n thể thao Sportia Park với hệ thống m&aacute;y tập hơn 1.000 chức năng v&agrave; c&ocirc;ng vi&ecirc;n Nhật Bản Zen Park quy m&ocirc; lớn tại Đ&ocirc;ng Nam &Aacute;.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Theo chủ đầu tư, Vinhomes Smart City sẽ mang trọn phong c&aacute;ch &quot;t&acirc;y&quot; như nhiều th&agrave;nh phố lớn tr&ecirc;n thế giới khi c&aacute;c ph&acirc;n khu thể hiện t&iacute;nh quốc tế ho&aacute; mạnh mẽ như: phong c&aacute;ch chuẩn nghỉ dưỡng kiểu Mỹ tại The Miami, hay trải nghiệm sự an y&ecirc;n chuẩn Nhật với ph&acirc;n khu The Sakura&hellip;&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img src=\"https://lh4.googleusercontent.com/a0Q3vCoNzlPyNrsIr3IqSmV-0iU33KN-fDBfllo4gcbA7Hh25-620RsAzEltKBGSbFOXJEQsk4JH4Gdnesw3MDZwa7M_jD2cjnEruij1W8S6P-pbUpeq4odtXeFKKk7P0tJqgeU2\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Những mảng xanh được kiến tạo tại Vinhomes Smart City, mang tới bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh, kho&aacute;ng đạt cho cư d&acirc;n. Ảnh; Vinhomes</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Giới đầu tư đ&aacute;nh gi&aacute;, sự xuất hiện của Vinhomes Smart City với những tiện &iacute;ch th&ocirc;ng minh đẳng cấp, những t&ograve;a nh&agrave; được quy hoạch đồng bộ v&agrave; b&agrave;i bản, sẽ chắp th&ecirc;m đ&ocirc;i c&aacute;nh cho qu&aacute; tr&igrave;nh ph&aacute;t triển của khu vực, đưa T&acirc;y H&agrave; Nội trở th&agrave;nh l&agrave; một &quot;th&agrave;nh phố t&acirc;y&quot; năng động, hội nhập mạnh mẽ trong thời đại mới.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">C&ocirc;ng ty TNHH Bất động sản KkumHouse l&agrave; đơn vị ph&acirc;n phối bất động sản uy t&iacute;n tại H&agrave; Nội. Để nhận được tư vấn về c&aacute;c dịch vụ bất động sản tại dự &aacute;n Vinhomes Smart City xin vui l&ograve;ng li&ecirc;n hệ:&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">C&ocirc;ng ty TNHH Bất động sản KkumHouse</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Hotline: 0888851098&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Website: <a href=\"https://kkumhouse.vn/\">https://kkumhouse.vn/</a>&nbsp;&nbsp;&nbsp;</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Nguồn <a href=\"https://vnexpress.net/\">https://vnexpress.net/</a> </span></span></p>', 'MÔI TRƯỜNG SỐNG CHO CÔNG D N TOÀN CẦU TẠI VINHOMES SMART CITY', 'Vinhomes Smart City đang là lựa chọn của nhiều gia đình hướng tới cuộc sống hội nhập hay những bạn trẻ yêu thích sự đa dạng về văn hoá, phong cách sống.', 'MÔI TRƯỜNG SỐNG CHO CÔNG D N TOÀN CẦU TẠI VINHOMES SMART CITY', 'moi-truong-song-cho-cong-d-n-toan-cau-tai-vinhomes-smart-city-bi9', 1, NULL, 'vi', 'Anh-2-1550-1634274645.jpg', '2021-10-27 08:44:54', '2021-10-27 08:44:54'),
(10, '5 YẾU TỐ TẠO NÊN SỨC HÚT CĂN HỘ VINHOMES SMART CITY', 1, '5 YẾU TỐ TẠO NÊN SỨC HÚT CĂN HỘ VINHOMES SMART CITY', '<p dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Sự xuất hiện của những căn hộ Vinhomes Smart City với thiết kế th&ocirc;ng minh, t&iacute;ch hợp chuỗi tiện &iacute;ch hiện đại đ&atilde; tạo n&ecirc;n gi&aacute; trị sống kh&aacute;c biệt, thu h&uacute;t cộng đồng cư d&acirc;n quốc tế.</span></span></strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Nh&agrave; ở căn hộ hiện đang l&agrave; xu hướng ph&aacute;t triển của c&aacute;c quốc gia tr&ecirc;n thế giới, đ&acirc;y cũng l&agrave; loại h&igrave;nh bất động sản vừa t&uacute;i tiền v&agrave; ph&ugrave; hợp với đại đa số người d&acirc;n Việt Nam. Bởi vậy, tr&ecirc;n thị trường hiện nay, c&oacute; rất nhiều c&aacute;c dự &aacute;n căn hộ xuất hiện, đồng thời, thị trường cho thu&ecirc; căn hộ cũng ph&aacute;t triển mạnh mẽ.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Nếu như trước kia, người d&acirc;n thường lựa chọn mua nh&agrave; dựa tr&ecirc;n cảm t&iacute;nh hoặc do người th&acirc;n giới thiệu th&igrave; giờ đ&acirc;y, mọi quan niệm đ&atilde; ho&agrave;n to&agrave;n thay đổi. Kh&aacute;ch h&agrave;ng lựa chọn nơi an cư l&yacute; tưởng dựa v&agrave;o c&aacute;c th&agrave;nh tố như: chủ đầu tư, vị tr&iacute; căn hộ, tiện &iacute;ch nội - ngoại khu, thiết kế tối ưu, th&ocirc;ng minh. Một trong số &iacute;t c&aacute;c dự &aacute;n c&oacute; thể đ&aacute;p ứng đầy đủ những yếu tố kể tr&ecirc;n ch&iacute;nh l&agrave; đại đ&ocirc; thị Vinhomes Smart City - với quy m&ocirc; 280 ha rộng lớn, hội tụ đủ hệ sinh th&aacute;i &ldquo;all-in-one&quot; (tất cả trong một ngay thềm nh&agrave;. Do đ&oacute;, c&aacute;c căn hộ Vinhomes Smart City hứa hẹn mang đến một &ldquo;t&agrave;i sản&rdquo; ho&agrave;n mỹ, cuộc sống trọn vẹn nhất cho cư d&acirc;n.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Dưới đ&acirc;y l&agrave; 5 yếu tố tạo n&ecirc;n sức h&uacute;t căn hộ Vinhomes Smart City:</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">1. Căn hộ Vinhomes Smart City được x&acirc;y dựng bởi chủ đầu tư uy t&iacute;n</span></span></strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Nhắc đến thị trường bất động sản, th&igrave; kh&ocirc;ng thể kh&ocirc;ng nhắc tới &ldquo;&ocirc;ng lớn&quot; Vinhomes. Thương hiệu nhận được nhiều sự quan t&acirc;m v&agrave; t&iacute;n nhiệm của đ&ocirc;ng đảo người d&acirc;n bởi uy t&iacute;n sản phẩm, tiến độ thi c&ocirc;ng v&agrave; b&agrave;n giao thần tốc c&ugrave;ng chất lượng phục vụ vượt trội. Đ&acirc;y cũng l&agrave; c&aacute;i t&ecirc;n bảo chứng cho sự ph&aacute;t triển vượt bậc trong tương lai của một dự &aacute;n bất động sản.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Được ph&aacute;t triển bởi tập đo&agrave;n Vingroup, Vinhomes l&agrave; chủ đầu tư của h&agrave;ng loạt c&aacute;c dự &aacute;n đẳng cấp đ&atilde; ra mắt tr&ecirc;n khắp c&aacute;c tỉnh th&agrave;nh trong cả nước như Vinhomes Thăng Long, Vinhomes Ocean Park, Vinhomes Riverside Long Bi&ecirc;n tại H&agrave; Nội, Vinhomes Central Park tại TP.HCM, Vinhomes Marina tại Hải Ph&ograve;ng, Vinhomes Star City tại Thanh Ho&aacute;, Vinhomes Dragon Bay tại Quảng Ninh.. Tất cả đ&atilde; đưa t&ecirc;n tuổi của chủ đầu tư Vinhomes l&ecirc;n một tầng cao mới.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img src=\"https://lh4.googleusercontent.com/xD0ouhrMrr0MZ2CIYBZVpyFZungQYH4s71Mc5mefxuJ4Qu2a2xgGh3U8-np6dlqKoFTJ735Yvp2n4O3VLNr00EVKvSxjF8wsKcFAPVbpELDaQGMIzxlB1zBJTMIok2rHVVmOkP6_\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Căn hộ Vinhomes Smart City được x&acirc;y dựng bởi chủ đầu tư lớn nhất Việt Nam</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Với kinh nghiệm x&acirc;y dựng v&agrave; ph&aacute;t triển 22 dự &aacute;n bất động sản mang thương hiệu &ldquo;Vinhomes&rdquo;, chủ đầu tư đảm bảo ch&iacute;nh x&aacute;c cam kết về mặt tiến độ, chất lượng x&acirc;y dựng c&ugrave;ng hệ thống cơ sở hạ tầng, tiện &iacute;ch đồng bộ, an ninh chặt chẽ, đem đến m&ocirc;i trường sống văn minh, an to&agrave;n cho cộng đồng cư d&acirc;n.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Những điều n&agrave;y l&yacute; giải cho tốc độ &ldquo;ch&aacute;y h&agrave;ng&rdquo; của c&aacute;c dự &aacute;n Vinhomes ngay từ ng&agrave;y đầu ra mắt. Đơn cử như dự &aacute;n Vinhomes Ocean Park đ&atilde; chốt hơn 80% số căn mở b&aacute;n, hay dự &aacute;n Vinhomes Grand Park ghi nhận con số kỷ lục 17.000 căn hộ t&igrave;m được chủ nh&acirc;n mới chỉ trong 2 tuần đầu b&aacute;n h&agrave;ng.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Do đ&oacute;, việc ra mắt v&agrave; mở b&aacute;n căn hộ Vinhomes Smart City - sản phẩm bất động sản c&oacute; quy m&ocirc; lớn của chủ đầu tư Vinhomes sẽ tạo ra lựa chọn h&agrave;ng đầu cho c&aacute;c kh&aacute;ch h&agrave;ng trong nước v&agrave; nước ngo&agrave;i.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">2. Căn hộ Vinhomes Smart City c&oacute; vị tr&iacute; đắc địa</span></span></strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Vị tr&iacute; lu&ocirc;n l&agrave; yếu tố h&agrave;ng đầu quyết định gi&aacute; th&agrave;nh của một sản phẩm căn hộ cũng như tiềm năng sinh lời trong tương lai. Dự &aacute;n Vinhomes Smart City tọa lạc tại Đại Lộ Thăng Long, v&agrave; nằm kế cận c&aacute;c tuyến đường huyết mạch như đường L&ecirc; Trọng Tấn, đường V&agrave;nh đai 2, V&agrave;nh đai 3, V&agrave;nh đai 3.5, L&ecirc; Đức Thọ - Xu&acirc;n Phương - được coi l&agrave; vị tr&iacute; v&agrave;ng tại trung t&acirc;m h&agrave;nh ch&iacute;nh mới ph&iacute;a T&acirc;y th&agrave;nh phố.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Với khả năng kết nối cực linh hoạt, giờ đ&acirc;y, cư d&acirc;n tương lai c&oacute; thể r&uacute;t ngắn thời gian di chuyển đến mọi khu vực trong trung t&acirc;m cũng như nơi l&agrave;m việc v&agrave; kh&ocirc;ng c&ograve;n lo lắng về t&igrave;nh trạng kẹt xe giờ cao điểm. Cụ thể, từ dự &aacute;n, cư d&acirc;n chỉ mất v&agrave;i ph&uacute;t l&aacute;i xe đến Trung t&acirc;m Hội Nghị Quốc Gia, hay bảo t&agrave;ng H&agrave; Nội, si&ecirc;u thị Big C Thăng Long hay c&aacute;c quận Long Bi&ecirc;n, Cầu Giấy, Mỹ Đ&igrave;nh..&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img src=\"https://lh6.googleusercontent.com/XXSPAZOhTs49lKwUQamFyZYv_D0S4jaP8fEWPpl5ZbrK3tLr5joxEfWnMa4aiK4XNoABaGGoh83MPmXxYVLTHEYxR8W82eO73W-LadGz_xkUTpLCN9xEqSjdI4thKmxFRui2N4CP\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Vị tr&iacute; l&agrave; một trong những lợi thế lớn của c&aacute;c căn hộ Vinhomes Smart City&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Đặc biệt, dự &aacute;n Vinhomes Smart City c&ograve;n được giới chuy&ecirc;n gia đ&aacute;nh gi&aacute; cao nhờ lợi thế vị tr&iacute; nằm trong &ldquo;l&otilde;i tam gi&aacute;c v&agrave;ng&rdquo; của ba tuyến metro trọng yếu 05, 06, 07. Một khi tuyến đường sắt n&agrave;y đi v&agrave;o hoạt động, cư d&acirc;n th&agrave;nh phố th&ocirc;ng minh c&oacute; thể tiết kiệm thời gian đi lại, ho&agrave;n th&agrave;nh bản đồ kết nối giao th&ocirc;ng to&agrave;n khu vực ph&iacute;a T&acirc;y; đồng thời gi&aacute; bất động sản tại đ&acirc;y cũng được đẩy l&ecirc;n cao.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Với những lợi thế độc nhất v&ocirc; nhị từ &ldquo;giao lộ tương lai&rdquo;, đại đ&ocirc; thị ph&iacute;a T&acirc;y hứa hẹn mang tới tiềm năng sinh lời vượt trội, th&uacute;c đẩy nhu cầu sở hữu c&aacute;c căn hộ Vinhomes Smart City đầy tiềm năng.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">3. Căn hộ Vinhomes Smart City &ldquo;đi trước đ&oacute;n đầu&rdquo; c&ocirc;ng nghệ 4.0&nbsp;</span></span></strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Bắt kịp sự l&ecirc;n ng&ocirc;i của c&aacute;ch mạng khoa học - kỹ thuật v&agrave; sự ph&aacute;t triển của c&ocirc;ng nghệ hiện đại, Vinhomes Smart City l&agrave; một trong những dự &aacute;n hiếm c&oacute; hướng tới x&acirc;y dựng Smart Home - Smart Service, đem lại cuộc sống tiện lợi, th&ocirc;ng minh cho cư d&acirc;n.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Với 04 trụ cột cốt l&otilde;i: An ninh th&ocirc;ng minh - Vận h&agrave;nh th&ocirc;ng minh - Cộng đồng th&ocirc;ng minh - Căn hộ th&ocirc;ng minh, Vinhomes ti&ecirc;n phong ứng dụng th&agrave;nh c&ocirc;ng c&ocirc;ng nghệ 4.0. Th&ocirc;ng qua hệ thống camera an ninh t&iacute;ch hợp tr&iacute; tuệ nh&acirc;n tạo c&oacute; khả năng nhận diện gương mặt, cảnh b&aacute;o đối tượng lạ với trung t&acirc;m quản l&yacute;, an to&agrave;n tại đại đ&ocirc; thị được đẩy l&ecirc;n mức cao, hạn chế sự ra v&agrave;o của người lạ mặt. Th&ecirc;m v&agrave;o đ&oacute;, để ph&ograve;ng tr&aacute;nh những sự cố c&oacute; thể xảy ra tại nơi sinh sống như ch&aacute;y nổ, hoả hoạn, chủ đầu tư cho triển khai ứng dụng cảnh b&aacute;o th&ocirc;ng minh trực tiếp tới smartphone của chủ hộ, đồng thời chỉ dẫn hướng tho&aacute;t hiểm nhanh nhất.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img src=\"https://lh5.googleusercontent.com/QqjAEf_S5R_PZQYTD-Is36OQT71BUFiSTv6WP_k2udKG2Mi867hD3VeTTW3mOqBGAv93ne5Imh2lg37PguZ2tcmFUDGru5Tj2E5DgfXZT-jlBsRZPD_OSIs1LNEk9rKbW0eJHWOY\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Đảm bảo an ninh, an to&agrave;n nhờ c&ocirc;ng nghệ 4.0 cho cư d&acirc;n căn hộ Vinhomes Smart City&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Cuộc sống của cư d&acirc;n c&agrave;ng trở n&ecirc;n thuận tiện hơn với thiết kế căn hộ th&ocirc;ng minh Smart Home. Giờ đ&acirc;y, chủ nh&acirc;n căn hộ c&oacute; thể điều khiển mọi thiết bị trong nh&agrave; theo &yacute; m&igrave;nh th&ocirc;ng qua điện thoại di động hoặc chỉ bằng giọng n&oacute;i. Đ&acirc;y l&agrave; giải ph&aacute;p tiện lợi, th&acirc;n thiện v&agrave; dễ d&agrave;ng sử dụng, nhất l&agrave; cho người cao tuổi v&agrave; trẻ nhỏ. Tất cả những tiện &iacute;ch th&ocirc;ng minh n&agrave;y sẽ g&oacute;p phần gi&uacute;p cư d&acirc;n chăm s&oacute;c v&agrave; bảo vệ tốt cho người th&acirc;n, quản l&yacute; tổ ấm to&agrave;n diện d&ugrave; đang ở xa.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Ngo&agrave;i ra, căn hộ Vinhomes Smart City c&ograve;n được thiết lập hệ thống vận h&agrave;nh, quản l&yacute; th&ocirc;ng minh với AI v&agrave; IoT (Internet vạn vật) sẵn s&agrave;ng phục vụ 24/7. Cư d&acirc;n của đại đ&ocirc; thị c&oacute; thể thoải m&aacute;i tận hưởng chuỗi tiện &iacute;ch hiện đại với chất lượng phục vụ đẳng cấp quốc tế.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Nhắc đến c&aacute;c dự &aacute;n Vinhomes, người ta sẽ nghĩ ngay tới cộng đồng cư d&acirc;n tri thức, văn minh v&agrave; để l&agrave;m được điều n&agrave;y, Vinhomes Smart City đ&atilde; x&acirc;y dựng ứng dụng đặc quyền ri&ecirc;ng biệt cho cư d&acirc;n, tạo đ&ograve;n bẩy gắn kết cộng đồng. Cư d&acirc;n c&oacute; thể nắm bắt cụ thể lịch hoạt động của c&aacute;c buổi sinh hoạt, tham gia c&aacute;c buổi giao lưu online/ offline, đăng k&yacute; tham gia c&aacute;c c&acirc;u lạc bộ đa dạng, l&agrave;m phong ph&uacute; th&ecirc;m h&agrave;nh tr&igrave;nh cuộc sống mỗi ng&agrave;y.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">4. Tiện &iacute;ch đẳng cấp - Chất sống hiện đại tại Căn hộ Vinhomes Smart City</span></span></strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Trong thời đại ph&aacute;t triển, ng&ocirc;i nh&agrave; kh&ocirc;ng đơn thuần l&agrave; nơi &ldquo;che nắng, che mưa&rdquo; m&agrave; phải đảm bảo c&aacute;c hoạt động thư gi&atilde;n, vui chơi, tận hưởng cuộc sống cho chủ nh&acirc;n. Với mục ti&ecirc;u &ldquo;v&igrave; một cuộc sống tốt đẹp hơn cho người Việt&rdquo;, chủ nh&acirc;n căn hộ Vinhomes Smart City được thụ hưởng hệ thống đại tiện &iacute;ch đa dạng, tạo n&ecirc;n một bức tranh ho&agrave;n chỉnh về một kh&ocirc;ng gian sống đẳng cấp h&agrave;ng đầu.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Giữa c&ocirc;ng việc bận rộn v&agrave; quỹ thời gian eo hẹp, cư d&acirc;n thường kh&ocirc;ng c&oacute; thời gian chăm s&oacute;c bản th&acirc;n hay d&agrave;nh cho c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh. Thấu hiểu t&acirc;m l&yacute; đ&oacute;, chủ đầu tư đ&atilde; &ldquo;mạnh tay&rdquo; quy hoạch bộ 03 c&ocirc;ng vi&ecirc;n li&ecirc;n ho&agrave;n Vinhomes Smart City với quy m&ocirc; khổng lồ, trải dọc to&agrave;n dự &aacute;n; đem đến trải nghiệm &ldquo;ng&ocirc;i nh&agrave; trong c&ocirc;ng vi&ecirc;n&rdquo; - bao quanh bởi những mảnh xanh rộng lớn, kh&ocirc;ng kh&iacute; trong l&agrave;nh, l&agrave; chốn thư gi&atilde;n l&yacute; tưởng sau một ng&agrave;y l&agrave;m việc vất vả.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Hệ thống c&ocirc;ng vi&ecirc;n Central Park - Sportia Park - Zen Park với đa dạng chủ đề như: c&ocirc;ng vi&ecirc;n gym ngo&agrave;i trời hơn 1.000 m&aacute;y tập, c&ocirc;ng vi&ecirc;n Golf mini, c&ocirc;ng vi&ecirc;n vui chơi trẻ em, c&ocirc;ng vi&ecirc;n nướng BBQ, c&ocirc;ng vi&ecirc;n cờ vua.. đ&aacute;p ứng đầy mọi nhu cầu, sở th&iacute;ch của c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img src=\"https://lh4.googleusercontent.com/f8YsSjZ4lx5lhzGsjtoFLuoQ1FaqDA2YiF-7B-mLuZCLkSUFcxi-j1TAWNuIpyAHPk9_EcsIHpPDFwkw_lsocC_vu3svuzapgdR-3_H4JF0F82JkzrHHn2cSUNzI3FaNbU-3u8SC\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Cuộc sống s&ocirc;i động với chuỗi tiện &iacute;ch phong ph&uacute; ngay dưới thềm căn hộ Vinhomes Smart City</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Chị Minh Anh, một cư d&acirc;n của Vinhomes Smart City chia sẻ: &ldquo;Từ ng&agrave;y chuyển về đ&acirc;y ở, gia đ&igrave;nh t&ocirc;i đ&atilde; c&oacute; nhiều thời gian ở b&ecirc;n nhau, c&ugrave;ng nhau trải nghiệm c&aacute;c hoạt động vui chơi, r&egrave;n luyện thể thao m&agrave; kh&ocirc;ng cần chờ tới cuần tuần.&rdquo;&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Ngo&agrave;i ra, dự &aacute;n Vinhomes Smart City cũng nhanh ch&oacute;ng khẳng định vị thế t&acirc;m điểm khi t&iacute;ch hợp đầy đủ hệ sinh th&aacute;i cao cấp, mang tới chất lượng sống ti&ecirc;u chuẩn quốc tế, trọn vẹn từng ph&uacute;t gi&acirc;y. &ldquo;Một bước chạm ng&agrave;n tiện &iacute;ch&rdquo;: mua sắm tại TTTM Vincom Mega Mall Smart City lớn nhất hệ thống, chăm s&oacute;c sức khỏe to&agrave;n diện với Bệnh viện đa khoa Vinmec, hay tạo ra m&ocirc;i trường ph&aacute;t triển to&agrave;n diện nhất cho cư d&acirc;n nh&iacute; tại trường học li&ecirc;n cấp Vinschool Smart City.&nbsp;&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">5. Cơ hội sở hữu căn hộ Vinhomes Smart City với ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng vượt trội</span></span></strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Sở hữu thiết kế hiện đại, tối ưu c&ocirc;ng năng cho người sử dụng, những căn hộ Vinhomes Smart City đều được đ&aacute;nh gi&aacute; ph&ugrave; hợp với nhiều ph&acirc;n kh&uacute;c kh&aacute;c nhau từ người độc th&acirc;n, cặp đ&ocirc;i mới cưới, c&aacute;c gia đ&igrave;nh trẻ cho tới gia đ&igrave;nh đa thế hệ chung sống. Cư d&acirc;n c&oacute; nhiều lựa chọn từ căn studio Vinhomes Smart City, căn hộ 1 ph&ograve;ng ngủ Vinhomes Smart City, căn hộ 2 ph&ograve;ng ngủ Vinhomes Smart City, căn hộ 3 ph&ograve;ng ngủ Vinhomes Smart City với diện t&iacute;ch từ dưới 30m2 đến gần 100m2.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img src=\"https://lh3.googleusercontent.com/HPez0H1WoU9M6uCgRxWd3DC9g11oo9WFaBPjGONIBKBFtig25JaeaW1OHUEPY9U6oUjGbWVN5NtpSjoEbGQVOZpSZkLc5LAPXWc_coMTF9ev8zjQ3MH8BRXQdngdRDesjLK0HuYX\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Căn hộ Vinhomes Smart City đa dạng lựa chọn, gi&aacute; b&aacute;n &ldquo;vừa t&uacute;i&rdquo; với đa số người d&acirc;n</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Nằm trong đại dự &aacute;n với h&agrave;ng loạt ưu thế si&ecirc;u việt, gi&aacute; b&aacute;n căn hộ Vinhomes Smart City cũng được đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng quan t&acirc;m. Theo đ&oacute;, chủ đầu tư Vinhomes thường xuy&ecirc;n tung ra c&aacute;c ch&iacute;nh s&aacute;ch ưu đ&atilde;i hấp dẫn nhằm giảm bớt g&aacute;nh nặng t&agrave;i ch&iacute;nh, hỗ trợ cư d&acirc;Ngay từ những ng&agrave;y đầu ra mắt, Vinhomes Smart City đ&atilde; nhận được sự quan t&acirc;m lớn khi được biết đến l&agrave; th&agrave;nh phố th&ocirc;ng minh do chủ đầu tư Vinhomes x&acirc;y dựng. C&ugrave;ng chuỗi tiện &iacute;ch đẳng cấp, vị tr&iacute; thuận tiện cho mọi hoạt động, tất cả đ&atilde; l&yacute; giải cho c&acirc;u hỏi: &ldquo;C&oacute; n&ecirc;n sở hữu căn hộ Vinhomes Smart City kh&ocirc;ng?&quot;.&nbsp;&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">C&ocirc;ng ty TNHH Bất động sản KkumHouse l&agrave; đơn vị ph&acirc;n phối bất động sản uy t&iacute;n tại H&agrave; Nội. Để nhận được tư vấn về c&aacute;c dịch vụ bất động sản tại dự &aacute;n Vinhomes Smart City xin vui l&ograve;ng li&ecirc;n hệ:&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">C&ocirc;ng ty TNHH Bất động sản KkumHouse</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Hotline: 0888851098&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Website: <a href=\"https://kkumhouse.vn/\">https://kkumhouse.vn/</a>&nbsp;&nbsp;&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Nguồn <a href=\"https://vinhomes.vn/\">https://vinhomes.vn/</a>&nbsp;</span></span></p>', '5 YẾU TỐ TẠO NÊN SỨC HÚT CĂN HỘ VINHOMES SMART CITY', 'Sự xuất hiện của những căn hộ Vinhomes Smart City với thiết kế thông minh, tích hợp chuỗi tiện ích hiện đại đã tạo nên giá trị sống khác biệt, thu hút cộng đồng cư dân quốc tế.', '5 YẾU TỐ TẠO NÊN SỨC HÚT CĂN HỘ VINHOMES SMART CITY', '5-yeu-to-tao-nen-suc-hut-can-ho-vinhomes-smart-city-bi10', 1, NULL, 'vi', 'hinh-anh-5-yeu-to-tao-nen-suc-hut-can-ho-cua-Vinhomes-Smart-City-so-1.jpg', '2021-10-27 08:47:42', '2021-10-27 08:47:42');
INSERT INTO `blogs` (`id`, `name`, `user_id`, `title`, `content`, `seo_description`, `short_description`, `seo_keyword`, `url`, `display`, `type`, `lang`, `avata`, `created_at`, `updated_at`) VALUES
(11, 'GIẢI KHÁT CĂN HỘ DƯỚI 2 TỶ TẠI ĐÔ THỊ THÔNG MINH VINHOMES SMART CITY', 1, 'GIẢI KHÁT CĂN HỘ DƯỚI 2 TỶ TẠI ĐÔ THỊ THÔNG MINH VINHOMES SMART CITY', '<p dir=\"ltr\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Trước t&igrave;nh h&igrave;nh tăng gi&aacute; c&ugrave;ng sự khan hiếm trong nguồn cung nh&agrave; ở, c&aacute;c căn hộ Vinhomes Smart City với đầy đủ tiện nghi, thiết kế sang trọng, &aacute;p dụng ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng ưu đ&atilde;i, đ&atilde; g&oacute;p phần giải quyết b&agrave;i to&aacute;n kinh tế cho người d&acirc;n.</span></span></strong></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Căn hộ Vinhomes Smart City - Giải ph&aacute;p cho thị trường bất động sản&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Gi&aacute; nh&agrave; tăng mạnh, kh&oacute; khăn cho người d&acirc;n&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Bất chấp ảnh hưởng của dịch Covid-19, thị trường bất động sản thế giới n&oacute;i chung v&agrave; tại Việt Nam n&oacute;i ri&ecirc;ng vẫn ghi nhận xu hướng tăng gi&aacute; mạnh. Theo nhận định của nhiều chuy&ecirc;n gia, đ&acirc;y l&agrave; mức tăng trưởng chưa từng được thấy từ trước đến nay.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Ri&ecirc;ng ở ph&acirc;n kh&uacute;c căn hộ, gi&aacute; nh&agrave; đồng loạt tăng cao trong nửa đầu năm 2021. Theo nghi&ecirc;n cứu của Savills, gi&aacute; b&aacute;n một căn hộ ở khu vực ngoại th&agrave;nh đ&atilde; tăng tới 50-60 triệu đồng/ m2. Qu&yacute; I/2021 ghi nhận mức tăng b&igrave;nh qu&acirc;n 10% tr&ecirc;n gi&aacute; c&aacute;c căn hộ v&agrave; chưa c&oacute; dấu hiệu chững lại. Theo quan s&aacute;t, ch&iacute;nh sự gia tăng d&acirc;n số nhanh ch&oacute;ng tại c&aacute;c khu đ&ocirc; thị đ&atilde; k&eacute;o theo nhu cầu sở hữu nh&agrave; tăng nhanh, t&aacute;c động mạnh mẽ tới thị trường bất động sản.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Mặt kh&aacute;c, trong những th&aacute;ng gần đ&acirc;y, nguồn cung căn hộ mới tại H&agrave; Nội giảm mạnh, to&agrave;n thủ đ&ocirc; chỉ c&oacute; th&ecirc;m 3 dự &aacute;n mới, c&ugrave;ng một số dự &aacute;n kh&aacute;c đang trong giai đoạn triển khai. Cầu tăng, cung giảm, khiến cho người mua nh&agrave; gặp kh&oacute; khăn khi t&igrave;m kiếm nơi an cư ph&ugrave; hợp.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Hơn nữa, mức thu nhập trung b&igrave;nh của người d&acirc;n Việt Nam chỉ v&agrave;o khoảng 25-40 triệu/ th&aacute;ng, do đ&oacute;, việc sở hữu căn hộ trong nội th&agrave;nh ng&agrave;y c&agrave;ng trở n&ecirc;n xa vời khi gi&aacute; nh&agrave; li&ecirc;n tục tăng v&agrave; ph&acirc;n kh&uacute;c căn hộ tầm trung ng&agrave;y c&agrave;ng &iacute;t. Chị Nhung (28 tuổi, nh&acirc;n vi&ecirc;n văn ph&ograve;ng ở H&agrave; Nội) với mong muốn sở hữu căn hộ của ri&ecirc;ng m&igrave;nh cho biết: D&ugrave; đ&atilde; t&igrave;m mỏi mắt, tham khảo nhiều dự &aacute;n trong th&agrave;nh phố nhưng vẫn kh&ocirc;ng t&igrave;m được lựa chọn ph&ugrave; hợp. Bởi th&ocirc;ng thường, những căn hộ c&oacute; gi&aacute; rẻ th&igrave; nội thất, cơ sở hạ tầng kh&ocirc;ng đảm bảo, c&ograve;n căn hộ tốt hơn thường c&oacute; gi&aacute; th&agrave;nh qu&aacute; cao.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img src=\"https://lh6.googleusercontent.com/-u--_hMDZpPj5heOAazQh_GHHb7tj3n9W95R11CPda1Qz6Kzofz-GHHle2vdznt8wjtQAuFaTXRRkL-kFsv9VG03VrIF4TESSAWgTBP548UOau2Y0RLdzrrN-F7WuZp9UKfCGDXG\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Đối diện với t&igrave;nh trạng khan hiếm căn hộ tại trung t&acirc;m th&agrave;nh phố, kh&aacute;ch mua nh&agrave; hiện nay c&oacute; xu hướng chấp nhận di chuyển xa hơn nhưng vẫn đảm bảo kh&ocirc;ng gian sống chất lượng, thiết kế hiện đại v&agrave; t&iacute;ch hợp đầy đủ c&aacute;c tiện &iacute;ch thiết yếu của cuộc sống.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">So với những khu vực kh&aacute;c, nhờ lợi thế địa l&yacute; c&ugrave;ng hệ thống cơ sở hạ tầng, giao th&ocirc;ng đồng bộ, khu vực ph&iacute;a T&acirc;y l&agrave; điểm đến l&yacute; tưởng cho c&aacute;c cư d&acirc;n đang t&igrave;m kiếm nơi an cư. Nổi bật trong số đ&oacute; phải kể đến dự &aacute;n Vinhomes Smart City nằm ngay tại trung t&acirc;m h&agrave;nh ch&iacute;nh mới của thủ đ&ocirc;.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Căn hộ Vinhomes Smart City &ldquo;vừa t&uacute;i tiền&rdquo; - chuẩn sống đẳng cấp vượt mong đợi&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img src=\"https://lh5.googleusercontent.com/W81Yw3wep5DtSo8Tof5ZPGDVYdEsGxvwjH4ud68e3lMSHJi8UaQaAeJb_bkpY20nlBS79PK-veRqVS9QyMbzN4r_1TAM8ZcOL5kvgbgFd6ZBkVk1FQMPishitpQhrWEuif3lu9B5\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Sở hữu vị tr&iacute; đắc địa, căn hộ Vinhomes Smart City được nhiều người d&acirc;n lựa chọn</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Với quy m&ocirc; 280 ha bao gồm 49 to&agrave; căn hộ, 98 căn biệt thự được thiết kế sang trọng, c&ugrave;ng hệ sinh th&aacute;i tiện &iacute;ch đẳng cấp, c&aacute;c căn hộ Vinhomes Smart City đ&aacute;p ứng được trọn vẹn ti&ecirc;u ch&iacute; an cư của nhiều hộ gia đ&igrave;nh.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Đặc biệt, đ&ocirc; thị Vinhomes Smart City, với 3 d&ograve;ng sản phẩm căn hộ đa dạng (Sapphire, Ruby, Diamond), cung cấp cho kh&aacute;ch h&agrave;ng nhiều lựa chọn, chung tay n&acirc;ng tầm chất lượng sống của người Việt. Gi&aacute; b&aacute;n căn hộ Smart City của Vinhomes dao động ở mức 1 tỷ đồng trở l&ecirc;n t&ugrave;y theo từng loại h&igrave;nh căn hộ. Đ&acirc;y được đ&aacute;nh gi&aacute; l&agrave; một mức gi&aacute; cực tốt tr&ecirc;n thị trường hiện nay.&nbsp;&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Cụ thể, nếu c&aacute;c căn hộ Vinhomes Smart City Sapphire, với thiết kế linh hoạt, ph&ugrave; hợp với nhiều đối tượng, c&oacute; mức gi&aacute; từ 30 triệu/m2 đến 48 triệu/m2, thấp nhất trong 3 d&ograve;ng sản phẩm, th&igrave; căn hộ Vinhomes Smart City Ruby lại c&oacute; gi&aacute; b&aacute;n &ldquo;nhỉnh&rdquo; hơn kh&ocirc;ng đ&aacute;ng kể, giao động từ 40 triệu/m2 đến hơn 50 triệu/m2. Cuối c&ugrave;ng, Vinhomes Diamond l&agrave; d&ograve;ng căn hộ cao cấp nhất tr&ecirc;n hệ thống, ph&ugrave; hợp với những kh&aacute;ch h&agrave;ng c&oacute; thu nhập cao.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img src=\"https://lh4.googleusercontent.com/-0NbkYrd04SKzio_xARZqrDRB5t8-mRURPZ2QJyjCVKo4fLRXDg1eXQ-vfg590UHuRvBv8mR3t4XSPCHdpzCx6EfhZnDa9yzuL1mEYlHLVTZ-MIpSdKYHScI7erGJ1j_L4xO0WWC\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Căn hộ Vinhomes Smart City c&oacute; mức gi&aacute; hợp l&yacute;, đa dạng lựa chọn cho kh&aacute;ch h&agrave;ng</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">C&aacute;c căn hộ Vinhomes Smart City được thiết kế theo phong c&aacute;ch hiện đại, tối ưu diện t&iacute;ch, tạo n&ecirc;n kh&ocirc;ng gian ấm c&uacute;ng, tiện lợi cho c&aacute;c hoạt động sinh hoạt hằng ng&agrave;y của cả gia đ&igrave;nh. Chỉ với mức gi&aacute; dưới 2 tỷ, cư d&acirc;n c&oacute; thể dễ d&agrave;ng sở hữu căn hộ Studio hay căn hộ 1 ph&ograve;ng ngủ +1 tại đại đ&ocirc; thị th&ocirc;ng minh.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">B&ecirc;n cạnh đ&oacute;, chủ đầu tư Vinhomes c&ograve;n ra mắt chương tr&igrave;nh ưu đ&atilde;i hấp dẫn chưa từng c&oacute;, d&agrave;nh cho cư d&acirc;n tương lai tại Vinhomes Smart City như: cọc trước 50 triệu đồng - sở hữu ngay căn hộ mơ ước; hỗ trợ vay 100% gi&aacute; trị căn hộ với l&atilde;i suất 0% l&ecirc;n tới 26 th&aacute;ng (tuỳ theo ph&acirc;n khu), khoản vay ban đầu 20-30% gi&aacute; trị căn hộ sẽ được ng&acirc;n h&agrave;ng giải ng&acirc;n dựa tr&ecirc;n t&agrave;i sản đảm bảo sẵn c&oacute;. Đ&acirc;y cũng l&agrave; cơ hội r&uacute;t ngắn thời gian t&iacute;ch lũy, giảm bớt &aacute;p lực t&agrave;i ch&iacute;nh, hỗ trợ kh&aacute;ch h&agrave;ng sở hữu ng&ocirc;i nh&agrave; mơ ước cho ri&ecirc;ng m&igrave;nh.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Một điểm cộng lớn kh&aacute;c của Vinhomes Smart City nằm ở hệ thống tiện &iacute;ch vượt trội, t&iacute;ch hợp đầy đủ hệ sinh th&aacute;i Vingroup cao cấp c&ugrave;ng ứng dụng c&ocirc;ng nghệ ti&ecirc;n tiến v&agrave;o quản l&yacute; vận h&agrave;nh. Chỉ với mức gi&aacute; trung b&igrave;nh, kh&aacute;ch h&agrave;ng sẽ được tận hưởng một cuộc sống tiện nghi, đẳng cấp ph&iacute;a T&acirc;y H&agrave; Nội.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Hệ thống 3 c&ocirc;ng vi&ecirc;n li&ecirc;n ho&agrave;n Vinhomes Smart City rộng 16,3 ha l&agrave; nơi để cư d&acirc;n tự do vui chơi, r&egrave;n luyện n&acirc;ng cao sức khỏe, đồng thời kiến tạo cảnh quan sống xanh m&aacute;t, kho&aacute;ng đạt. &ldquo;Tứ trụ kim cương&rdquo; hiện đại của Vingroup bao gồm TTTM Vincom, bệnh viện đa khoa Vinmec, trường phổ th&ocirc;ng li&ecirc;n cấp Vinschool v&agrave; ti&ecirc;u chuẩn vận h&agrave;nh, quản l&yacute; của Vinhomes sẽ g&oacute;p phần kiến tạo v&agrave; n&acirc;ng tầm chất lượng cuộc sống cho cộng đồng cư d&acirc;n văn minh, thời thượng.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img src=\"https://lh5.googleusercontent.com/_Ld5qPvKE4uxyGjMO9JCj6cfeEfIiPckPTwXV3kZyhJbGid05jq3qdGy_qdxlMCszgwldbK1fnn84b_v5LqK7sonCHzLOhH7uXtgkHGy1YRprI6tUbsplultBhak2T7Bw8Q26i7C\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Cư d&acirc;n sống tại căn hộ Vinhomes Smart City trải nghiệm cuộc sống chuẩn resort với tiện &iacute;ch nội khu phong ph&uacute;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Sở hữu nhiều lợi thế ưu việt về mặt vị tr&iacute;, cảnh quan, tiện &iacute;ch, song mức gi&aacute; c&aacute;c căn hộ Vinhomes Smart City lại v&ocirc; c&ugrave;ng hợp l&yacute;, giải quyết c&aacute;c vấn đề về nguồn cung tr&ecirc;n thị trường bất động sản miền Bắc.</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Đ&aacute;p ứng c&aacute;c ti&ecirc;u ch&iacute; sống trọn vẹn, Vinhomes Smart City xứng đ&aacute;ng với danh hiệu &ldquo;th&agrave;nh phố th&ocirc;ng minh&quot; - điểm đến l&yacute; tưởng của những cư d&acirc;n to&agrave;n cầu.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">C&ocirc;ng ty TNHH Bất động sản KkumHouse l&agrave; đơn vị ph&acirc;n phối bất động sản uy t&iacute;n tại H&agrave; Nội. Để nhận được tư vấn về c&aacute;c dịch vụ bất động sản tại dự &aacute;n Vinhomes Smart City xin vui l&ograve;ng li&ecirc;n hệ:&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">C&ocirc;ng ty TNHH Bất động sản KkumHouse</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Hotline: 0888851098&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Website: <a href=\"https://kkumhouse.vn/\">https://kkumhouse.vn/</a>&nbsp;&nbsp;&nbsp;</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Nguồn <a href=\"https://vinhomes.vn/\">https://vinhomes.vn/</a> </span></span></p>', 'GIẢI KHÁT CĂN HỘ DƯỚI 2 TỶ TẠI ĐÔ THỊ THÔNG MINH VINHOMES SMART CITY', 'Trước tình hình tăng giá cùng sự khan hiếm trong nguồn cung nhà ở, các căn hộ Vinhomes Smart City với đầy đủ tiện nghi, thiết kế sang trọng, áp dụng chính sách bán hàng ưu đãi, đã góp phần giải quyết bài toán kinh tế cho người dân.', 'GIẢI KHÁT CĂN HỘ DƯỚI 2 TỶ TẠI ĐÔ THỊ THÔNG MINH VINHOMES SMART CITY', 'giai-khat-can-ho-duoi-2-ty-tai-do-thi-thong-minh-vinhomes-smart-city-bi11', 1, NULL, 'vi', 'hinh-anh-giai-khat-can-ho-vinhomes-smart-city-duoi-2-ty-tai-dai-do-thi-thong-minh-so-01_1629359939.jpg', '2021-10-27 08:55:40', '2021-10-27 08:56:34'),
(12, 'LÀM THẾ NÀO NHẬN DIỆN CĂN HỘ HOMESTAY PHÙ HỢP ĐỂ KINH DOANH', 1, 'LÀM THẾ NÀO NHẬN DIỆN CĂN HỘ HOMESTAY PHÙ HỢP ĐỂ KINH DOANH', '<p dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Dự &aacute;n Vinhomes Westpoint ở vị tr&iacute; đắc địa, thiết kế mang t&iacute;nh thẩm mỹ cao, kh&ocirc;ng gian sống tiện nghi; an ninh được đảm bảo l&agrave; điều cần lưu t&acirc;m.</span></span></strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Vị tr&iacute; đắc địa</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Như mọi loại h&igrave;nh kinh doanh bất động sản kh&aacute;c, vị tr&iacute; đẹp lu&ocirc;n l&agrave; ti&ecirc;u ch&iacute; quan trọng. Với homestay, t&ugrave;y v&agrave;o đặc t&iacute;nh v&ugrave;ng v&agrave; đối tượng kh&aacute;ch h&agrave;ng mục ti&ecirc;u m&agrave; chọn vị tr&iacute; cho ph&ugrave; hợp.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Nh&oacute;m kh&aacute;ch h&agrave;ng chủ lực của giới kinh doanh homestay thường l&agrave; kh&aacute;ch du lịch, chuy&ecirc;n gia, doanh nh&acirc;n nước ngo&agrave;i hoặc từ c&aacute;c v&ugrave;ng miền kh&aacute;c đến c&ocirc;ng t&aacute;c. Với đặc th&ugrave; n&agrave;y, c&aacute;c khu vực sầm uất được nhiều nh&agrave; đầu tư đ&aacute;nh gi&aacute; cao khi thỏa m&atilde;n được nhu cầu tham quan m&agrave; kh&ocirc;ng tốn qu&aacute; nhiều thời gian di chuyển của kh&aacute;ch du lịch. Mặt kh&aacute;c, vị tr&iacute; gần c&aacute;c khu văn ph&ograve;ng, c&aacute;c địa điểm trọng yếu cũng đem lại sự thuận tiện cho người đi l&agrave;m.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Ở H&agrave; Nội, một trong những khu vực để kinh doanh homestay l&agrave; trung t&acirc;m mới ph&iacute;a T&acirc;y với c&aacute;c tuyến đường huyết mạch như Phạm H&ugrave;ng, Đỗ Đức Dục, c&aacute;c tuyến metro 5,6,8 sắp đi v&agrave;o hoạt động. Đ&acirc;y cũng l&agrave; nơi tập trung đ&ocirc;ng đảo cộng đồng chuy&ecirc;n gia H&agrave;n, Nhật, Trung với nhiều khu văn ph&ograve;ng hiện đại như Keangnam, Grand Plaza... Nhiều dự &aacute;n chung cư cao cấp cũng đ&atilde; c&oacute; mặt tại khu vực n&agrave;y như Vinhomes West Point.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&quot;Cư d&acirc;n v&agrave; nh&agrave; đầu tư tại đ&acirc;y sẽ hưởng lợi với vị tr&iacute; nh&acirc;n đ&ocirc;i. T&ograve;a West 1 định hướng trở th&agrave;nh t&ograve;a căn hộ văn ph&ograve;ng, l&agrave; điểm hẹn năng động của nhiều doanh nghiệp trẻ, c&ocirc;ng ty nước ngo&agrave;i, từ đ&oacute; tạo ra một nguồn cung lớn cho thị trường căn hộ cho thu&ecirc; n&oacute;i chung v&agrave; homestay n&oacute;i ri&ecirc;ng&quot;, đại diện Vinhomes West Point khẳng định.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&#39;&#39;Phần nh&igrave;n&#39;&#39; m&atilde;n nh&atilde;n</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Với nh&oacute;m kh&aacute;ch h&agrave;ng tương đối trẻ v&agrave; c&oacute; ti&ecirc;u chuẩn thẩm mỹ cao, thiết kế của căn hộ l&agrave; ti&ecirc;u ch&iacute; m&agrave; c&aacute;c nh&agrave; đầu tư homestay n&ecirc;n ch&uacute; trọng, bởi đ&acirc;y l&agrave; một trong những yếu tố đầu ti&ecirc;n gi&uacute;p ghi điểm với kh&aacute;ch h&agrave;ng.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Với định hướng n&agrave;y, người mua c&oacute; thể c&acirc;n nhắc lựa chọn những căn hộ b&agrave;n giao th&ocirc; v&agrave; c&oacute; phần khung hiện đại, bố tr&iacute; c&aacute;c kh&ocirc;ng gian cơ bản như cửa sổ, ban c&ocirc;ng, bếp, ph&ograve;ng ngủ một c&aacute;ch hợp l&yacute; v&agrave; c&oacute; t&iacute;nh thẩm mỹ. B&ecirc;n cạnh đ&oacute;, một tầm nh&igrave;n tho&aacute;ng đẹp, nhiều g&oacute;c &quot;sống ảo&quot; cũng thu h&uacute;t kh&aacute;ch h&agrave;ng trẻ tuổi, đem đến nhiều cơ hội kinh doanh hơn.&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Kh&ocirc;ng gian tiện nghi</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Với m&ocirc; h&igrave;nh homestay, kh&aacute;ch thu&ecirc; sẽ c&oacute; nhiều trải nghiệm &quot;giống như người bản xứ&quot; - điều tạo n&ecirc;n kh&aacute;c biệt so với kh&aacute;ch sạn, nh&agrave; nghỉ truyền thống như buổi s&aacute;ng dậy tự nấu ăn, pha cafe; tự giặt quần &aacute;o thay v&igrave; phải sử dụng dịch vụ giặt l&agrave;; được tr&ograve; chuyện, giao tiếp với chủ nh&agrave;, hiểu biết th&ecirc;m về địa phương;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Căn hộ d&ugrave;ng l&agrave;m homestay cần được trang bị đầy đủ tiện nghi, đ&aacute;p ứng mọi nhu cầu sinh hoạt &quot;như ở nh&agrave;&quot; của kh&aacute;ch h&agrave;ng. Mặt kh&aacute;c, c&aacute;c tiện &iacute;ch hiện hữu b&ecirc;n ngo&agrave;i căn hộ như si&ecirc;u thị, cửa h&agrave;ng tiện lợi, c&aacute;c tiện &iacute;ch giải tr&iacute;, thể thao cũng cần được ch&uacute; trọng.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img src=\"https://lh3.googleusercontent.com/wfNSK5M4z-QVDRqI8MdFPvJmuczr3zLXpM8fJFz8BPT1h7IjyeJxpENDpHf-6nqQ8F8ZEN7lqTtuwn6VSNYz9gpzd7Xlhz5q_TWAYnX0SiImmD_PO3uSVqf17bW6AFLm9WKoos5q\" style=\"width:100%\" /></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Căn hộ hai ch&igrave;a kh&oacute;a loại 2 ph&ograve;ng ngủ tại t&ograve;a West 1 - Vinhomes West Point.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">T&iacute;nh độc lập, ri&ecirc;ng tư trong trải nghiệm lưu tr&uacute; cũng l&agrave; một điểm m&agrave; nhiều kh&aacute;ch h&agrave;ng v&agrave; gia chủ quan t&acirc;m. Hiện căn hộ ch&igrave;a kh&oacute;a đ&ocirc;i Dual Key tại Vinhomes West Point l&agrave; một trong những loại h&igrave;nh bất động sản nổi bật ch&uacute; trọng đến yếu tố n&agrave;y.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Đại diện dự &aacute;n cho hay, với cấu tr&uacute;c &quot;hai trong một&quot; gồm hai căn hộ con được trang bị đầy đủ bếp, ph&ograve;ng ngủ, ph&ograve;ng tắm, ph&ograve;ng kh&aacute;ch, nh&agrave; vệ sinh tr&ecirc;n c&ugrave;ng một mặt s&agrave;n, kh&aacute;ch thu&ecirc; v&agrave; gia chủ&nbsp; c&oacute; thể tối đa sự ri&ecirc;ng tư đồng thời vẫn duy tr&igrave; những giao tiếp cần c&oacute;.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">B&ecirc;n cạnh đ&oacute;, hệ thống tiện &iacute;ch Vinhomes ngay dưới ch&acirc;n t&ograve;a nh&agrave; bao gồm khu thương mại dịch vụ, si&ecirc;u thị VinMart, sảnh lounge, clubhouse, bể bơi m&aacute;i k&iacute;nh, ph&ograve;ng tập b&oacute;ng b&agrave;n, s&acirc;n tập gym ngo&agrave;i trời, đường dạo, thảm cỏ... c&ograve;n đem đến hệ thống dịch vụ đa dạng cho người ở.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">An to&agrave;n v&agrave; văn minh</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Tr&ecirc;n ứng dụng đặt ph&ograve;ng Airbnb, những đ&aacute;nh gi&aacute; về khu d&acirc;n cư quanh căn hộ chiếm tỷ lệ kh&ocirc;ng nhỏ. Theo đ&oacute;, &#39;&#39;an ninh tốt, văn minh&quot; l&agrave; những điểm cộng m&agrave; chủ nh&agrave; thường xuy&ecirc;n đề cập trong phần m&ocirc; tả nhằm tăng t&iacute;nh thuyết phục cho căn nh&agrave; của m&igrave;nh.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">C&aacute;c chuy&ecirc;n gia bất động sản khuy&ecirc;n người mua n&ecirc;n chọn c&aacute;c căn hộ tại những dự &aacute;n c&oacute; chủ đầu tư uy t&iacute;n, nhằm thừa hưởng đội ngũ an ninh chuy&ecirc;n nghiệp, hệ thống camera 24/7 c&ugrave;ng cư d&acirc;n văn minh, chọn lọc.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Tại Vinhomes West Point, ngo&agrave;i những lợi thế tr&ecirc;n, kh&aacute;ch h&agrave;ng c&ograve;n được tối ưu h&oacute;a trải nghiệm thu&ecirc; nh&agrave; khi sống giữa một cộng đồng cư d&acirc;n đa quốc tịch, tr&iacute; thức v&agrave; năng động.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">C&ocirc;ng ty TNHH Bất động sản KkumHouse l&agrave; đơn vị ph&acirc;n phối bất động sản uy t&iacute;n tại H&agrave; Nội. Để nhận được tư vấn về c&aacute;c dịch vụ bất động sản tại dự &aacute;n Vinhomes West Point xin vui l&ograve;ng li&ecirc;n hệ:&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">C&ocirc;ng ty TNHH Bất động sản KkumHouse</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Hotline: 0888851098&nbsp;</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Website: <a href=\"https://kkumhouse.vn/\">https://kkumhouse.vn/</a>&nbsp;&nbsp;&nbsp;</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Nguồn <a href=\"https://vnexpress.net/\">https://vnexpress.net/</a></span></span></p>', 'LÀM THẾ NÀO NHẬN DIỆN CĂN HỘ HOMESTAY PHÙ HỢP ĐỂ KINH DOANH', 'Dự án Vinhomes Westpoint ở vị trí đắc địa, thiết kế mang tính thẩm mỹ cao, không gian sống tiện nghi; an ninh được đảm bảo là điều cần lưu tâm.', 'LÀM THẾ NÀO NHẬN DIỆN CĂN HỘ HOMESTAY PHÙ HỢP ĐỂ KINH DOANH', 'lam-the-nao-nhan-dien-can-ho-homestay-phu-hop-de-kinh-doanh-bi12', 1, NULL, 'vi', '2-11-201831-851120204-w500-7335-1541178215.png', '2021-10-27 08:58:59', '2021-10-27 08:58:59'),
(13, 'KKUMHOUSE TUYỂN DỤNG CHIẾN BINH SALE BĐS HOA HỒNG CAO NHẤT THỊ TRƯỜNG', 6, 'KKUMHOUSE TUYỂN DỤNG CHIẾN BINH SALE BĐS HOA HỒNG CAO NHẤT THỊ TRƯỜNG', '<p><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/123.jpg\" style=\"width: 100%; height: 100%;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C&ocirc;ng ty TNHH Bất Động Sản Kkumhouse tuyển dụng</strong></p>\r\n\r\n<hr />\r\n<p><strong>Địa điểm l&agrave;m việc:</strong> T&ograve;a W1, Vinhomes West Point, Phạm H&ugrave;ng, Nam Từ Li&ecirc;m, H&agrave; Nội.</p>\r\n\r\n<p><strong>Vị tr&iacute;:</strong> Nh&acirc;n vi&ecirc;n kinh doanh (Sale)</p>\r\n\r\n<hr />\r\n<p><strong>A. Quyền Lợi</strong></p>\r\n\r\n<p><strong>①</strong> Hoa hồng <span style=\"color:#c0392b;\"><strong>70%</strong></span> đối với h&agrave;ng chủ đầu tư, <span style=\"color:#c0392b;\"><strong>50%</strong></span> đối với h&agrave;ng thứ cấp + thưởng &nbsp;n&oacute;ng</p>\r\n\r\n<p><strong>②</strong> Bảo hiểm, chế độ ph&uacute;c lợi, nghỉ ngơi theo quy định nh&agrave; nước</p>\r\n\r\n<p><strong>③</strong> Thu nhập <strong>10-100tr/th&aacute;ng</strong> (v&agrave; kh&ocirc;ng giới hạn)</p>\r\n\r\n<p><strong>④</strong> Được nhận nguồn kh&aacute;ch h&agrave;ng c&oacute; nhu cầu thực từ c&ocirc;ng ty</p>\r\n\r\n<p><strong>⑤</strong> Nguồn h&agrave;ng c&aacute;c dự &aacute;n khu ph&iacute;a T&acirc;y H&agrave; Nội cực k&igrave; đa dạng: Vinhomes Westpoint, Vinhomes Metropolis, Vinhomes Green Bay, Vinhomes Skylake, Vinhomes Gardenia, Goldmark City, Kaengnam, Dcapitale, CT8- The Emerald, Mỹ Đ&igrave;nh Pearl, Thăng Long No.1, The Matrix One, The Sun, Golden Palace, Sunshine Center, Sunshine City, The Mannor, The Zei&hellip;</p>\r\n\r\n<p><strong>⑥</strong> Hỗ trợ ngoại ngữ đối với kh&aacute;ch h&agrave;ng nước ngo&agrave;i (H&agrave;n, Nhật, Trung, Anh&hellip;)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>B. M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n\r\n<p><strong>①</strong> Đối tượng kh&aacute;ch h&agrave;ng: kh&aacute;ch nước ngo&agrave;i đặc biệt kh&aacute;ch H&agrave;n v&agrave; kh&aacute;ch Việt c&oacute; nhu cầu thu&ecirc;/ mua căn hộ chung cư.</p>\r\n\r\n<p><strong>②</strong> Tư vấn v&agrave; chốt hợp đồng c&aacute;c giao dịch thu&ecirc; v&agrave; mua b&aacute;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C. Y&ecirc;u cầu</strong></p>\r\n\r\n<p><strong>①</strong> Đam m&ecirc; lĩnh vực BĐS, trung thực, nhiệt t&igrave;nh</p>\r\n\r\n<p><strong>②</strong> Ưu ti&ecirc;n c&aacute;c bạn đ&atilde; c&oacute; kinh nghiệm l&agrave;m sale BĐS</p>\r\n\r\n<p><strong>③</strong> Thử việc 1 th&aacute;ng đối với ứng vi&ecirc;n chưa c&oacute; kinh nghiệm, được đ&agrave;o tạo b&agrave;i bản.</p>\r\n\r\n<hr />\r\n<p><span style=\"font-size:13pt\"><span style=\"text-justify:inter-ideograph\"><span style=\"line-height:115%\"><span style=\"font-family:VNTime\"><b><span lang=\"FR\" style=\"font-size:12.0pt\"><span style=\"line-height:115%\"><span style=\"font-family:Wingdings\"><span style=\"color:black\">+</span></span></span></span></b></span></span></span></span><strong>Gửi CV về:</strong> <strong><span style=\"color:#c0392b;\">kkumhouse.hr@gmail.com</span></strong></p>\r\n\r\n<p><span style=\"font-size:13pt\"><span style=\"text-justify:inter-ideograph\"><span style=\"line-height:115%\"><span style=\"font-family:VNTime\"><b><span lang=\"FR\" style=\"font-size:12.0pt\"><span style=\"line-height:115%\"><span style=\"font-family:Wingdings\"><span style=\"color:black\">(</span></span></span></span></b></span></span></span></span><strong>Đặt lịch hẹn phỏng vấn: <span style=\"color:#c0392b;\">0862855366</span></strong></p>', 'KKUMHOUSE TUYỂN DỤNG CHIẾN BINH SALE BĐS HOA HỒNG CAO NHẤT THỊ TRƯỜNG', NULL, 'KKUMHOUSE TUYỂN DỤNG CHIẾN BINH SALE BĐS HOA HỒNG CAO NHẤT THỊ TRƯỜNG', 'kkumhouse-tuyen-dung-chien-binh-sale-bds-hoa-hong-cao-nhat-thi-truong-bi13', 1, NULL, 'vi', 'KKUMHOUSE TUYỂN DỤNG SALE BĐS SỐ LƯỢNG LỚN.jpg', '2021-11-29 05:47:13', '2021-11-29 07:42:54'),
(14, '꿈하우스 부동산 <70% 수수료> 영업 직원 모집공고', 6, '꿈하우스 부동산 <70% 수수료> 영업 직원 모집공고', '<p><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/%EA%BF%88%ED%95%98%EC%9A%B0%EC%8A%A4%20%EB%AA%A8%EC%A7%91%20%EA%B3%B5%EA%B3%A0.jpg\" style=\"height: 100%; width: 100%;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>꿈하우스 부동산 모집공고</strong></p>\r\n\r\n<hr />\r\n<p><strong>근무처:</strong> W1동, 빈홈 웨스트포인트, Pham Hung, Nam Tu Liem, 하노이.</p>\r\n\r\n<p><strong>위치:</strong> 영업 직원 (세일직원)</p>\r\n\r\n<hr />\r\n<p><b>ㄱ. 근무 혜택</b></p>\r\n\r\n<p><strong>①</strong>&nbsp;수수료: 분양 매물에&nbsp;<span style=\"color:#c0392b;\"><strong>70%</strong></span> , 열등재에&nbsp;<span style=\"color:#c0392b;\"><strong>50%</strong></span>&nbsp;+ 즉시 포상</p>\r\n\r\n<p><strong>②</strong>&nbsp;국가 규정에 따른 보혐.복지.휴가 제도&nbsp;</p>\r\n\r\n<p><strong>③</strong> 수입: <strong>1000만동~1억동/달</strong> (무한)</p>\r\n\r\n<p><strong>④</strong> 회사에서 실제 손님 데이터를 지원 받을 수 있음.</p>\r\n\r\n<p><strong>⑤</strong>&nbsp;하노이 서쪽 아파트 매물: 빈홈 웨스트포인트, 빈홈 메르로폴리스, 빈홈 그린베이, 빈홈 스카이레이크, 빈홈 가드니아, 골드마크 시티, 경남, 디캐피탈, 더 에메랄드, 미딩펄, 탕롱 넘버원, 더 매트릭스 원, 더선, 골든 팰리스, 선샤인 센터, 선샤인 시티, 더 매너, 더제이,...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>ㄴ. 업무 설명</strong></p>\r\n\r\n<p><strong>①</strong>&nbsp;손님 대상: 외국인, 특히 베트남에서 아파트를 임대나 구매할 한국인.</p>\r\n\r\n<p><strong>②</strong> 거래와 계약 상담 및 진행.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>ㄷ. 업무 조건</strong></p>\r\n\r\n<p><strong>①</strong>&nbsp;부동산 분야에 대한 애호를 가지며 성실하고 열정함.</p>\r\n\r\n<p><strong>②</strong>&nbsp;부동산 분야에 경험이 있는 분 우선.</p>\r\n\r\n<p><strong>③</strong>&nbsp;경험 아직 없는 분에게 한달 수습, 제대로 교육 받음.</p>\r\n\r\n<hr />\r\n<p><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Wingdings\">+</span>&nbsp;이력서 수령:&nbsp;</span></span></span><span style=\"color:#c0392b;\"><strong>kkumhouse.hr@gmail.com</strong></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Wingdings\">(</span>&nbsp;면접 약속:&nbsp;</span></span></span><span style=\"color:#c0392b;\"><strong>0862855366</strong></span></p>', '꿈하우스 부동산 <70% 수수료> 영업 직원 모집공고', NULL, '꿈하우스 부동산 <70% 수수료> 영업 직원 모집공고', '꿈하우스-부동산-70-수수료-영업-직원-모집공고-bi14', 1, NULL, 'ko', '꿈하우스 모집 공고.jpg', '2021-11-30 03:18:49', '2021-11-30 03:27:06'),
(17, 'TUYỂN DỤNG CHUYÊN VIÊN TUYỂN DỤNG - LƯƠNG THƯỞNG HẤP DẪN, THU NHẬP KHÔNG GIỚI HẠN', 6, 'Tuyển dụng Chuyên viên tuyển dụng  Lương thưởng hấp dẫn – Thu nhập không giới hạn', '<p><strong><em>C&ocirc;ng ty TNHH Bất Động Sản Kkumhouse tuyển dụng Chuy&ecirc;n vi&ecirc;n tuyển dụng.<br />\r\nLương thưởng hấp dẫn &ndash; Thu nhập kh&ocirc;ng giới hạn.</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/CV%20Tuy%E1%BB%83n%20D%E1%BB%A5ng.jpg\" style=\"width: 100%; height: 100%;\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>M&Ocirc; TẢ C&Ocirc;NG VIỆC</strong></p>\r\n\r\n<p>① Thực hiện quy tr&igrave;nh tuyển dụng nh&acirc;n vi&ecirc;n vi&ecirc;n theo kế hoạch tuyển dụng của c&ocirc;ng ty</p>\r\n\r\n<p>② Quy m&ocirc; tuyển dụng 100 nh&acirc;n sự trong năm 2022</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Y&Ecirc;U CẦU</strong></p>\r\n\r\n<p>① C&oacute; kĩ năng v&agrave; kinh nghiệm tuyển dụng</p>\r\n\r\n<p>② Tốt nghiệp đại học</p>\r\n\r\n<p>③ Giao tiếp tốt, kĩ năng mềm tốt</p>\r\n\r\n<p>④ C&oacute; kinh nghiệm trong lĩnh vực tuyển dụng &iacute;t nhất 1 năm</p>\r\n\r\n<p>⑤ Mục ti&ecirc;u c&ocirc;ng việc gắn b&oacute; l&acirc;u d&agrave;i v&agrave; phấn đấu thăng tiến</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>QUYỀN LỢi</strong></p>\r\n\r\n<p>① Lương cứng 8,000,000 - 12,000,000 triệu t&ugrave;y năng lực</p>\r\n\r\n<p>② C&oacute; bằng ngoại ngữ tăng 20% lương cứng</p>\r\n\r\n<p>③ Thưởng theo KPI/ ứng vi&ecirc;n 1.000.000/ nh&acirc;n vi&ecirc;n ch&iacute;nh thức, thu nhập kh&ocirc;ng giới hạn</p>\r\n\r\n<p>④ 06 th&aacute;ng x&eacute;t tăng lương/ lần</p>\r\n\r\n<p>⑤ Được đ&oacute;ng bảo hiểm, du lịch... v&agrave; c&aacute;c ph&uacute;c lợi kh&aacute;c từ c&ocirc;ng ty v&agrave; theo quy định nh&agrave; nước</p>\r\n\r\n<p>⑥ K&iacute; hợp đồng lao động d&agrave;i hạn v&agrave; thăng tiến theo sự ph&aacute;t triển của c&ocirc;ng ty</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>ĐỊA CHỈ L&Agrave;M VIỆC</strong></p>\r\n\r\n<p>W1 Vinhomes Westpoint, Đỗ Đức Dục, Mễ Tr&igrave;, Nam Từ Li&ecirc;m, H&agrave; Nội</p>\r\n\r\n<p>Thời gian: 8h30 &ndash; 17h30 từ thứ Hai đến hết thứ Bảy h&agrave;ng tuần.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><strong>CV GỬI VỀ: </strong></em><span style=\"color:#c0392b;\"><em><strong>kkumhouse.hr@gmail.com</strong></em></span></p>\r\n\r\n<p><em><strong>THẮC MẮC LI&Ecirc;N HỆ: <span style=\"color:#c0392b;\">0862855366</span></strong></em></p>', 'Tuyển dụng Chuyên viên tuyển dụng  Lương thưởng hấp dẫn – Thu nhập không giới hạn', 'Công ty TNHH Bất Động Sản Kkumhouse tuyển dụng Chuyên viên tuyển dụng\r\nLương thưởng hấp dẫn – Thu nhập không giới hạn', 'Tuyển dụng Chuyên viên tuyển dụng  Lương thưởng hấp dẫn – Thu nhập không giới hạn', 'tuyen-dung-chuyen-vien-tuyen-dung-luong-thuong-hap-dan-–-thu-nhap-khong-gioi-han-bi17', 1, NULL, 'vi', 'CV Tuyển Dụng.jpg', '2022-03-02 10:03:52', '2022-03-03 04:54:28'),
(18, 'TUYỂN DỤNG CHUYÊN VIÊN QUẢN LÝ SẢN PHẨM - THU NHẬP KHÔNG GIỚI HẠN', 6, 'TUYỂN DỤNG CHUYÊN VIÊN QUẢN LÝ SẢN PHẨM - THU NHẬP KHÔNG GIỚI HẠN', '<p style=\"margin: 0mm 0mm 8pt;\"><strong><em>C&ocirc;ng ty TNHH Bất Động Sản Kkumhouse tuyển dụng Chuy&ecirc;n vi&ecirc;n quản l&yacute; sản phẩm bất động sản.<br />\r\nCơ hội thăng tiến cao, lương thưởng hấp dẫn, thưởng n&oacute;ng, thưởng nguội, thu nhập chủ động v&agrave; kh&ocirc;ng giới hạn.</em></strong></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt;\">&nbsp;</p>\r\n\r\n<h2 style=\"margin: 0mm 0mm 8pt;\"><strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/CV%20QLSP.jpg\" style=\"width: 100%; height: 100%;\" /></span></span></span></strong></h2>\r\n\r\n<h2 style=\"margin: 0mm 0mm 8pt;\"><strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">M&Ocirc; TẢ C&Ocirc;NG VIỆC</span></span></span></strong></h2>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">①</span> Quản l&yacute; nguồn dữ liệu kh&aacute;ch h&agrave;ng</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">②</span>&nbsp;Đ&agrave;m ph&aacute;n, thương lượng điều khoản hợp đồng giao dịch thu&ecirc;, mua nh&agrave;</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">③</span> Giải đ&aacute;p c&aacute;c thắc mắc, giải quyết c&aacute;c y&ecirc;u cầu của kh&aacute;ch h&agrave;ng về c&aacute;c sản phẩm v&agrave; dịch vụ của C&ocirc;ng ty qua điện thoại, email, chat&hellip;</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">④</span> K&iacute; kết hợp đồng.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">⑤</span> Chăm s&oacute;c, duy tr&igrave; v&agrave; ph&aacute;t triển mạng lưới kh&aacute;ch h&agrave;ng.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">⑥</span> Thực hiện c&aacute;c c&ocirc;ng việc kh&aacute;c khi được cấp tr&ecirc;n y&ecirc;u cầu.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\">&nbsp;</p>\r\n\r\n<h2 style=\"margin: 0mm 0mm 8pt;\"><strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">Y&Ecirc;U CẦU</span></span></span></strong></h2>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">①</span> Nhanh nhẹn, chăm chỉ, c&oacute; tinh thần cầu tiến v&agrave; tr&aacute;ch nhiệm trong c&ocirc;ng việc.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">②</span> Th&agrave;nh thạo tin học văn ph&ograve;ng.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">③</span> Kỹ năng giao tiếp, năng lực đ&agrave;m ph&aacute;n, thương thảo với KH tốt</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">④</span> C&oacute; laptop c&aacute; nh&acirc;n.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\">&nbsp;</p>\r\n\r\n<h2 style=\"margin: 0mm 0mm 8pt;\"><strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">QUYỀN LỢI</span></span></span></strong></h2>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">①</span> Thu nhập: 15.000.000-30.000.000VNĐ v&agrave; kh&ocirc;ng giới hạn (Bao gồm lương cứng v&agrave; hoa hồng nhận được khi k&yacute; kết HĐ).</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">②</span> X&eacute;t tăng lương định k&igrave; theo năng lực.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">③</span> M&ocirc;i trường l&agrave;m việc năng động, chuy&ecirc;n nghiệp v&agrave; th&acirc;n thiện.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">④</span> Được hưởng đầy đủ c&aacute;c chế độ bảo hiểm (BHYT, BHXH, BHTN), 12 ng&agrave;y nghỉ ph&eacute;p/năm ngay sau khi kết th&uacute;c thử việc theo quy định.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">⑤</span> Thưởng c&aacute;c dịp lễ tết, thưởng th&aacute;ng lương thứ 13, theo kết quả kinh doanh của c&ocirc;ng ty.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">⑥</span> Được tham gia c&aacute;c hoạt động du lịch, vui chơi, d&atilde; ngoại của c&ocirc;ng ty.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">⑦</span> Cơ hội thăng tiến, ph&aacute;t triển nghề nghiệp l&acirc;u d&agrave;i.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\">&nbsp;</p>\r\n\r\n<h2 style=\"margin: 0mm 0mm 8pt;\"><strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">ĐỊA CHỈ L&Agrave;M VIỆC</span></span></span></strong></h2>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">W1 Vinhomes Westpoint, Đỗ Đức Dục, Mễ Tr&igrave;, Nam Từ Li&ecirc;m, H&agrave; Nội.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">Thời gian: 8h30 &ndash; 17h30 từ thứ Hai đến hết thứ Bảy h&agrave;ng tuần.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\">&nbsp;</p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"color:null;\"><em><strong>CV GỬI VỀ: </strong></em></span><span style=\"color:#c0392b;\"><em><strong>kkumhouse.hr@gmail.com</strong></em></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"color:null;\"><em><strong>THẮC MẮC LI&Ecirc;N HỆ: </strong></em></span><span style=\"color:#c0392b;\"><em><strong>0862855366</strong></em></span></p>', 'TUYỂN DỤNG CHUYÊN VIÊN QUẢN LÝ SẢN PHẨM - THU NHẬP KHÔNG GIỚI HẠN', 'Công ty TNHH Bất Động Sản Kkumhouse tuyển dụng Chuyên viên quản lý sản phẩm bất động sản.\r\nCơ hội thăng tiến cao, lương thưởng hấp dẫn, thưởng nóng, thưởng nguội, thu nhập chủ động và không giới hạn.', 'TUYỂN DỤNG CHUYÊN VIÊN QUẢN LÝ SẢN PHẨM - THU NHẬP KHÔNG GIỚI HẠN', 'tuyen-dung-chuyen-vien-quan-ly-san-pham-thu-nhap-khong-gioi-han-bi18', 1, NULL, 'vi', 'CV QLSP.jpg', '2022-03-03 04:33:35', '2022-03-11 03:00:45');
INSERT INTO `blogs` (`id`, `name`, `user_id`, `title`, `content`, `seo_description`, `short_description`, `seo_keyword`, `url`, `display`, `type`, `lang`, `avata`, `created_at`, `updated_at`) VALUES
(19, 'TUYỂN DỤNG NHÂN VIÊN KINH DOANH TIẾNG HÀN SỐ LƯỢNG LỚN - THU NHẬP KHÔNG GIỚI HẠN', 6, 'TUYỂN DỤNG NHÂN VIÊN KINH DOANH TIẾNG HÀN SỐ LƯỢNG LỚN - THU NHẬP KHÔNG GIỚI HẠN', '<p><strong><em>C&ocirc;ng ty TNHH Bất Động Sản Kkumhouse tuyển dụng Nh&acirc;n vi&ecirc;n kinh doanh tiếng H&agrave;n số lượng cực lớn.<br />\r\nCơ hội tiếp x&uacute;c, giao lưu, học hỏi với kh&aacute;ch H&agrave;n Quốc, trau dồi kiến thức tiếng v&agrave; kỹ năng mềm.<br />\r\nThu nhập chủ động kh&ocirc;ng giới hạn c&oacute; thể l&ecirc;n đến 9 số.</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/NV%20Kinh%20doanh.jpg\" style=\"width: 100%; height: 100%;\" /></strong></h2>\r\n\r\n<h2 style=\"margin: 0mm 0mm 8pt;\">&nbsp;</h2>\r\n\r\n<h2 style=\"margin: 0mm 0mm 8pt;\"><strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">M&Ocirc; TẢ C&Ocirc;NG VIỆC</span></span></span></strong></h2>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">①</span> T&igrave;m kiếm kh&aacute;ch h&agrave;ng/ Nhận kh&aacute;ch h&agrave;ng từ c&ocirc;ng ty.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">②</span>&nbsp; Tư vấn kh&aacute;ch Nước Ngo&agrave;i mua, thu&ecirc;, chuyển nhượng nh&agrave; tại H&agrave; Nội.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">③</span> Tham gia v&agrave;o qu&aacute; tr&igrave;nh đ&agrave;m ph&aacute;n v&agrave; k&iacute; kết hợp đồng.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">④</span> Chăm s&oacute;c, duy tr&igrave; v&agrave; ph&aacute;t triển mạng lưới kh&aacute;ch h&agrave;ng.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">⑤</span> B&aacute;o c&aacute;o tiến độ v&agrave; thực hiện c&ocirc;ng việc h&agrave;ng ng&agrave;y.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">⑥</span> Thực hiện c&aacute;c c&ocirc;ng việc kh&aacute;c khi được cấp tr&ecirc;n y&ecirc;u cầu.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\">&nbsp;</p>\r\n\r\n<h2 style=\"margin: 0mm 0mm 8pt;\"><strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">Y&Ecirc;U CẦU</span></span></span></strong></h2>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">①</span> Nhanh nhẹn, chăm chỉ, c&oacute; tinh thần cầu tiến trong c&ocirc;ng việc.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">②</span> Kỹ năng d&agrave;m ph&aacute;n, thương thảo với kh&aacute;ch h&agrave;ng.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">③</span> C&oacute; laptop c&aacute; nh&acirc;n.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">④</span> Ngoại ngữ: tiếng H&agrave;n</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\">&nbsp;</p>\r\n\r\n<h2 style=\"margin: 0mm 0mm 8pt;\"><strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">QUYỀN LỢI</span></span></span></strong></h2>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">①</span> Thu nhập: 30.000.000 ~ 200.000.0000 VNĐ/th&aacute;ng v&agrave; kh&ocirc;ng giới hạn (Bao gồm lương cứng v&agrave; hoa hồng nhận được khi k&yacute; kết HĐ) t&ugrave;y theo năng lực.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">②</span> Cơ hội thăng tiến, ph&aacute;t triển nghề nghiệp l&acirc;u d&agrave;i.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">③</span> M&ocirc;i trường l&agrave;m việc năng động, chuy&ecirc;n nghiệp v&agrave; th&acirc;n thiện.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">④</span> Được hưởng đầy đủ c&aacute;c chế độ bảo hiểm (BHYT, BHXH, BHTN), 12 ng&agrave;y nghỉ ph&eacute;p/năm theo quy định của Nh&agrave; nước.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">⑤</span> Thưởng c&aacute;c dịp lễ tết, thưởng th&aacute;ng lương thứ 13, theo kết quả kinh doanh của c&ocirc;ng ty.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><span lang=\"KO\" style=\"font-family:&quot;Malgun Gothic&quot;,sans-serif\">⑥</span> Được tham gia c&aacute;c hoạt động du lịch, vui chơi, d&atilde; ngoại của c&ocirc;ng ty.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\">&nbsp;</p>\r\n\r\n<h2 style=\"margin: 0mm 0mm 8pt;\"><strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">ĐỊA CHỈ L&Agrave;M VIỆC</span></span></span></strong></h2>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">W1 Vinhomes Westpoint, Đỗ Đức Dục, Mễ Tr&igrave;, Nam Từ Li&ecirc;m, H&agrave; Nội.</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">Thời gian: 8h30 &ndash; 17h30 từ thứ Hai đến hết thứ Bảy h&agrave;ng tuần.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><strong>CV GỬI VỀ: </strong></em><em><strong>kkumhouse.hr@gmail.com</strong></em></p>\r\n\r\n<p><em><strong>THẮC MẮC LI&Ecirc;N HỆ: </strong></em><em><strong>0862855366</strong></em></p>', 'TUYỂN DỤNG NHÂN VIÊN KINH DOANH TIẾNG HÀN SỐ LƯỢNG LỚN - THU NHẬP KHÔNG GIỚI HẠN', 'Công ty TNHH Bất Động Sản Kkumhouse tuyển dụng Nhân viên kinh doanh tiếng Hàn số lượng cực lớn.\r\nCơ hội tiếp xúc, giao lưu, học hỏi với khách Hàn Quốc, trau dồi kiến thức tiếng và kỹ năng mềm.\r\nThu nhập chủ động không giới hạn có thể lên đến 9 số.', 'TUYỂN DỤNG NHÂN VIÊN KINH DOANH TIẾNG HÀN SỐ LƯỢNG LỚN - THU NHẬP KHÔNG GIỚI HẠN', 'tuyen-dung-nhan-vien-kinh-doanh-tieng-han-so-luong-lon-thu-nhap-khong-gioi-han-bi19', 1, NULL, 'vi', 'NV Kinh doanh.jpg', '2022-03-03 07:12:26', '2022-03-03 07:12:26');
INSERT INTO `blogs` (`id`, `name`, `user_id`, `title`, `content`, `seo_description`, `short_description`, `seo_keyword`, `url`, `display`, `type`, `lang`, `avata`, `created_at`, `updated_at`) VALUES
(20, 'SHOPHOUSE KHỐI ĐẾ THE MATRIX ONE - ĐIỂM ĐẾN ĐẮT GIÁ MỚI KHU PHÍA TÂY HÀ NỘI', 6, 'SHOPHOUSE KHỐI ĐẾ THE MATRIX ONE - ĐIỂM ĐẾN ĐẮT GIÁ MỚI KHU PHÍA TÂY HÀ NỘI', '<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong><span style=\"line-height:107%\">The Matrix One &ndash; si&ecirc;u phẩm dự &aacute;n chuẩn hạng A trong l&ograve;ng ph&iacute;a T&acirc;y thủ đ&ocirc; đang từng bước ho&agrave;n thiện v&agrave; chuẩn bị đi v&agrave;o hoạt động. Cận kề ng&agrave;y b&agrave;n giao, The Matrix One ng&agrave;y c&agrave;ng khẳng định vị thế từ chất lượng c&ocirc;ng tr&igrave;nh&nbsp;tới thiết kế đắt gi&aacute; c&ugrave;ng&nbsp;nội thất cao cấp. Tiện &iacute;ch v&agrave; dịch vụ d&agrave;nh ri&ecirc;ng cho cư d&acirc;n nơi đ&acirc;y&nbsp;đ&atilde; trở th&agrave;nh một trong những yếu tố khiến dự &aacute;n trở th&agrave;nh t&acirc;m điểm ch&uacute; &yacute;.</span></strong></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><em><span style=\"line-height:107%\">Dưới đ&acirc;y, Kkumhouse xin&nbsp;gửi tới&nbsp;qu&yacute; kh&aacute;ch h&agrave;ng trọn bộ th&ocirc;ng tin về&nbsp;Shophouse khối đế n&oacute;i chung v&agrave; Shophouse khối đế The Matrix One n&oacute;i ri&ecirc;ng để qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; c&aacute;i nh&igrave;n đầy đủ nhất về sản phẩm v&agrave; c&oacute; quyết định đ&uacute;ng đắn về việc đầu tư trong tương lai.</span></em></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><em><span style=\"line-height:107%\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/MIK_TMO_Shophouse_goccam%20Tongthe%20004.jpg\" style=\"width: 100%; height: 100%;\" /></span></em></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>Shophouse khối đế l&agrave; g&igrave;?</strong></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:107%\">Shophouse kh&ocirc;́i đ&ecirc;́ l&agrave; những căn nằm tại tầng trệt v&agrave; tầng 1 của c&aacute;c t&ograve;a chung cư, tạo th&agrave;nh khu dịch vụ ph&acirc;n tầng. Nhờ đ&oacute;, nhà đ&acirc;̀u tư có th&ecirc;̉ tối đa c&ocirc;ng năng của loại h&igrave;nh bất động sản n&agrave;y, tận dụng cho việc ở v&agrave; kinh doanh thương mại.</span></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" height=\"12\" scale=\"1.5\" src=\"https://i0.wp.com/dl7.glitter-graphics.net/pub/1008/1008947py35aw7bbc.gif\" srcset=\"https://i0.wp.com/dl7.glitter-graphics.net/pub/1008/1008947py35aw7bbc.gif?zoom=2 1.5x\" width=\"16\" /><strong><span style=\"line-height:107%\">Ưu điểm vượt trội của Shophouse khối đế</span></strong><img alt=\"\" height=\"12\" scale=\"1.5\" src=\"https://i0.wp.com/dl7.glitter-graphics.net/pub/1008/1008947py35aw7bbc.gif\" srcset=\"https://i0.wp.com/dl7.glitter-graphics.net/pub/1008/1008947py35aw7bbc.gif?zoom=2 1.5x\" width=\"16\" /></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" height=\"18\" scale=\"1.5\" src=\"https://nguyettolau.files.wordpress.com/2012/08/th_yn7i51.gif?w=18\" src-orig=\"https://nguyettolau.files.wordpress.com/2012/08/th_yn7i51.gif?w=590\" srcset=\"https://nguyettolau.files.wordpress.com/2012/08/th_yn7i51.gif?w=18&amp;zoom=2 1.5x\" title=\"th_yn7i5\" width=\"18\" />&nbsp;<span style=\"line-height:107%\">Vị tr&iacute; đắc địa, đ&ocirc;ng người lưu th&ocirc;ng</span></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" height=\"18\" scale=\"1.5\" src=\"https://nguyettolau.files.wordpress.com/2012/08/th_yn7i51.gif?w=18\" src-orig=\"https://nguyettolau.files.wordpress.com/2012/08/th_yn7i51.gif?w=590\" srcset=\"https://nguyettolau.files.wordpress.com/2012/08/th_yn7i51.gif?w=18&amp;zoom=2 1.5x\" title=\"th_yn7i5\" width=\"18\" />&nbsp;<span style=\"line-height:107%\">Số lượng khan hiếm</span></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" height=\"18\" scale=\"1.5\" src=\"https://nguyettolau.files.wordpress.com/2012/08/th_yn7i51.gif?w=18\" src-orig=\"https://nguyettolau.files.wordpress.com/2012/08/th_yn7i51.gif?w=590\" srcset=\"https://nguyettolau.files.wordpress.com/2012/08/th_yn7i51.gif?w=18&amp;zoom=2 1.5x\" title=\"th_yn7i5\" width=\"18\" />&nbsp;<span style=\"line-height:107%\">Sử dụng đa năng (mở cửa h&agrave;ng kinh doanh, cho thu&ecirc; văn ph&ograve;ng)</span></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" height=\"18\" scale=\"1.5\" src=\"https://nguyettolau.files.wordpress.com/2012/08/th_yn7i51.gif?w=18\" src-orig=\"https://nguyettolau.files.wordpress.com/2012/08/th_yn7i51.gif?w=590\" srcset=\"https://nguyettolau.files.wordpress.com/2012/08/th_yn7i51.gif?w=18&amp;zoom=2 1.5x\" title=\"th_yn7i5\" width=\"18\" />&nbsp;<span style=\"line-height:107%\">Giao th&ocirc;ng thuận tiện (v&ugrave;ng l&acirc;n cận), di chuyển dễ d&agrave;ng (cư d&acirc;n trong dự &aacute;n)</span></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" height=\"18\" scale=\"1.5\" src=\"https://nguyettolau.files.wordpress.com/2012/08/th_yn7i51.gif?w=18\" src-orig=\"https://nguyettolau.files.wordpress.com/2012/08/th_yn7i51.gif?w=590\" srcset=\"https://nguyettolau.files.wordpress.com/2012/08/th_yn7i51.gif?w=18&amp;zoom=2 1.5x\" title=\"th_yn7i5\" width=\"18\" />&nbsp;<span style=\"line-height:107%\">T&iacute;nh thanh khoản tốt, tỉ suất cho thu&ecirc; cao</span></span></span></p>\r\n\r\n<hr />\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:107%\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/MIK_TMO_hinh%20anh%20ngoai%20that%2002-Recovered.jpg\" style=\"width: 100%; height: 100%;\" /></span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong><span style=\"line-height:107%\">Shophouse khối đế The Matrix One</span></strong></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\">&nbsp;</p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" height=\"11\" scale=\"1.5\" src=\"https://i0.wp.com/i118.photobucket.com/albums/o93/olympia41124/Yahoo_360plus/Icon/15.gif\" srcset=\"https://i0.wp.com/i118.photobucket.com/albums/o93/olympia41124/Yahoo_360plus/Icon/15.gif?zoom=2 1.5x\" width=\"20\" /><strong><span style=\"line-height:107%\">Th&ocirc;ng tin tổng quan</span></strong></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:107%\"><strong>Chủ đầu tư</strong>: C&ocirc;ng ty Cổ phần Đầu tư Mai Linh</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:107%\"><strong>Đơn vị ph&aacute;t triển dự &aacute;n</strong>: MIKHome</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:107%\"><strong>Đơn vị x&acirc;y dựng</strong>: C&ocirc;ng ty Cổ phẩn X&acirc;y dựng Coteccons</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:107%\"><strong>Đơn vị thiết kế Fa&ccedil;ade Dự &aacute;n</strong>: C&ocirc;ng ty Baumschlager Eberle Architekten (BEA)</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:107%\"><strong>Đơn vị thiết kế cảnh quan</strong>: C&ocirc;ng ty EDEN Landscape</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:107%\"><strong>Vị tr&iacute;</strong>: Nằm tr&ecirc;n giao lộ 2 trục đường lớn: Mễ Tr&igrave; &ndash; L&ecirc; Quang Đạo, quận Nam Từ Li&ecirc;m, H&agrave; Nội</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:107%\"><strong>Tổng diện t&iacute;ch đất</strong>: 39,8ha</span></span></span></p>\r\n\r\n<p style=\"margin:0mm 0mm 8pt\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:107%\"><strong>Quy hoạch bao gồm</strong>: Tổ hợp chung cư cao cấp </span></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt 120px;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:107%\">Khối văn ph&ograve;ng &amp; Kh&aacute;ch sạn 5</span>★<span style=\"line-height:107%\"> Quốc tế</span></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt 120px;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:107%\">C&ocirc;ng vi&ecirc;n cảnh quan 14ha</span></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt 120px;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:107%\">Trường học Quốc tế International School</span></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt 120px;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:107%\">Shophouse khối đế (The Matrix Podium Shop)</span></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt 120px;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:107%\">Nh&agrave; phố thương mại (The Matrix Central Shop)</span></span></span></p>\r\n\r\n<p style=\"margin-left:18.0pt; margin:0mm 0mm 8pt\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"line-height:107%\"><strong>The Matrix Podium Shop - Shophouse khối đế The Matrix One</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" height=\"10\" scale=\"1.5\" src=\"https://i0.wp.com/dl10.glitter-graphics.net/pub/1409/1409800yquef832j1.gif\" srcset=\"https://i0.wp.com/dl10.glitter-graphics.net/pub/1409/1409800yquef832j1.gif?zoom=2 1.5x\" width=\"13\" />&nbsp;<span style=\"line-height:107%\">20 căn&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><img alt=\"\" height=\"10\" scale=\"1.5\" src=\"https://i0.wp.com/dl10.glitter-graphics.net/pub/1409/1409800yquef832j1.gif\" srcset=\"https://i0.wp.com/dl10.glitter-graphics.net/pub/1409/1409800yquef832j1.gif?zoom=2 1.5x\" width=\"13\" /><span style=\"line-height:107%\">1 căn gồm 3 tầng&nbsp; &nbsp; &nbsp;</span><img alt=\"\" height=\"10\" scale=\"1.5\" src=\"https://i0.wp.com/dl10.glitter-graphics.net/pub/1409/1409800yquef832j1.gif\" srcset=\"https://i0.wp.com/dl10.glitter-graphics.net/pub/1409/1409800yquef832j1.gif?zoom=2 1.5x\" width=\"13\" /><span style=\"line-height:107%\">88-175m<sup>2</sup>/tầng</span></span></span></p>\r\n\r\n<hr />\r\n<p style=\"text-align: center;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"http://vn.myblog.yahoo.com/rain-pro\"><img alt=\"\" border=\"0\" height=\"16\" scale=\"1.5\" src=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_27-1.gif\" srcset=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_27-1.gif?zoom=2 1.5x\" width=\"16\" /></a>&nbsp;<strong>Mặt bằng điển h&igrave;nh 3 tầng&nbsp;&nbsp;</strong><a href=\"http://vn.myblog.yahoo.com/rain-pro\"><img alt=\"\" border=\"0\" height=\"16\" scale=\"1.5\" src=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_27-1.gif\" srcset=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_27-1.gif?zoom=2 1.5x\" width=\"16\" /></a></span></span></p>\r\n\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/The%20Matrix%20One%20MB%20Shophouse%20T3.jpg\" style=\"width: 100%; height: 100%;\" /></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/The%20Matrix%20One%20MB%20Shophouse%20T2.jpg\" style=\"width: 100%; height: 100%;\" /></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/The%20Matrix%20One%20MB%20Shophouse%20T1.jpg\" style=\"width: 100%; height: 100%;\" /></span></span></p>\r\n\r\n<p style=\"text-align: center;\"><br />\r\n<span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"http://vn.myblog.yahoo.com/rain-pro\"><img alt=\"\" border=\"0\" height=\"16\" scale=\"1.5\" src=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_27-1.gif\" srcset=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_27-1.gif?zoom=2 1.5x\" width=\"16\" /></a>&nbsp;<strong>H&igrave;nh ảnh thảm khảo 3D căn Shophouse 07</strong>&nbsp;<a href=\"http://vn.myblog.yahoo.com/rain-pro\"><img alt=\"\" border=\"0\" height=\"16\" scale=\"1.5\" src=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_27-1.gif\" srcset=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_27-1.gif?zoom=2 1.5x\" width=\"16\" /></a></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/The%20Matrix%20One%20Shophouse%20T3.jpg\" style=\"width: 100%; height: 100%;\" /></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/The%20Matrix%20One%20Shophouse%20T2.jpg\" style=\"width: 100%; height: 100%;\" /></span></span></p>\r\n\r\n<p style=\"margin-left:18.0pt; margin:0mm 0mm 8pt\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/The%20Matrix%20One%20Shophouse%20T1.jpg\" style=\"width: 100%; height: 100%;\" /></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: center;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"Phá dỡ công trình | Đơn vị phá dỡ công trình uy tín tại Phú Nhuận\" src=\"https://xaydungtinduc.com/images/call.gif\" style=\"height: 25px; width: 25px;\" /><strong>&nbsp;<span style=\"color:#ff0099;\">Hotline:&nbsp;0888851098</span><span style=\"color:#c0392b;\">&nbsp;</span></strong><img alt=\"Phá dỡ công trình | Đơn vị phá dỡ công trình uy tín tại Phú Nhuận\" src=\"https://xaydungtinduc.com/images/call.gif\" style=\"height: 25px; width: 25px;\" /></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>Tiện &iacute;ch đặc quyền của cư d&acirc;n tại The Matrix One</strong></span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" height=\"20\" scale=\"1.5\" src=\"https://i0.wp.com/dl.glitter-graphics.net/pub/895/895091ibu6ckruwr.gif\" srcset=\"https://i0.wp.com/dl.glitter-graphics.net/pub/895/895091ibu6ckruwr.gif?zoom=2 1.5x\" width=\"20\" />Tổ hợp căn hộ, kh&aacute;ch sạn v&agrave; văn ph&ograve;ng 5★ được quản l&yacute; &amp; vận h&agrave;nh bởi thương hiệu quốc tế t&acirc;m điểm quy tụ những chuyến c&ocirc;ng du hội nghị đẳng cấp.</span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" height=\"20\" scale=\"1.5\" src=\"https://i0.wp.com/dl.glitter-graphics.net/pub/895/895091ibu6ckruwr.gif\" srcset=\"https://i0.wp.com/dl.glitter-graphics.net/pub/895/895091ibu6ckruwr.gif?zoom=2 1.5x\" width=\"20\" />C&ocirc;ng vi&ecirc;n cảnh quan 14ha, hồ cảnh quan 2,5ha c&ugrave;ng hầm kết nối nội bộ.</span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" height=\"20\" scale=\"1.5\" src=\"https://i0.wp.com/dl.glitter-graphics.net/pub/895/895091ibu6ckruwr.gif\" srcset=\"https://i0.wp.com/dl.glitter-graphics.net/pub/895/895091ibu6ckruwr.gif?zoom=2 1.5x\" width=\"20\" />Bể bơi v&ocirc; cực kết nối giữa tầng kh&ocirc;ng.</span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" height=\"20\" scale=\"1.5\" src=\"https://i0.wp.com/dl.glitter-graphics.net/pub/895/895091ibu6ckruwr.gif\" srcset=\"https://i0.wp.com/dl.glitter-graphics.net/pub/895/895091ibu6ckruwr.gif?zoom=2 1.5x\" width=\"20\" />Vườn nhiệt đới tr&ecirc;n kh&ocirc;ng tại tầng 43</span></span></p>\r\n\r\n<p style=\"margin: 0mm 0mm 8pt; text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" height=\"20\" scale=\"1.5\" src=\"https://i0.wp.com/dl.glitter-graphics.net/pub/895/895091ibu6ckruwr.gif\" srcset=\"https://i0.wp.com/dl.glitter-graphics.net/pub/895/895091ibu6ckruwr.gif?zoom=2 1.5x\" width=\"20\" />Tiện &iacute;ch dịch vụ tầng 23: Business lounge, thư viện &amp; co-working space, khu vui chơi trẻ em trong nh&agrave;, kh&ocirc;ng gian l&agrave;m việc v&agrave; sinh hoạt cộng đồng.</span></span></p>\r\n\r\n<p style=\"margin-left:18.0pt; margin:0mm 0mm 8pt\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/The%20Matrix%20One%20b%E1%BA%A3n%20%C4%91%E1%BB%93%20n%E1%BB%99i%20khu.jpg\" style=\"width: 100%; height: 100%;\" /></span></span></p>\r\n\r\n<p style=\"margin-left:18.0pt; margin:0mm 0mm 8pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:18.0pt; margin:0mm 0mm 8pt\"><img alt=\"\" height=\"12\" scale=\"1.5\" src=\"https://i0.wp.com/dl6.glitter-graphics.net/pub/1008/1008946tm1s3o7sxm.gif\" srcset=\"https://i0.wp.com/dl6.glitter-graphics.net/pub/1008/1008946tm1s3o7sxm.gif?zoom=2 1.5x\" width=\"16\" /><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:#c0392b;\"><strong>Ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng</strong></span></span></span><img alt=\"\" height=\"12\" scale=\"1.5\" src=\"https://i0.wp.com/dl6.glitter-graphics.net/pub/1008/1008946tm1s3o7sxm.gif\" srcset=\"https://i0.wp.com/dl6.glitter-graphics.net/pub/1008/1008946tm1s3o7sxm.gif?zoom=2 1.5x\" width=\"16\" /></p>\r\n\r\n<p style=\"margin-left:18.0pt; margin:0mm 0mm 8pt\"><span style=\"color:#000000;\"><em><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">(Ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng ti&ecirc;u chuẩn v&agrave; Ch&iacute;nh s&aacute;ch theo chương tr&igrave;nh hỗ trợ l&atilde;i suất)</span></span></em></span></p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<table style=\"border-collapse: collapse; border: none; width: 100%;\" width=\"542\" xmlns=\"http://www.w3.org/1999/xhtml\">\r\n	<colgroup>\r\n		<col style=\"width:68pt\" width=\"91\" />\r\n		<col style=\"width:233pt\" width=\"311\" />\r\n		<col style=\"width:105pt\" width=\"140\" />\r\n	</colgroup>\r\n	<tbody>\r\n		<tr height=\"35\" style=\"height:26.4pt\">\r\n			<td class=\"xl72\" colspan=\"3\" data-sheets-hyperlinkruns=\"{&quot;1&quot;:0}{&quot;1&quot;:19,&quot;2&quot;:&quot;http://vn.myblog.yahoo.com/rain-pro&quot;}{&quot;1&quot;:19}\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;TIẾN ĐỘ THANH TOÁN \\n(Tiêu chuẩn)&quot;}\" height=\"35\" style=\"border:0.5pt solid #833c0c; background:#c65911; height:26.4pt; width:406pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"542\">\r\n			<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"http://vn.myblog.yahoo.com/rain-pro\"><span style=\"color:#000000;\"><img alt=\"\" border=\"0\" height=\"16\" scale=\"1.5\" src=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_user1_pic358_1243227326.gif\" srcset=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_user1_pic358_1243227326.gif?zoom=2 1.5x\" width=\"37\" /></span></a>&nbsp;<span style=\"color:#ffffff;\"><strong>TIẾN ĐỘ THANH TO&Aacute;N</strong></span><span style=\"color:#c0392b;\"><strong>&nbsp;</strong></span><a href=\"http://vn.myblog.yahoo.com/rain-pro\"><span style=\"color:#000000;\"><img alt=\"\" border=\"0\" height=\"16\" scale=\"1.5\" src=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_user1_pic358_1243227326.gif\" srcset=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_user1_pic358_1243227326.gif?zoom=2 1.5x\" width=\"37\" /></span></a></span></span></p>\r\n\r\n			<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong><em><span style=\"color:#000000;\">(Ti&ecirc;u chuẩn)</span></em></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"46\" style=\"height:34.8pt\">\r\n			<td class=\"xl68\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;TIẾN ĐỘ&quot;}\" height=\"46\" style=\"border:0.5pt solid #833c0c; height:34.8pt; border-top:none; width:68pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-weight:700\"><span style=\"color:black\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">TIẾN ĐỘ</span></span></span></span></span></span></td>\r\n			<td class=\"xl68\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;GIÁ TRỊ&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:233pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"311\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-weight:700\"><span style=\"color:black\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">GI&Aacute; TRỊ</span></span></span></span></span></span></td>\r\n			<td class=\"xl68\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;THỜI HẠN CHUYỂN TIỀN&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:105pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"140\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-weight:700\"><span style=\"color:black\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">THỜI HẠN CHUYỂN TIỀN</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"72\" style=\"height:54.0pt\">\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Đặt cọc&quot;}\" height=\"72\" style=\"border:0.5pt solid #833c0c; height:54.0pt; border-top:none; width:68pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Đặt cọc</span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;400.000.000 VNĐ / DTTM và\\n100.000.000 VNĐ / Căn hộ&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:233pt; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"311\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">400.000.000 VNĐ / <span style=\"color:black\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">DTTM</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> v&agrave;<br />\r\n			100.000.000 VNĐ / Căn hộ</span></span></span></span></span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Chậm nhất vào Ngày ký Thỏa Thuận Đặt Cọc;&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:105pt; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"140\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Chậm nhất v&agrave;o Ng&agrave;y k&yacute; Thỏa Thuận Đặt Cọc;</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"120\" style=\"height:90.0pt\">\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Chuyển tiền Đợt 1\\nvà ký HĐMB&quot;}\" height=\"120\" style=\"border:0.5pt solid #833c0c; height:90.0pt; border-top:none; width:68pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Chuyển tiền Đợt 1<br />\r\n			v&agrave; k&yacute; HĐMB</span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;10% Giá bán DTTM (và VAT tương ứng) và;\\n10% Giá bán Căn hộ (và VAT tương ứng), (đã bao gồm các khoản tiền đặt cọc nêu trên)&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:233pt; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"311\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">10% Gi&aacute; b&aacute;n <span style=\"color:black\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">DTTM</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng) v&agrave;;<br />\r\n			10% Gi&aacute; b&aacute;n </span></span></span><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Căn hộ</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng), (đ&atilde; bao gồm c&aacute;c khoản tiền đặt cọc n&ecirc;u tr&ecirc;n)</span></span></span></span></span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Trong vòng 10 (mười) ngày làm việc kể từ ngày nộp đủ tiền\\nđặt cọc;&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:105pt; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"140\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Trong v&ograve;ng 10 (mười) ng&agrave;y l&agrave;m việc kể từ ng&agrave;y nộp đủ tiền<br />\r\n			đặt cọc;</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"96\" style=\"height:72.0pt\">\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Chuyển tiền Đợt 2&quot;}\" height=\"96\" style=\"border:0.5pt solid #833c0c; height:72.0pt; border-top:none; width:68pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Chuyển tiền Đợt 2</span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;30% Giá bán DTTM (và VAT tương ứng) và;\\n30% Giá bán Căn hộ (và VAT tương ứng),&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:233pt; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"311\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">30% Gi&aacute; b&aacute;n <span style=\"color:black\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">DTTM</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng) v&agrave;;<br />\r\n			30% Gi&aacute; b&aacute;n </span></span></span><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Căn hộ</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng),</span></span></span></span></span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Trong vòng 20 (hai mươi) ngày kể từ ngày ký HĐMB;&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:105pt; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"140\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Trong v&ograve;ng 20 (hai mươi) ng&agrave;y kể từ ng&agrave;y k&yacute; HĐMB;</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"96\" style=\"height:72.0pt\">\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Chuyển tiền Đợt 3&quot;}\" height=\"96\" style=\"border:0.5pt solid #833c0c; height:72.0pt; border-top:none; width:68pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Chuyển tiền Đợt 3</span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;30% Giá bán DTTM (và VAT tương ứng) và;\\n30% Giá bán Căn hộ (và VAT tương ứng).&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:233pt; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"311\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">30% Gi&aacute; b&aacute;n <span style=\"color:black\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">DTTM</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng) v&agrave;;<br />\r\n			30% Gi&aacute; b&aacute;n </span></span></span><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Căn hộ</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng).</span></span></span></span></span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Trong vòng 30 (ba mươi) ngày kể từ ngày ký HĐMB;&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:105pt; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"140\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Trong v&ograve;ng 30 (ba mươi) ng&agrave;y kể từ ng&agrave;y k&yacute; HĐMB;</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"312\" style=\"height:234.0pt\">\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Chuyển tiền Đợt 4&quot;}\" height=\"312\" style=\"border:0.5pt solid #833c0c; height:234.0pt; border-top:none; width:68pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Chuyển tiền Đợt 4</span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;25% Giá bán DTTM (và VAT tương ứng) và;\\n25% Giá bán Căn hộ (và VAT tương ứng).\\nNgoài ra, các khoản tiền sau được thanh toán vào Thỏa thuận đặt cọc hoặc các văn bản có giá trị pháp lý tương đương nhằm đảm bảo thực hiện HĐMB (“TTĐC”): \\n(1) 05% Giá bán DTTM (và VAT tương ứng) và;\\n(2) 05% Giá bán Căn hộ (và VAT tương ứng),&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:233pt; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"311\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">25% Gi&aacute; b&aacute;n <span style=\"color:black\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">DTTM</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng) v&agrave;;<br />\r\n			25% Gi&aacute; b&aacute;n </span></span></span><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Căn hộ</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng).</span></span></span></span><br />\r\n			<span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\">Ngo&agrave;i ra, c&aacute;c khoản tiền sau được thanh to&aacute;n v&agrave;o Thỏa thuận đặt cọc hoặc c&aacute;c văn bản c&oacute; gi&aacute; trị ph&aacute;p l&yacute; tương đương nhằm đảm bảo thực hiện HĐMB (&ldquo;TTĐC&rdquo;):<br />\r\n			(1) 05% Gi&aacute; b&aacute;n </span></span></span><span style=\"font-weight:700\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\">DTTM</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng) v&agrave;;<br />\r\n			(2) 05% Gi&aacute; b&aacute;n </span></span></span><span style=\"font-weight:700\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\">Căn hộ</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng),</span></span></span></span></span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Theo thông báo bàn giao, chậm nhất tại thời điểm bàn giao Shop Apartment. (Dự kiến tháng 06/2022).&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:105pt; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"140\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Theo th&ocirc;ng b&aacute;o b&agrave;n giao, chậm nhất tại thời điểm b&agrave;n giao Shop Apartment. (Dự kiến th&aacute;ng 06/2022).</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"240\" style=\"height:180.0pt\">\r\n			<td class=\"xl69\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Chuyển tiền Đợt 5&quot;}\" height=\"240\" style=\"border:none; border-bottom:none; height:180.0pt; border-top:none; width:68pt; text-align:center; vertical-align:middle; border-right:0.5pt solid #833c0c; border-left:0.5pt solid #833c0c; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Chuyển tiền Đợt 5</span></span></span></span></span></span></td>\r\n			<td class=\"xl70\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;05% Giá bán DTTM (và VAT tương ứng) và\\n05% Giá bán Căn hộ (và VAT tương ứng) khấu trừ từ khoản tiền theo TTĐC đảm bảo thực hiện HĐMB nêu trên.&quot;}\" style=\"border:none; border-bottom:none; border-top:none; border-left:none; width:233pt; vertical-align:middle; border-right:0.5pt solid #833c0c; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"311\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">05% Gi&aacute; b&aacute;n <span style=\"color:black\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">DTTM</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng) v&agrave;<br />\r\n			05% Gi&aacute; b&aacute;n </span></span></span><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Căn hộ</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng) khấu trừ từ khoản tiền theo TTĐC đảm bảo thực hiện HĐMB n&ecirc;u tr&ecirc;n.</span></span></span></span></span></span></span></span></span></span></td>\r\n			<td class=\"xl70\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Trong vòng 07 (bảy) ngày kể từ ngày CĐT gửi thông báo bàn giao Giấy Chứng Nhận nhưng không chậm hơn ngày bàn giao Giấy Chứng Nhận.&quot;}\" style=\"border:none; border-bottom:none; border-top:none; border-left:none; width:105pt; vertical-align:middle; border-right:0.5pt solid #833c0c; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"140\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Trong v&ograve;ng 07 (bảy) ng&agrave;y kể từ ng&agrave;y CĐT gửi th&ocirc;ng b&aacute;o b&agrave;n giao Giấy Chứng Nhận nhưng kh&ocirc;ng chậm hơn ng&agrave;y b&agrave;n giao Giấy Chứng Nhận.</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.4pt\">\r\n			<td class=\"xl65\" colspan=\"3\" height=\"19\" style=\"border:0.5pt solid #833c0c; height:14.4pt; width:406pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"542\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:#c0392b\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">CH&Iacute;NH S&Aacute;CH &Aacute;P DỤNG</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"37\" style=\"height:27.6pt\">\r\n			<td class=\"xl71\" colspan=\"3\" height=\"37\" style=\"border:0.5pt solid #833c0c; height:27.6pt; width:406pt; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"542\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Chiết khấu ưu đ&atilde;i 5% v&agrave;o Gi&aacute; b&aacute;n <span style=\"color:black\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">DTTM</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> v&agrave; Gi&aacute; b&aacute;n </span></span></span><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">căn hộ</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (chưa gồm VAT &amp; Ph&iacute; bảo tr&igrave;), đ&atilde; trừ c&aacute;c qu&agrave; tặng khấu trừ &amp; chiết khấu ưu đ&atilde;i (nếu c&oacute;).</span></span></span></span></span></span></span></span></span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align: center;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" height=\"13\" scale=\"1.5\" src=\"https://i0.wp.com/i40.photobucket.com/albums/e205/pelinh_krazie/FoR%20bLo9/LiNe%20BaR/th172.gif\" srcset=\"https://i0.wp.com/i40.photobucket.com/albums/e205/pelinh_krazie/FoR%20bLo9/LiNe%20BaR/th172.gif?zoom=2 1.5x\" width=\"140\" /></span></span></p>\r\n\r\n<table style=\"border-collapse: collapse; border: none; width: 100%;\" width=\"785\" xmlns=\"http://www.w3.org/1999/xhtml\">\r\n	<colgroup>\r\n		<col style=\"width:68pt\" width=\"91\" />\r\n		<col style=\"width:233pt\" width=\"311\" />\r\n		<col style=\"width:105pt\" width=\"140\" />\r\n		<col style=\"width:182pt\" width=\"243\" />\r\n	</colgroup>\r\n	<tbody>\r\n		<tr height=\"89\" style=\"height:66.6pt\">\r\n			<td class=\"xl65\" colspan=\"4\" data-sheets-hyperlinkruns=\"{&quot;1&quot;:0}{&quot;1&quot;:19,&quot;2&quot;:&quot;http://vn.myblog.yahoo.com/rain-pro&quot;}{&quot;1&quot;:19}\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;TIẾN ĐỘ THANH TOÁN \\n(Theo chương trình hỗ trợ lãi suất)&quot;}\" height=\"89\" style=\"border:0.5pt solid #833c0c; background:#c65911; height:66.6pt; width:588pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"785\">\r\n			<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"http://vn.myblog.yahoo.com/rain-pro\"><span style=\"color:#000000;\"><img alt=\"\" border=\"0\" height=\"16\" scale=\"1.5\" src=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_user1_pic358_1243227326.gif\" srcset=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_user1_pic358_1243227326.gif?zoom=2 1.5x\" width=\"37\" /></span></a>&nbsp;<span style=\"color:#ffffff;\"><strong>TIẾN ĐỘ THANH TO&Aacute;N</strong></span><span style=\"color:#c0392b;\"><strong>&nbsp;</strong></span><a href=\"http://vn.myblog.yahoo.com/rain-pro\"><span style=\"color:#000000;\"><img alt=\"\" border=\"0\" height=\"16\" scale=\"1.5\" src=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_user1_pic358_1243227326.gif\" srcset=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_user1_pic358_1243227326.gif?zoom=2 1.5x\" width=\"37\" /></span></a></span></span></p>\r\n\r\n			<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong><em><span style=\"color:#000000;\">(Theo chương tr&igrave;nh hỗ trợ l&atilde;i suất)</span></em></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"30\" style=\"height:22.8pt\">\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;TIẾN ĐỘ&quot;}\" height=\"152\" rowspan=\"2\" style=\"border:0.5pt solid #833c0c; height:114.0pt; border-top:none; width:68pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"91\">\r\n			<div><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-weight:700\"><span style=\"color:black\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"><span style=\"max-height:42px\">TIẾN ĐỘ</span></span></span></span></span></span></span></div>\r\n			</td>\r\n			<td class=\"xl66\" colspan=\"2\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;GIÁ TRỊ&quot;}\" style=\"border:0.5pt solid #833c0c; border-left:none; width:338pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"451\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-weight:700\"><span style=\"color:black\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">GI&Aacute; TRỊ</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;THỜI HẠN CHUYỂN TIỀN&quot;}\" rowspan=\"2\" style=\"border:0.5pt solid #833c0c; border-top:none; width:182pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"243\">\r\n			<div><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-weight:700\"><span style=\"color:black\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"><span style=\"max-height:42px\">THỜI HẠN CHUYỂN TIỀN</span></span></span></span></span></span></span></div>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"122\" style=\"height:91.2pt\">\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;KHÁCH HÀNG&quot;}\" height=\"122\" style=\"border:0.5pt solid #833c0c; height:91.2pt; border-top:none; border-left:none; width:233pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"311\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-weight:700\"><span style=\"color:black\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">KH&Aacute;CH H&Agrave;NG</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;NGÂN HÀNG GIẢI NGÂN&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:105pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"140\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-weight:700\"><span style=\"color:black\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">NG&Acirc;N H&Agrave;NG GIẢI NG&Acirc;N</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"91\" style=\"height:68.4pt\">\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Đặt cọc&quot;}\" height=\"91\" style=\"border:0.5pt solid #833c0c; height:68.4pt; border-top:none; width:68pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Đặt cọc</span></span></span></span></span></span></td>\r\n			<td class=\"xl68\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;400.000.000 VNĐ / DTTM và\\n100.000.000 VNĐ / Căn hộ&quot;}\" style=\"border-right: 0.5pt solid rgb(131, 60, 12); border-bottom: 0.5pt solid rgb(131, 60, 12); border-image: initial; border-top: none; border-left: none; width: 233pt; vertical-align: middle; white-space: normal; padding-top: 1px; padding-right: 1px; padding-left: 1px; text-align: justify;\" width=\"311\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">400.000.000 VNĐ / <span style=\"color:black\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">DTTM</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> v&agrave;<br />\r\n			100.000.000 VNĐ / Căn hộ</span></span></span></span></span></span></span></span></span></span></td>\r\n			<td class=\"xl69\" style=\"border-right: 0.5pt solid rgb(131, 60, 12); border-bottom: 0.5pt solid rgb(131, 60, 12); border-image: initial; border-top: none; border-left: none; width: 105pt; padding: 2px 1px; vertical-align: middle; white-space: normal; text-align: justify;\" width=\"140\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"overflow:hidden\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">&nbsp;</span></span></span></span></span></span></span></td>\r\n			<td class=\"xl68\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Chậm nhất vào Ngày ký Thỏa Thuận Đặt Cọc;&quot;}\" style=\"border-right: 0.5pt solid rgb(131, 60, 12); border-bottom: 0.5pt solid rgb(131, 60, 12); border-image: initial; border-top: none; border-left: none; width: 182pt; vertical-align: middle; white-space: normal; padding-top: 1px; padding-right: 1px; padding-left: 1px; text-align: justify;\" width=\"243\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Chậm nhất v&agrave;o Ng&agrave;y k&yacute; Thỏa Thuận Đặt Cọc;</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"152\" style=\"height:114.0pt\">\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Chuyển tiền Đợt 1\\nvà ký HĐMB&quot;}\" height=\"152\" style=\"border:0.5pt solid #833c0c; height:114.0pt; border-top:none; width:68pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Chuyển tiền Đợt 1<br />\r\n			v&agrave; k&yacute; HĐMB</span></span></span></span></span></span></td>\r\n			<td class=\"xl68\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;10% Giá bán DTTM (và VAT tương ứng) và;\\n10% Giá bán Căn hộ (và VAT tương ứng), (đã bao gồm các khoản tiền đặt cọc nêu trên)&quot;}\" style=\"border-right: 0.5pt solid rgb(131, 60, 12); border-bottom: 0.5pt solid rgb(131, 60, 12); border-image: initial; border-top: none; border-left: none; width: 233pt; vertical-align: middle; white-space: normal; padding-top: 1px; padding-right: 1px; padding-left: 1px; text-align: justify;\" width=\"311\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">10% Gi&aacute; b&aacute;n<span style=\"color:black\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> DTTM</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng) v&agrave;;<br />\r\n			10% Gi&aacute; b&aacute;n </span></span></span><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Căn hộ</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng), (đ&atilde; bao gồm c&aacute;c khoản tiền đặt cọc n&ecirc;u tr&ecirc;n)</span></span></span></span></span></span></span></span></span></span></td>\r\n			<td class=\"xl69\" style=\"border-right: 0.5pt solid rgb(131, 60, 12); border-bottom: 0.5pt solid rgb(131, 60, 12); border-image: initial; border-top: none; border-left: none; width: 105pt; padding: 2px 1px; vertical-align: middle; white-space: normal; text-align: justify;\" width=\"140\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"overflow:hidden\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">&nbsp;</span></span></span></span></span></span></span></td>\r\n			<td class=\"xl68\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Trong vòng 10 (mười) ngày\\nlàm việc kể từ ngày nộp đủ\\ntiền đặt cọc;&quot;}\" style=\"border-right: 0.5pt solid rgb(131, 60, 12); border-bottom: 0.5pt solid rgb(131, 60, 12); border-image: initial; border-top: none; border-left: none; width: 182pt; vertical-align: middle; white-space: normal; padding-top: 1px; padding-right: 1px; padding-left: 1px; text-align: justify;\" width=\"243\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Trong v&ograve;ng 10 (mười) ng&agrave;y<br />\r\n			l&agrave;m việc kể từ ng&agrave;y nộp đủ<br />\r\n			tiền đặt cọc;</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"243\" style=\"height:182.4pt\">\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Chuyển tiền Đợt 2&quot;}\" height=\"243\" style=\"border:0.5pt solid #833c0c; height:182.4pt; border-top:none; width:68pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Chuyển tiền Đợt 2</span></span></span></span></span></span></td>\r\n			<td class=\"xl69\" style=\"border-right: 0.5pt solid rgb(131, 60, 12); border-bottom: 0.5pt solid rgb(131, 60, 12); border-image: initial; border-top: none; border-left: none; width: 233pt; padding: 2px 1px; vertical-align: middle; white-space: normal; text-align: justify;\" width=\"311\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"overflow:hidden\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">&nbsp;</span></span></span></span></span></span></span></td>\r\n			<td class=\"xl68\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;70% Giá bán DTTM (và VAT tương ứng) và;\\n70% Giá bán Căn hộ (và VAT tương ứng),&quot;}\" style=\"border-right: 0.5pt solid rgb(131, 60, 12); border-bottom: 0.5pt solid rgb(131, 60, 12); border-image: initial; border-top: none; border-left: none; width: 105pt; vertical-align: middle; white-space: normal; padding-top: 1px; padding-right: 1px; padding-left: 1px; text-align: justify;\" width=\"140\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">70% Gi&aacute; b&aacute;n <span style=\"color:black\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">DTTM</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng) v&agrave;;<br />\r\n			70% Gi&aacute; b&aacute;n </span></span></span><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Căn hộ</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng),</span></span></span></span></span></span></span></span></span></span></td>\r\n			<td class=\"xl68\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Trong vòng 15 (mười lăm) ngày kể từ ngày ký HĐMB;&quot;}\" style=\"border-right: 0.5pt solid rgb(131, 60, 12); border-bottom: 0.5pt solid rgb(131, 60, 12); border-image: initial; border-top: none; border-left: none; width: 182pt; vertical-align: middle; white-space: normal; padding-top: 1px; padding-right: 1px; padding-left: 1px; text-align: justify;\" width=\"243\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Trong v&ograve;ng 15 (mười lăm) ng&agrave;y kể từ ng&agrave;y k&yacute; HĐMB;</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"122\" style=\"height:91.2pt\">\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Chuyển tiền Đợt 3&quot;}\" height=\"122\" style=\"border:0.5pt solid #833c0c; height:91.2pt; border-top:none; width:68pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Chuyển tiền Đợt 3</span></span></span></span></span></span></td>\r\n			<td class=\"xl68\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;15% Giá bán DTTM (và VAT tương ứng) và;\\n15% Giá bán Căn hộ (và VAT tương ứng),&quot;}\" style=\"border-right: 0.5pt solid rgb(131, 60, 12); border-bottom: 0.5pt solid rgb(131, 60, 12); border-image: initial; border-top: none; border-left: none; width: 233pt; vertical-align: middle; white-space: normal; padding-top: 1px; padding-right: 1px; padding-left: 1px; text-align: justify;\" width=\"311\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">15% Gi&aacute; b&aacute;n <span style=\"color:black\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">DTTM</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng) v&agrave;;<br />\r\n			15% Gi&aacute; b&aacute;n </span></span></span><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Căn hộ</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng),</span></span></span></span></span></span></span></span></span></span></td>\r\n			<td class=\"xl69\" style=\"border-right: 0.5pt solid rgb(131, 60, 12); border-bottom: 0.5pt solid rgb(131, 60, 12); border-image: initial; border-top: none; border-left: none; width: 105pt; padding: 2px 1px; vertical-align: middle; white-space: normal; text-align: justify;\" width=\"140\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"overflow:hidden\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">&nbsp;</span></span></span></span></span></span></span></td>\r\n			<td class=\"xl68\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Trong vòng 30 (ba mươi) ngày kể từ ngày ký HĐMB;&quot;}\" style=\"border-right: 0.5pt solid rgb(131, 60, 12); border-bottom: 0.5pt solid rgb(131, 60, 12); border-image: initial; border-top: none; border-left: none; width: 182pt; vertical-align: middle; white-space: normal; padding-top: 1px; padding-right: 1px; padding-left: 1px; text-align: justify;\" width=\"243\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Trong v&ograve;ng 30 (ba mươi) ng&agrave;y kể từ ng&agrave;y k&yacute; HĐMB;</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"304\" style=\"height:228.0pt\">\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Chuyển tiền Đợt 4&quot;}\" height=\"304\" style=\"border:0.5pt solid #833c0c; height:228.0pt; border-top:none; width:68pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Chuyển tiền Đợt 4</span></span></span></span></span></span></td>\r\n			<td class=\"xl70\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Các khoản tiền sau được thanh toán vào Thỏa thuận đặt cọc hoặc các văn bản có giá trị pháp lý tương đương nhằm đảm bảo thực hiện HĐMB (“TTĐC”): \\n(1) 05% Giá bán DTTM (và VAT tương ứng) và;\\n(2) 05% Giá bán Căn hộ (và VAT tương ứng),&quot;}\" style=\"border-right: 0.5pt solid rgb(131, 60, 12); border-bottom: 0.5pt solid rgb(131, 60, 12); border-image: initial; border-top: none; border-left: none; width: 233pt; vertical-align: middle; white-space: normal; padding-top: 1px; padding-right: 1px; padding-left: 1px; text-align: justify;\" width=\"311\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-style:italic\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"text-decoration:none\">C&aacute;c khoản tiền sau được thanh to&aacute;n v&agrave;o Thỏa thuận đặt cọc hoặc c&aacute;c văn bản c&oacute; gi&aacute; trị ph&aacute;p l&yacute; tương đương nhằm đảm bảo thực hiện HĐMB (&ldquo;TTĐC&rdquo;):<br />\r\n			(1) 05% Gi&aacute; b&aacute;n <span style=\"color:black\"><span style=\"font-weight:700\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\">DTTM </span></span></span><span style=\"font-weight:400\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\">(v&agrave; VAT tương ứng) v&agrave;;<br />\r\n			(2) 05% Gi&aacute; b&aacute;n </span></span></span><span style=\"font-weight:700\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\">Căn hộ </span></span></span><span style=\"font-weight:400\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\">(v&agrave; VAT tương ứng),</span></span></span></span></span></span></span></span></span></span></td>\r\n			<td class=\"xl69\" style=\"border-right: 0.5pt solid rgb(131, 60, 12); border-bottom: 0.5pt solid rgb(131, 60, 12); border-image: initial; border-top: none; border-left: none; width: 105pt; padding: 2px 1px; vertical-align: middle; white-space: normal; text-align: justify;\" width=\"140\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"overflow:hidden\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">&nbsp;</span></span></span></span></span></span></span></td>\r\n			<td class=\"xl68\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Theo thông báo bàn giao, chậm nhất tại thời điểm bàn giao Shop Apartment. (Dự kiến tháng 06/2022).&quot;}\" style=\"border-right: 0.5pt solid rgb(131, 60, 12); border-bottom: 0.5pt solid rgb(131, 60, 12); border-image: initial; border-top: none; border-left: none; width: 182pt; vertical-align: middle; white-space: normal; padding-top: 1px; padding-right: 1px; padding-left: 1px; text-align: justify;\" width=\"243\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Theo th&ocirc;ng b&aacute;o b&agrave;n giao, chậm nhất tại thời điểm b&agrave;n giao Shop Apartment. (Dự kiến th&aacute;ng 06/2022).</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"213\" style=\"height:159.6pt\">\r\n			<td class=\"xl71\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Chuyển tiền Đợt 5&quot;}\" height=\"213\" style=\"border:none; border-bottom:none; height:159.6pt; border-top:none; width:68pt; text-align:center; vertical-align:middle; border-right:0.5pt solid #833c0c; border-left:0.5pt solid #833c0c; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Chuyển tiền Đợt 5</span></span></span></span></span></span></td>\r\n			<td class=\"xl72\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;05% Giá bán DTTM (và VAT tương ứng) và\\n05% Giá bán Căn hộ (và VAT tương ứng) khấu trừ từ khoản tiền theo TTĐC đảm bảo thực hiện HĐMB nêu trên.&quot;}\" style=\"border-image: initial; border-bottom: none; border-top: none; border-left: none; width: 233pt; vertical-align: middle; border-right: 0.5pt solid rgb(131, 60, 12); white-space: normal; padding-top: 1px; padding-right: 1px; padding-left: 1px; text-align: justify;\" width=\"311\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">05% Gi&aacute; b&aacute;n <span style=\"color:black\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">DTTM</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng) v&agrave;<br />\r\n			05% Gi&aacute; b&aacute;n </span></span></span><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Căn hộ</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng) khấu trừ từ khoản tiền theo TTĐC đảm bảo thực hiện HĐMB n&ecirc;u tr&ecirc;n.</span></span></span></span></span></span></span></span></span></span></td>\r\n			<td class=\"xl73\" style=\"border-image: initial; border-bottom: none; border-top: none; border-left: none; width: 105pt; padding: 2px 1px; vertical-align: middle; border-right: 0.5pt solid rgb(131, 60, 12); white-space: normal; text-align: justify;\" width=\"140\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"overflow:hidden\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">&nbsp;</span></span></span></span></span></span></span></td>\r\n			<td class=\"xl72\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Trong vòng 07 (bảy) ngày kể từ ngày CĐT gửi thông báo bàn giao Giấy Chứng Nhận nhưng không chậm hơn ngày bàn giao Giấy Chứng Nhận.&quot;}\" style=\"border-image: initial; border-bottom: none; border-top: none; border-left: none; width: 182pt; vertical-align: middle; border-right: 0.5pt solid rgb(131, 60, 12); white-space: normal; padding-top: 1px; padding-right: 1px; padding-left: 1px; text-align: justify;\" width=\"243\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Trong v&ograve;ng 07 (bảy) ng&agrave;y kể từ ng&agrave;y CĐT gửi th&ocirc;ng b&aacute;o b&agrave;n giao Giấy Chứng Nhận nhưng kh&ocirc;ng chậm hơn ng&agrave;y b&agrave;n giao Giấy Chứng Nhận.</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"19\" style=\"height:14.4pt\">\r\n			<td class=\"xl74\" colspan=\"4\" height=\"19\" style=\"border:0.5pt solid #833c0c; height:14.4pt; width:588pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"785\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:#c0392b\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">CH&Iacute;NH S&Aacute;CH &Aacute;P DỤNG</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"37\" style=\"height:27.6pt\">\r\n			<td class=\"xl75\" colspan=\"4\" height=\"37\" style=\"border:0.5pt solid #833c0c; height:27.6pt; width:588pt; text-align:justify; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"785\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Hỗ trợ l&atilde;i suất <span style=\"color:black\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">0%</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> tr&ecirc;n khoản tiền tối đa </span></span></span><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">70%</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> Gi&aacute; b&aacute;n </span></span></span><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">DTTM</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> v&agrave; Gi&aacute; b&aacute;n </span></span></span><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">căn hộ</span></span></span><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\"> (v&agrave; VAT tương ứng, kh&ocirc;ng bao gồm KPBT). </span></span></span><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Thời gian HTLS trong v&ograve;ng 24 th&aacute;ng kể từ ng&agrave;y giải ng&acirc;n</span></span></span></span> <span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:italic\"><span style=\"text-decoration:none\">(Ch&iacute;nh s&aacute;ch hỗ trợ vay vốn ng&acirc;n h&agrave;ng theo mục 3).</span></span></span></span></span></span></span></span></span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/MIK_TMO_Shophouse_goccam%20Tongthe%20004%20nhe.jpg\" style=\"width: 100%; height: 100%;\" /></span></span></p>\r\n\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"http://vn.myblog.yahoo.com/rain-pro\"><img alt=\"\" border=\"0\" height=\"23\" scale=\"1.5\" src=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_124.gif\" srcset=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_124.gif?zoom=2 1.5x\" width=\"23\" /></a><span style=\"color:#c0392b;\"><strong>BẢNG GI&Aacute; THỰC&nbsp;SHOPHOUSE KHỐI ĐẾ THE MATRIX ONE</strong></span>&nbsp;<a href=\"http://vn.myblog.yahoo.com/rain-pro\"><img alt=\"\" border=\"0\" height=\"23\" scale=\"1.5\" src=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_124.gif\" srcset=\"https://i0.wp.com/i646.photobucket.com/albums/uu185/vanhoai1111/th_124.gif?zoom=2 1.5x\" width=\"23\" /></a></span></span></p>\r\n\r\n<table style=\"border-collapse: collapse; border: none; width: 100%;\" width=\"658\" xmlns=\"http://www.w3.org/1999/xhtml\">\r\n	<colgroup>\r\n		<col span=\"2\" style=\"width:35pt\" width=\"46\" />\r\n		<col style=\"width:59pt\" width=\"78\" />\r\n		<col style=\"width:54pt\" width=\"72\" />\r\n		<col style=\"width:58pt\" width=\"77\" />\r\n		<col style=\"width:94pt\" width=\"126\" />\r\n		<col style=\"width:68pt\" width=\"91\" />\r\n		<col style=\"width:91pt\" width=\"122\" />\r\n	</colgroup>\r\n	<tbody>\r\n		<tr height=\"70\" style=\"height:52.2pt\">\r\n			<td class=\"xl65\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;TÒA&quot;}\" height=\"70\" style=\"border:0.5pt solid #833c0c; background:#c65911; height:52.2pt; width:35pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:white\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">T&Ograve;A</span></span></span></span></span></span></td>\r\n			<td class=\"xl65\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;CĂN&quot;}\" style=\"border:0.5pt solid #833c0c; background:#c65911; border-left:none; width:35pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:white\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">CĂN</span></span></span></span></span></span></td>\r\n			<td class=\"xl65\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;DT TẦNG 1&quot;}\" style=\"border:0.5pt solid #833c0c; background:#c65911; border-left:none; width:59pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"78\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:white\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">DT TẦNG 1</span></span></span></span></span></span></td>\r\n			<td class=\"xl65\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;DT TẦNG 2&quot;}\" style=\"border:0.5pt solid #833c0c; background:#c65911; border-left:none; width:54pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"72\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:white\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">DT TẦNG 2</span></span></span></span></span></span></td>\r\n			<td class=\"xl65\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;DT TẦNG 3&quot;}\" style=\"border:0.5pt solid #833c0c; background:#c65911; border-left:none; width:58pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"77\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:white\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">DT TẦNG 3</span></span></span></span></span></span></td>\r\n			<td class=\"xl65\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;HƯỚNG MẶT THOÁNG&quot;}\" style=\"border:0.5pt solid #833c0c; background:#c65911; border-left:none; width:94pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"126\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:white\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">HƯỚNG MẶT THO&Aacute;NG</span></span></span></span></span></span></td>\r\n			<td class=\"xl65\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;MẶT TIỀN&quot;}\" style=\"border:0.5pt solid #833c0c; background:#c65911; border-left:none; width:68pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:white\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">MẶT TIỀN</span></span></span></span></span></span></td>\r\n			<td class=\"xl65\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;GIÁ BÁN CUỐI CÙNG&quot;}\" style=\"border:0.5pt solid #833c0c; background:#c65911; border-left:none; width:91pt; text-align:center; vertical-align:middle; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px\" width=\"122\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:white\"><span style=\"font-weight:700\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">GI&Aacute; B&Aacute;N CUỐI C&Ugrave;NG</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"24\" style=\"height:18.0pt\">\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;B&quot;}\" height=\"24\" style=\"border:0.5pt solid #833c0c; height:18.0pt; border-top:none; width:35pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">B</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:1}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:35pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">01</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:140.1}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:59pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"78\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">140,1</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:139.3}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:54pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"72\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">139,3</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;138/124&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:58pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"77\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">138/124</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;ĐN-ĐB&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:94pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"126\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">ĐN-ĐB</span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Nội khu&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:68pt; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Nội khu</span></span></span></span></span></span></td>\r\n			<td class=\"xl68\" data-sheets-numberformat=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;#,##0&quot;,&quot;3&quot;:1}\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:40006388281}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:91pt; text-align:right; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"122\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">40.006.388.281</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"24\" style=\"height:18.0pt\">\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;B&quot;}\" height=\"24\" style=\"border:0.5pt solid #833c0c; height:18.0pt; border-top:none; width:35pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">B</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:2}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:35pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">02</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:113.2}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:59pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"78\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">113,2</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:113}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:54pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"72\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">113</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;111/97&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:58pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"77\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">111/97</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;ĐB&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:94pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"126\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">ĐB</span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Nội khu&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:68pt; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Nội khu</span></span></span></span></span></span></td>\r\n			<td align=\"right\" class=\"xl69\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;30,942,017,579&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:91pt; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"122\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">30.942.017.579</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"24\" style=\"height:18.0pt\">\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;B&quot;}\" height=\"24\" style=\"border:0.5pt solid #833c0c; height:18.0pt; border-top:none; width:35pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">B</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:3}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:35pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">03</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:88.1}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:59pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"78\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">88,1</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:111.2}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:54pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"72\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">111,2</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;110/96&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:58pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"77\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">110/96</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;ĐB&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:94pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"126\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">ĐB</span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Nội khu&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:68pt; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Nội khu</span></span></span></span></span></span></td>\r\n			<td align=\"right\" class=\"xl69\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;27,445,050,909&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:91pt; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"122\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">27.445.050.909</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"24\" style=\"height:18.0pt\">\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;B&quot;}\" height=\"24\" style=\"border:0.5pt solid #833c0c; height:18.0pt; border-top:none; width:35pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">B</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:4}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:35pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">04</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:109.4}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:59pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"78\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">109,4</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:111.3}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:54pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"72\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">111,3</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;110/96&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:58pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"77\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">110/96</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;ĐB&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:94pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"126\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">ĐB</span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Nội khu&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:68pt; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Nội khu</span></span></span></span></span></span></td>\r\n			<td align=\"right\" class=\"xl69\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;30,744,440,090&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:91pt; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"122\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">30.744.440.090</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"24\" style=\"height:18.0pt\">\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;B&quot;}\" height=\"24\" style=\"border:0.5pt solid #833c0c; height:18.0pt; border-top:none; width:35pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">B</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:5}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:35pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">05</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:113.5}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:59pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"78\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">113,5</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:113.3}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:54pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"72\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">113,3</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;111/98&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:58pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"77\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">111/98</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;ĐB&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:94pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"126\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">ĐB</span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Nội khu&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:68pt; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Nội khu</span></span></span></span></span></span></td>\r\n			<td align=\"right\" class=\"xl69\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;31,508,429,114&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:91pt; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"122\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">31.508.429.114</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"24\" style=\"height:18.0pt\">\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;B&quot;}\" height=\"24\" style=\"border:0.5pt solid #833c0c; height:18.0pt; border-top:none; width:35pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">B</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:6}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:35pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">06</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:126.4}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:59pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"78\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">126,4</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:133.6}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:54pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"72\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">133,6</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;129/116&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:58pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"77\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">129/116</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;TB-ĐB&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:94pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"126\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">TB-ĐB</span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Nội khu&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:68pt; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">Nội khu</span></span></span></span></span></span></td>\r\n			<td align=\"right\" class=\"xl69\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;37,058,028,815&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:91pt; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"122\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">37.058.028.815</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"48\" style=\"height:36.0pt\">\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;B&quot;}\" height=\"48\" style=\"border:0.5pt solid #833c0c; height:36.0pt; border-top:none; width:35pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">B</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:7}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:35pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">07</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:169.7}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:59pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"78\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">169,7</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:169}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:54pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"72\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">169</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;166/154&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:58pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"77\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">166/154</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;TN-ĐN&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:94pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"126\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">TN-ĐN</span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Lê Quang Đạo&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:68pt; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">L&ecirc; Quang Đạo</span></span></span></span></span></span></td>\r\n			<td align=\"right\" class=\"xl69\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;61,736,639,134&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:91pt; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"122\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">61.736.639.134</span></span></span></span></span></span></td>\r\n		</tr>\r\n		<tr height=\"48\" style=\"height:36.0pt\">\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;B&quot;}\" height=\"48\" style=\"border:0.5pt solid #833c0c; height:36.0pt; border-top:none; width:35pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">B</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:9}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:35pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"46\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">09</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:108.5}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:59pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"78\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">108,5</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:3,&quot;3&quot;:176}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:54pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"72\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">176</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;175/163&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:58pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"77\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">175/163</span></span></span></span></span></span></td>\r\n			<td class=\"xl66\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;TN&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:94pt; text-align:center; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"126\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">TN</span></span></span></span></span></span></td>\r\n			<td class=\"xl67\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Lê Quang đạo&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:68pt; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"91\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">L&ecirc; Quang đạo</span></span></span></span></span></span></td>\r\n			<td align=\"right\" class=\"xl69\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;53,009,575,193&quot;}\" style=\"border:0.5pt solid #833c0c; border-top:none; border-left:none; width:91pt; white-space:normal; padding-top:1px; padding-right:1px; padding-left:1px; vertical-align:bottom\" width=\"122\"><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"color:black\"><span style=\"font-weight:400\"><span style=\"font-style:normal\"><span style=\"text-decoration:none\">53.009.575.193</span></span></span></span></span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><span style=\"font-size:18px;\">\r\n<style type=\"text/css\"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}-->\r\n</style>\r\n<style type=\"text/css\"><!--td {border: 1px solid #ccc;}br {mso-data-placement:same-cell;}-->\r\n</style>\r\n</span></p>', 'SHOPHOUSE KHỐI ĐẾ THE MATRIX ONE - ĐIỂM ĐẾN ĐẮT GIÁ MỚI KHU PHÍA TÂY HÀ NỘI', 'Shophouse khối đế The Matrix One thừa hưởng vị trí đắt giá, định vị thượng lưu, tập khách hàng dồi dào, sức mua lớn,...mang đến cơ hội kinh doanh hiếm có, sinh lời cho các nhà đầu tư.', 'SHOPHOUSE KHỐI ĐẾ THE MATRIX ONE - ĐIỂM ĐẾN ĐẮT GIÁ MỚI KHU PHÍA TÂY HÀ NỘI', 'shophouse-khoi-de-the-matrix-one-diem-den-dat-gia-moi-khu-phia-tay-ha-noi-bi20', 1, NULL, 'vi', 'The Matrix One.jpg', '2022-05-26 08:25:41', '2022-05-26 12:53:34');
INSERT INTO `blogs` (`id`, `name`, `user_id`, `title`, `content`, `seo_description`, `short_description`, `seo_keyword`, `url`, `display`, `type`, `lang`, `avata`, `created_at`, `updated_at`) VALUES
(21, 'LUẬT SỞ HỮU NHÀ Ở CHO NGƯỜI VIỆT NAM VÀ NGƯỜI NƯỚC NGOÀI', 6, 'LUẬT SỞ HỮU NHÀ Ở CHO NGƯỜI VIỆT NAM VÀ NGƯỜI NƯỚC NGOÀI', '<p style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-size:14px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>HƯỚNG DẪN</strong></span></span><span style=\"font-size:12px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>&nbsp;</strong></span></span></span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-size:16px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>MUA B&Aacute;N NH&Agrave; Ở TẠI VIỆT NAM CHO NGƯỜI NƯỚC NGO&Agrave;I,</strong></span></span></span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-size:16px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>NGƯỜI VIỆT NAM ĐỊNH CƯ TẠI NƯỚC NGO&Agrave;I&nbsp;</strong></span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><u><strong>Cơ sở ph&aacute;p l&yacute;:</strong></u><br />\r\n<em>1.&nbsp;&nbsp; &nbsp;Luật nh&agrave; ở 2014 (&ldquo;Luật Nh&agrave; ở&rdquo;)<br />\r\n2.&nbsp;&nbsp; &nbsp;Nghị định số 99/2015/NĐ-CP của Ch&iacute;nh Phủ ng&agrave;y 20/10/2015 quy định chi tiết v&agrave; hướng dẫn thi h&agrave;nh một số điều của Luật Nh&agrave; ở (&ldquo;NĐ 99/2015/NĐ-CP&rdquo;)<br />\r\n3.&nbsp;&nbsp; &nbsp;Nghị định 82/2015/NĐ-CP của Ch&iacute;nh Phủ ng&agrave;y 24/09/2015 quy định về việc miễn thị thực cho người Việt Nam định cư ở nước ngo&agrave;i v&agrave; người nước ngo&agrave;i l&agrave; vợ, chồng, con của người Việt Nam định cư ở nước ngo&agrave;i hoặc của c&ocirc;ng d&acirc;n Việt Nam (&ldquo;NĐ 82/2015/NĐ-CP&rdquo;)<br />\r\n4.&nbsp;&nbsp; &nbsp;Nghị định số 101/2012/NĐ-CP của Ch&iacute;nh Phủ ng&agrave;y 22/11/2012 về thanh to&aacute;n kh&ocirc;ng dung tiền mặt (&ldquo;NĐ 101/2012/NĐ-CP&rdquo;)<br />\r\n5.&nbsp;&nbsp; &nbsp;Th&ocirc;ng tư số 23/2014/TT-NHNN của Ng&acirc;n h&agrave;ng Nh&agrave; nước ng&agrave;y 19/08/2014 về hướng dẫn việc mở v&agrave; sử dụng t&agrave;i khoản thanh to&aacute;n tại tổ chức cung ứng dịch vụ thanh to&aacute;n (&ldquo;TT 23/2014/TT-NHNN&rdquo;)<br />\r\n6.&nbsp;&nbsp; &nbsp;Th&ocirc;ng tư số 46/2014/TT-NHNN của Ng&acirc;n h&agrave;ng Nh&agrave; nước ng&agrave;y 31/12/2014 hướng dẫn về dịch vụ thanh to&aacute;n kh&ocirc;ng dung tiền mặt (&ldquo;TT 46/2014/TT-NHNN&rdquo;)<br />\r\n7.&nbsp;&nbsp; &nbsp;Th&ocirc;ng tư số 16/2014/TT-NHNN của Ng&acirc;n h&agrave;ng Nh&agrave; nước ng&agrave;y 01/08/2014 hướng dẫn sử dụng t&agrave;i khoản ngoại tệ, t&agrave;i khoản đồng Việt Nam của người cư tr&uacute;, người kh&ocirc;ng cư tr&uacute; tại ng&acirc;n h&agrave;ng được ph&eacute;p (&ldquo;TT 16/2014/TT-NHNN&rdquo;)<br />\r\n8.&nbsp;&nbsp; &nbsp;Th&ocirc;ng tư số 103/2014/TT-BTC của Bộ T&agrave;i Ch&iacute;nh ng&agrave;y 06/08/2014 hướng dẫn thực hiện nghĩa vụ thuế &aacute;p dụng đối với tổ chức, c&aacute; nh&acirc;n nước ngo&agrave;i kinh doanh tại Việt Nam hoặc c&oacute; thu nhập tại Việt Nam (&ldquo;TT 103/2014/TT-BTC&rdquo;)<br />\r\n9.&nbsp;&nbsp; &nbsp;Th&ocirc;ng tư số 26/2013/TT-NHNN của Ng&acirc;n h&agrave;ng Nh&agrave; nước ng&agrave;y 05/12/2013 ban h&agrave;nh biểu ph&iacute; dịch vụ thanh to&aacute;n qua Ng&acirc;n h&agrave;ng Nh&agrave; nước Việt Nam (&ldquo;TT 26/2013/TT-NHNN&rdquo;)</em></span></span><br />\r\n&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%;\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width: 4%; text-align: center; background-color: rgb(255, 204, 204);\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>STT</strong></span></span></td>\r\n			<td style=\"width: 8%; text-align: center; background-color: rgb(255, 204, 204);\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>VẤN ĐỀ</strong></span></span></td>\r\n			<td style=\"width: 60%; text-align: center; background-color: rgb(255, 204, 204);\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>NỘI DUNG HƯỚNG DẪN</strong></span></span></td>\r\n			<td style=\"width: 14%; text-align: center; background-color: rgb(255, 204, 204);\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>CƠ SỞ PH&Aacute;P L&Yacute;</strong></span></span></td>\r\n			<td style=\"width: 14%; text-align: center; background-color: rgb(255, 204, 204);\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>GHI CH&Uacute;</strong></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 4%; background-color: rgb(204, 0, 0); text-align: center;\"><span style=\"color:#ffffff;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>1</strong></span></span></td>\r\n			<td colspan=\"4\" rowspan=\"1\" style=\"width: 8%; background-color: rgb(204, 0, 0);\"><span style=\"color:#ffffff;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>VẤN ĐỀ PH&Aacute;P L&Yacute; CHUNG</strong></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>1.1</strong></span></span></td>\r\n			<td style=\"text-align: justify;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>Điều kiện mua nh&agrave; ở tại Việt Nam</strong></span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>(i) Đối với Người Việt Nam định cư ở nước ngo&agrave;i:</strong></span></span>\r\n			<ul>\r\n				<li style=\"text-align: justify;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Trường hợp mang hộ chiếu Việt Nam th&igrave; phải c&ograve;n gi&aacute; trị v&agrave; c&oacute; đ&oacute;ng dấu kiểm chứng nhập cảnh của cơ quan quản l&yacute; xuất, nhập cảnh Việt Nam v&agrave;o hộ chiếu;&nbsp;</span></span></li>\r\n				<li style=\"text-align: justify;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Trường hợp mang hộ chiếu nước ngo&agrave;i th&igrave; phải c&ograve;n gi&aacute; trị c&oacute; đ&oacute;ng dấu kiểm chứng nhập cảnh của cơ quan quản l&yacute; xuất, nhập cảnh Việt Nam v&agrave;o hộ chiếu v&agrave; k&egrave;m theo giấy tờ chứng minh c&ograve;n quốc tịch Việt Nam hoặc giấy tờ x&aacute;c nhận l&agrave; người gốc Việt Nam do Sở Tư ph&aacute;p c&aacute;c tỉnh, th&agrave;nh phố trực thuộc trung ương, cơ quan đại diện Việt Nam ở nước ngo&agrave;i, cơ quan quản l&yacute; về người Việt Nam ở nước ngo&agrave;i cấp hoặc giấy tờ kh&aacute;c theo quy định của ph&aacute;p luật Việt Nam.</span></span></li>\r\n			</ul>\r\n\r\n			<p style=\"text-align: justify;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>(ii) Đối với tổ chức nước ngo&agrave;i:</strong></span></span></p>\r\n\r\n			<ul>\r\n				<li style=\"text-align: justify;\">Doanh nghiệp c&oacute; vốn đầu tư nước ngo&agrave;i, chi nh&aacute;nh, văn ph&ograve;ng đại diện của doanh nghiệp nước ngo&agrave;i, quỹ đầu tư nước ngo&agrave;i v&agrave; chi nh&aacute;nh ng&acirc;n h&agrave;ng nước ngo&agrave;i đang hoạt động tại Việt Nam: th&igrave; phải c&oacute; Giấy chứng nhận đầu tư hoặc giấy tờ li&ecirc;n quan đến việc được ph&eacute;p hoạt động tại Việt Nam (sau đ&acirc;y gọi chung l&agrave; Giấy chứng nhận đầu tư) do cơ quan nh&agrave; nước c&oacute; thẩm quyền của Việt Nam cấp.; v&agrave;</li>\r\n				<li style=\"text-align: justify;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Đối với c&aacute; nh&acirc;n nước ngo&agrave;i: phải c&oacute; hộ chiếu c&ograve;n gi&aacute; trị c&oacute; đ&oacute;ng dấu kiểm chứng nhập cảnh của cơ quan quản l&yacute; xuất, nhập cảnh Việt Nam v&agrave; kh&ocirc;ng thuộc diện được quyền ưu đ&atilde;i, miễn trừ ngoại giao theo quy định của Ph&aacute;p lệnh về quyền ưu đ&atilde;i, miễn trừ d&agrave;nh cho cơ quan Đại diện ngoại giao, cơ quan L&atilde;nh sự v&agrave; cơ quan Đại diện của Tổ chức quốc tế tại Việt Nam.&nbsp;</span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"text-align: justify;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Điều 159, 160 Luật Nh&agrave; ở<br />\r\n			Điều 5 NĐ 99/2015/NĐ-CP<br />\r\n			Điều 74 NĐ 99/2015/NĐ-CP<br />\r\n			Khoản 1 Điều 74 NĐ 99/2015/NĐ-CP</span></span></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>1.2</strong></span></span></td>\r\n			<td style=\"text-align: justify;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>NNN được mua, thu&ecirc; mua nh&agrave; ở của ai?</strong></span></span></td>\r\n			<td style=\"text-align: justify;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">(i) Chỉ được <strong>mua, thu&ecirc; mua</strong> nh&agrave; ở của <strong>CĐT dự &aacute;n</strong> x&acirc;y dựng nh&agrave; ở,&nbsp;<br />\r\n			(ii) Nhận chuyển nhượng lại nh&agrave; ở tại VN của tổ chức, c&aacute; nh&acirc;n nước ngo&agrave;i.<br />\r\n			(iii)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nhận thừa kế, nhận tặng cho nh&agrave; ở của hộ gia đ&igrave;nh, c&aacute; nh&acirc;n hoặc nhận tặng cho nh&agrave; ở của tổ chức.</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">K2 Điều 76 của NĐ 99/2014/NĐ-CP</span></span></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>1.3</strong></span></span></td>\r\n			<td style=\"text-align: justify;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>Số lượng nh&agrave; ở được sở hữu&nbsp;</strong></span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">(i)&nbsp;&nbsp;&nbsp;&nbsp;Kh&ocirc;ng qu&aacute; 30% tổng số căn hộ của mỗi t&ograve;a nh&agrave; chung cư;&nbsp;<br />\r\n			(ii)&nbsp;&nbsp;Kh&ocirc;ng qu&aacute; 10% hoặc kh&ocirc;ng qu&aacute; 250 căn nh&agrave; ở ri&ecirc;ng lẻ trong mỗi dự &aacute;n t&ugrave;y số n&agrave;o thấp hơn.</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Điểm b, Khoản 4, Điều 7, Điều 76, 77, 78 của NĐ 99/2014/NĐ-CP</span></span></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>1.4</strong></span></span></td>\r\n			<td style=\"text-align: justify;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>Thời hạn sở hữu nh&agrave; ở</strong></span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">(i)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Đối với Người Vn định cư ở NN v&agrave; NNN kết h&ocirc;n với c&ocirc;ng d&acirc;n VN:</strong> Sở hữu l&acirc;u d&agrave;i như người VN<br />\r\n			(ii)&nbsp;&nbsp;&nbsp;&nbsp;Đối với c&aacute; nh&acirc;n NN: Sở hữu 50 năm v&agrave; được gia hạn 1 lần.<br />\r\n			(iii)&nbsp;&nbsp;&nbsp;Đối với tổ chức NN: Theo thời hạn của Giấy CNĐT tại VN.<br />\r\n			Trước khi hết hạn sở hữu NNN c&oacute; thể tặng cho hoặc b&aacute;n nh&agrave; ở n&agrave;y cho c&aacute;c đối tượng thuộc diện được sở hữu nh&agrave; ở tại Việt Nam; nếu qu&aacute; thời hạn m&agrave; kh&ocirc;ng thực hiện b&aacute;n, tặng cho th&igrave; nh&agrave; ở đ&oacute; thuộc sở hữu nh&agrave; nước.</span></span></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color: rgb(204, 0, 0); text-align: center;\"><span style=\"color:#ffffff;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>2</strong></span></span></td>\r\n			<td colspan=\"4\" rowspan=\"1\" style=\"background-color: rgb(204, 0, 0);\"><span style=\"color:#ffffff;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>QUY TR&Igrave;NH B&Aacute;N NH&Agrave; Ở CHO NNN V&Agrave; C&Aacute;C THỦ TỤC/VẤN ĐỀ LI&Ecirc;N QUAN</strong></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>2.1</strong></span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>Quy tr&igrave;nh giao dịch với CĐT</strong></span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">(i)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;KH chọn CH/BT mong muốn v&agrave; đặt cọc thiện ch&iacute; qua Đại l&yacute; để đăng k&yacute; mua (tiền cọc thiện ch&iacute; thống nhất sau);<br />\r\n			(ii)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đại l&yacute; chuyển tiền cọc v&agrave; đăng k&yacute; của KH cho CĐT (thời hạn thống nhất chi tiết sau);<br />\r\n			(iii)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CĐT k&yacute; [1]thỏa thuận đặt cọc với KH sau khi nhận đủ cọc thiện ch&iacute; (tiền cọc cụ thể theo ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng);&nbsp;<br />\r\n			(iv)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;KH thanh to&aacute;n tiền cọc theo ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng.<br />\r\n			(v)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CĐT sẽ c&oacute; th&ocirc;ng b&aacute;o mời KH k&yacute; Hợp đồng mua b&aacute;n theo thời hạn cam kết tại [2]thỏa thuận đặt cọc v&agrave; c&aacute;c t&agrave;i liệu li&ecirc;n quan đến việc b&aacute;n nh&agrave; ở (như với kh&aacute;ch h&agrave;ng trong nước) theo quy định.<br />\r\n			(vi)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;KH thanh to&aacute;n tiền theo tiến độ đ&atilde; quy định tại HĐMB v&agrave;o t&agrave;i khoản của CĐT mở tại VN. Đồng tiền thanh to&aacute;n l&agrave; VNĐ.<br />\r\n			(vii)&nbsp;&nbsp;&nbsp;&nbsp;Khi ho&agrave;n th&agrave;nh x&acirc;y dựng, CĐT gửi th&ocirc;ng b&aacute;o b&agrave;n giao CH/BT theo tiến độ cho KH trước &iacute;t nhất 30 ng&agrave;y; KH thực hiện nhận b&agrave;n giao CH/BT theo quy định của HĐMB (sau khi đ&atilde; thanh to&aacute;n đủ tiền theo HĐMB);<br />\r\n			(viii)&nbsp;&nbsp;CĐT tiến h&agrave;nh l&agrave;m sổ đỏ Căn Hộ cho KH (Mục 6.8)</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Quy định về miễn thị thực tại NĐ 82/2015/NĐ-CP</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>Giấy tờ t&ugrave;y th&acirc;n của KH gồm</strong>: (1) Hộ chiếu được hợp ph&aacute;p h&oacute;a l&atilde;nh sự tại VN; (2) Visa nhập cảnh v&agrave;o VN c&ograve;n thời hạn (cần đảm bảo thời điểm k&yacute; HĐMB phải trong thời hạn c&oacute; hiệu lực của Visa) (<u><strong>hoặc</strong></u> Giấy miễn thị thực (NNN c&oacute; vợ, chồng, con l&agrave; người Việt Nam hoặc người VN định cư ở nước &nbsp;ngo&agrave;i)</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>2.2</strong></span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Thủ tục ủy quyền k&yacute; HĐMB v&agrave; c&aacute;c giấy tờ li&ecirc;n quan</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Người VN ở nước ngo&agrave;i c&oacute; thể ủy quyền cho người kh&aacute;c k&yacute; HĐMB v&agrave; c&aacute;c t&agrave;i liệu li&ecirc;n quan. Văn bản ủy quyền phải lập ở ph&ograve;ng c&ocirc;ng chứng tư nh&acirc;n tại NN v&agrave; hợp ph&aacute;p h&oacute;a l&atilde;nh sự, dịch ra tiếng Việt tại VN hoặc lập ủy quyền c&oacute; x&aacute;c nhận của Đại sứ Việt Nam tại NN c&ugrave;ng với hộ chiếu/CMND của người được ủy quyền v&agrave; người ủy quyền.&nbsp;</span></span></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>2.3</strong></span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Thủ tục chuyển tiền thanh to&aacute;n mua nh&agrave; ở</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">KH mở t&agrave;i khoản tại một NH tại VN v&agrave; thanh to&aacute;n tiền v&agrave;o t&agrave;i khoản của CĐT.<br />\r\n			Lưu &yacute;:&nbsp;<br />\r\n			(1)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NNN chỉ được mang một lượng ngoại tệ nhất định v&agrave;o Việt Nam. Khi mang tr&ecirc;n 5000 USD phải khai b&aacute;o hải quan.&nbsp;<br />\r\n			(2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nếu l&agrave; giao dịch mua b&aacute;n nh&agrave; ở th&igrave; lượng ngoại tệ được chuyển v&agrave;o Việt Nam sẽ kh&ocirc;ng được vượt qu&aacute; gi&aacute; trị của giao dịch (gi&aacute; ghi tr&ecirc;n HĐMB nh&agrave; ở).&nbsp;</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Quy định về mở t&agrave;i khoản tại Ng&acirc;n h&agrave;ng Việt Nam: <strong>TT &nbsp;23/2014/TT-NHNN<br />\r\n			&nbsp;Quy định về vận h&agrave;nh t&agrave;i khoản tại TT 16/2014/TT-NHNN v&agrave; t&agrave;i khoản n&agrave;y được ph&eacute;p thực hiện c&aacute;c giao dịch kh&ocirc;ng d&ugrave;ng tiền mặt theo NĐ 101/2012/NĐ-CP, TT 46/2014/TT-NHNN. </strong>&nbsp;&nbsp;</span></span></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>2.4</strong></span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">C&aacute;c loại thuế, ph&iacute; v&agrave; lệ ph&iacute; khi NNN mua BĐS tại Việt Nam</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;VAT khi mua Căn hộ l&agrave; 10% Gi&aacute; b&aacute;n căn hộ (kh&ocirc;ng bao gồm gi&aacute; trị quyền sử dụng đất v&agrave; Kinh ph&iacute; bảo tr&igrave; phần diện t&iacute;ch thuộc sở hữu chung 2% gi&aacute; b&aacute;n CH). VAT khi mua Biệt thự l&agrave; 10% gi&aacute; biệt thự (kh&ocirc;ng bao gồm gi&aacute; trị quyền sử dụng đất)&nbsp;<br />\r\n			2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đối với căn hộ chung cư: Kinh ph&iacute; bảo tr&igrave; phần diện t&iacute;ch thuộc sở hữu chung 2% gi&aacute; b&aacute;n CH<br />\r\n			3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lệ ph&iacute; trước bạ khi xin cấp Giấy Chứng Nhận: 0,5% gi&aacute; trị t&agrave;i sản t&iacute;nh lệ ph&iacute; trước bạ tuy nhi&ecirc;n tối đa l&agrave; 500 triệu đồng/1 t&agrave;i sản/lần trước bạ. Gi&aacute; trị t&agrave;i sản t&iacute;nh lệ ph&iacute; trước bạ l&agrave; gi&aacute; do UBND cấp tỉnh ban h&agrave;nh t&ugrave;y từng thời điểm.<br />\r\n			4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ph&iacute;, lệ ph&iacute; h&agrave;nh ch&iacute;nh Nh&agrave; nước khi xin cấp Giấy Chứng Nhận: theo quy định của Nh&agrave; nước t&ugrave;y từng thời điểm, hiện nay l&agrave; 661.000đ.</span></span></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>2.5</strong></span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">C&aacute;c loại thuế, ph&iacute; v&agrave; lệ ph&iacute; khi NNN chuyển nhượng BĐS</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thuế TNCN: 2% gi&aacute; chuyển nhượng<br />\r\n			2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;VAT của nh&agrave; thầu nước ngo&agrave;i 5% gi&aacute; chuyển nhượng.<br />\r\n			3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ph&iacute;, lệ ph&iacute; h&agrave;nh ch&iacute;nh (nếu b&ecirc;n b&aacute;n chấp nhận đ&oacute;ng thay b&ecirc;n mua): theo quy định của Nh&agrave; nước t&ugrave;y từng thời điểm, hiện nay l&agrave; 661.000đ.<br />\r\n			4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lệ ph&iacute; trước bạ (nếu b&ecirc;n b&aacute;n chấp nhận đ&oacute;ng thay b&ecirc;n mua): 0,5% gi&aacute; trị t&agrave;i sản t&iacute;nh lệ ph&iacute; trước bạ tuy nhi&ecirc;n tối đa l&agrave; 500 triệu đồng/1 t&agrave;i sản/lần trước bạ. Gi&aacute; trị t&agrave;i sản t&iacute;nh lệ ph&iacute; trước bạ l&agrave; gi&aacute; do UBND cấp tỉnh ban h&agrave;nh t&ugrave;y từng thời điểm&nbsp;</span></span></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>2.6</strong></span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Chuyển tiền cho thu&ecirc; BĐS ra NN<br />\r\n			(&Aacute;p dụng cho chương tr&igrave;nh thu&ecirc;)</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">&nbsp;KH lập 1 t&agrave;i khoản VNĐ tại 1 NHTM tại VN (hoặc sử dụng t&agrave;i khoản mở tại NH tại VN để thực hiện thanh to&aacute;n tiền mua nh&agrave;) để nhận doanh thu (T&agrave;i khoản giao dịch) từ CĐT hoặc đơn vị khai th&aacute;c cho thu&ecirc;.<br />\r\n			-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CĐT hoặc đơn vị khai th&aacute;c cho thu&ecirc; sẽ khấu trừ từ doanh thu c&aacute;c khoản thuế, ph&iacute; sau theo quy định HĐMB v&agrave; PL VN<br />\r\n			(i)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thuế nh&agrave; thầu (thuế thu nhập c&aacute; nh&acirc;n) tr&ecirc;n doanh thu: đối với hoạt động dịch vụ cho thu&ecirc; t&agrave;i sản l&agrave; 5% thu&nbsp;<br />\r\n			(ii)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thuế gi&aacute; trị gia tăng đối với c&aacute; nh&acirc;n nước ngo&agrave;i l&agrave;: 5% doanh thu t&iacute;nh thuế VAT&nbsp;<br />\r\n			(iii)&nbsp;&nbsp;&nbsp;Ph&iacute; chuyển tiền + điện ph&iacute; + ph&iacute; NH nước ngo&agrave;i thu (nếu c&oacute;)</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Thuế nh&agrave; thầu quy định tại Điều 5, Điều 12 của <strong>TT 103/2014/TT-BTC</strong><br />\r\n			Thuế thu nhập của tổ chức NN <strong>103/2014/TT-BTC</strong><br />\r\n			Thuế về hoạt động cho thu&ecirc; BĐS tại Điều 10 Luật thuế thu nhập c&aacute; nh&acirc;n 2007 được sửa đổi bổ sung bởi Luật số 71/2014/QH13 (Điều 2.4)</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Lượng ngoại tệ chuyển ra khỏi l&atilde;nh thổ VN sẽ kh&ocirc;ng được vượt qu&aacute; nguồn thu hợp ph&aacute;p của c&aacute; nh&acirc;n theo gi&aacute; ghi hợp đồng cho thu&ecirc; nh&agrave; (được quy đổi từ VND) hoặc gi&aacute; được ghi tr&ecirc;n Hợp đồng chuyển nhượng nh&agrave; ở giữa c&aacute; nh&acirc;n nước ngo&agrave;i với b&ecirc;n nhận chuyển nhượng nh&agrave;.</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>2.7</strong></span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">NNN được d&ugrave;ng thẻ t&iacute;n dụng (credit card) để thanh to&aacute;n tiền đặt cọc kh&ocirc;ng</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Người nước ngo&agrave;i c&oacute; thể sử dụng thẻ t&iacute;n dụng nước ngo&agrave;i (nhưng lưu &yacute; rằng phải l&agrave; thẻ t&iacute;n dụng quốc tế) để thanh to&aacute;n cho c&aacute;c giao dịch mua b&aacute;n h&agrave;ng h&oacute;a v&agrave; sử dụng dịch vụ tại Việt Nam, v&agrave; giao dịch thanh to&aacute;n phải được thực hiện bằng VND, trong trường hợp ghi gi&aacute; bằng ngoại tệ tự do chuyển đổi th&igrave; phải c&oacute; thỏa thuận quy đổi sang VND trong hợp đồng</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Vấn đề n&agrave;y được điều chỉnh tại Văn bản hợp nhất số <strong>04/VBHN-NHNN ng&agrave;y 22/04/2014</strong> hợp nhất Quyết định số 20/2007/QĐ-NHNN v&agrave; Th&ocirc;ng tư số 23/2011/TT-NHNN.</span></span></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>2.8</strong></span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Thủ tục cấp sổ đỏ v&agrave; quyền sở hữu</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">&nbsp;CĐT sẽ c&oacute; th&ocirc;ng b&aacute;o y&ecirc;u cầu KH nộp hồ sơ l&agrave;m sổ đỏ theo quy định của PL khi c&aacute;c b&ecirc;n đ&atilde; ho&agrave;n th&agrave;nh việc nhận b&agrave;n giao v&agrave; tất to&aacute;n HĐMB (dự kiến trong v&ograve;ng 30 ng&agrave;y);<br />\r\n			&nbsp;CĐT thực hiện thủ tục l&agrave;m sổ đỏ cho KH trong thời hạn 50 ng&agrave;y kể từ ng&agrave;y KH nộp đủ hồ sơ theo th&ocirc;ng b&aacute;o. Thời hạn cấp sổ đỏ t&ugrave;y thuộc cơ quan Nh&agrave; nước (thực tế khoảng 3- 6 th&aacute;ng kể từ khi nộp đủ hồ sơ).</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Điều 7 NĐ 99/2015/NĐ-CP</span></span></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>2.9</strong></span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Quy định về đảm bảo chất lượng x&acirc;y dựng</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">(i)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đảm bảo x&acirc;y dựng theo đ&uacute;ng quy hoạch được ph&ecirc; duyệt v&agrave; ti&ecirc;u chuẩn x&acirc;y dựng VN (ghi nhận trong HĐ);<br />\r\n			(ii)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bảo h&agrave;nh 05 năm đối với căn hộ chung cư v&agrave; 02 năm đối với Biệt Thự cho phần kết cấu;&nbsp;<br />\r\n			(iii)&nbsp;&nbsp;&nbsp;C&aacute;c trang thiết bị k&egrave;m theo được bảo h&agrave;nh theo ti&ecirc;u chuẩn của nh&agrave; sản xuất.</span></span></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>2.10</strong></span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Mẫu Hợp đồng mua b&aacute;n, Thỏa thuận đặt cọc v&agrave; c&aacute;c văn bản li&ecirc;n quan đến giao dịch b&aacute;n Nh&agrave; ở</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Bộ mẫu sử dụng trong giao dịch b&aacute;n nh&agrave; ở về cơ bản bao gồm những t&agrave;i liệu sau đ&acirc;y:<br />\r\n			1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[3]Thỏa thuận đặt cọc v&agrave; Bản đăng k&yacute; chọn mua (trường hợp trước m&oacute;ng) hoặc Thỏa thuận đặt cọc (trường hợp đặt cọc sau m&oacute;ng);<br />\r\n			2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hợp đồng mua b&aacute;n v&agrave; c&aacute;c phụ lục đ&iacute;nh k&egrave;m.<br />\r\n			Bộ HĐMB theo mẫu đ&atilde; đăng k&yacute; (kh&ocirc;ng ph&acirc;n biệt NNN v&agrave; VN). Dịch sang tiếng Anh to&agrave;n bộ mẫu HĐ. Khi c&oacute; tranh chấp ưu ti&ecirc;n bản Tiếng Việt.</span></span></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color: rgb(204, 0, 0); text-align: center;\"><span style=\"color:#ffffff;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>3</strong></span></span></td>\r\n			<td colspan=\"4\" rowspan=\"1\" style=\"background-color: rgb(204, 0, 0);\"><span style=\"color:#ffffff;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>VAY VỐN NG&Acirc;N H&Agrave;NG</strong></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>3.1</strong></span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Thủ tục thế chấp HĐMB hoặc Nh&agrave; ở để vay tiền mua nh&agrave;</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Theo điều 144 Luật nh&agrave; ở 2014, <em><strong>Chủ sở hữu nh&agrave; ở l&agrave; tổ chức được thế chấp nh&agrave; ở tại tổ chức t&iacute;n dụng đang hoạt động tại Việt Nam, Chủ sở hữu nh&agrave; ở l&agrave; c&aacute; nh&acirc;n được thế chấp nh&agrave; ở tại tổ chức t&iacute;n dụng, tổ chức kinh tế đang hoạt động tại Việt Nam hoặc c&aacute; nh&acirc;n theo quy định của ph&aacute;p luật.</strong></em><br />\r\n			<em>Như vậy, hiện nay ph&aacute;p luật Việt Nam kh&ocirc;ng quy định về trường hợp NNN được quyền thế chấp nh&agrave; ở tại nước ngo&agrave;i để l&agrave;m TSBĐ m&agrave; chỉ c&oacute; quy định về quyền thế chấp t&agrave;i sản l&agrave; nh&agrave; ở cho Ng&acirc;n h&agrave;ng nước ngo&agrave;i hoạt động tại VN.</em></span></span></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>3.2</strong></span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\">Vay vốn Ng&acirc;n h&agrave;ng</span></span></td>\r\n			<td><span style=\"color:#000000;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>Điều kiện:</strong> Chứng minh được thu nhập để trả gốc + l&atilde;i khoản vay<br />\r\n			(i)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&oacute; Hợp đồng lao động tại VN; hoặc<br />\r\n			(ii)&nbsp;&nbsp;&nbsp;&nbsp;C&oacute; bảo l&atilde;nh của ng&acirc;n h&agrave;ng nước ngo&agrave;i đối với khoản vay tại VN;<br />\r\n			(iii)&nbsp;&nbsp;Nguồn thu từ ch&iacute;nh t&agrave;i sản đảm bảo (tiền cho thu&ecirc;, doanh thu &hellip;.)<br />\r\n			Tỷ lệ vay sẽ x&aacute;c định cụ thể theo từng trường hợp.</span></span></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<hr />\r\n<p><span style=\"color:#000000;\"><em>&nbsp;<sup>1</sup> Hoặc văn bản kh&aacute;c tại từng thời điểm theo quy định của CĐT/đơn vị cho CDT chỉ định<br />\r\n&nbsp;<sup>2</sup> Hoặc văn bản kh&aacute;c tại từng thời điểm theo quy định của CĐT/đơn vị cho CDT chỉ định<br />\r\n&nbsp;<sup>3</sup> Hoặc văn bản kh&aacute;c tại từng thời điểm theo quy định của CĐT/đơn vị cho CDT chỉ định</em></span></p>', 'LUẬT SỞ HỮU NHÀ Ở CHO NGƯỜI VIỆT NAM VÀ NGƯỜI NƯỚC NGOÀI', 'Luật mua bán nhà ở cho người nước ngoài tại Việt Nam và người Việt Nam tại nước ngoài (áp dụng từ ngày 10/12/2015)', 'LUẬT SỞ HỮU NHÀ Ở CHO NGƯỜI VIỆT NAM VÀ NGƯỜI NƯỚC NGOÀI', 'luat-so-huu-nha-o-cho-nguoi-viet-nam-va-nguoi-nuoc-ngoai-bi21', 1, NULL, 'vi', 'Hanoi.jpg', '2022-06-02 03:24:38', '2022-06-04 07:18:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_categorie_langs`
--

CREATE TABLE `blog_categorie_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_cate_id` bigint(20) UNSIGNED NOT NULL,
  `blog_cate_lang_id` bigint(20) NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog_categorie_langs`
--

INSERT INTO `blog_categorie_langs` (`id`, `blog_cate_id`, `blog_cate_lang_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'ko', '2021-10-14 12:43:01', '2021-10-14 12:43:01'),
(2, 3, 4, 'ko', '2021-10-14 12:44:09', '2021-10-14 12:44:09'),
(3, 5, 11, 'ko', '2021-12-02 16:19:38', '2021-12-02 16:19:38'),
(4, 6, 12, 'ko', '2021-12-02 16:21:30', '2021-12-02 16:21:30'),
(5, 7, 13, 'ko', '2021-12-02 16:22:03', '2021-12-02 16:22:03'),
(6, 8, 14, 'ko', '2021-12-02 16:22:34', '2021-12-02 16:22:34'),
(7, 9, 15, 'en', '2021-12-02 16:24:13', '2021-12-02 16:24:13'),
(8, 10, 16, 'en', '2021-12-02 16:24:37', '2021-12-02 16:24:37'),
(9, 1, 17, 'en', '2021-12-02 16:25:24', '2021-12-02 16:25:24'),
(10, 3, 18, 'en', '2021-12-02 16:26:23', '2021-12-02 16:26:23'),
(11, 5, 19, 'en', '2021-12-02 16:26:52', '2021-12-02 16:26:52'),
(12, 6, 20, 'en', '2021-12-02 16:27:50', '2021-12-02 16:27:50'),
(13, 7, 21, 'en', '2021-12-02 16:28:09', '2021-12-02 16:28:09'),
(14, 8, 22, 'en', '2021-12-02 16:28:26', '2021-12-02 16:28:26'),
(15, 9, 23, 'ko', '2021-12-02 16:40:01', '2021-12-02 16:40:01'),
(16, 10, 24, 'ko', '2021-12-02 16:40:23', '2021-12-02 16:40:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_cates`
--

CREATE TABLE `blog_cates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` longtext COLLATE utf8mb4_unicode_ci,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avata` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog_cates`
--

INSERT INTO `blog_cates` (`id`, `parent_id`, `name`, `title`, `seo_description`, `seo_keyword`, `url`, `avata`, `lang`, `display`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Tin tức', 'Tin tức', 'Tin tức', 'Tin tức', 'tin-tuc-bc1', 'Logo-04.png', 'vi', 1, '2021-10-14 12:41:17', '2021-10-14 12:41:17'),
(2, NULL, '뉴스', '뉴스', '뉴스', '뉴스', '뉴스-bc2', 'Logo-04.png', 'ko', 1, '2021-10-14 12:43:01', '2021-10-14 12:43:01'),
(3, NULL, 'Tuyển dụng', 'Tuyển dụng', 'Tuyển dụng', 'Tuyển dụng', 'tuyen-dung-bc3', 'Logo-04.png', 'vi', 1, '2021-10-14 12:43:34', '2021-10-14 12:43:34'),
(4, NULL, '모집공고', '모집공고', '모집공고', '모집공고', '모집공고-bc4', 'Logo-04.png', 'ko', 1, '2021-10-14 12:44:09', '2021-10-14 12:44:09'),
(5, 1, 'Chủ Đầu Tư', 'CHỦ ĐẦU TƯ', 'CHỦ ĐẦU TƯ', 'CHỦ ĐẦU TƯ', 'chu-dau-tu-bc5', 'Logo-04.png', 'vi', 1, '2021-10-27 07:38:37', '2022-06-02 02:31:35'),
(6, 5, 'The Matrix One', 'The Matrix One', 'The Matrix One', 'The Matrix One', 'the-matrix-one-bc6', 'Logo-04.png', 'vi', 1, '2021-10-27 07:40:23', '2021-10-27 07:40:23'),
(7, 5, 'Vinhomes Smart City', 'Vinhomes Smart City', 'Vinhomes Smart City', 'Vinhomes Smart City', 'vinhomes-smart-city-bc7', 'congvien-16333300232181621056586.jpg', 'vi', 1, '2021-10-27 08:42:32', '2021-10-27 08:42:32'),
(8, 5, 'Vinhomes West Point', 'Vinhomes West Point', 'Vinhomes West Point', 'Vinhomes West Point', 'vinhomes-west-point-bc8', 'hinh-anh-giai-khat-can-ho-vinhomes-smart-city-duoi-2-ty-tai-dai-do-thi-thong-minh-so-01_1629359939.jpg', 'vi', 1, '2021-10-27 08:57:27', '2021-10-27 08:57:27'),
(9, NULL, 'Thông tin thị trường', 'Thông tin thị trường', 'Thông tin thị trường', 'Thông tin thị trường', 'thong-tin-thi-truong-bc9', 'hinh-anh-giai-khat-can-ho-vinhomes-smart-city-duoi-2-ty-tai-dai-do-thi-thong-minh-so-01_1629359939.jpg', 'vi', 1, '2021-11-26 10:16:13', '2021-11-26 10:16:13'),
(10, NULL, 'Kinh nghiệm giao dịch bđs', 'Kinh nghiệm giao dịch bđs', 'Kinh nghiệm giao dịch bđs', 'Kinh nghiệm giao dịch bđs', 'kinh-nghiem-giao-dich-bds-bc10', 'hinh-anh-giai-khat-can-ho-vinhomes-smart-city-duoi-2-ty-tai-dai-do-thi-thong-minh-so-01_1629359939.jpg', 'vi', 1, '2021-11-26 10:17:07', '2021-11-26 10:17:07'),
(11, NULL, '분양 상품', '분양 상품', '분양 상품', '분양 상품', '분양-상품-bc11', 'Logo-04.png', 'ko', 1, '2021-12-02 16:19:38', '2021-12-02 16:19:38'),
(12, 11, '더 매트릭스 원', '더 매트릭스 원', '더 매트릭스 원', '더 매트릭스 원', '더-매트릭스-원-bc12', 'Logo-04.png', 'ko', 1, '2021-12-02 16:21:30', '2021-12-02 16:21:30'),
(13, 11, '빈홈 스마트시티', '빈홈 스마트시티', '빈홈 스마트시티', '빈홈 스마트시티', '빈홈-스마트시티-bc13', 'Logo-04.png', 'ko', 1, '2021-12-02 16:22:03', '2021-12-02 16:22:03'),
(14, 11, '빈홈 웨스트 포인트', '빈홈 웨스트 포인트', '빈홈 웨스트 포인트', '빈홈 웨스트 포인트', '빈홈-웨스트-포인트-bc14', 'Logo-04.png', 'ko', 1, '2021-12-02 16:22:34', '2021-12-02 16:22:34'),
(15, NULL, 'Real Estate News', 'Real Estate News', 'Real Estate News', 'Real Estate News', 'real-estate-news-bc15', 'Logo-04.png', 'en', 1, '2021-12-02 16:24:13', '2021-12-02 16:24:13'),
(16, NULL, 'Other News', 'Other News', 'Other News', 'Other News', 'other-news-bc16', 'Logo-04.png', 'en', 1, '2021-12-02 16:24:37', '2021-12-02 16:24:37'),
(17, NULL, 'News', 'News', 'News', 'News', 'news-bc17', 'Logo-04.png', 'en', 1, '2021-12-02 16:25:24', '2021-12-02 16:25:24'),
(18, NULL, 'Recruitment', 'Recruitment', 'Recruitment', 'Recruitment', 'recruitment-bc18', 'Logo-04.png', 'en', 1, '2021-12-02 16:26:23', '2021-12-02 16:26:23'),
(19, NULL, 'Investment Properties', 'Investment Properties', 'Investment Properties', 'Investment Properties', 'investment-properties-bc19', 'Logo-04.png', 'en', 1, '2021-12-02 16:26:52', '2021-12-02 16:26:52'),
(20, 19, 'The Matrix One', 'The Matrix One', 'The Matrix One', 'The Matrix One', 'the-matrix-one-bc20', 'Logo-04.png', 'en', 1, '2021-12-02 16:27:50', '2021-12-02 16:27:50'),
(21, 19, 'Vinhomes Smart City', 'Vinhomes Smart City', 'Vinhomes Smart City', 'Vinhomes Smart City', 'vinhomes-smart-city-bc21', 'Logo-04.png', 'en', 1, '2021-12-02 16:28:09', '2021-12-02 16:28:09'),
(22, 19, 'Vinhomes West Point', 'Vinhomes West Point', 'Vinhomes West Point', 'Vinhomes West Point', 'vinhomes-west-point-bc22', 'Logo-04.png', 'en', 1, '2021-12-02 16:28:26', '2021-12-02 16:28:26'),
(23, NULL, '부동산 뉴스', '부동산 뉴스', '부동산 뉴스', '부동산 뉴스', '부동산-뉴스-bc23', 'Logo-04.png', 'ko', 1, '2021-12-02 16:40:01', '2021-12-02 16:40:01'),
(24, NULL, '기타', '기타', '기타', '기타', '기타-bc24', 'Logo-04.png', 'ko', 1, '2021-12-02 16:40:23', '2021-12-02 16:40:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_langs`
--

CREATE TABLE `blog_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `blog_lang_id` bigint(20) NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog_langs`
--

INSERT INTO `blog_langs` (`id`, `blog_id`, `blog_lang_id`, `lang`, `created_at`, `updated_at`) VALUES
(2, 13, 14, 'ko', '2021-11-30 03:18:49', '2021-11-30 03:18:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `messages` longtext COLLATE utf8mb4_unicode_ci,
  `unread` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat_rooms`
--

CREATE TABLE `chat_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `da` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `message`, `da`, `created_at`, `updated_at`) VALUES
(7, 'Nguyễn Hoài Nam', '0342911168', 'namnguyen20132674@gmail.com', NULL, NULL, '2021-11-12 19:58:42', '2021-11-12 19:58:42'),
(8, 'Ha Anh', '0822140800', 'haanh@gmail.com', NULL, NULL, '2021-11-15 02:42:21', '2021-11-15 02:42:21'),
(9, 'Ha Anh', '0822140800', 'haanh@gmail.com', NULL, NULL, '2021-11-15 02:42:24', '2021-11-15 02:42:24'),
(10, 'Ha Anh', '0822140800', 'haanh@gmail.com', NULL, NULL, '2021-11-15 03:16:28', '2021-11-15 03:16:28'),
(11, 'Donald Cole', '85785996872', 'lanj7962@gmail.com', NULL, NULL, '2021-11-17 04:34:32', '2021-11-17 04:34:32'),
(12, 'Mike Kennett', '88755339251', 'no-replyCupyigh@gmail.com', NULL, NULL, '2021-11-23 14:21:51', '2021-11-23 14:21:51'),
(13, 'Mike Owen', '86212279772', 'no-replyCupyigh@gmail.com', NULL, NULL, '2021-12-01 11:33:57', '2021-12-01 11:33:57'),
(14, NULL, NULL, NULL, NULL, NULL, '2021-12-04 01:50:24', '2021-12-04 01:50:24'),
(15, 'Richard Andersen', '83826178619', 'donotreply.betrave@gmail.com', NULL, NULL, '2021-12-07 10:55:16', '2021-12-07 10:55:16'),
(16, 'Mike Bishop', '88893887965', 'no-replyCupyigh@gmail.com', NULL, NULL, '2021-12-07 13:19:02', '2021-12-07 13:19:02'),
(17, 'Levi Visser', '87721181316', 'documentassistance16@gmail.com', NULL, NULL, '2021-12-14 08:19:02', '2021-12-14 08:19:02'),
(18, 'Mike Lewin', '84374321457', 'no-replyCupyigh@gmail.com', NULL, NULL, '2021-12-17 23:31:13', '2021-12-17 23:31:13'),
(19, 'Mike Foster', '81366312872', 'no-replyCupyigh@gmail.com', NULL, NULL, '2021-12-23 19:37:57', '2021-12-23 19:37:57'),
(20, 'CLOVER AMBASSADOR', '87834658584', 'cloverambassador@gmail.com', NULL, NULL, '2021-12-24 03:26:34', '2021-12-24 03:26:34'),
(21, 'Mike Porter', '83229463498', 'no-replyCupyigh@gmail.com', NULL, NULL, '2021-12-30 05:23:36', '2021-12-30 05:23:36'),
(22, 'Mike Baker', '83639232535', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-01-08 06:56:53', '2022-01-08 06:56:53'),
(23, 'Mike Becker', '87821723514', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-01-12 12:20:24', '2022-01-12 12:20:24'),
(24, 'Mike Ward', '81232276536', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-01-19 20:12:23', '2022-01-19 20:12:23'),
(25, 'Mike Kendal', '87682789149', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-01-24 23:26:06', '2022-01-24 23:26:06'),
(26, 'Mike Stevenson', '84492824445', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-01-27 03:33:37', '2022-01-27 03:33:37'),
(27, 'Walter Karl', '88786986336', 'jonathanproducts001@gmail.com', NULL, NULL, '2022-01-27 06:15:27', '2022-01-27 06:15:27'),
(28, 'Mike Fleming', '84616639358', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-02-02 06:58:46', '2022-02-02 06:58:46'),
(29, 'Mike Adderiy', '85499639681', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-02-09 14:06:15', '2022-02-09 14:06:15'),
(30, 'Diane Angelori', '82645462577', 'g.a.76.5.2.7.19@gmail.com', NULL, NULL, '2022-02-12 00:48:53', '2022-02-12 00:48:53'),
(31, 'Mike WifKinson', '86968815646', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-02-16 07:47:28', '2022-02-16 07:47:28'),
(32, 'Mike Farrell', '88948215569', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-02-21 12:08:26', '2022-02-21 12:08:26'),
(33, 'Mike Oldman', '82425423892', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-02-25 00:50:13', '2022-02-25 00:50:13'),
(34, 'Mike Blare', '82271793459', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-03-01 11:36:58', '2022-03-01 11:36:58'),
(35, 'Diane Angelori', '89299547383', 'g.a.76.52.7.1.9@gmail.com', NULL, NULL, '2022-03-03 01:48:19', '2022-03-03 01:48:19'),
(36, 'Mike Arnold', '81678422946', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-03-11 20:10:10', '2022-03-11 20:10:10'),
(37, 'Mike Flatcher', '87382851541', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-03-16 05:16:23', '2022-03-16 05:16:23'),
(38, 'Mike MacAlister', '86726792324', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-03-25 02:43:03', '2022-03-25 02:43:03'),
(39, 'Mike Bush', '84281514294', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-03-26 05:14:19', '2022-03-26 05:14:19'),
(40, 'Mike Allford', '81276927159', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-03-28 22:47:34', '2022-03-28 22:47:34'),
(41, 'Mike Coleman', '82421394532', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-04-04 16:41:58', '2022-04-04 16:41:58'),
(42, 'Mike Samuels', '85351155731', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-04-15 09:29:23', '2022-04-15 09:29:23'),
(43, 'MelissaLal', '83384343761', 'collinsdeshon932@gmail.com', NULL, NULL, '2022-04-16 18:26:03', '2022-04-16 18:26:03'),
(44, 'Mike Ayrton', '82542795573', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-04-19 05:16:05', '2022-04-19 05:16:05'),
(45, 'Mike', '82784394233', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-04-20 07:05:03', '2022-04-20 07:05:03'),
(46, 'Mike Salisburry', '84159135518', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-04-25 22:22:56', '2022-04-25 22:22:56'),
(47, 'Mike Ramacey', '87889854895', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-05-02 18:44:56', '2022-05-02 18:44:56'),
(48, 'Mike Hodges', '88299696755', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-05-11 05:05:06', '2022-05-11 05:05:06'),
(49, 'Mike', '85121587175', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-05-18 09:51:13', '2022-05-18 09:51:13'),
(50, 'Mike Youmans', '87845259836', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-05-19 18:06:53', '2022-05-19 18:06:53'),
(51, 'Mike Parson', '85772569375', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-05-23 21:50:01', '2022-05-23 21:50:01'),
(52, 'Mike Morrison', '83179455576', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-05-30 20:06:03', '2022-05-30 20:06:03'),
(53, 'Mike Simon', '89872246993', 'no-replyCupyigh@gmail.com', NULL, NULL, '2022-06-08 01:44:14', '2022-06-08 01:44:14'),
(54, 'Charlotte Gabriel', '85521255846', 'charlottegabriel@stayhome.li', NULL, NULL, '2022-06-10 09:11:36', '2022-06-10 09:11:36'),
(55, 'Zuki Chang', '87357181937', 'info.meiwa@via.tokyo.jp', NULL, NULL, '2022-06-11 09:16:39', '2022-06-11 09:16:39'),
(56, 'Nataliajen', '87867224619', 'nataliajen@hotmail.com', NULL, NULL, '2022-06-14 22:33:54', '2022-06-14 22:33:54'),
(57, 'CrytoPerPer', '89033046361', 'MerinoBart@o2.pl', NULL, NULL, '2022-06-25 23:35:20', '2022-06-25 23:35:20'),
(58, 'CrytoPerPer', '89036784464', 'MerinoBart@o2.pl', NULL, NULL, '2022-06-27 12:34:25', '2022-06-27 12:34:25'),
(59, 'CrytoPerPer', '89033252108', 'jake5514@gmail.com', NULL, NULL, '2022-06-27 17:15:02', '2022-06-27 17:15:02'),
(60, 'CrytoPerPer', '89035405798', 'PMFORJC@GMAIL.COM', NULL, NULL, '2022-06-27 19:38:08', '2022-06-27 19:38:08'),
(61, 'CrytoPerPer', '89039536169', 'domesther@yahoo.com', NULL, NULL, '2022-06-28 12:02:01', '2022-06-28 12:02:01'),
(62, 'RichardSluck', '81221957843', 'no-replyRotaproox@gmail.com', NULL, NULL, '2022-06-29 07:41:44', '2022-06-29 07:41:44'),
(63, 'CrytoPerPer', '89031510768', 'ktejeda96@gmail.com', NULL, NULL, '2022-06-29 09:11:08', '2022-06-29 09:11:08'),
(64, 'CrytoPerPer', '89035177028', 'Thedumbnerdgirl@gmail.com', NULL, NULL, '2022-06-29 11:33:26', '2022-06-29 11:33:26'),
(65, 'CrytoPer', '89030500369', 'mlesqyandextay@e-mail.com', NULL, NULL, '2022-07-04 05:52:45', '2022-07-04 05:52:45'),
(66, 'CrytoPer', '89031208970', 'tgturner@sover.net', NULL, NULL, '2022-07-04 16:43:30', '2022-07-04 16:43:30'),
(67, 'Nataliaenam', '+40 2188104216', 'nataliaenam@aol.com', NULL, NULL, '2022-07-05 10:54:14', '2022-07-05 10:54:14'),
(68, 'CrytoPer', '89034522866', 'rebecca_barrera2001@yahoo.com', NULL, NULL, '2022-07-05 16:58:05', '2022-07-05 16:58:05'),
(69, 'CrytoPer', '89037614573', 'somewhere28779@yahoo.com', NULL, NULL, '2022-07-05 19:28:56', '2022-07-05 19:28:56'),
(70, 'CrytoPer', '89032022465', 'a.i.s.h.v.ari.ma.s.e.x@gmail.com', NULL, NULL, '2022-07-05 21:57:32', '2022-07-05 21:57:32'),
(71, 'CrytoPer', '89031611641', 'password_baby@yahoo.com', NULL, NULL, '2022-07-06 09:36:21', '2022-07-06 09:36:21'),
(72, 'CrytoPer', '89038146620', 'daniel.saldivar@sbcglobal.net', NULL, NULL, '2022-07-06 17:12:04', '2022-07-06 17:12:04'),
(73, 'CrytoPer', '89036458850', 'sdfgdgsdg@bigmir.net', NULL, NULL, '2022-07-06 19:42:56', '2022-07-06 19:42:56'),
(74, 'CrytoPer', '89030572995', 'jayanddar@bellsouth.com', NULL, NULL, '2022-07-08 00:38:31', '2022-07-08 00:38:31'),
(75, 'CrytoPer', '89035595209', 'spring@temptu.com', NULL, NULL, '2022-07-08 03:07:52', '2022-07-08 03:07:52'),
(76, 'CrytoPer', '89030834062', 'jalkhorn@yahoo.com', NULL, NULL, '2022-07-08 05:33:25', '2022-07-08 05:33:25'),
(77, 'CrytoPer', '89030246952', 'xwsgytf@aol.com', NULL, NULL, '2022-07-08 08:02:15', '2022-07-08 08:02:15'),
(78, 'CrytoPer', '89034034931', 'paullinnha371@hotmail.com', NULL, NULL, '2022-07-08 15:32:59', '2022-07-08 15:32:59'),
(79, 'CrytoPer', '89031221515', 'thelionuk@yahoo.com', NULL, NULL, '2022-07-08 20:32:22', '2022-07-08 20:32:22'),
(80, 'CrytoPer', '89034230554', 'alauna.wolfe@gmail.com', NULL, NULL, '2022-07-08 22:59:21', '2022-07-08 22:59:21'),
(81, 'CrytoPer', '89039414685', 'rl0997@yahoo.com', NULL, NULL, '2022-07-09 06:26:40', '2022-07-09 06:26:40'),
(82, 'CrytoPer', '89032115843', 'brad_jason2002@yahoo.com', NULL, NULL, '2022-07-09 21:17:58', '2022-07-09 21:17:58'),
(83, 'CrytoPer', '89032632411', 'nilimas@yahoo.com', NULL, NULL, '2022-07-10 00:05:57', '2022-07-10 00:05:57'),
(84, 'CrytoPer', '89034332164', 'bts_834@hotmail.com', NULL, NULL, '2022-07-10 02:33:18', '2022-07-10 02:33:18'),
(85, 'CrytoPer', '89032982993', 'roland-gerdina@hotmail.com', NULL, NULL, '2022-07-10 05:00:32', '2022-07-10 05:00:32'),
(86, 'CrytoPer', '89039833716', 'webb2108@comcast.net', NULL, NULL, '2022-07-10 09:57:16', '2022-07-10 09:57:16'),
(87, 'CrytoPer', '89032972609', 'serinasharris@gmail.com', NULL, NULL, '2022-07-10 12:26:32', '2022-07-10 12:26:32'),
(88, 'CrytoPer', '89037316484', 'sarah_dixon25@yahoo.com', NULL, NULL, '2022-07-10 15:02:15', '2022-07-10 15:02:15'),
(89, 'CrytoPer', '89034598249', 'itsquick510@yahoo.com', NULL, NULL, '2022-07-11 03:45:06', '2022-07-11 03:45:06'),
(90, 'CrytoPer', '89031399826', 'pmcgoo@hotmail.com', NULL, NULL, '2022-07-11 18:41:56', '2022-07-11 18:41:56'),
(91, 'CrytoPer', '89037761803', 'dwrittz@gmail.com', NULL, NULL, '2022-07-11 21:09:00', '2022-07-11 21:09:00'),
(92, 'CrytoPer', '89031895318', 'superrasta4@gmail.com', NULL, NULL, '2022-07-11 23:40:42', '2022-07-11 23:40:42'),
(93, 'CrytoPer', '89039920034', 'drewnbecca1@gmail.com', NULL, NULL, '2022-07-12 04:41:15', '2022-07-12 04:41:15'),
(94, 'CrytoPer', '89037647928', 'monica_31183@yahoo.com', NULL, NULL, '2022-07-12 07:10:28', '2022-07-12 07:10:28'),
(95, 'CrytoPer', '89039530641', 'shuangrym@gmail.com', NULL, NULL, '2022-07-12 12:28:56', '2022-07-12 12:28:56'),
(96, 'CrytoPer', '89034960527', 'ziyadwarner@gmail.com', NULL, NULL, '2022-07-12 17:25:41', '2022-07-12 17:25:41'),
(97, 'Mike James', '83742434485', 'no-replyvedo@gmail.com', NULL, NULL, '2022-07-12 20:28:35', '2022-07-12 20:28:35'),
(98, 'CrytoPer', '89034554606', 'zorbas1988@googlemail.com', NULL, NULL, '2022-07-13 17:03:55', '2022-07-13 17:03:55'),
(99, 'CrytoPer', '89032810308', 'blperalta2000@yahoo.com', NULL, NULL, '2022-07-13 19:47:57', '2022-07-13 19:47:57'),
(100, 'Mike', '89388653731', 'no-replyvedo@gmail.com', NULL, NULL, '2022-07-13 20:00:58', '2022-07-13 20:00:58'),
(101, 'CrytoPer', '89038153185', 'dbrwncns@HOTMAIL.COM', NULL, NULL, '2022-07-13 22:16:44', '2022-07-13 22:16:44'),
(102, 'CrytoPer', '89033809870', 'valerie_jz9s1f@yahoo.com', NULL, NULL, '2022-07-14 08:06:46', '2022-07-14 08:06:46'),
(103, 'CrytoPer', '89034794390', 'angelawitter@ymail.com', NULL, NULL, '2022-07-14 13:05:00', '2022-07-14 13:05:00'),
(104, 'Donald Cole', '81972312169', 'coledd221@cloedcolela.com', NULL, NULL, '2022-07-15 15:15:17', '2022-07-15 15:15:17'),
(105, 'CrytoPer', '89037340388', 'baileynfi@yahoo.com', NULL, NULL, '2022-07-15 18:52:27', '2022-07-15 18:52:27'),
(106, 'CrytoPer', '89030158520', 'carolyn.f.hawkins@gmail.com', NULL, NULL, '2022-07-15 23:49:38', '2022-07-15 23:49:38'),
(107, 'CrytoPer', '89033534450', 'nounsyoursource@gmail.com', NULL, NULL, '2022-07-17 01:22:42', '2022-07-17 01:22:42'),
(108, 'CrytoPer', '89039081545', 'matthewnowell@hotmail.com', NULL, NULL, '2022-07-17 03:52:16', '2022-07-17 03:52:16'),
(109, 'CrytoPer', '89035255054', 'cheekyblaith@rocketmail.com', NULL, NULL, '2022-07-17 06:18:44', '2022-07-17 06:18:44'),
(110, 'CrytoPer', '89037187118', 'yayhqiavvfvyvrgd@gmail.com', NULL, NULL, '2022-07-17 19:08:42', '2022-07-17 19:08:42'),
(111, 'CrytoPer', '89036155455', 'sindy1457@naver.com', NULL, NULL, '2022-07-17 21:39:03', '2022-07-17 21:39:03'),
(112, 'CrytoPer', '89031872468', 'otan9@yahoo.com', NULL, NULL, '2022-07-18 00:11:20', '2022-07-18 00:11:20'),
(113, 'CrytoPer', '89036431949', 'panda_odio@hotmail.com', NULL, NULL, '2022-07-18 17:35:07', '2022-07-18 17:35:07'),
(114, 'CrytoPer', '89035717116', 'jessicasmith83@hotmail.com', NULL, NULL, '2022-07-19 03:29:20', '2022-07-19 03:29:20'),
(115, 'CrytoPer', '89037608170', 'chosenone5402003@yahoo.com', NULL, NULL, '2022-07-19 06:00:16', '2022-07-19 06:00:16'),
(116, 'CrytoPer', '89038704627', 'tjm875@aim.com', NULL, NULL, '2022-07-19 11:01:47', '2022-07-19 11:01:47'),
(117, 'CrytoPer', '89039631069', 'abbypoore@hotmail.com', NULL, NULL, '2022-07-19 23:25:52', '2022-07-19 23:25:52'),
(118, 'CrytoPer', '89033130577', 'jonreluv@yahoo.com', NULL, NULL, '2022-07-20 04:21:24', '2022-07-20 04:21:24'),
(119, 'Mike Phillips', '84963543665', 'no-replyvedo@gmail.com', NULL, NULL, '2022-07-20 13:48:39', '2022-07-20 13:48:39'),
(120, 'CrytoPer', '89035578411', 'aweathers7175@yahoo.com', NULL, NULL, '2022-07-21 09:26:43', '2022-07-21 09:26:43'),
(121, 'CrytoPer', '89035987347', 'naderpizza@gmail.com', NULL, NULL, '2022-07-21 17:58:21', '2022-07-21 17:58:21'),
(122, 'CrytoPer', '89032717889', 'isabellaskyline@mail.com', NULL, NULL, '2022-07-22 07:11:35', '2022-07-22 07:11:35'),
(123, 'CrytoPer', '89035248964', 'lkonsovwq867@aol.com', NULL, NULL, '2022-07-23 05:05:04', '2022-07-23 05:05:04'),
(124, 'CrytoPer', '89032903573', 'bgregoraspitt@gotmail.com', NULL, NULL, '2022-07-24 07:40:08', '2022-07-24 07:40:08'),
(125, 'CrytoPer', '89038262827', 'gbeamer1081@yahoo.com', NULL, NULL, '2022-07-24 11:56:21', '2022-07-24 11:56:21'),
(126, 'CrytoPer', '89039892578', 'sacs1962@yahoo.com', NULL, NULL, '2022-07-24 16:52:21', '2022-07-24 16:52:21'),
(127, 'CrytoPer', '89036076201', 'mastri888@gmail.com', NULL, NULL, '2022-07-26 11:43:14', '2022-07-26 11:43:14'),
(128, 'CrytoPer', '89030336852', 'Aj01212004@yahoo.com', NULL, NULL, '2022-07-27 05:46:54', '2022-07-27 05:46:54'),
(129, 'CrytoPer', '89037281291', 'LJones5281@aol.com', NULL, NULL, '2022-07-27 18:37:29', '2022-07-27 18:37:29'),
(130, 'CrytoPer', '89034114826', 'daleurabacalso@yahoo.com', NULL, NULL, '2022-07-27 23:09:25', '2022-07-27 23:09:25'),
(131, 'CrytoPer', '89039365929', 'trinity_wade_2113@yahoo.com', NULL, NULL, '2022-07-28 03:24:03', '2022-07-28 03:24:03'),
(132, 'Mike Gilson', '86386196252', 'no-replyvedo@gmail.com', NULL, NULL, '2022-07-28 12:32:06', '2022-07-28 12:32:06'),
(133, 'CrytoPer', '89039184311', 'jay_nel00@yahoo.com', NULL, NULL, '2022-07-28 16:34:03', '2022-07-28 16:34:03'),
(134, 'CrytoPer', '89032854386', 'ceciliaxtalk100@aim.com', NULL, NULL, '2022-07-28 19:03:26', '2022-07-28 19:03:26'),
(135, 'CrytoPer', '89032471055', 'jcheffnr@aol.com', NULL, NULL, '2022-07-28 21:31:16', '2022-07-28 21:31:16'),
(136, 'CrytoPer', '89038006492', 'kwillis2111@gmail.com', NULL, NULL, '2022-07-28 23:59:20', '2022-07-28 23:59:20'),
(137, 'CrytoPer', '89033398437', 'ejacks76@yahoo.com', NULL, NULL, '2022-07-29 19:49:43', '2022-07-29 19:49:43'),
(138, 'CrytoPer', '89034271904', 'naumovkonstantin2012@gmail.com', NULL, NULL, '2022-07-30 16:13:16', '2022-07-30 16:13:16'),
(139, 'CrytoPer', '89039017078', 'kleahan@comcast.net', NULL, NULL, '2022-07-31 07:11:30', '2022-07-31 07:11:30'),
(140, 'CrytoPer', '89037620312', 'lil_meemom@hotmail.com', NULL, NULL, '2022-07-31 17:59:19', '2022-07-31 17:59:19'),
(141, 'CrytoPer', '89033053192', 'eacarpenters@gmail.com', NULL, NULL, '2022-08-01 16:56:51', '2022-08-01 16:56:51'),
(142, 'CrytoPer', '89035988614', 'sksingh1960@hotmail.com', NULL, NULL, '2022-08-01 19:26:00', '2022-08-01 19:26:00'),
(143, 'CrytoPer', '89037507550', 'brandyaikens1@yahoo.com', NULL, NULL, '2022-08-01 21:54:52', '2022-08-01 21:54:52'),
(144, 'CrytoPer', '89035048703', 'emir-annem@hotmail.com', NULL, NULL, '2022-08-02 08:29:42', '2022-08-02 08:29:42'),
(145, 'CrytoPer', '89036277203', 'jonesy4900@hotmail.com', NULL, NULL, '2022-08-02 10:59:23', '2022-08-02 10:59:23'),
(146, 'CrytoPer', '89031900715', 'ellyn1116@hotmail.com', NULL, NULL, '2022-08-02 23:41:21', '2022-08-02 23:41:21'),
(147, 'CrytoPer', '89036104135', 'retoollebx@gmail.com', NULL, NULL, '2022-08-03 07:12:28', '2022-08-03 07:12:28'),
(148, 'CrytoPer', '89032106240', 'oibihlkyaboyette@outlook.com', NULL, NULL, '2022-08-03 09:47:02', '2022-08-03 09:47:02'),
(149, 'CrytoPer', '89033630057', 'lillysykes@ymail.com', NULL, NULL, '2022-08-04 05:44:20', '2022-08-04 05:44:20'),
(150, 'CrytoPer', '89030768214', 'angela_M_fields@hot6mail.com', NULL, NULL, '2022-08-04 08:13:07', '2022-08-04 08:13:07'),
(151, 'Mike Ford', '84651769949', 'no-replyvedo@gmail.com', NULL, NULL, '2022-08-05 16:41:53', '2022-08-05 16:41:53'),
(152, 'CrytoPer', '89030771034', 'greenvillemommy@yahoo.com', NULL, NULL, '2022-08-06 03:42:48', '2022-08-06 03:42:48'),
(153, 'CrytoPer', '89039852626', 'jringnald@yahoo.com', NULL, NULL, '2022-08-06 06:12:30', '2022-08-06 06:12:30'),
(154, 'CrytoPer', '89034289878', 'serena4gossipgirl@yahoo.com', NULL, NULL, '2022-08-06 08:39:31', '2022-08-06 08:39:31'),
(155, 'CrytoPer', '89039597695', 'Pradadevil92@yahoo.com', NULL, NULL, '2022-08-06 18:26:38', '2022-08-06 18:26:38'),
(156, 'CrytoPer', '89035048417', 'kingsservices22527@yahoo.com', NULL, NULL, '2022-08-06 20:58:31', '2022-08-06 20:58:31'),
(157, 'CrytoPer', '89033812355', 'aylash@yahoo.com', NULL, NULL, '2022-08-06 23:26:36', '2022-08-06 23:26:36'),
(158, 'CrytoPer', '89034248290', 'buddha_pony@yahoo.com', NULL, NULL, '2022-08-07 13:01:02', '2022-08-07 13:01:02'),
(159, 'CrytoPer', '89035598867', 'john.tritschler@gmail.com', NULL, NULL, '2022-08-07 22:49:02', '2022-08-07 22:49:02'),
(160, 'Mike Baker', '85215484833', 'no-replyvedo@gmail.com', NULL, NULL, '2022-08-08 07:37:29', '2022-08-08 07:37:29'),
(161, 'CrytoPer', '89038061144', 'mirandaaij@yahoo.com', NULL, NULL, '2022-08-08 09:01:50', '2022-08-08 09:01:50'),
(162, 'CrytoPer', '89033615655', 'ericaandrayray@aol.com', NULL, NULL, '2022-08-08 13:51:16', '2022-08-08 13:51:16'),
(163, 'CrytoPer', '89030902040', 'clousephoto@gmail.com', NULL, NULL, '2022-08-09 12:48:13', '2022-08-09 12:48:13'),
(164, 'CrytoPer', '89030234640', 'eugene1tom@yahoo.com', NULL, NULL, '2022-08-09 17:46:38', '2022-08-09 17:46:38'),
(165, 'CrytoPer', '89030315854', 'jasminejohn91@yahoo.com', NULL, NULL, '2022-08-09 20:22:13', '2022-08-09 20:22:13'),
(166, 'CrytoPer', '89038415688', 'ivona@suddenlink.net', NULL, NULL, '2022-08-09 22:51:12', '2022-08-09 22:51:12'),
(167, 'Mike Carrington', '87974352695', 'no-replyvedo@gmail.com', NULL, NULL, '2022-08-10 19:56:04', '2022-08-10 19:56:04'),
(168, 'CrytoPer', '89035570992', 'autumn5747@aol.com', NULL, NULL, '2022-08-10 23:59:29', '2022-08-10 23:59:29'),
(169, 'RobertEcoro', '84353117795', 'loansdirectllp@gmail.com', NULL, NULL, '2022-08-16 14:41:47', '2022-08-16 14:41:47'),
(170, 'Mike Haig', '81559754567', 'no-replyvedo@gmail.com', NULL, NULL, '2022-08-17 22:18:20', '2022-08-17 22:18:20'),
(171, 'Mike Hill', '84769965591', 'no-replyvedo@gmail.com', NULL, NULL, '2022-08-24 06:04:04', '2022-08-24 06:04:04'),
(172, 'Mike Bush', '86175489582', 'no-replyvedo@gmail.com', NULL, NULL, '2022-08-31 21:19:40', '2022-08-31 21:19:40'),
(173, 'CrytoPer', '89034599198', 'txpacer@gmail.com', NULL, NULL, '2022-09-02 10:59:31', '2022-09-02 10:59:31'),
(174, 'CrytoPer', '89031960489', 'dshkb07@gmail.com', NULL, NULL, '2022-09-02 13:13:31', '2022-09-02 13:13:31'),
(175, 'CrytoPer', '89037701365', 'timagery@live.com', NULL, NULL, '2022-09-02 15:28:25', '2022-09-02 15:28:25'),
(176, 'CrytoPer', '89036923113', 'gbdavis@mmdhlaw.com', NULL, NULL, '2022-09-02 17:43:53', '2022-09-02 17:43:53'),
(177, 'CrytoPer', '89030046388', 'karenatorrence@gmail.com', NULL, NULL, '2022-09-02 19:57:34', '2022-09-02 19:57:34'),
(178, 'CrytoPer', '89034630467', 'broy@revenlaw.com', NULL, NULL, '2022-09-02 22:12:12', '2022-09-02 22:12:12'),
(179, 'CrytoPer', '89034987325', 'krysbert23@yahoo.com', NULL, NULL, '2022-09-03 00:26:18', '2022-09-03 00:26:18'),
(180, 'CrytoPer', '89033906300', 'juma_13872@yahoo.com', NULL, NULL, '2022-09-03 03:18:39', '2022-09-03 03:18:39'),
(181, 'CrytoPer', '89031703750', 'jacqui829@yahoo.com', NULL, NULL, '2022-09-03 05:31:41', '2022-09-03 05:31:41'),
(182, 'CrytoPer', '89037576098', 'patrick.peltier@gmail.com', NULL, NULL, '2022-09-03 07:46:36', '2022-09-03 07:46:36'),
(183, 'CrytoPer', '89037023416', 'xxblackdevilxx321@yahoo.com', NULL, NULL, '2022-09-03 10:04:21', '2022-09-03 10:04:21'),
(184, 'CrytoPer', '89034430722', 'biancabrandie18@gmail.com', NULL, NULL, '2022-09-03 12:21:52', '2022-09-03 12:21:52'),
(185, 'CrytoPer', '89030138244', 'juji_win@hotmail.com', NULL, NULL, '2022-09-03 14:34:28', '2022-09-03 14:34:28'),
(186, 'CrytoPer', '89038093391', 'shannon.pereira27@gmail.com', NULL, NULL, '2022-09-03 16:52:50', '2022-09-03 16:52:50'),
(187, 'CrytoPer', '89033677288', 'jmsummerlove@g-mail.com', NULL, NULL, '2022-09-03 19:08:30', '2022-09-03 19:08:30'),
(188, 'Mike Ellington', '84427421297', 'no-replyvedo@gmail.com', NULL, NULL, '2022-09-07 14:30:03', '2022-09-07 14:30:03'),
(189, 'Mike Farmer', '82325524157', 'no-replyvedo@gmail.com', NULL, NULL, '2022-09-08 13:05:11', '2022-09-08 13:05:11'),
(190, 'Mike Shorter', '88619184411', 'no-replyvedo@gmail.com', NULL, NULL, '2022-09-18 07:09:58', '2022-09-18 07:09:58'),
(191, 'Mike Pearcy', '86878633477', 'no-replyvedo@gmail.com', NULL, NULL, '2022-09-23 01:49:57', '2022-09-23 01:49:57'),
(192, 'Mike Martin', '87558284688', 'no-replyvedo@gmail.com', NULL, NULL, '2022-09-27 01:54:11', '2022-09-27 01:54:11'),
(193, 'Mike Flatcher', '88226188991', 'no-replyvedo@gmail.com', NULL, NULL, '2022-10-06 09:30:53', '2022-10-06 09:30:53'),
(194, 'Mike Miers', '87831356234', 'no-replyvedo@gmail.com', NULL, NULL, '2022-10-06 10:01:16', '2022-10-06 10:01:16'),
(195, 'Francisco Martinez', '82748119796', 'martinez@phoenix-ida.com', NULL, NULL, '2022-10-10 09:31:17', '2022-10-10 09:31:17'),
(196, 'Mike Enderson', '89224978554', 'no-replyvedo@gmail.com', NULL, NULL, '2022-10-11 23:05:53', '2022-10-11 23:05:53'),
(197, 'Francisco Martinez', '86958764799', 'info@phoenix-ida.com', NULL, NULL, '2022-10-17 17:33:01', '2022-10-17 17:33:01'),
(198, 'Mike Youmans', '84181167434', 'no-replyvedo@gmail.com', NULL, NULL, '2022-10-17 17:44:03', '2022-10-17 17:44:03'),
(199, 'Mike Michaelson', '88283771298', 'no-replyvedo@gmail.com', NULL, NULL, '2022-10-27 07:09:29', '2022-10-27 07:09:29'),
(200, 'Mike Jerome', '85685577345', 'no-replyvedo@gmail.com', NULL, NULL, '2022-10-31 08:01:03', '2022-10-31 08:01:03'),
(201, 'Mike Oswald', '89728386865', 'no-replyvedo@gmail.com', NULL, NULL, '2022-11-02 01:35:59', '2022-11-02 01:35:59'),
(202, 'Mike Nyman', '85589956454', 'no-replyvedo@gmail.com', NULL, NULL, '2022-11-09 12:08:57', '2022-11-09 12:08:57'),
(203, 'Mike Murphy', '89371132533', 'no-replyvedo@gmail.com', NULL, NULL, '2022-11-14 13:44:47', '2022-11-14 13:44:47'),
(204, 'Mike Hailey', '85151567259', 'no-replyvedo@gmail.com', NULL, NULL, '2022-11-22 17:48:50', '2022-11-22 17:48:50'),
(205, 'skyreveryDam', '86241675411', 'malinoleg91@mail.ru', NULL, NULL, '2022-11-26 12:31:17', '2022-11-26 12:31:17'),
(206, 'WilliamEnlib', '87724196976', 'no.reply.jeodo@gmail.com', NULL, NULL, '2022-12-01 01:50:08', '2022-12-01 01:50:08'),
(207, 'Mike Wallace', '84217649415', 'no-replyvedo@gmail.com', NULL, NULL, '2022-12-01 08:55:13', '2022-12-01 08:55:13'),
(208, 'Mike Francis', '81147392299', 'no-replyvedo@gmail.com', NULL, NULL, '2022-12-02 14:24:16', '2022-12-02 14:24:16'),
(209, 'Mike Stephen', '85115212326', 'no-replyvedo@gmail.com', NULL, NULL, '2022-12-06 03:42:30', '2022-12-06 03:42:30'),
(210, 'Mike Watson', '84336421969', 'no-replyvedo@gmail.com', NULL, NULL, '2022-12-12 15:46:18', '2022-12-12 15:46:18'),
(211, 'Tyronearrab', '89181651153', 'support@capitalfund-hk.com', NULL, NULL, '2022-12-14 15:40:13', '2022-12-14 15:40:13'),
(212, 'Mike Archibald', '84312139314', 'no-replyvedo@gmail.com', NULL, NULL, '2022-12-21 05:44:31', '2022-12-21 05:44:31'),
(213, 'Mike Bootman', '82967211553', 'no-replyvedo@gmail.com', NULL, NULL, '2022-12-27 08:29:19', '2022-12-27 08:29:19'),
(214, 'Mike Wallace', '86595953744', 'no-replyvedo@gmail.com', NULL, NULL, '2023-01-01 17:34:55', '2023-01-01 17:34:55'),
(215, 'Mike Davidson', '85471876424', 'no-replyvedo@gmail.com', NULL, NULL, '2023-01-05 21:02:48', '2023-01-05 21:02:48'),
(216, 'Mariaet', '+40 2492537956', 'mariaet@denpelatucarenn.tk', NULL, NULL, '2023-01-09 21:51:07', '2023-01-09 21:51:07'),
(217, 'Mike Williams', '87872592371', 'no-replyvedo@gmail.com', NULL, NULL, '2023-01-10 00:32:38', '2023-01-10 00:32:38'),
(218, 'Raymond', '82892438132', 's1.thecctvpro@gmail.com', NULL, NULL, '2023-01-15 05:16:39', '2023-01-15 05:16:39'),
(219, 'Mike Walker', '83116862945', 'no-replyvedo@gmail.com', NULL, NULL, '2023-01-17 20:54:03', '2023-01-17 20:54:03'),
(220, 'Mike Campbell', '82718298888', 'no-replyvedo@gmail.com', NULL, NULL, '2023-01-24 01:08:13', '2023-01-24 01:08:13'),
(221, 'WilliamEnlib', '81942729642', 'no.reply.jeodo@gmail.com', NULL, NULL, '2023-01-24 22:18:37', '2023-01-24 22:18:37'),
(222, 'Mike Thompson', '87171575998', 'no-replyvedo@gmail.com', NULL, NULL, '2023-01-25 03:25:11', '2023-01-25 03:25:11'),
(223, 'Mike Harris', '86767212446', 'no-replyvedo@gmail.com', NULL, NULL, '2023-01-30 22:40:53', '2023-01-30 22:40:53'),
(224, 'vi6RAsSO', NULL, '61C0_generic_f8d23966_kkumhouse.com@data-backup-store.com', NULL, NULL, '2023-02-01 00:50:20', '2023-02-01 00:50:20'),
(225, '35csxQZr', NULL, 'OXRB_generic_e142ea1f_kkumhouse.com@data-backup-store.com', NULL, 'aocvo2rB', '2023-02-01 00:50:28', '2023-02-01 00:50:28'),
(226, NULL, NULL, 'TzKS_generic_b18a5b28_kkumhouse.com@data-backup-store.com', NULL, NULL, '2023-02-01 00:50:36', '2023-02-01 00:50:36'),
(227, '2ccy2KyY', NULL, 'AbdirIzaK422010@HoTmAIl.cOm', NULL, 'swiN5TBc', '2023-02-01 07:15:25', '2023-02-01 07:15:25'),
(228, 'Z8uMC31j', NULL, 'bOoKKEePeR@CUResCOlorAdO.COM', NULL, 'VBFJzbs9', '2023-02-01 07:15:26', '2023-02-01 07:15:26'),
(229, 'xRo8eY7w', NULL, 'Tyler.kilde@mlGc.neT', NULL, 'xjiPoJnH', '2023-02-01 07:15:32', '2023-02-01 07:15:32'),
(230, 'IlO2P1Vk', NULL, 'ERIcAh@htRtOOls.com', NULL, 'CihL1SdL', '2023-02-01 07:15:44', '2023-02-01 07:15:44'),
(231, 'QUTxNjzT', NULL, 'ERicAh@hTrtOolS.COM', NULL, NULL, '2023-02-01 07:32:48', '2023-02-01 07:32:48'),
(232, 'EpnRuYCe', NULL, 'skLECHEr@AOl.cOM', NULL, NULL, '2023-02-01 07:33:19', '2023-02-01 07:33:19'),
(233, 'NjmokhZr', NULL, 'MDube@CbhcFl.org', NULL, NULL, '2023-02-01 07:33:20', '2023-02-01 07:33:20'),
(234, '0PNULnTR', NULL, 'VIctOR.AYala@Fox40.Com', NULL, NULL, '2023-02-01 07:33:31', '2023-02-01 07:33:31'),
(235, 'ioi2icze', NULL, 'ericaH@htRtoOLS.COm', NULL, NULL, '2023-02-01 07:33:32', '2023-02-01 07:33:32'),
(236, '9QC7YjhN', NULL, 'tAmPaofFicE@paiNTCOrps.COm', NULL, NULL, '2023-02-01 07:33:46', '2023-02-01 07:33:46'),
(237, NULL, NULL, 'tyLeR.kiLDe@MLGc.nET', NULL, NULL, '2023-02-01 07:44:03', '2023-02-01 07:44:03'),
(238, NULL, NULL, 'tYLeR.KILdE@MLgC.nEt', NULL, NULL, '2023-02-01 07:44:03', '2023-02-01 07:44:03'),
(239, '8tJJtl1W', NULL, 'JuLIE.glOyEske@WiSHtV.COm', NULL, NULL, '2023-02-01 08:07:11', '2023-02-01 08:07:11'),
(240, 'vrWdtR4w', NULL, 'VictOr.AyALa@FOx40.CoM', NULL, NULL, '2023-02-01 08:33:24', '2023-02-01 08:33:24'),
(241, 'JmOZVIef', NULL, 'eRicAH@HTRTOoLS.cOM', NULL, NULL, '2023-02-01 08:33:39', '2023-02-01 08:33:39'),
(242, '7E3JKGHU', NULL, 'sEthharreLl824@GmAIl.cOM', NULL, NULL, '2023-02-01 08:33:44', '2023-02-01 08:33:44'),
(243, 'eKFIkmqo', NULL, 'mdUBe@CBhCfL.org', NULL, NULL, '2023-02-01 08:34:09', '2023-02-01 08:34:09'),
(244, 'c2my4aQL', NULL, 'RobsON_61@HoTmAil.CO.uK', NULL, NULL, '2023-02-01 09:10:28', '2023-02-01 09:10:28'),
(245, 'Z6HVPZDj', NULL, 'jaSON.PonDEr@fEdEx.CoM', NULL, NULL, '2023-02-01 11:42:19', '2023-02-01 11:42:19'),
(246, 'E2M9IBhn', NULL, 'brANDOnbgreEN@GMAIl.coM', NULL, 'toGTUVCF', '2023-02-01 12:32:53', '2023-02-01 12:32:53'),
(247, 'TTeLOsDS', NULL, 'CHrIsTianCARDenaSnIX12415@YAHOo.Com', NULL, NULL, '2023-02-01 15:18:47', '2023-02-01 15:18:47'),
(248, '4b1FSacj', NULL, 'liLAjoy2@GMAil.Com', NULL, NULL, '2023-02-01 15:19:18', '2023-02-01 15:19:18'),
(249, 'OSqFFvgB', NULL, 'EasTporTco@GMaIL.coM', NULL, NULL, '2023-02-01 15:45:38', '2023-02-01 15:45:38'),
(250, 'KUqBlutU', NULL, 'wUTNut75@CS.cOm', NULL, NULL, '2023-02-01 15:45:53', '2023-02-01 15:45:53'),
(251, 'b3qIV8az', NULL, 'miriaM.MoseR@GMx.nET', NULL, NULL, '2023-02-01 15:46:26', '2023-02-01 15:46:26'),
(252, 'y8OkFCyj', NULL, 'sKlEchER@aol.COm', NULL, NULL, '2023-02-01 15:46:29', '2023-02-01 15:46:29'),
(253, 'Mr. Castilo', '84416628784', 'castilocilo@gmail.com', NULL, NULL, '2023-02-01 16:04:57', '2023-02-01 16:04:57'),
(254, 'Xtau88Ft', NULL, 'srIcHTer91@GmAIl.cOm', NULL, 'WWa4qjA0', '2023-02-01 16:19:47', '2023-02-01 16:19:47'),
(255, 'pssprJqK', NULL, 'IrmakiNg1972@gmAil.cOm', NULL, NULL, '2023-02-01 16:56:57', '2023-02-01 16:56:57'),
(256, 'm7vmoyX3', NULL, 'PtEIgEN@UspS.cOM', NULL, 'cPHA132o', '2023-02-01 17:05:52', '2023-02-01 17:05:52'),
(257, 'sJwaNJxR', NULL, 'jocElynE-cAron@HOTMaIl.CoM', NULL, '0gpooIj2', '2023-02-01 17:06:37', '2023-02-01 17:06:37'),
(258, 'gkelZEX7', NULL, 'pTEigeN@yahoO.Com', NULL, 'R86ipuOQ', '2023-02-01 17:24:19', '2023-02-01 17:24:19'),
(259, 'dmlWTRZ8', NULL, 'pIetRaNIeC@hOtMaiL.coM', NULL, 'ZNoZ6r7i', '2023-02-01 17:24:28', '2023-02-01 17:24:28'),
(260, 'AcjZN34a', NULL, 'C.GUAraSCIo@BluEWiN.Ch', NULL, 'lZc3hwbJ', '2023-02-01 17:25:35', '2023-02-01 17:25:35'),
(261, 'KIbglFVl', NULL, 'kARKi1SiTA@GmAil.cOm', NULL, 'ux7gO0QK', '2023-02-01 17:55:09', '2023-02-01 17:55:09'),
(262, 'sOqqBd91', NULL, 'AmilNeR.sweetzEr@Gmail.com', NULL, '0HT0zUL4', '2023-02-01 17:55:10', '2023-02-01 17:55:10'),
(263, 'exGezD2m', NULL, 'terrYSKagGs@HOTMAIL.COM', NULL, 'jSNpxc9A', '2023-02-01 17:55:36', '2023-02-01 17:55:36'),
(264, 'YqVPoqJR', NULL, 'TreymArtinO@GMaiL.CoM', NULL, 'KIZj6hml', '2023-02-01 17:55:50', '2023-02-01 17:55:50'),
(265, 'FDui9oje', NULL, 'uZY911@YahOo.CoM', NULL, 'R7idtl44', '2023-02-01 17:56:25', '2023-02-01 17:56:25'),
(266, '7BLPd3Dh', NULL, 'NGUymYha@gmAIL.COM', NULL, 'f5mp56a7', '2023-02-01 17:56:34', '2023-02-01 17:56:34'),
(267, 'aPtvoXWB', NULL, 'dANijEl-KrueZIU@gMaIL.COm', NULL, 'aAOJJ3Aj', '2023-02-01 17:56:39', '2023-02-01 17:56:39'),
(268, 'AY4ZbphR', NULL, 'aQnguY@msn.CoM', NULL, 'Whx6owLg', '2023-02-01 17:57:06', '2023-02-01 17:57:06'),
(269, 'HnUPqgmx', NULL, 'mY_bettY_bOoP@HotMAIl.com', NULL, 'q0QoO93U', '2023-02-01 17:58:01', '2023-02-01 17:58:01'),
(270, 'eTywQYL7', NULL, 'tordaBElL@GMAil.CoM', NULL, NULL, '2023-02-01 19:05:19', '2023-02-01 19:05:19'),
(271, 'WyF98ueg', NULL, 'My_beTTY_bOop@hOtmaIl.com', NULL, NULL, '2023-02-01 19:06:03', '2023-02-01 19:06:03'),
(272, 'xqSYkXV9', NULL, 'JANefFERG@iCloud.Com', NULL, NULL, '2023-02-01 19:21:16', '2023-02-01 19:21:16'),
(273, '9h9nCyHu', NULL, 'sberlo@kiNetiXLOGistIcs.com', NULL, NULL, '2023-02-01 19:21:42', '2023-02-01 19:21:42'),
(274, 'MMNmrP5N', NULL, 'JUstIndrs0101@GMAiL.com', NULL, 'OPCfFTGR', '2023-02-01 20:33:30', '2023-02-01 20:33:30'),
(275, 'mSZctu8u', NULL, 'carLeE@EVolutiOnmechaNiCAL.ca', NULL, 'SZGUSQLI', '2023-02-01 20:56:40', '2023-02-01 20:56:40'),
(276, '10uCQEB0', NULL, 'lUANnbroWnbuSiNeSs@GMAIl.cOM', NULL, 'JqYBx8yj', '2023-02-01 21:03:39', '2023-02-01 21:03:39'),
(277, 'mnGyPuw5', NULL, 'SHANnAN@ogsUpPLY.cOM', NULL, '03qMuNGc', '2023-02-01 21:23:30', '2023-02-01 21:23:30'),
(278, 'USaDnDAC', NULL, 'tyRAHVAn@GmAiL.COm', NULL, 'B90zmSJy', '2023-02-01 21:23:47', '2023-02-01 21:23:47'),
(279, 'kb1lDv6a', NULL, 'mfUrK@YahoO.CoM', NULL, 'iPuyCO3z', '2023-02-01 21:24:01', '2023-02-01 21:24:01'),
(280, 'b0BHOZgN', NULL, 'smIlEyGIRl304@YaHoo.cOm', NULL, 'hkL8XQTo', '2023-02-01 21:24:13', '2023-02-01 21:24:13'),
(281, 'tpJSFij5', NULL, 'thEbzS@gMAil.COm', NULL, 'baUvTrro', '2023-02-01 21:24:34', '2023-02-01 21:24:34'),
(282, '2EWYuL8H', NULL, 'DaniEL@YourfaMilYbRoKer.COM', NULL, '0Z7qI66h', '2023-02-01 21:24:35', '2023-02-01 21:24:35'),
(283, 'LiUANnLV', NULL, 'ADaMt314@gmAIl.cOm', NULL, 'w3tO2rPF', '2023-02-01 21:25:23', '2023-02-01 21:25:23'),
(284, 'ZzM1uX5I', NULL, 'tAYtaY310@hoTmaIl.coM', NULL, NULL, '2023-02-01 21:29:22', '2023-02-01 21:29:22'),
(285, 'k3N7Td7K', NULL, 'mArYk814@hotmAIL.com', NULL, NULL, '2023-02-01 21:29:24', '2023-02-01 21:29:24'),
(286, 'lqwJuM0i', NULL, 'sklEcheR@aOL.CoM', NULL, NULL, '2023-02-01 21:29:26', '2023-02-01 21:29:26'),
(287, 'QurnbYkf', NULL, 'daliKOeHLEr@GmAiL.cOm', NULL, NULL, '2023-02-01 21:29:35', '2023-02-01 21:29:35'),
(288, 'vYtLqLcm', NULL, 'JlAsPaDA@P4e.cOM', NULL, NULL, '2023-02-01 21:30:06', '2023-02-01 21:30:06'),
(289, '7anM14wf', NULL, 'ROSario.acCArDI@bLuEwiN.Ch', NULL, NULL, '2023-02-01 21:31:14', '2023-02-01 21:31:14'),
(290, 'jHo0BPB4', NULL, 'cHRIstiAn.hauTziNgEr@Gmx.NeT', NULL, NULL, '2023-02-01 21:31:44', '2023-02-01 21:31:44'),
(291, '32BBB9t4', NULL, 'justjENLYNN2010@aoL.cOm', NULL, 'p1oYXgmH', '2023-02-01 22:27:45', '2023-02-01 22:27:45'),
(292, 'wPMrUGpE', NULL, 'ouladA89@GMAIl.com', NULL, NULL, '2023-02-01 22:56:57', '2023-02-01 22:56:57'),
(293, 'f6WNbX6E', NULL, 'cOnnEE4@hOtMAIl.CoM', NULL, NULL, '2023-02-01 22:57:36', '2023-02-01 22:57:36'),
(294, 'pHyt6C4o', NULL, 'vANDaLay1@SyMPaTICO.cA', NULL, 'L9pZvOsH', '2023-02-01 22:57:57', '2023-02-01 22:57:57'),
(295, 'Gx1OAkgF', NULL, 'dM@INmoTioNSg.coM', NULL, NULL, '2023-02-01 22:59:40', '2023-02-01 22:59:40'),
(296, 'RuBNxHxw', NULL, 'JANeffERg@iCLoUd.COm', NULL, NULL, '2023-02-01 22:59:44', '2023-02-01 22:59:44'),
(297, 'DOPCLT2h', NULL, 'ozziEheN@yahoo.Com', NULL, 'dNVNXBKj', '2023-02-02 00:13:29', '2023-02-02 00:13:29'),
(298, 'I9bGdf4A', NULL, 'SookeY11@GmAIL.Com', NULL, 'z838fSPG', '2023-02-02 00:13:54', '2023-02-02 00:13:54'),
(299, 'yKiQCqmh', NULL, 'hCOLwEL1@oPtonliNE.net', NULL, 'cBPVbXKT', '2023-02-02 01:57:46', '2023-02-02 01:57:46'),
(300, 'EptWONPP', NULL, 'sAMVurA60@gMAiL.cOm', NULL, '3Qlyz8mA', '2023-02-02 01:57:59', '2023-02-02 01:57:59'),
(301, 'HAiKt1Mo', NULL, 'CAtHeRinE46g@GmaiL.com', NULL, 'WWykSkKy', '2023-02-02 01:58:10', '2023-02-02 01:58:10'),
(302, 'VL4nFjgF', NULL, 'MItCh.lArKiN@hoTMaiL.COM', NULL, 'WSsNP8aH', '2023-02-02 01:58:47', '2023-02-02 01:58:47'),
(303, 'dVX0Ebv4', NULL, 'MEeZYMIKE7@yaHoO.COm', NULL, 'GldMgrcH', '2023-02-02 01:59:36', '2023-02-02 01:59:36'),
(304, 'OBPA710R', NULL, 'eriCAH@hTrtOOlS.com', NULL, 'lup2Qq58', '2023-02-02 02:00:02', '2023-02-02 02:00:02'),
(305, 'nSpwVR8s', NULL, 'VAlMnTG@yAHOO.cA', NULL, 'Z5n4MXva', '2023-02-02 02:00:36', '2023-02-02 02:00:36'),
(306, 'sHBOMy5G', NULL, 'mobRyANT91@GMAiL.coM', NULL, NULL, '2023-02-02 02:33:18', '2023-02-02 02:33:18'),
(307, 'sgFXMkdA', NULL, 'EmayANcELA@yAHoO.coM', NULL, NULL, '2023-02-02 02:34:26', '2023-02-02 02:34:26'),
(308, 'adGDrIF9', NULL, 'labEAtTie@sBCglObAL.neT', NULL, NULL, '2023-02-02 03:17:25', '2023-02-02 03:17:25'),
(309, 'sasMQ2f1', NULL, 'KelLyfoXsC@AoL.com', NULL, NULL, '2023-02-02 03:18:59', '2023-02-02 03:18:59'),
(310, 'HEOkkMYJ', NULL, 'KAyhUx@yAhoo.Com', NULL, NULL, '2023-02-02 03:19:31', '2023-02-02 03:19:31'),
(311, NULL, NULL, 'jaY.BegoDy@GmaIl.COM', NULL, NULL, '2023-02-02 03:25:15', '2023-02-02 03:25:15'),
(312, NULL, NULL, 'ThEwIliAM@opToNLiNe.nEt', NULL, NULL, '2023-02-02 03:25:25', '2023-02-02 03:25:25'),
(313, NULL, NULL, 'EaA610@MSn.cOm', NULL, NULL, '2023-02-02 03:26:33', '2023-02-02 03:26:33'),
(314, 'B0UW3qh4', NULL, 'MHCJL@zOOMInTerNET.Net', NULL, 'fO3zr4Id', '2023-02-02 05:10:08', '2023-02-02 05:10:08'),
(315, 'LTGA2YgN', NULL, 'EmaYaNcEla@yAhoO.COM', NULL, '5Z1GIvAm', '2023-02-02 05:15:21', '2023-02-02 05:15:21'),
(316, 'UjQQG8aR', NULL, 'MarKDonnELLY@livE.CO.uK', NULL, '3MdlHuxU', '2023-02-02 05:58:52', '2023-02-02 05:58:52'),
(317, 'XR20QqoI', NULL, 'tylER.KiLdE@mlGC.NET', NULL, 'orWgiKFE', '2023-02-02 06:02:10', '2023-02-02 06:02:10'),
(318, 'betoSP80', NULL, 'teRRy.DEAN.oLson@hOtmaIL.cOM', NULL, 'BH7JsrAY', '2023-02-02 11:20:28', '2023-02-02 11:20:28'),
(319, '8TLcFQGJ', NULL, 'TeamDRAWDY@TeaMdRAwDY.com', NULL, NULL, '2023-02-02 13:08:00', '2023-02-02 13:08:00'),
(320, 'I5eG5d20', NULL, 'JuDIththoMaS@GMaIl.cOM', NULL, NULL, '2023-02-02 15:09:58', '2023-02-02 15:09:58'),
(321, '4QcBOEqz', NULL, 'ReNSheL92@gmaIL.cOM', NULL, NULL, '2023-02-02 15:09:58', '2023-02-02 15:09:58'),
(322, 'rTuNzzLC', NULL, 'beThMurPHY612@GMaiL.cOM', NULL, NULL, '2023-02-02 15:10:00', '2023-02-02 15:10:00'),
(323, 'kp97x6XS', NULL, 'cosTuMerSeRvIce.AOl@hotMAiL.COm', NULL, NULL, '2023-02-02 15:10:21', '2023-02-02 15:10:21'),
(324, 'xoxSPnqS', NULL, 'chRiSTIan.hAUTZINgeR@GMX.net', NULL, 'GIsEsJjz', '2023-02-02 16:02:43', '2023-02-02 16:02:43'),
(325, 'It2Ru6qW', NULL, 'kIM.BoND@MarShMMA.CoM', NULL, '2gvHJL90', '2023-02-02 16:03:04', '2023-02-02 16:03:04'),
(326, 'yJmp77km', NULL, 'grAVeL2012@cOmcast.NET', NULL, 'cMQPivv2', '2023-02-02 16:03:04', '2023-02-02 16:03:04'),
(327, 'pSL9Gm0o', NULL, 'CuSTOMOrSERViCehELpING.techz@hOtMAil.COM', NULL, '8DOpqgr7', '2023-02-02 16:03:11', '2023-02-02 16:03:11'),
(328, 'ZpJHhwtC', NULL, 'costumerSeRvicE.oRG@HOTMail.coM', NULL, 'bNgekXIA', '2023-02-02 16:03:14', '2023-02-02 16:03:14'),
(329, '3TF7UxKw', NULL, 'YgendAL2020@gMaIL.com', NULL, 'Blxb4UfF', '2023-02-02 16:03:17', '2023-02-02 16:03:17'),
(330, 'L4yWRnxx', NULL, 'cs@agrIFArM.cA', NULL, NULL, '2023-02-02 17:16:08', '2023-02-02 17:16:08'),
(331, 'CTlDyUf1', NULL, 'PRakTiKerLady@BluewiN.Ch', NULL, NULL, '2023-02-02 17:16:08', '2023-02-02 17:16:08'),
(332, '5kAjK3On', NULL, 'CArlaHArT@Gmail.CoM', NULL, NULL, '2023-02-02 17:16:12', '2023-02-02 17:16:12'),
(333, 'f91Noyjw', NULL, 'jFUhS@mAgEePLASTics.CoM', NULL, NULL, '2023-02-02 17:16:15', '2023-02-02 17:16:15'),
(334, '018fHSHC', NULL, 'd.bRaCKETT@COrkhoward.COm', NULL, NULL, '2023-02-02 17:16:20', '2023-02-02 17:16:20'),
(335, 'lOAZnOiF', NULL, 'caRLOs7ecHeVerRI@GMAIl.cOM', NULL, NULL, '2023-02-02 17:16:20', '2023-02-02 17:16:20'),
(336, 'urQnOX9j', NULL, 'PRAkTikErLADY@blUeWiN.CH', NULL, NULL, '2023-02-02 17:16:22', '2023-02-02 17:16:22'),
(337, 'EGUVdwwn', NULL, 'cFC@CATheriNeCOLLaUTt.Com', NULL, NULL, '2023-02-02 17:16:23', '2023-02-02 17:16:23'),
(338, 'RwTFmCqn', NULL, 'MerTmuratKiRmIZi@gMaIL.cOM', NULL, NULL, '2023-02-02 17:16:24', '2023-02-02 17:16:24'),
(339, 'OCpRl5PE', NULL, 'bLAKeAsTover@GMaiL.COM', NULL, NULL, '2023-02-02 17:16:32', '2023-02-02 17:16:32'),
(340, 'TUvS3JUX', NULL, 'PauliEbURKe@CharTeR.net', NULL, NULL, '2023-02-02 17:16:40', '2023-02-02 17:16:40'),
(341, 'N4caevud', NULL, 'JANeMlAnDAU@GmaIL.COM', NULL, NULL, '2023-02-02 17:16:49', '2023-02-02 17:16:49'),
(342, 'Pzk5xjrm', NULL, 'JHoyANG@DOngAhtIrE.co.kR', NULL, NULL, '2023-02-02 17:21:02', '2023-02-02 17:21:02'),
(343, 'f2IeUnxy', NULL, 'OlIvIaSTANZIaLe@GmAIl.cOm', NULL, NULL, '2023-02-02 17:21:03', '2023-02-02 17:21:03'),
(344, 'buHjOed3', NULL, 'JHoyang@doNGAhTIre.Co.kR', NULL, NULL, '2023-02-02 17:24:13', '2023-02-02 17:24:13'),
(345, '96TSQavc', NULL, 'SARAh.voJTek@KremeRglisManN.DE', NULL, NULL, '2023-02-02 17:24:48', '2023-02-02 17:24:48'),
(346, 'jmVDDksF', NULL, 'pRakTiKerLADy@bLueWin.cH', NULL, NULL, '2023-02-02 17:24:51', '2023-02-02 17:24:51'),
(347, 'T3FpL6mP', NULL, 'ythwaNG@dONGAhTIrE.co.kR', NULL, NULL, '2023-02-02 17:24:52', '2023-02-02 17:24:52'),
(348, 'vcAfWjeU', NULL, 'hdAnnenberg58@gmAIl.COm', NULL, NULL, '2023-02-02 17:25:04', '2023-02-02 17:25:04'),
(349, 'g10TRRSw', NULL, 'PRAkTikERLADy@bLuEWIN.ch', NULL, NULL, '2023-02-02 17:25:05', '2023-02-02 17:25:05'),
(350, 'h0EIspOP', NULL, 'MB@BlUEwIN.cH', NULL, NULL, '2023-02-02 19:37:01', '2023-02-02 19:37:01'),
(351, '7Mcabipm', NULL, 'FOREMaN1979@HOtmAIL.Com', NULL, 'LusrliDB', '2023-02-02 21:18:45', '2023-02-02 21:18:45'),
(352, '7TUmZxda', NULL, 'zuZSDOg@GmAIl.coM', NULL, 'I5yDwdRH', '2023-02-02 21:20:26', '2023-02-02 21:20:26'),
(353, 'lNq5Ndi1', NULL, 'wicKIsAN@BlUeWiN.cH', NULL, NULL, '2023-02-02 22:08:27', '2023-02-02 22:08:27'),
(354, 'qsW0icyG', NULL, 'BARAnjeRry@GMaIL.COm', NULL, 'St8Q015D', '2023-02-03 00:14:19', '2023-02-03 00:14:19'),
(355, 'w9JkRRst', NULL, 'booKkEeper@cUREsCOLoRADo.COM', NULL, NULL, '2023-02-03 02:05:37', '2023-02-03 02:05:37'),
(356, NULL, NULL, 'mDnyTBLu@YaHoo.cOm', NULL, NULL, '2023-02-03 03:57:25', '2023-02-03 03:57:25'),
(357, NULL, NULL, 'DCageR1@GmaIL.cOm', NULL, NULL, '2023-02-03 03:57:28', '2023-02-03 03:57:28'),
(358, 'l4DSpklD', NULL, 'MDube@CBhCFl.Org', NULL, NULL, '2023-02-03 05:47:04', '2023-02-03 05:47:04'),
(359, 'cuDSpOUG', NULL, 'JUDYNgUYEN99@YAhoO.coM', NULL, 'rykaCDUB', '2023-02-03 05:49:17', '2023-02-03 05:49:17'),
(360, 'HJsBEuX6', NULL, 'jULIE.gLOyESKE@WIshtv.cOM', NULL, 'mS1rMUIL', '2023-02-03 05:49:43', '2023-02-03 05:49:43'),
(361, 'gTX2CIhX', NULL, 'KeViNgUErrERo69@yAHOO.CoM', NULL, 'JezAHAwK', '2023-02-03 05:52:12', '2023-02-03 05:52:12'),
(362, '4W4XIzkV', NULL, 'SoerUSa@hOTmail.CoM', NULL, 'rmdFMMyi', '2023-02-03 09:41:24', '2023-02-03 09:41:24'),
(363, NULL, NULL, 'KHaN.AlIS@noRTHEaSTErn.eDu', NULL, NULL, '2023-02-03 10:14:41', '2023-02-03 10:14:41'),
(364, 'qAFnNcLP', NULL, 'COnTaCT@LaURentIuMIHAI.ro', NULL, 'cTWKR9IB', '2023-02-03 12:10:37', '2023-02-03 12:10:37'),
(365, 'iat4SjCP', NULL, 'inFO@tHEInNatrYEPLAcE.COM', NULL, NULL, '2023-02-03 15:22:19', '2023-02-03 15:22:19'),
(366, 'FcfOHrTT', NULL, 'pINkVanILLa104@AOl.COm', NULL, NULL, '2023-02-03 15:37:18', '2023-02-03 15:37:18'),
(367, 'g50sekvK', NULL, 'HAiNesm24@gmaIl.cOm', NULL, NULL, '2023-02-03 15:40:23', '2023-02-03 15:40:23'),
(368, 'bCHmQiAS', NULL, 'REyNa22me@gmaIl.cOm', NULL, NULL, '2023-02-03 15:40:25', '2023-02-03 15:40:25'),
(369, 'nbRFn5IB', NULL, 'DFCUTLER@COMCasT.NeT', NULL, NULL, '2023-02-03 16:48:37', '2023-02-03 16:48:37'),
(370, 'kWMy8WE9', NULL, 'saJidA.MaHmOOD17@GMaIL.Com', NULL, NULL, '2023-02-03 16:48:58', '2023-02-03 16:48:58'),
(371, 'sYKGrOY9', NULL, 'mAamjaCO4@vErIZoN.nET', NULL, NULL, '2023-02-03 16:49:17', '2023-02-03 16:49:17'),
(372, 'WOyOfGCr', NULL, 'rNirElAnd1@gMAIL.com', NULL, NULL, '2023-02-03 16:49:20', '2023-02-03 16:49:20'),
(373, '19CL1453', NULL, 'MATthIEU.baLtazar@gMAil.cOM', NULL, NULL, '2023-02-03 16:49:45', '2023-02-03 16:49:45'),
(374, 'wwOkTcjx', NULL, 'BrMr1475@YaHOo.cOm', NULL, NULL, '2023-02-03 17:57:37', '2023-02-03 17:57:37'),
(375, 'M7OxW9NR', NULL, 'HaRriETPonTiUS@GmaIl.cOM', NULL, NULL, '2023-02-03 17:57:47', '2023-02-03 17:57:47'),
(376, 'rzcDNf8H', NULL, 'Ben.JoNeS@hItEC-uPS.COm', NULL, 'wAShnA9N', '2023-02-03 21:49:04', '2023-02-03 21:49:04'),
(377, 'Yspvxrtn', NULL, 'ErICaH@htrToOls.coM', NULL, NULL, '2023-02-04 00:25:30', '2023-02-04 00:25:30'),
(378, 'GkLshZtP', NULL, 'mDuBE@CbHCfL.ORg', NULL, 'DR0uoTbr', '2023-02-04 00:26:22', '2023-02-04 00:26:22'),
(379, 'cNe1h4ut', NULL, 'DaWN@GRahamCOlLisIOn.COm', NULL, 'a1JB1dO7', '2023-02-04 00:26:29', '2023-02-04 00:26:29'),
(380, 'fsfV1prj', NULL, 'stEVenZuKaITIS@GMaIL.COm', NULL, 'CVQot295', '2023-02-04 00:27:44', '2023-02-04 00:27:44'),
(381, 'FFZoUZ21', NULL, 'FAtTYBAKLAnOV@GMail.cOM', NULL, 'vPMpFemJ', '2023-02-04 00:29:58', '2023-02-04 00:29:58'),
(382, 'GYnE1qZv', NULL, 'mKEndRicK929@GMAiL.coM', NULL, NULL, '2023-02-04 02:24:41', '2023-02-04 02:24:41'),
(383, 'k46pPUte', NULL, 'ViCtOR.CHAVEZ@nUviglobAl.com', NULL, NULL, '2023-02-04 02:24:47', '2023-02-04 02:24:47'),
(384, 'ORcG245a', NULL, 'MduBe@CBHcfL.org', NULL, NULL, '2023-02-04 02:27:53', '2023-02-04 02:27:53'),
(385, 'CeMlgmEI', NULL, 'cOriNnE_RiCe@YahOO.COM', NULL, 'XwVUeDxD', '2023-02-04 03:46:42', '2023-02-04 03:46:42'),
(386, 'bGqLYNjE', NULL, 'hoBbsS@hUTChreGiOnAl.com', NULL, 'zjd5teM1', '2023-02-04 03:50:03', '2023-02-04 03:50:03'),
(387, 'lR7Qct51', NULL, 'tdAVIs1433@GMAiL.com', NULL, 'F1JQN3mF', '2023-02-04 03:50:05', '2023-02-04 03:50:05'),
(388, 'WqmGigUG', NULL, 'lauRiESmiTh123@yahoO.coM', NULL, 'RKdPf6Rc', '2023-02-04 08:36:09', '2023-02-04 08:36:09'),
(389, 'num7366291flebno', '87953391988', 'vvtvefey@boyfriendmail.cf', NULL, NULL, '2023-02-04 08:43:57', '2023-02-04 08:43:57'),
(390, 'B5eTC4nO', NULL, 'MoRIno.aleXIS@orANgE.FR', NULL, '6l9RgQmK', '2023-02-04 14:24:09', '2023-02-04 14:24:09'),
(391, 'lJkVkWve', NULL, 'muFFyrOAch@gMAiL.coM', NULL, 'BuxOx1wW', '2023-02-04 14:24:29', '2023-02-04 14:24:29'),
(392, NULL, NULL, 'PBJhaLBerg@YaHOO.COm', NULL, NULL, '2023-02-04 14:42:43', '2023-02-04 14:42:43'),
(393, 'H7qBlWpw', NULL, 'RheIL@SUnrIsE.cH', NULL, NULL, '2023-02-04 15:40:40', '2023-02-04 15:40:40'),
(394, 'yOzg4bpX', NULL, 'RHeil@sUnrIse.Ch', NULL, NULL, '2023-02-04 15:40:50', '2023-02-04 15:40:50'),
(395, 'BWDtbArC', NULL, 'MartHALEeSoN@me.cOm', NULL, NULL, '2023-02-04 15:40:50', '2023-02-04 15:40:50'),
(396, 'Z21M0moB', NULL, 'JImmY4452@GMaIL.com', NULL, NULL, '2023-02-04 15:41:03', '2023-02-04 15:41:03'),
(397, '1Lz2bNTL', NULL, 'TyLER.Kilde@mLgc.nEt', NULL, NULL, '2023-02-04 15:41:10', '2023-02-04 15:41:10'),
(398, 'syKZHWpi', NULL, 'tJACLIZ1@YAHOO.com', NULL, '8RxHCl4X', '2023-02-04 16:37:40', '2023-02-04 16:37:40'),
(399, 'Qvw8j97m', NULL, 'LuCYjkInG@HOtmAil.cO.Uk', NULL, 'AS5IHqa7', '2023-02-04 16:39:26', '2023-02-04 16:39:26'),
(400, '6QPvwPss', NULL, 'AshLEIGhTM@ymail.CoM', NULL, NULL, '2023-02-05 00:33:49', '2023-02-05 00:33:49'),
(401, 'R6bLo2jv', NULL, 'SKLecher@Aol.coM', NULL, NULL, '2023-02-05 00:34:14', '2023-02-05 00:34:14'),
(402, 'nR8qonBJ', NULL, 'CONtACt@VOYAgerenTUNISie.cOm', NULL, NULL, '2023-02-05 00:35:50', '2023-02-05 00:35:50'),
(403, 'bxt8ESyi', NULL, 'CarlOscErcA@BoL.coM.bR', NULL, 'sbuSXSAH', '2023-02-05 02:04:22', '2023-02-05 02:04:22'),
(404, 'CDrfFG6a', NULL, 'MiCkEKRyCka@GmaIl.coM', NULL, 'CAuwGvY1', '2023-02-05 02:04:25', '2023-02-05 02:04:25'),
(405, NULL, NULL, 'EYeLasheS818@yAhoO.COM', NULL, NULL, '2023-02-05 02:25:48', '2023-02-05 02:25:48'),
(406, NULL, NULL, 'EyeLASheS818@YahOo.COm', NULL, NULL, '2023-02-05 03:14:13', '2023-02-05 03:14:13'),
(407, NULL, NULL, 'JAson@FISheRiNTeRIORSGrouP.cOm', NULL, NULL, '2023-02-05 03:15:25', '2023-02-05 03:15:25'),
(408, NULL, NULL, 'eRICAh@hTRTOoLs.cOm', NULL, NULL, '2023-02-05 03:16:18', '2023-02-05 03:16:18'),
(409, NULL, NULL, 'erIcAH@htrTooLs.Com', NULL, NULL, '2023-02-05 03:16:36', '2023-02-05 03:16:36'),
(410, NULL, NULL, 'bBAAZOV1511@HoTMAIL.Com', NULL, NULL, '2023-02-05 03:16:44', '2023-02-05 03:16:44'),
(411, NULL, NULL, 'VWACkManN@wROCtv.COM', NULL, NULL, '2023-02-05 03:17:19', '2023-02-05 03:17:19'),
(412, 'KvQE3aUt', NULL, 'DAnIEl.martINez@GeNiSaIRoN.cOm', NULL, 'DG9o2p64', '2023-02-05 03:40:28', '2023-02-05 03:40:28'),
(413, 'jMnJLaCb', NULL, 'camiClaY1@yAHoo.cOm', NULL, 'ss780TxG', '2023-02-05 06:54:19', '2023-02-05 06:54:19'),
(414, NULL, NULL, 'PROsPAL.daViD@GMAIL.coM', NULL, NULL, '2023-02-05 13:23:18', '2023-02-05 13:23:18'),
(415, NULL, NULL, 'EyelAShES818@yahoO.cOm', NULL, NULL, '2023-02-05 13:23:35', '2023-02-05 13:23:35'),
(416, NULL, NULL, 'MICHael.KimbRoW@gMaIL.COM', NULL, NULL, '2023-02-05 13:23:40', '2023-02-05 13:23:40'),
(417, NULL, NULL, 'LuCIaNA.LEiTe18@HotmAIl.coM', NULL, NULL, '2023-02-05 14:01:15', '2023-02-05 14:01:15'),
(418, NULL, NULL, 'ZmSTakMArC67@gmAil.coM', NULL, NULL, '2023-02-05 14:03:12', '2023-02-05 14:03:12'),
(419, '55w6LH2H', NULL, 'BoOkkeePER@cureScoloRAdO.CoM', NULL, 'gWYkcFAW', '2023-02-05 17:06:15', '2023-02-05 17:06:15'),
(420, 'H2FEnSO8', NULL, 'cHrIsTOPhe@FRANCoiS-SpOrtS.cH', NULL, NULL, '2023-02-05 18:04:28', '2023-02-05 18:04:28'),
(421, 'ntvbzjKM', NULL, 'RheIl@SUnRISe.CH', NULL, NULL, '2023-02-05 18:05:02', '2023-02-05 18:05:02'),
(422, 'KNEjFO4e', NULL, 'RMOniCO@aCROMil.COM', NULL, NULL, '2023-02-05 18:05:16', '2023-02-05 18:05:16'),
(423, 'Hans3HmQ', NULL, 'BdaVis@AOl.CoM', NULL, 'OkIi1IW2', '2023-02-05 18:17:46', '2023-02-05 18:17:46'),
(424, 'X3lJOHdC', NULL, 'kErRIBlackforD@gmAiL.coM', NULL, 'VOleuqRJ', '2023-02-05 18:18:27', '2023-02-05 18:18:27'),
(425, '3HDGUMhE', NULL, 'bPB@qRLegAl.COM', NULL, 'Hh3eRYer', '2023-02-05 18:19:05', '2023-02-05 18:19:05'),
(426, 'lPkAFe45', NULL, 'dEsIReeRe@GMAiL.cOM', NULL, NULL, '2023-02-05 21:18:11', '2023-02-05 21:18:11'),
(427, 'Gkh7wwTA', NULL, 'rmoNiCO@AcRomiL.COm', NULL, NULL, '2023-02-05 22:16:43', '2023-02-05 22:16:43'),
(428, 'm0xxkWnQ', NULL, 'jsgIrL567@gmail.cOM', NULL, 'STimHSov', '2023-02-06 01:27:07', '2023-02-06 01:27:07'),
(429, 'yG0Hy8Ad', NULL, 'SkLeChEr@aOl.CoM', NULL, 'rVmliIBm', '2023-02-06 01:27:19', '2023-02-06 01:27:19'),
(430, 'tIzcjIzO', NULL, '24DaNieLworkS9@GmaIl.CoM', NULL, 'xzaf7eRj', '2023-02-06 01:31:19', '2023-02-06 01:31:19'),
(431, 'bs6qkePa', NULL, 'MikI.kImuRA@diGiCert.COM', NULL, 'GrRWsrQw', '2023-02-06 01:31:59', '2023-02-06 01:31:59'),
(432, '2PPvVgwP', NULL, 'MIki.KiMURa@diGICerT.cOM', NULL, 'jiUfwcHu', '2023-02-06 01:32:07', '2023-02-06 01:32:07'),
(433, 'HjraJyDd', NULL, 'gailbarTOn96@yahOO.CoM', NULL, 'BXLm5QmA', '2023-02-06 02:49:17', '2023-02-06 02:49:17'),
(434, 'DnVCnHv8', NULL, 'sTeFy@SaskTEL.nET', NULL, 'mhT4RLJL', '2023-02-06 02:49:30', '2023-02-06 02:49:30'),
(435, 'iSgr487s', NULL, 'juAnItOPLuS109@GMAiL.coM', NULL, 'JIu0UZbK', '2023-02-06 03:13:07', '2023-02-06 03:13:07'),
(436, 'sMWIG6vy', NULL, 'janOZNoLa@gmaIL.cOm', NULL, NULL, '2023-02-06 03:15:08', '2023-02-06 03:15:08'),
(437, 'u4RZ9YVX', NULL, 'pOeTRY411@Aol.CoM', NULL, NULL, '2023-02-06 05:27:44', '2023-02-06 05:27:44'),
(438, '3avZNsDz', NULL, 'ANThoNYeDwARdS2000@gMAil.CoM', NULL, NULL, '2023-02-06 06:01:09', '2023-02-06 06:01:09'),
(439, 'iXQ1LCtU', NULL, 'ThUd.hUdSoN1@gmaiL.COM', NULL, 'm2M6CTPJ', '2023-02-06 06:04:10', '2023-02-06 06:04:10'),
(440, 'OlqqI6v6', NULL, 'mUr3935@SAskTEL.NEt', NULL, 'Sz8wGJoQ', '2023-02-06 06:04:21', '2023-02-06 06:04:21'),
(441, 'zfXC0YzE', NULL, 'JaminDjjim@GmaIl.com', NULL, 'YPlk6jTb', '2023-02-06 06:05:25', '2023-02-06 06:05:25'),
(442, 'Y1g4APlj', NULL, 'eClEcTIclOtUS@IcloUd.COm', NULL, 'MAGCUpXR', '2023-02-06 06:05:47', '2023-02-06 06:05:47'),
(443, 'GrouBHnP', NULL, 'knyWeidewhItE@aoL.Com', NULL, 'VClgTYGd', '2023-02-06 06:06:49', '2023-02-06 06:06:49'),
(444, '6CUfjTlb', NULL, 'PLaSTicOpERa@Yahoo.COm', NULL, 'mqOWTsqZ', '2023-02-06 07:12:25', '2023-02-06 07:12:25'),
(445, 'etkMKVHc', NULL, 'sUNny.huey@GMaiL.coM', NULL, 'N7mv8WQS', '2023-02-06 07:14:54', '2023-02-06 07:14:54'),
(446, 'OSZcFx1E', NULL, 'jOCARRIErEs@gMail.cOM', NULL, NULL, '2023-02-06 11:10:48', '2023-02-06 11:10:48');
INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `message`, `da`, `created_at`, `updated_at`) VALUES
(447, 'wvuwozXw', NULL, 'rueDAbrEnDA@gmAil.com', NULL, NULL, '2023-02-06 11:10:49', '2023-02-06 11:10:49'),
(448, 'uBIHIjmw', NULL, 'MwagOnER89@HOTmAIl.COm', NULL, NULL, '2023-02-06 11:11:24', '2023-02-06 11:11:24'),
(449, 'A4KujmWG', NULL, 'SHNeuRhErmAN@HOtMaiL.cOM', NULL, NULL, '2023-02-06 11:11:38', '2023-02-06 11:11:38'),
(450, 'Shoo7s0a', NULL, 'snakeSAlIvE@Cox.net', NULL, NULL, '2023-02-06 11:12:18', '2023-02-06 11:12:18'),
(451, '0Pfs9LID', NULL, 'roZLYnAbENie@HoTmAiL.cOm', NULL, NULL, '2023-02-06 11:32:14', '2023-02-06 11:32:14'),
(452, 'NxwKSW0D', NULL, 'AdAmDeNNIng73@GmAIL.COM', NULL, 'SdE2kgHN', '2023-02-06 14:44:19', '2023-02-06 14:44:19'),
(453, '3GmfJTS9', NULL, 'sTepHlAC.keY23@GMAiL.coM', NULL, NULL, '2023-02-06 15:55:05', '2023-02-06 15:55:05'),
(454, 'v0jbeZg7', NULL, 'jKapp@TUTanOTA.cOM', NULL, NULL, '2023-02-06 17:13:22', '2023-02-06 17:13:22'),
(455, 'hKEnvUCe', NULL, 'lARRy_aRCINO@YahoO.cOm', NULL, NULL, '2023-02-06 17:15:26', '2023-02-06 17:15:26'),
(456, 'gLvfx32o', NULL, 'AcCOuNtiNG@HiNToNGOlFClUB.cOM', NULL, NULL, '2023-02-06 17:15:40', '2023-02-06 17:15:40'),
(457, NULL, NULL, 'PawTiofrisCO@gMAil.COm', NULL, NULL, '2023-02-06 18:15:30', '2023-02-06 18:15:30'),
(458, NULL, NULL, 'FIvEkiDSlOVeniT@YAhOO.ca', NULL, NULL, '2023-02-06 18:15:31', '2023-02-06 18:15:31'),
(459, NULL, NULL, 'rheIL@sunrIsE.CH', NULL, NULL, '2023-02-06 18:15:39', '2023-02-06 18:15:39'),
(460, NULL, NULL, 'rIck.STRECK@gmaIl.cOM', NULL, NULL, '2023-02-06 18:15:47', '2023-02-06 18:15:47'),
(461, NULL, NULL, 'RaReNIx@GMaIl.coM', NULL, NULL, '2023-02-06 18:15:57', '2023-02-06 18:15:57'),
(462, NULL, NULL, 'rSimERal@C1ReALTy.COm', NULL, NULL, '2023-02-06 18:16:40', '2023-02-06 18:16:40'),
(463, NULL, NULL, 'AfrIcAsTuRWOld7104@hOTMail.CoM', NULL, NULL, '2023-02-06 18:18:03', '2023-02-06 18:18:03'),
(464, 'Z8exSS6e', NULL, 'hAz211@HoTMaIl.coM', NULL, NULL, '2023-02-06 20:58:13', '2023-02-06 20:58:13'),
(465, 'HMe6oP0p', NULL, 'rEMTzjR12@GmAIL.cOM', NULL, NULL, '2023-02-06 21:00:23', '2023-02-06 21:00:23'),
(466, 'y4vksINs', NULL, 'manAger@PRosTE.Sk', NULL, 'jn5PGbzM', '2023-02-06 21:20:54', '2023-02-06 21:20:54'),
(467, 'Db85EfF4', NULL, 'ReGis.bAnVillE@vIDeOTron.CA', NULL, '7uYk76S4', '2023-02-06 21:22:56', '2023-02-06 21:22:56'),
(468, 'orc96g9F', NULL, 'KikeaMAYA57@gmAil.CoM', NULL, 'f7qMTHWT', '2023-02-06 23:09:48', '2023-02-06 23:09:48'),
(469, 'xfyerRsd', NULL, 'bUSInesS@proste.SK', NULL, '2Thy7t6k', '2023-02-07 00:03:37', '2023-02-07 00:03:37'),
(470, 'NTfMBgcR', NULL, 'Sue@tUBBy.cOm', NULL, 'VE5f40nC', '2023-02-07 00:05:05', '2023-02-07 00:05:05'),
(471, 'hsmvn1aB', NULL, 'lArRY@TUBBY.com', NULL, 'GulS2Xgr', '2023-02-07 00:06:04', '2023-02-07 00:06:04'),
(472, 'LBS248SO', NULL, 'HAIRDESIgnR@aoL.COm', NULL, 'jd9qizpY', '2023-02-07 00:06:50', '2023-02-07 00:06:50'),
(473, 'C5lGlX5r', NULL, 'krisTen.raSCo@Yahoo.COM', NULL, 'M02R6JyM', '2023-02-07 00:07:12', '2023-02-07 00:07:12'),
(474, '13YUFTwV', NULL, 'akShatseP18@GMaIl.com', NULL, '3E6hOURf', '2023-02-07 00:07:17', '2023-02-07 00:07:17'),
(475, 'QwcjDxKi', NULL, 'cAroliNe.clarKE@PInKnANdU.com', NULL, '09VJq3MA', '2023-02-07 00:09:56', '2023-02-07 00:09:56'),
(476, NULL, NULL, 'JdTOomBS11@gmaIl.cOm', NULL, NULL, '2023-02-07 02:40:54', '2023-02-07 02:40:54'),
(477, NULL, NULL, 'pOetry411@AOL.Com', NULL, NULL, '2023-02-07 02:41:56', '2023-02-07 02:41:56'),
(478, 'tUcPQtWt', NULL, 'SNoWPride@mAil.coM', NULL, 'hpiyuUkQ', '2023-02-07 04:45:18', '2023-02-07 04:45:18'),
(479, NULL, NULL, 'fHL.GM.miKE@GmAiL.Com', NULL, NULL, '2023-02-07 05:09:06', '2023-02-07 05:09:06'),
(480, 'K95YKMhW', NULL, 'HAnkDinGguscH@gMaIL.CoM', NULL, 'Uos5pCqM', '2023-02-07 06:41:41', '2023-02-07 06:41:41'),
(481, 'rWVeef7W', NULL, 'kTuIbUa@yaHoo.cOm', NULL, NULL, '2023-02-07 09:51:02', '2023-02-07 09:51:02'),
(482, 'dLCsj5LG', NULL, 'BeNGAlsrEdS1957@GmAiL.coM', NULL, 'Tta9BkJi', '2023-02-07 10:24:38', '2023-02-07 10:24:38'),
(483, '3reRyUQq', NULL, 'AAVallOn78@gMaIl.CoM', NULL, 'QxOKLeJL', '2023-02-07 11:31:22', '2023-02-07 11:31:22'),
(484, 'iiT6co3o', NULL, 'reBECCaZalesKi@gmaiL.cOM', NULL, '01EP6jY3', '2023-02-07 11:32:19', '2023-02-07 11:32:19'),
(485, 'q4nvn2Pz', NULL, 'sTEphEN.j.BELK@gmaIL.com', NULL, 'XgH3O1St', '2023-02-07 11:33:22', '2023-02-07 11:33:22'),
(486, 'ORA7dVHl', NULL, 'vICTOR.AYaLA@fox40.coM', NULL, 'nWeGDDOt', '2023-02-07 11:34:20', '2023-02-07 11:34:20'),
(487, 'JVdamrZR', NULL, 'eRIcAh@hTRTOoLS.CoM', NULL, '2Md6sV5o', '2023-02-07 11:35:21', '2023-02-07 11:35:21'),
(488, 'Aak1RRgE', NULL, 'MomOF2boYs310@SBCgLobAl.NEt', NULL, 'AzkXQTUc', '2023-02-07 12:17:37', '2023-02-07 12:17:37'),
(489, '9REVmIe0', NULL, 'AnabEl.BUStOS@HoTMAiL.COm', NULL, '8UU1g4C5', '2023-02-07 13:41:53', '2023-02-07 13:41:53'),
(490, '1zKeh0mf', NULL, 'RmarTInS069@yAhOO.COm', NULL, '1THTbIAw', '2023-02-07 13:46:25', '2023-02-07 13:46:25'),
(491, 'U1tYT8yp', NULL, 'KWak114@GmAil.COm', NULL, NULL, '2023-02-07 18:50:15', '2023-02-07 18:50:15'),
(492, 'E16VnLpg', NULL, 'chUckCoWHer@YaHoo.Com', NULL, 'KAsrJbQM', '2023-02-07 20:15:36', '2023-02-07 20:15:36'),
(493, 'lUjGkYYW', NULL, 'melISsa.oNorRIS@GMAIl.CoM', NULL, '9eBkhAAl', '2023-02-07 20:15:39', '2023-02-07 20:15:39'),
(494, 'xWm3zPMA', NULL, 'HUgH.bEeCHy@GMaIL.cOm', NULL, 'Dbf5z5rz', '2023-02-07 20:17:29', '2023-02-07 20:17:29'),
(495, '6fa2FGBt', NULL, 'stRINgDom88@AOL.cOM', NULL, '56bCwcJ6', '2023-02-07 20:19:28', '2023-02-07 20:19:28'),
(496, 'UTfbhzOS', NULL, 'jOEhUrT@BeLLSOutH.neT', NULL, 'RGaYHCrr', '2023-02-07 20:19:41', '2023-02-07 20:19:41'),
(497, 'jrUWr4hq', NULL, 'jgErBER25@AMERiTECh.net', NULL, 'aqe6NIdP', '2023-02-07 20:39:05', '2023-02-07 20:39:05'),
(498, 'C084T0YU', NULL, 'JEnn@hAbITUalCHaOs.OrG', NULL, 'JfDFAUgo', '2023-02-07 20:41:10', '2023-02-07 20:41:10'),
(499, '9eBJCMws', NULL, 'MDuBe@cBhCFl.org', NULL, 'BogJa72E', '2023-02-07 20:41:33', '2023-02-07 20:41:33'),
(500, '3EVCOja6', NULL, 'CJABBAN@GmAIL.Com', NULL, 'R4NPRvzj', '2023-02-07 20:41:37', '2023-02-07 20:41:37'),
(501, 'dJ7jXldt', NULL, 'NFUeNtes2100@gMaIL.com', NULL, 'bTDQPulT', '2023-02-07 20:42:19', '2023-02-07 20:42:19'),
(502, 'oVTj2Zgd', NULL, 'FIvEKIdslOvENiT@yAHOO.Ca', NULL, 'PPHc6B9w', '2023-02-07 20:42:20', '2023-02-07 20:42:20'),
(503, 'JI22KUHM', NULL, 'fivESTARqUALitYcLEAn@gmaIl.Com', NULL, 'DtiPqLMh', '2023-02-07 20:42:21', '2023-02-07 20:42:21'),
(504, 'rXgX3MfX', NULL, 'P_mDOnEGaN@ymaiL.COM', NULL, 'gzb6Mq7K', '2023-02-07 20:56:04', '2023-02-07 20:56:04'),
(505, 'Loa3Kul1', NULL, 'HaPArk@tELUs.NET', NULL, 'gwvNbaM4', '2023-02-07 20:57:57', '2023-02-07 20:57:57'),
(506, NULL, NULL, 'CaROLHERNaNDEz.rITeTnOW@gmail.COm', NULL, NULL, '2023-02-07 22:14:28', '2023-02-07 22:14:28'),
(507, 'DqGpH8Ap', NULL, 'BeGaMRavEeNa11@GmAIl.Com', NULL, NULL, '2023-02-08 01:52:39', '2023-02-08 01:52:39'),
(508, 'ZRNX9FGa', NULL, 'ANOTE2rEad@YahOo.COm', NULL, NULL, '2023-02-08 02:52:35', '2023-02-08 02:52:35'),
(509, 'oQePe6dc', NULL, 'KoTtMAR@eaRH.Com', NULL, 'kj9UJ5WS', '2023-02-08 03:34:32', '2023-02-08 03:34:32'),
(510, '1uLOzpUi', NULL, 'Ritt.SERvProsTONeOAk@GmAiL.CoM', NULL, NULL, '2023-02-08 07:05:48', '2023-02-08 07:05:48'),
(511, 'OECT894N', NULL, 'bALeX@BaLaNCEs-ExpReSS.cOm', NULL, NULL, '2023-02-08 09:38:53', '2023-02-08 09:38:53'),
(512, '1sv2LDOi', NULL, 'shneuRherMAn@HOtmaIL.cOM', NULL, NULL, '2023-02-08 09:38:54', '2023-02-08 09:38:54'),
(513, 'efTZJVdY', NULL, 'JASoN.pondeR@FeDEX.cOM', NULL, NULL, '2023-02-08 09:39:41', '2023-02-08 09:39:41'),
(514, 'af5hIWZS', NULL, 'dgwS@gMX.net', NULL, NULL, '2023-02-08 09:39:51', '2023-02-08 09:39:51'),
(515, 'ouGmtVwn', NULL, 'rItt.sErvpRosTONeoAK@GMaiL.COm', NULL, NULL, '2023-02-08 09:41:18', '2023-02-08 09:41:18'),
(516, 'oUnJ3TU0', NULL, 'rItT.servproSToneoAk@GMail.com', NULL, NULL, '2023-02-08 09:41:49', '2023-02-08 09:41:49'),
(517, 'zw4b1KBv', NULL, 'SUpPort@RUNrAnking.CoM', NULL, NULL, '2023-02-08 10:03:39', '2023-02-08 10:03:39'),
(518, 'dHW5dEyI', NULL, 'JACA2006@oPtoNliNE.neT', NULL, NULL, '2023-02-08 11:08:22', '2023-02-08 11:08:22'),
(519, 'FJNiuhp0', NULL, 'StaCYGHEndeRsOn@mE.coM', NULL, NULL, '2023-02-08 11:37:40', '2023-02-08 11:37:40'),
(520, '9hMY8Y6l', NULL, 'lEO.1993@hOtMAil.IT', NULL, NULL, '2023-02-08 11:37:41', '2023-02-08 11:37:41'),
(521, 'lmkpEQhv', NULL, 'luxID.1018@gMail.cOM', NULL, 'dI2SlujU', '2023-02-08 11:49:07', '2023-02-08 11:49:07'),
(522, 'Xg2J7DDi', NULL, 'AlEx-21@lIve.It', NULL, 'pqqx2EOQ', '2023-02-08 11:49:08', '2023-02-08 11:49:08'),
(523, 'um23aEqZ', NULL, 'MduBE@cBhcFL.oRG', NULL, 'opBVQOtn', '2023-02-08 11:49:09', '2023-02-08 11:49:09'),
(524, 'lvSeIQgA', NULL, 'MAvERIcKRtaYlOR@YaHOO.cOm', NULL, 'EikqsrmI', '2023-02-08 11:49:22', '2023-02-08 11:49:22'),
(525, 'tHNRabxV', NULL, 'thELegEnDArykAKAsHi@GmAIl.coM', NULL, 'DYHijlQt', '2023-02-08 11:49:32', '2023-02-08 11:49:32'),
(526, 'Mg9eBxB9', NULL, 'jGeRBer25@amEritECH.nEt', NULL, 'JNZ1M9F0', '2023-02-08 11:49:34', '2023-02-08 11:49:34'),
(527, 'mEhYijfK', NULL, 'JgeRBeR25@AmEriTECh.Net', NULL, 'uaWpiM2v', '2023-02-08 11:49:54', '2023-02-08 11:49:54'),
(528, 'HZDYNg30', NULL, 'CYNicAlx21@GmaIL.coM', NULL, 'dEfTlMCp', '2023-02-08 11:49:58', '2023-02-08 11:49:58'),
(529, 'S1f1tEc7', NULL, 'JOSePHeBElE747@GMail.COm', NULL, 'xJ2bRvfY', '2023-02-08 11:50:00', '2023-02-08 11:50:00'),
(530, 'BhRO3DH1', NULL, 'cHADrOD110@gMaIL.CoM', NULL, 'UaqVlWVM', '2023-02-08 11:50:01', '2023-02-08 11:50:01'),
(531, 'u2GH92fH', NULL, 'xjjORDan9402@aOl.com', NULL, 'ItX9HR66', '2023-02-08 11:50:02', '2023-02-08 11:50:02'),
(532, 'oTnXEPNJ', NULL, 'Jason@FiSHErINteRIOrSGroup.cOM', NULL, '5XB9SB2J', '2023-02-08 11:50:03', '2023-02-08 11:50:03'),
(533, '661GxNZD', NULL, 'JMaRTIN@FoRDlUmbErsUPPLY.COm', NULL, 'Ve9t7vKs', '2023-02-08 11:50:10', '2023-02-08 11:50:10'),
(534, '12JhhZCz', NULL, 'ejW325@GmaiL.coM', NULL, 'e79akVz9', '2023-02-08 11:50:13', '2023-02-08 11:50:13'),
(535, '8ZpZvEHx', NULL, 'AwIlLIamSon@foRdLUMBErsuPPlY.COM', NULL, 'RzKYVz5E', '2023-02-08 11:50:17', '2023-02-08 11:50:17'),
(536, 'bC3uCpvr', NULL, 'JIMmiroW@AOL.com', NULL, 'xhWvLcVt', '2023-02-08 11:50:18', '2023-02-08 11:50:18'),
(537, 'Csv856Bf', NULL, 'jAyMEsAlexANdeR219@gMail.com', NULL, 'gzO12lKh', '2023-02-08 11:50:26', '2023-02-08 11:50:26'),
(538, 'Wp1k9h8C', NULL, 'MiKi.kimURa@digICerT.cOM', NULL, 'bgC2cjh4', '2023-02-08 11:50:33', '2023-02-08 11:50:33'),
(539, 'HSwLbNNv', NULL, 'Dan.mCcoNnAUgheY@GmaIL.coM', NULL, 'eO6E6BP6', '2023-02-08 11:50:34', '2023-02-08 11:50:34'),
(540, NULL, NULL, 'MAyeLIeRaMiReZ02@yahOo.coM', NULL, NULL, '2023-02-08 12:12:07', '2023-02-08 12:12:07'),
(541, NULL, NULL, 'Ila.Avinash1@gMAiL.coM', NULL, NULL, '2023-02-08 12:13:17', '2023-02-08 12:13:17'),
(542, NULL, NULL, 'geNERaTIoN.SnOw@OrANgE.FR', NULL, NULL, '2023-02-08 12:13:21', '2023-02-08 12:13:21'),
(543, NULL, NULL, 'BMCleOd@GUlFCOastfINanCIal.nEt', NULL, NULL, '2023-02-08 12:14:19', '2023-02-08 12:14:19'),
(544, NULL, NULL, 'TbkUYkENDalL@GUlFCoAStfInaNCIaL.Net', NULL, NULL, '2023-02-08 12:14:47', '2023-02-08 12:14:47'),
(545, NULL, NULL, 'lAURiTA.Moli@hOTMail.COM', NULL, NULL, '2023-02-08 12:25:15', '2023-02-08 12:25:15'),
(546, NULL, NULL, 'AleX-21@LIvE.iT', NULL, NULL, '2023-02-08 12:26:43', '2023-02-08 12:26:43'),
(547, NULL, NULL, 'lilSPOIleDpRinzEss@yAHoo.COM', NULL, NULL, '2023-02-08 12:26:50', '2023-02-08 12:26:50'),
(548, NULL, NULL, 'dAvidJdOrtCh@GmaIl.coM', NULL, NULL, '2023-02-08 12:27:12', '2023-02-08 12:27:12'),
(549, NULL, NULL, 'DGWS@gMx.net', NULL, NULL, '2023-02-08 12:27:37', '2023-02-08 12:27:37'),
(550, NULL, NULL, 'cELlINi_cHristIan@YAhOo.It', NULL, NULL, '2023-02-08 12:27:39', '2023-02-08 12:27:39'),
(551, NULL, NULL, 'tOnYmnC@gMAIl.cOm', NULL, NULL, '2023-02-08 12:28:03', '2023-02-08 12:28:03'),
(552, NULL, NULL, 'BLANK_378@hoTMaiL.cOM', NULL, NULL, '2023-02-08 13:18:36', '2023-02-08 13:18:36'),
(553, NULL, NULL, 'TylER.kILDE@mlgC.NET', NULL, NULL, '2023-02-08 13:18:46', '2023-02-08 13:18:46'),
(554, NULL, NULL, 'jUneroC1981@GmaIL.coM', NULL, NULL, '2023-02-08 13:19:01', '2023-02-08 13:19:01'),
(555, NULL, NULL, 'eNDerLeEnt@GmAiL.cOm', NULL, NULL, '2023-02-08 13:19:12', '2023-02-08 13:19:12'),
(556, NULL, NULL, 'lin.ChuNb@gmail.Com', NULL, NULL, '2023-02-08 13:19:16', '2023-02-08 13:19:16'),
(557, NULL, NULL, 'bstanleY08@gMAil.coM', NULL, NULL, '2023-02-08 13:19:37', '2023-02-08 13:19:37'),
(558, NULL, NULL, 'rUEDabrENdA@gmaIl.cOm', NULL, NULL, '2023-02-08 13:19:58', '2023-02-08 13:19:58'),
(559, NULL, NULL, 'JasON@caLljeFfy.COM', NULL, NULL, '2023-02-08 13:20:14', '2023-02-08 13:20:14'),
(560, NULL, NULL, 'CptHUNT01@Yahoo.COm', NULL, NULL, '2023-02-08 13:20:30', '2023-02-08 13:20:30'),
(561, NULL, NULL, 'KandEl_GYAn@YAhoO.COM', NULL, NULL, '2023-02-08 13:21:32', '2023-02-08 13:21:32'),
(562, '49ae82b3', NULL, 'NicsW74@gmX.Net', NULL, NULL, '2023-02-08 13:25:47', '2023-02-08 13:25:47'),
(563, 'JtbhYr0G', NULL, 'anGelIna11cORtEz@GMAIl.cOM', NULL, NULL, '2023-02-08 16:06:38', '2023-02-08 16:06:38'),
(564, 'QYXbcHiT', NULL, 'lYriCWIni30@hotMail.coM', NULL, NULL, '2023-02-08 16:12:23', '2023-02-08 16:12:23'),
(565, 'xkWAuOQa', NULL, 'DLvORE@yAHoo.COm', NULL, NULL, '2023-02-08 16:13:03', '2023-02-08 16:13:03'),
(566, 'HHnl0qKJ', NULL, 'mAsteRpIEceWOOdWORKS@comcast.NEt', NULL, NULL, '2023-02-08 16:13:13', '2023-02-08 16:13:13'),
(567, 'A1GgHKzv', NULL, 'generaTIoN.snoW@ORAnGe.fr', NULL, NULL, '2023-02-08 16:14:23', '2023-02-08 16:14:23'),
(568, 'Qv7P090J', NULL, 'rickPSS@ComCasT.neT', NULL, 'mpQpSI96', '2023-02-08 18:04:00', '2023-02-08 18:04:00'),
(569, 'TrAqUfOL', NULL, 'Judy@graNDopEningS-Us.cOM', NULL, 'PE82fAAp', '2023-02-08 18:04:21', '2023-02-08 18:04:21'),
(570, 'JsXz3Ab2', NULL, 'lEgit45277@GMaIL.COm', NULL, 'u6QaUbuR', '2023-02-08 18:04:21', '2023-02-08 18:04:21'),
(571, 'LU70dhpD', NULL, 'JeNN@THEkaraSgROuP.Com', NULL, '23riN9A9', '2023-02-08 18:04:34', '2023-02-08 18:04:34'),
(572, 'tt0roEvY', NULL, 'VIJay2SqLDBa@GmAiL.CoM', NULL, 'jz1QhXwg', '2023-02-08 18:04:45', '2023-02-08 18:04:45'),
(573, 'qNkhdejl', NULL, 'JP.MuLheRn@comcASt.NEt', NULL, '82qK4kHJ', '2023-02-08 18:04:49', '2023-02-08 18:04:49'),
(574, 'gFlYQB98', NULL, 'GailChESTER1@gmaiL.CoM', NULL, '1hiXwO7u', '2023-02-08 18:05:12', '2023-02-08 18:05:12'),
(575, '4ClmdbLK', NULL, 'BwdAnIels76@GMAIl.cOM', NULL, 'n3qT5cYo', '2023-02-08 18:05:28', '2023-02-08 18:05:28'),
(576, 'A1zD6D65', NULL, 'ssAuM@sbCGlOBal.NEt', NULL, NULL, '2023-02-08 18:41:06', '2023-02-08 18:41:06'),
(577, 'unFU7LsI', NULL, 'wNMt@aOl.COM', NULL, NULL, '2023-02-08 18:41:33', '2023-02-08 18:41:33'),
(578, 'vDW5lMlJ', NULL, 'OMAROg1@YaHoo.com', NULL, 'RpL8P1cV', '2023-02-08 19:42:48', '2023-02-08 19:42:48'),
(579, 'NuOiwmrP', NULL, 'omaRoRtIz1957@gMAIL.Com', NULL, 'Owc07uy5', '2023-02-08 19:42:57', '2023-02-08 19:42:57'),
(580, '6ugHAYHu', NULL, 'oFfIcEmanageR@TwINbEEcH.CoM', NULL, NULL, '2023-02-08 19:56:05', '2023-02-08 19:56:05'),
(581, 'rHaMYRNb', NULL, 'kAmINDErPAl@YAHOo.CoM', NULL, 'znqdj3QX', '2023-02-08 20:17:18', '2023-02-08 20:17:18'),
(582, 'zys7tTog', NULL, 'GENERAtIoN.snOW@OraNGe.FR', NULL, NULL, '2023-02-08 20:44:36', '2023-02-08 20:44:36'),
(583, 'bfWDy8Fa', NULL, 'GeNEraTIon.SNOW@OrANge.fR', NULL, NULL, '2023-02-08 20:45:10', '2023-02-08 20:45:10'),
(584, 'EHNswe80', NULL, 'aBrewEr07.Ab@GMAil.Com', NULL, NULL, '2023-02-08 20:45:38', '2023-02-08 20:45:38'),
(585, 'fYtYVuHW', NULL, 'dEsCUbrIrvIDa@Gmail.cOM', NULL, NULL, '2023-02-08 20:45:51', '2023-02-08 20:45:51'),
(586, '7eBqG9BS', NULL, 'liloNdosoI87@GmaiL.cOm', NULL, NULL, '2023-02-08 20:46:37', '2023-02-08 20:46:37'),
(587, '2YBHDEdC', NULL, 'Shelbyt96@HoTMAIL.cOm', NULL, NULL, '2023-02-08 20:47:01', '2023-02-08 20:47:01'),
(588, 'ecmXigh0', NULL, 'CaLeBmiNsON@GmAil.CoM', NULL, NULL, '2023-02-08 20:47:56', '2023-02-08 20:47:56'),
(589, '8iOuRJIR', NULL, 'rheIL@sUnRise.CH', NULL, NULL, '2023-02-08 20:48:07', '2023-02-08 20:48:07'),
(590, 'XVeMaIKn', NULL, 'DuKenuKeEm117@gmAIL.com', NULL, 'kZCOh6dv', '2023-02-08 21:20:12', '2023-02-08 21:20:12'),
(591, '95npt50Q', NULL, 'Cmack@INTechinNOVAtiONS.cOM', NULL, 'dmK76Owj', '2023-02-08 21:20:16', '2023-02-08 21:20:16'),
(592, '0VT8H8Yw', NULL, 'mORNInGMEadoW9@gmAil.Com', NULL, 'vR0mrm1m', '2023-02-08 21:20:18', '2023-02-08 21:20:18'),
(593, 'h6Fngfv4', NULL, 'JLEGaSpi09@gmAiL.COM', NULL, '9urbEu4S', '2023-02-08 21:20:52', '2023-02-08 21:20:52'),
(594, '9Far6WCW', NULL, 'e.RILeYjOYce@GmaIL.Com', NULL, 'Tpv4nTEf', '2023-02-08 21:21:07', '2023-02-08 21:21:07'),
(595, '27e5TD5n', NULL, 'FLYnNkiNg@hOtMaIL.CoM', NULL, 'PImojIfq', '2023-02-08 21:22:37', '2023-02-08 21:22:37'),
(596, 'I1b3fl74', NULL, 'aDLOYOlA@hoTmAil.COm', NULL, NULL, '2023-02-08 22:35:47', '2023-02-08 22:35:47'),
(597, 'qxIrTkdj', NULL, 'AShlEy_mcDufFIE0101@YahOO.cOm', NULL, NULL, '2023-02-08 22:37:31', '2023-02-08 22:37:31'),
(598, 'ev8LrINL', NULL, 'AQuatTROcKI@GMaIl.cOm', NULL, '6pcxluwM', '2023-02-08 23:00:00', '2023-02-08 23:00:00'),
(599, 's5aJFZhC', NULL, 'reDrAider89@VeRIzON.nEt', NULL, NULL, '2023-02-09 00:49:00', '2023-02-09 00:49:00'),
(600, '0tKbbD65', NULL, 'anotE2ReAd@yAhoO.COM', NULL, NULL, '2023-02-09 00:49:09', '2023-02-09 00:49:09'),
(601, NULL, NULL, 'dgelEtA5@tELus.nET', NULL, NULL, '2023-02-09 01:51:44', '2023-02-09 01:51:44'),
(602, NULL, NULL, 'eNdeRLEeNt@gmaiL.COm', NULL, NULL, '2023-02-09 01:52:58', '2023-02-09 01:52:58'),
(603, 'o7VZm0Gw', NULL, 'DEan@SOXfENCE.COm', NULL, NULL, '2023-02-09 02:07:38', '2023-02-09 02:07:38'),
(604, 'ET72oZ5k', NULL, 'MoNikApInzOn@SBcGlObAl.nET', NULL, NULL, '2023-02-09 02:09:37', '2023-02-09 02:09:37'),
(605, 'bDMg0c4M', NULL, 'AnkiTVOrA20@GMAil.com', NULL, 'IUzGOarq', '2023-02-09 04:53:42', '2023-02-09 04:53:42'),
(606, 'RbjDWPR3', NULL, 'BRETtA_15@hoTmAil.COM', NULL, '8jgflTbo', '2023-02-09 05:01:19', '2023-02-09 05:01:19'),
(607, 'LDxdQxLt', NULL, 'cATTy.MurDoCh@gMAil.com', NULL, NULL, '2023-02-09 08:49:21', '2023-02-09 08:49:21'),
(608, 'NlrHrvqz', NULL, 'DELEONceLIA@sbcGlobAL.NeT', NULL, NULL, '2023-02-09 08:49:45', '2023-02-09 08:49:45'),
(609, 'ts4tbmOG', NULL, 'sASuKeH8Pie@HOtmaIL.CoM', NULL, NULL, '2023-02-09 08:51:20', '2023-02-09 08:51:20'),
(610, 'fUez88V0', NULL, 'JEnN@THeKarAsGROuP.CoM', NULL, NULL, '2023-02-09 08:51:55', '2023-02-09 08:51:55'),
(611, NULL, NULL, 'jOSH.cap@ComCast.NET', NULL, NULL, '2023-02-09 09:55:37', '2023-02-09 09:55:37'),
(612, 'oNP4n8zs', NULL, 'GHaRtLEy@ComcASt.Net', NULL, 'HyTU7SVp', '2023-02-09 15:33:44', '2023-02-09 15:33:44'),
(613, 'IKHS4WaE', NULL, 'mAAMEfOSUAh@HOtmAIL.COM', NULL, 'e8KCGssD', '2023-02-09 15:34:24', '2023-02-09 15:34:24'),
(614, 'dxqwlBgn', NULL, 'GEnegAu02@GmaIL.cOM', NULL, 'N5Ul5Ao3', '2023-02-09 16:21:26', '2023-02-09 16:21:26'),
(615, 'Xd8RcdzG', NULL, 'KrUESCH50@GmAiL.CoM', NULL, 'c3hQv8Ce', '2023-02-09 16:22:05', '2023-02-09 16:22:05'),
(616, 'M33HT64x', NULL, 'NadiaAdNAn2828@GmAil.cOm', NULL, 'L4OsA8KQ', '2023-02-09 16:22:41', '2023-02-09 16:22:41'),
(617, 'N4oKcGET', NULL, 'RMONIco@AcrOmIL.coM', NULL, '8YMlsQiu', '2023-02-09 16:23:04', '2023-02-09 16:23:04'),
(618, 'IosIklOR', NULL, 'sgjOERRes@gMAil.cOm', NULL, 'itzjEnib', '2023-02-09 16:24:10', '2023-02-09 16:24:10'),
(619, 'd5lVD3Rb', NULL, 'bRkHoRiZOnSYogA@HoTMail.com', NULL, 'tsKWgpi0', '2023-02-09 18:43:42', '2023-02-09 18:43:42'),
(620, '7bvoxQ1m', NULL, 'CRIzZIXX@GMAIl.com', NULL, 'slXGzJJu', '2023-02-09 18:45:49', '2023-02-09 18:45:49'),
(621, 'PcVR8nWs', NULL, 'HUdSOnFJm@gmaiL.Com', NULL, 'X1ske4Xo', '2023-02-09 18:46:05', '2023-02-09 18:46:05'),
(622, 'YVXDfCXb', NULL, '5I1Z_generic_f8d23966_kkumhouse.com@data-backup-store.com', NULL, NULL, '2023-02-09 19:25:12', '2023-02-09 19:25:12'),
(623, '0ihtndwQ', NULL, 'uynK_generic_e142ea1f_kkumhouse.com@data-backup-store.com', NULL, 'L25qFLyP', '2023-02-09 19:25:20', '2023-02-09 19:25:20'),
(624, NULL, NULL, 'zfOi_generic_b18a5b28_kkumhouse.com@data-backup-store.com', NULL, NULL, '2023-02-09 19:25:29', '2023-02-09 19:25:29'),
(625, 'DY2cYB8W', NULL, 'rbodOnyI@lrsINc.coM', NULL, NULL, '2023-02-09 22:07:55', '2023-02-09 22:07:55'),
(626, 'kscL7qSg', NULL, 'beCKerTammY@Hotmail.COm', NULL, NULL, '2023-02-09 22:08:54', '2023-02-09 22:08:54'),
(627, 'yZK2PFMH', NULL, 'JimMIROw@aOl.CoM', NULL, NULL, '2023-02-09 22:09:20', '2023-02-09 22:09:20'),
(628, 'IjAZJBck', NULL, 'gAry@Tavs1.CoM', NULL, NULL, '2023-02-09 22:11:40', '2023-02-09 22:11:40'),
(629, NULL, NULL, 'TOnymONtanio@gmAIL.COM', NULL, NULL, '2023-02-09 23:16:41', '2023-02-09 23:16:41'),
(630, NULL, NULL, 'gijAne111883@Aol.Com', NULL, NULL, '2023-02-09 23:16:48', '2023-02-09 23:16:48'),
(631, NULL, NULL, 'dIl51184@Gmail.CoM', NULL, NULL, '2023-02-09 23:16:56', '2023-02-09 23:16:56'),
(632, NULL, NULL, 'chYDen@cNsHEALtHCarE.oRG', NULL, NULL, '2023-02-09 23:17:10', '2023-02-09 23:17:10'),
(633, 'kFJqQu1j', NULL, 'THArawil12@gmail.com', NULL, 'nRBwUp73', '2023-02-10 02:40:56', '2023-02-10 02:40:56'),
(634, '5emHRMyu', NULL, 'ram.eDvIn@GmaIl.cOM', NULL, 'VfhOzvnT', '2023-02-10 02:41:40', '2023-02-10 02:41:40'),
(635, 'cXtR5q6r', NULL, 'aLANRDavIS@gmaIL.cOM', NULL, 'tj1sGRIK', '2023-02-10 02:41:53', '2023-02-10 02:41:53'),
(636, 'As72IO3B', NULL, 'scOtTKELLIoTt@gmail.COm', NULL, '0j9AAKv4', '2023-02-10 02:42:01', '2023-02-10 02:42:01'),
(637, '6lW1ZvJm', NULL, 'RMoNiCo@AcroMIL.CoM', NULL, 'MIGXIIJd', '2023-02-10 02:42:06', '2023-02-10 02:42:06'),
(638, 'i8jOlrjV', NULL, 'heATheRNcarLTon@YAHOO.coM', NULL, 'CpUAlwbq', '2023-02-10 02:42:37', '2023-02-10 02:42:37'),
(639, '2X6dnfMQ', NULL, 'bmCLEoD@gULfCoaStfInanCIaL.nEt', NULL, 'bXur2TTH', '2023-02-10 02:45:11', '2023-02-10 02:45:11'),
(640, 'YpU7Ryrx', NULL, 'RMoNiCO@ACRoMIl.com', NULL, NULL, '2023-02-10 04:18:58', '2023-02-10 04:18:58'),
(641, '7Wee9Uej', NULL, 'NIKMoLokan@YAHoo.CoM', NULL, NULL, '2023-02-10 04:32:29', '2023-02-10 04:32:29'),
(642, NULL, NULL, 'dmckIERNAN1@comcasT.NeT', NULL, NULL, '2023-02-10 04:49:12', '2023-02-10 04:49:12'),
(643, NULL, NULL, 'enDErLeent@gmAIl.Com', NULL, NULL, '2023-02-10 04:49:53', '2023-02-10 04:49:53'),
(644, NULL, NULL, 'EriCAH@hTRToolS.COM', NULL, NULL, '2023-02-10 04:50:04', '2023-02-10 04:50:04'),
(645, NULL, NULL, 'tgorMS10@GMAil.cOm', NULL, NULL, '2023-02-10 04:50:10', '2023-02-10 04:50:10'),
(646, 'TpBhPkrK', NULL, 'NSTeNgeR@SBcGLoBAl.nET', NULL, NULL, '2023-02-10 08:02:11', '2023-02-10 08:02:11'),
(647, NULL, NULL, 'FEstRE@GmAIL.COm', NULL, NULL, '2023-02-10 09:38:38', '2023-02-10 09:38:38'),
(648, 'fle6LWEL', NULL, 'waleEd.AZAB@kAMSCO.COm', NULL, NULL, '2023-02-10 12:46:39', '2023-02-10 12:46:39'),
(649, '4sz7z1jk', NULL, 'tGORMS10@GmAil.com', NULL, NULL, '2023-02-10 13:09:35', '2023-02-10 13:09:35'),
(650, NULL, NULL, 'yUzHANG_huANg@yaHOO.cOm', NULL, NULL, '2023-02-10 13:20:28', '2023-02-10 13:20:28'),
(651, 'Uyp1Td6X', NULL, 'satiNT@bGSU.edu', NULL, 'w5XKyICl', '2023-02-10 13:36:01', '2023-02-10 13:36:01'),
(652, 'i7pwgI5j', NULL, 'FeLIXWeInG@Gmx.NeT', NULL, NULL, '2023-02-10 14:03:03', '2023-02-10 14:03:03'),
(653, 'OQY1LNH9', NULL, 'UdIT2201@GMAIL.Com', NULL, NULL, '2023-02-10 14:48:58', '2023-02-10 14:48:58'),
(654, 'FpyD5NNH', NULL, 'guRLEENKAuR538@GMAiL.com', NULL, NULL, '2023-02-10 14:49:25', '2023-02-10 14:49:25'),
(655, 'Vt2Iwlq3', NULL, 'SsME2050@Aol.COM', NULL, NULL, '2023-02-10 14:49:32', '2023-02-10 14:49:32'),
(656, 'TJ4nBCtI', NULL, 'daNNyRg13@AOl.com', NULL, NULL, '2023-02-10 16:39:37', '2023-02-10 16:39:37'),
(657, 'luIuLhaO', NULL, 'ARuNaRAD@gMaIL.COm', NULL, NULL, '2023-02-10 16:40:18', '2023-02-10 16:40:18'),
(658, 'n5rHQBrQ', NULL, 'AMiLLEr@garcIasuRVEYORS.Com', NULL, NULL, '2023-02-10 16:40:41', '2023-02-10 16:40:41'),
(659, 'WFryHFcq', NULL, 'AraAP1982@gMail.COM', NULL, NULL, '2023-02-10 16:41:07', '2023-02-10 16:41:07'),
(660, 'BzmpAPXe', NULL, 'KeOGhan.SUZAnne@gmAIL.CoM', NULL, NULL, '2023-02-10 16:41:26', '2023-02-10 16:41:26'),
(661, 'Mn9KTyIK', NULL, 'jAMmyJAmDUFF@gMAIl.CoM', NULL, NULL, '2023-02-10 16:41:40', '2023-02-10 16:41:40'),
(662, 'cEkCoQAe', NULL, 'bASURtUS@OPtonLiNe.net', NULL, NULL, '2023-02-10 16:41:54', '2023-02-10 16:41:54'),
(663, 'HdokvAWL', NULL, 'cONStRuctiOn9193@GMaIl.coM', NULL, 'jIRPnPMJ', '2023-02-10 17:51:10', '2023-02-10 17:51:10'),
(664, 'flMQy27j', NULL, 'bRaNsOnenT@oUTlOOK.coM', NULL, 'RA5nG0a4', '2023-02-10 18:03:50', '2023-02-10 18:03:50'),
(665, 'xWhr96Gj', NULL, 'DArReLlhAssEtT@GmaIL.Com', NULL, 'Zu2cCtpC', '2023-02-10 18:04:28', '2023-02-10 18:04:28'),
(666, 'cBa9J1K9', NULL, 'kItypaCO400@GMAIl.coM', NULL, 'xdK0og2B', '2023-02-10 18:09:20', '2023-02-10 18:09:20'),
(667, 'ibZR8Q9J', NULL, 'JAWSHAMMErnS@GmaIl.cOm', NULL, 'nyNgmqUl', '2023-02-10 18:09:42', '2023-02-10 18:09:42'),
(668, 'PReAnYQj', NULL, 'saimaSaYeeDkhAN@GOOgLEmaIL.CoM', NULL, 'IxdPAlWe', '2023-02-10 18:10:08', '2023-02-10 18:10:08'),
(669, 'x0oMPvSq', NULL, 'lewISfoRdliNColN@GMAIl.CoM', NULL, '6lU0hqGa', '2023-02-10 23:31:01', '2023-02-10 23:31:01'),
(670, '2PWOhc6O', NULL, 'sAmMY.HOLt@GMaiL.Com', NULL, NULL, '2023-02-11 00:15:40', '2023-02-11 00:15:40'),
(671, 'xFzhWzHl', NULL, 'jFeLkner@GMAIl.Com', NULL, NULL, '2023-02-11 00:16:04', '2023-02-11 00:16:04'),
(672, 'haTNDxAT', NULL, 'JJF101@lIVe.COM', NULL, 'h8R5uiCm', '2023-02-11 01:07:19', '2023-02-11 01:07:19'),
(673, '6CxpZuMU', NULL, 'TbKuYKeNDALL@gulfcOAStfINanCiAl.NEt', NULL, '7GEPOC5a', '2023-02-11 01:08:37', '2023-02-11 01:08:37'),
(674, 'jp3U8Chj', NULL, '01tAhiR.ali@gmAiL.cOm', NULL, 'oaoJaWBU', '2023-02-11 01:08:38', '2023-02-11 01:08:38'),
(675, 'FoC2G4es', NULL, 'FiVestaRqUALITyclEAn@gmail.cOM', NULL, 'oj2KV1PY', '2023-02-11 01:09:36', '2023-02-11 01:09:36'),
(676, 'W35bxcca', NULL, 'savaNnaH.HOlzwarTH@gMaIl.com', NULL, NULL, '2023-02-11 02:17:11', '2023-02-11 02:17:11'),
(677, '3pfD74oN', NULL, 'fyvoNpOpE@GMAIL.com', NULL, NULL, '2023-02-11 02:17:14', '2023-02-11 02:17:14'),
(678, '2ANuKYux', NULL, 'iTSMenItinasAtI@GmaIL.COM', NULL, NULL, '2023-02-11 02:20:07', '2023-02-11 02:20:07'),
(679, '47b0dFro', NULL, 'daNcoLtURI@YaHOO.COm', NULL, NULL, '2023-02-11 02:20:22', '2023-02-11 02:20:22'),
(680, 'YJcoij7W', NULL, 'GRAZIAnO20@GmAIL.COm', NULL, NULL, '2023-02-11 02:21:15', '2023-02-11 02:21:15'),
(681, 'POYXkUnT', NULL, 'ToNyAtthOMas333@gmaiL.Com', NULL, 'XhH1Bejh', '2023-02-11 03:03:01', '2023-02-11 03:03:01'),
(682, 'B9j822Zc', NULL, 'pHIlemoNHaGman1337@GmAIL.com', NULL, NULL, '2023-02-11 14:52:27', '2023-02-11 14:52:27'),
(683, '5Nb4RoQX', NULL, 'KysERCM@gmAil.cOm', NULL, NULL, '2023-02-11 16:02:52', '2023-02-11 16:02:52'),
(684, 'HBoRDMUx', NULL, 'JmOrALeS9997@GmAIL.CoM', NULL, 'clohcBqL', '2023-02-11 17:57:12', '2023-02-11 17:57:12'),
(685, 'Mike Arthurs', '88778432382', 'no-replyvedo@gmail.com', NULL, NULL, '2023-02-11 19:02:51', '2023-02-11 19:02:51'),
(686, 'nZU5san0', NULL, 'leoNARdOSerRANo97@GMAIl.coM', NULL, '8qtZj6M6', '2023-02-11 20:47:37', '2023-02-11 20:47:37'),
(687, 'CcW3klYj', NULL, 'mMCCrAY718@GmAIL.COM', NULL, 'tUsT4wDk', '2023-02-12 01:24:12', '2023-02-12 01:24:12'),
(688, 'V20GxaTv', NULL, 'LJC@UPPiNghAM.cO.uk', NULL, 'crJViWB7', '2023-02-12 09:42:56', '2023-02-12 09:42:56'),
(689, 'xgvpKYVB', NULL, 'BheTER@GmAil.cOM', NULL, NULL, '2023-02-12 10:41:45', '2023-02-12 10:41:45'),
(690, 'VJf9JtrQ', NULL, 'PUrtiGERaRd@gMAil.cOm', NULL, 'jQpWJ3Af', '2023-02-12 12:09:37', '2023-02-12 12:09:37'),
(691, 'beirbyFX', NULL, 'sanjaY.mIshra1@gmAiL.cOm', NULL, 'Z6Bth3ID', '2023-02-12 12:12:23', '2023-02-12 12:12:23'),
(692, '4Q0znulj', NULL, 'cLAIret_uk@HOtMaIl.com', NULL, NULL, '2023-02-12 16:51:49', '2023-02-12 16:51:49'),
(693, 'GyleCfAv', NULL, 'SeiTzIngerGaBrieLle@yaHOO.coM', NULL, 'V3iO65bR', '2023-02-12 17:26:47', '2023-02-12 17:26:47'),
(694, 'CN0kR7Dz', NULL, 'milLERsue56@gmail.coM', NULL, NULL, '2023-02-12 18:33:19', '2023-02-12 18:33:19'),
(695, 'y9BYzOFq', NULL, 'MillErSUE56@GmAil.COM', NULL, NULL, '2023-02-12 18:33:49', '2023-02-12 18:33:49'),
(696, 'RceNWdjx', NULL, 'ElvGuI@mSn.COM', NULL, NULL, '2023-02-12 19:07:09', '2023-02-12 19:07:09'),
(697, 'akkcAWnI', NULL, 'asTRId.sIbBeRt@gmx.NeT', NULL, NULL, '2023-02-12 19:55:50', '2023-02-12 19:55:50'),
(698, '958L27Cw', NULL, 'CAItlYNReneedILleY@yAHOO.cOm', NULL, NULL, '2023-02-12 19:56:48', '2023-02-12 19:56:48'),
(699, 'yFdrpHqY', NULL, 'ChRiSrEID923@gMAIl.COM', NULL, NULL, '2023-02-12 20:16:22', '2023-02-12 20:16:22'),
(700, 'IGCq4FdB', NULL, 'jEnN@hABItUalCHaOS.OrG', NULL, NULL, '2023-02-12 20:16:47', '2023-02-12 20:16:47'),
(701, 'acXzkqNw', NULL, 'gGRobaYo@gmAil.CoM', NULL, 'hJoz9X8L', '2023-02-12 20:17:30', '2023-02-12 20:17:30'),
(702, 'BhLDYqpx', NULL, 'gGrOBayo@gMAiL.COm', NULL, NULL, '2023-02-12 20:18:07', '2023-02-12 20:18:07'),
(703, 'EQJbafGG', NULL, 'giaCOmo.mAnEssi@ElSenuclEAR.Com', NULL, '9Bafuho1', '2023-02-12 20:27:23', '2023-02-12 20:27:23'),
(704, 'ZSVTaUZp', NULL, 'kArEnlaSsItEr11@gmAil.cOm', NULL, NULL, '2023-02-12 21:26:17', '2023-02-12 21:26:17'),
(705, '3PjbMuvs', NULL, 'GlOCKE_thE_real@Gmx.NEt', NULL, NULL, '2023-02-12 21:26:47', '2023-02-12 21:26:47'),
(706, 'OdtkENUU', NULL, 'GEnerAtiOn.snOW@oRAnGe.FR', NULL, NULL, '2023-02-12 21:27:16', '2023-02-12 21:27:16'),
(707, 'i1XdHzGh', NULL, 'gENeRatION.snOw@Orange.fR', NULL, NULL, '2023-02-12 21:27:16', '2023-02-12 21:27:16'),
(708, '1tSGfYXe', NULL, 'gLoCKe_tHe_rEAL@GMx.nEt', NULL, NULL, '2023-02-12 21:27:22', '2023-02-12 21:27:22'),
(709, 'KDukwXU4', NULL, 'gLOCkE_THE_REaL@gMX.NeT', NULL, NULL, '2023-02-12 21:27:40', '2023-02-12 21:27:40'),
(710, 'hDbdrHhq', NULL, 'geNeraTiOn.sNOW@orAnGE.Fr', NULL, NULL, '2023-02-12 21:27:56', '2023-02-12 21:27:56'),
(711, 'Bsi5K8Xq', NULL, 'MEREndONi@hOtMail.com', NULL, NULL, '2023-02-12 21:38:27', '2023-02-12 21:38:27'),
(712, 'z2qgegT4', NULL, 'GlocKe_THe_reaL@GmX.nET', NULL, NULL, '2023-02-12 21:38:30', '2023-02-12 21:38:30'),
(713, '8x9HvmgQ', NULL, 'hEcToRCOV21@Gmail.com', NULL, 'DAGZSDLW', '2023-02-12 22:42:44', '2023-02-12 22:42:44'),
(714, 'idGxZ6ji', NULL, '8603181419@VtExT.COM', NULL, 's59Mq31u', '2023-02-12 22:42:56', '2023-02-12 22:42:56'),
(715, 'fDnZa3QG', NULL, '14045767613@VTEXT.cOM', NULL, 'Amqun8M5', '2023-02-12 22:43:10', '2023-02-12 22:43:10'),
(716, '4Clz5C2r', NULL, 'BraNDonoMAhOneY@gmAil.CoM', NULL, 'lUc38eVi', '2023-02-12 22:43:15', '2023-02-12 22:43:15'),
(717, 'JoR1h9Lf', NULL, 'uLlriCH-MeiEr@T-oNLIne.de', NULL, 'fL1dCBLX', '2023-02-12 22:43:33', '2023-02-12 22:43:33'),
(718, 'w3XLGSRD', NULL, 'CbC.jmLS@GMAIl.Com', NULL, 'Juq9eRmc', '2023-02-12 22:44:21', '2023-02-12 22:44:21'),
(719, 'VRBzJjrj', NULL, 'DAnnY-ScHattENbErG@hOTMaIl.De', NULL, 'INndPaYB', '2023-02-12 22:45:11', '2023-02-12 22:45:11'),
(720, 'irkoEmaG', NULL, 'ACHeSthegOat@gmaIl.cOm', NULL, NULL, '2023-02-12 23:13:40', '2023-02-12 23:13:40'),
(721, 'feDXLlI1', NULL, 'RPEtErpAuL@veriZoN.NET', NULL, NULL, '2023-02-13 04:31:59', '2023-02-13 04:31:59'),
(722, 'iht1smvZ', NULL, 'mALbeRTorIo@gMAil.COm', NULL, NULL, '2023-02-13 05:41:08', '2023-02-13 05:41:08'),
(723, '52Li1mo4', NULL, 'JasOn.PONDer@FeDEX.COm', NULL, NULL, '2023-02-13 05:41:12', '2023-02-13 05:41:12'),
(724, 'MTK67sG7', NULL, 'FHL.gM.mIKE@GmaIL.CoM', NULL, 'PLkCovY3', '2023-02-13 14:49:15', '2023-02-13 14:49:15'),
(725, 'IPoaYFAi', NULL, 'coUrTneYvAnDeRFLuGHt@GMaiL.coM', NULL, 'kzCnMLRi', '2023-02-13 14:50:03', '2023-02-13 14:50:03'),
(726, 'aMP2Yhyl', NULL, 'LoUiscAstillo.DEV@GmaiL.cOm', NULL, 'gaXF4Zum', '2023-02-13 14:51:30', '2023-02-13 14:51:30'),
(727, 'b2BzElg6', NULL, 'GLOcKE_THe_ReAl@gmX.NeT', NULL, NULL, '2023-02-13 15:13:13', '2023-02-13 15:13:13'),
(728, 'i1XRq7kz', NULL, 'INfo@swEEtHEAt.CO', NULL, NULL, '2023-02-13 15:13:16', '2023-02-13 15:13:16'),
(729, '19EjkLHT', NULL, 'kATiegRGr@gMaiL.COM', NULL, NULL, '2023-02-13 15:13:24', '2023-02-13 15:13:24'),
(730, '9C65XruO', NULL, 'CarDS22_2002@HotmAIl.COm', NULL, NULL, '2023-02-13 15:14:16', '2023-02-13 15:14:16'),
(731, 'JtGdI8Iu', NULL, 'TaMmYLAVon08@GMaIL.COM', NULL, NULL, '2023-02-13 15:14:26', '2023-02-13 15:14:26'),
(732, NULL, NULL, 'oRi_SopH@yAhOo.cOm', NULL, NULL, '2023-02-13 17:00:54', '2023-02-13 17:00:54'),
(733, NULL, NULL, 'tbkUYkeNdalL@GulfCOAstFinanciAL.net', NULL, NULL, '2023-02-13 17:01:32', '2023-02-13 17:01:32'),
(734, 'Swips', '88155349434', 'uec080ey@hotmail.com', NULL, NULL, '2023-02-13 17:28:48', '2023-02-13 17:28:48'),
(735, 'a6JWdSlc', NULL, 'cHeVy_V10@HOtMAiL.Com', NULL, NULL, '2023-02-13 18:18:46', '2023-02-13 18:18:46'),
(736, 'to2XttPi', NULL, 's.rIGoL@peRsPeCtivE-pErSonAL.dE', NULL, NULL, '2023-02-13 18:19:04', '2023-02-13 18:19:04'),
(737, '9i6q1riT', NULL, 'A.Mather1@hoTmaIL.CoM', NULL, NULL, '2023-02-13 18:19:40', '2023-02-13 18:19:40'),
(738, 'TgbipP5d', NULL, 'KiMmaCE11@aOL.COm', NULL, NULL, '2023-02-13 18:20:47', '2023-02-13 18:20:47'),
(739, '4tHOpE4d', NULL, 'khilLMonEy@iCLouD.COm', NULL, NULL, '2023-02-13 19:02:36', '2023-02-13 19:02:36'),
(740, 'VeMnswEp', NULL, 'gsUNIL74@gmAIl.CoM', NULL, NULL, '2023-02-13 19:02:49', '2023-02-13 19:02:49'),
(741, 'JfqV2HRW', NULL, 'kz.reIGhARD@GMAil.COm', NULL, NULL, '2023-02-13 19:03:19', '2023-02-13 19:03:19'),
(742, 'ejPOYl8u', NULL, 'ELleSjuLieN@YAHoO.fr', NULL, NULL, '2023-02-13 19:03:21', '2023-02-13 19:03:21'),
(743, 'H2T7cpsf', NULL, 'kKLC3@hoTmaiL.cOm', NULL, NULL, '2023-02-13 19:03:41', '2023-02-13 19:03:41'),
(744, 'eYGy3Td2', NULL, 'hEwLETt@weIGHtNomoreDIeTcENteR.com', NULL, NULL, '2023-02-13 19:03:44', '2023-02-13 19:03:44'),
(745, 'LYvel64y', NULL, 'waMego.Dms@gmaIL.cOM', NULL, NULL, '2023-02-13 19:03:45', '2023-02-13 19:03:45'),
(746, 'VgILIy0y', NULL, 'MARKDIsanTo@gmAil.coM', NULL, NULL, '2023-02-13 19:04:40', '2023-02-13 19:04:40'),
(747, 'RUddklss', NULL, 'AngeL@AMuRpHYLegAl.cOm', NULL, NULL, '2023-02-13 19:04:55', '2023-02-13 19:04:55'),
(748, '9L1IuydS', NULL, '3537705846@qq.coM', NULL, NULL, '2023-02-13 19:04:56', '2023-02-13 19:04:56'),
(749, '2uleEZvS', NULL, 'RENEELEiGhTon@hOTmail.cOm', NULL, NULL, '2023-02-13 20:29:15', '2023-02-13 20:29:15'),
(750, 'QARTMvtP', NULL, 'SQUEAKYG11@HotMAiL.COM', NULL, NULL, '2023-02-13 20:29:22', '2023-02-13 20:29:22'),
(751, 'JHmgn9pa', NULL, 'SQUeakyG11@HOtMAiL.COm', NULL, NULL, '2023-02-13 20:29:36', '2023-02-13 20:29:36'),
(752, 'H99cd6O4', NULL, 'no@CWbAnK.com', NULL, NULL, '2023-02-13 20:29:41', '2023-02-13 20:29:41'),
(753, 'dFZfiSSW', NULL, 'WILlIAmSANESSAvw@gMaIL.cOM', NULL, NULL, '2023-02-13 20:29:43', '2023-02-13 20:29:43'),
(754, '6GL3WHHI', NULL, 'jBruCEb@atT.nEt', NULL, NULL, '2023-02-13 20:29:53', '2023-02-13 20:29:53'),
(755, '6bhq6EBG', NULL, 'bREtTAnTHonY11777@GmAIL.coM', NULL, NULL, '2023-02-13 20:30:15', '2023-02-13 20:30:15'),
(756, 'suAqEbjU', NULL, 'jBruCeb@ATT.net', NULL, NULL, '2023-02-13 20:30:28', '2023-02-13 20:30:28'),
(757, 'D0uhzGaT', NULL, 'pEggYR@SEanETCo.coM', NULL, NULL, '2023-02-13 21:15:15', '2023-02-13 21:15:15'),
(758, 'kxe4rH8R', NULL, 'ZIchRoNavoSeinEi@gmaIl.com', NULL, NULL, '2023-02-13 21:15:59', '2023-02-13 21:15:59'),
(759, 'AJgBDcBG', NULL, 'sAnChEzJ108@yaHoo.coM', NULL, NULL, '2023-02-13 21:17:45', '2023-02-13 21:17:45'),
(760, 'A9KIWAdt', NULL, 'kimmAcE11@AoL.com', NULL, NULL, '2023-02-13 21:18:43', '2023-02-13 21:18:43'),
(761, 'RPp4UuXj', NULL, 'KArOlINeU@HoTMaIl.cOm', NULL, '7Hdcss8b', '2023-02-13 22:25:57', '2023-02-13 22:25:57'),
(762, '425YA8Px', NULL, 'IamASghaR23@HotMaIl.cOm', NULL, NULL, '2023-02-14 01:55:24', '2023-02-14 01:55:24'),
(763, 'CCryjJNu', NULL, 'erICAh@HtRToOLs.Com', NULL, NULL, '2023-02-14 04:38:10', '2023-02-14 04:38:10'),
(764, 'cGDyphyS', NULL, 'aCCOUNts@spspRInt.coM.AU', NULL, NULL, '2023-02-14 04:38:27', '2023-02-14 04:38:27'),
(765, 'e7yqZafH', NULL, 'iT@SMBytAr.coM', NULL, NULL, '2023-02-14 04:38:32', '2023-02-14 04:38:32'),
(766, 'J9zRZ6Mb', NULL, 'ShAnedeNney2186@Yahoo.com', NULL, NULL, '2023-02-14 06:45:50', '2023-02-14 06:45:50'),
(767, 'MnGZvlir', NULL, '625357656@Qq.CoM', NULL, 'CdX4K0G3', '2023-02-14 07:33:34', '2023-02-14 07:33:34'),
(768, 'i8MSwH7u', NULL, 'MORCueNdEfJ@gMaiL.COM', NULL, 'UlJrm8l0', '2023-02-14 07:38:52', '2023-02-14 07:38:52'),
(769, 'SKUlh37x', NULL, 'neWmOmMy1@gmaIl.COm', NULL, NULL, '2023-02-14 07:46:47', '2023-02-14 07:46:47'),
(770, 'ydRxvmXa', NULL, 'SarAHZeGleN@gMail.COm', NULL, NULL, '2023-02-14 10:06:32', '2023-02-14 10:06:32'),
(771, 'rnx0Nw3k', NULL, 'com.tAG@yahoO.COM', NULL, NULL, '2023-02-14 10:06:47', '2023-02-14 10:06:47'),
(772, 'XvpfmYfS', NULL, 'ALycIabaSiLe10@GMAil.COM', NULL, NULL, '2023-02-14 10:06:48', '2023-02-14 10:06:48'),
(773, 'OsDumRZH', NULL, 'IT@smBytAr.COM', NULL, NULL, '2023-02-14 10:07:30', '2023-02-14 10:07:30'),
(774, 'O7CTtrUP', NULL, 'PolymatHCONStRUcTIoNGROuP@gmAIl.CoM', NULL, NULL, '2023-02-14 10:07:48', '2023-02-14 10:07:48'),
(775, 'MxDILtRg', NULL, 'sKy_tRaN20000@yAHoo.cOM', NULL, NULL, '2023-02-14 10:11:19', '2023-02-14 10:11:19'),
(776, 'IjQ93EAk', NULL, '6502796471@vText.cOm', NULL, 'RtTqNRnZ', '2023-02-14 10:12:13', '2023-02-14 10:12:13'),
(777, '83zaQpI3', NULL, 'PEYr4896@beLLSouTH.net', NULL, 'QzMgMVcg', '2023-02-14 10:12:17', '2023-02-14 10:12:17'),
(778, 'KY4fdyrm', NULL, 'enDERleeNt@GmAiL.COm', NULL, '51GnnLHE', '2023-02-14 10:12:20', '2023-02-14 10:12:20'),
(779, 'lfm9MmOx', NULL, 'KeLTiE.COrBIn@GMAIL.cOm', NULL, 'MtMclG4C', '2023-02-14 10:12:25', '2023-02-14 10:12:25'),
(780, 'sZccpTpq', NULL, 'erICaH@HTRtoOlS.COM', NULL, 'EX0l9vn8', '2023-02-14 10:12:51', '2023-02-14 10:12:51'),
(781, 'k8n3e8X6', NULL, 'tiffaNY021986@yaHOO.cOm', NULL, 'wHBxLlb7', '2023-02-14 10:13:02', '2023-02-14 10:13:02'),
(782, '7YUn3lrZ', NULL, 'DeNcEC1@hOtmAIl.CoM', NULL, 'zfdlh0py', '2023-02-14 10:14:40', '2023-02-14 10:14:40'),
(783, 'cFxkkeek', NULL, 'KodeONmUSiC@gMAil.cOm', NULL, 'IGUe9cpp', '2023-02-14 10:14:54', '2023-02-14 10:14:54'),
(784, 'nWmZNezv', NULL, 'ANThoNyTomAsSO30@yAhOO.cOm', NULL, '38DU8Agq', '2023-02-14 10:15:26', '2023-02-14 10:15:26'),
(785, '31oPRwjx', NULL, 'BALomESa21@GmaIL.cOm', NULL, 'gLG9WUa0', '2023-02-14 10:15:32', '2023-02-14 10:15:32'),
(786, 'cO9pvqNs', NULL, 'BooYa1229@yAHoO.CoM', NULL, '2N4xZB7I', '2023-02-14 10:15:39', '2023-02-14 10:15:39'),
(787, 'k9zMOj68', NULL, '01TAHir.aLi@gMail.com', NULL, 'F7sHX6SB', '2023-02-14 10:15:50', '2023-02-14 10:15:50'),
(788, 'pWgofCcZ', NULL, 'LiSabECk@gmX.ch', NULL, NULL, '2023-02-14 12:58:01', '2023-02-14 12:58:01'),
(789, 'ouvZc0Bl', NULL, 'ERICaH@htrtooLS.coM', NULL, NULL, '2023-02-14 12:58:06', '2023-02-14 12:58:06'),
(790, 'xniZWsEq', NULL, 'gLockE_tHe_reaL@gMx.net', NULL, 'FTKbncBH', '2023-02-14 13:18:57', '2023-02-14 13:18:57'),
(791, 'wMK9AP1B', NULL, 'fathERDUcKens81@Aol.coM', NULL, 'md7PrGPi', '2023-02-14 13:19:28', '2023-02-14 13:19:28'),
(792, 'w5AQtm57', NULL, 'iCono@IcONo.caT', NULL, 'o8w8BXBw', '2023-02-14 13:20:10', '2023-02-14 13:20:10'),
(793, 'zEnbnJZH', NULL, 'dECobrAD@gMAIL.CoM', NULL, 'NmYPpZeK', '2023-02-14 13:20:13', '2023-02-14 13:20:13'),
(794, '1smvYnoL', NULL, 'TBkuYkENDALL@GuLfCOasTfINAnCial.Net', NULL, 'ZZnufS5E', '2023-02-14 13:20:30', '2023-02-14 13:20:30'),
(795, 'BzGLXxHe', NULL, 'hraYDOtY@GMAIL.cOM', NULL, 'DJ5ivSd4', '2023-02-14 13:49:25', '2023-02-14 13:49:25'),
(796, 'MxplKmBV', NULL, 'irAsoLIS37@yahoO.COM', NULL, NULL, '2023-02-14 13:49:52', '2023-02-14 13:49:52'),
(797, 'wvkg0d8a', NULL, 'dIbbLm@tHECItYofNiLES.cOm', NULL, 'YtWdZ2wY', '2023-02-14 13:50:21', '2023-02-14 13:50:21'),
(798, '75WE6fSG', NULL, 'sMccUrTAiN@GmAil.Com', NULL, NULL, '2023-02-14 13:50:35', '2023-02-14 13:50:35'),
(799, '0VnNzvYS', NULL, 'arThuR.lEE1@impeRIAl.aC.UK', NULL, 'lM2dbe5T', '2023-02-14 13:50:52', '2023-02-14 13:50:52'),
(800, 'jqJHIMmd', NULL, 'DaVID@dCPhIllIPs.neT', NULL, NULL, '2023-02-14 13:50:58', '2023-02-14 13:50:58'),
(801, 'A15ZDMiq', NULL, 'chrIS@AIRBaRON.nET', NULL, NULL, '2023-02-14 13:53:06', '2023-02-14 13:53:06'),
(802, '05ksBPXm', NULL, 'soHeIla.FARhanGI@GmaIL.coM', NULL, 'dQHEvFVL', '2023-02-14 15:01:52', '2023-02-14 15:01:52'),
(803, 'EcpFVGsc', NULL, 'opIE1015@GMaiL.COm', NULL, 'lbcodiuB', '2023-02-14 15:02:55', '2023-02-14 15:02:55'),
(804, 'WvhtbLh5', NULL, 'shorTCOnnie@GMAIl.cOm', NULL, 'ZRDKmQDk', '2023-02-14 17:05:27', '2023-02-14 17:05:27'),
(805, 'awCifwFt', NULL, 'LGRetTa@bLUEwin.Ch', NULL, 'isCaJPmp', '2023-02-14 17:05:41', '2023-02-14 17:05:41'),
(806, '8vDeavZK', NULL, 'LEEAnNboS@GMAIL.COM', NULL, 'XxKAIgMC', '2023-02-14 17:05:51', '2023-02-14 17:05:51'),
(807, 'hG5Cic7k', NULL, 'lES.TAllEY@dEsiGNmANUfaCTURIng.COM', NULL, 'HXX2KZC1', '2023-02-14 17:05:56', '2023-02-14 17:05:56'),
(808, 'V60U9YrT', NULL, 'LsAinc02@yahoo.coM', NULL, 'BHpsBNid', '2023-02-14 17:05:57', '2023-02-14 17:05:57'),
(809, '4ei7uPp9', NULL, 'kimBErLY_FellS@yAHoo.cOm', NULL, 'ztlBG9uq', '2023-02-14 17:06:15', '2023-02-14 17:06:15'),
(810, 'TSGLex0v', NULL, 'm_MeTZ25@hOtMaiL.coM', NULL, '5VdCciwu', '2023-02-14 19:22:03', '2023-02-14 19:22:03'),
(811, 'ltiUExvI', NULL, 'CODI.sERaFIn0103@Gmail.CoM', NULL, 'clIcRYTw', '2023-02-14 19:23:10', '2023-02-14 19:23:10'),
(812, 'YlozBu50', NULL, 'ClaudE.pAge@Neuf.FR', NULL, 'iw9yXEhl', '2023-02-14 19:23:23', '2023-02-14 19:23:23'),
(813, 'YS5sYsMy', NULL, 'lGREttA@BLuEwIN.ch', NULL, 'ekE5JPP8', '2023-02-14 19:23:37', '2023-02-14 19:23:37'),
(814, '8CXvIe3i', NULL, 'lGRetTa@blUEwin.CH', NULL, '6ftvrDj2', '2023-02-14 19:23:41', '2023-02-14 19:23:41'),
(815, 'glA71FaK', NULL, 'jOVAntUeNi@GmaIL.Com', NULL, 'abAxK1ir', '2023-02-14 19:24:23', '2023-02-14 19:24:23'),
(816, 'B1jmpDmW', NULL, 'juNG@sTIEg-PARTNeR.De', NULL, 'Hatdeg3H', '2023-02-14 19:24:53', '2023-02-14 19:24:53'),
(817, 'gTI3jgAX', NULL, 'CTrJSmAlL@GmaIl.Com', NULL, 'ZZi5rsoN', '2023-02-14 19:26:35', '2023-02-14 19:26:35'),
(818, 'bFGYzaHK', NULL, 'drOIdhuNteR321@GMaIl.COM', NULL, NULL, '2023-02-14 21:32:57', '2023-02-14 21:32:57'),
(819, 'sICp2v6B', NULL, 'SUPpoRT@soLaRHaVEn.cOM.nG', NULL, NULL, '2023-02-15 03:08:45', '2023-02-15 03:08:45'),
(820, '3CCCyhO8', NULL, 'haGERTrAnSpORTLlC@bBTeL.CoM', NULL, 'jxPsv7th', '2023-02-15 04:35:09', '2023-02-15 04:35:09'),
(821, '0YzYeErL', NULL, 'MiChElLEBeaUmONT@gmAil.CoM', NULL, 'FSbIh7l2', '2023-02-15 06:25:08', '2023-02-15 06:25:08'),
(822, 'bs0YOLUA', NULL, 'mAcIAsaLbERt.5@GmaIL.CoM', NULL, 'GqKZTRTf', '2023-02-15 06:27:22', '2023-02-15 06:27:22'),
(823, NULL, NULL, 'MacIAsalBErt.5@GmAil.coM', NULL, NULL, '2023-02-15 06:42:42', '2023-02-15 06:42:42'),
(824, 'sd59MKA5', NULL, 'Dallen40962@HOtmaIl.cOM', NULL, NULL, '2023-02-15 08:26:46', '2023-02-15 08:26:46'),
(825, 's3ZKLEnI', NULL, 'MARYLJARVIS@gMAiL.com', NULL, '82QpLMbR', '2023-02-15 09:03:14', '2023-02-15 09:03:14'),
(826, 'jxVDOlAs', NULL, 'ERnGoNZAleZ420@Gmail.cOm', NULL, 'JRCIbgAA', '2023-02-15 09:05:18', '2023-02-15 09:05:18'),
(827, 'dpxpJUzT', NULL, 'dENniSFjARvis@gmail.Com', NULL, NULL, '2023-02-15 09:32:16', '2023-02-15 09:32:16'),
(828, 'hM4xqVLU', NULL, 'RAcHELvaNLUe@GMaiL.COm', NULL, NULL, '2023-02-15 10:27:05', '2023-02-15 10:27:05'),
(829, '20Au35Ld', NULL, 'rTVAnZoeLEN@gMAiL.coM', NULL, NULL, '2023-02-15 10:28:54', '2023-02-15 10:28:54'),
(830, NULL, NULL, 'HoAdLeyJorDaN@GMaIL.COM', NULL, NULL, '2023-02-15 11:09:11', '2023-02-15 11:09:11'),
(831, NULL, NULL, 'cLAUde.PagE@neuf.Fr', NULL, NULL, '2023-02-15 11:11:46', '2023-02-15 11:11:46'),
(832, NULL, NULL, 'SIEgrIStNicOLe@BLUEWiN.cH', NULL, NULL, '2023-02-15 11:12:17', '2023-02-15 11:12:17'),
(833, NULL, NULL, 'JoSelu09@hoTMaIL.COm', NULL, NULL, '2023-02-15 11:13:16', '2023-02-15 11:13:16'),
(834, NULL, NULL, 'kIRkdRESser@gmAIL.cOm', NULL, NULL, '2023-02-15 11:13:56', '2023-02-15 11:13:56'),
(835, 'PQUhEO7v', NULL, 'marCel.MEiER@mEIERcArGo.Ch', NULL, 'RvkwbK1o', '2023-02-15 11:43:58', '2023-02-15 11:43:58'),
(836, '2ygLuPNq', NULL, 'cArol.SChIllINg@gMX.ch', NULL, 'V39fscvG', '2023-02-15 11:44:20', '2023-02-15 11:44:20'),
(837, 'PFfZsVU3', NULL, 'tWAlleR@PleaSaNTVIeWmEtRO.OrG', NULL, '9Hkhb0dn', '2023-02-15 12:00:49', '2023-02-15 12:00:49'),
(838, 'yXZpV6Yb', NULL, 'ventuRean01@gMAiL.CoM', NULL, NULL, '2023-02-15 14:21:42', '2023-02-15 14:21:42'),
(839, 'FOBV3194', NULL, 'SOriAno.flOREncejoy@YaHOo.com', NULL, NULL, '2023-02-15 14:23:45', '2023-02-15 14:23:45'),
(840, 'ZGG5zGP9', NULL, 'AMIt.PATEl@FloRIdastaTEfaIR.COm', NULL, NULL, '2023-02-15 14:24:41', '2023-02-15 14:24:41'),
(841, 'ECFWEmLk', NULL, 'ivAn.Torpong7@GMaiL.COM', NULL, 'k4d490oB', '2023-02-15 16:05:25', '2023-02-15 16:05:25'),
(842, 'hJ1INt3m', NULL, 'HaGERTRaNsPoRtlLc@BbTel.coM', NULL, 'RKKwraIS', '2023-02-15 16:05:41', '2023-02-15 16:05:41'),
(843, '35UlpQg5', NULL, 'aNDREWVOYaCK@GMaiL.COM', NULL, 'u8RBsD9w', '2023-02-15 16:05:55', '2023-02-15 16:05:55'),
(844, 'hg1REKq1', NULL, 'HagERtRanSPorTlLC@bbTeL.CoM', NULL, '1HGxOgoR', '2023-02-15 17:08:35', '2023-02-15 17:08:35'),
(845, 'xGwhx2Kg', NULL, 'dseIcHBErGeR@gMAiL.cOm', NULL, NULL, '2023-02-15 17:41:01', '2023-02-15 17:41:01'),
(846, 'vyfzGpUV', NULL, 'GurmEetChoUDHARY30@gmAIL.com', NULL, NULL, '2023-02-15 17:42:10', '2023-02-15 17:42:10'),
(847, 'kNvufAjv', NULL, 'sHORTconnIE@gMAiL.CoM', NULL, NULL, '2023-02-15 17:44:43', '2023-02-15 17:44:43'),
(848, '0arJ3PTr', NULL, 'daNIEllAMenDIvil@gMAIl.cOm', NULL, NULL, '2023-02-15 18:17:13', '2023-02-15 18:17:13'),
(849, 'YqHxP5Sg', NULL, 'HaMIltONsovERSEas@yAhOo.COM', NULL, NULL, '2023-02-15 18:18:26', '2023-02-15 18:18:26'),
(850, 'xo7sQEZv', NULL, 'muNchkIN2590@AtT.Net', NULL, NULL, '2023-02-15 18:18:28', '2023-02-15 18:18:28'),
(851, 'nsBpM5sn', NULL, 'MicK216@HoTMAiL.CoM', NULL, NULL, '2023-02-15 18:18:41', '2023-02-15 18:18:41'),
(852, '80CdA49P', NULL, 'ChelCiaGAInEs@gMAIL.COm', NULL, NULL, '2023-02-15 18:18:58', '2023-02-15 18:18:58'),
(853, 'MRvqRvUl', NULL, 'HAmILtonsOverSeAs@yAHoo.Com', NULL, NULL, '2023-02-15 18:19:56', '2023-02-15 18:19:56'),
(854, 'kLDDPdmz', NULL, 'Ij.AlFOnSO24@GmAIL.CoM', NULL, 'zSpeu6jt', '2023-02-15 18:44:55', '2023-02-15 18:44:55'),
(855, 'XzWRe1ji', NULL, 'marcEl.Meier@meIErcArgO.ch', NULL, NULL, '2023-02-15 19:02:19', '2023-02-15 19:02:19'),
(856, 'tq92gocv', NULL, 'lEEaNNboS@GMaiL.com', NULL, NULL, '2023-02-15 19:02:24', '2023-02-15 19:02:24'),
(857, 'c8HEJuFV', NULL, 'mARCel.meIeR@mEiErCargo.ch', NULL, NULL, '2023-02-15 19:02:28', '2023-02-15 19:02:28'),
(858, '9FUrzcn7', NULL, 'joET@cREativeSpeCIALtiEs.nEt', NULL, NULL, '2023-02-15 19:02:47', '2023-02-15 19:02:47'),
(859, 'QuwLOuBD', NULL, 'k.bLAusEy@dwLiFTSaLeS.cOM', NULL, NULL, '2023-02-15 19:02:58', '2023-02-15 19:02:58'),
(860, 'VGwKM15p', NULL, 'SelMAchaMboy@aTt.Net', NULL, NULL, '2023-02-15 19:03:06', '2023-02-15 19:03:06'),
(861, 'eBYaABxu', NULL, 'Jr@jONrOG.com', NULL, NULL, '2023-02-15 19:03:19', '2023-02-15 19:03:19'),
(862, 'u6RUaDi2', NULL, 'dELaneY1@nS.SymPATICO.Ca', NULL, NULL, '2023-02-15 19:04:40', '2023-02-15 19:04:40'),
(863, 'Swips', '86869295321', 'ro1hb2oc@hotmail.com', NULL, NULL, '2023-02-15 19:05:56', '2023-02-15 19:05:56'),
(864, 'ADB1Ifjj', NULL, 'JoB@sTepLOG.Eu', NULL, '56ASW3w6', '2023-02-15 19:20:50', '2023-02-15 19:20:50'),
(865, 'TlfnIlr7', NULL, 'AllananoTTle@OuTlOok.CoM', NULL, '3o7StTAe', '2023-02-15 19:22:08', '2023-02-15 19:22:08'),
(866, 'cE7N1vls', NULL, 'GEnaj617@gmAIl.CoM', NULL, 'vhVIIMoq', '2023-02-15 19:22:43', '2023-02-15 19:22:43'),
(867, 'UlbxQ1NR', NULL, 'bLmCnatt@aoL.cOm', NULL, '0rzXiW1A', '2023-02-15 19:23:06', '2023-02-15 19:23:06'),
(868, 'nUyU4GxR', NULL, 'caBleguy689@aol.coM', NULL, 'qE0GFW1b', '2023-02-15 19:23:30', '2023-02-15 19:23:30'),
(869, 'F12tZaIz', NULL, 'c.bisHOp@WiLSOnsTuRf.COM', NULL, 'sTWAI516', '2023-02-15 19:23:44', '2023-02-15 19:23:44'),
(870, 'Itjxr1ee', NULL, 'braDsmyLY@ymaIL.Com', NULL, 'zbZMMJ8o', '2023-02-15 19:24:01', '2023-02-15 19:24:01'),
(871, 'iB35X0yJ', NULL, 'IanSArahMarCottE@gmAiL.cOM', NULL, '1iQT5d6d', '2023-02-15 19:24:10', '2023-02-15 19:24:10'),
(872, 'fb8qqeiz', NULL, 'dOuBLeB144@gmaIL.coM', NULL, 'GA0TBet8', '2023-02-15 19:24:25', '2023-02-15 19:24:25'),
(873, 'l71APtov', NULL, 'AlOK_k_SiNgH@HOtmaIL.coM', NULL, 'TQI9Hdbh', '2023-02-15 19:24:39', '2023-02-15 19:24:39'),
(874, 'Jw0wLw9e', NULL, 'CiNDyw@CReAtIVEsPecIalTieS.net', NULL, NULL, '2023-02-15 19:51:58', '2023-02-15 19:51:58'),
(875, 'ywvOyZsL', NULL, 'UrS_dREhER@BlueWIn.Ch', NULL, NULL, '2023-02-15 21:28:24', '2023-02-15 21:28:24'),
(876, 'dlhBxHtY', NULL, 'SaHADao@yAhOo.Com', NULL, NULL, '2023-02-15 23:06:03', '2023-02-15 23:06:03'),
(877, '5dDpBz6K', NULL, 'tMANN17@YAHoO.cOm', NULL, NULL, '2023-02-15 23:06:14', '2023-02-15 23:06:14'),
(878, 'iwHGCz40', NULL, 'njP333@aoL.com', NULL, NULL, '2023-02-15 23:07:13', '2023-02-15 23:07:13'),
(879, '8gQPeJxS', NULL, 'fHL.GM.MIke@GMAIL.com', NULL, NULL, '2023-02-15 23:44:26', '2023-02-15 23:44:26'),
(880, '09XyNWQm', NULL, 'rANdY@sUmMITCONSTr.coM', NULL, NULL, '2023-02-15 23:44:40', '2023-02-15 23:44:40'),
(881, 'JYZoQ9Ko', NULL, 'I_mETANiOOs@HotmAIL.Com', NULL, NULL, '2023-02-15 23:45:18', '2023-02-15 23:45:18'),
(882, 'jl815VBM', NULL, 'FISHCRazyINfo@gmaIl.COm', NULL, NULL, '2023-02-15 23:45:35', '2023-02-15 23:45:35'),
(883, 'iWsuK0e7', NULL, 'doubLeB144@gMail.COM', NULL, NULL, '2023-02-15 23:45:53', '2023-02-15 23:45:53'),
(884, 'zSC1SrOB', NULL, 'TMAnN17@YAhOo.cOM', NULL, NULL, '2023-02-15 23:46:13', '2023-02-15 23:46:13'),
(885, 'sNpSmfNm', NULL, 'ERicaH@HtRToOlS.COm', NULL, NULL, '2023-02-15 23:48:18', '2023-02-15 23:48:18'),
(886, 'OZmYtGoy', NULL, 'lUiS_hue95@HOTmaIl.Com', NULL, NULL, '2023-02-16 01:29:22', '2023-02-16 01:29:22'),
(887, 'smKFaaRq', NULL, 'seAn.J.wAng@wuStl.edu', NULL, NULL, '2023-02-16 01:29:45', '2023-02-16 01:29:45'),
(888, 'BhS9DYvi', NULL, 'AMit.PATeL@FLORIDastATeFAiR.cOm', NULL, NULL, '2023-02-16 01:29:51', '2023-02-16 01:29:51'),
(889, 'mHx2QI4E', NULL, 'byLAx@ZOoMIntERneT.NEt', NULL, NULL, '2023-02-16 01:30:04', '2023-02-16 01:30:04'),
(890, 'UDR8NhtO', NULL, 'yuJInBao111@GmAiL.cOM', NULL, NULL, '2023-02-16 01:30:07', '2023-02-16 01:30:07'),
(891, 'TZCwVHXM', NULL, 'AmIT.PateL@FlORIdASTatEfAiR.coM', NULL, NULL, '2023-02-16 01:31:21', '2023-02-16 01:31:21'),
(892, 'a7C6HZVZ', NULL, 'tONiMArIEKoULOS@GMail.cOm', NULL, NULL, '2023-02-16 01:33:23', '2023-02-16 01:33:23'),
(893, 'BJ5QHenG', NULL, 'iT@SmBytAR.CoM', NULL, NULL, '2023-02-16 01:33:55', '2023-02-16 01:33:55'),
(894, 'ywqwNNks', NULL, 'WaHSAWHSER@GmAIL.Com', NULL, NULL, '2023-02-16 05:04:43', '2023-02-16 05:04:43'),
(895, '2an3Zal6', NULL, 'ErICah@HTRtoolS.cOm', NULL, 'a6edzCqE', '2023-02-16 08:19:43', '2023-02-16 08:19:43'),
(896, 'KtQKnHs6', NULL, 'IT@SMbyTAR.coM', NULL, 'ueoDWcP7', '2023-02-16 08:19:48', '2023-02-16 08:19:48'),
(897, 'sTfiBJV6', NULL, 'sOLO-OFeRtAS@LiVe.COm', NULL, 'eVkUh328', '2023-02-16 10:15:31', '2023-02-16 10:15:31'),
(898, 'Aq2y0OQZ', NULL, 'CdLOwe1986@gMaiL.COM', NULL, '64aQW4CM', '2023-02-16 10:16:04', '2023-02-16 10:16:04'),
(899, 'hCxBz7Vv', NULL, 'Klaus.donneR@t-onliNe.dE', NULL, 'J7fYkeqH', '2023-02-16 10:16:56', '2023-02-16 10:16:56'),
(900, 'Qw2neIkF', NULL, 'nAzaREloFRR@gmAIL.cOm', NULL, 'rN1HtgZe', '2023-02-16 10:17:20', '2023-02-16 10:17:20'),
(901, NULL, NULL, 'fInanCE@ClaremOntschOoL.cO.Uk', NULL, NULL, '2023-02-16 10:28:51', '2023-02-16 10:28:51'),
(902, 'cWcFzurA', NULL, 'pMsTaIGeR@mSN.coM', NULL, 'eKupKA95', '2023-02-16 14:18:47', '2023-02-16 14:18:47'),
(903, '3PEWZl1r', NULL, 'anToNysOLMO@HOtMaiL.COm', NULL, 'heR7KzPr', '2023-02-16 14:19:28', '2023-02-16 14:19:28');
INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `message`, `da`, `created_at`, `updated_at`) VALUES
(904, '0CYuGXSv', NULL, 'rsMckeEHAn@yAHOO.coM', NULL, 'Dlp32GEr', '2023-02-16 14:19:35', '2023-02-16 14:19:35'),
(905, 'nyfETkqz', NULL, 'gEOFFReYHugues@oranGe.FR', NULL, 'oc7XTipj', '2023-02-16 14:20:59', '2023-02-16 14:20:59'),
(906, NULL, NULL, 'trObINSoN@atLAsROofInG.cOM', NULL, NULL, '2023-02-16 14:36:34', '2023-02-16 14:36:34'),
(907, '5aq8Zze0', NULL, 'BReTtcrISP@RoGeRS.Com', NULL, 'Yc7hwb2k', '2023-02-16 18:27:03', '2023-02-16 18:27:03'),
(908, 'T2wu0IaW', NULL, 'SHorTcONniE@GMAiL.com', NULL, 'cyTFWE6I', '2023-02-16 21:49:00', '2023-02-16 21:49:00'),
(909, 'XhrpK1gx', NULL, 'AnIa.FoLkmER@ouTLOoK.COM', NULL, 'ZPp6Orv4', '2023-02-16 23:32:52', '2023-02-16 23:32:52'),
(910, '3xKZX38v', NULL, 'BrandI.paniaGUa@gmAil.COM', NULL, 'awwH2Cvz', '2023-02-16 23:34:51', '2023-02-16 23:34:51'),
(911, 'xVUlLo8A', NULL, 'cUcvaNtRAn@YahOo.COm', NULL, 'oxowbbYA', '2023-02-17 00:10:18', '2023-02-17 00:10:18'),
(912, '0kn1Dezi', NULL, 'LSCHEreR@wI.Rr.COm', NULL, 'HA6FIpFv', '2023-02-17 03:02:30', '2023-02-17 03:02:30'),
(913, 'pizBgCy7', NULL, 'SpRInGEr1213@yaHoo.cOM', NULL, 'jfIonSFV', '2023-02-17 03:02:39', '2023-02-17 03:02:39'),
(914, NULL, NULL, 'TBkUyKeNDALL@GulfcOAStFinanCiAL.nET', NULL, NULL, '2023-02-17 04:24:34', '2023-02-17 04:24:34'),
(915, NULL, NULL, 'aAROn.barneS.2011@gmaiL.coM', NULL, NULL, '2023-02-17 04:24:34', '2023-02-17 04:24:34'),
(916, NULL, NULL, 'aMiT.PAteL@FLOridAsTaTefair.cOM', NULL, NULL, '2023-02-17 04:25:02', '2023-02-17 04:25:02'),
(917, NULL, NULL, 'nadIAArI@OpTUSnet.Com.aU', NULL, NULL, '2023-02-17 04:25:59', '2023-02-17 04:25:59'),
(918, NULL, NULL, 'LmaRSOlek89@GmAIL.CoM', NULL, NULL, '2023-02-17 04:26:04', '2023-02-17 04:26:04'),
(919, NULL, NULL, 'erICah@HTRToOLs.COm', NULL, NULL, '2023-02-17 04:26:15', '2023-02-17 04:26:15'),
(920, NULL, NULL, 'kaRLEtOnc7@GMAil.cOM', NULL, NULL, '2023-02-17 04:26:25', '2023-02-17 04:26:25'),
(921, 'eW0xXBkp', NULL, 'dunalANdiA@yAhOo.Es', NULL, NULL, '2023-02-17 08:50:43', '2023-02-17 08:50:43'),
(922, '7AgYLD52', NULL, 'AchiLIpUaPUApU1977@HOTmaIl.ES', NULL, NULL, '2023-02-17 09:46:31', '2023-02-17 09:46:31'),
(923, '0fZyWKkL', NULL, 'jOanNAreID@lAdyRIeD.nET', NULL, NULL, '2023-02-17 10:16:29', '2023-02-17 10:16:29'),
(924, 'RFePDuM0', NULL, 'rmAKeeFF@GMAIl.COm', NULL, NULL, '2023-02-17 11:32:54', '2023-02-17 11:32:54'),
(925, 'Mn81xb0M', NULL, 'wOLfF_andReas@GmX.nET', NULL, NULL, '2023-02-17 11:33:29', '2023-02-17 11:33:29'),
(926, 'v2QuwM8w', NULL, 'GoODs48@aoL.coM', NULL, NULL, '2023-02-17 11:35:09', '2023-02-17 11:35:09'),
(927, 'YWMuKByk', NULL, 'skiPGiRL47@hOTMaiL.cOM', NULL, 'n88tFv2h', '2023-02-17 12:58:08', '2023-02-17 12:58:08'),
(928, 'Ar5WkZPe', NULL, 'kBroick@gMail.com', NULL, NULL, '2023-02-17 14:02:08', '2023-02-17 14:02:08'),
(929, '7CKqXrij', NULL, 'MHERNaNdEz77@gmAIL.Com', NULL, NULL, '2023-02-17 14:02:33', '2023-02-17 14:02:33'),
(930, 'grQRHXME', NULL, 'mArSHALL22@gmaiL.cOm', NULL, NULL, '2023-02-17 14:02:58', '2023-02-17 14:02:58'),
(931, 'Xd771BFQ', NULL, 'iaGO.Otero.84@GMaiL.COm', NULL, 'Te5lQ5sL', '2023-02-17 14:26:42', '2023-02-17 14:26:42'),
(932, 'H2yNrPHR', NULL, 'dHUsaR3@GMAIl.com', NULL, 'de2XVAKL', '2023-02-17 14:27:11', '2023-02-17 14:27:11'),
(933, 'FWhwzapz', NULL, 'KMCnObLe5@YaHoO.CoM', NULL, 'Q3VY125P', '2023-02-17 14:27:22', '2023-02-17 14:27:22'),
(934, 'v2My42qM', NULL, 'dAvIDWMANSoN@LIve.cOM', NULL, 'oBqHf1tp', '2023-02-17 14:28:35', '2023-02-17 14:28:35'),
(935, '204O624N', NULL, 'jOAnNe@lMKLaUsneR.COm', NULL, 'OZamtw8p', '2023-02-17 18:42:10', '2023-02-17 18:42:10'),
(936, 'TXFghAHP', NULL, 'TRMArRapodi@cOmCast.Net', NULL, 'Lq48oxxQ', '2023-02-17 18:42:39', '2023-02-17 18:42:39'),
(937, 'T3O1tT95', NULL, 'sOLSmith@veRIzOn.nET', NULL, NULL, '2023-02-18 03:43:39', '2023-02-18 03:43:39'),
(938, 'JI9fGeQr', NULL, 'AmIT.patel@fLOrIDASTaTefAIr.cOM', NULL, NULL, '2023-02-18 03:44:42', '2023-02-18 03:44:42'),
(939, 'Efy7pNGO', NULL, 'paUlINaHAm_33@HOTMail.coM', NULL, NULL, '2023-02-18 03:45:33', '2023-02-18 03:45:33'),
(940, 'riQzOSiJ', NULL, 'dONNeWsoMe24@cOMcASt.NET', NULL, 'VIJMePW4', '2023-02-18 08:17:51', '2023-02-18 08:17:51'),
(941, 'e0xit8Yd', NULL, 'ssaMpSEl@LvCoxmAiL.coM', NULL, 'DPvWVPWO', '2023-02-18 08:19:16', '2023-02-18 08:19:16'),
(942, 'ThG0hbOb', NULL, 'mItIRNanIC@GMAIl.COm', NULL, 'E8wBQSOy', '2023-02-18 10:23:49', '2023-02-18 10:23:49'),
(943, 'uOHI3tuf', NULL, 'erSCHAePeR@GmAIl.Com', NULL, NULL, '2023-02-18 16:09:08', '2023-02-18 16:09:08'),
(944, 'ERfkLYq2', NULL, 'JAVirodRiguEzRAMos@hoTMAIl.CoM', NULL, NULL, '2023-02-18 16:09:44', '2023-02-18 16:09:44'),
(945, 'fkxqDZ0y', NULL, 'AShhOnerkAmp@GMaIl.CoM', NULL, NULL, '2023-02-18 16:13:08', '2023-02-18 16:13:08'),
(946, 'D5ketHhu', NULL, 'JennYTaNg55@cOmcAST.neT', NULL, NULL, '2023-02-18 20:35:00', '2023-02-18 20:35:00'),
(947, 'G5alHAXU', NULL, 'RuStY243@aTt.NEt', NULL, NULL, '2023-02-18 20:36:42', '2023-02-18 20:36:42'),
(948, 'zSPCG9YN', NULL, 'CONgUiTo1984@HOtmAiL.cOM', NULL, 'SlYttNmt', '2023-02-18 23:37:57', '2023-02-18 23:37:57'),
(949, 'p5mk2dYR', NULL, 'aCHiLiPUApuApu1977@hoTMAil.es', NULL, 'sRveXq6Y', '2023-02-18 23:38:00', '2023-02-18 23:38:00'),
(950, 'q1saVmeF', NULL, 'anFERpE36@hoTmAil.CoM', NULL, 'MGQBQEHu', '2023-02-18 23:38:01', '2023-02-18 23:38:01'),
(951, 'iPgLSUGH', NULL, 'sKInToP9@Gmail.Com', NULL, 'H0S16y1o', '2023-02-18 23:38:03', '2023-02-18 23:38:03'),
(952, 'KbJOCI3e', NULL, 'JORg39@HotMaiL.Com', NULL, 'wFedj5hg', '2023-02-18 23:38:06', '2023-02-18 23:38:06'),
(953, 'vFQnj40N', NULL, 'clucY2382@gmAIL.cOm', NULL, '1oGNzMac', '2023-02-18 23:38:59', '2023-02-18 23:38:59'),
(954, 'NKo7mZpr', NULL, 'SekaR.PradEEPkumaR@gMAIl.com', NULL, NULL, '2023-02-19 01:00:55', '2023-02-19 01:00:55'),
(955, 'pQCnHt0r', NULL, 'YydgyuSA@gmaIl.COM', NULL, NULL, '2023-02-19 05:20:57', '2023-02-19 05:20:57'),
(956, 'ozYqYDxS', NULL, 'JOHngiNwyDAk@oPtONLINe.nEt', NULL, '3DE9R0MT', '2023-02-19 05:46:50', '2023-02-19 05:46:50'),
(957, 'PSpyqJVV', NULL, 'JoSUeopeRez@oUtlOoK.cOM', NULL, NULL, '2023-02-19 09:51:10', '2023-02-19 09:51:10'),
(958, 'Mike Evans', '85261354279', 'no-replyvedo@gmail.com', NULL, NULL, '2023-02-19 12:02:22', '2023-02-19 12:02:22'),
(959, 'ypSGl0dJ', NULL, 'BoUZASMar@GMail.com', NULL, '7bG7VDh6', '2023-02-19 14:59:03', '2023-02-19 14:59:03'),
(960, 'zMosaBk3', NULL, 'ManOloRueDA17@GMail.cOm', NULL, 'DKEvJiCk', '2023-02-19 15:42:57', '2023-02-19 15:42:57'),
(961, 'UcWghtBn', NULL, 'ZiNKDaVId@hOTMAIl.cOM', NULL, NULL, '2023-02-19 17:48:08', '2023-02-19 17:48:08'),
(962, 'cVUQedup', NULL, 'wOlff_AnDrEAs@gMX.NEt', NULL, NULL, '2023-02-19 17:49:33', '2023-02-19 17:49:33'),
(963, 'NokAO1mg', NULL, 'vicTOria.GaRciA1234@yahoo.com', NULL, NULL, '2023-02-19 19:01:15', '2023-02-19 19:01:15'),
(964, 'jySXwEV7', NULL, 'MAniKrIsHnA81@GmAIl.Com', NULL, 'mjxzIACs', '2023-02-19 19:06:03', '2023-02-19 19:06:03'),
(965, 'gLQOQ28u', NULL, 'moMBAdger3@GMAIL.CoM', NULL, NULL, '2023-02-19 20:15:26', '2023-02-19 20:15:26'),
(966, 'm3YhyDuB', NULL, 'N.bAScHERINI@dAnAEPRoJect.com', NULL, NULL, '2023-02-19 20:16:08', '2023-02-19 20:16:08'),
(967, 'BN5oQtmv', NULL, 'TonyLA@ArAMeX.cOm', NULL, NULL, '2023-02-19 20:16:33', '2023-02-19 20:16:33'),
(968, 'Zim0I5a0', NULL, 'r_barCO@MSn.CoM', NULL, 'Y39uQBQN', '2023-02-19 21:10:28', '2023-02-19 21:10:28'),
(969, 'XMLj7vBo', NULL, 'viCtoria.GArciA1234@YahOO.Com', NULL, 'HAnuv2Ih', '2023-02-19 21:10:29', '2023-02-19 21:10:29'),
(970, '0xKTNMb4', NULL, 'PaNDaSonjA69@yAhOO.cOM', NULL, 'rkPPMwJ7', '2023-02-19 21:10:42', '2023-02-19 21:10:42'),
(971, 'vaiiAmn6', NULL, 'tIm@Can-do-RepaIRS.coM', NULL, '7fXpHSab', '2023-02-19 21:11:11', '2023-02-19 21:11:11'),
(972, 'hUvCwigq', NULL, 'hoGrIDER.5512@GmaIl.COM', NULL, NULL, '2023-02-19 21:28:54', '2023-02-19 21:28:54'),
(973, 'zX8XSg8m', NULL, 'nataLIEhORvAt@hoTmail.cOM', NULL, NULL, '2023-02-19 21:29:15', '2023-02-19 21:29:15'),
(974, 'Py7b8ecN', NULL, 'miguelOlAn990@GmaIL.COM', NULL, NULL, '2023-02-19 21:29:35', '2023-02-19 21:29:35'),
(975, '58GA1usU', NULL, 'OSbORnjAmie390@HOTmAIl.com', NULL, NULL, '2023-02-19 23:03:48', '2023-02-19 23:03:48'),
(976, 'ep8DUP73', NULL, 'SMCkENna7@yaHoO.Com', NULL, NULL, '2023-02-19 23:04:47', '2023-02-19 23:04:47'),
(977, 'UfY93rqd', NULL, 'SmCKEnNA7@YaHoO.COM', NULL, NULL, '2023-02-19 23:04:59', '2023-02-19 23:04:59'),
(978, 'fDX6JrjY', NULL, 'smckenNA7@YahOO.COm', NULL, NULL, '2023-02-19 23:05:00', '2023-02-19 23:05:00'),
(979, 'PYFY5a0z', NULL, 'SmcKennA7@YahOo.cOm', NULL, 'PPLx9pza', '2023-02-20 01:00:22', '2023-02-20 01:00:22'),
(980, '1ClMtRiG', NULL, 'RaVisp@hotMAil.Com', NULL, 'OAsjRG1T', '2023-02-20 01:00:24', '2023-02-20 01:00:24'),
(981, 'Z9GLZhmr', NULL, 'SMCKeNNA7@YahOO.COm', NULL, 'cPSlQIAV', '2023-02-20 01:00:26', '2023-02-20 01:00:26'),
(982, 'q6dqcAqJ', NULL, 'smcKENnA7@YahoO.cOm', NULL, NULL, '2023-02-20 03:59:39', '2023-02-20 03:59:39'),
(983, 'zQBuOrx2', NULL, 'jIm.AiTkEN1568@gMAIL.cOM', NULL, NULL, '2023-02-20 03:59:46', '2023-02-20 03:59:46'),
(984, 'akc7wJ00', NULL, 'mlR8081@Aol.cOM', NULL, 'waQRiA0w', '2023-02-20 10:12:13', '2023-02-20 10:12:13'),
(985, 'TsSvhGjF', NULL, 'aShLEywIlLiaMjohNSOn@gMAil.COm', NULL, 'im5e2vt9', '2023-02-20 10:13:32', '2023-02-20 10:13:32'),
(986, 'ELLgetBf', NULL, 'SMCKenna7@YaHOO.COm', NULL, NULL, '2023-02-20 10:33:51', '2023-02-20 10:33:51'),
(987, 'wtBpSD3z', NULL, 'jGLeSIGE@aOl.cOM', NULL, NULL, '2023-02-20 10:35:28', '2023-02-20 10:35:28'),
(988, 'MomJC5tr', NULL, 'pAulrUG50@gMAiL.COm', NULL, 'w6fJ3Kas', '2023-02-20 11:38:43', '2023-02-20 11:38:43'),
(989, 'Ee8cZLw8', NULL, 'troberTs@pSNI.orG', NULL, NULL, '2023-02-20 18:26:30', '2023-02-20 18:26:30'),
(990, '6W38Gnww', NULL, 'TROBeRts@PsNi.Org', NULL, NULL, '2023-02-20 18:26:30', '2023-02-20 18:26:30'),
(991, 'OjUZJX4v', NULL, 'TroBERts@PSnI.oRG', NULL, NULL, '2023-02-20 18:26:35', '2023-02-20 18:26:35'),
(992, 'um1giKYN', NULL, 'BiLL.gNehM@biAMp.coM', NULL, NULL, '2023-02-20 18:26:36', '2023-02-20 18:26:36'),
(993, 'pptGorIY', NULL, 'BILl.gnEHM@BIamp.com', NULL, NULL, '2023-02-20 18:26:48', '2023-02-20 18:26:48'),
(994, 'ehUZGDkf', NULL, 'asHleY.smITh@BIAmP.Com', NULL, NULL, '2023-02-20 18:26:51', '2023-02-20 18:26:51'),
(995, 'Yt45GuNX', NULL, 'bILl.GNeHm@biaMP.com', NULL, NULL, '2023-02-20 18:27:00', '2023-02-20 18:27:00'),
(996, 'Ov6CtdSR', NULL, 'baRt.FrEedmaN@biAmP.cOm', NULL, NULL, '2023-02-20 18:27:02', '2023-02-20 18:27:02'),
(997, 'L6efmLrh', NULL, 'AmAnda.gReEN@biaMP.COm', NULL, NULL, '2023-02-20 18:27:03', '2023-02-20 18:27:03'),
(998, 'vAKy5zmJ', NULL, 'maKLAUd8W8@GMail.COM', NULL, NULL, '2023-02-20 18:27:05', '2023-02-20 18:27:05'),
(999, 'YIVAjgf2', NULL, 'JEBbeTt@AOl.COM', NULL, NULL, '2023-02-20 18:27:39', '2023-02-20 18:27:39'),
(1000, 'xWL1vCdy', NULL, 'roSs@orGDEsK.com', NULL, NULL, '2023-02-20 18:27:42', '2023-02-20 18:27:42'),
(1001, '0uP3wh4C', NULL, 'L.XsaIKou.L@hotmaIl.cOM', NULL, NULL, '2023-02-20 18:28:18', '2023-02-20 18:28:18'),
(1002, 'PvtBXGKu', NULL, 'sMcKenna7@yAhoO.CoM', NULL, '1GY6mO47', '2023-02-20 19:01:48', '2023-02-20 19:01:48'),
(1003, 'TDA6bEr2', NULL, 'julIEtaRAsEnKO@GmAIl.cOm', NULL, 'cXCwaF9E', '2023-02-20 19:02:06', '2023-02-20 19:02:06'),
(1004, 'JQtA81KR', NULL, 'beLMin.sOFTiC@gmx.NET', NULL, 'HHzfypIu', '2023-02-20 19:03:10', '2023-02-20 19:03:10'),
(1005, '6eTglzes', NULL, 'laURIeFuEntesg@gmAil.cOM', NULL, 'vP8DX5eV', '2023-02-20 20:02:31', '2023-02-20 20:02:31'),
(1006, 'qbCCqNus', NULL, 'gEEeth@gmAi.Com', NULL, 'VNuMdWGR', '2023-02-20 20:04:29', '2023-02-20 20:04:29'),
(1007, 'n7gSRFXE', NULL, 'claUdia.BueHRER@shinTeRneT.CH', NULL, 'peLjkbvS', '2023-02-20 20:05:50', '2023-02-20 20:05:50'),
(1008, 'sMIQt6zS', NULL, 'BRIaN.REaRdOn@COMCASt.nEt', NULL, NULL, '2023-02-21 11:20:32', '2023-02-21 11:20:32'),
(1009, '1tTHMkIc', NULL, 'weNDy_98@yAhoo.coM', NULL, NULL, '2023-02-21 11:20:50', '2023-02-21 11:20:50'),
(1010, 'SP8p2fgE', NULL, 'JANICEnELsoN1828@aOl.coM', NULL, '19EFQeOH', '2023-02-21 14:33:53', '2023-02-21 14:33:53'),
(1011, 'jXdtohf5', NULL, 'kIMBErlYhnicKeLl@gmAiL.com', NULL, 'SA3HxFtH', '2023-02-21 14:34:10', '2023-02-21 14:34:10'),
(1012, 'qGXyiyYI', NULL, 'kANEbRaYDEn@beDFOrdaSD.ORg', NULL, 'Y00Kaa4k', '2023-02-21 14:34:27', '2023-02-21 14:34:27'),
(1013, 'kxgUS91g', NULL, 'SethKcraFT301@GMaIl.COM', NULL, 'BnDkaKlu', '2023-02-21 14:34:52', '2023-02-21 14:34:52'),
(1014, 'TPU7UqOR', NULL, 'HAgErtRANspOrTLLC@bbTeL.COM', NULL, 'zquDkVxA', '2023-02-21 14:34:53', '2023-02-21 14:34:53'),
(1015, 'T6BUvQFd', NULL, 'lAUrEnnicOle2795@YAhOO.Com', NULL, 'PTqTuwul', '2023-02-21 14:35:23', '2023-02-21 14:35:23'),
(1016, 'D2JhjCJl', NULL, 'daNiel.JameS.COfFmAn@gMAIl.cOm', NULL, 'HQMg1cEa', '2023-02-21 14:35:40', '2023-02-21 14:35:40'),
(1017, 'aYuwEbXd', NULL, 'DAVIdhORnER1187@gmAil.COM', NULL, 'ogtkC4v3', '2023-02-21 16:19:15', '2023-02-21 16:19:15'),
(1018, '62I6LPXR', NULL, 'AzJa8892@gMail.COM', NULL, 'pioMf2S7', '2023-02-21 16:22:17', '2023-02-21 16:22:17'),
(1019, '7fHfGlGz', NULL, 'Gyna12325@yAhoO.cOM', NULL, '7IEMnfy2', '2023-02-21 17:40:52', '2023-02-21 17:40:52'),
(1020, 'fmlquj1W', NULL, 'SuSIeCaNaDy@GmAiL.CoM', NULL, '5jKIYKx8', '2023-02-21 17:40:54', '2023-02-21 17:40:54'),
(1021, 'OqFy5mGF', NULL, 'mArKMelTon@MEltoNcuSToMHoMEs.cO', NULL, 'WW6ZCLMn', '2023-02-21 17:41:08', '2023-02-21 17:41:08'),
(1022, '3PFx8ixv', NULL, 'lEnhArDING@tELUs.net', NULL, '1L3EStmw', '2023-02-21 17:41:22', '2023-02-21 17:41:22'),
(1023, '9BcfrgFE', NULL, 'FReD.MXPainT@HOTmaIL.COM', NULL, 'UnHbq5ys', '2023-02-21 17:41:32', '2023-02-21 17:41:32'),
(1024, 'fcTdcpk6', NULL, 'mAlejaNDRa555400@GMAiL.COm', NULL, 'xvuvn2v7', '2023-02-21 17:42:13', '2023-02-21 17:42:13'),
(1025, 'Wx4FnoP9', NULL, 'T.aUdaIn95@HotmaIL.CoM', NULL, 'm3Ilr7hc', '2023-02-21 17:42:27', '2023-02-21 17:42:27'),
(1026, 'T7fgQD6x', NULL, 'mRSChristINEwIlsON@GMAiL.Com', NULL, 'nM3nHLdi', '2023-02-21 17:43:14', '2023-02-21 17:43:14'),
(1027, NULL, NULL, 'RaFiC@BeZEQInT.net', NULL, NULL, '2023-02-21 21:39:50', '2023-02-21 21:39:50'),
(1028, NULL, NULL, 'HEtFielDj1@yahoO.Com', NULL, NULL, '2023-02-21 21:40:15', '2023-02-21 21:40:15'),
(1029, NULL, NULL, 'MYMonIcaBURGOs@gMaiL.CoM', NULL, NULL, '2023-02-21 21:41:32', '2023-02-21 21:41:32'),
(1030, NULL, NULL, 'CWiTcHEy@me.cOM', NULL, NULL, '2023-02-21 21:41:35', '2023-02-21 21:41:35'),
(1031, NULL, NULL, 'dr62388@Aol.cOm', NULL, NULL, '2023-02-21 21:42:09', '2023-02-21 21:42:09'),
(1032, NULL, NULL, 'LrhatIgAN@CERamiCTEchniCs.cOM', NULL, NULL, '2023-02-21 21:42:22', '2023-02-21 21:42:22'),
(1033, NULL, NULL, 'AnmaRi1804@YahOo.coM', NULL, NULL, '2023-02-21 21:42:33', '2023-02-21 21:42:33'),
(1034, 'vPl2YWPi', NULL, 'jAHOGg2003@yAHOO.cOm', NULL, NULL, '2023-02-22 01:18:13', '2023-02-22 01:18:13'),
(1035, 'h3RCqEnh', NULL, 'MEGAnBOUdoUIN@yAHOo.CoM', NULL, NULL, '2023-02-22 01:18:13', '2023-02-22 01:18:13'),
(1036, '1vSQsjoQ', NULL, 'RaVagaBer@gMAil.CoM', NULL, NULL, '2023-02-22 01:18:16', '2023-02-22 01:18:16'),
(1037, 'KU9GTrQ7', NULL, 'TYLEraLbERt13@GMAIL.CoM', NULL, NULL, '2023-02-22 01:18:19', '2023-02-22 01:18:19'),
(1038, 'CHiwdYo1', NULL, 'ann.M.LAng@GMAIL.CoM', NULL, NULL, '2023-02-22 01:18:21', '2023-02-22 01:18:21'),
(1039, 'mG7Cxwh0', NULL, 'cATHERINEAlisOnH@gMaiL.Com', NULL, NULL, '2023-02-22 01:18:21', '2023-02-22 01:18:21'),
(1040, '4lmf9VxO', NULL, 'RobeRt.DeIDA@gmAIl.CoM', NULL, NULL, '2023-02-22 01:18:21', '2023-02-22 01:18:21'),
(1041, 't6NYonOf', NULL, 'dIxIeSuz2@GmaIL.com', NULL, NULL, '2023-02-22 01:18:24', '2023-02-22 01:18:24'),
(1042, 'Ku3EFdEY', NULL, 'RaytHalW@gmAiL.COM', NULL, NULL, '2023-02-22 01:18:45', '2023-02-22 01:18:45'),
(1043, 'JPgpia8K', NULL, 'esCOBaROne@TUta.io', NULL, NULL, '2023-02-22 01:19:43', '2023-02-22 01:19:43'),
(1044, 'gxropCgO', NULL, 'jieVA@OPtuSNeT.COm.AU', NULL, NULL, '2023-02-22 02:56:31', '2023-02-22 02:56:31'),
(1045, 'Zs6r8aQC', NULL, 'mONaRaYe.rS@gMaiL.cOM', NULL, NULL, '2023-02-22 02:58:46', '2023-02-22 02:58:46'),
(1046, NULL, NULL, 'fAValorO@bIGpoNd.NeT.Au', NULL, NULL, '2023-02-22 03:34:58', '2023-02-22 03:34:58'),
(1047, 'vIam1G9V', NULL, 'sHeILadILLON0121@yahOo.COm', NULL, 'iPWxUjjB', '2023-02-22 10:07:57', '2023-02-22 10:07:57'),
(1048, 'xDD1c2LX', NULL, 'NAZerBK4278@uwEc.eDU', NULL, 'kZcRGeGO', '2023-02-22 10:09:26', '2023-02-22 10:09:26'),
(1049, 'ZFlOvVRK', NULL, 'blUCero99_2000@yAHOo.COm', NULL, 'WKAmXiAB', '2023-02-22 10:22:51', '2023-02-22 10:22:51'),
(1050, 'PYgsIFAT', NULL, 'AsERENil10@GmaIl.com', NULL, NULL, '2023-02-22 12:01:59', '2023-02-22 12:01:59'),
(1051, 'JoeKeelf', '89722577586', 'cableaccessories@163.com', NULL, NULL, '2023-02-22 13:26:23', '2023-02-22 13:26:23'),
(1052, 'L9fsMMiJ', NULL, 'TsSCotTSmITh@GmAIL.COm', NULL, NULL, '2023-02-22 17:08:48', '2023-02-22 17:08:48'),
(1053, 'aeISicAP', NULL, 'wIl_driediGer@outlook.cOm', NULL, NULL, '2023-02-22 17:08:57', '2023-02-22 17:08:57'),
(1054, 'ZDVAxARC', NULL, 'BrIAnR42@Aol.COm', NULL, 'f2idISvJ', '2023-02-22 17:46:34', '2023-02-22 17:46:34'),
(1055, 'QsYdZ9VY', NULL, 'hageRTrANSPoRtLlc@BBtel.Com', NULL, 'fmXFHEKB', '2023-02-22 17:46:37', '2023-02-22 17:46:37'),
(1056, 'NnkuTvEc', NULL, 'sAlES@MedIAFuSIon.arT', NULL, 'JaFYNyFj', '2023-02-22 17:47:36', '2023-02-22 17:47:36'),
(1057, 'vTNBH8LV', NULL, 'aymares11@GMAIl.COM', NULL, 'wNxrlJv6', '2023-02-22 17:47:42', '2023-02-22 17:47:42'),
(1058, 'HCrULxf3', NULL, 'naThaNkaNG19@gMaIl.cOm', NULL, 'iCnMDPqQ', '2023-02-22 17:47:52', '2023-02-22 17:47:52'),
(1059, 'rzOuI47t', NULL, 'slHMOmOf2@GMAiL.coM', NULL, 'ZIZ00nLK', '2023-02-22 17:47:52', '2023-02-22 17:47:52'),
(1060, '6yJPltVz', NULL, 'LUiZ0615HENRYquE@GmAiL.coM', NULL, 'q3EDLWu7', '2023-02-22 17:48:10', '2023-02-22 17:48:10'),
(1061, '9cuN1DqR', NULL, 'monTeS.NOaLla@YAhoo.eS', NULL, 'WNXhp2Cy', '2023-02-22 17:48:44', '2023-02-22 17:48:44'),
(1062, '5GQK7pd8', NULL, 'GeNE@rAPtORREsEarCh.COM', NULL, '1vaNLAKN', '2023-02-22 17:49:40', '2023-02-22 17:49:40'),
(1063, '62sp2dhM', NULL, 'JeUGENe17@YaHoO.coM', NULL, 'IDPb1aiP', '2023-02-22 17:50:31', '2023-02-22 17:50:31'),
(1064, 'FPoUK2nj', NULL, 'inFO@softWaRE-monkEYZ.dE', NULL, NULL, '2023-02-22 18:27:03', '2023-02-22 18:27:03'),
(1065, '5okjtwJe', NULL, 'OsCaRg370@GMAiL.cOM', NULL, '07w4Auuo', '2023-02-22 19:41:49', '2023-02-22 19:41:49'),
(1066, 'NLqyJIYI', NULL, 'HomeS@TeAMhArrIS.com', NULL, 'JQOUWFir', '2023-02-22 19:42:58', '2023-02-22 19:42:58'),
(1067, 'wYhES5R9', NULL, 'acC60619886@gmaIl.cOM', NULL, NULL, '2023-02-22 20:04:57', '2023-02-22 20:04:57'),
(1068, 'X10MHbh9', NULL, 'oKkERSE@Telus.nET', NULL, NULL, '2023-02-22 20:04:59', '2023-02-22 20:04:59'),
(1069, 'gR2QvQ9Q', NULL, 'brYaN.corNiSh@HoTMaIL.CoM', NULL, NULL, '2023-02-22 20:04:59', '2023-02-22 20:04:59'),
(1070, 'FlCyhqpj', NULL, 'AlDArecAMpbElL123@GmaIL.com', NULL, NULL, '2023-02-22 20:05:00', '2023-02-22 20:05:00'),
(1071, 'JOGlzoEy', NULL, 'faby_1987@hOtmaIl.Es', NULL, NULL, '2023-02-22 20:05:04', '2023-02-22 20:05:04'),
(1072, 'WGqGwPga', NULL, 'azq2421@gMaIl.coM', NULL, NULL, '2023-02-22 20:05:07', '2023-02-22 20:05:07'),
(1073, '6Dyd23qT', NULL, 'meVereSt@MSn.cOm', NULL, NULL, '2023-02-22 20:05:07', '2023-02-22 20:05:07'),
(1074, 'ZA256z0u', NULL, 'arpiTManaK@GMAil.COM', NULL, NULL, '2023-02-22 20:05:07', '2023-02-22 20:05:07'),
(1075, 'VmVZ497m', NULL, 'whAmMeRtON4504@gMAIl.cOM', NULL, NULL, '2023-02-22 20:05:23', '2023-02-22 20:05:23'),
(1076, 'Oh4t68YJ', NULL, 'twaller@PlEASAnTvIEwmETrO.ORG', NULL, NULL, '2023-02-22 20:05:47', '2023-02-22 20:05:47'),
(1077, 'jn1uRmUb', NULL, 'b.oShEa15@YAhoo.cOm', NULL, NULL, '2023-02-22 20:05:50', '2023-02-22 20:05:50'),
(1078, 'PfU4ieg4', NULL, 'MarikA@GrEeneCOnomE.Com', NULL, NULL, '2023-02-22 20:06:57', '2023-02-22 20:06:57'),
(1079, 'jjfOsQ1w', NULL, 'KriSTinmoLETa@YAhOo.cOm', NULL, NULL, '2023-02-22 20:07:01', '2023-02-22 20:07:01'),
(1080, 'c78H9y15', NULL, 'basSAM66@ROcketMail.Com', NULL, NULL, '2023-02-22 20:07:13', '2023-02-22 20:07:13'),
(1081, 'nP59qyxK', NULL, 'kaYLa.DanIELle29@GmAil.Com', NULL, NULL, '2023-02-22 20:08:36', '2023-02-22 20:08:36'),
(1082, 'u9YekdXI', NULL, 'SSMe2050@aoL.COm', NULL, NULL, '2023-02-22 20:09:13', '2023-02-22 20:09:13'),
(1083, 'Ocabqcmu', NULL, 'fAlsEISLanD.CiNDy@gMaIL.cOM', NULL, 'tLlmIZWT', '2023-02-22 22:41:42', '2023-02-22 22:41:42'),
(1084, 'PAeHfFYG', NULL, 'MArIOVEGAb@gMail.COm', NULL, '8n4a0ORI', '2023-02-22 22:41:48', '2023-02-22 22:41:48'),
(1085, '1gGinP2t', NULL, 'rUSA_CRUZ@HoTMaIl.cOm', NULL, '0mtcTqnC', '2023-02-22 22:42:08', '2023-02-22 22:42:08'),
(1086, 'd2oTchaO', NULL, 'ALIcIa.fReEmaN7@GMAiL.COM', NULL, 'RClasDUW', '2023-02-22 22:45:12', '2023-02-22 22:45:12'),
(1087, 'B4MVsB0K', NULL, 'alBERT.jEBaneSAn@GmAIl.coM', NULL, NULL, '2023-02-23 06:08:06', '2023-02-23 06:08:06'),
(1088, '0yOZWm52', NULL, 'MELiSsAviGUiEr@HotmaIL.cOM', NULL, NULL, '2023-02-23 09:32:12', '2023-02-23 09:32:12'),
(1089, 'vPB6jnfo', NULL, 'DiReCtor@tHepINEScOmmuNitY.ORG', NULL, NULL, '2023-02-23 09:32:29', '2023-02-23 09:32:29'),
(1090, 'xb6QQJmn', NULL, 'INFo@SOFtware-monkEYZ.De', NULL, NULL, '2023-02-23 09:32:34', '2023-02-23 09:32:34'),
(1091, 'fVwLImLl', NULL, 'MnaLEXIs@sYmPATiCO.Ca', NULL, NULL, '2023-02-23 09:32:56', '2023-02-23 09:32:56'),
(1092, '5At4BDQa', NULL, 'nIlaMg@Yahoo.CoM', NULL, 'gfxKoFVt', '2023-02-23 09:40:20', '2023-02-23 09:40:20'),
(1093, 'pf7PcbVK', NULL, 'hOmeMOaneR@sbCGLOBAl.neT', NULL, 'abgNh6TO', '2023-02-23 10:37:15', '2023-02-23 10:37:15'),
(1094, 'vKRHv2Ci', NULL, 'smcKenna7@YaHOO.COm', NULL, NULL, '2023-02-23 14:19:30', '2023-02-23 14:19:30'),
(1095, 'vGrn2Xlv', NULL, 'XmzhAoZHao@126.coM', NULL, 'U3g7onX5', '2023-02-23 14:41:02', '2023-02-23 14:41:02'),
(1096, 'xpTnUsqb', NULL, 'bILL.patHwAYS@gmail.COM', NULL, 'dTrjqfww', '2023-02-23 14:41:07', '2023-02-23 14:41:07'),
(1097, 'wrqrrmWM', NULL, 'fALSEiSlaNd.cInDy@gmaiL.coM', NULL, 'vgl7FoJk', '2023-02-23 14:41:13', '2023-02-23 14:41:13'),
(1098, 'VDnytLLJ', NULL, 'mIlIUs.JoSELanDE@GMaIl.CoM', NULL, 'qaflsVTz', '2023-02-23 14:41:34', '2023-02-23 14:41:34'),
(1099, 'S79hzD0B', NULL, 'AarONamosheR@HoTMaiL.CoM', NULL, 'DmV3lSHy', '2023-02-23 14:42:55', '2023-02-23 14:42:55'),
(1100, 'q2l2XY8b', NULL, 'jTaPIa0920@gmail.COm', NULL, 'Sq6Ny8MW', '2023-02-23 14:44:33', '2023-02-23 14:44:33'),
(1101, 'fpsvUiHX', NULL, 'lOCkLOcon@AoL.CoM', NULL, '6IP24uZW', '2023-02-23 15:58:43', '2023-02-23 15:58:43'),
(1102, 'uycUDOdR', NULL, 'mCKenZiEfJohNs@gmAIl.cOm', NULL, 'TuRnrefy', '2023-02-23 16:15:52', '2023-02-23 16:15:52'),
(1103, 'atukQK0M', NULL, 'RiNGle374@mSn.com', NULL, 'k6u4o7v4', '2023-02-23 16:31:37', '2023-02-23 16:31:37'),
(1104, 'DObHQmXX', NULL, 'mFigUEroa0640@GmAIl.Com', NULL, 'j2ReofHd', '2023-02-23 16:31:48', '2023-02-23 16:31:48'),
(1105, 'VXg6x0Ks', NULL, 'SkrAMeR@kRaMERANdSonSPLUmBiNg.CoM', NULL, 'ZO0W9Ns1', '2023-02-23 16:36:02', '2023-02-23 16:36:02'),
(1106, 'WQM5gnUu', NULL, 'GeNEParKs1986@gMaIL.cOM', NULL, '8pWTvu3k', '2023-02-23 19:42:56', '2023-02-23 19:42:56'),
(1107, 'W4b5gbBf', NULL, 'SheRryDaNGeLo930@gmAIl.coM', NULL, 'Z3aBpddG', '2023-02-23 19:42:58', '2023-02-23 19:42:58'),
(1108, 'MdBI2250', NULL, 'aToMIcaNna@YahOo.cOm', NULL, 'KuKUZWXg', '2023-02-23 19:43:28', '2023-02-23 19:43:28'),
(1109, '194KiNpu', NULL, 'bmEIEr@uaLBeRTA.Ca', NULL, 'QXcxaoCz', '2023-02-23 19:43:29', '2023-02-23 19:43:29'),
(1110, 'GjPeQn8Q', NULL, 'amaRBEBO888@GMAIL.COM', NULL, 'yOkkEUW8', '2023-02-23 19:43:36', '2023-02-23 19:43:36'),
(1111, '2JDBVm25', NULL, 'caTHERiNe.e.BoNn@gmAil.com', NULL, 'ZbRDs93l', '2023-02-24 03:38:18', '2023-02-24 03:38:18'),
(1112, 'eKBW1frD', NULL, 'EKHeyFETS@rugGED.coM', NULL, 'kFibFhzT', '2023-02-24 03:40:36', '2023-02-24 03:40:36'),
(1113, 'N0NL5Lc7', NULL, 'aSeReNiL10@gMaIl.COm', NULL, NULL, '2023-02-24 08:46:56', '2023-02-24 08:46:56'),
(1114, 'YEfzVvQD', NULL, 'kalIGyrl10@aOl.cOM', NULL, NULL, '2023-02-24 08:47:22', '2023-02-24 08:47:22'),
(1115, 'phLTRH5r', NULL, 'KakOfaRMAco@yaHoO.CoM', NULL, NULL, '2023-02-24 08:47:37', '2023-02-24 08:47:37'),
(1116, 'WVueEurW', NULL, 'AZLYNnCb1@gmaIl.cOm', NULL, '7Zbna2nm', '2023-02-24 09:36:32', '2023-02-24 09:36:32'),
(1117, 'fas40ABZ', NULL, 'GdalLAS12@gmAil.cOM', NULL, 'bBcWo23F', '2023-02-24 10:16:20', '2023-02-24 10:16:20'),
(1118, 'KaKTUvqQ', NULL, 'KayLaFELIZ83@oUTLOOk.cOm', NULL, '1N3ejZo5', '2023-02-24 10:19:30', '2023-02-24 10:19:30'),
(1119, 'NM4Do8hZ', NULL, 'pOSTalmAdhAtteR@BeLlsOUth.net', NULL, 'LmFaSEkT', '2023-02-24 10:20:20', '2023-02-24 10:20:20'),
(1120, 'wX1ULNRA', NULL, 'TboNEMAc45@YAHOO.COM', NULL, 'gvPL3ec6', '2023-02-24 18:29:48', '2023-02-24 18:29:48'),
(1121, 'gePX4ZAz', NULL, 'TINAmorRis123@comcAsT.nEt', NULL, 'RRM4BNrI', '2023-02-24 18:32:52', '2023-02-24 18:32:52'),
(1122, 'oBrzQeGw', NULL, 'mruNfOLa@carOlInA.Rr.Com', NULL, NULL, '2023-02-24 21:18:52', '2023-02-24 21:18:52'),
(1123, 'Ro0UzgXU', NULL, 'REcUYER@BLuEWin.CH', NULL, NULL, '2023-02-24 21:18:56', '2023-02-24 21:18:56'),
(1124, '6IAkGQwh', NULL, 'bsnydErACRheaLtH@Gmail.COM', NULL, 'Ni5PQTf6', '2023-02-24 21:33:58', '2023-02-24 21:33:58'),
(1125, 'Gi7bP2Ay', NULL, 'NicOLEKWILsOn28@GmAIL.COm', NULL, NULL, '2023-02-24 22:22:09', '2023-02-24 22:22:09'),
(1126, 'vUBHoFtl', NULL, 'DJnONO23@FRee.fR', NULL, NULL, '2023-02-24 22:22:14', '2023-02-24 22:22:14'),
(1127, '32iRKANI', NULL, 'PaUL.ESpo@YaHoo.coM', NULL, NULL, '2023-02-24 23:29:01', '2023-02-24 23:29:01'),
(1128, 'SFJjeWWs', NULL, 'dAVidALL07@GmAIL.COm', NULL, '934Qa8ip', '2023-02-25 05:32:44', '2023-02-25 05:32:44'),
(1129, '9fE386BU', NULL, 'jc.leCLeRe@cOrmat.fR', NULL, NULL, '2023-02-25 11:41:10', '2023-02-25 11:41:10'),
(1130, '2c5K7v4Q', NULL, 'r.cOloMbET@cOrmat.fR', NULL, NULL, '2023-02-25 11:41:36', '2023-02-25 11:41:36'),
(1131, 'QczNGxsS', NULL, 'PottERt@OpTUSNeT.Com.Au', NULL, NULL, '2023-02-25 12:53:42', '2023-02-25 12:53:42'),
(1132, 'Op7HCfvS', NULL, 'vWHitTInGtoN96@Yahoo.CoM', NULL, NULL, '2023-02-25 12:53:53', '2023-02-25 12:53:53'),
(1133, 'Evvg4ZvK', NULL, 'RECuYEr@blUewiN.Ch', NULL, NULL, '2023-02-25 15:12:23', '2023-02-25 15:12:23'),
(1134, 'sELAicnk', NULL, 'TwALLer@plEASANtVIewMEtrO.Org', NULL, NULL, '2023-02-25 15:14:01', '2023-02-25 15:14:01'),
(1135, 'EwVg1kpq', NULL, 'RECUyer@bLueWIN.ch', NULL, 'wbhRUwWt', '2023-02-25 15:56:49', '2023-02-25 15:56:49'),
(1136, 'Mike Livingston', '86464431477', 'no-replyvedo@gmail.com', NULL, NULL, '2023-02-25 21:06:17', '2023-02-25 21:06:17'),
(1137, 'BmueUeLz', NULL, 'wPb5@PSU.edU', NULL, NULL, '2023-02-25 22:54:14', '2023-02-25 22:54:14'),
(1138, 'eAwjzML6', NULL, 'develOpeR@ZeDXIoN.com', NULL, NULL, '2023-02-26 02:47:38', '2023-02-26 02:47:38'),
(1139, NULL, NULL, 'dIEGO.AgUILEra88@HotmAiL.COM', NULL, NULL, '2023-02-26 05:59:50', '2023-02-26 05:59:50'),
(1140, NULL, NULL, 'beaUDoI2@ilLiNois.Edu', NULL, NULL, '2023-02-26 05:59:55', '2023-02-26 05:59:55'),
(1141, NULL, NULL, 'mElissA.leZCANo@ahSS.orG', NULL, NULL, '2023-02-26 06:00:57', '2023-02-26 06:00:57'),
(1142, 'Mike Mercer', '81298337127', 'no-replyvedo@gmail.com', NULL, NULL, '2023-02-26 09:49:33', '2023-02-26 09:49:33'),
(1143, 'XC0k1vPo', NULL, 'rEcuyer@BLUEwIN.Ch', NULL, NULL, '2023-02-26 10:29:15', '2023-02-26 10:29:15'),
(1144, '7ccd1Png', NULL, 'PAuLjOhNsoN29@gmaIL.coM', NULL, NULL, '2023-02-26 10:29:37', '2023-02-26 10:29:37'),
(1145, 'PYtyQ9UL', NULL, 'reCuyer@BLUewin.cH', NULL, NULL, '2023-02-26 10:30:02', '2023-02-26 10:30:02'),
(1146, '6WrMYDVD', NULL, 'JEaNkabaMbA@GMaIL.cOM', NULL, NULL, '2023-02-26 10:31:17', '2023-02-26 10:31:17'),
(1147, 'd5WFX2fY', NULL, 'mIkewYREmAN@yaHoO.COm', NULL, NULL, '2023-02-26 11:08:00', '2023-02-26 11:08:00'),
(1148, 'o72UePim', NULL, 'maiKSTeINer@bluEwIn.Ch', NULL, NULL, '2023-02-26 11:08:53', '2023-02-26 11:08:53'),
(1149, 'fnon26fM', NULL, 'PYGe@BLUEwIn.cH', NULL, 'UvFmwd5K', '2023-02-26 12:02:24', '2023-02-26 12:02:24'),
(1150, 'ySQ7HCLg', NULL, 'pYgE@blUEwin.ch', NULL, 'dmkb3KPu', '2023-02-26 12:02:56', '2023-02-26 12:02:56'),
(1151, '8XQeUCKz', NULL, 'rahATiSCoOl@gMAil.COm', NULL, 'plqAQhGi', '2023-02-26 12:04:43', '2023-02-26 12:04:43'),
(1152, 'fsofptwW', NULL, 'kIMScaPE@cOMcAsT.nET', NULL, NULL, '2023-02-26 12:25:08', '2023-02-26 12:25:08'),
(1153, 'WeCdcbb0', NULL, 'clAuDIA.buEHREr@shinTernEt.ch', NULL, NULL, '2023-02-26 12:29:19', '2023-02-26 12:29:19'),
(1154, '0a1aPaOh', NULL, 'JeffReY.68@Yahoo.Com', NULL, NULL, '2023-02-26 12:32:29', '2023-02-26 12:32:29'),
(1155, 'L4PpuPF5', NULL, 'mArTyStEW17@yaHOo.cOM', NULL, NULL, '2023-02-26 16:55:13', '2023-02-26 16:55:13'),
(1156, 'AkUciFhT', NULL, 'BrAndON.broWN@Compucom.cOM', NULL, NULL, '2023-02-26 17:40:52', '2023-02-26 17:40:52'),
(1157, 'Dk1Z0QpP', NULL, 'mwRiGHT@SPECtRotEL.COm', NULL, NULL, '2023-02-26 17:43:26', '2023-02-26 17:43:26'),
(1158, 'pTMIeanq', NULL, 'tiMOThYOkRongley@GmaIl.coM', NULL, 'JbKjfhVK', '2023-02-26 18:32:24', '2023-02-26 18:32:24'),
(1159, 'YWlRJYMj', NULL, 'jIrofTy76@GmaIL.cOm', NULL, NULL, '2023-02-26 21:01:01', '2023-02-26 21:01:01'),
(1160, 'bPznZETv', NULL, 'potteRt@OPtUsneT.cOm.AU', NULL, 'z5p49HHt', '2023-02-26 21:13:49', '2023-02-26 21:13:49'),
(1161, 'RCld9F1m', NULL, 'hoBI1994@hOtmaIl.co.UK', NULL, NULL, '2023-02-26 23:32:42', '2023-02-26 23:32:42'),
(1162, 'LwHXEQ5H', NULL, 'DAmAcBuIlDERS@gmAIl.coM', NULL, 'vZeGBaA6', '2023-02-27 02:03:18', '2023-02-27 02:03:18'),
(1163, 'nMUWIulD', NULL, 'roBeRTJOhnreillY84@yahOO.COm', NULL, 'YZwnTSrT', '2023-02-27 09:09:09', '2023-02-27 09:09:09'),
(1164, 'd7Xfk9Od', NULL, 'mgiRarDot05@HoTmAiL.COm', NULL, 'UsoLzsBE', '2023-02-27 09:12:24', '2023-02-27 09:12:24'),
(1165, 'oFZAoPlI', NULL, 'uSPrInCEsA@gmAil.com', NULL, 'X0QXi5U4', '2023-02-27 09:13:09', '2023-02-27 09:13:09'),
(1166, 'Jw5tfluF', NULL, 'xANDER0348@gMaIL.COm', NULL, 'FO1jOQmq', '2023-02-27 09:14:07', '2023-02-27 09:14:07'),
(1167, NULL, NULL, 'NiCKeRSON_dYlAN@yAHOo.cOM', NULL, NULL, '2023-02-27 09:32:57', '2023-02-27 09:32:57'),
(1168, NULL, NULL, 'RaiNAPeaSLEy14@gmaiL.COm', NULL, NULL, '2023-02-27 09:33:15', '2023-02-27 09:33:15'),
(1169, NULL, NULL, 'MccuRDY052405@gmaiL.COM', NULL, NULL, '2023-02-27 09:33:46', '2023-02-27 09:33:46'),
(1170, NULL, NULL, 'TAHrAeANN@ICLoUd.com', NULL, NULL, '2023-02-27 09:33:53', '2023-02-27 09:33:53'),
(1171, NULL, NULL, 'cOurtNeYbutleR725@gMAIL.Com', NULL, NULL, '2023-02-27 09:34:39', '2023-02-27 09:34:39'),
(1172, 'XJdYPrNo', NULL, 'jILl.GilLigAN@GMaiL.COm', NULL, NULL, '2023-02-27 09:41:15', '2023-02-27 09:41:15'),
(1173, 'Mu3LuZ1e', NULL, 'jiLl.GIlLIGAN@GmAIl.com', NULL, NULL, '2023-02-27 09:41:33', '2023-02-27 09:41:33'),
(1174, 'G2TBaz0C', NULL, 'ScaRLett_CArreRA@hoTMaiL.cOm', NULL, NULL, '2023-02-27 12:34:14', '2023-02-27 12:34:14'),
(1175, '6zVxtXbp', NULL, 'mrmEnECHelLA@aol.cOm', NULL, NULL, '2023-02-27 12:35:51', '2023-02-27 12:35:51'),
(1176, 'SRFIsHmV', NULL, 'kAI04Lee@yAhOO.cOm', NULL, NULL, '2023-02-27 12:36:00', '2023-02-27 12:36:00'),
(1177, 'dcoL1vdS', NULL, 'branDON.brOwn@coMpUCoM.COM', NULL, 'wgNdSXRt', '2023-02-27 15:42:42', '2023-02-27 15:42:42'),
(1178, 'aMMJGsXo', NULL, 'MoRgan_LUi@browN.eDu', NULL, NULL, '2023-02-27 20:32:25', '2023-02-27 20:32:25'),
(1179, 'tYTOU3sy', NULL, 'REW@dEBTfREEohiO.COm', NULL, NULL, '2023-02-27 20:33:09', '2023-02-27 20:33:09'),
(1180, 'Mike Turner', '88588555667', 'no-replyvedo@gmail.com', NULL, NULL, '2023-02-27 22:51:48', '2023-02-27 22:51:48'),
(1181, 'AzlNY2pS', NULL, 'SHEltoNGrIFfin@yAhoo.Com', NULL, 'QQtHs0tt', '2023-02-27 22:53:37', '2023-02-27 22:53:37'),
(1182, 'agCjdxtN', NULL, 'desigN@coBalTRed.CO.uK', NULL, '2avc3HGU', '2023-02-27 22:54:28', '2023-02-27 22:54:28'),
(1183, 'oYojB61W', NULL, 'MarGuEriTe@freenEtNAMe.co.uK', NULL, 'UsSKos7R', '2023-02-27 22:54:30', '2023-02-27 22:54:30'),
(1184, NULL, NULL, 'renEgaRCiA0329@gMaIL.cOM', NULL, NULL, '2023-02-28 00:09:10', '2023-02-28 00:09:10'),
(1185, NULL, NULL, 'MaRIO@M1sTChoIcE.cOM', NULL, NULL, '2023-02-28 00:09:27', '2023-02-28 00:09:27'),
(1186, NULL, NULL, 'dAnnY@PLatINUMmORTGaGESotTAwA.Com', NULL, NULL, '2023-02-28 00:09:30', '2023-02-28 00:09:30'),
(1187, NULL, NULL, 'daNnY@plAtINummOrTGAgESOTTawA.cOM', NULL, NULL, '2023-02-28 00:10:03', '2023-02-28 00:10:03'),
(1188, 'oOaPZTIR', NULL, 'FHnCcRUnNer@yahoo.CoM', NULL, 'PMxekslL', '2023-02-28 08:10:51', '2023-02-28 08:10:51'),
(1189, 'fHkX5NRH', NULL, 'THepisCiOtTAs@MsN.COm', NULL, 'PCCYx1Dv', '2023-02-28 08:10:53', '2023-02-28 08:10:53'),
(1190, 'zArOeHCX', NULL, 'adMIn@geaREDCoNsTrUCtion.coM.Au', NULL, 'g8fih8nx', '2023-02-28 08:11:16', '2023-02-28 08:11:16'),
(1191, 'V6N6pZc4', NULL, 'tHAINaLdEARAUJo@gmAil.com', NULL, 'hXrGeFEg', '2023-02-28 08:12:34', '2023-02-28 08:12:34'),
(1192, 'ToEGaxpR', NULL, 'ItaLOArcH@gmAil.com', NULL, 'eEHfsUQd', '2023-02-28 08:13:31', '2023-02-28 08:13:31'),
(1193, '8wEGXZAG', NULL, 'dEBAnAemaRsHAlL@GMaIL.Com', NULL, NULL, '2023-02-28 08:24:24', '2023-02-28 08:24:24'),
(1194, 'DOAH4B2k', NULL, 'ACReEKesHIA@GmaIL.COm', NULL, 'qPUOi6fC', '2023-02-28 13:50:12', '2023-02-28 13:50:12'),
(1195, 'TH0ilHcj', NULL, 'PawEL@DTPsofTwARE.PL', NULL, 'j7S3qkZG', '2023-02-28 13:51:04', '2023-02-28 13:51:04'),
(1196, 'QvlStd6O', NULL, 'fALseiSLAND.cindy@gMail.cOM', NULL, 'abZ3IDj6', '2023-02-28 13:52:17', '2023-02-28 13:52:17'),
(1197, 'uReHVelB', NULL, 'SKleP@DTPsOfTWaRe.Pl', NULL, 'lMLEMCZx', '2023-02-28 15:19:55', '2023-02-28 15:19:55'),
(1198, 'wRnubpYk', NULL, 'AlArES496@GMAiL.CoM', NULL, 'jpGkw3D0', '2023-02-28 15:21:13', '2023-02-28 15:21:13'),
(1199, 'h7VcqlG6', NULL, 'RocHeRa@GMaIl.cOM', NULL, 'usUwWbty', '2023-02-28 15:23:48', '2023-02-28 15:23:48'),
(1200, 'xZRg7zj4', NULL, 'joESlUNcHtRuCk@gmAIL.com', NULL, 'jyt6Uh0O', '2023-02-28 15:24:18', '2023-02-28 15:24:18'),
(1201, 'YW5A7l14', NULL, 'INDiAnRIvERconsTrucTioN@gmaiL.Com', NULL, 'uFwZOmk8', '2023-02-28 16:40:33', '2023-02-28 16:40:33'),
(1202, 'rbtQN9kO', NULL, 'cS006n0827@blUeyOnDEr.cO.UK', NULL, 'vwDzldHD', '2023-02-28 16:40:35', '2023-02-28 16:40:35'),
(1203, 'bnaTlrvP', NULL, 'MarIO@m1stchoIcE.coM', NULL, 'SG6Chx6X', '2023-02-28 16:40:38', '2023-02-28 16:40:38'),
(1204, 'LLZROrW5', NULL, 'a_CUrrIE21@HOTMaiL.coM', NULL, 'RhkabX9x', '2023-02-28 16:41:02', '2023-02-28 16:41:02'),
(1205, 'B4jOrKiU', NULL, 'TChandleR123@yahoo.Com', NULL, 'iRQH5mh9', '2023-02-28 16:43:33', '2023-02-28 16:43:33'),
(1206, 'uFltT1fD', NULL, 'KEvIn.LIebmann@gmAil.COM', NULL, 'JU0qnhtj', '2023-02-28 16:43:40', '2023-02-28 16:43:40'),
(1207, '4HDLnsB8', NULL, 'finSVky45606@AOL.com', NULL, '4hX7QzsL', '2023-02-28 16:43:48', '2023-02-28 16:43:48'),
(1208, NULL, NULL, 'BRIannacARUsO4@GmaiL.cOM', NULL, NULL, '2023-02-28 17:12:01', '2023-02-28 17:12:01'),
(1209, NULL, NULL, 'rLewiS@RandsteR.net', NULL, NULL, '2023-02-28 17:12:15', '2023-02-28 17:12:15'),
(1210, NULL, NULL, 'agrECasciNO123@gMaIL.cOm', NULL, NULL, '2023-02-28 17:13:39', '2023-02-28 17:13:39'),
(1211, NULL, NULL, 'VETtEz342@GMAIl.cOm', NULL, NULL, '2023-02-28 17:13:58', '2023-02-28 17:13:58'),
(1212, 'X1Q5BtfN', NULL, 'ninaENcinOSa@GmaIL.cOM', NULL, 'bJfWrMPU', '2023-02-28 17:35:33', '2023-02-28 17:35:33'),
(1213, 'BwAEhqgU', NULL, 'irvinE_Am@hOtmaIl.cOM', NULL, '7MxpOUih', '2023-02-28 17:35:54', '2023-02-28 17:35:54'),
(1214, 'D8K4V8Oq', NULL, 'sevEn@PHoEniX-pET.Com', NULL, 'ZrEO9p3x', '2023-02-28 17:36:16', '2023-02-28 17:36:16'),
(1215, 'KscsEU4L', NULL, 'MacHadofErnaNdomaCHado5@gMaiL.cOM', NULL, 'AcdvWlt6', '2023-02-28 17:36:18', '2023-02-28 17:36:18'),
(1216, '6tRmrIyw', NULL, 'maiKoll0925@GmaiL.cOM', NULL, 'zuj9wTzP', '2023-02-28 17:36:30', '2023-02-28 17:36:30'),
(1217, 'UBCA69uc', NULL, 'sdEMaRCO1961@gmAIl.Com', NULL, NULL, '2023-02-28 18:48:48', '2023-02-28 18:48:48'),
(1218, '3HQ0phJq', NULL, 'mArKa123@GmAiL.com', NULL, NULL, '2023-02-28 18:50:05', '2023-02-28 18:50:05'),
(1219, 'CFHwZ4us', NULL, 'TWAlLEr@pLeasanTvIEwmEtRo.org', NULL, NULL, '2023-02-28 18:50:08', '2023-02-28 18:50:08'),
(1220, 'xX8YrWsQ', NULL, 'Gg110654@GmAil.CoM', NULL, NULL, '2023-02-28 18:50:12', '2023-02-28 18:50:12'),
(1221, 'A0eFJctZ', NULL, 'HAgERTRAnSpOrtlLc@bbTeL.cOm', NULL, NULL, '2023-02-28 18:50:20', '2023-02-28 18:50:20'),
(1222, 'mDFM8xex', NULL, 'mUr3935@SaSkTEL.NET', NULL, NULL, '2023-02-28 18:50:39', '2023-02-28 18:50:39'),
(1223, 'MVurypdb', NULL, 'PeNElopEEsseNcE@aol.cO.uk', NULL, NULL, '2023-02-28 18:51:18', '2023-02-28 18:51:18'),
(1224, 'wP6tuXlu', NULL, 'ScoTTIED023@YAHOo.CoM', NULL, 'KNWMEnjg', '2023-02-28 21:56:58', '2023-02-28 21:56:58'),
(1225, 'NqFRIvdy', NULL, 'CHivaS@PaHuMeLI.com', NULL, 'jwuufQy8', '2023-02-28 21:57:02', '2023-02-28 21:57:02'),
(1226, 'lfiOkAKe', NULL, '598990164@Qq.cOm', NULL, 'daetUeSr', '2023-02-28 21:57:09', '2023-02-28 21:57:09'),
(1227, 'LA7iBCwO', NULL, 'LAuRIE@TOWNMOVe.cOM', NULL, '60PhdYuE', '2023-02-28 21:57:16', '2023-02-28 21:57:16'),
(1228, 'o4XWlcdV', NULL, 'biLLKlOos@laNduseorEGoN.Com', NULL, 'XoDvPm7p', '2023-02-28 21:57:53', '2023-02-28 21:57:53'),
(1229, 'zINEvv0p', NULL, 'CS006n0827@bLUEYONdeR.cO.UK', NULL, 'B2uS4orv', '2023-02-28 21:58:23', '2023-02-28 21:58:23'),
(1230, 'ELVqExiH', NULL, 'SPArRIsH88@YahOo.Com', NULL, 'DkC2FuVD', '2023-02-28 21:58:39', '2023-02-28 21:58:39'),
(1231, 'bBocSgvL', NULL, 'SJHUKArEVic@Wi.rR.coM', NULL, NULL, '2023-02-28 22:39:12', '2023-02-28 22:39:12'),
(1232, '5jXUWuM5', NULL, 'DIeHAr1975@gmAIl.COm', NULL, NULL, '2023-03-01 03:31:45', '2023-03-01 03:31:45'),
(1233, '4Z7X0laC', NULL, 'jdB@areLAbS.COM', NULL, NULL, '2023-03-01 03:32:22', '2023-03-01 03:32:22'),
(1234, 'EwNVKNBY', NULL, '15103459674@tMOmaIL.NeT', NULL, NULL, '2023-03-01 03:32:31', '2023-03-01 03:32:31'),
(1235, 'oUQp8B7S', NULL, 'ABOhAMMam@HotMail.CoM', NULL, NULL, '2023-03-01 04:25:09', '2023-03-01 04:25:09'),
(1236, '8simwy8F', NULL, 'tAYlOrcAmeRoN1997@hoTmAIL.COm', NULL, NULL, '2023-03-01 04:26:01', '2023-03-01 04:26:01'),
(1237, 'MnuSWnGu', NULL, 'rOgeRandkareN@HOTMaiL.cOm', NULL, NULL, '2023-03-01 04:26:25', '2023-03-01 04:26:25'),
(1238, 'qJD6eIb6', NULL, 'rWuNR2@GmAIl.coM', NULL, 'mjHQ7sm6', '2023-03-01 05:18:16', '2023-03-01 05:18:16'),
(1239, 'UJhJByKp', NULL, 'kamata0913@samBA.Ocn.Ne.jp', NULL, NULL, '2023-03-01 06:45:33', '2023-03-01 06:45:33'),
(1240, 'LgYrfzpd', NULL, 'arQuITeTagiSELISAntoS@gMAIl.CoM', NULL, NULL, '2023-03-01 07:23:43', '2023-03-01 07:23:43'),
(1241, 'gfrtYpW0', NULL, 'PeNElOPEessEncE@AOl.co.Uk', NULL, 'xHXEID2H', '2023-03-01 08:26:41', '2023-03-01 08:26:41'),
(1242, 'Y1YMFCE4', NULL, 'jlEs1104@gmaiL.Com', NULL, 'lqqLz6x0', '2023-03-01 08:26:41', '2023-03-01 08:26:41'),
(1243, 'Ys3RpA3X', NULL, 'iKasHOW@HoTMAIl.cOm', NULL, 'bKI3C7LC', '2023-03-01 08:26:42', '2023-03-01 08:26:42'),
(1244, 'AYF1aBEF', NULL, 'JsImNS86@gMAIl.COM', NULL, 'QuGtgmBv', '2023-03-01 08:26:43', '2023-03-01 08:26:43'),
(1245, 'XPi9Hzdz', NULL, 'CAROl@vErItas.ORg', NULL, 'INvwkRWl', '2023-03-01 08:26:43', '2023-03-01 08:26:43'),
(1246, 'YAWUKTy9', NULL, 'tESSa@dRkaSHOW.neT', NULL, 'LWumgK6B', '2023-03-01 08:26:44', '2023-03-01 08:26:44'),
(1247, 'K02YTfYU', NULL, 'roye209@yAHoO.coM', NULL, 'Jxwz3EAU', '2023-03-01 08:26:50', '2023-03-01 08:26:50'),
(1248, 'Btw7KWdJ', NULL, 'JcknoEll@HOtMAIl.cOM', NULL, 'etAciVys', '2023-03-01 08:27:52', '2023-03-01 08:27:52'),
(1249, 'KVeA1t7g', NULL, 'ToDDNaNgIE@cArolINa.RR.Com', NULL, 'D7olM4V2', '2023-03-01 08:27:52', '2023-03-01 08:27:52'),
(1250, 'otvVNAuH', NULL, 'office@BZDIaMOND.CoM', NULL, NULL, '2023-03-01 10:52:28', '2023-03-01 10:52:28'),
(1251, '8MO8B1Xy', NULL, 'AbIGaIL.ROwE17@GMaIl.Com', NULL, NULL, '2023-03-01 10:53:23', '2023-03-01 10:53:23'),
(1252, 'rgHoCBuE', NULL, 'aLareS496@GMAIl.cOM', NULL, NULL, '2023-03-01 14:15:43', '2023-03-01 14:15:43'),
(1253, 'kKl935m7', NULL, 'FRUnTaLLOBE@gmAIl.COM', NULL, NULL, '2023-03-01 14:16:28', '2023-03-01 14:16:28'),
(1254, 'RYHpEZVK', NULL, 'AserENil10@gMaIl.coM', NULL, NULL, '2023-03-01 14:16:52', '2023-03-01 14:16:52'),
(1255, '0BCyjYWH', NULL, 'xmzhAoZHAo@126.coM', NULL, NULL, '2023-03-01 15:48:54', '2023-03-01 15:48:54'),
(1256, 'KtHNRpl8', NULL, 'liLStIllPROdigy@yahoO.cOM', NULL, NULL, '2023-03-01 15:49:31', '2023-03-01 15:49:31'),
(1257, 'pspPEzdy', NULL, 'ksOLeNtHAleR@DanesTrEET.cOM', NULL, NULL, '2023-03-01 15:50:39', '2023-03-01 15:50:39'),
(1258, 'UyCIlKBa', NULL, 'cEsARtHeBEST33@gMAiL.Com', NULL, NULL, '2023-03-01 15:50:42', '2023-03-01 15:50:42'),
(1259, 'Bd4xr6MP', NULL, 'loPeZGalvEZIvaN@gmaiL.cOm', NULL, NULL, '2023-03-01 15:50:57', '2023-03-01 15:50:57'),
(1260, 'IN2GKz6c', NULL, 'cHOugUlE.pracHI@GmaIl.COm', NULL, NULL, '2023-03-01 18:52:18', '2023-03-01 18:52:18'),
(1261, '2myZFLUr', NULL, 'MiChAel@micHaeLkennA.Com', NULL, NULL, '2023-03-01 18:52:33', '2023-03-01 18:52:33'),
(1262, 'UApZcZKH', NULL, 'LOpREstI1989@YAhoo.cOM', NULL, 'PWZaIQDY', '2023-03-01 20:41:33', '2023-03-01 20:41:33'),
(1263, 'a7IsOz8V', NULL, 'JuLiEreYnosA872@Gmail.com', NULL, 'cpuol4JZ', '2023-03-01 20:41:43', '2023-03-01 20:41:43'),
(1264, '36D679XX', NULL, 'mattHEw.BEnzONI@GMAIL.coM', NULL, 'Ccrmd4Gz', '2023-03-01 20:41:45', '2023-03-01 20:41:45'),
(1265, 'Ol2BP1vj', NULL, 'caRlosRovIRA@GmaiL.com', NULL, 'ttu2LFaV', '2023-03-01 20:43:27', '2023-03-01 20:43:27'),
(1266, 'fZLVnX0s', NULL, 'jiMmYDphAm2012@gmaIL.COM', NULL, 'U7NXCHPz', '2023-03-01 20:44:19', '2023-03-01 20:44:19'),
(1267, '9WoBeJvv', NULL, 'ksJoHn@SBCGLobaL.neT', NULL, 'k5ZJm38R', '2023-03-01 22:16:47', '2023-03-01 22:16:47'),
(1268, '9U1zwVop', NULL, 'HoRaNtt@Yahoo.cOM', NULL, '2cVQuaCz', '2023-03-01 22:16:51', '2023-03-01 22:16:51'),
(1269, 'AERmBdTt', NULL, 'LUC_baDeR@HOTmAil.CoM', NULL, 'Luc2SwsA', '2023-03-01 22:16:57', '2023-03-01 22:16:57'),
(1270, 'UuinTMNJ', NULL, 'LiLstILLPROdiGY@YaHoO.Com', NULL, 'tboqwc1c', '2023-03-01 22:17:02', '2023-03-01 22:17:02'),
(1271, 'cJ6k6GZF', NULL, 'fAlSeislAND.CiNdy@GmAil.COM', NULL, 'i3pWR5c8', '2023-03-01 22:17:03', '2023-03-01 22:17:03'),
(1272, 'hzvtHXyC', NULL, 'HAGertRANSPortLLc@bbtel.COm', NULL, 'h5STQL4y', '2023-03-01 22:19:06', '2023-03-01 22:19:06'),
(1273, 'm0Le9lPA', NULL, 'fRancoisRAY@gMail.cOM', NULL, NULL, '2023-03-02 00:04:45', '2023-03-02 00:04:45'),
(1274, 'axOPdkhE', NULL, 'JFsILva7416@gMAIL.COm', NULL, NULL, '2023-03-02 00:05:22', '2023-03-02 00:05:22'),
(1275, 'o5hqEIee', NULL, 'bEllE_AbReNICA@yAhOO.cOM', NULL, NULL, '2023-03-02 00:06:39', '2023-03-02 00:06:39'),
(1276, 'F7S0evP4', NULL, 'laTInaSAVaGe1@gmail.com', NULL, NULL, '2023-03-02 00:55:40', '2023-03-02 00:55:40'),
(1277, '7e6CnMsE', NULL, 'adAM.KINg@roGErs.cOm', NULL, '5I4GfhwX', '2023-03-02 06:31:46', '2023-03-02 06:31:46'),
(1278, 'ktdgPVnK', NULL, 'BERnaRd.Doiron@rbc.cOm', NULL, 'Jd9bwWM4', '2023-03-02 06:32:19', '2023-03-02 06:32:19'),
(1279, 'qo0CFxOt', NULL, 'ATahErI@aRtPROperTiEs.cA', NULL, '38BNUNFe', '2023-03-02 07:37:55', '2023-03-02 07:37:55'),
(1280, 'lErC4iLL', NULL, 'kiskUSKIS03@GMail.Com', NULL, NULL, '2023-03-02 09:36:59', '2023-03-02 09:36:59'),
(1281, 'QMlgIKop', NULL, 'VIctOrFsEOK@gmAIL.cOm', NULL, NULL, '2023-03-02 09:37:08', '2023-03-02 09:37:08'),
(1282, 'S68dVohH', NULL, 'aRiANNa.abstEnGo@yAHOo.cOM', NULL, 'ajDZiS7j', '2023-03-02 15:13:14', '2023-03-02 15:13:14'),
(1283, 'h1LMfTBh', NULL, 'twALlER@PLEAsAnTvIEwmETRO.OrG', NULL, 'rYhmhNwH', '2023-03-02 15:14:30', '2023-03-02 15:14:30'),
(1284, NULL, NULL, '598990164@QQ.COM', NULL, NULL, '2023-03-02 16:40:34', '2023-03-02 16:40:34'),
(1285, NULL, NULL, 'JLcONsTruCtIoN1@SYmPAtIco.CA', NULL, NULL, '2023-03-02 16:40:55', '2023-03-02 16:40:55'),
(1286, NULL, NULL, 'silviasaNcHeZ.1922@YahoO.com', NULL, NULL, '2023-03-02 16:41:03', '2023-03-02 16:41:03'),
(1287, NULL, NULL, 'tAYLOrcONFaR@GmAiL.CoM', NULL, NULL, '2023-03-02 16:41:09', '2023-03-02 16:41:09'),
(1288, NULL, NULL, 'PoaMAUripERes.09@GmaiL.cOM', NULL, NULL, '2023-03-02 16:41:46', '2023-03-02 16:41:46'),
(1289, NULL, NULL, 'StrONGLeE1974@OUtlook.COM', NULL, NULL, '2023-03-02 16:42:26', '2023-03-02 16:42:26'),
(1290, 'LOfe0KYo', NULL, 'stephaNIe.AguIlar@NorthwEstCaReercollegE.EDu', NULL, NULL, '2023-03-02 18:47:59', '2023-03-02 18:47:59'),
(1291, 'LJHNonv4', NULL, 'ANDRE@unItedstaFFING.com', NULL, NULL, '2023-03-02 18:48:24', '2023-03-02 18:48:24'),
(1292, 'RtJPxsvk', NULL, 'MMeTZdvM@MSN.cOm', NULL, NULL, '2023-03-02 18:48:48', '2023-03-02 18:48:48'),
(1293, 'ozENJ41m', NULL, 'gOByoU@yAHOO.COm', NULL, NULL, '2023-03-02 18:49:10', '2023-03-02 18:49:10'),
(1294, 'dgwlMIWm', NULL, 'LorAnAPOrTiLO@GmAIL.Com', NULL, NULL, '2023-03-02 18:49:19', '2023-03-02 18:49:19'),
(1295, 'u883B4cH', NULL, 'jaMesgRISnicH@gMAIl.COm', NULL, NULL, '2023-03-02 18:50:41', '2023-03-02 18:50:41'),
(1296, 'qNeXmS1c', NULL, 'lilsTilLproDigy@YaHOo.com', NULL, NULL, '2023-03-02 18:50:56', '2023-03-02 18:50:56'),
(1297, '6aTPmABR', NULL, 'BuSbYlaNdScaPes@gMaIl.coM', NULL, NULL, '2023-03-02 19:19:50', '2023-03-02 19:19:50'),
(1298, 'yphPZOjy', NULL, 'mattZAbinsky@gMAiL.COm', NULL, '4Y4xWBQJ', '2023-03-02 22:00:32', '2023-03-02 22:00:32'),
(1299, 'L2tEwB3H', NULL, 'suZY.Liu@sMOoRETeCH.cOM', NULL, 'LvbX8UHA', '2023-03-02 22:01:16', '2023-03-02 22:01:16'),
(1300, 'tsMxRBXM', NULL, 'houSEcARL@bElLsOUTh.net', NULL, 'TfpvT2Aq', '2023-03-02 22:01:44', '2023-03-02 22:01:44'),
(1301, 'yUEodVo2', NULL, 'ArtEMIs01@COx.NEt', NULL, 'Jq8dhUdK', '2023-03-02 23:04:20', '2023-03-02 23:04:20'),
(1302, 'm4Kcy9gQ', NULL, 'marcH@imAgInatIoNtHEAtrE.coM', NULL, 'wWmivpmO', '2023-03-03 01:10:59', '2023-03-03 01:10:59'),
(1303, 'btfMuCnp', NULL, 'hagErTransPoRtLlC@bbTEl.COM', NULL, 'xT5AQpWY', '2023-03-03 01:11:51', '2023-03-03 01:11:51'),
(1304, 's9VSJKkf', NULL, 'LOsWatCher@Aol.CoM', NULL, 'Uv2HsCPF', '2023-03-03 01:11:56', '2023-03-03 01:11:56'),
(1305, 'miq0OVX1', NULL, 'wHEELertl@gMAil.com', NULL, 'C9wqAfpF', '2023-03-03 01:12:31', '2023-03-03 01:12:31'),
(1306, 'QFtd0mfk', NULL, 'LGviTO@yAhoo.coM', NULL, 'teMtzNQ3', '2023-03-03 01:12:42', '2023-03-03 01:12:42'),
(1307, 'SlKjHz36', NULL, 'FIxeRoFaLlPRoBleMS@YaHOO.com', NULL, 'BL0jrNjr', '2023-03-03 01:13:00', '2023-03-03 01:13:00'),
(1308, 'xOgZsYJv', NULL, 'SCotTJUMPS@yAHoo.COm', NULL, '5EBhqEVI', '2023-03-03 01:13:48', '2023-03-03 01:13:48'),
(1309, 'F2WDS7oS', NULL, 'LARry.UMukoro@Gmail.Com', NULL, '3eX22AgG', '2023-03-03 01:15:45', '2023-03-03 01:15:45'),
(1310, 'uwdPWGgd', NULL, 'cHRiiSfIIsCheR@hotmaIL.cOm', NULL, '4nIwXtce', '2023-03-03 02:27:01', '2023-03-03 02:27:01'),
(1311, 'Idz52lPz', NULL, 'MjaCOB@HisTORY.UCLA.Edu', NULL, '5GWi7dfR', '2023-03-03 02:27:20', '2023-03-03 02:27:20'),
(1312, 'St3TNEk0', NULL, 'osvaLDo.SaBateR58@gmAiL.cOm', NULL, 'O7KssMrV', '2023-03-03 02:27:27', '2023-03-03 02:27:27'),
(1313, 'ay7lZLE4', NULL, 'danNY.uReNA@YahoO.COm', NULL, 'BDgSpJLC', '2023-03-03 05:11:12', '2023-03-03 05:11:12'),
(1314, 'EDqHrKHZ', NULL, 'a.chAMAnLaL@yAhoO.Com', NULL, 'fjIEqwDy', '2023-03-03 07:03:01', '2023-03-03 07:03:01'),
(1315, 'BlJTZquu', NULL, 'AlEjANdROMorONG95@GmAil.cOM', NULL, NULL, '2023-03-03 09:27:54', '2023-03-03 09:27:54'),
(1316, 'zsqk7ZjE', NULL, 'PaULiNE.MCdONaGH@sEga.cO.uK', NULL, NULL, '2023-03-03 09:30:30', '2023-03-03 09:30:30'),
(1317, 'Di4QIMyK', NULL, 'ONduTY1111@gmAIl.Com', NULL, 'eUjMePXj', '2023-03-03 09:55:32', '2023-03-03 09:55:32'),
(1318, 'ctTCCxff', NULL, 'dj.cURRo20@GMaiL.com', NULL, NULL, '2023-03-03 12:42:41', '2023-03-03 12:42:41'),
(1319, 'M4CqhrCP', NULL, 'jORBIntandaZO_98@hoTmaIL.cOM', NULL, NULL, '2023-03-03 12:43:00', '2023-03-03 12:43:00'),
(1320, '75JxOZ4l', NULL, 'JaVoNnE1974@gmAiL.COm', NULL, NULL, '2023-03-03 12:43:17', '2023-03-03 12:43:17'),
(1321, 'R4SkoTvZ', NULL, 'AbNETmEleSe@hoTMaIL.com', NULL, NULL, '2023-03-03 12:43:20', '2023-03-03 12:43:20'),
(1322, 'EvmYDFGD', NULL, 'rAlpH@daughTRIdGEeneRGy.cOm', NULL, 'i4Gq4teR', '2023-03-03 17:50:38', '2023-03-03 17:50:38'),
(1323, 'dQSUIs3H', NULL, 'ChrIS@EveRythIngtRaDeSHows.com', NULL, 'TcjA79O1', '2023-03-03 21:08:55', '2023-03-03 21:08:55'),
(1324, 'QBSejdwO', NULL, 'EGORYLa@AoL.cOM', NULL, 'NyrY7oYV', '2023-03-03 21:14:19', '2023-03-03 21:14:19'),
(1325, 'HQS8qDuo', NULL, 'PINk4Toy@gMAIl.coM', NULL, '55r7YWhC', '2023-03-03 21:14:23', '2023-03-03 21:14:23'),
(1326, 'v4LBjCXa', NULL, 'JeFfREyHeDGErmAil@gmAIL.Com', NULL, 'qVOU9XTL', '2023-03-03 21:14:31', '2023-03-03 21:14:31'),
(1327, 'nUjRfAKF', NULL, 'LILstilLpRodigy@yAhOO.coM', NULL, 'faT73dJM', '2023-03-03 21:14:31', '2023-03-03 21:14:31'),
(1328, 'XfgObOYO', NULL, 'PInK4Toy@GmaiL.com', NULL, '76wdfneE', '2023-03-03 21:14:52', '2023-03-03 21:14:52'),
(1329, 'CEgRxxsF', NULL, 'CelenaspRY@GMAIL.cOM', NULL, 'PUB42RJX', '2023-03-03 21:14:52', '2023-03-03 21:14:52'),
(1330, 'DxyzHro3', NULL, 'EODdan@GMAiL.Com', NULL, '32GQUE43', '2023-03-03 21:15:07', '2023-03-03 21:15:07'),
(1331, '57IcCXQ5', NULL, 'DVENKi@yAhoo.cOm', NULL, 'xihQf1Yz', '2023-03-03 21:15:50', '2023-03-03 21:15:50'),
(1332, 'Z4zDIOtm', NULL, 'sImON852688@hOTMAil.COm', NULL, '8szD6bwR', '2023-03-03 21:33:24', '2023-03-03 21:33:24'),
(1333, 'xOLxmExJ', NULL, 'TuffROSs@yAhoO.COM', NULL, '6M4tK0G9', '2023-03-03 21:33:33', '2023-03-03 21:33:33'),
(1334, 'Ydj6jRo3', NULL, 'MiChAel@MiCHAelkenna.cOm', NULL, NULL, '2023-03-03 23:38:41', '2023-03-03 23:38:41'),
(1335, 'DXtQ6oxA', NULL, 'aDAm.KiNg@rogERs.CoM', NULL, NULL, '2023-03-03 23:38:49', '2023-03-03 23:38:49'),
(1336, 'ZjlSJT5y', NULL, 'rVAnDEvER@gmAIl.Com', NULL, NULL, '2023-03-03 23:39:03', '2023-03-03 23:39:03'),
(1337, 'wv3waoOE', NULL, 'HRAnDLes@Aol.com', NULL, NULL, '2023-03-03 23:39:15', '2023-03-03 23:39:15'),
(1338, 'rkcKEa6a', NULL, 'eLVIS14BLuE@GmAIL.cOm', NULL, NULL, '2023-03-04 05:24:22', '2023-03-04 05:24:22'),
(1339, 'RGnGlWr3', NULL, 'MOzaFarI.SHAIS@GMAil.COm', NULL, 'UNwPXIHf', '2023-03-04 06:28:07', '2023-03-04 06:28:07'),
(1340, 'Svz0sP9K', NULL, 'LowRyJ@hotmAIL.com', NULL, '1IIxoT2S', '2023-03-04 06:28:20', '2023-03-04 06:28:20'),
(1341, '3TfZrZS7', NULL, 'p.dELaNnOY@gRImMe.FR', NULL, NULL, '2023-03-04 07:06:58', '2023-03-04 07:06:58'),
(1342, '9JoQ3AgJ', NULL, 'JudItsUle@TiscaLi.co.uK', NULL, 'aEszZeJp', '2023-03-04 08:57:32', '2023-03-04 08:57:32'),
(1343, 'JvJknIOT', NULL, 'daNIELWAlDer@BLueWIn.Ch', NULL, 'Raungdh4', '2023-03-04 18:59:50', '2023-03-04 18:59:50'),
(1344, 'bF8KgQdR', NULL, 'p.DELANNOy@grIMMe.Fr', NULL, NULL, '2023-03-04 21:12:01', '2023-03-04 21:12:01'),
(1345, 'uLIBN2Xq', NULL, 'PeNelopeEsseNce@aol.cO.uK', NULL, NULL, '2023-03-04 23:34:37', '2023-03-04 23:34:37'),
(1346, '6E3Sl3p0', NULL, 'HagERTRanSPORtllC@BBTEL.CoM', NULL, NULL, '2023-03-04 23:34:37', '2023-03-04 23:34:37'),
(1347, 'QG0r425g', NULL, 'LAUReNAMyYXx@HoTmaiL.Com', NULL, NULL, '2023-03-04 23:34:47', '2023-03-04 23:34:47'),
(1348, 'KXeEoW7N', NULL, 'THeBigFisCH111@HOTmaiL.COm', NULL, NULL, '2023-03-04 23:34:59', '2023-03-04 23:34:59'),
(1349, '3xdvHnQI', NULL, 'mAIl_oRDER_bULlSxxt@yAHOo.cO.jp', NULL, NULL, '2023-03-04 23:35:56', '2023-03-04 23:35:56'),
(1350, 'AQwdYdjT', NULL, 'gAIlaNdtrOy@dodo.coM.au', NULL, NULL, '2023-03-04 23:36:14', '2023-03-04 23:36:14'),
(1351, 'tFNYcQcD', NULL, 'jOE@ozarkSCOMpaSs.CoM', NULL, NULL, '2023-03-04 23:36:43', '2023-03-04 23:36:43'),
(1352, 'o3K7Oh5q', NULL, 'WeSTellAS@dodo.com.AU', NULL, NULL, '2023-03-04 23:38:13', '2023-03-04 23:38:13'),
(1353, 'sr7NNylo', NULL, 'dkwHITe3602@aTT.nET', NULL, NULL, '2023-03-04 23:52:10', '2023-03-04 23:52:10'),
(1354, 'JGaqKkkb', NULL, 'BEcKeRCHrIS827@GMaIL.Com', NULL, NULL, '2023-03-04 23:52:21', '2023-03-04 23:52:21');
INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `message`, `da`, `created_at`, `updated_at`) VALUES
(1355, '8jXdXIQP', NULL, 'sAlmANzubAIRywWe@gmAil.COM', NULL, NULL, '2023-03-04 23:54:23', '2023-03-04 23:54:23'),
(1356, 'Up9NEKqV', NULL, 'remiXFrAGz@GMaIl.COM', NULL, NULL, '2023-03-04 23:54:46', '2023-03-04 23:54:46'),
(1357, 'hc1KG3ua', NULL, 'dIanNE.cOnNER@gmaIL.cOm', NULL, NULL, '2023-03-04 23:54:53', '2023-03-04 23:54:53'),
(1358, 'JysMPMDh', NULL, 'aArONfRIberg@GmAIL.com', NULL, NULL, '2023-03-05 22:59:13', '2023-03-05 22:59:13'),
(1359, 'SoDxlt1P', NULL, 'BObsBelly77@gMaiL.COM', NULL, NULL, '2023-03-06 06:43:33', '2023-03-06 06:43:33'),
(1360, '5zN52TUG', NULL, 'aShleYdOwdY666@GmaIL.coM', NULL, 'hxJILfeW', '2023-03-06 08:31:01', '2023-03-06 08:31:01'),
(1361, '39cpjnla', NULL, 'synDIAnDeRsON@oUTLOoK.COm', NULL, 'dwChbo3v', '2023-03-06 08:32:31', '2023-03-06 08:32:31'),
(1362, 'k1Ax1qfN', NULL, 'gTstANGg72@yahOo.cOm', NULL, 'vPD74gZh', '2023-03-06 08:33:19', '2023-03-06 08:33:19'),
(1363, 'cKf8ZPq2', NULL, 'aarYBROWN36@gmaIl.CoM', NULL, 'Rjw1kYaE', '2023-03-06 09:48:25', '2023-03-06 09:48:25'),
(1364, 'Williamscate', '82277789957', 'afb168promo@gmail.com', NULL, NULL, '2023-03-06 11:19:26', '2023-03-06 11:19:26'),
(1365, 'esWNomRJ', NULL, 'BraNdON.brOWN@CoMpUcom.CoM', NULL, NULL, '2023-03-06 11:44:39', '2023-03-06 11:44:39'),
(1366, NULL, NULL, 'ElIANa070587@MSN.Com', NULL, NULL, '2023-03-06 14:16:09', '2023-03-06 14:16:09'),
(1367, 'jUJJ80hM', NULL, 'aKparAE@GMaIL.coM', NULL, NULL, '2023-03-06 14:53:39', '2023-03-06 14:53:39'),
(1368, 'LemlLzfF', NULL, 'MiKEmAY29@yMAIL.coM', NULL, NULL, '2023-03-06 14:54:10', '2023-03-06 14:54:10'),
(1369, 'bLMd9KpR', NULL, 'smjOHN20@smUmN.EdU', NULL, NULL, '2023-03-06 14:54:15', '2023-03-06 14:54:15'),
(1370, 'a4wHYyIs', NULL, 'BEAr72A@hotMAiL.cOM', NULL, NULL, '2023-03-06 14:54:16', '2023-03-06 14:54:16'),
(1371, 'oA4L1AZ0', NULL, 'iNVoICE@COncePtdaTa.DK', NULL, NULL, '2023-03-06 14:55:12', '2023-03-06 14:55:12'),
(1372, 'djFljoX2', NULL, 'colOneLrCRaIG@vErizon.nEt', NULL, NULL, '2023-03-06 14:55:43', '2023-03-06 14:55:43'),
(1373, 'tHktAiEk', NULL, 'MVv@teCnO-Pc.COm', NULL, NULL, '2023-03-06 14:56:54', '2023-03-06 14:56:54'),
(1374, 'ZKlwzoE7', NULL, 'heNDErsoNDemarcuS19@gmaIl.coM', NULL, NULL, '2023-03-06 14:58:06', '2023-03-06 14:58:06'),
(1375, 'uhKFOI8U', NULL, 'leTraiLHarRiSon@Gmail.COm', NULL, NULL, '2023-03-06 17:25:03', '2023-03-06 17:25:03'),
(1376, 'ZoWAhos2', NULL, 'heRnaNDEzgeRmAN@GMaIl.Com', NULL, NULL, '2023-03-06 17:25:31', '2023-03-06 17:25:31'),
(1377, '2XROvexk', NULL, 'KriShViJay2001@Yahoo.coM', NULL, NULL, '2023-03-06 17:25:45', '2023-03-06 17:25:45'),
(1378, 'PAwETiRO', NULL, 'mAXIMe.PeRPiNa@GmAiL.cOm', NULL, NULL, '2023-03-06 17:25:51', '2023-03-06 17:25:51'),
(1379, 'F1h7mWdB', NULL, 'nolDno72000@YAHOO.CoM', NULL, NULL, '2023-03-06 17:26:59', '2023-03-06 17:26:59'),
(1380, 'q0q95z3i', NULL, 'bRIgitTEkelLE1004@gmaIL.COm', NULL, 'WTVNmP4k', '2023-03-06 18:17:00', '2023-03-06 18:17:00'),
(1381, 'uIM2CiAS', NULL, 'JturnBuLL@SUddeNLINK.nEt', NULL, 'Bj4QbtRF', '2023-03-06 18:17:53', '2023-03-06 18:17:53'),
(1382, 'cOcTSyIK', NULL, 'COLleen.CALLAghan@OUtlooK.coM', NULL, 'bKlWuaGF', '2023-03-06 18:19:34', '2023-03-06 18:19:34'),
(1383, 'IVMp3Eaa', NULL, 'mIssYP3219@yAhoo.cOM', NULL, NULL, '2023-03-06 21:40:06', '2023-03-06 21:40:06'),
(1384, 'ECsJpnv2', NULL, 'TUFFrOsS@yahoo.COM', NULL, NULL, '2023-03-06 21:40:25', '2023-03-06 21:40:25'),
(1385, 'MP8h5YFe', NULL, 'monEymODig7272@yAhoO.Com', NULL, NULL, '2023-03-06 21:40:34', '2023-03-06 21:40:34'),
(1386, 'wYtNbCIu', NULL, 'DONAlD@AqPM.cO.Za', NULL, NULL, '2023-03-06 21:40:37', '2023-03-06 21:40:37'),
(1387, 'mYTmbu9i', NULL, 'JIPpY.CoNStRUCtION@ouTLOOk.cOM', NULL, NULL, '2023-03-06 21:40:47', '2023-03-06 21:40:47'),
(1388, 'xgqUCNcY', NULL, 'DaNDtmCNEAL@ATT.neT', NULL, NULL, '2023-03-06 21:40:49', '2023-03-06 21:40:49'),
(1389, 'wg3jGCGx', NULL, 'JaCKsoNmoDENa@Gmail.cOM', NULL, NULL, '2023-03-06 21:40:52', '2023-03-06 21:40:52'),
(1390, 'f9gcn66g', NULL, 'CEDArsuE58@gMail.COM', NULL, NULL, '2023-03-06 21:41:20', '2023-03-06 21:41:20'),
(1391, 'klc6ewUE', NULL, 'RiCarDO.JOhNsoN98@YaHOo.Com', NULL, NULL, '2023-03-06 21:41:21', '2023-03-06 21:41:21'),
(1392, 'mDOwfnJM', NULL, 'tWalLeR@pLEASaNtvIeWMetrO.OrG', NULL, NULL, '2023-03-06 21:41:45', '2023-03-06 21:41:45'),
(1393, 'QGlU9sHT', NULL, 'cOLlIeR@keIThdcOlLiEr.COM', NULL, NULL, '2023-03-06 21:41:45', '2023-03-06 21:41:45'),
(1394, '6pUH3Nhz', NULL, 'gEorgeREALTor4022@GMaIL.COm', NULL, NULL, '2023-03-06 21:42:01', '2023-03-06 21:42:01'),
(1395, 'MnqdeRhd', NULL, 'liNdACStoVer@YAhoo.coM', NULL, NULL, '2023-03-06 21:42:04', '2023-03-06 21:42:04'),
(1396, 'rb0gleY5', NULL, 'jareTbeCerrA@GmAIL.COm', NULL, NULL, '2023-03-06 21:42:04', '2023-03-06 21:42:04'),
(1397, 'txYnJhAo', NULL, 'cOnTaCT@EBErhard-marco.cH', NULL, NULL, '2023-03-06 21:43:32', '2023-03-06 21:43:32'),
(1398, 'hkrJf5pA', NULL, 'MWrIGHT@SpEctrOtel.Com', NULL, NULL, '2023-03-06 21:43:52', '2023-03-06 21:43:52'),
(1399, 'LrUyx2zI', NULL, 'aRIesqbaN@yAHOo.Com', NULL, NULL, '2023-03-06 21:44:12', '2023-03-06 21:44:12'),
(1400, 'LqEy0mQg', NULL, 'TKuMP73@GMAil.CoM', NULL, '8XQwmLen', '2023-03-06 23:42:02', '2023-03-06 23:42:02'),
(1401, 'gtucTvfG', NULL, 'MaRcpicARD757@GmaIl.COm', NULL, NULL, '2023-03-07 00:51:16', '2023-03-07 00:51:16'),
(1402, 'MQSIJRAj', NULL, 'MOimAxiMe2647@gmAil.com', NULL, NULL, '2023-03-07 00:51:59', '2023-03-07 00:51:59'),
(1403, 'CWAEUOkh', NULL, 'CaRla@BOELSterlI.coM', NULL, NULL, '2023-03-07 00:53:23', '2023-03-07 00:53:23'),
(1404, 'XKxfxIQj', NULL, 'aLOKpLiaMAh8@gMaIL.Com', NULL, NULL, '2023-03-07 00:53:38', '2023-03-07 00:53:38'),
(1405, 'ZCYhRW6X', NULL, 'cLArkCarolYN134@Gmail.COm', NULL, 'K5tKZG2i', '2023-03-07 05:01:02', '2023-03-07 05:01:02'),
(1406, 'gEmXLhz8', NULL, 'PaUl@StRaNgefoOdS.cO.ZA', NULL, NULL, '2023-03-07 08:47:21', '2023-03-07 08:47:21'),
(1407, '07xyGlTL', NULL, 'tWALlER@PLeaSAnTvIeWMetRo.oRg', NULL, NULL, '2023-03-07 08:49:51', '2023-03-07 08:49:51'),
(1408, 'Ste6wQPm', NULL, 'gfAiSALKhAn@GMaIl.COm', NULL, NULL, '2023-03-07 08:50:05', '2023-03-07 08:50:05'),
(1409, 'tsoTWmSk', NULL, 'eNdeEJaa@gMAIL.CoM', NULL, NULL, '2023-03-07 09:49:38', '2023-03-07 09:49:38'),
(1410, 'Z8lRjVr5', NULL, 'mACHadOaUSTIn20@gmaIL.cOM', NULL, NULL, '2023-03-07 09:49:43', '2023-03-07 09:49:43'),
(1411, 'DTWx0zcg', NULL, 'mARInA.smITh@PRoPWINDoW.CO.zA', NULL, NULL, '2023-03-07 09:49:57', '2023-03-07 09:49:57'),
(1412, 'EreiWRH1', NULL, 'ENdEEjAA@GMaIl.cOm', NULL, NULL, '2023-03-07 09:50:01', '2023-03-07 09:50:01'),
(1413, 'eUpTS8yK', NULL, 'INFO@BRobYSPoRtSeftERsKolE.dk', NULL, NULL, '2023-03-07 09:50:19', '2023-03-07 09:50:19'),
(1414, 'N6cb7l01', NULL, 'shAnAhaNFAmily@YAHoo.COm', NULL, NULL, '2023-03-07 09:51:32', '2023-03-07 09:51:32'),
(1415, 'pTFBdgXX', NULL, 'cUOnGdn@yAHOo.COm', NULL, NULL, '2023-03-07 09:54:01', '2023-03-07 09:54:01'),
(1416, 'otjWZIM4', NULL, 'yaDiRA127@yahOO.cOM', NULL, 'BAO88ELC', '2023-03-07 11:09:58', '2023-03-07 11:09:58'),
(1417, 'hOdvkvoP', NULL, 'JRolLIS21@GmAIL.com', NULL, 'nXvCpOzD', '2023-03-07 11:30:18', '2023-03-07 11:30:18'),
(1418, '7eZD9RVO', NULL, 'pG21555@GMAil.cOm', NULL, NULL, '2023-03-07 11:34:00', '2023-03-07 11:34:00'),
(1419, '1CXNtHDV', NULL, 'sboEHM@bluEwin.ch', NULL, NULL, '2023-03-07 12:23:08', '2023-03-07 12:23:08'),
(1420, 'gGaQAT5u', NULL, 'SbOEhm@BLueWIn.ch', NULL, NULL, '2023-03-07 12:23:26', '2023-03-07 12:23:26'),
(1421, 't1oRHF8a', NULL, 'riCardoAlONSOAce@gMAil.CoM', NULL, NULL, '2023-03-07 12:23:30', '2023-03-07 12:23:30'),
(1422, 'VG7MJj4u', NULL, 'aMORvInCItoMnIA39@GMAIL.cOM', NULL, NULL, '2023-03-07 12:23:39', '2023-03-07 12:23:39'),
(1423, 'SkTcMdho', NULL, 'jON95BrO@YAHOO.cOM', NULL, NULL, '2023-03-07 17:18:08', '2023-03-07 17:18:08'),
(1424, '4jOltLXD', NULL, 'roRYGCUnnIngHAM@aol.Com', NULL, NULL, '2023-03-07 19:17:32', '2023-03-07 19:17:32'),
(1425, 'E8bfKs4b', NULL, 'RICARdO.JOHNSOn98@Yahoo.com', NULL, NULL, '2023-03-07 19:17:35', '2023-03-07 19:17:35'),
(1426, 'KDCOTGAo', NULL, 'AmChiLlin@LivE.com.Au', NULL, NULL, '2023-03-07 19:17:42', '2023-03-07 19:17:42'),
(1427, 'egvWRLYF', NULL, 'cNGUyENX77@yAhOO.CoM', NULL, NULL, '2023-03-07 19:17:50', '2023-03-07 19:17:50'),
(1428, 'JEevD93S', NULL, 'TkuMp73@GMail.com', NULL, NULL, '2023-03-07 19:18:08', '2023-03-07 19:18:08'),
(1429, '5tnm5v8f', NULL, 'vmOREcANAda@gmAil.CoM', NULL, NULL, '2023-03-07 19:18:11', '2023-03-07 19:18:11'),
(1430, '4hR72vRO', NULL, 'LARaBitLeU@gmail.Com', NULL, NULL, '2023-03-07 19:18:16', '2023-03-07 19:18:16'),
(1431, 'ttGMeLLK', NULL, 'deBbIEakers@gmAiL.CoM', NULL, NULL, '2023-03-07 19:22:12', '2023-03-07 19:22:12'),
(1432, 'wy5ZFHv5', NULL, 'jOlinxU0321@gMaiL.COm', NULL, 'llSCsdzq', '2023-03-07 19:41:25', '2023-03-07 19:41:25'),
(1433, 'pb5PWtB3', NULL, 'jamESYevanS007@oUtlOok.coM', NULL, NULL, '2023-03-07 21:02:59', '2023-03-07 21:02:59'),
(1434, 'Mm0Vprw5', NULL, 'cHUCK@moyeRREaLTyllC.com', NULL, 'GyKoqrFP', '2023-03-07 22:03:07', '2023-03-07 22:03:07'),
(1435, 'B6RlmwPV', NULL, 'hEaThEr.namiaS@GmaIL.COm', NULL, 'CKumO7Fo', '2023-03-07 22:56:09', '2023-03-07 22:56:09'),
(1436, 'UaX2vSgE', NULL, 'Rachel@HIGDonDECoYs.com', NULL, 'N31X4xcL', '2023-03-07 22:56:24', '2023-03-07 22:56:24'),
(1437, 'ogYm5dwC', NULL, 'aVUKelIch17@gmaiL.cOM', NULL, 'y6XrH7ol', '2023-03-07 23:32:33', '2023-03-07 23:32:33'),
(1438, 'epH4KDI8', NULL, 'coOlcOPy@MARtinschAFFER.COm', NULL, 'khxti8q5', '2023-03-08 00:32:48', '2023-03-08 00:32:48'),
(1439, 'U0LZMbPw', NULL, 'aAronlIz51@gmAIL.COM', NULL, 'Ex7dB20j', '2023-03-08 00:33:06', '2023-03-08 00:33:06'),
(1440, '8kcjGAN8', NULL, 'sHaYNeS1245@yAhoO.CoM', NULL, 'qT6Dygg8', '2023-03-08 00:33:40', '2023-03-08 00:33:40'),
(1441, NULL, NULL, 'HaNsON.juLiE@gMaiL.Com', NULL, NULL, '2023-03-08 02:16:07', '2023-03-08 02:16:07'),
(1442, NULL, NULL, 'HAGErtrAnsPOrtLlC@BBtel.cOm', NULL, NULL, '2023-03-08 02:16:32', '2023-03-08 02:16:32'),
(1443, '91F2RbwR', NULL, 'oNYxs1524@GMAil.CoM', NULL, 'Q8JIpE4Y', '2023-03-08 02:17:51', '2023-03-08 02:17:51'),
(1444, NULL, NULL, 'michElE.tHINkER@gmail.coM', NULL, NULL, '2023-03-08 02:18:51', '2023-03-08 02:18:51'),
(1445, NULL, NULL, 'NrY001@YaHOO.cOm', NULL, NULL, '2023-03-08 02:19:03', '2023-03-08 02:19:03'),
(1446, '40WgbEx7', NULL, 'VUSAIGON@AOL.coM', NULL, 'zskOWExG', '2023-03-08 02:19:07', '2023-03-08 02:19:07'),
(1447, 'jFwreRhE', NULL, 'ESPeraNtINEdesarDoUIN@gmaIL.cOm', NULL, NULL, '2023-03-08 06:47:21', '2023-03-08 06:47:21'),
(1448, 'VoUcaOwU', NULL, 'Weber845@atT.NeT', NULL, NULL, '2023-03-08 12:00:27', '2023-03-08 12:00:27'),
(1449, 'QFqHurTe', NULL, 'mARiNa.sMIth@pRopWINdOw.cO.ZA', NULL, 'YPjxqjxe', '2023-03-08 13:15:59', '2023-03-08 13:15:59'),
(1450, NULL, NULL, 'brANDONmeNGliSH@GMaiL.CoM', NULL, NULL, '2023-03-08 13:35:42', '2023-03-08 13:35:42'),
(1451, 'HmK4qZs9', NULL, 'CrCULP@SBCGLobaL.nET', NULL, 'Jjq3PEtF', '2023-03-08 14:54:15', '2023-03-08 14:54:15'),
(1452, 'Rx35XrzB', NULL, 'MarIna.smITh@prOpWINDoW.CO.ZA', NULL, 'eAXFnQjt', '2023-03-08 14:57:07', '2023-03-08 14:57:07'),
(1453, 'xvmGO0tb', NULL, 'PHoNgnHac2002@gmAIl.CoM', NULL, '6SYi1hIs', '2023-03-08 15:20:03', '2023-03-08 15:20:03'),
(1454, 'INkGUP7Z', NULL, 'Phinchey@hOTmAil.CoM', NULL, NULL, '2023-03-08 16:05:20', '2023-03-08 16:05:20'),
(1455, 'TX4ktr6P', NULL, 'aLeXNemIROVsKY@hoTMaiL.COm', NULL, NULL, '2023-03-08 16:08:40', '2023-03-08 16:08:40'),
(1456, 'jZLHl5A9', NULL, 'LINdSAY@HEadSTOneCANNaBiS.COm', NULL, NULL, '2023-03-08 19:34:30', '2023-03-08 19:34:30'),
(1457, 'QEJ02E30', NULL, 'OdbuenavIsta@yaHOo.COm', NULL, 'qt8qsJuL', '2023-03-08 19:46:44', '2023-03-08 19:46:44'),
(1458, 'tG3LsUVo', NULL, 'kObo_3049@HoTmaiL.cOm', NULL, 'CYmrbxYP', '2023-03-08 20:26:49', '2023-03-08 20:26:49'),
(1459, 'qm20yenh', NULL, 'gNGAuDi@gMAIl.Com', NULL, 'EYfMr6yD', '2023-03-08 20:49:57', '2023-03-08 20:49:57'),
(1460, 'O7j9edGK', NULL, 'jenN9487@hOtMail.CoM', NULL, 'HHgp8vpW', '2023-03-08 20:52:13', '2023-03-08 20:52:13'),
(1461, 'bEBS4Sql', NULL, 'CuongTr245@gMAil.COm', NULL, 's2FYwD3p', '2023-03-08 20:52:13', '2023-03-08 20:52:13'),
(1462, 'XRwmjGo2', NULL, 'nOpPEnHEIm@sCALaMAnDRe.COm', NULL, 'gUeUWdA8', '2023-03-08 20:53:03', '2023-03-08 20:53:03'),
(1463, 'g6m6RCfR', NULL, 'JeffHaRper1992@yaHOO.com', NULL, NULL, '2023-03-09 02:44:18', '2023-03-09 02:44:18'),
(1464, 'aByNVLOv', NULL, 'michEle@KAllERArChiTeCTS.Com', NULL, NULL, '2023-03-09 02:44:27', '2023-03-09 02:44:27'),
(1465, 'THmkKSEx', NULL, 'kDImaYuGa2000@gmAil.cOm', NULL, NULL, '2023-03-09 02:45:08', '2023-03-09 02:45:08'),
(1466, 'KaLIzoQi', NULL, 'CbG1224@GmaiL.CoM', NULL, NULL, '2023-03-09 03:21:36', '2023-03-09 03:21:36'),
(1467, 'xLQHKOWq', NULL, 'lisEPHaraNd@yAHoO.Ca', NULL, 'UYCILQUp', '2023-03-09 04:28:01', '2023-03-09 04:28:01'),
(1468, 'SFB7juza', NULL, 'MNvAlEry@YaHoO.com', NULL, NULL, '2023-03-09 11:50:48', '2023-03-09 11:50:48'),
(1469, 'xw6WULGf', NULL, 'lUCiaSoFIaSICilianO14@GmAIL.cOm', NULL, NULL, '2023-03-09 12:22:56', '2023-03-09 12:22:56'),
(1470, 'A2an6Nrx', NULL, 'eStEr.maaOUIA@BLUeWin.Ch', NULL, '7OsDLhth', '2023-03-09 13:19:42', '2023-03-09 13:19:42'),
(1471, 'lqsLrO0H', NULL, 'jAmESlanCaSTeR93@GmaIL.Com', NULL, 'BgNuUh0Q', '2023-03-09 13:19:47', '2023-03-09 13:19:47'),
(1472, 'JQliYJ29', NULL, 'chRiisfiiSCHER@HotmAIL.cOM', NULL, 'DgNg9Opd', '2023-03-09 13:19:50', '2023-03-09 13:19:50'),
(1473, '78RVyd8P', NULL, 'eSTer.MAAOuIA@BLUEWIn.CH', NULL, 'Wnk9esyl', '2023-03-09 13:19:55', '2023-03-09 13:19:55'),
(1474, 'IYiI4rFt', NULL, 'wilLyaNCr@GMAIl.COM', NULL, 'GYHM25kM', '2023-03-09 13:19:56', '2023-03-09 13:19:56'),
(1475, 'ZSF7Dbn9', NULL, 'AmanDaKoOPS@GmaIL.COM', NULL, 'E7Wi4vfU', '2023-03-09 13:21:22', '2023-03-09 13:21:22'),
(1476, '54QU08EN', NULL, 'cHRIStENJAmISon@yAhoO.cOM', NULL, 'aqhu6eYw', '2023-03-09 15:26:15', '2023-03-09 15:26:15'),
(1477, 'BlffCZTA', NULL, 'bTAg222@UkY.EDU', NULL, 'vpq1mUow', '2023-03-09 15:30:27', '2023-03-09 15:30:27'),
(1478, '4M1EWB8R', NULL, 'JoKAThRiNAcRuz@hOTMAil.cOm', NULL, 'lT2xIPWw', '2023-03-09 18:54:27', '2023-03-09 18:54:27'),
(1479, 'b3xxFuhg', NULL, 'Joe@fighTbIlls.Com', NULL, 'fPRJAaKU', '2023-03-09 18:55:06', '2023-03-09 18:55:06'),
(1480, 'vMC9J6X4', NULL, 'TKump73@GmAIl.cOM', NULL, 'Mj0Ff7jF', '2023-03-09 18:57:20', '2023-03-09 18:57:20'),
(1481, 'n9Fe5v7b', NULL, 'asST28@YahoO.cOm', NULL, 'awNphoNd', '2023-03-09 18:57:22', '2023-03-09 18:57:22'),
(1482, 'BGG6Hreo', NULL, 'ADuHamELl244@GmaIL.COm', NULL, 'TfGcaTaM', '2023-03-09 19:14:53', '2023-03-09 19:14:53'),
(1483, '6096KNPF', NULL, 'MZMiN8904@gmaIl.CoM', NULL, 'p1v87lo9', '2023-03-09 19:14:53', '2023-03-09 19:14:53'),
(1484, 'hXoY7rxa', NULL, 'clS03330@Wind.oDN.Ne.jp', NULL, 'OKc1JY4C', '2023-03-09 19:15:01', '2023-03-09 19:15:01'),
(1485, 'DNm2n80t', NULL, 'terRANIkaC@gMAil.cOm', NULL, 'PMQ2URsN', '2023-03-09 19:15:28', '2023-03-09 19:15:28'),
(1486, 'vQySM6VU', NULL, 'ngUpTa@qePaRTnerS.com', NULL, 'n4PfHeIh', '2023-03-09 19:16:25', '2023-03-09 19:16:25'),
(1487, 'jfUiCm7O', NULL, 'mfoY80@hoTMAiL.coM', NULL, '5ApR9rY1', '2023-03-09 19:16:38', '2023-03-09 19:16:38'),
(1488, 'XHWseF7h', NULL, 'gdgjERTSON18@gMail.Com', NULL, 'PLoTl3Co', '2023-03-09 19:16:49', '2023-03-09 19:16:49'),
(1489, 'wAS95CNI', NULL, 'kEnfairlEIgH@msn.cOm', NULL, 'R2gslZuD', '2023-03-09 19:53:35', '2023-03-09 19:53:35'),
(1490, 'csPr8H5g', NULL, 'BhOyt845@gmAil.coM', NULL, '2XdgBjbT', '2023-03-09 19:54:12', '2023-03-09 19:54:12'),
(1491, 'caxmv3Fv', NULL, 'SArkn@HOtMaiL.CoM', NULL, 'cUTJrSmi', '2023-03-09 19:54:26', '2023-03-09 19:54:26'),
(1492, 'g4p5TIg4', NULL, 'tanGelA.haRDY36@yAhoo.cOm', NULL, NULL, '2023-03-09 20:26:47', '2023-03-09 20:26:47'),
(1493, 'd3U6PRAy', NULL, 'CAROLE@MgIcOllISION.COM', NULL, NULL, '2023-03-09 20:27:28', '2023-03-09 20:27:28'),
(1494, 'VeHwQHOz', NULL, 'MiGueLcAMAra_Dj@hOTMAIL.COm', NULL, NULL, '2023-03-09 20:55:21', '2023-03-09 20:55:21'),
(1495, 'KGrmRDCt', NULL, 'pyRoFish13@GmAIL.cOm', NULL, NULL, '2023-03-09 20:55:38', '2023-03-09 20:55:38'),
(1496, 'JnqmDamN', NULL, 'ASpEAR06@IcLOud.COm', NULL, NULL, '2023-03-09 20:55:39', '2023-03-09 20:55:39'),
(1497, '5xjzI6hB', NULL, 'CheryL@DAvisgROup.ORg', NULL, NULL, '2023-03-09 20:55:42', '2023-03-09 20:55:42'),
(1498, 'I0m9Fsxo', NULL, 'mAgnUsoN@tEluS.NET', NULL, 'CgWOkr7o', '2023-03-09 21:43:00', '2023-03-09 21:43:00'),
(1499, 'Gkjfj5Wt', NULL, 'dADUDe1425@gmaIL.com', NULL, 'NMgoXqxA', '2023-03-09 21:43:30', '2023-03-09 21:43:30'),
(1500, 'jXVEeuub', NULL, 'ThAfner12@yaHoO.dE', NULL, 'rqNxuuKM', '2023-03-09 23:11:29', '2023-03-09 23:11:29'),
(1501, 'pIvmwwny', NULL, 'jDigim@gMAiL.cOM', NULL, 'o0cdAR5Q', '2023-03-09 23:11:39', '2023-03-09 23:11:39'),
(1502, 'xme9AK7G', NULL, 'PAStorJ@SpCMiAMI.Org', NULL, 'gCs6BrNo', '2023-03-09 23:11:45', '2023-03-09 23:11:45'),
(1503, 'LrwMNpSx', NULL, 'MWaShITIbeATriCE@gmaIL.Com', NULL, 'lCIQdauV', '2023-03-09 23:12:02', '2023-03-09 23:12:02'),
(1504, 'uD1kFNO8', NULL, 'CHERyL@DaVIsgROup.OrG', NULL, 'UbUHz1WO', '2023-03-10 02:17:00', '2023-03-10 02:17:00'),
(1505, '1yrY2Ngk', NULL, 'RSantOSki@aSREpoRtEd.COM', NULL, 'uJoJLPZc', '2023-03-10 02:17:01', '2023-03-10 02:17:01'),
(1506, 'qTu2uNf0', NULL, 'AusTin@AntiwAR.cOM', NULL, 'WjXEjw8t', '2023-03-10 02:17:37', '2023-03-10 02:17:37'),
(1507, 'k1BDZT8O', NULL, 'sHrI.SIVAcHaNDrAN@gmAIl.coM', NULL, NULL, '2023-03-10 02:33:13', '2023-03-10 02:33:13'),
(1508, 'qhSGLai7', NULL, 'LIsAhiLloCK22@hotmAIL.com', NULL, NULL, '2023-03-10 02:34:54', '2023-03-10 02:34:54'),
(1509, 'Inxwfzd5', NULL, 'CAPShAhraM@GmaiL.Com', NULL, NULL, '2023-03-10 02:36:07', '2023-03-10 02:36:07'),
(1510, 'KhXLR9Iu', NULL, 'emaIl2ALiMo@GmaiL.COm', NULL, NULL, '2023-03-10 05:22:07', '2023-03-10 05:22:07'),
(1511, 'Mike Mansfield', '82196756293', 'no-replyvedo@gmail.com', NULL, NULL, '2023-03-10 08:52:18', '2023-03-10 08:52:18'),
(1512, 'Swips', '89619182184', 'nirs7cv2@hotmail.com', NULL, NULL, '2023-03-10 09:41:29', '2023-03-10 09:41:29'),
(1513, 'bdXDqQc6', NULL, 'iVKePR84@bLueWIn.CH', NULL, NULL, '2023-03-10 14:05:45', '2023-03-10 14:05:45'),
(1514, 'cCiDpRsR', NULL, 'HoCAsTRo@YAHoO.cOM', NULL, NULL, '2023-03-10 14:05:46', '2023-03-10 14:05:46'),
(1515, '6waZOSKh', NULL, 'ChASe.maChaIn@sNc.edU', NULL, NULL, '2023-03-10 14:06:06', '2023-03-10 14:06:06'),
(1516, 'CZvxa4mV', NULL, 'SIMPfLex@GMail.com', NULL, NULL, '2023-03-10 14:06:11', '2023-03-10 14:06:11'),
(1517, 'MBVL4FD6', NULL, 'aRrelL123@Aol.Com', NULL, NULL, '2023-03-10 14:06:15', '2023-03-10 14:06:15'),
(1518, 'zX5NWZIo', NULL, 'sUpport@ZedxION.COM', NULL, NULL, '2023-03-10 14:06:37', '2023-03-10 14:06:37'),
(1519, 'PFG3LaDH', NULL, 'DEvElopEr@ZeDXION.cOm', NULL, NULL, '2023-03-10 14:07:05', '2023-03-10 14:07:05'),
(1520, 'PIrdUaVd', NULL, 'abELdomaNskI@gmail.cOm', NULL, NULL, '2023-03-10 20:51:35', '2023-03-10 20:51:35'),
(1521, 'KzOgqfwK', NULL, 'AsImAsIF441@GMAil.cOm', NULL, NULL, '2023-03-10 20:53:22', '2023-03-10 20:53:22'),
(1522, '4EnMkPaW', NULL, 'ScoTtROtHWalL@MSn.COM', NULL, NULL, '2023-03-10 20:54:32', '2023-03-10 20:54:32'),
(1523, 'yF2Fys6O', NULL, 'TwALlER@PLEAsantViewMetRo.oRg', NULL, '7vuwfkyW', '2023-03-10 22:06:53', '2023-03-10 22:06:53'),
(1524, '0PzGPHPs', NULL, 'dJGaRCIA101@mAIL.CoM', NULL, NULL, '2023-03-11 01:21:45', '2023-03-11 01:21:45'),
(1525, 'O6fiL7Xn', NULL, 'reTechinC@hoTmAIl.CA', NULL, NULL, '2023-03-11 01:22:26', '2023-03-11 01:22:26'),
(1526, 'ZTk1bMZg', NULL, 'feenPHOTo@GMAIL.COm', NULL, NULL, '2023-03-11 04:30:48', '2023-03-11 04:30:48'),
(1527, NULL, NULL, 'twaLlEr@PleAsANTvIEwmEtRo.ORG', NULL, NULL, '2023-03-11 07:43:28', '2023-03-11 07:43:28'),
(1528, 'yxYb4d9c', NULL, 'sbURK@PSMiCoRP.coM', NULL, 'gslCoPwQ', '2023-03-11 11:56:35', '2023-03-11 11:56:35'),
(1529, '899F87Lk', NULL, 'ADAm.kIng@rOgerS.coM', NULL, NULL, '2023-03-11 13:35:29', '2023-03-11 13:35:29'),
(1530, 'OfWNLtnv', NULL, 'SimPflEx@GMAil.COM', NULL, NULL, '2023-03-11 15:08:00', '2023-03-11 15:08:00'),
(1531, 'mXsJdLdd', NULL, 'VitAlJIN@YAHOO.co.KR', NULL, NULL, '2023-03-11 15:08:04', '2023-03-11 15:08:04'),
(1532, 'v5rvF1vl', NULL, 'jHAwk@aaALIFE.cOM', NULL, NULL, '2023-03-11 15:08:25', '2023-03-11 15:08:25'),
(1533, 'cGTGzOs3', NULL, 'PAUl.HErzz1981@icLoud.cOM', NULL, NULL, '2023-03-11 15:08:31', '2023-03-11 15:08:31'),
(1534, 'ftwbW3eu', NULL, 'CNLsWanson@me.CoM', NULL, NULL, '2023-03-11 15:08:54', '2023-03-11 15:08:54'),
(1535, 'Kn1Fd1F4', NULL, 'miCHelEkLaM@GmaIL.cOm', NULL, NULL, '2023-03-11 15:09:54', '2023-03-11 15:09:54'),
(1536, 'E115j9PJ', NULL, 'fmy1982@HoTMAiL.COm', NULL, 'C52srxDT', '2023-03-11 17:31:20', '2023-03-11 17:31:20'),
(1537, 'wvEwAEZo', NULL, 'jBKL2012@GmAiL.COm', NULL, 'hJ0Ascj1', '2023-03-11 17:32:45', '2023-03-11 17:32:45'),
(1538, '3LBWH3kW', NULL, 'chAncElYnsaUnDerS23@GMAil.cOm', NULL, '54E6lHnQ', '2023-03-11 17:33:32', '2023-03-11 17:33:32'),
(1539, '3J0K9VU0', NULL, 'MARIAGg9828@GmAIl.CoM', NULL, NULL, '2023-03-11 18:05:26', '2023-03-11 18:05:26'),
(1540, '7A8LQvMh', NULL, 'pENELopEESSeNcE@aOL.co.uk', NULL, NULL, '2023-03-11 19:17:04', '2023-03-11 19:17:04'),
(1541, 'NJZXe8o1', NULL, 'kyRAnOElS22@GmAIL.COM', NULL, 'rbZZmqaH', '2023-03-11 20:40:24', '2023-03-11 20:40:24'),
(1542, 'UIcobOJo', NULL, 'DLT_tyler@HoTMAIL.CoM', NULL, 'uzmh9ME3', '2023-03-12 05:43:56', '2023-03-12 05:43:56'),
(1543, 'Ajt1iofo', NULL, 'KiLpAtRick.emMA@OutlOok.com', NULL, NULL, '2023-03-12 05:56:14', '2023-03-12 05:56:14'),
(1544, '2WNH7m3v', NULL, 'debORACoUTTo@hotmAil.COm', NULL, NULL, '2023-03-12 11:06:12', '2023-03-12 11:06:12'),
(1545, 'TPXfxdev', NULL, 'BLackyosHi111@GMail.Com', NULL, 'n355zDnI', '2023-03-12 12:26:28', '2023-03-12 12:26:28'),
(1546, '1fxozyjQ', NULL, 'lauReNMouLd1@iCloUD.cOm', NULL, 'GahnRSVj', '2023-03-12 13:50:09', '2023-03-12 13:50:09'),
(1547, 'Nm5HQldz', NULL, 'lINdA_99@BIgpond.COM', NULL, '1McbSuos', '2023-03-12 13:50:35', '2023-03-12 13:50:35'),
(1548, 'v51th3m9', NULL, 'LaURENmOuLD1@ICLOUD.com', NULL, 'aYnWordi', '2023-03-12 13:51:22', '2023-03-12 13:51:22'),
(1549, 'u14PPahe', NULL, 'mElISSa.k.DENTON@gMaIl.Com', NULL, NULL, '2023-03-12 18:14:03', '2023-03-12 18:14:03'),
(1550, 'dVskTD86', NULL, 'tuRBOElF@weB.dE', NULL, NULL, '2023-03-12 18:14:56', '2023-03-12 18:14:56'),
(1551, 'obJ5oyCd', NULL, 'HGrAHAm86@gMAIL.com', NULL, NULL, '2023-03-12 18:15:28', '2023-03-12 18:15:28'),
(1552, 'oDoISyKE', NULL, 'eaRTHbOunDmIsfit.SB@GMAIl.Com', NULL, NULL, '2023-03-13 03:26:03', '2023-03-13 03:26:03'),
(1553, 'jigR1s8h', NULL, 'GraNTRecO33@aoL.COm', NULL, 'N0BmAIsi', '2023-03-13 06:21:32', '2023-03-13 06:21:32'),
(1554, 'WB1qftBE', NULL, 'jaZiZ.InDIa@gmAIL.com', NULL, 'LkJXDJ6F', '2023-03-13 16:06:58', '2023-03-13 16:06:58'),
(1555, 'dRIXjpeH', NULL, 'ROGErmarTiNEZJR@gMAIl.Com', NULL, NULL, '2023-03-13 16:08:10', '2023-03-13 16:08:10'),
(1556, 'hM6XzTGR', NULL, 'hP@dATapeOPlE.dk', NULL, NULL, '2023-03-13 16:09:30', '2023-03-13 16:09:30'),
(1557, 'P3pxIPVO', NULL, 'pMlyNEk@Yahoo.com', NULL, 'B5Iwdyp4', '2023-03-13 16:09:36', '2023-03-13 16:09:36'),
(1558, 'hNOEkXOn', NULL, 'alWAySOnEleCTRiC@HOTMaiL.coM', NULL, NULL, '2023-03-13 18:05:01', '2023-03-13 18:05:01'),
(1559, 'fl4xiQQZ', NULL, 'HTuRcoTte1@GMAiL.cOM', NULL, NULL, '2023-03-13 18:06:00', '2023-03-13 18:06:00'),
(1560, 'QCP3Tu8W', NULL, 'RwwARREN@HotmAiL.Com', NULL, NULL, '2023-03-13 18:07:36', '2023-03-13 18:07:36'),
(1561, 'G8omadc6', NULL, 'AhsaNsHAKOOr@OutLOoK.Com', NULL, NULL, '2023-03-13 18:08:13', '2023-03-13 18:08:13'),
(1562, 'h7u628OZ', NULL, 'GigiVeneZIA1974@gmAil.cOm', NULL, NULL, '2023-03-13 18:08:16', '2023-03-13 18:08:16'),
(1563, 'mVbnlywz', NULL, 'LicANzeek@YAhoo.CoM', NULL, NULL, '2023-03-13 18:08:25', '2023-03-13 18:08:25'),
(1564, 'Q5ydqdfb', NULL, 'mAXWhITcOMB10@gmAIL.CoM', NULL, NULL, '2023-03-13 18:08:54', '2023-03-13 18:08:54'),
(1565, 'Zc1k3uwo', NULL, 'JAKeGloVeR52@GMaIl.cOM', NULL, NULL, '2023-03-13 18:09:20', '2023-03-13 18:09:20'),
(1566, 'R4cvUBUr', NULL, 'SrV4@aOL.CoM', NULL, NULL, '2023-03-13 18:37:50', '2023-03-13 18:37:50'),
(1567, '2YTyhHE0', NULL, 'SaNdMeIer@GmX.Net', NULL, NULL, '2023-03-13 18:39:30', '2023-03-13 18:39:30'),
(1568, 'EJ1U06VG', NULL, 'TKUmp73@GMail.CoM', NULL, NULL, '2023-03-13 18:39:38', '2023-03-13 18:39:38'),
(1569, 'wc359az6', NULL, 'mIcHaeRReiD@gMaIl.cOm', NULL, NULL, '2023-03-13 18:39:53', '2023-03-13 18:39:53'),
(1570, 'ESdSFRfe', NULL, 'RAfaelTroNCHA@COnTrOLsys.ES', NULL, NULL, '2023-03-13 18:40:01', '2023-03-13 18:40:01'),
(1571, 'YeE8SAvJ', NULL, 'sANDmeiER@gMx.net', NULL, NULL, '2023-03-13 18:40:03', '2023-03-13 18:40:03'),
(1572, 'LHLhkyIJ', NULL, 'bLainEjmaDSEn@gmAil.com', NULL, NULL, '2023-03-13 18:40:30', '2023-03-13 18:40:30'),
(1573, 'PFPicTQ0', NULL, 'anTONTochYLIN@GMaiL.CoM', NULL, 'SOoAnPQd', '2023-03-14 00:50:05', '2023-03-14 00:50:05'),
(1574, 'hFsknrRR', NULL, 'chaseSCbJ@YAhOO.coM', NULL, 'F0xgKQtW', '2023-03-14 00:50:14', '2023-03-14 00:50:14'),
(1575, 'AdWgWhiQ', NULL, 'TKuMP73@gmAil.CoM', NULL, 'yMmdZaNB', '2023-03-14 00:50:15', '2023-03-14 00:50:15'),
(1576, 'LEiaYTrs', NULL, 'walLYsDad@iPriMuS.COm.aU', NULL, 'UVYRwu41', '2023-03-14 00:50:24', '2023-03-14 00:50:24'),
(1577, 't3dYhIdj', NULL, 'T@FoCUS830.cOM', NULL, 'EpvBN7E8', '2023-03-14 00:50:37', '2023-03-14 00:50:37'),
(1578, 'GG1pTjCB', NULL, 'RoBErvAl1107@hotMaIl.com', NULL, 'WZ973WVA', '2023-03-14 00:50:45', '2023-03-14 00:50:45'),
(1579, 'DWcxZhBr', NULL, 'cArLOALBERtolc@gMAil.COM', NULL, '7xJNUV2F', '2023-03-14 00:51:18', '2023-03-14 00:51:18'),
(1580, 'xgt1sXf6', NULL, 'JakeGloveR52@GmAiL.CoM', NULL, 'IhHbqiMP', '2023-03-14 00:54:06', '2023-03-14 00:54:06'),
(1581, '6HBOtJjn', NULL, 'jOEsBARaNDgriLl5@coMCasT.nET', NULL, NULL, '2023-03-14 01:57:10', '2023-03-14 01:57:10'),
(1582, 'hQQ837eW', NULL, 'AbrarHAShiM72@gmAIL.coM', NULL, NULL, '2023-03-14 01:57:17', '2023-03-14 01:57:17'),
(1583, 'JAxwUmEM', NULL, 't.GUYlAIne@ViDEoTrON.Ca', NULL, NULL, '2023-03-14 05:46:58', '2023-03-14 05:46:58'),
(1584, 'mhA7bUoC', NULL, 'patrUiOAN@HotMaIl.COM', NULL, NULL, '2023-03-14 05:48:37', '2023-03-14 05:48:37'),
(1585, 'hPcHqldK', NULL, 'sAManTHanG412@gmAiL.cOm', NULL, NULL, '2023-03-14 05:48:40', '2023-03-14 05:48:40'),
(1586, 'A9ZX9xr1', NULL, 'abRaRhaSHim72@GMAIl.com', NULL, NULL, '2023-03-14 05:48:46', '2023-03-14 05:48:46'),
(1587, 'Mike Chapman', '88983252699', 'no-replyvedo@gmail.com', NULL, NULL, '2023-03-14 06:06:53', '2023-03-14 06:06:53'),
(1588, 'ImV9PQw1', NULL, 'sScHRaUfNAgel@GmAiL.Com', NULL, 'QhEaEedJ', '2023-03-14 07:45:28', '2023-03-14 07:45:28'),
(1589, 'Xa5De7de', NULL, 'vALLONESOphIA2@GMAIl.COM', NULL, NULL, '2023-03-14 13:06:33', '2023-03-14 13:06:33'),
(1590, 'wqPCBsGI', NULL, 'SoFIAchiriNosc@HOtmAiL.CoM', NULL, 'O7ASP5dQ', '2023-03-14 17:36:10', '2023-03-14 17:36:10'),
(1591, 'Rg0YpFo7', NULL, 'accoUnting@frieNdlyearTh.coM', NULL, 'zaavFYqk', '2023-03-14 17:37:27', '2023-03-14 17:37:27'),
(1592, 'P9qtUHtQ', NULL, 'TeRrIFlemInG@OUTLoOK.CoM', NULL, 'QQdu1ozh', '2023-03-14 18:03:07', '2023-03-14 18:03:07'),
(1593, 'x7G9dE2X', NULL, 'dkoOs7@gmail.cOm', NULL, 'ogfna50l', '2023-03-14 18:03:23', '2023-03-14 18:03:23'),
(1594, 'X6H3mVPP', NULL, 'FAZeeLA8044@gmail.coM', NULL, NULL, '2023-03-14 19:59:17', '2023-03-14 19:59:17'),
(1595, 'fm5yByc1', NULL, 'rAbIH_Kayal@YAHOO.Ca', NULL, NULL, '2023-03-14 19:59:28', '2023-03-14 19:59:28'),
(1596, 'IAdASDfs', NULL, 's-meSquITA-SANtoS@uoL.Com.bR', NULL, NULL, '2023-03-14 19:59:40', '2023-03-14 19:59:40'),
(1597, 'zGCBznp7', NULL, 'BrUcE@cOVEntRYCOnsuLt.Com', NULL, NULL, '2023-03-14 19:59:43', '2023-03-14 19:59:43'),
(1598, 'Pv8jOALe', NULL, 'mArkC@eaStcoASt.Co.za', NULL, NULL, '2023-03-14 19:59:47', '2023-03-14 19:59:47'),
(1599, 'EBOoF35E', NULL, 'saMAnthanG412@GMAiL.COM', NULL, 'OWkJ4o9j', '2023-03-14 23:44:44', '2023-03-14 23:44:44'),
(1600, 'wyDCF0dw', NULL, 'zeOSJONA@gmaIL.CoM', NULL, 'h7eeFc8H', '2023-03-14 23:44:54', '2023-03-14 23:44:54'),
(1601, 'Ba1x25uA', NULL, 'kaYOcruZ87@gMAIL.COm', NULL, '0vaU6Oq1', '2023-03-14 23:45:16', '2023-03-14 23:45:16'),
(1602, 'mtOCQ75Y', NULL, 'TWaLLeR@PlEASAntViewMeTRO.ORG', NULL, 'mp0eQNtk', '2023-03-14 23:46:14', '2023-03-14 23:46:14'),
(1603, '10PdOlEM', NULL, 'CRISS@gmx.net', NULL, 'adU11L1O', '2023-03-15 00:03:51', '2023-03-15 00:03:51'),
(1604, 'a28HGNIx', NULL, 'RAcHELG@YaKIMacoOp.CoM', NULL, 'nIGFZuRv', '2023-03-15 00:05:14', '2023-03-15 00:05:14'),
(1605, 'VeJCYv0f', NULL, 'DAnIelLe@ViP-HOmEsoLUtIoNs.cOM', NULL, 'V7F4pwGf', '2023-03-15 00:05:26', '2023-03-15 00:05:26'),
(1606, '77wsHN1H', NULL, 'GaRrY_MOOREotT@hoTmaIl.cOm', NULL, NULL, '2023-03-15 02:48:53', '2023-03-15 02:48:53'),
(1607, 'pjLGFkMk', NULL, 'M.j.a.PNU@GMAIl.cOm', NULL, NULL, '2023-03-15 02:48:56', '2023-03-15 02:48:56'),
(1608, 'e1Vgu6SQ', NULL, 'SioBhAN.fiSHeR@StAnFoRDaluMnI.OrG', NULL, NULL, '2023-03-15 02:49:05', '2023-03-15 02:49:05'),
(1609, 'AwrYuOsh', NULL, 'dmdmilLeR99@GMaIL.Com', NULL, 'fWwm8Osa', '2023-03-15 05:04:25', '2023-03-15 05:04:25'),
(1610, 'DcGT9uYN', NULL, 'WILL3.baRGe@gmail.cOm', NULL, NULL, '2023-03-15 06:25:18', '2023-03-15 06:25:18'),
(1611, 'OlydAW5C', NULL, 'INFo@pCpERFOrMANcE-stORE.COM', NULL, NULL, '2023-03-15 06:25:55', '2023-03-15 06:25:55'),
(1612, 'Z2pOOp3l', NULL, 'LuCIelutin@HOtmAiL.CoM', NULL, NULL, '2023-03-15 07:17:50', '2023-03-15 07:17:50'),
(1613, 'HhHw0Kyy', NULL, 'BasAlYGo@BELl.nET', NULL, NULL, '2023-03-15 07:18:51', '2023-03-15 07:18:51'),
(1614, 'cjRbROFs', NULL, 'aeROCHik69@GmAiL.coM', NULL, NULL, '2023-03-15 07:19:34', '2023-03-15 07:19:34'),
(1615, 'APIPusWe', NULL, 'COmerCIALES@coNTrOlSyS.eS', NULL, NULL, '2023-03-15 07:21:08', '2023-03-15 07:21:08'),
(1616, 'LcxkxXiN', NULL, 'dIeGodcaracAS@gmAil.COm', NULL, NULL, '2023-03-15 08:17:22', '2023-03-15 08:17:22'),
(1617, 'nucg2YWz', NULL, 'heNriABiTAN@GMail.cOm', NULL, NULL, '2023-03-15 10:12:38', '2023-03-15 10:12:38'),
(1618, NULL, NULL, 'jSem9479@gmAIl.COm', NULL, NULL, '2023-03-15 13:42:25', '2023-03-15 13:42:25'),
(1619, NULL, NULL, 'iNfo@PCPErfoRMANCE-STORE.coM', NULL, NULL, '2023-03-15 13:43:03', '2023-03-15 13:43:03'),
(1620, NULL, NULL, 'lJ@BeSkeD.cOM', NULL, NULL, '2023-03-15 13:43:24', '2023-03-15 13:43:24'),
(1621, NULL, NULL, 'cHARmaINE.TerRY@DaYzIM.cOM', NULL, NULL, '2023-03-15 13:45:08', '2023-03-15 13:45:08'),
(1622, 'uOZ4tuqa', NULL, 'DmDmILLeR99@gmAIL.cOM', NULL, NULL, '2023-03-15 15:21:38', '2023-03-15 15:21:38'),
(1623, 'c60XXT0I', NULL, 'aLEKSKLEYN@OpTOnLIne.NeT', NULL, 'Yc5wJSig', '2023-03-15 15:41:17', '2023-03-15 15:41:17'),
(1624, 'eCc8KwgF', NULL, 'aLANmossoFf@hOtMAiL.cOm', NULL, 'rLzkOZo7', '2023-03-15 17:44:07', '2023-03-15 17:44:07'),
(1625, 'SakHK5cB', NULL, 'KHAstY86@gmAIL.CoM', NULL, 'NLls55cD', '2023-03-15 19:30:31', '2023-03-15 19:30:31'),
(1626, NULL, NULL, 'tReAsUre_hardEn@yahOo.COM', NULL, NULL, '2023-03-15 21:31:05', '2023-03-15 21:31:05'),
(1627, NULL, NULL, 'mrSsiERRaBIZzeLL@GMAiL.COm', NULL, NULL, '2023-03-15 21:32:22', '2023-03-15 21:32:22'),
(1628, NULL, NULL, 'sHaobOwOnDers@gmaIl.cOM', NULL, NULL, '2023-03-15 21:32:22', '2023-03-15 21:32:22'),
(1629, NULL, NULL, 'mAmesTAireS@yaHOO.Fr', NULL, NULL, '2023-03-15 21:32:45', '2023-03-15 21:32:45'),
(1630, NULL, NULL, 'm.bLAIS3980@GMail.coM', NULL, NULL, '2023-03-15 21:32:57', '2023-03-15 21:32:57'),
(1631, NULL, NULL, 'jAsoNBROwN312@gMaIL.cOm', NULL, NULL, '2023-03-15 21:33:03', '2023-03-15 21:33:03'),
(1632, NULL, NULL, 'Rothnoah086@gmAil.Com', NULL, NULL, '2023-03-15 21:33:13', '2023-03-15 21:33:13'),
(1633, NULL, NULL, '7132569293@TmomAIL.nET', NULL, NULL, '2023-03-15 21:33:31', '2023-03-15 21:33:31'),
(1634, NULL, NULL, 'RAzAAKbaR@gMAiL.Com', NULL, NULL, '2023-03-15 21:33:36', '2023-03-15 21:33:36'),
(1635, NULL, NULL, 'FREE_janeT@yAHoO.cOm', NULL, NULL, '2023-03-15 21:33:53', '2023-03-15 21:33:53'),
(1636, NULL, NULL, 'REyERlARrY@gMAiL.cOM', NULL, NULL, '2023-03-15 21:34:09', '2023-03-15 21:34:09'),
(1637, NULL, NULL, 'rSchaeFER130@Mac.CoM', NULL, NULL, '2023-03-15 21:34:11', '2023-03-15 21:34:11'),
(1638, 'ylir366o', NULL, 'trEaSuRe_hArDEN@yAhOO.Com', NULL, 'K4cGIPGS', '2023-03-15 22:27:47', '2023-03-15 22:27:47'),
(1639, '35TLy0hK', NULL, 'ADDison_boutcheR@HOtmaiL.coM', NULL, 'LroxbxR8', '2023-03-15 22:27:55', '2023-03-15 22:27:55'),
(1640, 'umLp1OJi', NULL, 'BRUCE@COvENtrYcONSULt.coM', NULL, 'WYOukWzp', '2023-03-15 22:28:08', '2023-03-15 22:28:08'),
(1641, '8c7ytyIm', NULL, 'WBoTChwAy@verizON.NEt', NULL, '3O7Gc8xE', '2023-03-15 22:29:51', '2023-03-15 22:29:51'),
(1642, 'CBqtC8FG', NULL, 'vIALEseVa@GMail.CoM', NULL, 'VD3vgoAw', '2023-03-15 22:30:03', '2023-03-15 22:30:03'),
(1643, 'dzKmJbQN', NULL, 'WbOhniNG@tELuspLAnet.NeT', NULL, '6CFy9NAi', '2023-03-15 22:30:04', '2023-03-15 22:30:04'),
(1644, 'v4RXAC7z', NULL, 'BRIAN.s.bANGErTer@GMAIl.com', NULL, 'O3mYVkNf', '2023-03-16 00:17:58', '2023-03-16 00:17:58'),
(1645, 'FrO74I3f', NULL, 'NlAureJas@yAHoo.COM', NULL, '2IvgOQaL', '2023-03-16 00:18:37', '2023-03-16 00:18:37'),
(1646, 'cozZNuwn', NULL, 'micHAeLombarDO111@GMAIL.cOm', NULL, 'w1rNvWqs', '2023-03-16 00:18:46', '2023-03-16 00:18:46'),
(1647, 'bLEJIBGo', NULL, 'KImbY_ziLler@yahoO.coM', NULL, 'uTKeSfzU', '2023-03-16 00:19:56', '2023-03-16 00:19:56'),
(1648, 'DavidImpup', '84157378329', 'a.lbe.r.tha.n.shin49@gmail.com', NULL, NULL, '2023-03-16 06:33:27', '2023-03-16 06:33:27'),
(1649, NULL, NULL, 'JRIVEra145@yAhOO.com', NULL, NULL, '2023-03-16 12:12:21', '2023-03-16 12:12:21'),
(1650, NULL, NULL, 'ZEDxionLIMItEd@gmAIl.cOm', NULL, NULL, '2023-03-16 12:12:35', '2023-03-16 12:12:35'),
(1651, NULL, NULL, 'niYOo.Addmind@gMaIl.cOm', NULL, NULL, '2023-03-16 12:12:45', '2023-03-16 12:12:45'),
(1652, 'Y9u0SoDZ', NULL, 'cArrEELB@gMail.COm', NULL, NULL, '2023-03-16 13:29:19', '2023-03-16 13:29:19'),
(1653, 'Kvk8kqjm', NULL, 'sSninI1976@yahoo.Com', NULL, NULL, '2023-03-16 13:29:20', '2023-03-16 13:29:20'),
(1654, 'h3tApZR3', NULL, 'DAvE@aiR1insuRanCE.com', NULL, NULL, '2023-03-16 13:29:33', '2023-03-16 13:29:33'),
(1655, 'opZR7ysv', NULL, 'rOBerTO2371999@HOTmaIl.com', NULL, NULL, '2023-03-16 13:29:36', '2023-03-16 13:29:36'),
(1656, 'lh6MGkt2', NULL, 'edwINDEJesuS4820@GmAIl.cOm', NULL, NULL, '2023-03-16 13:30:44', '2023-03-16 13:30:44'),
(1657, 'duKCuChA', NULL, 'mT1923@bEll.Net', NULL, NULL, '2023-03-16 14:22:14', '2023-03-16 14:22:14'),
(1658, 'ppHJfH6s', NULL, 'JEsSIca.gentiLe@oUTlOOk.IT', NULL, 'm8ltfkCM', '2023-03-16 17:23:35', '2023-03-16 17:23:35'),
(1659, 'iRUDO0HH', NULL, 'cUnGerIWU@GMAiL.coM', NULL, NULL, '2023-03-16 23:56:04', '2023-03-16 23:56:04'),
(1660, 'VdEjl9YP', NULL, 'paT.CrOsSLEY@GMaiL.com', NULL, NULL, '2023-03-16 23:56:31', '2023-03-16 23:56:31'),
(1661, 'pMEv8iG7', NULL, 'DIANApETTiS@ymaiL.com', NULL, NULL, '2023-03-16 23:57:03', '2023-03-16 23:57:03'),
(1662, 'v6chILCf', NULL, 'PopeSFarm3@GMaIl.com', NULL, NULL, '2023-03-16 23:57:03', '2023-03-16 23:57:03'),
(1663, 'SRlhbIVn', NULL, 'lTRUCCHI@eURotEk.eu', NULL, NULL, '2023-03-16 23:57:34', '2023-03-16 23:57:34'),
(1664, 'b6NJ0Pzt', NULL, 'JOrcA1988@gmaIL.com', NULL, NULL, '2023-03-16 23:57:36', '2023-03-16 23:57:36'),
(1665, '7APfP4t2', NULL, 'mAKIaJOHnsOn0510@gmAiL.com', NULL, NULL, '2023-03-16 23:58:32', '2023-03-16 23:58:32'),
(1666, 'SjSQkRhO', NULL, 'dElSjUnk@SneT.nET', NULL, NULL, '2023-03-16 23:59:50', '2023-03-16 23:59:50'),
(1667, 'misqVZsi', NULL, 'HelTOnBEcHEr@gMAIL.cOm', NULL, NULL, '2023-03-17 00:00:20', '2023-03-17 00:00:20'),
(1668, 'VuMlGs5z', NULL, 'jOhN@TeaMboOTH.nET', NULL, NULL, '2023-03-17 00:00:26', '2023-03-17 00:00:26'),
(1669, 'Zv9RFVNM', NULL, 'SINGHvInoD77@HOTMAiL.com', NULL, NULL, '2023-03-17 05:06:44', '2023-03-17 05:06:44'),
(1670, 'Gj853LTJ', NULL, 'HD5367@WAyNE.EDu', NULL, '0kGbiBUr', '2023-03-17 08:02:12', '2023-03-17 08:02:12'),
(1671, 'NHvsLDUf', NULL, 'tRentGotTsACKER@gMAiL.com', NULL, 'TzvvCVUn', '2023-03-17 08:02:50', '2023-03-17 08:02:50'),
(1672, 'p2C030dv', NULL, 'StowESTeCH@AOL.cOM', NULL, NULL, '2023-03-17 11:55:11', '2023-03-17 11:55:11'),
(1673, 'DaIhN6B6', NULL, 'TUDdIn@gmaIl.COm', NULL, NULL, '2023-03-17 13:19:42', '2023-03-17 13:19:42'),
(1674, 'x6FNovvo', NULL, 'DELLhEemAbboTt@gmAiL.COm', NULL, NULL, '2023-03-17 13:19:45', '2023-03-17 13:19:45'),
(1675, '5PXqyggN', NULL, 'ciNdygreeN11@hOtmAIl.cOm', NULL, NULL, '2023-03-17 13:19:53', '2023-03-17 13:19:53'),
(1676, '0KTenUtG', NULL, 'it@bilIfo.COm', NULL, NULL, '2023-03-17 13:20:45', '2023-03-17 13:20:45'),
(1677, 'oV3oLxjD', NULL, 'supPOrT@ZeDXIoN.coM', NULL, NULL, '2023-03-17 13:20:55', '2023-03-17 13:20:55'),
(1678, 'Y9eOGIcq', NULL, 'SteVeJscUlLy.mUsiC@GMAIL.COM', NULL, NULL, '2023-03-17 14:54:54', '2023-03-17 14:54:54'),
(1679, 'C18s7AIy', NULL, 'bryanXavIeR082015@HoTMaiL.cOm', NULL, NULL, '2023-03-17 14:55:17', '2023-03-17 14:55:17'),
(1680, 'ME5NBVTt', NULL, 'REDrOCK@c2CTRees.coM', NULL, NULL, '2023-03-17 15:36:44', '2023-03-17 15:36:44'),
(1681, 'trITv4KT', NULL, 'InFo@PeDiaTrICurGeNTcARE.Ca', NULL, NULL, '2023-03-17 22:56:51', '2023-03-17 22:56:51'),
(1682, '28Q0CgcX', NULL, 'BebE7ing@HOtmail.com', NULL, NULL, '2023-03-17 22:56:57', '2023-03-17 22:56:57'),
(1683, 'F5bDBohz', NULL, 'jaSmaRAHar786@GMAil.Com', NULL, 'yzRNOYG6', '2023-03-18 00:29:21', '2023-03-18 00:29:21'),
(1684, NULL, NULL, 'CoNTAcT@ThELoBSTEr.coM.au', NULL, NULL, '2023-03-18 01:17:02', '2023-03-18 01:17:02'),
(1685, NULL, NULL, 'joHnDENNiSweTheRingTon@gmAil.CoM', NULL, NULL, '2023-03-18 01:17:42', '2023-03-18 01:17:42'),
(1686, 'ZmnnjgoA', NULL, 'JEROME.TIbBAL@gRoUPEt3m.CoM', NULL, 'PXr1vgxy', '2023-03-18 07:35:44', '2023-03-18 07:35:44'),
(1687, 'iutM2MDm', NULL, 'ErIc.balleSTriN@GROUPEt3M.Com', NULL, NULL, '2023-03-18 09:15:39', '2023-03-18 09:15:39'),
(1688, 'IhKvhO9c', NULL, 'PwaDusER@PROtoNmAiL.cOM', NULL, NULL, '2023-03-18 13:09:07', '2023-03-18 13:09:07'),
(1689, 'ePQ5yLPF', NULL, 'PaLumbOs1@aoL.cOm', NULL, NULL, '2023-03-18 13:48:16', '2023-03-18 13:48:16'),
(1690, 'PPvxqgEn', NULL, 'L_MAriA@DocEDINaMiSMo.cOM', NULL, NULL, '2023-03-18 13:49:19', '2023-03-18 13:49:19'),
(1691, '3Swivyty', NULL, 'L_MAria@dOceDiNamismO.CoM', NULL, NULL, '2023-03-18 13:49:21', '2023-03-18 13:49:21'),
(1692, 'aiFC82KX', NULL, 'JlHAVens97@COMCAST.net', NULL, 'd40QSe5p', '2023-03-18 13:51:46', '2023-03-18 13:51:46'),
(1693, 'pzSJk8iv', NULL, 'b.m.7@LIVe.CoM', NULL, 'tJeC0Sv3', '2023-03-18 13:51:55', '2023-03-18 13:51:55'),
(1694, 'Swips', '83183713241', 'fxxmoubc@yahoo.com', NULL, NULL, '2023-03-18 18:52:55', '2023-03-18 18:52:55'),
(1695, 'xfflLLQy', NULL, 'ScArLETTMAlEriE@gMaIl.COm', NULL, NULL, '2023-03-18 19:48:13', '2023-03-18 19:48:13'),
(1696, '26UT9DEg', NULL, 'JdiEderich@yahOO.cOm', NULL, NULL, '2023-03-18 19:48:49', '2023-03-18 19:48:49'),
(1697, '0LsZV43z', NULL, 'LeONLeeOONn@GMaIL.cOM', NULL, NULL, '2023-03-18 19:49:05', '2023-03-18 19:49:05'),
(1698, 'KjBSUxHT', NULL, 'pColl@ORriCK.COm', NULL, NULL, '2023-03-18 19:49:39', '2023-03-18 19:49:39'),
(1699, 'AjcYMy9D', NULL, 'torpeYrAy@YAHoo.COm', NULL, NULL, '2023-03-18 21:52:40', '2023-03-18 21:52:40'),
(1700, 'nzYAMMQX', NULL, 'jmiLLER512@roaDRuNnEr.cOm', NULL, NULL, '2023-03-18 21:53:28', '2023-03-18 21:53:28'),
(1701, 'pACtoWWc', NULL, 'PCoLl@OrRiCk.cOm', NULL, NULL, '2023-03-18 21:54:10', '2023-03-18 21:54:10'),
(1702, 'EweqUWRL', NULL, 'JONgnAvArRO@jongnaVaRRO.cOM', NULL, NULL, '2023-03-18 22:55:02', '2023-03-18 22:55:02'),
(1703, 'pQoBDTzX', NULL, 'TImHeRndEz@outLooK.CoM', NULL, NULL, '2023-03-18 22:55:30', '2023-03-18 22:55:30'),
(1704, 'VZrvmB1i', NULL, 'n.IShIKaWa@yaHoo.cOm', NULL, NULL, '2023-03-18 22:56:54', '2023-03-18 22:56:54'),
(1705, 'mAHfu9fB', NULL, 'IntegrITydK@GmaIl.COm', NULL, NULL, '2023-03-18 22:57:04', '2023-03-18 22:57:04'),
(1706, 'yALhZUal', NULL, 'EDWaRdPALma64@gMAIl.cOm', NULL, NULL, '2023-03-18 22:57:48', '2023-03-18 22:57:48'),
(1707, 'mALZi9hm', NULL, 'jPHAKlIdES@HOtMAiL.COm', NULL, NULL, '2023-03-18 23:12:02', '2023-03-18 23:12:02'),
(1708, 'kdTyYLJO', NULL, 'tAruNCul96@GmAIL.com', NULL, NULL, '2023-03-18 23:12:10', '2023-03-18 23:12:10'),
(1709, 'RVPeOwOk', NULL, 'iLuVBaSebALL@atT.net', NULL, NULL, '2023-03-18 23:12:19', '2023-03-18 23:12:19'),
(1710, '2Eu8Gc60', NULL, 'JONAThAn30@nAVEr.cOm', NULL, NULL, '2023-03-18 23:12:26', '2023-03-18 23:12:26'),
(1711, 'GUnqhab3', NULL, 'ASIruR@SBcGLobAl.neT', NULL, NULL, '2023-03-18 23:13:30', '2023-03-18 23:13:30'),
(1712, 'I2TXzia2', NULL, 'lANI2u@SaskTEL.nET', NULL, 'lnBTQQDH', '2023-03-19 01:51:29', '2023-03-19 01:51:29'),
(1713, '3uCssny3', NULL, 'ANa@poPUpMOB.Com', NULL, '5aphdH1A', '2023-03-19 01:51:39', '2023-03-19 01:51:39'),
(1714, 'Mfje4dHd', NULL, 'EDaLIcEloNG01@GmAIL.cOM', NULL, 'TX4NR1Tg', '2023-03-19 14:16:27', '2023-03-19 14:16:27'),
(1715, NULL, NULL, 'StAggS22@GMAiL.cOm', NULL, NULL, '2023-03-19 15:01:19', '2023-03-19 15:01:19'),
(1716, NULL, NULL, 'NaYanKCHauhAN@gmaiL.cOM', NULL, NULL, '2023-03-19 15:01:40', '2023-03-19 15:01:40'),
(1717, NULL, NULL, 'SubS@WHeatcRoFt.biz', NULL, NULL, '2023-03-19 15:02:14', '2023-03-19 15:02:14'),
(1718, 'UebfkoKp', NULL, 'JbALdaSSARra7@gMaIl.Com', NULL, NULL, '2023-03-19 15:50:15', '2023-03-19 15:50:15'),
(1719, 'IbSYHWRQ', NULL, 'mUDiT.KumAr@CAdbURYHouse.COm', NULL, NULL, '2023-03-19 15:50:32', '2023-03-19 15:50:32'),
(1720, 'GLjiX7vJ', NULL, 'pavel.MIHhAILOv@ME.coM', NULL, NULL, '2023-03-19 15:50:34', '2023-03-19 15:50:34'),
(1721, 'EApJWN05', NULL, 'MalalIt1658@YahOO.CoM', NULL, NULL, '2023-03-19 15:50:43', '2023-03-19 15:50:43'),
(1722, 'TVFKAIFn', NULL, 'stePhANie@gREENSPoRTRVPARK.COM', NULL, NULL, '2023-03-19 15:52:18', '2023-03-19 15:52:18'),
(1723, 'mO6PIgnJ', NULL, 'RaCe71328@SUDdenLInk.NEt', NULL, 'mdek3Q9c', '2023-03-19 16:51:28', '2023-03-19 16:51:28'),
(1724, 'vKZTrMFG', NULL, 'gAiA.MIlano@IcLoud.CoM', NULL, '8FKswGzc', '2023-03-19 17:23:49', '2023-03-19 17:23:49'),
(1725, 'DNthtrAi', NULL, 'ladYDeMmafrEE@GMaIL.Com', NULL, NULL, '2023-03-19 20:41:21', '2023-03-19 20:41:21'),
(1726, 'z4zR6Gdt', NULL, 'samclIne@roGERS.coM', NULL, 'OjfgTZAS', '2023-03-19 22:56:16', '2023-03-19 22:56:16'),
(1727, '5AePl7r6', NULL, 'prAsHASTEr.illUSiON@gMaIl.cOM', NULL, 'BuKZ7SFh', '2023-03-20 00:06:12', '2023-03-20 00:06:12'),
(1728, 'Epbp9b2C', NULL, 'meLaniETHOMPsOn@rOGERS.coM', NULL, NULL, '2023-03-20 03:17:59', '2023-03-20 03:17:59'),
(1729, '56NdStCO', NULL, 'CDN73mN@gmaIl.Com', NULL, NULL, '2023-03-20 04:59:35', '2023-03-20 04:59:35'),
(1730, 'gVKhy8SC', NULL, 'BiANCAREeD21@GmaiL.com', NULL, NULL, '2023-03-20 11:14:23', '2023-03-20 11:14:23'),
(1731, 'oP5gpoet', NULL, 'EnesmIth88@GMAiL.COM', NULL, NULL, '2023-03-20 11:52:16', '2023-03-20 11:52:16'),
(1732, 'w9rFaAOE', NULL, 'MGa.3@EaRTHLInk.nEt', NULL, NULL, '2023-03-20 11:52:20', '2023-03-20 11:52:20'),
(1733, 'fX9s20Xe', NULL, 'LATArshAElLeTt25@gMAIl.COM', NULL, NULL, '2023-03-20 11:52:23', '2023-03-20 11:52:23'),
(1734, 'vGWESpxY', NULL, 'SUZY0830@yaHoO.CoM', NULL, NULL, '2023-03-20 11:52:43', '2023-03-20 11:52:43'),
(1735, 'yvNsJmdB', NULL, 'guVAl2@yaHoo.Com', NULL, NULL, '2023-03-20 11:54:12', '2023-03-20 11:54:12'),
(1736, 'a6z7KuoR', NULL, 'hAnCOCKFamIly2368@Att.nEt', NULL, NULL, '2023-03-20 12:21:04', '2023-03-20 12:21:04'),
(1737, 'Swips', '87732925379', 'ff0umstp@gmail.com', NULL, NULL, '2023-03-20 12:41:26', '2023-03-20 12:41:26'),
(1738, 'd59oFuV9', NULL, 'MoMMY1Md@HOTMaiL.Com', NULL, NULL, '2023-03-20 15:15:41', '2023-03-20 15:15:41'),
(1739, 'Mike Adamson', '87779766446', 'no-replyvedo@gmail.com', NULL, NULL, '2023-03-20 16:57:51', '2023-03-20 16:57:51'),
(1740, 'boWSz5kG', NULL, 'kARIn@HUnNiwATER.COm', NULL, NULL, '2023-03-20 20:11:20', '2023-03-20 20:11:20'),
(1741, NULL, NULL, 'MpiTTs2k1@YahOo.coM', NULL, NULL, '2023-03-20 21:06:57', '2023-03-20 21:06:57'),
(1742, 'kszi0A8w', NULL, 'Mark@CiTYbUildER-x.Com', NULL, NULL, '2023-03-20 22:03:47', '2023-03-20 22:03:47'),
(1743, '1Po9X8Tk', NULL, 'dBEy9@aoL.CoM', NULL, NULL, '2023-03-20 22:04:34', '2023-03-20 22:04:34'),
(1744, 'W98ykU8G', NULL, 'deBBiElinzEy64@GmaIl.com', NULL, 'vW39mQMK', '2023-03-20 22:34:37', '2023-03-20 22:34:37'),
(1745, 'O5e6CMyH', NULL, 'LaNDeNKoEniG@gmAIL.cOm', NULL, 'gpyOn4fu', '2023-03-20 22:35:15', '2023-03-20 22:35:15'),
(1746, 'JH5sy2ab', NULL, 'BOBBY5R@GMaIl.cOm', NULL, 'HDvttJ3l', '2023-03-20 22:35:23', '2023-03-20 22:35:23'),
(1747, 'lVlJtKJL', NULL, 'lOvemYfivEchilDren@YahoO.Com', NULL, '8gvvTkLF', '2023-03-20 22:37:03', '2023-03-20 22:37:03'),
(1748, 'm4BVmCtW', NULL, 'LovEMyfIvEChilDrEN@yAHoO.com', NULL, 'ECBwIP0S', '2023-03-20 22:37:37', '2023-03-20 22:37:37'),
(1749, 'E5MrqI5m', NULL, 'pspANgANBerG@GMaIL.coM', NULL, 'mrO2Mzh6', '2023-03-20 23:14:02', '2023-03-20 23:14:02'),
(1750, 'suHq3ON2', NULL, 'pspaNGanBERg@gMAiL.coM', NULL, 'ru3AMxRr', '2023-03-20 23:14:19', '2023-03-20 23:14:19'),
(1751, 'IzFLBIzV', NULL, 'MT_GalON@YAhoO.Co.uk', NULL, 'omzDTS8w', '2023-03-20 23:15:29', '2023-03-20 23:15:29'),
(1752, 'TKxD5dqi', NULL, 'queST123@hoTMail.com', NULL, 'cYlKjm95', '2023-03-20 23:17:25', '2023-03-20 23:17:25'),
(1753, 'Dbq6BlKW', NULL, 'thomAsbeRriGAN@ROgers.com', NULL, '4OkUGgGh', '2023-03-21 00:01:43', '2023-03-21 00:01:43'),
(1754, 'kW5bHAKM', NULL, 'GflyNN@rOGerS.cOm', NULL, NULL, '2023-03-21 00:05:56', '2023-03-21 00:05:56'),
(1755, NULL, NULL, 'steveN.hai.TA@GmAIL.coM', NULL, NULL, '2023-03-21 00:32:14', '2023-03-21 00:32:14'),
(1756, NULL, NULL, 'DOcFOx1@CoX.NET', NULL, NULL, '2023-03-21 00:32:17', '2023-03-21 00:32:17'),
(1757, NULL, NULL, 'MaddYHOUStoN@YAhOO.CoM', NULL, NULL, '2023-03-21 00:32:22', '2023-03-21 00:32:22'),
(1758, NULL, NULL, 'eVeLYN.alICeA@GmAiL.COm', NULL, NULL, '2023-03-21 00:32:23', '2023-03-21 00:32:23'),
(1759, NULL, NULL, 'dOnANTHoNY77@gmAil.COm', NULL, NULL, '2023-03-21 00:32:31', '2023-03-21 00:32:31'),
(1760, NULL, NULL, 'rOSaRiAM@rOGErS.COM', NULL, NULL, '2023-03-21 00:32:48', '2023-03-21 00:32:48'),
(1761, NULL, NULL, 'kaRraMBURru@hotmAiL.CoM', NULL, NULL, '2023-03-21 00:32:49', '2023-03-21 00:32:49'),
(1762, NULL, NULL, 'SATISh.gariMElla@caPgemini.coM', NULL, NULL, '2023-03-21 00:32:58', '2023-03-21 00:32:58'),
(1763, NULL, NULL, 'SARaRiZAkOS@RoGerS.coM', NULL, NULL, '2023-03-21 00:33:07', '2023-03-21 00:33:07'),
(1764, NULL, NULL, 'STaff@COMOSMIleS.CoM', NULL, NULL, '2023-03-21 00:33:11', '2023-03-21 00:33:11'),
(1765, NULL, NULL, 'JdsInk@AlexanDEr.K12.nC.US', NULL, NULL, '2023-03-21 00:33:28', '2023-03-21 00:33:28'),
(1766, NULL, NULL, 'Suae@lIve.cOM', NULL, NULL, '2023-03-21 00:33:50', '2023-03-21 00:33:50'),
(1767, NULL, NULL, 'hEiselALVArEZ786@GmAil.COM', NULL, NULL, '2023-03-21 00:35:21', '2023-03-21 00:35:21'),
(1768, NULL, NULL, 'Ce35@NjiT.eDU', NULL, NULL, '2023-03-21 00:36:07', '2023-03-21 00:36:07'),
(1769, NULL, NULL, 'blindwoRMgUItaRs@gMAil.COm', NULL, NULL, '2023-03-21 00:36:07', '2023-03-21 00:36:07'),
(1770, 'hvyWgS5K', NULL, 'yuKikSYA@yAhoo.cOM', NULL, 'fCKKOkxS', '2023-03-21 00:54:02', '2023-03-21 00:54:02'),
(1771, NULL, NULL, 'dArricKdAVIDson@rOgERS.cOM', NULL, NULL, '2023-03-21 01:13:53', '2023-03-21 01:13:53'),
(1772, 'EJB9DBnM', NULL, 'rOd@bRineR.Net.Au', NULL, NULL, '2023-03-21 03:57:42', '2023-03-21 03:57:42'),
(1773, '5APFyUHd', NULL, 'ChLoe.WIlcOx@gmaiL.cOm', NULL, NULL, '2023-03-21 03:58:25', '2023-03-21 03:58:25'),
(1774, 'zCtOAplK', NULL, 'MHmENdeL@gmail.coM', NULL, NULL, '2023-03-21 03:59:01', '2023-03-21 03:59:01'),
(1775, 'SFEp1PBi', NULL, 'mIssMaddieB@rOGeRs.CoM', NULL, NULL, '2023-03-21 05:17:14', '2023-03-21 05:17:14'),
(1776, '24tMhmDP', NULL, 'NarAyANASwAmy_rAVi@yAHOo.COm', NULL, NULL, '2023-03-21 05:19:23', '2023-03-21 05:19:23'),
(1777, 'DJedr5wO', NULL, 'rMONtEz0502@gMAiL.COm', NULL, 'qAsnuFbX', '2023-03-21 07:18:59', '2023-03-21 07:18:59'),
(1778, 'SLH3IzmJ', NULL, 'reZNiKYiTzcHOk@gmAIl.cOM', NULL, 'TkxmLOmV', '2023-03-21 07:21:13', '2023-03-21 07:21:13'),
(1779, 'KhXkMPid', NULL, 'tAlQuetaL@YahoO.COM', NULL, 'yfDlTl0Q', '2023-03-21 07:22:02', '2023-03-21 07:22:02'),
(1780, 'Qav8TeJD', NULL, 'jRWALD@frOntIeR.COM', NULL, NULL, '2023-03-21 12:18:26', '2023-03-21 12:18:26'),
(1781, '8imah878', NULL, 'Mr.fREdDIemAcK@yAHoo.COm', NULL, NULL, '2023-03-21 12:18:40', '2023-03-21 12:18:40'),
(1782, 'hthFIeSk', NULL, 'kBLACk@HoTmAIL.cOM', NULL, NULL, '2023-03-21 12:19:12', '2023-03-21 12:19:12'),
(1783, 'NWWssnl5', NULL, 'SaTIsHcHowDHaRy93@GmAIL.cOm', NULL, NULL, '2023-03-21 12:19:53', '2023-03-21 12:19:53'),
(1784, 'qvOh0A5j', NULL, 'lOiSkUNZ@Ymail.coM', NULL, '9wJOE4Bl', '2023-03-21 13:20:55', '2023-03-21 13:20:55'),
(1785, 'JrGL0rJR', NULL, 'KYLEjOb@GMaiL.cOM', NULL, 'hTQp25Uh', '2023-03-21 13:22:23', '2023-03-21 13:22:23'),
(1786, 'Hosc7p0i', NULL, 'SeRViCe@KeLlERCaRs.coM', NULL, 'hA1FGkh5', '2023-03-21 13:23:42', '2023-03-21 13:23:42'),
(1787, '1IGbopzN', NULL, 'KoULOUGlireZKI@yAhOO.COm', NULL, NULL, '2023-03-21 16:10:58', '2023-03-21 16:10:58'),
(1788, 'TuIOoS74', NULL, 'SATISHGaRRY121@GMaIl.CoM', NULL, NULL, '2023-03-21 16:12:58', '2023-03-21 16:12:58'),
(1789, 'MW8njkWo', NULL, 'lAcailleF13@GMaIl.com', NULL, '8uEQX4pK', '2023-03-21 17:37:11', '2023-03-21 17:37:11'),
(1790, '4qRw97Ra', NULL, 'yVonne9465@gmAiL.Com', NULL, 'FPPldKia', '2023-03-21 17:38:15', '2023-03-21 17:38:15'),
(1791, 'ngT3lwad', NULL, 'CNgUyeNx77@YAhoO.com', NULL, 'E6HvnX6z', '2023-03-21 19:11:43', '2023-03-21 19:11:43'),
(1792, 'smwbXuvg', NULL, 'mGRAhAM@capEleISurecoRP.Com', NULL, 'MpfvFTrz', '2023-03-21 19:57:07', '2023-03-21 19:57:07'),
(1793, 'ZG7XVHYz', NULL, 'SoRooSH_mEHRdaD@YahoO.cOm', NULL, 'P4QoTiUT', '2023-03-21 19:57:37', '2023-03-21 19:57:37'),
(1794, 'Mike Flannagan', '81533262454', 'no-replyvedo@gmail.com', NULL, NULL, '2023-03-22 01:04:34', '2023-03-22 01:04:34'),
(1795, '498EZGXL', NULL, 'ccOrs341@fREE.Fr', NULL, NULL, '2023-03-22 13:26:52', '2023-03-22 13:26:52'),
(1796, 'tr0b6plD', NULL, 'ThiElHatT@cOmcast.nET', NULL, NULL, '2023-03-22 15:41:57', '2023-03-22 15:41:57'),
(1797, 'bZHQPJxl', NULL, 'biLling@UmOJo.cOM', NULL, NULL, '2023-03-22 15:42:48', '2023-03-22 15:42:48'),
(1798, 'BS1mLwCP', NULL, 'DAVid.hiCinboThEM@yAHOo.coM', NULL, NULL, '2023-03-22 15:43:13', '2023-03-22 15:43:13'),
(1799, 'A8tazdfU', NULL, 'mmiRaBElla@GlIC.CoM', NULL, NULL, '2023-03-22 15:43:25', '2023-03-22 15:43:25'),
(1800, 'MjVpFIdO', NULL, 'dERek@coreaLAsKA.COm', NULL, NULL, '2023-03-22 15:43:27', '2023-03-22 15:43:27'),
(1801, 'ePcQPVNd', NULL, 'drew.huRST@beaconSaFETY.Com', NULL, NULL, '2023-03-22 15:43:42', '2023-03-22 15:43:42'),
(1802, 'Xxm24WMW', NULL, 'ricHArdVerAart@HotmAIL.CoM', NULL, 'HJFJsrsA', '2023-03-22 15:57:44', '2023-03-22 15:57:44'),
(1803, '6SwwdbWo', NULL, 'miCHaeLrOd1222@gmail.cOm', NULL, 'rkVbZS5C', '2023-03-22 16:01:17', '2023-03-22 16:01:17'),
(1804, '7R0lfloC', NULL, 'eRiCNeKHeN7@aol.coM', NULL, NULL, '2023-03-22 19:28:07', '2023-03-22 19:28:07'),
(1805, 'bHLUsAfq', NULL, 'dIToPAYaN@gmaIL.COM', NULL, NULL, '2023-03-22 19:28:22', '2023-03-22 19:28:22'),
(1806, 'jvYWNmn7', NULL, 'OURToPShElfproDuCts@gmAIl.CoM', NULL, NULL, '2023-03-22 19:29:02', '2023-03-22 19:29:02'),
(1807, 'j6JeTlOq', NULL, 'pskmvM@gmail.CoM', NULL, 'T6a4LoyH', '2023-03-22 19:51:13', '2023-03-22 19:51:13'),
(1808, 'l9B1HfKi', NULL, 'eRicbaluTan10@yahoO.coM', NULL, NULL, '2023-03-22 20:01:15', '2023-03-22 20:01:15'),
(1809, 'ZRdBNNnj', NULL, 'faReNTaLcONSULTIng@Gmail.com', NULL, NULL, '2023-03-22 20:01:54', '2023-03-22 20:01:54');
INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `message`, `da`, `created_at`, `updated_at`) VALUES
(1810, '1TuyGZx4', NULL, 'JtLangLEy@GenElANgLeYfoRd.CoM', NULL, NULL, '2023-03-22 20:02:07', '2023-03-22 20:02:07'),
(1811, 'ylbRwsos', NULL, 'GEORgeREAltoR4022@gmaIl.COM', NULL, NULL, '2023-03-22 20:02:11', '2023-03-22 20:02:11'),
(1812, 'AdEi30oA', NULL, 'mARylIBOriO@GMAil.cOm', NULL, NULL, '2023-03-22 20:02:52', '2023-03-22 20:02:52'),
(1813, 'HyCTJXP6', NULL, 'gm@CAlGARYCUrlingcLuB.CoM', NULL, NULL, '2023-03-22 20:03:52', '2023-03-22 20:03:52'),
(1814, NULL, NULL, 'laurIe@TOwNMove.COM', NULL, NULL, '2023-03-22 20:23:23', '2023-03-22 20:23:23'),
(1815, NULL, NULL, 'uGLygAaNG@gMaIl.Com', NULL, NULL, '2023-03-22 20:24:08', '2023-03-22 20:24:08'),
(1816, NULL, NULL, 'akkI4Jc@gmaIL.coM', NULL, NULL, '2023-03-22 20:24:17', '2023-03-22 20:24:17'),
(1817, '5cFd5IfP', NULL, 'sofIAPLUMmer@gMaIl.com', NULL, NULL, '2023-03-22 21:50:33', '2023-03-22 21:50:33'),
(1818, 'eAxh34AS', NULL, 'pat.Akers@sYMpaTIco.Ca', NULL, NULL, '2023-03-22 21:50:43', '2023-03-22 21:50:43'),
(1819, '2CtR5T0Z', NULL, 'PAt.AkErs@sYmpATICO.ca', NULL, NULL, '2023-03-23 00:45:05', '2023-03-23 00:45:05'),
(1820, 'z61Ci2hf', NULL, 'bOBVICBoWyER@GMAIl.com', NULL, 'Hpm3rzp9', '2023-03-23 02:14:02', '2023-03-23 02:14:02'),
(1821, 'lmCy0Jyi', NULL, 'Anne-tHOmAs@hotmAil.cOm', NULL, '4PsMNziA', '2023-03-23 02:16:24', '2023-03-23 02:16:24'),
(1822, 'PUr7pDRi', NULL, 'dmDMiLLER99@gmaIL.COm', NULL, 'HS2dOezR', '2023-03-23 02:21:57', '2023-03-23 02:21:57'),
(1823, 'uNYSeu0c', NULL, 'DMdMiLLer99@gmAIl.coM', NULL, 'qYZOqdbe', '2023-03-23 02:22:10', '2023-03-23 02:22:10'),
(1824, 'ZSlvKc2F', NULL, 'ERIc@oTAAMERica.com', NULL, 'Qbag44mN', '2023-03-23 02:22:48', '2023-03-23 02:22:48'),
(1825, 'VGnenr6U', NULL, 'AccoUntinG@OTAAMEricA.cOM', NULL, 'SR9nQpyq', '2023-03-23 02:23:03', '2023-03-23 02:23:03'),
(1826, 'eSq2vU0i', NULL, 'lrutA@VidEOTROn.Ca', NULL, '5F0YbPB3', '2023-03-23 02:23:15', '2023-03-23 02:23:15'),
(1827, 'lFo1PqeV', NULL, 'hElENyOuNDeR@GmaIl.Com', NULL, '9Xdl8aXL', '2023-03-23 02:23:50', '2023-03-23 02:23:50'),
(1828, 'aAURzmYd', NULL, 'APLASCEnciA492@GMaIL.coM', NULL, NULL, '2023-03-23 03:09:20', '2023-03-23 03:09:20'),
(1829, 'xMP4R5ym', NULL, 'LRUTa@VidEoTrOn.CA', NULL, NULL, '2023-03-23 03:09:53', '2023-03-23 03:09:53'),
(1830, '36oNXHdJ', NULL, 'mcMILlanKArEN22@gmAIl.Com', NULL, NULL, '2023-03-23 03:10:02', '2023-03-23 03:10:02'),
(1831, '1NQbsGqW', NULL, 'lYDIA6628@gMAil.cOm', NULL, NULL, '2023-03-23 03:11:03', '2023-03-23 03:11:03'),
(1832, 'dBwDZg3B', NULL, 'MAdIcarLisLe8@gmAIL.coM', NULL, NULL, '2023-03-23 03:11:03', '2023-03-23 03:11:03'),
(1833, 'uGELhBys', NULL, 'wIlsONmFW55@GmaIL.Com', NULL, NULL, '2023-03-23 03:13:12', '2023-03-23 03:13:12'),
(1834, 'lDGPsCDx', NULL, 'sADiki.RobeRtsON@gMAiL.COM', NULL, 'TPzGTt3b', '2023-03-23 03:43:15', '2023-03-23 03:43:15'),
(1835, 'i2LlX1TC', NULL, 'SHMaZrEkU@hotMAil.COM', NULL, NULL, '2023-03-23 03:46:44', '2023-03-23 03:46:44'),
(1836, 'zkrT3S7t', NULL, 'MaDiCARlISle8@GmaiL.cOm', NULL, NULL, '2023-03-23 04:17:10', '2023-03-23 04:17:10'),
(1837, 'FGlNbbQj', NULL, 'DMdmILLer99@gMaIl.COM', NULL, NULL, '2023-03-23 07:33:14', '2023-03-23 07:33:14'),
(1838, '2JueIONN', NULL, 'eriCbaLUTaN10@yAHoo.cOm', NULL, NULL, '2023-03-23 07:33:30', '2023-03-23 07:33:30'),
(1839, '7fPoEU3y', NULL, 'LYdIa6628@gMail.Com', NULL, NULL, '2023-03-23 07:34:28', '2023-03-23 07:34:28'),
(1840, 'OtSgNR7u', NULL, 'SadikI.ROBertSoN@gMAiL.COM', NULL, NULL, '2023-03-23 07:34:52', '2023-03-23 07:34:52'),
(1841, 'Rz3vRCun', NULL, 'poOhBEAr20878@hotMaIl.com', NULL, NULL, '2023-03-23 07:35:49', '2023-03-23 07:35:49'),
(1842, 'NM29RZzn', NULL, 'RbowLey@sympAtiCO.cA', NULL, NULL, '2023-03-23 08:15:22', '2023-03-23 08:15:22'),
(1843, 'CrZmLPeQ', NULL, 'JrobBINS@AcT.bM', NULL, NULL, '2023-03-23 08:15:22', '2023-03-23 08:15:22'),
(1844, 'doSMYIxk', NULL, 'LruTa@VidEoTRoN.Ca', NULL, NULL, '2023-03-23 08:15:23', '2023-03-23 08:15:23'),
(1845, 'WxMLir48', NULL, 'SadIkI.RoBeRtSon@GmaiL.COm', NULL, NULL, '2023-03-23 08:15:31', '2023-03-23 08:15:31'),
(1846, 'GKOv0Hhe', NULL, 'LRUTa@VidEoTroN.Ca', NULL, NULL, '2023-03-23 08:15:46', '2023-03-23 08:15:46'),
(1847, 'bSPPfJN9', NULL, 'ScoTtHaNson@sASKtel.NeT', NULL, NULL, '2023-03-23 08:15:56', '2023-03-23 08:15:56'),
(1848, '4jcL5NjM', NULL, 'pAOloricCIO@fAsTwEBnet.iT', NULL, NULL, '2023-03-23 08:15:59', '2023-03-23 08:15:59'),
(1849, '1TzsriZg', NULL, 'rcuNNIn2@JunO.CoM', NULL, NULL, '2023-03-23 08:16:55', '2023-03-23 08:16:55'),
(1850, '8F7jjSQn', NULL, 'KJUanGReEne2019@oUTLOoK.Com', NULL, NULL, '2023-03-23 08:17:02', '2023-03-23 08:17:02'),
(1851, 'M3CEGvQ9', NULL, 'sHAnnAhanNA@MSN.com', NULL, NULL, '2023-03-23 08:17:06', '2023-03-23 08:17:06'),
(1852, 'sZ52IQSv', NULL, 'rcUnniN22000@ATT.NET', NULL, NULL, '2023-03-23 08:17:09', '2023-03-23 08:17:09'),
(1853, 'gb6QwCL4', NULL, 'tLaUniErE@preFeRredtOOlAnDdie.cOm', NULL, NULL, '2023-03-23 08:20:41', '2023-03-23 08:20:41'),
(1854, 'XYMAtUjJ', NULL, 'KCpaTEL298@GmAiL.Com', NULL, NULL, '2023-03-23 09:12:09', '2023-03-23 09:12:09'),
(1855, 'diz9rSb1', NULL, 'ANNe-tHomaS@hoTMAIl.coM', NULL, 'wh2DX2l5', '2023-03-23 10:01:46', '2023-03-23 10:01:46'),
(1856, NULL, NULL, 'ROMAn@ComPiC.ee', NULL, NULL, '2023-03-23 11:48:20', '2023-03-23 11:48:20'),
(1857, 'QFE4OzKd', NULL, 'sHANEollsON@Hotmail.cOM', NULL, 'GSy0R6LI', '2023-03-23 13:03:28', '2023-03-23 13:03:28'),
(1858, 'r4F87uBG', NULL, 'AMRo337@YaHOo.COm', NULL, NULL, '2023-03-23 13:32:39', '2023-03-23 13:32:39'),
(1859, 'QtcY73k7', NULL, 'MeRgEK@COmcaSt.NET', NULL, NULL, '2023-03-23 14:13:27', '2023-03-23 14:13:27'),
(1860, 'x5WnE1EB', NULL, 'dREaDiNBEd@AoL.Com', NULL, NULL, '2023-03-23 17:37:19', '2023-03-23 17:37:19'),
(1861, 'qjMUxmvY', NULL, 'KiImsmarKeT@gmAIl.cOm', NULL, NULL, '2023-03-23 17:37:29', '2023-03-23 17:37:29'),
(1862, 'xqJDtztt', NULL, 'lydiA6628@GmAIl.cOM', NULL, NULL, '2023-03-23 17:37:52', '2023-03-23 17:37:52'),
(1863, 'VuSp13f9', NULL, 'RPG.tRUcKIng.Ltd@gMaIL.CoM', NULL, NULL, '2023-03-23 17:38:17', '2023-03-23 17:38:17'),
(1864, 'i3KpVikK', NULL, 'jebPIcKaRd@HOtmAil.Com', NULL, '2ACimo9U', '2023-03-23 18:55:29', '2023-03-23 18:55:29'),
(1865, 'XOvNyrn4', NULL, '3174990389@Mymetropcs.cOM', NULL, 'aWlh4USf', '2023-03-23 22:35:33', '2023-03-23 22:35:33'),
(1866, 'M2cK32iz', NULL, 'jTlANgLey@geNelAngLeyFoRD.COM', NULL, 'Zrjb27S8', '2023-03-23 22:40:02', '2023-03-23 22:40:02'),
(1867, 'DWsPJR1U', NULL, 'DWs@gWTc.NEt', NULL, NULL, '2023-03-23 22:55:23', '2023-03-23 22:55:23'),
(1868, 'riYbt9U4', NULL, 'MaRTIn_joHn_CaRtER_MElv@HoTmAil.cOM', NULL, NULL, '2023-03-23 22:55:37', '2023-03-23 22:55:37'),
(1869, 'uzlz9nHb', NULL, 'RICHArd@rvARneyREAltY.CoM', NULL, NULL, '2023-03-23 22:55:41', '2023-03-23 22:55:41'),
(1870, '4XK0P1aP', NULL, 'pSMiLey@hOtMAIl.com', NULL, NULL, '2023-03-23 22:55:50', '2023-03-23 22:55:50'),
(1871, '8WrXpa5H', NULL, 'romaN@COMPic.EE', NULL, NULL, '2023-03-23 22:58:59', '2023-03-23 22:58:59'),
(1872, '9G8n9oqp', NULL, 'tSelLoN2012@gmAIL.COm', NULL, 'h0YSGX5P', '2023-03-23 22:59:01', '2023-03-23 22:59:01'),
(1873, 'HRgJkLzM', NULL, 'pALOAltolYNCH@GMaiL.cOm', NULL, 'f1oHe621', '2023-03-23 23:00:04', '2023-03-23 23:00:04'),
(1874, 'hrFMTeex', NULL, '8322083942@tXt.aTT.net', NULL, '5XjmNaxG', '2023-03-23 23:00:08', '2023-03-23 23:00:08'),
(1875, 'clj6qRjo', NULL, 'georGereaLToR4022@GMaiL.cOM', NULL, NULL, '2023-03-23 23:05:09', '2023-03-23 23:05:09'),
(1876, 'fqro7ftU', NULL, 'MIke@urbANMoUsE.CoM', NULL, 'FOqwTDob', '2023-03-24 00:37:26', '2023-03-24 00:37:26'),
(1877, 'gE4WoYHe', NULL, 'arRIk7@GmaIl.CoM', NULL, 'gjVvnoHT', '2023-03-24 00:37:41', '2023-03-24 00:37:41'),
(1878, 'dMGbKNBN', NULL, 'SHellEYrUsNELl@outlook.cOM', NULL, NULL, '2023-03-24 05:06:28', '2023-03-24 05:06:28'),
(1879, 'l4HezjDg', NULL, 'ObvIsal@YaHOO.cOM', NULL, NULL, '2023-03-24 05:07:18', '2023-03-24 05:07:18'),
(1880, 'yLFItuCS', NULL, 'SHANNonsMItH451@gmaIL.Com', NULL, NULL, '2023-03-24 05:07:40', '2023-03-24 05:07:40'),
(1881, 'fh0WJ19O', NULL, 'sHauNcOSBUrN5@gmaiL.cOm', NULL, NULL, '2023-03-24 05:07:50', '2023-03-24 05:07:50'),
(1882, 'dgmNnEA7', NULL, 'WIlSONMFw55@GMaIl.Com', NULL, 'Ev5xOia5', '2023-03-24 05:08:25', '2023-03-24 05:08:25'),
(1883, NULL, NULL, 'DMDMillER99@GMAiL.coM', NULL, NULL, '2023-03-24 07:08:19', '2023-03-24 07:08:19'),
(1884, 'H2Vh5Hvl', NULL, 'kRazplaT1nuM@mSN.coM', NULL, NULL, '2023-03-24 09:58:11', '2023-03-24 09:58:11'),
(1885, 'AAbZNx0s', NULL, 'DanitzAALdingEr53@YahoO.cOm', NULL, NULL, '2023-03-24 10:00:04', '2023-03-24 10:00:04'),
(1886, NULL, NULL, 'InfO@FIbER.eE', NULL, NULL, '2023-03-24 12:21:17', '2023-03-24 12:21:17'),
(1887, 'bREPjrRI', NULL, 'sHeAkkab@GmaIl.COm', NULL, NULL, '2023-03-24 17:02:00', '2023-03-24 17:02:00'),
(1888, 'dRaAQW70', NULL, 'edWARd.SHEa@rETRoPhiN.CoM', NULL, NULL, '2023-03-24 17:02:04', '2023-03-24 17:02:04'),
(1889, NULL, NULL, 'ooLuChI2015@gMAil.cOM', NULL, NULL, '2023-03-24 19:58:38', '2023-03-24 19:58:38'),
(1890, NULL, NULL, 'AmbERLEAh3982@GMAIl.cOm', NULL, NULL, '2023-03-24 20:00:04', '2023-03-24 20:00:04'),
(1891, NULL, NULL, 'sTEpHANe@aPPrO-UTIlItAirEs.COm', NULL, NULL, '2023-03-24 20:00:26', '2023-03-24 20:00:26'),
(1892, NULL, NULL, 'eSCOllet@myMts.NET', NULL, NULL, '2023-03-24 20:00:36', '2023-03-24 20:00:36'),
(1893, NULL, NULL, 'StEphANE@aPprO-uTiLItAIrES.Com', NULL, NULL, '2023-03-24 20:02:06', '2023-03-24 20:02:06'),
(1894, 'UlXjNYnw', NULL, '8322083942@TXT.aTT.net', NULL, NULL, '2023-03-24 23:16:45', '2023-03-24 23:16:45'),
(1895, 'qeKnCsPC', NULL, 'BasaLyGO@BEll.NET', NULL, 'zLCURlH3', '2023-03-24 23:40:05', '2023-03-24 23:40:05'),
(1896, 'Hk3abq8Y', NULL, 'lynNRaCUsiN@me.CoM', NULL, 'xAoLnjTU', '2023-03-24 23:40:06', '2023-03-24 23:40:06'),
(1897, '1rXREJjv', NULL, 'BateMuNaH@pROtonMaIl.COm', NULL, NULL, '2023-03-25 00:42:37', '2023-03-25 00:42:37'),
(1898, 'tvAPMrRK', NULL, 'dcappELLETti@comcAsT.nET', NULL, 'NIZt6XR0', '2023-03-25 02:30:46', '2023-03-25 02:30:46'),
(1899, 'AL3zf7j6', NULL, 'AhMed.abdAllah.ca@gMAIL.cOm', NULL, 'GvMWjKUk', '2023-03-25 02:30:53', '2023-03-25 02:30:53'),
(1900, 'br7hNLD1', NULL, 'AlLenPyle@gmaiL.CoM', NULL, NULL, '2023-03-25 02:33:24', '2023-03-25 02:33:24'),
(1901, 'GhxCNIpY', NULL, 'ALfredruSSelL89@GmAIL.COm', NULL, 'XmW492e9', '2023-03-25 03:45:23', '2023-03-25 03:45:23'),
(1902, 'qsbk8b9B', NULL, 'WinKy_mUd02@HotmaiL.cOm', NULL, 'OUARaM6C', '2023-03-25 03:46:55', '2023-03-25 03:46:55'),
(1903, 'fz3wxpyn', NULL, 'Liz.rusSEll58@HOtmAIL.CoM', NULL, 'KVYXJ5DR', '2023-03-25 03:47:36', '2023-03-25 03:47:36'),
(1904, '5xMMcFPp', NULL, 'ENORly1@GMaiL.com', NULL, 'WNzgbnxv', '2023-03-25 03:47:38', '2023-03-25 03:47:38'),
(1905, 'PrYfLlXk', NULL, 'pEpemIke1219@gMaiL.coM', NULL, '2lrP5qv5', '2023-03-25 03:48:06', '2023-03-25 03:48:06'),
(1906, 'uFVXcIGf', NULL, 'SukHPaNjEta@hoTMAIl.coM', NULL, 'VhXpn970', '2023-03-25 05:19:28', '2023-03-25 05:19:28'),
(1907, 'zqmCVzfB', NULL, 'sHellEYRusnELl@OutLOok.coM', NULL, NULL, '2023-03-25 07:46:58', '2023-03-25 07:46:58'),
(1908, 'jcRl3sd8', NULL, 'dMdmIlLer99@gMAIl.COm', NULL, NULL, '2023-03-25 08:11:03', '2023-03-25 08:11:03'),
(1909, 'hl6gwaFt', NULL, 'OBVISal@yaHoo.cOM', NULL, NULL, '2023-03-25 08:11:49', '2023-03-25 08:11:49'),
(1910, 'fhXDkdVX', NULL, 'DmdmilLER99@GMaIL.coM', NULL, '6kxBFXl4', '2023-03-25 09:26:37', '2023-03-25 09:26:37'),
(1911, 'wqRlua27', NULL, 'dAnER19@yaHOO.com', NULL, 'MfBliYk8', '2023-03-25 09:29:09', '2023-03-25 09:29:09'),
(1912, 'xmv3KucG', NULL, '3133786680@VtEXT.CoM', NULL, NULL, '2023-03-25 11:05:32', '2023-03-25 11:05:32'),
(1913, 'tyoTVV5X', NULL, 'doUBLep209@sBCGlobal.NEt', NULL, 'jdoLBUGv', '2023-03-25 11:54:10', '2023-03-25 11:54:10'),
(1914, 'q2s86WFD', NULL, 'sHANNOnhIlL310@YAHOo.cOM', NULL, 'aCvjqdba', '2023-03-25 11:54:19', '2023-03-25 11:54:19'),
(1915, 'xAmyN34W', NULL, 'KimBERLy.chAtmAN@gmAIl.CoM', NULL, NULL, '2023-03-25 15:40:16', '2023-03-25 15:40:16'),
(1916, 'ghsbSUcE', NULL, 'CBartOLd@HoTMail.cOm', NULL, NULL, '2023-03-25 15:41:17', '2023-03-25 15:41:17'),
(1917, 'E6ufw0O5', NULL, 'iIreNe.29@hoTmaIL.COm', NULL, 'CPFmp6w2', '2023-03-25 17:31:04', '2023-03-25 17:31:04'),
(1918, 'CnbzzVHQ', NULL, 'leijIanG99@yAhOo.cOM', NULL, NULL, '2023-03-25 20:31:52', '2023-03-25 20:31:52'),
(1919, 'UKoBHTKE', NULL, 'phIlIppeNoVOtny@GmaIL.CoM', NULL, NULL, '2023-03-25 20:32:18', '2023-03-25 20:32:18'),
(1920, 'sjkODDh0', NULL, 'liBIniuS@GmAiL.COM', NULL, NULL, '2023-03-25 20:32:21', '2023-03-25 20:32:21'),
(1921, '2ZdG9QxU', NULL, 'lAzARocaStillo88@GMaIl.com', NULL, NULL, '2023-03-25 20:32:25', '2023-03-25 20:32:25'),
(1922, '1EZjPxY4', NULL, 'CaNCemPM-OccAsION@oRanGe.Fr', NULL, NULL, '2023-03-25 20:32:55', '2023-03-25 20:32:55'),
(1923, 'VOBd5ZXN', NULL, 'dOnCILe91@YaHOo.COm', NULL, NULL, '2023-03-25 20:32:58', '2023-03-25 20:32:58'),
(1924, 'c6iAinvF', NULL, 'jAMEs.roSaRIo212@YAHoo.cOm', NULL, NULL, '2023-03-25 20:33:01', '2023-03-25 20:33:01'),
(1925, 'TqU3AsCm', NULL, 'OLIVIAfeAGlER@YAHoo.CoM', NULL, NULL, '2023-03-25 20:33:05', '2023-03-25 20:33:05'),
(1926, 'YW8KqV1s', NULL, 'jENNY_GoNSAlVES@HOTMAIl.Com', NULL, NULL, '2023-03-25 20:35:24', '2023-03-25 20:35:24'),
(1927, 'IloxZGTE', NULL, 'suKING547@gmAiL.COm', NULL, 'hX6Cyirw', '2023-03-25 20:38:21', '2023-03-25 20:38:21'),
(1928, 'ip4MKeOr', NULL, 'BeNjamIR@roCKEtMaIL.com', NULL, '6HBuSA53', '2023-03-25 20:39:42', '2023-03-25 20:39:42'),
(1929, 'v4pXg98f', NULL, 'EMIlD@CsusTaN.EdU', NULL, NULL, '2023-03-25 20:46:26', '2023-03-25 20:46:26'),
(1930, 'pHq2JN2N', NULL, 'pHppIeNso@gMAiL.CoM', NULL, NULL, '2023-03-25 20:46:46', '2023-03-25 20:46:46'),
(1931, 'bCywiSHX', NULL, 'STePHanE@apprO-UTiLiTaIres.cOm', NULL, NULL, '2023-03-25 20:47:02', '2023-03-25 20:47:02'),
(1932, 'znyMmbvM', NULL, 'JeaNne@blUeSKIEsSTRATeGY.COm', NULL, NULL, '2023-03-25 20:47:27', '2023-03-25 20:47:27'),
(1933, 'F8iyNDBU', NULL, 'ma608732@AOL.cOm', NULL, NULL, '2023-03-25 20:47:53', '2023-03-25 20:47:53'),
(1934, 'FDZw7pX9', NULL, 'XINGDAimIT@GMAIl.COM', NULL, NULL, '2023-03-25 20:49:09', '2023-03-25 20:49:09'),
(1935, 'nNk9rnex', NULL, 'DAnIElyu98@YaHoo.cOM', NULL, NULL, '2023-03-25 20:49:38', '2023-03-25 20:49:38'),
(1936, '9YI1avij', NULL, 'THeTaZsANDrA@nEtPlus.Ch', NULL, 'rxzNSG99', '2023-03-25 22:38:50', '2023-03-25 22:38:50'),
(1937, '1apGngR3', NULL, 'CREePyNeKo@Hotmail.CoM', NULL, 'DT9yBGfi', '2023-03-25 22:39:59', '2023-03-25 22:39:59'),
(1938, 'nQdQvPKN', NULL, 'JOSEPhbator@IcLoUD.cOM', NULL, '2nUEiAGc', '2023-03-26 00:54:53', '2023-03-26 00:54:53'),
(1939, '6WxObrLG', NULL, 'xAmh_generic_f8d23966_kkumhouse.com@data-backup-store.com', NULL, NULL, '2023-03-26 06:46:06', '2023-03-26 06:46:06'),
(1940, 'onxNfjyg', NULL, 'n0Bq_generic_e142ea1f_kkumhouse.com@data-backup-store.com', NULL, 'UCgeYBXo', '2023-03-26 06:46:12', '2023-03-26 06:46:12'),
(1941, NULL, NULL, 'Y7fE_generic_b18a5b28_kkumhouse.com@data-backup-store.com', NULL, NULL, '2023-03-26 06:46:17', '2023-03-26 06:46:17'),
(1942, 'r5BALgdg', NULL, 'annE-THOmAS@hOtMaIl.coM', NULL, NULL, '2023-03-26 07:28:43', '2023-03-26 07:28:43'),
(1943, NULL, NULL, 'tHetAZSanDrA@neTpluS.Ch', NULL, NULL, '2023-03-26 08:48:59', '2023-03-26 08:48:59'),
(1944, 'oQtDVJbA', NULL, 'DmDMiLleR99@gmail.COM', NULL, 'GpJZoEEJ', '2023-03-26 09:27:51', '2023-03-26 09:27:51'),
(1945, 'Kcz81P5l', NULL, 'auToHUbPORtlAnd@gmAiL.coM', NULL, NULL, '2023-03-26 10:17:05', '2023-03-26 10:17:05'),
(1946, 'qE4Iuzqt', NULL, 'SaBInE.kRetsCHMeR1@GMx.NET', NULL, NULL, '2023-03-26 10:19:21', '2023-03-26 10:19:21'),
(1947, 'Todzdb9w', NULL, 'fLora2733@yAHoO.com', NULL, '4gotcSqI', '2023-03-26 11:35:35', '2023-03-26 11:35:35'),
(1948, 'ELFuAHE5', NULL, 'sHELLeYrUsNelL@ouTLOoK.cOM', NULL, NULL, '2023-03-26 12:07:08', '2023-03-26 12:07:08'),
(1949, 'vlP5YOx1', NULL, 'sHelLeyRuSnElL@ouTLOOK.cOM', NULL, NULL, '2023-03-26 12:07:11', '2023-03-26 12:07:11'),
(1950, 'wr98ujyv', NULL, 'SabINe.KREtscHmeR1@gmx.Net', NULL, NULL, '2023-03-26 12:07:35', '2023-03-26 12:07:35'),
(1951, 'h56U5bxZ', NULL, 'ANDErSon.tODd.j@GMail.COM', NULL, NULL, '2023-03-26 12:12:06', '2023-03-26 12:12:06'),
(1952, 's62WQzVe', NULL, 'BigdadDYlOu01@gmaIl.cOM', NULL, 'Z6OAQWv3', '2023-03-26 13:17:36', '2023-03-26 13:17:36'),
(1953, 'jTNIQC9q', NULL, 'ELizAbetHPlAtE@gmAiL.COm', NULL, NULL, '2023-03-26 14:46:57', '2023-03-26 14:46:57'),
(1954, '7F1TyQWj', NULL, 'KeNdrickCoLLEen@GmaiL.CoM', NULL, 'JLA0w4fh', '2023-03-26 19:38:26', '2023-03-26 19:38:26'),
(1955, 'QCdUY7yM', NULL, 'eDjeSSiE@hotMaIl.coM', NULL, '4PBr9laa', '2023-03-26 19:40:30', '2023-03-26 19:40:30'),
(1956, 'i0cw0M9L', NULL, 'ouElleTtE.NaT@HOtMAiL.cOM', NULL, 'Zkf09uo7', '2023-03-26 19:42:10', '2023-03-26 19:42:10'),
(1957, 'QOLgmY83', NULL, 'eZEKIElbAluyUt@GMAIL.COm', NULL, NULL, '2023-03-26 21:18:15', '2023-03-26 21:18:15'),
(1958, 'n8bPMk2I', NULL, 'LeeAnn.SIMON17@GMAIl.cOM', NULL, 'g6kFdCrn', '2023-03-26 21:29:55', '2023-03-26 21:29:55'),
(1959, 'KrSpHz58', NULL, 'tom.cALDiEre@keLlOGg.cOm', NULL, '7s4f1M5m', '2023-03-26 21:30:40', '2023-03-26 21:30:40'),
(1960, 'Bbn118Nq', NULL, 'eVICVIlLaNuEVA@GmaiL.cOm', NULL, 'kCuFEvrr', '2023-03-26 21:32:19', '2023-03-26 21:32:19'),
(1961, 'JbHsY4le', NULL, 'POnceIrma@Msn.cOM', NULL, 'ucgbNlyv', '2023-03-26 21:32:51', '2023-03-26 21:32:51'),
(1962, 'wAzPao9V', NULL, 'haRsHiL.S@outLOOk.COm', NULL, '8mJ6HDrw', '2023-03-26 21:33:26', '2023-03-26 21:33:26'),
(1963, 'iwcVF5gE', NULL, 'LaurEndinGeSS@yAHoO.COM', NULL, 'KEIjtNjU', '2023-03-26 22:03:39', '2023-03-26 22:03:39'),
(1964, 'SDt5ZNcv', NULL, 'CAtaLINA@CROwnMaRbLE.CA', NULL, NULL, '2023-03-27 00:05:04', '2023-03-27 00:05:04'),
(1965, 'QrZXvsvO', NULL, 'o.ben_aMArA@bLUeWIn.cH', NULL, '4bi3Ao7G', '2023-03-27 00:16:44', '2023-03-27 00:16:44'),
(1966, 'hZXkIEcZ', NULL, 'saliKMARk@yahOO.COM', NULL, '2lINtKKM', '2023-03-27 00:16:57', '2023-03-27 00:16:57'),
(1967, '6C3lVoHC', NULL, 'LOGanJStEED@gMAIl.cOm', NULL, 'ugUQZ5BI', '2023-03-27 00:16:59', '2023-03-27 00:16:59'),
(1968, 'OgNMqidj', NULL, 'CYNthiA.XInzHOu@GMAiL.CoM', NULL, 'xEOyoi0N', '2023-03-27 00:17:04', '2023-03-27 00:17:04'),
(1969, 'Pv4HOREr', NULL, 'MsAL0710@gmaIL.cOM', NULL, 'UJJGjmuD', '2023-03-27 00:17:23', '2023-03-27 00:17:23'),
(1970, 'e0xF3af5', NULL, 'mSAl0710@gmail.cOm', NULL, 'zI7VpELY', '2023-03-27 00:17:24', '2023-03-27 00:17:24'),
(1971, 'rH51O4y3', NULL, 'cINthAla@AMazON.COm', NULL, 'O8isnAWF', '2023-03-27 00:17:26', '2023-03-27 00:17:26'),
(1972, 'oWq8N83B', NULL, 'sHarKbAtE6887@yAHOO.com', NULL, 'Y8ZqZiIw', '2023-03-27 00:19:23', '2023-03-27 00:19:23'),
(1973, NULL, NULL, 'jeNnIFeRRaCqUell7@GmaIl.coM', NULL, NULL, '2023-03-27 01:51:21', '2023-03-27 01:51:21'),
(1974, NULL, NULL, 'M.hENdERSon25@yaHoO.COm', NULL, NULL, '2023-03-27 01:51:39', '2023-03-27 01:51:39'),
(1975, NULL, NULL, 'm.HENdeRsoN25@yAHoo.cOm', NULL, NULL, '2023-03-27 01:51:44', '2023-03-27 01:51:44'),
(1976, NULL, NULL, 'rOgeRlc@nB.SYmpATiCO.CA', NULL, NULL, '2023-03-27 01:51:53', '2023-03-27 01:51:53'),
(1977, NULL, NULL, 'NoahOeNgLe@GMAil.COm', NULL, NULL, '2023-03-27 01:51:54', '2023-03-27 01:51:54'),
(1978, NULL, NULL, 'LiLIanna.coTE@rOgeRs.cOM', NULL, NULL, '2023-03-27 01:52:26', '2023-03-27 01:52:26'),
(1979, NULL, NULL, 'nIghTbOx360@GmAIL.Com', NULL, NULL, '2023-03-27 01:52:47', '2023-03-27 01:52:47'),
(1980, NULL, NULL, 'cALLieCesARINi@ROGerS.COm', NULL, NULL, '2023-03-27 01:53:00', '2023-03-27 01:53:00'),
(1981, NULL, NULL, 'bRItTANy.ValEviCIus@RogERs.COM', NULL, NULL, '2023-03-27 01:53:03', '2023-03-27 01:53:03'),
(1982, NULL, NULL, 'eGreIs@rCN.COM', NULL, NULL, '2023-03-27 01:53:06', '2023-03-27 01:53:06'),
(1983, NULL, NULL, 'JtM@SasKTeL.NEt', NULL, NULL, '2023-03-27 01:53:23', '2023-03-27 01:53:23'),
(1984, NULL, NULL, 'bACK4BLoOdBuForD@gMAil.com', NULL, NULL, '2023-03-27 01:53:34', '2023-03-27 01:53:34'),
(1985, 'C8coGkgr', NULL, 'jovaNAdjErmAnoVIC@HotmAIL.CoM', NULL, 'bawKklrf', '2023-03-27 01:54:01', '2023-03-27 01:54:01'),
(1986, 'n03a6qbo', NULL, 'aAq.REmAx@gMAIl.cOM', NULL, 'A39Sz6w3', '2023-03-27 01:55:48', '2023-03-27 01:55:48'),
(1987, '5A8hXfe1', NULL, 'nAdIA_HEb@hOTMAiL.com', NULL, 'h9MJWzbN', '2023-03-27 01:55:57', '2023-03-27 01:55:57'),
(1988, '30KhzGFD', NULL, 'LEEAnn.SimON17@GMaIl.COm', NULL, NULL, '2023-03-27 03:14:29', '2023-03-27 03:14:29'),
(1989, 'nOQR10oC', NULL, 'MELaNiehOBbS2001@YahoO.cOm', NULL, 'h0JwLbeH', '2023-03-27 03:20:02', '2023-03-27 03:20:02'),
(1990, '9YTIqF7h', NULL, 'RkHAlILl786@GmAIL.cOm', NULL, 'StfxayDs', '2023-03-27 04:28:54', '2023-03-27 04:28:54'),
(1991, '6SDeOfh2', NULL, 'EmmAcOnti15@gmAIl.coM', NULL, NULL, '2023-03-27 07:49:54', '2023-03-27 07:49:54'),
(1992, 'gJViLnNn', NULL, 'BBalLcourt14@hOTmAil.com', NULL, NULL, '2023-03-27 07:50:40', '2023-03-27 07:50:40'),
(1993, 'sqTkTd8O', NULL, 'jPsLS@comcaSt.NEt', NULL, NULL, '2023-03-27 07:53:04', '2023-03-27 07:53:04'),
(1994, 'IkLPX5To', NULL, 'mARIecoN@sbcGLOBAL.NeT', NULL, NULL, '2023-03-27 11:33:06', '2023-03-27 11:33:06'),
(1995, 'Ueg1fEp4', NULL, 'daNEICyRoDRiGUeZ@gmaiL.CoM', NULL, NULL, '2023-03-27 12:58:49', '2023-03-27 12:58:49'),
(1996, 'gp0m7s84', NULL, 'hAncOCKfaMILY2368@AtT.NEt', NULL, 'PJPxfZvj', '2023-03-27 17:42:30', '2023-03-27 17:42:30'),
(1997, '9p1ufWSg', NULL, 'aILeNwaRE.nqH@GmaIl.COM', NULL, NULL, '2023-03-27 18:03:39', '2023-03-27 18:03:39'),
(1998, 'NFn3TQSC', NULL, 'tOlGA.yapRAK@gmAil.coM', NULL, NULL, '2023-03-27 18:04:29', '2023-03-27 18:04:29'),
(1999, '1I7wRINJ', NULL, 'dBRchav@yaHoo.coM', NULL, NULL, '2023-03-27 18:40:43', '2023-03-27 18:40:43'),
(2000, 'mum1o36m', NULL, 'latOya12334@YAhoo.CoM', NULL, NULL, '2023-03-27 18:40:59', '2023-03-27 18:40:59'),
(2001, 'fci5KyOD', NULL, 'wHaMiLto1@RnWEleCTRIC.cOm', NULL, NULL, '2023-03-27 18:41:24', '2023-03-27 18:41:24'),
(2002, 'sWadiQK3', NULL, 'bEDOnALD309@gMaIL.COm', NULL, NULL, '2023-03-27 18:41:36', '2023-03-27 18:41:36'),
(2003, 'ywoVG1jm', NULL, 'dAVidboSmA@GMail.CoM', NULL, NULL, '2023-03-27 18:41:38', '2023-03-27 18:41:38'),
(2004, 'TTTu704X', NULL, 'SAllie_012@YAhoO.CoM', NULL, NULL, '2023-03-27 18:41:39', '2023-03-27 18:41:39'),
(2005, 'FURwvU5V', NULL, 'fAriTAMAy@YAHOo.cOm', NULL, NULL, '2023-03-27 18:41:41', '2023-03-27 18:41:41'),
(2006, 'iX1kXu22', NULL, 'SPaRKse52@GmAiL.COM', NULL, NULL, '2023-03-27 18:42:29', '2023-03-27 18:42:29'),
(2007, 'RkSlxQPQ', NULL, 'iNfo@tayloRCOuNselINggrOup.COm', NULL, NULL, '2023-03-27 18:43:52', '2023-03-27 18:43:52'),
(2008, '3NigoFjI', NULL, 'CHaD@CHAdMICHAElStuDIO.coM', NULL, NULL, '2023-03-27 18:44:03', '2023-03-27 18:44:03'),
(2009, 'YGcYQgjF', NULL, 'PhiLlIp.baRON@CRU.oRg', NULL, NULL, '2023-03-27 21:19:59', '2023-03-27 21:19:59'),
(2010, NULL, NULL, 'kADiAnH1@Gmail.CoM', NULL, NULL, '2023-03-27 23:57:59', '2023-03-27 23:57:59'),
(2011, NULL, NULL, 'jfelT450@YaHOo.cOM', NULL, NULL, '2023-03-27 23:58:05', '2023-03-27 23:58:05'),
(2012, NULL, NULL, 'scOtTCon40@AOl.cOm', NULL, NULL, '2023-03-27 23:59:47', '2023-03-27 23:59:47'),
(2013, NULL, NULL, 'MIcHelLe@hAmMertRUcKInginc.coM', NULL, NULL, '2023-03-28 00:00:10', '2023-03-28 00:00:10'),
(2014, NULL, NULL, 'rOgeRLc@nB.SymPaTICo.CA', NULL, NULL, '2023-03-28 00:00:35', '2023-03-28 00:00:35'),
(2015, NULL, NULL, 'SARAh.HUsaK@SaSKtEL.NEt', NULL, NULL, '2023-03-28 00:01:20', '2023-03-28 00:01:20'),
(2016, NULL, NULL, 'FLoyD.hARRiS@BrothEr.com', NULL, NULL, '2023-03-28 00:02:00', '2023-03-28 00:02:00'),
(2017, 'pXgMvjsw', NULL, 'dsHaRPe7@cOX.NEt', NULL, NULL, '2023-03-28 01:07:03', '2023-03-28 01:07:03'),
(2018, 'hk7LuuuL', NULL, '4TmURpHY1969@gMaIL.com', NULL, NULL, '2023-03-28 03:18:59', '2023-03-28 03:18:59'),
(2019, 'poeW4JSS', NULL, 'CataLIna@CroWNmarBle.ca', NULL, '3kB54Jva', '2023-03-28 07:52:47', '2023-03-28 07:52:47'),
(2020, 'rgg4NL9e', NULL, 'MArK@tHeclOUDTHINGy.CoM', NULL, '05e05xjU', '2023-03-28 07:52:50', '2023-03-28 07:52:50'),
(2021, 'X0pPqdqZ', NULL, 'sUkhPaNJEtA@HOtMail.com', NULL, 'vyslVGY9', '2023-03-28 07:52:58', '2023-03-28 07:52:58'),
(2022, 'reqiLrpj', NULL, 'MiKECAmPaGnInI@yahoo.Com', NULL, 'bbCvjOe0', '2023-03-28 07:53:50', '2023-03-28 07:53:50'),
(2023, 'zuYKSHHQ', NULL, 'dlragER@gmAil.com', NULL, 'FtZ91BgV', '2023-03-28 07:54:00', '2023-03-28 07:54:00'),
(2024, 'OUC3vsEp', NULL, 'rMAHiTha@gMAiL.COM', NULL, 'V2yJiyuL', '2023-03-28 07:54:11', '2023-03-28 07:54:11'),
(2025, 'UK3TkGAL', NULL, 'FAReShtEh.AsLaM@gMAiL.COm', NULL, '5M86AWT4', '2023-03-28 07:56:23', '2023-03-28 07:56:23'),
(2026, '4VJUZ1B4', NULL, 'JULIEBreKKEN@YAHOo.cOM', NULL, 't7VHJrOr', '2023-03-28 08:07:49', '2023-03-28 08:07:49'),
(2027, 'Pa7VeixC', NULL, 'aCamIll1944@gMAIl.COM', NULL, NULL, '2023-03-28 08:44:22', '2023-03-28 08:44:22'),
(2028, '8atwCi5O', NULL, 'baRbnICk@hOtmail.coM', NULL, 'PjTIZlke', '2023-03-28 10:19:48', '2023-03-28 10:19:48'),
(2029, 'Kygh5Z5K', NULL, 'sALlIEluNA682@gMAil.CoM', NULL, NULL, '2023-03-28 14:44:22', '2023-03-28 14:44:22'),
(2030, 'ghYKauEg', NULL, 'SeRcaN@maBturKeY.coM', NULL, 'q6MDyO1r', '2023-03-28 14:51:11', '2023-03-28 14:51:11'),
(2031, 'X4vE2j3F', NULL, 'uChOlIviA@yAHoO.cOM', NULL, NULL, '2023-03-28 15:49:55', '2023-03-28 15:49:55'),
(2032, 'WQ4icFYK', NULL, 'FEESGRoUP@LtChariTy.oRG.Uk', NULL, NULL, '2023-03-28 15:52:27', '2023-03-28 15:52:27'),
(2033, NULL, NULL, 'DRagoontameR@gamMA.OcN.ne.Jp', NULL, NULL, '2023-03-28 16:02:16', '2023-03-28 16:02:16'),
(2034, NULL, NULL, '1963067123@QQ.COm', NULL, NULL, '2023-03-28 16:02:31', '2023-03-28 16:02:31'),
(2035, NULL, NULL, 'aCcOUntiNG@PFL.COm', NULL, NULL, '2023-03-28 16:02:31', '2023-03-28 16:02:31'),
(2036, NULL, NULL, 'ROsArIo.accArdI@BlUEWiN.CH', NULL, NULL, '2023-03-28 16:02:31', '2023-03-28 16:02:31'),
(2037, NULL, NULL, 'ejaZ77@gMAiL.COM', NULL, NULL, '2023-03-28 16:02:32', '2023-03-28 16:02:32'),
(2038, NULL, NULL, 'rtkRAusHEr@SASktel.NeT', NULL, NULL, '2023-03-28 16:02:33', '2023-03-28 16:02:33'),
(2039, NULL, NULL, 'MOODY.CrYStalD@GMail.com', NULL, NULL, '2023-03-28 16:02:36', '2023-03-28 16:02:36'),
(2040, NULL, NULL, 'LIsa@WaTTCo.NeT', NULL, NULL, '2023-03-28 16:03:11', '2023-03-28 16:03:11'),
(2041, 'kM61dNe0', NULL, 'SAlLiE_012@YaHoO.Com', NULL, 'dTjMSgwa', '2023-03-28 19:44:11', '2023-03-28 19:44:11'),
(2042, 'H9mVYRQM', NULL, '6700SPiKE@gMAIl.CoM', NULL, 'bqfG6Vgb', '2023-03-28 22:31:34', '2023-03-28 22:31:34'),
(2043, 'wKRtC6P5', NULL, 'BELl.jAMES5@YahOO.cOm', NULL, 'o5Rt77jn', '2023-03-28 22:33:37', '2023-03-28 22:33:37'),
(2044, 'DmLMnFBO', NULL, 'bell.jamEs5@yAHOo.Com', NULL, 'LRKdUuZ7', '2023-03-28 22:34:04', '2023-03-28 22:34:04'),
(2045, 'cRajOjyo', NULL, 'yoLANDA.lArSON@StaTe.Mn.uS', NULL, 'jdyoi8Zt', '2023-03-28 23:57:23', '2023-03-28 23:57:23'),
(2046, 'AkA5QXSM', NULL, 'FlyGirl1212@hotMaiL.COM', NULL, 'SPb6jbrq', '2023-03-29 00:01:04', '2023-03-29 00:01:04'),
(2047, 'Hz45qiYz', NULL, 'mKenNeDYMl@COMcAST.nEt', NULL, 'yM9n1g9J', '2023-03-29 00:01:40', '2023-03-29 00:01:40'),
(2048, '21FwmdJf', NULL, 'aasS2523@yaHOO.COM', NULL, NULL, '2023-03-29 00:50:27', '2023-03-29 00:50:27'),
(2049, 'UQ7fzlot', NULL, 'SFIscor@miNIng-mEdIa.COm', NULL, 'DtAD4CO3', '2023-03-29 03:01:09', '2023-03-29 03:01:09'),
(2050, 'qTvhCqvc', NULL, 'AnDrEW@CONtapACk.COM.Au', NULL, 'yTu9Lfa5', '2023-03-29 04:22:33', '2023-03-29 04:22:33'),
(2051, 'AlwTNk7X', NULL, 'ADmin@AUsTRAoNLine.CoM.Au', NULL, '7CkJT2qv', '2023-03-29 05:01:43', '2023-03-29 05:01:43'),
(2052, 'ChmPsPD0', NULL, 'GIampaoLOrOmagNoli00@gmaIl.cOM', NULL, NULL, '2023-03-29 06:34:31', '2023-03-29 06:34:31'),
(2053, 'W3vKAScm', NULL, 'suNnYCHiCksUnprOducts@gmaiL.COm', NULL, NULL, '2023-03-29 17:06:55', '2023-03-29 17:06:55'),
(2054, 'kj8DKmXK', NULL, 'KElley@amIgoSDEjESuS.Org', NULL, NULL, '2023-03-29 17:07:45', '2023-03-29 17:07:45'),
(2055, 'luhjKV97', NULL, 'sibIriEN888@Gmx.DE', NULL, 'd1q1rklk', '2023-03-29 17:59:37', '2023-03-29 17:59:37'),
(2056, '1q27iNwH', NULL, 'MehaNDs@ROGErS.cOm', NULL, NULL, '2023-03-29 20:10:43', '2023-03-29 20:10:43'),
(2057, 'X1l2z5ZX', NULL, 'BaTtEryBrAd@cOmCaSt.net', NULL, '7woVuXsx', '2023-03-29 23:42:59', '2023-03-29 23:42:59'),
(2058, 'end2RMHE', NULL, 'FloYD.hArRiS@BrotheR.cOM', NULL, '0IO5voH6', '2023-03-29 23:43:34', '2023-03-29 23:43:34'),
(2059, 'e4wU3IKB', NULL, 'drakE-G@SbcGlobaL.Net', NULL, 'rQxi7KPB', '2023-03-29 23:43:55', '2023-03-29 23:43:55'),
(2060, 'X9PBi02Q', NULL, 'nEIl.noBleS@sIemens.COm', NULL, 'iKaeNTmo', '2023-03-29 23:58:07', '2023-03-29 23:58:07'),
(2061, 'XYUpHMjJ', NULL, 'kMiChELLE.lAdNer@GmAil.Com', NULL, '4qYuVnnI', '2023-03-30 00:39:51', '2023-03-30 00:39:51'),
(2062, 'FUCK4qRZ', NULL, 'jJGarONe@ICLOuD.cOm', NULL, 'pwPr76MO', '2023-03-30 00:39:59', '2023-03-30 00:39:59'),
(2063, 'S6r6bY9I', NULL, 'jImfratAnGeLO@GMAil.CoM', NULL, 'tDbgU2ZZ', '2023-03-30 00:41:50', '2023-03-30 00:41:50'),
(2064, 'aQfJGp9H', NULL, 'swEEttOOtHkiDSdEntIstry@GmaIl.COm', NULL, 'An5R4u7c', '2023-03-30 00:43:37', '2023-03-30 00:43:37'),
(2065, 'uSxcPcb6', NULL, 'MISsaLEiSHAANnsTephENsON@gmaiL.com', NULL, 'vi1MkdH2', '2023-03-30 00:44:25', '2023-03-30 00:44:25'),
(2066, 't8jOxUZZ', NULL, 'alejaNDrarO@SmILESurfeRS.cOM', NULL, 'TjrsYpFm', '2023-03-30 00:44:38', '2023-03-30 00:44:38'),
(2067, '9F0dQWDc', NULL, 'ThOMpsOnC365@aol.COm', NULL, 'eREB9VPb', '2023-03-30 01:17:53', '2023-03-30 01:17:53'),
(2068, 'QmXhrie6', NULL, 'AlinApeReira@yaHoO.CO.IN', NULL, 'nUzk26iA', '2023-03-30 02:47:24', '2023-03-30 02:47:24'),
(2069, 'GLQ1nsjJ', NULL, 'kgwenNER@YAhoo.cOm', NULL, '0nDkkGo1', '2023-03-30 02:49:18', '2023-03-30 02:49:18'),
(2070, 'jGitob9q', NULL, 'PMoRIcoNi@idEiNc.CoM', NULL, 'op25mttT', '2023-03-30 05:07:39', '2023-03-30 05:07:39'),
(2071, 'ilGOE6yY', NULL, 'EjMCLELlan@sympAticO.ca', NULL, 'D8wogHuu', '2023-03-30 05:09:54', '2023-03-30 05:09:54'),
(2072, 'HlfcGPWw', NULL, 'sAnDY.LariMORE@gMAiL.com', NULL, 'jfsyd2f0', '2023-03-30 05:14:05', '2023-03-30 05:14:05'),
(2073, '0Nqz4D4i', NULL, 'alEx.gEHRkE@onLInE.De', NULL, 'uWYBvVq6', '2023-03-30 10:36:15', '2023-03-30 10:36:15'),
(2074, 'WRpXTOA2', NULL, 'sTaHl24@t-ONlINE.DE', NULL, NULL, '2023-03-30 11:34:59', '2023-03-30 11:34:59'),
(2075, 'f14YGAVM', NULL, 'TaRAHoLLAnd123@HotmaIl.COM', NULL, NULL, '2023-03-30 12:16:46', '2023-03-30 12:16:46'),
(2076, 'zpp1NUhE', NULL, 'moLotfY@gwU.EDU', NULL, NULL, '2023-03-30 12:19:05', '2023-03-30 12:19:05'),
(2077, 'nPmnL7aZ', NULL, 'JaLISw2@gMaiL.Com', NULL, 'dxkqqh6F', '2023-03-30 15:01:29', '2023-03-30 15:01:29'),
(2078, 'g2whgL3d', NULL, 'bobw@WeidenFEllErs.COM', NULL, NULL, '2023-03-30 15:06:50', '2023-03-30 15:06:50'),
(2079, 'wBbMRV04', NULL, 'daRReN@cLeanFieLDiNc.cOm', NULL, NULL, '2023-03-30 15:07:13', '2023-03-30 15:07:13'),
(2080, 'dQjBfiLr', NULL, 'boB@rOBertGULleY.COm', NULL, NULL, '2023-03-30 15:07:44', '2023-03-30 15:07:44'),
(2081, 'GQTCNGdf', NULL, 'raYMoND.noLanF@gmAIl.cOm', NULL, NULL, '2023-03-30 15:10:13', '2023-03-30 15:10:13'),
(2082, 'dhGWIjFB', NULL, 'AndREWspROULE@YMAIl.COM', NULL, NULL, '2023-03-30 20:57:15', '2023-03-30 20:57:15'),
(2083, 'cpF5na3N', NULL, 'Kenny@nEONShop.cOM', NULL, NULL, '2023-03-30 20:58:33', '2023-03-30 20:58:33'),
(2084, 'sHYZj4uD', NULL, 'CTK777@HIckoryTeCH.nEt', NULL, 'H7y6TSat', '2023-03-31 00:05:26', '2023-03-31 00:05:26'),
(2085, 'uOcjYmm2', NULL, 'sabinE.GEISsLer@gmX.neT', NULL, NULL, '2023-03-31 01:11:50', '2023-03-31 01:11:50'),
(2086, 'RRKvInDR', NULL, 'nECLA@nASeh2020.cOM', NULL, NULL, '2023-03-31 01:12:40', '2023-03-31 01:12:40'),
(2087, 'Stadkudg', NULL, 'NAncy@TRUrO-LAW.com', NULL, '2wbrKMVg', '2023-03-31 01:30:54', '2023-03-31 01:30:54'),
(2088, 'c2HHR7RC', NULL, 'amnDVA1986@GMAIl.cOM', NULL, 'hYdzjPJJ', '2023-03-31 01:31:14', '2023-03-31 01:31:14'),
(2089, '2wRtgIRx', NULL, 'delGARDon@aOl.COM', NULL, 'eejBRo9I', '2023-03-31 01:32:39', '2023-03-31 01:32:39'),
(2090, 'zgP7sedb', NULL, 'KaILA.schOck@yahoo.coM', NULL, 'lyIt1DBZ', '2023-03-31 01:32:44', '2023-03-31 01:32:44'),
(2091, 'Grm5UvG7', NULL, 'AmANda.SChWERmeR@yAHOo.cOM', NULL, 'd8eA5mO5', '2023-03-31 01:32:45', '2023-03-31 01:32:45'),
(2092, 'quZC4kMr', NULL, 'JAMEsswIeRtz@YaHOO.CoM', NULL, '31yvanE4', '2023-03-31 05:50:19', '2023-03-31 05:50:19'),
(2093, 'UaWWM6jf', NULL, 'aNgeLiQUeGaRCIa81@GmAiL.Com', NULL, NULL, '2023-03-31 11:30:31', '2023-03-31 11:30:31'),
(2094, '4nPiRoiu', NULL, 'gIAnlUca7228@gMAIl.cOM', NULL, NULL, '2023-03-31 11:31:46', '2023-03-31 11:31:46'),
(2095, 'REp5FCMg', NULL, 'NeCLA@nAseH2020.com', NULL, NULL, '2023-03-31 11:32:09', '2023-03-31 11:32:09'),
(2096, 'Swips', '87148387646', 'mo7bmxwf@icloud.com', NULL, NULL, '2023-03-31 11:56:31', '2023-03-31 11:56:31'),
(2097, 'hfQYzoOK', NULL, 'CARPeDIeM@OTaAmericA.Com', NULL, NULL, '2023-03-31 13:16:17', '2023-03-31 13:16:17'),
(2098, 'Swips', '82958857222', 'h004zh3y@hotmail.com', NULL, NULL, '2023-03-31 20:16:48', '2023-03-31 20:16:48'),
(2099, NULL, NULL, 'WmBillCox@gmail.cOM', NULL, NULL, '2023-03-31 23:23:39', '2023-03-31 23:23:39'),
(2100, 'exa46Sac', NULL, 'michELLEAmORIm@hoTmAil.coM', NULL, NULL, '2023-03-31 23:43:51', '2023-03-31 23:43:51'),
(2101, 'kJEYDQRN', NULL, 'hEatheRk@bAtEsiA.cOm', NULL, 'B6FTY4wW', '2023-04-01 00:10:30', '2023-04-01 00:10:30'),
(2102, '2c0lCBmk', NULL, 'eartHtOAPRIL@yAHoO.COm', NULL, '6Hk7V2LL', '2023-04-01 00:10:51', '2023-04-01 00:10:51'),
(2103, '40bFr7yz', NULL, 'ChOiCEDecisionS@lIVE.COm', NULL, 'ZOB8gavl', '2023-04-01 00:12:14', '2023-04-01 00:12:14'),
(2104, 'ZpVx8neI', NULL, 'MsCAprIcoRN1970@yAHoo.coM', NULL, 'VQGMhib1', '2023-04-01 00:14:55', '2023-04-01 00:14:55'),
(2105, 'RobertNaT', '88483821834', 'alber.t.h.an.sh.in4.9@gmail.com', NULL, NULL, '2023-04-01 02:37:00', '2023-04-01 02:37:00'),
(2106, 'LhUkBpSJ', NULL, 'aDeQUiDt@AgrisaNtErrE.FR', NULL, NULL, '2023-04-01 08:06:55', '2023-04-01 08:06:55'),
(2107, 'NHAdjIFg', NULL, 'veRKAUF@GOePPel-lAndTechnIk.De', NULL, NULL, '2023-04-01 11:06:00', '2023-04-01 11:06:00'),
(2108, 'tvNG5Z3V', NULL, 'ARI185@yahOO.cOm', NULL, NULL, '2023-04-01 12:00:42', '2023-04-01 12:00:42'),
(2109, 'FMj6ihNq', NULL, 'tAnialUCasgRETA27@gMAIl.COM', NULL, NULL, '2023-04-01 14:22:28', '2023-04-01 14:22:28'),
(2110, 'ALmhPdm9', NULL, 'aDEQUiDT@AgRiSaNTErRE.FR', NULL, 'fnI2KhCM', '2023-04-01 19:51:11', '2023-04-01 19:51:11'),
(2111, 'DVhPm0ep', NULL, 'adEQUIDT@aGRIsAnteRrE.FR', NULL, NULL, '2023-04-01 20:50:24', '2023-04-01 20:50:24'),
(2112, 'k62iBNVe', NULL, 'kObi61@zAhaV.neT.Il', NULL, NULL, '2023-04-01 20:50:36', '2023-04-01 20:50:36'),
(2113, 'sxiOTT2I', NULL, 'rEDFieLD@PaUlBUNYan.NeT', NULL, '8HQmhAGE', '2023-04-02 02:37:34', '2023-04-02 02:37:34'),
(2114, 'ZjBn6hMQ', NULL, 'jjv0_generic_f8d23966_kkumhouse.com@data-backup-store.com', NULL, NULL, '2023-04-02 03:31:39', '2023-04-02 03:31:39'),
(2115, 'K1VYeZBS', NULL, 'adBn_generic_e142ea1f_kkumhouse.com@data-backup-store.com', NULL, 'owaPHXeT', '2023-04-02 03:31:44', '2023-04-02 03:31:44'),
(2116, NULL, NULL, 'G8l8_generic_b18a5b28_kkumhouse.com@data-backup-store.com', NULL, NULL, '2023-04-02 03:31:49', '2023-04-02 03:31:49'),
(2117, 'GUSUxUrJ', NULL, 'juDY5913@msN.CoM', NULL, NULL, '2023-04-02 04:34:01', '2023-04-02 04:34:01'),
(2118, 'MyZnF1TJ', NULL, 'cHINA_ARCeo@hotmAil.CoM', NULL, NULL, '2023-04-02 04:34:13', '2023-04-02 04:34:13'),
(2119, 'XjvpeWMZ', NULL, 'DMvalEK@LiVe.COM', NULL, 'yBbpOd3T', '2023-04-02 08:36:57', '2023-04-02 08:36:57'),
(2120, NULL, NULL, 'nOUFAlKPj@Gmail.COm', NULL, NULL, '2023-04-02 12:05:21', '2023-04-02 12:05:21'),
(2121, NULL, NULL, 'ADEQuIDT@aGRiSANTERre.FR', NULL, NULL, '2023-04-02 12:06:15', '2023-04-02 12:06:15'),
(2122, 'IUzR11L4', NULL, 'sLei.SL7.CLss.ls7@GmaiL.COm', NULL, NULL, '2023-04-02 13:56:24', '2023-04-02 13:56:24'),
(2123, '4ZRJFXw1', NULL, 'biOARCH@Hotmail.cOm', NULL, NULL, '2023-04-02 17:24:39', '2023-04-02 17:24:39'),
(2124, 'YWxTeMZu', NULL, 'MiCHAEldabRAhaM@GMAiL.com', NULL, NULL, '2023-04-02 17:26:47', '2023-04-02 17:26:47'),
(2125, 'w2xGJT8N', NULL, 'cH5577+beRG@Gmail.com', NULL, 'oVuPrINo', '2023-04-02 20:55:07', '2023-04-02 20:55:07'),
(2126, 'iQDDefLF', NULL, 'JBACOn@APPRIVEr.COM', NULL, 'xXELcYtU', '2023-04-02 20:58:51', '2023-04-02 20:58:51'),
(2127, 'cosNB5Bn', NULL, 'sUPpOrT@6FreiH2CBUEEEJo9LPAQd52Xd0DCvuIer5F21eL2l2uxcjcUS.I-K3hieaK.NA88.cAse.SALEsfOrCe.COm', NULL, NULL, '2023-04-02 22:43:59', '2023-04-02 22:43:59'),
(2128, 'OilCB7Zs', NULL, 'trEYMoReY@HOTmAiL.COm', NULL, NULL, '2023-04-02 22:44:02', '2023-04-02 22:44:02'),
(2129, 'oLyluPc6', NULL, 'norMCHAf@HOTmAiL.CoM', NULL, NULL, '2023-04-02 22:44:27', '2023-04-02 22:44:27'),
(2130, 'bkTCopWm', NULL, 'cRYstELLETIpToN@GmAil.cOm', NULL, NULL, '2023-04-02 22:44:54', '2023-04-02 22:44:54'),
(2131, 'TltCAES5', NULL, 'VALLImaDDI@GmaIl.com', NULL, NULL, '2023-04-02 22:45:03', '2023-04-02 22:45:03'),
(2132, 'TJ0224QO', NULL, 'LkluSk@OUTlOOK.CoM', NULL, NULL, '2023-04-02 22:45:12', '2023-04-02 22:45:12'),
(2133, 'N1pMPFNb', NULL, 'saEeDMrk@gmaiL.com', NULL, NULL, '2023-04-02 22:48:24', '2023-04-02 22:48:24'),
(2134, 'bxte9xYg', NULL, 'XAYyAng35@MsN.coM', NULL, NULL, '2023-04-02 23:57:38', '2023-04-02 23:57:38'),
(2135, 'tmTIgQkZ', NULL, 'DylANluCaS191@gMaIL.COM', NULL, NULL, '2023-04-02 23:58:09', '2023-04-02 23:58:09'),
(2136, 'YtlEqtqX', NULL, 'olIVER.B.JoRGensEN@GMAIl.coM', NULL, NULL, '2023-04-02 23:58:23', '2023-04-02 23:58:23'),
(2137, 'RnIo1jPE', NULL, 'natHanIAlCOcHRaNe@yAhOo.COM', NULL, NULL, '2023-04-02 23:58:32', '2023-04-02 23:58:32'),
(2138, 'mIS0IYnY', NULL, 'bEtHsTALOwy@GmaiL.CoM', NULL, 'm39Z1Uwf', '2023-04-03 02:14:18', '2023-04-03 02:14:18'),
(2139, 'eugowH9t', NULL, 'bIgeCOMMeRCE@163.CoM', NULL, 'Nn9Cvd0M', '2023-04-03 06:56:19', '2023-04-03 06:56:19'),
(2140, 'eGsloijQ', NULL, 'adequIdT@agrisaNtErRe.Fr', NULL, NULL, '2023-04-03 08:01:02', '2023-04-03 08:01:02'),
(2141, 'AnfA0oqi', NULL, 'DeANcOLEman2014@gmAIl.CoM', NULL, 'XNhTBO3d', '2023-04-03 10:54:28', '2023-04-03 10:54:28'),
(2142, 'kwOWGKxX', NULL, 'MK407oRlanDo@gmAIL.cOm', NULL, NULL, '2023-04-03 12:06:41', '2023-04-03 12:06:41'),
(2143, 'nN1NmOSx', NULL, 'GlassfAM7@ZaHAv.NET.IL', NULL, NULL, '2023-04-03 14:12:32', '2023-04-03 14:12:32'),
(2144, '0TRQfQR4', NULL, 'kLkOOB66@GMaiL.com', NULL, NULL, '2023-04-03 15:56:58', '2023-04-03 15:56:58'),
(2145, 'tWVMtJtb', NULL, 'DEVoNjJ999@aOL.COm', NULL, NULL, '2023-04-03 15:57:35', '2023-04-03 15:57:35'),
(2146, 'RZAFdans', NULL, 'reaLtoRASLAM@GmaiL.COM', NULL, NULL, '2023-04-03 15:58:05', '2023-04-03 15:58:05'),
(2147, 'cbECfASv', NULL, 'TOothY_3@hOTmAIL.cOm', NULL, NULL, '2023-04-03 15:58:19', '2023-04-03 15:58:19'),
(2148, 'ByihpQXK', NULL, 'info@MIllARviLLEChuRch.OrG', NULL, NULL, '2023-04-03 16:00:06', '2023-04-03 16:00:06'),
(2149, 'yGIbDVV0', NULL, 'nOTetAKeR121@gMail.Com', NULL, NULL, '2023-04-03 16:00:12', '2023-04-03 16:00:12'),
(2150, 'axBX4nlg', NULL, 'dr_marcu@015.NeT.IL', NULL, NULL, '2023-04-03 17:17:29', '2023-04-03 17:17:29'),
(2151, 'CIQKOiDq', NULL, 'dR_MarCU@015.nET.il', NULL, NULL, '2023-04-03 17:17:40', '2023-04-03 17:17:40'),
(2152, 'quRMcos0', NULL, 'MUHAMMADZeeSHan712@gmAIl.Com', NULL, NULL, '2023-04-03 17:20:11', '2023-04-03 17:20:11'),
(2153, '9X3NGzAB', NULL, 'JblaIR2663@GmaIL.Com', NULL, '7YnPh32H', '2023-04-03 17:25:47', '2023-04-03 17:25:47'),
(2154, 'VzUbkSdG', NULL, 'RUbberDu777@gMAil.cOm', NULL, '4QgpXO8O', '2023-04-03 17:26:40', '2023-04-03 17:26:40'),
(2155, 'eLGccTNV', NULL, 'mOnICaLEbLANC@ROgeRs.CoM', NULL, 'eXl7BUjS', '2023-04-03 21:04:06', '2023-04-03 21:04:06'),
(2156, 'Ch3zsWsh', NULL, 'EmmaoWENS67@hoTMAIL.cOM', NULL, 'IaaovJpP', '2023-04-03 21:04:32', '2023-04-03 21:04:32'),
(2157, 't1XmzTZi', NULL, 'rlAw4903@Gmail.coM', NULL, 'd6oteYVk', '2023-04-03 21:04:38', '2023-04-03 21:04:38'),
(2158, 'HTx6tut9', NULL, 'jaMESBALTz@coMcAst.net', NULL, 'dY71zPRn', '2023-04-03 21:04:41', '2023-04-03 21:04:41'),
(2159, 'nn3yEI48', NULL, 'NANCyBPiCKaRD@GmAIl.COM', NULL, '5NGBRirS', '2023-04-03 21:06:22', '2023-04-03 21:06:22'),
(2160, 'B18f8JcC', NULL, 'SErpenTKINGloKi@GMAIl.Com', NULL, NULL, '2023-04-03 21:40:18', '2023-04-03 21:40:18'),
(2161, 'vYaDL7lc', NULL, 'kHannoSheeN765@gMAIl.COM', NULL, NULL, '2023-04-03 21:40:54', '2023-04-03 21:40:54'),
(2162, 'esUOnuvl', NULL, 'AfrICia007@YAhOO.COm', NULL, 'da2yLcXj', '2023-04-03 22:57:26', '2023-04-03 22:57:26'),
(2163, 'O9JQkh8U', NULL, 'burCH.rEED@gMAIl.com', NULL, 'FnZ4Zzlw', '2023-04-03 22:57:47', '2023-04-03 22:57:47'),
(2164, '7A70RPSx', NULL, 'MmuehlBauer2@HOTMAIl.cOM', NULL, '7L2qRAzD', '2023-04-03 22:58:20', '2023-04-03 22:58:20'),
(2165, 'MlReta8k', NULL, 'dr_maRcu@015.Net.IL', NULL, 'X4A5XQOP', '2023-04-03 22:58:28', '2023-04-03 22:58:28'),
(2166, '4eBb57PH', NULL, 'gAGA2K5@YAhOO.CoM', NULL, 'OI2nw5uV', '2023-04-03 22:58:31', '2023-04-03 22:58:31'),
(2167, 'K8yW9mHP', NULL, 'RYNPMBrTn@gMail.COm', NULL, 'LVWubZPR', '2023-04-03 22:58:34', '2023-04-03 22:58:34'),
(2168, 'PnzhEoXF', NULL, 'CSIlMOn@WeSTeRnflYErExpRESs.cOM', NULL, 'VvlkycAN', '2023-04-03 22:58:37', '2023-04-03 22:58:37'),
(2169, 'CpgnuUrQ', NULL, 'nIckfLAherTyPAvEk@Yahoo.COM', NULL, NULL, '2023-04-04 00:50:07', '2023-04-04 00:50:07'),
(2170, '2LI9Kp9I', NULL, 'reAltOraSlAm@GmaIl.cOm', NULL, NULL, '2023-04-04 13:27:12', '2023-04-04 13:27:12'),
(2171, '65wyeFxx', NULL, 'Nc01@oPtONLIne.Net', NULL, NULL, '2023-04-04 13:28:44', '2023-04-04 13:28:44'),
(2172, '8JCRTSBO', NULL, 'roSlynCROyDOn@gMAIL.COM', NULL, NULL, '2023-04-04 13:29:27', '2023-04-04 13:29:27'),
(2173, 'Yx8dowxC', NULL, 'Machulko@HoTmail.cOM', NULL, NULL, '2023-04-04 14:27:45', '2023-04-04 14:27:45'),
(2174, 'Wv3XlMkC', NULL, 'CaRoliNafierRo01@gmaIl.COM', NULL, NULL, '2023-04-04 14:53:15', '2023-04-04 14:53:15'),
(2175, 'lBeQt7q3', NULL, 'JErRY.OUreN@gmAiL.COm', NULL, NULL, '2023-04-04 18:04:54', '2023-04-04 18:04:54'),
(2176, 'llTviFV1', NULL, 'dToONSTER@gmaIL.Com', NULL, NULL, '2023-04-04 18:05:04', '2023-04-04 18:05:04'),
(2177, 'P5Do2Wsw', NULL, 'KHAnNOShEeN765@gMail.COM', NULL, NULL, '2023-04-04 18:05:24', '2023-04-04 18:05:24'),
(2178, 'gPVIrdPZ', NULL, 'kAjO8410@GMAIL.cOm', NULL, NULL, '2023-04-04 18:05:47', '2023-04-04 18:05:47'),
(2179, '6N0sSWYg', NULL, 'LaNAMachUlKo@GMaIl.Com', NULL, NULL, '2023-04-04 18:06:19', '2023-04-04 18:06:19'),
(2180, 'IUbDedIX', NULL, 'AliZayNaIlYN05@YAhoo.com', NULL, NULL, '2023-04-04 18:06:44', '2023-04-04 18:06:44'),
(2181, 'XswmvDmb', NULL, 'chaRlEsEEVAns11@GMaIL.Com', NULL, NULL, '2023-04-04 18:07:39', '2023-04-04 18:07:39'),
(2182, 'Mike Bosworth', '82581666391', 'no-replyvedo@gmail.com', NULL, NULL, '2023-04-04 18:39:06', '2023-04-04 18:39:06'),
(2183, 'YTZP8Gvp', NULL, 'mIChelb@MoAg.gov.il', NULL, NULL, '2023-04-04 20:04:36', '2023-04-04 20:04:36'),
(2184, 'g108Uda3', NULL, 'juaNPABLoBaenA31@GMail.cOm', NULL, NULL, '2023-04-04 20:04:49', '2023-04-04 20:04:49'),
(2185, 'BVkXnrOd', NULL, 'rSPatrICk001@YAhOO.cOm', NULL, NULL, '2023-04-04 20:05:35', '2023-04-04 20:05:35'),
(2186, 'Z4MRr0ek', NULL, 'TEReSA.CAsTENeDA@perfORmanCETEAm.NeT', NULL, NULL, '2023-04-04 20:06:59', '2023-04-04 20:06:59'),
(2187, 'q1jTSXjd', NULL, 'LIsAGEIsSLER@GMX.dE', NULL, NULL, '2023-04-04 20:07:01', '2023-04-04 20:07:01'),
(2188, 'A0ciZeMt', NULL, 'WyngaIneS@YahoO.cOm', NULL, NULL, '2023-04-04 20:07:04', '2023-04-04 20:07:04'),
(2189, 'O4DLWeX2', NULL, 'TEreSA.cAstEnEdA@perfORmANcETEAm.net', NULL, NULL, '2023-04-04 20:07:20', '2023-04-04 20:07:20'),
(2190, 'MAvJjoXy', NULL, 'tereSa.CAsteNedA@peRfoRMancetEAm.NET', NULL, 'DYyNBdGE', '2023-04-04 21:08:43', '2023-04-04 21:08:43'),
(2191, 'FxkQqLqg', NULL, 'mAChulKo@HOTmail.com', NULL, '5z8ff6X5', '2023-04-04 21:08:46', '2023-04-04 21:08:46'),
(2192, 'MHBbrrsJ', NULL, 'fRANuS69@hOtMAIL.COM', NULL, 'Hrr66j8z', '2023-04-04 21:09:06', '2023-04-04 21:09:06'),
(2193, 'dlc362Qv', NULL, 'kUN347@gmAil.cOm', NULL, 'bfSLnhVA', '2023-04-04 21:09:15', '2023-04-04 21:09:15'),
(2194, '57o7et5A', NULL, 'natALYMLAFAry@gMaIl.COM', NULL, 'VBht8m5v', '2023-04-04 21:09:18', '2023-04-04 21:09:18'),
(2195, 'o5BL4E3u', NULL, 'KYLIebaker@iNTerNODE.On.NEt', NULL, 'KMH4wume', '2023-04-04 21:10:01', '2023-04-04 21:10:01'),
(2196, 'IV56F5G6', NULL, 'GuTtMANnoaH@GmAil.COM', NULL, 'rqVu0pFi', '2023-04-04 21:12:11', '2023-04-04 21:12:11'),
(2197, 'C7ArWSID', NULL, 'SHARon@GaRgIuLovINeyARdS.COm', NULL, '3xeBSZXN', '2023-04-05 00:20:17', '2023-04-05 00:20:17'),
(2198, NULL, NULL, 'jstUR825@gMail.coM', NULL, NULL, '2023-04-05 02:37:20', '2023-04-05 02:37:20'),
(2199, NULL, NULL, '3MMOrAtz@Gmail.cOm', NULL, NULL, '2023-04-05 02:37:35', '2023-04-05 02:37:35'),
(2200, NULL, NULL, 'ChrISTiNEz79@YaHOO.cOM', NULL, NULL, '2023-04-05 02:38:20', '2023-04-05 02:38:20'),
(2201, NULL, NULL, 'vinCENtKieSel@gmaIL.com', NULL, NULL, '2023-04-05 02:38:21', '2023-04-05 02:38:21'),
(2202, 'YcnaIoQD', NULL, 'SHIrZHang@yAHOo.COM', NULL, 'MBIpeNRQ', '2023-04-05 02:46:14', '2023-04-05 02:46:14'),
(2203, NULL, NULL, 'JaKe_44_4@hOtmaiL.COm', NULL, NULL, '2023-04-05 12:42:46', '2023-04-05 12:42:46'),
(2204, NULL, NULL, 'LIsagEiSslER@gMx.DE', NULL, NULL, '2023-04-05 12:42:49', '2023-04-05 12:42:49'),
(2205, NULL, NULL, 'YmercaDieR@gmaiL.cOM', NULL, NULL, '2023-04-05 12:42:57', '2023-04-05 12:42:57'),
(2206, 'sjPFmmLm', NULL, 'dTErRes@yahoO.cOm', NULL, '071LLKoz', '2023-04-05 12:50:19', '2023-04-05 12:50:19'),
(2207, 'Innht6Bg', NULL, 'EgEDI@gmx.dE', NULL, NULL, '2023-04-05 15:18:48', '2023-04-05 15:18:48'),
(2208, 'JTjokSOS', NULL, 'pENHolDlIbrAry@PRL.aB.cA', NULL, NULL, '2023-04-05 18:14:49', '2023-04-05 18:14:49'),
(2209, 'HmhQwqTF', NULL, 'ConnOR.b2017@yAHOO.com', NULL, NULL, '2023-04-05 18:58:00', '2023-04-05 18:58:00'),
(2210, '9irYsMne', NULL, 'vIncENTkiESEl@yAhOO.COM', NULL, NULL, '2023-04-05 20:01:19', '2023-04-05 20:01:19'),
(2211, 'RczzE4sv', NULL, 'dOnTAViUsMorrisseTTE@YAhOO.cOm', NULL, NULL, '2023-04-05 20:01:29', '2023-04-05 20:01:29'),
(2212, 'UCMAx8cT', NULL, 'dHRUV7089@YmAIl.Com', NULL, NULL, '2023-04-05 20:02:31', '2023-04-05 20:02:31'),
(2213, 'bGpSF3ZP', NULL, 'kschAEFEr@ADVaNStar.Com', NULL, NULL, '2023-04-05 20:03:03', '2023-04-05 20:03:03'),
(2214, 'Cbgejq3P', NULL, 'areyN22@YaHOO.coM', NULL, 'ebIzKPYK', '2023-04-05 20:09:12', '2023-04-05 20:09:12'),
(2215, 'U9WZem9N', NULL, 'JrtaTer@PROTONMaIL.cOm', NULL, NULL, '2023-04-05 22:57:19', '2023-04-05 22:57:19'),
(2216, 'Lm2OEEdJ', NULL, 'RVkLauS@gMAIL.COm', NULL, NULL, '2023-04-05 22:57:28', '2023-04-05 22:57:28'),
(2217, 'zGfvXBU2', NULL, 'TRACeYG@bRocKaMP-jaeger.com', NULL, NULL, '2023-04-05 22:57:44', '2023-04-05 22:57:44'),
(2218, 'biPGKHQW', NULL, 'DAfseth@WEaThERmoD.Com', NULL, NULL, '2023-04-05 22:59:07', '2023-04-05 22:59:07'),
(2219, 'iT3crw4U', NULL, 'TAReeF.taLALA@GMAIL.COm', NULL, NULL, '2023-04-05 23:28:22', '2023-04-05 23:28:22'),
(2220, 'ZeUNCZUW', NULL, 'raycECARliFE@GmAiL.cOm', NULL, 'M5SuM153', '2023-04-05 23:32:38', '2023-04-05 23:32:38'),
(2221, 'WKsmVw6O', NULL, 'cOdy95BRonCo@YaHOO.COM', NULL, 'u9qSkDWe', '2023-04-05 23:33:03', '2023-04-05 23:33:03'),
(2222, 'QI0PCVS3', NULL, 'haRry.zhAO@BLuEDotS.cOM.Au', NULL, 'P6Yv8quC', '2023-04-05 23:33:38', '2023-04-05 23:33:38'),
(2223, 'xsbzgwEU', NULL, 'rvsalazAr090@gmAIl.COM', NULL, 'DtB0xv2z', '2023-04-06 00:28:49', '2023-04-06 00:28:49'),
(2224, 'aAtzN69n', NULL, 'CUrTiS1103@gMaiL.CoM', NULL, 'cDB5Q0mf', '2023-04-06 01:41:03', '2023-04-06 01:41:03'),
(2225, 'QgP8oHnr', NULL, 'JUstIN.Reed@McleodHEalth.oRg', NULL, 'ax7gC2IK', '2023-04-06 01:43:11', '2023-04-06 01:43:11'),
(2226, 'PMMgD59F', NULL, 'justin.reed@MCleodhealth.ORg', NULL, 'THaSpAWU', '2023-04-06 01:43:14', '2023-04-06 01:43:14'),
(2227, NULL, NULL, 'MbazZ69@hotmaiL.COM', NULL, NULL, '2023-04-06 02:42:27', '2023-04-06 02:42:27'),
(2228, NULL, NULL, 'MbAZz69@GmaIl.Com', NULL, NULL, '2023-04-06 02:42:34', '2023-04-06 02:42:34'),
(2229, 'v46iBKCb', NULL, 'Tk229@HOtmAil.CoM', NULL, 'BdEch59Z', '2023-04-06 04:18:07', '2023-04-06 04:18:07'),
(2230, 'WEjwNca8', NULL, 'AVaLdeZ@genEsIscITy.ORG', NULL, NULL, '2023-04-06 08:56:15', '2023-04-06 08:56:15'),
(2231, 'SJaqX8of', NULL, 'daddyMac1363@msn.coM', NULL, 'e9as0FUj', '2023-04-06 10:56:56', '2023-04-06 10:56:56'),
(2232, 'qMKNRuMP', NULL, 'ADjONeS4@WISC.EDu', NULL, 'CHvPZg39', '2023-04-06 10:59:34', '2023-04-06 10:59:34'),
(2233, '3J7XuD6Q', NULL, 'mARylDANiels@gmail.cOm', NULL, NULL, '2023-04-06 17:23:39', '2023-04-06 17:23:39'),
(2234, 'KXgffxg0', NULL, 'JOdY.DreSNer@GMAIL.cOm', NULL, 'Gq3uiTOw', '2023-04-06 17:26:58', '2023-04-06 17:26:58'),
(2235, '2KgC5vfE', NULL, 'PhIliPpE@coLaCICCo.FR', NULL, 'mEo1K7z1', '2023-04-06 17:27:34', '2023-04-06 17:27:34'),
(2236, 'TeWPRXRr', NULL, 'ken@fibAtroN.cOM.Au', NULL, '4lHBVi1D', '2023-04-06 17:27:39', '2023-04-06 17:27:39'),
(2237, 'cldLMp9d', NULL, 'kSaNdRAJANe@gMAil.cOm', NULL, 'X0UaqShO', '2023-04-06 17:28:16', '2023-04-06 17:28:16'),
(2238, 'QqxUIi3v', NULL, 'HCAn@mY.DEvRY.EdU', NULL, '0iO69TCV', '2023-04-06 17:29:02', '2023-04-06 17:29:02'),
(2239, 'E5jIDhwQ', NULL, 'teRrYgaddy64@gmAiL.COM', NULL, 'zPQ0pxea', '2023-04-06 17:29:11', '2023-04-06 17:29:11'),
(2240, 'a56HSb3v', NULL, 'kAThi@BehSTBUILdERS.cOm', NULL, NULL, '2023-04-06 20:14:45', '2023-04-06 20:14:45'),
(2241, 'AZD1zCVz', NULL, 'julIo.JuCerAre@gmaIL.COm', NULL, NULL, '2023-04-06 20:16:10', '2023-04-06 20:16:10'),
(2242, 'OQ63YAL8', NULL, 'INFO@cANSTarmECHAnIcaL.cOM', NULL, NULL, '2023-04-06 20:42:07', '2023-04-06 20:42:07'),
(2243, 'H2tCmyuU', NULL, 'dRESSYpJ@verizON.NET', NULL, NULL, '2023-04-06 20:42:43', '2023-04-06 20:42:43'),
(2244, 'yXhgHKJH', NULL, 'dAFsETH@weATHERmOd.cOM', NULL, NULL, '2023-04-06 20:44:35', '2023-04-06 20:44:35'),
(2245, 'QyMIqJBi', NULL, 'WeKELl00@gmaiL.cOm', NULL, NULL, '2023-04-06 20:48:28', '2023-04-06 20:48:28'),
(2246, 'zTqilpIv', NULL, 'NorthpaRK@DrcRiSoL.cOm', NULL, 'eRHXaEnw', '2023-04-06 23:16:16', '2023-04-06 23:16:16'),
(2247, 'pIpqijHl', NULL, 'LoGan.lEXI@gmaIl.CoM', NULL, 'bAUl8CVF', '2023-04-06 23:18:14', '2023-04-06 23:18:14'),
(2248, 'o4GzqxIm', NULL, 'wALTErbeNNeTt25@gMAIL.COm', NULL, 'wgsMmcIH', '2023-04-06 23:58:15', '2023-04-06 23:58:15'),
(2249, 'FqXnpfKG', NULL, 'DiNmAn728@aOL.Com', NULL, '5aDiVRAf', '2023-04-06 23:58:55', '2023-04-06 23:58:55'),
(2250, 'j4FEYMHy', NULL, 'NICOle@lOuER.co.UK', NULL, 'zf2BRxJ5', '2023-04-06 23:59:03', '2023-04-06 23:59:03'),
(2251, '0DSlbhMq', NULL, 'sZAdva@GmAIl.cOm', NULL, 'ONmhsmqE', '2023-04-07 00:02:37', '2023-04-07 00:02:37'),
(2252, 'v6kVuHDU', NULL, 'rwaHL07@aIm.COM', NULL, NULL, '2023-04-07 08:10:44', '2023-04-07 08:10:44'),
(2253, 'i06iMvVh', NULL, 'rfORAKEr@mEDIACOMBb.net', NULL, NULL, '2023-04-07 08:12:36', '2023-04-07 08:12:36'),
(2254, 'WbWF8rPE', NULL, 'loreNaoRAnTeS@SbCglObAL.Net', NULL, NULL, '2023-04-07 08:13:33', '2023-04-07 08:13:33'),
(2255, 'MEAViIrF', NULL, 'nGdenNIs97@HoTmaIL.COm', NULL, 'yJ6SY9zw', '2023-04-07 11:06:18', '2023-04-07 11:06:18'),
(2256, 'pqt4mK7V', NULL, 'bmeJstU@GmaIl.cOm', NULL, 'InovJq00', '2023-04-07 11:06:51', '2023-04-07 11:06:51'),
(2257, 'NoDXx1L6', NULL, 'matT@MelboUrNeBRICK.com.aU', NULL, 'BC7HTsqU', '2023-04-07 11:06:52', '2023-04-07 11:06:52'),
(2258, 'SQlUJCKU', NULL, 'WynWOOD@dOghotELS.Com', NULL, 'bL8NsnDx', '2023-04-07 11:07:18', '2023-04-07 11:07:18'),
(2259, 'ZrlnmrtL', NULL, 'KJoHNSON@JBA-INc.coM', NULL, 'RT7mx5It', '2023-04-07 12:49:38', '2023-04-07 12:49:38'),
(2260, 'Ys9y816M', NULL, 'GDerILUS2111@GMaIl.cOm', NULL, NULL, '2023-04-07 15:04:20', '2023-04-07 15:04:20');
INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `message`, `da`, `created_at`, `updated_at`) VALUES
(2261, 'xiYKQ6LG', NULL, 'RicbSb2003@hOtmAIl.cOm', NULL, NULL, '2023-04-07 15:04:35', '2023-04-07 15:04:35'),
(2262, 'vCKsftMG', NULL, 'OlIveRo216@HotmaiL.coM', NULL, NULL, '2023-04-07 15:04:51', '2023-04-07 15:04:51'),
(2263, 'qfzBdl7v', NULL, 'reGiNaheCkeR82@GmaiL.Com', NULL, NULL, '2023-04-07 15:05:31', '2023-04-07 15:05:31'),
(2264, '1cUqbmQg', NULL, 'giogaLasso323@gMAiL.cOm', NULL, NULL, '2023-04-07 15:07:08', '2023-04-07 15:07:08'),
(2265, NULL, NULL, 'diNMAN728@AOl.COM', NULL, NULL, '2023-04-07 16:39:17', '2023-04-07 16:39:17'),
(2266, NULL, NULL, 'kBAKKe@Me.cOm', NULL, NULL, '2023-04-07 16:39:28', '2023-04-07 16:39:28'),
(2267, NULL, NULL, 'jErry@4oaksFARMS.cOM', NULL, NULL, '2023-04-07 16:39:48', '2023-04-07 16:39:48'),
(2268, NULL, NULL, 'Navsheik@sbCgLoBal.NeT', NULL, NULL, '2023-04-07 16:40:26', '2023-04-07 16:40:26'),
(2269, NULL, NULL, 'sHAKIATrENTon@AOL.coM', NULL, NULL, '2023-04-07 16:40:26', '2023-04-07 16:40:26'),
(2270, NULL, NULL, 'BlondeRMENI@GMaIl.cOm', NULL, NULL, '2023-04-07 16:40:53', '2023-04-07 16:40:53'),
(2271, NULL, NULL, 'nICoLE@LouER.co.uK', NULL, NULL, '2023-04-07 16:41:05', '2023-04-07 16:41:05'),
(2272, NULL, NULL, 'ESCsMiTH@Aol.com', NULL, NULL, '2023-04-07 16:41:14', '2023-04-07 16:41:14'),
(2273, 'EcZPLnox', NULL, 'ABdo.aGa06@gMaIL.coM', NULL, NULL, '2023-04-07 17:33:05', '2023-04-07 17:33:05'),
(2274, '8ZmQXE8C', NULL, 'j-dEnAulT@HOTMaIL.COM', NULL, NULL, '2023-04-07 17:34:01', '2023-04-07 17:34:01'),
(2275, '8IVky1pd', NULL, 'JEnNIFERspAnGLER@nITrozone.cOm', NULL, NULL, '2023-04-07 17:34:06', '2023-04-07 17:34:06'),
(2276, 'DTwR141Z', NULL, 'MbaZz69@gmail.com', NULL, NULL, '2023-04-07 17:35:12', '2023-04-07 17:35:12'),
(2277, 'yGYsoWwA', NULL, 'INfO@SEWERProS.cA', NULL, 'KN5io1ii', '2023-04-07 18:26:00', '2023-04-07 18:26:00'),
(2278, 'OYUa1eNg', NULL, 'ADMiN@urbanlInk.cA', NULL, 'qJU7C67u', '2023-04-07 18:26:44', '2023-04-07 18:26:44'),
(2279, 'So4JtVk0', NULL, 'reYNalDO.sTocCo@gmAIL.COm', NULL, 'o64DBRyV', '2023-04-07 18:28:53', '2023-04-07 18:28:53'),
(2280, 'no2iVwtS', NULL, 'kGRaNBOm@YahoO.cOm', NULL, '2Gt2ydS6', '2023-04-07 18:35:43', '2023-04-07 18:35:43'),
(2281, 'SDlYgUKd', NULL, 'Rs211705@GmaiL.COM', NULL, '0EOZZG1r', '2023-04-07 18:35:44', '2023-04-07 18:35:44'),
(2282, 'W3hjA3xO', NULL, 'yunISeL1978@GMAIl.cOM', NULL, 'M7o3WrNc', '2023-04-07 18:35:55', '2023-04-07 18:35:55'),
(2283, 'wpz5akdH', NULL, 'danIeLjSUMMeRs13@gMAiL.cOm', NULL, 'E3pMEc6O', '2023-04-07 18:36:37', '2023-04-07 18:36:37'),
(2284, 'fekHeKsZ', NULL, 'aNNAMBIsHOp10315@gMAIL.CoM', NULL, 'KUgGDnMw', '2023-04-07 18:36:42', '2023-04-07 18:36:42'),
(2285, 'hGwMSB5V', NULL, 'aLEx.DaVeNPoRt@hellOFrEsH.com', NULL, NULL, '2023-04-07 20:06:31', '2023-04-07 20:06:31'),
(2286, 'pznEO9ee', NULL, 'rFLOYD@GALlANtHeARTS.ORg', NULL, NULL, '2023-04-07 20:06:42', '2023-04-07 20:06:42'),
(2287, 'oiR5Fyo5', NULL, 'KGRaNboM@yAHOO.COM', NULL, NULL, '2023-04-07 20:07:19', '2023-04-07 20:07:19'),
(2288, 'yOXjeZmV', NULL, 'chuCKTUCk@gmaiL.COm', NULL, NULL, '2023-04-07 20:07:25', '2023-04-07 20:07:25'),
(2289, 'BOZgzY1P', NULL, 'FEts@gMx.cH', NULL, '4jq7UQYt', '2023-04-07 20:55:20', '2023-04-07 20:55:20'),
(2290, 'ncso8lzx', NULL, 'niccOpuNzALan@Gmail.com', NULL, 'SY0MeN88', '2023-04-07 21:46:07', '2023-04-07 21:46:07'),
(2291, 'gTBxJwSh', NULL, 'AcCOUNtING@HEILPlUmbING.CoM', NULL, 'tMKBJTSs', '2023-04-07 21:47:08', '2023-04-07 21:47:08'),
(2292, 'e60Mu2hn', NULL, 'JoEJOES4YOU@GmaIL.coM', NULL, 'DbsXlu1P', '2023-04-07 21:47:37', '2023-04-07 21:47:37'),
(2293, '5i0KO5l5', NULL, 'zyF15098795292@163.CoM', NULL, 'ctjXYl44', '2023-04-07 21:47:43', '2023-04-07 21:47:43'),
(2294, 'A5nOsO1B', NULL, 'YMW426@GmaIL.Com', NULL, 'sAHgmSRs', '2023-04-07 21:47:48', '2023-04-07 21:47:48'),
(2295, 'fJt65MSS', NULL, 'andERsOnsIlvaCuNha@gmAIL.COM', NULL, '0LjxmoUY', '2023-04-07 21:48:04', '2023-04-07 21:48:04'),
(2296, 'plOhlVfM', NULL, 'SiHO73@GMx.cH', NULL, 'k2bxfq8p', '2023-04-07 21:50:30', '2023-04-07 21:50:30'),
(2297, 'pHFLkj4C', NULL, 'BiAGgI.disLa@BLUeWin.CH', NULL, 'r1Uz2UdE', '2023-04-07 23:41:47', '2023-04-07 23:41:47'),
(2298, 'ud6L6Mck', NULL, 'bIAgGI.dISlA@BlUewIn.Ch', NULL, '7OPKvYmB', '2023-04-07 23:41:50', '2023-04-07 23:41:50'),
(2299, 'hjGVuxxL', NULL, 'YasmIN_Dsn@hOtMaIL.cOM', NULL, 'DJHcjTQZ', '2023-04-08 00:00:07', '2023-04-08 00:00:07'),
(2300, 'wTwuaHbk', NULL, 'BLaKehoKaMP@hoTmaIl.com', NULL, 'zdbVFPmp', '2023-04-08 00:02:03', '2023-04-08 00:02:03'),
(2301, 'zldpirJR', NULL, 'JeNaIJoHnsON30@gmAiL.Com', NULL, 'tWUdoiOf', '2023-04-08 00:02:03', '2023-04-08 00:02:03'),
(2302, 'JU8PAB8x', NULL, 'tezcuLBReaTH@iclOud.com', NULL, NULL, '2023-04-08 00:58:00', '2023-04-08 00:58:00'),
(2303, 'IS5jelqt', NULL, 'TEZCuLbrEatH@iCLoud.cOm', NULL, NULL, '2023-04-08 00:58:22', '2023-04-08 00:58:22'),
(2304, '5MwleuUV', NULL, 'ELI.ramoS.GIgem@GMAil.CoM', NULL, NULL, '2023-04-08 00:59:48', '2023-04-08 00:59:48'),
(2305, 'RuGV2xPr', NULL, 'EdWArdmaRIn45@hOtMaiL.coM', NULL, NULL, '2023-04-08 01:00:34', '2023-04-08 01:00:34'),
(2306, '5xme5MEr', NULL, 'lIfegUARD_leAD@HOTmaIl.CoM', NULL, NULL, '2023-04-08 01:00:37', '2023-04-08 01:00:37'),
(2307, '9g4SmTKX', NULL, 'SjuVIN@nuMEriCabLE.fR', NULL, 'GbqEhk4v', '2023-04-08 05:51:00', '2023-04-08 05:51:00'),
(2308, 'VMPuEdba', NULL, 'S.ronCIn@sm3.fR', NULL, NULL, '2023-04-08 08:24:12', '2023-04-08 08:24:12'),
(2309, 'BuYSg95I', NULL, 'tTRaBETSimba@GmaIL.cOM', NULL, 'oksQ09oo', '2023-04-08 08:58:04', '2023-04-08 08:58:04'),
(2310, 'gQJGKNc0', NULL, 'FaTeNBAZzi22@YAhoO.Com', NULL, 'Idx9EQHu', '2023-04-08 09:00:00', '2023-04-08 09:00:00'),
(2311, 'taRvzh6H', NULL, 'QUIers.OCcasION@ORaNGe.fR', NULL, 'UClWlFfC', '2023-04-08 09:01:02', '2023-04-08 09:01:02'),
(2312, 'nmRAsVZ1', NULL, 'JACKAnDLeLapErKins@GMAil.coM', NULL, NULL, '2023-04-08 14:50:03', '2023-04-08 14:50:03'),
(2313, 'CuAlLnJq', NULL, 'LoNGStaNdINgTradiTion@YaHoO.coM', NULL, NULL, '2023-04-08 14:53:34', '2023-04-08 14:53:34'),
(2314, 'yIEtjOiF', NULL, 'olIVERo216@HOTmaIL.CoM', NULL, NULL, '2023-04-08 16:41:43', '2023-04-08 16:41:43'),
(2315, 'ro1XrSJL', NULL, 'GrINGoGAMeS555@gmAIl.cOm', NULL, NULL, '2023-04-08 16:42:18', '2023-04-08 16:42:18'),
(2316, 'e54GyF6h', NULL, 'zroden@yAHoo.COM', NULL, NULL, '2023-04-08 16:42:33', '2023-04-08 16:42:33'),
(2317, 'CsWChQQs', NULL, 'dEbBieLInzey64@gMAIL.com', NULL, NULL, '2023-04-08 16:43:19', '2023-04-08 16:43:19'),
(2318, 'oRdCtC3g', NULL, 'nInoSLAVsREtEnOvIc@GMaiL.cOM', NULL, NULL, '2023-04-08 21:02:12', '2023-04-08 21:02:12'),
(2319, 'hYIcGvqI', NULL, 'fREEsEINc@bEllSOUth.NET', NULL, 's4MUDeyC', '2023-04-08 21:43:04', '2023-04-08 21:43:04'),
(2320, 'Ci6eKVJr', NULL, 'sOnGyuchEn1997@gmaIL.cOM', NULL, 'N4F0wUsP', '2023-04-08 21:43:05', '2023-04-08 21:43:05'),
(2321, 'fKOEv8hk', NULL, 'eYaL@H-caspi.CO.Il', NULL, 'UOaWfSsX', '2023-04-08 21:43:23', '2023-04-08 21:43:23'),
(2322, 'JfuFViXn', NULL, 'wenDYYYsHow@gMaIl.coM', NULL, 'tCUWFN6s', '2023-04-08 21:43:46', '2023-04-08 21:43:46'),
(2323, 'AhAn4YP6', NULL, 'cArol.GARNettELBerT@GMaIL.cOm', NULL, 'WTMbnExz', '2023-04-08 21:45:22', '2023-04-08 21:45:22'),
(2324, NULL, NULL, 'mBAzZ69@GMAiL.COM', NULL, NULL, '2023-04-09 11:15:57', '2023-04-09 11:15:57'),
(2325, NULL, NULL, 'wENDyTHeGuy@GMaiL.CoM', NULL, NULL, '2023-04-09 11:16:20', '2023-04-09 11:16:20'),
(2326, 'PBFYJaY4', NULL, 'GreY.caO@HOtMaIl.COm', NULL, 'kL2qik03', '2023-04-09 11:52:04', '2023-04-09 11:52:04'),
(2327, 'Ou2QiNah', NULL, 'INFo@fOrThEcofFeeTABLe.coM', NULL, NULL, '2023-04-09 12:47:22', '2023-04-09 12:47:22'),
(2328, 'M5d11K3a', NULL, 'VXGU_generic_f8d23966_kkumhouse.com@data-backup-store.com', NULL, NULL, '2023-04-09 15:51:06', '2023-04-09 15:51:06'),
(2329, 'y9bb3qY6', NULL, 'biQ9_generic_e142ea1f_kkumhouse.com@data-backup-store.com', NULL, 'CTurxZP7', '2023-04-09 15:51:11', '2023-04-09 15:51:11'),
(2330, NULL, NULL, 'Omx3_generic_b18a5b28_kkumhouse.com@data-backup-store.com', NULL, NULL, '2023-04-09 15:51:15', '2023-04-09 15:51:15'),
(2331, 'ixUVDadA', NULL, 'miNGOJusTINIANocLAros@Gmail.Com', NULL, '3Be8ycdi', '2023-04-09 17:10:37', '2023-04-09 17:10:37'),
(2332, 'jks4fV5M', NULL, 'cRveTRANo@GmaIl.CoM', NULL, NULL, '2023-04-09 17:42:01', '2023-04-09 17:42:01'),
(2333, 'GObQFGaR', NULL, 'FRaNcIScoFerReRnavArro1@GMaiL.coM', NULL, '9ZU0ALKm', '2023-04-09 18:33:11', '2023-04-09 18:33:11'),
(2334, '2KwtLxIr', NULL, 'ERIKaaLvarezNYc@gmAiL.Com', NULL, 'cVZzdW4r', '2023-04-09 18:33:34', '2023-04-09 18:33:34'),
(2335, 'iykhmei8', NULL, 'DJkAIoLIMa4@GmAIl.cOM', NULL, '6ugqeedx', '2023-04-09 18:35:31', '2023-04-09 18:35:31'),
(2336, '3ZwBvuvF', NULL, 'RiPCiTY32@yAhoo.com', NULL, 'YdbV7rS1', '2023-04-09 18:35:45', '2023-04-09 18:35:45'),
(2337, 'YnNVZkgU', NULL, 'jaNtZJuDitH@yaHOO.cOM', NULL, '0PneOBIS', '2023-04-09 18:35:49', '2023-04-09 18:35:49'),
(2338, 'NXhjNODD', NULL, 'ancajeN@GmAiL.COm', NULL, NULL, '2023-04-09 21:40:53', '2023-04-09 21:40:53'),
(2339, 'SFasOi4S', NULL, 'STEPhEnsqUIREs1969@GmaiL.cOM', NULL, 'J0xMUdih', '2023-04-09 22:00:13', '2023-04-09 22:00:13'),
(2340, 'rJOBv8xG', NULL, 'DaviDKK4@hAWaII.eDu', NULL, 'aS4lMfSb', '2023-04-09 22:01:40', '2023-04-09 22:01:40'),
(2341, 'mW4yRWnJ', NULL, 'NDElONG@PeRryScHoOls.ORG', NULL, 'F6VnNTS4', '2023-04-09 22:50:39', '2023-04-09 22:50:39'),
(2342, NULL, NULL, 'sUzi123G@GMaIL.COm', NULL, NULL, '2023-04-09 23:21:15', '2023-04-09 23:21:15'),
(2343, NULL, NULL, 'SerEnEgIBBs1@GMaIl.cOM', NULL, NULL, '2023-04-09 23:22:53', '2023-04-09 23:22:53'),
(2344, 'wzYh5mDL', NULL, 'jANETMaUK1@oUtlook.COM', NULL, '3BJ8KpGE', '2023-04-10 02:46:12', '2023-04-10 02:46:12'),
(2345, 'I93s0QDv', NULL, 'toDdNGUyEnTt@GMAiL.com', NULL, 'JItEOnYe', '2023-04-10 03:37:29', '2023-04-10 03:37:29'),
(2346, 'SsxQEcc9', NULL, 'deBBIe@gLObaLAVgRouP.cOm', NULL, NULL, '2023-04-10 07:28:27', '2023-04-10 07:28:27'),
(2347, 'EFgp2XKl', NULL, 'jXiAo1207@Yahoo.COM', NULL, NULL, '2023-04-10 07:28:35', '2023-04-10 07:28:35'),
(2348, 'uwV8t6mo', NULL, 'rilEy.CasTro14@Gmail.com', NULL, 'yVG1ID3t', '2023-04-10 14:20:09', '2023-04-10 14:20:09'),
(2349, 'F7w3UOBv', NULL, 'AADRIAN1@priDe.hofStra.edU', NULL, 'kc1f2DRn', '2023-04-10 14:20:28', '2023-04-10 14:20:28'),
(2350, 'yerGlLL1', NULL, 'KyLeOLSEn314@GMaIl.cOM', NULL, 'L7PGUwhQ', '2023-04-10 14:23:50', '2023-04-10 14:23:50'),
(2351, 'PYkR5Qw7', NULL, 'charI.WOodRuM@gMAil.coM', NULL, NULL, '2023-04-10 19:13:59', '2023-04-10 19:13:59'),
(2352, 'yWz59ayV', NULL, 'JameS.LoAR@GmAIL.COM', NULL, NULL, '2023-04-10 19:48:46', '2023-04-10 19:48:46'),
(2353, 'CmBL3wO7', NULL, 'DsiLCOx@COmcaST.net', NULL, NULL, '2023-04-10 19:51:14', '2023-04-10 19:51:14'),
(2354, 'CLdbx48Y', NULL, 'nAmDev.nayak@mAyosYs.cOM', NULL, NULL, '2023-04-10 19:51:20', '2023-04-10 19:51:20'),
(2355, 'J37oWGuS', NULL, 'dIdieRbOUCher94@GMail.COm', NULL, NULL, '2023-04-10 19:51:22', '2023-04-10 19:51:22'),
(2356, 'ddKPpYUt', NULL, 'RLOuWESS@gmail.Com', NULL, NULL, '2023-04-10 19:51:41', '2023-04-10 19:51:41'),
(2357, 'BEQwH6if', NULL, 'RTERRy8182@gMaIL.CoM', NULL, 'vW6iEOL7', '2023-04-10 20:42:34', '2023-04-10 20:42:34'),
(2358, 'W5rUnIbA', NULL, 'meLanIEaUdY@gmAIl.cOM', NULL, NULL, '2023-04-10 23:55:54', '2023-04-10 23:55:54'),
(2359, 'YmpI7Eiv', NULL, 'lBell@DTpthERmoElEcTricS.com', NULL, NULL, '2023-04-10 23:56:19', '2023-04-10 23:56:19'),
(2360, 'YJZzAZ55', NULL, 'MaRIAhMAThews6@GMaiL.cOM', NULL, NULL, '2023-04-10 23:58:04', '2023-04-10 23:58:04'),
(2361, 'isr4Fwc5', NULL, 'CarLOs.PACheco12@HotMail.cOM', NULL, 'ML3vkoXb', '2023-04-11 00:46:41', '2023-04-11 00:46:41'),
(2362, 'd1jL9Kca', NULL, 'EMily@LCLglAW.coM', NULL, 'yBxFOGTq', '2023-04-11 00:47:25', '2023-04-11 00:47:25'),
(2363, 'Mike Finch', '89886455312', 'no-replyvedo@gmail.com', NULL, NULL, '2023-04-11 04:25:33', '2023-04-11 04:25:33'),
(2364, 'SVUePoKa', NULL, 'SSayre21@GMail.CoM', NULL, 'SU7tbFt8', '2023-04-11 05:34:17', '2023-04-11 05:34:17'),
(2365, 'cBXhz3s8', NULL, 'quiers.ocCAsIOn@ORangE.fR', NULL, 'SxTOcASW', '2023-04-11 07:18:41', '2023-04-11 07:18:41'),
(2366, 'ZsA2SAIL', NULL, 'quIeRS.occasioN@OrAnGe.FR', NULL, 'fWYAIXAq', '2023-04-11 07:18:57', '2023-04-11 07:18:57'),
(2367, 'VANxe98e', NULL, 'skFla4@GmAil.COm', NULL, 'SLG4qRos', '2023-04-11 08:53:10', '2023-04-11 08:53:10'),
(2368, 'JoekwGau', NULL, 'caNTstOP215@gmail.COM', NULL, NULL, '2023-04-11 10:52:38', '2023-04-11 10:52:38'),
(2369, 'YrOnlDfD', NULL, 'veRbUHOv1@BeZEQint.NeT', NULL, NULL, '2023-04-11 10:56:06', '2023-04-11 10:56:06'),
(2370, 'of62ukxw', NULL, 'guti51@BEzEqINT.NET', NULL, '17AuZWEi', '2023-04-11 13:08:22', '2023-04-11 13:08:22'),
(2371, 'eAhrjiNQ', NULL, 'jROBeRtS@h19caPItaL.cOm', NULL, NULL, '2023-04-11 17:35:17', '2023-04-11 17:35:17'),
(2372, 'fxwonmSk', NULL, 'jroBerTs@H19CApital.com', NULL, '15DpKGn1', '2023-04-11 17:35:34', '2023-04-11 17:35:34'),
(2373, 'rBxo0KFX', NULL, 'mRoss@H19CAPital.CoM', NULL, NULL, '2023-04-11 17:35:38', '2023-04-11 17:35:38'),
(2374, 'OciPS9ss', NULL, 'UarNOLD@H19CApItal.CoM', NULL, 'dSJL3EyO', '2023-04-11 17:35:48', '2023-04-11 17:35:48'),
(2375, '6k47fE02', NULL, 'MRosS@h19caPITaL.Com', NULL, 'SJPMt0SP', '2023-04-11 17:35:51', '2023-04-11 17:35:51'),
(2376, 'kv1cN4R6', NULL, 'mlUcKETt@rePuBLICbank.cOM', NULL, NULL, '2023-04-11 17:35:51', '2023-04-11 17:35:51'),
(2377, 'oCExP2cl', NULL, 'MLucKETT@RepUBLiCBAnk.CoM', NULL, NULL, '2023-04-11 17:35:54', '2023-04-11 17:35:54'),
(2378, 'l9CTvVdj', NULL, 'UarNOLd@H19CAPITaL.cOm', NULL, NULL, '2023-04-11 17:36:12', '2023-04-11 17:36:12'),
(2379, 'RNhJ8Xsm', NULL, 'LpeET@wMiSD.ORg', NULL, NULL, '2023-04-11 17:36:20', '2023-04-11 17:36:20'),
(2380, '78AQ3BED', NULL, 'mluckeTT@RepUBLICbANk.COm', NULL, NULL, '2023-04-11 17:37:10', '2023-04-11 17:37:10'),
(2381, 'obWHVL6x', NULL, 'ChRisTinE@GrandvAlleydEsigN.COm', NULL, NULL, '2023-04-11 17:37:22', '2023-04-11 17:37:22'),
(2382, '3NwEkPvd', NULL, 'Dana@JBFStAiNLeSS.COM', NULL, NULL, '2023-04-11 17:37:36', '2023-04-11 17:37:36'),
(2383, 'MiECzZle', NULL, 'KOREAn_DElIght@yAHOo.Com', NULL, 'omREqCUy', '2023-04-11 17:38:58', '2023-04-11 17:38:58'),
(2384, 'NeqkyoyK', NULL, 'brianrigBy@HoTmAiL.COm', NULL, NULL, '2023-04-11 17:39:18', '2023-04-11 17:39:18'),
(2385, '0w79R18R', NULL, 'AJ.ReYNOldS@YAHoo.cOm.Au', NULL, NULL, '2023-04-11 17:39:47', '2023-04-11 17:39:47'),
(2386, NULL, NULL, 'ClORea@SaRa-tX.Org', NULL, NULL, '2023-04-11 18:00:08', '2023-04-11 18:00:08'),
(2387, NULL, NULL, 'CHArI.woodRUM@gMAIl.com', NULL, NULL, '2023-04-11 18:04:04', '2023-04-11 18:04:04'),
(2388, 'gT6nl0oY', NULL, 'BILl.lOpEr@coMcaSt.NEt', NULL, 'VSRMmMrc', '2023-04-11 19:27:48', '2023-04-11 19:27:48'),
(2389, 'FYRFfPhk', NULL, 'ShAWcP@gmaIl.CoM', NULL, 'd8PFIwMj', '2023-04-11 19:27:50', '2023-04-11 19:27:50'),
(2390, 'ZKFMVTo1', NULL, 'esEnsE84@Aol.COm', NULL, '9vr9NC78', '2023-04-11 19:28:30', '2023-04-11 19:28:30'),
(2391, 'o2Qzpq9d', NULL, 'caLCoTEjs@gMail.Com', NULL, 'NN5WF5vP', '2023-04-11 19:28:40', '2023-04-11 19:28:40'),
(2392, 'O9U2sV4A', NULL, 'eArnHArT1@HOtmAil.cOM', NULL, 'QmxRZUyF', '2023-04-11 19:28:52', '2023-04-11 19:28:52'),
(2393, 'mZstsriI', NULL, 'BelengW88@YaHOO.COm', NULL, 'Zk8oq8aV', '2023-04-11 19:28:54', '2023-04-11 19:28:54'),
(2394, 's8d9AQFS', NULL, 'dJONeS@YosEMiTECAPITaL.coM', NULL, 'BfrGr80N', '2023-04-11 19:28:58', '2023-04-11 19:28:58'),
(2395, 'QMQyrQWv', NULL, 'PheckleR@yOseMITEcaPItAL.com', NULL, 'PaCQ0UZ6', '2023-04-11 19:28:58', '2023-04-11 19:28:58'),
(2396, 'XftVvbWU', NULL, 'Ed.gArLAnD@siLVercareLiviNg.Com', NULL, 'dgsuNtZB', '2023-04-11 19:31:21', '2023-04-11 19:31:21'),
(2397, 'w79NUxYZ', NULL, 'JeSusr29C@gMAIL.COM', NULL, 'IOx49Rg1', '2023-04-11 19:57:41', '2023-04-11 19:57:41'),
(2398, 'GzlXC7SD', NULL, 'Grey.caO@hOtmail.cOM', NULL, 'AyVFHCqn', '2023-04-11 19:59:42', '2023-04-11 19:59:42'),
(2399, 'aCTa3NGS', NULL, 'dralVarEZb@GMAIL.cOm', NULL, '9ApALkGa', '2023-04-11 19:59:52', '2023-04-11 19:59:52'),
(2400, 'uAcc612C', NULL, 'MHoUCk11@GMaIL.cOM', NULL, 'V47yusbh', '2023-04-11 20:15:17', '2023-04-11 20:15:17'),
(2401, '6GX7TSAK', NULL, 'cfIAOrlaNdo@CENTRAlFLIMMiGRAtiON.cOM', NULL, 'O1bVUivR', '2023-04-11 20:15:42', '2023-04-11 20:15:42'),
(2402, 'tNUBCFCh', NULL, 'MADisoNRILEybARNes@GMAiL.com', NULL, 'mKnl6n2x', '2023-04-11 20:15:56', '2023-04-11 20:15:56'),
(2403, 'epFeF6uI', NULL, 'JoemoNTEl@MoNtelLaW.cOM', NULL, '0RDeL14K', '2023-04-11 20:15:58', '2023-04-11 20:15:58'),
(2404, 'Tx8cKGcQ', NULL, 'MrOsS@genKIcAPital.coM', NULL, '0ZQMFzZI', '2023-04-11 20:16:15', '2023-04-11 20:16:15'),
(2405, 'yR3ljZVn', NULL, 'danIOFRa@WallA.CO.IL', NULL, '5IEPcQJL', '2023-04-11 20:17:17', '2023-04-11 20:17:17'),
(2406, NULL, NULL, 'TRaIn.hARD@KAPOwsPOrtS.cA', NULL, NULL, '2023-04-11 20:42:02', '2023-04-11 20:42:02'),
(2407, NULL, NULL, 'dEVDUKe@GmAIl.COm', NULL, NULL, '2023-04-11 20:52:02', '2023-04-11 20:52:02'),
(2408, NULL, NULL, 'kArYm@hOlInails.com', NULL, NULL, '2023-04-11 20:53:35', '2023-04-11 20:53:35'),
(2409, NULL, NULL, 'jRBOlanOs1975@gMAil.com', NULL, NULL, '2023-04-11 20:54:32', '2023-04-11 20:54:32'),
(2410, 'qIavx4Fb', NULL, 'waYwARDendeAvoR@GmaIl.COM', NULL, NULL, '2023-04-12 04:29:13', '2023-04-12 04:29:13'),
(2411, 'EkwwWLLk', NULL, 'NYeomaNS48@cOmCAST.nEt', NULL, NULL, '2023-04-12 06:08:11', '2023-04-12 06:08:11'),
(2412, 'aAx6DIVG', NULL, 'cOURtNEy_WilTINgEr@yAHOO.COM', NULL, 'Spir4WzX', '2023-04-12 09:41:08', '2023-04-12 09:41:08'),
(2413, 'tbUKEVTm', NULL, 'eDdYSallEN@gmail.Com', NULL, '3JycbAOQ', '2023-04-12 12:47:57', '2023-04-12 12:47:57'),
(2414, 'fcN3fBfr', NULL, 'rESToRATionbARmBS@Gmail.COm', NULL, 'WWOJ5mXQ', '2023-04-12 12:48:07', '2023-04-12 12:48:07'),
(2415, 'ytVdeG1Q', NULL, 'ANnALauPEr@GMx.CH', NULL, '8Q4OTQZD', '2023-04-12 12:52:17', '2023-04-12 12:52:17'),
(2416, 'PQKOFatI', NULL, 'NmAbQ10@gmaiL.COm', NULL, 'lSGRYcMO', '2023-04-12 17:29:26', '2023-04-12 17:29:26'),
(2417, 'ycNgguiK', NULL, 'mariALuISa.uDascO@maine.Edu', NULL, NULL, '2023-04-12 22:44:00', '2023-04-12 22:44:00'),
(2418, 'WkNRw3IU', NULL, 'roNOHara@HOTmAil.Com', NULL, '477oHtnW', '2023-04-12 22:45:19', '2023-04-12 22:45:19'),
(2419, '6ASyDgp9', NULL, 'TsOMAde@GMAiL.CoM', NULL, NULL, '2023-04-12 22:45:32', '2023-04-12 22:45:32'),
(2420, 'Ik7AThV6', NULL, 'ChynyereM@YaHoO.cOM', NULL, '1bLj9LBT', '2023-04-12 22:46:59', '2023-04-12 22:46:59'),
(2421, 'L5xEJtIw', NULL, 'tHoMaSonciNdi18@gMaIL.coM', NULL, 'JorUoHvm', '2023-04-13 02:02:27', '2023-04-13 02:02:27'),
(2422, 'h3krhzhE', NULL, 'Cece19999@aOl.COM', NULL, NULL, '2023-04-13 04:21:39', '2023-04-13 04:21:39'),
(2423, '20ZSeUpn', NULL, 'EmilyrmccREADy@gMaIl.COm', NULL, NULL, '2023-04-13 10:03:29', '2023-04-13 10:03:29'),
(2424, 'ZJIyquC6', NULL, 'LK5056@OuTlOoK.COM', NULL, NULL, '2023-04-13 10:05:20', '2023-04-13 10:05:20'),
(2425, 'o7vDVl8T', NULL, 'kAITHLynnSarMIeNtO@GmAil.com', NULL, NULL, '2023-04-13 16:08:36', '2023-04-13 16:08:36'),
(2426, 'My6cgs3X', NULL, 'CLaRenCeOFthEMOUNTAInS@YAhOo.CoM', NULL, NULL, '2023-04-13 16:09:10', '2023-04-13 16:09:10'),
(2427, 'gCeqOWRs', NULL, 'mBlOMBArdi@comCASt.NeT', NULL, NULL, '2023-04-13 16:20:41', '2023-04-13 16:20:41'),
(2428, 'bJTnKNCY', NULL, 'CoW2JUice@HoTmAiL.cOM', NULL, NULL, '2023-04-13 17:22:51', '2023-04-13 17:22:51'),
(2429, 'CE1gRfSA', NULL, 'sherriSmileLIncolN@gMaiL.COm', NULL, NULL, '2023-04-13 17:24:32', '2023-04-13 17:24:32'),
(2430, 'XgxqxdYO', NULL, 'K9Kk_generic_f8d23966_kkumhouse.com@data-backup-store.com', NULL, NULL, '2023-04-13 18:05:21', '2023-04-13 18:05:21'),
(2431, 'nCc0OyKw', NULL, 'iWUn_generic_e142ea1f_kkumhouse.com@data-backup-store.com', NULL, 'IepKbY9x', '2023-04-13 18:05:25', '2023-04-13 18:05:25'),
(2432, NULL, NULL, 'Tya9_generic_b18a5b28_kkumhouse.com@data-backup-store.com', NULL, NULL, '2023-04-13 18:05:30', '2023-04-13 18:05:30'),
(2433, 'TkYwJkP1', NULL, 'AdYanGELa@yaHOO.com', NULL, NULL, '2023-04-13 18:38:27', '2023-04-13 18:38:27'),
(2434, 'GGMGhLOG', NULL, 'ReDFIeLd@paULBUnyAN.neT', NULL, NULL, '2023-04-13 18:41:11', '2023-04-13 18:41:11'),
(2435, 'rvozJtiT', NULL, 'HeLEnkUTza@sbcGlobAl.NET', NULL, NULL, '2023-04-14 00:49:14', '2023-04-14 00:49:14'),
(2436, 'd01tpNDG', NULL, 'UbermICROX@gMail.coM', NULL, NULL, '2023-04-14 01:13:30', '2023-04-14 01:13:30'),
(2437, '8YamIqhX', NULL, 'Nr076592@gmAIl.cOm', NULL, 'Sdf9h5t9', '2023-04-14 01:48:15', '2023-04-14 01:48:15'),
(2438, 'GZ6lAx1g', NULL, 'TombUCKMAsTEr@HOTmaiL.COm', NULL, NULL, '2023-04-14 02:12:50', '2023-04-14 02:12:50'),
(2439, 'q8geZ6uG', NULL, 'KArinannie@hoTMAIL.cOm', NULL, NULL, '2023-04-14 02:46:49', '2023-04-14 02:46:49'),
(2440, 'GYeOw1c3', NULL, 'kaRiNanNiE@HotMAil.COM', NULL, NULL, '2023-04-14 02:47:02', '2023-04-14 02:47:02'),
(2441, 'QyXHMJig', NULL, 'lXsEyE@aOL.COm', NULL, NULL, '2023-04-14 02:50:09', '2023-04-14 02:50:09'),
(2442, 'Xv8PvC3o', NULL, 'KaRINaNNIE@hOTMAiL.cOM', NULL, NULL, '2023-04-14 02:50:46', '2023-04-14 02:50:46'),
(2443, 'rfBLOauN', NULL, 'mAjoRSPERRY@YaHOO.com', NULL, NULL, '2023-04-14 02:51:05', '2023-04-14 02:51:05'),
(2444, 'Usldr7tp', NULL, 'SeRnYak10@GMAIl.com', NULL, NULL, '2023-04-14 03:31:03', '2023-04-14 03:31:03'),
(2445, 'nDuwkMFP', NULL, 'jesspAcMAn@YahoO.coM', NULL, 'MjRt7nfF', '2023-04-14 03:54:45', '2023-04-14 03:54:45'),
(2446, 'uvTQJKVm', NULL, 'isRshE@WaLlA.co.Il', NULL, NULL, '2023-04-14 08:09:17', '2023-04-14 08:09:17'),
(2447, 'JSpzIY3b', NULL, 'pHEaton@zoominteRnEt.net', NULL, '9fzI3Z2M', '2023-04-14 08:20:37', '2023-04-14 08:20:37'),
(2448, 'QaLOHfaK', NULL, 'SEAshElls36@hOtMAiL.COM', NULL, NULL, '2023-04-14 12:47:11', '2023-04-14 12:47:11'),
(2449, 'PW57ldXu', NULL, 'GLenNA@HrRaNCH.cA', NULL, NULL, '2023-04-14 15:10:44', '2023-04-14 15:10:44'),
(2450, 'zDnEm0rt', NULL, 'KtEZcuCAnO@GMAIl.COm', NULL, 'AIy7P0b3', '2023-04-14 15:55:08', '2023-04-14 15:55:08'),
(2451, 'ijDhhQMe', NULL, 'NaU1996@aOl.COM', NULL, NULL, '2023-04-14 15:57:08', '2023-04-14 15:57:08'),
(2452, 'MCAQR0rn', NULL, 'edDiE@EddIeSBIkES.Com', NULL, NULL, '2023-04-14 15:58:03', '2023-04-14 15:58:03'),
(2453, 'Nr5t1tCm', NULL, 'PRUNEda43@GMail.Com', NULL, NULL, '2023-04-14 16:44:41', '2023-04-14 16:44:41'),
(2454, '8G6GrvrR', NULL, 'aCf2705@gMaiL.cOM', NULL, NULL, '2023-04-14 17:05:37', '2023-04-14 17:05:37'),
(2455, 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/JfD3IS5z JUYEGRT119718SVWVE', '87449448945', 'holalee2215@gmail.com', NULL, NULL, '2023-04-14 17:50:25', '2023-04-14 17:50:25'),
(2456, 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/j8TYO5Gj NFDAW119718MTGJNF', '81664999493', 'holalee2215@gmail.com', NULL, NULL, '2023-04-14 20:05:29', '2023-04-14 20:05:29'),
(2457, 'EtHqlZNd', NULL, 'BelAluNa79@GMAil.com', NULL, NULL, '2023-04-14 20:44:32', '2023-04-14 20:44:32'),
(2458, 'tyDevMWA', NULL, 'aleezeHRiZVi@Gmail.Com', NULL, NULL, '2023-04-14 20:45:02', '2023-04-14 20:45:02'),
(2459, NULL, NULL, 'COokiE.ruffINO@att.neT', NULL, NULL, '2023-04-15 01:49:44', '2023-04-15 01:49:44'),
(2460, NULL, NULL, 'DEseRtPad@GMAil.CoM', NULL, NULL, '2023-04-15 01:49:55', '2023-04-15 01:49:55'),
(2461, NULL, NULL, 'jAnie@lITTlEExplOrersdenTIsTRy.coM', NULL, NULL, '2023-04-15 01:50:07', '2023-04-15 01:50:07'),
(2462, NULL, NULL, 'abrAhAmaguilar9980@gMAil.coM', NULL, NULL, '2023-04-15 01:50:16', '2023-04-15 01:50:16'),
(2463, NULL, NULL, 'fIshermAnrObErtS@AoL.COM', NULL, NULL, '2023-04-15 01:50:21', '2023-04-15 01:50:21'),
(2464, NULL, NULL, 'LgregorY@MCCALlsSf.COM', NULL, NULL, '2023-04-15 01:50:27', '2023-04-15 01:50:27'),
(2465, NULL, NULL, 'chRIS.adAms@tROnicAl.coM', NULL, NULL, '2023-04-15 01:51:08', '2023-04-15 01:51:08'),
(2466, NULL, NULL, 'brian@TrUCKeRaNDbROKersAfetysErVIces.COM', NULL, NULL, '2023-04-15 01:51:18', '2023-04-15 01:51:18'),
(2467, NULL, NULL, 'dAna_DAne0674@MsN.coM', NULL, NULL, '2023-04-15 01:51:21', '2023-04-15 01:51:21'),
(2468, 'DEXflT7x', NULL, 'AlEXANDERPRAdo251@GMAIl.COm', NULL, 'c99nkjPw', '2023-04-15 03:06:50', '2023-04-15 03:06:50'),
(2469, 'yWUEXbmV', NULL, 'ZOe_zMg@yAHoo.coM', NULL, 'CURtMMUp', '2023-04-15 08:22:43', '2023-04-15 08:22:43'),
(2470, '9h8G1A82', NULL, 'aLEEzEhRIzvi@gmaIl.cOM', NULL, 't687sPoG', '2023-04-15 08:22:45', '2023-04-15 08:22:45'),
(2471, 'qhpSWQSb', NULL, 'wIMaLRanJItH62@gMAil.COM', NULL, '1xQsV6kd', '2023-04-15 08:24:47', '2023-04-15 08:24:47'),
(2472, NULL, NULL, 'IsTEAm2@TRAFfICTecH.cOm', NULL, NULL, '2023-04-15 10:14:43', '2023-04-15 10:14:43'),
(2473, 'nDuhlELf', NULL, 'UvEJwFFjUN@GMaIl.com', NULL, 'Q33WO9ut', '2023-04-16 00:36:23', '2023-04-16 00:36:23'),
(2474, 'B6DJZNq9', NULL, 'devIn.SAliNAS421@GmaIl.COM', NULL, 'DJnqtOBn', '2023-04-16 00:37:57', '2023-04-16 00:37:57'),
(2475, '10m5Orzq', NULL, 'GiNatAVAREZ00@gMaIl.COM', NULL, NULL, '2023-04-16 00:41:39', '2023-04-16 00:41:39'),
(2476, 'wKCyhZsV', NULL, 'pamelAIsMiTH@YAHOO.cOM', NULL, NULL, '2023-04-16 13:47:29', '2023-04-16 13:47:29'),
(2477, 'otGMyHH4', NULL, 'N4hOrsEs@GMAil.coM', NULL, NULL, '2023-04-16 15:14:30', '2023-04-16 15:14:30'),
(2478, 'ixICxtDk', NULL, 'YDjoUradO@iaI.co.IL', NULL, NULL, '2023-04-16 15:14:35', '2023-04-16 15:14:35'),
(2479, 'DXYonwVH', NULL, 'AMiRavR7@wALLA.CO.IL', NULL, NULL, '2023-04-16 15:14:45', '2023-04-16 15:14:45'),
(2480, 'HlbZeNsk', NULL, 'KUZNTj91@gmAIl.CoM', NULL, NULL, '2023-04-16 15:16:24', '2023-04-16 15:16:24'),
(2481, 'wzaTEFlk', NULL, 'deB@AUdieNcEThEorY.coM', NULL, 'k8kdX5HN', '2023-04-17 00:26:11', '2023-04-17 00:26:11'),
(2482, 'G8RDZQGV', NULL, 'paUL.haNnEy2@gMAIL.COm', NULL, NULL, '2023-04-17 02:10:18', '2023-04-17 02:10:18'),
(2483, '0WXIlbQU', NULL, 'mjweEzY68@GmAIl.cOM', NULL, NULL, '2023-04-17 02:11:41', '2023-04-17 02:11:41'),
(2484, 'zxXCp88f', NULL, 'aNGEla@norThErnPICtUREs.Com.Au', NULL, NULL, '2023-04-17 09:57:50', '2023-04-17 09:57:50'),
(2485, 'AFCnXNvg', NULL, 'thE_ArvinDs@hoTMail.COM', NULL, NULL, '2023-04-17 10:16:24', '2023-04-17 10:16:24'),
(2486, NULL, NULL, 'BILliNG@SecARGousA.cOm', NULL, NULL, '2023-04-17 14:19:15', '2023-04-17 14:19:15'),
(2487, 'Finance Worldwide Limited', '83421874475', 'financeworldwidehk@asia.com', NULL, NULL, '2023-04-17 18:08:49', '2023-04-17 18:08:49'),
(2488, 'ogSUbCDz', NULL, 'DiAnEduNkEr@YaHOO.com', NULL, 'b1R29tBu', '2023-04-17 18:34:25', '2023-04-17 18:34:25'),
(2489, 'Xl0ecX28', NULL, 'pEnNIWINsTOn@yaHoO.com', NULL, 'DMLh1xkJ', '2023-04-17 18:34:28', '2023-04-17 18:34:28'),
(2490, 'CIc0Oepn', NULL, 'SjUVin@nUMERICablE.Fr', NULL, 'nHh7LPJ3', '2023-04-17 18:35:35', '2023-04-17 18:35:35'),
(2491, NULL, NULL, 'mIkeslAWnCarE39466@Hotmail.COM', NULL, NULL, '2023-04-17 20:00:29', '2023-04-17 20:00:29'),
(2492, NULL, NULL, 'legOLoGAn001@GmAIl.COm', NULL, NULL, '2023-04-17 20:01:41', '2023-04-17 20:01:41'),
(2493, NULL, NULL, 'kASloPIS320@gmaIL.coM', NULL, NULL, '2023-04-17 20:02:39', '2023-04-17 20:02:39'),
(2494, 'Ee5gMeHw', NULL, 'NiCHOLAS52196@gmaiL.cOM', NULL, 'OCtp4dLL', '2023-04-17 20:54:03', '2023-04-17 20:54:03'),
(2495, 'NNGWbHcd', NULL, 'VaLeNtin@GLAsSpOint.cOm', NULL, '4FTqtopR', '2023-04-18 05:48:58', '2023-04-18 05:48:58'),
(2496, 'CmwyHMys', NULL, 'SUPPORT@BLiX.CoM', NULL, NULL, '2023-04-18 09:50:14', '2023-04-18 09:50:14'),
(2497, '2rqgIPsM', NULL, 'MiKElaMPEla.eRC@gmaiL.cOm', NULL, NULL, '2023-04-18 09:52:24', '2023-04-18 09:52:24'),
(2498, 'jyzhJy0t', NULL, 'mbAdArA247@gmaIl.COM', NULL, 'NjOrLIyr', '2023-04-18 15:03:35', '2023-04-18 15:03:35'),
(2499, 'E6hrv6gw', NULL, 'cHAdTAUbEr@gmAIl.cOm', NULL, 'e8LcN4LH', '2023-04-18 15:03:36', '2023-04-18 15:03:36'),
(2500, 'MWzSCm4n', NULL, 'eShAnt_2004@yahOo.coM', NULL, 'wccRlh1T', '2023-04-18 15:03:41', '2023-04-18 15:03:41'),
(2501, 'n0LD7gyR', NULL, 'timroberts55@sbCGlOBAl.neT', NULL, 'hOLVy5Rx', '2023-04-18 15:04:20', '2023-04-18 15:04:20'),
(2502, 'hVDSlc5c', NULL, 'DEiSeNHaRdt26@gmaIL.CoM', NULL, 'QeKWH20g', '2023-04-18 15:04:29', '2023-04-18 15:04:29'),
(2503, 'AKAi3ek5', NULL, 'gswALLow@CoMCAsT.neT', NULL, 'owqQM7Ko', '2023-04-18 15:57:39', '2023-04-18 15:57:39'),
(2504, 't59UQL3z', NULL, 'mh@MiCHaeL-heNzE.COM', NULL, 'R41LtFb3', '2023-04-18 16:01:58', '2023-04-18 16:01:58'),
(2505, 'K3NndTaJ', NULL, 'PAShionJEFFErSON1@yahoo.COm', NULL, 'yL8OslXG', '2023-04-18 17:54:14', '2023-04-18 17:54:14'),
(2506, '4YPdaOjO', NULL, 'Rh@bAHlEr.CA', NULL, 'csSwUbnu', '2023-04-18 17:55:56', '2023-04-18 17:55:56'),
(2507, 'zlUDINt0', NULL, 'KaKa.22alI@HOTmaiL.com', NULL, 'mY0oUVvM', '2023-04-18 17:57:52', '2023-04-18 17:57:52'),
(2508, 'ekzlfHZR', NULL, 'dREWbFam@aoL.coM', NULL, 'ndLYZ72E', '2023-04-18 17:57:53', '2023-04-18 17:57:53'),
(2509, '1Wi93UAi', NULL, 'DaVe925@cOX.NET', NULL, 'fRTycnos', '2023-04-18 18:50:33', '2023-04-18 18:50:33'),
(2510, 'EIX4KEFy', NULL, 'KuDAve68@gMAIl.cOM', NULL, 'UuzA4re2', '2023-04-18 18:51:06', '2023-04-18 18:51:06'),
(2511, 'k39wIKxh', NULL, 'MiCHAELJanSA@YAHoO.com', NULL, '7NWnbuhC', '2023-04-18 18:51:21', '2023-04-18 18:51:21'),
(2512, '9lFGtCmE', NULL, 'WAtTShOMeDesIGNsLlC@ouTlOoK.cOM', NULL, NULL, '2023-04-18 20:00:21', '2023-04-18 20:00:21'),
(2513, 'wHGc21W4', NULL, 'TIm.tarVEr@ExcEEdDRiLLiNg.com', NULL, NULL, '2023-04-18 20:01:19', '2023-04-18 20:01:19'),
(2514, 'NCScsaR3', NULL, 'deFraNCeSCo.RVa@Gmail.COM', NULL, 'QBk1be0v', '2023-04-18 20:56:16', '2023-04-18 20:56:16'),
(2515, '30dzSL7H', NULL, 'safEtY@tHenortHtRANS.cOM', NULL, 'bvMRjz9H', '2023-04-18 20:56:43', '2023-04-18 20:56:43'),
(2516, 'V8OdlLlh', NULL, 'y2HOo@hotMaiL.coM', NULL, 'MlPq4yIT', '2023-04-18 20:57:25', '2023-04-18 20:57:25'),
(2517, 'MvdYvxIw', NULL, 'BreTTdacKo@gMAil.cOm', NULL, 'H2a1dg5H', '2023-04-18 20:58:02', '2023-04-18 20:58:02'),
(2518, 'DjD98lyi', NULL, 'tHEINCrEDIbLEHuS@GMaIl.Com', NULL, 'PrUP2r0j', '2023-04-18 22:45:59', '2023-04-18 22:45:59'),
(2519, 'I00KgoRT', NULL, 'kaka.22ALI@hOTMaIl.COm', NULL, 'fPcLnmiM', '2023-04-18 22:46:06', '2023-04-18 22:46:06'),
(2520, 'v5vk7kNb', NULL, 'aarON.freEMan777@hoTMAiL.cOM', NULL, 'bNOdY3fN', '2023-04-18 22:46:35', '2023-04-18 22:46:35'),
(2521, '3hBLb1uz', NULL, 'accOuNTs@ArberThHilL.Com.Au', NULL, 'dFXgUAhg', '2023-04-18 22:47:41', '2023-04-18 22:47:41'),
(2522, 'EZogHAuQ', NULL, 'jpoGOZElSki@XTggLobAL.COm', NULL, 'tmTEg2Ga', '2023-04-18 22:47:43', '2023-04-18 22:47:43'),
(2523, 'JnuIGY3X', NULL, 'hAmodahaSsA2000@GmaiL.COm', NULL, NULL, '2023-04-18 23:00:12', '2023-04-18 23:00:12'),
(2524, '2PnIK40r', NULL, 'cHrISTA.zInGG@sUNrIse.cH', NULL, NULL, '2023-04-18 23:00:48', '2023-04-18 23:00:48'),
(2525, 'sZYPhvx1', NULL, 'JEFfrEYGRIGSbY40@yAhOO.COM', NULL, NULL, '2023-04-18 23:01:01', '2023-04-18 23:01:01'),
(2526, '904shktc', NULL, 'keReN@orMiR.cO.Il', NULL, NULL, '2023-04-18 23:01:26', '2023-04-18 23:01:26'),
(2527, 'IjkEUXrw', NULL, 'jOEkINLEY@GmAil.coM', NULL, NULL, '2023-04-18 23:02:45', '2023-04-18 23:02:45'),
(2528, 'g6IWUofA', NULL, 'mADArde@BEzeqInt.net', NULL, 'fVEMrbn4', '2023-04-19 01:22:26', '2023-04-19 01:22:26'),
(2529, 'nWsP24WS', NULL, 'LaURIerOCkETlAdy@hOtMail.CoM', NULL, 'PGrExuVT', '2023-04-19 01:24:13', '2023-04-19 01:24:13'),
(2530, 'uT37n6z1', NULL, 'maRCmCgrory00@gmail.COM', NULL, NULL, '2023-04-19 05:02:43', '2023-04-19 05:02:43'),
(2531, 'QdAn89kV', NULL, 'rEcePTiOn@thornBuRyCaSTLe.Co.uk', NULL, NULL, '2023-04-19 05:04:24', '2023-04-19 05:04:24'),
(2532, 'EqYOX7WA', NULL, 'wbjOHNsonJr@GmaiL.CoM', NULL, 'eU266mF4', '2023-04-19 07:24:07', '2023-04-19 07:24:07'),
(2533, 'eRAHSegD', NULL, 'cHrISTA.ziNGg@SUNRIsE.Ch', NULL, '4ulT6VSS', '2023-04-19 07:24:16', '2023-04-19 07:24:16'),
(2534, 'V2PvOLFt', NULL, 'GilL.TEneX@gMaIL.cOm', NULL, 'iOa7ilP0', '2023-04-19 07:28:04', '2023-04-19 07:28:04'),
(2535, 'wChWvJZK', NULL, 'lmArkO2313@aoL.Com', NULL, 'YKaLmk42', '2023-04-19 07:28:46', '2023-04-19 07:28:46'),
(2536, 'fveEnogI', NULL, 'kLaUS.loeffLER@jUbILEecLIPS.Co.Uk', NULL, NULL, '2023-04-19 09:30:19', '2023-04-19 09:30:19'),
(2537, '6g8Qap5M', NULL, 'SJaGarLa4U@GMaIL.com', NULL, 'p36tCA4X', '2023-04-19 13:24:30', '2023-04-19 13:24:30'),
(2538, '4oqMInxF', NULL, 'axG223311@GMail.COm', NULL, 'd22AK9om', '2023-04-19 14:50:49', '2023-04-19 14:50:49'),
(2539, NULL, NULL, 'aIvASkA2017@hotMAIl.cOm', NULL, NULL, '2023-04-19 15:12:15', '2023-04-19 15:12:15'),
(2540, NULL, NULL, 'KeNkNDO@GMAiL.CoM', NULL, NULL, '2023-04-19 15:12:50', '2023-04-19 15:12:50'),
(2541, 'FlWuyd2W', NULL, 'Ga18rODz@gMAIL.com', NULL, 'NzC23qpu', '2023-04-19 15:14:35', '2023-04-19 15:14:35'),
(2542, 'VQXdllhm', NULL, 'sRikaNTBATtuLA@gmAil.Com', NULL, NULL, '2023-04-19 16:04:18', '2023-04-19 16:04:18'),
(2543, '7wXFi8nf', NULL, 'hERm3@fEa.net', NULL, 'hedEcLqs', '2023-04-19 17:41:49', '2023-04-19 17:41:49'),
(2544, 'KLbmrCMs', NULL, 'serGiOHOyoSGonZALEZ@GMAIl.COm', NULL, '66kiryI1', '2023-04-19 17:43:36', '2023-04-19 17:43:36'),
(2545, 'h5gLnCDv', NULL, 'GarNIer66@msN.com', NULL, 'vMcxoWzS', '2023-04-19 17:44:14', '2023-04-19 17:44:14'),
(2546, 'vunOLBhV', NULL, 'vAnyfASgaS@gMail.Com', NULL, NULL, '2023-04-19 17:52:19', '2023-04-19 17:52:19'),
(2547, '5n9XXBzm', NULL, 'jchafFiN@chAffiNlIghT.COm', NULL, NULL, '2023-04-19 17:53:38', '2023-04-19 17:53:38'),
(2548, 'UF5TPJzo', NULL, 'DeBbIeisSNowbound@YAhoo.cOM', NULL, NULL, '2023-04-19 17:54:07', '2023-04-19 17:54:07'),
(2549, 'Mike Sykes', '85221944786', 'no-replyvedo@gmail.com', NULL, NULL, '2023-04-19 20:19:10', '2023-04-19 20:19:10'),
(2550, 'Mike Archibald', '83458657631', 'no-replyvedo@gmail.com', NULL, NULL, '2023-04-20 01:06:23', '2023-04-20 01:06:23'),
(2551, 'hDT5R54y', NULL, 'erINLBOECk@GMAil.COm', NULL, NULL, '2023-04-20 04:00:35', '2023-04-20 04:00:35'),
(2552, 'BtkM5z9N', NULL, 'WeyLAN.DicKEY@gmaIl.CoM', NULL, NULL, '2023-04-20 10:19:13', '2023-04-20 10:19:13'),
(2553, 'Om5oBHbU', NULL, 'JmIsh98@gMAIL.COM', NULL, '9VKpqQea', '2023-04-20 11:56:42', '2023-04-20 11:56:42'),
(2554, 'kxC8drKU', NULL, 'collAOaNTOnIO@HoTmAIl.COm', NULL, 'TAaywQN8', '2023-04-20 11:57:09', '2023-04-20 11:57:09'),
(2555, 'sVCiaCTI', NULL, 'AoCHOJnackI@GMAIL.cOM', NULL, NULL, '2023-04-20 12:01:21', '2023-04-20 12:01:21'),
(2556, '3WV4NUQz', NULL, 'So@QuANt-iNsIgHt.CoM', NULL, NULL, '2023-04-20 12:03:05', '2023-04-20 12:03:05'),
(2557, 'Bt3SX0QI', NULL, 'KRIzElAPONce@YAhoO.COM', NULL, NULL, '2023-04-20 12:04:16', '2023-04-20 12:04:16'),
(2558, 'IExhNpBp', NULL, 'cOllAoaNTonIO@hotmAIl.coM', NULL, 'rD3nWLuu', '2023-04-20 14:54:03', '2023-04-20 14:54:03'),
(2559, 'WkQHmkeO', NULL, 'KeNNeTHDaNG420@GMAil.cOM', NULL, NULL, '2023-04-20 16:30:19', '2023-04-20 16:30:19'),
(2560, 'qTr29875', NULL, 'GURTH.whitAKER@gmAil.coM', NULL, 'LYOx5tyT', '2023-04-20 18:58:19', '2023-04-20 18:58:19'),
(2561, NULL, NULL, 'ShiPPING@tHEworKROomlA.Com', NULL, NULL, '2023-04-20 19:46:20', '2023-04-20 19:46:20'),
(2562, NULL, NULL, 'APiCalTELECOmuNICATIOn@GMaIL.Com', NULL, NULL, '2023-04-20 19:46:43', '2023-04-20 19:46:43'),
(2563, NULL, NULL, 'DUMBoOX96@gMAIl.CoM', NULL, NULL, '2023-04-20 19:47:43', '2023-04-20 19:47:43'),
(2564, NULL, NULL, 'lSTOmkO@AOL.com', NULL, NULL, '2023-04-20 19:47:45', '2023-04-20 19:47:45'),
(2565, NULL, NULL, 'mPY1967@gmaiL.Com', NULL, NULL, '2023-04-20 19:47:48', '2023-04-20 19:47:48'),
(2566, NULL, NULL, 'bABygAIl.yZ426@GMAiL.com', NULL, NULL, '2023-04-20 19:47:48', '2023-04-20 19:47:48'),
(2567, 'JTf8qku3', NULL, 'nOsLOdRYWalLlTD@gMaIL.cOM', NULL, 'rVcJoXVo', '2023-04-20 20:16:25', '2023-04-20 20:16:25'),
(2568, '0gSl7ZtB', NULL, 'ROBerTcSEhAK@gmAIL.Com', NULL, 'MRLl9u95', '2023-04-20 21:19:34', '2023-04-20 21:19:34'),
(2569, 'P31FKgw5', NULL, 'roobee74@YAHOO.CoM', NULL, NULL, '2023-04-20 21:29:19', '2023-04-20 21:29:19'),
(2570, 'pXQaWukR', NULL, 'CsKalMOsKI@gMaiL.CoM', NULL, 'wsnQA81j', '2023-04-20 23:19:29', '2023-04-20 23:19:29'),
(2571, 'gFC7EfZg', NULL, 'NiKKI_shoRty07@hOtMAil.com', NULL, 'NTRZcg41', '2023-04-20 23:54:36', '2023-04-20 23:54:36'),
(2572, 'SBbFRbRe', NULL, 'hSsI@iCLAiM.COm', NULL, NULL, '2023-04-21 01:52:12', '2023-04-21 01:52:12'),
(2573, 'Uk1BAlEo', NULL, 'WasMund.CArI@mayo.eDu', NULL, 'aBKTxWQY', '2023-04-21 08:23:37', '2023-04-21 08:23:37'),
(2574, 'OAP46PWI', NULL, 'C.LOPergoLO@gmX.dE', NULL, '1v3X3HSA', '2023-04-21 09:57:02', '2023-04-21 09:57:02'),
(2575, '8xHWEJnd', NULL, 'LiSAOta@GMaiL.COm', NULL, NULL, '2023-04-21 11:39:55', '2023-04-21 11:39:55'),
(2576, 'pOSIGZJI', NULL, 'lOVELYBrUNeTtE22@HOtmaiL.COM', NULL, NULL, '2023-04-21 11:40:00', '2023-04-21 11:40:00'),
(2577, '4Q0Hpsr1', NULL, 'DmgOGGInS@yAhOo.coM', NULL, NULL, '2023-04-21 11:40:03', '2023-04-21 11:40:03'),
(2578, 'Kr1DpPBY', NULL, 'rOSa.bAy@aOl.Com', NULL, NULL, '2023-04-21 13:21:10', '2023-04-21 13:21:10'),
(2579, '6oyofkpA', NULL, 'TCObBhOMe@gMaIL.Com', NULL, NULL, '2023-04-21 13:42:21', '2023-04-21 13:42:21'),
(2580, 'IX7sqsTN', NULL, 'tcoBbHOMe@gmail.coM', NULL, NULL, '2023-04-21 13:42:27', '2023-04-21 13:42:27'),
(2581, 'eLDmj2ZC', NULL, 'SpingOtV@GmAil.COm', NULL, NULL, '2023-04-21 13:43:06', '2023-04-21 13:43:06'),
(2582, 'RwYXDFfM', NULL, 'gREgoryWasSeRMAN@gMaIL.Com', NULL, NULL, '2023-04-21 13:43:17', '2023-04-21 13:43:17'),
(2583, 'DcOEZXEy', NULL, 'aNDREWjlEVESQue@gmail.cOM', NULL, NULL, '2023-04-21 13:44:37', '2023-04-21 13:44:37'),
(2584, '53nvKnwu', NULL, 'BeTHg12@gMaiL.CoM', NULL, '3ZTuWOXd', '2023-04-21 13:57:42', '2023-04-21 13:57:42'),
(2585, 'GCV0h8NC', NULL, 't3riccI@yaHoo.coM', NULL, 'boESuCbE', '2023-04-21 15:29:07', '2023-04-21 15:29:07'),
(2586, 'XyUBRelG', NULL, 'NOsLODRYwAlLlTd@GmaIL.cOm', NULL, 'VIVTuslN', '2023-04-21 17:49:50', '2023-04-21 17:49:50'),
(2587, 'q4wgs0A5', NULL, 'LATaShaJAcksoN2@BelLSouTH.NEt', NULL, 'CYIgVGlq', '2023-04-21 17:50:09', '2023-04-21 17:50:09'),
(2588, '1vJdAdPu', NULL, 'rh@AkoNoViA.Ca', NULL, 'vkjXi8EZ', '2023-04-21 17:50:21', '2023-04-21 17:50:21'),
(2589, 'dkBn0mHi', NULL, 'broWnStOWN5412@yaHOo.com', NULL, 'rPjSy9tC', '2023-04-21 17:52:22', '2023-04-21 17:52:22'),
(2590, 'Gs0ihHA6', NULL, 'beTTYA@HErItaGEfLowerFaRm.Com', NULL, NULL, '2023-04-21 18:56:40', '2023-04-21 18:56:40'),
(2591, 'XileXhPy', NULL, 'cosTnerjenSencandi@gmAil.Com', NULL, NULL, '2023-04-21 18:57:38', '2023-04-21 18:57:38'),
(2592, 'j0Ruu77U', NULL, 'erEnEbUrK@gmAil.cOm', NULL, 'pTGY3hS4', '2023-04-21 19:04:22', '2023-04-21 19:04:22'),
(2593, 'xJDx8BBA', NULL, 'NkRAttAn@EaGleCRESTcoNStrUCTioN.ca', NULL, 'y9H0kYIq', '2023-04-21 19:04:35', '2023-04-21 19:04:35'),
(2594, 'XX83amDO', NULL, 'MArkcReasoN@HoTmAIL.CoM', NULL, 'R79ZFGQO', '2023-04-21 19:04:38', '2023-04-21 19:04:38'),
(2595, 'dNqBgNta', NULL, 'LISa@TriplERAndom.cOM', NULL, 'siZm0Bkb', '2023-04-21 19:04:48', '2023-04-21 19:04:48'),
(2596, '2KYDJrS4', NULL, 'aINslEyBRIcK@gMAil.com', NULL, 'JQZ4F9H3', '2023-04-21 19:05:54', '2023-04-21 19:05:54'),
(2597, 'rCxsTkUf', NULL, 'pIERRE.aNNICk.Bey@ORANGe.fR', NULL, 'W1YlEOkb', '2023-04-21 19:06:02', '2023-04-21 19:06:02'),
(2598, 'xvSJyecz', NULL, 'astoUTh@WrIghtLAnDsCape.ca', NULL, 'j1fkLZjw', '2023-04-21 22:12:07', '2023-04-21 22:12:07'),
(2599, 'tvF8qxUB', NULL, 'kbAUTIstA123@yAHoO.cOm', NULL, '3mg5un6T', '2023-04-22 01:24:17', '2023-04-22 01:24:17'),
(2600, '4p4AFuhD', NULL, 'giovabeLLiO@gMaiL.CoM', NULL, NULL, '2023-04-22 10:11:35', '2023-04-22 10:11:35'),
(2601, 'qe73eIHb', NULL, 'deN_745@yaHoO.cOM', NULL, NULL, '2023-04-22 10:11:36', '2023-04-22 10:11:36'),
(2602, '2VLJymQA', NULL, 'bEnOIT.ARnOUld@eMC2.COOP', NULL, NULL, '2023-04-22 10:11:52', '2023-04-22 10:11:52'),
(2603, 'r4QaDVGx', NULL, 'EmaRatI.1977@hotMAIL.cOM', NULL, NULL, '2023-04-22 10:12:57', '2023-04-22 10:12:57'),
(2604, '0q9s0L3i', NULL, 'EMaRaTi.1977@hOTMAIL.COm', NULL, NULL, '2023-04-22 10:13:04', '2023-04-22 10:13:04'),
(2605, '0Zx7BoEr', NULL, 'dAvidcLarKE5@SYmPAtIcO.CA', NULL, NULL, '2023-04-22 10:13:13', '2023-04-22 10:13:13'),
(2606, 'WbiSETVO', NULL, 'gMosCiLLO@GMAIl.cOm', NULL, NULL, '2023-04-22 13:54:06', '2023-04-22 13:54:06'),
(2607, 'HGyJK9hr', NULL, 'hArSHaLNAIk2212@gmAIL.CoM', NULL, NULL, '2023-04-22 13:54:16', '2023-04-22 13:54:16'),
(2608, 'qnP7IVYf', NULL, 'jmICkLE726@yAhoo.cOm', NULL, NULL, '2023-04-22 13:57:24', '2023-04-22 13:57:24'),
(2609, '5YAZWrkP', NULL, 'breNda.sCHmIdty@GMaiL.com', NULL, NULL, '2023-04-22 15:44:59', '2023-04-22 15:44:59'),
(2610, 'e333BdjC', NULL, 'rONsUeriGbY@Msn.cOm', NULL, NULL, '2023-04-22 15:45:49', '2023-04-22 15:45:49'),
(2611, 'hSX2uRNc', NULL, 'clAyToNK@ALPiNEwiNdOws.Ca', NULL, NULL, '2023-04-22 15:46:48', '2023-04-22 15:46:48'),
(2612, 'aq6cRBeN', NULL, 'wiLd07@GmaiL.coM', NULL, NULL, '2023-04-22 15:47:12', '2023-04-22 15:47:12'),
(2613, 'TwUNlEkV', NULL, 'YABHA999@GMaiL.CoM', NULL, NULL, '2023-04-22 15:48:57', '2023-04-22 15:48:57'),
(2614, 'klpvWQaG', NULL, 'aBiR1520@Live.cA', NULL, NULL, '2023-04-22 17:36:55', '2023-04-22 17:36:55'),
(2615, 'bFTbw40W', NULL, 'keLownaChILdCARE@YaHOo.ca', NULL, NULL, '2023-04-22 17:37:01', '2023-04-22 17:37:01'),
(2616, 'BkGpodNv', NULL, 'CAREErS@paCKsMARtInC.CA', NULL, NULL, '2023-04-22 17:38:24', '2023-04-22 17:38:24'),
(2617, 'gi5yt8zz', NULL, 'lAurENrAY49@YahoO.coM', NULL, NULL, '2023-04-22 17:39:05', '2023-04-22 17:39:05'),
(2618, 'vtY4pqol', NULL, 'ANTHonYzULcH@GmAiL.cOM', NULL, NULL, '2023-04-23 01:19:24', '2023-04-23 01:19:24'),
(2619, 'e1cQJNUA', NULL, 'JENnYHuelSMaNN@WEb.De', NULL, NULL, '2023-04-23 07:33:57', '2023-04-23 07:33:57'),
(2620, 'RN9GuSR7', NULL, 'UlRiChwinKel1965@GMX.De', NULL, 'KWmiQCML', '2023-04-23 09:26:25', '2023-04-23 09:26:25'),
(2621, 'erC3D26b', NULL, 'RUEDIGeR.tiETJeN@T-oNLine.DE', NULL, 'TvWdQ7j8', '2023-04-23 09:29:49', '2023-04-23 09:29:49'),
(2622, 'VaTtyQOf', NULL, 'cARolYNougEL@yAHoO.Com', NULL, NULL, '2023-04-23 10:20:29', '2023-04-23 10:20:29'),
(2623, 'fMkyrxQo', NULL, 'info@mkcshOpfIt.cOm.AU', NULL, NULL, '2023-04-23 13:51:20', '2023-04-23 13:51:20'),
(2624, 'lFtRjnQt', NULL, 'sYLVIAn.TAssE@QUAdrapLAst.com', NULL, NULL, '2023-04-23 13:52:48', '2023-04-23 13:52:48'),
(2625, 'NtYbYlIG', NULL, 'chIEn9263@GmaIl.Com', NULL, NULL, '2023-04-23 13:53:16', '2023-04-23 13:53:16'),
(2626, 'LnWoNKzP', NULL, 'MaRvin@VoGel.CH', NULL, NULL, '2023-04-23 14:04:19', '2023-04-23 14:04:19'),
(2627, 'PYlfiWBw', NULL, 'MsLAjoN@HOtmAIL.cOM', NULL, 'ZyHxjSZp', '2023-04-23 14:32:26', '2023-04-23 14:32:26'),
(2628, 'Z4LmH5Zw', NULL, 'DAViDc@ligHthousElaNdsCApe.CA', NULL, 'EfteIKwG', '2023-04-23 14:32:53', '2023-04-23 14:32:53'),
(2629, 'coMCXrfv', NULL, 'dW06789@GMaIL.com', NULL, NULL, '2023-04-23 14:42:52', '2023-04-23 14:42:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kyguis`
--

CREATE TABLE `kyguis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lkg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lbds` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `tiente` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'VNĐ',
  `da` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tbds` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dt` int(11) DEFAULT NULL,
  `mt` int(11) DEFAULT NULL,
  `nt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `th` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vs` int(11) DEFAULT NULL,
  `st` int(11) DEFAULT NULL,
  `huong` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `video` longtext COLLATE utf8mb4_unicode_ci,
  `tulanh` tinyint(1) NOT NULL DEFAULT '0',
  `bontam` tinyint(1) NOT NULL DEFAULT '0',
  `wifi` tinyint(1) NOT NULL DEFAULT '0',
  `baove` tinyint(1) NOT NULL DEFAULT '0',
  `binhnonglanh` tinyint(1) NOT NULL DEFAULT '0',
  `beboi` tinyint(1) NOT NULL DEFAULT '0',
  `bancongsanthuong` tinyint(1) NOT NULL DEFAULT '0',
  `gym` tinyint(1) NOT NULL DEFAULT '0',
  `banghephongan` tinyint(1) NOT NULL DEFAULT '0',
  `banghephongkhach` tinyint(1) NOT NULL DEFAULT '0',
  `chodexemay` tinyint(1) NOT NULL DEFAULT '0',
  `chodeoto` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kyguis`
--

INSERT INTO `kyguis` (`id`, `lkg`, `lbds`, `name`, `phone`, `email`, `price`, `tiente`, `da`, `tbds`, `dt`, `mt`, `nt`, `th`, `pn`, `vs`, `st`, `huong`, `content`, `video`, `tulanh`, `bontam`, `wifi`, `baove`, `binhnonglanh`, `beboi`, `bancongsanthuong`, `gym`, `banghephongan`, `banghephongkhach`, `chodexemay`, `chodeoto`, `status`, `created_at`, `updated_at`) VALUES
(2, NULL, 'thấp tầng,biệt thự', 'Nguyễn Hoài Nam', '0848384333', 'namnguyen20132674@gmail.com', 10000000, 'VNĐ', 'Vinhomes Westpoint', 'Chung cư 3 phòng ngủ đầy đủ tiện nghi', 120, 5, 'nội thất cơ bản', 'có tầng hầm', '2', 2, 1, NULL, 'bất động sản mới mua', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-11-05 02:57:33', '2021-11-19 04:12:55'),
(3, NULL, 'thấp tầng,biệt thự', 'Nguyễn Hoài Nam', '0848384333', 'namnguyen20132674@gmail.com', 1200000000, 'VNĐ', 'Vinhomes Westpoint', 'Chung cư 3 phòng ngủ đầy đủ tiện nghi', 120, 5, 'nội thất cơ bản', NULL, '2', 2, 1, NULL, 'bất động sản mới mua', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-11-05 03:07:20', '2021-11-05 03:07:20'),
(19, 'bất động sản bán', 'thấp tầng,biệt thự', 'Nguyễn Hoài Nam', '0848384999', 'namnguyen20132674@gmail.com', 1200000000, 'VNĐ', 'Vinhomes Westpoint', 'Chung cư 3 phòng ngủ đầy đủ tiện nghi', 80, 10, 'full nội thất', 'có tầng hầm', '1PN', 1, 2, 'Tây Nam - Tây Bắc', NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-11-18 20:59:32', '2021-11-18 20:59:32'),
(20, 'bất động sản bán', 'cao tầng,căn hộ chung cư', 'Hà Anh', '822140808', 'haanh@gmail.com', 4200000000, 'VNĐ', 'The Matrix One', 'Căn 3 ngủ cơ bản', 120, 3, 'nội thất liền tường', 'có tầng hầm', '3PN', 2, 0, 'Đông Nam- Đông Bắc', NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 2, '2021-11-19 02:32:55', '2021-11-19 04:21:09'),
(21, 'bất động sản bán', 'thấp tầng,biệt thự', 'Nguyễn Hoài Nam', '0848384656', 'namnguyen20132674@gmail.com', 1200000000, 'VNĐ', 'Vinhomes Westpoint', 'Chung cư 3 phòng ngủ', 80, 10, 'nội thất cơ bản', 'có tầng hầm', '1PN', 1, 2, 'Tây, Nam', 'Căn hộ mới mua', 'https://www.youtube.com/watch?v=wmGvDWSb9A8', 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, '2021-11-19 09:31:53', '2021-11-19 09:31:53'),
(22, 'bất động sản cho thuê', 'thấp tầng,biệt thự', 'Nguyễn Hoài Nam', '0848384667', 'namnguyen20132674@gmail.com', 10000000, 'VNĐ', 'Vinhomes Westpoint', 'Chung cư 3 phòng ngủ đầy đủ tiện nghi', 80, 10, 'nội thất cơ bản', 'có tầng hầm', '1PN', 1, 2, 'Tây, Nam', 'chung cư mới mua', NULL, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, '2021-11-19 09:41:02', '2021-11-19 09:41:02'),
(23, 'bất động sản bán', 'thấp tầng,biệt thự', 'Nguyễn Hoài Nam', '0848384669', 'namnguyen20132674@gmail.com', 1200000000, '$$$', 'Vinhomes Westpoint- Đỗ Đức Dục, Nam Từ Liêm, Hà Nội', 'Chung cư 3 phòng ngủ đầy đủ tiện nghi', NULL, NULL, 'nội thất cơ bản', 'có tầng hầm', '1PN', 1, 2, 'Tây, Nam', 'chung cư mới mua', 'https://www.youtube.com/watch?v=wmGvDWSb9A8', 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, '2021-11-19 09:50:23', '2021-11-19 09:50:23'),
(24, 'bất động sản bán', 'thấp tầng,biệt thự', 'Nguyễn Hoài Nam', '0342911168', 'namnguyen20132674@gmail.com', 1200000000, '$$$', 'Tòa W1- Vinhomes Westpoint- Đỗ Đức Dục, Nam Từ Liêm, Hà Nội', 'Chung cư 3 phòng ngủ đầy đủ tiện nghi', 120, 10, 'nội thất cơ bản', 'có tầng hầm', '1PN', 1, 2, 'Tây, Nam', 'chung cư mới mua', 'https://www.youtube.com/watch?v=wmGvDWSb9A8', 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2021-11-19 09:53:34', '2021-11-19 09:53:34'),
(25, 'bất động sản bán', 'cao tầng,biệt thự', 'Nguyễn Hoài Nam', '0342911169', 'namnguyen20132674@gmail.com', 1200000000, 'VNĐ', 'Vinhomes Westpoint', 'Chung cư 3 phòng ngủ đầy đủ tiện nghi', 80, 10, 'nội thất cơ bản', 'có tầng hầm', '1PN', 1, 2, 'Tây, Nam', 'mới mua', NULL, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, '2021-11-19 10:05:03', '2021-11-19 10:05:03'),
(26, 'bất động sản bán', 'thấp tầng,biệt thự', 'Nguyễn Hoài Nam', '0848384666', 'namnguyen20132674@gmail.com', 10000000, '$$$', 'Tòa W1- Vinhomes Westpoint- Đỗ Đức Dục, Nam Từ Liêm, Hà Nội', 'Chung cư 3 phòng ngủ đầy đủ tiện nghi', 80, 5, 'nội thất cơ bản', 'có tầng hầm', '1PN', 1, 4, 'Tây, Nam', 'chung cư mới mua', 'https://www.youtube.com/watch?v=wmGvDWSb9A8', 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, '2021-11-19 10:10:49', '2021-11-19 10:10:49'),
(27, 'bất động sản bán', 'thấp tầng,biệt thự', 'Nguyễn Hoài Nam', '0848384333', 'namnguyen20132674@gmail.com', 1200000000, 'VNĐ', 'Vinhomes Westpoint', 'Chung cư 3 phòng ngủ đầy đủ tiện nghi', 120, 5, 'nội thất cơ bản', 'có tầng hầm', '1PN', 1, 2, 'Tây, Nam', 'chung cơ mới mua', 'https://www.youtube.com/watch?v=wmGvDWSb9A8', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, '2021-11-19 10:14:57', '2021-11-19 10:14:57'),
(28, 'bất động sản bán', 'thấp tầng,biệt thự', 'Nguyễn Hoài Nam', '0848384666', 'namnguyen20132674@gmail.com', 1200000000, '$$$', 'Vinhomes Skylake', 'Chung cư 3 phòng ngủ đầy đủ tiện nghi', 120, 10, 'nội thất cơ bản', 'có tầng hầm', '1PN', 1, 2, 'Tây, Nam', 'Chung cư mới', 'https://www.youtube.com/watch?v=wmGvDWSb9A8', 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, '2021-11-19 10:16:28', '2021-11-19 10:16:28'),
(33, 'bất động sản bán', 'thấp tầng,biệt thự', 'Nguyễn Hoài Nam', '0848384666', 'namnguyen20132674@gmail.com', 1200000000, 'VNĐ', 'Vinhomes Westpoint', 'Chung cư 3 phòng ngủ đầy đủ tiện nghi', 120, 5, 'nội thất cơ bản', 'có tầng hầm', '1PN', 1, 2, 'Tây, Nam', NULL, 'https://www.youtube.com/watch?v=wmGvDWSb9A8', 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, '2021-11-21 21:49:54', '2021-11-21 21:49:54'),
(34, 'bất động sản bán', 'thấp tầng,biệt thự', 'Nguyễn Hoài Nam', '0848384666', 'namnguyen20132674@gmail.com', 1200000000, 'VNĐ', 'Tầng 36 P3608A, Tòa W1- Vinhomes Westpoint- Đỗ Đức Dục, Nam Từ Liêm, Hà Nội', 'Chung cư 3 phòng ngủ đầy đủ tiện nghi', NULL, NULL, 'nội thất cơ bản', 'có tầng hầm', '1PN', 1, NULL, 'Tây, Nam', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-11-21 21:57:09', '2021-11-21 21:57:09'),
(35, 'bất động sản bán', 'thấp tầng,biệt thự', NULL, NULL, NULL, NULL, 'VNĐ', NULL, NULL, NULL, NULL, 'nội thất cơ bản', 'có tầng hầm', '1PN', 1, NULL, 'Tây, Nam', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2021-11-21 22:06:55', '2021-11-22 09:22:30'),
(36, 'bất động sản bán', 'thấp tầng,biệt thự', 'Nguyễn Hoài Nam', '0342911168', 'namnguyen20132674@gmail.com', 1200000000, 'VNĐ', 'Vinhomes Westpoint', 'Chung cư 3 phòng ngủ đầy đủ tiện nghi', 120, 10, 'nội thất cơ bản', 'có tầng hầm', '1PN', 1, 2, 'Tây, Nam', NULL, NULL, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2021-12-06 06:34:55', '2021-12-06 06:34:55'),
(37, 'bất động sản bán', 'thấp tầng,biệt thự', 'Nguyễn Hoài Nam', '0342911168', 'namnguyen20132674@gmail.com', 1200000000, 'VNĐ', 'Tòa W1- Vinhomes Westpoint- Đỗ Đức Dục, Nam Từ Liêm, Hà Nội', 'Chung cư 3 phòng ngủ đầy đủ tiện nghi', NULL, NULL, 'nội thất cơ bản', 'có tầng hầm', '1PN', 1, NULL, 'Tây, Nam', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-12-06 06:41:58', '2021-12-06 06:41:58'),
(38, 'bất động sản bán', 'thấp tầng,biệt thự', 'Nguyễn Hoài Nam', '0848384333', 'namnguyen20132674@gmail.com', 1200000000, 'VNĐ', 'Vinhomes Westpoint', 'Chung cư 3 phòng ngủ đầy đủ tiện nghi', NULL, NULL, 'nội thất cơ bản', 'có tầng hầm', '1PN', 1, NULL, 'Tây, Nam', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-12-06 06:44:53', '2021-12-06 06:44:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kygui_images`
--

CREATE TABLE `kygui_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kygui_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kygui_images`
--

INSERT INTO `kygui_images` (`id`, `url`, `kygui_id`, `created_at`, `updated_at`) VALUES
(2, 'congvien-16333300232181621056586.jpg.jpg', 2, '2021-11-05 02:57:33', '2021-11-05 02:57:33'),
(3, 'hinh-anh-5-yeu-to-tao-nen-suc-hut-can-ho-cua-Vinhomes-Smart-City-so-1.jpg.jpg', 2, '2021-11-05 02:57:34', '2021-11-05 02:57:34'),
(4, 'hinh-anh-giai-khat-can-ho-vinhomes-smart-city-duoi-2-ty-tai-dai-do-thi-thong-minh-so-01_1629359939.jpg.jpg', 2, '2021-11-05 02:57:34', '2021-11-05 02:57:34'),
(5, '97c284f0cd4836166f59.jpg.jpg', 3, '2021-11-05 03:07:20', '2021-11-05 03:07:20'),
(21, 'bg-testimonials.jpg.jpg', 19, '2021-11-18 20:59:32', '2021-11-18 20:59:32'),
(22, 'bg-testimonials.jpg.jpg', 21, '2021-11-19 09:31:53', '2021-11-19 09:31:53'),
(23, 'bg-testimonials.jpg.jpg', 22, '2021-11-19 09:41:02', '2021-11-19 09:41:02'),
(24, 'bg-testimonials.jpg.jpg', 23, '2021-11-19 09:50:23', '2021-11-19 09:50:23'),
(25, 'business-finance-employment-female-successful-entrepreneurs-concept-confident-smiling-asian-businesswoman-office-worker-white-suit-glasses-using-laptop-help-clients_1258-59126.jpg.jpg', 23, '2021-11-19 09:50:23', '2021-11-19 09:50:23'),
(26, 'bg-testimonials.jpg.jpg', 24, '2021-11-19 09:53:34', '2021-11-19 09:53:34'),
(27, 'business-finance-employment-female-successful-entrepreneurs-concept-confident-smiling-asian-businesswoman-office-worker-white-suit-glasses-using-laptop-help-clients_1258-59126.jpg.jpg', 24, '2021-11-19 09:53:34', '2021-11-19 09:53:34'),
(28, 'bg-testimonials.jpg.jpg', 25, '2021-11-19 10:05:03', '2021-11-19 10:05:03'),
(29, 'business-finance-employment-female-successful-entrepreneurs-concept-confident-smiling-asian-businesswoman-office-worker-white-suit-glasses-using-laptop-help-clients_1258-59126.jpg.jpg', 25, '2021-11-19 10:05:03', '2021-11-19 10:05:03'),
(30, 'business-finance-employment-female-successful-entrepreneurs-concept-friendly-smiling-office-manager-greeting-new-coworker-businesswoman-welcome-clients-with-hand-wave-hol.jpg', 25, '2021-11-19 10:05:03', '2021-11-19 10:05:03'),
(31, 'bg-testimonials.jpg.jpg', 26, '2021-11-19 10:10:49', '2021-11-19 10:10:49'),
(32, 'business-finance-employment-female-successful-entrepreneurs-concept-confident-smiling-asian-businesswoman-office-worker-white-suit-glasses-using-laptop-help-clients_1258-59126.jpg.jpg', 26, '2021-11-19 10:10:49', '2021-11-19 10:10:49'),
(33, 'business-finance-employment-female-successful-entrepreneurs-concept-friendly-smiling-office-manager-greeting-new-coworker-businesswoman-welcome-clients-with-hand-wave-hol.jpg', 26, '2021-11-19 10:10:49', '2021-11-19 10:10:49'),
(34, 'bg-testimonials.jpg.jpg', 27, '2021-11-19 10:14:57', '2021-11-19 10:14:57'),
(35, 'business-finance-employment-female-successful-entrepreneurs-concept-confident-smiling-asian-businesswoman-office-worker-white-suit-glasses-using-laptop-help-clients_1258-59126.jpg.jpg', 27, '2021-11-19 10:14:57', '2021-11-19 10:14:57'),
(36, 'business-finance-employment-female-successful-entrepreneurs-concept-friendly-smiling-office-manager-greeting-new-coworker-businesswoman-welcome-clients-with-hand-wave-hol.jpg', 27, '2021-11-19 10:14:57', '2021-11-19 10:14:57'),
(37, 'Anh-2-1550-1634274645.jpg.jpg', 28, '2021-11-19 10:16:28', '2021-11-19 10:16:28'),
(38, 'bg-testimonials.jpg.jpg', 28, '2021-11-19 10:16:28', '2021-11-19 10:16:28'),
(39, 'business-finance-employment-female-successful-entrepreneurs-concept-confident-smiling-asian-businesswoman-office-worker-white-suit-glasses-using-laptop-help-clients_1258-59126.jpg.jpg', 28, '2021-11-19 10:16:28', '2021-11-19 10:16:28'),
(40, 'business-finance-employment-female-successful-entrepreneurs-concept-friendly-smiling-office-manager-greeting-new-coworker-businesswoman-welcome-clients-with-hand-wave-hol.jpg', 28, '2021-11-19 10:16:28', '2021-11-19 10:16:28'),
(41, 'congvien-16333300232181621056586.jpg.jpg', 28, '2021-11-19 10:16:28', '2021-11-19 10:16:28'),
(54, 'bg-10.jpg.jpg', 33, '2021-11-21 21:49:54', '2021-11-21 21:49:54'),
(55, 'bg-header.jpg.jpg', 33, '2021-11-21 21:49:54', '2021-11-21 21:49:54'),
(56, 'bg-header2.jpg.jpg', 33, '2021-11-21 21:49:54', '2021-11-21 21:49:54'),
(57, 'Bảng giá chuyển nhượng Vinhomes West Point mới nhất T112021.png.jpg', 33, '2021-11-21 21:49:55', '2021-11-21 21:49:55'),
(58, 'city.jpg.jpg', 36, '2021-12-06 06:34:55', '2021-12-06 06:34:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `stt` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `title`, `url`, `icon`, `target`, `type`, `type_id`, `parent_id`, `stt`, `created_at`, `updated_at`) VALUES
(1, 'trang chủ', '/', NULL, '_self', 'custom-link', 0, NULL, 0, '2021-10-14 08:34:55', '2021-10-14 08:34:55'),
(2, 'Liên hệ', '/lien-he', NULL, '_self', 'custom-link', 0, NULL, 6, '2021-10-14 08:34:57', '2022-06-02 02:37:25'),
(3, 'giới thiệu', '/gioi-thieu-pa1', NULL, '_self', 'custom-link', 0, NULL, 1, '2021-10-14 08:36:30', '2021-10-18 01:56:26'),
(4, 'sản phẩm', '/', NULL, '_self', 'custom-link', 0, NULL, 2, '2021-10-14 08:38:29', '2021-10-14 08:38:29'),
(5, 'Tin tức', '/tin-tuc-bc1', NULL, '_self', 'custom-link', 0, NULL, 3, '2021-10-14 08:38:29', '2022-06-02 02:37:25'),
(6, 'Ký gửi BĐS', '/ky-gui-bat-dong-san', NULL, '_self', 'custom-link', 0, NULL, 4, '2021-10-14 08:38:29', '2022-06-02 02:37:25'),
(8, 'Sản Phẩm Chuyển Nhượng', 'san-pham-chuyen-nhuong-pc1', 'undefined', '_self', 'productCategory', 1, 4, 0, '2021-10-14 08:38:30', '2021-11-04 03:15:45'),
(9, 'Sản Phẩm Cho Thuê', 'san-pham-cho-thue-pc3', 'undefined', '_self', 'productCategory', 3, 4, 1, '2021-10-14 08:38:31', '2021-11-04 03:15:46'),
(10, 'Chủ Đầu Tư', 'san-pham-chu-dau-tu-pc5', 'undefined', '_self', 'productCategory', 5, 4, 2, '2021-10-14 08:38:31', '2021-11-04 03:15:45'),
(11, 'Sản Phẩm Đặc Biệt', 'san-pham-dac-biet-pc7', 'undefined', '_self', 'productCategory', 7, 4, 3, '2021-10-14 08:38:31', '2021-11-04 03:15:45'),
(12, 'Tuyển dụng', 'tuyen-dung-bc3', 'undefined', '_self', 'blogCategory', 3, NULL, 5, '2021-10-14 13:01:24', '2022-06-02 02:37:25'),
(13, 'Vinhomes D\'capitale', 'vinhomes-dcapitale-pc9', 'undefined', '_self', 'productCategory', 9, 9, 0, '2021-10-18 08:19:19', '2021-10-18 08:19:19'),
(14, 'Vinhomes Gardenia', 'vinhomes-gardenia-pc11', 'undefined', '_self', 'productCategory', 11, 9, 1, '2021-10-18 08:19:19', '2021-10-18 08:19:19'),
(15, 'Vinhomes Greenbay', 'vinhomes-greenbay-pc13', 'undefined', '_self', 'productCategory', 13, 9, 2, '2021-10-18 08:19:19', '2021-10-18 08:19:19'),
(16, 'Vinhomes Royal City', 'vinhomes-royal-city-pc15', 'undefined', '_self', 'productCategory', 15, 9, 3, '2021-10-18 08:19:20', '2021-10-18 08:19:20'),
(17, 'Vinhomes Skylake', 'vinhomes-skylake-pc17', 'undefined', '_self', 'productCategory', 17, 9, 4, '2021-10-18 08:19:20', '2021-10-18 08:19:20'),
(18, 'Vinhomes West Point', 'vinhomes-west-point-pc21', 'undefined', '_self', 'productCategory', 21, 9, 5, '2021-10-18 08:19:20', '2021-10-18 08:19:20'),
(19, 'Vinhomes Smart City', 'vinhomes-smart-city-pc19', 'undefined', '_self', 'productCategory', 19, 9, 6, '2021-10-18 08:19:20', '2021-10-18 08:19:20'),
(20, 'Keang Nam', 'keang-nam-pc23', 'undefined', '_self', 'productCategory', 23, 9, 7, '2021-10-18 08:19:20', '2021-10-18 08:19:20'),
(21, 'The Zei', 'the-zei-pc25', 'undefined', '_self', 'productCategory', 25, 9, 8, '2021-10-18 08:19:21', '2021-10-18 08:19:21'),
(22, 'Sunshine City', 'sunshine-city-pc27', 'undefined', '_self', 'productCategory', 27, 9, 9, '2021-10-18 08:19:21', '2021-10-18 08:19:21'),
(23, 'Sunshine Center', 'sunshine-center-pc29', 'undefined', '_self', 'productCategory', 29, 9, 10, '2021-10-18 08:19:21', '2021-10-18 08:19:21'),
(24, 'Mỹ Đình Pearl', 'my-dinh-pearl-pc33', 'undefined', '_self', 'productCategory', 33, 9, 11, '2021-10-18 08:19:21', '2021-10-18 08:19:21'),
(25, 'CT8 - The Emerald', 'ct8-the-emerald-pc35', 'undefined', '_self', 'productCategory', 35, 9, 12, '2021-10-18 08:19:21', '2021-10-18 08:19:21'),
(26, 'Vinhomes Metropolis', 'vinhomes-metropolis-pc37', 'undefined', '_self', 'productCategory', 37, 9, 13, '2021-10-18 08:19:22', '2021-10-18 08:19:22'),
(27, 'Mặt bằng kinh doanh', 'mat-bang-kinh-doanh-pc31', 'undefined', '_self', 'productCategory', 31, 9, 14, '2021-10-18 08:19:22', '2021-10-18 08:19:22'),
(28, 'Vinhomes D\'capitale', 'vinhomes-dcapitale-pc39', 'undefined', '_self', 'productCategory', 39, 8, 0, '2021-10-18 08:37:40', '2021-10-18 08:37:40'),
(29, 'Vinhomes Gardenia', 'vinhomes-gardenia-pc41', 'undefined', '_self', 'productCategory', 41, 8, 1, '2021-10-18 08:37:41', '2021-10-18 08:37:41'),
(30, 'Vinhomes Greenbay', 'vinhomes-greenbay-pc43', 'undefined', '_self', 'productCategory', 43, 8, 2, '2021-10-18 08:37:41', '2021-10-18 08:37:41'),
(31, 'Vinhomes Metropolis', 'vinhomes-metropolis-pc45', 'undefined', '_self', 'productCategory', 45, 8, 3, '2021-10-18 08:37:41', '2021-10-18 08:37:41'),
(32, 'Vinhomes Royal City', 'vinhomes-royal-city-pc47', 'undefined', '_self', 'productCategory', 47, 8, 4, '2021-10-18 08:37:41', '2021-10-18 08:37:41'),
(33, 'Vinhomes Smart City', 'vinhomes-smart-city-pc51', 'undefined', '_self', 'productCategory', 51, 8, 5, '2021-10-18 08:37:41', '2021-10-18 08:37:41'),
(34, 'Vinhomes Skylake', 'vinhomes-skylake-pc49', 'undefined', '_self', 'productCategory', 49, 8, 6, '2021-10-18 08:37:41', '2021-10-18 08:37:41'),
(35, 'Vinhomes West Point', 'vinhomes-west-point-pc53', 'undefined', '_self', 'productCategory', 53, 8, 7, '2021-10-18 08:37:42', '2021-10-18 08:37:42'),
(36, 'The Matrix One', 'the-matrix-one-pc55', 'undefined', '_self', 'productCategory', 55, 10, 0, '2021-10-18 08:43:35', '2021-10-18 08:43:35'),
(37, 'Vinhomes Smart City', 'vinhomes-smart-city-pc57', 'undefined', '_self', 'productCategory', 57, 10, 1, '2021-10-18 08:43:35', '2021-10-18 08:43:35'),
(38, 'Vinhomes West Point', 'vinhomes-west-point-pc59', 'undefined', '_self', 'productCategory', 59, 10, 2, '2021-10-18 08:43:36', '2021-10-18 08:43:36'),
(39, 'Kinh nghiệm giao dịch BĐS', 'kinh-nghiem-giao-dich-bds-bc10', 'undefined', '_self', 'blogCategory', 10, 5, 1, '2021-11-26 10:17:54', '2022-06-02 02:37:26'),
(40, 'Thông tin thị trường', 'thong-tin-thi-truong-bc9', 'undefined', '_self', 'blogCategory', 9, 5, 0, '2021-11-26 10:17:55', '2021-11-26 10:17:55'),
(42, 'Chủ Đầu Tư', 'chu-dau-tu-bc5', 'undefined', '_self', 'blogCategory', 5, 5, 2, '2022-06-02 02:37:34', '2022-06-02 02:37:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_06_095610_create_product_cates_table', 1),
(5, '2020_07_06_095616_create_products_table', 1),
(6, '2020_07_06_095747_create_blog_cates_table', 1),
(7, '2020_07_06_095800_create_blogs_table', 1),
(8, '2020_07_06_095845_create_pages_table', 1),
(9, '2020_07_06_095913_create_menus_table', 1),
(10, '2020_07_06_101633_create_product_images_table', 1),
(11, '2020_07_11_114458_create_b_c_i_d_s_table', 1),
(12, '2020_07_11_124311_create_p_c_i_d_s_table', 1),
(13, '2020_07_15_101004_create_systems_table', 1),
(14, '2020_07_19_180327_create_contacts_table', 1),
(15, '2021_03_11_035924_create_orders_table', 1),
(16, '2021_03_11_040514_create_order_details_table', 1),
(17, '2021_03_15_021114_create_sliders_table', 1),
(18, '2021_03_31_070545_create_ads_table', 1),
(19, '2021_06_21_003952_create_chat_rooms_table', 1),
(20, '2021_06_21_004010_create_chat_messages_table', 1),
(21, '2021_10_07_202835_create_product_langs_table', 1),
(22, '2021_10_10_175041_create_product_categorie_langs_table', 1),
(23, '2021_10_10_175108_create_blog_categorie_langs_table', 1),
(24, '2021_10_10_175118_create_blog_langs_table', 1),
(25, '2021_10_13_143800_create_popups_table', 1),
(26, '2021_10_13_143932_create_kyguis_table', 1),
(27, '2021_10_13_143944_create_yeucaus_table', 1),
(28, '2021_10_13_151200_create_kygui_images_table', 1),
(29, '2021_10_18_073257_create_page_langs_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `messages` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orders_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(1) NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avata` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `name`, `title`, `content`, `seo_description`, `seo_keyword`, `url`, `display`, `lang`, `avata`, `created_at`, `updated_at`) VALUES
(1, 'Giới thiệu', 'Giới thiệu', '<p><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">C&ocirc;ng ty TNHH Bất Động Sản KKUMHOUSE l&agrave; một c&ocirc;ng ty hoạt động trong lĩnh vực m&ocirc;i giới bất động sản v&agrave; quản l&yacute; căn hộ. Th&agrave;nh lập từ năm 2019, l&agrave; đối t&aacute;c của nhiều tập đo&agrave;n BĐS lớn tại Việt Nam, ch&uacute;ng t&ocirc;i đặt mục ti&ecirc;u ph&aacute;t triển trở th&agrave;nh một trong những c&ocirc;ng ty h&agrave;ng đầu tr&ecirc;n thị trường Bất Động Sản.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"http://localhost:8000/uploads/images/blogs/Logo-01.png\" style=\"width:100%\" /><br />\r\n<br />\r\nKKUMHOUSE chuy&ecirc;n cung cấp c&aacute;c dịch vụ Bất động sản như Mua b&aacute;n- Cho thu&ecirc;- K&yacute; gửi để kh&aacute;ch h&agrave;ng c&oacute; nhiều lựa chọn khi đến với ch&uacute;ng t&ocirc;i.<br />\r\n<br />\r\nKKUMHOUSE- Locate your dream house: KKUMHOUSE lu&ocirc;n tập trung v&agrave;o việc định vị những sản phẩm tốt, ph&ugrave; hợp với mong muốn của qu&yacute; kh&aacute;ch h&agrave;ng, c&ugrave;ng kh&aacute;ch h&agrave;ng dựng x&acirc;y ng&ocirc;i nh&agrave; mơ ước của ri&ecirc;ng m&igrave;nh.<br />\r\nTầm nh&igrave;n:<br />\r\nC&ocirc;ng ty TNHH BĐS KKUMHOUSE lu&ocirc;n nỗ lực trở th&agrave;nh một doanh nghiệp bất động sản uy t&iacute;n, chuy&ecirc;n nghiệp v&agrave; thu h&uacute;t nhất tr&ecirc;n thị trường bất động sản trong v&agrave; ngo&agrave;i nước.<br />\r\nSứ mệnh:<br />\r\nĐối với kh&aacute;ch h&agrave;ng: c&aacute; nh&acirc;n h&oacute;a nhu cầu của từng kh&aacute;ch h&agrave;ng v&agrave; mang đến sản phẩm ph&ugrave; hợp nhất.<br />\r\nĐối với CBNV: x&acirc;y dựng đội ngũ CBNV chuy&ecirc;n nghiệp, uy t&iacute;n, chế độ ch&iacute;nh s&aacute;ch, lương thưởng tạo được sự gắn b&oacute; của CBNV với doanh nghiệp.<br />\r\nĐối với CĐT: vươn tới trở th&agrave;nh một trong những đối t&aacute;c chiến lược uy t&iacute;n, một đơn vị ph&acirc;n phối BĐS top đầu của c&aacute;c chủ đầu tư lớn tại Việt Nam.<br />\r\nĐối với cộng đồng: bảo vệ m&ocirc;i trường, cảnh quan thi&ecirc;n nhi&ecirc;n, đ&oacute;ng g&oacute;p t&iacute;ch cực cho c&aacute;c hoạt động mang t&iacute;nh nh&acirc;n văn x&atilde; hội.<br />\r\nGi&aacute; trị cốt l&otilde;i:<br />\r\nS&aacute;ng tạo: d&aacute;m nghĩ, d&aacute;m l&agrave;m, kh&ocirc;ng ngại thay đổi<br />\r\nCam kết: giữ lời hứa với kh&aacute;ch h&agrave;ng, CĐT v&agrave; cộng đồng<br />\r\nT&ocirc;n trọng: Lắng nghe v&agrave; chia sẻ c&aacute;c quan điểm kh&aacute;c nhau để ph&aacute;t triển<br />\r\nC&ocirc;ng bằng: đ&aacute;nh gi&aacute; v&agrave; h&agrave;nh xử dựa tr&ecirc;n sự kiện, kh&ocirc;ng thi&ecirc;n vị</span></span></p>', 'Giới thiệu', 'Giới thiệu', 'gioi-thieu-pa1', 1, 'vi', 'congvien-16333300232181621056586.jpg', '2021-10-18 01:19:26', '2021-11-22 21:40:04'),
(2, '회사소개', '회사소개', '<p>꿈하우스 부동산 유한 책임회사는 부동산 중개 및 아파트 관리 분야에서 활동하는 회사입니다. 2019년에 설립되어 베트남의 많은 대형 부동산 그룹의 파트너이며 저희는 부동산 시장을 선도하는 회사로 성장하는 것을 목표로 하고 있습니다.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/uploads/images/blogs/Logo-03.png\" style=\"width:100%\" /><br />\r\n<br />\r\n꿈하우스는 고객님이 찾아오실 때 선택의 폭이 넓어지도록 부동산매매, 임대, 위탁 등 부동산 서비스를 제공합니다.<br />\r\n<br />\r\n꿈하우스- 꿈의 하우스를 찾아드림: 저희는 고객이 원하는 좋은 제품을 찾는 것과 고객님과 함께 꿈의 하우스를 만드는 것을 집중합니다.<br />\r\n<br />\r\n비전:<br />\r\n꿈하우스 부동산 유한 책임회사는 국내외 부동산 시장에서 가장 권위 있고 전문적이며 유치한 부동산 기업이 되기 위해 항상 노력하고 있습니다.<br />\r\n미션:<br />\r\n고객을 위해: 각 고객의 요구를 개인화하고 가장 적합한 제품을 가져옵니다.<br />\r\n직원을 위해: 전문적이고 신뢰적인 직원들을 건설하고 정책, 급여 및 보너스로를 만들여 직원이 기업에게 애착을 가질 수 있도록 합니다.<br />\r\n투자자를 위해: 베트남의 큰 투자자들의 최고의 부동산 유통 단위인 권위 있는 전략적 파트너 중 하나가 되기 위해 손을 뻗습니다.<br />\r\n사회를 위해: 환경, 자연 경관을 보호하고 사회적인 활동에 긍정적인 기여를 합니다.<br />\r\n핵심 가치:<br />\r\n창조: 감히 생각하고, 감히 행동하고, 변화를 두려워하지 않습니다.<br />\r\n약속: 고객, 투자자 및 사회와 약속을 지킵니다.<br />\r\n존중: 개발을 위한 다양한 관점의 경청하고 공유합니다.<br />\r\n공정: 편견 없이며 사실에 근거하여 판단하고 행동하는 것입니다.</p>', '회사소개', '회사소개', '회사소개-pa2', 1, 'ko', NULL, '2021-10-18 01:22:16', '2021-10-18 01:54:28'),
(3, 'Bảng giá Vinhomes West Point - Quỹ căn chuyển nhượng mới nhất 2021', 'Bảng giá Vinhomes West Point - Quỹ căn chuyển nhượng mới nhất 2021', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Dự &aacute;n chung cư Vinhomes West Point được quy hoạnh với 3 t&ograve;a W1, W2, W3 cao cấp, v&agrave; t&ograve;a văn ph&ograve;ng hạng A ngay ng&atilde; tư Đỗ Đức Dục- Phạm H&ugrave;ng- vị tr&iacute; v&agrave;ng trong trung t&acirc;m đ&ocirc; thị mới H&agrave; Nội. Dự &aacute;n đ&atilde; ch&iacute;nh thức hoạt động v&agrave; được quản l&yacute; v&agrave; vận h&agrave;nh trực tiếp bởi Vinhomes, c&aacute;c dịch vụ v&agrave; tiện &iacute;ch đi k&egrave;m lu&ocirc;n được cam kết chất lượng chuẩn nhất. Hệ thống an ninh 4 lớp tạo n&ecirc;n sự an t&acirc;m của cư d&acirc;n Vinhomes West Point&nbsp;Ch&iacute;nh v&igrave; vậy, đ&acirc;y l&agrave; dự &aacute;n căn hộ được quan t&acirc;m nhất hiện nay.<br />\r\nBảng h&agrave;ng căn hộ chuyển nhượng Vinhomes Westpoint &quot;hot&quot; nhất thị trường, mức gi&aacute; hấp dẫn, c&oacute; hỗ trợ dịch vụ ph&aacute;p l&yacute; sau khi k&yacute; hợp đồng mua b&aacute;n th&agrave;nh c&ocirc;ng. Li&ecirc;n hệ ngay HOTLINE:0888.851.098 để nhận tư vấn nhanh nhất.</span></span></p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:20px\"><strong>Bảng gi&aacute; chuyển nhượng&nbsp;Vinhomes West Point T11/2021</strong></span></span></h2>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"height:100%; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#000066; text-align:center; vertical-align:middle\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\"><span style=\"color:#ffffff\">T&ograve;a</span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#000066; text-align:center; vertical-align:middle\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\"><span style=\"color:#ffffff\">M&atilde; căn</span></span></span></td>\r\n			<td style=\"background-color:#000066; text-align:center; vertical-align:middle\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\"><span style=\"color:#ffffff\">Ph&ograve;ng ngủ</span></span></span></td>\r\n			<td style=\"background-color:#000066; text-align:center; vertical-align:middle\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\"><span style=\"color:#ffffff\">DT th&ocirc;ng thủy&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:#000066; text-align:center; vertical-align:middle\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\"><span style=\"color:#ffffff\">Hướng BC&nbsp;</span></span></span></td>\r\n			<td style=\"background-color:#000066; text-align:center; vertical-align:middle\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\"><span style=\"color:#ffffff\">Nội thất</span></span></span></td>\r\n			<td style=\"background-color:#000066; text-align:center; vertical-align:middle\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\"><span style=\"color:#ffffff\">Gi&aacute; b&aacute;n</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W1</span></span></td>\r\n			<td style=\"background-color:#ffffff\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx10</span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Studio + Studio</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">63.8m2</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">ĐN/TB</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Full</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">4,000,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W1</span></span></td>\r\n			<td style=\"background-color:#ffffff\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx01</span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2+1</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">95.6m2m2</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">ĐN/TB</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Full</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">4,200,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W1</span></span></td>\r\n			<td style=\"background-color:#ffffff\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx01</span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2+1</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">95.6m2</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">ĐN/TB</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">CB</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">4,365,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W1</span></span></td>\r\n			<td style=\"background-color:#ffffff\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx02</span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2+1</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">100.8m2</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">TN/ĐB.TB</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Full</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">4,900,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W1</span></span></td>\r\n			<td style=\"background-color:#ffffff\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx05</span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">3 PN</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">84.9m2</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">TB/ĐN</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Full</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">4,800,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W1</span></span></td>\r\n			<td style=\"background-color:#ffffff\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx03</span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2+2</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">122.10m2</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">TN/ĐB-ĐN</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">CB</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">6,440,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W1</span></span></td>\r\n			<td style=\"background-color:#ffffff\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx08A</span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2 PN</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">62,7m2</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">TB/ĐN</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Full</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">3,200,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W1</span></span></td>\r\n			<td style=\"background-color:#ffffff\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx03</span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2 PN</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">122.3m2</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">TN/ĐB-ĐN</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Full</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">6,440,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W1</span></span></td>\r\n			<td style=\"background-color:#ffffff\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx08A</span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2 PN</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">62,7m2</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">TB/ĐN</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Full</span></span></td>\r\n			<td style=\"background-color:#ffffff; text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">3,150,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W2</span></span></td>\r\n			<td>\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx11</span></span></p>\r\n			</td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Studio</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">33.5m2</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">TB/ĐN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">CB</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2,400,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W2</span></span></td>\r\n			<td>\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx11</span></span></p>\r\n			</td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2 PN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">63.7m2</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">TB/ĐN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Full</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">3,990,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W2</span></span></td>\r\n			<td>\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx01</span></span></p>\r\n			</td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">3PN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">88.7m2</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">TB/ĐN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">CB</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">5,600,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W2</span></span></td>\r\n			<td>\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx01</span></span></p>\r\n			</td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">3PN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">88.7m2</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">TB/ĐN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">CB</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">5,900,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W2</span></span></td>\r\n			<td>\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx08</span></span></p>\r\n			</td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">3PN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">97.5m2</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">ĐN/TB</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Full</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">5,200,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W2</span></span></td>\r\n			<td>\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx09</span></span></p>\r\n			</td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">3PN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">96.3m2</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">ĐB/TB</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">CB</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">6,200,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W3</span></span></td>\r\n			<td>\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx05</span></span></p>\r\n			</td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2PN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">60.6m2</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">ĐB/TN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Full</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">3,500,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W3</span></span></td>\r\n			<td>\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx15A</span></span></p>\r\n			</td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2PN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">60.7m2</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">TN/ĐB</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Full</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">3,350,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W3</span></span></td>\r\n			<td>\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx15A</span></span></p>\r\n			</td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2PN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">60.7m2</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">ĐB/TN-ĐN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">CB</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">3,200,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W3</span></span></td>\r\n			<td>\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx08</span></span></p>\r\n			</td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2PN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">67.9m2</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">ĐB/TN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Full</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">3,835,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W3</span></span></td>\r\n			<td>\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx10</span></span></p>\r\n			</td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Studio</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">31.9m2</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">ĐB/TN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Full</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2,383,900,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W3</span></span></td>\r\n			<td>\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx10</span></span></p>\r\n			</td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Studio</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">31.9m2</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">ĐB/TN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Full</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2,100,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W3</span></span></td>\r\n			<td>\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx10</span></span></p>\r\n			</td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Studio</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">31.9m2</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">ĐB/TN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">CB</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">1,690,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W3</span></span></td>\r\n			<td>\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx01</span></span></p>\r\n			</td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Studio</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">34.9m2</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">TN/ĐN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Full</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2,400,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W3</span></span></td>\r\n			<td>\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx10</span></span></p>\r\n			</td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Studio</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">31.9m2</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">ĐB/TN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Full</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2,100,000,000</span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">W3</span></span></td>\r\n			<td>\r\n			<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">xx01</span></span></p>\r\n			</td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Studio</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">34.9m2</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">TN/ĐN</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">Full</span></span></td>\r\n			<td style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:12px\">2,300,000,000</span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\">&nbsp;<em>Lưu &yacute;: Ngo&agrave;i gi&aacute; b&aacute;n ở tr&ecirc;n, kh&aacute;ch h&agrave;ng mua kh&ocirc;ng phải chi trả th&ecirc;m bất cứ khoản ph&iacute;, thuế n&agrave;o</em></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"2\" cellspacing=\"1\" style=\"height:100%; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#000066; vertical-align:bottom; width:30%\">\r\n			<p><span style=\"color:#ffffff\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\"><strong>1. Nội thất cơ bản gồm:&nbsp; &nbsp;&nbsp;</strong></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#000066; vertical-align:bottom; width:40%\">\r\n			<p><span style=\"color:#ffffff\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\"><strong>2. Nội thất ho&agrave;n thiện (đủ đồ) gồm:</strong></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:left; vertical-align:top; width:40%\">\r\n			<ul>\r\n				<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Trần, S&agrave;n gỗ, Điều ho&agrave; &acirc;m trần</span></span></li>\r\n				<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Đầy đủ thiết bị nh&agrave; vệ sinh (tuỳ từng căn sẽ c&oacute; bồn tắm )</span></span></li>\r\n				<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Bếp từ, h&uacute;t m&ugrave;i, Chậu rửa; Tủ bếp</span></span></li>\r\n				<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Tủ &acirc;m tường ph&ograve;ng ngủ; Cửa gỗ, Đ&egrave;n trần c&aacute;c ph&ograve;ng</span></span></li>\r\n				<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Chu&ocirc;ng cửa hiển thị h&igrave;nh ảnh, Kho&aacute; cửa ch&iacute;nh v&acirc;n tay</span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"width:40%\">\r\n			<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\"><strong>Ph&ograve;ng kh&aacute;ch&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></span></span></p>\r\n\r\n			<ul>\r\n				<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Tivi; Bộ b&agrave;n ghế sofa;</span></span></li>\r\n				<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Kệ, đồ trang tr&iacute; ph&ograve;ng kh&aacute;ch;</span></span></li>\r\n				<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Đ&egrave;n ch&ugrave;m/quạt trần; R&egrave;m</span></span></li>\r\n			</ul>\r\n\r\n			<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\"><strong>Ph&ograve;ng ăn/bếp:</strong></span></span></p>\r\n\r\n			<ul>\r\n				<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Bộ b&agrave;n ghế ăn;</span></span></li>\r\n				<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Đ&egrave;n ch&ugrave;m;</span></span></li>\r\n				<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">L&ograve; vi s&oacute;ng/l&ograve; nướng;</span></span></li>\r\n				<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Tủ lạnh</span></span></li>\r\n			</ul>\r\n\r\n			<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\"><strong>Ph&ograve;ng ngủ:</strong></span></span></p>\r\n\r\n			<ul>\r\n				<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Giường, Đệm + chăn, ga, gối;</span></span></li>\r\n				<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Tủ đầu giường;</span></span></li>\r\n				<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Đ&egrave;n ngủ; R&egrave;m</span></span></li>\r\n			</ul>\r\n\r\n			<p><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\"><strong>Thiết bị kh&aacute;c:&nbsp;</strong>M&aacute;y giặt, D&agrave;n phơi&nbsp;&nbsp;</span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><a class=\"simple-button-plugin\" data-target=\".bd-example-modal-contact\" data-toggle=\"modal\" href=\"#\" style=\"display: inline-block; background-color: rgb(184, 0, 0); border: 1px solid rgb(184, 0, 0); padding: 5px 10px; border-radius: 5px; font-size: 14px; cursor: pointer; color: rgb(255, 255, 255) !important; text-decoration: none !important;\" target=\"_self\">Nhận trọn bộ bảng gi&aacute;</a></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:20px\"><strong>H&igrave;nh ảnh thực tế căn hộ Vinhome West Point</strong></span></span></p>\r\n\r\n<table border=\"0\" cellpadding=\"3\" cellspacing=\"1\" style=\"height:100%; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"bang-gia-vinhomes-westpoint-can-ho-mau\" src=\"https://kkumhouse.vn/public/uploads/images/Ban-cong-view-Grand-plaza-1100x619.jpg\" style=\"height:100%; width:100%\" /></span></td>\r\n			<td><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/5.jpg\" style=\"height:100%; width:100%\" /></span></td>\r\n			<td><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"Bang-gia-vinhomes-westpoint-can-ho-mau\" src=\"https://kkumhouse.vn/public/uploads/images/8.jpg\" style=\"height:100%; width:100%\" /></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/B%E1%BA%A3ng-gi%C3%A1-vinhomes-westpoint-view-phong-khach.jpg\" style=\"height:100%; width:100%\" /></span></td>\r\n			<td><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/Bang-gia-vinhomes-westpoint-bep.jpg\" style=\"height:100%; width:100%\" /></span></td>\r\n			<td><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://kkumhouse.vn/public/uploads/images/Bang-gia-Vinhomes-Westpoint-nha-ve-sinh.jpg\" style=\"height:100%; width:100%\" /></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Cam kết của KKUMHOUSE:</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Cung cấp th&ocirc;ng tin nhanh ch&oacute;ng v&agrave; cập nhật mới nhất từ chủ đầu tư</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Cung cấp bảng gi&aacute; gốc, ph&ugrave; hợp với ng&acirc;n s&aacute;ch</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Hỗ trợ l&agrave;m thủ tục nhanh ch&oacute;ng, trước v&agrave; sau b&aacute;n h&agrave;ng l&acirc;u d&agrave;i</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Kh&ocirc;ng thu th&ecirc;m bất cứ khoản ph&iacute; n&agrave;o</span></span></li>\r\n</ul>\r\n\r\n<div style=\"page-break-after: always\"><span style=\"display: none;\">&nbsp;</span></div>\r\n\r\n<p>&nbsp;</p>', 'Bảng giá Vinhomes West Point - Quỹ căn chuyển nhượng mới nhất 2021', 'Bảng giá Vinhomes West Point - Quỹ căn chuyển nhượng mới nhất 2021', 'bang-gia-vinhomes-west-point-quy-can-chuyen-nhuong-moi-nhat-2021-pa3', 1, 'vi', NULL, '2021-11-12 10:38:01', '2021-11-15 01:50:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_langs`
--

CREATE TABLE `page_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `page_lang_id` bigint(20) NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_langs`
--

INSERT INTO `page_langs` (`id`, `page_id`, `page_lang_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'ko', '2021-10-18 01:22:16', '2021-10-18 01:22:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pcids`
--

CREATE TABLE `pcids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pcids`
--

INSERT INTO `pcids` (`id`, `product_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(310, 140, 1, '2021-11-27 03:44:11', '2021-11-27 03:44:11'),
(311, 140, 39, '2021-11-27 03:44:11', '2021-11-27 03:44:11'),
(312, 141, 2, '2021-11-27 03:45:56', '2021-11-27 03:45:56'),
(313, 141, 40, '2021-11-27 03:45:56', '2021-11-27 03:45:56'),
(314, 142, 1, '2021-11-27 09:53:21', '2021-11-27 09:53:21'),
(315, 143, 2, '2021-11-27 09:55:18', '2021-11-27 09:55:18'),
(328, 150, 1, '2021-11-29 08:06:49', '2021-11-29 08:06:49'),
(329, 150, 49, '2021-11-29 08:06:49', '2021-11-29 08:06:49'),
(330, 151, 2, '2021-11-29 08:07:49', '2021-11-29 08:07:49'),
(331, 151, 50, '2021-11-29 08:07:49', '2021-11-29 08:07:49'),
(370, 171, 1, '2021-12-03 08:45:29', '2021-12-03 08:45:29'),
(371, 171, 53, '2021-12-03 08:45:29', '2021-12-03 08:45:29'),
(372, 172, 2, '2021-12-03 08:46:41', '2021-12-03 08:46:41'),
(373, 172, 54, '2021-12-03 08:46:41', '2021-12-03 08:46:41'),
(374, 173, 1, '2021-12-07 04:42:03', '2021-12-07 04:42:03'),
(375, 173, 53, '2021-12-07 04:42:03', '2021-12-07 04:42:03'),
(376, 174, 3, '2021-12-11 05:44:54', '2021-12-11 05:44:54'),
(377, 174, 9, '2021-12-11 05:44:54', '2021-12-11 05:44:54'),
(378, 175, 4, '2021-12-11 07:29:27', '2021-12-11 07:29:27'),
(379, 175, 10, '2021-12-11 07:29:27', '2021-12-11 07:29:27'),
(380, 176, 3, '2021-12-11 08:06:20', '2021-12-11 08:06:20'),
(381, 176, 9, '2021-12-11 08:06:20', '2021-12-11 08:06:20'),
(382, 177, 4, '2021-12-11 08:17:22', '2021-12-11 08:17:22'),
(383, 177, 10, '2021-12-11 08:17:22', '2021-12-11 08:17:22'),
(384, 178, 3, '2021-12-11 10:02:42', '2021-12-11 10:02:42'),
(385, 178, 9, '2021-12-11 10:02:42', '2021-12-11 10:02:42'),
(386, 179, 4, '2021-12-11 10:06:00', '2021-12-11 10:06:00'),
(387, 179, 10, '2021-12-11 10:06:00', '2021-12-11 10:06:00'),
(388, 180, 3, '2021-12-11 11:13:11', '2021-12-11 11:13:11'),
(389, 180, 35, '2021-12-11 11:13:11', '2021-12-11 11:13:11'),
(390, 181, 4, '2021-12-11 11:17:29', '2021-12-11 11:17:29'),
(391, 181, 36, '2021-12-11 11:17:29', '2021-12-11 11:17:29'),
(392, 182, 3, '2021-12-12 03:30:40', '2021-12-12 03:30:40'),
(393, 182, 21, '2021-12-12 03:30:40', '2021-12-12 03:30:40'),
(394, 183, 4, '2021-12-12 03:37:12', '2021-12-12 03:37:12'),
(395, 183, 22, '2021-12-12 03:37:12', '2021-12-12 03:37:12'),
(396, 184, 3, '2021-12-16 08:59:56', '2021-12-16 08:59:56'),
(397, 184, 9, '2021-12-16 08:59:56', '2021-12-16 08:59:56'),
(398, 185, 4, '2021-12-16 09:17:04', '2021-12-16 09:17:04'),
(399, 185, 10, '2021-12-16 09:17:04', '2021-12-16 09:17:04'),
(400, 186, 3, '2021-12-16 09:23:57', '2021-12-16 09:23:57'),
(401, 186, 9, '2021-12-16 09:23:57', '2021-12-16 09:23:57'),
(402, 187, 4, '2021-12-16 09:33:27', '2021-12-16 09:33:27'),
(403, 187, 10, '2021-12-16 09:33:27', '2021-12-16 09:33:27'),
(404, 188, 3, '2021-12-16 09:38:36', '2021-12-16 09:38:36'),
(405, 188, 9, '2021-12-16 09:38:36', '2021-12-16 09:38:36'),
(406, 189, 4, '2021-12-16 09:44:38', '2021-12-16 09:44:38'),
(407, 189, 10, '2021-12-16 09:44:38', '2021-12-16 09:44:38'),
(408, 190, 3, '2021-12-16 10:04:11', '2021-12-16 10:04:11'),
(409, 190, 21, '2021-12-16 10:04:11', '2021-12-16 10:04:11'),
(410, 191, 4, '2021-12-16 10:10:11', '2021-12-16 10:10:11'),
(411, 191, 22, '2021-12-16 10:10:11', '2021-12-16 10:10:11'),
(412, 192, 3, '2021-12-19 09:34:30', '2021-12-19 09:34:30'),
(413, 192, 9, '2021-12-19 09:34:30', '2021-12-19 09:34:30'),
(414, 193, 4, '2021-12-19 09:37:40', '2021-12-19 09:37:40'),
(415, 193, 10, '2021-12-19 09:37:40', '2021-12-19 09:37:40'),
(419, 197, 1, '2021-12-29 07:36:17', '2021-12-29 07:36:17'),
(420, 197, 53, '2021-12-29 07:36:17', '2021-12-29 07:36:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `popups`
--

CREATE TABLE `popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `href` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `short_description` longtext COLLATE utf8mb4_unicode_ci,
  `seo_description` longtext COLLATE utf8mb4_unicode_ci,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(1) NOT NULL,
  `avata` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `tiente` tinyint(1) NOT NULL DEFAULT '0',
  `bed` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bath` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `nt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `huong` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale` bigint(20) DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highlight` tinyint(1) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `lbds` tinyint(1) DEFAULT NULL,
  `da` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ma` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `title`, `content`, `short_description`, `seo_description`, `seo_keyword`, `url`, `display`, `avata`, `price`, `tiente`, `bed`, `bath`, `area`, `nt`, `huong`, `sale`, `lang`, `highlight`, `view`, `lbds`, `da`, `ma`, `created_at`, `updated_at`) VALUES
(140, 6, 'Chuyển nhượng căn hộ d\'Capitale 3 ngủ nội thất đầy đủ', 'Chuyển nhượng căn hộ d\'Capitale 3 ngủ nội thất đầy đủ', '<p><strong>추가 정보:</strong></p>\r\n\r\n<p>2021년6월에 공사 완료</p>\r\n\r\n<p>핑크북 발행되었음</p>\r\n\r\n<p>전매가격: 97억동</p>\r\n\r\n<p>(모든 비용 포함)</p>', '<p>디캐피탈 외국인을 위한 전매 매물</p>\r\n\r\n<p>C3동-고층 방3개 화장실2개 최고급 인테리어</p>\r\n\r\n<p><strong>5-star 고급 내부 시설: </strong></p>\r\n\r\n<p>수영장, 운동장, 산책길,</p>\r\n\r\n<p>놀이터, 요가, 헬스장,</p>\r\n\r\n<p>행사 계죄 구역, BBQ 구역,</p>\r\n\r\n<p>Vinschool 국제학교, Vinmec 진료소, Vincom Center 쇼핑몰</p>', 'Chuyển nhượng căn hộ d\'Capitale 3 ngủ nội thất đầy đủ', 'Chuyển nhượng căn hộ d\'Capitale 3 ngủ nội thất đầy đủ', 'Chuyển nhượng căn hộ d\'Capitale 3 ngủ nội thất đầy đủ-pi140', 0, '디캐피탈매매 ㅈ듀.jpg.jpg', 9700000000, 0, '3PN', 2, 122, 'Full', 'Tây Nam - Tây Bắc', NULL, 'vi', 0, 247, 0, 'Vinhomes D\'capitale', 'DC01529', '2021-11-27 03:44:11', '2021-11-27 09:57:26'),
(141, 6, 'D\'CAPITALE 디캐피탈 새집 - 외국인을 위한 전매 매물 - 최고급 인테리어 방3개 풀옵션 하노이 아파트 (꿈하우스 부동산)', 'D\'CAPITALE 디캐피탈 새집 - 외국인을 위한 전매 매물 - 최고급 인테리어 방3개 풀옵션 하노이 아파트 (꿈하우스 부동산)', '<p>디캐피탈 C3동 방3개 화장실2개 최고급 인테리어 전매 정보입니다.</p>\r\n\r\n<p>벽심면적: 121.96스퀘어 ~ 36.89평</p>\r\n\r\n<p id=\"SE-37cb33ae-902e-4b39-b20f-d29868ff8ed6\">사용면적: 109.05스퀘어 ~ 32.98평</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>5-star 고급 내부 시설: </strong></p>\r\n\r\n<p>수영장, 운동장, 산책길,</p>\r\n\r\n<p>놀이터, 요가, 헬스장,</p>\r\n\r\n<p>행사 계죄 구역, BBQ 구역,</p>\r\n\r\n<p>Vinschool 국제학교, Vinmec 진료소, Vincom Center 쇼핑몰</p>\r\n\r\n<hr />\r\n<p><strong>추가정보:</strong></p>\r\n\r\n<p>①&nbsp;2021년6월에 공사 완료되는 새집</p>\r\n\r\n<p>②&nbsp;핑크북 발했되었음</p>\r\n\r\n<p>③&nbsp;전매가: 97억동 (모든 비용 포함)</p>\r\n\r\n<p><strong>계약조건:</strong></p>\r\n\r\n<p>① &nbsp;명확한 법적 서류</p>\r\n\r\n<p>②&nbsp;&nbsp;소유주와&nbsp;직접 계약</p>\r\n\r\n<p>③&nbsp;&nbsp;1억동 보증금</p>\r\n\r\n<p>④&nbsp;&nbsp;전매 절차에 빠르고 간단하고 전문적임</p>', NULL, 'D\'CAPITALE 디캐피탈 새집 - 외국인을 위한 전매 매물 - 최고급 인테리어 방3개 풀옵션 하노이 아파트 (꿈하우스 부동산)', 'D\'CAPITALE 디캐피탈 새집 - 외국인을 위한 전매 매물 - 최고급 인테리어 방3개 풀옵션 하노이 아파트 (꿈하우스 부동산)', 'D\'CAPITALE 디캐피탈 새집 - 외국인을 위한 전매 매물 - 최고급 인테리어 방3개 풀옵션 하노이 아파트 (꿈하우스 부동산)-pi141', 1, '디캐피탈매매 ㅈ듀.jpg.jpg', 421739, 1, '3PN', 2, 122, 'Full', 'Tây Nam - Tây Bắc', NULL, 'ko', 0, 377, 0, 'Vinhomes D\'capitale', 'DC01529', '2021-11-27 03:45:56', '2021-11-27 09:56:56'),
(142, 6, 'Chuyển nhượng căn hộ mỹ đình pearl 3 ngủ cơ bản', 'Chuyển nhượng căn hộ mỹ đình pearl 3 ngủ cơ bản', '<p>미딩펄 방3개 노옵션 (붙박이 인테리어&nbsp;기본옵션으로 판매)</p>\r\n\r\n<p id=\"SE-a8032e60-a696-4898-9727-77e29711fd0e\">벽심면적: 90.45스퀘어 ~ 27.36평</p>\r\n\r\n<p id=\"SE-37cb33ae-902e-4b39-b20f-d29868ff8ed6\">사용면적: 81.53스퀘어 ~ 24.66평</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p id=\"SE-e03bf910-ee4a-4643-986d-a12a810a399f\"><b>유틸리티:</b></p>\r\n\r\n<p id=\"SE-3e0653bf-d245-4d0e-b870-3dc83744d98a\">수영장, 헬수장,</p>\r\n\r\n<p>골프장, 놀이터,</p>\r\n\r\n<p>쇼핑몰, 바베큐장.</p>\r\n\r\n<hr />\r\n<p><strong>추가정보:</strong></p>\r\n\r\n<p>①&nbsp;핑크북 발했되었음</p>\r\n\r\n<p>③&nbsp;전매가: 42억동 (모든 비용 포함)</p>\r\n\r\n<p><strong>계약조건:</strong></p>\r\n\r\n<p>① &nbsp;명확한 법적 서류</p>\r\n\r\n<p>②&nbsp;&nbsp;소유주와&nbsp;직접 계약</p>\r\n\r\n<p>③&nbsp;&nbsp;1억동 보증금</p>\r\n\r\n<p>④&nbsp;&nbsp;전매 절차에 빠르고 간단하고 전문적임</p>', NULL, 'MDP00137', 'MDP00137', 'MDP00137-pi142', 0, '미딩펄매매.jpg.jpg', 182600, 1, '3PN', 2, 90, 'Cơ bản', 'Tây, Nam', NULL, 'vi', 0, 249, 0, 'Mỹ Đình Pearl', 'MDP00137', '2021-11-27 09:53:21', '2021-11-27 09:53:24'),
(143, 6, 'MY DINH PEARL 미딩펄  방3개 노옵션 - 외국인을 위한 전매 매물 -  하노이 아파트 (꿈하우스 부동산)', 'MY DINH PEARL 미딩펄  방3개 노옵션 - 외국인을 위한 전매 매물 -  하노이 아파트 (꿈하우스 부동산)', '<p>미딩펄 방3개 노옵션 (붙박이 인테리어&nbsp;기본옵션으로 판매)</p>\r\n\r\n<p id=\"SE-a8032e60-a696-4898-9727-77e29711fd0e\">벽심면적: 90.45스퀘어 ~ 27.36평</p>\r\n\r\n<p id=\"SE-37cb33ae-902e-4b39-b20f-d29868ff8ed6\">사용면적: 81.53스퀘어 ~ 24.66평</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p id=\"SE-e03bf910-ee4a-4643-986d-a12a810a399f\"><b>유틸리티:</b></p>\r\n\r\n<p id=\"SE-3e0653bf-d245-4d0e-b870-3dc83744d98a\">수영장, 헬수장,</p>\r\n\r\n<p>골프장, 놀이터,</p>\r\n\r\n<p>쇼핑몰, 바베큐장.</p>\r\n\r\n<hr />\r\n<p><strong>추가정보:</strong></p>\r\n\r\n<p>①&nbsp;핑크북 발행되었음</p>\r\n\r\n<p>③&nbsp;전매가: 42억동 (모든 비용 포함)</p>\r\n\r\n<p><strong>계약조건:</strong></p>\r\n\r\n<p>① &nbsp;명확한 법적 서류</p>\r\n\r\n<p>②&nbsp;&nbsp;소유주와&nbsp;직접 계약</p>\r\n\r\n<p>③&nbsp;&nbsp;1억동 보증금</p>\r\n\r\n<p>④&nbsp;&nbsp;전매 절차에 빠르고 간단하고 전문적임</p>', NULL, 'MY DINH PEARL 미딩펄  방3개 노옵션 - 외국인을 위한 전매 매물 -  하노이 아파트 (꿈하우스 부동산)', 'MY DINH PEARL 미딩펄  방3개 노옵션 - 외국인을 위한 전매 매물 -  하노이 아파트 (꿈하우스 부동산)', 'my-dinh-pearl-미딩펄-방3개-노옵션-외국인을-위한-전매-매물-하노이-아파트-꿈하우스-부동산-pi143', 1, '미딩펄매매.jpg.jpg', 182600, 1, '3PN', 2, 90, 'Cơ bản', 'Tây, Nam', NULL, 'ko', 0, 175, 0, 'Mỹ Đình Pearl', 'MDP00137', '2021-11-27 09:55:18', '2021-12-02 08:37:05'),
(150, 6, 'Chuyển Nhượng Căn Hộ Vinhomes Skylake 2 Ngủ Nội Thất Đầy Đủ', 'Chuyển Nhượng Căn Hộ Vinhomes Skylake 2 Ngủ Nội Thất Đầy Đủ', '<p>빈홈 스카이레이크&nbsp;S3동 방2개 화장실2개 가장 좋은 전매 가격</p>\r\n\r\n<p>면적: 70스퀘어 ~ 21.17평</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>추가정보:</strong></p>\r\n\r\n<p>①&nbsp;고층, 더매너 뷰</p>\r\n\r\n<p>②&nbsp;전매가: 40억동 (모든 비용 포함)</p>\r\n\r\n<hr />\r\n<p id=\"SE-5ce71f0d-f100-4802-bc82-4c04f37bff18\"><strong>다양한 유틸리티:</strong></p>\r\n\r\n<p id=\"SE-d9835940-5db1-4e13-9967-ca0cc0d9eb1a\">녹색 공간: 호수와 공원,&nbsp;녹색 산책길,</p>\r\n\r\n<p>스카이풀 야외 수영장, 야외 카페바,</p>\r\n\r\n<p>놀이터, 헬스장, 극장, 실내 사계절 수영장.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>계약조건:</strong></p>\r\n\r\n<p>① &nbsp;명확한 법적 서류</p>\r\n\r\n<p>②&nbsp;&nbsp;소유주와&nbsp;직접 계약</p>\r\n\r\n<p>③&nbsp;&nbsp;1억동 보증금</p>\r\n\r\n<p>④&nbsp;&nbsp;전매 절차에 빠르고 간단하고 전문적임</p>', NULL, 'Chuyển Nhượng Căn Hộ Vinhomes Skylake 2 Ngủ Nội Thất Đầy Đủ', 'Chuyển Nhượng Căn Hộ Vinhomes Skylake 2 Ngủ Nội Thất Đầy Đủ', 'Chuyển Nhượng Căn Hộ Vinhomes Skylake 2 Ngủ Nội Thất Đầy Đủ-pi150', 0, 'z2969577991414_007ae1d73dbd123c6ce68af73daee22f.jpg.jpg', 173900, 1, '2PN', 2, 70, 'Full', 'Tây, Nam', NULL, 'vi', 0, 165, 0, 'Vinhomes Skylake', 'SKL01383', '2021-11-29 08:06:49', '2021-11-29 08:06:51'),
(151, 6, 'VINHOMES SKYLAKE 빈홈 스카이레이크 40억동 외국인을 위한 전매 매물 - 방2개 풀옵션 하노이 아파트 (꿈하우스 부동산)', 'VINHOMES SKYLAKE 빈홈 스카이레이크 40억동 외국인을 위한 전매 매물 - 방2개 풀옵션 하노이 아파트 (꿈하우스 부동산)', '<p>빈홈 스카이레이크&nbsp;S3동 방2개 화장실2개 가장 좋은 전매 가격</p>\r\n\r\n<p>면적: 70스퀘어 ~ 21.17평</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>추가정보:</strong></p>\r\n\r\n<p>①&nbsp;고층, 더매너 뷰</p>\r\n\r\n<p>②&nbsp;전매가: 40억동 (모든 비용 포함)</p>\r\n\r\n<hr />\r\n<p id=\"SE-5ce71f0d-f100-4802-bc82-4c04f37bff18\"><strong>다양한 유틸리티:</strong></p>\r\n\r\n<p id=\"SE-d9835940-5db1-4e13-9967-ca0cc0d9eb1a\">녹색 공간: 호수와 공원,&nbsp;녹색 산책길,</p>\r\n\r\n<p>스카이풀 야외 수영장, 야외 카페바,</p>\r\n\r\n<p>놀이터, 헬스장, 극장, 실내 사계절 수영장.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>계약조건:</strong></p>\r\n\r\n<p>① &nbsp;명확한 법적 서류</p>\r\n\r\n<p>②&nbsp;&nbsp;소유주와&nbsp;직접 계약</p>\r\n\r\n<p>③&nbsp;&nbsp;1억동 보증금</p>\r\n\r\n<p>④&nbsp;&nbsp;전매 절차에 빠르고 간단하고 전문적임</p>', NULL, 'VINHOMES SKYLAKE 빈홈 스카이레이크 40억동 외국인을 위한 전매 매물 - 방2개 풀옵션 하노이 아파트 (꿈하우스 부동산)', 'VINHOMES SKYLAKE 빈홈 스카이레이크 40억동 외국인을 위한 전매 매물 - 방2개 풀옵션 하노이 아파트 (꿈하우스 부동산)', 'vinhomes-skylake-빈홈-스카이레이크-40억동-외국인을-위한-전매-매물-방2개-풀옵션-하노이-아파트-꿈하우스-부동산-pi151', 1, 'z2969577991414_007ae1d73dbd123c6ce68af73daee22f.jpg.jpg', 173900, 1, '2PN', 2, 70, 'Full', 'Tây, Nam', NULL, 'ko', 0, 163, 0, 'Vinhomes Skylake', 'SKL01383', '2021-11-29 08:07:49', '2021-11-29 08:07:49'),
(171, 6, 'Chuyển nhượng căn hộ vinhomes west point 4 ngủ cơ bản', 'Chuyển nhượng căn hộ vinhomes west point 4 ngủ cơ bản', '<p>빈홈 웨스트포인트 방4개 - 외국인을 위한 전매 매물 - 유일한 집</p>\r\n\r\n<p id=\"SE-a8032e60-a696-4898-9727-77e29711fd0e\">벽심면적: 133.5스퀘어 ~ 40.38평</p>\r\n\r\n<p id=\"SE-37cb33ae-902e-4b39-b20f-d29868ff8ed6\">사용면적: 124.8스퀘어 ~ 37.75평</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>추가정보:</strong></p>\r\n\r\n<p>①&nbsp;고층, 05A라인</p>\r\n\r\n<p>②&nbsp;전매가: 97억동 (모든 비용 포함)</p>\r\n\r\n<hr />\r\n<p id=\"SE-5ce71f0d-f100-4802-bc82-4c04f37bff18\"><strong>다양한 유틸리티:</strong></p>\r\n\r\n<p id=\"SE-ff9eae64-a157-4634-ba7b-e4cd06dc263c\">실내 수영장, 요가, 놀이터,</p>\r\n\r\n<p>공원, 시티뷰 체크인존,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>빈 마트 슈퍼마켓, 빈 스쿨 유치원.</p>\r\n\r\n<p><strong>계약조건:</strong></p>\r\n\r\n<p>① &nbsp;명확한 법적 서류</p>\r\n\r\n<p>②&nbsp;&nbsp;소유주와&nbsp;직접 계약</p>\r\n\r\n<p>③&nbsp;&nbsp;1억동 보증금</p>\r\n\r\n<p>④&nbsp;&nbsp;전매 절차에 빠르고 간단하고 전문적임</p>', NULL, 'Chuyển nhượng căn hộ vinhomes west point 4 ngủ cơ bản', 'Chuyển nhượng căn hộ vinhomes west point 4 ngủ cơ bản', 'chuyen-nhuong-can-ho-vinhomes-west-point-4-ngu-co-ban-pi171', 0, '3.jpg.jpg', 417400, 1, '4PN', 2, 133, 'Cơ bản', 'Đông Nam - Tây Nam', NULL, 'vi', 0, 378, 0, 'Vinhomes West Point', 'WP01082', '2021-12-03 08:45:29', '2021-12-03 08:45:31'),
(172, 6, '빈홈 웨스트포인트 방4개- 외국인을 위한 전매 매물 - 유일한 집  하노이 아파트 (꿈하우스 부동산)', '빈홈 웨스트포인트 방4개- 외국인을 위한 전매 매물 - 유일한 집  하노이 아파트 (꿈하우스 부동산)', '<p>빈홈 웨스트포인트 방4개 - 외국인을 위한 전매 매물 - 유일한 집</p>\r\n\r\n<p id=\"SE-a8032e60-a696-4898-9727-77e29711fd0e\">벽심면적: 133.5스퀘어 ~ 40.38평</p>\r\n\r\n<p id=\"SE-37cb33ae-902e-4b39-b20f-d29868ff8ed6\">사용면적: 124.8스퀘어 ~ 37.75평</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>추가정보:</strong></p>\r\n\r\n<p>①&nbsp;고층, 05A라인</p>\r\n\r\n<p>②&nbsp;전매가: 96억동 (모든 비용 포함)</p>\r\n\r\n<hr />\r\n<p id=\"SE-5ce71f0d-f100-4802-bc82-4c04f37bff18\"><strong>다양한 유틸리티:</strong></p>\r\n\r\n<p id=\"SE-ff9eae64-a157-4634-ba7b-e4cd06dc263c\">실내 수영장, 요가, 놀이터,</p>\r\n\r\n<p>공원, 시티뷰 체크인존,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>빈 마트 슈퍼마켓, 빈 스쿨 유치원.</p>\r\n\r\n<p><strong>계약조건:</strong></p>\r\n\r\n<p>① &nbsp;명확한 법적 서류</p>\r\n\r\n<p>②&nbsp;&nbsp;소유주와&nbsp;직접 계약</p>\r\n\r\n<p>③&nbsp;&nbsp;1억동 보증금</p>\r\n\r\n<p>④&nbsp;&nbsp;전매 절차에 빠르고 간단하고 전문적임</p>', NULL, '빈홈 웨스트포인트 방4개- 외국인을 위한 전매 매물 - 유일한 집  하노이 아파트 (꿈하우스 부동산)', '빈홈 웨스트포인트 방4개- 외국인을 위한 전매 매물 - 유일한 집  하노이 아파트 (꿈하우스 부동산)', '빈홈-웨스트포인트-방4개-외국인을-위한-전매-매물-유일한-집-하노이-아파트-꿈하우스-부동산-pi172', 1, '3.jpg.jpg', 417400, 1, '4PN', 2, 133, 'Cơ bản', 'Đông Nam - Tây Nam', NULL, 'ko', 0, 452, 0, 'Vinhomes West Point', 'WP01082', '2021-12-03 08:46:41', '2021-12-03 08:47:19'),
(173, 6, 'SIÊU RẺ! Chuyển nhượng căn hộ 2PN Vinhomes West Point đầy đủ nội thất', 'SIÊU RẺ! Chuyển Nhượng Căn Hộ 2PN Vinhomes West Point Đầy Đủ Nội Thất', '<p>Ch&iacute;nh chủ b&aacute;n căn hộ Vinhomes West Point si&ecirc;u rẻ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Đặc điểm căn hộ:</strong></p>\r\n\r\n<p>① Diện t&iacute;ch</p>\r\n\r\n<p>Diện t&iacute;ch tim tường: 68.7m2</p>\r\n\r\n<p>Diện t&iacute;ch th&ocirc;ng thủy: 62.1m2</p>\r\n\r\n<p>② 2 ph&ograve;ng ngủ, 2 vệ sinh</p>\r\n\r\n<p>③ Nội thất đầy đủ, sang trọng</p>\r\n\r\n<p>④ Gi&aacute; b&aacute;n: 3 tỉ bao to&agrave;n bộ ph&iacute;</p>\r\n\r\n<p>⑤ Căn hộ Officetel, sổ hồng 50 năm</p>\r\n\r\n<hr />\r\n<p><strong>Tiện &iacute;ch dự &aacute;n:</strong></p>\r\n\r\n<p>① Hầm gửi xe &ocirc; t&ocirc;, xe m&aacute;y</p>\r\n\r\n<p>② Vườn treo tầng 5, khu vui chơi trẻ em</p>\r\n\r\n<p>③ Bể bơi 4 m&ugrave;a, Gym</p>\r\n\r\n<p>④ Trung t&acirc;m thương mai, cửa h&agrave;ng tiện lợi, cafe</p>\r\n\r\n<p><strong>Điều khoản Hợp đồng:</strong></p>\r\n\r\n<p>① Ph&aacute;p l&yacute; căn hộ r&otilde; r&agrave;ng, kh&ocirc;ng tranh chấp</p>\r\n\r\n<p>② K&iacute; hợp đồng trực tiếp ch&iacute;nh chủ</p>\r\n\r\n<p>③ Đặt cọc 100 triệu đồng</p>\r\n\r\n<p>④ Thủ tục sang t&ecirc;n chuyển nhượng nhanh, gọn, chuy&ecirc;n nghiệp.</p>\r\n\r\n<p>⑤ Xem nh&agrave; 24/7</p>', NULL, 'SIÊU RẺ! Chuyển Nhượng Căn Hộ 2PN Vinhomes West Point Đầy Đủ Nội Thất', 'SIÊU RẺ! Chuyển Nhượng Căn Hộ 2PN Vinhomes West Point Đầy Đủ Nội Thất', 'sieu-re-chuyen-nhuong-can-ho-2pn-vinhomes-west-point-day-du-noi-that-pi173', 1, 'z3000446402708_aee12fdc91cfc3c6b6a47dd7813815e8.jpg.jpg', 3000000000, 0, '2PN', 2, 68, 'Full', 'Tây Bắc', NULL, 'vi', 0, 443, 0, 'Vinhomes West Point', 'WP00305', '2021-12-07 04:42:03', '2021-12-07 04:56:15'),
(174, 6, 'Cho Thuê Căn Hộ D\'Capitale 3N 2VS Đầy Đủ Nội Thất Kiểu Tân Cổ Điển', 'Cho Thuê Căn Hộ D\'Capitale 3N 2VS Đầy Đủ Nội Thất Kiểu Tân Cổ Điển', '<p>Căn hộ D&#39;Capitale 3 ph&ograve;ng ngủ 2 vệ sinh nội thất trắng t&acirc;n cổ điển</p>\r\n\r\n<hr />\r\n<p><strong>Đặc điểm căn hộ:</strong></p>\r\n\r\n<p>① Diện t&iacute;ch</p>\r\n\r\n<p>Diện t&iacute;ch tim tường: 99,58m2</p>\r\n\r\n<p>Diện t&iacute;ch th&ocirc;ng thủy: 88,31m2</p>\r\n\r\n<p>② 3&nbsp;ph&ograve;ng ngủ, 2 vệ sinh</p>\r\n\r\n<p>③ Nội thất đầy đủ, thiết kế m&agrave;u trắng kiểu t&acirc;n cổ điển</p>\r\n\r\n<p>④ Gi&aacute; thu&ecirc;: 23tr5 (chưa bao gồm ph&iacute; dịch vụ sử dụng)</p>\r\n\r\n<p>⑤ Ng&agrave;y 14/12/2021 v&agrave;o</p>\r\n\r\n<hr />\r\n<p><strong>Tiện &iacute;ch dự &aacute;n:</strong></p>\r\n\r\n<p>① Hồ bơi, S&acirc;n thể thao, Gym</p>\r\n\r\n<p>② Khu vui chơi trẻ em</p>\r\n\r\n<p>③ Vườn BBQ, tổ chức sự kiện ngo&agrave;i trời</p>\r\n\r\n<p>④ Trung t&acirc;m thương mai, cửa h&agrave;ng tiện lợi, cafe</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Điều khoản Hợp đồng:</strong></p>\r\n\r\n<p>① Ph&aacute;p l&yacute; căn hộ r&otilde; r&agrave;ng, kh&ocirc;ng tranh chấp</p>\r\n\r\n<p>② K&iacute; hợp đồng trực tiếp ch&iacute;nh chủ, thủ tục nhanh gọn</p>\r\n\r\n<p>③ Hợp đồng 1 năm, cọc 1 th&aacute;ng</p>\r\n\r\n<p>④ Thanh to&aacute;n 3 th&aacute;ng/lần</p>\r\n\r\n<p>⑤ Xem nh&agrave; 24/7</p>', NULL, 'Cho Thuê Căn Hộ D\'Capitale 3N 2VS Đầy Đủ Nội Thất Kiểu Tân Cổ Điển', 'Cho Thuê Căn Hộ D\'Capitale 3N 2VS Đầy Đủ Nội Thất Kiểu Tân Cổ Điển', 'cho-thue-can-ho-dcapitale-3n-2vs-day-du-noi-that-kieu-tan-co-dien-pi174', 1, '디캐피탈 (1).jpg.jpg', 23500000, 0, '3PN', 2, 99, 'Full', 'Tây Nam - Tây Bắc', NULL, 'vi', 0, 299, 1, 'Vinhomes D\'capitale', 'DC02278', '2021-12-11 05:44:54', '2021-12-11 05:44:55'),
(175, 6, '디캐피탈 C6동 방3개 호수뷰 풀옵션 임대 정보', '디캐피탈 C6동 방3개 호수뷰 풀옵션 임대 정보', '<p>디캐피탈 방3개 (3룸) 화장실2개 화이트 현대 클래식 디자인 인테리어</p>\r\n\r\n<hr />\r\n<p><strong>아파트의 특징:</strong></p>\r\n\r\n<p>① 면적</p>\r\n\r\n<p id=\"SE-a6505aad-59bc-4fd7-a636-18f13d5ab243\">벽심면적: 99.58스퀘어 ~ 30.12평</p>\r\n\r\n<p id=\"SE-3a51ec36-6a3f-4b68-8bd8-32eb93f2e4eb\">사용면적: 88.31스퀘어 ~ 26.71평</p>\r\n\r\n<p>② C6동 침실3개, 화장실2개</p>\r\n\r\n<p>③ 풀옵션, 현대 클래식 인테리어</p>\r\n\r\n<p>④ 임대료: 2350만동&nbsp;(관리비, 전기세, 물세 등 미포함 - 세입자 부담)</p>\r\n\r\n<p>⑤ 2021년12월14일부터 입주 가능</p>\r\n\r\n<hr />\r\n<p><b>유털리티:</b></p>\r\n\r\n<p>① 호수, 운동장, 헬스장</p>\r\n\r\n<p>② 놀이터</p>\r\n\r\n<p>③&nbsp;야외 바베큐장, 행사 계죄 구역</p>\r\n\r\n<p>④ 쇼핑몰, 편의점, 카페</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><b>계약 조건:</b></p>\r\n\r\n<p>① 명확한 법적 서류</p>\r\n\r\n<p>② 주인분과 직접 계약</p>\r\n\r\n<p>③ 1년 계약, 1달 보증금</p>\r\n\r\n<p>④ 3개월 선불 가능</p>\r\n\r\n<p>⑤ 언제든지 구격 가능</p>', NULL, '디캐피탈 C6동 방3개 호수뷰 풀옵션 임대 정보', '디캐피탈 C6동 방3개 호수뷰 풀옵션 임대 정보', '디캐피탈-c6동-방3개-호수뷰-풀옵션-임대-정보-pi175', 1, '디캐피탈 (1).jpg.jpg', 1020, 1, '3PN', 2, 99, 'Full', 'Tây Nam - Tây Bắc', NULL, 'ko', 0, 278, 1, 'Vinhomes D\'capitale', 'DC02278', '2021-12-11 07:29:27', '2021-12-11 08:16:07'),
(176, 6, 'Cho thuê căn hộ D\'Capitale 121m2 3 ngủ đẹp lớn nhất dự án', 'cho thuê căn hộ d\'Capitale 121m2 3 ngủ đẹp lớn nhất dự án', '<p>Căn hộ D&#39;Capitale 3 ph&ograve;ng ngủ 2 vệ sinh.</p>\r\n\r\n<p>Căn hoa hậu đẹp nhất dự &aacute;n view hồ.</p>\r\n\r\n<hr />\r\n<p><strong>Đặc điểm căn hộ:</strong></p>\r\n\r\n<p>① Diện t&iacute;ch</p>\r\n\r\n<p>Diện t&iacute;ch tim tường: 121,96m2</p>\r\n\r\n<p>Diện t&iacute;ch th&ocirc;ng thủy: 109,19m2</p>\r\n\r\n<p>② 3&nbsp;ph&ograve;ng ngủ, 2 vệ sinh</p>\r\n\r\n<p>③ Nội thất cơ bản liền tường:</p>\r\n\r\n<p>Kệ tivi, gi&aacute; s&aacute;ch, bếp kh&ocirc;,</p>\r\n\r\n<p>Tủ gi&agrave;y kịch trần, tủ đồ 3 ph&ograve;ng,</p>\r\n\r\n<p>Đ&egrave;n trần, r&egrave;m 2 lớp.</p>\r\n\r\n<p>④ Gi&aacute; thu&ecirc;: 23tr&nbsp;(chưa bao gồm ph&iacute; dịch vụ sử dụng)</p>\r\n\r\n<p>⑤ View hồ</p>\r\n\r\n<hr />\r\n<p><strong>Tiện &iacute;ch dự &aacute;n:</strong></p>\r\n\r\n<p>① Hồ bơi, S&acirc;n thể thao, Gym</p>\r\n\r\n<p>② Khu vui chơi trẻ em</p>\r\n\r\n<p>③ Vườn BBQ, tổ chức sự kiện ngo&agrave;i trời</p>\r\n\r\n<p>④ Trung t&acirc;m thương mai, cửa h&agrave;ng tiện lợi, cafe</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Điều khoản Hợp đồng:</strong></p>\r\n\r\n<p>① Ph&aacute;p l&yacute; căn hộ r&otilde; r&agrave;ng, kh&ocirc;ng tranh chấp</p>\r\n\r\n<p>② K&iacute; hợp đồng trực tiếp ch&iacute;nh chủ, thủ tục nhanh gọn</p>\r\n\r\n<p>③ Hợp đồng 1 năm, cọc 1 th&aacute;ng</p>\r\n\r\n<p>④ Thanh to&aacute;n 3 th&aacute;ng/lần</p>\r\n\r\n<p>⑤ Xem nh&agrave; 24/7</p>', NULL, 'Cho Thuê Căn Hộ D\'Capitale 121m2 3 Ngủ Đẹp Lớn Nhất Dự Án', 'Cho Thuê Căn Hộ D\'Capitale 121m2 3 Ngủ Đẹp Lớn Nhất Dự Án', 'cho-thue-can-ho-dcapitale-121m2-3-ngu-dep-lon-nhat-du-an-pi176', 1, '디캐피탈임대 (7).jpg.jpg', 23000000, 0, '3PN', 2, 121, 'Cơ bản', 'Đông Nam - Đông Bắc', NULL, 'vi', 0, 448, 1, 'Vinhomes D\'capitale', 'DC01635', '2021-12-11 08:06:20', '2021-12-11 08:17:43'),
(177, 6, '디캐피탈 121스퀘어 노옵션 C3동 호수뷰 방3개 임대 정보', '디캐피탈 121스퀘어 노옵션 C3동 호수뷰 방3개 임대 정보', '<p>디캐피탈 121스퀘어 노옵션 방3개 (3룸) 화장실2개 가장 예쁜 라인</p>\r\n\r\n<hr />\r\n<p><strong>아파트의 특징:</strong></p>\r\n\r\n<p>① 면적</p>\r\n\r\n<p id=\"SE-a6505aad-59bc-4fd7-a636-18f13d5ab243\">벽심면적: 121.96스퀘어 ~ 36.89평</p>\r\n\r\n<p id=\"SE-3a51ec36-6a3f-4b68-8bd8-32eb93f2e4eb\">사용면적: 109.19스퀘어 ~ 33.02평</p>\r\n\r\n<p>② C3동 침실3개, 화장실2개</p>\r\n\r\n<p>③ 노옵션, 한국 스타일 인테리어</p>\r\n\r\n<p>붙박이장:</p>\r\n\r\n<p id=\"SE-9bcac675-6b07-4ba6-a648-962637d22865\">티비 선반, 책장, 부엌, 신발장, 옷장 3개, 전등, 이중 커튼.</p>\r\n\r\n<p>④ 임대료: 1000불&nbsp;(관리비, 전기세, 물세 등 미포함 - 세입자 부담)</p>\r\n\r\n<p>⑤ 12월말 입주 가능</p>\r\n\r\n<hr />\r\n<p><b>유털리티:</b></p>\r\n\r\n<p>① 호수, 운동장, 헬스장</p>\r\n\r\n<p>② 놀이터</p>\r\n\r\n<p>③&nbsp;야외 바베큐장, 행사 계죄 구역</p>\r\n\r\n<p>④ 쇼핑몰, 편의점, 카페</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><b>계약 조건:</b></p>\r\n\r\n<p>① 명확한 법적 서류</p>\r\n\r\n<p>② 주인분과 직접 계약</p>\r\n\r\n<p>③ 1년 계약, 1달 보증금</p>\r\n\r\n<p>④ 3개월 선불 가능</p>\r\n\r\n<p>⑤ 구경 문의시 연락 부탁</p>', NULL, '디캐피탈 121스퀘어 노옵션 C3동 호수뷰 방3개 임대 정보', '디캐피탈 121스퀘어 노옵션 C3동 호수뷰 방3개 임대 정보', '디캐피탈-121스퀘어-노옵션-c3동-호수뷰-방3개-임대-정보-pi177', 1, '디캐피탈임대 (7).jpg.jpg', 1000, 1, '3PN', 2, 121, 'Cơ bản', 'Đông Nam - Đông Bắc', NULL, 'ko', 0, 295, 1, 'Vinhomes D\'capitale', 'DC01635', '2021-12-11 08:17:22', '2021-12-11 08:17:22'),
(178, 6, 'Cho thuê căn hộ D\'Capitale 2 ngủ đầy đủ nội thất đẹp', 'Cho thuê căn hộ D\'Capitale 2 ngủ đầy đủ nội thất đẹp', '<p>Căn hộ D&#39;Capitale 2&nbsp;ph&ograve;ng ngủ 2 vệ sinh nội thất đẹp</p>\r\n\r\n<hr />\r\n<p><strong>Đặc điểm căn hộ:</strong></p>\r\n\r\n<p>① Diện t&iacute;ch</p>\r\n\r\n<p>Diện t&iacute;ch tim tường: 70,35m2</p>\r\n\r\n<p>Diện t&iacute;ch th&ocirc;ng thủy: 62,71m2</p>\r\n\r\n<p>② 2&nbsp;ph&ograve;ng ngủ, 2 vệ sinh</p>\r\n\r\n<p>③ Nội thất đầy đủ</p>\r\n\r\n<p>④ Gi&aacute; thu&ecirc;: 20tr&nbsp;(chưa bao gồm ph&iacute; dịch vụ sử dụng)</p>\r\n\r\n<hr />\r\n<p><strong>Tiện &iacute;ch dự &aacute;n:</strong></p>\r\n\r\n<p>① Hồ bơi, S&acirc;n thể thao, Gym</p>\r\n\r\n<p>② Khu vui chơi trẻ em</p>\r\n\r\n<p>③ Vườn BBQ, tổ chức sự kiện ngo&agrave;i trời</p>\r\n\r\n<p>④ Trung t&acirc;m thương mai, cửa h&agrave;ng tiện lợi, cafe</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Điều khoản Hợp đồng:</strong></p>\r\n\r\n<p>① Ph&aacute;p l&yacute; căn hộ r&otilde; r&agrave;ng, kh&ocirc;ng tranh chấp</p>\r\n\r\n<p>② K&iacute; hợp đồng trực tiếp ch&iacute;nh chủ, thủ tục nhanh gọn</p>\r\n\r\n<p>③ Hợp đồng 1 năm, cọc 1 th&aacute;ng</p>\r\n\r\n<p>④ Thanh to&aacute;n 3 th&aacute;ng/lần</p>\r\n\r\n<p>⑤ V&agrave;o lu&ocirc;n</p>', NULL, 'Cho thuê căn hộ D\'Capitale 2 ngủ đầy đủ nội thất đẹp', 'Cho thuê căn hộ D\'Capitale 2 ngủ đầy đủ nội thất đẹp', 'cho-thue-can-ho-dcapitale-2-ngu-day-du-noi-that-dep-pi178', 1, 'z2986392274947_72e190bb11e4e86a2fef9877ed4dfa1f.jpg.jpg', 20000000, 0, '2PN', 2, 70, 'Full', 'Tây Bắc', NULL, 'vi', 0, 377, 1, 'Vinhomes D\'capitale', 'DC01323', '2021-12-11 10:02:42', '2021-12-11 10:15:28'),
(179, 6, '디캐피탈 C3동 방2개 풀옵션 70스퀘어 예쁜 가구 임대 정보', '디캐피탈 C3동 방2개 풀옵션 70스퀘어 예쁜 가구 임대 정보', '<p>디캐피탈 풀옵션 방2개 (2룸) 화장실2개 예쁜 가구</p>\r\n\r\n<hr />\r\n<p><strong>아파트의 특징:</strong></p>\r\n\r\n<p>① 면적</p>\r\n\r\n<p id=\"SE-a6505aad-59bc-4fd7-a636-18f13d5ab243\">벽심면적: 70.35스퀘어 ~ 21.28평</p>\r\n\r\n<p id=\"SE-3a51ec36-6a3f-4b68-8bd8-32eb93f2e4eb\">사용면적: 62.71퀘어 ~ 18.97평</p>\r\n\r\n<p>② C3동 침실2개, 화장실2개</p>\r\n\r\n<p>③ 풀옵션</p>\r\n\r\n<p>④ 임대료: 2000만동 (관리비, 전기세, 물세 등 미포함 - 세입자 부담)</p>\r\n\r\n<p>⑤ 바로 입주 가능</p>\r\n\r\n<hr />\r\n<p><b>유털리티:</b></p>\r\n\r\n<p>① 호수, 운동장, 헬스장</p>\r\n\r\n<p>② 놀이터</p>\r\n\r\n<p>③&nbsp;야외 바베큐장, 행사 계죄 구역</p>\r\n\r\n<p>④ 쇼핑몰, 편의점, 카페</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><b>계약 조건:</b></p>\r\n\r\n<p>① 명확한 법적 서류</p>\r\n\r\n<p>② 주인분과 직접 계약</p>\r\n\r\n<p>③ 1년 계약, 1달 보증금</p>\r\n\r\n<p>④ 3개월 선불 가능</p>\r\n\r\n<p>⑤ 구경 문의시 연락 부탁</p>', NULL, '디캐피탈 C3동 방2개 풀옵션 70스퀘어 예쁜 가구 임대 정보', '디캐피탈 C3동 방2개 풀옵션 70스퀘어 예쁜 가구 임대 정보', '디캐피탈-c3동-방2개-풀옵션-70스퀘어-예쁜-가구-임대-정보-pi179', 1, 'z2986392274947_72e190bb11e4e86a2fef9877ed4dfa1f.jpg.jpg', 860, 1, '2PN', 2, 70, 'Full', 'Tây Bắc', NULL, 'ko', 0, 285, 1, 'Vinhomes D\'capitale', 'DC01323', '2021-12-11 10:05:59', '2021-12-12 01:53:53'),
(180, 6, 'Cho thuê căn hộ CT8 The Emerald 2 ngủ đầy đủ nội thất', 'Cho thuê căn hộ CT8 The Emerald 2 ngủ đầy đủ nội thất', '<p>Căn hộ CT8 The Emerald 2 ngủ 2 vệ sinh đầy đủ nội thất</p>\r\n\r\n<hr />\r\n<p><strong>Đặc điểm căn hộ:</strong></p>\r\n\r\n<p>① Diện t&iacute;ch</p>\r\n\r\n<p>Diện t&iacute;ch tim tường: 86,4m2</p>\r\n\r\n<p>Diện t&iacute;ch th&ocirc;ng thủy: 80,8m2</p>\r\n\r\n<p>② 2&nbsp;ph&ograve;ng ngủ, 2 vệ sinh</p>\r\n\r\n<p>③ Nội thất đầy đủ</p>\r\n\r\n<p>④ Gi&aacute; thu&ecirc;: 16tr&nbsp;(chưa bao gồm ph&iacute; dịch vụ sử dụng)</p>\r\n\r\n<hr />\r\n<p><strong>Tiện &iacute;ch dự &aacute;n:</strong></p>\r\n\r\n<p>① Tiện &iacute;ch cảnh quan: Khu ch&agrave;o đ&oacute;n cổng ch&iacute;nh; Th&aacute;c nước, C&acirc;y xanh; Hoa theo m&ugrave;a; Vườn dạo bộ; Vườn tr&ecirc;n kh&ocirc;ng, đ&agrave;i ngắm cảnh - tầng m&aacute;i; Ch&ograve;i nghỉ &hellip;</p>\r\n\r\n<p>② Tiện &iacute;ch chăm s&oacute;c sức khỏe: Bể bơi ngo&agrave;i trời; Bể bơi trong nh&agrave;; Gym; Spa; Yoga; S&acirc;n tập TDTT; Đường dạo bộ &hellip;</p>\r\n\r\n<p>③ Tiện &iacute;ch cho người cao tuổi: như khu tập dưỡng sinh, khu chơi cờ, khu dạo bộ thư gi&atilde;n... Thiết kế ở một kh&ocirc;ng gian y&ecirc;n tĩnh &hellip;</p>\r\n\r\n<p>④ Tiện &iacute;ch cho trẻ em: Khu vui chơi cả trong nh&agrave; v&agrave; ngo&agrave;i trời; Thư viện s&aacute;ch; Trường mầm non; Lớp năng khiếu; Lớp ngoại ngữ &hellip;</p>\r\n\r\n<p>⑤ Tiện &iacute;ch cư d&acirc;n: Ph&ograve;ng kh&aacute;m; Nh&agrave; thuốc; Si&ecirc;u thị mini; Hiệu giặt l&agrave;; Nh&agrave; h&agrave;ng; Caf&eacute;; Khu ẩm thực BBQ &hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Điều khoản Hợp đồng:</strong></p>\r\n\r\n<p>① Ph&aacute;p l&yacute; căn hộ r&otilde; r&agrave;ng, kh&ocirc;ng tranh chấp</p>\r\n\r\n<p>② K&iacute; hợp đồng trực tiếp ch&iacute;nh chủ, thủ tục nhanh gọn</p>\r\n\r\n<p>③ Hợp đồng 1 năm, cọc 1 th&aacute;ng</p>\r\n\r\n<p>④ Thanh to&aacute;n 3 th&aacute;ng/lần</p>\r\n\r\n<p>⑤ V&agrave;o lu&ocirc;n</p>', NULL, 'Cho thuê căn hộ CT8 The Emerald 2 ngủ đầy đủ nội thất', 'Cho thuê căn hộ CT8 The Emerald 2 ngủ đầy đủ nội thất', 'cho-thue-can-ho-ct8-the-emerald-2-ngu-day-du-noi-that-pi180', 1, 'z3012461336790_f1f1be05a2d2924c5d7cca5235c0543f.jpg.jpg', 16000000, 0, '2PN', 2, 86, 'Full', 'Đông Bắc', NULL, 'vi', 0, 296, 1, 'CT8 - The Emerald', 'CT800554', '2021-12-11 11:13:11', '2021-12-11 11:13:13'),
(181, 6, '더 에메랄드 E2동 방2개 풀옵션 내부뷰 임대 정보', '더 에메랄드 E2동 방2개 풀옵션 내부뷰 임대 정보', '<p>더 에메랄드 방2개 화장실2개 풀옵션 임대 정보</p>\r\n\r\n<hr />\r\n<p><strong>Đặc điểm căn hộ:</strong></p>\r\n\r\n<p>① 면적</p>\r\n\r\n<p id=\"SE-fc13d9cb-25c0-11eb-8d39-a3dd3146faea\">벽심면적: 86.4스퀘어 ~ 26.13평</p>\r\n\r\n<p id=\"SE-fc1427ed-25c0-11eb-8d39-25c01d916f53\">사용면적: 80.8스퀘어 ~ 24.44평</p>\r\n\r\n<p>② 침실 2개 화장실 2개</p>\r\n\r\n<p>③ 풀옵션</p>\r\n\r\n<p>④ 임대료: 1600만동&nbsp;(관리비, 전기세, 물세 등 미포)</p>\r\n\r\n<hr />\r\n<p><strong>유털리티:</strong></p>\r\n\r\n<p>① 풍경: 입구; 폭포, 나무; 화원; 산책길; 옥상 정원, 전망대; 쉼터&hellip;</p>\r\n\r\n<p>② 헬스케어: 야외 수영장; 실내 수영장; 헬스장; 스파; 요가; 운동장; 산책길&nbsp;&hellip;</p>\r\n\r\n<p>③ 노인용 시설: 양새체조 구역,... (조용한 공간)</p>\r\n\r\n<p>④ 어린이 시설: 야외/실내 놀이터; 도서관; 유치원;...</p>\r\n\r\n<p>⑤ 주민 시설: 진료소; 약국; 소형 슈퍼마켓; 세탁실; 식당; 카페; 바베큐&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><b>계약 조건:</b></p>\r\n\r\n<p>① 명확한 법적 서류</p>\r\n\r\n<p>② 주인분과 직접 계약</p>\r\n\r\n<p>③ 1년 계약, 1달 보증금</p>\r\n\r\n<p>④ 3개월 선불 가능</p>\r\n\r\n<p>⑤ 구경 문의시 연락 부탁</p>', NULL, '더 에메랄드 E2동 방2개 풀옵션 내부뷰 임대 정보', '더 에메랄드 E2동 방2개 풀옵션 내부뷰 임대 정보', '더-에메랄드-e2동-방2개-풀옵션-내부뷰-임대-정보-pi181', 1, 'z3012461336790_f1f1be05a2d2924c5d7cca5235c0543f.jpg.jpg', 695, 1, '2PN', 2, 86, 'Full', 'Đông Bắc', NULL, 'ko', 0, 162, 1, 'CT8 - The Emerald', 'CT800554', '2021-12-11 11:17:29', '2021-12-19 07:41:46'),
(182, 6, 'Cho thuê căn hộ Vinhomes West Point đặc biệt 1N, phòng làm việc siêu rộng', 'Cho thuê căn hộ Vinhomes West Point đặc biệt 1N, phòng làm việc siêu rộng', '<p>Căn hộ Vinhomes West Point 1 ngủ, ph&ograve;ng l&agrave;m việc v&agrave; ph&ograve;ng kh&aacute;ch si&ecirc;u rộng</p>\r\n\r\n<hr />\r\n<p><strong>Đặc điểm căn hộ:</strong></p>\r\n\r\n<p>① Diện t&iacute;ch</p>\r\n\r\n<p>Diện t&iacute;ch tim tường: 68.8,35m2</p>\r\n\r\n<p>Diện t&iacute;ch th&ocirc;ng thủy: 62,7m2</p>\r\n\r\n<p>② 1&nbsp;ph&ograve;ng ngủ, 1 ph&ograve;ng kh&aacute;ch v&agrave; l&agrave;m việc, 2 vệ sinh</p>\r\n\r\n<p>③ Nội thất đầy đủ</p>\r\n\r\n<p>④ Gi&aacute; thu&ecirc;: 16tr&nbsp;(chưa bao gồm ph&iacute; dịch vụ sử dụng)</p>\r\n\r\n<hr />\r\n<p><strong>Tiện &iacute;ch dự &aacute;n:</strong></p>\r\n\r\n<p>① Hầm gửi xe &ocirc; t&ocirc;, xe m&aacute;y</p>\r\n\r\n<p>② Vườn treo tầng 5, khu vui chơi trẻ em</p>\r\n\r\n<p>③ Bể bơi 4 m&ugrave;a, Gym</p>\r\n\r\n<p>④ Trung t&acirc;m thương mại, cửa h&agrave;ng tiện lợi, cafe</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Điều khoản Hợp đồng:</strong></p>\r\n\r\n<p>① Ph&aacute;p l&yacute; căn hộ r&otilde; r&agrave;ng, kh&ocirc;ng tranh chấp</p>\r\n\r\n<p>② K&iacute; hợp đồng trực tiếp ch&iacute;nh chủ, thủ tục nhanh gọn</p>\r\n\r\n<p>③ Hợp đồng 1 năm, cọc 1 th&aacute;ng</p>\r\n\r\n<p>④ Thanh to&aacute;n 3 th&aacute;ng/lần hoặc 6 th&aacute;ng/lần</p>\r\n\r\n<p>⑤ Th&aacute;ng 1/2022 trống</p>', NULL, 'Cho thuê căn hộ Vinhomes West Point đặc biệt 1N, phòng làm việc siêu rộng', 'Cho thuê căn hộ Vinhomes West Point đặc biệt 1N, phòng làm việc siêu rộng', 'cho-thue-can-ho-vinhomes-west-point-dac-biet-1n-phong-lam-viec-sieu-rong-pi182', 1, '빈홈웨스트포인트 (7).jpg.jpg', 16000000, 0, '1PN', 2, 69, 'Full', 'Đông Nam', NULL, 'vi', 0, 364, 1, 'Vinhomes West Point', 'WP00179', '2021-12-12 03:30:39', '2021-12-12 03:30:41'),
(183, 6, '빈홈 웨스트포인트 특별한 집 큰 근무 구역과 거실', '빈홈 웨스트포인트 특별한 집 큰 근무 구역과 거실', '<p>빈홈 웨스트포인트 W1동 특별한 집 임대 정보</p>\r\n\r\n<hr />\r\n<p><strong>아파트의 특징:</strong></p>\r\n\r\n<p>① 면적</p>\r\n\r\n<p id=\"SE-f3f0680b-26ef-11eb-90b6-ff7f8cc4bff8\">벽심면적: 68.8스퀘어 ~ 20.8평</p>\r\n\r\n<p id=\"SE-f3f0680d-26ef-11eb-90b6-a3a21fc0122f\">사용면적: 62.7스퀘어 ~ 18.96평</p>\r\n\r\n<p>② 침실 하나, 근무 구역 + 거실 1개, 화장실 2개</p>\r\n\r\n<p>③ 풀옵션</p>\r\n\r\n<p>④ 임대료: 1600만동 (관리비, 전기세, 물세 등 미포함 - 세입자 부담)</p>\r\n\r\n<p>⑤ 2022년1월말&nbsp;입주 가능</p>\r\n\r\n<hr />\r\n<p><b>유털리티:</b></p>\r\n\r\n<p>① 호수, 운동장, 헬스장</p>\r\n\r\n<p>② 놀이터, 5층 산책길</p>\r\n\r\n<p>③&nbsp;쇼핑몰, 편의점, 카페</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><b>계약 조건:</b></p>\r\n\r\n<p>① 명확한 법적 서류</p>\r\n\r\n<p>② 주인분과 직접 계약</p>\r\n\r\n<p>③ 1년 계약, 1달 보증금</p>\r\n\r\n<p>④ 3개월 선불 가능</p>\r\n\r\n<p>⑤ 구경 문의시 연락 부탁</p>', NULL, '빈홈 웨스트포인트 특별한 집 큰 근무 구역과 거실', '빈홈 웨스트포인트 특별한 집 큰 근무 구역과 거실', '빈홈-웨스트포인트-특별한-집-큰-근무-구역과-거실-pi183', 1, '빈홈웨스트포인트 (7).jpg.jpg', 695, 1, '1PN', 2, 69, 'Full', 'Đông Nam', NULL, 'ko', 0, 204, 1, 'Vinhomes West Point', 'WP00179', '2021-12-12 03:37:12', '2021-12-12 03:37:12'),
(184, 6, 'Cho thuê căn hộ D\'Capitale 2 ngủ đầy đủ nội thất view hồ bơi', 'Cho thuê căn hộ D\'Capitale 2 ngủ đầy đủ nội thất view hồ bơi', '<p>Căn hộ D&#39;Capitale 2&nbsp;ph&ograve;ng ngủ 2 vệ sinh view hồ bơi, Keangnam</p>\r\n\r\n<hr />\r\n<p><strong>Đặc điểm căn hộ:</strong></p>\r\n\r\n<p>① Diện t&iacute;ch</p>\r\n\r\n<p>Diện t&iacute;ch tim tường: 70,85m2</p>\r\n\r\n<p>Diện t&iacute;ch th&ocirc;ng thủy: 62,90m2</p>\r\n\r\n<p>② 2&nbsp;ph&ograve;ng ngủ, 2 vệ sinh</p>\r\n\r\n<p>③ Nội thất đầy đủ</p>\r\n\r\n<p>④ Gi&aacute; thu&ecirc;: 21tr&nbsp;(chưa bao gồm ph&iacute; dịch vụ sử dụng)</p>\r\n\r\n<hr />\r\n<p><strong>Tiện &iacute;ch dự &aacute;n:</strong></p>\r\n\r\n<p>① Hồ bơi, S&acirc;n thể thao, Gym</p>\r\n\r\n<p>② Khu vui chơi trẻ em</p>\r\n\r\n<p>③ Vườn BBQ, tổ chức sự kiện ngo&agrave;i trời</p>\r\n\r\n<p>④ Trung t&acirc;m thương mai, cửa h&agrave;ng tiện lợi, cafe</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Điều khoản Hợp đồng:</strong></p>\r\n\r\n<p>① Ph&aacute;p l&yacute; căn hộ r&otilde; r&agrave;ng, kh&ocirc;ng tranh chấp</p>\r\n\r\n<p>② K&iacute; hợp đồng trực tiếp ch&iacute;nh chủ, thủ tục nhanh gọn</p>\r\n\r\n<p>③ Hợp đồng 1 năm, cọc 1 th&aacute;ng</p>\r\n\r\n<p>④ Thanh to&aacute;n 3 th&aacute;ng/lần</p>\r\n\r\n<p>⑤ Th&aacute;ng 01/2022 trống nh&agrave;</p>', NULL, 'Cho thuê căn hộ D\'Capitale 2 ngủ đầy đủ nội thất view hồ bơi', 'Cho thuê căn hộ D\'Capitale 2 ngủ đầy đủ nội thất view hồ bơi', 'cho-thue-can-ho-dcapitale-2-ngu-day-du-noi-that-view-ho-boi-pi184', 1, 'z3027019396437_0aca778ba78c0050336497b6b800e8a4.jpg.jpg', 21000000, 0, '2PN', 2, 70, 'Full', 'Tây Bắc', NULL, 'vi', 0, 191, 1, 'Vinhomes D\'capitale', 'DC02583', '2021-12-16 08:59:56', '2021-12-16 08:59:59'),
(185, 6, '디캐피탈 경남뷰 방2개 풀옵션 C7동 임대 정보 공유해드립니다', '디캐피탈 경남뷰 방2개 풀옵션 C7동 임대 정보 공유해드립니다', '<p><em>디캐피탈 풀옵션 방2개 (2룸) 화장실2개 수영장과 경남뷰 임대 정보 하기와 같습니다.</em></p>\r\n\r\n<p><strong>아파트의 특징:</strong></p>\r\n\r\n<p>① 면적</p>\r\n\r\n<p id=\"SE-a6505aad-59bc-4fd7-a636-18f13d5ab243\">벽심면적: 70.85스퀘어 ~ 21.43평</p>\r\n\r\n<p id=\"SE-3a51ec36-6a3f-4b68-8bd8-32eb93f2e4eb\">사용면적: 62.90스퀘어 ~ 19.02평</p>\r\n\r\n<p>② C7동 침실2개, 화장실2개</p>\r\n\r\n<p>③ 풀옵션</p>\r\n\r\n<p>④ 임대료: 2100만동 (관리비, 전기세, 물세 등 미포함 - 세입자 부담)</p>\r\n\r\n<p>⑤ 2022년1월말&nbsp;입주 가능</p>\r\n\r\n<hr />\r\n<p><strong>유털리티:</strong></p>\r\n\r\n<p>① 호수, 운동장, 헬스장</p>\r\n\r\n<p>② 놀이터</p>\r\n\r\n<p>③&nbsp;야외 바베큐장, 행사 계죄 구역</p>\r\n\r\n<p>④ 쇼핑몰, 편의점, 카페</p>\r\n\r\n<p><strong>계약 조건:</strong></p>\r\n\r\n<p>① 명확한 법적 서류</p>\r\n\r\n<p>② 주인분과 직접 계약</p>\r\n\r\n<p>③ 1년 계약, 1달 보증금</p>\r\n\r\n<p>④ 3개월 선불 가능</p>\r\n\r\n<p>⑤ 구경 문의시 연락 부탁</p>', NULL, '디캐피탈 경남뷰 방2개 풀옵션 C7동 임대 정보 공유해드립니다', '디캐피탈 경남뷰 방2개 풀옵션 C7동 임대 정보 공유해드립니다', '디캐피탈-경남뷰-방2개-풀옵션-c7동-임대-정보-공유해드립니다-pi185', 1, 'z3027019396437_0aca778ba78c0050336497b6b800e8a4.jpg.jpg', 913, 1, '2PN', 2, 70, 'Full', 'Tây Bắc', NULL, 'ko', 0, 345, 1, 'Vinhomes D\'capitale', 'DC02583', '2021-12-16 09:17:04', '2021-12-16 09:17:04'),
(186, 6, 'Căn hộ cho thuê D\'Capitale C6 view hồ bơi nội thất đầy đủ vào luôn', 'Căn hộ cho thuê D\'Capitale C6 view hồ bơi nội thất đầy đủ vào luôn', '<p><em>Căn hộ D&#39;Capitale C6 2&nbsp;ph&ograve;ng ngủ 2 vệ sinh đầy đủ nội thất view hồ bơi</em></p>\r\n\r\n<p><strong>Đặc điểm căn hộ:</strong></p>\r\n\r\n<p>① Diện t&iacute;ch</p>\r\n\r\n<p>Diện t&iacute;ch tim tường: 77,19m2</p>\r\n\r\n<p>Diện t&iacute;ch th&ocirc;ng thủy: 68,9m2</p>\r\n\r\n<p>② 2&nbsp;ph&ograve;ng ngủ, 2 vệ sinh</p>\r\n\r\n<p>③ Nội thất đầy đủ</p>\r\n\r\n<p>④ Gi&aacute; thu&ecirc;: 17tr5 (chưa bao gồm ph&iacute; dịch vụ sử dụng)</p>\r\n\r\n<hr />\r\n<p><strong>Tiện &iacute;ch dự &aacute;n:</strong></p>\r\n\r\n<p>① Hồ bơi, S&acirc;n thể thao, Gym</p>\r\n\r\n<p>② Khu vui chơi trẻ em</p>\r\n\r\n<p>③ Vườn BBQ, tổ chức sự kiện ngo&agrave;i trời</p>\r\n\r\n<p>④ Trung t&acirc;m thương mai, cửa h&agrave;ng tiện lợi, cafe</p>\r\n\r\n<p><strong>Điều khoản Hợp đồng:</strong></p>\r\n\r\n<p>① Ph&aacute;p l&yacute; căn hộ r&otilde; r&agrave;ng, kh&ocirc;ng tranh chấp</p>\r\n\r\n<p>② K&iacute; hợp đồng trực tiếp ch&iacute;nh chủ, thủ tục nhanh gọn</p>\r\n\r\n<p>③ Hợp đồng 1 năm, cọc 1 th&aacute;ng</p>\r\n\r\n<p>④ Thanh to&aacute;n 3 th&aacute;ng/lần</p>\r\n\r\n<p>⑤ V&agrave;o lu&ocirc;n</p>', NULL, 'Căn hộ cho thuê D\'Capitale C6 view hồ bơi nội thất đầy đủ vào luôn', 'Căn hộ cho thuê D\'Capitale C6 view hồ bơi nội thất đầy đủ vào luôn', 'can-ho-cho-thue-dcapitale-c6-view-ho-boi-noi-that-day-du-vao-luon-pi186', 1, '디캐피탈 (9).jpg.jpg', 17500000, 0, '2PN', 2, 77, 'Full', 'Tây Bắc', NULL, 'vi', 0, 275, 1, 'Vinhomes D\'capitale', 'DC01970', '2021-12-16 09:23:57', '2021-12-16 09:24:01'),
(187, 6, '디캐피탈 경남뷰 C6동 방2개 풀옵션 1750만동 임대 놓습니다!', '디캐피탈 경남뷰 C6동 방2개 풀옵션 1750만동 임대 놓습니다!', '<p><em>디캐피탈 C6동 풀옵션 방2개 (2룸) 화장실2개 경남뷰 집</em></p>\r\n\r\n<p><strong>아파트의 특징:</strong></p>\r\n\r\n<p>① 면적</p>\r\n\r\n<p id=\"SE-a6505aad-59bc-4fd7-a636-18f13d5ab243\">벽심면적: 77.19스퀘어 ~ 23.35평</p>\r\n\r\n<p id=\"SE-3a51ec36-6a3f-4b68-8bd8-32eb93f2e4eb\">사용면적: 68.9스퀘어 ~ 20.84평</p>\r\n\r\n<p>② C6동 침실2개, 화장실2개</p>\r\n\r\n<p>③ 풀옵션</p>\r\n\r\n<p>④ 임대료: 1750만동 (관리비, 전기세, 물세 등 미포함 - 세입자 부담)</p>\r\n\r\n<p>⑤ 바로 입주 가능</p>\r\n\r\n<hr />\r\n<p><strong>유털리티:</strong></p>\r\n\r\n<p>① 호수, 운동장, 헬스장</p>\r\n\r\n<p>② 놀이터</p>\r\n\r\n<p>③&nbsp;야외 바베큐장, 행사 계죄 구역</p>\r\n\r\n<p>④ 쇼핑몰, 편의점, 카페</p>\r\n\r\n<p><strong>계약 조건:</strong></p>\r\n\r\n<p>① 명확한 법적 서류</p>\r\n\r\n<p>② 주인분과 직접 계약</p>\r\n\r\n<p>③ 1년 계약, 1달 보증금</p>\r\n\r\n<p>④ 3개월 선불 가능</p>\r\n\r\n<p>⑤ 구경 문의시 연락 부탁</p>', NULL, '디캐피탈 경남뷰 C6동 방2개 풀옵션 1750만동 임대 놓습니다!', '디캐피탈 경남뷰 C6동 방2개 풀옵션 1750만동 임대 놓습니다!', '디캐피탈-경남뷰-c6동-방2개-풀옵션-1750만동-임대-놓습니다-pi187', 1, '디캐피탈 (9).jpg.jpg', 761, 1, '2PN', 2, 77, 'Full', 'Tây Bắc', NULL, 'ko', 0, 205, 1, 'Vinhomes D\'capitale', 'DC01970', '2021-12-16 09:33:27', '2021-12-16 09:33:27'),
(188, 6, 'Căn hộ D\'Capitale thiết kế đơn giản sang trọng cho thuê đầy đủ nội thất', 'Căn Hộ D\'Capitale Thiết Kế Đơn Giản Sang Trọng Cho Thuê Đầy Đủ Nội Thất', '<p><em>Căn hộ D&#39;Capitale thiết kế sang trọng ri&ecirc;ng tư m&agrave; đơn giản, gọn g&agrave;ng</em></p>\r\n\r\n<p><strong>Đặc điểm căn hộ:</strong></p>\r\n\r\n<p>① Diện t&iacute;ch</p>\r\n\r\n<p>Diện t&iacute;ch tim tường: 70,35m2</p>\r\n\r\n<p>Diện t&iacute;ch th&ocirc;ng thủy: 62,71m2</p>\r\n\r\n<p>② 2&nbsp;ph&ograve;ng ngủ, 2 vệ sinh</p>\r\n\r\n<p>③ Nội thất đầy đủ</p>\r\n\r\n<p>④ Gi&aacute; thu&ecirc;: 20tr&nbsp;(chưa bao gồm ph&iacute; dịch vụ sử dụng)</p>\r\n\r\n<hr />\r\n<p><strong>Tiện &iacute;ch dự &aacute;n:</strong></p>\r\n\r\n<p>① Hồ bơi, S&acirc;n thể thao, Gym</p>\r\n\r\n<p>② Khu vui chơi trẻ em</p>\r\n\r\n<p>③ Vườn BBQ, tổ chức sự kiện ngo&agrave;i trời</p>\r\n\r\n<p>④ Trung t&acirc;m thương mai, cửa h&agrave;ng tiện lợi, cafe</p>\r\n\r\n<p><strong>Điều khoản Hợp đồng:</strong></p>\r\n\r\n<p>① Ph&aacute;p l&yacute; căn hộ r&otilde; r&agrave;ng, kh&ocirc;ng tranh chấp</p>\r\n\r\n<p>② K&iacute; hợp đồng trực tiếp ch&iacute;nh chủ, thủ tục nhanh gọn</p>\r\n\r\n<p>③ Hợp đồng 1 năm, cọc 1 th&aacute;ng</p>\r\n\r\n<p>④ Thanh to&aacute;n 3 th&aacute;ng/lần</p>\r\n\r\n<p>⑤ V&agrave;o lu&ocirc;n</p>', NULL, 'Căn hộ D\'Capitale thiết kế đơn giản sang trọng cho thuê đầy đủ nội thất', 'Căn hộ D\'Capitale thiết kế đơn giản sang trọng cho thuê đầy đủ nội thất', 'can-ho-dcapitale-thiet-ke-don-gian-sang-trong-cho-thue-day-du-noi-that-pi188', 1, '디캐피탈 (10).jpg.jpg', 20000000, 0, '2PN', 2, 76, 'Full', 'Tây Bắc', NULL, 'vi', 0, 332, 1, 'Vinhomes D\'capitale', 'DC02545', '2021-12-16 09:38:36', '2021-12-16 09:47:47'),
(189, 6, '디캐피탈 수영장뷰 C7동 방2개 풀옵션 외국인 선호하는 디자인', '디캐피탈 수영장뷰 C7동 방2개 풀옵션 외국인 선호하는 디자인', '<p>디캐피탈 수영장뷰 C7동 방2개 풀옵션 외국인 선호하는 디자인 임대 정보</p>\r\n\r\n<p><strong>아파트의 특징:</strong></p>\r\n\r\n<p>① 면적</p>\r\n\r\n<p id=\"SE-2244d483-0f70-4e36-a835-25c3bfef5df1\">벽심면적: 76.82스퀘어 ~ 23.23평</p>\r\n\r\n<p id=\"SE-00ad7776-1803-4480-9344-2be18f06757e\">사용면적: 69.38스퀘어 ~ 20.98평</p>\r\n\r\n<p>② C7동 침실2개, 화장실2개</p>\r\n\r\n<p>③ 풀옵션</p>\r\n\r\n<p>④ 임대료: 2000만동 (관리비, 전기세, 물세 등 미포함 - 세입자 부담)</p>\r\n\r\n<p>⑤ 2022년1월18일 이후 입주 가능</p>\r\n\r\n<hr />\r\n<p><strong>유털리티:</strong></p>\r\n\r\n<p>① 호수, 운동장, 헬스장</p>\r\n\r\n<p>② 놀이터</p>\r\n\r\n<p>③&nbsp;야외 바베큐장, 행사 계죄 구역</p>\r\n\r\n<p>④ 쇼핑몰, 편의점, 카페</p>\r\n\r\n<p><strong>계약 조건:</strong></p>\r\n\r\n<p>① 명확한 법적 서류</p>\r\n\r\n<p>② 주인분과 직접 계약</p>\r\n\r\n<p>③ 1년 계약, 1달 보증금</p>\r\n\r\n<p>④ 3개월 선불 가능</p>\r\n\r\n<p>⑤ 구경 문의시 연락 부탁</p>', NULL, '디캐피탈 수영장뷰 C7동 방2개 풀옵션 외국인 선호하는 디자인', '디캐피탈 수영장뷰 C7동 방2개 풀옵션 외국인 선호하는 디자인', '디캐피탈-수영장뷰-c7동-방2개-풀옵션-외국인-선호하는-디자인-pi189', 1, '디캐피탈 (10).jpg.jpg', 870, 1, '2PN', 2, 76, 'Full', 'Tây Bắc', NULL, 'ko', 0, 340, 1, 'Vinhomes D\'capitale', 'DC02545', '2021-12-16 09:44:38', '2021-12-16 09:47:47'),
(190, 6, 'Cho Thuê Căn Hộ Vinhomes West Point 2N2 VS Đầy Đủ Nội Thất Siêu Đẹp', 'Cho Thuê Căn Hộ Vinhomes West Point 2N2 VS Đầy Đủ Nội Thất Siêu Đẹp', '<p>Căn hộ Vinhomes West Point 2 ngủ 2 vệ sinh tủ lạnh side-by-side sang trọng tiện nghi.</p>\r\n\r\n<p><strong>Đặc điểm căn hộ:</strong></p>\r\n\r\n<p>① Diện t&iacute;ch</p>\r\n\r\n<p>Diện t&iacute;ch tim tường: 74,5m2</p>\r\n\r\n<p>Diện t&iacute;ch th&ocirc;ng thủy: 67,9m2</p>\r\n\r\n<p>② 2 ngủ 2 vệ sinh</p>\r\n\r\n<p>③ Nội thất đầy đủ</p>\r\n\r\n<p>④ Gi&aacute; thu&ecirc;: 18tr&nbsp;(chưa bao gồm ph&iacute; dịch vụ sử dụng)</p>\r\n\r\n<hr />\r\n<p><strong>Tiện &iacute;ch dự &aacute;n:</strong></p>\r\n\r\n<p>① Hầm gửi xe &ocirc; t&ocirc;, xe m&aacute;y</p>\r\n\r\n<p>② Vườn treo tầng 5, khu vui chơi trẻ em</p>\r\n\r\n<p>③ Bể bơi 4 m&ugrave;a, Gym</p>\r\n\r\n<p>④ Trung t&acirc;m thương mại, cửa h&agrave;ng tiện lợi, cafe</p>\r\n\r\n<p><strong>Điều khoản Hợp đồng:</strong></p>\r\n\r\n<p>① Ph&aacute;p l&yacute; căn hộ r&otilde; r&agrave;ng, kh&ocirc;ng tranh chấp</p>\r\n\r\n<p>② K&iacute; hợp đồng trực tiếp ch&iacute;nh chủ, thủ tục nhanh gọn</p>\r\n\r\n<p>③ Hợp đồng 1 năm, cọc 1 th&aacute;ng</p>\r\n\r\n<p>④ Thanh to&aacute;n 3 th&aacute;ng/lần hoặc 6 th&aacute;ng/lần</p>\r\n\r\n<p>⑤ V&agrave;o lu&ocirc;n</p>', NULL, 'Cho Thuê Căn Hộ Vinhomes West Point 2N2 VS Đầy Đủ Nội Thất Siêu Đẹp', 'Cho Thuê Căn Hộ Vinhomes West Point 2N2 VS Đầy Đủ Nội Thất Siêu Đẹp', 'cho-thue-can-ho-vinhomes-west-point-2n2-vs-day-du-noi-that-sieu-dep-pi190', 1, '빈홈웨스트포인트-(4)_optimized.jpg.jpg', 18000000, 0, '2PN', 2, 74, 'Full', 'Đông Nam', NULL, 'vi', 0, 248, 1, 'Vinhomes West Point', 'WP00165', '2021-12-16 10:04:11', '2021-12-16 10:11:56'),
(191, 6, '빈홈 웨스트포인트 방2개 풀옵션 충분하고편리한 인테리어 바로 입주!!', '빈홈 웨스트포인트 방2개 풀옵션 충분하고편리한 인테리어 바로 입주!!', '<p><em>빈홈 웨스트포인트 방2개 풀옵션 충분하고 편리한 인테리어 넓은 생활 공간</em></p>\r\n\r\n<p><strong>아파트의 특징:</strong></p>\r\n\r\n<p>① 면적</p>\r\n\r\n<p id=\"SE-f3f0680b-26ef-11eb-90b6-ff7f8cc4bff8\">벽심면적: 74.5스퀘어 ~ 22.53평</p>\r\n\r\n<p id=\"SE-f3f0680d-26ef-11eb-90b6-a3a21fc0122f\">사용면적: 67.9스퀘어 ~ 20.54평</p>\r\n\r\n<p>② 침실 2개, 넓은 거실, 양문 냉장고</p>\r\n\r\n<p>③ 풀옵션</p>\r\n\r\n<p>④ 임대료: 1800만동 (관리비, 전기세, 물세 등 미포함 - 세입자 부담)</p>\r\n\r\n<p>⑤ 바로 입주 가능</p>\r\n\r\n<hr />\r\n<p><strong>유털리티:</strong></p>\r\n\r\n<p>① 호수, 운동장, 헬스장</p>\r\n\r\n<p>② 놀이터, 5층 산책길</p>\r\n\r\n<p>③&nbsp;쇼핑몰, 편의점, 카페</p>\r\n\r\n<p><strong>계약 조건:</strong></p>\r\n\r\n<p>① 명확한 법적 서류</p>\r\n\r\n<p>② 주인분과 직접 계약</p>\r\n\r\n<p>③ 1년 계약, 1달 보증금</p>\r\n\r\n<p>④ 3개월 선불 가능</p>\r\n\r\n<p>⑤ 구경 문의시 연락 부탁</p>', NULL, '빈홈 웨스트포인트 방2개 풀옵션 충분하고편리한 인테리어 바로 입주!!', '빈홈 웨스트포인트 방2개 풀옵션 충분하고편리한 인테리어 바로 입주!!', '빈홈-웨스트포인트-방2개-풀옵션-충분하고편리한-인테리어-바로-입주-pi191', 1, '빈홈웨스트포인트-(4)_optimized.jpg.jpg', 782, 1, '2PN', 2, 74, 'Full', 'Đông Nam', NULL, 'ko', 0, 331, 1, 'Vinhomes West Point', 'WP00165', '2021-12-16 10:10:11', '2021-12-16 10:11:57'),
(192, 6, 'Cho thuê căn hộ D\'Capitale C6 2 ngủ nội thất hàn quốc đẹp', 'Cho thuê căn hộ D\'Capitale C6 2 ngủ nội thất hàn quốc đẹp', '<p><em>Căn hộ D&#39;Capitale 2 ngủ 2 vệ sinh cho thu&ecirc; nội thất đẹp chủ người H&agrave;n th&acirc;n thiện</em></p>\r\n\r\n<p><strong>Đặc điểm căn hộ:</strong></p>\r\n\r\n<p>① Diện t&iacute;ch</p>\r\n\r\n<p>Diện t&iacute;ch tim tường: 77,1m2</p>\r\n\r\n<p>Diện t&iacute;ch th&ocirc;ng thủy: 68,9m2</p>\r\n\r\n<p>② 2&nbsp;ph&ograve;ng ngủ, 2 vệ sinh</p>\r\n\r\n<p>③ Nội thất đầy đủ</p>\r\n\r\n<p>④ Gi&aacute; thu&ecirc;: 16tr&nbsp;(chưa bao gồm ph&iacute; dịch vụ sử dụng)</p>\r\n\r\n<hr />\r\n<p><strong>Tiện &iacute;ch dự &aacute;n:</strong></p>\r\n\r\n<p>① Hồ bơi, S&acirc;n thể thao, Gym</p>\r\n\r\n<p>② Khu vui chơi trẻ em</p>\r\n\r\n<p>③ Vườn BBQ, tổ chức sự kiện ngo&agrave;i trời</p>\r\n\r\n<p>④ Trung t&acirc;m thương mai, cửa h&agrave;ng tiện lợi, cafe</p>\r\n\r\n<p><strong>Điều khoản Hợp đồng:</strong></p>\r\n\r\n<p>① Ph&aacute;p l&yacute; căn hộ r&otilde; r&agrave;ng, kh&ocirc;ng tranh chấp</p>\r\n\r\n<p>② K&iacute; hợp đồng trực tiếp ch&iacute;nh chủ, thủ tục nhanh gọn</p>\r\n\r\n<p>③ Hợp đồng 1 năm, cọc 1 th&aacute;ng</p>\r\n\r\n<p>④ Thanh to&aacute;n 3 th&aacute;ng/lần</p>\r\n\r\n<p>⑤ V&agrave;o lu&ocirc;n</p>', NULL, 'Cho thuê căn hộ D\'Capitale C6 2 ngủ nội thất hàn quốc đẹp', 'Cho thuê căn hộ D\'Capitale C6 2 ngủ nội thất hàn quốc đẹp', 'cho-thue-can-ho-dcapitale-c6-2-ngu-noi-that-han-quoc-dep-pi192', 1, 'z3033854157989_267bbb1c9aba740705a9bc04ad3c0c10.jpg.jpg', 16000000, 0, '2PN', 2, 77, 'Full', 'Tây Bắc', NULL, 'vi', 1, 437, 1, 'Vinhomes D\'capitale', 'DC01931', '2021-12-19 09:34:30', '2021-12-19 09:51:22'),
(193, 6, '디캐피탈 C6동 방2개 예쁘고 한국인 선호하는 인테리어 디자인', '디캐피탈 C6동 방2개 예쁘고 한국인 선호하는 인테리어 디자인', '<p>디캐피탈 경남뷰 C6동 방2개 풀옵션 인테리어가 예쁘고 한국 주인분이 친절합니다.</p>\r\n\r\n<p><strong>아파트의 특징:</strong></p>\r\n\r\n<p>① 면적</p>\r\n\r\n<p id=\"SE-a6505aad-59bc-4fd7-a636-18f13d5ab243\">벽심면적: 77.19스퀘어 ~ 23.34평</p>\r\n\r\n<p id=\"SE-3a51ec36-6a3f-4b68-8bd8-32eb93f2e4eb\">사용면적: 68.90스퀘어 ~ 20.84평</p>\r\n\r\n<p>② C6동 침실2개, 화장실2개</p>\r\n\r\n<p>③ 풀옵션</p>\r\n\r\n<p>④ 임대료: 1600만동 (관리비, 전기세, 물세 등 미포함 - 세입자 부담)</p>\r\n\r\n<p>⑤ 바로 입주 가능</p>\r\n\r\n<hr />\r\n<p><strong>유털리티:</strong></p>\r\n\r\n<p>① 호수, 운동장, 헬스장</p>\r\n\r\n<p>② 놀이터</p>\r\n\r\n<p>③&nbsp;야외 바베큐장, 행사 계죄 구역</p>\r\n\r\n<p>④ 쇼핑몰, 편의점, 카페</p>\r\n\r\n<p><strong>계약 조건:</strong></p>\r\n\r\n<p>① 명확한 법적 서류</p>\r\n\r\n<p>② 주인분과 직접 계약</p>\r\n\r\n<p>③ 1년 계약, 1달 보증금</p>\r\n\r\n<p>④ 3개월 선불 가능</p>\r\n\r\n<p>⑤ 구경 문의시 연락 부탁</p>', NULL, '디캐피탈 C6동 방2개 예쁘고 한국인 선호하는 인테리어 디자인', '디캐피탈 C6동 방2개 예쁘고 한국인 선호하는 인테리어 디자인', '디캐피탈-c6동-방2개-예쁘고-한국인-선호하는-인테리어-디자인-pi193', 1, '디캐피탈 (4).jpg.jpg', 695, 1, '2PN', 2, 77, 'Full', 'Tây Bắc', NULL, 'ko', 0, 245, 1, 'Vinhomes D\'capitale', 'DC01931', '2021-12-19 09:37:40', '2021-12-19 09:37:40'),
(197, 6, 'Chuyển nhượng căn hộ Vinhomes West Point Duplex nội thất đầy đủ', 'Chuyển nhượng căn hộ Vinhomes West Point Duplex nội thất đầy đủ', '<p>Căn hộ Vinhomes West Point duplex 2 tầng đầy đủ nội thất tiện nghi.</p>\r\n\r\n<p><strong>Đặc điểm căn hộ:</strong></p>\r\n\r\n<p>① Diện t&iacute;ch: 80m2</p>\r\n\r\n<p>② Duplex</p>\r\n\r\n<p>③ Nội thất đầy đủ</p>\r\n\r\n<p>④ Gi&aacute; b&aacute;n: 4.35&nbsp;tỷ&nbsp;(bao to&agrave;n bộ ph&iacute;)</p>\r\n\r\n<hr />\r\n<p><strong>Tiện &iacute;ch dự &aacute;n:</strong></p>\r\n\r\n<p>① Hầm gửi xe &ocirc; t&ocirc;, xe m&aacute;y</p>\r\n\r\n<p>② Vườn treo tầng 5, khu vui chơi trẻ em</p>\r\n\r\n<p>③ Bể bơi 4 m&ugrave;a, Gym</p>\r\n\r\n<p>④ Trung t&acirc;m thương mại, cửa h&agrave;ng tiện lợi, cafe</p>\r\n\r\n<p><strong>Điều khoản Hợp đồng:</strong></p>\r\n\r\n<p>① Ph&aacute;p l&yacute; căn hộ r&otilde; r&agrave;ng, kh&ocirc;ng tranh chấp</p>\r\n\r\n<p>② K&iacute; hợp đồng trực tiếp ch&iacute;nh chủ, thủ tục nhanh gọn</p>\r\n\r\n<p>③ K&yacute; cọc 100tr</p>\r\n\r\n<p>④ Thanh to&aacute;n khoản c&ograve;n lại khi k&yacute; hợp đồng mua b&aacute;n tại ph&ograve;ng c&ocirc;ng chứng.</p>', NULL, 'Chuyển nhượng căn hộ Vinhomes West Point Duplex nội thất đầy đủ', 'Chuyển nhượng căn hộ Vinhomes West Point Duplex nội thất đầy đủ', 'chuyen-nhuong-can-ho-vinhomes-west-point-duplex-noi-that-day-du-pi197', 1, '웨스트포인트 (9).jpg8qrUVbEuy.jpg', 4350000000, 0, '3PN', 2, 80, 'Full', 'Tây Bắc', NULL, 'vi', 0, 348, 0, 'Vinhomes West Point', 'WP00272', '2021-12-29 07:36:17', '2021-12-29 07:36:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categorie_langs`
--

CREATE TABLE `product_categorie_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_cate_id` bigint(20) UNSIGNED NOT NULL,
  `product_cate_lang_id` bigint(20) NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categorie_langs`
--

INSERT INTO `product_categorie_langs` (`id`, `product_cate_id`, `product_cate_lang_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'ko', '2021-10-14 05:35:54', '2021-10-14 05:35:54'),
(2, 3, 4, 'ko', '2021-10-14 05:39:12', '2021-10-14 05:39:12'),
(3, 5, 6, 'ko', '2021-10-14 05:41:24', '2021-10-14 05:41:24'),
(4, 7, 8, 'ko', '2021-10-14 05:43:01', '2021-10-14 05:43:01'),
(5, 9, 10, 'ko', '2021-10-18 07:56:56', '2021-10-18 07:56:56'),
(6, 11, 12, 'ko', '2021-10-18 07:59:21', '2021-10-18 07:59:21'),
(7, 13, 14, 'ko', '2021-10-18 08:01:01', '2021-10-18 08:01:01'),
(8, 15, 16, 'ko', '2021-10-18 08:02:18', '2021-10-18 08:02:18'),
(9, 17, 18, 'ko', '2021-10-18 08:03:31', '2021-10-18 08:03:31'),
(10, 19, 20, 'ko', '2021-10-18 08:04:28', '2021-10-18 08:04:28'),
(11, 21, 22, 'ko', '2021-10-18 08:05:30', '2021-10-18 08:05:30'),
(12, 23, 24, 'ko', '2021-10-18 08:06:26', '2021-10-18 08:06:26'),
(13, 25, 26, 'ko', '2021-10-18 08:08:04', '2021-10-18 08:08:04'),
(14, 27, 28, 'ko', '2021-10-18 08:08:48', '2021-10-18 08:08:48'),
(15, 29, 30, 'ko', '2021-10-18 08:09:52', '2021-10-18 08:09:52'),
(16, 31, 32, 'ko', '2021-10-18 08:11:12', '2021-10-18 08:11:12'),
(17, 33, 34, 'ko', '2021-10-18 08:12:26', '2021-10-18 08:12:26'),
(18, 35, 36, 'ko', '2021-10-18 08:13:30', '2021-10-18 08:13:30'),
(19, 37, 38, 'ko', '2021-10-18 08:14:50', '2021-10-18 08:14:50'),
(20, 39, 40, 'ko', '2021-10-18 08:29:29', '2021-10-18 08:29:29'),
(21, 41, 42, 'ko', '2021-10-18 08:30:11', '2021-10-18 08:30:11'),
(22, 43, 44, 'ko', '2021-10-18 08:31:01', '2021-10-18 08:31:01'),
(23, 45, 46, 'ko', '2021-10-18 08:31:41', '2021-10-18 08:31:41'),
(24, 47, 48, 'ko', '2021-10-18 08:32:43', '2021-10-18 08:32:43'),
(25, 49, 50, 'ko', '2021-10-18 08:33:29', '2021-10-18 08:33:29'),
(26, 51, 52, 'ko', '2021-10-18 08:34:18', '2021-10-18 08:34:18'),
(27, 53, 54, 'ko', '2021-10-18 08:35:00', '2021-10-18 08:35:00'),
(28, 55, 56, 'ko', '2021-10-18 08:39:55', '2021-10-18 08:39:55'),
(29, 57, 58, 'ko', '2021-10-18 08:40:58', '2021-10-18 08:40:58'),
(30, 59, 60, 'ko', '2021-10-18 08:41:47', '2021-10-18 08:41:47'),
(31, 7, 61, 'en', '2021-12-02 15:20:03', '2021-12-02 15:20:03'),
(32, 5, 62, 'en', '2021-12-02 15:20:44', '2021-12-02 15:20:44'),
(33, 55, 63, 'en', '2021-12-02 15:22:21', '2021-12-02 15:22:21'),
(34, 57, 64, 'en', '2021-12-02 15:35:46', '2021-12-02 15:35:46'),
(35, 59, 65, 'en', '2021-12-02 15:36:07', '2021-12-02 15:36:07'),
(36, 3, 66, 'en', '2021-12-02 15:36:50', '2021-12-02 15:36:50'),
(37, 9, 67, 'en', '2021-12-02 15:37:14', '2021-12-02 15:37:14'),
(38, 11, 68, 'en', '2021-12-02 15:37:38', '2021-12-02 15:37:38'),
(39, 13, 69, 'en', '2021-12-02 15:38:37', '2021-12-02 15:38:37'),
(40, 15, 70, 'en', '2021-12-02 15:40:02', '2021-12-02 15:40:02'),
(41, 17, 71, 'en', '2021-12-02 15:40:27', '2021-12-02 15:40:27'),
(42, 19, 72, 'en', '2021-12-02 15:41:20', '2021-12-02 15:41:20'),
(43, 21, 73, 'en', '2021-12-02 15:41:44', '2021-12-02 15:41:44'),
(44, 23, 74, 'en', '2021-12-02 15:42:10', '2021-12-02 15:42:10'),
(45, 25, 75, 'en', '2021-12-02 15:42:36', '2021-12-02 15:42:36'),
(46, 27, 76, 'en', '2021-12-02 15:42:59', '2021-12-02 15:42:59'),
(47, 29, 77, 'en', '2021-12-02 15:43:20', '2021-12-02 15:43:20'),
(48, 31, 78, 'en', '2021-12-02 15:44:16', '2021-12-02 15:44:16'),
(49, 33, 79, 'en', '2021-12-02 15:44:46', '2021-12-02 15:44:46'),
(50, 35, 80, 'en', '2021-12-02 15:45:59', '2021-12-02 15:45:59'),
(51, 37, 81, 'en', '2021-12-02 15:46:20', '2021-12-02 15:46:20'),
(52, 1, 82, 'en', '2021-12-02 15:47:02', '2021-12-02 15:47:02'),
(53, 39, 83, 'en', '2021-12-02 15:48:01', '2021-12-02 15:48:01'),
(54, 41, 84, 'en', '2021-12-02 15:48:26', '2021-12-02 15:48:26'),
(55, 43, 85, 'en', '2021-12-02 15:48:51', '2021-12-02 15:48:51'),
(56, 45, 86, 'en', '2021-12-02 15:49:12', '2021-12-02 15:49:12'),
(57, 47, 87, 'en', '2021-12-02 15:49:54', '2021-12-02 15:49:54'),
(58, 49, 88, 'en', '2021-12-02 15:51:07', '2021-12-02 15:51:07'),
(59, 51, 89, 'en', '2021-12-02 15:51:26', '2021-12-02 15:51:26'),
(60, 53, 90, 'en', '2021-12-02 15:51:44', '2021-12-02 15:51:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_cates`
--

CREATE TABLE `product_cates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` longtext COLLATE utf8mb4_unicode_ci,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avata` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_cates`
--

INSERT INTO `product_cates` (`id`, `parent_id`, `name`, `url`, `title`, `seo_description`, `seo_keyword`, `avata`, `lang`, `display`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Sản Phẩm Chuyển Nhượng', 'san-pham-chuyen-nhuong-pc1', 'Sản Phẩm Chuyển Nhượng', 'Sản Phẩm Chuyển Nhượng', 'Sản Phẩm Chuyển Nhượng', 'Logo-04.png', 'vi', 1, '2021-10-14 05:34:57', '2021-11-04 03:10:15'),
(2, NULL, '부동산 전매', '부동산-전매-pc2', '부동산 전매', '부동산 전매', '부동산 전매', 'Logo-04.png', 'ko', 1, '2021-10-14 05:35:54', '2021-10-14 05:35:54'),
(3, NULL, 'Sản Phẩm Cho Thuê', 'san-pham-cho-thue-pc3', 'Sản Phẩm Cho Thuê', 'Sản Phẩm Cho Thuê', 'Sản Phẩm Cho Thuê', 'Logo-04.png', 'vi', 1, '2021-10-14 05:38:42', '2021-11-04 03:09:51'),
(4, NULL, '부동산 임대', '부동산-임대-pc4', '부동산 임대', '부동산 임대', '부동산 임대', 'Logo-04.png', 'ko', 1, '2021-10-14 05:39:12', '2021-10-14 05:39:12'),
(5, NULL, 'Sản Phẩm Đầu Tư', 'san-pham-chu-dau-tu-pc5', 'Sản Phẩm Đầu Tư', 'Sản Phẩm Đầu Tư', 'Sản Phẩm Đầu Tư', 'Logo-04.png', 'vi', 1, '2021-10-14 05:39:47', '2021-11-04 03:09:20'),
(6, NULL, '부동산 분양', '부동산-분양-pc6', '부동산 분양', '부동산 분양', '부동산 분양', 'Logo-04.png', 'ko', 1, '2021-10-14 05:41:24', '2021-10-14 05:41:24'),
(7, NULL, 'Sản Phẩm Đặc Biệt', 'san-pham-dac-biet-pc7', 'Sản Phẩm Đặc Biệt', 'Sản Phẩm Đặc Biệt', 'Sản Phẩm Đặc Biệt', 'Logo-04.png', 'vi', 1, '2021-10-14 05:42:08', '2021-11-04 03:08:30'),
(8, NULL, '특별한 부동산', '특별한-부동산-pc8', '특별한 부동산', '특별한 부동산', '특별한 부동산', 'Logo-04.png', 'ko', 1, '2021-10-14 05:43:01', '2021-10-14 05:43:01'),
(9, 3, 'Vinhomes D\'capitale', 'vinhomes-dcapitale-pc9', 'Vinhomes D\'capitale', 'Vinhomes D\'capitale', 'Vinhomes D\'capitale', 'Logo-04.png', 'vi', 1, '2021-10-18 07:55:31', '2021-10-18 07:55:31'),
(10, 4, '빈홉 디캐피탈', '빈홉-디캐피탈-pc10', '빈홉 디캐피탈', '빈홉 디캐피탈', '빈홉 디캐피탈', 'Logo-04.png', 'ko', 1, '2021-10-18 07:56:56', '2021-10-18 07:56:56'),
(11, 3, 'Vinhomes Gardenia', 'vinhomes-gardenia-pc11', 'Vinhomes Gardenia', 'Vinhomes Gardenia', 'Vinhomes Gardenia', 'Logo-04.png', 'vi', 1, '2021-10-18 07:58:55', '2021-10-18 07:58:55'),
(12, 4, '빈홈 가드니아', '빈홈-가드니아-pc12', '빈홈 가드니아', '빈홈 가드니아', '빈홈 가드니아', 'Logo-04.png', 'ko', 1, '2021-10-18 07:59:21', '2021-10-18 07:59:21'),
(13, 3, 'Vinhomes Greenbay', 'vinhomes-greenbay-pc13', 'Vinhomes Greenbay', 'Vinhomes Greenbay', 'Vinhomes Greenbay', 'Logo-04.png', 'vi', 1, '2021-10-18 08:00:26', '2021-10-18 08:00:26'),
(14, 4, '빈홈 그린베이', '빈홈-그린베이-pc14', '빈홈 그린베이', '빈홈 그린베이', '빈홈 그린베이', 'Logo-04.png', 'ko', 1, '2021-10-18 08:01:01', '2021-10-18 08:01:01'),
(15, 3, 'Vinhomes Royal City', 'vinhomes-royal-city-pc15', 'Vinhomes Royal City', 'Vinhomes Royal City', 'Vinhomes Royal City', 'Logo-04.png', 'vi', 1, '2021-10-18 08:01:43', '2021-10-18 08:01:43'),
(16, 4, '빈홈 로얄 시티', '빈홈-로얄-시티-pc16', '빈홈 로얄 시티', '빈홈 로얄 시티', '빈홈 로얄 시티', 'Logo-04.png', 'ko', 1, '2021-10-18 08:02:18', '2021-10-18 08:02:18'),
(17, 3, 'Vinhomes Skylake', 'vinhomes-skylake-pc17', 'Vinhomes Skylake', 'Vinhomes Skylake', 'Vinhomes Skylake', 'Logo-04.png', 'vi', 1, '2021-10-18 08:02:51', '2021-10-18 08:02:51'),
(18, 4, '빈홈 스카이레이크', '빈홈-스카이레이크-pc18', '빈홈 스카이레이크', '빈홈 스카이레이크', '빈홈 스카이레이크', 'Logo-04.png', 'ko', 1, '2021-10-18 08:03:31', '2021-10-18 08:03:31'),
(19, 3, 'Vinhomes Smart City', 'vinhomes-smart-city-pc19', 'Vinhomes Smart City', 'Vinhomes Smart City', 'Vinhomes Smart City', 'Logo-04.png', 'vi', 1, '2021-10-18 08:04:02', '2021-10-18 08:04:02'),
(20, 4, '빈홈 스마트시티', '빈홈-스마트시티-pc20', '빈홈 스마트시티', '빈홈 스마트시티', '빈홈 스마트시티', 'Logo-04.png', 'ko', 1, '2021-10-18 08:04:28', '2021-10-18 08:04:28'),
(21, 3, 'Vinhomes West Point', 'vinhomes-west-point-pc21', 'Vinhomes West Point', 'Vinhomes West Point', 'Vinhomes West Point', 'Logo-04.png', 'vi', 1, '2021-10-18 08:05:01', '2021-10-18 08:05:01'),
(22, 4, '빈홈 웨스트 포인트', '빈홈-웨스트-포인트-pc22', '빈홈 웨스트 포인트', '빈홈 웨스트 포인트', '빈홈 웨스트 포인트', 'Logo-04.png', 'ko', 1, '2021-10-18 08:05:30', '2021-10-18 08:05:30'),
(23, 3, 'Keang Nam', 'keang-nam-pc23', 'Keang Nam', 'Keang Nam', 'Keang Nam', 'Logo-04.png', 'vi', 1, '2021-10-18 08:05:54', '2021-10-18 08:05:54'),
(24, 4, '경남', '경남-pc24', '경남', '경남', '경남', 'Logo-04.png', 'ko', 1, '2021-10-18 08:06:26', '2021-10-18 08:06:26'),
(25, 3, 'The Zei', 'the-zei-pc25', 'The Zei', 'The Zei', 'The Zei', 'Logo-04.png', 'vi', 1, '2021-10-18 08:07:37', '2021-10-18 08:07:37'),
(26, 4, '더 제이', '더-제이-pc26', '더 제이', '더 제이', '더 제이', 'Logo-04.png', 'ko', 1, '2021-10-18 08:08:04', '2021-10-18 08:08:04'),
(27, 3, 'Sunshine City', 'sunshine-city-pc27', 'Sunshine City', 'Sunshine City', 'Sunshine City', 'Logo-04.png', 'vi', 1, '2021-10-18 08:08:26', '2021-10-18 08:08:26'),
(28, 4, '선샤인시티', '선샤인시티-pc28', '선샤인시티', '선샤인시티', '선샤인시티', 'Logo-04.png', 'ko', 1, '2021-10-18 08:08:48', '2021-10-18 08:08:48'),
(29, 3, 'Sunshine Center', 'sunshine-center-pc29', 'Sunshine Center', 'Sunshine Center', 'Sunshine Center', 'Logo-04.png', 'vi', 1, '2021-10-18 08:09:24', '2021-10-18 08:09:24'),
(30, 4, '선샤인센터', '선샤인센터-pc30', '선샤인센터', '선샤인센터', '선샤인센터', 'Logo-04.png', 'ko', 1, '2021-10-18 08:09:52', '2021-10-18 08:09:52'),
(31, 3, 'Mặt bằng kinh doanh', 'mat-bang-kinh-doanh-pc31', 'Mặt bằng kinh doanh', 'Mặt bằng kinh doanh', 'Mặt bằng kinh doanh', 'Logo-04.png', 'vi', 1, '2021-10-18 08:10:48', '2021-10-18 08:10:48'),
(32, 4, '숍하우스', '숍하우스-pc32', '숍하우스', '숍하우스', '숍하우스', 'Logo-04.png', 'ko', 1, '2021-10-18 08:11:12', '2021-10-18 08:11:12'),
(33, 3, 'Mỹ Đình Pearl', 'my-dinh-pearl-pc33', 'Mỹ Đình Pearl', 'Mỹ Đình Pearl', 'Mỹ Đình Pearl', 'Logo-04.png', 'vi', 1, '2021-10-18 08:11:41', '2021-10-18 08:11:41'),
(34, 4, '미딩 펄', '미딩-펄-pc34', '미딩 펄', '미딩 펄', '미딩 펄', 'Logo-04.png', 'ko', 1, '2021-10-18 08:12:26', '2021-10-18 08:12:26'),
(35, 3, 'CT8 - The Emerald', 'ct8-the-emerald-pc35', 'CT8 - The Emerald', 'CT8 - The Emerald', 'CT8 - The Emerald', 'Logo-04.png', 'vi', 1, '2021-10-18 08:13:09', '2021-10-18 08:13:09'),
(36, 4, 'CT8- 더 에메랄드', 'ct8-더-에메랄드-pc36', 'CT8- 더 에메랄드', 'CT8- 더 에메랄드', 'CT8- 더 에메랄드', 'Logo-04.png', 'ko', 1, '2021-10-18 08:13:30', '2021-10-18 08:13:30'),
(37, 3, 'Vinhomes Metropolis', 'vinhomes-metropolis-pc37', 'Vinhomes Metropolis', 'Vinhomes Metropolis', 'Vinhomes Metropolis', 'Logo-04.png', 'vi', 1, '2021-10-18 08:14:03', '2021-10-18 08:14:03'),
(38, 4, '빈홈 메트로폴리스', '빈홈-메트로폴리스-pc38', '빈홈 메트로폴리스', '빈홈 메트로폴리스', '빈홈 메트로폴리스', 'Logo-04.png', 'ko', 1, '2021-10-18 08:14:50', '2021-10-18 08:14:50'),
(39, 1, 'Vinhomes D\'capitale', 'vinhomes-dcapitale-pc39', 'Vinhomes D\'capitale', 'Vinhomes D\'capitale', 'Vinhomes D\'capitale', 'Logo-04.png', 'vi', 1, '2021-10-18 08:28:54', '2021-10-18 08:28:54'),
(40, 2, '빈홉 디캐피탈', '빈홉-디캐피탈-pc40', '빈홉 디캐피탈', '빈홉 디캐피탈', '빈홉 디캐피탈', 'Logo-04.png', 'ko', 1, '2021-10-18 08:29:29', '2021-10-18 08:29:29'),
(41, 1, 'Vinhomes Gardenia', 'vinhomes-gardenia-pc41', 'Vinhomes Gardenia', 'Vinhomes Gardenia', 'Vinhomes Gardenia', 'Logo-04.png', 'vi', 1, '2021-10-18 08:29:48', '2021-10-18 08:29:48'),
(42, 2, '빈홈 가드니아', '빈홈-가드니아-pc42', '빈홈 가드니아', '빈홈 가드니아', '빈홈 가드니아', 'Logo-04.png', 'ko', 1, '2021-10-18 08:30:11', '2021-10-18 08:30:11'),
(43, 1, 'Vinhomes Greenbay', 'vinhomes-greenbay-pc43', 'Vinhomes Greenbay', 'Vinhomes Greenbay', 'Vinhomes Greenbay', 'Logo-04.png', 'vi', 1, '2021-10-18 08:30:38', '2021-10-18 08:30:38'),
(44, 2, '빈홈 그린베이', '빈홈-그린베이-pc44', '빈홈 그린베이', '빈홈 그린베이', '빈홈 그린베이', 'Logo-04.png', 'ko', 1, '2021-10-18 08:31:01', '2021-10-18 08:31:01'),
(45, 1, 'Vinhomes Metropolis', 'vinhomes-metropolis-pc45', 'Vinhomes Metropolis', 'Vinhomes Metropolis', 'Vinhomes Metropolis', 'Logo-04.png', 'vi', 1, '2021-10-18 08:31:22', '2021-10-18 08:31:22'),
(46, 2, '빈홈 메트로폴리스', '빈홈 메트로폴리스-pc46', '빈홈 로얄 시티', '빈홈 메트로폴리스', '빈홈 메트로폴리스', 'Logo-04.png', 'ko', 1, '2021-10-18 08:31:41', '2021-10-22 03:02:13'),
(47, 1, 'Vinhomes Royal City', 'vinhomes-royal-city-pc47', 'Vinhomes Royal City', 'Vinhomes Royal City', 'Vinhomes Royal City', 'Logo-04.png', 'vi', 1, '2021-10-18 08:32:13', '2021-10-18 08:32:13'),
(48, 2, '빈홈 로얄 시티', '빈홈 로얄 시티-pc48', '빈홈 로얄 시티', '빈홈 로얄 시티', '빈홈 로얄 시티', 'Logo-04.png', 'ko', 1, '2021-10-18 08:32:43', '2021-10-22 02:53:19'),
(49, 1, 'Vinhomes Skylake', 'vinhomes-skylake-pc49', 'Vinhomes Skylake', 'Vinhomes Skylake', 'Vinhomes Skylake', 'Logo-04.png', 'vi', 1, '2021-10-18 08:33:08', '2021-10-18 08:33:08'),
(50, 2, '빈홈 스카이레이크', '빈홈 스카이레이크-pc50', '빈홈 스마트시티', '빈홈 스카이레이크', '빈홈 스카이레이크', 'Logo-04.png', 'ko', 1, '2021-10-18 08:33:29', '2021-10-22 02:54:09'),
(51, 1, 'Vinhomes Smart City', 'vinhomes-smart-city-pc51', 'Vinhomes Smart City', 'Vinhomes Smart City', 'Vinhomes Smart City', 'Logo-04.png', 'vi', 1, '2021-10-18 08:33:53', '2021-10-18 08:33:53'),
(52, 2, '빈홈 스마트시티', '빈홈 스마트시티-pc52', '빈홈 스마트시티', '빈홈 웨스트 포인트', '빈홈 스마트시티', 'Logo-04.png', 'ko', 1, '2021-10-18 08:34:18', '2021-10-22 02:54:59'),
(53, 1, 'Vinhomes West Point', 'vinhomes-west-point-pc53', 'Vinhomes West Point', 'Vinhomes West Point', 'Vinhomes West Point', 'Logo-04.png', 'vi', 1, '2021-10-18 08:34:42', '2021-10-18 08:34:42'),
(54, 2, '빈홈 웨스트 포인트', '빈홈 웨스트 포인트-pc54', '빈홈 웨스트 포인트', '빈홈 웨스트 포인트', '빈홈 웨스트 포인트', 'Logo-04.png', 'ko', 1, '2021-10-18 08:35:00', '2021-10-22 02:56:10'),
(55, 5, 'The Matrix One', 'the-matrix-one-pc55', 'The Matrix One', 'The Matrix One', 'The Matrix One', 'Logo-04.png', 'vi', 1, '2021-10-18 08:39:31', '2021-10-18 08:39:31'),
(56, 6, '더 매트릭스 원', '더-매트릭스-원-pc56', '더 매트릭스 원', '더 매트릭스 원', '더 매트릭스 원', 'Logo-04.png', 'ko', 1, '2021-10-18 08:39:55', '2021-10-18 08:39:55'),
(57, 5, 'Vinhomes Smart City', 'vinhomes-smart-city-pc57', 'Vinhomes Smart City', 'Vinhomes Smart City', 'Vinhomes Smart City', 'Logo-04.png', 'vi', 1, '2021-10-18 08:40:20', '2021-10-18 08:40:20'),
(58, 6, '빈홈 스마트시티', '빈홈-스마트시티-pc58', '빈홈 스마트시티', '빈홈 스마트시티', '빈홈 스마트시티', 'Logo-04.png', 'ko', 1, '2021-10-18 08:40:58', '2021-10-18 08:40:58'),
(59, 5, 'Vinhomes West Point', 'vinhomes-west-point-pc59', 'Vinhomes West Point', 'Vinhomes West Point', 'Vinhomes West Point', 'Logo-04.png', 'vi', 1, '2021-10-18 08:41:22', '2021-10-18 08:41:22'),
(60, 6, '빈홈 웨스트 포인트', '빈홈-웨스트-포인트-pc60', '빈홈 웨스트 포인트', '빈홈 웨스트 포인트', '빈홈 웨스트 포인트', 'Logo-04.png', 'ko', 1, '2021-10-18 08:41:47', '2021-10-18 08:41:47'),
(61, NULL, 'Special Properties', 'special-properties-pc61', 'Special Properties', 'Special Properties', 'Special Properties', 'Logo-04.png', 'en', 1, '2021-12-02 15:20:03', '2021-12-02 15:20:03'),
(62, NULL, 'Investment Properties', 'investment-properties-pc62', 'Investment Properties', 'Investment Properties', 'Investment Properties', 'Logo-04.png', 'en', 1, '2021-12-02 15:20:44', '2021-12-02 15:20:44'),
(63, 62, 'The Matrix One', 'the-matrix-one-pc63', 'The Matrix One', 'The Matrix One', 'The Matrix One', 'Logo-04.png', 'en', 1, '2021-12-02 15:22:21', '2021-12-02 15:22:21'),
(64, 62, 'Vinhomes Smart City', 'vinhomes-smart-city-pc64', 'Vinhomes Smart City', 'Vinhomes Smart City', 'Vinhomes Smart City', 'Logo-04.png', 'en', 1, '2021-12-02 15:35:46', '2021-12-02 15:35:46'),
(65, 62, 'Vinhomes West Point', 'vinhomes-west-point-pc65', 'Vinhomes West Point', 'Vinhomes West Point', 'Vinhomes West Point', 'Logo-04.png', 'en', 1, '2021-12-02 15:36:07', '2021-12-02 15:36:07'),
(66, NULL, 'Properties For Rent', 'properties-for-rent-pc66', 'Properties For Rent', 'Properties For Rent', 'Properties For Rent', 'Logo-04.png', 'en', 1, '2021-12-02 15:36:50', '2021-12-02 15:36:50'),
(67, 66, 'Vinhomes D\'capitale', 'vinhomes-dcapitale-pc67', 'Vinhomes D\'capitale', 'Vinhomes D\'capitale', 'Vinhomes D\'capitale', 'Logo-04.png', 'en', 1, '2021-12-02 15:37:14', '2021-12-02 15:37:14'),
(68, 66, 'Vinhomes Gardenia', 'vinhomes-gardenia-pc68', 'Vinhomes Gardenia', 'Vinhomes Gardenia', 'Vinhomes Gardenia', 'Logo-04.png', 'en', 1, '2021-12-02 15:37:38', '2021-12-02 15:37:38'),
(69, 66, 'Vinhomes Greenbay', 'vinhomes-greenbay-pc69', 'Vinhomes Greenbay', 'Vinhomes Greenbay', 'Vinhomes Greenbay', 'Logo-04.png', 'en', 1, '2021-12-02 15:38:37', '2021-12-02 15:39:27'),
(70, 66, 'Vinhomes Royal City', 'vinhomes-royal-city-pc70', 'Vinhomes Royal City', 'Vinhomes Royal City', 'Vinhomes Royal City', 'Logo-04.png', 'en', 1, '2021-12-02 15:40:02', '2021-12-02 15:40:02'),
(71, 66, 'Vinhomes Skylake', 'vinhomes-skylake-pc71', 'Vinhomes Skylake', 'Vinhomes Skylake', 'Vinhomes Skylake', 'Logo-04.png', 'en', 1, '2021-12-02 15:40:27', '2021-12-02 15:40:27'),
(72, 66, 'Vinhomes Smart City', 'vinhomes-smart-city-pc72', 'Vinhomes Smart City', 'Vinhomes Smart City', 'Vinhomes Smart City', 'Logo-04.png', 'en', 1, '2021-12-02 15:41:20', '2021-12-02 15:41:20'),
(73, 66, 'Vinhomes West Point', 'vinhomes-west-point-pc73', 'Vinhomes West Point', 'Vinhomes West Point', 'Vinhomes West Point', 'Logo-04.png', 'en', 1, '2021-12-02 15:41:44', '2021-12-02 15:41:44'),
(74, 66, 'Keang Nam', 'keang-nam-pc74', 'Keang Nam', 'Keang Nam', 'Keang Nam', 'Logo-04.png', 'en', 1, '2021-12-02 15:42:10', '2021-12-02 15:42:10'),
(75, 66, 'The Zei', 'the-zei-pc75', 'The Zei', 'The Zei', 'The Zei', 'Logo-04.png', 'en', 1, '2021-12-02 15:42:36', '2021-12-02 15:42:36'),
(76, 66, 'Sunshine City', 'sunshine-city-pc76', 'Sunshine City', 'Sunshine City', 'Sunshine City', 'Logo-04.png', 'en', 1, '2021-12-02 15:42:59', '2021-12-02 15:42:59'),
(77, 66, 'Sunshine Center', 'sunshine-center-pc77', 'Sunshine Center', 'Sunshine Center', 'Sunshine Center', 'Logo-04.png', 'en', 1, '2021-12-02 15:43:20', '2021-12-02 15:43:20'),
(78, 66, 'Shophouse', 'shophouse-pc78', 'Shophouse', 'Shophouse', 'Shophouse', 'Logo-04.png', 'en', 1, '2021-12-02 15:44:16', '2021-12-02 15:44:16'),
(79, 66, 'My Dinh Pearl', 'my-dinh-pearl-pc79', 'My Dinh Pearl', 'My Dinh Pearl', 'My Dinh Pearl', 'Logo-04.png', 'en', 1, '2021-12-02 15:44:46', '2021-12-02 15:44:46'),
(80, 66, 'CT8 - The Emerald', 'ct8-the-emerald-pc80', 'CT8 - The Emerald', 'CT8 - The Emerald', 'CT8 - The Emerald', 'Logo-04.png', 'en', 1, '2021-12-02 15:45:59', '2021-12-02 15:45:59'),
(81, 66, 'Vinhomes Metropolis', 'vinhomes-metropolis-pc81', 'Vinhomes Metropolis', 'Vinhomes Metropolis', 'Vinhomes Metropolis', 'Logo-04.png', 'en', 1, '2021-12-02 15:46:20', '2021-12-02 15:46:20'),
(82, NULL, 'Propeties For Sale', 'propeties-for-sale-pc82', 'Propeties For Sale', 'Propeties For Sale', 'Propeties For Sale', 'Logo-04.png', 'en', 1, '2021-12-02 15:47:02', '2021-12-02 15:47:02'),
(83, 82, 'Vinhomes D\'capitale', 'vinhomes-dcapitale-pc83', 'Vinhomes D\'capitale', 'Vinhomes D\'capitale', 'Vinhomes D\'capitale', 'Logo-04.png', 'en', 1, '2021-12-02 15:48:01', '2021-12-02 15:48:01'),
(84, 82, 'Vinhomes Gardenia', 'vinhomes-gardenia-pc84', 'Vinhomes Gardenia', 'Vinhomes Gardenia', 'Vinhomes Gardenia', 'Logo-04.png', 'en', 1, '2021-12-02 15:48:26', '2021-12-02 15:48:26'),
(85, 82, 'Vinhomes Greenbay', 'vinhomes-greenbay-pc85', 'Vinhomes Greenbay', 'Vinhomes Greenbay', 'Vinhomes Greenbay', 'Logo-04.png', 'en', 1, '2021-12-02 15:48:51', '2021-12-02 15:48:51'),
(86, 82, 'Vinhomes Metropolis', 'vinhomes-metropolis-pc86', 'Vinhomes Metropolis', 'Vinhomes Metropolis', 'Vinhomes Metropolis', 'Logo-04.png', 'en', 1, '2021-12-02 15:49:12', '2021-12-02 15:49:12'),
(87, 82, 'Vinhomes Royal City', 'vinhomes-royal-city-pc87', 'Vinhomes Royal City', 'Vinhomes Royal City', 'Vinhomes Royal City', 'Logo-04.png', 'en', 1, '2021-12-02 15:49:54', '2021-12-02 15:49:54'),
(88, 82, 'Vinhomes Skylake', 'vinhomes-skylake-pc88', 'Vinhomes Skylake', 'Vinhomes Skylake', 'Vinhomes Skylake', 'Logo-04.png', 'en', 1, '2021-12-02 15:51:07', '2021-12-02 15:51:07'),
(89, 82, 'Vinhomes Smart City', 'vinhomes-smart-city-pc89', 'Vinhomes Smart City', 'Vinhomes Smart City', 'Vinhomes Smart City', 'Logo-04.png', 'en', 1, '2021-12-02 15:51:26', '2021-12-02 15:51:26'),
(90, 82, 'Vinhomes West Point', 'vinhomes-west-point-pc90', 'Vinhomes West Point', 'Vinhomes West Point', 'Vinhomes West Point', 'Logo-04.png', 'en', 1, '2021-12-02 15:51:44', '2021-12-02 15:51:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(1) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `url`, `role`, `product_id`, `created_at`, `updated_at`) VALUES
(1609, '디캐피탈임대 1-min.jpg.jpg', 0, 140, '2021-11-27 03:44:11', '2021-11-27 03:44:11'),
(1610, '디캐피탈임대 6-min.jpg.jpg', 0, 140, '2021-11-27 03:44:12', '2021-11-27 03:44:12'),
(1611, '디캐피탈임대 7-min.jpg.jpg', 0, 140, '2021-11-27 03:44:13', '2021-11-27 03:44:13'),
(1612, '디캐피탈임대 8-min.jpg.jpg', 0, 140, '2021-11-27 03:44:14', '2021-11-27 03:44:14'),
(1613, '디캐피탈임대 12-min.jpg.jpg', 0, 140, '2021-11-27 03:44:15', '2021-11-27 03:44:15'),
(1614, '디캐피탈임대 14-min.jpg.jpg', 0, 140, '2021-11-27 03:44:16', '2021-11-27 03:44:16'),
(1615, '디캐피탈임대 19-min.jpg.jpg', 0, 140, '2021-11-27 03:44:17', '2021-11-27 03:44:17'),
(1616, '디캐피탈임대 21-min.jpg.jpg', 0, 140, '2021-11-27 03:44:18', '2021-11-27 03:44:18'),
(1617, '디캐피탈임대 23-min.jpg.jpg', 0, 140, '2021-11-27 03:44:19', '2021-11-27 03:44:19'),
(1618, '디캐피탈임대 25-min.jpg.jpg', 0, 140, '2021-11-27 03:44:20', '2021-11-27 03:44:20'),
(1619, '디캐피탈매매 ㅈ듀.jpg.jpg', 1, 140, '2021-11-27 03:44:21', '2021-11-27 03:44:21'),
(1620, '디캐피탈임대 1-min.jpg.jpg', 0, 141, '2021-11-27 03:45:56', '2021-11-27 03:45:56'),
(1621, '디캐피탈임대 6-min.jpg.jpg', 0, 141, '2021-11-27 03:45:56', '2021-11-27 03:45:56'),
(1622, '디캐피탈임대 7-min.jpg.jpg', 0, 141, '2021-11-27 03:45:56', '2021-11-27 03:45:56'),
(1623, '디캐피탈임대 8-min.jpg.jpg', 0, 141, '2021-11-27 03:45:56', '2021-11-27 03:45:56'),
(1624, '디캐피탈임대 12-min.jpg.jpg', 0, 141, '2021-11-27 03:45:56', '2021-11-27 03:45:56'),
(1625, '디캐피탈임대 14-min.jpg.jpg', 0, 141, '2021-11-27 03:45:56', '2021-11-27 03:45:56'),
(1626, '디캐피탈임대 19-min.jpg.jpg', 0, 141, '2021-11-27 03:45:56', '2021-11-27 03:45:56'),
(1627, '디캐피탈임대 21-min.jpg.jpg', 0, 141, '2021-11-27 03:45:56', '2021-11-27 03:45:56'),
(1628, '디캐피탈임대 23-min.jpg.jpg', 0, 141, '2021-11-27 03:45:56', '2021-11-27 03:45:56'),
(1629, '디캐피탈임대 25-min.jpg.jpg', 0, 141, '2021-11-27 03:45:56', '2021-11-27 03:45:56'),
(1630, '디캐피탈매매 ㅈ듀.jpg.jpg', 1, 141, '2021-11-27 03:45:56', '2021-11-27 03:45:56'),
(1654, '미딩펄매매 (13).jpg.jpg', 0, 142, '2021-11-27 09:53:21', '2021-11-27 09:53:21'),
(1655, '미딩펄매매 (12).jpg.jpg', 0, 142, '2021-11-27 09:53:22', '2021-11-27 09:53:22'),
(1656, '미딩펄매매 (11).jpg.jpg', 0, 142, '2021-11-27 09:53:22', '2021-11-27 09:53:22'),
(1657, '미딩펄매매 (8).jpg.jpg', 0, 142, '2021-11-27 09:53:22', '2021-11-27 09:53:22'),
(1658, '미딩펄매매 (10).jpg.jpg', 0, 142, '2021-11-27 09:53:23', '2021-11-27 09:53:23'),
(1659, '미딩펄매매 (6).jpg.jpg', 0, 142, '2021-11-27 09:53:23', '2021-11-27 09:53:23'),
(1660, '미딩펄매매 (2).jpg.jpg', 0, 142, '2021-11-27 09:53:23', '2021-11-27 09:53:23'),
(1661, '미딩펄매매 (1).jpg.jpg', 0, 142, '2021-11-27 09:53:23', '2021-11-27 09:53:23'),
(1662, '미딩펄매매 (3).jpg.jpg', 0, 142, '2021-11-27 09:53:24', '2021-11-27 09:53:24'),
(1663, '미딩펄매매 (4).jpg.jpg', 0, 142, '2021-11-27 09:53:24', '2021-11-27 09:53:24'),
(1664, '미딩펄매매.jpg.jpg', 1, 142, '2021-11-27 09:53:24', '2021-11-27 09:53:24'),
(1665, '미딩펄매매 (13).jpg.jpg', 0, 143, '2021-11-27 09:55:18', '2021-11-27 09:55:18'),
(1666, '미딩펄매매 (12).jpg.jpg', 0, 143, '2021-11-27 09:55:18', '2021-11-27 09:55:18'),
(1667, '미딩펄매매 (11).jpg.jpg', 0, 143, '2021-11-27 09:55:18', '2021-11-27 09:55:18'),
(1668, '미딩펄매매 (8).jpg.jpg', 0, 143, '2021-11-27 09:55:18', '2021-11-27 09:55:18'),
(1669, '미딩펄매매 (10).jpg.jpg', 0, 143, '2021-11-27 09:55:18', '2021-11-27 09:55:18'),
(1670, '미딩펄매매 (6).jpg.jpg', 0, 143, '2021-11-27 09:55:18', '2021-11-27 09:55:18'),
(1671, '미딩펄매매 (2).jpg.jpg', 0, 143, '2021-11-27 09:55:18', '2021-11-27 09:55:18'),
(1672, '미딩펄매매 (1).jpg.jpg', 0, 143, '2021-11-27 09:55:18', '2021-11-27 09:55:18'),
(1673, '미딩펄매매 (3).jpg.jpg', 0, 143, '2021-11-27 09:55:18', '2021-11-27 09:55:18'),
(1674, '미딩펄매매 (4).jpg.jpg', 0, 143, '2021-11-27 09:55:18', '2021-11-27 09:55:18'),
(1675, '미딩펄매매.jpg.jpg', 1, 143, '2021-11-27 09:55:18', '2021-11-27 09:55:18'),
(1772, '1.jpg.jpg', 0, 150, '2021-11-29 08:06:49', '2021-11-29 08:06:49'),
(1773, '2.jpg.jpg', 0, 150, '2021-11-29 08:06:49', '2021-11-29 08:06:49'),
(1774, '3.jpg.jpg', 0, 150, '2021-11-29 08:06:49', '2021-11-29 08:06:49'),
(1775, '4.jpg.jpg', 0, 150, '2021-11-29 08:06:50', '2021-11-29 08:06:50'),
(1776, '5.jpg.jpg', 0, 150, '2021-11-29 08:06:50', '2021-11-29 08:06:50'),
(1777, '6.jpg.jpg', 0, 150, '2021-11-29 08:06:50', '2021-11-29 08:06:50'),
(1778, '7.jpg.jpg', 0, 150, '2021-11-29 08:06:50', '2021-11-29 08:06:50'),
(1779, '8.jpg.jpg', 0, 150, '2021-11-29 08:06:51', '2021-11-29 08:06:51'),
(1780, '9.jpg.jpg', 0, 150, '2021-11-29 08:06:51', '2021-11-29 08:06:51'),
(1781, '10.jpg.jpg', 0, 150, '2021-11-29 08:06:51', '2021-11-29 08:06:51'),
(1782, 'z2969577991414_007ae1d73dbd123c6ce68af73daee22f.jpg.jpg', 1, 150, '2021-11-29 08:06:51', '2021-11-29 08:06:51'),
(1783, '1.jpg.jpg', 0, 151, '2021-11-29 08:07:49', '2021-11-29 08:07:49'),
(1784, '2.jpg.jpg', 0, 151, '2021-11-29 08:07:49', '2021-11-29 08:07:49'),
(1785, '3.jpg.jpg', 0, 151, '2021-11-29 08:07:49', '2021-11-29 08:07:49'),
(1786, '4.jpg.jpg', 0, 151, '2021-11-29 08:07:49', '2021-11-29 08:07:49'),
(1787, '5.jpg.jpg', 0, 151, '2021-11-29 08:07:49', '2021-11-29 08:07:49'),
(1788, '6.jpg.jpg', 0, 151, '2021-11-29 08:07:49', '2021-11-29 08:07:49'),
(1789, '7.jpg.jpg', 0, 151, '2021-11-29 08:07:49', '2021-11-29 08:07:49'),
(1790, '8.jpg.jpg', 0, 151, '2021-11-29 08:07:49', '2021-11-29 08:07:49'),
(1791, '9.jpg.jpg', 0, 151, '2021-11-29 08:07:49', '2021-11-29 08:07:49'),
(1792, '10.jpg.jpg', 0, 151, '2021-11-29 08:07:49', '2021-11-29 08:07:49'),
(1793, 'z2969577991414_007ae1d73dbd123c6ce68af73daee22f.jpg.jpg', 1, 151, '2021-11-29 08:07:49', '2021-11-29 08:07:49'),
(2070, '3.jpg.jpg', 0, 171, '2021-12-03 08:45:29', '2021-12-03 08:45:29'),
(2071, '4.jpg.jpg', 0, 171, '2021-12-03 08:45:29', '2021-12-03 08:45:29'),
(2072, '5.jpg.jpg', 0, 171, '2021-12-03 08:45:29', '2021-12-03 08:45:29'),
(2073, '7.jpg.jpg', 0, 171, '2021-12-03 08:45:29', '2021-12-03 08:45:29'),
(2074, '8.jpg.jpg', 0, 171, '2021-12-03 08:45:30', '2021-12-03 08:45:30'),
(2075, '9.jpg.jpg', 0, 171, '2021-12-03 08:45:30', '2021-12-03 08:45:30'),
(2076, '10.jpg.jpg', 0, 171, '2021-12-03 08:45:30', '2021-12-03 08:45:30'),
(2077, '13.jpg.jpg', 0, 171, '2021-12-03 08:45:30', '2021-12-03 08:45:30'),
(2078, '11.jpg.jpg', 0, 171, '2021-12-03 08:45:31', '2021-12-03 08:45:31'),
(2079, '12.jpg.jpg', 0, 171, '2021-12-03 08:45:31', '2021-12-03 08:45:31'),
(2080, '3.jpg.jpg', 1, 171, '2021-12-03 08:45:31', '2021-12-03 08:45:31'),
(2081, '3.jpg.jpg', 0, 172, '2021-12-03 08:46:41', '2021-12-03 08:46:41'),
(2082, '4.jpg.jpg', 0, 172, '2021-12-03 08:46:41', '2021-12-03 08:46:41'),
(2083, '5.jpg.jpg', 0, 172, '2021-12-03 08:46:41', '2021-12-03 08:46:41'),
(2084, '7.jpg.jpg', 0, 172, '2021-12-03 08:46:41', '2021-12-03 08:46:41'),
(2085, '8.jpg.jpg', 0, 172, '2021-12-03 08:46:41', '2021-12-03 08:46:41'),
(2086, '9.jpg.jpg', 0, 172, '2021-12-03 08:46:41', '2021-12-03 08:46:41'),
(2087, '10.jpg.jpg', 0, 172, '2021-12-03 08:46:41', '2021-12-03 08:46:41'),
(2088, '13.jpg.jpg', 0, 172, '2021-12-03 08:46:41', '2021-12-03 08:46:41'),
(2089, '11.jpg.jpg', 0, 172, '2021-12-03 08:46:41', '2021-12-03 08:46:41'),
(2090, '12.jpg.jpg', 0, 172, '2021-12-03 08:46:41', '2021-12-03 08:46:41'),
(2091, '3.jpg.jpg', 1, 172, '2021-12-03 08:46:41', '2021-12-03 08:46:41'),
(2092, 'z3000446397905_a583f4a9bddb7198e4010b55eb26a30f.jpg.jpg', 0, 173, '2021-12-07 04:42:03', '2021-12-07 04:42:03'),
(2093, 'z3000446400591_b5121023daffa80ebc570fe4bd87f4f4.jpg.jpg', 0, 173, '2021-12-07 04:42:03', '2021-12-07 04:42:03'),
(2094, 'z3000446402708_aee12fdc91cfc3c6b6a47dd7813815e8.jpg.jpg', 0, 173, '2021-12-07 04:42:04', '2021-12-07 04:42:04'),
(2095, 'z3000446404929_58592d3dbd9de0d3043c511ee316ce43.jpg.jpg', 0, 173, '2021-12-07 04:42:04', '2021-12-07 04:42:04'),
(2096, 'z3000446408623_c0e2bec1b767b3e4b3fe51790ef34b71.jpg.jpg', 0, 173, '2021-12-07 04:42:05', '2021-12-07 04:42:05'),
(2097, 'z3000446411126_cee65f09b1bf7ff5d51cb470a78d8b82.jpg.jpg', 0, 173, '2021-12-07 04:42:05', '2021-12-07 04:42:05'),
(2098, 'z3000446402708_aee12fdc91cfc3c6b6a47dd7813815e8.jpg.jpg', 1, 173, '2021-12-07 04:42:05', '2021-12-07 04:42:05'),
(2099, '디캐피탈 (1).jpg.jpg', 0, 174, '2021-12-11 05:44:54', '2021-12-11 05:44:54'),
(2100, '디캐피탈 (3).jpg.jpg', 0, 174, '2021-12-11 05:44:54', '2021-12-11 05:44:54'),
(2101, '디캐피탈 (4).jpg.jpg', 0, 174, '2021-12-11 05:44:54', '2021-12-11 05:44:54'),
(2102, '디캐피탈 (5).jpg.jpg', 0, 174, '2021-12-11 05:44:54', '2021-12-11 05:44:54'),
(2103, '디캐피탈 (7).jpg.jpg', 0, 174, '2021-12-11 05:44:54', '2021-12-11 05:44:54'),
(2104, '디캐피탈 (2).jpg.jpg', 0, 174, '2021-12-11 05:44:55', '2021-12-11 05:44:55'),
(2105, '디캐피탈 (6).jpg.jpg', 0, 174, '2021-12-11 05:44:55', '2021-12-11 05:44:55'),
(2106, '디캐피탈 (1).jpg.jpg', 1, 174, '2021-12-11 05:44:55', '2021-12-11 05:44:55'),
(2107, '디캐피탈 (1).jpg.jpg', 0, 175, '2021-12-11 07:29:27', '2021-12-11 07:29:27'),
(2108, '디캐피탈 (3).jpg.jpg', 0, 175, '2021-12-11 07:29:27', '2021-12-11 07:29:27'),
(2109, '디캐피탈 (4).jpg.jpg', 0, 175, '2021-12-11 07:29:27', '2021-12-11 07:29:27'),
(2110, '디캐피탈 (5).jpg.jpg', 0, 175, '2021-12-11 07:29:27', '2021-12-11 07:29:27'),
(2111, '디캐피탈 (7).jpg.jpg', 0, 175, '2021-12-11 07:29:27', '2021-12-11 07:29:27'),
(2112, '디캐피탈 (2).jpg.jpg', 0, 175, '2021-12-11 07:29:27', '2021-12-11 07:29:27'),
(2113, '디캐피탈 (6).jpg.jpg', 0, 175, '2021-12-11 07:29:27', '2021-12-11 07:29:27'),
(2114, '디캐피탈 (1).jpg.jpg', 1, 175, '2021-12-11 07:29:27', '2021-12-11 07:29:27'),
(2115, '디캐피탈임대 (1).jpg.jpg', 0, 176, '2021-12-11 08:06:20', '2021-12-11 08:06:20'),
(2116, '디캐피탈임대 (2).jpg.jpg', 0, 176, '2021-12-11 08:06:20', '2021-12-11 08:06:20'),
(2117, '디캐피탈임대 (3).jpg.jpg', 0, 176, '2021-12-11 08:06:20', '2021-12-11 08:06:20'),
(2118, '디캐피탈임대 (4).jpg.jpg', 0, 176, '2021-12-11 08:06:20', '2021-12-11 08:06:20'),
(2119, '디캐피탈임대 (5).jpg.jpg', 0, 176, '2021-12-11 08:06:20', '2021-12-11 08:06:20'),
(2120, '디캐피탈임대 (6).jpg.jpg', 0, 176, '2021-12-11 08:06:21', '2021-12-11 08:06:21'),
(2121, '디캐피탈임대 (7).jpg.jpg', 0, 176, '2021-12-11 08:06:21', '2021-12-11 08:06:21'),
(2122, '디캐피탈임대 (2).jpg.jpg', 0, 176, '2021-12-11 08:06:21', '2021-12-11 08:06:21'),
(2123, '디캐피탈임대 (3).jpg.jpg', 0, 176, '2021-12-11 08:06:21', '2021-12-11 08:06:21'),
(2124, '디캐피탈임대 (1).jpg.jpg', 0, 176, '2021-12-11 08:06:22', '2021-12-11 08:06:22'),
(2125, '디캐피탈임대 (7).jpg.jpg', 1, 176, '2021-12-11 08:06:22', '2021-12-11 08:06:22'),
(2126, '디캐피탈임대 (1).jpg.jpg', 0, 177, '2021-12-11 08:17:22', '2021-12-11 08:17:22'),
(2127, '디캐피탈임대 (2).jpg.jpg', 0, 177, '2021-12-11 08:17:22', '2021-12-11 08:17:22'),
(2128, '디캐피탈임대 (3).jpg.jpg', 0, 177, '2021-12-11 08:17:22', '2021-12-11 08:17:22'),
(2129, '디캐피탈임대 (4).jpg.jpg', 0, 177, '2021-12-11 08:17:22', '2021-12-11 08:17:22'),
(2130, '디캐피탈임대 (5).jpg.jpg', 0, 177, '2021-12-11 08:17:22', '2021-12-11 08:17:22'),
(2131, '디캐피탈임대 (6).jpg.jpg', 0, 177, '2021-12-11 08:17:22', '2021-12-11 08:17:22'),
(2132, '디캐피탈임대 (7).jpg.jpg', 0, 177, '2021-12-11 08:17:22', '2021-12-11 08:17:22'),
(2133, '디캐피탈임대 (2).jpg.jpg', 0, 177, '2021-12-11 08:17:22', '2021-12-11 08:17:22'),
(2134, '디캐피탈임대 (3).jpg.jpg', 0, 177, '2021-12-11 08:17:22', '2021-12-11 08:17:22'),
(2135, '디캐피탈임대 (1).jpg.jpg', 0, 177, '2021-12-11 08:17:22', '2021-12-11 08:17:22'),
(2136, '디캐피탈임대 (7).jpg.jpg', 1, 177, '2021-12-11 08:17:22', '2021-12-11 08:17:22'),
(2137, 'z2986392200765_753c32f53a302a34b0962ae9f0a0c6dd.jpg.jpg', 0, 178, '2021-12-11 10:02:42', '2021-12-11 10:02:42'),
(2138, 'z2986392249906_fff985d279979a976c3a12b948ddd754.jpg.jpg', 0, 178, '2021-12-11 10:02:42', '2021-12-11 10:02:42'),
(2139, 'z2986392262546_78ec17fcc0821a11c9fefd28e2f41cf9.jpg.jpg', 0, 178, '2021-12-11 10:02:43', '2021-12-11 10:02:43'),
(2140, 'z2986392274947_72e190bb11e4e86a2fef9877ed4dfa1f.jpg.jpg', 0, 178, '2021-12-11 10:02:43', '2021-12-11 10:02:43'),
(2141, 'z2986392213785_a78adea5f3cfbf0363135b104948318e.jpg.jpg', 0, 178, '2021-12-11 10:02:44', '2021-12-11 10:02:44'),
(2142, 'z2986392188080_2e6e625c8fc5f18d5d5fa6060b1ba43a.jpg.jpg', 0, 178, '2021-12-11 10:02:44', '2021-12-11 10:02:44'),
(2143, 'z2986392274947_72e190bb11e4e86a2fef9877ed4dfa1f.jpg.jpg', 1, 178, '2021-12-11 10:02:44', '2021-12-11 10:02:44'),
(2144, 'z2986392200765_753c32f53a302a34b0962ae9f0a0c6dd.jpg.jpg', 0, 179, '2021-12-11 10:06:00', '2021-12-11 10:06:00'),
(2145, 'z2986392249906_fff985d279979a976c3a12b948ddd754.jpg.jpg', 0, 179, '2021-12-11 10:06:00', '2021-12-11 10:06:00'),
(2146, 'z2986392262546_78ec17fcc0821a11c9fefd28e2f41cf9.jpg.jpg', 0, 179, '2021-12-11 10:06:00', '2021-12-11 10:06:00'),
(2147, 'z2986392274947_72e190bb11e4e86a2fef9877ed4dfa1f.jpg.jpg', 0, 179, '2021-12-11 10:06:00', '2021-12-11 10:06:00'),
(2148, 'z2986392213785_a78adea5f3cfbf0363135b104948318e.jpg.jpg', 0, 179, '2021-12-11 10:06:00', '2021-12-11 10:06:00'),
(2149, 'z2986392188080_2e6e625c8fc5f18d5d5fa6060b1ba43a.jpg.jpg', 0, 179, '2021-12-11 10:06:00', '2021-12-11 10:06:00'),
(2150, 'z2986392274947_72e190bb11e4e86a2fef9877ed4dfa1f.jpg.jpg', 1, 179, '2021-12-11 10:06:00', '2021-12-11 10:06:00'),
(2151, '더에메랄드 (1).jpg.jpg', 0, 180, '2021-12-11 11:13:11', '2021-12-11 11:13:11'),
(2152, '더에메랄드 (2).jpg.jpg', 0, 180, '2021-12-11 11:13:11', '2021-12-11 11:13:11'),
(2153, '더에메랄드 (3).jpg.jpg', 0, 180, '2021-12-11 11:13:11', '2021-12-11 11:13:11'),
(2154, '더에메랄드 (6).jpg.jpg', 0, 180, '2021-12-11 11:13:12', '2021-12-11 11:13:12'),
(2155, '더에메랄드 (4).jpg.jpg', 0, 180, '2021-12-11 11:13:12', '2021-12-11 11:13:12'),
(2156, '더에메랄드 (5).jpg.jpg', 0, 180, '2021-12-11 11:13:12', '2021-12-11 11:13:12'),
(2157, '더에메랄드 (1).jpg.jpg', 0, 180, '2021-12-11 11:13:12', '2021-12-11 11:13:12'),
(2158, '더에메랄드 (2).jpg.jpg', 0, 180, '2021-12-11 11:13:13', '2021-12-11 11:13:13'),
(2159, '더에메랄드 (4).jpg.jpg', 0, 180, '2021-12-11 11:13:13', '2021-12-11 11:13:13'),
(2160, '더에메랄드 (6).jpg.jpg', 0, 180, '2021-12-11 11:13:13', '2021-12-11 11:13:13'),
(2161, 'z3012461336790_f1f1be05a2d2924c5d7cca5235c0543f.jpg.jpg', 1, 180, '2021-12-11 11:13:13', '2021-12-11 11:13:13'),
(2162, '더에메랄드 (1).jpg.jpg', 0, 181, '2021-12-11 11:17:29', '2021-12-11 11:17:29'),
(2163, '더에메랄드 (2).jpg.jpg', 0, 181, '2021-12-11 11:17:29', '2021-12-11 11:17:29'),
(2164, '더에메랄드 (3).jpg.jpg', 0, 181, '2021-12-11 11:17:29', '2021-12-11 11:17:29'),
(2165, '더에메랄드 (6).jpg.jpg', 0, 181, '2021-12-11 11:17:29', '2021-12-11 11:17:29'),
(2166, '더에메랄드 (4).jpg.jpg', 0, 181, '2021-12-11 11:17:29', '2021-12-11 11:17:29'),
(2167, '더에메랄드 (5).jpg.jpg', 0, 181, '2021-12-11 11:17:29', '2021-12-11 11:17:29'),
(2168, '더에메랄드 (1).jpg.jpg', 0, 181, '2021-12-11 11:17:29', '2021-12-11 11:17:29'),
(2169, '더에메랄드 (2).jpg.jpg', 0, 181, '2021-12-11 11:17:29', '2021-12-11 11:17:29'),
(2170, '더에메랄드 (4).jpg.jpg', 0, 181, '2021-12-11 11:17:29', '2021-12-11 11:17:29'),
(2171, '더에메랄드 (6).jpg.jpg', 0, 181, '2021-12-11 11:17:29', '2021-12-11 11:17:29'),
(2172, 'z3012461336790_f1f1be05a2d2924c5d7cca5235c0543f.jpg.jpg', 1, 181, '2021-12-11 11:17:29', '2021-12-11 11:17:29'),
(2173, '빈홈웨스트포인트 (1).jpg.jpg', 0, 182, '2021-12-12 03:30:40', '2021-12-12 03:30:40'),
(2174, '빈홈웨스트포인트 (2).jpg.jpg', 0, 182, '2021-12-12 03:30:40', '2021-12-12 03:30:40'),
(2175, '빈홈웨스트포인트 (4).jpg.jpg', 0, 182, '2021-12-12 03:30:40', '2021-12-12 03:30:40'),
(2176, '빈홈웨스트포인트 (6).jpg.jpg', 0, 182, '2021-12-12 03:30:40', '2021-12-12 03:30:40'),
(2177, '빈홈웨스트포인트 (13).jpg.jpg', 0, 182, '2021-12-12 03:30:41', '2021-12-12 03:30:41'),
(2178, 'z3014589207119_ca5a3a515978518946d02524b31e6ecc.jpg.jpg', 0, 182, '2021-12-12 03:30:41', '2021-12-12 03:30:41'),
(2179, 'z3014589242483_000bf388e36f320b81a8fb0800dbdca0.jpg.jpg', 0, 182, '2021-12-12 03:30:41', '2021-12-12 03:30:41'),
(2180, 'z3014589226050_9374ab2dea9d71028bd6c860dea52739.jpg.jpg', 0, 182, '2021-12-12 03:30:41', '2021-12-12 03:30:41'),
(2181, '빈홈웨스트포인트 (7).jpg.jpg', 1, 182, '2021-12-12 03:30:41', '2021-12-12 03:30:41'),
(2182, '빈홈웨스트포인트 (1).jpg.jpg', 0, 183, '2021-12-12 03:37:12', '2021-12-12 03:37:12'),
(2183, '빈홈웨스트포인트 (2).jpg.jpg', 0, 183, '2021-12-12 03:37:12', '2021-12-12 03:37:12'),
(2184, '빈홈웨스트포인트 (4).jpg.jpg', 0, 183, '2021-12-12 03:37:12', '2021-12-12 03:37:12'),
(2185, '빈홈웨스트포인트 (6).jpg.jpg', 0, 183, '2021-12-12 03:37:12', '2021-12-12 03:37:12'),
(2186, '빈홈웨스트포인트 (13).jpg.jpg', 0, 183, '2021-12-12 03:37:12', '2021-12-12 03:37:12'),
(2187, 'z3014589207119_ca5a3a515978518946d02524b31e6ecc.jpg.jpg', 0, 183, '2021-12-12 03:37:12', '2021-12-12 03:37:12'),
(2188, 'z3014589242483_000bf388e36f320b81a8fb0800dbdca0.jpg.jpg', 0, 183, '2021-12-12 03:37:12', '2021-12-12 03:37:12'),
(2189, 'z3014589226050_9374ab2dea9d71028bd6c860dea52739.jpg.jpg', 0, 183, '2021-12-12 03:37:12', '2021-12-12 03:37:12'),
(2190, '빈홈웨스트포인트 (7).jpg.jpg', 1, 183, '2021-12-12 03:37:12', '2021-12-12 03:37:12'),
(2191, 'z3027019394087_0025c2bbb1bc9dcbadacdf115b9b9593.jpg.jpg', 0, 184, '2021-12-16 08:59:56', '2021-12-16 08:59:56'),
(2192, 'z3027019395225_d7cc260fd86ae78033210d719343a0cf.jpg.jpg', 0, 184, '2021-12-16 08:59:57', '2021-12-16 08:59:57'),
(2193, 'z3027019395685_fb283465ee346e38cfa3aadd92f0ed30.jpg.jpg', 0, 184, '2021-12-16 08:59:57', '2021-12-16 08:59:57'),
(2194, 'z3027019396437_0aca778ba78c0050336497b6b800e8a4.jpg.jpg', 0, 184, '2021-12-16 08:59:57', '2021-12-16 08:59:57'),
(2195, 'z3027019393306_00ca85116ecf908382f89f09a16683ad.jpg.jpg', 0, 184, '2021-12-16 08:59:58', '2021-12-16 08:59:58'),
(2196, 'z3027019394061_7e6d9ad83bb30bb4f8ed024f783a4a00.jpg.jpg', 0, 184, '2021-12-16 08:59:58', '2021-12-16 08:59:58'),
(2197, 'z3027019393077_99c05f7d2530d83341acbc4b7b5664c3.jpg.jpg', 0, 184, '2021-12-16 08:59:59', '2021-12-16 08:59:59'),
(2198, 'z3027019396437_0aca778ba78c0050336497b6b800e8a4.jpg.jpg', 1, 184, '2021-12-16 08:59:59', '2021-12-16 08:59:59'),
(2199, 'z3027019394087_0025c2bbb1bc9dcbadacdf115b9b9593.jpg.jpg', 0, 185, '2021-12-16 09:17:04', '2021-12-16 09:17:04'),
(2200, 'z3027019395225_d7cc260fd86ae78033210d719343a0cf.jpg.jpg', 0, 185, '2021-12-16 09:17:04', '2021-12-16 09:17:04'),
(2201, 'z3027019395685_fb283465ee346e38cfa3aadd92f0ed30.jpg.jpg', 0, 185, '2021-12-16 09:17:04', '2021-12-16 09:17:04'),
(2202, 'z3027019396437_0aca778ba78c0050336497b6b800e8a4.jpg.jpg', 0, 185, '2021-12-16 09:17:04', '2021-12-16 09:17:04'),
(2203, 'z3027019393306_00ca85116ecf908382f89f09a16683ad.jpg.jpg', 0, 185, '2021-12-16 09:17:04', '2021-12-16 09:17:04'),
(2204, 'z3027019394061_7e6d9ad83bb30bb4f8ed024f783a4a00.jpg.jpg', 0, 185, '2021-12-16 09:17:04', '2021-12-16 09:17:04'),
(2205, 'z3027019393077_99c05f7d2530d83341acbc4b7b5664c3.jpg.jpg', 0, 185, '2021-12-16 09:17:04', '2021-12-16 09:17:04'),
(2206, 'z3027019396437_0aca778ba78c0050336497b6b800e8a4.jpg.jpg', 1, 185, '2021-12-16 09:17:04', '2021-12-16 09:17:04'),
(2208, '디캐피탈 (5).jpg.jpg', 0, 186, '2021-12-16 09:23:58', '2021-12-16 09:23:58'),
(2209, '디캐피탈 (9).jpg.jpg', 0, 186, '2021-12-16 09:23:58', '2021-12-16 09:23:58'),
(2210, '디캐피탈 (13).jpg.jpg', 0, 186, '2021-12-16 09:23:59', '2021-12-16 09:23:59'),
(2211, '디캐피탈 (3).jpg.jpg', 0, 186, '2021-12-16 09:23:59', '2021-12-16 09:23:59'),
(2212, '디캐피탈 (8).jpg.jpg', 0, 186, '2021-12-16 09:23:59', '2021-12-16 09:23:59'),
(2213, '디캐피탈 (11).jpg.jpg', 0, 186, '2021-12-16 09:23:59', '2021-12-16 09:23:59'),
(2214, '디캐피탈 (14).jpg.jpg', 0, 186, '2021-12-16 09:24:00', '2021-12-16 09:24:00'),
(2215, '디캐피탈 (6).jpg.jpg', 0, 186, '2021-12-16 09:24:00', '2021-12-16 09:24:00'),
(2216, '디캐피탈 (7).jpg.jpg', 0, 186, '2021-12-16 09:24:01', '2021-12-16 09:24:01'),
(2217, '디캐피탈 (9).jpg.jpg', 1, 186, '2021-12-16 09:24:01', '2021-12-16 09:24:01'),
(2218, '디캐피탈 (5).jpg.jpg', 0, 187, '2021-12-16 09:33:27', '2021-12-16 09:33:27'),
(2219, '디캐피탈 (9).jpg.jpg', 0, 187, '2021-12-16 09:33:27', '2021-12-16 09:33:27'),
(2220, '디캐피탈 (13).jpg.jpg', 0, 187, '2021-12-16 09:33:27', '2021-12-16 09:33:27'),
(2221, '디캐피탈 (3).jpg.jpg', 0, 187, '2021-12-16 09:33:27', '2021-12-16 09:33:27'),
(2222, '디캐피탈 (8).jpg.jpg', 0, 187, '2021-12-16 09:33:27', '2021-12-16 09:33:27'),
(2223, '디캐피탈 (11).jpg.jpg', 0, 187, '2021-12-16 09:33:27', '2021-12-16 09:33:27'),
(2224, '디캐피탈 (14).jpg.jpg', 0, 187, '2021-12-16 09:33:27', '2021-12-16 09:33:27'),
(2225, '디캐피탈 (6).jpg.jpg', 0, 187, '2021-12-16 09:33:27', '2021-12-16 09:33:27'),
(2226, '디캐피탈 (7).jpg.jpg', 0, 187, '2021-12-16 09:33:27', '2021-12-16 09:33:27'),
(2227, '디캐피탈 (9).jpg.jpg', 1, 187, '2021-12-16 09:33:27', '2021-12-16 09:33:27'),
(2228, '디캐피탈 (4).jpg.jpg', 0, 188, '2021-12-16 09:38:36', '2021-12-16 09:38:36'),
(2229, '디캐피탈 (6).jpg.jpg', 0, 188, '2021-12-16 09:38:36', '2021-12-16 09:38:36'),
(2230, '디캐피탈 (7).jpg.jpg', 0, 188, '2021-12-16 09:38:37', '2021-12-16 09:38:37'),
(2231, '디캐피탈 (8).jpg.jpg', 0, 188, '2021-12-16 09:38:37', '2021-12-16 09:38:37'),
(2232, '디캐피탈 (9).jpg.jpg', 0, 188, '2021-12-16 09:38:37', '2021-12-16 09:38:37'),
(2233, '디캐피탈 (10).jpg.jpg', 0, 188, '2021-12-16 09:38:37', '2021-12-16 09:38:37'),
(2234, '디캐피탈 (1).jpg.jpg', 0, 188, '2021-12-16 09:38:37', '2021-12-16 09:38:37'),
(2235, '디캐피탈 (2).jpg.jpg', 0, 188, '2021-12-16 09:38:37', '2021-12-16 09:38:37'),
(2236, '디캐피탈 (3).jpg.jpg', 0, 188, '2021-12-16 09:38:38', '2021-12-16 09:38:38'),
(2237, '디캐피탈 (5).jpg.jpg', 0, 188, '2021-12-16 09:38:38', '2021-12-16 09:38:38'),
(2238, '디캐피탈 (10).jpg.jpg', 1, 188, '2021-12-16 09:38:38', '2021-12-16 09:47:47'),
(2239, '디캐피탈 (4).jpg.jpg', 0, 189, '2021-12-16 09:44:38', '2021-12-16 09:44:38'),
(2240, '디캐피탈 (6).jpg.jpg', 0, 189, '2021-12-16 09:44:38', '2021-12-16 09:44:38'),
(2241, '디캐피탈 (7).jpg.jpg', 0, 189, '2021-12-16 09:44:38', '2021-12-16 09:44:38'),
(2242, '디캐피탈 (8).jpg.jpg', 0, 189, '2021-12-16 09:44:38', '2021-12-16 09:44:38'),
(2243, '디캐피탈 (9).jpg.jpg', 0, 189, '2021-12-16 09:44:38', '2021-12-16 09:44:38'),
(2244, '디캐피탈 (10).jpg.jpg', 0, 189, '2021-12-16 09:44:38', '2021-12-16 09:44:38'),
(2245, '디캐피탈 (1).jpg.jpg', 0, 189, '2021-12-16 09:44:38', '2021-12-16 09:44:38'),
(2246, '디캐피탈 (2).jpg.jpg', 0, 189, '2021-12-16 09:44:38', '2021-12-16 09:44:38'),
(2247, '디캐피탈 (3).jpg.jpg', 0, 189, '2021-12-16 09:44:38', '2021-12-16 09:44:38'),
(2248, '디캐피탈 (5).jpg.jpg', 0, 189, '2021-12-16 09:44:38', '2021-12-16 09:44:38'),
(2249, '디캐피탈 (10).jpg.jpg', 1, 189, '2021-12-16 09:44:38', '2021-12-16 09:47:47'),
(2250, '빈홈웨스트포인트-(1)_optimized.jpg.jpg', 0, 190, '2021-12-16 10:04:11', '2021-12-16 10:04:11'),
(2251, '빈홈웨스트포인트-(2)_optimized.jpg.jpg', 0, 190, '2021-12-16 10:04:12', '2021-12-16 10:04:12'),
(2252, '빈홈웨스트포인트-(3)_optimized.jpg.jpg', 0, 190, '2021-12-16 10:04:12', '2021-12-16 10:04:12'),
(2253, '빈홈웨스트포인트-(4)_optimized.jpg.jpg', 0, 190, '2021-12-16 10:04:13', '2021-12-16 10:04:13'),
(2254, '빈홈웨스트포인트-(5)_optimized.jpg.jpg', 0, 190, '2021-12-16 10:04:13', '2021-12-16 10:04:13'),
(2255, '빈홈웨스트포인트-(6)_optimized.jpg.jpg', 0, 190, '2021-12-16 10:04:14', '2021-12-16 10:04:14'),
(2256, '빈홈웨스트포인트-(8)_optimized.jpg.jpg', 0, 190, '2021-12-16 10:04:14', '2021-12-16 10:04:14'),
(2257, '빈홈웨스트포인트-(4)_optimized.jpg.jpg', 1, 190, '2021-12-16 10:04:14', '2021-12-16 10:11:56'),
(2258, '빈홈웨스트포인트-(1)_optimized.jpg.jpg', 0, 191, '2021-12-16 10:10:11', '2021-12-16 10:10:11'),
(2259, '빈홈웨스트포인트-(2)_optimized.jpg.jpg', 0, 191, '2021-12-16 10:10:11', '2021-12-16 10:10:11'),
(2260, '빈홈웨스트포인트-(3)_optimized.jpg.jpg', 0, 191, '2021-12-16 10:10:11', '2021-12-16 10:10:11'),
(2261, '빈홈웨스트포인트-(4)_optimized.jpg.jpg', 0, 191, '2021-12-16 10:10:11', '2021-12-16 10:10:11'),
(2262, '빈홈웨스트포인트-(5)_optimized.jpg.jpg', 0, 191, '2021-12-16 10:10:11', '2021-12-16 10:10:11'),
(2263, '빈홈웨스트포인트-(6)_optimized.jpg.jpg', 0, 191, '2021-12-16 10:10:11', '2021-12-16 10:10:11'),
(2264, '빈홈웨스트포인트-(8)_optimized.jpg.jpg', 0, 191, '2021-12-16 10:10:11', '2021-12-16 10:10:11'),
(2265, '빈홈웨스트포인트-(4)_optimized.jpg.jpg', 1, 191, '2021-12-16 10:10:11', '2021-12-16 10:11:57'),
(2273, 'z3033854157989_267bbb1c9aba740705a9bc04ad3c0c10.jpg.jpg', 1, 192, '2021-12-19 09:34:31', '2021-12-19 09:43:07'),
(2401, '디캐피탈 (4).jpg.jpg', 0, 193, '2021-12-19 10:11:02', '2021-12-19 10:11:02'),
(2414, '디캐피탈임대 (1).jpglknuKYQVD.jpg', 0, 192, '2021-12-19 13:24:16', '2021-12-19 13:24:16'),
(2415, '디캐피탈임대 (1).jpglknuKYQVD.jpg', 0, 193, '2021-12-19 13:24:16', '2021-12-19 13:24:16'),
(2416, '디캐피탈임대 (2).jpgeHUfSF5tb.jpg', 0, 192, '2021-12-19 13:24:16', '2021-12-19 13:24:16'),
(2417, '디캐피탈임대 (2).jpgeHUfSF5tb.jpg', 0, 193, '2021-12-19 13:24:16', '2021-12-19 13:24:16'),
(2418, '디캐피탈임대 (3).jpgrngAUKBSx.jpg', 0, 192, '2021-12-19 13:24:16', '2021-12-19 13:24:16'),
(2419, '디캐피탈임대 (3).jpgrngAUKBSx.jpg', 0, 193, '2021-12-19 13:24:16', '2021-12-19 13:24:16'),
(2420, '디캐피탈임대 (4).jpgjmzymQS3g.jpg', 0, 192, '2021-12-19 13:24:17', '2021-12-19 13:24:17'),
(2421, '디캐피탈임대 (4).jpgjmzymQS3g.jpg', 0, 193, '2021-12-19 13:24:17', '2021-12-19 13:24:17'),
(2422, '디캐피탈임대 (5).jpgY7svzn7Xh.jpg', 0, 192, '2021-12-19 13:24:17', '2021-12-19 13:24:17'),
(2423, '디캐피탈임대 (5).jpgY7svzn7Xh.jpg', 0, 193, '2021-12-19 13:24:17', '2021-12-19 13:24:17'),
(2424, '디캐피탈임대 (6).jpguek7SiH8r.jpg', 0, 192, '2021-12-19 13:24:17', '2021-12-19 13:24:17'),
(2425, '디캐피탈임대 (6).jpguek7SiH8r.jpg', 0, 193, '2021-12-19 13:24:17', '2021-12-19 13:24:17'),
(2426, '디캐피탈임대 (7).jpg5BD0h2CHO.jpg', 0, 192, '2021-12-19 13:24:17', '2021-12-19 13:24:17'),
(2427, '디캐피탈임대 (7).jpg5BD0h2CHO.jpg', 0, 193, '2021-12-19 13:24:17', '2021-12-19 13:24:17'),
(2428, '웨스트포인트 (1).jpgMd2mztBc1.jpg', 0, 197, '2021-12-29 07:36:17', '2021-12-29 07:36:17'),
(2429, '웨스트포인트 (2).jpg3DhOWI6RY.jpg', 0, 197, '2021-12-29 07:36:18', '2021-12-29 07:36:18'),
(2430, '웨스트포인트 (4).jpg5M6Qvy5fe.jpg', 0, 197, '2021-12-29 07:36:18', '2021-12-29 07:36:18'),
(2431, '웨스트포인트 (5).jpgdxmufyUux.jpg', 0, 197, '2021-12-29 07:36:18', '2021-12-29 07:36:18'),
(2432, '웨스트포인트 (6).jpg1pkx8fCpJ.jpg', 0, 197, '2021-12-29 07:36:18', '2021-12-29 07:36:18'),
(2433, '웨스트포인트 (1).jpgDAqYowVik.jpg', 0, 197, '2021-12-29 07:36:19', '2021-12-29 07:36:19'),
(2434, '웨스트포인트 (3).jpg38guidr9M.jpg', 0, 197, '2021-12-29 07:36:19', '2021-12-29 07:36:19'),
(2435, '웨스트포인트 (4).jpgJQRSRF4Hk.jpg', 0, 197, '2021-12-29 07:36:19', '2021-12-29 07:36:19'),
(2436, '웨스트포인트 (5).jpgdY2x5zIPS.jpg', 0, 197, '2021-12-29 07:36:19', '2021-12-29 07:36:19'),
(2437, '웨스트포인트 (7).jpgBS6J1eux4.jpg', 0, 197, '2021-12-29 07:36:19', '2021-12-29 07:36:19'),
(2438, '웨스트포인트 (9).jpg8qrUVbEuy.jpg', 1, 197, '2021-12-29 07:36:20', '2021-12-29 07:36:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_langs`
--

CREATE TABLE `product_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_lang_id` bigint(20) NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_langs`
--

INSERT INTO `product_langs` (`id`, `product_id`, `product_lang_id`, `lang`, `created_at`, `updated_at`) VALUES
(44, 140, 141, 'ko', '2021-11-27 03:45:56', '2021-11-27 03:45:56'),
(45, 142, 143, 'ko', '2021-11-27 09:55:18', '2021-11-27 09:55:18'),
(46, 150, 151, 'ko', '2021-11-29 08:07:49', '2021-11-29 08:07:49'),
(48, 171, 172, 'ko', '2021-12-03 08:46:41', '2021-12-03 08:46:41'),
(49, 174, 175, 'ko', '2021-12-11 07:29:27', '2021-12-11 07:29:27'),
(50, 176, 177, 'ko', '2021-12-11 08:17:22', '2021-12-11 08:17:22'),
(51, 178, 179, 'ko', '2021-12-11 10:05:59', '2021-12-11 10:05:59'),
(52, 180, 181, 'ko', '2021-12-11 11:17:29', '2021-12-11 11:17:29'),
(53, 182, 183, 'ko', '2021-12-12 03:37:12', '2021-12-12 03:37:12'),
(54, 184, 185, 'ko', '2021-12-16 09:17:04', '2021-12-16 09:17:04'),
(55, 186, 187, 'ko', '2021-12-16 09:33:27', '2021-12-16 09:33:27'),
(56, 188, 189, 'ko', '2021-12-16 09:44:38', '2021-12-16 09:44:38'),
(57, 190, 191, 'ko', '2021-12-16 10:10:11', '2021-12-16 10:10:11'),
(58, 192, 193, 'ko', '2021-12-19 09:37:40', '2021-12-19 09:37:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `href` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(1) NOT NULL,
  `stt` int(11) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `href`, `url`, `target`, `display`, `stt`, `type`, `created_at`, `updated_at`) VALUES
(1, 'https://kkumhouse.vn/bang-gia-vinhomes-west-point-quy-can-chuyen-nhuong-moi-nhat-2021-pa3', 'Bảng chuyển nhượng.png', '_self', 1, 0, 0, '2021-11-03 17:53:01', '2021-12-03 10:14:07'),
(2, 'https://kkumhouse.vn/kkumhouse-tuyen-dung-chien-binh-sale-bds-hoa-hong-cao-nhat-thi-truong-bi13', 'tuyển chuye.png', '_self', 1, NULL, 0, '2021-11-03 17:53:13', '2021-12-03 16:20:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `systems`
--

CREATE TABLE `systems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slogan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mst` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcut_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ogimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` longtext COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zalo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_naver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css` longtext COLLATE utf8mb4_unicode_ci,
  `script` longtext COLLATE utf8mb4_unicode_ci,
  `script_body` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `systems`
--

INSERT INTO `systems` (`id`, `name`, `slogan`, `mst`, `logo`, `shortcut_logo`, `popup`, `ogimage`, `title`, `seo_keyword`, `seo_description`, `facebook`, `instagram`, `zalo`, `youtube`, `website`, `address`, `phone`, `blog_naver`, `email`, `css`, `script`, `script_body`, `created_at`, `updated_at`) VALUES
(1, 'CÔNG TY TNHH BĐS KKUMHOUSE', NULL, '0108945166', 'Untitled-1.png', 'Logo-07.png', NULL, 'slider4.jpg', 'Công ty TNHH Bất Động Sản Kkumhouse', 'bất động sản, Kkumhouse', 'Công ty TNHH Bất Động Sản Kkumhouse', 'https://www.facebook.com/kkumhouse/', 'https://www.instagram.com/kkumhouse2020/', '0964885068', 'https://www.youtube.com/channel/UCX437i0b1UjcQl8q4C0l1hQ', 'https://kkumhouse.com/', 'Tòa W1- Vinhomes Westpoint- Đỗ Đức Dục, Nam Từ Liêm, Hà Nội', '0888851098', 'https://blog.naver.com/kkumhouse2020', 'kkumhouse@gmail.com', NULL, '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-5RP8WMF\');</script>\r\n<!-- End Google Tag Manager -->', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-5RP8WMF\"\r\nheight=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->', NULL, '2022-06-16 09:04:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nam Nguyễn', 'admin@gmail.com', '0848384333', NULL, '$2y$10$/R55xA7lWziTsPPvNO3iP.L25p8DXrUP4gj0xANEWAGlBTOQWLN4y', 1, 1, NULL, NULL, '2021-11-05 20:32:48'),
(3, 'CTV', 'ctv@gmail.com', '0848384666', NULL, '$2y$10$r57fWdXZPYh6tLujFPfR8.VkasOkxnquyLB5jIPaiGEaJdEicVr8a', 0, 1, NULL, '2021-11-06 00:32:20', '2021-11-06 00:32:20'),
(5, 'Đặng Thị Tình', 'viviandang@kkumhouse.vn', '0888851098', NULL, '$2y$10$dZ6rN1AKFDWSLW8SPYzaNuoMI3vC2DJqXGj5Xpj0VhQymWhielUdu', 1, 1, NULL, '2021-11-26 08:07:39', '2022-11-09 10:25:56'),
(6, 'KKUMHOUSE ADMIN', 'supporting@kkumhouse.vn', '012345678', NULL, '$2y$10$RC9rZOKyvUapdYSdWStkuuEcK5wEUt5f/9BCUgPLSBxoPpNwO5zA2', 1, 1, NULL, '2021-11-26 08:09:52', '2021-12-07 04:18:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `yeucaus`
--

CREATE TABLE `yeucaus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lyc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `da` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lbds` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kv` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `huong` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `yeucaus`
--

INSERT INTO `yeucaus` (`id`, `lyc`, `name`, `phone`, `email`, `price`, `da`, `lbds`, `dt`, `kv`, `huong`, `message`, `status`, `created_at`, `updated_at`) VALUES
(4, 'cần mua', 'Nguyễn Hoài Nam', '0848384333', 'namnguyen20132674@gmail.com', '1,5 tỷ - 2 tỷ', 'Vinhomes Westpoint', 'thấp tầng,biệt thự', '50 - 100 m2', 'Hà Nội', 'Tây, Nam', NULL, 0, '2021-11-18 21:05:22', '2021-11-19 04:35:38'),
(5, 'cần mua', 'Nguyễn Hoài Nam', '0848384666', 'namnguyen20132674@gmail.com', '500 triệu - 1 tỷ', 'Vinhomes Westpoint', 'thấp tầng,biệt thự', '50 - 100 m2', 'Hồ Chí Minh', 'Tây Bắc - Đông Bắc', 'Cần gấp', 0, '2021-11-19 10:37:13', '2021-11-19 10:37:13');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bcids`
--
ALTER TABLE `bcids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bcids_blog_id_foreign` (`blog_id`),
  ADD KEY `bcids_cate_id_foreign` (`cate_id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `blog_categorie_langs`
--
ALTER TABLE `blog_categorie_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_categorie_langs_blog_cate_id_foreign` (`blog_cate_id`);

--
-- Chỉ mục cho bảng `blog_cates`
--
ALTER TABLE `blog_cates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog_langs`
--
ALTER TABLE `blog_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_langs_blog_id_foreign` (`blog_id`);

--
-- Chỉ mục cho bảng `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_messages_user_id_foreign` (`user_id`),
  ADD KEY `chat_messages_room_id_foreign` (`room_id`);

--
-- Chỉ mục cho bảng `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kyguis`
--
ALTER TABLE `kyguis`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kygui_images`
--
ALTER TABLE `kygui_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kygui_images_kygui_id_foreign` (`kygui_id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

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
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_orders_id_foreign` (`orders_id`),
  ADD KEY `order_details_products_id_foreign` (`products_id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `page_langs`
--
ALTER TABLE `page_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_langs_page_id_foreign` (`page_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `pcids`
--
ALTER TABLE `pcids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pcids_product_id_foreign` (`product_id`),
  ADD KEY `pcids_cate_id_foreign` (`cate_id`);

--
-- Chỉ mục cho bảng `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `product_categorie_langs`
--
ALTER TABLE `product_categorie_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categorie_langs_product_cate_id_foreign` (`product_cate_id`);

--
-- Chỉ mục cho bảng `product_cates`
--
ALTER TABLE `product_cates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `product_langs`
--
ALTER TABLE `product_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_langs_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `systems`
--
ALTER TABLE `systems`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `yeucaus`
--
ALTER TABLE `yeucaus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `bcids`
--
ALTER TABLE `bcids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `blog_categorie_langs`
--
ALTER TABLE `blog_categorie_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `blog_cates`
--
ALTER TABLE `blog_cates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `blog_langs`
--
ALTER TABLE `blog_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chat_rooms`
--
ALTER TABLE `chat_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2630;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `kyguis`
--
ALTER TABLE `kyguis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `kygui_images`
--
ALTER TABLE `kygui_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `page_langs`
--
ALTER TABLE `page_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `pcids`
--
ALTER TABLE `pcids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;

--
-- AUTO_INCREMENT cho bảng `popups`
--
ALTER TABLE `popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT cho bảng `product_categorie_langs`
--
ALTER TABLE `product_categorie_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `product_cates`
--
ALTER TABLE `product_cates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2439;

--
-- AUTO_INCREMENT cho bảng `product_langs`
--
ALTER TABLE `product_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `systems`
--
ALTER TABLE `systems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `yeucaus`
--
ALTER TABLE `yeucaus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bcids`
--
ALTER TABLE `bcids`
  ADD CONSTRAINT `bcids_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bcids_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `blog_cates` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `blog_categorie_langs`
--
ALTER TABLE `blog_categorie_langs`
  ADD CONSTRAINT `blog_categorie_langs_blog_cate_id_foreign` FOREIGN KEY (`blog_cate_id`) REFERENCES `blog_cates` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `blog_langs`
--
ALTER TABLE `blog_langs`
  ADD CONSTRAINT `blog_langs_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `chat_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `kygui_images`
--
ALTER TABLE `kygui_images`
  ADD CONSTRAINT `kygui_images_kygui_id_foreign` FOREIGN KEY (`kygui_id`) REFERENCES `kyguis` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_orders_id_foreign` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `page_langs`
--
ALTER TABLE `page_langs`
  ADD CONSTRAINT `page_langs_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pcids`
--
ALTER TABLE `pcids`
  ADD CONSTRAINT `pcids_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `product_cates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pcids_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_categorie_langs`
--
ALTER TABLE `product_categorie_langs`
  ADD CONSTRAINT `product_categorie_langs_product_cate_id_foreign` FOREIGN KEY (`product_cate_id`) REFERENCES `product_cates` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_langs`
--
ALTER TABLE `product_langs`
  ADD CONSTRAINT `product_langs_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
