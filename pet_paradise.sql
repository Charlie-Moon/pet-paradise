-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 27, 2022 at 01:33 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Service1', 'service-1', '2022-05-13 02:05:07', '2022-05-24 01:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `email`, `description`, `created_at`, `updated_at`) VALUES
(45, 'sdf', 'Sdf@s.c', NULL, 'd', '2022-05-22 04:01:02', '2022-05-22 04:01:02'),
(46, 'sdf', 'sdf@sdf', NULL, 'sdf', '2022-05-22 04:01:48', '2022-05-22 04:01:48'),
(47, 'df', 'f@sf', NULL, '2', '2022-05-22 04:02:01', '2022-05-22 04:02:01'),
(48, 'df', 'f@sf', NULL, '2', '2022-05-22 04:02:06', '2022-05-22 04:02:06'),
(49, 'sdf', 'sadf@c', NULL, 'sdf', '2022-05-22 04:02:38', '2022-05-22 04:02:38'),
(50, 'sdf', 'sdf@sdf', NULL, 'sdf', '2022-05-22 04:03:15', '2022-05-22 04:03:15'),
(51, 'asf', 'sdf@dsf', NULL, 'sdf', '2022-05-22 04:03:50', '2022-05-22 04:03:50'),
(52, 'sdfsdf', 'asdf@sdf', NULL, 'sdf', '2022-05-22 04:04:08', '2022-05-22 04:04:08');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 8, 'first_name', 'text', 'First Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 8, 'last_name', 'text', 'Last Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 8, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 8, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(62, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(63, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 18, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(65, 18, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(66, 18, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(67, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(68, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(69, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 22, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(71, 22, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(72, 22, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true}', 4),
(73, 22, 'excerpt', 'text_area', 'Excerpt', 1, 0, 0, 1, 1, 1, '{}', 5),
(74, 22, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(75, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(76, 22, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 8),
(77, 22, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 9);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(8, 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-mail', 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-05-22 00:39:24', '2022-05-23 06:04:18'),
(11, 'Slider', 'slider', 'Slider', 'Sliders', NULL, 'App\\Models\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-05-23 06:01:57', '2022-05-23 06:01:57'),
(17, 'slide', 'slide', 'Slide', 'Slides', NULL, 'App\\Models\\Slide', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-05-23 07:07:24', '2022-05-23 07:07:24'),
(18, 'slides', 'slides', 'Slide', 'Slides', 'voyager-play', 'App\\Models\\Slide', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-05-23 19:49:14', '2022-05-25 21:10:36'),
(21, 'product', 'product', 'Product', 'Products', 'voyager-archive', 'App\\Models\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-05-25 18:37:35', '2022-05-25 18:37:35'),
(22, 'products', 'products', 'Product', 'Products', 'voyager-archive', 'App\\Models\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-05-25 18:40:51', '2022-05-25 19:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(2, 'main', '2022-05-17 22:22:33', '2022-05-17 22:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-05-13 02:05:07', '2022-05-13 02:05:07', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2022-05-13 02:05:07', '2022-05-25 18:46:17', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 5, 2, '2022-05-13 02:05:07', '2022-05-25 18:46:43', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 5, 3, '2022-05-13 02:05:07', '2022-05-25 18:46:43', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2022-05-13 02:05:07', '2022-05-25 18:46:27', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 4, '2022-05-13 02:05:07', '2022-05-25 18:46:43', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 5, '2022-05-13 02:05:07', '2022-05-25 18:46:43', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 6, '2022-05-13 02:05:07', '2022-05-25 18:46:43', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 7, '2022-05-13 02:05:07', '2022-05-25 18:46:43', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 5, 8, '2022-05-13 02:05:07', '2022-05-25 18:47:01', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 5, 1, '2022-05-13 02:05:07', '2022-05-25 18:46:43', 'voyager.categories.index', NULL),
(12, 1, 'Services', '', '_self', 'voyager-news', '#000000', NULL, 3, '2022-05-13 02:05:07', '2022-05-25 18:46:13', 'voyager.posts.index', 'null'),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 5, '2022-05-13 02:05:07', '2022-05-25 18:46:17', 'voyager.pages.index', NULL),
(15, 2, 'Home', '/', '_self', NULL, '#000000', NULL, 1, '2022-05-17 22:22:54', '2022-05-23 02:01:17', NULL, ''),
(16, 2, 'Our Story', '/page/our-story', '_self', NULL, '#000000', NULL, 2, '2022-05-17 22:23:11', '2022-05-23 03:32:58', NULL, ''),
(17, 2, 'Contact', '/contact', '_self', NULL, '#000000', NULL, 4, '2022-05-17 22:23:23', '2022-05-23 02:01:17', NULL, ''),
(18, 2, 'Services', '/services', '_self', NULL, '#000000', NULL, 3, '2022-05-17 22:23:36', '2022-05-26 06:43:59', NULL, ''),
(19, 1, 'Contacts', '', '_self', 'voyager-mail', '#000000', NULL, 7, '2022-05-22 00:39:24', '2022-05-25 18:46:22', 'voyager.contacts.index', 'null'),
(25, 1, 'Slides', '', '_self', 'voyager-play', NULL, NULL, 2, '2022-05-23 19:49:14', '2022-05-25 18:46:13', 'voyager.slides.index', NULL),
(29, 1, 'Products', '', '_self', 'voyager-archive', NULL, NULL, 4, '2022-05-25 18:40:51', '2022-05-25 18:46:13', 'voyager.products.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_01_000000_add_voyager_user_fields', 2),
(6, '2016_01_01_000000_create_data_types_table', 2),
(7, '2016_05_19_173453_create_menu_table', 2),
(8, '2016_10_21_190000_create_roles_table', 2),
(9, '2016_10_21_190000_create_settings_table', 2),
(10, '2016_11_30_135954_create_permission_table', 2),
(11, '2016_11_30_141208_create_permission_role_table', 2),
(12, '2016_12_26_201236_data_types__add__server_side', 2),
(13, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(14, '2017_01_14_005015_create_translations_table', 2),
(15, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(16, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(17, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(18, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(19, '2017_08_05_000000_add_group_to_settings_table', 2),
(20, '2017_11_26_013050_add_user_role_relationship', 2),
(21, '2017_11_26_015000_create_user_roles_table', 2),
(22, '2018_03_11_000000_add_user_settings', 2),
(23, '2018_03_14_000000_add_details_to_data_types_table', 2),
(24, '2018_03_16_000000_make_settings_value_nullable', 2),
(25, '2016_01_01_000000_create_pages_table', 3),
(26, '2016_01_01_000000_create_posts_table', 3),
(27, '2016_02_15_204651_create_categories_table', 3),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'OUR STORY', 'Pet Paradise Resort and Day Spa® founder Fred Goldsmith was looking for the perfect place to board his Bichon Frise, Samantha. After researching his options, he realized there was a serious need for a boarding facility that wasn’t sterile, intimidating, and boring—one that could give him peace of mind while relieving Samantha’s intense separation anxiety.', '<div class=\"container\">\n<h2 style=\"text-align: center;\">THE HISTORY OF PET PARADISE</h2>\n<p>Pet Paradise Resort and Day Spa&reg; founder Fred Goldsmith was looking for the <strong>perfect place</strong> to board his Bichon Frise, Samantha. After researching his options, he realized there was a <strong>serious need</strong> for a boarding facility that <strong>wasn&rsquo;t sterile, intimidating, and boring</strong>&mdash;one that could give him peace of mind while relieving Samantha&rsquo;s intense separation anxiety.</p>\n<p>&nbsp;</p>\n<p>With a focus on giving pet parents access to all the <strong>premium care</strong>, they need to give their furry family member the happiest, healthiest, longest life possible, the Pet Paradise brand has grown to offer <strong>resort-style</strong> pet <strong>day camp and care</strong>, professional <strong>pet grooming</strong>, low-stress <strong>veterinary care</strong>, and of course, <strong>overnight boarding</strong> that feels like home, all under one roof.</p>\n<p>&nbsp;</p>\n<p>Headquartered in <strong>Jacksonville, FL</strong>, Pet Paradise can now be found in more than <strong>50 locations</strong> throughout the United States. In addition to keeping pets healthy and happy from Phoenix to Fort Lauderdale, Pet Paradise is <strong>passionate</strong> about shaping a new kind of pet care&mdash;the kind of <strong>complete pet care</strong> that centers around making sure you&rsquo;re <strong>meeting all of your pet&rsquo;s needs</strong>, from annual vet visits and vaccines to daily exercise and playtime, socialization, lots of snuggles, and more. So they can <strong>live their best life</strong> at every age and stage.</p>\n<p>&nbsp;</p>\n</div>\n<table style=\"border-collapse: collapse; width: 100%;\">\n<tbody>\n<tr>\n<td style=\"width: 50%;\">\n<p><img src=\"http://localhost:8000/storage/pages/May2022/0R7A8826.jpeg\" alt=\"\" width=\"100%\" /></p>\n<p>&nbsp;</p>\n</td>\n<td style=\"width: 50%;\">\n<h3><strong>Our Mission</strong></h3>\n<p>To enhance the quality of life for pets, our customers, and team members by providing exceptional pet care, outstanding customer experience, and a fulfilling work environment.&nbsp;</p>\n</td>\n</tr>\n<tr>\n<td style=\"width: 50%;\">\n<h3 style=\"text-align: right;\">Our Vision</h3>\n<p style=\"text-align: right;\">To transform pet care and become the trusted leader in our industry by building a company that is as unique and special as the experience we create for our guests and customers.</p>\n</td>\n<td style=\"width: 50%;\">\n<p><img src=\"http://localhost:8000/storage/pages/May2022/0R7A9172.jpeg\" alt=\"\" width=\"100%\" /></p>\n<p>&nbsp;</p>\n</td>\n</tr>\n<tr>\n<td style=\"width: 50%;\">\n<p><img src=\"http://localhost:8000/storage/pages/May2022/0R7A6996.jpeg\" alt=\"\" width=\"100%\" /></p>\n<p>&nbsp;</p>\n</td>\n<td style=\"width: 50%;\">\n<h3>Our Core Values</h3>\n<h5>PASSION</h5>\n<p>We are passionate about pets, our customers, and our team members. We are passionate about being the best at everything we do.&nbsp;</p>\n<h5>INNOVATION</h5>\n<p>We share a pioneering spirit that drives us to develop new ideas that improve our services, our company, and ourselves.&nbsp;</p>\n<h5>COMMUNITY</h5>\n<p>We believe in supporting and enriching our communities. We embrace a diverse and inclusive environment for pets, our customers, and our team members.&nbsp;</p>\n</td>\n</tr>\n</tbody>\n</table>', 'pages/May2022/HT3Ood99lm2uX3GcDzde.jpeg', 'our-story', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2022-05-13 02:05:07', '2022-05-23 04:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(2, 'browse_bread', NULL, '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(3, 'browse_database', NULL, '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(4, 'browse_media', NULL, '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(5, 'browse_compass', NULL, '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(6, 'browse_menus', 'menus', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(7, 'read_menus', 'menus', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(8, 'edit_menus', 'menus', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(9, 'add_menus', 'menus', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(10, 'delete_menus', 'menus', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(11, 'browse_roles', 'roles', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(12, 'read_roles', 'roles', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(13, 'edit_roles', 'roles', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(14, 'add_roles', 'roles', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(15, 'delete_roles', 'roles', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(16, 'browse_users', 'users', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(17, 'read_users', 'users', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(18, 'edit_users', 'users', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(19, 'add_users', 'users', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(20, 'delete_users', 'users', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(21, 'browse_settings', 'settings', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(22, 'read_settings', 'settings', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(23, 'edit_settings', 'settings', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(24, 'add_settings', 'settings', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(25, 'delete_settings', 'settings', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(26, 'browse_categories', 'categories', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(27, 'read_categories', 'categories', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(28, 'edit_categories', 'categories', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(29, 'add_categories', 'categories', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(30, 'delete_categories', 'categories', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(31, 'browse_posts', 'posts', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(32, 'read_posts', 'posts', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(33, 'edit_posts', 'posts', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(34, 'add_posts', 'posts', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(35, 'delete_posts', 'posts', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(36, 'browse_pages', 'pages', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(37, 'read_pages', 'pages', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(38, 'edit_pages', 'pages', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(39, 'add_pages', 'pages', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(40, 'delete_pages', 'pages', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(46, 'browse_contacts', 'contacts', '2022-05-22 00:39:24', '2022-05-22 00:39:24'),
(47, 'read_contacts', 'contacts', '2022-05-22 00:39:24', '2022-05-22 00:39:24'),
(48, 'edit_contacts', 'contacts', '2022-05-22 00:39:24', '2022-05-22 00:39:24'),
(49, 'add_contacts', 'contacts', '2022-05-22 00:39:24', '2022-05-22 00:39:24'),
(50, 'delete_contacts', 'contacts', '2022-05-22 00:39:24', '2022-05-22 00:39:24'),
(51, 'browse_Slider', 'Slider', '2022-05-23 06:01:57', '2022-05-23 06:01:57'),
(52, 'read_Slider', 'Slider', '2022-05-23 06:01:57', '2022-05-23 06:01:57'),
(53, 'edit_Slider', 'Slider', '2022-05-23 06:01:57', '2022-05-23 06:01:57'),
(54, 'add_Slider', 'Slider', '2022-05-23 06:01:57', '2022-05-23 06:01:57'),
(55, 'delete_Slider', 'Slider', '2022-05-23 06:01:57', '2022-05-23 06:01:57'),
(61, 'browse_slide', 'slide', '2022-05-23 07:07:24', '2022-05-23 07:07:24'),
(62, 'read_slide', 'slide', '2022-05-23 07:07:24', '2022-05-23 07:07:24'),
(63, 'edit_slide', 'slide', '2022-05-23 07:07:24', '2022-05-23 07:07:24'),
(64, 'add_slide', 'slide', '2022-05-23 07:07:24', '2022-05-23 07:07:24'),
(65, 'delete_slide', 'slide', '2022-05-23 07:07:24', '2022-05-23 07:07:24'),
(66, 'browse_slides', 'slides', '2022-05-23 19:49:14', '2022-05-23 19:49:14'),
(67, 'read_slides', 'slides', '2022-05-23 19:49:14', '2022-05-23 19:49:14'),
(68, 'edit_slides', 'slides', '2022-05-23 19:49:14', '2022-05-23 19:49:14'),
(69, 'add_slides', 'slides', '2022-05-23 19:49:14', '2022-05-23 19:49:14'),
(70, 'delete_slides', 'slides', '2022-05-23 19:49:14', '2022-05-23 19:49:14'),
(81, 'browse_product', 'product', '2022-05-25 18:37:35', '2022-05-25 18:37:35'),
(82, 'read_product', 'product', '2022-05-25 18:37:35', '2022-05-25 18:37:35'),
(83, 'edit_product', 'product', '2022-05-25 18:37:35', '2022-05-25 18:37:35'),
(84, 'add_product', 'product', '2022-05-25 18:37:35', '2022-05-25 18:37:35'),
(85, 'delete_product', 'product', '2022-05-25 18:37:35', '2022-05-25 18:37:35'),
(86, 'browse_products', 'products', '2022-05-25 18:40:51', '2022-05-25 18:40:51'),
(87, 'read_products', 'products', '2022-05-25 18:40:51', '2022-05-25 18:40:51'),
(88, 'edit_products', 'products', '2022-05-25 18:40:51', '2022-05-25 18:40:51'),
(89, 'add_products', 'products', '2022-05-25 18:40:51', '2022-05-25 18:40:51'),
(90, 'delete_products', 'products', '2022-05-25 18:40:51', '2022-05-25 18:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'GROOMING', 'GROOMING', 'beauty salon for the four-legged that’s always there to help your pet look and feel their best.', '<h2 style=\"text-align: center;\">SIT. SHAKE. LOOK FABULOUS.</h2>\n<p style=\"text-align: center;\">Forget your average grooming station &mdash; this is a 5-star beauty salon for the four-legged that&rsquo;s always there to help your pet look and feel their best.</p>\n<p style=\"text-align: center;\">From head to tail, our professional pet groomers will make your fur baby feel like a 10.</p>\n<p>&nbsp;</p>\n<table style=\"border-collapse: collapse; width: 100%;\">\n<tbody>\n<tr>\n<td style=\"width: 48.3105%;\"><img title=\"grooming service\" src=\"http://localhost:8000/storage/posts/May2022/11007762_ImageSmallWidth.jpeg\" alt=\"grooming service\" width=\"100%\" /></td>\n<td style=\"width: 48.3105%;\">\n<h4>Our Grooming Services</h4>\n<p><strong>Wash-n-Go Bath</strong> - starting at $30 Bath &amp; dry only</p>\n<p><strong>Ultimate Bath</strong> - starting at $35 Bath, nail trim, 15-minute brush-out &amp; ear cleaning</p>\n<p><strong>Mini Groom</strong> - starting at $45 Bath, nail trim, 15-minute brush-out, ear cleaning/plucking, and trimming of the face &amp; feet</p>\n<p><strong>Complete Groom</strong> - starting at $55 Full-body trim, bath, nail trim, 15-minute brush-out, and ear cleaning/plucking</p>\n<h6><span style=\"text-decoration: underline;\">All pricing varies by dog size, coat condition, and coat length.</span></h6>\n<p>&nbsp;</p>\n</td>\n</tr>\n<tr>\n<td style=\"width: 48.3105%;\">\n<h4>Additional Services</h4>\n<p>Nail Trimming and Buffering</p>\n<p>Pad Trimming</p>\n<p>Ear Cleaning</p>\n<p>Gland Expression</p>\n<p>Teeth Brushing</p>\n<p>Deshedding and Dematting</p>\n<p>Premium Shampoo &amp; Conditioner</p>\n<p>Flea Relief Treatment</p>\n</td>\n<td style=\"width: 48.3105%;\"><img title=\"grooming service\" src=\"http://localhost:8000/storage/posts/May2022/11007670_ImageSmallWidth.jpeg\" alt=\"grooming service\" width=\"100%\" /></td>\n</tr>\n<tr>\n<td style=\"width: 48.3105%;\"><img src=\"http://localhost:8000/storage/posts/May2022/11007794_ImageSmallWidth.jpeg\" alt=\"\" width=\"100%\" /></td>\n<td style=\"width: 48.3105%;\">\n<h4>Why choose Pet Paradise?</h4>\n<p>We have over 17 years of pet pampering experience &ndash; that\'s 119 in dog years.</p>\n<p>Avoid the hassle of trimming your pet&rsquo;s nails yourself &amp; let our pet experts handle it!</p>\n<p>Our groomers go above &amp; beyond to keep your pet happy &amp; comfortable during spa time.</p>\n</td>\n</tr>\n</tbody>\n</table>', 'posts/May2022/bgdKXB8GLGbcyYOAAmrc.jpeg', 'grooming', 'Forget your average grooming station — this is a 5-star beauty salon for the four-legged that’s always there to help your pet look and feel their best.', 'professional pet groomers, pet grooming', 'PUBLISHED', 0, '2022-05-13 02:05:07', '2022-05-23 02:24:47'),
(5, 1, 1, 'PREMIUM DOG BOARDING', 'PREMIUM DOG BOARDING', 'Treat your dog to their own vacation while you’re away on yours.', '<h3 style=\"text-align: center;\">YOUR BEST FRIEND\'S HOME AWAY FROM HOME</h3>\r\n<p style=\"text-align: center;\">Treat your dog to their own vacation while you&rsquo;re away on yours. At Pet Paradise, dog boarding is like a sleepover for your furry child surrounded by friends and doting grown-ups. Sleepovers include cozy, private rooms, daily exercise in paw-friendly synthetic grass play areas, splash pools, naptime, and more.</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\">Like any good parent, we welcome you to check in any time you like via our real-time webcams. Plus with specialized veterinary care on-site, you can enjoy your trip knowing your pet is in the best possible hands.</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\">Locate your nearest Pet Paradise resort to view their unique dog boarding services and pricing.</p>\r\n<table>\r\n<tbody>\r\n<tr style=\"height: 270.477px;\">\r\n<td style=\"width: 48.3105%; height: 270.477px;\"><img src=\"http://localhost:8000/storage/posts/May2022/11007641_ImageLargeWidth.jpeg\" alt=\"\" width=\"100%\" />&nbsp;</td>\r\n<td style=\"width: 48.3105%; height: 270.477px;\">\r\n<h4>Climate-Controlled Suites</h4>\r\n<p>Plush, raised beds</p>\r\n<p>Private doggy doors to outside</p>\r\n<p>Indoor-only suites upon request</p>\r\n<p>Extra-roomy VIP Suites</p>\r\n<p>Auto-refilling water bowls</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 248.078px;\">\r\n<td style=\"width: 48.3105%; height: 248.078px;\">\r\n<h4 style=\"text-align: right;\">Wag-Worthy Amenities</h4>\r\n<p style=\"text-align: right;\">Signature bone-shaped swimming pool and kiddie pools</p>\r\n<p style=\"text-align: right;\">Splash pads and misting stations</p>\r\n<p style=\"text-align: right;\">Synthetic grass play areas with shade</p>\r\n<p style=\"text-align: right;\">Jungle gyms and endless toys</p>\r\n</td>\r\n<td style=\"width: 48.3105%; height: 248.078px;\"><img src=\"http://localhost:8000/storage/posts/May2022/11007677_ImageLargeWidth.jpeg\" alt=\"\" width=\"100%\" /></td>\r\n</tr>\r\n<tr style=\"height: 22.3984px;\">\r\n<td style=\"width: 48.3105%; height: 22.3984px;\">\r\n<h4><img src=\"http://localhost:8000/storage/posts/May2022/11007681_ImageLargeWidth.jpeg\" alt=\"\" width=\"100%\" /></h4>\r\n</td>\r\n<td style=\"width: 48.3105%; height: 22.3984px;\">\r\n<h4>Paws-On Playtime</h4>\r\n<p>Play groups based on age and activity level</p>\r\n<p>Solo adventures with human friends</p>\r\n<p>Pawgress Report Card</p>\r\n<p>Furever Connected package</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 22.3984px;\">\r\n<td style=\"width: 48.3105%; height: 22.3984px;\">\r\n<h4 style=\"text-align: right;\">Tiny Town</h4>\r\n<p style=\"text-align: right;\">Boarding &amp; play space for dogs under 30 lbs</p>\r\n<p style=\"text-align: right;\">Jungle gyms and endless toys to explore</p>\r\n<p style=\"text-align: right;\">Play with friends their own size</p>\r\n<p style=\"text-align: right;\">Indoor, climate-controlled play yards keep our littlest guests cool</p>\r\n</td>\r\n<td style=\"width: 48.3105%; height: 22.3984px;\"><img src=\"http://localhost:8000/storage/posts/May2022/15038185_ImageLargeWidth.jpeg\" alt=\"\" width=\"100%\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'posts/May2022/BxjgvbSkq3r5zV73QHO3.jpeg', 'premium-dog-boarding', 'Treat your dog to their own vacation while you’re away on yours. At Pet Paradise, dog boarding is like a sleepover for your furry child surrounded by friends and doting grown-ups. Sleepovers include cozy, private rooms, daily exercise in paw-friendly synthetic grass play areas, splash pools, naptime, and more.', 'DOG, BOARDING, vacation, Pet Paradise', 'PUBLISHED', 0, '2022-05-26 06:54:35', '2022-05-26 18:20:28'),
(6, 1, 1, 'CAT BOARDING', 'CAT BOARDING', 'Cats deserve a day filled with cuddles and cat naps. We give all the attention your cats need and the experience our guests deserve.', '<h2 style=\"text-align: center;\">PREMIUM BOARDING FOR THE PAMPERED CAT</h2>\r\n<p style=\"text-align: center;\">Cats deserve a day filled with cuddles and cat naps. We give all the attention your cats need and the experience our guests deserve. With private condos to sleep in, windows to lounge and cat trees to climb, your cats will love you even more. Although they still may not show it. During overnight cat boarding, your cat is surrounded by friends and doting grown-ups. You can sleep easier knowing we&rsquo;re always there for your precious pet.</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 48.3105%;\"><img src=\"http://localhost:8000/storage/posts/May2022/11007723_ImageLargeWidth.jpeg\" alt=\"\" width=\"100%\" /></td>\r\n<td style=\"width: 48.3105%;\">\r\n<h4>Multi-Level Cat Condos</h4>\r\n<p>Private and spacious condo</p>\r\n<p>Lots of room for exploring</p>\r\n<p>Plush beds</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48.3105%;\">\r\n<h4 style=\"text-align: right;\">Feline Fun</h4>\r\n<p style=\"text-align: right;\">Playtimes for solo cats and cat siblings</p>\r\n<p style=\"text-align: right;\">Cat trees and scratching posts</p>\r\n<p style=\"text-align: right;\">All the toys and bells</p>\r\n</td>\r\n<td style=\"width: 48.3105%;\"><img src=\"http://localhost:8000/storage/posts/May2022/11007656_ImageLargeWidth.jpeg\" alt=\"\" width=\"100%\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48.3105%;\"><img src=\"http://localhost:8000/storage/posts/May2022/11007730_ImageLargeWidth.jpeg\" alt=\"\" width=\"100%\" /></td>\r\n<td style=\"width: 48.3105%;\">\r\n<h4>Purr-fect Perks</h4>\r\n<p>Lots of window ledges for curious cats</p>\r\n<p>Located at the front of the resort</p>\r\n<p>Cuddle time with human friends</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'posts/May2022/8IXkvrYc2kJPF1YotxmG.jpeg', 'cat-boarding', 'Cats deserve a day filled with cuddles and cat naps. We give all the attention your cats need and the experience our guests deserve.', 'PREMIUM BOARDING, Multi-Level Cat Condos, Plush beds', 'PUBLISHED', 0, '2022-05-26 07:06:57', '2022-05-26 18:20:17'),
(7, 1, 1, 'DOG DAY CAMP', 'DOG DAY CAMP', 'Whether they’re chasing a bouncy ball or doing a cannonball, we’re always there to make sure your pet’s experience at day camp is truly a day in Paradise.', '<h2 style=\"text-align: center;\">WE&rsquo;VE GOT PLAYTIMES COVERED</h2>\n<p style=\"text-align: center;\">Whether they&rsquo;re chasing a bouncy ball or doing a cannonball, we&rsquo;re always there to make sure your pet&rsquo;s experience at day camp is truly a day in Paradise. Guests can enjoy air-conditioned suites, synthetic grass play areas, shaded yards with misting fans, and a pet pool that would make any pet parent jealous.</p>\n<table>\n<tbody>\n<tr>\n<td style=\"width: 48.3105%;\"><img src=\"http://localhost:8000/storage/posts/May2022/11007663_ImageLargeWidth.jpeg\" alt=\"\" width=\"100%\" /></td>\n<td style=\"width: 48.3105%;\">\n<h4>Premium Amenities</h4>\n<p>Playgroups created based on size &amp; activity level</p>\n<p>Playtimes supervised by playtime coordinators</p>\n<p>Variety of activities &amp; games in play yards &amp; pools</p>\n<p>Lil\' Camper Report Card to show off your proud pet parent moment</p>\n</td>\n</tr>\n<tr>\n<td style=\"width: 48.3105%;\">\n<h4 style=\"text-align: right;\">Premium Amenities</h4>\n<p style=\"text-align: right;\">Bone-shaped swimming pools, kiddie pools &amp; splash pads</p>\n<p style=\"text-align: right;\">ungle gyms &amp; endless toys</p>\n<p style=\"text-align: right;\">Synthetic grass play areas &amp; indoor play areas</p>\n<p style=\"text-align: right;\">Shaded areas &amp; misting stations in play yards</p>\n<p>&nbsp;</p>\n</td>\n<td style=\"width: 48.3105%;\"><img src=\"http://localhost:8000/storage/posts/May2022/11007737_ImageLargeWidth.jpeg\" alt=\"\" width=\"100%\" /></td>\n</tr>\n<tr>\n<td style=\"width: 48.3105%;\"><img src=\"http://localhost:8000/storage/posts/May2022/11007744_ImageLargeWidth.jpeg\" alt=\"\" width=\"100%\" /></td>\n<td style=\"width: 48.3105%;\">\n<p>Benefits of Socialization</p>\n<p>Socializing your dog increases their quality of life</p>\n<p>Promotes a healthy &amp; happy lifestyle</p>\n<p>Teaches dogs how to interact &amp; play with lots of dogs &amp; people</p>\n<p>Your dog will come home tired &amp; ready to cuddle</p>\n</td>\n</tr>\n</tbody>\n</table>', 'posts/May2022/um1CGIT68oCyCkwFbcOb.jpeg', 'dog-day-camp', 'Whether they’re chasing a bouncy ball or doing a cannonball, we’re always there to make sure your pet’s experience at day camp is truly a day in Paradise.', 'PLAYTIMES,', 'PUBLISHED', 0, '2022-05-26 07:14:11', '2022-05-26 18:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `excerpt`, `created_at`, `updated_at`, `price`, `slug`) VALUES
(1, 'Nutramax Laboratories COSEQUIN Maximum Strength Joint Supplement Plus MSM', '<p>#1 Veterinarian Recommended Your veterinarian may suggest Cosequin supplements if your dog is having difficulties climbing stairs, jumping into the car, or going for walks Cosequin supplements are formulated to meet a variety of needs Cosequin for dogs is available in a tasty chicken-flavored chewable tablet to help your dog maintain healthy joints and support joint mobility Manufactured in the United States with globally sourced ingredients, Cosequin is a high quality, dog joint supplement, and is excellent for long-term use and maintenance Packaging may vary - Same great formula.</p>\r\n<p><img src=\"http://localhost:8000/storage/products/May2022/81HNDAFRoRL._AC_SL1500_.jpg\" alt=\"\" width=\"100%\" /></p>\r\n<p><img src=\"http://localhost:8000/storage/products/May2022/71eh3UJxJ8L._AC_SL1500_.jpg\" alt=\"\" width=\"100%\" /><img src=\"http://localhost:8000/storage/products/May2022/81q6-TvXoZL._AC_SL1500_.jpg\" alt=\"\" width=\"100%\" /><img src=\"http://localhost:8000/storage/products/May2022/817L-gq2VtL._AC_SL1500_.jpg\" alt=\"\" width=\"100%\" /></p>', 'products/May2022/ydMhMKvTv8asU9PR9ZXX.jpg', '#1 Veterinarian Recommended Your veterinarian may suggest Cosequin supplements if your dog is having difficulties climbing stairs,', '2022-05-25 18:44:10', '2022-05-26 01:21:24', '30$', 'nutramax-laboratories-cosequin-maximum-strength-joint-supplement-plus-msm'),
(2, 'Pedigree DENTASTIX Treats for Large Dogs, 30+ lbs. Multiple Flavors', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: #0f1111; padding: 0px; font-family: \'Amazon Ember\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Contains Seven (7) 6.07-Oz., 7-Count Packs Of Pedigree Dentastix Beef Flavor Large Treats For Dogs</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">PEDIGREE DENTASTIX Triple Action acts like a dog breath freshener that works to clean teeth and freshen breath and has a clinically proven texture that reduces plaque and tartar buildup</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Our dental treat sticks have a unique X-shape design and are specially designed for adult large breed dogs, weighing over 30 lbs.</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Feed one PEDIGREE DENTASTIX Oral Care Treat every day for maximum benefits to oral hygiene</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">PEDIGREE DENTASTIX Dental Chews feature a tasty beef flavor with dental treats your dog will truly enjoy</span></li>\r\n</ul>\r\n<p><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><img src=\"http://localhost:8000/storage/products/May2022/71z81JPBtbL._AC_SL1500_.jpg\" alt=\"\" width=\"100%\" /><img src=\"http://localhost:8000/storage/products/May2022/71waxbKJwiL._AC_SL1500_.jpg\" alt=\"\" width=\"100%\" /><img src=\"http://localhost:8000/storage/products/May2022/61XwJcEA-xL._AC_SL1500_.jpg\" alt=\"\" width=\"100%\" /><img src=\"http://localhost:8000/storage/products/May2022/71IkkXc0HbL._AC_SL1500_.jpg\" alt=\"\" width=\"100%\" /></span></p>', 'products/May2022/psvTgmjn0zamsPQE4MXb.jpg', 'Contains Seven (7) 6.07-Oz., 7-Count Packs Of Pedigree Dentastix Beef Flavor Large Treats For Dogs.', '2022-05-25 18:58:05', '2022-05-26 01:21:14', '50$', 'pedigree-dentastix-treats-for-large-dogs-30-lbs-multiple-flavors'),
(3, 'Hemppy Dog Hemp Oil for Dogs', '<p>Hemppy Dog Hemp Oil for Dogs 100% Natural Complex with Omega 3 Omega 6 | Can Be Used as Relaxant for Separation Anxiety | Pains and Mobility | Anti Inflammatory | Joint Pain from Arthritis<img src=\"http://localhost:8000/storage/products/May2022/81toGmQ+WcL._AC_SL1500_1.jpg\" alt=\"\" /></p>\r\n<p><img src=\"http://localhost:8000/storage/products/May2022/81toGmQ+WcL._AC_SL1500_2.jpg\" alt=\"\" width=\"100%\" /></p>', 'products/May2022/fI99tN8sCwzzEJsK9oiF.jpg', 'Hemppy Dog Hemp Oil for Dogs 100% Natural Complex with Omega 3 Omega 6 | Can Be Used as Relaxant for Separation Anxiety | Pains and Mobility | Anti Inflammatory | Joint Pain from Arthritis', '2022-05-26 01:24:31', '2022-05-26 01:24:31', '20$', 'hemppy-dog-hemp-oil-for-dogs');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(2, 'user', 'Normal User', '2022-05-13 02:05:07', '2022-05-13 02:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Pet Paradise', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'We care about your pet.', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/May2022/zl5l0N864LU6I4yElsiM.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 6, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Pet Paradise', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Pet Paradise shop', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.site_intro', 'Intro', 'Veterinary Care\r\nAt NewDay Veterinary Care located at Pet Paradise, care & compassion guide everything we do. With 24 locations and more on the way, NewDay combines comprehensive wellness plans, bundled pet care services, cutting-edge technology, and experienced veterinary care teams – all in a resort-style environment.', NULL, 'text_area', 4, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Experience Paradise', 'See the experience that will get your pet\'s tails wagging!', 'slides/May2022/vkvIL3MdvvS9z4abgltj.jpeg', '2022-05-25 20:45:00', '2022-05-26 00:45:59'),
(2, 'Introducing NewDay Veterinary Care', 'Previously known as Pet Paradise Veterinary Care, NewDay Veterinary Care operates 24 locations across the United States. NewDay offers compassionate, comprehensive care for both pets and veterinarians.', 'slides/May2022/1Uf9xBXgtUc4SZzEs50s.jpeg', '2022-05-25 20:47:00', '2022-05-25 21:10:05'),
(3, 'We Know You', 'From belly rubs to special hugs, see how much our team members care.', 'slides/May2022/713fHdgrKujPs5k3Nm10.jpeg', '2022-05-25 21:09:38', '2022-05-25 21:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-05-13 02:05:07', '2022-05-13 02:05:07'),
(31, 'posts', 'title', 1, 'kh', 'Lorem Ipsum Post', '2022-05-21 23:37:50', '2022-05-21 23:37:50'),
(32, 'posts', 'excerpt', 1, 'kh', 'This is the excerpt for the Lorem Ipsum Post', '2022-05-21 23:37:50', '2022-05-21 23:37:50'),
(33, 'posts', 'body', 1, 'kh', '<p>This is the body of the lorem ipsum post</p>', '2022-05-21 23:37:50', '2022-05-21 23:37:50'),
(34, 'posts', 'slug', 1, 'kh', 'lorem-ipsum-post', '2022-05-21 23:37:50', '2022-05-21 23:37:50'),
(35, 'posts', 'meta_description', 1, 'kh', 'This is the meta description', '2022-05-21 23:37:50', '2022-05-21 23:37:50'),
(36, 'posts', 'meta_keywords', 1, 'kh', 'keyword1, keyword2, keyword3', '2022-05-21 23:37:50', '2022-05-21 23:37:50'),
(37, 'posts', 'seo_title', 1, 'kh', 'GROOMING', '2022-05-21 23:38:02', '2022-05-21 23:38:02'),
(38, 'data_rows', 'display_name', 56, 'kh', 'Id', '2022-05-22 00:48:09', '2022-05-22 00:48:09'),
(39, 'data_rows', 'display_name', 57, 'kh', 'First Name', '2022-05-22 00:48:09', '2022-05-22 00:48:09'),
(40, 'data_rows', 'display_name', 58, 'kh', 'Last Name', '2022-05-22 00:48:09', '2022-05-22 00:48:09'),
(41, 'data_rows', 'display_name', 59, 'kh', 'Email', '2022-05-22 00:48:09', '2022-05-22 00:48:09'),
(42, 'data_rows', 'display_name', 60, 'kh', 'Description', '2022-05-22 00:48:09', '2022-05-22 00:48:09'),
(43, 'data_types', 'display_name_singular', 8, 'kh', 'Contact', '2022-05-22 00:48:09', '2022-05-22 00:48:09'),
(44, 'data_types', 'display_name_plural', 8, 'kh', 'Contacts', '2022-05-22 00:48:09', '2022-05-22 00:48:09'),
(45, 'data_rows', 'display_name', 61, 'kh', 'Created At', '2022-05-22 00:53:24', '2022-05-22 00:53:24'),
(46, 'data_rows', 'display_name', 62, 'kh', 'Updated At', '2022-05-22 00:53:24', '2022-05-22 00:53:24'),
(47, 'menu_items', 'title', 19, 'kh', 'Contacts', '2022-05-22 00:58:39', '2022-05-22 00:58:39'),
(48, 'menu_items', 'title', 17, 'kh', 'Connect', '2022-05-23 00:41:46', '2022-05-23 00:41:46'),
(49, 'menu_items', 'title', 18, 'kh', 'Products', '2022-05-23 01:25:34', '2022-05-23 01:25:34'),
(50, 'pages', 'title', 1, 'kh', 'Hello World', '2022-05-23 02:10:43', '2022-05-23 02:10:43'),
(51, 'pages', 'body', 1, 'kh', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-05-23 02:10:43', '2022-05-23 02:10:43'),
(52, 'pages', 'slug', 1, 'kh', 'hello-world', '2022-05-23 02:10:43', '2022-05-23 02:10:43'),
(53, 'menu_items', 'title', 16, 'kh', 'About', '2022-05-23 03:32:43', '2022-05-23 03:32:43'),
(54, 'categories', 'name', 1, 'kh', 'Category 1', '2022-05-24 01:27:34', '2022-05-24 01:27:34'),
(55, 'categories', 'slug', 1, 'kh', 'category-1', '2022-05-24 01:27:34', '2022-05-24 01:27:34'),
(56, 'data_rows', 'display_name', 63, 'kh', 'Id', '2022-05-24 01:38:55', '2022-05-24 01:38:55'),
(57, 'data_rows', 'display_name', 64, 'kh', 'Title', '2022-05-24 01:38:55', '2022-05-24 01:38:55'),
(58, 'data_rows', 'display_name', 65, 'kh', 'Description', '2022-05-24 01:38:55', '2022-05-24 01:38:55'),
(59, 'data_rows', 'display_name', 66, 'kh', 'Image', '2022-05-24 01:38:55', '2022-05-24 01:38:55'),
(60, 'data_rows', 'display_name', 67, 'kh', 'Created At', '2022-05-24 01:38:55', '2022-05-24 01:38:55'),
(61, 'data_rows', 'display_name', 68, 'kh', 'Updated At', '2022-05-24 01:38:55', '2022-05-24 01:38:55'),
(62, 'data_types', 'display_name_singular', 18, 'kh', 'Slide', '2022-05-24 01:38:55', '2022-05-24 01:38:55'),
(63, 'data_types', 'display_name_plural', 18, 'kh', 'Slides', '2022-05-24 01:38:55', '2022-05-24 01:38:55'),
(66, 'menu_items', 'title', 12, 'kh', 'Posts', '2022-05-25 18:45:27', '2022-05-25 18:45:27'),
(67, 'data_rows', 'display_name', 69, 'kh', 'Id', '2022-05-25 18:47:56', '2022-05-25 18:47:56'),
(68, 'data_rows', 'display_name', 70, 'kh', 'Title', '2022-05-25 18:47:56', '2022-05-25 18:47:56'),
(69, 'data_rows', 'display_name', 71, 'kh', 'Description', '2022-05-25 18:47:56', '2022-05-25 18:47:56'),
(70, 'data_rows', 'display_name', 72, 'kh', 'Image', '2022-05-25 18:47:56', '2022-05-25 18:47:56'),
(71, 'data_rows', 'display_name', 73, 'kh', 'Excerpt', '2022-05-25 18:47:56', '2022-05-25 18:47:56'),
(72, 'data_rows', 'display_name', 74, 'kh', 'Created At', '2022-05-25 18:47:56', '2022-05-25 18:47:56'),
(73, 'data_rows', 'display_name', 75, 'kh', 'Updated At', '2022-05-25 18:47:56', '2022-05-25 18:47:56'),
(74, 'data_types', 'display_name_singular', 22, 'kh', 'Product', '2022-05-25 18:47:56', '2022-05-25 18:47:56'),
(75, 'data_types', 'display_name_plural', 22, 'kh', 'Products', '2022-05-25 18:47:56', '2022-05-25 18:47:56'),
(76, 'data_rows', 'display_name', 76, 'kh', 'Price', '2022-05-25 19:27:48', '2022-05-25 19:27:48'),
(77, 'data_rows', 'display_name', 77, 'kh', 'Slug', '2022-05-25 19:35:07', '2022-05-25 19:35:07'),
(78, 'posts', 'title', 5, 'kh', 'PREMIUM DOG BOARDING', '2022-05-26 06:55:37', '2022-05-26 06:55:37'),
(79, 'posts', 'excerpt', 5, 'kh', 'Treat your dog to their own vacation while you’re away on yours. At Pet Paradise, dog boarding is like a sleepover for your furry child surrounded by friends and doting grown-ups. Sleepovers include cozy, private rooms, daily exercise in paw-friendly synthetic grass play areas, splash pools, naptime, and more.', '2022-05-26 06:55:37', '2022-05-26 06:55:37'),
(80, 'posts', 'body', 5, 'kh', '<h3 style=\"text-align: center;\">YOUR BEST FRIEND\'S HOME AWAY FROM HOME</h3>\n<p style=\"text-align: center;\">Treat your dog to their own vacation while you&rsquo;re away on yours. At Pet Paradise, dog boarding is like a sleepover for your furry child surrounded by friends and doting grown-ups. Sleepovers include cozy, private rooms, daily exercise in paw-friendly synthetic grass play areas, splash pools, naptime, and more.</p>\n<p>&nbsp;</p>\n<p style=\"text-align: center;\">Like any good parent, we welcome you to check in any time you like via our real-time webcams. Plus with specialized veterinary care on-site, you can enjoy your trip knowing your pet is in the best possible hands.</p>\n<p>&nbsp;</p>\n<p style=\"text-align: center;\">Locate your nearest Pet Paradise resort to view their unique dog boarding services and pricing.</p>\n<table style=\"border-collapse: collapse; width: 100.058%; height: 563.352px;\" border=\"1\">\n<tbody>\n<tr style=\"height: 270.477px;\">\n<td style=\"width: 48.3105%; height: 270.477px;\"><img src=\"http://localhost:8000/storage/posts/May2022/11007641_ImageLargeWidth.jpeg\" alt=\"\" width=\"100%\" />&nbsp;</td>\n<td style=\"width: 48.3105%; height: 270.477px;\">\n<h4>Climate-Controlled Suites</h4>\n<p>Plush, raised beds</p>\n<p>Private doggy doors to outside</p>\n<p>Indoor-only suites upon request</p>\n<p>Extra-roomy VIP Suites</p>\n<p>Auto-refilling water bowls</p>\n</td>\n</tr>\n<tr style=\"height: 248.078px;\">\n<td style=\"width: 48.3105%; height: 248.078px;\">\n<h4 style=\"text-align: right;\">Wag-Worthy Amenities</h4>\n<p style=\"text-align: right;\">Signature bone-shaped swimming pool and kiddie pools</p>\n<p style=\"text-align: right;\">Splash pads and misting stations</p>\n<p style=\"text-align: right;\">Synthetic grass play areas with shade</p>\n<p style=\"text-align: right;\">Jungle gyms and endless toys</p>\n</td>\n<td style=\"width: 48.3105%; height: 248.078px;\"><img src=\"http://localhost:8000/storage/posts/May2022/11007677_ImageLargeWidth.jpeg\" alt=\"\" width=\"100%\" /></td>\n</tr>\n<tr style=\"height: 22.3984px;\">\n<td style=\"width: 48.3105%; height: 22.3984px;\">\n<h4><img src=\"http://localhost:8000/storage/posts/May2022/11007681_ImageLargeWidth.jpeg\" alt=\"\" width=\"100%\" /></h4>\n</td>\n<td style=\"width: 48.3105%; height: 22.3984px;\">\n<h4>Paws-On Playtime</h4>\n<p>Play groups based on age and activity level</p>\n<p>Solo adventures with human friends</p>\n<p>Pawgress Report Card</p>\n<p>Furever Connected package</p>\n</td>\n</tr>\n<tr style=\"height: 22.3984px;\">\n<td style=\"width: 48.3105%; height: 22.3984px;\">\n<h4 style=\"text-align: right;\">Tiny Town</h4>\n<p style=\"text-align: right;\">Boarding &amp; play space for dogs under 30 lbs</p>\n<p style=\"text-align: right;\">Jungle gyms and endless toys to explore</p>\n<p style=\"text-align: right;\">Play with friends their own size</p>\n<p style=\"text-align: right;\">Indoor, climate-controlled play yards keep our littlest guests cool</p>\n</td>\n<td style=\"width: 48.3105%; height: 22.3984px;\"><img src=\"http://localhost:8000/storage/posts/May2022/15038185_ImageLargeWidth.jpeg\" alt=\"\" width=\"100%\" /></td>\n</tr>\n</tbody>\n</table>', '2022-05-26 06:55:37', '2022-05-26 06:55:37'),
(81, 'posts', 'slug', 5, 'kh', 'premium-dog-boarding', '2022-05-26 06:55:37', '2022-05-26 06:55:37'),
(82, 'posts', 'meta_description', 5, 'kh', 'Treat your dog to their own vacation while you’re away on yours. At Pet Paradise, dog boarding is like a sleepover for your furry child surrounded by friends and doting grown-ups. Sleepovers include cozy, private rooms, daily exercise in paw-friendly synthetic grass play areas, splash pools, naptime, and more.', '2022-05-26 06:55:37', '2022-05-26 06:55:37'),
(83, 'posts', 'meta_keywords', 5, 'kh', 'DOG, BOARDING, vacation, Pet Paradise', '2022-05-26 06:55:37', '2022-05-26 06:55:37'),
(84, 'posts', 'seo_title', 5, 'kh', 'PREMIUM DOG BOARDING', '2022-05-26 06:55:37', '2022-05-26 06:55:37'),
(85, 'posts', 'title', 7, 'kh', 'DOG DAY CAMP', '2022-05-26 07:14:41', '2022-05-26 07:14:41'),
(86, 'posts', 'excerpt', 7, 'kh', 'Whether they’re chasing a bouncy ball or doing a cannonball, we’re always there to make sure your pet’s experience at day camp is truly a day in Paradise.', '2022-05-26 07:14:41', '2022-05-26 07:14:41'),
(87, 'posts', 'body', 7, 'kh', '<h2 style=\"text-align: center;\">WE&rsquo;VE GOT PLAYTIMES COVERED</h2>\n<p style=\"text-align: center;\">Whether they&rsquo;re chasing a bouncy ball or doing a cannonball, we&rsquo;re always there to make sure your pet&rsquo;s experience at day camp is truly a day in Paradise. Guests can enjoy air-conditioned suites, synthetic grass play areas, shaded yards with misting fans, and a pet pool that would make any pet parent jealous.</p>\n<table style=\"border-collapse: collapse; width: 100.058%;\" border=\"1\">\n<tbody>\n<tr>\n<td style=\"width: 48.3105%;\"><img src=\"http://localhost:8000/storage/posts/May2022/11007663_ImageLargeWidth.jpeg\" alt=\"\" width=\"100%\" /></td>\n<td style=\"width: 48.3105%;\">\n<h4>Premium Amenities</h4>\n<p>Playgroups created based on size &amp; activity level</p>\n<p>Playtimes supervised by playtime coordinators</p>\n<p>Variety of activities &amp; games in play yards &amp; pools</p>\n<p>Lil\' Camper Report Card to show off your proud pet parent moment</p>\n</td>\n</tr>\n<tr>\n<td style=\"width: 48.3105%;\">\n<h4 style=\"text-align: right;\">Premium Amenities</h4>\n<p style=\"text-align: right;\">Bone-shaped swimming pools, kiddie pools &amp; splash pads</p>\n<p style=\"text-align: right;\">ungle gyms &amp; endless toys</p>\n<p style=\"text-align: right;\">Synthetic grass play areas &amp; indoor play areas</p>\n<p style=\"text-align: right;\">Shaded areas &amp; misting stations in play yards</p>\n<p>&nbsp;</p>\n</td>\n<td style=\"width: 48.3105%;\"><img src=\"http://localhost:8000/storage/posts/May2022/11007737_ImageLargeWidth.jpeg\" alt=\"\" width=\"100%\" /></td>\n</tr>\n<tr>\n<td style=\"width: 48.3105%;\"><img src=\"http://localhost:8000/storage/posts/May2022/11007744_ImageLargeWidth.jpeg\" alt=\"\" width=\"100%\" /></td>\n<td style=\"width: 48.3105%;\">\n<p>Benefits of Socialization</p>\n<p>Socializing your dog increases their quality of life</p>\n<p>Promotes a healthy &amp; happy lifestyle</p>\n<p>Teaches dogs how to interact &amp; play with lots of dogs &amp; people</p>\n<p>Your dog will come home tired &amp; ready to cuddle</p>\n</td>\n</tr>\n</tbody>\n</table>', '2022-05-26 07:14:41', '2022-05-26 07:14:41'),
(88, 'posts', 'slug', 7, 'kh', 'dog-day-camp', '2022-05-26 07:14:41', '2022-05-26 07:14:41'),
(89, 'posts', 'meta_description', 7, 'kh', 'Whether they’re chasing a bouncy ball or doing a cannonball, we’re always there to make sure your pet’s experience at day camp is truly a day in Paradise.', '2022-05-26 07:14:41', '2022-05-26 07:14:41'),
(90, 'posts', 'meta_keywords', 7, 'kh', 'PLAYTIMES,', '2022-05-26 07:14:41', '2022-05-26 07:14:41'),
(91, 'posts', 'seo_title', 7, 'kh', 'DOG DAY CAMP', '2022-05-26 07:14:41', '2022-05-26 07:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$kLQQARAw83YH4zXF.udegOA3Advtd6/treR3mouHfFGD4P/8ph1YC', 'ZwwQTxhXFub519iN7SXnQzCdn5oiBlTi1NSp4vmrvD8oV3eHnMSpDOONDVx7', NULL, '2022-05-13 02:05:07', '2022-05-13 02:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
