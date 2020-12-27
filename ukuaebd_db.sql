-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2020 at 05:48 PM
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
-- Database: `ukuaebd_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_companies`
--

CREATE TABLE `about_companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_us` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_companies`
--

INSERT INTO `about_companies` (`id`, `about_us`, `created_at`, `updated_at`) VALUES
(1, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2020-09-20 02:14:02', '2020-09-20 02:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `embed_code` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `name`, `image`, `embed_code`, `created_at`, `updated_at`) VALUES
(1, 'add1', NULL, '<iframe width=\"300\" height=\"400\" src=\"https://www.youtube.com/embed/7FA84Ms9eIE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2020-09-28 10:33:30', '2020-10-12 12:07:54'),
(9, 'add2', '16024899241qlvp3.DAC-ad.png', NULL, NULL, '2020-10-12 12:05:24'),
(10, 'add3', '1602489388bjwhgr.DAC-ad.jpg', NULL, NULL, '2020-10-12 11:56:28'),
(11, 'add4', '1602492121fcylmw.DAC-ad.jpg', NULL, NULL, '2020-10-12 12:42:02'),
(12, 'add5', '16024923307x3zmh.DAC-ad.jpeg', NULL, NULL, '2020-10-12 12:45:30'),
(13, 'add6', '1602492453imfdea.DAC-ad.jpg', NULL, NULL, '2020-10-12 12:47:33'),
(14, 'add7', '16013138058gtc0v.DAC-ad.jpg', NULL, NULL, '2020-09-28 11:23:26'),
(15, 'add8', '1602492757ib9rpu.DAC-ad.jpg', NULL, NULL, '2020-10-12 12:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `all_countries`
--

CREATE TABLE `all_countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_countries`
--

INSERT INTO `all_countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', NULL, NULL),
(2, 'United Kingdom', NULL, NULL),
(3, 'United States', NULL, NULL),
(4, 'China', NULL, NULL),
(5, 'India', NULL, NULL),
(6, 'Pakistan', NULL, NULL),
(7, 'Indonesia', NULL, NULL),
(8, 'Brazil', NULL, NULL),
(9, 'Nigeria', NULL, NULL),
(10, 'Japan', NULL, NULL),
(11, 'United Arab Emirates', NULL, NULL),
(12, 'Russia', NULL, NULL),
(13, 'Mexico', NULL, NULL),
(14, 'Germany', NULL, NULL),
(15, 'Philippines', NULL, NULL),
(16, 'Turkey', NULL, NULL),
(17, 'Vietnam', NULL, NULL),
(18, 'Iran', NULL, NULL),
(19, 'France', NULL, NULL),
(20, 'Italy', NULL, NULL),
(21, 'Egypt', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `all_countries_company`
--

CREATE TABLE `all_countries_company` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `all_countries_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_countries_company`
--

INSERT INTO `all_countries_company` (`id`, `company_id`, `all_countries_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `index` int(11) NOT NULL,
  `category_slag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `index`, `category_slag`, `created_at`, `updated_at`) VALUES
(2, 'Cosmetics', 1, '1601984854Cosmetics8JIdb', '2020-10-06 15:47:34', '2020-10-20 03:35:30'),
(4, 'Health Care', 2, '1602126252Health_CareS96Ue', '2020-10-08 07:04:12', '2020-10-08 07:04:12'),
(5, 'Fashion', 3, '1602127374FashiontYkij', '2020-10-08 07:22:54', '2020-10-08 07:22:54'),
(6, 'Electronics', 4, '1602488610ElectronicsRGH84', '2020-10-12 11:43:30', '2020-10-12 11:43:30'),
(7, 'Food & Beverage', 5, '1602488773Food_&_BeveragehkCzl', '2020-10-12 11:46:13', '2020-10-12 11:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `expire_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'London Dubai Shopping.', '2021/04/05', 1, '2020-09-20 01:53:47', '2020-10-06 22:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `company_payment`
--

CREATE TABLE `company_payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_payment`
--

INSERT INTO `company_payment` (`id`, `company_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(5, 1, 2, NULL, NULL),
(7, 1, 1, NULL, NULL),
(8, 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_infos`
--

CREATE TABLE `contact_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_infos`
--

INSERT INTO `contact_infos` (`id`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'কারকন রোড (ইলিয়াস ব্রাদাস), রাহাত্তার পুল, 6 নং পূর্ব ষোল শহর, চট্টগ্রাম।                                        Suite 4, 2nd floor,  108 whitechapel road, London, E1 1JD', '+8801767911397', 'rasel.md.bd@gmail.com', '2020-10-06 15:35:57', '2020-10-16 10:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `customers_orders`
--

CREATE TABLE `customers_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` double(8,2) NOT NULL,
  `tax` double(8,2) NOT NULL,
  `net_price` double(8,2) NOT NULL,
  `order_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers_orders`
--

INSERT INTO `customers_orders` (`id`, `order_no`, `name`, `email`, `phone`, `address_line1`, `address_line2`, `country`, `city`, `zip`, `payment_type`, `payment_phone`, `payment_ref`, `subtotal`, `tax`, `net_price`, `order_time`, `order_date`, `action_date`, `delivery_day`, `status`, `created_at`, `updated_at`) VALUES
(1, 'mj1984', 'zakir Hossain', 'zakir7dipu@gmail.com', '01764470022', '58/6, Dogormura', NULL, 'Bangladesh', 'Savar', '1340', 'Cash on Delivery', NULL, NULL, 760.00, 114.00, 874.00, '17:58:47', '2020/10/06', NULL, NULL, '0', '2020-10-06 15:59:44', '2020-10-06 16:03:14'),
(2, 'l1xs89', 'zakir Hossain', 'zakir7dipu@gmail.com', '01764470022', '58/6, Dogormura', NULL, 'Bangladesh', 'Savar', '1340', 'bKash', '01764470022', NULL, 760.00, 114.00, 874.00, '18:03:55', '2020/10/06', '2020/10/06', '3', '3', '2020-10-06 16:04:20', '2020-10-06 16:06:02'),
(3, 'u207z4', 'zakir Hossain', 'zakir7dipu@gmail.com', '01764470022', '58/6, Dogormura', NULL, 'Bangladesh', 'Savar', '1340', 'bKash', '01764470022', NULL, 760.00, 114.00, 874.00, '19:38:47', '2020/10/07', NULL, NULL, '0', '2020-10-07 17:38:48', '2020-10-09 09:23:04'),
(4, 'lzo212', 'zakir Hossain', 'zakir7dipu@gmail.com', '01764470022', '58/6, Dogormura', NULL, 'Bangladesh', 'Savar', '1340', 'Cash on Delivery', NULL, NULL, 2460.00, 369.00, 2829.00, '11:03:18', '2020/10/09', NULL, NULL, '0', '2020-10-09 09:04:45', '2020-10-09 09:22:48'),
(5, '5c2v22', 'zakir Hossain', 'zakir7dipu@gmail.com', '01764470022', '58/6, Dogormura', NULL, 'Bangladesh', 'Savar', '1340', 'Cash on Delivery', NULL, NULL, 5450.00, 817.50, 6267.50, '11:28:01', '2020/10/09', '2020/10/12', '7', '3', '2020-10-09 09:28:05', '2020-10-12 12:56:37'),
(6, 'xl12k3', 'zakir Hossain', 'zakir7dipu@gmail.com', '01764470022', '58/6, Dogormura', NULL, 'Bangladesh', 'Savar', '1340', 'bKash', '01764470022', 'Text', 0.49, 0.07, 0.56, '23:03:48', '2020/10/20', NULL, NULL, '1', '2020-10-20 11:04:02', '2020-10-20 11:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `customer_supports`
--

CREATE TABLE `customer_supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_supports`
--

INSERT INTO `customer_supports` (`id`, `phone1`, `phone2`, `email`, `created_at`, `updated_at`) VALUES
(1, '+8801767911397', '+8801845352549', 'rasel.md.bd@gmail.com', '2020-10-06 15:36:54', '2020-10-14 09:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Logo', '1602915757w20xij.logo-image.jpeg', '2020-08-27 10:39:27', '2020-10-17 10:22:37'),
(2, 'Banner', '159854812806j1z8.banner-image.jpg', '2020-08-27 11:07:41', '2020-08-27 11:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `geolocations`
--

CREATE TABLE `geolocations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `geolocations`
--

INSERT INTO `geolocations` (`id`, `lng`, `lat`, `created_at`, `updated_at`) VALUES
(1, '-76.385765', '40.032248', '2020-10-06 15:40:12', '2020-10-06 15:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `main_banner_scrolls`
--

CREATE TABLE `main_banner_scrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_banner_scrolls`
--

INSERT INTO `main_banner_scrolls` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Banner1', '1601297474hypc40.banner-image1.jpg', NULL, '2020-09-28 06:51:15'),
(2, 'Banner2', '16012974877i182a.banner-image2.jpg', NULL, '2020-09-28 06:51:27'),
(3, 'Banner3', '1602491803s2izbf.banner-image3.jpg', NULL, '2020-10-12 12:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `menu_sliders`
--

CREATE TABLE `menu_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_sliders`
--

INSERT INTO `menu_sliders` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Menu-Slider1', '1601297509t5pbhu.Menu-Slider1.jpg', NULL, '2020-09-28 06:51:51'),
(2, 'Menu-Slider2', '16024919574r7deg.Menu-Slider2.jpg', NULL, '2020-10-12 12:39:17'),
(3, 'Menu-Slider3', '160249202828cyru.Menu-Slider3.jpg', NULL, '2020-10-12 12:40:28');

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
(4, '2020_08_25_043424_create_roles_table', 1),
(15, '2020_08_25_062203_create_product_colors_table', 3),
(17, '2020_08_25_062305_create_product_sizes_table', 5),
(20, '2020_08_25_060811_create_categories_table', 7),
(21, '2020_08_25_060857_create_sub_categories_table', 7),
(22, '2020_08_27_160712_create_galleries_table', 8),
(23, '2020_08_27_233757_create_main_banner_scrolls_table', 9),
(24, '2020_08_28_013240_create_menu_sliders_table', 10),
(26, '2020_08_25_060925_create_products_table', 11),
(27, '2020_08_29_164859_create_reviews_table', 12),
(28, '2020_08_30_135952_create_shoppingcart_table', 13),
(29, '2020_09_18_051821_create_contact_infos_table', 13),
(30, '2020_09_18_051900_create_customer_supports_table', 13),
(33, '2020_09_19_103326_create_social_share_links_table', 14),
(34, '2020_09_20_041958_create_geolocations_table', 15),
(35, '2020_09_20_071728_create_all_countries_table', 16),
(36, '2020_09_20_073519_create_companies_table', 17),
(38, '2020_09_20_080420_create_about_companies_table', 18),
(39, '2020_09_20_131801_create_all_countries_company_table', 19),
(61, '2020_09_20_142521_create_customers_orders_table', 20),
(62, '2020_09_20_142630_create_ordered_products_table', 20),
(63, '2020_09_20_143845_create_ordered_product_attributes_table', 20),
(65, '2020_09_28_155550_create_advertisements_table', 21),
(66, '2020_09_29_055449_create_text_sliders_table', 22),
(67, '2020_09_29_124601_create_payments_table', 23),
(68, '2020_09_29_131403_create_company_payment_table', 24),
(69, '2020_10_05_062311_create_subscribe_by_emails_table', 25);

-- --------------------------------------------------------

--
-- Table structure for table `ordered_products`
--

CREATE TABLE `ordered_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customers_orders_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ordered_products`
--

INSERT INTO `ordered_products` (`id`, `customers_orders_id`, `name`, `qty`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dove Shop (Lowest Order QTY 4pcs)', 1, '1601985409b0pqaz.DAC.jpg', 760.00, '2020-10-06 15:59:44', '2020-10-06 15:59:44'),
(2, 2, 'Dove Shop (Lowest Order QTY 4pcs)', 1, '1601985409b0pqaz.DAC.jpg', 760.00, '2020-10-06 16:04:20', '2020-10-06 16:04:20'),
(3, 3, 'Dove Shop (Lowest Order QTY 4pcs)', 1, '1601985409b0pqaz.DAC.jpg', 760.00, '2020-10-07 17:38:49', '2020-10-07 17:38:49'),
(4, 4, 'ORAL-B GUM & ENAMEL REPAIR ORIGINAL TOOTHPASTE', 4, '1602126907x93hoq.DAC.jpg', 1960.00, '2020-10-09 09:04:45', '2020-10-09 09:04:45'),
(5, 4, 'Sensodyne Pronamel Toothpaste for Tooth Enamel Strengthening, Daily Protection, Mint Essence', 1, '1602127176mytnre.DAC.jpg', 500.00, '2020-10-09 09:04:45', '2020-10-09 09:04:45'),
(6, 5, 'ORAL-B GUM & ENAMEL REPAIR ORIGINAL TOOTHPASTE', 5, '1602126907x93hoq.DAC.jpg', 490.00, '2020-10-09 09:28:05', '2020-10-09 09:28:05'),
(7, 5, 'Sensodyne Pronamel Toothpaste for Tooth Enamel Strengthening, Daily Protection, Mint Essence', 6, '1602127176mytnre.DAC.jpg', 500.00, '2020-10-09 09:28:05', '2020-10-09 09:28:05'),
(8, 6, 'Bettina Barty', 1, '1603039431eak8xg.DAC.jpg', 0.48, '2020-10-20 11:04:02', '2020-10-20 11:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `ordered_product_attributes`
--

CREATE TABLE `ordered_product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ordered_product_id` int(11) NOT NULL,
  `color_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ordered_product_attributes`
--

INSERT INTO `ordered_product_attributes` (`id`, `ordered_product_id`, `color_code`, `color_name`, `size`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL),
(2, 2, NULL, NULL, NULL, NULL, NULL),
(3, 3, NULL, NULL, NULL, NULL, NULL),
(4, 4, NULL, NULL, NULL, NULL, NULL),
(5, 5, NULL, NULL, NULL, NULL, NULL),
(6, 6, NULL, NULL, NULL, NULL, NULL),
(7, 7, NULL, NULL, NULL, NULL, NULL),
(8, 8, NULL, NULL, NULL, NULL, NULL);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `number`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Cash on Delivery', NULL, NULL, '2020-09-29 12:54:20', '2020-09-29 14:56:34'),
(2, 'bKash', '+8801767911397', 'Merchant', NULL, '2020-10-12 12:29:13'),
(3, 'নগদ', '+8801845352549', 'Personal', '2020-09-29 12:53:09', '2020-10-12 12:29:49'),
(4, 'Roket', NULL, NULL, '2020-09-29 12:53:09', '2020-09-29 07:35:55');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `slag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sub_category_id`, `image`, `name`, `description`, `price`, `discount`, `status`, `slag`, `sku`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, '1601985409b0pqaz.DAC.jpg', 'Dove Shop 4x1pcs', 'This is a beauty cram bur.', 800.00, 5.00, 1, '1601985409.DAC.fscxZuJSC0', '061020201253-Dove', NULL, NULL, '2020-10-12 13:13:15'),
(2, 3, '1602126907x93hoq.DAC.jpg', 'ORAL-B GUM & ENAMEL REPAIR ORIGINAL TOOTHPASTE', 'ActivRepair™ technology targets the gumline area:\r\nIt defends teeth against acid erosion and strengthens enamel.\r\nIt provides antibacterial action actively protects gums.\r\nFor sensitive teeth – clinically proven.\r\nOral-B Gum & Repair Original toothpaste comes with a mild flavour and a smoother texture.', 500.00, 2.00, 1, '1602126907.DAC.81YF3odl4p', '081020200911-O', NULL, NULL, '2020-10-08 07:15:07'),
(3, 3, '1602127176mytnre.DAC.jpg', 'Sensodyne Pronamel Toothpaste for Tooth Enamel Strengthening, Daily Protection, Mint Essence', 'Ingredients:\r\nActive Ingredients - Purpose. Potassium Nitrate 5% - Antihypersensitivity. Sodium Fluoride 0.15% W/V Fluoride Ion - Anticavity.Inactive Ingredients: Water, Sorbitol, Hydrated Silica, Glycerin, PEG-8, Cocamidopropyl Betaine, Flavor, Xanthan Gum, Sodium Saccharin, Titanium Dioxide, Sodium Hydroxide.\r\nAbout this item:\r\nPronamel toothpaste for enamel protects against the effects of acid erosion from daily acidic foods and drinks\r\nProvides cavity protection and freshens breath\r\nOffers lasting sensitivity relief and enamel strengthening (with twice daily brushing)\r\nNumber 1 Dentist Recommended Brand for strengthening and protecting tooth enamel\r\nSensodyne Pronamel Daily Protection toothpaste is clinically proven to help rebuild enamel strength for strong, healthy teeth', 500.00, NULL, 1, '1602127176.DAC.qzFsRac7dG', '081020200919-S', NULL, NULL, '2020-10-08 07:19:36'),
(4, 1, '1602253420vex0hc.DAC.jpg', 'Radox  Men Shower Gel', 'Radox Feel Awake 2in1 mens shower gel is UK\'s no.1 shower gel with mood changing fragrance of fennel and sea minerals.', 520.00, NULL, 1, '1602253420.DAC.dxsTuZpNYB', '091020201523-R', NULL, NULL, '2020-10-20 11:34:45'),
(5, 2, '1602266055qnedki.DAC.jpg', 'Cien SENSITIVE SKIN MOISTURISING LOTION', 'This Cien SENSITIVE LOTION if used daily, you will surely see significant difference from the texture of your skin when ever you feel it. It makes it moisture and silky and adds more beauty in your look. Just try one and a trial will convince you.', 755.00, NULL, 1, '1602266055.DAC.0kjX9mIlJ3', '091020201843-C', NULL, NULL, '2020-10-20 02:51:19'),
(6, 1, '1602269922u34h5n.DAC.jpg', 'SPORT BLAST 3 IN 1 BODY WASH', 'Lynx Sports Blast men\'s shower gel is a energising and fresh fragrance with a masculine mix of citrus, pepper and ginger. Enjoy a super-charged clean to help you look, feel and smell your best .\r\n\r\nA great day starts with a great shower and there’s no greater shower than a Lynx shower. You might not conquer the world after it but you’ll feel like you can.', 475.00, 0.00, 1, '1602269922.DAC.palcXVAsrJ', '091020201957-L', NULL, NULL, '2020-10-20 02:50:05'),
(7, 2, '1602271895gabsl3.DAC.jpg', 'Herbal Essences Dazzling Shine', 'Herbal Essences Daily Detox Shine shampoo with white tea and mint gently cleans everyday impurities\r\n100% recyclable bottle (our cap not yet) depending on recycling facilities\r\nShampoo 0% colourants, 0% paraffin, 0% silicones\r\nRecognised by Peta Org for our commitment to always stand for cruelty free', 775.00, NULL, 1, '1602271895.DAC.PEHKfQmurx', '091020202028-h', NULL, NULL, '2020-10-20 02:52:32'),
(8, 1, '1602493467efnzq2.DAC.jpg', 'Cien Moisturising lotion', 'An extremely common multitasker ingredient that gives your skin a nice soft feel (emollient) and gives body to creams and lotions. It also helps to stabilize oil-water mixes (emulsions), though it does not function as an emulsifier in itself.', 755.00, NULL, 1, '1602493467.DAC.MEjNuir6AS', '121020200303-C', NULL, NULL, '2020-10-12 13:04:27'),
(9, 2, '1602493586i6fqha.DAC.jpg', 'Cien Moisturising lotion', 'An extremely common multitasker ingredient that gives your skin a nice soft feel (emollient) and gives body to creams and lotions. It also helps to stabilize oil-water mixes (emulsions), though it does not function as an emulsifier in itself.', 755.00, NULL, 1, '1602493586.DAC.vViuDUFJpm', '1210202000304-C', NULL, NULL, '2020-10-12 13:06:26'),
(10, 10, '1602494633pxe9w1.DAC.jpg', 'Nescafe Orginal', 'With its comforting aroma and distinctive full-flavour taste, NESCAFÉ 3in1 Original conveniently turns our medium-dark roast signature blend into a sweet white coffee in an instant. Made with high quality Robusta coffee beans and sealed in single-serve sachets.', 700.00, 3.00, 1, '1602494632.DAC.L7Wcq80dsa', '1210202000322-N', NULL, NULL, '2020-10-12 13:23:53'),
(11, 3, '1602495026qd09h2.DAC.jpg', 'Dentalux', 'Dentalux is an ideal fresh & clean WordPress Theme for dental clinics, dentist & tooth rreatment & repair business. ... This WordPress theme has firm corporate design in calming shades and colors which definitely inspires confidence in the premium quality of your medical services.', 650.00, NULL, 1, '1602495026.DAC.QiulwAcfZh', '1210202000330-D', NULL, NULL, '2020-10-12 13:30:26'),
(12, 2, '1603038619b3vzi0.DAC.jpg', 'Pond\'s White Beauty', 'Pond\'s White Beauty Anti-spot fairness SPF 15 PA++ Fairness Cream, It cleanses deeply to reduce to reduce dullness of your skin wirh pro vitamin B3.\r\nAll our products directly imported from UK and UAE.', 100.00, 3.00, 1, '1603038619.DAC.gaHMwANbts', '181020201727-p', NULL, NULL, '2020-10-18 20:30:20'),
(13, 2, '1603039431eak8xg.DAC.jpg', 'Bettina Barty', 'Bettina Barty, It nourishes both skin and skin with hands plenty.It prevents from drying out and makes it smooth\r\nAll of our products directly imported from UK and UAE.', 0.50, 3.00, 1, '1603039431.DAC.mLipS9Pdb0', '181020201743-b', NULL, NULL, '2020-10-18 20:43:51'),
(14, 2, '1603039742jahszv.DAC.jpg', 'Maybelline - Fit Me', 'Fit me +pore less liquid foundation make up is ideal for normal to oily skin. Maybelline Fit Me foundation is moisturizing and smoothing. Foundation blends for natural, brilliant result. Foundation. Maybelline - Make it happen Maybelline New York is one of the world\'s leading cosmetics brand', 1124.30, NULL, 1, '1603039742.DAC.RcM6l1ekfD', '181020201748-m', NULL, NULL, '2020-10-20 03:15:39'),
(15, 2, '1603040087rgin3s.DAC.jpg', 'miss shireena perfume', 'A beautiful female scent .If you like Miss Dior You will love Miss Shireena\r\nAll of our products directly imported from UK and UAE.', 2450.50, NULL, 1, '1603040087.DAC.M1gnho2peD', '181020201754-m', NULL, NULL, '2020-10-20 02:54:31'),
(16, 2, '1603040342jv94as.DAC.jpg', 'fair and lovely', 'It is the worlds first fairness cream with 100% safe ingredients It is good skin fairness', 529.50, 3.00, 1, '1603040342.DAC.FAYLEnHMrx', '181020201758-f', NULL, NULL, '2020-10-20 11:01:47'),
(17, 11, '160304298075320v.DAC.png', 'nido milk powder', 'Full cream nestle nido milk powder is obtained by spray drying process, and officially controlled, pasteurized and homogenized full cream cows milk. With natural vitamins, proteins and minerals, it makes perfectly delicious and nutritious milk for growing children and adults. it is also ideal for ice cream and desserts.', 1094.50, NULL, 1, '1603042980.DAC.ngJMKN8pZT', '181020201842-n', NULL, NULL, '2020-10-20 03:11:33'),
(18, 11, '1603044145x5fst6.DAC.jpg', 'nestle nan 2', 'Nestle NAN Optipro 2 is a follow-on milk suitable for babies from six months of age. Does your baby proteins and nutrients for proper development and growth.', 1194.70, NULL, 1, '1603044145.DAC.2Acy1tPD5K', '181020201901-n', NULL, NULL, '2020-10-20 03:12:40'),
(19, 1, '1603044413o7ur21.DAC.jpg', 'NIVEA MEN', 'Nivea men fresh active deo secures a feeling of all day freshness and offers trustworthy - long lasting protection.', 350.50, 0.00, 1, '1603044413.DAC.Q6RW3vuys2', '181020201905-m', NULL, NULL, '2020-10-19 13:47:10'),
(20, 10, '1603044637jucoya.DAC.jpg', 'carrefour drink power', 'Different flavours drink powder of tang of renowned brand\r\nAll of our products directly imported from UK and UAE.', 549.50, NULL, 1, '1603044637.DAC.05nOejuqxf', '181020201910-c', NULL, NULL, '2020-10-20 03:08:25'),
(21, 2, '1603044938l2u0tw.DAC.jpg', 'rexona motionsense', 'Rexona Women Antibacterial Antiperspirant Deodorant Will Help you to fight body odor with its MotionSense Technology and its clean scent will keep you fresh.', 369.70, NULL, 1, '1603044938.DAC.of1Xqja6bu', '181020201915-r', NULL, NULL, '2020-10-20 02:56:55'),
(22, 2, '1603045206u716bn.DAC.jpg', 'BOURJOIS Ultra black Mascara', 'BOURJOIS Ultra black Mascara is long lasting volume to your lashes and let your look speak louder than words\r\nAll of our products directly imported from UK and UAE.', 495.70, NULL, 1, '1603045206.DAC.ezQ0oHUCwd', '181020201919-b', NULL, NULL, '2020-10-20 02:58:08'),
(23, 2, '1603045968dca1xz.DAC.jpg', 'Elizabeth Helen', 'It has a smooth and creamy texture with a full coverage that gives you long lasting wear without the drying', 584.70, NULL, 1, '1603045968.DAC.JL13H0b6O8', '181020201932-e', NULL, NULL, '2020-10-20 02:59:10'),
(24, 2, '1603046220atdnv5.DAC.jpg', 'over 2 matte lip gloss', 'Non sticky, Long lasting clean and pink lip gloss that delivers softer glossy lips\r\nAll of our products directly imported from UK and UAE.', 749.70, NULL, 1, '1603046220.DAC.xolPWZpHCO', '181020201936-o', NULL, NULL, '2020-10-20 03:00:20'),
(25, 2, '1603047265w9vbt8.DAC.jpg', 'carla nail polish remover', 'Alcohal free nail polish strong remover\r\nAll of our products directly imported from UK and UAE.', 374.70, NULL, 1, '1603047265.DAC.jYhdb7SQBW', '181020201954-c', NULL, NULL, '2020-10-20 11:03:15'),
(26, 2, '1603047535movgfn.DAC.jpg', 'garnier ultra doux', 'Excellent shampoo for shining hair made in Egypt\r\nAll of our products directly imported from UK and UAE.', 559.70, NULL, 1, '1603047535.DAC.sp6mEblYW1', '181020201958-g', NULL, NULL, '2020-10-20 03:02:15'),
(27, 2, '1603047693gvnzo6.DAC.jpg', 'tresemme', 'It helps reinforce your hair strength and prevents hair falls due to breakage for longer and stronger hair from UAE', 694.90, NULL, 1, '1603047693.DAC.V3RBFNJ8md', '181020202001-t', NULL, NULL, '2020-10-20 03:20:59'),
(28, 1, '1603048195a7umyp.DAC.png', 'pantene shampoo', 'Pantene Pro-V Smooth & Sleek shampoo gently cleanses, while giving hair active Pro-V nutrients. Provides silky smoothness & frizz control for hair prone to frizz or dryness.', 525.20, 0.00, 1, '1603048195.DAC.i4RqXxYBQy', '181020202008-p', NULL, NULL, '2020-10-18 23:17:12'),
(29, 5, '1603048919ps5ctl.DAC.jpg', 'floralays', 'It is lightly moistened soft gentle and thick from United kingdom\r\nAll our products directly imported from UK and UAE.', 375.02, 0.00, 1, '1603048919.DAC.jqSKY9E52p', '181020202020-f', NULL, NULL, '2020-10-18 23:21:59'),
(30, 5, '1603049246t1ngj3.DAC.jpg', 'tango', 'It is powderd beverage brand , is fresh ans food flavourd drink from United Arab Emirates\r\nAll our products directly imported from UK and UAE.', 1995.20, 0.00, 1, '1603049246.DAC.K9BUyFIQv1', '181020202025', NULL, NULL, '2020-10-20 03:04:24'),
(31, 10, '1603049556uszwc7.DAC.jpg', 'quality street', 'Each pack contains a variety of rich intense chocolate and toffees in iconic shapes tightly wrapped like sparkling jewels from United kingdom\r\nAll our products directly imported from UK and UAE.', 1194.50, NULL, 1, '1603049556.DAC.GuZ5CDoEnR', '181020202031', NULL, NULL, '2020-10-20 03:09:35'),
(32, 5, '1603049812uaes6g.DAC.jpg', 'lupilu nappies', '4 in one baby wipes from United kingdom\r\nAll our products directly imported from UK and UAE.', 425.02, 0.00, 1, '1603049812.DAC.GamDPBYz21', '181020202036', NULL, NULL, '2020-10-18 23:36:52'),
(33, 1, '160314999979tzua.DAC.png', 'Original Source Mint & Tea Tree', 'Original Source Tea Tree and Mint Shower Gel is inspired by Ellen Waksman, famous for her herbal cures and bush remedies. Original Source Tea Tree and Mint Shower Gel gives a tingly feeling from essential mint oil derived from real mint leaves. Original Source Tea Tree and Mint Shower Gel gently cleanses away dirt with its non-greasy and non-sticky formula leaving skin clean, fresh and lightly scented.', 520.00, NULL, 1, '1603149999.DAC.NzbsS83w59', '201020200025-o', NULL, NULL, '2020-10-20 03:26:39'),
(35, 12, '1603176271ktx1fo.DAC.jpg', 'Johnson\'s Baby Oil', 't\'s a silky soft moisturiser for silky soft skin. Johnson\'s Baby Oil locks in up to 10 times more moisture on wet skin than an ordinary lotion can on dry skin, leaving your baby\'s skin soft and smooth. This gentle oil is also easy to spread, so it\'s ideal for baby massage.', 695.00, NULL, 1, '1603176271.DAC.qJi3RPkxHM', '201020200741-j', NULL, NULL, '2020-10-20 10:44:31'),
(36, 12, '16031777748lmchg.DAC.jpg', 'johnson baby soap', 'Mild & Gentle for Delicate Baby Skin\r\nClinically Proven - Mildness\r\nNo Parabens, Phthalates or Dyes\r\nFor over 125 years Johnson\'s formulas have been specially designed for baby\'s unique and delicate skin. Great for kids and adults too!\r\n\r\nContains mild moisturizers & delicately cleanses baby\'s skin\r\nHypoallergenic & tested with dermatologists\r\nFormulated to be gentle, never harsh', 875.00, NULL, 1, '1603177774.DAC.OdJeuGUmxy', '201020200808-j', NULL, NULL, '2020-10-20 11:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size`, `size_price`, `created_at`, `updated_at`) VALUES
(1, 8, '500ml', NULL, NULL, NULL),
(2, 9, '500ml', NULL, NULL, NULL),
(5, 10, '185 gm', NULL, NULL, NULL),
(6, 11, '500ml', NULL, NULL, NULL),
(8, 6, '250ml', NULL, NULL, NULL),
(10, 20, '500Mg', NULL, NULL, NULL),
(11, 17, '400mg', NULL, NULL, NULL),
(12, 18, '400mg', NULL, NULL, NULL),
(13, 33, '250mg', NULL, NULL, NULL),
(16, 35, '500ml', NULL, NULL, NULL),
(17, 4, '250ml', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 'This is a nice product.', 0, '2020-10-08 07:26:10', '2020-10-08 07:26:10'),
(2, 6, 4, 'fchfgchgc', 0, '2020-10-12 13:14:45', '2020-10-12 13:14:45'),
(3, 1, 5, 'Fantastic', 0, '2020-10-12 13:17:06', '2020-10-12 13:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2020-08-25 04:50:41', '2020-08-25 04:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_share_links`
--

CREATE TABLE `social_share_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_share_links`
--

INSERT INTO `social_share_links` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(1, 'facebook', 'https://www.facebook.com/London-Dubai-Shopping-Zone-104634518081882', '2020-09-19 20:48:11', '2020-10-06 15:42:18'),
(2, 'instagram', NULL, '2020-09-19 20:48:11', '2020-09-19 20:57:34'),
(3, 'pinterest', NULL, '2020-09-19 20:48:11', '2020-09-19 20:57:34'),
(4, 'whatsapp', '+8801767911397', '2020-09-19 20:48:11', '2020-10-06 15:42:18');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_by_emails`
--

CREATE TABLE `subscribe_by_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribe_by_emails`
--

INSERT INTO `subscribe_by_emails` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'bdshopping7@gmail.com', '2020-10-05 20:28:51', '2020-10-05 20:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `index` int(11) NOT NULL,
  `sub_category_slag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `index`, `sub_category_slag`, `created_at`, `updated_at`) VALUES
(1, 2, 'Men\'s Cosmetics', 1, '1601984877Men\'s_Cosmetics6DAHs', '2020-10-06 15:47:57', '2020-10-06 15:47:57'),
(2, 2, 'Women\'s Cosmetics', 2, '1601984897Women\'s_CosmeticsUcWRZ', '2020-10-06 15:48:17', '2020-10-06 15:48:17'),
(3, 4, 'Teeth Care Products', 3, '1602126323Teeth_Care_ProductswhW5z', '2020-10-08 07:05:23', '2020-10-08 07:05:23'),
(4, 5, 'Women\'s Fashion', 4, '1602127399Women\'s_FashionlS8Tv', '2020-10-08 07:23:19', '2020-10-08 07:23:19'),
(5, 4, 'Health & Body Fitness', 5, '1602488539Health_&_Body_Fitness3oIh6', '2020-10-12 11:42:19', '2020-10-12 11:42:19'),
(6, 5, 'Men\'s Fashion', 6, '1602488562Men\'s_FashionzBD8x', '2020-10-12 11:42:42', '2020-10-12 11:42:42'),
(7, 5, 'junior Fashion', 7, '1602488578junior_Fashionbpvqf', '2020-10-12 11:42:58', '2020-10-12 11:42:58'),
(8, 6, 'Computer & Accessories', 8, '1602488704Computer_&_AccessoriestgkTV', '2020-10-12 11:45:04', '2020-10-12 11:45:04'),
(9, 6, 'Mobile & Accessories', 9, '1602488745Mobile_&_AccessorieshO8eU', '2020-10-12 11:45:45', '2020-10-12 11:45:45'),
(10, 7, 'Adult Food', 10, '1602488824Adult_Food9oh0B', '2020-10-12 11:47:04', '2020-10-12 11:47:04'),
(11, 7, 'Baby Food', 11, '1602488834Baby_FoodgPUXR', '2020-10-12 11:47:14', '2020-10-12 11:47:14'),
(12, 2, 'baby cosmetics', 12, '1603150824baby_cosmeticsZg9qf', '2020-10-20 03:40:24', '2020-10-20 03:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `text_sliders`
--

CREATE TABLE `text_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `text_sliders`
--

INSERT INTO `text_sliders` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Beauty', NULL, '2020-10-12 12:53:32'),
(2, 'Spa', NULL, '2020-10-12 12:32:19'),
(3, ',Fashion', NULL, '2020-10-12 12:32:29'),
(4, 'Style', NULL, '2020-10-12 12:32:39'),
(5, 'Trendy', NULL, '2020-10-12 12:32:57'),
(6, 'Imported', NULL, '2020-10-12 12:33:32'),
(7, 'Original', NULL, '2020-10-12 12:33:38'),
(8, 'Exclusive', NULL, '2020-10-12 12:33:47'),
(9, 'Exceptional', NULL, '2020-10-12 12:33:59'),
(10, 'Genuine', NULL, '2020-10-12 12:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Russel', 1, 'rasel.md.bd@gmail.com', '2020-10-06 09:53:46', '$2y$10$8RLqmhWecg/sIbMiXZU7legXLXnLJSwmAkY0mw0wKfkb9QOvilwh.', NULL, '2020-08-24 22:49:25', '2020-10-06 09:53:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_companies`
--
ALTER TABLE `about_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `advertisements_name_unique` (`name`);

--
-- Indexes for table `all_countries`
--
ALTER TABLE `all_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_countries_company`
--
ALTER TABLE `all_countries_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_name_unique` (`category_name`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_payment`
--
ALTER TABLE `company_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_infos`
--
ALTER TABLE `contact_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers_orders`
--
ALTER TABLE `customers_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_supports`
--
ALTER TABLE `customer_supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geolocations`
--
ALTER TABLE `geolocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_banner_scrolls`
--
ALTER TABLE `main_banner_scrolls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_banner_scrolls_name_unique` (`name`);

--
-- Indexes for table `menu_sliders`
--
ALTER TABLE `menu_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered_product_attributes`
--
ALTER TABLE `ordered_product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `social_share_links`
--
ALTER TABLE `social_share_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_share_links_name_unique` (`name`);

--
-- Indexes for table `subscribe_by_emails`
--
ALTER TABLE `subscribe_by_emails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribe_by_emails_email_unique` (`email`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `text_sliders`
--
ALTER TABLE `text_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_companies`
--
ALTER TABLE `about_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `all_countries`
--
ALTER TABLE `all_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `all_countries_company`
--
ALTER TABLE `all_countries_company`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_payment`
--
ALTER TABLE `company_payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_infos`
--
ALTER TABLE `contact_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers_orders`
--
ALTER TABLE `customers_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_supports`
--
ALTER TABLE `customer_supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `geolocations`
--
ALTER TABLE `geolocations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_banner_scrolls`
--
ALTER TABLE `main_banner_scrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_sliders`
--
ALTER TABLE `menu_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `ordered_products`
--
ALTER TABLE `ordered_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ordered_product_attributes`
--
ALTER TABLE `ordered_product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_share_links`
--
ALTER TABLE `social_share_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscribe_by_emails`
--
ALTER TABLE `subscribe_by_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `text_sliders`
--
ALTER TABLE `text_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
