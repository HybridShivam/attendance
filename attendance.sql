-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2020 at 08:26 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_user_name` varchar(100) NOT NULL,
  `admin_password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_user_name`, `admin_password`) VALUES
(1, 'admin', '$2y$10$D74Zy1qMkATvmGRoVeq7hed4ajWof2aqDGnEaD3yPHABA.p.e7f4u');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `attendance_status` enum('Present','Absent') NOT NULL,
  `attendance_date` date NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attendance_id`, `student_id`, `attendance_status`, `attendance_date`, `teacher_id`) VALUES
(1, 7, 'Present', '2019-05-01', 3),
(2, 8, 'Present', '2019-05-01', 3),
(3, 9, 'Absent', '2019-05-01', 3),
(4, 10, 'Present', '2019-05-01', 3),
(5, 11, 'Present', '2019-05-01', 3),
(6, 7, 'Absent', '2019-05-02', 3),
(7, 8, 'Present', '2019-05-02', 3),
(8, 9, 'Present', '2019-05-02', 3),
(9, 10, 'Present', '2019-05-02', 3),
(10, 11, 'Absent', '2019-05-02', 3),
(11, 1, 'Present', '2019-05-01', 2),
(12, 3, 'Present', '2019-05-01', 2),
(13, 4, 'Present', '2019-05-01', 2),
(14, 5, 'Present', '2019-05-01', 2),
(15, 6, 'Present', '2019-05-01', 2),
(16, 1, 'Present', '2019-05-02', 2),
(17, 3, 'Absent', '2019-05-02', 2),
(18, 4, 'Present', '2019-05-02', 2),
(19, 5, 'Absent', '2019-05-02', 2),
(20, 6, 'Present', '2019-05-02', 2),
(21, 1, 'Present', '2019-05-03', 2),
(22, 3, 'Present', '2019-05-03', 2),
(23, 4, 'Absent', '2019-05-03', 2),
(24, 5, 'Present', '2019-05-03', 2),
(25, 6, 'Present', '2019-05-03', 2),
(26, 1, 'Absent', '2019-05-04', 2),
(27, 3, 'Present', '2019-05-04', 2),
(28, 4, 'Present', '2019-05-04', 2),
(29, 5, 'Present', '2019-05-04', 2),
(30, 6, 'Present', '2019-05-04', 2),
(31, 1, 'Present', '2019-05-06', 2),
(32, 3, 'Present', '2019-05-06', 2),
(33, 4, 'Present', '2019-05-06', 2),
(34, 5, 'Present', '2019-05-06', 2),
(35, 6, 'Present', '2019-05-06', 2),
(36, 1, 'Present', '2019-05-07', 2),
(37, 3, 'Present', '2019-05-07', 2),
(38, 4, 'Present', '2019-05-07', 2),
(39, 5, 'Present', '2019-05-07', 2),
(40, 6, 'Absent', '2019-05-07', 2),
(41, 1, 'Present', '2019-05-08', 2),
(42, 3, 'Present', '2019-05-08', 2),
(43, 4, 'Present', '2019-05-08', 2),
(44, 5, 'Absent', '2019-05-08', 2),
(45, 6, 'Present', '2019-05-08', 2),
(46, 1, 'Present', '2019-05-09', 2),
(47, 3, 'Present', '2019-05-09', 2),
(48, 4, 'Present', '2019-05-09', 2),
(49, 5, 'Present', '2019-05-09', 2),
(50, 6, 'Present', '2019-05-09', 2),
(51, 1, 'Present', '2019-05-10', 2),
(52, 3, 'Absent', '2019-05-10', 2),
(53, 4, 'Absent', '2019-05-10', 2),
(54, 5, 'Present', '2019-05-10', 2),
(55, 6, 'Absent', '2019-05-10', 2),
(56, 1, 'Present', '2019-05-11', 2),
(57, 3, 'Present', '2019-05-11', 2),
(58, 4, 'Absent', '2019-05-11', 2),
(59, 5, 'Present', '2019-05-11', 2),
(60, 6, 'Absent', '2019-05-11', 2),
(61, 7, 'Present', '2019-05-03', 3),
(62, 8, 'Present', '2019-05-03', 3),
(63, 9, 'Present', '2019-05-03', 3),
(64, 10, 'Present', '2019-05-03', 3),
(65, 11, 'Present', '2019-05-03', 3),
(66, 7, 'Absent', '2019-05-04', 3),
(67, 8, 'Present', '2019-05-04', 3),
(68, 9, 'Absent', '2019-05-04', 3),
(69, 10, 'Present', '2019-05-04', 3),
(70, 11, 'Absent', '2019-05-04', 3),
(71, 7, 'Present', '2019-05-06', 3),
(72, 8, 'Present', '2019-05-06', 3),
(73, 9, 'Absent', '2019-05-06', 3),
(74, 10, 'Present', '2019-05-06', 3),
(75, 11, 'Present', '2019-05-06', 3),
(76, 7, 'Present', '2019-05-07', 3),
(77, 8, 'Present', '2019-05-07', 3),
(78, 9, 'Present', '2019-05-07', 3),
(79, 10, 'Present', '2019-05-07', 3),
(80, 11, 'Present', '2019-05-07', 3),
(81, 7, 'Present', '2019-05-08', 3),
(82, 8, 'Present', '2019-05-08', 3),
(83, 9, 'Present', '2019-05-08', 3),
(84, 10, 'Absent', '2019-05-08', 3),
(85, 11, 'Absent', '2019-05-08', 3),
(86, 7, 'Present', '2019-05-09', 3),
(87, 8, 'Present', '2019-05-09', 3),
(88, 9, 'Absent', '2019-05-09', 3),
(89, 10, 'Present', '2019-05-09', 3),
(90, 11, 'Present', '2019-05-09', 3),
(91, 7, 'Absent', '2019-05-10', 3),
(92, 8, 'Present', '2019-05-10', 3),
(93, 9, 'Present', '2019-05-10', 3),
(94, 10, 'Present', '2019-05-10', 3),
(95, 11, 'Absent', '2019-05-10', 3),
(96, 7, 'Present', '2019-05-11', 3),
(97, 8, 'Present', '2019-05-11', 3),
(98, 9, 'Present', '2019-05-11', 3),
(99, 10, 'Absent', '2019-05-11', 3),
(100, 11, 'Present', '2019-05-11', 3),
(101, 12, 'Present', '2019-05-01', 4),
(102, 13, 'Present', '2019-05-01', 4),
(103, 14, 'Present', '2019-05-01', 4),
(104, 15, 'Present', '2019-05-01', 4),
(105, 16, 'Present', '2019-05-01', 4),
(106, 12, 'Present', '2019-05-02', 4),
(107, 13, 'Absent', '2019-05-02', 4),
(108, 14, 'Present', '2019-05-02', 4),
(109, 15, 'Absent', '2019-05-02', 4),
(110, 16, 'Present', '2019-05-02', 4),
(111, 12, 'Present', '2019-05-03', 4),
(112, 13, 'Present', '2019-05-03', 4),
(113, 14, 'Present', '2019-05-03', 4),
(114, 15, 'Absent', '2019-05-03', 4),
(115, 16, 'Present', '2019-05-03', 4),
(116, 12, 'Present', '2019-05-04', 4),
(117, 13, 'Present', '2019-05-04', 4),
(118, 14, 'Present', '2019-05-04', 4),
(119, 15, 'Present', '2019-05-04', 4),
(120, 16, 'Present', '2019-05-04', 4),
(121, 12, 'Present', '2019-05-06', 4),
(122, 13, 'Absent', '2019-05-06', 4),
(123, 14, 'Absent', '2019-05-06', 4),
(124, 15, 'Present', '2019-05-06', 4),
(125, 16, 'Present', '2019-05-06', 4),
(126, 12, 'Absent', '2019-05-07', 4),
(127, 13, 'Present', '2019-05-07', 4),
(128, 14, 'Present', '2019-05-07', 4),
(129, 15, 'Present', '2019-05-07', 4),
(130, 16, 'Absent', '2019-05-07', 4),
(131, 12, 'Present', '2019-05-08', 4),
(132, 13, 'Absent', '2019-05-08', 4),
(133, 14, 'Present', '2019-05-08', 4),
(134, 15, 'Present', '2019-05-08', 4),
(135, 16, 'Present', '2019-05-08', 4),
(136, 12, 'Present', '2019-05-09', 4),
(137, 13, 'Present', '2019-05-09', 4),
(138, 14, 'Present', '2019-05-09', 4),
(139, 15, 'Present', '2019-05-09', 4),
(140, 16, 'Absent', '2019-05-09', 4),
(141, 12, 'Present', '2019-05-10', 4),
(142, 13, 'Absent', '2019-05-10', 4),
(143, 14, 'Present', '2019-05-10', 4),
(144, 15, 'Present', '2019-05-10', 4),
(145, 16, 'Absent', '2019-05-10', 4),
(146, 12, 'Present', '2019-05-11', 4),
(147, 13, 'Present', '2019-05-11', 4),
(148, 14, 'Present', '2019-05-11', 4),
(149, 15, 'Present', '2019-05-11', 4),
(150, 16, 'Present', '2019-05-11', 4),
(151, 17, 'Present', '2019-05-01', 5),
(152, 18, 'Present', '2019-05-01', 5),
(153, 19, 'Present', '2019-05-01', 5),
(154, 20, 'Absent', '2019-05-01', 5),
(155, 21, 'Absent', '2019-05-01', 5),
(156, 17, 'Present', '2019-05-02', 5),
(157, 18, 'Present', '2019-05-02', 5),
(158, 19, 'Present', '2019-05-02', 5),
(159, 20, 'Present', '2019-05-02', 5),
(160, 21, 'Present', '2019-05-02', 5),
(161, 17, 'Present', '2019-05-03', 5),
(162, 18, 'Present', '2019-05-03', 5),
(163, 19, 'Present', '2019-05-03', 5),
(164, 20, 'Present', '2019-05-03', 5),
(165, 21, 'Absent', '2019-05-03', 5),
(166, 17, 'Present', '2019-05-04', 5),
(167, 18, 'Present', '2019-05-04', 5),
(168, 19, 'Absent', '2019-05-04', 5),
(169, 20, 'Present', '2019-05-04', 5),
(170, 21, 'Present', '2019-05-04', 5),
(171, 17, 'Present', '2019-05-06', 5),
(172, 18, 'Present', '2019-05-06', 5),
(173, 19, 'Present', '2019-05-06', 5),
(174, 20, 'Present', '2019-05-06', 5),
(175, 21, 'Present', '2019-05-06', 5),
(176, 17, 'Present', '2019-05-07', 5),
(177, 18, 'Present', '2019-05-07', 5),
(178, 19, 'Present', '2019-05-07', 5),
(179, 20, 'Present', '2019-05-07', 5),
(180, 21, 'Absent', '2019-05-07', 5),
(181, 17, 'Present', '2019-05-08', 5),
(182, 18, 'Present', '2019-05-08', 5),
(183, 19, 'Present', '2019-05-08', 5),
(184, 20, 'Absent', '2019-05-08', 5),
(185, 21, 'Present', '2019-05-08', 5),
(186, 17, 'Present', '2019-05-09', 5),
(187, 18, 'Present', '2019-05-09', 5),
(188, 19, 'Absent', '2019-05-09', 5),
(189, 20, 'Absent', '2019-05-09', 5),
(190, 21, 'Present', '2019-05-09', 5),
(191, 17, 'Absent', '2019-05-10', 5),
(192, 18, 'Present', '2019-05-10', 5),
(193, 19, 'Present', '2019-05-10', 5),
(194, 20, 'Present', '2019-05-10', 5),
(195, 21, 'Present', '2019-05-10', 5),
(196, 17, 'Present', '2019-05-11', 5),
(197, 18, 'Present', '2019-05-11', 5),
(198, 19, 'Present', '2019-05-11', 5),
(199, 20, 'Absent', '2019-05-11', 5),
(200, 21, 'Present', '2019-05-11', 5),
(201, 7, 'Present', '2019-05-13', 3),
(202, 8, 'Present', '2019-05-13', 3),
(203, 9, 'Present', '2019-05-13', 3),
(204, 10, 'Absent', '2019-05-13', 3),
(205, 11, 'Present', '2019-05-13', 3),
(206, 7, 'Present', '2019-05-14', 3),
(207, 8, 'Present', '2019-05-14', 3),
(208, 9, 'Absent', '2019-05-14', 3),
(209, 10, 'Present', '2019-05-14', 3),
(210, 11, 'Present', '2019-05-14', 3),
(211, 12, 'Present', '2020-12-09', 4),
(212, 13, 'Absent', '2020-12-09', 4),
(213, 14, 'Present', '2020-12-09', 4),
(214, 15, 'Absent', '2020-12-09', 4),
(215, 16, 'Present', '2020-12-09', 4),
(216, 22, 'Present', '2020-12-09', 6),
(217, 23, 'Present', '2020-12-09', 6),
(218, 24, 'Absent', '2020-12-09', 6),
(219, 25, 'Absent', '2020-12-09', 6),
(220, 26, 'Absent', '2020-12-09', 6),
(221, 22, 'Absent', '2020-12-11', 6),
(222, 23, 'Present', '2020-12-11', 6),
(223, 24, 'Absent', '2020-12-11', 6),
(224, 25, 'Absent', '2020-12-11', 6),
(225, 26, 'Absent', '2020-12-11', 6),
(226, 22, 'Absent', '2020-12-12', 6),
(227, 23, 'Absent', '2020-12-12', 6),
(228, 24, 'Present', '2020-12-12', 6),
(229, 25, 'Present', '2020-12-12', 6),
(230, 26, 'Present', '2020-12-12', 6),
(231, 22, 'Present', '2020-12-13', 6),
(232, 23, 'Present', '2020-12-13', 6),
(233, 24, 'Present', '2020-12-13', 6),
(234, 25, 'Present', '2020-12-13', 6),
(235, 26, 'Present', '2020-12-13', 6),
(236, 22, 'Absent', '2020-12-16', 6),
(237, 23, 'Present', '2020-12-16', 6),
(238, 24, 'Present', '2020-12-16', 6),
(239, 25, 'Present', '2020-12-16', 6),
(240, 26, 'Present', '2020-12-16', 6),
(241, 22, 'Present', '2020-12-08', 6),
(242, 23, 'Present', '2020-12-08', 6),
(243, 24, 'Present', '2020-12-08', 6),
(244, 25, 'Present', '2020-12-08', 6),
(245, 26, 'Present', '2020-12-08', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grade`
--

CREATE TABLE `tbl_grade` (
  `grade_id` int(11) NOT NULL,
  `grade_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_grade`
--

INSERT INTO `tbl_grade` (`grade_id`, `grade_name`) VALUES
(1, '11 - A'),
(2, '11 - B'),
(3, '12 - A'),
(4, '12 - B'),
(5, '11 - C');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(150) NOT NULL,
  `student_roll_number` int(11) NOT NULL,
  `student_dob` date NOT NULL,
  `student_grade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `student_roll_number`, `student_dob`, `student_grade_id`) VALUES
