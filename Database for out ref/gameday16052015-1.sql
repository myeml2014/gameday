-- phpMyAdmin SQL Dump
-- version 4.2.13
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 16, 2015 at 01:23 PM
-- Server version: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gameday`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
`id` int(11) NOT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '1' COMMENT '1 for active 0 for deactive'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `lname`, `email`, `fname`, `username`, `password`, `status`) VALUES
(2, '', '', 'Jignesh', 'jignesh', 'jignesh', 1),
(4, NULL, NULL, NULL, 'check', 'check', 1),
(6, NULL, NULL, NULL, 'new asdnin', 'new asnbn', 0),
(7, NULL, NULL, NULL, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0),
(8, 'adminlanem', 'admin@email.com', 'adminfname', 'adminusername', '0f442c10199a5c363ea45236ad342ca3', 1),
(9, 'Sdfsd', 'sdfsdf', 'Dfsdf', 'sdfsd', 'd58e3582afa99040e27b92b13c8f2280', 1),
(10, 'Admin', 'admin@ad,in', 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(11, 'Admin', 'admin@admin.com', 'Fname', 'admin1', '21232f297a57a5a743894a0e4a801fc3', 0),
(12, 'Panchal', 'admin@admin.com', 'Jignesh', 'admin2', 'c84258e9c39059a89ab77d846ddab909', 1),
(13, 'Dsf', 'dsf', 'Defdsf', 'dsfds', 'd4b2758da0205c1e0aa9512cd188002a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bottom_flesh`
--

