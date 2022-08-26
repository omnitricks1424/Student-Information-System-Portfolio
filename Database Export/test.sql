-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2022 at 03:53 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `student-archive`
--

CREATE TABLE `student-archive` (
  `id` int(11) NOT NULL,
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
  `archivedDate` date NOT NULL,
  `user` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student-archive`
--

INSERT INTO `student-archive` (`id`, `rowId`, `studentNumber`, `studentCourse`, `studentSurname`, `studentFirstName`, `studentMiddleInitial`, `studentBirthdate`, `studentGender`, `studentHouseNumber`, `studentStreet`, `studentSubdivision`, `studentBarangay`, `studentTown`, `studentDistrict`, `studentProvincialHouseNumber`, `studentProvincialStreet`, `studentProvincialSubdivision`, `studentProvincialBarangay`, `studentProvincialTown`, `studentProvincialDistrict`, `studentContactNumber`, `studentEmail`, `guardianName`, `guardianContactNumber`, `studentRemark`, `studentSponsor`, `studentHighSchoolAddress`, `studentCompanyName`, `studentCompanyAddress`, `studentCompanyPosition`, `studentCompanyContactNumber`, `archivedDate`, `user`) VALUES
(1, 7, '12345-71', 'COURSE', 'SURNAME', 'FIRSTNAME', 'MI', '2022-05-30', 'MALE', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'Guardian@gmail.com', 'GUARDIAN', '1', '•Address not found\r\n•Unable to reach Contact Number', 'SPONSOR', 'HS ADD', 'COMPANY', 'COMPANY ADD', 'POSITION', '1', '2022-05-30', 'admin'),
(2, 5, '12345-5', 'COURSE', 'SURNAME', 'FIRSTNAME', 'MI', '2022-05-30', 'MALE', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'Guardian@gmail.com', 'GUARDIAN', '1', '•Address not found\r\n•Unable to reach Contact Number', 'SPONSOR', 'HS ADD', 'COMPANY', 'COMPANY ADD', 'POSITION', '1', '2022-06-05', 'admin'),
(3, 1, '12345-1', 'COURSE', 'SURNAME', 'FIRSTNAME', 'MI', '2022-05-30', 'MALE', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'Guardian@gmail.com', 'GUARDIAN', '1', '•Address not found\r\n•Unable to reach Contact Number', 'SPONSOR', 'HS ADD', 'COMPANY', 'COMPANY ADD', 'POSITION', '1', '2022-06-11', 'admin'),
(4, 12, '11111111', 'IT', 'SANTOS', 'JOHN ALBER', 'C', '2022-06-06', 'MALE', '#4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'BARANGAY', 'MANILA CITY', 'DSFDFSSDF', 'MANILA CIT', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'BARANGAY', 'MANILA CITY', 'DSFDFSSDF', '09663550391', 'santos1802909@ceu.edu.ph', 'EFGE', '09663550391', '•Address not found\r\n•Unable to reach Contact Number', 'GDG', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', 'GFHG', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', 'F', '', '2022-07-10', 'admin'),
(5, 11, '6545433254645', 'DFGFG', 'FC', 'FHB', 'A', '2022-06-01', 'MALE', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '09663550391', 'santos1802909@ceu.edu.ph', 'DSDFSDFS', '+639127444997', '', '', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', '', '', '', '2022-07-10', 'admin'),
(6, 1, '12345-12', 'COURSE', 'SURNAME', 'FIRSTNAME', 'MI', '2022-05-30', 'MALE', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT2', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT2', '1', 'Guardian@gmail.com', 'GUARDIAN', '1', '•Address not found\r\n•Unable to reach Contact Number', 'SPONSOR', 'HS ADD', 'COMPANY', 'COMPANY ADD', 'POSITION', '1', '2022-07-21', 'admin'),
(7, 2, '12345-2', 'COURSE', 'SURNAME', 'FIRSTNAME', 'MI', '2022-05-30', 'FEMALE', '1', 'STREET', '', 'BARANGAY', 'TOWN2 CITY', 'DISTRICT', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'Guardian@gmail.com', 'GUARDIAN', '1', '•Address not found\r\n•Unable to reach Contact Number', 'SPONSOR', 'HS ADD', 'COMPANY', 'COMPANY ADD', 'POSITION', '1', '2022-07-21', 'admin'),
(8, 2, '12345-2', 'COURSE', 'SURNAME', 'FIRSTNAME', 'MI', '2022-05-30', 'FEMALE', '1', 'STREET', '', 'BARANGAY', 'TOWN2 CITY', 'DISTRICT', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'Guardian@gmail.com', 'GUARDIAN', '1', '•Address not found\r\n•Unable to reach Contact Number', 'SPONSOR', 'HS ADD', 'COMPANY', 'COMPANY ADD', 'POSITION', '1', '2022-08-25', 'admin'),
(9, 9, '234435456453454511', 'DFGFG', 'FC', 'FHB', 'A', '2022-06-01', 'MALE', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '09663550391', 'santos1802909@ceu.edu.ph', 'DSDFSDFS', '+639127444997', '', '', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', '', '', '', '2022-08-25', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `student-information`
--

CREATE TABLE `student-information` (
  `id` int(11) NOT NULL,
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
  `studentCompanyContactNumber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student-information`
--

INSERT INTO `student-information` (`id`, `studentNumber`, `studentCourse`, `studentSurname`, `studentFirstName`, `studentMiddleInitial`, `studentBirthdate`, `studentGender`, `studentHouseNumber`, `studentStreet`, `studentSubdivision`, `studentBarangay`, `studentTown`, `studentDistrict`, `studentProvincialHouseNumber`, `studentProvincialStreet`, `studentProvincialSubdivision`, `studentProvincialBarangay`, `studentProvincialTown`, `studentProvincialDistrict`, `studentContactNumber`, `studentEmail`, `guardianName`, `guardianContactNumber`, `studentRemark`, `studentSponsor`, `studentHighSchoolAddress`, `studentCompanyName`, `studentCompanyAddress`, `studentCompanyPosition`, `studentCompanyContactNumber`) VALUES
(3, '12345-3', 'COURSE', 'SURNAME', 'FIRSTNAME', 'MI', '2022-05-30', 'FEMALE', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'Guardian@gmail.com', 'GUARDIAN', '1', '•Address not found\r\n•Unable to reach Contact Number', 'SPONSOR', 'HS ADD', 'COMPANY', 'COMPANY ADD', 'POSITION', '1'),
(4, '12345-4', 'COURSE', 'SURNAME', 'FIRSTNAME', 'MI', '2022-05-30', 'MALE', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'Guardian@gmail.com', 'GUARDIAN', '1', '•Address not found\r\n•Unable to reach Contact Number', 'SPONSOR', 'HS ADD', 'COMPANY', 'COMPANY ADD', 'POSITION', '1'),
(5, '12345-5', 'COURSE', 'SURNAME', 'FIRSTNAME', 'MI', '2022-05-30', 'FEMALE', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'Guardian@gmail.com', 'GUARDIAN', '1', '•Address not found\r\n•Unable to reach Contact Number', 'SPONSOR', 'HS ADD', 'COMPANY', 'COMPANY ADD', 'POSITION', '1'),
(6, '12345-6', 'COURSE', 'SURNAME', 'FIRSTNAME', 'MI', '2022-05-30', 'MALE', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'Guardian@gmail.com', 'GUARDIAN', '1', '•Address not found\r\n•Unable to reach Contact Number', 'SPONSOR', 'HS ADD', 'COMPANY', 'COMPANY ADD', 'POSITION', '1'),
(7, '12345-71', 'COURSE', 'SURNAME', 'FIRSTNAME', 'MI', '2022-05-30', 'MALE', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'STREET', '', 'BARANGAY', 'TOWN CITY', 'DISTRICT', '1', 'Guardian@gmail.com', 'GUARDIAN', '1', '•Address not found\r\n•Unable to reach Contact Number', 'SPONSOR', 'HS ADD', 'COMPANY', 'COMPANY ADD', 'POSITION2', '1'),
(8, '2344354564534545', 'DFGFG', 'FC', 'FHB', 'A', '2022-06-01', 'MALE', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '09663550391', 'santos1802909@ceu.edu.ph', 'DSDFSDFS', '+639127444997', '', '', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', '', '', ''),
(9, '234435456453454511', 'DFGFG', 'FC', 'FHB', 'A', '2022-06-01', 'MALE', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '09663550391', 'santos1802909@ceu.edu.ph', 'DSDFSDFS', '+639127444997', '', '', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', '', '', ''),
(10, '65454332', 'DFGFG', 'FC', 'FHB', 'A', '2022-06-01', 'FEMALE', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '4553', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', 'DG', 'MANILA CITY', 'DSFDFSSDF', '09663550391', 'santos1802909@ceu.edu.ph', 'DSDFSDFS', '+639127444997', '', '', '9 MENDIOLA STREET, SAN MIGUEL, MANILA CITY', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `token` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `token`, `password`) VALUES
(4, 'admin', 'santos1802909@ceu.edu.ph', '648b5a1eb21bdccf75b310477a0294cbce6bff2c93424a2b524cd85bab8b6905a4cc3ab9053756b8f366f0852051b0f8e71a', '$2y$10$Yhbe9PdF3Wx4lpwbVOLBpexG1a6mPvnDuiHXfiOyB7dukI41ku9Zm'),
(5, 'reader', 'johnalber17@gmail.com', '7a9b439cebcda64e65e61ad1a84a8820abcf97630a51e13496b8e9278740ba3b1afb4c3d308bf608a1827134b82b167595de', '$2y$10$bIdzkg3DKpmh.qKWPFeNuuNvpnt5qdv.Xkjags9qjonDq2GrtmqQ2'),
(6, 'a', 'rhobielyns@gmail.com', '2cb21152ea1af0d190ab59e3aacab7285835cabcae391ca6020bc94d8072fe29bc890eb79770c9de6c3784301289d66976db', '$2y$10$AnhZmKJRjaUUVkZFI5Ira.eH8VMxty4cauGPOGvKGI.5BeyCPoXFm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student-activity-log`
--
ALTER TABLE `student-activity-log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student-archive`
--
ALTER TABLE `student-archive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student-information`
--
ALTER TABLE `student-information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student-activity-log`
--
ALTER TABLE `student-activity-log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student-archive`
--
ALTER TABLE `student-archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student-information`
--
ALTER TABLE `student-information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
