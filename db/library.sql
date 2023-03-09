-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 07:41 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `gender` varchar(500) NOT NULL,
  `dob` text NOT NULL,
  `contact` text NOT NULL,
  `address` varchar(500) NOT NULL,
  `image` varchar(2000) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `fname`, `gender`, `dob`, `contact`, `address`, `image`, `created_on`) VALUES
(1, 'admin', 'ndbhalerao91@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Nikhil', 'Male', '1988-05-29', '9423979339', 'Nashik', '20141025_004121_918_Developer.png', '2018-04-30'),
(17, 'admin', 'admin@gmail.com', 'a17fed27eaa842282862ff7c1b9c8395a26ac320', 'Mikes', 'Male', '2021-03-12', '0904245228', 'fdfdfsdfsdfdf', 'Koala.jpg', '2021-03-21'),
(20, 'user', 'oyin@gmail.com', '13027ddbfc7c80a3a2560416d216b82e0397943cd351f33f8ced947a489e3dd5', 'Oyin', 'Female', '2022-07-03', '0905554443', 'yaba', 'color wheel2.PNG', '2022-08-01'),
(21, 'Mike', 'Michaelokoro1@gmail.com', '02ed20e0f2c8ae22212f84008a245a3775ce2648bd7e606f7d1ebfe1a78ebd18', 'Mike', 'Male', '2022-08-10', '0908887776', 'yaba', 'george.jpeg', '2022-08-11');

-- --------------------------------------------------------

--
-- Table structure for table `issued`
--

CREATE TABLE `issued` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `regdate` varchar(20) NOT NULL,
  `returndate` varchar(20) NOT NULL,
  `doe` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fine` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issued`
--

INSERT INTO `issued` (`id`, `student_id`, `isbn`, `regdate`, `returndate`, `doe`, `fine`) VALUES
(3, 'F/HD/20/3210057', '23264t23t632', '2022-12-09', '2022-12-30', '2022-12-07 05:55:12', '');

-- --------------------------------------------------------

--
-- Table structure for table `lecture_material`
--

CREATE TABLE `lecture_material` (
  `id` int(11) NOT NULL,
  `lect_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `file` varchar(255) NOT NULL,
  `doe` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `class_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `file_type` varchar(20) NOT NULL,
  `cover` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecture_material`
--

INSERT INTO `lecture_material` (`id`, `lect_id`, `title`, `file`, `doe`, `class_id`, `course_id`, `file_type`, `cover`) VALUES
(6, 10, 'Laravel', 'Laravel 8 tutorial -  Aggregate methods _ sum,avg,min,max etc_HIGH.mp4', '2022-12-11 11:22:25', 5, 2, '.mp4', ''),
(9, 10, 'Introduction To Programming', 'PHPNotesForProfessionals.pdf', '2022-12-17 01:41:44', 5, 2, '.pdf', 'avatar-1.jpg'),
(10, 10, 'Database Design With Mysql', '5939d64655b4d2ae443830d73abc35b6.jpg', '2022-12-19 07:39:25', 2, 7, '.jpg', '5939d64655b4d2ae443830d73abc35b6.jpg'),
(11, 10, 'Introduction to Wordpress', '90083a56014186e88ffca10286172e64.jpg', '2022-12-19 07:40:27', 3, 1, '.jpg', '90083a56014186e88ffca10286172e64.jpg'),
(12, 14, 'Programming In Assembly', '36af5de9012bf8c804e499dc3c3b33a5.jpg', '2022-12-19 16:18:52', 2, 8, '.jpg', '36af5de9012bf8c804e499dc3c3b33a5.jpg'),
(13, 14, 'Financial Independence', '52411b2bd2a6b2e0df3eb10943a5b640.jpg', '2022-12-19 16:29:15', 6, 9, '.jpg', '52411b2bd2a6b2e0df3eb10943a5b640.jpg'),
(14, 14, 'introduction to Physics', '', '2022-12-19 16:30:26', 6, 10, '', 'f05cd198ac9335245e1fdffa793207a7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `manage_website`
--

CREATE TABLE `manage_website` (
  `id` int(11) NOT NULL,
  `title` varchar(600) NOT NULL,
  `short_title` varchar(600) NOT NULL,
  `logo` text NOT NULL,
  `footer` text NOT NULL,
  `currency_code` varchar(600) NOT NULL,
  `currency_symbol` varchar(600) NOT NULL,
  `login_logo` text NOT NULL,
  `invoice_logo` text NOT NULL,
  `background_login_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage_website`
--

INSERT INTO `manage_website` (`id`, `title`, `short_title`, `logo`, `footer`, `currency_code`, `currency_symbol`, `login_logo`, `invoice_logo`, `background_login_image`) VALUES
(1, 'Online Library Management system', 'YabaTech', 'Icon3.png', 'Yabatech Elearning Platform', 'Naira', 'N', '', '', '<br />\r\n<b>Notice</b>:  Undefined variable: background_login_image in <b>C:xampphtdocslibradminmanage_website.php</b> on line <b>192</b><br />\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `bookname` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `isbn` varchar(25) DEFAULT NULL,
  `isIssued` int(1) DEFAULT NULL,
  `doe` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `bookimage` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `bookname`, `category`, `author`, `isbn`, `isIssued`, `doe`, `bookimage`) VALUES
(19, 'Male', 2, 2, '23264t23t632', 0, '2022-12-07 05:11:59', 'avatar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `class` int(11) NOT NULL,
  `matric` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`, `class`, `matric`) VALUES
