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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student-archive`
--
ALTER TABLE `student-archive`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student-archive`
--
ALTER TABLE `student-archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
