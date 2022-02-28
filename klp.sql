-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2022 at 05:18 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `di_id` int(11) NOT NULL,
  `district` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`di_id`, `district`) VALUES
(1, 'trivandrum'),
(2, 'kollam'),
(3, 'pathanamthitta'),
(4, 'alappuzha'),
(5, 'kottayam'),
(6, 'idukki'),
(7, 'ernakulam'),
(8, 'thrissur'),
(9, 'palakkad'),
(10, 'malappuram'),
(11, 'calicut'),
(12, 'wayanad'),
(13, 'kannur'),
(14, 'kasargod'),
(15, 'aluva');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

CREATE TABLE `tbl_event` (
  `e_id` int(11) NOT NULL,
  `event` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_event`
--

INSERT INTO `tbl_event` (`e_id`, `event`) VALUES
(1, 'Mappilapattu - Male (5 mins)'),
(2, 'Mappilapattu - Female (5 mins)'),
(3, 'Light Music - Men (5 mins)'),
(4, 'Light Music - Women (10 mins)'),
(5, 'Classical Music - Men(10 mins)'),
(6, 'Classical Music - Women (10 mins)'),
(7, 'Kadhaprasangam (15 mins)'),
(8, 'Mimicry (5 mins)'),
(9, 'Keralanadanam (15 mins)'),
(10, 'Thullal (10 mins)'),
(11, 'Kadhakali(Male) (15 mins)'),
(12, 'Kadhakali(Female) (15 mins)'),
(13, 'Folk Dance - Women (10 mins)'),
(14, 'Bharatanatyam (15 mins)'),
(15, 'Classical Dance (Kuchipudi, Odissi) (15 mins)'),
(16, 'Mohiniyattam (15 mins)'),
(17, 'Mohiniyattam (15 mins)'),
(18, 'Recitation (5 mins)'),
(19, 'String Western - Violin, Guitar (10 mins)'),
(20, 'Wind Western - Harmonium (10 mins)'),
(21, 'Triple Drum  (10 mins)'),
(22, 'Jazz (10 mins)'),
(23, 'Percusion Type - Eastern - Chenda, Edakka (10 mins');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `g_id` int(11) NOT NULL,
  `list` varchar(50) NOT NULL,
  `district` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_group`
--

INSERT INTO `tbl_group` (`g_id`, `list`, `district`) VALUES
(5, 'Skit - English/ Hindi (10 mins)', 'kannur');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `login_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `utype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`login_id`, `email`, `password`, `utype_id`) VALUES
(1, 'admin@gmail.com', 'admin', 1),
(13, 'tebin@gmail.com', '123456', 3),
(14, 'rajitha@gmail.com', '123456', 4),
(17, 'hashim@gmail.com', '123456', 2),
(18, 'abijith@gmail.com', '123456', 3),
(19, 'shiju@gmail.com', '123456', 2),
(20, 'amal@gmail.com', '123456', 4),
(21, 'kiran@gmail.com', '123456', 2),
(22, 'akshay@gmail.com', '123456', 3),
(23, 'athul@gmail.com', '123456', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reg`
--

CREATE TABLE `tbl_reg` (
  `eid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `a` varchar(50) NOT NULL,
  `b` varchar(50) NOT NULL,
  `c` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_reg`
--

INSERT INTO `tbl_reg` (`eid`, `name`, `a`, `b`, `c`) VALUES
(2, 'shankar', 'Mohiniyattam (15 mins)', 'Recitation (5 mins)', ''),
(4, 'Tebin', 'Mohiniyattam (15 mins)', 'Bharatanatyam (15 mins)', 'Folk Dance - Men (10 mins)'),
(5, 'akshay', 'Light Music - Women (10 mins)', 'Recitation (5 mins)', 'Classical Music - Men(10 mins)'),
(6, 'athul', 'Kadhakali(Male) (15 mins)', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rep`
--

CREATE TABLE `tbl_rep` (
  `r_id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `d_id` int(11) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rep`
--

INSERT INTO `tbl_rep` (`r_id`, `fname`, `lname`, `d_id`, `phone`, `login_id`) VALUES
(6, 'hashim', 'k', 13, 9645826541, 17),
(7, 'shiju', 'joseph', 8, 9048100108, 19),
(8, 'kiran', 'babu', 7, 9562321456, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

CREATE TABLE `tbl_result` (
  `rid` int(11) NOT NULL,
  `list` varchar(50) NOT NULL,
  `prize1` varchar(20) NOT NULL,
  `grade1` varchar(20) NOT NULL,
  `district1` varchar(20) NOT NULL,
  `prize2` varchar(20) NOT NULL,
  `grade2` varchar(20) NOT NULL,
  `district2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_result`
--

INSERT INTO `tbl_result` (`rid`, `list`, `prize1`, `grade1`, `district1`, `prize2`, `grade2`, `district2`) VALUES
(0, 'Keralanadanam (15 mins)', 'aravind', 'A', 'Malappuram', 'rahul', 'B', 'Alappuzha'),
(0, 'Mohiniyattam (15 mins)', 'ashwathy', 'A', 'Kannur', 'asha', 'B', 'Kottayam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sch`
--

CREATE TABLE `tbl_sch` (
  `pid` int(11) NOT NULL,
  `list` varchar(50) NOT NULL,
  `stage` varchar(50) NOT NULL,
  `date1` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sch`
--

INSERT INTO `tbl_sch` (`pid`, `list`, `stage`, `date1`, `time`) VALUES
(4, 'Light Music - Men (5 mins)', 'stage three', '2022-02-26', '22:00:00'),
(5, 'Mohiniyattam (15 mins)', 'stage two', '2022-02-26', '21:00:00'),
(6, 'poorakkali (10 mins)', 'stage three', '2022-02-28', '12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`id`, `fname`, `lname`, `phone`, `login_id`) VALUES
(3, 'Rajitha', 'sivan', 9645231456, 14),
(4, 'amal', 'v', 9048562145, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `district` varchar(20) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`uid`, `fname`, `lname`, `dob`, `gender`, `district`, `phone`, `login_id`) VALUES
(6, 'Tebin', 'joseph', '1998-03-12', 'male', '13', 9496146589, 13),
(7, 'abijith', 'km', '2000-04-05', 'male', '8', 9645897897, 18),
(8, 'akshay', 'k', '1999-08-05', 'male', '12', 9496259998, 22),
(9, 'athul', 'c', '2002-08-12', 'male', '13', 9645896541, 23);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `utype_id` int(11) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`utype_id`, `user_type`) VALUES
(1, 'admin'),
(2, 'rep'),
(3, 'users'),
(4, 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`di_id`);

--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `utype_id` (`utype_id`);

--
-- Indexes for table `tbl_reg`
--
ALTER TABLE `tbl_reg`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `tbl_rep`
--
ALTER TABLE `tbl_rep`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `tbl_sch`
--
ALTER TABLE `tbl_sch`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`utype_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `di_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_reg`
--
ALTER TABLE `tbl_reg`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_rep`
--
ALTER TABLE `tbl_rep`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_sch`
--
ALTER TABLE `tbl_sch`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD CONSTRAINT `tbl_login_ibfk_1` FOREIGN KEY (`utype_id`) REFERENCES `usertype` (`utype_id`);

--
-- Constraints for table `tbl_rep`
--
ALTER TABLE `tbl_rep`
  ADD CONSTRAINT `tbl_rep_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `tbl_district` (`di_id`);

--
-- Constraints for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD CONSTRAINT `tbl_staff_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `tbl_login` (`login_id`);

--
-- Constraints for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD CONSTRAINT `tb_users_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `tbl_login` (`login_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
