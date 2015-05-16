-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.5.27 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2015-05-16 18:17:18
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping structure for table gameday.book_user
CREATE TABLE IF NOT EXISTS `book_user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state_id` int(11) unsigned DEFAULT NULL,
  `country_id` int(11) unsigned DEFAULT NULL,
  `zipcode` varchar(15) DEFAULT NULL,
  `ssn` varchar(15) DEFAULT NULL,
  `home_phone` varchar(20) DEFAULT NULL,
  `office_phone` varchar(20) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `next_subscription_date` date DEFAULT NULL,
  `user_key` varchar(20) DEFAULT NULL,
  `promocode` varchar(100) DEFAULT NULL,
  `gift_code` varchar(20) DEFAULT NULL,
  `news_letter_type` char(1) DEFAULT NULL,
  `email_format` char(1) DEFAULT 'H',
  `payment_method` char(1) DEFAULT NULL,
  `payment_status` char(1) DEFAULT 'P',
  `card_declined` char(1) DEFAULT 'N',
  `status` char(1) DEFAULT 'D',
  `refer_id` varchar(255) DEFAULT NULL,
  `refer_by` varchar(255) DEFAULT NULL,
  `count_refer` int(11) DEFAULT '0',
  `last_status_changed_on` date DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table gameday.book_user: ~0 rows (approximately)
DELETE FROM `book_user`;
/*!40000 ALTER TABLE `book_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_user` ENABLE KEYS */;


-- Dumping structure for table gameday.tbl_admin
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '1' COMMENT '1 for active 0 for deactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table gameday.tbl_admin: ~10 rows (approximately)
DELETE FROM `tbl_admin`;
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` (`id`, `lname`, `email`, `fname`, `username`, `password`, `status`) VALUES
	(2, NULL, NULL, NULL, 'jignesh', 'jignesh', 1),
	(4, NULL, NULL, NULL, 'check', 'check', 1),
	(6, 'Dd', '', 'D', 'new asdnin', 'new asnbn', 0),
	(7, NULL, NULL, NULL, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0),
	(8, 'adminlanem', 'admin@email.com', 'adminfname', 'adminusername', '0f442c10199a5c363ea45236ad342ca3', 1),
	(9, 'Sdfsd', 'sdfsdf', 'Dfsdf', 'sdfsd', 'd58e3582afa99040e27b92b13c8f2280', 1),
	(10, 'Admin', 'admin@ad,in', 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
	(11, 'Admin', 'admin@admin.com', 'Fname', 'admin1', '21232f297a57a5a743894a0e4a801fc3', 0),
	(12, 'Panchal', 'admin@admin.com', 'Jignesh', 'admin2', 'c84258e9c39059a89ab77d846ddab909', 1),
	(13, 'Dsf', 'dsf', 'Defdsf', 'dsfds', 'd4b2758da0205c1e0aa9512cd188002a', 1);
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;


-- Dumping structure for table gameday.tbl_card_information
CREATE TABLE IF NOT EXISTS `tbl_card_information` (
  `card_information_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `credit_card_id` int(11) unsigned DEFAULT NULL,
  `card_number` varchar(50) DEFAULT NULL,
  `cvm_number` varchar(5) DEFAULT NULL,
  `exp_date` varchar(20) DEFAULT NULL,
  `owner_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`card_information_id`),
  KEY `user_id` (`user_id`),
  KEY `credit_card_id` (`credit_card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table gameday.tbl_card_information: ~0 rows (approximately)
DELETE FROM `tbl_card_information`;
/*!40000 ALTER TABLE `tbl_card_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_card_information` ENABLE KEYS */;


-- Dumping structure for table gameday.tbl_category
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `category_nm` varchar(100) DEFAULT NULL,
  `category_desc` text,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table gameday.tbl_category: ~0 rows (approximately)
DELETE FROM `tbl_category`;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;