(16, NULL, 'mike', 'test@gmail.com', '7435745647', '18126e7bd3f84b3f3e4df094def5b7de', 1, '2022-12-15 00:41:50', NULL, 5, 'uryuryewyrwueruiwiyew'),
(17, NULL, 'mike MM', 'mike@gmail.com', '0905556755', '18126e7bd3f84b3f3e4df094def5b7de', 1, '2022-12-19 05:51:40', '2022-12-19 06:52:49', 5, 'F/HD/20/32100056');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_author`
--

CREATE TABLE `tbl_author` (
  `id` int(11) NOT NULL,
  `authorname` varchar(150) NOT NULL,
  `doe` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_author`
--

INSERT INTO `tbl_author` (`id`, `authorname`, `doe`) VALUES
(2, 'Mark Twaini', '2022-12-07 03:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(150) NOT NULL,
  `status` varchar(20) NOT NULL,
  `doe` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `categoryname`, `status`, `doe`) VALUES
(2, 'Romancer', 'inactive', '2022-12-07 03:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class`
--

CREATE TABLE `tbl_class` (
  `id` int(30) NOT NULL,
  `classname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_class`
--

INSERT INTO `tbl_class` (`id`, `classname`) VALUES
(2, 'HND1'),
(3, 'ND1'),
(4, 'ND2'),
(5, 'HND2'),
(6, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

CREATE TABLE `tbl_courses` (
  `id` int(30) NOT NULL,
  `class_id` int(60) NOT NULL,
  `coursename` varchar(30) NOT NULL,
  `coursecode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_courses`
--

INSERT INTO `tbl_courses` (`id`, `class_id`, `coursename`, `coursecode`) VALUES
(1, 3, 'Introduction To Computer', 'COM101'),
(2, 5, 'Graphics and Animation', 'GRA418'),
(3, 5, 'Multimedia', 'COM410'),
(4, 5, 'Seminar on current Topics in C', 'COM411'),
(5, 5, 'Project Management', 'COM413'),
(6, 2, 'Operating System II', 'COM321'),
(7, 2, 'Database Design', 'COM322'),
(8, 2, 'Assembly Language', 'COM323'),
(9, 6, 'Finacial Education', 'FIN101'),
(10, 6, 'Self Education', 'SIF123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lecturers`
--

CREATE TABLE `tbl_lecturers` (
  `id` int(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `contact` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `stat` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_lecturers`
--

INSERT INTO `tbl_lecturers` (`id`, `fname`, `email`, `password`, `gender`, `dob`, `contact`, `address`, `image`, `stat`) VALUES
(10, 'Silver Daniels', 'mike@gmail.com', 'a17fed27eaa842282862ff7c1b9c8395a26ac320', 'Male', '2022-11-10', '09045783336', 'yaba', 'blank_avatar.png', '1'),
(14, 'gogo', 'gogo@gmail.com', '2ab8e336dbdedd7eeca7b1513e11ec5a37956d4c', 'Male', '2022-12-07', '5678897655', 'yaba', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rec`
--

CREATE TABLE `tbl_rec` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `lect_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `doe` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rec`
--

INSERT INTO `tbl_rec` (`id`, `class_id`, `course_id`, `lect_id`, `book_id`, `doe`) VALUES
(2, 5, 2, 10, 19, '2022-12-11 11:05:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register_lect`
--

CREATE TABLE `tbl_register_lect` (
  `id` int(11) NOT NULL,
  `lect_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `doe` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_register_lect`
--

INSERT INTO `tbl_register_lect` (`id`, `lect_id`, `course_id`, `class_id`, `doe`) VALUES
(12, 10, 6, 2, '2022-12-19 07:36:00'),
(13, 10, 5, 5, '2022-12-19 07:36:14'),
(14, 10, 1, 3, '2022-12-19 07:36:24'),
(15, 10, 7, 2, '2022-12-19 07:38:41'),
(16, 14, 8, 2, '2022-12-19 16:17:17'),
(17, 14, 4, 5, '2022-12-19 16:17:41'),
(18, 14, 9, 6, '2022-12-19 16:28:34'),
(19, 14, 10, 6, '2022-12-19 16:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `classname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `contact` int(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `matric` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`id`, `fname`, `classname`, `email`, `password`, `gender`, `dob`, `contact`, `address`, `image`, `matric`) VALUES
(30, 'Ada Okoro', '5', 'ada@gmail.com', 'e4ea294c062c525643df036a35ca579b905fa400', 'Female', '2022-11-03', 908887776, 'yaba', '20141025_004121_918_Developer.png', 'F/HD/20/3210045'),
(31, 'Michael Nnachi', '2', 'mi@gmail.com', 'a17fed27eaa842282862ff7c1b9c8395a26ac320', 'Male', '2022-12-08', 2147483647, 'yaba', 'qr.PNG', 'F/HD/20/321005');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issued`
--
ALTER TABLE `issued`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecture_material`
--
ALTER TABLE `lecture_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_website`
--
ALTER TABLE `manage_website`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- Indexes for table `tbl_author`
--
ALTER TABLE `tbl_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_class`
--
ALTER TABLE `tbl_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_lecturers`
--
ALTER TABLE `tbl_lecturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rec`
--
ALTER TABLE `tbl_rec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_register_lect`
--
ALTER TABLE `tbl_register_lect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `issued`
--
ALTER TABLE `issued`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lecture_material`
--
ALTER TABLE `lecture_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `manage_website`
--
ALTER TABLE `manage_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_author`
--
ALTER TABLE `tbl_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_class`
--
ALTER TABLE `tbl_class`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_lecturers`
--
ALTER TABLE `tbl_lecturers`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_rec`
--
ALTER TABLE `tbl_rec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_register_lect`
--
ALTER TABLE `tbl_register_lect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
