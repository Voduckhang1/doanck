-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2021 at 05:46 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nggame`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(10) NOT NULL,
  `ten_admin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `ten_admin`, `mat_khau`) VALUES
(1, 'long', '39692159');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id_don_hang` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id_don_hang`, `id_sp`, `so_luong`, `don_gia`) VALUES
(17, 19, 2, 1234),
(17, 20, 1, 124),
(18, 19, 1, 1234),
(18, 20, 2, 124),
(18, 21, 1, 12345),
(19, 19, 3, 1270000);

-- --------------------------------------------------------

--
-- Table structure for table `danhmucsp`
--

CREATE TABLE `danhmucsp` (
  `id_dm_sp` int(10) NOT NULL,
  `ten_dm_sp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tao` datetime(6) NOT NULL,
  `ngay_sua` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmucsp`
--

INSERT INTO `danhmucsp` (`id_dm_sp`, `ten_dm_sp`, `ngay_tao`, `ngay_sua`) VALUES
(1, 'Action', '2021-11-17 18:30:17.000000', '2021-11-17 18:30:17.000000'),
(2, 'RPG', '2021-11-17 22:24:25.000000', '2021-11-17 22:24:30.000000'),
(3, 'Adventure', '2021-11-18 16:12:27.000000', '2021-11-18 16:12:27.000000'),
(7, 'Fighting', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(8, 'Sports', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(9, 'Strategy', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(10, 'Shooter', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(11, 'Music', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(12, 'Family', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id_don_hang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `ten_user` varchar(255) NOT NULL,
  `ngay_dat` date NOT NULL DEFAULT current_timestamp(),
  `dia_chi` varchar(255) NOT NULL,
  `so_dien_thoai` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `thanh_tien` int(255) NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  `phuong_thuc_thanh_toan` varchar(30) NOT NULL,
  `trang_thai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id_don_hang`, `id_user`, `ten_user`, `ngay_dat`, `dia_chi`, `so_dien_thoai`, `email`, `thanh_tien`, `ghi_chu`, `phuong_thuc_thanh_toan`, `trang_thai`) VALUES
(17, 1, 'Phạm Tiến Long', '2021-12-13', '714/34 Nguyễn Trãi', '0934562', 'phamtienlong135@gmail.com', 2592, 'Hàng dễ vỡ', 'COD', 'Nhận đơn hàng'),
(18, 1, 'Phạm Tiến Long', '2021-12-13', 'Địa chỉ thứ 2', '13456', 'phamtienlong135@gmail.com', 13827, 'Đơn hàng thứ 2 trong ngày', 'Banking', 'Đang giao hàng'),
(19, 1, 'Phạm Tiến Long', '2021-12-15', 'ás', '123123', 'phamtienlong135@gmail.com', 3810000, 'đâsdada', 'Banking', 'Nhận đơn hàng');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id_ncc` int(10) NOT NULL,
  `ten_ncc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`id_ncc`, `ten_ncc`) VALUES
(1, 'Bandai Namco'),
(2, 'Electronic Arts'),
(3, 'Activision'),
(4, 'Square Enix'),
(5, 'Rockstar Games');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sp` int(10) NOT NULL,
  `id_danhmuc` int(10) NOT NULL,
  `id_ncc` int(10) NOT NULL,
  `tinh_trang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `he_may` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten_sp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `don_gia` int(255) NOT NULL,
  `anh_sp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp(),
  `ngay_sua` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `id_danhmuc`, `id_ncc`, `tinh_trang`, `he_may`, `ten_sp`, `don_gia`, `anh_sp`, `ngay_tao`, `ngay_sua`) VALUES
(19, 2, 1, 'Còn hàng', 'PS4', 'Elden Ring', 1200000, 'elden-ring-ps5.jpg', '2021-11-18 15:29:56', '2021-12-16 15:07:44'),
(20, 1, 1, 'Còn hàng', 'PS4', 'Code Vien', 1000000, 'code-vein-ps4.jpg', '2021-11-18 15:43:07', '2021-12-16 15:11:58'),
(21, 10, 2, 'Còn hàng', 'PS5', 'Battlefield V', 1500000, 'battlefield-2042-ps5.jpg', '2021-11-18 16:44:55', '2021-12-16 15:23:44'),
(23, 1, 4, 'Hết hàng', 'PS5', 'Marvels Guardians Of The Galaxy', 1300000, 'marvels-guardians-of-the-galaxy-ps5.jpg', '2021-11-19 15:26:24', '2021-12-16 15:23:37'),
(24, 10, 2, 'Còn hàng', 'PS5, PS4', 'Crysis Remastered Trilogy', 1500000, 'crysis-remastered-trilogy-ps4.jpg', '2021-11-20 14:55:35', '2021-12-16 15:20:02'),
(25, 10, 3, 'Còn hàng', 'ps5', 'Call Of Duty Vanguard', 12500000, 'call-of-duty-vanguard-ps5.jpg', '2021-11-20 14:56:58', '2021-12-16 15:21:07'),
(26, 8, 1, 'Hết hàng', 'PS4', 'Grand Theft Auto The Trilogy The Definitive Edition', 1200000, 'grand-theft-auto-the-trilogy-the-definitive-edition-ps4.jpg', '2021-11-20 15:02:36', '2021-12-16 15:23:10'),
(27, 3, 1, 'Còn hàng', 'PS5', 'Tales Of Arise', 3213123, 'tales-of-arise-ps5.jpg', '2021-11-20 15:03:43', '2021-12-16 15:24:38'),
(28, 9, 2, 'Còn hàng', 'PS5', 'The Medium - US', 3000000, 'the-medium-ps5-700x700h.jpg', '2021-11-26 14:34:45', '2021-12-16 15:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(10) NOT NULL,
  `ten_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `ten_user`, `mat_khau`, `so_dien_thoai`, `email`, `dia_chi`) VALUES
(1, 'Phạm Tiến Long', '123', '02894564', 'phamtienlong135@gmail.com', 'New York'),
(2, 'Đặng Kiến Phong', '123', '0125464', 'dfff@gmail.com', 'Sài Gòn'),
(3, 'Đặng Kiến Phong', 'md5(wer)', '09864523', 'binvipro135@gmail.com', 'Tân Bình'),
(5, 'Trần Quốc Trọng', '09b5e8ed117d394342dae46af74e5ff5', '09415487', 'fabinhobrasilia@gmail.com', 'Bình Chánh'),
(6, 'long', 'd41d8cd98f00b204e9800998ecf8427e', '0654894655', 'fabinhobrasilia@gmail.com', 'Sài Gòn'),
(8, 'Đặng Kiến Phong', 'd41d8cd98f00b204e9800998ecf8427e', '01231242412', 'fabinhobrasilia@gmail.com', 'Tân Bình'),
(10, 'Đặng Kiến Phong', '202cb962ac59075b964b07152d234b70', '01254641', 'binvipro135@gmail.com', 'ásádasd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id_don_hang`,`id_sp`);

--
-- Indexes for table `danhmucsp`
--
ALTER TABLE `danhmucsp`
  ADD PRIMARY KEY (`id_dm_sp`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_don_hang`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id_ncc`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `id_danhmuc` (`id_danhmuc`),
  ADD KEY `id_ncc` (`id_ncc`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `danhmucsp`
--
ALTER TABLE `danhmucsp`
  MODIFY `id_dm_sp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id_don_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id_ncc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmucsp` (`id_dm_sp`),
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`id_ncc`) REFERENCES `nhacungcap` (`id_ncc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