-- Dumping structure for table gameday.tbl_counter
CREATE TABLE IF NOT EXISTS `tbl_counter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gameday.tbl_counter: ~0 rows (approximately)
DELETE FROM `tbl_counter`;
/*!40000 ALTER TABLE `tbl_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_counter` ENABLE KEYS */;


-- Dumping structure for table gameday.tbl_credit_card
CREATE TABLE IF NOT EXISTS `tbl_credit_card` (
  `credit_card_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cc_name` varchar(100) DEFAULT NULL,
  `cc_shortname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`credit_card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table gameday.tbl_credit_card: ~0 rows (approximately)
DELETE FROM `tbl_credit_card`;
/*!40000 ALTER TABLE `tbl_credit_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_credit_card` ENABLE KEYS */;


-- Dumping structure for table gameday.tbl_main_menu
CREATE TABLE IF NOT EXISTS `tbl_main_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(255) DEFAULT NULL,
  `menu_link` mediumtext,
  `is_static` int(1) DEFAULT '0' COMMENT '1 for static, 0 for dynamic',
  `status` int(1) DEFAULT '1' COMMENT '1 for active, 0 for deactive',
  `lang_flag` int(11) DEFAULT '1' COMMENT '1 for gujarati, 2 for english',
  `content` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table gameday.tbl_main_menu: ~22 rows (approximately)
DELETE FROM `tbl_main_menu`;
/*!40000 ALTER TABLE `tbl_main_menu` DISABLE KEYS */;
INSERT INTO `tbl_main_menu` (`id`, `menu_title`, `menu_link`, `is_static`, `status`, `lang_flag`, `content`) VALUES
	(1, 'મુખ્ય પાનુ', NULL, 0, 1, 1, NULL),
	(2, 'આપણા વિશે', NULL, 0, 1, 1, NULL),
	(3, 'કામગીરીઓ', NULL, 0, 1, 1, NULL),
	(4, 'સાધનસામગ્રી', NULL, 0, 1, 1, NULL),
	(5, 'પરિપત્રો ', NULL, 1, 1, 1, NULL),
	(6, 'ડાઉનલોડ', NULL, 1, 1, 1, 'f'),
	(7, 'અમારો સંપર્ક ', NULL, 0, 1, 1, 'gfhgfhgfh'),
	(8, 'Home', NULL, 0, 1, 2, NULL),
	(9, 'About Us', NULL, 0, 1, 2, NULL),
	(10, 'Processes', NULL, 0, 1, 2, NULL),
	(11, 'Resources', NULL, 0, 1, 2, NULL),
	(12, 'Circular', NULL, 1, 1, 2, NULL),
	(13, 'Download', NULL, 1, 1, 2, NULL),
	(14, 'Contact Us', NULL, 0, 1, 2, NULL),
	(15, 'SPORTS', NULL, 0, 1, 1, NULL),
	(16, 'TV/MOVIES', NULL, 0, 1, 2, NULL),
	(17, 'MUSIC', NULL, 0, 1, 2, NULL),
	(18, 'HISTORIC', NULL, 0, 1, 2, NULL),
	(19, 'FOOD', NULL, 0, 1, 2, NULL),
	(20, 'MASCOT', NULL, 0, 1, 2, NULL),
	(21, 'CUSTOM', NULL, 0, 1, 2, NULL),
	(22, 'QR CODE', NULL, 0, 1, 2, NULL);
/*!40000 ALTER TABLE `tbl_main_menu` ENABLE KEYS */;