(1, 'Rohit Sharma', 1, '2003-03-04', 1),
(3, 'Vaibhav Rawat', 2, '2003-04-19', 1),
(4, 'Priyansh Gupta', 3, '2004-01-15', 1),
(5, 'Abhijith Kumar', 4, '2003-12-14', 1),
(6, 'Priya Sharma', 5, '2003-07-12', 1),
(7, 'Kritika Dubey', 1, '2003-12-19', 2),
(8, 'Pankaj Tripathi', 2, '2002-12-19', 2),
(9, 'Kaushal Kumar', 3, '2003-04-01', 2),
(10, 'Harendra Sharma', 4, '2003-08-15', 2),
(11, 'Mohit Agrawal', 5, '2003-06-18', 2),
(12, 'Nisha Jose', 1, '2002-05-01', 3),
(13, 'Vishal Kashyap', 2, '2002-04-12', 3),
(14, 'Vikal Singh', 3, '2002-10-12', 3),
(15, 'Ankita Chaudhary', 4, '2002-02-27', 3),
(16, 'Ritambhara Rout', 5, '2002-06-12', 3),
(17, 'Jagdeep Chaturvedi', 1, '2002-08-17', 4),
(18, 'Mithlesh Singh', 2, '2002-09-18', 4),
(19, 'Harish Chand', 3, '2002-07-15', 4),
(20, 'Bhanu Saini', 4, '2002-01-14', 4),
(21, 'Mukul Pal', 5, '2002-12-05', 4),
(22, 'Shivam Rai', 1, '2003-04-11', 5),
(23, 'Shah Rukh Khan', 2, '2003-12-31', 5),
(24, 'Tanishk Singh', 3, '2003-07-18', 5),
(25, 'Mansi Gupta', 4, '2003-10-17', 5),
(26, 'Ritik Taneja', 5, '2003-12-13', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(150) NOT NULL,
  `teacher_address` text NOT NULL,
  `teacher_emailid` varchar(100) NOT NULL,
  `teacher_password` varchar(100) NOT NULL,
  `teacher_qualification` varchar(100) NOT NULL,
  `teacher_doj` date NOT NULL,
  `teacher_image` varchar(100) NOT NULL,
  `teacher_grade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_id`, `teacher_name`, `teacher_address`, `teacher_emailid`, `teacher_password`, `teacher_qualification`, `teacher_doj`, `teacher_image`, `teacher_grade_id`) VALUES
