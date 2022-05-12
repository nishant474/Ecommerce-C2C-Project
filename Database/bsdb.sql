-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2022 at 12:52 PM
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
-- Database: `bsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add listing', 7, 'add_listing'),
(26, 'Can change listing', 7, 'change_listing'),
(27, 'Can delete listing', 7, 'delete_listing'),
(28, 'Can view listing', 7, 'view_listing'),
(29, 'Can add inquiry', 8, 'add_inquiry'),
(30, 'Can change inquiry', 8, 'change_inquiry'),
(31, 'Can delete inquiry', 8, 'delete_inquiry'),
(32, 'Can view inquiry', 8, 'view_inquiry');

-- --------------------------------------------------------

--
-- Table structure for table `Core_user`
--

CREATE TABLE `Core_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `favourites` varchar(200) NOT NULL,
  `rate_listing` varchar(200) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Core_user`
--

INSERT INTO `Core_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `email`, `first_name`, `last_name`, `favourites`, `rate_listing`, `phone`, `is_active`, `is_staff`) VALUES
(1, 'pbkdf2_sha256$216000$VqtWLQX2LXpZ$xxkq/+scmWI+FY532Q4BkpGtHrLFfgdFDT1aMtyDHJo=', '2022-03-16 11:48:19.204091', 1, 'beauty', 'beautythakur628716@gmail.com', 'Beauty', 'Thakur', '1', '100,3', 7474747474, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Core_user_groups`
--

CREATE TABLE `Core_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Core_user_user_permissions`
--

CREATE TABLE `Core_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-03-13 20:00:35.591635', '1', 'nishant', 2, '[{\"changed\": {\"fields\": [\"Email\", \"First name\", \"Last name\", \"Phone\", \"Favourites\", \"Rate listing\"]}}]', 6, 1),
(2, '2022-03-13 20:03:38.238503', '2', 'Beauty', 1, '[{\"added\": {}}]', 6, 1),
(3, '2022-03-13 20:04:09.500434', '2', 'Beauty', 3, '', 6, 1),
(4, '2022-03-13 20:43:01.328829', '1', 'Nishant', 1, '[{\"added\": {}}]', 7, 1),
(5, '2022-03-14 07:50:42.472192', '2', 'Beauty', 1, '[{\"added\": {}}]', 7, 1),
(6, '2022-03-14 07:53:31.255262', '3', 'lamboegini', 1, '[{\"added\": {}}]', 7, 1),
(7, '2022-03-14 07:54:24.811670', '1', 'Nishant', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 7, 1),
(8, '2022-03-14 07:58:07.690379', '1', 'Nishant', 2, '[{\"changed\": {\"fields\": [\"State\"]}}]', 7, 1),
(9, '2022-03-14 07:58:18.652353', '2', 'Beauty', 2, '[{\"changed\": {\"fields\": [\"State\"]}}]', 7, 1),
(10, '2022-03-14 07:58:50.092745', '3', 'lamboegini', 2, '[{\"changed\": {\"fields\": [\"State\"]}}]', 7, 1),
(11, '2022-03-14 11:01:24.624248', '3', 'beauty', 3, '', 6, 1),
(12, '2022-03-15 04:37:04.848941', '2', 'Beauty', 3, '', 8, 1),
(13, '2022-03-15 04:37:04.981944', '1', 'Beauty', 3, '', 8, 1),
(14, '2022-03-15 05:06:49.960425', '3', 'Beauty', 3, '', 8, 1),
(15, '2022-03-15 06:14:09.513151', '4', 'beauty', 3, '', 6, 1),
(16, '2022-03-15 06:14:17.305352', '5', 'Nish', 3, '', 6, 1),
(17, '2022-03-15 06:14:37.087389', '1', 'beauty', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 6, 1),
(18, '2022-03-15 06:18:15.053179', '6', 'nishant', 1, '[{\"added\": {}}]', 6, 1),
(19, '2022-03-15 06:19:26.239852', '6', 'nishant', 3, '', 6, 1),
(20, '2022-03-15 06:38:24.279720', '1', 'beauty', 2, '[{\"changed\": {\"fields\": [\"Email\", \"First name\", \"Last name\", \"Phone\", \"Last login\"]}}]', 6, 1),
(21, '2022-03-15 07:33:47.259744', '1', 'Person', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 7, 1),
(22, '2022-03-16 10:06:50.753732', '1', 'beauty', 2, '[{\"changed\": {\"fields\": [\"Favourites\"]}}]', 6, 1),
(23, '2022-03-16 11:48:30.447612', '7', 'nishant', 3, '', 6, 1),
(24, '2022-03-16 11:49:00.247672', '6', 'Person', 3, '', 8, 1),
(25, '2022-03-16 11:49:00.437624', '5', 'lamboegini', 3, '', 8, 1),
(26, '2022-03-16 11:49:01.764184', '4', 'lamboegini', 3, '', 8, 1),
(27, '2022-03-16 11:49:14.366694', '3', 'lamboegini', 3, '', 7, 1),
(28, '2022-03-16 11:49:14.465093', '1', 'Person', 3, '', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(6, 'Core', 'user'),
(8, 'inquiry', 'inquiry'),
(7, 'listings', 'listing'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-03-13 19:57:21.863286'),
(2, 'contenttypes', '0002_remove_content_type_name', '2022-03-13 19:57:23.063447'),
(3, 'auth', '0001_initial', '2022-03-13 19:57:25.528321'),
(4, 'auth', '0002_alter_permission_name_max_length', '2022-03-13 19:57:52.815583'),
(5, 'auth', '0003_alter_user_email_max_length', '2022-03-13 19:57:52.933336'),
(6, 'auth', '0004_alter_user_username_opts', '2022-03-13 19:57:53.057324'),
(7, 'auth', '0005_alter_user_last_login_null', '2022-03-13 19:57:53.180727'),
(8, 'auth', '0006_require_contenttypes_0002', '2022-03-13 19:57:53.902279'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2022-03-13 19:57:54.489036'),
(10, 'auth', '0008_alter_user_username_max_length', '2022-03-13 19:57:55.733899'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2022-03-13 19:57:56.380663'),
(12, 'auth', '0010_alter_group_name_max_length', '2022-03-13 19:57:57.281621'),
(13, 'auth', '0011_update_proxy_permissions', '2022-03-13 19:57:57.373350'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2022-03-13 19:57:57.502882'),
(15, 'Core', '0001_initial', '2022-03-13 19:58:03.528485'),
(16, 'admin', '0001_initial', '2022-03-13 19:58:24.564920'),
(17, 'admin', '0002_logentry_remove_auto_add', '2022-03-13 19:58:32.927844'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-13 19:58:33.014658'),
(19, 'sessions', '0001_initial', '2022-03-13 19:58:35.865405'),
(20, 'listings', '0001_initial', '2022-03-13 20:33:08.972661'),
(21, 'inquiry', '0001_initial', '2022-03-14 19:30:19.301422'),
(22, 'listings', '0002_auto_20220316_1108', '2022-03-16 11:09:01.828530');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_inquiry`
--

CREATE TABLE `inquiry_inquiry` (
  `id` int(11) NOT NULL,
  `listing` varchar(200) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `contact_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `listings_listing`
--

CREATE TABLE `listings_listing` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `description` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `photo_main` varchar(100) NOT NULL,
  `photo_1` varchar(100) NOT NULL,
  `photo_2` varchar(100) NOT NULL,
  `photo_3` varchar(100) NOT NULL,
  `photo_4` varchar(100) NOT NULL,
  `photo_5` varchar(100) NOT NULL,
  `photo_6` varchar(100) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `list_date` date NOT NULL,
  `owner_id` int(11) NOT NULL,
  `no_of_rating` int(11) DEFAULT NULL,
  `total_rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `Core_user`
--
ALTER TABLE `Core_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `Core_user_groups`
--
ALTER TABLE `Core_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Core_user_groups_user_id_group_id_92a8a64e_uniq` (`user_id`,`group_id`),
  ADD KEY `Core_user_groups_group_id_540999c1_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `Core_user_user_permissions`
--
ALTER TABLE `Core_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Core_user_user_permissions_user_id_permission_id_f60706b5_uniq` (`user_id`,`permission_id`),
  ADD KEY `Core_user_user_permi_permission_id_268e28d3_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_Core_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `inquiry_inquiry`
--
ALTER TABLE `inquiry_inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listings_listing`
--
ALTER TABLE `listings_listing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_listing_owner_id_1628c897_fk_Core_user_id` (`owner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `Core_user`
--
ALTER TABLE `Core_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Core_user_groups`
--
ALTER TABLE `Core_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Core_user_user_permissions`
--
ALTER TABLE `Core_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `inquiry_inquiry`
--
ALTER TABLE `inquiry_inquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `listings_listing`
--
ALTER TABLE `listings_listing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `Core_user_groups`
--
ALTER TABLE `Core_user_groups`
  ADD CONSTRAINT `Core_user_groups_group_id_540999c1_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `Core_user_groups_user_id_fb54af67_fk_Core_user_id` FOREIGN KEY (`user_id`) REFERENCES `Core_user` (`id`);

--
-- Constraints for table `Core_user_user_permissions`
--
ALTER TABLE `Core_user_user_permissions`
  ADD CONSTRAINT `Core_user_user_permi_permission_id_268e28d3_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `Core_user_user_permissions_user_id_63b76276_fk_Core_user_id` FOREIGN KEY (`user_id`) REFERENCES `Core_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_Core_user_id` FOREIGN KEY (`user_id`) REFERENCES `Core_user` (`id`);

--
-- Constraints for table `listings_listing`
--
ALTER TABLE `listings_listing`
  ADD CONSTRAINT `listings_listing_owner_id_1628c897_fk_Core_user_id` FOREIGN KEY (`owner_id`) REFERENCES `Core_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
