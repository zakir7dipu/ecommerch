-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2020 at 07:13 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

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
(1, 'Cosmetics', 1, '1598542157CosmeticsODHEu', '2020-08-27 09:29:17', '2020-08-28 10:36:48'),
(2, 'Health Care', 2, '1598542194Health_CareqmITH', '2020-08-27 09:29:54', '2020-08-28 11:08:35'),
(3, 'Men\'s Cloths', 5, '1598542234Men\'s_Cloths0Lly5', '2020-08-27 09:30:34', '2020-08-28 10:36:43'),
(4, 'Women\'s Cloths', 4, '1598542270Women\'s_ClothsIwU6V', '2020-08-27 09:31:10', '2020-08-28 11:08:35'),
(5, 'Kids', 3, '1598542293Kids3Q0e4', '2020-08-27 09:31:33', '2020-08-28 11:08:35');

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
(1, 'Logo', '15986348782nl5b4.logo-image.png', '2020-08-27 10:39:27', '2020-08-28 11:14:38'),
(2, 'Banner', '159854812806j1z8.banner-image.jpg', '2020-08-27 11:07:41', '2020-08-27 11:08:48');

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
(1, 'Banner1', '1598577167cebmq6.banner-image1.jpg', NULL, '2020-08-27 19:12:47'),
(2, 'Banner2', '1598575383ijfsl3.banner-image2.jpg', NULL, NULL),
(3, 'Banner3', '1598575383wp8god.banner-image3.png', NULL, NULL);

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
(1, 'Menu-Slider1', '15985800586xydbz.Menu-Slider1.jpg', NULL, '2020-08-27 20:00:58'),
(2, 'Menu-Slider2', '1598580090tozyqa.Menu-Slider2.jpg', NULL, '2020-08-27 20:01:30'),
(3, 'Menu-Slider3', '1598580012gnu1ai.menu-slider-image3.jpg', NULL, NULL);

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
(27, '2020_08_29_164859_create_reviews_table', 12);

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
(1, 1, '15985919150wvf2d.DAC.jpg', 'ZEESEA New Egypt косметика  Long Lasting Waterproof Nutritious Lipstick*301', 'The texture is luxury with forging lights, it is soft and silky. Showing rich colors with creative and leading color technology. It has lasting coloring, which is refreshing and non-sticky, creating rich and attractive lip.', 160.00, 10.00, 1, '1598591915.DAC.gGi4QeVtja', 'ZEES28082020', NULL, NULL, '2020-08-29 09:51:29'),
(2, 1, '1598592279bt0ckf.DAC.jpg', 'RtopR Lip Makeup Non-stick Cup Lipstick Lip Gloss', 'Rich color lock, outline the lip contour in one stroke, release the color with a touch, velvety smooth, melt on the lips, showing rich color, delicate and delicate, matte texture, light and silky, moisturizing and moisturizing light makeup.', 150.00, NULL, 1, '1598592279.DAC.a1Sl0CG2VZ', 'Rtop28082020', NULL, NULL, '2020-08-27 23:24:39'),
(3, 1, '1598592417514963.DAC.jpg', 'ZEESEA New Egypt косметика  Long Lasting Waterproof Nutritious Lipstick*302', 'The texture is luxury with forging lights, it is soft and silky. Showing rich colors with creative and leading color technology. It has lasting coloring, which is refreshing and non-sticky, creating rich and attractive lips.', 160.00, NULL, 1, '1598592417.DAC.ke1yQ2Suws', 'ZEES27082020', NULL, NULL, '2020-08-27 23:26:57'),
(4, 1, '1598592548s9lahx.DAC.jpg', 'RtopR Lip Makeup Non-stick Cup Lipstick Lip Gloss', 'Rich color lock, outline the lip contour in one stroke, release the color with a touch, velvety smooth, melt on the lips, showing rich color, delicate and delicate, matte texture, light and silky, moisturizing and moisturizing light makeup.', 150.00, NULL, 1, '1598592548.DAC.M2AeuvkPRq', 'RtopR28082020', NULL, NULL, '2020-08-27 23:29:08'),
(5, 1, '1598592840ltj1nf.DAC.jpg', 'MISS ROSE Matte Lipstick Lip Liner Pencil Waterproof Long Lasting', '100% brand new and high quality.\r\nPortable size, easy to carry.\r\nWaterproof,easy to wear, and natural.\r\nSuitable for professional use or home use.\r\nLong period of moisturizing and holding color\r\nGood adhesion, can be maintained for a long time bright colors.\r\nHigh concentration of color factor, highlight the three-dimensional lip.\r\nSpecification\r\nQuantity:1pc\r\nWeight:0.02kg', 70.00, NULL, 1, '1598592840.DAC.NoqzvVJHyU', 'MISS28082020', NULL, NULL, '2020-08-27 23:34:00'),
(6, 1, '1598593191ri1wxn.DAC.jpg', 'Lipstick Temperature Color Change Lady Lip Moisturizer Jelly Balm Cream Aloe Moisturizing Long Lasting Lip stick makeup TSLM1', '100% new high quality.\r\nNatural aloe vera gel moisturizing lip balm.\r\nTemperature changes lasting moisturizing jelly lipstick.\r\nLong-lasting lip makeup, not easy to fade, waterproof and sweat-proof, full color, bright color.\r\nSpecification:\r\nItem: Color Changing Lipstick\r\n    Net weight: 3.5g\r\n    Appearance Color: Green\r\n    Condition: New\r\n    With Aloe Vera, long-lasting moisturizing your lip.\r\n    Available Length: 2.5cm/0.98inch\r\n    Overall Dimensions: L7 x D2cm/2.7 x 0.78inch\r\n    Quantity: 1pcs\r\n    Shell Material: Plastic', 130.00, NULL, 1, '1598593191.DAC.vjHmKQF9tf', 'TSLM128082020', NULL, NULL, '2020-08-27 23:39:51'),
(7, 1, '1598593540sqeojw.DAC.jpg', 'Makeup Lipstick Professional Matte Lipsticks Waterproof Long Lasting Sexy Red Lips Gloss', 'A nice Product', 210.00, NULL, 1, '1598593540.DAC.3fWtmjakP1', 'Makeup20082020', NULL, NULL, '2020-08-27 23:45:40'),
(8, 1, '1598593612g2trvj.DAC.jpg', 'Makeup Lipstick Professional Matte Lipsticks Waterproof Long Lasting Sexy Red Lips Gloss', 'A nice Product', 210.00, NULL, 1, '1598593612.DAC.Grzoeh1Tb2', 'M-662020912', NULL, NULL, '2020-08-27 23:46:52'),
(9, 1, '15985937640gbdlv.DAC.jpg', 'HANDAIYAN Moisturize Matte Lipstick', 'Rose Essence Lip Balm\r\nNatural rose essence lip balm moisturizing repair relieve dry chapped lip lines.\r\nBefore use:lips are dry and lusterless\r\nAfter use:lips are tender and bright in color\r\nBrand: HANDAIYAN\r\nSize:17mm wide*84mm high\r\nNet weight:3.2g/0.11oz\r\nColer:8 Colers for choose\r\nEfficacy: Lasting color, moisturizing and moisturizing downplaying lip lines.\r\nShelf life:3 years\r\nOrigin: Made in China', 140.00, NULL, 1, '1598593764.DAC.uCijKk9OGY', 'P-672020129', NULL, NULL, '2020-08-27 23:49:24'),
(10, 1, '1598593855rb8im0.DAC.jpg', 'HANDAIYAN Moisturize Matte Lipstick', 'Rose Essence Lip Balm\r\nNatural rose essence lip balm moisturizing repair relieve dry chapped lip lines.\r\nBefore use:lips are dry and lusterless\r\nAfter use:lips are tender and bright in color\r\nBrand: HANDAIYAN\r\nSize:17mm wide*84mm high\r\nNet weight:3.2g/0.11oz\r\nColer:8 Colers for choose\r\nEfficacy: Lasting color, moisturizing and moisturizing downplaying lip lines.\r\nShelf life:3 years\r\nOrigin: Made in China', 140.00, NULL, 1, '1598593855.DAC.eXL1IqiyQD', 'B-672020133', NULL, NULL, '2020-08-27 23:50:55'),
(11, 2, '1598594063l4mepo.DAC.jpg', 'High Quality Eyes Makeup Liquid Eyeliner Waterproof 24 Hours Long-lasting', 'Top Quality 24 Hours Long lasting water-proof and smudge-proof formula that resists sweat, tears, and water.\r\nIncludes the oil share.\r\nPrevents around the eye dry.', 100.00, NULL, 1, '1598594063.DAC.Bbi7uWNcSQ', 'eye20802020', NULL, NULL, '2020-08-27 23:54:24'),
(12, 2, '1598594169h8andl.DAC.jpg', 'High Quality Eyes Makeup Liquid Eyeliner Waterproof 24 Hours Long-lasting', 'Top Quality 24 Hours Long lasting water-proof and smudge-proof formula that resists sweat, tears, and water.\r\nIncludes the oil share.\r\nPrevents around the eye dry.', 110.00, NULL, 1, '1598594169.DAC.3G7zc0ENYw', 'ZEES28082021', NULL, NULL, '2020-08-27 23:56:10'),
(13, 2, '1598594319ug6wyt.DAC.jpg', 'High Quality Eyes Makeup Liquid Eyeliner Waterproof 24 Hours Long-lasting', 'Top Quality 24 Hours Long lasting water-proof and smudge-proof formula that resists sweat, tears, and water.\r\nIncludes the oil share.\r\nPrevents around the eye dry.', 120.00, NULL, 1, '1598594319.DAC.jHlkranVfT', 'ZEES28082022', NULL, NULL, '2020-08-27 23:58:39'),
(14, 2, '15985944376q530k.DAC.jpg', 'High Quality Eyes Makeup Liquid Eyeliner Waterproof 24 Hours Long-lasting', 'Top Quality 24 Hours Long lasting water-proof and smudge-proof formula that resists sweat, tears, and water.\r\nIncludes the oil share.\r\nPrevents around the eye dry.', 120.00, NULL, 1, '1598594437.DAC.stAZFOR0hl', 'High2820202020', NULL, NULL, '2020-08-28 00:00:37'),
(15, 2, '1598594570byzjfn.DAC.jpg', 'Black Eyeliner Waterproof Liquid Eye Liner', 'Top Quality 24 Hours Long lasting water-proof and smudge-proof formula that resists sweat, tears, and water.\r\nIncludes the oil share.\r\nPrevents around the eye dry.', 150.00, NULL, 1, '1598594570.DAC.w9RITxGkEF', 'M-662022658932', NULL, NULL, '2020-08-28 00:02:51'),
(16, 2, '1598594713t893l6.DAC.jpg', 'High Quality Eyes Makeup Liquid Eyeliner Waterproof 24 Hours Long-lasting', 'Top Quality 24 Hours Long lasting water-proof and smudge-proof formula that resists sweat, tears, and water.\r\nIncludes the oil share.\r\nPrevents around the eye dry.', 70.00, NULL, 1, '1598594713.DAC.R7iGrd2yWe', 'new12021452', NULL, NULL, '2020-08-28 00:05:43'),
(17, 2, '1598595375toq2ka.DAC.jpg', 'High Quality Eyes Makeup Liquid Eyeliner Waterproof 24 Hours Long-lasting', 'Top Quality 24 Hours Long lasting water-proof and smudge-proof formula that resists sweat, tears, and water.\r\nIncludes the oil share.\r\nPrevents around the eye dry.', 130.00, NULL, 1, '1598595375.DAC.oNe4LUlu6q', 'P-678945621', NULL, NULL, '2020-08-28 00:16:15'),
(18, 2, '15985954742t3gsh.DAC.jpg', 'High Quality Eyes Makeup Liquid Eyeliner Waterproof 24 Hours Long-lasting', 'Top Quality 24 Hours Long lasting water-proof and smudge-proof formula that resists sweat, tears, and water.\r\nIncludes the oil share.\r\nPrevents around the eye dry.', 80.00, NULL, 1, '1598595474.DAC.YadC0K4VME', 'M-6720201238asdasd', NULL, NULL, '2020-08-28 00:17:54'),
(19, 2, '1598595587rylemo.DAC.png', 'High Quality Eyes Makeup Liquid Eyeliner Waterproof 24 Hours Long-lasting', 'Top Quality 24 Hours Long lasting water-proof and smudge-proof formula that resists sweat, tears, and water.\r\nIncludes the oil share.\r\nPrevents around the eye dry.', 300.00, NULL, 1, '1598595587.DAC.dU0IKxhVsP', 'Eyrsdf1233456', NULL, NULL, '2020-08-28 00:19:48'),
(20, 2, '1598595681t6y5i9.DAC.jpg', 'High Quality Eyes Makeup Liquid Eyeliner Waterproof 24 Hours Long-lasting', 'Top Quality 24 Hours Long lasting water-proof and smudge-proof formula that resists sweat, tears, and water.\r\nIncludes the oil share.\r\nPrevents around the eye dry.', 250.00, NULL, 1, '1598595681.DAC.V5lYxHcnk3', 'ZEES280822222', NULL, NULL, '2020-08-28 00:21:21'),
(21, 1, '1598684490dnubwa.DAC.jpg', 'ZEESEA New Egypt косметика  Long Lasting Waterproof Nutritious Lipstick*301', 'The texture is luxury with forging lights, it is soft and silky. Showing rich colors with creative and leading color technology. It has lasting coloring, which is refreshing and non-sticky, creating rich and attractive lip.', 160.00, NULL, 1, '1598684490.DAC.3RsKSt7Def', 'ZEESEA29802020', NULL, NULL, '2020-08-29 09:16:11');

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

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_code`, `color_name`, `color_price`, `created_at`, `updated_at`) VALUES
(12, 2, '#880c0c', 'Caramel R01', NULL, NULL, NULL),
(13, 3, '#e40c0c', '302', NULL, NULL, NULL),
(14, 4, '#d96868', 'Caramel R02', NULL, NULL, NULL),
(15, 5, '#f38686', '01', NULL, NULL, NULL),
(16, 6, '#125917', 'Green', NULL, NULL, NULL),
(17, 7, '#c85656', '301', NULL, NULL, NULL),
(18, 8, '#e14747', '310', NULL, NULL, NULL),
(19, 9, '#c84141', '302', NULL, NULL, NULL),
(20, 10, '#e11414', '120', NULL, NULL, NULL),
(42, 21, '#cc3333', '301', NULL, NULL, NULL),
(49, 1, '#a13a3a', '301', NULL, NULL, NULL),
(50, 1, '#392fc6', 'blue', NULL, NULL, NULL);

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
(14, 1, 's', NULL, NULL, NULL),
(15, 1, 'M', NULL, NULL, NULL),
(16, 1, 'L', NULL, NULL, NULL);

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
(1, 1, 5, NULL, 0, '2020-08-29 11:06:44', '2020-08-29 11:06:44'),
(2, 1, 4, 'nice', 0, '2020-08-29 11:07:25', '2020-08-29 11:07:25'),
(3, 1, 4, NULL, 0, '2020-08-29 11:07:54', '2020-08-29 11:07:54'),
(4, 1, 4, NULL, 0, '2020-08-29 11:08:04', '2020-08-29 11:08:04'),
(5, 1, 4, NULL, 0, '2020-08-29 11:08:16', '2020-08-29 11:08:16'),
(6, 1, 3, NULL, 0, '2020-08-29 11:08:39', '2020-08-29 11:08:39');

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
(1, 1, 'Lipstick', 1, '1598542655Lipstick1xn4A', '2020-08-27 09:37:35', '2020-08-28 11:27:22'),
(2, 1, 'Eyeliner', 2, '1598542708EyelinerlN5of', '2020-08-27 09:38:28', '2020-08-28 11:27:22'),
(3, 1, 'Mascara', 3, '1598542730MascaradQ1y7', '2020-08-27 09:38:50', '2020-08-28 11:08:41'),
(4, 1, 'Beauty Essentials', 4, '1598542780Beauty_EssentialsGkuIt', '2020-08-27 09:39:40', '2020-08-28 11:08:41'),
(5, 2, 'Home Use Beauty Devices', 5, '1598542941Home_Use_Beauty_DevicesAsI3h', '2020-08-27 09:42:21', '2020-08-28 11:08:41'),
(6, 2, 'Braces & Supports', 6, '1598542955Braces_&_SupportslKSrH', '2020-08-27 09:42:35', '2020-08-28 11:08:41'),
(7, 2, 'Patches', 7, '1598542971PatchesbO8MH', '2020-08-27 09:42:51', '2020-08-28 11:08:41'),
(8, 2, 'Slimming Product', 8, '1598542993Slimming_ProductT0Q5X', '2020-08-27 09:43:13', '2020-08-28 11:08:41'),
(9, 2, 'Relaxation Treatments', 9, '1598543008Relaxation_TreatmentsIJQ2u', '2020-08-27 09:43:28', '2020-08-28 11:08:41'),
(10, 3, 'T-Shirts', 18, '1598543143T-ShirtsTxFik', '2020-08-27 09:45:43', '2020-08-28 11:08:41'),
(11, 3, 'Shirts', 19, '1598543155Shirts2XWK9', '2020-08-27 09:45:55', '2020-08-28 11:08:41'),
(12, 3, 'Jeans', 20, '1598543166JeansTkLd2', '2020-08-27 09:46:06', '2020-08-28 11:08:41'),
(13, 3, 'Casual Pants', 21, '1598543180Casual_PantspjKD3', '2020-08-27 09:46:20', '2020-08-28 11:08:41'),
(14, 5, 'Mother & Kids', 10, '1598543258Mother_&_KidsZJlKz', '2020-08-27 09:47:38', '2020-08-28 11:08:41'),
(15, 5, 'Baby Clothing', 11, '1598543275Baby_ClothingPM2bN', '2020-08-27 09:47:55', '2020-08-28 11:08:41'),
(16, 5, 'Kids Food', 12, '1598543341Kids_FoodIsLGd', '2020-08-27 09:49:01', '2020-08-28 11:08:41'),
(17, 5, 'Toys & Hobbies', 13, '1598543366Toys_&_HobbiesXlYCb', '2020-08-27 09:49:26', '2020-08-28 11:08:41'),
(18, 4, 'Saree', 15, '1598543588SareeQjHz0', '2020-08-27 09:53:08', '2020-08-28 11:08:41'),
(19, 4, 'SHALWAR KAMEEZ', 14, '1598543608SHALWAR_KAMEEZ2kbAY', '2020-08-27 09:53:28', '2020-08-28 11:08:41'),
(20, 4, 'Hijab', 16, '1598543651HijabskDb6', '2020-08-27 09:54:11', '2020-08-28 11:08:41'),
(21, 4, 'Kaftan', 17, '1598543673KaftanHaZfT', '2020-08-27 09:54:33', '2020-08-28 11:08:41');

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
(1, 'zakir Hossain', 1, 'zakir7dipu@gmail.com', '2020-08-24 23:26:01', '$2y$10$8RLqmhWecg/sIbMiXZU7legXLXnLJSwmAkY0mw0wKfkb9QOvilwh.', NULL, '2020-08-24 22:49:25', '2020-08-24 23:26:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_name_unique` (`category_name`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
