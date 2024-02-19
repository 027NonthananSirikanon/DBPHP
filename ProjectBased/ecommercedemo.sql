-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 19, 2024 at 08:07 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommercedemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `optiongroups`
--

CREATE TABLE `optiongroups` (
  `OptionGroupID` int(11) NOT NULL,
  `OptionGroupName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `optiongroups`
--

INSERT INTO `optiongroups` (`OptionGroupID`, `OptionGroupName`) VALUES
(1, 'color'),
(2, 'size');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `OptionID` int(11) NOT NULL,
  `OptionGroupID` int(11) DEFAULT NULL,
  `OptionName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`OptionID`, `OptionGroupID`, `OptionName`) VALUES
(1, 1, 'red'),
(2, 1, 'blue'),
(3, 1, 'green'),
(4, 2, 'S'),
(5, 2, 'M'),
(6, 2, 'L'),
(7, 2, 'XL'),
(8, 2, 'XXL');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `DetailID` int(11) NOT NULL,
  `DetailOrderID` int(11) NOT NULL,
  `DetailProductID` int(11) NOT NULL,
  `DetailName` varchar(250) COLLATE latin1_german2_ci DEFAULT NULL,
  `DetailPrice` float NOT NULL DEFAULT 0,
  `DetailSKU` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `DetailQuantity` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`DetailID`, `DetailOrderID`, `DetailProductID`, `DetailName`, `DetailPrice`, `DetailSKU`, `DetailQuantity`) VALUES
(1, 1, 115, '', 3500, '', 2),
(2, 1, 117, '', 3500, '', 2),
(3, 2, 115, '', 3500, '', 2),
(4, 2, 117, '', 3500, '', 2),
(5, 3, 1, '', 9.99, '', 1),
(6, 3, 115, '', 3500, '', 2),
(7, 3, 117, '', 3500, '', 2),
(8, 4, 112, '', 3500, '', 2),
(9, 4, 115, '', 3500, '', 1),
(10, 5, 114, '', 3500, '', 1),
(11, 6, 114, '', 3500, '', 1),
(12, 7, 112, '', 3500, '', 2),
(13, 7, 115, '', 3500, '', 1),
(14, 8, 1, '', 9.99, '', 1),
(15, 9, 2, '', 179.99, '', 1),
(16, 10, 2, '', 179.99, '', 1),
(17, 33, 1, NULL, 9.99, NULL, 1),
(18, 33, 2, NULL, 179.99, NULL, 1),
(19, 33, 115, NULL, 7000, NULL, 1),
(20, 34, 1, NULL, 9.99, NULL, 1),
(21, 34, 2, NULL, 179.99, NULL, 1),
(22, 35, 1, NULL, 9.99, NULL, 1),
(23, 35, 114, NULL, 6000, NULL, 1),
(24, 35, 991, NULL, 2000, NULL, 1),
(25, 36, 2, NULL, 179.99, NULL, 1),
(26, 36, 112, NULL, 3500, NULL, 1),
(27, 37, 2, NULL, 179.99, NULL, 1),
(28, 37, 112, NULL, 3500, NULL, 1),
(29, 38, 114, NULL, 6000, NULL, 1),
(30, 38, 115, NULL, 7000, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `OrderUserID` varchar(500) COLLATE latin1_german2_ci NOT NULL,
  `OrderAmount` float NOT NULL,
  `OrderShipName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `OrderShipAddress` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `OrderShipAddress2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `OrderCity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `OrderState` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `OrderZip` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `OrderCountry` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `OrderPhone` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `OrderFax` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `OrderShipping` float DEFAULT NULL,
  `OrderTax` float DEFAULT NULL,
  `OrderEmail` varchar(100) COLLATE latin1_german2_ci DEFAULT NULL,
  `OrderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `OrderShipped` tinyint(1) NOT NULL DEFAULT 0,
  `OrderTrackingNumber` varchar(80) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `OrderUserID`, `OrderAmount`, `OrderShipName`, `OrderShipAddress`, `OrderShipAddress2`, `OrderCity`, `OrderState`, `OrderZip`, `OrderCountry`, `OrderPhone`, `OrderFax`, `OrderShipping`, `OrderTax`, `OrderEmail`, `OrderDate`, `OrderShipped`, `OrderTrackingNumber`) VALUES
