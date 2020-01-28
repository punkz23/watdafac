-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2020 at 01:48 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `disaster_que`
--

-- --------------------------------------------------------

--
-- Table structure for table `facility_tbl`
--

CREATE TABLE `facility_tbl` (
  `id` int(11) NOT NULL,
  `facility_name` varchar(250) NOT NULL,
  `descriptions` text NOT NULL,
  `fam_cum` int(11) NOT NULL,
  `fam_now` int(11) NOT NULL,
  `pers_cum` int(11) NOT NULL,
  `pers_now` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_enc` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `facility_tbl`
--

INSERT INTO `facility_tbl` (`id`, `facility_name`, `descriptions`, `fam_cum`, `fam_now`, `pers_cum`, `pers_now`, `user_id`, `date_enc`) VALUES
(1, 'Alagao - Malindig Elementary School', '', 95, 95, 299, 299, 3, '2020-01-22 15:40:00'),
(2, 'As-Is Elementary School', '', 204, 204, 682, 682, 3, '2020-01-22 17:38:00'),
(3, 'As-Is Brgy. Hall', '', 55, 55, 170, 170, 3, '2020-01-22 17:38:00'),
(4, 'As-is Chapel', '', 73, 73, 205, 205, 3, '2020-01-22 17:38:00'),
(5, 'Balayong Elementary School', '', 90, 90, 285, 285, 3, '2020-01-22 17:38:00'),
(6, 'Bauan East Central School', '', 208, 208, 744, 744, 3, '2020-01-22 17:38:00'),
(7, 'Bauan West Central School', '', 236, 236, 776, 776, 3, '2020-01-22 17:38:00'),
(8, 'Bauan Technical High School', '', 790, 790, 3042, 3042, 3, '2020-01-22 17:38:00'),
(9, 'Bolo Elementary School', '', 110, 110, 359, 359, 3, '2020-01-22 17:38:00'),
(10, 'Cupang Elementary School', '', 72, 72, 248, 248, 3, '2020-01-22 17:38:00'),
(11, 'Cupang UCCP Chapel', '', 16, 16, 52, 52, 3, '2020-01-22 17:38:00'),
(12, 'Durungao Elementary School', '', 37, 37, 126, 126, 3, '2020-01-22 17:38:00'),
(13, 'Gulibay Brgy. Hall', '', 3, 3, 13, 13, 3, '2020-01-22 17:38:00'),
(14, 'Inicbulan Elem. School', '', 62, 62, 249, 249, 3, '2020-01-22 17:38:00'),
(15, 'Inicbulan National High School', '', 35, 35, 94, 94, 3, '2020-01-22 17:38:00'),
(16, 'Magalang-galang Chapel', '', 7, 7, 27, 27, 3, '2020-01-22 17:38:00'),
(17, 'Malindig Brgy. Hall', '', 4, 4, 13, 13, 3, '2020-01-22 17:38:00'),
(18, 'Manghinao Proper Elementary School', '', 143, 143, 544, 544, 3, '2020-01-22 17:38:00'),
(19, 'Manghinao Proper Casa Aurelio Soledad', '', 88, 88, 269, 269, 3, '2020-01-22 17:38:00'),
(20, 'Manghinao I Elementary School', '', 90, 90, 310, 310, 3, '2020-01-22 17:38:00'),
(21, 'Manghinao I (Sitio Casapao)', '', 123, 123, 370, 370, 3, '2020-01-22 17:38:00'),
(22, 'New Danglayan - Sto. Domingo Elementary School', '', 110, 110, 384, 384, 3, '2020-01-22 17:38:00'),
(23, 'Pitugo Elementary School', '', 38, 38, 133, 133, 3, '2020-01-22 17:38:00'),
(24, 'Poblacion I Brgy. Hall', '', 4, 4, 16, 16, 3, '2020-01-22 17:38:00'),
(25, 'San Andres Proper Elementary School', '', 99, 99, 299, 299, 3, '2020-01-22 17:38:00'),
(26, 'San Diego Brgy. Hall', '', 7, 7, 22, 22, 3, '2020-01-22 17:38:00'),
(27, 'San Miguel Brgy. Hall', '', 12, 12, 44, 44, 3, '2020-01-22 17:38:00'),
(28, 'San Roque Elementary School', '', 83, 83, 325, 325, 3, '2020-01-22 17:38:00'),
(29, 'San Teodoro Elementary School', '', 16, 16, 66, 66, 3, '2020-01-22 17:38:00'),
(30, 'San Vicente-Manalupang National High School', '', 27, 27, 78, 78, 3, '2020-01-22 17:38:00'),
(31, 'Sinala Elementary School', '', 69, 69, 212, 212, 3, '2020-01-22 17:38:00'),
(32, 'Sta. Maria Brgy. Hall', '', 50, 50, 227, 227, 3, '2020-01-22 17:38:00'),
(33, 'Sta. Maria - San Pedro Elementary School', '', 94, 94, 372, 372, 3, '2020-01-22 17:38:00'),
(34, 'Sto. Domingo Youth Hall', '', 6, 6, 16, 16, 3, '2020-01-22 17:38:00'),
(35, '228 Beach Resort', '', 119, 119, 326, 326, 3, '2020-01-22 17:38:00'),
(36, 'Rosanna Beach Resort', '', 71, 71, 205, 205, 3, '2020-01-22 17:38:00'),
(37, 'Bauan Adventist Elem School', '', 36, 36, 103, 103, 3, '2020-01-22 17:38:00'),
(38, 'Christian School of Bauan', '', 6, 6, 22, 22, 3, '2020-01-22 17:38:00'),
(39, 'Holy Queen Learning Academy (Baguilawa)', '', 41, 41, 146, 146, 3, '2020-01-22 17:38:00'),
(40, 'Our Lady of Lourdes School', '', 30, 30, 118, 118, 3, '2020-01-22 17:38:00'),
(41, 'Shillonite Kids Montessori', '', 38, 38, 148, 148, 3, '2020-01-22 17:38:00'),
(42, 'Sta. Teresa College', '', 188, 188, 672, 672, 3, '2020-01-22 17:38:00'),
(43, 'Bauan Cockpit', '', 0, 0, 0, 0, 3, '2020-01-22 17:38:00'),
(44, 'Cupang Chapel', '', 0, 0, 0, 0, 3, '2020-01-22 17:38:00'),
(45, 'Poblacion II Brgy. Hall', '', 0, 0, 0, 0, 3, '2020-01-22 17:38:00'),
(46, 'Sto. Domingo Brgy. Hall', '', 0, 0, 0, 0, 3, '2020-01-22 17:38:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `facility_tbl`
--
ALTER TABLE `facility_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `facility_tbl`
--
ALTER TABLE `facility_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `facility_tbl`
--
ALTER TABLE `facility_tbl`
  ADD CONSTRAINT `facility_tbl_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