-- Dumping structure for table gameday.tbl_newsletter
CREATE TABLE IF NOT EXISTS `tbl_newsletter` (
  `newsletter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(30) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `content` text,
  `status` enum('A','D') DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`newsletter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table gameday.tbl_newsletter: 0 rows
DELETE FROM `tbl_newsletter`;
/*!40000 ALTER TABLE `tbl_newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_newsletter` ENABLE KEYS */;


-- Dumping structure for table gameday.tbl_order_detail
CREATE TABLE IF NOT EXISTS `tbl_order_detail` (
  `order_detail_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `book_id` int(11) unsigned NOT NULL,
  `book_price` float(18,2) unsigned DEFAULT NULL,
  `book_qty` int(11) DEFAULT NULL,
  `book_final_price` float(18,2) DEFAULT NULL,
  `book_code_id` int(11) DEFAULT NULL,
  `book_type` varchar(50) DEFAULT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- Dumping data for table gameday.tbl_order_detail: ~0 rows (approximately)
DELETE FROM `tbl_order_detail`;
/*!40000 ALTER TABLE `tbl_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_order_detail` ENABLE KEYS */;


-- Dumping structure for table gameday.tbl_order_master
CREATE TABLE IF NOT EXISTS `tbl_order_master` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `cust_first_name` varchar(50) DEFAULT NULL,
  `cust_middle_name` varchar(50) DEFAULT NULL,
  `cust_last_name` varchar(50) DEFAULT NULL,
  `cust_address1` varchar(100) DEFAULT NULL,
  `cust_address2` varchar(100) DEFAULT NULL,
  `cust_city` varchar(50) DEFAULT NULL,
  `cust_state_nm` varchar(100) DEFAULT NULL,
  `cust_country_nm` varchar(100) DEFAULT NULL,
  `cust_zipcode` varchar(15) DEFAULT NULL,
  `ship_first_name` varchar(50) DEFAULT NULL,
  `ship_middle_name` varchar(50) DEFAULT NULL,
  `ship_last_name` varchar(50) DEFAULT NULL,
  `ship_address1` varchar(100) DEFAULT NULL,
  `ship_address2` varchar(100) DEFAULT NULL,
  `ship_city` varchar(50) DEFAULT NULL,
  `ship_state_nm` varchar(100) DEFAULT NULL,
  `ship_country_nm` varchar(100) DEFAULT NULL,
  `ship_zipcode` varchar(15) DEFAULT NULL,
  `bill_first_name` varchar(50) DEFAULT NULL,
  `bill_middle_name` varchar(50) DEFAULT NULL,
  `bill_last_name` varchar(50) DEFAULT NULL,
  `bill_address1` varchar(100) DEFAULT NULL,
  `bill_address2` varchar(100) DEFAULT NULL,
  `bill_city` varchar(50) DEFAULT NULL,
  `bill_state_nm` varchar(100) DEFAULT NULL,
  `bill_country_nm` varchar(100) DEFAULT NULL,
  `bill_zipcode` varchar(15) DEFAULT NULL,
  `cc_name` varchar(50) DEFAULT NULL,
  `card_number` varchar(50) DEFAULT NULL,
  `cvm_number` varchar(5) DEFAULT NULL,
  `exp_date` varchar(20) DEFAULT NULL,
  `owner_name` varchar(50) DEFAULT NULL,
  `order_amount` float(18,2) unsigned DEFAULT NULL,
  `shipping_cost` float(18,2) unsigned DEFAULT NULL,
  `order_tax` float(18,2) unsigned DEFAULT NULL,
  `order_total` float(18,2) unsigned DEFAULT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `shipping_method` int(11) unsigned DEFAULT NULL,
  `shipping_date` date DEFAULT NULL,
  `order_status` char(1) DEFAULT 'P',
  `order_date_finished` date DEFAULT NULL,
  `payment_status` char(1) DEFAULT 'P',
  `payment_type` char(1) DEFAULT NULL,
  `order_comment` text,
  `order_date` date DEFAULT NULL,
  `shipping_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- Dumping data for table gameday.tbl_order_master: ~0 rows (approximately)
DELETE FROM `tbl_order_master`;
/*!40000 ALTER TABLE `tbl_order_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_order_master` ENABLE KEYS */;


-- Dumping structure for table gameday.tbl_photos
CREATE TABLE IF NOT EXISTS `tbl_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) DEFAULT NULL,
  `photo_title` mediumtext,
  `path` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table gameday.tbl_photos: ~0 rows (approximately)
DELETE FROM `tbl_photos`;
/*!40000 ALTER TABLE `tbl_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_photos` ENABLE KEYS */;


-- Dumping structure for table gameday.tbl_user_address
CREATE TABLE IF NOT EXISTS `tbl_user_address` (
  `user_address_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state_id` int(11) unsigned DEFAULT NULL,
  `country_id` int(11) unsigned DEFAULT NULL,
  `zipcode` varchar(15) DEFAULT NULL,
  `address_type` char(1) DEFAULT NULL,
  `current_address` char(1) DEFAULT 'A',
  PRIMARY KEY (`user_address_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbl_user_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table gameday.tbl_user_address: ~0 rows (approximately)
DELETE FROM `tbl_user_address`;
/*!40000 ALTER TABLE `tbl_user_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_user_address` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
