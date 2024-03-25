-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 06, 2024 lúc 02:01 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopquanao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBinhLuan` int(11) NOT NULL,
  `NoiDung` text NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `NgayBinhLuan` datetime NOT NULL DEFAULT current_timestamp(),
  `Duyet` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`MaBinhLuan`, `NoiDung`, `MaKhachHang`, `MaSanPham`, `NgayBinhLuan`, `Duyet`) VALUES
(2, 'Sản phẩm rất tốt, tôi rất hài lòng về sản phẩm này, tôi sẽ tiếp tục mua sản phẩm của bạn. Chúc cửa hàng bán càng nhiều sản phẩm tốt hơn nữa.\n', 1, 7, '2023-09-28 10:28:10', 1),
(3, 'Sản phẩm rất đẹp, chất lượng tốt, tôi đã thuê sản phẩm ở đây rất nhiều lần, có lần không đúng kích thước size tui báo shop và được gửi lại sản phẩm theo size vừa vặn. Chúc shop làm ăn phát tài', 2, 7, '2023-09-28 10:30:14', 1),
(5, 'Sản phẩm này tốt quá, tôi sẽ mua 10 cái', 1, 7, '2023-10-18 15:31:43', 0),
(6, 'Vải tốt lắm, kiểu dáng đẹp. Tôi sẽ mua tiếp', 1, 7, '2023-10-29 15:33:47', 0),
(7, 'Áo đẹp lắm, chất vải tốt', 1, 11, '2023-10-29 15:36:47', 0),
(8, 'Bé thích lắm, sản phẩm khá tốt', 1, 14, '2023-10-29 15:39:13', 0),
(15, 'fff', 17, 9, '2024-02-29 01:26:02', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `MaChiTietDH` int(11) NOT NULL,
  `MaDonHang` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `GiaBan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`MaChiTietDH`, `MaDonHang`, `MaSanPham`, `SoLuong`, `GiaBan`) VALUES
(4, 18, 7, 1, 450000),
(5, 18, 10, 1, 330000),
(6, 19, 14, 1, 370000),
(7, 19, 7, 2, 450000),
(8, 31, 7, 2, 450000),
(9, 31, 11, 4, 550000),
(10, 31, 16, 1, 240000),
(13, 33, 11, 1, 550000),
(14, 33, 6, 2, 400000),
(15, 33, 12, 2, 380000),
(16, 34, 10, 1, 330000),
(17, 34, 15, 2, 360000),
(18, 34, 16, 5, 240000),
(19, 35, 14, 1, 370000),
(20, 35, 10, 1, 330000),
(21, 35, 7, 1, 450000),
(22, 35, 5, 1, 500000),
(23, 35, 12, 1, 380000),
(24, 36, 10, 1, 330000),
(25, 36, 6, 1, 400000),
(26, 36, 12, 2, 380000),
(27, 36, 14, 1, 370000),
(28, 37, 11, 2, 550000),
(29, 37, 7, 2, 450000),
(30, 37, 10, 1, 330000),
(31, 38, 7, 2, 450000),
(32, 38, 6, 1, 400000),
(33, 39, 11, 2, 550000),
(34, 39, 8, 1, 350000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDanhMuc` int(11) NOT NULL,
  `TenDanhMuc` varchar(100) NOT NULL,
  `HinhAnh` text NOT NULL,
  `TrangThai` varchar(100) NOT NULL DEFAULT 'Đang hoạt động'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDanhMuc`, `TenDanhMuc`, `HinhAnh`, `TrangThai`) VALUES
