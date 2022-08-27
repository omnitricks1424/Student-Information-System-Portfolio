-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2022 at 03:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `student-activity-log`
--

CREATE TABLE `student-activity-log` (
  `id` int(11) NOT NULL,
  `activityType` enum('UPDATE','DELETE') NOT NULL,
  `rowId` int(11) NOT NULL,
  `studentNumber` varchar(50) NOT NULL,
  `studentCourse` varchar(100) NOT NULL,
  `studentSurname` varchar(50) NOT NULL,
  `studentFirstName` varchar(50) NOT NULL,
  `studentMiddleInitial` varchar(5) NOT NULL,
  `studentBirthdate` date NOT NULL,
  `studentGender` enum('MALE','FEMALE') NOT NULL,
  `studentHouseNumber` varchar(10) NOT NULL,
  `studentStreet` varchar(100) NOT NULL,
  `studentSubdivision` varchar(100) NOT NULL,
  `studentBarangay` varchar(100) NOT NULL,
  `studentTown` varchar(100) NOT NULL,
  `studentDistrict` varchar(100) NOT NULL,
  `studentProvincialHouseNumber` varchar(10) NOT NULL,
  `studentProvincialStreet` varchar(100) NOT NULL,
  `studentProvincialSubdivision` varchar(100) NOT NULL,
  `studentProvincialBarangay` varchar(100) NOT NULL,
  `studentProvincialTown` varchar(100) NOT NULL,
  `studentProvincialDistrict` varchar(100) NOT NULL,
  `studentContactNumber` varchar(15) NOT NULL,
  `studentEmail` varchar(50) NOT NULL,
  `guardianName` varchar(100) NOT NULL,
  `guardianContactNumber` varchar(15) NOT NULL,
  `studentRemark` varchar(255) NOT NULL,
  `studentSponsor` varchar(50) NOT NULL,
  `studentHighSchoolAddress` varchar(255) NOT NULL,
  `studentCompanyName` varchar(50) NOT NULL,
  `studentCompanyAddress` varchar(255) NOT NULL,
  `studentCompanyPosition` varchar(50) NOT NULL,
  `studentCompanyContactNumber` varchar(15) NOT NULL,
  `studentNumberModified` varchar(50) NOT NULL,
  `studentCourseModified` varchar(100) NOT NULL,
  `studentSurnameModified` varchar(50) NOT NULL,
  `studentFirstNameModified` varchar(50) NOT NULL,
  `studentMiddleInitialModified` varchar(5) NOT NULL,
  `studentBirthdateModified` date NOT NULL,
  `studentGenderModified` enum('MALE','FEMALE') NOT NULL,
  `studentHouseNumberModified` varchar(10) NOT NULL,
  `studentStreetModified` varchar(100) NOT NULL,
  `studentSubdivisionModified` varchar(100) NOT NULL,
  `studentBarangayModified` varchar(100) NOT NULL,
  `studentTownModified` varchar(100) NOT NULL,
  `studentDistrictModified` varchar(100) NOT NULL,
  `studentProvincialHouseNumberModified` varchar(10) NOT NULL,
  `studentProvincialStreetModified` varchar(100) NOT NULL,
  `studentProvincialSubdivisionModified` varchar(100) NOT NULL,
  `studentProvincialBarangayModified` varchar(100) NOT NULL,
  `studentProvincialTownModified` varchar(100) NOT NULL,
  `studentProvincialDistrictModified` varchar(100) NOT NULL,
  `studentContactNumberModified` varchar(15) NOT NULL,
  `studentEmailModified` varchar(50) NOT NULL,
  `guardianNameModified` varchar(100) NOT NULL,
  `guardianContactNumberModified` varchar(15) NOT NULL,
  `studentRemarkModified` varchar(255) NOT NULL,
  `studentSponsorModified` varchar(50) NOT NULL,
  `studentHighSchoolAddressModified` varchar(255) NOT NULL,
  `studentCompanyNameModified` varchar(50) NOT NULL,
  `studentCompanyAddressModified` varchar(255) NOT NULL,
  `studentCompanyPositionModified` varchar(50) NOT NULL,
  `studentCompanyContactNumberModified` varchar(15) NOT NULL,
  `actionDate` date NOT NULL,
  `user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student-activity-log`
--

INSERT INTO `student-activity-log` (`id`, `activityType`, `rowId`, `studentNumber`, `studentCourse`, `studentSurname`, `studentFirstName`, `studentMiddleInitial`, `studentBirthdate`, `studentGender`, `studentHouseNumber`, `studentStreet`, `studentSubdivision`, `studentBarangay`, `studentTown`, `studentDistrict`, `studentProvincialHouseNumber`, `studentProvincialStreet`, `studentProvincialSubdivision`, `studentProvincialBarangay`, `studentProvincialTown`, `studentProvincialDistrict`, `studentContactNumber`, `studentEmail`, `guardianName`, `guardianContactNumber`, `studentRemark`, `studentSponsor`, `studentHighSchoolAddress`, `studentCompanyName`, `studentCompanyAddress`, `studentCompanyPosition`, `studentCompanyContactNumber`, `studentNumberModified`, `studentCourseModified`, `studentSurnameModified`, `studentFirstNameModified`, `studentMiddleInitialModified`, `studentBirthdateModified`, `studentGenderModified`, `studentHouseNumberModified`, `studentStreetModified`, `studentSubdivisionModified`, `studentBarangayModified`, `studentTownModified`, `studentDistrictModified`, `studentProvincialHouseNumberModified`, `studentProvincialStreetModified`, `studentProvincialSubdivisionModified`, `studentProvincialBarangayModified`, `studentProvincialTownModified`, `studentProvincialDistrictModified`, `studentContactNumberModified`, `studentEmailModified`, `guardianNameModified`, `guardianContactNumberModified`, `studentRemarkModified`, `studentSponsorModified`, `studentHighSchoolAddressModified`, `studentCompanyNameModified`, `studentCompanyAddressModified`, `studentCompanyPositionModified`, `studentCompanyContactNumberModified`, `actionDate`, `user`) VALUES
(1, 'DELETE', 11, '6545433254645', '', '', '', '', '0000-00-00', 'MALE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 'MALE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-07-10', 'reader'),
(2, 'UPDATE', 5, '12345-5', 'COURSE', 'SURNAME', 'FIRSTNAME', 'MI', '2022-05-30', 'MALE', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'Guardian@gmail.com', 'GUARDIAN', '1', '•Address not found\r\n•Unable to reach Contact Number', 'SPONSOR', 'HS ADD', 'COMPANY', 'COMPANY ADD', 'POSITION', '1', '12345-5', 'COURSE', 'SURNAME', 'FIRSTNAME', 'MI', '2022-05-30', 'FEMALE', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'Guardian@gmail.com', 'GUARDIAN', '1', '•Address not found\r\n•Unable to reach Contact Number', 'SPONSOR', 'HS ADD', 'COMPANY', 'COMPANY ADD', 'POSITION', '1', '2022-07-19', ''),
(3, 'UPDATE', 5, '12345-5', 'COURSE', 'SURNAME', 'FIRSTNAME', 'MI', '2022-05-30', 'MALE', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'Guardian@gmail.com', 'GUARDIAN', '1', '•Address not found\r\n•Unable to reach Contact Number', 'SPONSOR', 'HS ADD', 'COMPANY', 'COMPANY ADD', 'POSITION', '1', '12345-5', 'COURSE', 'SURNAME', 'FIRSTNAME', 'MI', '2022-05-30', 'FEMALE', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'Guardian@gmail.com', 'GUARDIAN', '1', '•Address not found\r\n•Unable to reach Contact Number', 'SPONSOR', 'HS ADD', 'COMPANY', 'COMPANY ADD', 'POSITION', '1', '2022-07-19', ''),
(4, 'UPDATE', 9, '234435456453454511', 'DFGFG', 'FC', 'FHB', 'A', '2022-06-01', 'MALE', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '09663550391', 'santos1802909@ceu.edu.ph', 'DSDFSDFS', '+639127444997', '', '', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', '', '', '', '234435456453454511', 'DFGFG', 'FC', 'FHB', 'A', '2022-06-01', 'FEMALE', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '09663550391', 'santos1802909@ceu.edu.ph', 'DSDFSDFS', '+639127444997', '', '', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', '', '', '', '2022-07-21', ''),
(5, 'UPDATE', 9, '234435456453454511', 'DFGFG', 'FC', 'FHB', 'A', '2022-06-01', 'FEMALE', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '09663550391', 'santos1802909@ceu.edu.ph', 'DSDFSDFS', '+639127444997', '', '', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', '', '', '', '234435456453454511', 'DFGFG', 'FC', 'FHB', 'A', '2022-06-01', 'MALE', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '09663550391', 'santos1802909@ceu.edu.ph', 'DSDFSDFS', '+639127444997', '', '', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', '', '', '', '2022-07-21', ''),
(6, 'DELETE', 1, '12345-12', '', '', '', '', '0000-00-00', 'MALE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 'MALE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-07-21', 'reader'),
(7, 'UPDATE', 2, '12345-2', 'COURSE', 'SURNAME', 'FIRSTNAME', 'MI', '2022-05-30', 'FEMALE', '1', 'STREET', '', 'BARANGAY', 'TOWN2 CITY', 'DISTRICT', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'Guardian@gmail.com', 'GUARDIAN', '1', '•Address not found\r\n•Unable to reach Contact Number', 'SPONSOR', 'HS ADD', 'COMPANY', 'COMPANY ADD', 'POSITION', '1', '12345-2', 'COURSE', 'SURNAME', 'FIRSTNAME', 'MI', '2022-05-30', 'FEMALE', '1', 'STREET', '', 'BARANGAY', 'TOWN2 CITY', 'DISTRICT', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'Guardian@gmail.com', 'GUARDIAN', '1', '•Address not found\r\n•Unable to reach Contact Number', 'SPONSOR', 'HS ADD', 'COMPANY', 'COMPANY ADD', 'POSITION', '1', '2022-07-21', ''),
(8, 'DELETE', 2, '12345-2', '', '', '', '', '0000-00-00', 'MALE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 'MALE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-07-21', 'reader'),
(9, 'UPDATE', 10, '65454332', 'DFGFG', 'FC', 'FHB', 'A', '2022-06-01', 'MALE', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '09663550391', 'santos1802909@ceu.edu.ph', 'DSDFSDFS', '+639127444997', '', '', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', '', '', '', '65454332', 'DFGFG', 'FC', 'FHB', 'A', '2022-06-01', 'FEMALE', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '09663550391', 'santos1802909@ceu.edu.ph', 'DSDFSDFS', '+639127444997', '', '', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', '', '', '', '2022-07-21', 'reader'),
(10, 'DELETE', 2, '12345-2', '', '', '', '', '0000-00-00', 'MALE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 'MALE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-08-25', 'a'),
(11, 'DELETE', 9, '234435456453454511', '', '', '', '', '0000-00-00', 'MALE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', 'MALE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-08-25', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student-activity-log`
--
ALTER TABLE `student-activity-log`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student-activity-log`
--
ALTER TABLE `student-activity-log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
