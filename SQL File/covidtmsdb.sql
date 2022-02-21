-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2022 at 03:08 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covidtmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) NOT NULL,
  `MobileNumber` int(10) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(2, 'Admin', 'admin', 1234567890, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-04-19 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatients`
--

CREATE TABLE `tblpatients` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `GovtIssuedId` varchar(150) DEFAULT NULL,
  `GovtIssuedIdNo` varchar(150) DEFAULT NULL,
  `FullAddress` varchar(255) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `RegistrationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatients`
--

INSERT INTO `tblpatients` (`id`, `FullName`, `MobileNumber`, `DateOfBirth`, `GovtIssuedId`, `GovtIssuedIdNo`, `FullAddress`, `State`, `RegistrationDate`) VALUES
(7, 'Pial', 9876543210, '1997-09-16', '12345678', '12345678', '345/1Khilgaon', 'Dhaka', '2021-11-21 15:35:11'),
(8, 'Sadat Hossain', 1921111111, '2015-01-01', '123456789', '', '123/1 Khilgaon', 'Dhaka', '2021-12-30 08:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblphlebotomist`
--

CREATE TABLE `tblphlebotomist` (
  `id` int(11) NOT NULL,
  `EmpID` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(12) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblphlebotomist`
--

INSERT INTO `tblphlebotomist` (`id`, `EmpID`, `FullName`, `MobileNumber`, `RegDate`) VALUES
(4, '105202365', 'Rahul', 8529631470, '2021-05-03 04:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblreporttracking`
--

CREATE TABLE `tblreporttracking` (
  `id` int(11) NOT NULL,
  `OrderNumber` bigint(40) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL,
  `Status` varchar(120) DEFAULT NULL,
  `PostingTime` timestamp NULL DEFAULT current_timestamp(),
  `RemarkBy` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreporttracking`
--

INSERT INTO `tblreporttracking` (`id`, `OrderNumber`, `Remark`, `Status`, `PostingTime`, `RemarkBy`) VALUES
(1, 450040675, 'The Phlebotomist is on the way for collection.', 'On the Way for Collection', '2021-05-06 04:36:22', 2),
(6, 450040675, 'Sample collection.', 'Sample Collected', '2021-05-06 19:15:25', 2),
(7, 450040675, 'Sample sent to the lab.', 'Sent to Lab', '2021-05-06 19:15:48', 2),
(9, 450040675, 'Report uploaded.', 'Delivered', '2021-05-06 20:01:48', 2),
(10, 617325549, 'The phlebotomist is on the way to sample collection.', 'On the Way for Collection', '2021-05-07 04:44:38', 2),
(11, 617325549, 'Sample collected successfully.', 'Sample Collected', '2021-05-07 04:46:46', 2),
(12, 617325549, 'Sample sent to the lab.', 'Sent to Lab', '2021-05-07 04:51:25', 2),
(13, 617325549, 'Report uploaded.', 'Delivered', '2021-05-07 04:57:20', 2),
(14, 250482553, 'On the way for sample collection.', 'On the Way for Collection', '2021-05-08 09:31:42', 2),
(15, 250482553, 'Sample collected successfully', 'Sample Collected', '2021-05-08 09:32:06', 2),
(16, 250482553, 'Sample sent to lab', 'Sent to Lab', '2021-05-08 09:32:26', 2),
(17, 250482553, 'Report Uploaded', 'Delivered', '2021-05-08 09:32:51', 2),
(18, 436916472, 'Collect Sample', 'On the Way for Collection', '2021-11-21 15:38:52', 2),
(19, 436916472, 'Sample Collected', 'Sample Collected', '2021-11-21 15:39:15', 2),
(20, 436916472, 'sent to lab', 'Sent to Lab', '2021-11-21 15:39:32', 2),
(21, 436916472, 'Neagtive', 'Delivered', '2021-11-21 15:40:23', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbltestrecord`
--

CREATE TABLE `tbltestrecord` (
  `id` int(11) NOT NULL,
  `OrderNumber` bigint(14) DEFAULT NULL,
  `PatientMobileNumber` bigint(14) DEFAULT NULL,
  `TestType` varchar(100) DEFAULT NULL,
  `TestTimeSlot` varchar(120) DEFAULT NULL,
  `ReportStatus` varchar(100) DEFAULT NULL,
  `FinalReport` varchar(150) DEFAULT NULL,
  `ReportUploadTime` varchar(200) DEFAULT NULL,
  `RegistrationDate` timestamp NULL DEFAULT current_timestamp(),
  `AssignedtoEmpId` varchar(150) DEFAULT NULL,
  `AssigntoName` varchar(180) DEFAULT NULL,
  `AssignedTime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatients`
--
ALTER TABLE `tblpatients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblphlebotomist`
--
ALTER TABLE `tblphlebotomist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblreporttracking`
--
ALTER TABLE `tblreporttracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestrecord`
--
ALTER TABLE `tbltestrecord`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatients`
--
ALTER TABLE `tblpatients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblphlebotomist`
--
ALTER TABLE `tblphlebotomist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblreporttracking`
--
ALTER TABLE `tblreporttracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltestrecord`
--
ALTER TABLE `tbltestrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