(2, 'Ravi Kumar', '318 , Mangaldas Mkt, nd Lane, Shamsheikh Street, Chira Bazar', 'ravi.kumar@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'B.Tech', '2019-05-01', '5fcf688732393.jpg', 1),
(3, 'Prateek Sharma', 'D, Kanjur Ind Estate, Quary Rd, Bhandup (west)', 'prateek.sharma@gmail.com', '$2y$10$jmgJN1xvteg6XqBnHvT7UerviGNJOSnF8KFzBHnCky0FJWa74Nvmu', 'M.Tech', '2017-12-31', '5fcf687cb203f.jpg', 2),
(4, 'Kapil Singh', '21 st Flr, , Dhanji Street, Mandvi', 'kapil.singh@gmail.com', '$2y$10$Vb9t4CvkJwm41KXgPehuLOFcM7o5Qdm1RFxSBxzh9cvBcc21AUAiW', 'B.Tech', '2019-05-01', '5fcf68afc9394.jpg', 3),
(5, 'Anjali Yadav', '137 /, Rathi House, Old Hanuman Lane, Kalbadevi', 'anjali.yadav@gmail.com', '$2y$10$SVxX4/7lf3pDs1vrpuJexOG7Ue1e1jqIntGmXip3JzxkB753uxBiO', 'M.Sc', '2019-05-01', '5fcf686adff40.jpg', 4),
(6, 'Arjun Yadav', '136 Jhalawar, Patanwala Estate Lbs Road', 'arjun.yadav@gmail.com', '$2y$10$u7q1WZYF7/kH0tY2CO/PV.Mz1vZMCJV7M.lM1hrridufSMciXLjcS', 'M.Sc', '2017-06-13', '5fd24b972427e.png', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
