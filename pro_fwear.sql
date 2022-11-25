-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2022 at 07:27 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pro_fwear`
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
  `id` bigint(20) NOT NULL,
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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add cart', 9, 'add_cart'),
(34, 'Can change cart', 9, 'change_cart'),
(35, 'Can delete cart', 9, 'delete_cart'),
(36, 'Can view cart', 9, 'view_cart'),
(37, 'Can add wishlist', 10, 'add_wishlist'),
(38, 'Can change wishlist', 10, 'change_wishlist'),
(39, 'Can delete wishlist', 10, 'delete_wishlist'),
(40, 'Can view wishlist', 10, 'view_wishlist'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add order item', 12, 'add_orderitem'),
(46, 'Can change order item', 12, 'change_orderitem'),
(47, 'Can delete order item', 12, 'delete_orderitem'),
(48, 'Can view order item', 12, 'view_orderitem'),
(49, 'Can add profile', 13, 'add_profile'),
(50, 'Can change profile', 13, 'change_profile'),
(51, 'Can delete profile', 13, 'delete_profile'),
(52, 'Can view profile', 13, 'view_profile'),
(53, 'Can add supplier', 14, 'add_supplier'),
(54, 'Can change supplier', 14, 'change_supplier'),
(55, 'Can delete supplier', 14, 'delete_supplier'),
(56, 'Can view supplier', 14, 'view_supplier'),
(57, 'Can add stocks', 15, 'add_stocks'),
(58, 'Can change stocks', 15, 'change_stocks'),
(59, 'Can delete stocks', 15, 'delete_stocks'),
(60, 'Can view stocks', 15, 'view_stocks'),
(61, 'Can add carts', 16, 'add_carts'),
(62, 'Can change carts', 16, 'change_carts'),
(63, 'Can delete carts', 16, 'delete_carts'),
(64, 'Can view carts', 16, 'view_carts');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$YZy9B2ydE1n5U4NI6WXPni$fczSRXDnV4rSHrgjGywebEw+4nDbJ+Ur9xtJH96kJu4=', '2022-11-20 03:52:40.641613', 1, 'admin', '', '', '', 1, 1, '2022-06-28 17:12:28.085828'),
(2, 'pbkdf2_sha256$320000$mgOa0vHWmTeWIhgDd3ZvwG$dw0Dx7QQYnODT/45NISRyMBeAC4IWyd3V/+goO1EaCg=', '2022-11-20 05:46:33.612062', 0, 'jefrin', 'jefrin', 'j', 'jefrin@gmail.com', 0, 1, '2022-07-19 05:55:41.850195'),
(5, 'pbkdf2_sha256$320000$kZbWEjCBUqGR4cP0K4pnUw$Bk5rMK/gUIHtQnUeD9xYvyi3QHWXtth3RjVQ7+rPVHg=', '2022-11-01 10:22:04.455651', 0, 'alby', 'boby', 'benny', '', 0, 1, '2022-07-24 17:10:44.000000'),
(6, 'pbkdf2_sha256$320000$v64KcFjRzI0OJ4QzwZhtGg$oblwP1tX71Fv2J1N+NLYo7OaH6RJSqrFrJa2CgvASH0=', '2022-07-25 02:14:27.000000', 0, 'jins', '', '', '', 0, 1, '2022-07-25 02:13:14.000000'),
(7, 'pbkdf2_sha256$320000$yFRGWTNgXdzLg2r63BL1YU$G2C2OyQ5wwF43HkUli2gFziDKXZrXQcVkGJjkUnzWR0=', '2022-11-01 10:24:17.140451', 0, 'boby', 'boby', 'benny', 'boby@gmail.com', 0, 1, '2022-07-25 18:01:52.554830'),
(8, 'pbkdf2_sha256$320000$sN9OCW4wtYLhagNEHVhMIR$p1LBtlJA3kkF2FSJSShgaLT1UF/yxWiNlA4h929NQXc=', '2022-07-26 18:26:22.000000', 0, 'akbar', '', '', 'akbar@gmail.com', 0, 1, '2022-07-25 18:04:39.000000'),
(9, 'pbkdf2_sha256$320000$kKzoP2JQ6QGppwkuRWrBC9$6lF58re8Y3ds21+yRAqbumQK/8nlfCQd7EbUo1j/7Oo=', '2022-07-26 03:10:14.799382', 0, 'abin', '', '', 'abin@gmail.com', 0, 1, '2022-07-26 03:09:57.854018'),
(10, 'pbkdf2_sha256$320000$IwVYwFauxroSjgAkHUDxIx$lBYt/7lbAkfCUzT/uriGmvwQvny601jmud/YFA/JhoQ=', '2022-11-01 10:30:09.101356', 0, 'maria', 'maria ', 'babu ', 'maria@gmail.com', 0, 1, '2022-07-26 03:11:46.223791'),
(11, 'pbkdf2_sha256$320000$ib7uf8SXnaoU4wgHcUUHMj$mbzjHr3SZWuqU0EfPystLetuW7RXSF+ROW3qJG7+lPI=', '2022-11-01 10:25:30.372160', 0, 'honey', 'honey', 'seb', 'honey@gmail.com', 0, 1, '2022-07-26 07:24:52.798674'),
(12, 'pbkdf2_sha256$320000$gnrqdQoZrWqClP0DfK0Wgy$hJDWCxF0+KbjwXsAgxziYfzcu9bD9y/4pf0vsT2Yj90=', '2022-11-01 10:26:56.250150', 0, 'manu', 'manu', 'benny', 'manu@gmail.com', 0, 1, '2022-07-26 15:51:21.000000'),
(13, 'pbkdf2_sha256$320000$1OWtyuLw64Gmzw516YNyz7$lExdAwnehiFmsxX5cQiIRXH7Sqo8aqf13QTd1bvcJJk=', '2022-11-01 10:23:30.602045', 0, 'bobby', 'bobby', 'benny', 'bobybenny@gmail.com', 0, 1, '2022-07-26 17:11:59.590551'),
(14, 'pbkdf2_sha256$320000$8r10FIFgqnCYxTsy3yJcOo$I0vho+Yb2C6BM1WK6taTK2pIUYLpvcprqQYSaiuk1iY=', '2022-11-01 10:21:14.472351', 0, 'albert', 'albert', 'sebastian', 'albert@gmail.com', 0, 1, '2022-07-27 03:42:09.883207'),
(15, 'pbkdf2_sha256$320000$wJ5IVYRX0pwJAaFdA6rWyu$0cUvGW90czB9DfbGKsJeeGCCnq0p+NYYF9Jv++LrF5s=', '2022-11-01 10:07:33.981624', 0, 'shinumol', 'shinumol', 'john', 'shinumol@gmail.com', 0, 1, '2022-11-01 10:07:14.683428'),
(16, 'pbkdf2_sha256$320000$caDhTJK7jZ8R2juQLf0BdC$qlkcRVUXRCNjUiOgCIWHppivomP46Mo951y+Xrgxs7c=', '2022-11-20 06:31:54.019971', 0, 'bobyplathottam', 'boby', 'plathottam', 'boby@gmail.com', 0, 1, '2022-11-20 06:31:44.238579');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
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
(1, '2022-06-28 18:29:42.031008', '1', 'Men', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-06-28 18:30:16.089804', '2', 'Women', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-06-28 18:30:47.119419', '3', 'Child', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-06-29 10:03:15.486750', '1', 'Puma', 1, '[{\"added\": {}}]', 8, 1),
(5, '2022-06-29 10:04:30.064877', '2', 'walkaroo', 1, '[{\"added\": {}}]', 8, 1),
(6, '2022-06-29 10:05:48.630425', '3', 'VKC Kids', 1, '[{\"added\": {}}]', 8, 1),
(7, '2022-07-24 06:21:08.031163', '1', 'Puma', 2, '[{\"changed\": {\"fields\": [\"Trending\"]}}]', 8, 1),
(8, '2022-07-24 07:07:48.655370', '3', 'VKC Kids', 2, '[{\"changed\": {\"fields\": [\"Trending\"]}}]', 8, 1),
(9, '2022-07-24 07:07:55.512040', '2', 'walkaroo', 2, '[{\"changed\": {\"fields\": [\"Trending\"]}}]', 8, 1),
(10, '2022-07-24 14:33:10.974733', '4', 'jince', 1, '[{\"added\": {}}]', 4, 1),
(11, '2022-07-24 14:34:29.695401', '4', 'jince', 3, '', 4, 1),
(12, '2022-07-24 16:20:34.614860', '1', 'Supplier object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 14, 1),
(13, '2022-07-24 17:10:44.558597', '5', 'alby', 1, '[{\"added\": {}}]', 4, 1),
(14, '2022-07-24 17:14:54.301755', '5', 'alby', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(15, '2022-07-24 19:28:45.860109', '6', 'Stocks object (6)', 1, '[{\"added\": {}}]', 15, 1),
(16, '2022-07-24 19:30:50.234297', '7', 'Stocks object (7)', 1, '[{\"added\": {}}]', 15, 1),
(17, '2022-07-25 02:13:14.540831', '6', 'jins', 1, '[{\"added\": {}}]', 4, 1),
(18, '2022-07-25 02:13:22.851623', '6', 'jins', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(19, '2022-07-25 03:20:57.346075', '3', 'VKC Kids', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(20, '2022-07-25 03:21:05.178445', '2', 'walkaroo', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(21, '2022-07-25 03:21:15.465870', '1', 'Puma', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(22, '2022-07-25 03:21:29.821986', '1', 'Puma', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(23, '2022-07-25 03:27:32.356525', '1', 'Puma', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 8, 1),
(24, '2022-07-25 18:11:27.017655', '8', 'akbar', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(25, '2022-07-26 03:37:50.374459', '9', '9 - abc2587873', 2, '[{\"changed\": {\"fields\": [\"Fname\", \"Lname\", \"Status\", \"Message\"]}}]', 11, 1),
(26, '2022-07-26 07:57:34.328201', '9', 'Stocks object (9)', 1, '[{\"added\": {}}]', 15, 1),
(27, '2022-07-26 12:35:37.385587', '1', 'Supplier', 1, '[{\"added\": {}}]', 3, 1),
(28, '2022-07-26 12:41:49.430986', '1', 'Supplier', 3, '', 3, 1),
(29, '2022-07-26 12:54:04.705482', '9', 'Stocks object (9)', 2, '[]', 15, 1),
(30, '2022-07-26 15:52:26.555372', '12', 'manu', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(31, '2022-07-26 16:08:25.864592', '11', 'Stocks object (11)', 1, '[{\"added\": {}}]', 15, 1),
(32, '2022-07-26 16:11:24.636028', '11', 'Stocks object (11)', 3, '', 15, 1),
(33, '2022-07-26 16:11:56.966705', '12', 'Stocks object (12)', 1, '[{\"added\": {}}]', 15, 1),
(34, '2022-07-26 16:14:28.114128', '13', 'Stocks object (13)', 1, '[{\"added\": {}}]', 15, 1),
(35, '2022-07-26 16:16:19.580829', '14', 'Stocks object (14)', 1, '[{\"added\": {}}]', 15, 1),
(36, '2022-07-26 17:25:13.421266', '15', 'Stocks object (15)', 1, '[{\"added\": {}}]', 15, 1),
(37, '2022-07-26 17:31:21.512355', '15', 'Stocks object (15)', 3, '', 15, 1),
(38, '2022-07-26 17:31:25.937258', '14', 'Stocks object (14)', 3, '', 15, 1),
(39, '2022-07-26 17:31:30.154277', '9', 'Stocks object (9)', 3, '', 15, 1),
(40, '2022-07-26 17:31:54.488952', '16', 'Stocks object (16)', 1, '[{\"added\": {}}]', 15, 1),
(41, '2022-07-26 17:45:15.147868', '16', 'Stocks object (16)', 2, '[{\"changed\": {\"fields\": [\"User\"]}}]', 15, 1),
(42, '2022-07-26 18:06:58.235441', '16', 'Stocks object (16)', 2, '[{\"changed\": {\"fields\": [\"User\"]}}]', 15, 1),
(43, '2022-07-26 18:44:52.743410', '3', '122', 3, '', 4, 1),
(44, '2022-07-26 18:47:26.190037', '4', 'Puma', 1, '[{\"added\": {}}]', 8, 1),
(45, '2022-07-26 18:48:06.294755', '4', 'Puma', 3, '', 8, 1),
(46, '2022-07-26 18:59:36.625956', '5', 'Puma LK-123', 1, '[{\"added\": {}}]', 8, 1),
(47, '2022-07-26 18:59:43.532476', '5', 'Puma LK-123', 2, '[{\"changed\": {\"fields\": [\"Trending\"]}}]', 8, 1),
(48, '2022-07-26 19:00:02.436886', '5', 'Puma LK-123', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(49, '2022-07-26 19:03:07.288455', '5', 'Puma LK-123', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(50, '2022-07-26 19:09:56.247339', '5', 'Puma LK-123', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(51, '2022-07-26 19:14:38.471380', '5', 'Puma LK-123', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 8, 1),
(52, '2022-07-27 01:14:04.153978', '5', 'Crocs QW', 2, '[{\"changed\": {\"fields\": [\"Slug\", \"Name\", \"Small description\", \"Description\", \"Tag\", \"Meta title\", \"Meta keywords\", \"Meta description\"]}}]', 8, 1),
(53, '2022-07-27 01:16:56.829995', '2', 'walkaroo', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(54, '2022-07-27 01:19:29.168845', '2', 'Women', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(55, '2022-07-27 01:55:20.294191', '17', 'Stocks object (17)', 1, '[{\"added\": {}}]', 15, 1),
(56, '2022-07-27 01:58:15.740495', '2', 'walkaroo', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(57, '2022-07-27 02:01:13.150821', '2', 'walkaroo', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 8, 1),
(58, '2022-11-01 09:59:12.070497', '6', 'adidas', 1, '[{\"added\": {}}]', 8, 1),
(59, '2022-11-01 10:00:55.294877', '7', 'adidas vk12', 1, '[{\"added\": {}}]', 8, 1),
(60, '2022-11-01 10:03:30.380435', '9', 'abin', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(61, '2022-11-01 10:03:50.392243', '8', 'akbar', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(62, '2022-11-01 10:04:07.114226', '14', 'albert', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(63, '2022-11-01 10:04:45.828426', '5', 'alby', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(64, '2022-11-01 10:05:01.709713', '13', 'bobby', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(65, '2022-11-01 10:05:19.467423', '7', 'boby', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(66, '2022-11-01 10:05:33.485269', '11', 'honey', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(67, '2022-11-01 10:05:53.314555', '2', 'jefrin', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(68, '2022-11-01 10:06:12.056861', '12', 'manu', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(69, '2022-11-01 10:06:32.259789', '10', 'maria', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(70, '2022-11-01 10:19:36.009900', '8', 'akbar', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(71, '2022-11-01 10:19:43.919910', '5', 'alby', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(72, '2022-11-01 10:19:52.464899', '6', 'jins', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(73, '2022-11-01 10:20:02.403876', '12', 'manu', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(74, '2022-11-19 05:42:53.064376', '8', 'Asian CR12', 1, '[{\"added\": {}}]', 8, 1),
(75, '2022-11-19 05:44:14.572106', '9', 'Sapatos', 1, '[{\"added\": {}}]', 8, 1),
(76, '2022-11-19 05:45:40.228935', '10', 'Walkaroo kids', 1, '[{\"added\": {}}]', 8, 1),
(77, '2022-11-19 05:46:56.408667', '11', 'Coolers', 1, '[{\"added\": {}}]', 8, 1),
(78, '2022-11-19 05:48:50.790286', '12', 'Impacto', 1, '[{\"added\": {}}]', 8, 1),
(79, '2022-11-19 05:50:04.026908', '13', 'Wildcraft', 1, '[{\"added\": {}}]', 8, 1),
(80, '2022-11-19 05:51:20.388748', '14', 'Crocs C234', 1, '[{\"added\": {}}]', 8, 1),
(81, '2022-11-19 16:06:56.890685', '11', 'Coolers', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(82, '2022-11-19 16:08:14.848729', '13', 'Wildcraft', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(83, '2022-11-19 17:42:06.645604', '9', 'Sapatos', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(84, '2022-11-19 17:44:02.569318', '12', 'Impacto', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(85, '2022-11-19 17:45:21.354985', '9', 'Sapatos', 2, '[{\"changed\": {\"fields\": [\"Category\", \"Small description\", \"Description\", \"Tag\", \"Meta title\", \"Meta description\"]}}]', 8, 1),
(86, '2022-11-19 17:45:33.000459', '9', 'Sapatos', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 8, 1),
(87, '2022-11-19 18:12:09.000375', '15', 'Cotton', 1, '[{\"added\": {}}]', 8, 1),
(88, '2022-11-19 18:12:52.183917', '16', 'Walkway', 1, '[{\"added\": {}}]', 8, 1),
(89, '2022-11-19 18:17:39.169195', '17', 'Ausence', 1, '[{\"added\": {}}]', 8, 1),
(90, '2022-11-19 18:18:16.104730', '18', 'Crocs cV12', 1, '[{\"added\": {}}]', 8, 1),
(91, '2022-11-20 03:54:31.763719', '19', 'Nike WM', 1, '[{\"added\": {}}]', 8, 1),
(92, '2022-11-20 03:55:12.761486', '20', 'Fashion', 1, '[{\"added\": {}}]', 8, 1);

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
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'store', 'cart'),
(16, 'store', 'carts'),
(7, 'store', 'category'),
(11, 'store', 'order'),
(12, 'store', 'orderitem'),
(8, 'store', 'product'),
(13, 'store', 'profile'),
(15, 'store', 'stocks'),
(14, 'store', 'supplier'),
(10, 'store', 'wishlist');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-06-28 17:11:33.374556'),
(2, 'auth', '0001_initial', '2022-06-28 17:11:33.955327'),
(3, 'admin', '0001_initial', '2022-06-28 17:11:34.096948'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-06-28 17:11:34.110432'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-28 17:11:34.122881'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-06-28 17:11:34.221615'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-06-28 17:11:34.317359'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-06-28 17:11:34.347279'),
(9, 'auth', '0004_alter_user_username_opts', '2022-06-28 17:11:34.367227'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-06-28 17:11:34.429193'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-06-28 17:11:34.434047'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-06-28 17:11:34.449008'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-06-28 17:11:34.480928'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-06-28 17:11:34.512467'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-06-28 17:11:34.548740'),
(16, 'auth', '0011_update_proxy_permissions', '2022-06-28 17:11:34.574298'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-06-28 17:11:34.607584'),
(18, 'sessions', '0001_initial', '2022-06-28 17:11:34.733248'),
(19, 'store', '0001_initial', '2022-06-28 17:11:34.859131'),
(20, 'store', '0002_product_reorder_level', '2022-06-28 17:32:02.182643'),
(21, 'store', '0003_cart', '2022-07-19 09:48:48.296818'),
(22, 'store', '0004_wishlist', '2022-07-21 07:31:29.560218'),
(23, 'store', '0005_order_orderitem', '2022-07-22 11:33:37.518242'),
(24, 'store', '0006_profile', '2022-07-22 11:54:27.546623'),
(25, 'store', '0007_supplier', '2022-07-24 15:25:06.972965'),
(26, 'store', '0008_supplier_status', '2022-07-24 16:04:37.486215'),
(27, 'store', '0009_stocks', '2022-07-24 19:11:22.040512'),
(28, 'store', '0010_stocks_status', '2022-07-24 19:21:19.550965'),
(29, 'store', '0011_alter_stocks_status', '2022-07-24 19:29:58.495174'),
(30, 'store', '0012_alter_stocks_user', '2022-11-20 05:33:09.037001'),
(31, 'store', '0013_orderitem_product_name_alter_product_name_and_more', '2022-11-20 05:38:48.417229'),
(32, 'store', '0014_carts', '2022-11-20 06:00:52.611473');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1klo32qrn4ykhf0gg82tnrabcckrozs6', '.eJxVjMsOwiAQRf-FtSEUpjxcuvcbyMAMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJE4mzGECcfseE-cFtJ3THdptlntu6TEnuijxol9eZ-Hk53L-Dir1-a8uOgTIQU9IQTABXyAJ7D5m8p-QMM-iSBlUYjVUBfTZqtKhHKiqJ9wcqfjjV:1oGXx5:w7w0HjKivAwRhGyKLiCNQ1WwtOuMusvWeDvSbfla2Ig', '2022-08-10 03:43:15.418586'),
('1m2r6lkygs0w9i6tjbap8sroeuqpnfo1', '.eJxVjDsOwyAQBe9CHSHALOCU6X0GtMsnOIlAMnYV5e6xJRdJOzPvvZnHbS1-62nxc2RXJtnllxGGZ6qHiA-s98ZDq-syEz8SftrOpxbT63a2fwcFe9nXlAKCBcijICmdAJGMcjILhERK6WAzDNJEO5BUw0511gQmWBwDae3Y5wvU2Tde:1owGYZ:i6a_5Rt3I_PTF-ApYScsOR3qm9FxUk1cIn6uDCWQyRU', '2022-12-03 05:38:23.814151'),
('7qn2dj2wq5txyp2lpvlyr6dhmu7jfq3s', '.eJxVjEEOwiAQRe_C2hCgZTpx6d4zkBkGpGogKe3KeHdt0oVu_3vvv1SgbS1h62kJs6izsqBOvyNTfKS6E7lTvTUdW12XmfWu6IN2fW2SnpfD_Tso1Mu39pE94ugZMkWxmBkATXbs7UjOoLNmSICIZNOE7DAKOgA7DUyOxav3BwC3N6g:1owdru:kLGQStUwUGIbmkt8_y2Lqw_4369sOHmpGLqNtnlBMAs', '2022-12-04 06:31:54.022970'),
('hjb43vgcw1h5r5c06dmaedncjighh3ix', '.eJxVjMEOwiAQRP-FsyEsXYJ49O43kIVdpGpoUtqT8d9tkx70MJd5b-atIq1LjWuXOY6sLsqq02-XKD-l7YAf1O6TzlNb5jHpXdEH7fo2sbyuh_t3UKnXbV0AOPhiEgpm5C0giNlkIXAoAxQTkmObnM9EAzoXggicPRhgK0F9vvHwN_Q:1oE6xf:187RF4r6jIX3eOxtA_gNmJSWUm_qOcIWlMdA3M2HUAs', '2022-08-03 10:29:47.424037'),
('k4amdhy8qdy07f2ucaot7p0c82g8hb30', '.eJxVjEEOwiAQRe_C2hCYQhGX7j0DgZlBqgaS0q6Md7dNutDtf-_9twhxXUpYO89hInERIE6_W4r45LoDesR6bxJbXeYpyV2RB-3y1ohf18P9Oyixl622WZPN1jifEAiSUmz0EBEMAHhvWBFrTaOiTTp7pw0O5Ni4HDOiH8XnC9ijN9E:1otUUQ:0QthSRN-1cs_ZDVjrNJfnxefErBseHLKaTdSiZgy95Y', '2022-11-25 13:54:38.583423'),
('rpmd1wfwi3ki3ohzmnc1slm24bzth19h', '.eJxVjDsOwyAQBe9CHSHALOCU6X0GtMsnOIlAMnYV5e6xJRdJOzPvvZnHbS1-62nxc2RXJtnllxGGZ6qHiA-s98ZDq-syEz8SftrOpxbT63a2fwcFe9nXlAKCBcijICmdAJGMcjILhERK6WAzDNJEO5BUw0511gQmWBwDae3Y5wvU2Tde:1owRpe:rh7UcDCUlJgNjZ_jt854_qFkL6j24QQJdhxLEO8EQ00', '2022-12-03 17:40:46.292248'),
('s5gbfspirccj9lr3sh7wudxmoqgdasis', '.eJxVjDsOwyAQBe9CHSHALOCU6X0GtMsnOIlAMnYV5e6xJRdJOzPvvZnHbS1-62nxc2RXJtnllxGGZ6qHiA-s98ZDq-syEz8SftrOpxbT63a2fwcFe9nXlAKCBcijICmdAJGMcjILhERK6WAzDNJEO5BUw0511gQmWBwDae3Y5wvU2Tde:1o6EmL:p9MlFOOl3VlzTzGIHmvQowxGkWCPvBpzX-E4h88VG8s', '2022-07-12 17:13:33.780018'),
('sngq9b3b1l74gpn659durb7oqhnkqu73', '.eJxVjDsOwyAQBe9CHSHALOCU6X0GtMsnOIlAMnYV5e6xJRdJOzPvvZnHbS1-62nxc2RXJtnllxGGZ6qHiA-s98ZDq-syEz8SftrOpxbT63a2fwcFe9nXlAKCBcijICmdAJGMcjILhERK6WAzDNJEO5BUw0511gQmWBwDae3Y5wvU2Tde:1oIP4r:bbzUO_KUxx7PPCo7YK1cbuGjGxTohD0krGzJQ4h0pV4', '2022-08-15 06:38:57.983628'),
('vqo7jxmbrzg9e8ecj20cnr7pwbv9thmy', '.eJxVjMEOwiAQRP-FsyEsXYJ49O43kIVdpGpoUtqT8d9tkx70MJd5b-atIq1LjWuXOY6sLsqq02-XKD-l7YAf1O6TzlNb5jHpXdEH7fo2sbyuh_t3UKnXbV0AOPhiEgpm5C0giNlkIXAoAxQTkmObnM9EAzoXggicPRhgK0F9vvHwN_Q:1oDpN3:27Hdo-GLkn3gOJu42z4kNzA4AE0uOLzPMD_yD7oGR50', '2022-08-02 15:42:49.063862'),
('x1ybtaonte05oum9n1av3il5a6tsmhqe', 'e30:1oFwEI:ssnP23vUpMK9CKzQilnjL5ZIydMtx4Y5hlqrBA7ZFrQ', '2022-08-08 11:26:30.902256'),
('y3tf0qj722pc2n8lmkmqz0rwrs1r92m6', 'e30:1oFnDn:G8847mfqYy_ld_Yqft31F3yus6Sao40jDbMTAm7zv1o', '2022-08-08 01:49:23.177594');

-- --------------------------------------------------------

--
-- Table structure for table `store_cart`
--
-- Error reading structure for table pro_fwear.store_cart: #1932 - Table 'pro_fwear.store_cart' doesn't exist in engine
-- Error reading data for table pro_fwear.store_cart: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `pro_fwear`.`store_cart`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `store_carts`
--

CREATE TABLE `store_carts` (
  `id` bigint(20) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `store_category`
--

CREATE TABLE `store_category` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `meta_title` varchar(150) NOT NULL,
  `meta_keywords` varchar(150) NOT NULL,
  `meta_description` varchar(150) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_category`
