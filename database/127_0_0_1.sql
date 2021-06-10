-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 07:19 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci`
--
CREATE DATABASE IF NOT EXISTS `ci` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ci`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` int(20) NOT NULL,
  `salary` int(25) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `mobile`, `salary`, `email`) VALUES
(1, 'emp1', 733704323, 10000, 'emp1@gmail.com'),
(2, 'emp2', 733405321, 150000, 'emp2@gmail.com'),
(3, 'ahmad', 456245352, 20000, 'ahmad@gmail.com'),
(4, 'mahmod', 733440152, 30000, 'mahmod@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `company`
--
CREATE DATABASE IF NOT EXISTS `company` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `company`;

-- --------------------------------------------------------

--
-- Table structure for table `employees_tbl`
--

CREATE TABLE `employees_tbl` (
  `emp_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `email` varchar(60) NOT NULL,
  `skills` varchar(60) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `gender` int(1) NOT NULL,
  `address` varchar(60) NOT NULL,
  `status` int(1) NOT NULL,
  `image` varchar(60) NOT NULL,
  `date_of_join` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees_tbl`
--
ALTER TABLE `employees_tbl`
  ADD PRIMARY KEY (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees_tbl`
--
ALTER TABLE `employees_tbl`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `demonchess`
--
CREATE DATABASE IF NOT EXISTS `demonchess` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `demonchess`;

-- --------------------------------------------------------

--
-- Table structure for table `add_house`
--

CREATE TABLE `add_house` (
  `id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `priority` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `description` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_house`
--

INSERT INTO `add_house` (`id`, `title`, `priority`, `status`, `description`, `created_at`) VALUES
(1, 'house1', 1, 1, 'describe', '2021-06-06 00:00:00'),
(2, 'house2', 2, 0, '', '2021-06-06 00:00:00'),
(3, 'house3', 3, 1, 'something', '2021-06-06 00:00:00'),
(4, 'test house', 2, 1, 'describe', '2021-06-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `add_plans`
--

CREATE TABLE `add_plans` (
  `p_id` int(10) NOT NULL,
  `house_title` int(10) NOT NULL,
  `plan` varchar(60) NOT NULL,
  `mrp` int(10) NOT NULL,
  `offer_price` int(10) NOT NULL,
  `validity` int(10) NOT NULL,
  `sessions` varchar(60) NOT NULL,
  `status` int(1) NOT NULL,
  `priority` int(3) NOT NULL,
  `p_desc` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_plans`
--

INSERT INTO `add_plans` (`p_id`, `house_title`, `plan`, `mrp`, `offer_price`, `validity`, `sessions`, `status`, `priority`, `p_desc`, `created_at`) VALUES
(1, 1, 'plan1', 455, 44, 34, '3', 1, 1, '', '2021-06-06 00:00:00'),
(2, 3, 'plan2', 45, 45, 34, '23', 0, 3, '', '2021-06-06 00:00:00'),
(3, 4, 'test plan', 1000, 500, 30, '10', 1, 2, 'dsjfsldkfj sdkfjsdf', '2021-06-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(16) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `date_of_registered` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `email`, `password`, `mobile`, `profile_pic`, `date_of_registered`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$AhZVYmY4UfIcf.0ISlIGI.NsChge0M21Hbu3ZeQT0yt.A.cXX9wOa', '1234567890', 'uploads/admin/b7ff6b9a79eeff7f925a5476b53962fd.png', '2018-01-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `priority` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `priority`, `status`, `created_at`) VALUES
(1, 'category 1', 1, 1, '2021-06-06 00:00:00'),
(2, 'category 2', 2, 0, '2021-06-06 00:00:00'),
(3, 'category 3', 3, 1, '2021-06-06 00:00:00'),
(4, 'category 4', 1, 0, '2021-06-06 00:00:00'),
(5, 'electronics', 1, 1, '2021-06-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pr_id` int(10) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `pr_name` varchar(60) NOT NULL,
  `pr_mrp` int(10) NOT NULL,
  `pr_sp` int(10) NOT NULL,
  `pr_descp` varchar(60) NOT NULL,
  `pr_status` int(2) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pr_id`, `category`, `sub_category`, `pr_name`, `pr_mrp`, `pr_sp`, `pr_descp`, `pr_status`, `created_at`) VALUES
(1, 1, 2, 'product 1', 55, 50, 'describe', 1, '2021-06-06 00:00:00'),
(2, 3, 1, 'product 3', 21, 20, 'something', 1, '2021-06-06 00:00:00'),
(3, 5, 5, 'Redmi note', 100, 80, 'description', 1, '2021-06-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `s_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `sub_name` varchar(60) NOT NULL,
  `status` int(1) NOT NULL,
  `priority` int(10) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`s_id`, `category`, `sub_name`, `status`, `priority`, `created_at`) VALUES
(1, 3, 'sub of cat 3', 1, 1, '2021-06-06 00:00:00'),
(2, 1, 'sub1 of cat 1', 1, 2, '2021-06-06 00:00:00'),
(3, 1, 'sub 2 of cat 1', 0, 2, '2021-06-06 00:00:00'),
(4, 1, 'sub 3', 1, 2, '2021-06-06 00:00:00'),
(5, 5, 'mobiles', 1, 4, '2021-06-07 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_house`
--
ALTER TABLE `add_house`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_plans`
--
ALTER TABLE `add_plans`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `house_title` (`house_title`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pr_id`),
  ADD KEY `category` (`category`),
  ADD KEY `sub_category` (`sub_category`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_house`
--
ALTER TABLE `add_house`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `add_plans`
--
ALTER TABLE `add_plans`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pr_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_plans`
--
ALTER TABLE `add_plans`
  ADD CONSTRAINT `add_plans_ibfk_1` FOREIGN KEY (`house_title`) REFERENCES `add_house` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`sub_category`) REFERENCES `sub_categories` (`s_id`);

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`);
--
-- Database: `login_system`
--
CREATE DATABASE IF NOT EXISTS `login_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `login_system`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(60) NOT NULL,
  `uname` varchar(128) NOT NULL,
  `uemail` varchar(128) NOT NULL,
  `uid` varchar(128) NOT NULL,
  `pwd` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uname`, `uemail`, `uid`, `pwd`) VALUES
(1, 'ali', 'ali@gmail.com', 'AliNawrozie', '$2y$10$IePbwJpDHANEfsql9dXWd.Mp62hFq8RAfANyDAKZoTw3RyjtQfrFO'),
(2, 'taqi', 'taqi@gmail.com', 'Mtaqi', '$2y$10$sW1LEZv9l9Tbrn1rH6IpC.AvbigeiMuChwzyqdtcApTGLieMUNQY6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `id` int(16) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `age` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`id`, `name`, `email`, `age`) VALUES
(1, 'ali', 'ali@gmail.com', 25),
(2, 'raoof', 'raoof@gmail.com', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `news`
--
CREATE DATABASE IF NOT EXISTS `news` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `news`;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(15) NOT NULL,
  `company` varchar(64) NOT NULL,
  `salary` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `company`, `salary`) VALUES
(1, 'richlabz', 10000),
(2, 'v3care', 12000);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(15) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mobile` int(16) NOT NULL,
  `message` varchar(250) NOT NULL,
  `city` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile`, `message`, `city`) VALUES
(0, 'Taqi', 'taqi@gmail.com', 0, '', ''),
(1, 'ram', 'ram@gmail.com', 733733733, 'good evening', 'hyd'),
(2, 'hafiz', 'hafiz@gmail.com', 733733733, 'hi', 'Mumbai'),
(3, 'semanth', 'semanth@gmail.com', 555555555, 'good morning', 'Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `title` varchar(60) NOT NULL,
  `image` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(15) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `created_on`) VALUES
(12, 'fars', 'fars@gmail.com', '123123', '2021-04-07'),
(15, 'raof', 'raof@gmail.com', '123123', '2021-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `uniid` varchar(60) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'inactive',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `profile_pic` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `mobile`, `gender`, `uniid`, `status`, `created_at`, `profile_pic`) VALUES
(1, 'Ali', 'abdulalinawrozie12@gmail.com', '$2y$10$utK6dtI50KfGfuoN9fOOmetOmtJvxCX/4uHCcasRjIPNgUfFpHhJ.', '2332332331', 'male', '44145cf60ab56f87b157a52ebf9867af', 'active', '2021-03-15 09:54:10', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniid` (`uniid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`id`) REFERENCES `contacts` (`id`);
--
-- Database: `photos`
--
CREATE DATABASE IF NOT EXISTS `photos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `photos`;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `text` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `text`) VALUES
(1, 'images/picture.jpg', ''),
(2, 'images/picture.jpg', ''),
(3, 'images/picture.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'company', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"ci\",\"company\",\"demonchess\",\"login_system\",\"mydb\",\"news\",\"photos\",\"phpmyadmin\",\"rl\",\"sessions\",\"shopon\",\"so_api\",\"test\",\"trainerzapp_db\",\"useraccounts\",\"v3care_db\",\"xtratec\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"company\",\"table\":\"employees_tbl\"},{\"db\":\"xtratec\",\"table\":\"rl_add_training\"},{\"db\":\"xtratec\",\"table\":\"rl_add_photo\"},{\"db\":\"rl\",\"table\":\"users_tbl\"},{\"db\":\"demonchess\",\"table\":\"add_house\"},{\"db\":\"demonchess\",\"table\":\"products\"},{\"db\":\"demonchess\",\"table\":\"sub_categories\"},{\"db\":\"demonchess\",\"table\":\"categories\"},{\"db\":\"demonchess\",\"table\":\"add_plans\"},{\"db\":\"test\",\"table\":\"new_sliders\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('demonchess', 'add_plans', 'house_title'),
('demonchess', 'products', 'pr_name'),
('demonchess', 'sub_categories', 'sub_name'),
('news', 'blogs', 'company'),
('shopon', 'so_cart_tbl', 'ses_id'),
('shopon', 'so_orders_tbl', 'order_id'),
('xtratec', 'rl_student_tbl', 'name');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'shopon', 'so_sub_cat_tbl', '[]', '2021-01-13 08:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-06-10 05:16:17', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `rl`
--
CREATE DATABASE IF NOT EXISTS `rl` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rl`;

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `user_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`user_id`, `name`, `email`, `mobile`, `password`) VALUES
(1, 'Seshu', 's@gmail.com', '9639639639', '123123'),
(2, 'Seshu', 's@gmail.com', '9639639639', '123123'),
(3, 'Seshu', 's@gmail.com', '9639639639', '123123'),
(4, '', '', '', ''),
(5, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `sessions`
--
CREATE DATABASE IF NOT EXISTS `sessions` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sessions`;

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` int(15) NOT NULL,
  `name` varchar(60) NOT NULL,
  `dept` varchar(60) NOT NULL,
  `salary` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`id`, `name`, `dept`, `salary`) VALUES
(1, 'Ram', 'HR', 18000),
(2, 'Amrit', 'MRKT', 15000),
(3, 'Ravi', 'HR', 19000),
(4, 'Nitin', 'MRKT', 17000),
(5, 'aman', 'IT', 14500);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `name` varchar(60) NOT NULL,
  `mobile` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`name`, `mobile`) VALUES
('', ''),
('$name', '$mobile'),
('sth', '12353232');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `age` int(15) NOT NULL,
  `city` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `name`, `age`, `city`) VALUES
