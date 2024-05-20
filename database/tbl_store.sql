-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 12, 2023 lúc 05:36 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tbl_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ten_admin` varchar(100) NOT NULL,
  `chuc_vu` varchar(50) NOT NULL,
  `sdt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `ten_admin`, `chuc_vu`, `sdt`) VALUES
(1, 'daothuhang@gmail.com', '1234567', 'daothuhang ngu ngoc', 'quan_ly', '0971986456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_don_hang`
--

CREATE TABLE `tbl_don_hang` (
  `dh_ho` varchar(10) NOT NULL,
  `dh_ten` varchar(50) NOT NULL,
  `dh_sdt` varchar(20) NOT NULL,
  `dh_email` varchar(30) NOT NULL,
  `dh_city` varchar(20) NOT NULL,
  `dh_address` varchar(100) NOT NULL,
  `dh_ghichu` varchar(1000) NOT NULL,
  `dh_id` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_don_hang`
--

INSERT INTO `tbl_don_hang` (`dh_ho`, `dh_ten`, `dh_sdt`, `dh_email`, `dh_city`, `dh_address`, `dh_ghichu`, `dh_id`, `id_khachhang`, `total_price`, `tinhtrang`, `admin_id`, `date`) VALUES
('Vũ Thiều H', 'Long', '0918138035', 'vthl2k2@gmail.com', 'viet nam', '33', '123', 49, 1, 150000, 0, 0, '8:02 01/11/23'),
('Vũ Thiều H', 'Long', '0918138035', 'vthl2k2@gmail.com', 'viet nam', '33', 'aaa', 50, 3, 56000000, 0, 0, '13:38 01/12/23'),
('Vũ Thiều H', 'Long', '0918138035', 'vthl2k2@gmail.com', 'viet nam', '33', 'hvnh', 51, 1, 599000, 0, 0, '16:30 01/12/23'),
('Vũ Thiều H', 'Long', '0918138035', 'vthl2k2@gmail.com', 'viet nam', '33', 'a', 52, 1, 130000, 0, 0, '16:51 01/12/23'),
('Vũ Thiều H', 'Long', '0918138035', 'vthl2k2@gmail.com', 'viet nam', '33', 'â', 53, 1, 450000, 0, 0, '16:55 01/12/23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `tenkh` varchar(100) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `tenkh`, `sdt`, `diachi`, `email`, `password`) VALUES
(1, 'long', '', '', '', '123'),
(2, 'hang', '', '', 'vthl2k2@gmail.com', '123'),
(3, 'a', '', '', 'vthl2k2@gmail.com', '123'),
(4, 'Long Vũ Thiều Hoàng', '', '', 'vthl2k2@gmail.com', '123'),
(5, '', '', '', '', ''),
(6, 'Long Vũ Thiều Hoàng', '', '', 'vthl2k2@gmail.com', '123'),
(7, 'a', '', '', 'vthl2k2@gmail.com', '123'),
(8, 'Long Vũ Thiều Hoàng', '', '', 'vthl2k2@gmail.com', '123'),
(9, 'Long Vũ Thiều Hoàng', '', '', 'vthl2k2@gmail.com', '123'),
(10, 'Long Vũ Thiều Hoàng', '', '', 'vthl2k2@gmail.com', '123'),
(11, 'Long Vũ Thiều Hoàng', '', '', 'vthl2k2@gmail.com', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `malienhe` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tinnhan` varchar(500) NOT NULL,
  `tieude` varchar(50) NOT NULL,
  `ngaylienhe` int(50) NOT NULL,
  `trangthai` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loaisanpham`
--

CREATE TABLE `tbl_loaisanpham` (
  `id_loaisanpham` int(11) NOT NULL,
  `ten_loaisanpham` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_loaisanpham`
--

INSERT INTO `tbl_loaisanpham` (`id_loaisanpham`, `ten_loaisanpham`) VALUES
(1, 'Quần nam'),
(2, 'Áo nam'),
(3, 'Phụ kiện nam'),
(4, 'Quần nữ'),
(5, 'Áo nữ'),
(6, 'Phụ kiện nữ'),
(15, 'Best seller'),
(16, 'Bộ sưu tập mới');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `id_order_detail` int(11) NOT NULL,
  `id_san_pham` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`id_order_detail`, `id_san_pham`, `quantity`, `price`) VALUES
(34, 2, 1, 150),
(35, 2, 2, 150),
(35, 3, 1, 99999),
(36, 2, 2, 150),
(37, 2, 1, 150),
(38, 1, 1, 100000),
(40, 1, 1, 100000),
(41, 2, 1, 150),
(42, 5, 1, 1150000),
(42, 2, 100, 150),
(43, 2, 1, 150),
(43, 7, 1, 600000),
(44, 4, 1, 150000),
(45, 1, 1, 100000),
(45, 4, 100, 150000),
(46, 4, 1, 150000),
(47, 69, 100, 150000),
(48, 70, 10, 200000),
(48, 3, 5, 399000),
(49, 69, 1, 150000),
(50, 1, 100, 560000),
(51, 9, 1, 599000),
(52, 68, 1, 130000),
(53, 8, 1, 450000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `id_loaisanpham` int(11) NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_mota` text NOT NULL,
  `sanpham_gia` varchar(100) NOT NULL,
  `sanpham_soluong` int(11) NOT NULL,
  `anh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `id_loaisanpham`, `sanpham_name`, `sanpham_mota`, `sanpham_gia`, `sanpham_soluong`, `anh`) VALUES
(1, 1, 'Áo phao Nam', '', '560000', 45, 'aonam1.jpg'),
(2, 1, 'Áo len kẻ sọc', '', '399000 ', 20, 'aonam2.jpg'),
(3, 1, 'Áo nỉ đen', '', '399000', 65, 'aonam3.jpg'),
(4, 1, 'Áo nỉ trắng', '', '399000', 0, 'aonam4.jpg'),
(5, 1, 'Áo sơ mi nâu', '', '450000', 21, 'aonam5.jpg'),
(6, 1, 'Áo sơ mi trắng', '', '450000', 34, 'aonam6.jpg'),
(7, 2, 'Quần Jean Xanh Đen', '', '599000', 36, 'quannam1.jpg'),
(8, 16, 'Quần Jean Xanh Đậm', '', '450000', 65, 'quannam2.jpg'),
(9, 16, 'Quần Âu', '', '599000', 12, 'quannam3.jpg'),
(10, 2, 'Quần Âu màu sáng', '', '350000', 30, 'quannam4.jpg'),
(11, 2, 'Quần Kaki', '', '600000', 10, 'quannam5.jpg'),
(12, 2, 'Quần Sort', '', '250000', 57, 'quannam6.jpg'),
(13, 3, 'Áo Thun Thể Thao', '', '290000', 3, 'khacnam4.jpg'),
(14, 3, 'Bộ Đồ Thể Thao Xanh', '', '620000', 41, 'khacnam3.jpg'),
(15, 3, 'Bộ Đồ Thể Thao Xám', '', '650000', 23, 'khacnam2.jpg'),
(16, 3, 'Bộ Đồ Thể Thao Xanh', '', '560000', 0, 'khacnam1.jpg'),
(17, 4, 'Áo Khoác', '', '340000', 51, 'aonu1.jpg'),
(18, 4, 'Áo Phao Hồng', '', '550000', 20, 'aonu2.jpg'),
(19, 4, 'Áo len', '', '190000', 21, 'aonu3.jpg'),
(20, 0, 'Áo len kẻ', '', '220000', 34, 'aonu4.jpg'),
(21, 4, 'Áo len kẻ sọc', '', '250000', 13, 'aonu4.jpg'),
(22, 4, 'Áo phông trắng nữ', '', '250000', 17, 'aonu5.jpg'),
(23, 4, 'Áo phông chữ xanh', '', '230000', 12, 'aonu6.jpg'),
(24, 4, 'Áo sơ mi cam', '', '320000', 0, 'aonu7.jpg'),
(25, 4, 'Áo polo', '', '240000', 0, 'aonu8.jpg'),
(26, 4, 'Áo sơ mi nâu', '', '226000', 43, 'aonu9.jpg'),
(27, 4, 'Áo sơ mi trắng', '', '280000', 12, 'aonu10.jpg'),
(28, 4, 'Áo thun kẻ nữ', '', '280000', 13, 'aonu11.jpg'),
(29, 5, 'Quần Jeans xanh', '', '450000', 32, 'quannu1.jpg'),
(30, 5, 'Quần ống rộng', '', '350000', 12, 'quannu2.jpg'),
(31, 5, 'Quần Âu', '', '450000', 33, 'quannu3.jpg'),
(32, 5, 'Quần Kaki', '', '580000', 34, 'quannu4.jpg'),
(33, 5, 'Quần Thun', '', '300000', 32, 'quannu1.jpg'),
(34, 5, 'Quần ống rộng', '', '350000', 12, 'quannu2.jpg'),
(35, 5, 'Quần Âu', '', '450000', 33, 'quannu5.jpg'),
(36, 5, 'Quần Cộc', '', '250000', 33, 'quannu6.jpg'),
(37, 6, 'Váy Polo liền thân', '', '550000', 39, 'khacnu1.jpg'),
(38, 6, 'Váy liên thân', '', '550000', 33, 'khacnu2.jpg'),
(39, 6, 'Chân váy kẻ', '', '250000', 65, 'khacnu3.jpg'),
(40, 6, 'Chân váy kaki', '', '250000', 0, 'khacnu4.jpg'),
(41, 6, 'Bộ đồ ngủ', '', '350000', 39, 'khacnu5.jpg'),
(42, 6, 'Bộ đồ thể thao', '', '450000', 39, 'khacnu6.jpg'),
(43, 7, 'Ví dài Nữ', '', '340000', 0, 'phukien6.jpg'),
(44, 7, 'Ví ngắn nữ', '', '250000', 12, 'phukien5.jpg'),
(45, 9, 'Combo Khăn mặt', '', '240000', 34, 'phukien4.jpg'),
(46, 9, 'Khăn mặt', '', '100000', 34, 'phukien3.jpg'),
(47, 7, 'Ví dài Nam lớn', '', '550000', 0, 'vinam1.jpg'),
(48, 7, 'Ví sách nữ', '', '750000', 678, 'tuisach2.jpg'),
(49, 7, 'Ví dài Nam đen', '', '450000', 34, 'vinam3.jpg'),
(50, 7, 'Túi sách Nam', '', '350000', 56, 'tuisach4.jpg'),
(51, 7, 'Ví dáng dọc Nam', '', '550000', 0, 'vinam2.jpg'),
(52, 7, 'Túi đeo chéo Nam', '', '450000', 45, 'tuisach3.jpg'),
(53, 7, 'Túi sách nữ', '', '550000', 0, 'túiach1.jpg'),
(54, 8, 'Tất nữ', '', '150000', 123, 'tat1.jpg'),
(55, 8, 'Tất nữ trái tim', '', '180000', 123, 'tat2.jpg'),
(56, 8, 'Tất nam', '', '120000', 123, 'tat3.jpg'),
(57, 8, 'Tất nam cổ ngắn', '', '120000', 123, 'tat4.jpg'),
(58, 8, 'Tất nữ cute', '', '190000', 12, 'tat5.jpg'),
(59, 8, 'Tất dài nữ', '', '250000', 23, 'tat6.jpg'),
(60, 9, 'Khăn bông', '', '220000', 13, 'khanmat1.jpg'),
(61, 9, 'Combo khăn mặt bông', '', '800000', 13, 'khanmat2.jpg'),
(62, 9, 'Khăn mặt mềm', '', '120000', 13, 'khanmat3.jpg'),
(63, 9, 'Combo khăn', '', '560000', 13, 'khanmat4.jpg'),
(64, 9, 'Khăn mặt', '', '220000', 13, 'khanmat5.jpg'),
(68, 15, 'Áo sơ mi', '', '130000', 0, 'promo_2.jpg'),
(69, 15, 'Mangto', '', '150000', 0, 'promo_1.jpg'),
(70, 15, 'Blazer', '', '200000', 0, 'promo_3.jpg'),
(71, 16, 'Sơ mi trắng', 'tốt', '190000', 100, 'aonam1.jpg'),
(72, 3, 'long', 'fdcgfrtg', '12', 13, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_don_hang`
--
ALTER TABLE `tbl_don_hang`
  ADD PRIMARY KEY (`dh_id`);

--
-- Chỉ mục cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Chỉ mục cho bảng `tbl_loaisanpham`
--
ALTER TABLE `tbl_loaisanpham`
  ADD PRIMARY KEY (`id_loaisanpham`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_don_hang`
--
ALTER TABLE `tbl_don_hang`
  MODIFY `dh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_loaisanpham`
--
ALTER TABLE `tbl_loaisanpham`
  MODIFY `id_loaisanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