--

INSERT INTO `store_category` (`id`, `slug`, `name`, `image`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`) VALUES
(1, 'Men', 'Men', 'uploads/20220628235942men3.jpg', 0, 0, 'Men', 'Men', 'Mens Collections', '2022-06-28 18:29:42.012078'),
(2, 'Women', 'Women', 'uploads/20220727064929women5.jpg', 0, 0, 'Women', 'Women', 'Women\'s Collections', '2022-06-28 18:30:16.087810'),
(3, 'Child', 'Child', 'uploads/20220629000047child5.jpg', 0, 0, 'Child', 'Child', 'Child\'s Collections', '2022-06-28 18:30:47.114432');

-- --------------------------------------------------------

--
-- Table structure for table `store_order`
--

CREATE TABLE `store_order` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(150) NOT NULL,
  `lname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(150) NOT NULL,
  `pincode` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `payment_mode` varchar(150) NOT NULL,
  `payment_id` varchar(250) DEFAULT NULL,
  `status` varchar(150) NOT NULL,
  `message` longtext DEFAULT NULL,
  `tracking_no` varchar(150) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_order`
--

INSERT INTO `store_order` (`id`, `fname`, `lname`, `email`, `phone`, `address`, `city`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'qwqw', 'qwqw', 'qwq@asa', '9845789899', 'qwqwqw', 'wqwqw121', 2147483647, 4550, 'COD', NULL, 'Pending', NULL, 'jef5929427', '2022-07-22 11:42:03.069744', '2022-07-22 11:42:03.069744', 2),
(2, 'jefrin', 'j', 'jefrin@gmail.com', '9526879797', 'Puthuparambil house vagamon', 'Vagamon', 685503, 3500, 'COD', NULL, 'Pending', NULL, 'jef2191864', '2022-07-22 12:15:04.356593', '2022-07-22 12:15:04.356593', 2),
(3, 'jefrin', 'j', 'jefrin@gmail.com', '9526879797', 'Puthuparambil house vagamon', 'Vagamon', 685503, 400, 'Paid by Razorpay', 'pay_JwWQ05iZpuv4TA', 'Pending', NULL, 'jef7387876', '2022-07-22 19:09:05.706821', '2022-07-22 19:09:05.706821', 2),
(4, 'jefrin', 'j', 'jefrin@gmail.com', '9526879797', 'Puthuparambil house vagamon', 'Vagamon', 685503, 1400, 'Paid by Razorpay', 'pay_JwWzXUR8KwY2RW', 'Pending', NULL, 'abc1274846', '2022-07-22 19:42:43.999025', '2022-07-22 19:42:43.999025', 2),
(5, 'jefrin', 'j', 'jefrin@gmail.com', '9526879797', 'Puthuparambil house vagamon', 'Vagamon', 685503, 8200, 'Online Transaction', 'pay_JwXgAe3smyG4VE', 'Pending', NULL, 'abc8718841', '2022-07-22 20:23:06.319763', '2022-07-22 20:23:06.319763', 2),
(6, 'jefrin', 'j', 'jefrin@gmail.com', '9526879797', 'Puthuparambil house vagamon', 'Vagamon', 685503, 11900, 'COD', NULL, 'Pending', NULL, 'abc4955323', '2022-07-22 20:33:04.731767', '2022-07-22 20:33:04.732764', 2),
(7, 'jefrin', 'j', 'jefrin@gmail.com', '9526879797', 'Puthuparambil house vagamon', 'Vagamon', 685503, 1500, 'COD', NULL, 'Pending', NULL, 'abc9794091', '2022-07-24 04:17:07.842526', '2022-07-24 04:17:07.842526', 2),
(8, 'maria ', 'babu ', 'maria@gmail.com', '8589962357', 'qwertyuikjhgf', 'ernakulam', 682305, 800, 'Online Transaction', 'pay_JxqIqmKRAt0kE7', 'Pending', NULL, 'abc5902900', '2022-07-26 03:15:10.939220', '2022-07-26 03:15:10.939220', 10),
(9, 'maria', 'babu', 'maria@gmail.com', '8589962357', 'qwertyuikjhgf', 'ernakulam', 682305, 700, 'Online Transaction', 'pay_JxqYwp3AxrSWl9', 'Out For Shipping', 'Product will reach soon', 'abc2587873', '2022-07-26 03:30:25.022236', '2022-07-26 03:37:50.366652', 10),
(10, 'honey', 'seb', 'honey@gmail.com', '9889898764', 'panackal house', 'changanassery', 685507, 1050, 'Online Transaction', 'pay_JxudpZSStfVYQ4', 'Pending', NULL, 'abc1516779', '2022-07-26 07:29:59.529584', '2022-07-26 07:29:59.529584', 11),
(11, 'bobby', 'benny', 'bobybenny@gmail.com', '9845789899', 'plathottam house, chirackadavu', 'kanjirappally', 686520, 4950, 'COD', NULL, 'Pending', NULL, 'abc3062312', '2022-07-26 17:16:16.450376', '2022-07-26 17:16:16.450376', 13),
(12, 'jefrin', 'j', 'jefrin@gmail.com', '9526879797', 'Puthuparambil house vagamon', 'Vagamon', 685503, 400, 'Online Transaction', 'pay_JyDHUDHwHl8qGo', 'Pending', NULL, 'abc9698643', '2022-07-27 01:43:50.612587', '2022-07-27 01:43:50.612587', 2),
(13, 'jefrin', 'j', 'jefrin@gmail.com', '9526879797', 'Puthuparambil house vagamon', 'Vagamon', 685503, 400, 'Online Transaction', 'pay_JyDYdoYvXjhEqs', 'Pending', NULL, 'abc2856966', '2022-07-27 02:00:05.887557', '2022-07-27 02:00:05.888278', 2),
(14, 'albert', 'sebastian', 'albert@gmail.com', '9564665465', 'sdadwqdqwdq', 'kuttikanam', 123145, 7700, 'Online Transaction', 'pay_JyFN5RL1wAQFHy', 'Pending', NULL, 'abc1888900', '2022-07-27 03:46:34.895755', '2022-07-27 03:46:34.896481', 14),
(15, 'shinumol', 'john', 'shinumol@gmail.com', '9878785866', 'kumily', 'kumily', 849465, 700, 'COD', NULL, 'Pending', NULL, 'abc6441804', '2022-11-01 10:08:18.314667', '2022-11-01 10:08:18.314667', 15),
(16, 'shinumol', 'john', 'shinumol@gmail.com', '9878785866', 'kumily', 'kumily', 849465, 2500, 'COD', NULL, 'Pending', NULL, 'abc8673169', '2022-11-01 10:09:01.590848', '2022-11-01 10:09:01.590848', 15),
(17, 'shinumol', 'john', 'shinumol@gmail.com', '9878785866', 'kumily', 'kumily', 849465, 700, 'COD', NULL, 'Pending', NULL, 'abc9937429', '2022-11-01 10:09:14.841850', '2022-11-01 10:09:14.841850', 15),
(18, 'jefrin', 'j', 'jefrin@gmail.com', '9526879797', 'Puthuparambil house vagamon', 'Vagamon', 685503, 350, 'COD', NULL, 'Pending', NULL, 'abc7439259', '2022-11-01 10:10:34.077501', '2022-11-01 10:10:34.077501', 2),
(19, 'jefrin', 'j', 'jefrin@gmail.com', '9526879797', 'Puthuparambil house vagamon', 'Vagamon', 685503, 2500, 'COD', NULL, 'Pending', NULL, 'abc9578997', '2022-11-01 10:16:32.981409', '2022-11-01 10:16:32.981409', 2),
(20, 'albert', 'sebastian', 'albert@gmail.com', '9564665465', 'sdadwqdqwdq', 'kuttikanam', 123145, 3500, 'COD', NULL, 'Pending', NULL, 'abc9844501', '2022-11-01 10:21:27.050235', '2022-11-01 10:21:27.050235', 14),
(21, 'boby', 'benny', 'boby@gmail.com', '5999498894', 'Kanjiraaplay', 'Kanjiraaplay', 456445, 2850, 'COD', NULL, 'Pending', NULL, 'abc5518135', '2022-11-01 10:23:08.863719', '2022-11-01 10:23:08.863719', 5),
(22, 'bobby', 'benny', 'bobybenny@gmail.com', '9845789899', 'plathottam house, chirackadavu', 'kanjirappally', 686520, 3200, 'COD', NULL, 'Pending', NULL, 'abc7954921', '2022-11-01 10:23:49.993303', '2022-11-01 10:23:49.993303', 13),
(23, 'boby', 'benny', 'boby@gmail.com', '5667886464', 'Kanjira', 'Kanjira', 648646, 3900, 'COD', NULL, 'Pending', NULL, 'abc1164596', '2022-11-01 10:24:59.270538', '2022-11-01 10:24:59.270538', 7),
(24, 'honey', 'seb', 'honey@gmail.com', '9889898764', 'panackal house', 'changanassery', 685507, 6700, 'COD', NULL, 'Pending', NULL, 'abc4496532', '2022-11-01 10:26:01.000733', '2022-11-01 10:26:01.000733', 11),
(25, 'manu', 'benny', 'manu@gmail.com', '7894562123', 'manu', 'manu', 656498, 6400, 'COD', NULL, 'Pending', NULL, 'abc5667864', '2022-11-01 10:27:39.903660', '2022-11-01 10:27:39.903660', 12),
(26, 'jefrin', 'j', 'jefrin@gmail.com', '9526879797', 'Puthuparambil house vagamon', 'Vagamon', 685503, 9350, 'COD', NULL, 'Pending', NULL, 'abc8027378', '2022-11-20 06:27:32.944036', '2022-11-20 06:27:32.944036', 2),
(27, 'boby', 'plathottam', 'boby@gmail.com', '6546549849', 'adas', 'asd', 646546, 500, 'COD', NULL, 'Pending', NULL, 'abc1933190', '2022-11-20 06:32:32.837518', '2022-11-20 06:32:32.837518', 16);

-- --------------------------------------------------------

--
-- Table structure for table `store_orderitem`
--

CREATE TABLE `store_orderitem` (
  `id` bigint(20) NOT NULL,
  `price` double NOT NULL,
  `quantity` double NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_orderitem`
--

INSERT INTO `store_orderitem` (`id`, `price`, `quantity`, `order_id`, `product_id`, `product_name`) VALUES
(1, 350, 3, 1, 3, 'VKC kids'),
(2, 350, 3, 1, 3, 'VKC Kids'),
(3, 3500, 1, 2, 1, 'Puma'),
(4, 400, 1, 3, 2, 'walkaroo'),
(5, 350, 4, 4, 3, 'VKC Kids'),
(6, 400, 3, 5, 2, 'walkaroo'),
(7, 400, 3, 5, 2, 'walkaroo'),
(8, 350, 4, 6, 3, 'VKC Kids'),
(9, 350, 4, 6, 3, 'VKC Kids'),
(10, 400, 2, 7, 2, 'walkaroo'),
(11, 350, 2, 7, 18, 'Crocs cV12'),
(12, 400, 2, 8, 17, 'Ausence'),
(13, 700, 2, 9, 16, 'Walkway'),
(14, 1050, 3, 10, 15, 'cotton'),
(15, 400, 1, 11, 14, 'Crocs C234'),
(16, 1050, 3, 11, 13, 'Wildcraft'),
(17, 3500, 1, 11, 1, 'Puma'),
(18, 400, 1, 12, 12, 'Impacto'),
(19, 400, 1, 13, 11, 'Coolers'),
(20, 7000, 2, 14, 10, 'Walkaroo Kids'),
(21, 700, 2, 14, 9, 'Sapatos'),
(22, 700, 2, 15, 8, 'Asian CR12'),
(23, 2500, 1, 16, 5, 'Crocs QW'),
(24, 700, 1, 17, 7, 'adidas vk12'),
(25, 350, 1, 18, 6, 'adidas'),
(26, 2500, 1, 19, 5, '5'),
(27, 3500, 1, 20, 1, '5'),
(28, 2500, 1, 21, 5, '5'),
(29, 350, 1, 21, 3, '5'),
(30, 2500, 1, 22, 5, '5'),
(31, 700, 1, 22, 7, '5'),
(32, 3500, 1, 23, 1, '5'),
(33, 400, 1, 23, 2, '5'),
(34, 2500, 1, 24, 5, '5'),
(35, 700, 1, 24, 7, '5'),
(36, 3500, 1, 24, 1, '5'),
(37, 400, 1, 25, 2, '5'),
(38, 3500, 1, 25, 1, '5'),
(39, 2500, 1, 25, 5, '5'),
(40, 350, 1, 26, 3, ''),
(41, 900, 1, 26, 6, ''),
(42, 2000, 1, 26, 8, ''),
(43, 1000, 1, 26, 9, ''),
(44, 500, 1, 26, 11, ''),
(45, 500, 1, 26, 12, ''),
(46, 500, 1, 26, 13, ''),
(47, 400, 1, 26, 15, ''),
(48, 600, 1, 26, 16, ''),
(49, 450, 1, 26, 10, ''),
(50, 1000, 1, 26, 14, ''),
(51, 350, 1, 26, 17, ''),
(52, 800, 1, 26, 18, ''),
(53, 500, 1, 27, 13, ''),
(54, 500, 5, 27, 6, 'adidas'),
(55, 500, 5, 27, 6, 'adidas'),
(56, 500, 5, 26, 6, 'adidas'),
(57, 500, 5, 26, 6, 'adidas');

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `small_description` varchar(150) NOT NULL,
  `description` longtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `original_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `tag` varchar(150) NOT NULL,
  `meta_title` varchar(150) NOT NULL,
  `meta_keywords` varchar(150) NOT NULL,
  `meta_description` varchar(150) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `reorder_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `slug`, `name`, `product_image`, `small_description`, `description`, `quantity`, `original_price`, `selling_price`, `status`, `trending`, `tag`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `category_id`, `reorder_level`) VALUES