(1, 'habib', 29, 'Mazar-e-sharif'),
(2, 'Jabi', 17, 'Takhar'),
(3, 'Jabi', 17, 'Takhar'),
(4, 'arif', 22, 'KBL');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(15) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `password`) VALUES
(1, 'john', 'john@gmail.com', '123123'),
(2, 'alex', 'alex@gmail.com', '123123'),
(3, 'aman', 'aman@gmail.com', '124124'),
(8, 'taqi', 'taqi@gmail.com', '123123'),
(17, 'ali', 'taqi@gmail.com', '123123'),
(18, 'taqi', 'taqi@gmail.com', '123123'),
(19, 'rawoof', 'shir@gmail.com', '123123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Database: `shopon`
--
CREATE DATABASE IF NOT EXISTS `shopon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shopon`;

-- --------------------------------------------------------

--
-- Table structure for table `products_tbl`
--

CREATE TABLE `products_tbl` (
  `pr_id` int(15) NOT NULL,
  `pr_category` varchar(60) NOT NULL,
  `pr_sub_cat` varchar(60) NOT NULL,
  `pr_name` varchar(60) NOT NULL,
  `pr_mrp` int(15) NOT NULL,
  `pr_sp` int(15) NOT NULL,
  `pr_size` varchar(60) NOT NULL,
  `pr_brand` varchar(60) NOT NULL,
  `pr_color` varchar(60) NOT NULL,
  `pr_descp` varchar(255) NOT NULL,
  `pr_status` int(15) NOT NULL,
  `pr_image` varchar(60) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_tbl`
--

INSERT INTO `products_tbl` (`pr_id`, `pr_category`, `pr_sub_cat`, `pr_name`, `pr_mrp`, `pr_sp`, `pr_size`, `pr_brand`, `pr_color`, `pr_descp`, `pr_status`, `pr_image`, `added_on`) VALUES
(1, 'Men', 'Winter Wear', 'jacket', 1500, 1500, '23 x 14', 'addidas', 'yellow', 'asdfsder', 1, 'images/5ffc46f8263ad9.34561325.jpeg', '2021-01-12 07:06:14'),
(2, 'Women', 'Sarees', 'silk saree', 1200, 1100, '23 x 14', 'Silk', 'red,  green', 'saree ', 0, 'images/5ffc4879eed764.98651809.jpg', '2021-01-12 07:06:14'),
(11, 'Kids', 'Kids Care', 'Jacket', 1200, 1200, 's', 'Nike', 'red', 'red', 1, 'images/6002c622eb9e17.34630659.jpg', '2021-01-28 12:19:15'),
(12, 'Men', 'Winter Wear', 'T-shirts', 500, 500, 'M', 'CR7', 'white', 'Solid Men Hooded Neck Black T-Shirt', 1, 'images/60110516edc518.75819264.jpg', '2021-01-27 06:15:50'),
(14, 'Men', 'Winter Wear', 'Formal Shirts', 400, 400, 'L', 'CR7', 'Black', 'Men Slim Fit Solid Formal Shirt', 1, 'images/60110b324c4973.99802534.jpg', '2021-01-27 06:41:54'),
(15, 'Men', 'Winter Wear', 'Jeans', 700, 700, 'L', 'Peter England', 'Grey', 'Skinny Men Grey Jeans', 1, 'images/60110e943869b2.76000251.jpeg', '2021-01-27 06:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `so_admin`
--

CREATE TABLE `so_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `so_admin`
--

INSERT INTO `so_admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '4297f44b13955235245b2497399d7a93');

-- --------------------------------------------------------

--
-- Table structure for table `so_cart_tbl`
--

CREATE TABLE `so_cart_tbl` (
  `cart_id` int(60) NOT NULL,
  `pr_id` int(60) NOT NULL,
  `qty` int(60) NOT NULL,
  `unit_price` int(60) NOT NULL,
  `total` int(60) NOT NULL,
  `ses_id` varchar(100) NOT NULL,
  `user_id` int(60) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_id` varchar(60) NOT NULL,
  `cart_status` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `so_cart_tbl`
--

INSERT INTO `so_cart_tbl` (`cart_id`, `pr_id`, `qty`, `unit_price`, `total`, `ses_id`, `user_id`, `added_on`, `order_id`, `cart_status`) VALUES
(1, 1, 1, 1500, 1500, '44650dqe5kns5ig7rqbs5cbu82', 1, '2021-02-23 10:46:56', 'SO58431', 2),
(2, 12, 1, 500, 500, '44650dqe5kns5ig7rqbs5cbu82', 1, '2021-02-23 10:46:56', 'SO58431', 2),
(3, 14, 2, 400, 800, '44650dqe5kns5ig7rqbs5cbu82', 1, '2021-02-23 10:46:56', 'SO58431', 2),
(4, 1, 1, 1500, 1500, '44650dqe5kns5ig7rqbs5cbu82', 1, '2021-02-23 11:07:29', 'SO57093', 2),
(5, 12, 1, 500, 500, '44650dqe5kns5ig7rqbs5cbu82', 1, '2021-02-23 11:06:03', 'SO57093', 2),
(6, 14, 2, 400, 800, '44650dqe5kns5ig7rqbs5cbu82', 1, '2021-02-23 11:07:21', 'SO57093', 2),
(7, 1, 2, 1500, 3000, '44650dqe5kns5ig7rqbs5cbu82', 1, '2021-02-23 11:20:33', 'SO29644', 2),
(8, 12, 1, 500, 500, '44650dqe5kns5ig7rqbs5cbu82', 1, '2021-02-23 11:20:26', 'SO29644', 2),
(9, 14, 1, 400, 400, '44650dqe5kns5ig7rqbs5cbu82', 1, '2021-02-23 11:20:20', 'SO29644', 2),
(10, 15, 1, 700, 700, '44650dqe5kns5ig7rqbs5cbu82', 1, '2021-02-23 11:23:07', 'SO26555', 2),
(11, 14, 2, 400, 800, '44650dqe5kns5ig7rqbs5cbu82', 1, '2021-02-23 11:23:24', 'SO26555', 2),
(12, 12, 1, 500, 500, '44650dqe5kns5ig7rqbs5cbu82', 1, '2021-02-23 11:23:25', 'SO26555', 2),
(13, 1, 2, 1500, 3000, '44650dqe5kns5ig7rqbs5cbu82', 1, '2021-04-04 11:52:40', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `so_categories_tbl`
--

CREATE TABLE `so_categories_tbl` (
  `id` int(15) NOT NULL,
  `name` varchar(60) NOT NULL,
  `priority` varchar(60) NOT NULL,
  `status` int(15) NOT NULL,
  `image` varchar(60) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `so_categories_tbl`
--

INSERT INTO `so_categories_tbl` (`id`, `name`, `priority`, `status`, `image`, `added_on`) VALUES
(1, 'Men', '2', 1, 'images/5ffb705469b566.98808779.jpeg', '2021-01-10 21:23:32'),
(2, 'Women', '1', 1, 'images/5ffb706c89edf3.12923895.jpg', '2021-01-10 21:23:56'),
(3, 'Kids', '3', 0, 'images/6002c2238cdd58.90816310.jpg', '2021-01-16 10:38:27'),
(10, 'electronics', '4', 1, 'images/6008ab691627a9.55949430.jpg', '2021-01-20 22:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `so_orders_tbl`
--

CREATE TABLE `so_orders_tbl` (
  `id` int(60) NOT NULL,
  `order_id` varchar(60) NOT NULL DEFAULT '0',
  `order_qty` int(60) NOT NULL,
  `order_total` int(60) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mobile` int(30) NOT NULL,
  `city` varchar(60) NOT NULL,
  `area` varchar(60) NOT NULL,
  `landmark` varchar(60) NOT NULL,
  `address` varchar(128) NOT NULL,
  `state` varchar(60) NOT NULL,
  `pincode` int(60) NOT NULL,
  `pmt_status` int(60) NOT NULL,
  `pmt_mode` int(60) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(60) NOT NULL,
  `order_status` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `so_orders_tbl`
--

INSERT INTO `so_orders_tbl` (`id`, `order_id`, `order_qty`, `order_total`, `name`, `email`, `mobile`, `city`, `area`, `landmark`, `address`, `state`, `pincode`, `pmt_status`, `pmt_mode`, `order_date`, `user_id`, `order_status`) VALUES
(1, 'SO58431', 0, 0, 'Ali', 'ali@gmail.com', 2147483647, 'Hyd', 'Vijay Nagar', 'Qamar Function Hall', '10-2-2/B/2, Near Jahan Ara Masjid,', 'Telengana', 50008, 0, 0, '2021-02-23 10:46:56', 1, 2),
(2, 'SO70702', 0, 0, 'Ali', 'ali@gmail.com', 2147483647, 'Warangal', 'Vijay Nagar ', 'Qamar Function Hall', '10-2-2/B/2, Near Jahan Ara Masjid,', 'Maharashtra', 50008, 0, 0, '2021-02-23 10:53:03', 1, 2),
(3, 'SO57093', 0, 0, 'Ali', 'ali@gmail.com', 2147483647, 'Karimnagar', 'Asif Nagar', 'sw', '12-4-8/A, Hari Krishna Residency,', 'Telengana', 60004, 0, 0, '2021-02-23 11:07:29', 1, 2),
(4, 'SO29644', 0, 0, 'Taqi', 'ali@gmail.com', 2147483647, 'Hyd', 'Tarnaka', 'Afghan Darbar', '10-5-6/G/R, Lakshmi Residency', 'Telengana', 80004, 0, 0, '2021-02-23 11:20:33', 1, 2),
(5, 'SO26555', 0, 0, 'Shir', 'ali@gmail.com', 2147483647, 'Hyd', 'sw', 'sw', '10-2-b', 'Telengana', 10, 0, 0, '2021-02-23 11:23:25', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `so_sliders_tbl`
--

CREATE TABLE `so_sliders_tbl` (
  `s_id` int(60) NOT NULL,
  `s_title` varchar(60) NOT NULL,
  `s_priority` int(60) NOT NULL,
  `s_status` int(60) NOT NULL,
  `s_url` varchar(60) DEFAULT NULL,
  `s_desc` varchar(255) NOT NULL,
  `s_image` varchar(60) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `so_sliders_tbl`
--

INSERT INTO `so_sliders_tbl` (`s_id`, `s_title`, `s_priority`, `s_status`, `s_url`, `s_desc`, `s_image`, `added_on`) VALUES
(1, 'Samsung', 1, 1, 'Get it now!', 'Introducing Galaxy S21', 'images/60095848445356.25006793.jpg', '2021-01-20 22:41:32'),
(3, 'Top Furnitures', 2, 1, 'Get it now!', 'Bean Bags, Shoe Racks & more \r\nCash on Delivery | Free Delivery ', 'images/6009649e87bbd9.90531104.jpg', '2021-01-21 11:25:18'),
(4, 'Hayat', 3, 1, 'sth', 'sdfsdfg', 'images/600d3c2cb1fe74.19039902.jpg', '2021-01-24 09:21:48');

-- --------------------------------------------------------

--
-- Table structure for table `so_sub_cat_tbl`
--

CREATE TABLE `so_sub_cat_tbl` (
  `id` int(15) NOT NULL,
  `sub_cat_id` int(15) NOT NULL,
  `sub_cat_name` varchar(60) NOT NULL,
  `sub_cat_status` int(15) NOT NULL,
  `sub_cat_pr` int(15) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `so_sub_cat_tbl`
--

INSERT INTO `so_sub_cat_tbl` (`id`, `sub_cat_id`, `sub_cat_name`, `sub_cat_status`, `sub_cat_pr`, `added_on`) VALUES
(3, 1, 'Toys', 1, 1, '2021-01-10 21:25:38'),
(1, 2, 'Winter Wear', 1, 1, '2021-01-10 21:27:17'),
(1, 3, 'Watches', 1, 2, '2021-01-10 21:27:49'),
(3, 4, 'Kids Care', 0, 5, '2021-01-10 22:58:09'),
(2, 5, 'Jewellery ', 1, 1, '2021-01-10 21:33:05'),
(2, 6, 'Sarees', 1, 2, '2021-01-10 21:33:47'),
(3, 7, 'Proofing & Safety', 0, 3, '2021-01-10 21:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `so_users_tbl`
--

CREATE TABLE `so_users_tbl` (
  `user_id` int(60) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `mobile` int(128) NOT NULL,
  `password` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `so_users_tbl`
--

INSERT INTO `so_users_tbl` (`user_id`, `name`, `email`, `uname`, `mobile`, `password`) VALUES
(1, 'Ali', 'ali@gmail.com', 'ali', 2147483647, '$2y$10$LWqMTySi0h6LTOJcL.dS8eKj1qxnTtJCNEOdxy2aC9nFrugOf6Gqm'),
(3, 'Taqi', 'taqi@gmail.com', 'taqi', 2147483647, '$2y$10$pF9D.f2VAv49xO8F1a2rvOAo/sVlDSEswQ5R1zmJ/nM9qTF/gS0f.');

-- --------------------------------------------------------

--
-- Table structure for table `so_wishlist_tbl`
--

CREATE TABLE `so_wishlist_tbl` (
  `w_id` int(60) NOT NULL,
  `user_id` int(60) NOT NULL,
  `pr_id` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `so_wishlist_tbl`
--

INSERT INTO `so_wishlist_tbl` (`w_id`, `user_id`, `pr_id`) VALUES
(1, 2, 12),
(3, 1, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products_tbl`
--
ALTER TABLE `products_tbl`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `so_admin`
--
ALTER TABLE `so_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `so_cart_tbl`
--
ALTER TABLE `so_cart_tbl`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `pr_id` (`pr_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `so_categories_tbl`
--
ALTER TABLE `so_categories_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `so_orders_tbl`
--
ALTER TABLE `so_orders_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `so_sliders_tbl`
--
ALTER TABLE `so_sliders_tbl`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `so_sub_cat_tbl`
--
ALTER TABLE `so_sub_cat_tbl`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `so_users_tbl`
--
ALTER TABLE `so_users_tbl`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `so_wishlist_tbl`
--
ALTER TABLE `so_wishlist_tbl`
  ADD PRIMARY KEY (`w_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pr_id` (`pr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products_tbl`
--
ALTER TABLE `products_tbl`
  MODIFY `pr_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `so_admin`
--
ALTER TABLE `so_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `so_cart_tbl`
--
ALTER TABLE `so_cart_tbl`
  MODIFY `cart_id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `so_categories_tbl`
--
ALTER TABLE `so_categories_tbl`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `so_orders_tbl`
--
ALTER TABLE `so_orders_tbl`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `so_sliders_tbl`
--
ALTER TABLE `so_sliders_tbl`
  MODIFY `s_id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `so_sub_cat_tbl`
--
ALTER TABLE `so_sub_cat_tbl`
  MODIFY `sub_cat_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `so_users_tbl`
--
ALTER TABLE `so_users_tbl`
  MODIFY `user_id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `so_wishlist_tbl`
--
ALTER TABLE `so_wishlist_tbl`
  MODIFY `w_id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `so_cart_tbl`
--
ALTER TABLE `so_cart_tbl`
  ADD CONSTRAINT `so_cart_tbl_ibfk_1` FOREIGN KEY (`pr_id`) REFERENCES `products_tbl` (`pr_id`),
  ADD CONSTRAINT `so_cart_tbl_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `so_users_tbl` (`user_id`);

--
-- Constraints for table `so_wishlist_tbl`
--
ALTER TABLE `so_wishlist_tbl`
  ADD CONSTRAINT `so_wishlist_tbl_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `so_users_tbl` (`user_id`),
  ADD CONSTRAINT `so_wishlist_tbl_ibfk_2` FOREIGN KEY (`pr_id`) REFERENCES `products_tbl` (`pr_id`);
--
-- Database: `so_api`
--
CREATE DATABASE IF NOT EXISTS `so_api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `so_api`;

-- --------------------------------------------------------

--
-- Table structure for table `so_users`
--

CREATE TABLE `so_users` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mobile` int(15) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `so_users`
--

INSERT INTO `so_users` (`id`, `name`, `email`, `mobile`, `password`) VALUES
(1, 'ali', 'ali@gmail.com', 733733733, '123123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `so_users`
--
ALTER TABLE `so_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `so_users`
--
ALTER TABLE `so_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `new_sliders`
--

CREATE TABLE `new_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `click_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 means no click',
  `static_redirection` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 refer friend',
  `limited_city` tinyint(1) NOT NULL DEFAULT 0,
  `all_cities` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `service_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_mode` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 for default and 1 for offers',
  `month` int(4) DEFAULT NULL,
  `day` int(4) DEFAULT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vicinity` bigint(20) DEFAULT NULL,
  `service_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_object` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirection_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `popup_dialog` tinyint(4) NOT NULL DEFAULT 0,
  `preorder` tinyint(4) NOT NULL DEFAULT 0,
  `preorder_schedule_time` int(20) DEFAULT 1440,
  `popup_dialog_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Preorder your items',
  `popup_dialog_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Preorder you items 1 day before',
  `offer_status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_sliders`
--

INSERT INTO `new_sliders` (`id`, `image`, `status`, `click_status`, `static_redirection`, `limited_city`, `all_cities`, `sort_order`, `service_id`, `offer_mode`, `month`, `day`, `category_id`, `service_mode`, `vicinity`, `service_name`, `coupon_code`, `meta_object`, `redirection_enabled`, `popup_dialog`, `preorder`, `preorder_schedule_time`, `popup_dialog_title`, `popup_dialog_description`, `offer_status`, `created_at`, `updated_at`) VALUES
(1, 'groceries_offer_one.png', '0', 0, 0, 1, 1, '0', '4', 0, NULL, NULL, '16', 'S', 30000, 'Grocery', NULL, NULL, 1, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', 0, '2020-07-04 15:19:39', '2020-07-04 15:19:39'),
(2, 'chicken_offer_one.png', '0', 0, 0, 1, 1, '0', '9', 0, NULL, NULL, '66', 'S', 30000, 'Chicken & Meat', NULL, NULL, 1, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', 1, '2020-07-04 15:20:45', '2020-07-04 15:20:46'),
(3, 'fruits_veg.png', '0', 0, 0, 1, 1, '0', '2', 0, NULL, NULL, '1', 'S', 30000, 'Fruits and Vegetables', NULL, NULL, 1, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', 1, '2020-07-04 15:21:26', '2020-07-04 15:21:26'),
(4, 'rent_me_slider.png', '0', 0, 0, 0, 1, '0', '11', 0, NULL, NULL, '47', 'R', 30000, 'Rent Me', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', NULL, '2020-07-04 15:21:26', '2020-07-04 15:21:26'),
(5, 'promo_offer.png', '0', 0, 0, 0, 1, '0', '12', 1, 3, 6, '16', 'S', 30000, 'Promo Offer', 'WELCOME', '{\"add_button\":0,\"items_price_confirmation\":0,\"items_page_or_summary\":1,\"promo_code\":\"WELCOME\",\"payment_status\":\"paid\"}', 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', NULL, '2021-03-03 16:19:39', '2021-03-03 16:19:39'),
(6, 'slider_4.png', '0', 0, 0, 1, 1, '0', '2', 0, NULL, NULL, '1', 'S\r\n', 30000, 'Groceries', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', NULL, '2020-07-04 15:19:39', '2020-07-04 15:19:39'),
(7, 'slider_5.png', '0', 0, 0, 1, 1, '5', '2', 0, NULL, NULL, '37', 'S', 30000, 'Personal Care', NULL, '', 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', NULL, '2020-07-04 15:19:39', '2020-07-04 15:19:39'),
(8, 'slider_6.png', '0', 0, 0, 1, 1, '6', '2', 0, NULL, NULL, '18', 'S', 30000, 'Staples', NULL, NULL, 1, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', NULL, '2020-07-04 15:19:39', '2020-07-04 15:19:39'),
(9, 'slider_7.png', '1', 0, 0, 0, 0, '2', '2', 0, NULL, NULL, '3', 'S', 30000, 'flowers', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', NULL, '2020-07-04 15:19:39', '2020-07-04 15:19:39'),
(10, 'slider_8.png', '0', 0, 0, 1, 0, '7', '2', 0, NULL, NULL, '66', 'S', 30000, NULL, NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', NULL, '2020-07-04 15:19:39', '2020-07-04 15:19:39'),
(11, 'slider_9.png', '0', 0, 0, 0, 0, '1', '12', 0, NULL, NULL, '16', 'S', 30000, 'Promo', 'WELCOME', '{\"add_button\":0,\"items_price_confirmation\":0,\"items_page_or_summary\":1,\"promo_code\":\"WELCOME\",\"payment_status\":\"paid\"}', 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', NULL, '2020-07-04 15:19:39', '2020-07-04 15:19:39'),
(12, 'slider_10.png', '0', 0, 0, 0, 0, '4', '2', 0, NULL, NULL, '36', 'S', 30000, NULL, NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', NULL, '2020-07-04 15:19:39', '2020-07-04 15:19:39'),
(13, 'slider_11.png', '0', 0, 0, 1, 1, '5', '9', 0, NULL, NULL, '22', 'S', 30000, 'Chicken And Meat', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', NULL, '2020-07-04 15:19:39', '2020-07-04 15:19:39'),
(14, 'slider_12.jpg', '0', 0, 0, 0, 1, '3', '1', 0, NULL, NULL, '3', 'CP', 30000, 'Pick and Drop', NULL, NULL, 0, 1, 1, 1440, 'Preorder your items', 'Preorder you items 1 day before', NULL, '2020-07-04 15:19:39', '2020-07-04 15:19:39'),
(15, 'drive_me1.png', '1', 0, 0, 1, 1, '6', '3', 0, NULL, NULL, '3', 'M', 30000, 'Drive Me', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', NULL, '2020-07-04 15:19:39', '2020-07-04 15:19:39'),
(16, 'Rent_me.png', '1', 0, 0, 1, 1, '5', '11', 0, NULL, NULL, '3', 'CP', 30000, 'Rent Me', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', NULL, '2020-07-04 15:19:39', '2020-07-04 15:19:39'),
(17, 'pick_and_drop1.png', '1', 0, 0, 1, 1, '4', '1', 0, NULL, NULL, '3', 'CP', 30000, 'Pick And Drop', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', NULL, '2020-07-04 15:19:39', '2020-07-04 15:19:39'),
(18, 'fruits_and_vegetable.png', '1', 0, 0, 1, 1, '1', '2', 0, NULL, NULL, '1', 'S', 30000, 'Fruits and Vegetables', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', NULL, '2020-07-04 15:19:39', '2020-07-04 15:19:39'),
(19, 'chicken_and_meat.png', '0', 0, 0, 1, 1, '2', '9', 0, NULL, NULL, '22', 'S', 30000, 'Chicken & Meat', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', NULL, '2020-07-04 15:19:39', '2020-07-04 15:19:39'),
(20, 'chicken_and_meat1.png', '0', 0, 0, 1, 1, '3', '9', 0, NULL, NULL, '22', 'S', 30000, 'Chicken & Meat', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', NULL, '2020-07-04 15:19:39', '2020-07-04 15:19:39'),
(22, 'holi.png', '0', 0, 1, 1, 1, '0', '2', 0, NULL, NULL, '3', 'S', 30000, 'Beverages', NULL, NULL, 1, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', 1, '2020-07-04 15:21:26', '2020-07-04 15:21:26'),
(34, '123.png', '0', 0, 0, 0, 1, '0', '2', 0, NULL, NULL, '3', 'S', 30000, 'Beverages', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', 0, '2021-04-09 12:17:39', '2021-04-09 12:17:39'),
(35, '1.png', '0', 0, 0, 0, 1, '0', '2', 0, NULL, NULL, '3', 'S', 30000, 'Beverages', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', 0, '2021-04-09 12:17:39', '2021-04-09 12:17:39'),
(36, '2.png', '0', 0, 0, 0, 1, '0', '2', 0, NULL, NULL, '3', 'S', 30000, 'Beverages', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', 0, '2021-04-09 12:17:39', '2021-04-09 12:17:39'),
(37, '3.png', '0', 0, 0, 0, 1, '0', '2', 0, NULL, NULL, '3', 'S', 30000, 'Beverages', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', 0, '2021-04-09 12:17:39', '2021-04-09 12:17:39'),
(38, '4.png', '0', 0, 0, 0, 1, '0', '2', 0, NULL, NULL, '3', 'S', 30000, 'Beverages', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', 0, '2021-04-09 12:17:39', '2021-04-09 12:17:39'),
(39, '5.png', '0', 0, 0, 0, 1, '0', '2', 0, NULL, NULL, '3', 'S', 30000, 'Beverages', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', 0, '2021-04-09 12:17:39', '2021-04-09 12:17:39'),
(40, '6.png', '0', 0, 0, 0, 1, '0', '2', 0, NULL, NULL, '3', 'S', 30000, 'Beverages', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', 0, '2021-04-09 12:17:39', '2021-04-09 12:17:39'),
(41, '7.png', '0', 0, 0, 0, 1, '0', '2', 0, NULL, NULL, '3', 'S', 30000, 'Beverages', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', 0, '2021-04-09 12:17:39', '2021-04-09 12:17:39'),
(42, '8.png', '0', 0, 0, 0, 1, '0', '2', 0, NULL, NULL, '3', 'S', 30000, 'Beverages', NULL, NULL, 0, 0, 0, 1440, 'Preorder your items', 'Preorder you items 1 day before', 0, '2021-04-09 12:17:39', '2021-04-09 12:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_id`, `cat_id`) VALUES
(1, NULL),
(4, NULL),
(7, NULL),
(8, NULL),
(9, NULL),
(11, NULL),
(12, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `new_sliders`
--
ALTER TABLE `new_sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`status`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_sliders`
--
ALTER TABLE `new_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `sub_category_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`c_id`);
--
-- Database: `trainerzapp_db`
--
CREATE DATABASE IF NOT EXISTS `trainerzapp_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `trainerzapp_db`;
--
-- Database: `useraccounts`
--
CREATE DATABASE IF NOT EXISTS `useraccounts` DEFAULT CHARACTER SET geostd8 COLLATE geostd8_bin;
USE `useraccounts`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) COLLATE geostd8_bin NOT NULL,
  `lastname` varchar(50) COLLATE geostd8_bin NOT NULL,
  `email` varchar(50) COLLATE geostd8_bin NOT NULL,
  `phone` varchar(25) COLLATE geostd8_bin NOT NULL,
  `password` varchar(50) COLLATE geostd8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=geostd8 COLLATE=geostd8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password`) VALUES
(1, 'dawood', 'rezaiee', 'dawod@gmail.com', '5468745621', '1234'),
(4, 'hayat', 'mohammadi', 'hayat@gmail.com', '4568523574', '12345'),
(17, '', '', '', '', ''),
(18, '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Database: `v3care_db`
--
CREATE DATABASE IF NOT EXISTS `v3care_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `v3care_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `date_of_registered` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `email`, `password`, `mobile`, `profile_pic`, `date_of_registered`) VALUES
('2', 'ali', 'ali@gmail.com', '', '47747747774', 'sfjdkf33', '2021-04-13 13:30:44'),
('SUP15112', 'Admin', 'admin@gmail.com', '665e6ba6b64fcbd6870ab038b8c6f5b35311f1b4d893da9970dd68e20e024ef209c9605c2c2b1b17bafd4fa066afd867f057e43514d8d12b8d4f2dc0a5bda706426NRZtyzdHhB19CJRjqN5rVAHPo/yZ7TsrPzJZYJ5A=', '1234567890', 'uploads/admin/b7ff6b9a79eeff7f925a5476b53962fd.png', '2018-01-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `area_id` bigint(20) NOT NULL,
  `city_id` int(20) NOT NULL,
  `district_id` int(20) NOT NULL,
  `state_id` int(20) NOT NULL,
  `country_id` int(20) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `city_id`, `district_id`, `state_id`, `country_id`, `area_name`, `status`) VALUES
(2, 3, 4, 2, 3, 'Kukatpally', 1),
(3, 3, 4, 2, 3, 'KPHB', 1),
(4, 3, 4, 2, 3, 'Nizampet', 1),
(5, 3, 4, 2, 3, 'Pragathi Nagar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(5) NOT NULL,
  `image_name` varchar(125) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image_name`, `banner_image`, `date`) VALUES
(1, '', 'upload/banner/83bd803ed15fcf93295efa442b4d8422.jpg', '2019-06-06'),
(2, '', 'upload/banner/31c9f89ccd6990a7aee049ed5b732b88.jpg', '2019-06-07');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `blog_category` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `blog_heading` varchar(255) NOT NULL,
  `blog_slug` varchar(255) NOT NULL,
  `blog_image` varchar(255) NOT NULL,
  `blog_desc` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `blog_category`, `meta_title`, `meta_description`, `meta_keywords`, `blog_heading`, `blog_slug`, `blog_image`, `blog_desc`, `date`) VALUES
(2, 'Home cleaning', 'Top 2018 Professional Home Cleaning Service Tips - GoKlean4u', 'Here are the top 2018 professional home cleaning services tips that you can follow on your daily basis. Check out with Goklean4u services to get the cleaning work done easy', 'Top 2018 Professional ', 'Top 2018 Professional Home Cleaning Service Tips', 'top-2018-professional-home-cleaning-service-tips', 'upload/blog/117820765b0859efd16b619eb4680504.jpg', '<p>Home cleaning services Home cleaning services Home cleaning services Home cleaning services Home cleaning services</p><div xss=\"removed\"><b><u></u></b></div>', '2018-09-26'),
(3, 'Kitchen cleaning', 'kitchen cleaning', 'kitchen cleaning', 'kitchen cleaning', 'kitchen cleaning', 'Kitchen-cleaning-services', 'upload/blog/30c47b3b9ac07998497aec6925bcc1b1.jpg', '<p>kitchen cleaningkitchen cleaningkitchen cleaningkitchen cleaning<br></p>', '2018-09-26'),
(4, 'Bathroom cleaning', 'Top 5 Bathroom Cleaning Hacks', 'Bathroom Cleaning Services', 'Bathroom Cleaning Hacks', 'Top 5 Bathroom Cleaning Hacks', 'top-5-bathroom-cleaning-hacks', 'upload/blog/2e114ed9dae96087aff1f1f170697748.jpg', '<p class=\"MsoNormal\">Bathroom cleaning services Bathroom cleaning services Bathroom cleaning services Bathroom cleaning services Bathroom cleaning services Bathroom cleaning services</p>', '2018-09-26'),
(5, 'Matress cleaning', 'matress cleaning', 'matress cleaning', 'matress cleaning', 'matress cleaning', 'Matress-cleaning-services', 'upload/blog/b2febeabcb6677c10172da308b3c3bad.jpg', '<p>matress cleaning matress cleaning matress cleaning matress cleaning matress cleaning<br></p>', '2018-09-26'),
(6, 'Sofa cleaning', 'sofa blog', 'sofa blog', 'sofa blog', 'sofa blog', 'Sofa-cleaning-services', 'upload/blog/15308af10eb7179638a0145866f10950.jpg', '<p>sofa blog sofa blog sofa blog sofa blog sofa blog sofa blog<br></p>', '2018-09-26'),
(7, 'Carpet cleaning', 'carpet cleaning', 'carpet cleaning', 'carpet cleaning', 'carpet cleaning', 'Carpet-cleaning-services', 'upload/blog/207931007da2fab5cacb6a1cbe22155f.jpg', '<p>carpet cleaning carpet cleaning carpet cleaning carpet cleaning<br></p>', '2018-09-26'),
(9, 'Home cleaning', ' Basic Cleaning Service ', ' Basic Cleaning Service ', ' Basic Cleaning Service ', ' Basic Cleaning Service ', 'Basic-Cleaning-Service ', 'upload/blog/028f35c98c7e182ff1f29cb6831e99e5.jpeg', '<p>basic cleaning services basic cleaning services basic cleaning services basic cleaning services basic cleaning services basic cleaning services<br></p>', '2018-11-10'),
(10, 'Sofa cleaning', 'sofa cleaning123', 'sofa cleaning123', 'sofa cleaning123', 'sofa cleaning123', 'sofa-cleaning-123', 'upload/blog/e7bfe1d05f669cbf8f1584ff3f7fa309.jpg', '<p>sofa cleaning123 sofa cleaning123 sofa cleaning123<br></p>', '2018-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `canceljobs`
--

CREATE TABLE `canceljobs` (
  `id` int(5) NOT NULL,
  `description` varchar(125) NOT NULL,
  `date` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `canceljobs`
--

INSERT INTO `canceljobs` (`id`, `description`, `date`) VALUES
(1, 'Reschedule job', '19-03-20'),
(2, 'Customer non-responsive even after 4 tries', '19-03-20'),
(4, 'Customer not available currently.', '19-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(5) NOT NULL,
  `service_id` int(10) NOT NULL,
  `package_id` int(10) DEFAULT NULL,
  `package_name` varchar(75) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` int(5) NOT NULL,
  `time_slot` varchar(50) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `service_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `district_id` int(20) NOT NULL,
  `state_id` int(20) NOT NULL,
  `country_id` int(20) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `district_id`, `state_id`, `country_id`, `city_name`, `status`) VALUES
(3, 4, 2, 3, 'Hyderabad', 1),
(4, 6, 3, 3, 'Bangalore', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `company_name` varchar(225) NOT NULL,
  `company_mail` varchar(255) NOT NULL,
  `company_phone` bigint(10) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `is_active` int(5) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `company_name`, `company_mail`, `company_phone`, `Address`, `is_active`) VALUES
(1, 'v3care', 'info@v3care.com', 9880778585, '# 2296, 24th Main Road, 16th Cross Rd,\r\n1st Sector, HSR Layout,\r\nBengaluru, Karnataka 560102', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `status`) VALUES
(3, 'India', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `c_id` varchar(15) NOT NULL,
  `coupon_name` varchar(75) NOT NULL,
  `coupon_code` varchar(10) NOT NULL,
  `coupon_discount` bigint(5) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`c_id`, `coupon_name`, `coupon_code`, `coupon_discount`, `type`) VALUES
('COU4537893', 'NEW CUSTOMER', 'NEWCUST', 20, 'percentage'),
('COU8150329', 'SB OFFERS', 'SBOFF10', 10, 'percentage'),
('COU8179504', 'RAINY SEASON', 'RAIN12', 12, 'percentage'),
('COU9746350', 'ramzan', 'ramzan15', 15, 'percentage');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `district_id` int(11) NOT NULL,
  `state_id` int(20) NOT NULL,
  `country_id` int(20) NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`district_id`, `state_id`, `country_id`, `district_name`, `status`) VALUES
(4, 2, 3, 'Hyderabad', 1),
(5, 2, 3, 'Rangareddy', 1),
(6, 3, 3, 'Vijayawada', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `emp_id` int(55) NOT NULL,
  `emp_name` varchar(255) NOT NULL,
  `emp_father_name` varchar(50) NOT NULL,
  `emp_email` varchar(255) NOT NULL,
  `emp_personal_email` varchar(50) NOT NULL,
  `emp_num` varchar(13) NOT NULL,
  `company_num` varchar(11) NOT NULL,
  `emp_pwd` varchar(255) NOT NULL,
  `emp_adrs` varchar(255) NOT NULL,
  `emp_image` varchar(255) NOT NULL,
  `aadhar_card` varchar(50) NOT NULL,
  `pan_card` varchar(50) NOT NULL,
  `bank_details` varchar(20) NOT NULL,
  `emp_accnt_money` int(50) NOT NULL,
  `emp_rating` float NOT NULL,
  `emp_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `emp_id`, `emp_name`, `emp_father_name`, `emp_email`, `emp_personal_email`, `emp_num`, `company_num`, `emp_pwd`, `emp_adrs`, `emp_image`, `aadhar_card`, `pan_card`, `bank_details`, `emp_accnt_money`, `emp_rating`, `emp_status`) VALUES
(1, 608235, 'vanaja', 'yadagiri', 'vanajam@gmail.com', 'vanajam@gmail.com', '6281763165', '9090909090', '123456', 'hyderabad', 'upload/employees/1e0bc135f390df94a3cc5f8d3d5f771a.png', '963258741236', '654789', '741258963214', 800, 5, 1),
(2, 495028, 'charan', 'raj', 'charanraj2828@gmail.com', 'charanraj2828@gmail.com', '8099159487', '9090909090', 'charan@123', 'hyderabad', 'upload/employees/fd9f0fa5c75d21b82e2453ed60bc3867.JPG', '789654123123', '963258', '741258963214', 500, 5, 1),
(3, 603945, 'naveena ', 'jagan', 'naveena@gmail.com', 'naveena@gmail.com', '9908562939', '9090909090', 'naveena@123', 'vijayawada', 'upload/employees/93cce28d754b3dcbdc80f5a092f9cf08.jpg', '987456321987', '789456', '789654123789', 1800, 4.8, 1),
(4, 194562, 'nagaraju', 'nagaraj', 'nagaraju@gmail.com', 'nagaraju@gmail.com', '9090909090', '9874563210', '123456', 'vijayawada', 'upload/employees/47a8d5ac9c7ec7e93d6456bd8aa420e0.jpeg', '123456789123', '123456', '789654123654', 1500, 4, 1),
(5, 21857, 'soniya1', 'yadagiri1', 'soniya@gmail.com', 'soniya@gmail.com', '6281763165', '9090909090', '123456', 'nalgonda', 'upload/employees/0d5462fc0a5e665cb05aad685cf12794.jpg', '123456789123', '123456789', '987456321456', 500, 4.5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `emp_wallet`
--

CREATE TABLE `emp_wallet` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(50) NOT NULL,
  `previous_balence` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1.debit,2.credit',
  `credit` int(11) NOT NULL DEFAULT 0,
  `debit` int(11) NOT NULL DEFAULT 0,
  `total_balence` int(11) NOT NULL,
  `credited_by` varchar(50) NOT NULL DEFAULT '--',
  `debit_for` varchar(11) NOT NULL DEFAULT '--'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_wallet`
--

INSERT INTO `emp_wallet` (`id`, `emp_id`, `previous_balence`, `type`, `credit`, `debit`, `total_balence`, `credited_by`, `debit_for`) VALUES
(1, '603945', 0, 1, 500, 0, 500, 'admin', '--'),
(2, '603945', 500, 1, 500, 0, 1000, 'admin', '--'),
(3, '603945', 1000, 1, 500, 0, 1500, 'admin', '--'),
(4, '603945', 1500, 2, 0, 500, 1000, '--', 'customer'),
(5, '603945', 1000, 2, 0, 200, 800, '--', 'customer'),
(6, '603945', 800, 1, 1000, 0, 1800, 'admin', '--'),
(7, '608235', 0, 1, 1000, 0, 1000, 'admin', '--'),
(8, '608235', 1000, 2, 0, 400, 600, '--', 'customer'),
(9, '603945', 1800, 2, 0, 400, 1400, '--', 'customer'),
(10, '603945', 1400, 1, 600, 0, 2000, 'admin', '--'),
(11, '608235', 600, 2, 600, 0, 1200, 'admin', '--'),
(12, '608235', 1200, 1, 0, 300, 900, '--', 'customer'),
(13, '390548', 0, 2, 1000, 0, 1000, 'admin', '--'),
(14, '390548', 1000, 2, 200, 0, 1200, 'admin', '--'),
(15, '603945', 2000, 2, 3000, 0, 5000, 'admin', '--'),
(16, '495028', 0, 2, 3000, 0, 3000, 'admin', '--'),
(17, '495028', 3000, 1, 0, 1500, 1500, '--', 'customer'),
(18, '495028', 1500, 2, 2000, 0, 3500, 'admin', '--'),
(19, '608235', 900, 2, 1100, 0, 2000, 'admin', '--'),
(20, '608235', 2000, 1, 0, 500, 1500, '--', 'customer'),
(21, '608235', 1500, 2, 3000, 0, 4500, 'admin', '--'),
(22, '390548', 1200, 2, 500, 0, 1700, 'admin', '--'),
(23, '390548', 1700, 1, 0, 700, 1000, '--', 'customer'),
(24, '390548', 1000, 2, 2000, 0, 3000, 'admin', '--'),
(25, '495028', 3500, 1, 0, 2000, 1500, '--', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `gallerys`
--

CREATE TABLE `gallerys` (
  `id` int(5) NOT NULL,
  `image_name` varchar(125) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallerys`
--

INSERT INTO `gallerys` (`id`, `image_name`, `image`, `date`) VALUES
(9, 'Bathroom Cleaning', 'upload/gallery/f487f2185d3859a8d4dac0b099d2e31c.jpg', '2018-09-30'),
(10, 'sofa cleaning', 'upload/gallery/5285759eeb09231a4e12aba6ec1b2ac4.jpg', '2018-09-30'),
(11, 'carpet cleaning', 'upload/gallery/56143d03ed20320694e8d059aac84221.jpg', '2018-09-30'),
(12, 'matress cleaning', 'upload/gallery/01fc1d12bd3791944630e35568899303.jpg', '2018-09-30'),
(13, 'Bathroom Cleaning', 'upload/gallery/a88668a83b36af08683b685fc6fcfbd2.jpg', '2018-09-30'),
(14, 'Kitchen cleaning', 'upload/gallery/a11a345403c352997386379b3a8a8bcc.jpg', '2018-09-30'),
(15, 'Home cleaning', 'upload/gallery/87160d85a8b7121ab2992d86188802b0.jpg', '2018-09-30'),
(16, 'sofa cleaning', 'upload/gallery/189ee9d5d11f08f4e2194a5f2a05acb9.jpg', '2018-09-30');

-- --------------------------------------------------------

--
-- Table structure for table `horizantalimage`
--

CREATE TABLE `horizantalimage` (
  `id` int(5) NOT NULL,
  `image_name` varchar(125) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `horizantalimage`
--

INSERT INTO `horizantalimage` (`id`, `image_name`, `image`, `description`, `date`) VALUES
(1, 'Kitchen cleaning', 'upload/himage/283e24d289cf6e6740a2f603825e12dd.jpg', 'kitchen cleaning,kitchen cleaning,kitchen cleaning', '19-01-24'),
(2, 'home cleaning', 'upload/himage/ee5e0c5121a3862c4adcd8b5974ef628.jpg', 'Home cleaning,home cleaning', '19-01-24'),
(3, 'Bathroom cleaning', 'upload/himage/631cd350ccd87085f29adf1b655c5875.jpg', 'Home cleaning,home cleaning', '19-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `offers_title` varchar(255) NOT NULL,
  `offer_desc` longtext NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `read_status` int(2) NOT NULL DEFAULT 0,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `offers_title`, `offer_desc`, `start_date`, `end_date`, `read_status`, `date`) VALUES
(1, 'offers', '<p>bcyusyguiskgj</p>', '2018-11-08', '2018-11-09', 0, '2018-11-07'),
(2, 'offers1', '<p>nbfsiugudg</p>', '2018-11-10', '2018-11-11', 1, '2018-11-07'),
(3, 'offers12', '<p>offers12</p>', '2018-11-08', '2018-11-10', 1, '2018-11-07'),
(4, 'offers-offers', '<p>offers-offers<br></p>', '2018-11-12', '2018-11-14', 1, '2018-11-07');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `option_name` varchar(100) NOT NULL,
  `option_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `option_name`, `option_value`) VALUES
(1, 'fb', 'https://www.facebook.com/v3care/'),
(2, 'twitter', 'https://twitter.com/care_v3'),
(3, 'google_plus', 'http://facebook.com'),
(4, 'contact_mobile', '9959395056'),
(5, 'contact_email', 'info@v3care.com'),
(6, 'youtube', ''),
(7, 'instagram', 'http://twitter.com/go-klean4u'),
(8, 'logo', 'uploads/logo3.png'),
(10, 'address', '501, Diamond House, Beside MAA TV Office, Punjagutta, Punjagutta Officers Colony, Punjagutta, Hyderabad'),
(11, 'site_name', 'v3care'),
(14, 'admin_url_base', 'admin'),
(15, 'linkdin', ''),
(16, 'payumoney_merchant_key', 'rjQUPktU'),
(17, 'payumoney_salt', 'e5iIg1jwi8'),
(18, 'payumoney_status', 'test'),
(19, 'dextol_commission', '15'),
(22, 'dextol_super_admin_id', 'SUP15112'),
(34, 'payumoney_mode', 'test'),
(36, 'skype', ''),
(37, 'google_maps_url', 'https://plus.google.com/u/1/102681668617365147793'),
(38, 'website_url', 'http://v3care.com/'),
(39, 'maintenance_mode', '0'),
(40, 'reward_points', '100'),
(41, 'minimum_order_amount', '0'),
(42, 'reward_points_required', '100');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL DEFAULT '0',
  `payment_type` varchar(255) NOT NULL,
  `mobile` bigint(15) NOT NULL,
  `total_amount` float(60,2) NOT NULL,
  `total_order_amount` float(60,2) NOT NULL COMMENT 'total order amount without gst charges',
  `coupon` varchar(50) NOT NULL,
  `coupon_amount` float(60,2) NOT NULL,
  `reward_points` bigint(55) DEFAULT NULL,
  `gst_charges` float(60,2) NOT NULL,
  `payment_gateway_charges` float(60,2) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `shipping_address` text NOT NULL,
  `time_slot` int(5) NOT NULL,
  `location` int(5) NOT NULL,
  `door_no` varchar(125) NOT NULL,
  `land_mark` varchar(125) NOT NULL,
  `user_id` varchar(255) NOT NULL COMMENT 'user id',
  `emp_id` int(11) NOT NULL,
  `service_date` date NOT NULL,
  `date_of_order` date NOT NULL,
  `date_of_payment` datetime NOT NULL,
  `order_status` varchar(55) NOT NULL,
  `payment_status` varchar(55) NOT NULL,
  `work_status` varchar(250) NOT NULL,
  `emp_text` varchar(255) NOT NULL,
  `cancelled_reason` varchar(255) NOT NULL,
  `reason_for_text` varchar(255) NOT NULL,
  `closedJob_status` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `payment_type`, `mobile`, `total_amount`, `total_order_amount`, `coupon`, `coupon_amount`, `reward_points`, `gst_charges`, `payment_gateway_charges`, `txn_id`, `shipping_address`, `time_slot`, `location`, `door_no`, `land_mark`, `user_id`, `emp_id`, `service_date`, `date_of_order`, `date_of_payment`, `order_status`, `payment_status`, `work_status`, `emp_text`, `cancelled_reason`, `reason_for_text`, `closedJob_status`, `status`) VALUES
(1, 'OD9213847', 'cod', 6281763165, 3960.00, 3960.00, 'RAIN12', 540.00, NULL, 0.00, 0.00, '54f9041470dd46878f4b07ef23df1ef8', 'dfgd', 0, 3, '', '', 'CUST72653', 0, '2019-06-20', '2019-06-18', '2019-06-21 10:44:04', 'completed', 'completed', '', '', '', '', '', 1),
(3, 'OD4853690', 'cod', 9908562939, 300.00, 300.00, '', 0.00, 0, 0.00, 0.00, '', '', 0, 0, 'v', '', 'CUST82613', 0, '2019-06-20', '2019-06-20', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(4, 'OD5971368', 'cod', 6281763165, 4000.00, 4000.00, '', 0.00, NULL, 0.00, 0.00, '0ce6cfc6a8884c0080bfc283009e5081', 'dfgd', 0, 3, '', '', 'CUST72653', 0, '2019-06-22', '2019-06-20', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(5, 'OD2961780', 'cod', 6281763165, 750.00, 750.00, '', 0.00, NULL, 0.00, 0.00, '27ca538b274c4890920262ca5a1adf61', 'dfgd', 0, 3, '', '', 'CUST72653', 0, '2019-06-21', '2019-06-20', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(6, 'OD3147905', 'cod', 6281763165, 6000.00, 6000.00, '', 0.00, NULL, 0.00, 0.00, 'f9188610e66543698ac07729d78ce7d6', 'dfgd', 0, 3, '', '', 'CUST72653', 0, '2019-06-21', '2019-06-20', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(7, 'OD0714528', 'cod', 6281763165, 4500.00, 4500.00, '', 0.00, NULL, 0.00, 0.00, '5aa303adb54a42c1b7d931e2fa4b0564', 'dfgd', 0, 3, '', '', 'CUST72653', 0, '2019-06-21', '2019-06-20', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(8, 'OD7569143', 'cod', 6281763165, 750.00, 750.00, '', 0.00, NULL, 0.00, 0.00, '960ee884e3fe45258fbd004a14798592', 'dfgd', 0, 3, '', '', 'CUST72653', 0, '2019-06-22', '2019-06-20', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(9, 'OD6723894', 'cod', 9533113034, 6000.00, 6000.00, '', 0.00, NULL, 0.00, 0.00, 'a6e69d904af041fd9d6cf19749ed8d65', 'dfgd', 0, 4, '', '', 'CUST72653', 0, '2019-06-22', '2019-06-20', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(10, 'OD2491305', 'cod', 9959395056, 6000.00, 6000.00, '', 0.00, NULL, 0.00, 0.00, '149bdf4c81dd406fb3038f6e35732807', 'dfgd', 0, 3, '', '', 'CUST72653', 0, '2019-06-21', '2019-06-20', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(11, 'OD6451230', 'cod', 6281763165, 1000.00, 1000.00, '', 0.00, NULL, 0.00, 0.00, '85a01fead97d471ba611565fe154f349', 'hyderabad', 0, 3, '', '', 'CUST95802', 0, '2019-06-21', '2019-06-20', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(12, 'OD0814975', 'cod', 9959395056, 7000.00, 7000.00, '', 0.00, NULL, 0.00, 0.00, 'ec35b9c361f84a8991393c8d04d99826', 'dfgd', 0, 3, '', '', 'CUST72653', 0, '2019-06-21', '2019-06-20', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(15, 'OD7618245', 'cod', 9959395056, 6000.00, 6000.00, '', 0.00, NULL, 0.00, 0.00, '40369d5b45e3460fbc257da244bdef7b', 'dfgd', 0, 3, '', '', 'CUST72653', 0, '2019-06-21', '2019-06-20', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(16, 'OD5940783', 'cod', 9959395056, 250.00, 250.00, '', 0.00, NULL, 0.00, 0.00, '3f21efbac9594b80a06906c9c73c5e03', 'dfgd', 0, 3, '', '', 'CUST72653', 0, '2019-06-25', '2019-06-20', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(20, 'OD4187536', 'cod', 6281763165, 4000.00, 4000.00, '', 0.00, NULL, 0.00, 0.00, '7273a7b1a8744f9e9de990b080dd5b5a', 'hyderabad', 0, 3, '', '', 'CUST59042', 0, '2019-06-22', '2019-06-21', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(21, 'OD1894567', 'cod', 6281763165, 1000.00, 1000.00, '', 0.00, NULL, 0.00, 0.00, '9afecc836d30486cb19f7919e575fb14', 'hyderabad', 0, 3, '', '', 'CUST59042', 0, '2019-06-22', '2019-06-21', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(22, 'OD3612780', 'cod', 6281763165, 750.00, 750.00, '', 0.00, NULL, 0.00, 0.00, 'e736f5ddbcb043b8867c793a10a0e4a2', 'hyderabad', 0, 3, '', '', 'CUST59042', 0, '2019-06-24', '2019-06-21', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(23, 'OD5786192', 'cod', 6281763165, 1000.00, 1000.00, '', 0.00, NULL, 0.00, 0.00, '2f4f09c4ee6f419ebe8c7253e18ade32', 'hyderabad', 0, 3, '', '', 'CUST59042', 0, '2019-06-23', '2019-06-21', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(24, 'OD4152089', 'cod', 9959395056, 7000.00, 7000.00, '', 0.00, NULL, 0.00, 0.00, '4c735ed6a9f944a0bc6a844eb8779b92', 'dfgd', 0, 3, '', '', 'CUST72653', 0, '2019-06-24', '2019-06-21', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(25, 'OD8903721', 'cod', 6281763165, 1500.00, 1500.00, '', 0.00, NULL, 0.00, 0.00, '568d41ecaad04e51a23419a7239ab042', 'hyderabad', 0, 3, '', '', 'CUST59042', 608235, '2019-06-24', '2019-06-21', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(26, 'OD0976154', 'call', 7349070307, 897.00, 897.00, '', 0.00, NULL, 0.00, 0.00, '', 'hyderabad', 10, 3, '', '', 'CUST64752', 0, '2019-06-25', '2019-06-21', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(27, 'OD7863025', 'call', 6281763165, 300.00, 300.00, '', 0.00, NULL, 0.00, 0.00, '', 'vsxczvc', 10, 3, '', '', 'CUST95802', 0, '2019-06-22', '2019-06-21', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(28, 'OD5780469', 'call', 6281763165, 750.00, 750.00, '', 0.00, NULL, 0.00, 0.00, '', 'djhsjdn', 1, 3, '', '', 'CUST95802', 0, '2019-06-24', '2019-06-21', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1),
(30, 'OD0681597', 'call', 9618521510, 750.00, 750.00, '', 0.00, NULL, 0.00, 0.00, '', 'kukatpally', 1, 3, '', '', 'CUST03475', 0, '2019-06-25', '2019-06-21', '2019-06-21 10:42:24', 'Pending', 'completed', '', '', '', '', '', 1),
(31, 'OD5703426', 'cod', 9959395056, 6000.00, 6000.00, '', 0.00, NULL, 0.00, 0.00, '3651ab674eb74bbd8d8f094be2415927', 'dfgdc', 0, 3, '', '', 'CUST72653', 603945, '2019-06-25', '2019-06-24', '0000-00-00 00:00:00', 'Pending', 'Pending', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_product_id` int(11) NOT NULL,
  `order_id` varchar(15) NOT NULL,
  `order_id_prefix` varchar(12) NOT NULL,
  `service_id` varchar(15) NOT NULL,
  `sub_service_id` varchar(15) NOT NULL,
  `package_id` int(10) DEFAULT NULL,
  `sub_package_id` int(10) DEFAULT NULL,
  `price` varchar(10) NOT NULL,
  `qty` tinyint(3) NOT NULL,
  `time_slot` varchar(50) NOT NULL,
  `service_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_product_id`, `order_id`, `order_id_prefix`, `service_id`, `sub_service_id`, `package_id`, `sub_package_id`, `price`, `qty`, `time_slot`, `service_date`) VALUES
(1, 'OD9213847', 'HOM8205917', '832917', '', 1, NULL, '4500', 1, '2', '06/20/2019'),
(3, 'OD4853690', 'SOF6345190', '265897', '', 20, NULL, '300', 1, '3', '20-06-2019'),
(4, 'OD5971368', 'KIT0823795', '805362', '', 5, NULL, '4000', 1, '1', '06/22/2019'),
(5, 'OD2961780', 'CPT2198467', '789610', '', 7, NULL, '750', 1, '1', '06/21/2019'),
(6, 'OD3147905', 'HOM8204715', '832917', '', 2, NULL, '6000', 1, '2', '06/21/2019'),
(7, 'OD0714528', 'HOM2594018', '832917', '', 1, NULL, '4500', 1, '1', '06/21/2019'),
(8, 'OD7569143', 'CPT2864195', '789610', '', 7, NULL, '750', 1, '2', '06/22/2019'),
(9, 'OD6723894', 'HOM5617384', '832917', '', 2, NULL, '6000', 1, '1', '06/22/2019'),
(10, 'OD2491305', 'HOM9143560', '832917', '', 2, NULL, '6000', 1, '1', '06/21/2019'),
(11, 'OD6451230', 'CPT1932406', '789610', '', 8, NULL, '1000', 1, '2', '06/21/2019'),
(12, 'OD0814975', 'HOM2671403', '832917', '', 3, NULL, '7000', 1, '3', '06/21/2019'),
(15, 'OD7618245', 'HOM3689204', '832917', '', 2, NULL, '6000', 1, '3', '06/21/2019'),
(16, 'OD5940783', 'CPT6430291', '789610', '', 10, NULL, '250', 1, '2', '06/25/2019'),
(20, 'OD4187536', 'KIT1604953', '805362', '', 5, NULL, '4000', 1, '1', '06/22/2019'),
(21, 'OD1894567', 'CPT6489231', '789610', '', 8, NULL, '1000', 1, '1', '06/22/2019'),
(22, 'OD3612780', 'CPT0264975', '789610', '', 7, NULL, '750', 1, '2', '06/24/2019'),
(23, 'OD5786192', 'CPT3648091', '789610', '', 8, NULL, '1000', 1, '2', '06/23/2019'),
(24, 'OD4152089', 'HOM1890567', '832917', '', 3, NULL, '7000', 1, '1', '06/24/2019'),
(25, 'OD8903721', 'WIN0586714', '746081', '', 33, NULL, '1500', 1, '1', '06/24/2019'),
(26, 'OD0976154', 'BAT3068492', '675420', '', 14, NULL, '897', 1, '10am to 1pm', '2019-06-25'),
(27, 'OD7863025', 'SOF1329785', '265897', '', 20, NULL, '300', 1, '10am to 1pm', '2019-06-22'),
(28, 'OD5780469', 'MAT7483216', '287905', '', 11, NULL, '750', 1, '1', '2019-06-24'),
(30, 'OD0681597', 'MAT3946801', '287905', '', 11, NULL, '750', 1, '1', '2019-06-25'),
(31, 'OD5703426', 'HOM3096541', '832917', '', 2, NULL, '6000', 1, '1', '06/25/2019');

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` int(2) NOT NULL,
  `mobile` varchar(55) NOT NULL DEFAULT '0',
  `otp` int(6) NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`id`, `mobile`, `otp`, `is_verified`) VALUES
(1, '6281763165', 9235, 0),
(4, '9959395056', 2560, 0),
(15, '8099159487', 9201, 0);

-- --------------------------------------------------------

--
-- Table structure for table `otp_verification`
--

CREATE TABLE `otp_verification` (
  `id` int(2) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `mobile` varchar(55) NOT NULL DEFAULT '0',
  `verification_key` varchar(255) NOT NULL,
  `date_of_verification` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otp_verification_forgot_pass`
--

CREATE TABLE `otp_verification_forgot_pass` (
  `id` int(5) NOT NULL,
  `mobile` bigint(15) NOT NULL,
  `verification_key` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otp_verification_reg`
--

CREATE TABLE `otp_verification_reg` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` bigint(15) NOT NULL,
  `verification_key` varchar(255) NOT NULL,
  `date_of_verification` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(5) NOT NULL,
  `service_id` int(5) NOT NULL,
  `package_name` varchar(75) NOT NULL,
  `package_image` varchar(255) NOT NULL,
  `package_price` varchar(15) NOT NULL,
  `package_desc` varchar(10000) NOT NULL,
  `sub_package_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `service_id`, `package_name`, `package_image`, `package_price`, `package_desc`, `sub_package_status`) VALUES
(1, 832917, '1BHK Deep Clean ', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '4500', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=\"removed\"><p xss=\"removed\"><span xss=\"removed\"><b>Service Includes:</b></span></p><ul xss=\"removed\"><li xss=\"removed\">Manual cleaning of floor</li><li xss=\"removed\">Cleaning of windows, window panes,window channels and grills</li><li xss=\"removed\">Removal of cobwebs</li><li xss=\"removed\">Vacuuming of sofa, chairs, mattresses, carpets, curtains</li><li xss=\"removed\">Cleaning and disinfection of washrooms</li><li xss=\"removed\">Dusting of Gadgets</li><li xss=\"removed\">De-greasing of kitchen area</li><li xss=\"removed\">Cleaning of cabinets and wardrobes externally</li><li xss=\"removed\">Cleaning of fans, tubes, switchboard, bulbs, door handles</li><li xss=\"removed\">Fridge, microwave and chimney exterior cleaning</li></ul><p xss=\"removed\"><span xss=\"removed\"><b>Service Time:</b></span> 8-12 Hours (depending on BHK)</p><p xss=\"removed\"><b><span xss=\"removed\">No. of Servicemen:</span> </b>2-6 (depending on BHK)</p><p xss=\"removed\"><span xss=\"removed\"><b>Note:</b></span></p><ul xss=\"removed\"><li xss=\"removed\">Customer to provide for stool/ladder, water and electrical connection</li><li xss=\"removed\">Wall cleaning is not included</li><li xss=\"removed\">For Office and Bungalow cleaning, quotation will be provided post inspection</li><li xss=\"removed\">Cost inclusive of GST</li></ul></ul>', 1),
(2, 832917, '2BHK Deep Clean ', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '6000', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=\"removed\"><p xss=\"removed\"><span xss=\"removed\"><b>Service Includes:</b></span></p><ul xss=\"removed\"><li xss=\"removed\">Manual cleaning of floor</li><li xss=\"removed\">Cleaning of windows, window panes,window channels and grills</li><li xss=\"removed\">Removal of cobwebs</li><li xss=\"removed\">Vacuuming of sofa, chairs, mattresses, carpets, curtains</li><li xss=\"removed\">Cleaning and disinfection of washrooms</li><li xss=\"removed\">Dusting of Gadgets</li><li xss=\"removed\">De-greasing of kitchen area</li><li xss=\"removed\">Cleaning of cabinets and wardrobes externally</li><li xss=\"removed\">Cleaning of fans, tubes, switchboard, bulbs, door handles</li><li xss=\"removed\">Fridge, microwave and chimney exterior cleaning</li></ul><p xss=\"removed\"><span xss=\"removed\"><b>Service Time:</b></span> 8-12 Hours (depending on BHK)</p><p xss=\"removed\"><b><span xss=\"removed\">No. of Servicemen:</span> </b>2-6 (depending on BHK)</p><p xss=\"removed\"><span xss=\"removed\"><b>Note:</b></span></p><ul xss=\"removed\"><li xss=\"removed\">Customer to provide for stool/ladder, water and electrical connection</li><li xss=\"removed\">Wall cleaning is not included</li><li xss=\"removed\">For Office and Bungalow cleaning, quotation will be provided post inspection</li><li xss=\"removed\">Cost inclusive of GST</li></ul></ul>', 1),
(3, 832917, '3BHK Deep Clean ', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '7000', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=\"removed\"><p xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><b>Service Includes:</b></span></span></p><ul xss=\"removed\"><li xss=\"removed\">Manual cleaning of floor</li><li xss=\"removed\">Cleaning of windows, window panes,window channels and grills</li><li xss=\"removed\">Removal of cobwebs</li><li xss=\"removed\">Vacuuming of sofa, chairs, mattresses, carpets, curtains</li><li xss=\"removed\">Cleaning and disinfection of washrooms</li><li xss=\"removed\">Dusting of Gadgets</li><li xss=\"removed\">De-greasing of kitchen area</li><li xss=\"removed\">Cleaning of cabinets and wardrobes externally</li><li xss=\"removed\">Cleaning of fans, tubes, switchboard, bulbs, door handles</li><li xss=\"removed\">Fridge, microwave and chimney exterior cleaning</li></ul><p xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><b>Service Time:</b></span></span> 8-12 Hours (depending on BHK)</p><p xss=\"removed\"><span xss=\"removed\"><b><span xss=\"removed\">No. of Servicemen:</span> </b></span>2-6 (depending on BHK)</p><p xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><b>Note:</b></span></span></p><ul xss=\"removed\"><li xss=\"removed\">Customer to provide for stool/ladder, water and electrical connection</li><li xss=\"removed\">Wall cleaning is not included</li><li xss=\"removed\">For Office and Bungalow cleaning, quotation will be provided post inspection</li><li xss=\"removed\">Cost inclusive of GST</li></ul></ul>', 1),
(5, 805362, 'Basic Kitchen Cleaning', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '4000', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Complete de-greasing, wiping, and dusting</li><li xss=removed>Thorough brushing and removal of dirt</li><li xss=removed>We use antimicrobial and antibacterial solution to kill bacteria</li><li xss=removed>Cleaning using modern equipment and machinery</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 2-3 Hours</p><p xss=removed><span xss=removed><b>No. of Servicemen:</b></span> 1-2 (Depends on kitchen size)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>The service scope is restricted to space cleaning of the kitchen only</li><li xss=removed>Utensil cleaning is not included in this service</li><li xss=removed>Customer to provide for water and electrical connection</li></ul></ul>', 1),
(6, 805362, 'Deep Kitchen Cleaning', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '6000', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Complete de-greasing, wiping, and dusting</li><li xss=removed>Thorough brushing and removal of dirt</li><li xss=removed>We use antimicrobial and antibacterial solution to kill bacteria</li><li xss=removed>Cleaning using modern equipment and machinery</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 2-3 Hours</p><p xss=removed><b><span xss=removed>No. of Servicemen:</span> </b>1-2 (Depends on kitchen size)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>The service scope is restricted to space cleaning of the kitchen only</li><li xss=removed>Utensil cleaning is not included in this service</li><li xss=removed>Customer to provide for water and electrical connection</li></ul></ul>', 1),
(7, 789610, '6 X 5 sqft Carpet Shampoo', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '750', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><b><span xss=removed>Service Time:</span> </b>1-3 Hours</p><p xss=removed><b><span xss=removed>No. of Servicemen:</span> </b>1-2 (depending on the size)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(8, 789610, '8 X 8 sqft Carpet Shampoo', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '1000', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 1-3 Hours</p><p xss=removed><span xss=removed><b>No. of Servicemen:</b></span> 1-2 (depending on the size)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(9, 789610, '7 X 5 sqft Carpet Shampoo & Sanitize', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '1250', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 1-3 Hours</p><p xss=removed><span xss=removed><b>No. of Servicemen:</b></span> 1-2 (depending on the size)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(10, 789610, '10 X 8 sqft Carpet Shampoo & Sanitize', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '250', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 1-3 Hours</p><p xss=removed><span xss=removed><b>No. of Servicemen:</b></span> 1-2 (depending on the size)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(11, 287905, 'Single Mattress Shampoo', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '750', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><b><span xss=removed>Service Time:</span> </b>1-3 Hours</p><p xss=removed><span xss=removed><b>No. of Servicemen:</b></span> 1-2 (depending on the size)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(12, 287905, 'Double King Mattress Shampoo', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '1100', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 1-3 Hours</p><p xss=removed><b><span xss=removed>No. of Servicemen:</span> </b>1-2 (depending on the size)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(13, 287905, 'Double King Mattress Shampoo         ', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '1250', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 1-3 Hours</p><p xss=removed><span xss=removed><b>No. of Servicemen:</b></span> 1-2 (depending on the size)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(14, 675420, '1 Bath Room', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '897', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Cleaning of tiles, faucets, sinks, taps, pots, shelves, cabinets, mirror</li><li xss=removed>Disinfection of bathroom</li><li xss=removed>Cleaning of washroom windows</li></ul><p xss=removed><b><span xss=removed>Service Time:</span> </b>1 Hour</p><p xss=removed><span xss=removed><b>No. of Servicemen:</b></span> 1-2 (depending on no. of washrooms)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Customer to provide for stool/ladder, water and electrical connection</li><li xss=removed>Hard-water stains are subject to removal</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(15, 675420, '1 Bath Room', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '897', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Cleaning of tiles, faucets, sinks, taps, pots, shelves, cabinets, mirror</li><li xss=removed>Disinfection of bathroom</li><li xss=removed>Cleaning of washroom windows</li></ul><p xss=removed><b><span xss=removed>Service Time:</span> </b>1 Hour</p><p xss=removed><span xss=removed><b>No. of Servicemen:</b></span> 1-2 (depending on no. of washrooms)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Customer to provide for stool/ladder, water and electrical connection</li><li xss=removed>Hard-water stains are subject to removal</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(16, 675420, '1 Bath Room', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '897', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Cleaning of tiles, faucets, sinks, taps, pots, shelves, cabinets, mirror</li><li xss=removed>Disinfection of bathroom</li><li xss=removed>Cleaning of washroom windows</li></ul><p xss=removed><b><span xss=removed>Service Time:</span> </b>1 Hour</p><p xss=removed><span xss=removed><b>No. of Servicemen:</b></span> 1-2 (depending on no. of washrooms)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Customer to provide for stool/ladder, water and electrical connection</li><li xss=removed>Hard-water stains are subject to removal</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(17, 675420, '2 Bath Room', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '1600', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Cleaning of tiles, faucets, sinks, taps, pots, shelves, cabinets, mirror</li><li xss=removed>Disinfection of bathroom</li><li xss=removed>Cleaning of washroom windows</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 1 Hour</p><p xss=removed><span xss=removed><b>No. of Servicemen:</b></span> 1-2 (depending on no. of washrooms)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Customer to provide for stool/ladder, water and electrical connection</li><li xss=removed>Hard-water stains are subject to removal</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(18, 675420, '3 Bath Room', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '2200', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Cleaning of tiles, faucets, sinks, taps, pots, shelves, cabinets, mirror</li><li xss=removed>Disinfection of bathroom</li><li xss=removed>Cleaning of washroom windows</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 1 Hour</p><p xss=removed><span xss=removed><b>No. of Servicemen:</b></span> 1-2 (depending on no. of washrooms)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Customer to provide for stool/ladder, water and electrical connection</li><li xss=removed>Hard-water stains are subject to removal</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(19, 675420, '4 Bath Room', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '2797', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Cleaning of tiles, faucets, sinks, taps, pots, shelves, cabinets, mirror</li><li xss=removed>Disinfection of bathroom</li><li xss=removed>Cleaning of washroom windows</li></ul><p xss=removed><b><span xss=removed>Service Time:</span> </b>1 Hour</p><p xss=removed><span xss=removed><b>No. of Servicemen:</b></span> 1-2 (depending on no. of washrooms)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Customer to provide for stool/ladder, water and electrical connection</li><li xss=removed>Hard-water stains are subject to removal</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(20, 265897, '5 Seats Sofa Shampooing', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '300', '<ul><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 1-3 Hours</p><p xss=removed><span xss=removed><b>No. of servicemen:</b></span> 1-3 (depending on no. of seats)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Cost is inclusive of Cushion Cleaning</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul><li xss=\"removed\"><font face=\"Times New Roman\" xss=\"removed\"><br></font><br></li></ul>', 1),
(21, 265897, '6 Seats Sofa Shampooing', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '300', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 1-3 Hours</p><p xss=removed><span xss=removed><b>No. of servicemen:</b></span> 1-3 (depending on no. of seats)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Cost is inclusive of Cushion Cleaning</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(22, 265897, '7 Seats Sofa Shampooing', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '300', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 1-3 Hours</p><p xss=removed><span xss=removed><b>No. of servicemen:</b></span> 1-3 (depending on no. of seats)</p><p xss=removed><span xss=removed>Note:</span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Cost is inclusive of Cushion Cleaning</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(23, 265897, '8 Seats Sofa Shampooing', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '300', '<ul><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><b><span xss=removed>Service Time:</span> </b>1-3 Hours</p><p xss=removed><span xss=removed><b>No. of servicemen:</b></span> 1-3 (depending on no. of seats)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Cost is inclusive of Cushion Cleaning</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(24, 265897, '5 Seats Sofa Shampoo & Sanitize', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '400', '<div><ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><b><span xss=removed>Service Time:</span> </b>1-3 Hours</p><p xss=removed><b><span xss=removed>No. of servicemen:</span> </b>1-3 (depending on no. of seats)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Cost is inclusive of Cushion Cleaning</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul></ul></div>', 1),
(25, 265897, '6 Seats Sofa Shampoo & Sanitize', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '400', '<ul><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 1-3 Hours</p><p xss=removed><span xss=removed><b>No. of servicemen:</b></span> 1-3 (depending on no. of seats)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Cost is inclusive of Cushion Cleaning</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(26, 265897, '7 Seats Sofa Shampoo & Sanitize', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '400', '<ul><p xss=removed><span xss=removed><b>Service Includes</b></span><span xss=removed>:</span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 1-3 Hours</p><p xss=removed><span xss=removed><b>No. of servicemen:</b></span> 1-3 (depending on no. of seats)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Cost is inclusive of Cushion Cleaning</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(27, 265897, '8 Seats Sofa Shampoo & Sanitize', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', '400', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 1-3 Hours</p><p xss=removed><b><span xss=removed>No. of servicemen:</span> </b>1-3 (depending on no. of seats)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Cost is inclusive of Cushion Cleaning</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul></ul><div><br></div>', 1),
(28, 265897, '6 Seat Chair Shampooing', 'uploads/packages/2a244478a1fe7ca27efefc9ceead69d4.png', '250', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 1-3 Hours</p><p xss=removed><span xss=removed><b>No. of servicemen:</b></span> 1-3 (depending on no. of seats)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Cost is inclusive of Cushion Cleaning</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul></ul><div><br></div>', 1),
(29, 265897, '7 Seat Chair Shampooing', 'uploads/packages/04ad18fc7fb632d530eeb9c370c8124e.png', '250', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><b><span xss=removed>Service Time:</span> </b>1-3 Hours</p><p xss=removed><span xss=removed><b>No. of servicemen:</b></span> 1-3 (depending on no. of seats)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Cost is inclusive of Cushion Cleaning</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul></ul><div><br></div>', 1),
(30, 265897, '8 Seat Chair Shampooing', '', '1999', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 1-3 Hours</p><p xss=removed><b><span xss=removed>No. of servicemen:</span> </b>1-3 (depending on no. of seats)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Cost is inclusive of Cushion Cleaning</li><li xss=removed>Customer to provide for water and electrical connection</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(31, 789610, 'single cot cleaning', 'uploads/packages/f62774750a950b23bf775a4804215739.png', '650', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Removal of stains and spots</li><li xss=removed>Loosening of ground-in soils</li><li xss=removed>Shampooing</li><li xss=removed>Drying using vacuuming</li></ul><p xss=removed><b><span xss=removed>Service Time:</span> </b>1-3 Hours</p><p xss=removed><b><span xss=removed>No. of servicemen:</span> </b>2-3 (depending on size of mattress)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Any hard/major stains may not immediately be removed</li><li xss=removed>A periodic cleaning will be required for the same</li><li xss=removed>Shampooing will be done only on one side of the mattress</li><li xss=removed>Will take upto 6 hours for completely drying and should not be used till completely dry</li><li xss=removed>Customer to provide for water and electrical connection</li></ul></ul>', 1),
(32, 265897, 'Queen size mattress', 'uploads/packages/08be0f7cf41c4135d27212974bb00fad.png', '780', 'Removal of stains and spots,Loosening of ground-in soils,Shampooing,Drying using vacuuming,Service Time: 1-3 Hours.', 1),
(33, 746081, 'Exterior windows clean', 'uploads/packages/ec3d217395d4bf5e5bfe3cbdf50e1bfa.png', '1500', '<p><span xss=removed>Enjoy our complete window washing services for your home. </span><span id=\"more-26\" xss=removed></span><span xss=removed>Whether you have a million dollar view or not, clean windows are a part of home maintenance, like it or not. And who doesn’t enjoy sparkling clean windows? It’s like a breath of fresh air.</span><br></p>', 1),
(34, 746081, 'Windows cleaned inside and out', 'uploads/packages/d8e240e1999e6295a5c6b077cfa725aa.png', '2000', '<p><span xss=removed>The glass is washed with environmentally friendly soap and window frames are wiped down with professional microfiber cleaning rags.</span></p><p><span xss=removed>In addition to cleaning the glass (either by hand, or with a deionized water-fed brush, depending on the specifics of your property), we also carefully remove and wash the screens with soap and water.</span></p><p><span xss=removed>Only professional window cleaning squeegees are used, and worn out squeegee rubbers are changed regularly for the best possible quality.</span><span xss=removed><br></span><span xss=removed><br></span><br></p>', 1),
(35, 746081, 'Window Tracks cleaned', 'uploads/packages/35b9fe3391002b4a9beb609f92f87c41.png', '2500', '<p><span xss=removed>When cleaning interior windows, booties are worn over shoes and drop cloths are placed on the floor to prevent dirty water from dripping onto the carpet or flooring. Ladder bonnets are placed on the top of ladders to prevent any markings on the walls when cleaning high windows inside.</span><br></p>', 1),
(36, 736821, 'Office cleaning ', 'uploads/packages/16671b25bfb18fc231b501f589fb6409.png', 'on inspection', '<p><span xss=removed>The way offices are maintained convey a lot about the energy and brand value of the companies they represent. In some cases the daily cleaning done by housekeeping teams is not good enough. For example, toilets are not spotlessly clean and often, the effect of hard water or water with saline content tell their own story on the tiles, floors, taps etc. Then, there may be a coat of dirt and dust on fans. One time cleaning of offices done by our housekeeping teams will bring the freshness and vitality back into offices.</span><br></p>', 0),
(38, 679804, 'Basic Cleaning', 'uploads/packages/49e4c6845956b82b6cfacee95bd5cb74.png', '3000', '<ul xss=removed><li xss=removed>Manual Scrubbing of Floor</li><li xss=removed>Removal of Dust, Dirt, Bird Droppings and Cobwebs</li><li xss=removed>Cleaning of Balcony Window, Window Pane, Window Channel and Grills.</li><li xss=removed>Wiping of Balcony Door</li></ul>', 1),
(39, 679804, 'Deep Cleaning', 'uploads/packages/3112d41b8d9738ff8b2a19fe82ddc1c1.png', '5000', '<ul xss=removed><li xss=removed>Manual Scrubbing of Floor</li><li xss=removed>Removal of Dust, Dirt, Bird Droppings and Cobwebs</li><li xss=removed>Cleaning of Balcony Window, Window Pane, Window Channel and Grills.</li><li xss=removed>Wiping of Balcony Door</li></ul>', 1),
(40, 702568, 'Industrial Cleaning', 'uploads/packages/1a4473bee6539286b1ca0e8541a92972.png', 'on inspection', '<p><span xss=removed>Backed by dexterous professionals, we have been successful in rendering excellent </span><b xss=removed>Industrial High Rise Cleaning Services</b><span xss=removed>, to the clients. While rendering the services, we make use of a professional window cleaning kit, to provide excellent cleaning services.</span><br></p>', 1),
(41, 786194, 'Marble Cleaning', 'uploads/packages/ef92abeb3189ce36c106ded0fc70df8c.png', 'on inspection', '<p>Marble Floor Cleaning Services</p>', 1),
(42, 786194, 'Granite Cleaning', 'uploads/packages/f1022453d41258bf161ed99af80a6f87.png', 'on inspection', '<p><span xss=removed>Granite countertops are beautiful centerpieces in the home. The durability of granite means you should be able to enjoy its beauty for years to come. Granite will, however, lose some of its luster and shine over time. Even if a sealant was applied when the countertop was installed, that sealant can wear thin and allow liquids to seep into the granite surface. Residue, germs, dirt and water spots can dramatically impact your granite surfaces.</span><br></p>', 1),
(43, 786194, 'Mosaic Polising', 'uploads/packages/9941a3776513f38b0aa124241060472f.png', 'on inspection', '<p xss=removed>Best <span xss=removed>Floor Polishing Services in Hyderabad</span> from Quotemykaam for thorough floor cleaning, floor restoration, polished and buffed floors looking shiny and glossy, just as good as new.</p><p xss=removed>The flooring at home or office gets dirty, cracks, scratches over a period of time and if remain unchecked, it can lead to permanent damages. Floor Polishing not only cleans and removes all the deepest stains but also restores the mirror like and factory finish look of your floors. We provide you with the professional methods for polishing all kinds of floors – <span xss=removed>marble polishing, granite polishing, mosaic polishing, wood floor polishing</span> and others.</p>', 1),
(44, 832917, '4BHK cleaning services', 'uploads/packages/51ec41f9f0f19eabd912665caec0c0d2.jpg', '500', '<p>udhsjdj jhfbusjhfdnj</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(5) NOT NULL,
  `name` varchar(125) NOT NULL,
  `reviews` varchar(255) NOT NULL,
  `date` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `reviews`, `date`) VALUES
(5, 'dwarak', 'He is very dependable and they do a great job.Am really happy the service.Would definitely recommend again.', '18-10-08'),
(6, 'Chetna', 'They were excellent cleaners. I highly recommend them for their services. Their work on the bathroom was perfect. Am very happy with the service.Would highly recommend again.', '18-10-08'),
(7, 'sarala', 'I have been using your service for about a year now and I must say , am very please with their work. They did a terrific job and I cant thank them enough.Would highly recommend.', '18-10-08'),
(8, 'Swapna', 'I loved their sofa shampooing technique. They cleaned every small area of the sofa well. Thanks a lot.Would recommend again.', '18-10-08');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` bigint(255) NOT NULL,
  `profile_id` varchar(255) NOT NULL,
  `profile_type` varchar(255) NOT NULL,
  `dextol_user_id` varchar(255) NOT NULL COMMENT 'patient id',
  `review_title` varchar(255) NOT NULL,
  `review_description` text NOT NULL,
  `date_of_reivew` datetime NOT NULL,
  `review_number` bigint(55) NOT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rewards_history`
--

CREATE TABLE `rewards_history` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `reward_type` varchar(55) NOT NULL,
  `used_reward_points` bigint(55) NOT NULL,
  `referral_id` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `type` varchar(55) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rewards_referals`
--

CREATE TABLE `rewards_referals` (
  `id` int(11) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `referral_id` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rewards_referals`
--

INSERT INTO `rewards_referals` (`id`, `user_id`, `referral_id`) VALUES
(1, 'CUST18275', 'Nav275'),
(2, 'CUST47360', 'Sur360'),
(3, 'CUST70259', 'Nav259'),
(4, 'CUST82613', 'Nav613'),
(5, 'CUST12967', 'nav967'),
(6, 'CUST57086', 'ash086'),
(7, 'CUST01647', 'per647'),
(8, 'CUST76849', 'per849'),
(9, 'CUST52047', 'per047'),
(10, 'CUST03168', 'l4DFcSHCov'),
(11, 'CUST36587', 'I0e7JG4Qm5'),
(12, 'CUST79856', 'ur5dhHW0Cf'),
(13, 'CUST92137', 'xmzkKlaLJP'),
(14, 'CUST46029', 'KuhedIAxGZ'),
(15, 'CUST68301', 'DVijl91eUb'),
(16, 'CUST75823', 'YWvdP5tTUy'),
(17, 'CUST65948', 'cz4d6HK5Oy'),
(18, 'CUST56082', 'fMlWxiqsrE'),
(19, 'CUST42761', 'DOgYAV0CWI'),
(20, 'CUST63182', 'IOALDEjQJe'),
(21, 'CUST34287', 'AkW05NZTyQ'),
(22, 'CUST04319', 'fDbWiFkyAj'),
(23, 'CUST03176', 'qTIH38MBQs'),
(24, 'CUST27983', 'ASMHyn4B10'),
(25, 'CUST27946', 'bFACgiIfKy'),
(26, 'CUST59042', 'bmMoWlvrjq'),
(27, 'CUST97465', '1olas4Kp6S');

-- --------------------------------------------------------

--
-- Table structure for table `rewards_reffered_by`
--

CREATE TABLE `rewards_reffered_by` (
  `id` int(10) NOT NULL,
  `ref_user_id` varchar(15) NOT NULL,
  `rec_user_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reward_points`
--

CREATE TABLE `reward_points` (
  `id` int(5) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `reward_points` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reward_points`
--

INSERT INTO `reward_points` (`id`, `user_id`, `reward_points`) VALUES
(1, 'CUST18275', 0),
(2, 'CUST47360', 0),
(3, 'CUST70259', 0),
(4, 'CUST82613', 0),
(5, 'CUST12967', 0),
(6, 'CUST57086', 0),
(7, 'CUST01647', 0),
(8, 'CUST76849', 0),
(9, 'CUST52047', 0),
(10, 'CUST03168', 0),
(11, 'CUST36587', 0),
(12, 'CUST79856', 0),
(13, 'CUST92137', 0),
(14, 'CUST46029', 0),
(15, 'CUST68301', 0),
(16, 'CUST75823', 0),
(17, 'CUST65948', 0),
(18, 'CUST56082', 0),
(19, 'CUST42761', 0),
(20, 'CUST63182', 0),
(21, 'CUST34287', 0),
(22, 'CUST04319', 0),
(23, 'CUST03176', 0),
(24, 'CUST27983', 0),
(25, 'CUST27946', 0),
(26, 'CUST59042', 0),
(27, 'CUST97465', 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(55) NOT NULL,
  `category_name` varchar(75) NOT NULL,
  `service_slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` longtext NOT NULL,
  `meta_keywords` longtext NOT NULL,
  `order_id_prefix` varchar(5) NOT NULL,
  `category_icon` text NOT NULL,
  `category_banner` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `sub_service_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `category_name`, `service_slug`, `meta_title`, `meta_description`, `meta_keywords`, `order_id_prefix`, `category_icon`, `category_banner`, `description`, `sub_service_status`) VALUES
(265897, 'Sofa Cleaning ', 'sofa-cleaning-services', 'Sofa Cleaning Services', 'Sofa Cleaning Services', 'Sofa Cleaning Services', 'SOF', 'uploads/services/mainservice/2d90dac759d9520e37aadc862c4944fd.png', 'uploads/services/mainservice/c5f2b6ed1828a1f6f3e4a762ae0a7dbf.jpg', '<p><span xss=removed>We offer a systematic approach to cleaning each home. Each of our cleaners are trained on all products and equipment , V3 care is a regular home cleaning service provider on a daily, weekly and fortnightly basis. Depending on personal preferences, our team will create a personalized cleaning plan that best suits you and your family.</span><br></p>', 1),
(287905, 'Mattress Cleaning ', 'matress-cleaning-services', 'Mattress Cleaning Services', 'Mattress Cleaning Services', 'Mattress Cleaning Services', 'MAT', 'uploads/services/mainservice/808d8aadb7fabfd6eecd9e44c9626334.png', 'uploads/services/mainservice/901588ff73999b636437900e6ac64701.jpg', '<p><span xss=removed>We offer a systematic approach to cleaning each home. Each of our cleaners are trained on all products and equipment , V3 care is a regular home cleaning service provider on a daily, weekly and fortnightly basis. Depending on personal preferences, our team will create a personalized cleaning plan that best suits you and your family.</span><br></p>', 1),
(675420, 'Bathroom Cleaning ', 'bathroom-cleaning-services', 'Bathroom Cleaning Services', 'Bathroom Cleaning Services', 'Bathroom Cleaning Services', 'BAT', 'uploads/services/mainservice/336aca0f178f093cc614839d2dbcb78b.png', 'uploads/services/mainservice/d2e87269dcd12fd299b4054c55628062.jpg', '<p><span xss=removed>We offer a systematic approach to cleaning each home. Each of our cleaners are trained on all products and equipment , V3 care is a regular home cleaning service provider on a daily, weekly and fortnightly basis. Depending on personal preferences, our team will create a personalized cleaning plan that best suits you and your family.</span><br></p>', 1),
(679804, 'Balcony', 'balcony', 'balcony Services', 'balcony Services', 'balcony Services', 'BAL', 'uploads/services/mainservice/618eedf640c06aca0c8edc51d307c145.png', 'uploads/services/mainservice/5dc9325d29144acb3a6cb0abe3d8374f.jpg', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Manual Scrubbing of Floor</li><li xss=removed>Removal of Dust, Dirt, Bird Droppings and Cobwebs</li><li xss=removed>Cleaning of Balcony Window, Window Pane, Window Channel and Grills.</li><li xss=removed>Wiping of Balcony Door</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 1 Hour</p><p xss=removed><span xss=removed><b>No. of Servicemen:</b></span> 1</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Customer to provide for stool/ladder and water</li><li xss=removed>1 balcony is considered upto 32 sq ft</li><li xss=removed>Cost inclusive of GST</li></ul></ul>', 1),
(702568, 'Industrial Cleaning', 'industrial-cleaning', 'Industrial Cleaning', 'Industrial Cleaning', 'Industrial Cleaning', 'IND', 'uploads/services/mainservice/8f295429db581e84c05a335b71a6b72d.png', 'uploads/services/mainservice/956f71dba3ac017f7208457bb9496a9f.jpg', '<p><span xss=removed>Backed by dexterous professionals, we have been successful in rendering excellent Industrial High Rise Cleaning Services, to the clients. While rendering the services, we make use of a professional window cleaning kit, to provide excellent cleaning services.</span><br></p>', 1),
(736821, 'Office Inspection', 'Office', 'Office Services', 'Office Services', 'Office Services', 'OFI', 'uploads/services/mainservice/64ef524656e64ba8b7964b71dc69a9b7.png', 'uploads/services/mainservice/32c8824f2284359538b5e36a9bceca0c.jpg', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Inspection of the cleaning required</li></ul><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Quotation will be provided post inspection</li><li xss=removed>Service can be customised as per requirement</li></ul></ul>', 1),
(746081, 'Window', 'window', 'window Services', 'window Services', 'window Services', 'WIN', 'uploads/services/mainservice/a42724a0b3991addad308dc3ea6a1fc5.png', 'uploads/services/mainservice/c40d73a0bdbea36ba28c3355be05c0bb.jpg', '<ul class=\"col-md-12 col-sm-12 col-xs-12 subcategoryDescription text-left\" xss=removed><p xss=removed><span xss=removed><b>Service Includes:</b></span></p><ul xss=removed><li xss=removed>Dusting of window sills and blinds</li><li xss=removed>Cleaning shutters</li><li xss=removed>Cleaning of channels for sliding windows</li></ul><p xss=removed><span xss=removed><b>Service Time:</b></span> 3 Hours</p><p xss=removed><b><span xss=removed>No. of Servicemen:</span> </b>2-3 (depending on no. of windows)</p><p xss=removed><span xss=removed><b>Note:</b></span></p><ul xss=removed><li xss=removed>Customer to provide for stool/ladder, water and electrical connection</li><li xss=removed>Rates mentioned are for windows upto 6 ft</li></ul></ul>', 1),
(786194, 'Floor Cleaning', 'floor-cleaning', 'Floor Cleaning', 'Floor Cleaning', 'Floor Cleaning', 'FLO', 'uploads/services/mainservice/3637df41e7205a068fb3e7ed0000561f.png', 'uploads/services/mainservice/0be63e7bf78cd0100b8a2c0bcefdf889.jpg', '<p><span xss=removed>Our organization is prominent in offering Commercial Floor Cleaning Services to our clients. The experts have adopted latest methods and excellent quality chemicals for rendering this service. The experts are capable of cleaning the floors quite effectively thereby extending the life of floors.</span><br></p>', 1),
(789610, 'Carpet Cleaning ', 'carpet-cleaning-service', 'Carpet cleaning services', 'Carpet cleaning services', 'Carpet cleaning services', 'CPT', 'uploads/services/mainservice/b950e0d7636cf12ce74c78fcfd937644.png', 'uploads/services/mainservice/a467241709f6f6f0c8e05743baea8de2.jpg', '<p>We offer a systematic approach to cleaning each home. Each of our cleaners are trained on all products and equipment , V3 care is a regular home cleaning service provider on a daily, weekly and fortnightly basis. Depending on personal preferences, our team will create a personalized cleaning plan that best suits you and your family.</p><p><span xss=removed>WHAT WE DO:</span></p><ul><li xss=removed>Vacuuming all carpets and upholstery in the bedroom/s, hallways, living room and all other carpeted areas</li><li xss=removed>Cleaning, wiping, polishing and sanitizing all tiles, fixtures and surfaces</li><li xss=removed>Full kitchen clean, including, Heavy Oil and Grease Removal.</li><li xss=removed>Wiping, polishing and refreshing all furniture</li><li xss=removed>Wiping all windows on the inside, mirrors, glass doors, doors, door handles, light switches, sockets, etc.</li><li xss=removed>Mopping and polishing all floors</li><li xss=removed>Removing all dirt from not visible and hard to reach places</li><li xss=removed>Dusting, wiping and refreshing with extra special care all fragile and valuable objects</li><li xss=removed>Garage and Courtyard Cleaning</li></ul><p><span xss=removed>Our V3 care cleaning package is an extensive deep clean designed to thoroughly clean your home from top to bottom. Ideal as an occasional cleaning service any time of the year!</span><span xss=removed><br></span><br></p>', 1),
(805362, 'Kitchen Cleaning ', 'kitchen-cleaning-services', 'Kitchen Cleaning Services', 'Kitchen Cleaning Services', 'Kitchen Cleaning Services', 'KIT', 'uploads/services/mainservice/b078a70b88f0bb28fd27487e619f5ad1.jpg', 'uploads/services/mainservice/d01708fb7fc88f63ad7a05456a777096.jpg', '<p><span xss=removed>We offer a systematic approach to cleaning each home. Each of our cleaners are trained on all products and equipment , V3 care is a regular home cleaning service provider on a daily, weekly and fortnightly basis. Depending on personal preferences, our team will create a personalized cleaning plan that best suits you and your family.</span><br></p>', 1),
(832917, 'Home cleaning ', 'home-cleaning-services', 'home cleaning service', 'home cleaning service', 'home cleaning service', 'HOM', 'uploads/services/mainservice/14047f79e9b06e3fa956e82ed4c2b234.png', 'uploads/services/mainservice/798a2dd88c4ae13fd67abc5fb8d7ace9.jpg', 'We offer a systematic approach to cleaning each home. Each of our cleaners are trained on all products and equipment , V3 care is a regular home cleaning service provider on a daily, weekly and fortnightly basis. Depending on personal preferences, our team will create a personalized cleaning plan that best suits you and your family.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `country_id`, `state_name`, `status`) VALUES
(2, 3, 'Telangana', 1),
(3, 3, 'Andhra Pradesh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `terms_conditions`
--

CREATE TABLE `terms_conditions` (
  `id` int(11) NOT NULL,
  `terms_desc` longtext NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms_conditions`
--

INSERT INTO `terms_conditions` (`id`, `terms_desc`, `status`) VALUES
(1, '<p><span xss=removed>Privacy Policy PERSONAL INFORMATION- User referred to as (“You”) and SB on Call Services hereinafter referred to as (“V3care”). V3care is owner and operator of www.v3care.com (“the Website”), V3care Mobile Application for your requirements fulfill home & offices services (“V3care App”) and the Website “V3care.com” At the time of using the V3care you will share certain Personal Information with v3care, V3care respects your Personal Information. Such Personal Information may include your personal identifiable information such as your name, address, mobile number, your e-mail ids, your age, IP address, payment details and any other personal information which You may share in connection with the services. When you use V3care’ Service through V3care App, V3care may use Your mobile device’s ID (the unique identification assigned to a mobile device by the manufacturer). V3care does this to store your preferences and track your use of V3care App. You understand and agree that V3careS has every right to share such ID with third parties for its promotions, analysis, etc. In case You participate in any other schemes, facilities, services provided by the V3care Service, You will be required to provide additional information. Such information will also remain in V3care’s database and will be considered as your Personal Information and will be treated as confidential. Pre-approved Sharing of Personal Information- V3care endeavors to protect your Personal Information. V3care may share your Personal Information with its sponsors, service providers and its business partners. Personal information collected from You and other users may be analyzed in different manners. V3care may also share such analysis with its service providers and its business partners. In case V3care is required to disclose your Personal Information in order to assist the Government Authority or in adherence to the Court or to protect the interest of the V3care Service and/or any particular user(s), V3care will disclose it without obtaining prior permission from you. This Privacy Policy applies only to the V3care. The Services may contain links to other web sites not operated or controlled by V3care (the \"Third Party Sites\"). The policies we described here do not apply to the Third Party Sites. We suggest contacting those sites directly for information on their privacy policies. Changes to Privacy Policy- V3care have and continue to have the right to modify, change or update Privacy Policy at any time. However, sb services will use your Personal Information in a manner consistent with Privacy Policy at the time you shared Personal Information. You are encouraged to check the v3care often to get updated about Privacy Policy. You acknowledge that by virtue of usage of the V3care you provide acceptance of the Privacy Policy. All questions to be addressed to Email:- info</span>@v3care.com<span xss=removed>. If you have any questions about this Privacy Policy, the practices of this site, or your dealings with this site, please contact us at: ,</span><span xss=removed># 2296, 24th Main Road, 16th Cross Rd, 1st Sector, HSR Layout, Bengaluru, Karnataka 560102. </span><span xss=removed> info@v3care.com Terms of Use Welcome to sb services. You may use our services through our website www.v3care.com (“Website”) or our mobile application (“ v3care App”). Whether accessible to you via web, mobile App or other platform (our services, together with the Site, are the \"Services\") Dear customer When You use any of the Services provided by Us, including but not limited to, Electrical, Plumbing, Computer Repair, Carpentry etc, you will be subject to the rules, guidelines, policies, terms, and conditions applicable to such service, and they shall be deemed to be incorporated into this Terms of Use and shall be considered as part and parcel of these Terms of Use. As long as you comply with these Terms of Use, We grant you a personal, non-exclusive, non-transferable, limited privilege to enter and use our platforms. In the event of a conflict or inconsistency between any provision of the terms and conditions mentioned herein with those of the particular service, the provisions of the terms and conditions applicable to such specific Services shall prevail. HOME CLEANING Before initiating the job at your premises, please confirm with your SB TEAM the areas included & excluded for the service that you have selected. We strongly advise you to make sure that all your belongings are carefully kept in a secure location. Please make sure that any sensitive material is carefully moved under your supervision only. Also, when our team is leaving your premises, please make sure that you have thoroughly checked the entire home. REFUNDS & REWORKS For any issues related to the quality of service, call our support team on 9666688812. Any complaints in respect of the service should be raised within 24 hours from the service. In the event that any rework or refund is to be processed for the service it shall be initiated only within the warranty period for the respective service. In the event that any rework is to be performed for any services that has already been rendered via a service provider (“v3care TEAM”), V3care should be contacted directly </span><span xss=removed>9880778585</span><span xss=removed>. Please do not call the V3care TEAM directly. In the event that any Customer directly contacts the V3care TEAM: V3care will not responsible for any actions or behavior of the V3care TEAM, nor will it be responsible for any consequences thereof. The Customer shall have waived his / her / its right to any service warranty that may have been provided at the time of booking. The rework of any rendered service would be done by either a V3care TEAM or a third party appointed by V3care (at the discretion of V3care). Please report any payment or invoicing related issues within 48 (Forty Eight) hours of the job closure. thank you</span><br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` int(5) NOT NULL,
  `time_slot_name` varchar(15) NOT NULL,
  `time_slot_start` varchar(10) NOT NULL,
  `time_slot_end` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`id`, `time_slot_name`, `time_slot_start`, `time_slot_end`) VALUES
(1, '7:00AM-9:00AM', '7:00AM', '9:00AM'),
(2, '9:00AM-11:00AM', '9:00AM', '11:00AM'),
(3, '11:00AM-1:00PM', '11:00AM', '1:00PM'),
(4, '1:00PM-3:00PM', '1:00PM', '3:00PM'),
(5, '3:00PM-5:00PM', '3:00PM', '5:00PM'),
(6, '5:00PM-7:00PM', '5:00PM', '7:00PM');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `phone` bigint(10) NOT NULL,
  `password` text NOT NULL,
  `address` text NOT NULL,
  `location` varchar(55) NOT NULL,
  `date_of_registered` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image_path` varchar(255) NOT NULL,
  `fb_username` varchar(255) DEFAULT NULL,
  `fbid` varchar(255) DEFAULT NULL,
  `google_id` varchar(225) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1',
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `phone`, `password`, `address`, `location`, `date_of_registered`, `image_path`, `fb_username`, `fbid`, `google_id`, `status`, `remark`) VALUES
('CUST03475', 'suresh', 'suresh225.k@gmail.com', 9618521510, 'ae721a75e94bde66fba75af731009406c141d01f1d130e1ce0fa2d0f23ceeb8659f95299553833ee1ab50a3524db96649ec299a16fcd319a08a120593c49e190ID8VRHw5OUljnSuGVn4sUoY49znkV6ygLW6JZYXQoQA=', 'kukatpally', '', '2019-06-21 10:41:16', '', NULL, NULL, NULL, '1', ''),
('CUST12967', 'naveena pallan', 'naveenapallan@gmail.com', 0, '', '', '', '2019-06-20 13:22:27', '', NULL, NULL, NULL, '1', ''),
('CUST52047', 'persisdeena57.d@gmail.com', 'persisdeena57.d@gmail.com', 0, '', '', '', '2019-06-20 14:51:32', '', NULL, NULL, NULL, '1', ''),
('CUST52364', 'v3care', 'v3carebangalore@gmail.com', 6281763166, '', 'bangalore', '', '2019-06-17 10:38:22', '', 'Vcare Bangalore', '2358977757759676', '0', '1', ''),
('CUST57086', 'asheshahyd@gmail.com', 'asheshahyd@gmail.com', 0, '', '', '', '2019-06-20 13:23:20', '', NULL, NULL, NULL, '1', ''),
('CUST59042', 'Vanaja Maheshwaram', 'vanajam@gmail.com', 6281763165, 'e38d6fb01bb5a0de7fdaa6d60a361c9e4870691ccf645d93dfade1e05304f9301bbbd9a67b6079b1d95656aa094dcf4a3df43997e32dec974b87411d0aa2eab1gFKTafe/lRv8BGbh6X7RRxEgQKm1QmFnb3JkxwaiWkQ=', 'hyderabad', '', '2019-06-21 06:26:07', '', 'Vanaja Maheshwaram', '100917644518320', NULL, '1', ''),
('CUST63597', 'ali', 'ali@gmail.com', 2332332331, 'd85e369563853cdb24e4808c0bb2f1686ac39604e42f8af3649f3de7c89d87ef108f86b12de73b52c0855dc2b2c94061582608f25c413c416cb9fd576bcc3b70x6sZzvuaFgC546x2kJfu7XsA1z3JhPWMXB7HjfHdcCs=', '', '', '2021-03-30 02:36:58', '', NULL, NULL, NULL, '1', ''),
('CUST64752', 'deena', 'deena@gmail.com', 7349070307, '42ae9804f4e7f497c9a8bbb0e89f5d341e804626db677c513f16d30a86f5d9efb58d04b0925dd2e6530c2b42b8461b2dca8581cd509e2a347dfe2555f8d005e7YbTko9QugmblH2AR4s35o0Fsftr5GXhd0Hl0Z5rTkAI=', 'hyderabad', '', '2019-06-21 08:01:09', '', NULL, NULL, NULL, '1', ''),
('CUST65948', 'Charan Sai S', 'sai.pokala@yahoo.com', 0, '', '', '', '2019-06-20 17:47:43', '', 'Charan Sai S', '2319345688158503', NULL, '1', ''),
('CUST72653', 'vanaja maheswaram', 'vanajam598@gmail.com', 9959395056, 'd6a09a880ebfc9b71be043a70c7f1c72b9e2502edf9171596a8e10041d08b877a5889e4d3798e6b9151efdfc0652a842fc6bf5674cd8571f8b469a8198a888eexNjNdVYDPmGld64WqsykUzx3Ru8neZFx3GACfnRJHHc=', 'dfgdc', '', '2019-06-24 08:52:29', '', NULL, NULL, '105687896916192777114', '1', ''),
('CUST82613', 'NaveenaPallantla', 'naveenapallantla@gmail.com', 9908562939, '', '', '', '2019-06-20 06:05:13', '', 'NaveenaPallantla', '1207234692821172', NULL, '1', ''),
('CUST95802', 'soniya', 'soniya@gmail.com', 6281763165, 'e38d6fb01bb5a0de7fdaa6d60a361c9e4870691ccf645d93dfade1e05304f9301bbbd9a67b6079b1d95656aa094dcf4a3df43997e32dec974b87411d0aa2eab1gFKTafe/lRv8BGbh6X7RRxEgQKm1QmFnb3JkxwaiWkQ=', 'hyderabad', '', '2019-06-21 06:26:07', '', NULL, NULL, NULL, '1', ''),
('CUST97465', 'Kim Losky', 'hgjpurgcfx_1533044318@tfbnw.net', 0, '', '', '', '2019-06-26 22:28:28', '', 'Kim Losky', '10150065934259161', NULL, '1', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `district_id` (`district_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `canceljobs`
--
ALTER TABLE `canceljobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`district_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_wallet`
--
ALTER TABLE `emp_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallerys`
--
ALTER TABLE `gallerys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horizantalimage`
--
ALTER TABLE `horizantalimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_product_id`),
  ADD UNIQUE KEY `order_product_id` (`order_product_id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `otp_verification`
--
ALTER TABLE `otp_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_verification_forgot_pass`
--
ALTER TABLE `otp_verification_forgot_pass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_verification_reg`
--
ALTER TABLE `otp_verification_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `rewards_history`
--
ALTER TABLE `rewards_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards_referals`
--
ALTER TABLE `rewards_referals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards_reffered_by`
--
ALTER TABLE `rewards_reffered_by`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward_points`
--
ALTER TABLE `reward_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `canceljobs`
--
ALTER TABLE `canceljobs`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `emp_wallet`
--
ALTER TABLE `emp_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `gallerys`
--
ALTER TABLE `gallerys`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `horizantalimage`
--
ALTER TABLE `horizantalimage`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `otp_verification`
--
ALTER TABLE `otp_verification`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp_verification_forgot_pass`
--
ALTER TABLE `otp_verification_forgot_pass`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `otp_verification_reg`
--
ALTER TABLE `otp_verification_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rewards_history`
--
ALTER TABLE `rewards_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rewards_referals`
--
ALTER TABLE `rewards_referals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `rewards_reffered_by`
--
ALTER TABLE `rewards_reffered_by`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reward_points`
--
ALTER TABLE `reward_points`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `area_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `area_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `area_ibfk_3` FOREIGN KEY (`district_id`) REFERENCES `districts` (`district_id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `area_ibfk_4` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `cities_ibfk_2` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `cities_ibfk_3` FOREIGN KEY (`district_id`) REFERENCES `districts` (`district_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `districts_ibfk_2` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`) ON UPDATE NO ACTION;
--
-- Database: `xtratec`
--
CREATE DATABASE IF NOT EXISTS `xtratec` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `xtratec`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(16) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `date_of_registered` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `email`, `password`, `mobile`, `profile_pic`, `date_of_registered`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$wpvFM9/eSgG75GvRZRYXUudUG0awl/Oy0MFnXrlLkwYhdiWzNknuu', '1234567890', 'uploads/admin/b7ff6b9a79eeff7f925a5476b53962fd.png', '2018-01-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rl_add_photo`
--

CREATE TABLE `rl_add_photo` (
  `id` int(15) NOT NULL,
  `service` varchar(60) NOT NULL,
  `img_title` varchar(60) NOT NULL,
  `image` varchar(60) NOT NULL,
  `priority` int(60) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rl_add_photo`
--

INSERT INTO `rl_add_photo` (`id`, `service`, `img_title`, `image`, `priority`, `status`, `description`, `created_at`) VALUES
(4, 'html', 'html img', 'uploads/gallery/2324_pic.jpg', 1, 1, 'sth', '2021-04-21 18:30:00'),
(5, 'bootstrap', 'css img', 'uploads/gallery/4701_pic.jpeg', 2, 1, 'sth', '2021-04-21 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `rl_add_service`
--

CREATE TABLE `rl_add_service` (
  `id` int(15) NOT NULL,
  `service` varchar(60) NOT NULL,
  `ser_title` varchar(60) NOT NULL,
  `ser_priority` varchar(60) NOT NULL,
  `ser_status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rl_add_service`
--

INSERT INTO `rl_add_service` (`id`, `service`, `ser_title`, `ser_priority`, `ser_status`, `created_at`) VALUES
(8, 'html', 'HTML', '23', 1, '2021-04-21 18:30:00'),
(9, 'bootstrap', 'CSS', '2', 1, '2021-04-22 15:11:13'),
(10, 'bootstrap', 'bs', '3', 1, '2021-04-20 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `rl_add_training`
--

CREATE TABLE `rl_add_training` (
  `id` int(10) NOT NULL,
  `title` varchar(60) NOT NULL,
  `priority` int(60) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `image` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rl_add_training`
--

INSERT INTO `rl_add_training` (`id`, `title`, `priority`, `status`, `image`, `created_at`) VALUES
(10, 'html', 1, 1, 'uploads/training/9908_training.jpg', '2021-04-20 18:30:00'),
(11, 'css', 2, 0, 'uploads/training/865_training.jpg', '2021-04-20 18:30:00'),
(12, 'bootstrap', 1, 1, 'uploads/training/8843_training.jpg', '2021-04-20 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `rl_add_video`
--

CREATE TABLE `rl_add_video` (
  `id` int(15) NOT NULL,
  `service` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `links` varchar(255) NOT NULL,
  `priority` int(60) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rl_company_tbl`
--

CREATE TABLE `rl_company_tbl` (
  `id` int(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `company` varchar(60) NOT NULL,
  `designation` varchar(60) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rl_company_tbl`
--

INSERT INTO `rl_company_tbl` (`id`, `name`, `company`, `designation`, `phone`, `address`, `created_at`) VALUES
(0, '0', '0', '0', '0', '0', '2021-04-30 11:16:53'),
(2, 'richlabz', 'IT', 'development services', '6556556554', 'madhapur', '2021-04-30 11:24:09');

-- --------------------------------------------------------

--
-- Table structure for table `rl_student_tbl`
--

CREATE TABLE `rl_student_tbl` (
  `id` int(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `designation` varchar(60) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `food` varchar(60) NOT NULL DEFAULT '2',
  `std_status` int(1) NOT NULL,
  `company_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rl_student_tbl`
--

INSERT INTO `rl_student_tbl` (`id`, `name`, `designation`, `phone`, `email`, `food`, `std_status`, `company_id`, `created_at`) VALUES
(2, 'jon', 'developer', '7337043537', 'sth@gmail.com', '2', 1, 0, '2021-04-30 11:18:01'),
(3, 'Sardar', '7667667668', 'Designer', 'sardar@gmail.com', '1', 0, 0, '2021-04-30 11:24:35'),
(4, 'Seshu', 'CEO & Founder', '8888787673', 'seshu@gmail.com', '0', 0, 2, '2021-04-30 11:38:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rl_add_photo`
--
ALTER TABLE `rl_add_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rl_add_service`
--
ALTER TABLE `rl_add_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rl_add_training`
--
ALTER TABLE `rl_add_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rl_add_video`
--
ALTER TABLE `rl_add_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rl_company_tbl`
--
ALTER TABLE `rl_company_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rl_student_tbl`
--
ALTER TABLE `rl_student_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rl_add_photo`
--
ALTER TABLE `rl_add_photo`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rl_add_service`
--
ALTER TABLE `rl_add_service`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rl_add_training`
--
ALTER TABLE `rl_add_training`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rl_add_video`
--
ALTER TABLE `rl_add_video`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rl_company_tbl`
--
ALTER TABLE `rl_company_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rl_student_tbl`
--
ALTER TABLE `rl_student_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rl_student_tbl`
--
ALTER TABLE `rl_student_tbl`
  ADD CONSTRAINT `rl_student_tbl_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `rl_company_tbl` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