CREATE TABLE IF NOT EXISTS `tbl_bottom_flesh` (
`id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` mediumtext,
  `detail` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_circular`
--

CREATE TABLE IF NOT EXISTS `tbl_circular` (
`id` int(11) NOT NULL,
  `circular_date` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file_path` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_counter`
--

CREATE TABLE IF NOT EXISTS `tbl_counter` (
`id` int(11) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_main_menu`
--

CREATE TABLE IF NOT EXISTS `tbl_main_menu` (
`id` int(11) NOT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `menu_link` mediumtext,
  `is_static` int(1) DEFAULT '0' COMMENT '1 for static, 0 for dynamic',
  `status` int(1) DEFAULT '1' COMMENT '1 for active, 0 for deactive',
  `lang_flag` int(11) DEFAULT '1' COMMENT '1 for gujarati, 2 for english',
  `content` mediumtext
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_main_menu`
--

INSERT INTO `tbl_main_menu` (`id`, `menu_title`, `menu_link`, `is_static`, `status`, `lang_flag`, `content`) VALUES
(1, 'મુખ્ય પાનુ', NULL, 1, 1, 1, NULL),
(2, 'આપણા વિશે', NULL, 1, 1, 1, NULL),
(3, 'કામગીરીઓ', NULL, 1, 1, 1, NULL),
(4, 'સાધનસામગ્રી', NULL, 0, 1, 1, NULL),
(5, 'પરિપત્રો ', NULL, 1, 1, 1, NULL),
(6, 'ડાઉનલોડ', NULL, 1, 1, 1, 'f'),
(7, 'અમારો સંપર્ક ', NULL, 0, 1, 1, 'gfhgfhgfh'),
(8, 'Home', '', 0, 1, 2, ''),
(9, 'About Us', 'about_us', 1, 1, 2, ''),
(10, 'Processes', NULL, 0, 1, 2, NULL),
(11, 'Resources', NULL, 0, 1, 2, NULL),
(12, 'Circular', NULL, 1, 1, 2, NULL),
(13, 'Download', NULL, 1, 1, 2, NULL),
(14, 'Contact Us', 'contact_us', 1, 1, 2, '<h2>Write A Comment</h2>\n<form action="#" method="post">\n<div class="one_third first"><label for="name">Name *</label> <input id="name" name="name" size="22" type="text" value="" /></div>\n<div class="one_third"><label for="email">Mail *</label> <input id="email" name="email" size="22" type="text" value="" /></div>\n<div class="one_third"><label for="url">Website</label> <input id="url" name="url" size="22" type="text" value="" /></div>\n<div class="block clear"><label for="comment">Your Comment</label> <textarea id="comment" cols="25" name="comment" rows="10"></textarea></div>\n<div><input name="submit" type="submit" value="Submit Form" /> &nbsp; <input name="reset" type="reset" value="Reset Form" /></div>\n</form>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_other_download`
--

CREATE TABLE IF NOT EXISTS `tbl_other_download` (
`id` int(11) NOT NULL,
  `related_date` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file_path` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photos`
--

CREATE TABLE IF NOT EXISTS `tbl_photos` (
`id` int(11) NOT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `photo_title` mediumtext,
  `path` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo_gallery`
--

CREATE TABLE IF NOT EXISTS `tbl_photo_gallery` (
`id` int(11) NOT NULL,
  `gallery_name` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sankul`
--

CREATE TABLE IF NOT EXISTS `tbl_sankul` (
`id` int(11) NOT NULL,
  `sankul_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school`
--

CREATE TABLE IF NOT EXISTS `tbl_school` (
`id` int(11) NOT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `principal_name` varchar(255) DEFAULT NULL,
  `chairman_name` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL COMMENT 'upper primary',
  `medium` varchar(255) DEFAULT NULL,
  `school_type` varchar(255) DEFAULT NULL COMMENT 'granted or non granted',
  `address` mediumtext,
  `email` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `sankul_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE IF NOT EXISTS `tbl_staff` (
`id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `joining_date` timestamp NULL DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tajetar`
--

CREATE TABLE IF NOT EXISTS `tbl_tajetar` (
`id` int(11) NOT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `menu_link` mediumtext,
  `status` int(1) DEFAULT '1',
  `lang_flg` int(1) DEFAULT '1' COMMENT '1 for gujarati, 2 for English'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tajetar`
--

INSERT INTO `tbl_tajetar` (`id`, `menu_title`, `menu_link`, `status`, `lang_flg`) VALUES
(1, 'શાળાઓ ની માહિતી', NULL, 1, 1),
(2, 'સ્ટાફની માહિતી', NULL, 1, 1),
(3, 'સાધનસામગ્રી', NULL, 1, 1),
(4, 'કામગીરીઓ', NULL, 1, 1),
(5, 'પરિપત્રો', NULL, 1, 1),
(6, 'ડાઉનલોડ', NULL, 1, 1),
(7, 'School Information', NULL, 1, 2),
(8, 'Staff Information', NULL, 1, 2),
(9, 'Resource', NULL, 1, 2),
(10, 'Processes', NULL, 1, 2),
(11, 'Circular', NULL, 1, 2),
(12, 'Download', NULL, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_flesh`
--

CREATE TABLE IF NOT EXISTS `tbl_top_flesh` (
`id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` mediumtext,
  `detail` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bottom_flesh`
--
ALTER TABLE `tbl_bottom_flesh`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_circular`
--
ALTER TABLE `tbl_circular`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_counter`
--
ALTER TABLE `tbl_counter`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_main_menu`
--
ALTER TABLE `tbl_main_menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_other_download`
--
ALTER TABLE `tbl_other_download`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photos`
--
ALTER TABLE `tbl_photos`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo_gallery`
--
ALTER TABLE `tbl_photo_gallery`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sankul`
--
ALTER TABLE `tbl_sankul`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_school`
--
ALTER TABLE `tbl_school`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tajetar`
--
ALTER TABLE `tbl_tajetar`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_top_flesh`
--
ALTER TABLE `tbl_top_flesh`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_bottom_flesh`
--
ALTER TABLE `tbl_bottom_flesh`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_circular`
--
ALTER TABLE `tbl_circular`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_counter`
--
ALTER TABLE `tbl_counter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_main_menu`
--
ALTER TABLE `tbl_main_menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_other_download`
--
ALTER TABLE `tbl_other_download`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_photos`
--
ALTER TABLE `tbl_photos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_photo_gallery`
--
ALTER TABLE `tbl_photo_gallery`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_sankul`
--
ALTER TABLE `tbl_sankul`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_school`
--
ALTER TABLE `tbl_school`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_tajetar`
--
ALTER TABLE `tbl_tajetar`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_top_flesh`
--
ALTER TABLE `tbl_top_flesh`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