(1, 'Puma', 'Puma', 'uploads/20220629153315men4.jpg', 'Puma shoes-QWE2', 'Model-QWE2,High comfort', 83, 5000, 3500, 0, 1, 'Puma', 'Puma', 'Puma', 'Puma Shoes', '2022-06-29 10:03:15.478564', 1, 2),
(2, 'walkaroo', 'walkaroo', 'uploads/20220727064656women1.jpg', 'walkaroo -RTQ', 'Model-RTQ, Durable', 48, 500, 400, 0, 1, 'walkaroo', 'walkaroo', 'walkaroo', 'walkaroo', '2022-06-29 10:04:30.062883', 2, 2),
(3, 'VKC Kids', 'VKC Kids', 'uploads/20220629153548child6.jpeg', 'VKC-ZX', 'Model-ZX', 85, 400, 350, 0, 1, 'VKC Kids', 'VKC Kids', 'VKC Kids', 'VKC Kids', '2022-06-29 10:05:48.629428', 3, 2),
(5, 'Crocs QW', 'Crocs QW', 'uploads/20220727003956men5.jpg', 'Crocs Flipflops', 'Highly Durable', 94, 5000, 2500, 0, 1, 'Crocs', 'Crocs', 'Crocs', 'Crocs', '2022-07-26 18:59:36.621965', 1, 10),
(6, 'adidas', 'adidas', 'uploads/20221101152912adidas.png', 'adidas', 'adidas', 99, 1000, 900, 0, 0, 'adidas', 'adidas', 'adidas', 'adidas', '2022-11-01 09:59:12.064225', 1, 100),
(7, 'adidas vk12', 'adidas vk12', 'uploads/20221101153055adidas_shoes_gs.jpg', 'adidas', 'adidas', 47, 800, 700, 0, 0, 'adidas', 'adidas', 'adidas', 'adidas', '2022-11-01 10:00:55.291930', 2, 10),
(8, 'Men', 'Asian CR12', 'uploads/20221119111253asian.jfif', 'Asian CR12', 'Asian CR12', 99, 5000, 2000, 0, 0, 'Asian CR12', 'Asian CR12', 'Asian CR12', 'Asian CR12', '2022-11-19 05:42:53.061371', 1, 10),
(9, 'sapatos', 'Sapatos', 'uploads/20221119231206puma_women.jpg', 'Puma Sapatos', 'Puma Sapatos', 49, 2000, 1000, 0, 0, 'Puma Sapatos', 'Puma Sapatos', 'Sapatos', 'Puma Sapatos', '2022-11-19 05:44:14.569142', 1, 10),
(10, 'child', 'Walkaroo kids', 'uploads/20221119111540Walkaroo_Kids_Boys_Sandals_XK803_Red_A.jpg', 'Walkaroo kids', 'Walkaroo kids', 499, 500, 450, 0, 0, 'Walkaroo kids', 'Walkaroo kids', 'Walkaroo kids', 'Walkaroo kids', '2022-11-19 05:45:40.226940', 3, 200),
(11, 'Coolers', 'Coolers', 'uploads/20221119213656download_1.jfif', 'Coolers', 'Coolers', 399, 700, 500, 0, 0, 'Coolers', 'Coolers', 'Coolers', 'Coolers', '2022-11-19 05:46:56.406676', 1, 20),
(12, 'impacto', 'Impacto', 'uploads/20221119231402imapcto.jpg', 'Impacto', 'Impacto', 499, 800, 500, 0, 0, 'Impacto', 'Impacto', 'Impacto', 'Impacto', '2022-11-19 05:48:50.789284', 1, 50),
(13, 'wildcraftt', 'Wildcraft', 'uploads/2022111921381441AIG7igtdL.jpg', 'Wildcraft', 'Wildcraft', 68, 900, 500, 0, 0, 'Wildcraft', 'Wildcraft', 'Wildcraft', 'Wildcraft', '2022-11-19 05:50:04.025909', 2, 50),
(14, 'crocs child', 'Crocs C234', 'uploads/20221119112120crocs_child.jfif', 'Crocs C234', 'Crocs C234', 499, 2000, 1000, 0, 0, 'Crocs C234', 'Crocs C234', 'Crocs C234', 'Crocs C234', '2022-11-19 05:51:20.386750', 3, 50),
(15, 'cotton', 'Cotton', 'uploads/20221119234208women_cotton.jfif', 'cotton', 'cotton', 499, 500, 400, 0, 0, 'cotton', 'cotton', 'cotton', 'cotton', '2022-11-19 18:12:08.967111', 2, 20),
(16, 'Walkway', 'Walkway', 'uploads/20221119234252women_walkway.jfif', 'Walkway', 'Walkway', 499, 700, 600, 0, 0, 'Walkway', 'Walkway', 'Walkway', 'Walkway', '2022-11-19 18:12:52.179600', 2, 50),
(17, 'Ausence', 'Ausence', 'uploads/20221119234739child_ausence.jpg', 'Ausence', 'Ausence', 99, 450, 350, 0, 0, 'Ausence', 'Ausence', 'Ausence', 'Ausence', '2022-11-19 18:17:39.165168', 3, 10),
(18, 'Crocs cV12', 'Crocs cV12', 'uploads/20221119234816child_crocs.jfif', 'Crocs cV12', 'Crocs cV12', 599, 1000, 800, 0, 0, 'Crocs cV12', 'Crocs cV12', 'Crocs cV12', 'Crocs cV12', '2022-11-19 18:18:16.102554', 3, 50),
(19, 'Nike WM', 'Nike WM', 'uploads/20221120092431women_nike.jfif', 'Nike WM', 'Nike WM', 50, 3000, 2499, 0, 0, 'Nike WM', 'Nike WM', 'Nike WM', 'Nike WM', '2022-11-20 03:54:31.759710', 2, 10),
(20, 'Fashion', 'Fashion', 'uploads/20221120092512asian.jpg', 'Fashion', 'Fashion', 60, 1000, 800, 0, 0, 'Fashion', 'Fashion', 'Fashion', 'Fashion', '2022-11-20 03:55:12.758486', 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `store_profile`
--

CREATE TABLE `store_profile` (
  `id` bigint(20) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(150) NOT NULL,
  `pincode` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_profile`
--

INSERT INTO `store_profile` (`id`, `phone`, `address`, `city`, `pincode`, `created_at`, `user_id`) VALUES
(1, '9526879797', 'Puthuparambil house vagamon', 'Vagamon', 685503, '2022-07-22 12:15:04.345955', 2),
(2, '8589962357', 'qwertyuikjhgf', 'ernakulam', 682305, '2022-07-26 03:15:10.929247', 10),
(3, '9889898764', 'panackal house', 'changanassery', 685507, '2022-07-26 07:29:59.520641', 11),
(4, '9845789899', 'plathottam house, chirackadavu', 'kanjirappally', 686520, '2022-07-26 17:16:16.437411', 13),
(5, '9564665465', 'sdadwqdqwdq', 'kuttikanam', 123145, '2022-07-27 03:46:34.883516', 14),
(6, '9878785866', 'kumily', 'kumily', 849465, '2022-11-01 10:08:18.308670', 15),
(7, '5999498894', 'Kanjiraaplay', 'Kanjiraaplay', 456445, '2022-11-01 10:23:08.853722', 5),
(8, '5667886464', 'Kanjira', 'Kanjira', 648646, '2022-11-01 10:24:59.264536', 7),
(9, '7894562123', 'manu', 'manu', 656498, '2022-11-01 10:27:39.895662', 12),
(10, '6546549849', 'adas', 'asd', 646546, '2022-11-20 06:32:32.829517', 16);

-- --------------------------------------------------------

--
-- Table structure for table `store_stocks`
--

CREATE TABLE `store_stocks` (
  `id` bigint(20) NOT NULL,
  `product` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_stocks`
--

INSERT INTO `store_stocks` (`id`, `product`, `user_id`, `status`) VALUES
(6, 'paragon-5,6,7,8\r\nwalkaroo-6,7,8,9', 4, 'Accepted'),
(7, 'Puma-5,6,7,8,9\r\nAdidas-5,6,7,8', 4, 'Accepted'),
(16, 'vkc-1,2,3,4,5\r\nodyssia-5,6,7,8', 8, 'Accepted'),
(17, 'adidas', 12, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `store_supplier`
--

CREATE TABLE `store_supplier` (
  `sid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_supplier`
--

INSERT INTO `store_supplier` (`sid`, `username`, `email`, `password`, `status`) VALUES
(1, 'jince', 'jince@gmail.com', '1234', 'AP'),
(2, 'jinu', 'jinu@gmail.com', '123456', 'N'),
(3, 'nikhil', 'nikhil@gmail.com', '123456', 'N'),
(4, 'alby', 'alby@gmail.com', '123456', 'N'),
(5, 'jef', 'jef@gmail.com', '1234', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `store_wishlist`
--

CREATE TABLE `store_wishlist` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_wishlist`
--

INSERT INTO `store_wishlist` (`id`, `created_at`, `product_id`, `user_id`) VALUES
(10, '2022-07-23 17:26:11.127936', 1, 1),
(12, '2022-07-26 03:13:26.531727', 2, 10),
(13, '2022-07-26 17:12:49.297172', 1, 13),
(15, '2022-11-01 10:07:45.755688', 3, 15);

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `store_carts`
--
ALTER TABLE `store_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_carts_product_id_51e4bde8_fk_store_product_id` (`product_id`),
  ADD KEY `store_carts_user_id_ae8c613c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_order`
--
ALTER TABLE `store_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_order_user_id_ae5f7a5f_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_orderitem_order_id_acf8722d_fk_store_order_id` (`order_id`),
  ADD KEY `store_orderitem_product_id_f2b098d4_fk_store_product_id` (`product_id`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `store_product_name_46bbb6a9_uniq` (`name`),
  ADD UNIQUE KEY `store_product_slug_6de8ee4b_uniq` (`slug`),
  ADD KEY `store_product_category_id_574bae65_fk_store_category_id` (`category_id`);

--
-- Indexes for table `store_profile`
--
ALTER TABLE `store_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `store_stocks`
--
ALTER TABLE `store_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_stocks_user_id_5af4ae48_fk_store_supplier_sid` (`user_id`);

--
-- Indexes for table `store_supplier`
--
ALTER TABLE `store_supplier`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `store_wishlist`
--
ALTER TABLE `store_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_wishlist_product_id_8af1333d_fk_store_product_id` (`product_id`),
  ADD KEY `store_wishlist_user_id_afcc4e88_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `store_carts`
--
ALTER TABLE `store_carts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `store_category`
--
ALTER TABLE `store_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store_order`
--
ALTER TABLE `store_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `store_profile`
--
ALTER TABLE `store_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `store_stocks`
--
ALTER TABLE `store_stocks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `store_supplier`
--
ALTER TABLE `store_supplier`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store_wishlist`
--
ALTER TABLE `store_wishlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_carts`
--
ALTER TABLE `store_carts`
  ADD CONSTRAINT `store_carts_product_id_51e4bde8_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_carts_user_id_ae8c613c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_order`
--
ALTER TABLE `store_order`
  ADD CONSTRAINT `store_order_user_id_ae5f7a5f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  ADD CONSTRAINT `store_orderitem_order_id_acf8722d_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`),
  ADD CONSTRAINT `store_orderitem_product_id_f2b098d4_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);

--
-- Constraints for table `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_product_category_id_574bae65_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`);

--
-- Constraints for table `store_profile`
--
ALTER TABLE `store_profile`
  ADD CONSTRAINT `store_profile_user_id_d67604a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_wishlist`
--
ALTER TABLE `store_wishlist`
  ADD CONSTRAINT `store_wishlist_product_id_8af1333d_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_wishlist_user_id_afcc4e88_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