(1, '0', 14000, ' ', '', '', '', 'Choose...', '', '', '', '', 0, 0, '', '2021-10-04 17:17:24', 0, NULL),
(2, '0', 14000, ' ', '', '', '', 'Choose...', '', '', '', '', 0, 0, '', '2021-10-04 17:18:02', 0, NULL),
(3, '0', 14010, ' ?????????', '15/43 ???? 2 ?.????????', '', '?????', 'Surat Thani', '84000', '', '0629749522', '', 0, 0, '', '2021-10-04 17:26:05', 0, NULL),
(4, '0', 10500, ' ?????????', '15/43 ???? 2 ?.????????', '', '?????', 'Surat Thani', '84000', '', '0629749522', '', 0, 0, '', '2021-10-04 17:30:37', 0, NULL),
(5, '0', 3500, '??????? ?????????', '15/43 ???? 2 ?.????????', '', '?????', 'Surat Thani', '84000', '', '0629749522', '', 0, 0, '', '2021-10-04 17:32:38', 0, NULL),
(6, '0', 3500, '??????? ?????????', '15/43 ???? 2 ?.????????', '', '?????', 'Surat Thani', '84000', '', '0629749522', '', 0, 0, '', '2021-10-04 17:34:13', 0, NULL),
(7, 'lisa', 10500, 'ภัทราพร Warintarawej', 'มหาวิทยาลัยสงขลานครินทร์  วิทยาเขตสุราษฎร์ธานี คณะวิทยาศาสตร์และเทคโนโลยีอุตสาหกรรม  31 หมู่ 6', 'ต.มะขามเตี้ย', 'อ.เมือง', 'Surat Thani', '84000', '', '0629749522', '', 0, 0, '', '2021-10-04 17:38:54', 0, NULL),
(8, 'lisa', 9.99, 'ภัทราพร วรินทรเวช', 'มหาวิทยาลัยสงขลานครินทร์  วิทยาเขตสุราษฎร์ธานี คณะวิทยาศาสตร์และเทคโนโลยีอุตสาหกรรม  31 หมู่ 6', 'ต.มะขามเตี้ย', 'อ.เมือง', 'Surat Thani', '84000', '', '0629749522', '', 0, 0, '', '2021-10-04 17:41:22', 0, NULL),
(9, 'test@gmail.com', 179.99, 'Pattaraporn Warintarawej', 'มหาวิทยาลัยสงขลานครินทร์  วิทยาเขตสุราษฎร์ธานี คณะวิทยาศาสตร์และเทคโนโลยีอุตสาหกรรม  31 หมู่ 6', '', 'อ.เมือง', 'Surat Thani', '84000', '', '', '', 0, 0, '', '2021-10-04 17:43:21', 0, NULL),
(10, 'lisa', 179.99, 'ภัทราพร วรินทรเวช', '15/43 หมู่ 2 ต.บางใบไม้', '', 'เมือง', 'Surat Thani', '84000', '', '0629749522', '', 0, 0, '', '2021-10-04 18:00:13', 0, NULL),
(11, 'lisa', 3689.98, ' ', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '2022-09-11 15:31:15', 0, NULL),
(12, 'lisa', 3689.98, 'PATTARAPORN WARINTARAWEJ', '15/43', 'Bang', 'Muang', 'Surat Thani', '8400', NULL, '099999999', NULL, NULL, NULL, NULL, '2022-09-11 15:31:49', 0, NULL),
(13, 'lisa', 10690, 'a v', 'v', 'v', 'v', 'Surat Thani', '60000', NULL, '12324', NULL, NULL, NULL, NULL, '2022-09-11 15:38:07', 0, NULL),
(14, 'lisa', 3689.98, ' ', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '2022-09-11 15:38:21', 0, NULL),
(15, 'lisa', 3689.98, ' ', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '2022-09-11 15:38:26', 0, NULL),
(16, 'lisa', 5689.98, 'ภัทราพร วรินทรเวช', '15/43 หมู่ 2 ต.บางใบไม้', '', 'เมือง', 'Surat Thani', '84000', NULL, '0629749522', NULL, NULL, NULL, NULL, '2022-09-11 15:38:47', 0, NULL),
(17, 'lisa', 3689.98, ' ', '', '', '', 'Surat Thani', '', NULL, '', NULL, NULL, NULL, NULL, '2022-09-11 15:40:23', 0, NULL),
(18, 'lisa', 3689.98, 'ภัทราพร วรินทรเวช', '15/43 หมู่ 2 ต.บางใบไม้', '', 'เมือง', 'Surat Thani', '84000', NULL, '0629749522', NULL, NULL, NULL, NULL, '2022-09-11 15:40:39', 0, NULL),
(19, 'lisa', 3689.98, 'ภัทราพร วรินทรเวช', '15/43 หมู่ 2 ต.บางใบไม้', '', 'เมือง', 'Surat Thani', '84000', NULL, '0629749522', NULL, NULL, NULL, NULL, '2022-09-11 15:42:09', 0, NULL),
(20, 'lisa', 3689.98, 'ภัทราพร วรินทรเวช', '15/43 หมู่ 2 ต.บางใบไม้', '', 'เมือง', 'Surat Thani', '84000', NULL, '0629749522', NULL, NULL, NULL, NULL, '2022-09-11 15:42:49', 0, NULL),
(21, 'lisa', 3689.98, 'ภัทราพร วรินทรเวช', '15/43 หมู่ 2 ต.บางใบไม้', '', 'เมือง', 'Surat Thani', '84000', NULL, '0629749522', NULL, NULL, NULL, NULL, '2022-09-11 15:43:53', 0, NULL),
(22, 'lisa', 3689.98, 'ภัทราพร วรินทรเวช', '15/43 หมู่ 2 ต.บางใบไม้', '', 'เมือง', 'Surat Thani', '84000', NULL, '0629749522', NULL, NULL, NULL, NULL, '2022-09-11 15:44:27', 0, NULL),
(23, 'lisa', 3689.98, 'ภัทราพร วรินทรเวช', '15/43 หมู่ 2 ต.บางใบไม้', '', 'เมือง', 'Surat Thani', '84000', NULL, '0629749522', NULL, NULL, NULL, NULL, '2022-09-11 15:45:17', 0, NULL),
(24, 'lisa', 189.98, ' ', '', '', '', 'Surat Thani', '', NULL, '', NULL, NULL, NULL, NULL, '2022-09-11 15:46:31', 0, NULL),
(25, 'lisa', 189.98, ' ', '', '', '', 'Surat Thani', '', NULL, '', NULL, NULL, NULL, NULL, '2022-09-11 15:48:30', 0, NULL),
(26, 'lisa', 189.98, ' ', '', '', '', 'Surat Thani', '', NULL, '', NULL, NULL, NULL, NULL, '2022-09-11 15:49:08', 0, NULL),
(27, 'lisa', 189.98, ' ', '', '', '', 'Surat Thani', '', NULL, '', NULL, NULL, NULL, NULL, '2022-09-11 15:54:38', 0, NULL),
(28, 'lisa', 189.98, ' ', '', '', '', 'Surat Thani', '', NULL, '', NULL, NULL, NULL, NULL, '2022-09-11 15:55:19', 0, NULL),
(29, 'lisa', 189.98, ' ', '', '', '', 'Surat Thani', '', NULL, '', NULL, NULL, NULL, NULL, '2022-09-11 15:57:31', 0, NULL),
(30, 'lisa', 189.98, ' ', '', '', '', 'Surat Thani', '', NULL, '', NULL, NULL, NULL, NULL, '2022-09-11 15:58:31', 0, NULL),
(31, 'lisa', 189.98, ' ', '', '', '', 'Surat Thani', '', NULL, '', NULL, NULL, NULL, NULL, '2022-09-11 16:00:15', 0, NULL),
(32, 'lisa', 7189.98, 'ภัทราพร วรินทรเวช', '15/43 หมู่ 2 ต.บางใบไม้', '', 'เมือง', 'Surat Thani', '84000', NULL, '0629749522', NULL, NULL, NULL, NULL, '2022-09-11 16:01:02', 0, NULL),
(33, 'lisa', 7189.98, 'ภัทราพร วรินทรเวช', '15/43 หมู่ 2 ต.บางใบไม้', '', 'เมือง', 'Surat Thani', '84000', NULL, '0629749522', NULL, NULL, NULL, NULL, '2022-09-11 16:03:06', 0, NULL),
(34, 'lisa', 189.98, 'PATTARAPORN WARINTARAWEJ', '123', '456', 'Muang', 'Surat Thani', '84000', NULL, '0629749522', NULL, NULL, NULL, NULL, '2022-09-18 17:28:47', 0, NULL),
(35, 'lisa', 8009.99, 'ภัทราพร วรินทรเวช', '15/43 หมู่ 2 ต.บางใบไม้', '', 'เมือง', 'Surat Thani', '84000', NULL, '0629749522', NULL, NULL, NULL, NULL, '2022-09-19 01:26:01', 0, NULL),
(36, 'lisa', 3679.99, 'PATTARAPORN WARINTARAWEJ', '15/43 Moo 2', 'Bangbaimai', 'Muang', 'Surat Thani', '84000', NULL, '029749522', NULL, NULL, NULL, NULL, '2022-09-19 09:45:23', 0, NULL),
(37, 'admin', 3679.99, ' ', '', '', '', 'Surat Thani', '', NULL, '', NULL, NULL, NULL, NULL, '2022-10-07 10:52:35', 0, NULL),
(38, 'lisa', 13000, 'PATTARAPORN WARINTARAWEJ', '15/43 Moo 2', 'Bangbaimai', 'Muang', 'Surat Thani', '84000', NULL, '0629749522', NULL, NULL, NULL, NULL, '2022-12-19 09:02:05', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productcategories`
--

CREATE TABLE `productcategories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(50) COLLATE latin1_german2_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `productcategories`
--

INSERT INTO `productcategories` (`CategoryID`, `CategoryName`) VALUES
(1, 'Running'),
(2, 'Walking'),
(3, 'HIking'),
(4, 'Track and Trail'),
(5, 'Short Sleave'),
(6, 'Long Sleave');

-- --------------------------------------------------------

--
-- Table structure for table `productoptions`
--

CREATE TABLE `productoptions` (
  `ProductOptionID` int(10) UNSIGNED NOT NULL,
  `ProductID` int(10) UNSIGNED NOT NULL,
  `OptionID` int(10) UNSIGNED NOT NULL,
  `OptionPriceIncrement` double DEFAULT NULL,
  `OptionGroupID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `productoptions`
--

INSERT INTO `productoptions` (`ProductOptionID`, `ProductID`, `OptionID`, `OptionPriceIncrement`, `OptionGroupID`) VALUES
(1, 1, 1, 0, 1),
(2, 1, 2, 0, 1),
(3, 1, 3, 0, 1),
(4, 1, 4, 0, 2),
(5, 1, 5, 0, 2),
(6, 1, 6, 0, 2),
(7, 1, 7, 2, 2),
(8, 1, 8, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(12) NOT NULL,
  `ProductName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ProductPrice` float DEFAULT NULL,
  `ProductShortDesc` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ProductLongDesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ProductCategoryID` int(11) DEFAULT NULL,
  `ProductUpdateDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `ProductStock` float DEFAULT NULL,
  `picProduct` varchar(100) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `ProductPrice`, `ProductShortDesc`, `ProductLongDesc`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `picProduct`) VALUES
(112, 'Nike Air Force 1 07', 3500, '                                                                                                                                            A rugged track and trail athletic shoe                                                                                                                                                                ', '', 6, '2021-09-21 04:50:22', NULL, 'r1.jpg'),
(113, 'Nike Air Force 1 08', 2000, 'A rugged track and trail athletic shoe', '', 5, '2021-09-21 04:51:13', NULL, 'h2.jpg'),
(114, 'Nike Air Force 1 09', 6000, 'A rugged track and trail athletic shoe', '', 4, '2021-09-21 04:51:13', NULL, 'r4.jpg'),
(115, 'Nike Air Force 1 10', 7000, 'A rugged track and trail athletic shoe', '', 5, '2021-09-21 04:51:13', NULL, 'r7.jpg'),
(116, 'Nike Air Force 1 11', 1900, '                                                                                                                                            A rugged track and trail athletic shoe                                                                                                                ', '', 1, '2021-09-21 04:51:13', NULL, 'r20.jpg'),
(117, 'Nike Air Force 1 12', 2000, '                                                                                                                        A rugged track and trail athletic shoe                                                                                                ', '', 6, '2021-09-21 04:51:13', NULL, 'a1.jpg'),
(118, 'ADIDAS', 800, 'ADIDAS                                ', '', 1, '2021-09-21 04:51:13', NULL, 'r6.jpg'),
(991, 'Test', 2000, 'Test Product', '', NULL, '2021-09-27 09:55:12', NULL, 'w1.jpg'),
(994, 'ADIDAS', 7000, '                    Ultraboot X                ', NULL, 6, '2022-09-19 03:27:25', NULL, 'ad2.jpg'),
(995, 'Keen', 1800, '                    Keen                ', NULL, 6, '2022-09-19 03:28:22', NULL, 'ad3.jpg'),
(996, 'Keen', 7000, 'zzz', NULL, 1, '2022-09-19 03:30:07', NULL, 'ad4.jpg'),
(997, 'Baja', 5000, '                    Baja Turbo                                ', NULL, 6, '2022-09-19 09:47:04', NULL, 'a3.jpg'),
(998, 'ppp', 10, '                    sdlfsdf                ', NULL, 6, '2022-10-07 10:38:55', NULL, 'a2.jpg'),
(999, 'aaa', 20, '                    salads                ', NULL, 6, '2022-10-07 10:39:17', NULL, 'a1.jpg'),
(1000, 'xxx', 120, '                                                                                                                        vvv                                                                                                ', NULL, 6, '2022-10-09 02:38:43', NULL, 'a3.jpg'),
(1001, 'aaa', 2000, '                                                            xxxx                                                ', NULL, 6, '2022-10-09 05:40:15', NULL, 'shoe.jpeg'),
(1002, 'xxx', 20, '333', NULL, 2, '2022-10-09 05:41:24', NULL, 'shoe2GreenteaShoe.jpeg'),
(1003, 'www', 3000, 'sd;fkdsf', NULL, 4, '2022-10-09 05:42:27', NULL, 'ovqomuomltE3rN6o3pZ-o.jpeg'),
(1004, 'cccc345', 23454, 'bbbb                                ', NULL, 6, '2022-11-24 10:55:51', NULL, 'Screen Shot 2566-03-01 at 17.29.43.png'),
(1005, 'KEEN Woman Uneek', 4390, 'UNEEK เป็นรองเท้าที่ถูกออกเพื่อความแตกต่าง โดดเด่น ง่ายต่อการจดจำ รองเท้าที่พอดีกับรูปทรงเท้า เพื่อความสบายที่ยาวนาน และพร้อมไปทุกที่ไม่ว่าจะเป็นไปห้าง, เดินถนน, เล่นชายหาด, ขับรถเที่ยว, เล่นกลางแจ้ง, ใส่ลุยน้ำ หรือกระทั้งปั่นจักรยาน\r\n+ ระบบ SECURITY GUARD เชือกรูดเส้นใยโพลีเอสเตอร์ผสมไนลอนที่แข็งแรง พร้อมตัวล็อคที่จะช่วยให้ปรับให้เข้ากับเท้าได้สะดวกยิ่งขึ้น \r\n+ FLEX EDUCATION พื้นรองเท้า PU ที่มีการสร้าง FLEX ZONE โดยใช้เทคโนโลยี MICROFIBER FOOTBED ที่ช่วยในเรื่องความยืดหยุ่น รองรับการเคลื่อนไหวและแรงกระแทกได้ดี น้ำหนักเบา ทนทาน \r\n+ HEEL APPEAL สายรัดส้นไมโครไฟเบอร์ (MICROFIBER) เสริมความนุ่มให้ความกระชับพอดีเท้า และ \r\n+ TRACTION PACKED พื้นยาง (OUTSOLE) ใช้เทคโนโลยี RAZOR SIPING ช่วยเพิ่มแรงเกาะยึดกับทุกสภาพพื้น', NULL, 2, '2023-03-01 10:29:55', NULL, 'Screen Shot 2566-03-01 at 17.29.43.png'),
(1006, 'Keen', 7000, '12222', NULL, 2, '2023-03-02 09:33:08', NULL, 'Screen Shot 2566-02-22 at 19.25.44.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserEmail` varchar(500) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserPassword` varchar(500) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserFirstName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `UserLastName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserZip` varchar(12) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserRegistrationDate` datetime DEFAULT current_timestamp(),
  `UserPhone` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserAddress` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `pic` varchar(100) COLLATE latin1_german2_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE latin1_german2_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE latin1_german2_ci DEFAULT NULL,
  `media` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `province` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `UserEmail`, `UserPassword`, `UserFirstName`, `UserLastName`, `UserZip`, `UserRegistrationDate`, `UserPhone`, `UserAddress`, `pic`, `phone`, `gender`, `media`, `province`) VALUES
(1, 'test@gmail.com', '123', 'Nadech', 'Kugimiya', NULL, '2020-10-16 09:49:57', '0991236547', NULL, 'nadech.jpg', '', '', '', ''),
(2, 'somchai', '456', 'Somchai', 'Jaidee', NULL, '2021-09-13 17:55:46', '0991236547', NULL, 'somchai.jpg', '', '', '', ''),
(3, 'lisa', '123', 'Lalisa', 'Manpbal', NULL, '2021-09-14 10:59:28', '0991236547', NULL, 'lisa.jpg', '', '', '', ''),
(4, 'admin', '123', NULL, NULL, NULL, '2022-09-19 02:04:09', NULL, NULL, 'somchai.jpg', '', '', '', ''),
(5, 'pat@psu.ac.th', '123', NULL, NULL, NULL, '2024-02-19 12:16:13', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(6, 'patt@psu.ac.th', '123', 'Pattaraporn Warintarawej', NULL, '84000', '2024-02-19 06:44:32', NULL, 'มหาวิทยาลัยสงขลานครินทร์ วิทยาเขตสุราษฎร์ธานี\r\n31 หมู่ 6 ต. มะขามเตี้ย', NULL, '0629749522', 'Female', 'Internet,Friend', 'Surat Thani'),
(7, 'patw@psu.ac.th', '123', 'Pattaraporn Warintarawej', NULL, '84000', '2024-02-19 06:48:09', NULL, 'มหาวิทยาลัยสงขลานครินทร์ วิทยาเขตสุราษฎร์ธานี\r\n31 หมู่ 6 ต. มะขามเตี้ย', NULL, '0629749522', 'Female', 'Internet,Friend', 'Surat Thani');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `optiongroups`
--
ALTER TABLE `optiongroups`
  ADD PRIMARY KEY (`OptionGroupID`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`OptionID`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`DetailID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `productcategories`
--
ALTER TABLE `productcategories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `productoptions`
--
ALTER TABLE `productoptions`
  ADD PRIMARY KEY (`ProductOptionID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `optiongroups`
--
ALTER TABLE `optiongroups`
  MODIFY `OptionGroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `OptionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `DetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `productcategories`
--
ALTER TABLE `productcategories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productoptions`
--
ALTER TABLE `productoptions`
  MODIFY `ProductOptionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