(1, 'Thời Trang Nữ', 'dm_nu.jpeg', 'Đang hoạt động'),
(2, 'THỜI TRANG NAM', 'dm_nam.jpeg', 'Đang hoạt động'),
(3, 'THỜI TRANG TRẺ EM', 'dm_treem.jpeg', 'Đang hoạt động');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `MaDonHang` int(11) NOT NULL,
  `NgayDatHang` datetime NOT NULL DEFAULT current_timestamp(),
  `MaKhachHang` int(11) NOT NULL,
  `TongTien` int(11) NOT NULL,
  `TrangThai` varchar(100) NOT NULL DEFAULT 'Đang chờ xử lý',
  `GhiChu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`MaDonHang`, `NgayDatHang`, `MaKhachHang`, `TongTien`, `TrangThai`, `GhiChu`) VALUES
(18, '2023-07-01 09:06:26', 1, 780000, 'Đã giao hàng', ''),
(19, '2023-08-10 14:32:09', 2, 1270000, 'Đang giao hàng', 'Nhớ chuyển trước 7h'),
(31, '2023-08-15 23:36:18', 1, 3340000, 'Đã hủy', ''),
(33, '2023-08-24 15:13:45', 2, 2110000, 'Đã giao hàng', ''),
(34, '2023-09-24 15:25:04', 2, 2250000, 'Đã giao hàng', ''),
(35, '2023-09-28 23:43:08', 15, 2030000, 'Đã giao hàng', 'Điện thoại trước khi giao hàng'),
(36, '2023-09-28 23:44:06', 15, 1860000, 'Đã giao hàng', 'Giao hàng vào chủ nhật'),
(37, '2023-09-28 23:44:42', 15, 2330000, 'Đã duyệt đơn hàng', ''),
(38, '2023-09-28 23:45:23', 1, 1300000, 'Đang chờ xử lý', 'Giao hàng buổi tối'),
(39, '2023-10-02 07:47:14', 1, 1450000, 'Đang chờ xử lý', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachHang` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `HoTen` varchar(100) NOT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `SDT` varchar(12) DEFAULT NULL,
  `Admin` int(1) NOT NULL DEFAULT 0,
  `Anh` varchar(100) DEFAULT NULL,
  `TrangThai` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKhachHang`, `Email`, `MatKhau`, `HoTen`, `DiaChi`, `SDT`, `Admin`, `Anh`, `TrangThai`) VALUES
(1, 'hplsolution@gmail.com', '123', 'Lê Phát Hiện', 'HCM', '0925701370', 1, 'hien.jpeg', 1),
(2, 'khachhang@gmail.com', '202cb962ac59075b964b07152d234b70', 'Nguyễn Thị Hoa', 'Quận 12, HCM', '0987654321', 0, 'hoa.jpeg', 1),
(15, 'khachhang3@gmail.com', '123', 'Nguyễn Thị Huyền Trân', 'HCM', '0856387187', 0, 'anhkh3.jpeg', 1),
(16, 'khachhang4@gmail.com', '123', 'Nguyễn Thị Lan', 'Đà Nẵng', '9876543312', 0, 'hoa.jpeg', 1),
(17, 'katakuri10000@gmail.com', '12345', 'Phạm Hoàng Phúc', '1210, Tỉnh lộ 15', '33373303', 0, 'nam_sm_6.webp', 1),
(18, 'lancer1501@gmail.com', '1234', 'Phạm Hoàng Phúc', '1210, Tỉnh lộ 15', '33373303', 0, '', 1),
(19, 'lancer1501@gmail.com', '123', 'Phạm Hoàng Phúc', '1210, Tỉnh lộ 15', '33373303', 0, '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(10) NOT NULL,
  `TenSanPham` varchar(100) NOT NULL,
  `HinhAnh` text DEFAULT NULL,
  `Gia` int(10) DEFAULT NULL,
  `GiaKhuyenMai` int(10) DEFAULT NULL,
  `MaDanhMuc` int(10) NOT NULL,
  `SoLuong` int(10) DEFAULT NULL,
  `MoTa` text DEFAULT NULL,
  `Hot` int(11) DEFAULT NULL,
  `TrangThai` varchar(100) NOT NULL DEFAULT 'Đang hoạt động'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `HinhAnh`, `Gia`, `GiaKhuyenMai`, `MaDanhMuc`, `SoLuong`, `MoTa`, `Hot`, `TrangThai`) VALUES
(5, 'Váy V1', 'nu_vay_5.webp', 650000, 500000, 1, 80, '', 0, 'Đang hoạt động'),
(6, 'Váy V2', 'nu_vay_2.webp', 450000, 400000, 1, 50, NULL, NULL, 'Đang hoạt động'),
(7, 'Váy V3', 'nu_vay_3.webp', 550000, 450000, 1, 50, NULL, 1, 'Đang hoạt động'),
(8, 'Váy V4', 'nu_vay_4.webp', 400000, 350000, 1, 40, NULL, NULL, 'Đang hoạt động'),
(9, 'Áo sơ mi SM1', 'nam_sm_1.webp', 280000, 200000, 2, 30, NULL, 0, 'Đang hoạt động'),
(10, 'Áo sơ mi SM2', 'nam_sm_2.webp', 450000, 330000, 2, 30, NULL, NULL, 'Đang hoạt động'),
(11, 'Áo khoác K1', 'nam_sm_3.webp', 600000, 550000, 2, 10, NULL, 1, 'Đang hoạt động'),
(12, 'Áo thun AT1', 'nam_sm_4.webp', 400000, 380000, 2, 30, NULL, NULL, 'Đang hoạt động'),
(13, 'Váy trẻ em V1', 'treem_vay_1.webp', 300000, 280000, 3, 30, NULL, 0, 'Đang hoạt động'),
(14, 'Váy trẻ em V2', 'treem_vay_2.webp', 400000, 370000, 3, 40, NULL, 1, 'Đang hoạt động'),
(15, 'Váy trẻ em V3', 'treem_vay_3.webp', 450000, 360000, 3, 50, NULL, 0, 'Đang hoạt động'),
(16, 'Váy trẻ em V4', 'treem_vay_4.webp', 300000, 240000, 3, 30, NULL, 1, 'Đang hoạt động'),
(22, 'Váy V5', 'nu_vay_5.webp', 400000, 350000, 1, 30, NULL, NULL, 'Đang hoạt động'),
(23, 'Váy V6', 'nu_vay_6.webp', 350000, 250000, 1, NULL, NULL, NULL, 'Đang hoạt động'),
(24, 'Áo sơ mi SM5', 'nam_sm_5.webp', 350000, 200000, 2, 30, NULL, NULL, 'Đang hoạt động'),
(25, 'Áo sơ mi SM6', 'nam_sm_6.webp', 500000, 350000, 2, 20, NULL, NULL, 'Đang hoạt động'),
(26, 'Váy trẻ em V5', 'treem_vay_5.webp', 400000, 300000, 3, 10, NULL, 0, 'Đang hoạt động'),
(27, 'Váy trẻ em V6', 'treem_vay_6.webp', 300000, 150000, 3, 30, NULL, 0, 'Đang hoạt động'),
(30, 'WD18302', 'mau-phong-khach-co-ban-tho-dep-70-450x359-2.jpeg', 2000000, 200000, 3, 100, '', 1, 'Đang hoạt động');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBinhLuan`),
  ADD KEY `MaKhachHang` (`MaKhachHang`),
  ADD KEY `MaSanPham` (`MaSanPham`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`MaChiTietDH`),
  ADD KEY `MaDonHang` (`MaDonHang`),
  ADD KEY `MaSanPham` (`MaSanPham`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDanhMuc`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDonHang`),
  ADD KEY `MaKhachHang` (`MaKhachHang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `MaDanhMuc` (`MaDanhMuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaBinhLuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `MaChiTietDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `MaDanhMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`);

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`MaDonHang`) REFERENCES `donhang` (`MaDonHang`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaDanhMuc`) REFERENCES `danhmuc` (`MaDanhMuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
