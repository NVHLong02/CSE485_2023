-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 28, 2023 lúc 04:47 PM
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
-- Cơ sở dữ liệu: `hospital_management_system`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doctor`
--

CREATE TABLE `doctor` (
  `ID` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `specialization` varchar(200) NOT NULL,
  `contract` int(20) NOT NULL,
  `salary` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `doctor`
--

INSERT INTO `doctor` (`ID`, `Name`, `specialization`, `contract`, `salary`) VALUES
(4851, 'Dat', 'cap cuu', 34567893, 30000000),
(4852, 'Long', 'gan', 914362578, 27000000),
(4853, 'Son', 'tim mach', 59874893, 35000000),
(4854, 'Nghia', 'nao', 374628398, 33000000),
(4855, 'Nam', 'khoa nhi', 357382957, 34000000),
(4856, 'Phuc', 'phu san', 358274856, 25000000),
(4857, 'Loi', 'phoi', 935264785, 26000000),
(4858, 'Minh', 'gay me', 957264837, 25000000),
(4859, 'Huy', 'hoi suc', 328164797, 28000000),
(4866, 'Duy', 'ho hap', 957361548, 26000000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
