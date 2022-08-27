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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student-information`
--
ALTER TABLE `student-information`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student-information`
--
ALTER TABLE `student-information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
