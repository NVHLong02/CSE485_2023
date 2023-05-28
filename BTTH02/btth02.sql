-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 21, 2023 lúc 04:48 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btth02`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctrinhdaotao`
--

CREATE TABLE `ctrinhdaotao` (
  `ID_NganhHoc` varchar(50) NOT NULL,
  `ID_KhoaHoc` varchar(50) NOT NULL,
  `ID_MonHoc` varchar(50) DEFAULT NULL,
  `HocKy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ctrinhdaotao`
--

INSERT INTO `ctrinhdaotao` (`ID_NganhHoc`, `ID_KhoaHoc`, `ID_MonHoc`, `HocKy`) VALUES
('CNTT', 'K60', 'MH4', 6),
('CNTT', 'K62', 'MH1', 3),
('CNTT', 'K63', 'MH4', 4),
('QTKD', 'K60', 'MH3', 8),
('TDH', 'K61', 'MH2', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemdanh`
--

CREATE TABLE `diemdanh` (
  `ID_SinhVien` varchar(50) DEFAULT NULL,
  `ID_GiangVien` varchar(50) DEFAULT NULL,
  `ID_LopHoc` varchar(50) DEFAULT NULL,
  `BuoiDiemDanh` int(11) DEFAULT NULL,
  `TrangThai` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `diemdanh`
--

INSERT INTO `diemdanh` (`ID_SinhVien`, `ID_GiangVien`, `ID_LopHoc`, `BuoiDiemDanh`, `TrangThai`) VALUES
('SV1', 'GV1', 'LH1', 20, 'VANG'),
('SV2', 'GV2', 'LH2', 14, 'CO MAT'),
('SV3', 'GV3', 'LH3', 10, 'VANG'),
('SV1', 'GV1', 'LH1', 12, 'MUON'),
('SV1', 'GV1', 'LH1', 6, 'CO MAT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `ID_GiangVien` varchar(50) NOT NULL,
  `TenGiangVien` varchar(50) DEFAULT NULL,
  `GioiTinh` varchar(50) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `SDT` varchar(50) DEFAULT NULL,
  `Diachi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giangvien`
--

INSERT INTO `giangvien` (`ID_GiangVien`, `TenGiangVien`, `GioiTinh`, `NgaySinh`, `Email`, `SDT`, `Diachi`) VALUES
('GV1', 'Grannie Grinyer', 'Male', '1984-05-15', 'ggrinyer0@nyu.edu', '882-468-5040', '3 Sheridan Alley'),
('GV2', 'Ellerey Norman', 'Male', '1983-06-24', 'enorman1@bigcartel.com', '145-894-6197', '4831 Hermina Junction'),
('GV3', 'Trip Puttock', 'Male', '1978-06-11', 'tputtock2@lulu.com', '554-992-9713', '0332 Oakridge Place'),
('GV4', 'Kellie Causbey', 'Female', '1987-09-27', 'kcausbey3@gravatar.com', '518-572-8014', '11 Susan Crossing'),
('GV5', 'Caprice Terbeck', 'Female', '1982-12-19', 'cterbeck4@fda.gov', '110-407-7437', '8822 Jenifer Junction');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahoc`
--

CREATE TABLE `khoahoc` (
  `ID_KhoaHoc` varchar(50) NOT NULL,
  `Nambatdau` int(11) DEFAULT NULL,
  `Namketthuc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khoahoc`
--

INSERT INTO `khoahoc` (`ID_KhoaHoc`, `Nambatdau`, `Namketthuc`) VALUES
('K60', 2018, 2022),
('K61', 2019, 2023),
('K62', 2020, 2024),
('K63', 2021, 2025),
('K64', 2022, 2026);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophoc`
--

CREATE TABLE `lophoc` (
  `ID_LopHoc` varchar(50) NOT NULL,
  `ID_GiangVien` varchar(50) DEFAULT NULL,
  `TenLopHoc` varchar(50) DEFAULT NULL,
  `SoSV` int(11) DEFAULT NULL,
  `Ngaybatdau` date DEFAULT NULL,
  `Ngayketthuc` date DEFAULT NULL,
  `Giobatdau` varchar(50) DEFAULT NULL,
  `Gioketthuc` varchar(50) DEFAULT NULL,
  `Ngayhoc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lophoc`
--

INSERT INTO `lophoc` (`ID_LopHoc`, `ID_GiangVien`, `TenLopHoc`, `SoSV`, `Ngaybatdau`, `Ngayketthuc`, `Giobatdau`, `Gioketthuc`, `Ngayhoc`) VALUES
('LH1', 'GV1', 'Jammie Wholesworth', 68, '2020-06-30', '2023-04-12', '1:03 AM', '2:51 PM', 'THU 5'),
('LH2', 'GV2', 'Noelle Boothe', 60, '2020-05-21', '2023-03-16', '6:06 AM', '4:24 PM', 'THU 2'),
('LH3', 'GV3', 'Bertie Mallord', 91, '2020-06-21', '2023-11-21', '4:07 AM', '1:36 PM', 'THU 3'),
('LH4', 'GV4', 'Kenon Hauck', 71, '2020-07-18', '2023-09-15', '5:41 AM', '4:49 PM', 'THU 4'),
('LH5', 'GV5', 'Lindsay Newtown', 79, '2020-07-07', '2022-10-09', '1:35 AM', '5:16 PM', 'THU 6');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `ID_Monhoc` varchar(50) NOT NULL,
  `TenMonhoc` varchar(50) DEFAULT NULL,
  `SoTinChi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`ID_Monhoc`, `TenMonhoc`, `SoTinChi`) VALUES
('MH1', 'Ki Thuat Phan Mem', 2),
('MH2', 'Dai so tuyen tinh', 3),
('MH3', 'Hoc May', 2),
('MH4', 'Cong Nghe Web', 2),
('MH5', 'Bong Da', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganhhoc`
--

CREATE TABLE `nganhhoc` (
  `ID_NganhHoc` varchar(50) NOT NULL,
  `TenNganhHoc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nganhhoc`
--

INSERT INTO `nganhhoc` (`ID_NganhHoc`, `TenNganhHoc`) VALUES
('CK', 'Co khi'),
('CNTT', 'Cong nghe thong tin'),
('CT', 'Cong trinh'),
('QTKD', 'Quan tri kinh doanh'),
('TDH', 'Tu dong hoa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `ID_SinhVien` varchar(50) NOT NULL,
  `ID_NganhHoc` varchar(50) DEFAULT NULL,
  `ID_KhoaHoc` varchar(50) DEFAULT NULL,
  `TenSinhVien` varchar(50) DEFAULT NULL,
  `GioiTinh` varchar(50) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `SDT` varchar(50) DEFAULT NULL,
  `Diachi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`ID_SinhVien`, `ID_NganhHoc`, `ID_KhoaHoc`, `TenSinhVien`, `GioiTinh`, `NgaySinh`, `Email`, `SDT`, `Diachi`) VALUES
('SV1', 'CNTT', 'K61', 'Garwood Spink', 'Non-binary', '2001-12-27', 'gspink0@cam.ac.uk', '692-533-7243', '135 Ridgeview Point'),
('SV2', 'CNTT', 'K62', 'Malvin Crowdy', 'Male', '1999-03-06', 'mcrowdy1@meetup.com', '441-659-8580', '7 Calypso Center'),
('SV3', 'CNTT', 'K60', 'Patrizius McFarlane', 'Male', '2004-01-25', 'pmcfarlane2@dot.gov', '291-951-1288', '90925 Village Park'),
('SV4', 'QTKD', 'K62', 'Justino Volette', 'Male', '2002-10-02', 'jvolette3@businessweek.com', '700-984-3201', '7 Pleasure Parkway'),
('SV5', 'CNTT', 'K63', 'Garrott Castelli', 'Male', '2004-03-12', 'gcastelli4@eventbrite.com', '934-751-9019', '1 Vidon Trail');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ctrinhdaotao`
--
ALTER TABLE `ctrinhdaotao`
  ADD PRIMARY KEY (`ID_NganhHoc`,`ID_KhoaHoc`),
  ADD KEY `ID_MonHoc` (`ID_MonHoc`);

--
-- Chỉ mục cho bảng `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD KEY `ID_GiangVien` (`ID_GiangVien`),
  ADD KEY `ID_LopHoc` (`ID_LopHoc`),
  ADD KEY `ID_SinhVien` (`ID_SinhVien`);

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`ID_GiangVien`);

--
-- Chỉ mục cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD PRIMARY KEY (`ID_KhoaHoc`);

--
-- Chỉ mục cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD PRIMARY KEY (`ID_LopHoc`),
  ADD KEY `ID_GiangVien` (`ID_GiangVien`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`ID_Monhoc`);

--
-- Chỉ mục cho bảng `nganhhoc`
--
ALTER TABLE `nganhhoc`
  ADD PRIMARY KEY (`ID_NganhHoc`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`ID_SinhVien`),
  ADD KEY `ID_NganhHoc` (`ID_NganhHoc`),
  ADD KEY `ID_KhoaHoc` (`ID_KhoaHoc`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ctrinhdaotao`
--
ALTER TABLE `ctrinhdaotao`
  ADD CONSTRAINT `ctrinhdaotao_ibfk_1` FOREIGN KEY (`ID_MonHoc`) REFERENCES `monhoc` (`ID_Monhoc`);

--
-- Các ràng buộc cho bảng `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD CONSTRAINT `diemdanh_ibfk_1` FOREIGN KEY (`ID_GiangVien`) REFERENCES `giangvien` (`ID_GiangVien`),
  ADD CONSTRAINT `diemdanh_ibfk_2` FOREIGN KEY (`ID_LopHoc`) REFERENCES `lophoc` (`ID_LopHoc`),
  ADD CONSTRAINT `diemdanh_ibfk_3` FOREIGN KEY (`ID_SinhVien`) REFERENCES `sinhvien` (`ID_SinhVien`);

--
-- Các ràng buộc cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD CONSTRAINT `lophoc_ibfk_1` FOREIGN KEY (`ID_GiangVien`) REFERENCES `giangvien` (`ID_GiangVien`);

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_ibfk_1` FOREIGN KEY (`ID_NganhHoc`) REFERENCES `nganhhoc` (`ID_NganhHoc`),
  ADD CONSTRAINT `sinhvien_ibfk_2` FOREIGN KEY (`ID_KhoaHoc`) REFERENCES `khoahoc` (`ID_KhoaHoc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
