-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2020 at 05:46 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otssdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Test', 'admin', 8979555559, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-01-31 06:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `ID` int(10) NOT NULL,
  `TiffinID` int(10) DEFAULT NULL,
  `UserID` int(5) NOT NULL,
  `OrderNumber` int(10) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Quantity` int(10) DEFAULT NULL,
  `FromDate` varchar(200) DEFAULT NULL,
  `ToDate` varchar(200) DEFAULT NULL,
  `Time` varchar(50) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `OrderDate` timestamp NULL DEFAULT current_timestamp(),
  `TotalCost` varchar(200) NOT NULL,
  `Remark` varchar(200) NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`ID`, `TiffinID`, `UserID`, `OrderNumber`, `FullName`, `Email`, `MobileNumber`, `Quantity`, `FromDate`, `ToDate`, `Time`, `Address`, `OrderDate`, `TotalCost`, `Remark`, `Status`, `UpdationDate`) VALUES
(4, 2, 2, 750169391, 'Test', 'test@gmail.com', 6544644654, 2, '2020-03-15', '2020-03-31', '23:12', 'H1267 New Delhi', '2020-03-14 15:33:31', '2400', 'Confirmed', 'Confirmed', '2020-03-14 15:35:01'),
(5, 1, 3, 741712845, 'Anuj Kumar', 'phpgurukulofficial@gmail.com', 1234567890, 1, '2020-03-15', '2020-03-25', '08:00', 'New Delhi India', '2020-03-14 15:51:20', '500', 'Order Confirmed', 'Confirmed', '2020-03-14 15:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<span style=\"color: rgb(0, 0, 0); font-family: \" pt=\"\" sans\",=\"\" sans-serif;\"=\"\">It’s an online-cum-offline tiffin service company that offers high quality healthy and delicious meal plans for homes and offices. With a seamless blend of advanced nutrition, food science and food service, it offers wellness meals and calorie-defined meals that are in accordance with the customer’s preferences.</span><div><br></div><div>ytest<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-family: \" pt=\"\" sans\",=\"\" sans-serif;\"=\"\"><br></div>', NULL, NULL, '2020-03-14 15:55:45'),
(2, 'contactus', 'Contact Us', 'D-204, Hole Town South West,Delhi-110096,India', 'info@gmail.com', 8529631232, '2020-03-14 15:56:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbltiffin`
--

CREATE TABLE `tbltiffin` (
  `ID` int(10) NOT NULL,
  `Type` varchar(120) DEFAULT NULL,
  `Title` varchar(200) NOT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `Image` varchar(120) DEFAULT NULL,
  `PostDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltiffin`
--

INSERT INTO `tbltiffin` (`ID`, `Type`, `Title`, `Description`, `Cost`, `Image`, `PostDate`) VALUES
(1, 'Veg', 'Small Veg Tiffin', 'It\'s contains\r\n1. One Sabji\r\n2. Six Poori', 50, 'bfa6998622fb031e5771edf658186a3e1580901204.jpg', '2020-01-31 08:13:15'),
(2, 'Veg', 'Medium Veg Tiffin', 'Its Contains\r\n1. Four Roti\r\n2. One Dal\r\n3. Two Sabji\r\n4. Pickle', 75, '7fdc1a630c238af0815181f9faa190f51580901298.jpg', '2020-01-31 08:17:55'),
(3, 'Veg', 'Large Veg Tiffin', 'It\'s Contains\r\n1. Four Roti\r\n2. Rice\r\n3. One Sabji\r\n4.Raita\r\n5. Salad\r\n6.Pickle', 120, '19c10f4e66067da4b5eb1dac874e46721580901461.jpg', '2020-01-31 08:22:10'),
(4, 'Non Veg', 'Small Non Veg Tiffin', 'It\'s Contains\r\n1. Four Roti\r\n2. Two Missi Roti\r\n3. One Dal\r\n4. Two Sabji\r\n5. Salad\r\n6. Pickles\r\n7. Raita\r\n8. Sweets', 200, '7fdc1a630c238af0815181f9faa190f51580901580.jpg', '2020-01-31 08:27:55'),
(5, 'Non Veg', 'Medium Non Veg Tiffin', 'It\'s Contains\r\n1. Four Roti\r\n2. Rice\r\n3. One Sabji\r\n4.Raita\r\n5. Salad\r\n6.Pickle', 250, 'efc1a80c391be252d7d777a437f868701580470642.jpg', '2020-01-31 11:37:22'),
(6, 'Non Veg', 'Large Non Veg Tiffin', 'It\'s Contains\r\n1. Four Roti\r\n2. Rice\r\n3. One Sabji\r\n4.Raita\r\n5. Salad\r\n6.Pickle\r\n', 350, '74375080377499ab76dad37484ee7f151580881251.jpg', '2020-01-31 11:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Akash', 8985858585, 'akash@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-02-05 13:14:28'),
(2, 'Test', 6544644654, 'test@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-02-05 13:33:12'),
(3, 'Anuj Kumar', 1234567890, 'phpgurukulofficial@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2020-03-14 15:49:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltiffin`
--
ALTER TABLE `tbltiffin`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbltiffin`
--
ALTER TABLE `tbltiffin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
