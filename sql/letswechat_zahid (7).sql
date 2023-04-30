-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 08, 2022 at 10:45 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `letswechat_zahid`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `selected` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_id`, `address1`, `address2`, `city`, `state`, `postal_code`, `country`, `currency_code`, `account`, `payment_method_id`, `selected`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'USD', 'aalvinmark92@gmail.com', 1, 'No', '2022-09-21 06:42:53', '2022-09-21 06:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `profile_image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$8BSDvS1kCxcXxzqW.oXcXOKGSNqEiwM/wA6qLOpZSoPTo7t1Sq6Xq', NULL, 'Active', NULL, '2021-06-29 00:21:02', '2021-06-29 00:21:02'),
(3, 'athi', 'athi@gmail.com', '$2y$10$xOaejQw319DXdbtzHysGHeqMTVtx5x7dLAfiNcFLKeJbwyVAaDjc.', NULL, 'Inactive', NULL, '2022-03-25 22:23:29', '2022-03-25 22:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(10) UNSIGNED NOT NULL,
  `temp_id` int(25) DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` int(25) DEFAULT NULL,
  `deleted_status` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `temp_id`, `title`, `description`, `symbol`, `type_id`, `status`, `lang`, `lang_id`, `deleted_status`) VALUES
(1, 1, 'Essentials', 'Towels, bed sheets, soap and toilet paper', 'essentials', 1, 'Active', 'en', 1, 'No'),
(2, 2, 'TV', '', 'tv', 1, 'Active', 'en', 1, 'No'),
(3, 3, 'Cable TV', '', 'desktop', 1, 'Active', 'en', 1, 'No'),
(4, 4, 'Air Conditioning', '', 'air-conditioning', 1, 'Active', 'en', 1, 'No'),
(5, 5, 'Heating', 'Heating', 'heating', 1, 'Active', 'en', 1, 'No'),
(6, 6, 'Kitchen', 'Kitchen', 'meal', 1, 'Active', 'en', 1, 'No'),
(7, 7, 'Internet', 'Internet', 'internet', 1, 'Active', 'en', 1, 'No'),
(8, 8, 'Gym', 'Gym', 'gym', 1, 'Active', 'en', 1, 'No'),
(9, 9, 'Elevator in Building', '', 'elevator', 1, 'Active', 'en', 1, 'No'),
(10, 10, 'Indoor Fireplace', '', 'fireplace', 1, 'Active', 'en', 1, 'No'),
(11, 11, 'Buzzer/Wireless Intercom', '', 'intercom', 1, 'Active', 'en', 1, 'No'),
(12, 12, 'Doorman', '', 'doorman', 1, 'Active', 'en', 1, 'No'),
(13, 13, 'Shampoo', '', 'smoking', 1, 'Active', 'en', 1, 'No'),
(14, 14, 'Wireless Internet', 'Wireless Internet', 'wifi', 1, 'Active', 'en', 1, 'No'),
(15, 15, 'Hot Tub', '', 'hot-tub', 1, 'Active', 'en', 1, 'No'),
(16, 16, 'Washer', 'Washer', 'washer', 1, 'Active', 'en', 1, 'No'),
(17, 17, 'Pool', 'Pool', 'pool', 1, 'Active', 'en', 1, 'No'),
(18, 18, 'Dryer', 'Dryer', 'dryer', 1, 'Active', 'en', 1, 'No'),
(19, 19, 'Breakfast', 'Breakfast', 'cup', 1, 'Active', 'en', 1, 'No'),
(20, 20, 'Free Parking on Premises', '', 'parking', 1, 'Active', 'en', 1, 'No'),
(21, 21, 'Family/Kid Friendly', 'Family/Kid Friendly', 'family', 1, 'Active', 'en', 1, 'No'),
(22, 22, 'Smoking Allowed', '', 'smoking', 1, 'Active', 'en', 1, 'No'),
(23, 23, 'Suitable for Events', 'Suitable for Events', 'balloons', 1, 'Active', 'en', 1, 'No'),
(24, 24, 'Pets Allowed', '', 'paw', 1, 'Active', 'en', 1, 'No'),
(25, 25, 'Pets live on this property', '', 'ok', 1, 'Active', 'en', 1, 'No'),
(26, 26, 'Wheelchair Accessible', 'Wheelchair Accessible', 'accessible', 1, 'Active', 'en', 1, 'No'),
(27, 27, 'Smoke Detector', 'Smoke Detector', 'ok', 2, 'Active', 'en', 1, 'No'),
(28, 28, 'Carbon Monoxide Detector', 'Carbon Monoxide Detector', 'ok', 2, 'Active', 'en', 1, 'No'),
(29, 29, 'First Aid Kit', '', 'ok', 2, 'Active', 'en', 1, 'No'),
(30, 30, 'Safety Card', 'Safety Card', 'ok', 2, 'Active', 'en', 1, 'No'),
(31, 31, 'Fire Extinguisher', 'Fire Extinguisher', 'ok', 2, 'Active', 'en', 1, 'No'),
(40, 14, 'انترنت لاسلكي', 'انترنت لاسلكي', '', 26, 'Active', 'ar', 2, 'No'),
(41, 14, '无线互联网', '无线互联网', '', 27, 'Active', 'ch', 3, 'No'),
(42, 14, 'Internet sans fil', 'Internet sans fil', '', 28, 'Active', 'fr', 4, 'No'),
(43, 14, 'Internet sem fio', 'Internet sem fio', '', 29, 'Active', 'pt', 5, 'No'),
(44, 14, 'Беспроводной интернет', 'Беспроводной интернет', '', 30, 'Active', 'ru', 6, 'No'),
(45, 14, 'Conexión inalámbrica a internet', 'Body', '', 31, 'Active', 'es', 7, 'No'),
(46, 14, 'Kablosuz internet', 'Kablosuz internet', '', 32, 'Active', 'tr', 8, 'No'),
(47, 26, 'تسهيلات لدخول المعاقين', 'تسهيلات لدخول المعاقين', '', 26, 'Active', 'ar', 2, 'No'),
(48, 26, '无障碍通道', '无障碍通道', '', 27, 'Active', 'ch', 3, 'No'),
(49, 26, 'Accessible aux fauteuils roulants', 'Accessible aux fauteuils roulants', '', 28, 'Active', 'fr', 4, 'No'),
(50, 26, 'Acessível a cadeiras de rodas', 'Acessível a cadeiras de rodas', '', 29, 'Active', 'pt', 5, 'No'),
(51, 26, 'Доступно для инвалидов', 'Доступно для инвалидов', '', 30, 'Active', 'ru', 6, 'No'),
(52, 26, 'silla de ruedas accesible', 'silla de ruedas accesible', '', 31, 'Active', 'es', 7, 'No'),
(53, 26, 'tekerlekli sandalye erişimine uygun', 'tekerlekli sandalye erişimine uygun', '', 32, 'Active', 'tr', 8, 'No'),
(54, 16, 'غسالة', 'غسالة', '', 26, 'Active', 'ar', 2, 'No'),
(55, 16, '垫圈', '垫圈', '', 27, 'Active', 'ch', 3, 'No'),
(56, 16, 'machine à laver', 'machine à laver', '', 28, 'Active', 'fr', 4, 'No'),
(57, 16, 'máquina de lavar', 'máquina de lavar', '', 29, 'Active', 'pt', 5, 'No'),
(58, 16, 'стиральная машина', 'стиральная машина', '', 30, 'Active', 'ru', 6, 'No'),
(59, 16, 'lavadora', 'lavadora', '', 31, 'Active', 'es', 7, 'No'),
(60, 16, 'yıkayıcı', 'yıkayıcı', '', 32, 'Active', 'tr', 8, 'No'),
(61, 2, 'تلفزيون', 'تلفزيون', '', 26, 'Active', 'ar', 2, 'No'),
(62, 2, '电视', '电视', '', 27, 'Active', 'ch', 3, 'No'),
(63, 2, 'la télé', 'la télé', '', 28, 'Active', 'fr', 4, 'No'),
(64, 2, 'televisão', 'televisão', '', 29, 'Active', 'pt', 5, 'No'),
(65, 2, 'телевидение', 'телевидение', '', 30, 'Active', 'ru', 6, 'No'),
(66, 2, 'televisor', 'televisor', '', 31, 'Active', 'es', 7, 'No'),
(67, 2, 'televizyon', 'televizyon', '', 32, 'Active', 'tr', 8, 'No'),
(68, 23, 'مناسب للأحداث', 'مناسب للأحداث', '', 26, 'Active', 'ar', 2, 'No'),
(69, 23, '适合活动', '适合活动', '', 27, 'Active', 'ch', 3, 'No'),
(70, 23, 'Convient pour les événements', 'Convient pour les événements', '', 28, 'Active', 'fr', 4, 'No'),
(71, 23, 'Adequado para eventos', 'Adequado para eventos', '', 29, 'Active', 'pt', 5, 'No'),
(72, 23, 'Подходит для мероприятий', 'Подходит для мероприятий', '', 30, 'Active', 'ru', 6, 'No'),
(73, 23, 'Apto para eventos', 'Apto para eventos', '', 31, 'Active', 'es', 7, 'No'),
(74, 23, 'Etkinlikler için Uygun', 'Etkinlikler için Uygun', '', 32, 'Active', 'tr', 8, 'No'),
(75, 22, 'مسموح التدخين', 'مسموح التدخين', '', 26, 'Active', 'ar', 2, 'No'),
(76, 22, '允许吸烟', '允许吸烟', '', 27, 'Active', 'ch', 3, 'No'),
(77, 22, 'Autorisation de fumer', 'Autorisation de fumer', '', 28, 'Active', 'fr', 4, 'No'),
(78, 22, 'fumar é permitido', 'fumar é permitido', '', 29, 'Active', 'pt', 5, 'No'),
(79, 22, 'курить разрешено', 'курить разрешено', '', 30, 'Active', 'ru', 6, 'No'),
(80, 22, 'fumar está permitido', 'fumar está permitido', '', 31, 'Active', 'es', 7, 'No'),
(81, 22, 'sigara içmek serbesttir', 'sigara içmek serbesttir', '', 32, 'Active', 'tr', 8, 'No'),
(82, 27, 'كاشف الدخان', 'كاشف الدخان', '', 19, 'Active', 'ar', 2, 'No'),
(83, 27, '烟雾探测器', '烟雾探测器', '', 20, 'Active', 'ch', 3, 'No'),
(84, 27, 'détecteur de fumée', 'détecteur de fumée', '', 21, 'Active', 'fr', 4, 'No'),
(85, 27, 'detector de fumaça', 'detector de fumaça', '', 22, 'Active', 'pt', 5, 'No'),
(86, 27, 'детектор дыма', 'детектор дыма', '', 23, 'Active', 'ru', 6, 'No'),
(87, 27, 'detector de humo', 'detector de humo', '', 24, 'Active', 'es', 7, 'No'),
(88, 27, 'duman dedektörü', 'duman dedektörü', '', 25, 'Active', 'tr', 8, 'No'),
(89, 13, 'شامبو', 'شامبو', '', 26, 'Active', 'ar', 2, 'No'),
(90, 13, '洗发水', '洗发水', '', 27, 'Active', 'ch', 3, 'No'),
(91, 13, 'shampooing', 'shampooing', '', 28, 'Active', 'fr', 4, 'No'),
(92, 13, 'xampu', 'xampu', '', 29, 'Active', 'pt', 5, 'No'),
(93, 13, 'шампунь', 'шампунь', '', 30, 'Active', 'ru', 6, 'No'),
(94, 13, 'champú', 'champú', '', 31, 'Active', 'es', 7, 'No'),
(95, 13, 'şampuan', 'şampuan', '', 32, 'Active', 'tr', 8, 'No'),
(96, 30, 'بطاقة السلامة', 'بطاقة السلامة', '', 19, 'Active', 'ar', 2, 'No'),
(97, 30, '安全卡', '安全卡', '', 20, 'Active', 'ch', 3, 'No'),
(98, 30, 'Carte de sécurité', 'Carte de sécurité', '', 21, 'Active', 'fr', 4, 'No'),
(99, 30, 'Cartão de Segurança', 'Cartão de Segurança', '', 22, 'Active', 'pt', 5, 'No'),
(100, 30, 'Карта безопасности', 'Карта безопасности', '', 23, 'Active', 'ru', 6, 'No'),
(101, 30, 'Tarjeta de seguridad', 'Tarjeta de seguridad', '', 24, 'Active', 'es', 7, 'No'),
(102, 30, 'Güvenlik Kartı', 'Güvenlik Kartı', '', 25, 'Active', 'tr', 8, 'No'),
(103, 17, 'حمام سباحة', 'حمام سباحة', '', 26, 'Active', 'ar', 2, 'No'),
(104, 17, '水池', '水池', '', 27, 'Active', 'ch', 3, 'No'),
(105, 17, 'bassin', 'bassin', '', 28, 'Active', 'fr', 4, 'No'),
(106, 17, 'piscina', 'piscina', '', 29, 'Active', 'pt', 5, 'No'),
(107, 17, 'бассейн', 'бассейн', '', 30, 'Active', 'ru', 6, 'No'),
(108, 17, 'piscina', 'piscina', '', 31, 'Active', 'es', 7, 'No'),
(109, 17, 'havuz', 'havuz', '', 32, 'Active', 'tr', 8, 'No'),
(110, 25, 'الحيوانات الأليفة تعيش في هذا العقار', 'الحيوانات الأليفة تعيش في هذا العقار', '', 26, 'Active', 'ar', 2, 'No'),
(111, 25, '宠物住在这家酒店', '宠物住在这家酒店', '', 27, 'Active', 'ch', 3, 'No'),
(112, 25, 'Les animaux vivent sur cette propriété', 'Les animaux vivent sur cette propriété', '', 28, 'Active', 'fr', 4, 'No'),
(113, 25, 'Animais de estimação vivem nesta propriedade', 'Animais de estimação vivem nesta propriedade', '', 29, 'Active', 'pt', 5, 'No'),
(114, 25, 'На территории живут домашние животные.', 'На территории живут домашние животные.', '', 30, 'Active', 'ru', 6, 'No'),
(115, 25, 'На территории живут домашние животные.', 'На территории живут домашние животные.', '', 31, 'Active', 'es', 7, 'No'),
(116, 25, 'Bu tesiste evcil hayvanlar yaşıyor', 'Bu tesiste evcil hayvanlar yaşıyor', '', 32, 'Active', 'tr', 8, 'No'),
(117, 24, 'مسموح بدخول الحيوانات الأليفة', 'مسموح بدخول الحيوانات الأليفة', '', 26, 'Active', 'ar', 2, 'No'),
(118, 24, '可带宠物', '可带宠物', '', 27, 'Active', 'ch', 3, 'No'),
(119, 24, 'animaux acceptés', 'animaux acceptés', '', 28, 'Active', 'fr', 4, 'No'),
(120, 24, 'animais de estimação permitidos', 'animais de estimação permitidos', '', 29, 'Active', 'pt', 5, 'No'),
(121, 24, 'домашние животные разрешены', 'домашние животные разрешены', '', 30, 'Active', 'ru', 6, 'No'),
(122, 24, 'Mascotas permitidas', 'Mascotas permitidas', '', 31, 'Active', 'es', 7, 'No'),
(123, 24, 'Evcil Hayvanlar girebilir', 'Evcil Hayvanlar girebilir', '', 32, 'Active', 'tr', 8, 'No'),
(124, 6, 'مطبخ', 'مطبخ', '', 26, 'Active', 'ar', 2, 'No'),
(125, 6, '厨房', '厨房', '', 27, 'Active', 'ch', 3, 'No'),
(126, 6, 'cuisine', 'cuisine', '', 28, 'Active', 'fr', 4, 'No'),
(127, 6, 'cozinha', 'cozinha', '', 29, 'Active', 'pt', 5, 'No'),
(128, 6, 'кухня', 'кухня', '', 30, 'Active', 'ru', 6, 'No'),
(129, 6, 'cocina', 'cocina', '', 31, 'Active', 'es', 7, 'No'),
(130, 6, 'mutfak', 'mutfak', '', 32, 'Active', 'tr', 8, 'No'),
(131, 7, 'إنترنت', 'إنترنت', '', 26, 'Active', 'ar', 2, 'No'),
(132, 7, 'إنترنت', 'إنترنت', '', 27, 'Active', 'ch', 3, 'No'),
(133, 7, 'l\'Internet', 'l\'Internet', '', 28, 'Active', 'fr', 4, 'No'),
(134, 7, 'Internet', 'Internet', '', 29, 'Active', 'pt', 5, 'No'),
(135, 7, 'Интернет', 'Интернет', '', 30, 'Active', 'ru', 6, 'No'),
(136, 7, 'Internet', 'Internet', '', 31, 'Active', 'es', 7, 'No'),
(137, 7, 'internet', 'internet', '', 32, 'Active', 'tr', 8, 'No'),
(138, 10, 'مدفأة داخلية', 'مدفأة داخلية', '', 26, 'Active', 'ar', 2, 'No'),
(139, 10, '室内壁炉', '室内壁炉', '', 27, 'Active', 'ch', 3, 'No'),
(140, 10, 'foyer d\'intérieur', 'foyer d\'intérieur', '', 28, 'Active', 'fr', 4, 'No'),
(141, 10, 'lareira interna', 'lareira interna', '', 29, 'Active', 'pt', 5, 'No'),
(142, 10, 'закрытый камин', 'закрытый камин', '', 30, 'Active', 'ru', 6, 'No'),
(143, 10, 'chimenea interior', 'chimenea interior', '', 31, 'Active', 'es', 7, 'No'),
(144, 10, 'kapalı şömine', 'kapalı şömine', '', 32, 'Active', 'tr', 8, 'No'),
(145, 15, 'حوض استحمام ساخن', 'حوض استحمام ساخن', '', 26, 'Active', 'ar', 2, 'No'),
(146, 15, '热水浴缸', '热水浴缸', '', 27, 'Active', 'ch', 3, 'No'),
(147, 15, 'jacuzzi', 'jacuzzi', '', 28, 'Active', 'fr', 4, 'No'),
(148, 15, 'jacuzzi', 'jacuzzi', '', 29, 'Active', 'pt', 5, 'No'),
(149, 15, 'джакузи', 'джакузи', '', 30, 'Active', 'ru', 6, 'No'),
(150, 15, 'Bañera de hidromasaje', 'Bañera de hidromasaje', '', 31, 'Active', 'es', 7, 'No'),
(151, 15, 'jakuzi', 'jakuzi', '', 32, 'Active', 'tr', 8, 'No'),
(152, 5, 'تدفئة', 'تدفئة', '', 26, 'Active', 'ar', 2, 'No'),
(153, 5, '加热', '加热', '', 27, 'Active', 'ch', 3, 'No'),
(154, 5, 'chauffage', 'chauffage', '', 28, 'Active', 'fr', 4, 'No'),
(155, 5, 'aquecimento', 'aquecimento', '', 29, 'Active', 'pt', 5, 'No'),
(156, 5, 'обогрев', 'обогрев', '', 30, 'Active', 'ru', 6, 'No'),
(157, 5, 'calefacción', 'calefacción', '', 31, 'Active', 'es', 7, 'No'),
(158, 5, 'ısıtma', 'ısıtma', '', 32, 'Active', 'tr', 8, 'No'),
(159, 8, 'نادي رياضي', 'نادي رياضي', '', 26, 'Active', 'ar', 2, 'No'),
(160, 8, '健身房', '健身房', '', 27, 'Active', 'ch', 3, 'No'),
(161, 8, 'gym', 'gym', '', 28, 'Active', 'fr', 4, 'No'),
(162, 8, 'Academia', 'Academia', '', 29, 'Active', 'pt', 5, 'No'),
(163, 8, 'спортзал', 'спортзал', '', 30, 'Active', 'ru', 6, 'No'),
(164, 8, 'Gimnasio', 'Gimnasio', '', 31, 'Active', 'es', 7, 'No'),
(165, 8, 'Jimnastik', 'Jimnastik', '', 32, 'Active', 'tr', 8, 'No'),
(166, 20, 'مواقف مجانية للسيارات في أماكن العمل', 'مواقف مجانية للسيارات في أماكن العمل', '', 26, 'Active', 'ar', 2, 'No'),
(167, 20, '店内免费停车', '店内免费停车', '', 27, 'Active', 'ch', 3, 'No'),
(168, 20, 'parking gratuit sur place', 'parking gratuit sur place', '', 28, 'Active', 'fr', 4, 'No'),
(169, 20, 'estacionamento grátis no local', 'estacionamento grátis no local', '', 29, 'Active', 'pt', 5, 'No'),
(170, 20, 'бесплатная парковка на территории', 'бесплатная парковка на территории', '', 30, 'Active', 'ru', 6, 'No'),
(171, 20, 'estacionamiento gratuito en las instalaciones', 'estacionamiento gratuito en las instalaciones', '', 31, 'Active', 'es', 7, 'No'),
(172, 20, 'tesis bünyesinde ücretsiz otopark', 'tesis bünyesinde ücretsiz otopark', '', 32, 'Active', 'tr', 8, 'No'),
(173, 29, 'حقيبة إسعاف أولي', 'حقيبة إسعاف أولي', '', 19, 'Active', 'ar', 2, 'No'),
(174, 29, '急救箱', '急救箱', '', 20, 'Active', 'ch', 3, 'No'),
(175, 29, 'trousse de premiers secours', 'trousse de premiers secours', '', 21, 'Active', 'fr', 4, 'No'),
(176, 29, 'kit de primeiros socorros', 'kit de primeiros socorros', '', 22, 'Active', 'pt', 5, 'No'),
(177, 29, 'аптечка первой помощи', 'аптечка первой помощи', '', 23, 'Active', 'ru', 6, 'No'),
(178, 29, 'Kit de primeros auxilios', 'Kit de primeros auxilios', '', 24, 'Active', 'es', 7, 'No'),
(179, 29, 'ilk yardım kiti', 'ilk yardım kiti', '', 25, 'Active', 'tr', 8, 'No'),
(180, 31, 'طفاية حريق', 'طفاية حريق', '', 19, 'Active', 'ar', 2, 'No'),
(181, 31, '灭火器', '灭火器', '', 20, 'Active', 'ch', 3, 'No'),
(182, 31, 'extincteur d\'incendie', 'extincteur d\'incendie', '', 21, 'Active', 'fr', 4, 'No'),
(183, 31, 'extintor de incêndio', 'extintor de incêndio', '', 22, 'Active', 'pt', 5, 'No'),
(184, 31, 'огнетушитель', 'огнетушитель', '', 23, 'Active', 'ru', 6, 'No'),
(185, 31, 'extintor de incendios', 'extintor de incendios', '', 24, 'Active', 'es', 7, 'No'),
(186, 31, 'yangın söndürücü', 'yangın söndürücü', '', 25, 'Active', 'tr', 8, 'No'),
(187, 21, 'صديقة للأسرة / طفل', 'صديقة للأسرة / طفل', '', 26, 'Active', 'ar', 2, 'No'),
(188, 21, '家庭/儿童友好', '家庭/儿童友好', '', 27, 'Active', 'ch', 3, 'No'),
(189, 21, 'Adapté aux familles/enfants', 'Adapté aux familles/enfants', '', 28, 'Active', 'fr', 4, 'No'),
(190, 21, 'Família / adequado para crianças', 'Família / adequado para crianças', '', 29, 'Active', 'pt', 5, 'No'),
(191, 21, 'Подходит для семей / детей', 'Подходит для семей / детей', '', 30, 'Active', 'ru', 6, 'No'),
(192, 21, 'Apto para familias / niños', 'Apto para familias / niños', '', 31, 'Active', 'es', 7, 'No'),
(193, 21, 'Aile/Çocuk Dostu', 'Aile/Çocuk Dostu', '', 32, 'Active', 'tr', 8, 'No'),
(194, 1, 'الضروريات', 'المناشف والشراشف والصابون وورق التواليت', '', 26, 'Active', 'ar', 2, 'No'),
(195, 1, '必需品', '毛巾、床单、肥皂和卫生纸', '', 27, 'Active', 'ch', 3, 'No'),
(196, 1, 'essentiel', 'Serviettes, draps, savon et papier toilette', '', 28, 'Active', 'fr', 4, 'No'),
(197, 1, 'Essenciais', 'Toalhas, lençóis, sabonete e papel higiênico', '', 29, 'Active', 'pt', 5, 'No'),
(198, 1, 'предметы первой необходимости', 'Полотенца, простыни, мыло и туалетная бумага.', '', 30, 'Active', 'ru', 6, 'No'),
(199, 1, 'esenciales', 'Toallas, sábanas, jabón y papel higiénico.', '', 31, 'Active', 'es', 7, 'No'),
(200, 1, 'temeller', 'Havlu, çarşaf, sabun ve tuvalet kağıdı', '', 32, 'Active', 'tr', 8, 'No'),
(201, 9, 'مصعد في المبنى', 'مصعد في المبنى', '', 26, 'Active', 'ar', 2, 'No'),
(202, 9, '大楼电梯', '大楼电梯', '', 27, 'Active', 'ch', 3, 'No'),
(203, 9, 'Ascenseur dans le bâtiment', 'Ascenseur dans le bâtiment', '', 28, 'Active', 'fr', 4, 'No'),
(204, 9, 'Elevador na construção', 'Elevador na construção', '', 29, 'Active', 'pt', 5, 'No'),
(205, 9, 'Лифт в здании', 'Лифт в здании', '', 30, 'Active', 'ru', 6, 'No'),
(206, 9, 'Ascensor en edificio', 'Ascensor en edificio', '', 31, 'Active', 'es', 7, 'No'),
(207, 9, 'Binada Asansör', 'Binada Asansör', '', 32, 'Active', 'tr', 8, 'No'),
(208, 18, 'مجفف', 'مجفف', '', 26, 'Active', 'ar', 2, 'No'),
(209, 18, '烘干机', '烘干机', '', 27, 'Active', 'ch', 3, 'No'),
(210, 18, 'séchoir', 'séchoir', '', 28, 'Active', 'fr', 4, 'No'),
(211, 18, 'secador', 'secador', '', 29, 'Active', 'pt', 5, 'No'),
(212, 18, 'сушилка', 'сушилка', '', 30, 'Active', 'ru', 6, 'No'),
(213, 18, 'secadora', 'secadora', '', 31, 'Active', 'es', 7, 'No'),
(214, 18, 'kurutucu', 'kurutucu', '', 32, 'Active', 'tr', 8, 'No'),
(215, 12, 'بواب', 'بواب', '', 26, 'Active', 'ar', 2, 'No'),
(216, 12, '门卫', '门卫', '', 27, 'Active', 'ch', 3, 'No'),
(217, 12, 'portier', 'portier', '', 28, 'Active', 'fr', 4, 'No'),
(218, 12, 'porteiro', 'porteiro', '', 29, 'Active', 'pt', 5, 'No'),
(219, 12, 'швейцар', 'швейцар', '', 30, 'Active', 'ru', 6, 'No'),
(220, 12, 'portero', 'portero', '', 31, 'Active', 'es', 7, 'No'),
(221, 12, 'kapıcı', 'kapıcı', '', 32, 'Active', 'tr', 8, 'No'),
(222, 28, 'كاشف أول أكسيد الكربون', 'كاشف أول أكسيد الكربون', '', 19, 'Active', 'ar', 2, 'No'),
(223, 28, '一氧化碳检测仪', '一氧化碳检测仪', '', 20, 'Active', 'ch', 3, 'No'),
(224, 28, 'Detecteur de monoxyde de carbone', 'Detecteur de monoxyde de carbone', '', 21, 'Active', 'fr', 4, 'No'),
(225, 28, 'detector de monóxido de carbono', 'detector de monóxido de carbono', '', 22, 'Active', 'pt', 5, 'No'),
(226, 28, 'детектор угарного газа', 'детектор угарного газа', '', 23, 'Active', 'ru', 6, 'No'),
(227, 28, 'karbon monoksit dedektörü', 'karbon monoksit dedektörü', '', 24, 'Active', 'es', 7, 'No'),
(228, 28, 'karbon monoksit dedektörü', 'karbon monoksit dedektörü', '', 25, 'Active', 'tr', 8, 'No'),
(229, 3, 'الكيبل التلفزيوني', 'الكيبل التلفزيوني', '', 26, 'Active', 'ar', 2, 'No'),
(230, 3, '有线电视', '有线电视', '', 27, 'Active', 'ch', 3, 'No'),
(231, 3, 'télévision par câble', 'télévision par câble', '', 28, 'Active', 'fr', 4, 'No'),
(232, 3, 'TV a cabo', 'TV a cabo', '', 29, 'Active', 'pt', 5, 'No'),
(233, 3, 'кабельное телевидение', 'кабельное телевидение', '', 30, 'Active', 'ru', 6, 'No'),
(234, 3, 'televisión por cable', 'televisión por cable', '', 31, 'Active', 'es', 7, 'No'),
(235, 3, 'kablo TV', 'kablo TV', '', 32, 'Active', 'tr', 8, 'No'),
(236, 11, 'الجرس / الاتصال الداخلي اللاسلكي', 'الجرس / الاتصال الداخلي اللاسلكي', '', 26, 'Active', 'ar', 2, 'No'),
(237, 11, '蜂鸣器/无线对讲', '蜂鸣器/无线对讲', '', 27, 'Active', 'ch', 3, 'No'),
(238, 11, 'Avertisseur sonore/interphone sans fil', 'Avertisseur sonore/interphone sans fil', '', 28, 'Active', 'fr', 4, 'No'),
(239, 11, 'Campainha / Intercom sem fio', 'Campainha / Intercom sem fio', '', 29, 'Active', 'pt', 5, 'No'),
(240, 11, 'Зуммер / беспроводной домофон', 'Зуммер / беспроводной домофон', '', 30, 'Active', 'ru', 6, 'No'),
(241, 11, 'Zumbador / Intercomunicador inalámbrico', 'Zumbador / Intercomunicador inalámbrico', '', 31, 'Active', 'es', 7, 'No'),
(242, 11, 'Buzzer/Kablosuz İnterkom', 'Buzzer/Kablosuz İnterkom', '', 32, 'Active', 'tr', 8, 'No'),
(243, 19, 'وجبة افطار', 'وجبة افطار', '', 26, 'Active', 'ar', 2, 'No'),
(244, 19, '早餐', '早餐', '', 27, 'Active', 'ch', 3, 'No'),
(245, 19, 'déjeuner', 'déjeuner', '', 28, 'Active', 'fr', 4, 'No'),
(246, 19, 'café da manhã', 'café da manhã', '', 29, 'Active', 'pt', 5, 'No'),
(247, 19, 'завтрак', 'завтрак', '', 30, 'Active', 'ru', 6, 'No'),
(248, 19, 'desayuno', 'desayuno', '', 31, 'Active', 'es', 7, 'No'),
(249, 19, 'kahvaltı', 'kahvaltı', '', 32, 'Active', 'tr', 8, 'No'),
(250, 4, 'تكيف', 'تكيف', '', 26, 'Active', 'ar', 2, 'No'),
(251, 4, '空调', '空调', '', 27, 'Active', 'ch', 3, 'No'),
(252, 4, 'Climatisation', 'Climatisation', '', 14, 'Active', 'fr', 4, 'No'),
(253, 4, 'Ar condicionado', 'Ar condicionado', '', 29, 'Active', 'pt', 5, 'No'),
(254, 4, 'Кондиционирование воздуха', 'Кондиционирование воздуха', '', 16, 'Active', 'ru', 6, 'No'),
(255, 4, 'Aire acondicionado', 'Aire acondicionado', '', 31, 'Active', 'es', 7, 'No'),
(256, 4, 'Klima', 'Klima', '', 32, 'Active', 'tr', 8, 'No'),
(257, 257, 'aate', 'fgdfgdf', 'gf', 1, 'Inactive', 'en', 1, 'Yes'),
(258, 257, '', NULL, '', 19, 'Inactive', 'ar', 2, 'Yes'),
(259, 257, '', NULL, '', 20, 'Inactive', 'ch', 3, 'Yes'),
(260, 257, '', NULL, '', 21, 'Inactive', 'fr', 4, 'Yes'),
(261, 257, '', NULL, '', 22, 'Inactive', 'pt', 5, 'Yes'),
(262, 257, '', NULL, '', 23, 'Inactive', 'ru', 6, 'Yes'),
(263, 257, '', NULL, '', 24, 'Inactive', 'es', 7, 'Yes'),
(264, 257, '', NULL, '', 25, 'Inactive', 'tr', 8, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `amenity_type`
--

CREATE TABLE `amenity_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `temp_id` int(25) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` int(25) DEFAULT NULL,
  `deleted_status` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenity_type`
--

INSERT INTO `amenity_type` (`id`, `temp_id`, `name`, `description`, `lang`, `lang_id`, `deleted_status`) VALUES
(1, 1, 'Common Amenities', '', 'en', 1, 'No'),
(2, 2, 'Safety Amenities', '', 'en', 1, 'No'),
(19, 2, 'وسائل الراحة والسلامة', 'وسائل الراحة والسلامة', 'ar', 2, 'No'),
(20, 2, '安全设施', '安全设施', 'ch', 3, 'No'),
(21, 2, 'Équipements de sécurité', 'Équipements de sécurité', 'fr', 4, 'No'),
(22, 2, 'Equipamentos de Segurança', 'Equipamentos de Segurança', 'pt', 5, 'No'),
(23, 2, 'Удобства безопасности', 'Удобства безопасности', 'ru', 6, 'No'),
(24, 2, 'Servicios de seguridad', 'Servicios de seguridad', 'es', 7, 'No'),
(25, 2, 'Güvenlik Olanakları', 'Güvenlik Olanakları', 'tr', 8, 'No'),
(26, 1, 'وسائل الراحة المشتركة', NULL, 'ar', 2, 'No'),
(27, 1, '公共设施', NULL, 'ch', 3, 'No'),
(28, 1, 'Commodités communes', NULL, 'fr', 4, 'No'),
(29, 1, 'Amenidades comuns', NULL, 'pt', 5, 'No'),
(30, 1, 'Общие удобства', NULL, 'ru', 6, 'No'),
(31, 1, 'Servicios comunes', NULL, 'es', 7, 'No'),
(32, 1, 'Ortak Olanaklar', NULL, 'tr', 8, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backups`
--

INSERT INTO `backups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2021-08-05-074511.sql', '2021-08-05 11:45:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `temp_id` int(25) DEFAULT NULL,
  `heading` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subheading` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `temp_id`, `heading`, `subheading`, `image`, `status`, `lang`, `lang_id`) VALUES
(1, 1, 'Get your Rental Home', 'Website packages of worldwide.', 'banner_1639745343.jpg', 'Active', 'en', 1),
(5, 5, 'Book Top Hill Tent', 'Experiences Local things to do, wherever you are.', 'banner_1640077336.jpg', 'Active', 'en', 1),
(6, 5, 'احجز  خيمة توب هيل', 'الخبرات الأنشطة المحلية التي يمكنك القيام بها ، أينما كنت.', 'banner_1640077336.jpg', 'Active', 'ar', 2),
(7, 5, '书 山顶帐篷', '无论您身在何处，都可以体验当地的活动。', 'banner_1640077336.jpg', 'Active', 'ch', 3),
(8, 5, 'Réserver la tente Top Hill', 'Expériences Activités locales à faire, où que vous soyez.', 'banner_1640077336.jpg', 'Active', 'fr', 4),
(9, 5, 'Reservar Tenda Top Hill', 'Experiências Coisas locais para fazer, onde quer que você esteja.', 'banner_1640077336.jpg', 'Active', 'pt', 5),
(10, 5, 'Забронировать Палатка Top Hill', 'Опыт Местные развлечения, где бы вы ни находились.', 'banner_1640077336.jpg', 'Active', 'ru', 6),
(11, 5, 'Reservar Tienda Top Hill', 'Experiencias Cosas locales para hacer, estés donde estés.', 'banner_1640077336.jpg', 'Active', 'es', 7),
(12, 5, 'Top Hill Çadırı', 'Nerede olursanız olun, yapılacak yerel şeyleri deneyimler.', 'banner_1640077336.jpg', 'Active', 'tr', 8),
(20, 1, 'احصل على منزلك المستأجر', 'حزم الموقع من جميع أنحاء العالم.', 'banner_1639745343.jpg', 'Active', 'ar', 2),
(21, 1, '获取您的出租房屋', '全球网站包。', 'banner_1639745343.jpg', 'Active', 'ch', 3),
(22, 1, 'Obtenez votre maison de location', 'Forfaits de sites Web du monde entier.', 'banner_1639745343.jpg', 'Active', 'fr', 4),
(23, 1, 'Adquira sua casa de aluguel', 'Pacotes de sites de todo o mundo.', 'banner_1639745343.jpg', 'Active', 'pt', 5),
(24, 1, 'Получите свой арендный дом', 'Пакеты сайтов по всему миру.', 'banner_1639745343.jpg', 'Active', 'ru', 6),
(25, 1, 'Consigue tu Vivienda de Alquiler', 'Paquetes de sitios web de todo el mundo.', 'banner_1639745343.jpg', 'Active', 'es', 7),
(26, 1, 'Kiralık Evinizi Alın', 'Dünya çapında web sitesi paketleri.', 'banner_1639745343.jpg', 'Active', 'tr', 8);

-- --------------------------------------------------------

--
-- Table structure for table `bed_type`
--

CREATE TABLE `bed_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `temp_id` int(25) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` int(25) DEFAULT NULL,
  `deleted_status` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bed_type`
--

INSERT INTO `bed_type` (`id`, `temp_id`, `name`, `lang`, `lang_id`, `deleted_status`) VALUES
(1, 1, 'king', 'en', 1, 'No'),
(2, 2, 'Queen', 'en', 1, 'No'),
(3, 3, 'Double', 'en', 1, 'No'),
(4, 4, 'Single', 'en', 1, 'No'),
(5, 5, 'Sofa bed', 'en', 1, 'No'),
(6, 6, 'Sofa', 'en', 1, 'No'),
(7, 7, 'Sofa bed', 'en', 1, 'No'),
(8, 8, 'Bunk bed', 'en', 1, 'No'),
(9, 9, 'Air mattress', 'en', 1, 'No'),
(10, 10, 'Floor mattress', 'en', 1, 'No'),
(11, 11, 'Toddler bed', 'en', 1, 'No'),
(12, 12, 'Crib', 'en', 1, 'No'),
(13, 13, 'Water bed', 'en', 1, 'No'),
(14, 14, 'Hammock', 'en', 1, 'No'),
(23, 23, 'single bed', 'en', 1, 'No'),
(24, 23, 'سرير مفرد', 'ar', 2, 'No'),
(25, 23, '单人床', 'ch', 3, 'No'),
(26, 23, 'lit simple', 'fr', 4, 'No'),
(27, 23, 'cama de solteiro', 'pt', 5, 'No'),
(28, 23, 'односпальная кровать', 'ru', 6, 'No'),
(29, 23, 'cama individual', 'es', 7, 'No'),
(30, 23, 'tek kişilik yatak', 'tr', 8, 'No'),
(31, 1, 'ملك', 'ar', 2, 'No'),
(32, 1, '王', 'ch', 3, 'No'),
(33, 1, 'roi', 'fr', 4, 'No'),
(34, 1, 'Rei', 'pt', 5, 'No'),
(35, 1, 'король', 'ru', 6, 'No'),
(36, 1, 'Rey', 'es', 7, 'No'),
(37, 1, 'Kral', 'tr', 8, 'No'),
(38, 13, 'سرير مائي', 'ar', 2, 'No'),
(39, 13, '水床', 'ch', 3, 'No'),
(40, 13, 'lit d\'eau', 'fr', 4, 'No'),
(41, 13, 'cama d\'água', 'pt', 5, 'No'),
(42, 13, 'водяная кровать', 'ru', 6, 'No'),
(43, 13, 'cama de agua', 'es', 7, 'No'),
(44, 13, 'su yatağı', 'tr', 8, 'No'),
(45, 11, 'سرير طفل', 'ar', 2, 'No'),
(46, 11, '幼儿床', 'ch', 3, 'No'),
(47, 11, 'Lit bébé', 'fr', 4, 'No'),
(48, 11, 'Berço', 'pt', 5, 'No'),
(49, 11, 'Кровать для малышей', 'ru', 6, 'No'),
(50, 11, 'Cama para niño', 'es', 7, 'No'),
(51, 11, 'Yürümeye başlayan çocuk yatağı', 'tr', 8, 'No'),
(52, 5, 'سرير أريكة', 'ar', 2, 'No'),
(53, 5, '沙发床', 'ch', 3, 'No'),
(54, 5, 'canapé-lit', 'fr', 4, 'No'),
(55, 5, 'sofá-cama', 'pt', 5, 'No'),
(56, 5, 'диван-кровать', 'ru', 6, 'No'),
(57, 5, 'Sofa cama', 'es', 7, 'No'),
(58, 5, 'çekyat', 'tr', 8, 'No'),
(59, 6, 'كنبة', 'ar', 2, 'No'),
(60, 6, '沙发', 'ch', 3, 'No'),
(61, 6, 'sofa', 'fr', 4, 'No'),
(62, 6, 'sofá', 'pt', 5, 'No'),
(63, 6, 'диван', 'ru', 6, 'No'),
(64, 6, 'sofá', 'es', 7, 'No'),
(65, 6, 'Divan', 'tr', 8, 'No'),
(66, 4, 'غير مرتبطة', 'ar', 2, 'No'),
(67, 4, '单身的', 'ch', 3, 'No'),
(68, 4, 'Célibataire', 'fr', 4, 'No'),
(69, 4, 'solteiro', 'pt', 5, 'No'),
(70, 4, 'Один', 'ru', 6, 'No'),
(71, 4, 'soltero', 'es', 7, 'No'),
(72, 4, 'tek bir', 'tr', 8, 'No'),
(73, 2, 'ملكة', 'ar', 2, 'No'),
(74, 2, '女王', 'ch', 3, 'No'),
(75, 2, 'reine', 'fr', 4, 'No'),
(76, 2, 'rainha', 'pt', 5, 'No'),
(77, 2, 'Королева', 'ru', 6, 'No'),
(78, 2, 'reina', 'es', 7, 'No'),
(79, 2, 'Kraliçe', 'tr', 8, 'No'),
(80, 14, 'أرجوحة شبكية', 'ar', 2, 'No'),
(81, 14, '吊床', 'ch', 3, 'No'),
(82, 14, 'hamac', 'fr', 4, 'No'),
(83, 14, 'maca', 'pt', 5, 'No'),
(84, 14, 'гамак', 'ru', 6, 'No'),
(85, 14, 'hamaca', 'es', 7, 'No'),
(86, 14, 'hamak', 'tr', 8, 'No'),
(87, 10, 'مرتبة أرضية', 'ar', 2, 'No'),
(88, 10, '地垫', 'ch', 3, 'No'),
(89, 10, 'matelas de sol', 'fr', 4, 'No'),
(90, 10, 'colchão de chão', 'pt', 5, 'No'),
(91, 10, 'напольный матрас', 'ru', 6, 'No'),
(92, 10, 'colchón de suelo', 'es', 7, 'No'),
(93, 10, 'yer yatağı', 'tr', 8, 'No'),
(94, 3, 'مزدوج', 'ar', 2, 'No'),
(95, 3, '双倍的', 'ch', 3, 'No'),
(96, 3, 'double', 'fr', 4, 'No'),
(97, 3, 'duplo', 'pt', 5, 'No'),
(98, 3, 'двойной', 'ru', 6, 'No'),
(99, 3, 'doble', 'es', 7, 'No'),
(100, 3, 'çift', 'tr', 8, 'No'),
(101, 12, 'سرير', 'ar', 2, 'No'),
(102, 12, '婴儿床', 'ch', 3, 'No'),
(103, 12, 'crèche', 'fr', 4, 'No'),
(104, 12, 'berço', 'pt', 5, 'No'),
(105, 12, 'детская кроватка', 'ru', 6, 'No'),
(106, 12, 'cuna', 'es', 7, 'No'),
(107, 12, 'beşik', 'tr', 8, 'No'),
(108, 8, 'سرير مكون من طابقين علوي و سفلي', 'ar', 2, 'No'),
(109, 8, '双层床', 'ch', 3, 'No'),
(110, 8, 'lit superposé', 'fr', 4, 'No'),
(111, 8, 'beliche', 'pt', 5, 'No'),
(112, 8, 'двухъярусная кровать', 'ru', 6, 'No'),
(113, 8, 'litera', 'es', 7, 'No'),
(114, 8, 'ranza', 'tr', 8, 'No'),
(115, 9, 'مرتبة هوائية', 'ar', 2, 'No'),
(116, 9, '气垫', 'ch', 3, 'No'),
(117, 9, 'matelas d\'air', 'fr', 4, 'No'),
(118, 9, 'colchão de ar', 'pt', 5, 'No'),
(119, 9, 'надувной матрас', 'ru', 6, 'No'),
(120, 9, 'colchón de aire', 'es', 7, 'No'),
(121, 9, 'şişme yatak', 'tr', 8, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('Accepted','Pending','Cancelled','Declined','Expired','Processing') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `guest` int(11) NOT NULL DEFAULT '0',
  `time_slot` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_night` int(11) NOT NULL DEFAULT '0',
  `per_night` double NOT NULL DEFAULT '0',
  `custom_price_dates` text COLLATE utf8mb4_unicode_ci,
  `base_price` double NOT NULL DEFAULT '0',
  `cleaning_charge` double NOT NULL DEFAULT '0',
  `guest_charge` double NOT NULL DEFAULT '0',
  `service_charge` double NOT NULL DEFAULT '0',
  `security_money` double NOT NULL DEFAULT '0',
  `iva_tax` double NOT NULL DEFAULT '0',
  `accomodation_tax` double NOT NULL DEFAULT '0',
  `host_fee` double NOT NULL DEFAULT '0',
  `total` double NOT NULL DEFAULT '0',
  `booking_type` enum('request','instant') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'request',
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_with_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancellation` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method_id` int(11) NOT NULL DEFAULT '0',
  `accepted_at` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `declined_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `cancelled_by` enum('Host','Guest') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `property_id`, `code`, `host_id`, `user_id`, `start_date`, `end_date`, `status`, `guest`, `time_slot`, `total_night`, `per_night`, `custom_price_dates`, `base_price`, `cleaning_charge`, `guest_charge`, `service_charge`, `security_money`, `iva_tax`, `accomodation_tax`, `host_fee`, `total`, `booking_type`, `currency_code`, `date_with_price`, `cancellation`, `transaction_id`, `payment_method_id`, `accepted_at`, `expired_at`, `declined_at`, `cancelled_at`, `cancelled_by`, `created_at`, `updated_at`) VALUES
(1, 6, '1zhxrS', 2, 3, '2022-09-11', '2022-09-17', 'Accepted', 2, NULL, 6, 30, NULL, 207, 0, 0, 9, 0, 9, 9, 9, 207, 'instant', 'USD', '[{\"price\":30,\"date\":\"2022-09-11\"},{\"price\":30,\"date\":\"2022-09-12\"},{\"price\":30,\"date\":\"2022-09-13\"},{\"price\":30,\"date\":\"2022-09-14\"},{\"price\":30,\"date\":\"2022-09-15\"},{\"price\":30,\"date\":\"2022-09-16\"}]', 'Moderate', '265001901N678170P', 1, NULL, NULL, NULL, NULL, NULL, '2022-09-03 02:17:17', '2022-09-03 02:17:17'),
(2, 16, 'BQH68h', 2, 3, '2022-10-01', '2022-10-01', 'Accepted', 1, '50', 0, 0, NULL, 59, 0, 0, 3, 0, 3, 3, 3, 59, 'request', 'USD', '[{\"price\":0,\"date\":\"2022-10-01\"}]', 'Strict', '0T492548BN2357814', 1, '2022-09-03 02:23:28', NULL, NULL, NULL, NULL, '2022-09-03 02:19:21', '2022-09-03 02:24:59'),
(3, 4, 'sMec4z', 1, 3, '2022-09-03', '2022-09-04', 'Accepted', 1, NULL, 1, 30, NULL, 51, 5, 0, 2, 10, 2, 2, 2, 51, 'instant', 'USD', '[{\"price\":30,\"date\":\"2022-09-03\"}]', 'Flexible', '2LT58718SM907392P', 1, NULL, NULL, NULL, NULL, NULL, '2022-09-03 02:27:20', '2022-09-03 02:27:20'),
(4, 8, 'zS38vh', 2, 1, '2022-09-03', '2022-09-04', 'Accepted', 1, NULL, 1, 20, NULL, 28, 5, 0, 1, 0, 1, 1, 1, 28, 'instant', 'USD', '[{\"price\":20,\"date\":\"2022-09-03\"}]', 'Flexible', '9B74826029350545R', 1, NULL, NULL, NULL, NULL, NULL, '2022-09-03 02:31:29', '2022-09-03 02:31:29'),
(5, 23, 'U7HORf', 2, 1, '2022-09-26', '2022-09-29', 'Accepted', 4, NULL, 3, 50, NULL, 209, 10, 0, 8, 25, 8, 8, 8, 209, 'request', 'USD', '[{\"price\":50,\"date\":\"2022-09-26\"},{\"price\":50,\"date\":\"2022-09-27\"},{\"price\":50,\"date\":\"2022-09-28\"}]', 'Flexible', '09486112EB9129409', 1, '2022-09-16 06:53:21', NULL, NULL, NULL, NULL, '2022-09-16 02:21:12', '2022-09-16 07:08:12'),
(6, 23, 'tkMmv2', 2, 1, '2022-09-22', '2022-09-25', 'Accepted', 4, NULL, 3, 50, NULL, 209, 10, 0, 8, 25, 8, 8, 8, 209, 'request', 'USD', '[{\"price\":50,\"date\":\"2022-09-22\"},{\"price\":50,\"date\":\"2022-09-23\"},{\"price\":50,\"date\":\"2022-09-24\"}]', 'Flexible', '1BN17324G40777803', 1, '2022-09-19 02:27:54', NULL, NULL, NULL, NULL, '2022-09-19 01:08:05', '2022-09-19 02:41:42'),
(7, 25, 'gWB6Tp', 2, 1, '2022-09-21', '2022-09-21', 'Accepted', 1, '60', 0, 0, NULL, 69, 0, 0, 3, 0, 3, 3, 3, 69, 'request', 'USD', '[{\"price\":0,\"date\":\"2022-09-21\"}]', 'Flexible', '5JG187942A520301M', 1, '2022-09-21 00:08:35', NULL, NULL, NULL, NULL, '2022-09-20 06:32:56', '2022-09-21 00:18:08'),
(8, 8, 'Ub8mKq', 2, 3, '2022-09-26', '2022-09-27', 'Cancelled', 1, NULL, 1, 20, NULL, 28, 5, 0, 1, 0, 1, 1, 1, 28, 'instant', 'USD', '[{\"price\":20,\"date\":\"2022-09-26\"}]', 'Flexible', '2AL78176NH767981D', 1, NULL, NULL, NULL, '2022-09-21 06:38:35', 'Guest', '2022-09-21 05:39:21', '2022-09-21 06:38:35'),
(9, 17, 's9Zec4', 2, 3, '2022-09-21', '2022-09-21', 'Accepted', 2, '12:00 PM-02:00 PM', 2, 30, NULL, 69, 0, 0, 3, 0, 3, 3, 3, 69, 'instant', 'USD', '[{\"price\":30,\"date\":\"2022-09-21\"}]', 'Flexible', '1NV04398XT238391C', 1, NULL, NULL, NULL, NULL, NULL, '2022-09-21 07:27:25', '2022-09-21 07:27:25'),
(10, 25, 'JX8nkH', 2, 1, '2022-10-05', '2022-10-05', 'Pending', 1, '60', 0, 0, NULL, 69, 0, 0, 3, 0, 3, 3, 3, 69, 'request', 'USD', '[{\"price\":0,\"date\":\"2022-10-05\"}]', 'Flexible', '', 0, NULL, NULL, NULL, NULL, NULL, '2022-10-05 01:53:20', '2022-10-05 01:53:20'),
(11, 25, 'SQ6UrI', 2, 1, '2022-10-20', '2022-10-20', 'Pending', 1, '60', 0, 0, NULL, 69, 0, 0, 3, 0, 3, 3, 3, 69, 'request', 'USD', '[{\"price\":0,\"date\":\"2022-10-20\"}]', 'Flexible', '', 0, NULL, NULL, NULL, NULL, NULL, '2022-10-05 05:29:37', '2022-10-05 05:29:37');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(11) NOT NULL,
  `field` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`id`, `booking_id`, `field`, `value`) VALUES
(1, 1, 'country', 'IN'),
(2, 2, 'country', 'IN'),
(3, 3, 'country', 'IN'),
(4, 4, 'country', 'IN'),
(5, 5, 'country', 'IN'),
(6, 6, 'country', 'IN'),
(7, 7, 'country', 'IN'),
(8, 8, 'country', 'IN'),
(9, 8, 'cancelled_reason', 'no_longer_need_accommodations'),
(10, 9, 'country', 'IN'),
(11, 10, 'country', ''),
(12, 11, 'country', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_packages`
--

CREATE TABLE `booking_packages` (
  `id` int(11) NOT NULL,
  `property_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `packages_id` varchar(255) DEFAULT NULL,
  `qty` int(21) DEFAULT NULL,
  `booking_id` int(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_packages`
--

INSERT INTO `booking_packages` (`id`, `property_id`, `user_id`, `packages_id`, `qty`, `booking_id`) VALUES
(1, '16', '3', '5', 1, 2),
(2, '25', '1', '11', 1, 7),
(3, '25', '1', '5', 1, 10),
(4, '25', '1', '11', 1, 10),
(5, '25', '1', '11', 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `useremail` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) UNSIGNED NOT NULL,
  `short_name` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `short_name`, `name`, `iso3`, `number_code`, `phone_code`) VALUES
(1, 'AF', 'Afghanistan', 'AFG', '4', '93'),
(2, 'AL', 'Albania', 'ALB', '8', '355'),
(3, 'DZ', 'Algeria', 'DZA', '12', '213'),
(4, 'AS', 'American Samoa', 'ASM', '16', '1684'),
(5, 'AD', 'Andorra', 'AND', '20', '376'),
(6, 'AO', 'Angola', 'AGO', '24', '244'),
(7, 'AI', 'Anguilla', 'AIA', '660', '1264'),
(8, 'AQ', 'Antarctica', NULL, NULL, '0'),
(9, 'AG', 'Antigua and Barbuda', 'ATG', '28', '1268'),
(10, 'AR', 'Argentina', 'ARG', '32', '54'),
(11, 'AM', 'Armenia', 'ARM', '51', '374'),
(12, 'AW', 'Aruba', 'ABW', '533', '297'),
(13, 'AU', 'Australia', 'AUS', '36', '61'),
(14, 'AT', 'Austria', 'AUT', '40', '43'),
(15, 'AZ', 'Azerbaijan', 'AZE', '31', '994'),
(16, 'BS', 'Bahamas', 'BHS', '44', '1242'),
(17, 'BH', 'Bahrain', 'BHR', '48', '973'),
(18, 'BD', 'Bangladesh', 'BGD', '50', '880'),
(19, 'BB', 'Barbados', 'BRB', '52', '1246'),
(20, 'BY', 'Belarus', 'BLR', '112', '375'),
(21, 'BE', 'Belgium', 'BEL', '56', '32'),
(22, 'BZ', 'Belize', 'BLZ', '84', '501'),
(23, 'BJ', 'Benin', 'BEN', '204', '229'),
(24, 'BM', 'Bermuda', 'BMU', '60', '1441'),
(25, 'BT', 'Bhutan', 'BTN', '64', '975'),
(26, 'BO', 'Bolivia', 'BOL', '68', '591'),
(27, 'BA', 'Bosnia and Herzegovina', 'BIH', '70', '387'),
(28, 'BW', 'Botswana', 'BWA', '72', '267'),
(29, 'BV', 'Bouvet Island', NULL, NULL, '0'),
(30, 'BR', 'Brazil', 'BRA', '76', '55'),
(31, 'IO', 'British Indian Ocean Territory', NULL, NULL, '246'),
(32, 'BN', 'Brunei Darussalam', 'BRN', '96', '673'),
(33, 'BG', 'Bulgaria', 'BGR', '100', '359'),
(34, 'BF', 'Burkina Faso', 'BFA', '854', '226'),
(35, 'BI', 'Burundi', 'BDI', '108', '257'),
(36, 'KH', 'Cambodia', 'KHM', '116', '855'),
(37, 'CM', 'Cameroon', 'CMR', '120', '237'),
(38, 'CA', 'Canada', 'CAN', '124', '1'),
(39, 'CV', 'Cape Verde', 'CPV', '132', '238'),
(40, 'KY', 'Cayman Islands', 'CYM', '136', '1345'),
(41, 'CF', 'Central African Republic', 'CAF', '140', '236'),
(42, 'TD', 'Chad', 'TCD', '148', '235'),
(43, 'CL', 'Chile', 'CHL', '152', '56'),
(44, 'CN', 'China', 'CHN', '156', '86'),
(45, 'CX', 'Christmas Island', NULL, NULL, '61'),
(46, 'CC', 'Cocos (Keeling) Islands', NULL, NULL, '672'),
(47, 'CO', 'Colombia', 'COL', '170', '57'),
(48, 'KM', 'Comoros', 'COM', '174', '269'),
(49, 'CG', 'Congo', 'COG', '178', '242'),
(50, 'CD', 'Congo, the Democratic Republic of the', 'COD', '180', '242'),
(51, 'CK', 'Cook Islands', 'COK', '184', '682'),
(52, 'CR', 'Costa Rica', 'CRI', '188', '506'),
(53, 'CI', 'Cote D\'Ivoire', 'CIV', '384', '225'),
(54, 'HR', 'Croatia', 'HRV', '191', '385'),
(55, 'CU', 'Cuba', 'CUB', '192', '53'),
(56, 'CY', 'Cyprus', 'CYP', '196', '357'),
(57, 'CZ', 'Czech Republic', 'CZE', '203', '420'),
(58, 'DK', 'Denmark', 'DNK', '208', '45'),
(59, 'DJ', 'Djibouti', 'DJI', '262', '253'),
(60, 'DM', 'Dominica', 'DMA', '212', '1767'),
(61, 'DO', 'Dominican Republic', 'DOM', '214', '1809'),
(62, 'EC', 'Ecuador', 'ECU', '218', '593'),
(63, 'EG', 'Egypt', 'EGY', '818', '20'),
(64, 'SV', 'El Salvador', 'SLV', '222', '503'),
(65, 'GQ', 'Equatorial Guinea', 'GNQ', '226', '240'),
(66, 'ER', 'Eritrea', 'ERI', '232', '291'),
(67, 'EE', 'Estonia', 'EST', '233', '372'),
(68, 'ET', 'Ethiopia', 'ETH', '231', '251'),
(69, 'FK', 'Falkland Islands (Malvinas)', 'FLK', '238', '500'),
(70, 'FO', 'Faroe Islands', 'FRO', '234', '298'),
(71, 'FJ', 'Fiji', 'FJI', '242', '679'),
(72, 'FI', 'Finland', 'FIN', '246', '358'),
(73, 'FR', 'France', 'FRA', '250', '33'),
(74, 'GF', 'French Guiana', 'GUF', '254', '594'),
(75, 'PF', 'French Polynesia', 'PYF', '258', '689'),
(76, 'TF', 'French Southern Territories', NULL, NULL, '0'),
(77, 'GA', 'Gabon', 'GAB', '266', '241'),
(78, 'GM', 'Gambia', 'GMB', '270', '220'),
(79, 'GE', 'Georgia', 'GEO', '268', '995'),
(80, 'DE', 'Germany', 'DEU', '276', '49'),
(81, 'GH', 'Ghana', 'GHA', '288', '233'),
(82, 'GI', 'Gibraltar', 'GIB', '292', '350'),
(83, 'GR', 'Greece', 'GRC', '300', '30'),
(84, 'GL', 'Greenland', 'GRL', '304', '299'),
(85, 'GD', 'Grenada', 'GRD', '308', '1473'),
(86, 'GP', 'Guadeloupe', 'GLP', '312', '590'),
(87, 'GU', 'Guam', 'GUM', '316', '1671'),
(88, 'GT', 'Guatemala', 'GTM', '320', '502'),
(89, 'GN', 'Guinea', 'GIN', '324', '224'),
(90, 'GW', 'Guinea-Bissau', 'GNB', '624', '245'),
(91, 'GY', 'Guyana', 'GUY', '328', '592'),
(92, 'HT', 'Haiti', 'HTI', '332', '509'),
(93, 'HM', 'Heard Island and Mcdonald Islands', NULL, NULL, '0'),
(94, 'VA', 'Holy See (Vatican City State)', 'VAT', '336', '39'),
(95, 'HN', 'Honduras', 'HND', '340', '504'),
(96, 'HK', 'Hong Kong', 'HKG', '344', '852'),
(97, 'HU', 'Hungary', 'HUN', '348', '36'),
(98, 'IS', 'Iceland', 'ISL', '352', '354'),
(99, 'IN', 'India', 'IND', '356', '91'),
(100, 'ID', 'Indonesia', 'IDN', '360', '62'),
(101, 'IR', 'Iran, Islamic Republic of', 'IRN', '364', '98'),
(102, 'IQ', 'Iraq', 'IRQ', '368', '964'),
(103, 'IE', 'Ireland', 'IRL', '372', '353'),
(104, 'IL', 'Israel', 'ISR', '376', '972'),
(105, 'IT', 'Italy', 'ITA', '380', '39'),
(106, 'JM', 'Jamaica', 'JAM', '388', '1876'),
(107, 'JP', 'Japan', 'JPN', '392', '81'),
(108, 'JO', 'Jordan', 'JOR', '400', '962'),
(109, 'KZ', 'Kazakhstan', 'KAZ', '398', '7'),
(110, 'KE', 'Kenya', 'KEN', '404', '254'),
(111, 'KI', 'Kiribati', 'KIR', '296', '686'),
(112, 'KP', 'Korea, Democratic People\'s Republic of', 'PRK', '408', '850'),
(113, 'KR', 'Korea, Republic of', 'KOR', '410', '82'),
(114, 'KW', 'Kuwait', 'KWT', '414', '965'),
(115, 'KG', 'Kyrgyzstan', 'KGZ', '417', '996'),
(116, 'LA', 'Lao People\'s Democratic Republic', 'LAO', '418', '856'),
(117, 'LV', 'Latvia', 'LVA', '428', '371'),
(118, 'LB', 'Lebanon', 'LBN', '422', '961'),
(119, 'LS', 'Lesotho', 'LSO', '426', '266'),
(120, 'LR', 'Liberia', 'LBR', '430', '231'),
(121, 'LY', 'Libyan Arab Jamahiriya', 'LBY', '434', '218'),
(122, 'LI', 'Liechtenstein', 'LIE', '438', '423'),
(123, 'LT', 'Lithuania', 'LTU', '440', '370'),
(124, 'LU', 'Luxembourg', 'LUX', '442', '352'),
(125, 'MO', 'Macao', 'MAC', '446', '853'),
(126, 'MK', 'Macedonia, the Former Yugoslav Republic of', 'MKD', '807', '389'),
(127, 'MG', 'Madagascar', 'MDG', '450', '261'),
(128, 'MW', 'Malawi', 'MWI', '454', '265'),
(129, 'MY', 'Malaysia', 'MYS', '458', '60'),
(130, 'MV', 'Maldives', 'MDV', '462', '960'),
(131, 'ML', 'Mali', 'MLI', '466', '223'),
(132, 'MT', 'Malta', 'MLT', '470', '356'),
(133, 'MH', 'Marshall Islands', 'MHL', '584', '692'),
(134, 'MQ', 'Martinique', 'MTQ', '474', '596'),
(135, 'MR', 'Mauritania', 'MRT', '478', '222'),
(136, 'MU', 'Mauritius', 'MUS', '480', '230'),
(137, 'YT', 'Mayotte', NULL, NULL, '269'),
(138, 'MX', 'Mexico', 'MEX', '484', '52'),
(139, 'FM', 'Micronesia, Federated States of', 'FSM', '583', '691'),
(140, 'MD', 'Moldova, Republic of', 'MDA', '498', '373'),
(141, 'MC', 'Monaco', 'MCO', '492', '377'),
(142, 'MN', 'Mongolia', 'MNG', '496', '976'),
(143, 'MS', 'Montserrat', 'MSR', '500', '1664'),
(144, 'MA', 'Morocco', 'MAR', '504', '212'),
(145, 'MZ', 'Mozambique', 'MOZ', '508', '258'),
(146, 'MM', 'Myanmar', 'MMR', '104', '95'),
(147, 'NA', 'Namibia', 'NAM', '516', '264'),
(148, 'NR', 'Nauru', 'NRU', '520', '674'),
(149, 'NP', 'Nepal', 'NPL', '524', '977'),
(150, 'NL', 'Netherlands', 'NLD', '528', '31'),
(151, 'AN', 'Netherlands Antilles', 'ANT', '530', '599'),
(152, 'NC', 'New Caledonia', 'NCL', '540', '687'),
(153, 'NZ', 'New Zealand', 'NZL', '554', '64'),
(154, 'NI', 'Nicaragua', 'NIC', '558', '505'),
(155, 'NE', 'Niger', 'NER', '562', '227'),
(156, 'NG', 'Nigeria', 'NGA', '566', '234'),
(157, 'NU', 'Niue', 'NIU', '570', '683'),
(158, 'NF', 'Norfolk Island', 'NFK', '574', '672'),
(159, 'MP', 'Northern Mariana Islands', 'MNP', '580', '1670'),
(160, 'NO', 'Norway', 'NOR', '578', '47'),
(161, 'OM', 'Oman', 'OMN', '512', '968'),
(162, 'PK', 'Pakistan', 'PAK', '586', '92'),
(163, 'PW', 'Palau', 'PLW', '585', '680'),
(164, 'PS', 'Palestinian Territory, Occupied', NULL, NULL, '970'),
(165, 'PA', 'Panama', 'PAN', '591', '507'),
(166, 'PG', 'Papua New Guinea', 'PNG', '598', '675'),
(167, 'PY', 'Paraguay', 'PRY', '600', '595'),
(168, 'PE', 'Peru', 'PER', '604', '51'),
(169, 'PH', 'Philippines', 'PHL', '608', '63'),
(170, 'PN', 'Pitcairn', 'PCN', '612', '0'),
(171, 'PL', 'Poland', 'POL', '616', '48'),
(172, 'PT', 'Portugal', 'PRT', '620', '351'),
(173, 'PR', 'Puerto Rico', 'PRI', '630', '1787'),
(174, 'QA', 'Qatar', 'QAT', '634', '974'),
(175, 'RE', 'Reunion', 'REU', '638', '262'),
(176, 'RO', 'Romania', 'ROM', '642', '40'),
(177, 'RU', 'Russian Federation', 'RUS', '643', '70'),
(178, 'RW', 'Rwanda', 'RWA', '646', '250'),
(179, 'SH', 'Saint Helena', 'SHN', '654', '290'),
(180, 'KN', 'Saint Kitts and Nevis', 'KNA', '659', '1869'),
(181, 'LC', 'Saint Lucia', 'LCA', '662', '1758'),
(182, 'PM', 'Saint Pierre and Miquelon', 'SPM', '666', '508'),
(183, 'VC', 'Saint Vincent and the Grenadines', 'VCT', '670', '1784'),
(184, 'WS', 'Samoa', 'WSM', '882', '684'),
(185, 'SM', 'San Marino', 'SMR', '674', '378'),
(186, 'ST', 'Sao Tome and Principe', 'STP', '678', '239'),
(187, 'SA', 'Saudi Arabia', 'SAU', '682', '966'),
(188, 'SN', 'Senegal', 'SEN', '686', '221'),
(189, 'CS', 'Serbia and Montenegro', NULL, NULL, '381'),
(190, 'SC', 'Seychelles', 'SYC', '690', '248'),
(191, 'SL', 'Sierra Leone', 'SLE', '694', '232'),
(192, 'SG', 'Singapore', 'SGP', '702', '65'),
(193, 'SK', 'Slovakia', 'SVK', '703', '421'),
(194, 'SI', 'Slovenia', 'SVN', '705', '386'),
(195, 'SB', 'Solomon Islands', 'SLB', '90', '677'),
(196, 'SO', 'Somalia', 'SOM', '706', '252'),
(197, 'ZA', 'South Africa', 'ZAF', '710', '27'),
(198, 'GS', 'South Georgia and the South Sandwich Islands', NULL, NULL, '0'),
(199, 'ES', 'Spain', 'ESP', '724', '34'),
(200, 'LK', 'Sri Lanka', 'LKA', '144', '94'),
(201, 'SD', 'Sudan', 'SDN', '736', '249'),
(202, 'SR', 'Suriname', 'SUR', '740', '597'),
(203, 'SJ', 'Svalbard and Jan Mayen', 'SJM', '744', '47'),
(204, 'SZ', 'Swaziland', 'SWZ', '748', '268'),
(205, 'SE', 'Sweden', 'SWE', '752', '46'),
(206, 'CH', 'Switzerland', 'CHE', '756', '41'),
(207, 'SY', 'Syrian Arab Republic', 'SYR', '760', '963'),
(208, 'TW', 'Taiwan, Province of China', 'TWN', '158', '886'),
(209, 'TJ', 'Tajikistan', 'TJK', '762', '992'),
(210, 'TZ', 'Tanzania, United Republic of', 'TZA', '834', '255'),
(211, 'TH', 'Thailand', 'THA', '764', '66'),
(212, 'TL', 'Timor-Leste', NULL, NULL, '670'),
(213, 'TG', 'Togo', 'TGO', '768', '228'),
(214, 'TK', 'Tokelau', 'TKL', '772', '690'),
(215, 'TO', 'Tonga', 'TON', '776', '676'),
(216, 'TT', 'Trinidad and Tobago', 'TTO', '780', '1868'),
(217, 'TN', 'Tunisia', 'TUN', '788', '216'),
(218, 'TR', 'Turkey', 'TUR', '792', '90'),
(219, 'TM', 'Turkmenistan', 'TKM', '795', '7370'),
(220, 'TC', 'Turks and Caicos Islands', 'TCA', '796', '1649'),
(221, 'TV', 'Tuvalu', 'TUV', '798', '688'),
(222, 'UG', 'Uganda', 'UGA', '800', '256'),
(223, 'UA', 'Ukraine', 'UKR', '804', '380'),
(224, 'AE', 'United Arab Emirates', 'ARE', '784', '971'),
(225, 'GB', 'United Kingdom', 'GBR', '826', '44'),
(226, 'US', 'United States', 'USA', '840', '1'),
(227, 'UM', 'United States Minor Outlying Islands', NULL, NULL, '1'),
(228, 'UY', 'Uruguay', 'URY', '858', '598'),
(229, 'UZ', 'Uzbekistan', 'UZB', '860', '998'),
(230, 'VU', 'Vanuatu', 'VUT', '548', '678'),
(231, 'VE', 'Venezuela', 'VEN', '862', '58'),
(232, 'VN', 'Viet Nam', 'VNM', '704', '84'),
(233, 'VG', 'Virgin Islands, British', 'VGB', '92', '1284'),
(234, 'VI', 'Virgin Islands, U.s.', 'VIR', '850', '1340'),
(235, 'WF', 'Wallis and Futuna', 'WLF', '876', '681'),
(236, 'EH', 'Western Sahara', 'ESH', '732', '212'),
(237, 'YE', 'Yemen', 'YEM', '887', '967'),
(238, 'ZM', 'Zambia', 'ZMB', '894', '260'),
(239, 'ZW', 'Zimbabwe', 'ZWE', '716', '263');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `default` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `rate`, `status`, `default`) VALUES
(1, 'US Dollar', 'USD', '&#36;', '1.00', 'Active', '1'),
(2, 'Pound Sterling', 'GBP', '&pound;', '0.65', 'Active', '0'),
(3, 'Europe', 'EUR', '&euro;', '0.88', 'Active', '0'),
(4, 'Australian Dollar', 'AUD', '&#36;', '1.41', 'Active', '0'),
(5, 'Singapore', 'SGD', '&#36;', '1.41', 'Active', '0'),
(6, 'Swedish Krona', 'SEK', 'kr', '8.24', 'Active', '0'),
(7, 'Danish Krone', 'DKK', 'kr', '6.58', 'Active', '0'),
(8, 'Mexican Peso', 'MXN', '$', '16.83', 'Active', '0'),
(9, 'Brazilian Real', 'BRL', 'R$', '3.88', 'Active', '0'),
(10, 'Malaysian Ringgit', 'MYR', 'RM', '4.31', 'Active', '0'),
(11, 'Philippine Peso', 'PHP', 'P', '46.73', 'Active', '0'),
(12, 'Swiss Franc', 'CHF', '&euro;', '0.97', 'Active', '0'),
(13, 'India', 'INR', '&#x20B9;', '66.24', 'Active', '0'),
(14, 'Argentine Peso', 'ARS', '&#36;', '9.35', 'Active', '0'),
(15, 'Canadian Dollar', 'CAD', '&#36;', '1.33', 'Active', '0'),
(16, 'Chinese Yuan', 'CNY', '&#165;', '6.37', 'Active', '0'),
(17, 'Czech Republic Koruna', 'CZK', 'K&#269;', '23.91', 'Active', '0'),
(18, 'Hong Kong Dollar', 'HKD', '&#36;', '7.75', 'Active', '0'),
(19, 'Hungarian Forint', 'HUF', 'Ft', '276.41', 'Active', '0'),
(20, 'Indonesian Rupiah', 'IDR', 'Rp', '14249.50', 'Active', '0'),
(21, 'Israeli New Sheqel', 'ILS', '&#8362;', '3.86', 'Active', '0'),
(22, 'Japanese Yen', 'JPY', '&#165;', '120.59', 'Active', '0'),
(23, 'South Korean Won', 'KRW', '&#8361;', '1182.69', 'Active', '0'),
(24, 'Norwegian Krone', 'NOK', 'kr', '8.15', 'Active', '0'),
(25, 'New Zealand Dollar', 'NZD', '&#36;', '1.58', 'Active', '0'),
(26, 'Polish Zloty', 'PLN', 'z&#322;', '3.71', 'Active', '0'),
(27, 'Russian Ruble', 'RUB', 'p', '67.75', 'Active', '0'),
(28, 'Thai Baht', 'THB', '&#3647;', '36.03', 'Active', '0'),
(29, 'Turkish Lira', 'TRY', '&#8378;', '3.05', 'Active', '0'),
(30, 'New Taiwan Dollar', 'TWD', '&#36;', '32.47', 'Active', '0'),
(31, 'Vietnamese Dong', 'VND', '&#8363;', '22472.00', 'Active', '0'),
(32, 'South African Rand', 'ZAR', 'R', '13.55', 'Active', '0');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `temp_id` int(11) NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('email','sms') COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `temp_id`, `subject`, `body`, `link_text`, `lang`, `type`, `lang_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Your Payout information has been updated in {site_name}', 'Hi {first_name},\r\n                            <br><br>\r\n                            We hope this message finds you well. Your {site_name} payout account information was recently changed on {date_time}. To help keep your account secure, we wanted to reach out to confirm that you made this change. Feel free to disregard this message if you updated your payout account information on {date_time}.\r\n                            <br><br>\r\n                            If you did not make this change to your account, please contact us.<br>', NULL, 'en', 'email', 1, NULL, NULL),
(2, 2, 'Your Payout information has been updated in {site_name}', 'Hi {first_name},\r\n                            <br><br>\r\n                            Your {site_name} payout information was updated on {date_time}.<br>', NULL, 'en', 'email', 1, NULL, NULL),
(3, 3, 'Your Payout information has been deleted in {site_name}', 'Hi {first_name},\r\n                            <br><br>\r\n                            Your {site_name} payout information was deleted on {date_time}.<br>', NULL, 'en', 'email', 1, NULL, NULL),
(4, 4, 'Booking inquiry for {property_name}', 'Hi {owner_first_name},\r\n                            <br><br>\r\n            				<h1>Respond to {user_first_name}’s Inquiry</h1>\r\n            				<br>\r\n            				{total_night} {night/nights} at {property_name}\r\n            				<br>\r\n            				{messages_message}\r\n            				<br>\r\n            				Property Name:  {property_name}\r\n            				<br>\r\n            				Number of Guest: {total_guest}\r\n            				<br>\r\n            				Number of Night: {total_night}\r\n            				<br>\r\n                            Check in Time: {start_date}', NULL, 'en', 'email', 1, NULL, NULL),
(5, 5, 'Please confirm your e-mail address', 'Hi {first_name},\r\n                            <br><br>\r\n                            Welcome to {site_name}! Please confirm your account.', NULL, 'en', 'email', 1, NULL, NULL),
(6, 6, 'Reset your Password', 'Hi {first_name},\r\n                            <br><br>\r\n                            Your requested password reset link is below. If you didn\'t make the request, just ignore this email.', NULL, 'en', 'email', 1, NULL, NULL),
(7, 7, 'Please set a payment account', 'Hi {first_name},\r\n                            <br><br>\r\n                            Amount {currency_symbol}{payout_amount} is waiting for you but you did not add any payout account to send the money. Please add a payout method.', NULL, 'en', 'email', 1, NULL, NULL),
(8, 8, 'Payout Sent', 'Hi {first_name},\r\n                            <br><br>\r\n                            \r\n\r\nyour amount \r\n\r\n{currency_symbol}{payout_amount}\r\n\r\n transferred to your wallet \r\n                            <br>', NULL, 'en', 'email', 1, NULL, '2021-12-03 03:31:17'),
(9, 9, 'Booking Cancelled', 'Hi {user_first_name},\r\n                            <br><br>\r\n                            {owner_first_name} cancelled booking of {property_name}.<br>', NULL, 'en', 'email', 1, NULL, '2021-12-03 00:48:50'),
(10, 10, 'Booking {Accepted/Declined}', 'Hi {guest_first_name},\r\n                            <br><br>\r\n                            {host_first_name} {Accepted/Declined} the booking of {property_name}.<br>', NULL, 'en', 'email', 1, NULL, NULL),
(11, 11, 'Booking request send for {property_name}', 'Hi {user_first_name},\r\n                            <br><br>\r\n                            <h1>Booking request send to {owner_first_name}</h1>\r\n                            <br>\r\n                            {total_night} {night/nights} at {property_name}\r\n                            <br>\r\n                            Property Name:  {property_name}\r\n                            <br>\r\n                            Number of Guest: {total_guest}\r\n                            <br>\r\n                            Number of Night: {total_night}\r\n                            <br>\r\n                            Check in Time: {start_date}', NULL, 'en', 'email', 1, NULL, NULL),
(12, 12, 'Booking Cancelled', 'Hi {owner_first_name},\r\n                            <br><br>{user_first_name} cancelled booking of {property_name}.<br>', NULL, 'en', 'email', 1, NULL, NULL),
(13, 8, 'Subject', 'Body', NULL, 'ar', 'email', 2, '2021-12-03 03:31:17', '2021-12-03 03:31:17'),
(14, 8, 'Subject', 'Body', NULL, 'ch', 'email', 3, '2021-12-03 03:31:17', '2021-12-03 03:31:17'),
(15, 8, 'Subject', 'Body', NULL, 'fr', 'email', 4, '2021-12-03 03:31:17', '2021-12-03 03:31:17'),
(16, 8, 'Subject', 'Body', NULL, 'pt', 'email', 5, '2021-12-03 03:31:17', '2021-12-03 03:31:17'),
(17, 8, 'Subject', 'Body', NULL, 'ru', 'email', 6, '2021-12-03 03:31:17', '2021-12-03 03:31:17'),
(18, 8, 'Subject', 'Body', NULL, 'es', 'email', 7, '2021-12-03 03:31:17', '2021-12-03 03:31:17'),
(19, 8, 'Subject', 'Body', NULL, 'tr', 'email', 8, '2021-12-03 03:31:17', '2021-12-03 03:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `exclusion`
--

CREATE TABLE `exclusion` (
  `id` int(11) NOT NULL,
  `temp_id` int(25) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `lang` varchar(255) DEFAULT NULL,
  `lang_id` int(25) DEFAULT NULL,
  `deleted_status` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exclusion`
--

INSERT INTO `exclusion` (`id`, `temp_id`, `name`, `status`, `lang`, `lang_id`, `deleted_status`) VALUES
(1, 1, 'Food & drinks', 'Active', 'en', 1, 'No'),
(2, 1, 'الأطعمة والمشروبات', 'Active', 'ar', 2, 'No'),
(3, 1, '食品和飲料', 'Active', 'ch', 3, 'No'),
(4, 1, 'Nourriture et boissons', 'Active', 'fr', 4, 'No'),
(5, 1, 'Bebidas Alimentos', 'Active', 'pt', 5, 'No'),
(6, 1, 'Еда напитки', 'Active', 'ru', 6, 'No'),
(7, 1, 'Alimentos y bebidas', 'Active', 'es', 7, 'No'),
(8, 1, 'Yiyecek ve içecekler', 'Active', 'tr', 8, 'No'),
(9, 9, 'Bus fare', 'Active', 'en', 1, 'No'),
(10, 9, 'أجرة الحافلة', 'Active', 'ar', 2, 'No'),
(11, 9, '公交車票價', 'Active', 'ch', 3, 'No'),
(12, 9, 'billet d\'autobus', 'Active', 'fr', 4, 'No'),
(13, 9, 'tarifa de onibus', 'Active', 'pt', 5, 'No'),
(14, 9, 'проезд на автобусе', 'Active', 'ru', 6, 'No'),
(15, 9, 'billete de autobús', 'Active', 'es', 7, 'No'),
(16, 9, 'otobüs ücreti', 'Active', 'tr', 8, 'No'),
(17, 17, 'Fuel surcharge', 'Active', 'en', 1, 'No'),
(18, 17, 'تكلفة الوقود الإضافية', 'Active', 'ar', 2, 'No'),
(19, 17, '燃油附加費', 'Active', 'ch', 3, 'No'),
(20, 17, 'Surcharge d\'essence', 'Active', 'fr', 4, 'No'),
(21, 17, 'Sobretaxa de combustível', 'Active', 'pt', 5, 'No'),
(22, 17, 'Топливный сбор', 'Active', 'ru', 6, 'No'),
(23, 17, 'Recargo por combustible', 'Active', 'es', 7, 'No'),
(24, 17, 'Yakıt ek ücreti', 'Active', 'tr', 8, 'No'),
(25, 25, 'Wifi', 'Active', 'en', 1, 'No'),
(26, 25, 'واي فاي', 'Active', 'ar', 2, 'No'),
(27, 25, '無線上網', 'Active', 'ch', 3, 'No'),
(28, 25, 'Wifi', 'Active', 'fr', 4, 'No'),
(29, 25, 'Wi-fi', 'Active', 'pt', 5, 'No'),
(30, 25, 'вай-фай', 'Active', 'ru', 6, 'No'),
(31, 25, 'Wifi', 'Active', 'es', 7, 'No'),
(32, 25, 'Wifi', 'Active', 'tr', 8, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `experience_category`
--

CREATE TABLE `experience_category` (
  `id` int(11) NOT NULL,
  `temp_id` int(25) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `lang` varchar(255) DEFAULT NULL,
  `lang_id` int(25) DEFAULT NULL,
  `deleted_status` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `experience_category`
--

INSERT INTO `experience_category` (`id`, `temp_id`, `name`, `status`, `lang`, `lang_id`, `deleted_status`) VALUES
(1, 1, 'Nightlife', 'Active', 'en', 1, 'No'),
(2, 1, 'سهرات', 'Active', 'ar', 2, 'No'),
(3, 1, '夜生活', 'Active', 'ch', 3, 'No'),
(4, 1, 'Vie nocturne', 'Active', 'fr', 4, 'No'),
(5, 1, 'Vida noturna', 'Active', 'pt', 5, 'No'),
(6, 1, 'Ночная жизнь', 'Active', 'ru', 6, 'No'),
(7, 1, 'La vida nocturna', 'Active', 'es', 7, 'No'),
(8, 1, 'gece hayatı', 'Active', 'tr', 8, 'No'),
(9, 9, 'Music', 'Active', 'en', 1, 'No'),
(10, 9, 'موسيقى', 'Active', 'ar', 2, 'No'),
(11, 9, '音樂', 'Active', 'ch', 3, 'No'),
(12, 9, 'la musique', 'Active', 'fr', 4, 'No'),
(13, 9, 'música', 'Active', 'pt', 5, 'No'),
(14, 9, 'Музыка', 'Active', 'ru', 6, 'No'),
(15, 9, 'música', 'Active', 'es', 7, 'No'),
(16, 9, 'müzik', 'Active', 'tr', 8, 'No'),
(17, 17, 'History', 'Active', 'en', 1, 'No'),
(18, 17, 'التاريخ', 'Active', 'ar', 2, 'No'),
(19, 17, '歷史', 'Active', 'ch', 3, 'No'),
(20, 17, 'l\'histoire', 'Active', 'fr', 4, 'No'),
(21, 17, 'história', 'Active', 'pt', 5, 'No'),
(22, 17, 'история', 'Active', 'ru', 6, 'No'),
(23, 17, 'historia', 'Active', 'es', 7, 'No'),
(24, 17, 'Tarih', 'Active', 'tr', 8, 'No'),
(25, 25, 'Food & Drink', 'Active', 'en', 1, 'No'),
(26, 25, 'طعام شراب', 'Active', 'ar', 2, 'No'),
(27, 25, '食物和飲料', 'Active', 'ch', 3, 'No'),
(28, 25, 'Nourriture boisson', 'Active', 'fr', 4, 'No'),
(29, 25, 'Comida e bebida', 'Active', 'pt', 5, 'No'),
(30, 25, 'Еда, напиток', 'Active', 'ru', 6, 'No'),
(31, 25, 'Comida y bebida', 'Active', 'es', 7, 'No'),
(32, 25, 'Yiyecek içecek', 'Active', 'tr', 8, 'No'),
(33, 33, 'Nature', 'Active', 'en', 1, 'No'),
(34, 33, 'طبيعة', 'Active', 'ar', 2, 'No'),
(35, 33, '自然', 'Active', 'ch', 3, 'No'),
(36, 33, 'Nature', 'Active', 'fr', 4, 'No'),
(37, 33, 'Natureza', 'Active', 'pt', 5, 'No'),
(38, 33, 'Природа', 'Active', 'ru', 6, 'No'),
(39, 33, 'Naturaleza', 'Active', 'es', 7, 'No'),
(40, 33, 'Doğa', 'Active', 'tr', 8, 'No');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `family_package`
--

CREATE TABLE `family_package` (
  `id` int(11) NOT NULL,
  `property_id` int(25) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` int(25) DEFAULT NULL,
  `adults` varchar(255) DEFAULT NULL,
  `children` varchar(255) DEFAULT NULL,
  `infants` varchar(255) DEFAULT NULL,
  `itinerary` longtext,
  `file` varchar(255) DEFAULT NULL,
  `full_details` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `family_package`
--

INSERT INTO `family_package` (`id`, `property_id`, `title`, `price`, `adults`, `children`, `infants`, `itinerary`, `file`, `full_details`) VALUES
(1, 11, 'Family Package 1', 50, '4', '2', '1', 'Always put on a protective suit.', '1647074753_thom-holmes-57q4x4qtdbs-unsplash-1586229930.jpg', 'Always put on a protective suit.'),
(2, 11, 'Family Package 2', 60, '5', '4', '1', 'Always put on a protective suit. Respect the instructions of the guide.', '1647074753_thom-holmes-i9blfp-1zzc-unsplash-1586229932.jpg', 'Always put on a protective suit. Respect the instructions of the guide.'),
(3, 15, 'Package 1', 80, '2', '2', '1', 'This stay is extremely close to a bird sanctuary and has a lovely view. You will appreciate the food and the atmosphere.', '1648450593_kevin-delvecchio-7noZJ_4nhU8-unsplash_11zon.jpg', 'Welcome Drink\r\nBreakfast\r\nLunch\r\nTea with Snacks\r\nDinner'),
(4, 15, 'Package 2', 100, '2', '2', '2', 'This stay is extremely close to a bird sanctuary and has a lovely view. You will appreciate the food and the atmosphere.', '1648450593_mike-erskine-S_VbdMTsdiA-unsplash_11zon.jpg', 'Welcome Drink\r\nBreakfast\r\nLunch\r\nTea with Snacks\r\nDinner\r\nFree wifi'),
(5, 16, 'Trekking Package 1', 50, '2', '1', '1', 'The excellent oxygen may be felt in the hills. Many birds are soaring over the mountain, creating a magical scene.', 'toomas-tartes-Yizrl9N_eDA-unsplash.jpg', 'Recommended to wear comfortable clothing and footwear. This might be an individual or group sport. Carry an extra set of clothes'),
(6, 16, 'Trekking Package 2', 75, '2', '2', '2', 'Recommended to wear comfortable clothing and footwear. This might be an individual or group sport. Carry an extra set of clothes', 'gigin-krishnan-hYo8BxhdLH8-unsplash.jpg', 'The excellent oxygen may be felt in the hills. Many birds are soaring over the mountain, creating a magical scene.'),
(7, 18, 'Munnar Trekking Package 1', 75, '2', '1', '1', 'Trekking is an unforgettable activity in Munnar. Which brings calm to the heart and refreshment to the mind. The', 'hayato-shin-oXend5neBr0-unsplash.jpg', 'Wear comfortable clothing and footwear. This might be an individual or group activity. Bring an extra set of clothes Follow the guide/instructions trainers exactly.'),
(8, 18, 'Munnar Trekking Package 2', 100, '2', '2', '2', 'Wear comfortable clothing and footwear. This might be an individual or group activity. Bring an extra set of clothes Follow the guide/instructions for trainers exactly.', 'max-kukurudziak-XcbkbCe4kT0-unsplash.jpg', 'This might be an individual or group activity. Bring an extra set of clothes Follow the guide/instructions for trainers exactly.'),
(9, 22, 'Package 1', 80, '2', '2', '1', 'This stay is extremely close to a bird sanctuary and has a lovely view. You will appreciate the food and the atmosphere.', '1648450593_kevin-delvecchio-7noZJ_4nhU8-unsplash_11zon.jpg', 'Welcome Drink\r\nBreakfast\r\nLunch\r\nTea with Snacks\r\nDinner'),
(10, 22, 'Package 2', 100, '2', '2', '2', 'This stay is extremely close to a bird sanctuary and has a lovely view. You will appreciate the food and the atmosphere.', '1648450593_mike-erskine-S_VbdMTsdiA-unsplash_11zon.jpg', 'Welcome Drink\r\nBreakfast\r\nLunch\r\nTea with Snacks\r\nDinner\r\nFree wifi'),
(11, 25, 'Easy Trekking', 60, '2', '1', '1', 'Wear comfortable clothes and shoes\r\nFollow the safety guidelines.', 'Trekking in Thekkady, Kerala.jpg', 'Begins with a very pleasant morning followed by a relaxing stroll across the hills.'),
(12, 25, 'Challenging Trekking', 75, '2', '1', '2', 'wear comfortable clothes and shoes\r\nfollow the safety guidelines', 'Trekking in Thekkady.jpg', 'Begins in the morning and continues nearly a day by walking and climbing the hills.'),
(13, 30, 'Hot Air Balloon Safari for Children', 50, '1', '1', NULL, 'Visit the Hot Air Balloon Safari at a height. Experience the Beach and Sunset as seen before as you take in the 360-degree vista.', 'hot air balloon safari.jpg', 'Child above 6 years is allowed for this experience'),
(14, 30, 'Hot Air Balloon Safari', 60, '2', NULL, NULL, 'Visit the Hot Air Balloon Safari at a height. Experience the Beach and Sunset as seen before as you take in the 360-degree vista.', 'hot airballoon.jpg', 'Children not allowed');

-- --------------------------------------------------------

--
-- Table structure for table `inclusion`
--

CREATE TABLE `inclusion` (
  `id` int(11) NOT NULL,
  `temp_id` int(25) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `lang` varchar(255) DEFAULT NULL,
  `lang_id` int(25) DEFAULT NULL,
  `deleted_status` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inclusion`
--

INSERT INTO `inclusion` (`id`, `temp_id`, `name`, `status`, `lang`, `lang_id`, `deleted_status`) VALUES
(1, 1, 'Departure tax', 'Active', 'en', 1, 'No'),
(2, 1, 'ضريبة المغادرة', 'Active', 'ar', 2, 'No'),
(3, 1, '離境稅', 'Active', 'ch', 3, 'No'),
(4, 1, 'taxe de départ', 'Active', 'fr', 4, 'No'),
(5, 1, 'imposto de embarque', 'Active', 'pt', 5, 'No'),
(6, 1, 'налог на отъезд', 'Active', 'ru', 6, 'No'),
(7, 1, 'impuesto de salida', 'Active', 'es', 7, 'No'),
(8, 1, 'çıkış vergisi', 'Active', 'tr', 8, 'No'),
(9, 9, 'Entry or admission fee', 'Active', 'en', 1, 'No'),
(10, 9, 'رسوم الدخول أو القبول', 'Active', 'ar', 2, 'No'),
(11, 9, '入場費或入場費', 'Active', 'ch', 3, 'No'),
(12, 9, 'Frais d\'entrée ou d\'admission', 'Active', 'fr', 4, 'No'),
(13, 9, 'Ingresso ou taxa de admissão', 'Active', 'pt', 5, 'No'),
(14, 9, 'Вступительный или вступительный взнос', 'Active', 'ru', 6, 'No'),
(15, 9, 'Cuota de entrada o admisión', 'Active', 'es', 7, 'No'),
(16, 9, 'Giriş veya giriş ücreti', 'Active', 'tr', 8, 'No'),
(17, 17, 'Entry tax', 'Active', 'en', 1, 'No'),
(18, 17, 'ضريبة الدخول', 'Active', 'ar', 2, 'No'),
(19, 17, '入境稅', 'Active', 'ch', 3, 'No'),
(20, 17, 'Taxe d\'entrée', 'Active', 'fr', 4, 'No'),
(21, 17, 'Imposto de entrada', 'Active', 'pt', 5, 'No'),
(22, 17, 'Вступительный налог', 'Active', 'ru', 6, 'No'),
(23, 17, 'Impuesto de entrada', 'Active', 'es', 7, 'No'),
(24, 17, 'giriş vergisi', 'Active', 'tr', 8, 'No'),
(25, 25, 'Landing & facility fees', 'Active', 'en', 1, 'No'),
(26, 25, 'رسوم الهبوط والتسهيلات', 'Active', 'ar', 2, 'No'),
(27, 25, '著陸費和設施費', 'Active', 'ch', 3, 'No'),
(28, 25, 'Frais d\'atterrissage et d\'installation', 'Active', 'fr', 4, 'No'),
(29, 25, 'Taxas de pouso e instalação', 'Active', 'pt', 5, 'No'),
(30, 25, 'Плата за посадку и услуги', 'Active', 'ru', 6, 'No'),
(31, 25, 'Tarifas de aterrizaje e instalaciones', 'Active', 'es', 7, 'No'),
(32, 25, 'İniş ve tesis ücretleri', 'Active', 'tr', 8, 'No'),
(33, 33, 'National park entrance fee', 'Active', 'en', 1, 'No'),
(34, 33, 'رسم دخول الحديقة الوطنية', 'Active', 'ar', 2, 'No'),
(35, 33, '國家公園入場費', 'Active', 'ch', 3, 'No'),
(36, 33, 'Frais d\'entrée au parc national', 'Active', 'fr', 4, 'No'),
(37, 33, 'Taxa de entrada do parque nacional', 'Active', 'pt', 5, 'No'),
(38, 33, 'Плата за вход в национальный парк', 'Active', 'ru', 6, 'No'),
(39, 33, 'Tarifa de entrada al parque nacional', 'Active', 'es', 7, 'No'),
(40, 33, 'Milli park giriş ücreti', 'Active', 'tr', 8, 'No'),
(41, 41, 'Parking fees', 'Active', 'en', 1, 'No'),
(42, 41, 'رسوم وقوف السيارات', 'Active', 'ar', 2, 'No'),
(43, 41, '停車費', 'Active', 'ch', 3, 'No'),
(44, 41, 'Frais de parking', 'Active', 'fr', 4, 'No'),
(45, 41, 'Taxas de estacionamento', 'Active', 'pt', 5, 'No'),
(46, 41, 'Плата за парковку', 'Active', 'ru', 6, 'No'),
(47, 41, 'Tarifas de estacionamiento', 'Active', 'es', 7, 'No'),
(48, 41, 'Otopark ücretleri', 'Active', 'tr', 8, 'No'),
(49, 49, 'Tip or gratuity', 'Active', 'en', 1, 'No'),
(50, 49, 'إكرامية أو إكرامية', 'Active', 'ar', 2, 'No'),
(51, 49, '小費或小費', 'Active', 'ch', 3, 'No'),
(52, 49, 'Pourboire ou gratification', 'Active', 'fr', 4, 'No'),
(53, 49, 'Gorjeta ou gorjeta', 'Active', 'pt', 5, 'No'),
(54, 49, 'Чаевые или чаевые', 'Active', 'ru', 6, 'No'),
(55, 49, 'Propina o propina', 'Active', 'es', 7, 'No'),
(56, 49, 'Bahşiş veya bahşiş', 'Active', 'tr', 8, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `default` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_rtl` enum('Yes','No') COLLATE utf8mb4_unicode_ci DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `short_name`, `status`, `default`, `enable_rtl`) VALUES
(1, 'English', 'en', 'Active', '1', 'No'),
(2, 'عربى', 'ar', 'Active', '0', 'Yes'),
(3, '中文 (繁體)', 'ch', 'Active', '0', 'No'),
(4, 'Français', 'fr', 'Active', '0', 'No'),
(5, 'Português', 'pt', 'Active', '0', 'No'),
(6, 'Русский', 'ru', 'Active', '0', 'No'),
(7, 'Español', 'es', 'Active', '0', 'No'),
(8, 'Türkçe', 'tr', 'Active', '0', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `type_id` int(11) DEFAULT NULL,
  `read` int(11) NOT NULL DEFAULT '0',
  `archive` int(11) NOT NULL DEFAULT '0',
  `star` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `property_id`, `booking_id`, `sender_id`, `receiver_id`, `message`, `type_id`, `read`, `archive`, `star`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 3, 2, 'Demo Booking', 4, 1, 0, 0, '2022-09-03 02:17:17', '2022-10-03 00:33:37'),
(2, 16, 2, 3, 2, 'Booking Request', 4, 1, 0, 0, '2022-09-03 02:19:21', '2022-10-06 06:03:04'),
(3, 16, 2, 2, 3, 'booking request accepted', 5, 1, 0, 0, '2022-09-03 02:23:28', '2022-09-21 05:22:51'),
(4, 16, 2, 3, 2, 'Experience booking', 4, 1, 0, 0, '2022-09-03 02:25:00', '2022-10-06 06:03:04'),
(5, 4, 3, 3, 1, 'I like this accommodation and want to spend my vacation here.', 4, 1, 0, 0, '2022-09-03 02:27:20', '2022-10-05 01:36:40'),
(6, 8, 4, 1, 2, 'Booking Payment', 4, 1, 0, 0, '2022-09-03 02:31:29', '2022-10-06 06:02:27'),
(7, 23, 5, 1, 2, 'We would like to spend our vacation trip in London. We feel your space is perfect for us. If your space is available, kindly accept the request.', 4, 1, 0, 0, '2022-09-16 02:21:12', '2022-10-03 00:33:27'),
(8, 23, 5, 2, 1, 'I am glad to see your request. we hearty welcome to London and our accommodation is available on the requested dates.', 5, 1, 0, 0, '2022-09-16 06:53:21', '2022-10-05 01:36:39'),
(9, 23, 5, 1, 2, 'Thankyou for accepting the request', 4, 1, 0, 0, '2022-09-16 07:08:13', '2022-10-03 00:33:27'),
(10, 23, 6, 1, 2, 'We would like to spend our vacation trip in London. We feel your space is perfect for us. If the property is available, kindly accept the request.', 4, 1, 0, 0, '2022-09-19 01:08:05', '2022-10-03 00:33:25'),
(11, 23, 6, 2, 1, 'I am glad to see your request, we hearty welcome to London and our accommodation is available on the requested dates.', 5, 1, 0, 0, '2022-09-19 02:27:54', '2022-10-05 01:36:42'),
(12, 23, 6, 1, 2, 'Thankyou for accepting the request', 4, 1, 0, 0, '2022-09-19 02:41:43', '2022-10-03 00:33:25'),
(13, 25, 7, 1, 2, 'I like to explore the thekkady trekking experience. If the requested dates are available, kindly accept the request.', 4, 1, 0, 0, '2022-09-20 06:32:56', '2022-10-05 01:53:02'),
(14, 25, 7, 2, 1, 'Thank you for making this request. The specified dates available for our experience', 5, 0, 0, 0, '2022-09-21 00:08:35', '2022-09-21 00:08:35'),
(15, 25, 7, 1, 2, 'Thank you for accepting the request', 4, 1, 0, 0, '2022-09-21 00:18:08', '2022-10-05 01:53:02'),
(16, 8, 8, 3, 2, 'test booking', 4, 1, 0, 0, '2022-09-21 05:39:21', '2022-10-05 01:52:43'),
(17, 8, 8, 3, 2, 'test', 2, 1, 0, 0, '2022-09-21 06:38:35', '2022-10-05 01:52:43'),
(18, 17, 9, 3, 2, 'test experience booking', 4, 1, 0, 0, '2022-09-21 07:27:25', '2022-10-03 00:33:16'),
(19, 25, 10, 1, 2, 'test', 4, 0, 0, 0, '2022-10-05 01:53:20', '2022-10-05 01:53:20'),
(20, 25, 11, 1, 2, 'test', 4, 1, 0, 0, '2022-10-05 05:29:37', '2022-10-06 06:02:17');

-- --------------------------------------------------------

--
-- Table structure for table `message_type`
--

CREATE TABLE `message_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message_type`
--

INSERT INTO `message_type` (`id`, `name`, `description`) VALUES
(1, 'query', NULL),
(2, 'guest_cancellation', NULL),
(3, 'host_cancellation', NULL),
(4, 'booking_request', NULL),
(5, 'booking_accecpt', NULL),
(6, 'booking_decline', NULL),
(7, 'booking_expire', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_09_26_161159_entrust_setup_tables', 1),
(4, '2015_10_05_153204_create_timezone_table', 1),
(5, '2017_02_08_044609_create_accounts_table', 1),
(6, '2017_02_08_045108_create_pages_table', 1),
(7, '2017_02_08_045204_create_reports_table', 1),
(8, '2017_02_08_045412_create_country_table', 1),
(9, '2017_02_08_045643_create_language_table', 1),
(10, '2017_02_08_045745_create_currency_table', 1),
(11, '2017_02_23_110333_create_backup_table', 1),
(12, '2017_02_27_124315_create_seo_metas_table', 1),
(13, '2017_03_01_130507_create_user_details_table', 1),
(14, '2017_03_29_070352_create_payment_methods_table', 1),
(15, '2017_04_02_110016_create_notification_table', 1),
(16, '2017_05_04_102846_create_admin_table', 1),
(17, '2017_05_04_103841_create_property_type_table', 1),
(18, '2017_05_04_104010_create_amenities_table', 1),
(19, '2017_05_04_104406_create_amenity_type_table', 1),
(20, '2017_05_04_104509_create_rules_table', 1),
(21, '2017_05_04_105120_create_settings_table', 1),
(22, '2017_05_04_105515_create_properties_table', 1),
(23, '2017_05_04_105605_create_property_description_table', 1),
(24, '2017_05_04_105636_create_property_price_table', 1),
(25, '2017_05_04_105726_create_property_address_table', 1),
(26, '2017_05_04_105742_create_property_photos_table', 1),
(27, '2017_05_04_105800_create_property_details_table', 1),
(28, '2017_05_04_112613_create_property_dates_table', 1),
(29, '2017_05_04_112728_create_property_rules_table', 1),
(30, '2017_05_04_112954_create_property_fees_table', 1),
(31, '2017_05_04_113049_create_bookings_table', 1),
(32, '2017_05_04_113223_create_penalty_table', 1),
(33, '2017_05_04_113243_create_payout_table', 1),
(34, '2017_05_04_113355_create_payout_penalties_table', 1),
(35, '2017_05_04_113622_create_booking_details_table', 1),
(36, '2017_05_04_114011_create_reviews_table', 1),
(37, '2017_05_04_114131_create_messages_table', 1),
(38, '2017_05_04_114152_create_bed_types_table', 1),
(39, '2017_05_04_114215_create_banners_table', 1),
(40, '2017_05_04_114238_create_starting_cities_table', 1),
(41, '2017_05_07_133954_create_message_type_table', 1),
(42, '2017_05_08_073511_create_property_beds_table', 1),
(43, '2017_05_13_055552_create_space_type_table', 1),
(44, '2017_05_18_121707_create_property_steps_table', 1),
(45, '2017_06_18_080440_create_table_user_verification', 1),
(46, '2019_02_02_111427_create_email_templates_table', 1),
(47, '2019_03_03_100404_create_property_icalimports_table', 1),
(48, '2019_08_19_000000_create_failed_jobs_table', 1),
(49, '2020_08_06_062818_create_testimonials_table', 1),
(50, '2020_11_19_082447_create_wallets_table', 1),
(51, '2020_11_19_084031_create_withdrawals_table', 1),
(52, '2020_11_19_102628_create_payout_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('read','unread') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `temp_id` int(25) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` int(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `temp_id`, `name`, `url`, `content`, `position`, `status`, `lang`, `lang_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Help', 'help', '<h2>Help</h2>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Can i share my home on Rent?</p>\r\n\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n	<li>\r\n	<p>Who can be on Rent host?</p>\r\n\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n	<li>\r\n	<p>Does Rent screen Guests?</p>\r\n\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n	<li>\r\n	<p>How should i price my listing on Rent?</p>\r\n\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n	<li>\r\n	<p>How do Rent payments work?</p>\r\n\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n	<li>\r\n	<p>Does Rent provide any insurance for hosts?</p>\r\n\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n</ul>', 'first', 'Active', 'en', 1, NULL, '2021-12-04 00:50:04'),
(2, 2, 'About', 'about', '<h2>About</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'first', 'Active', 'en', 1, NULL, '2021-12-04 00:42:41'),
(3, 3, 'Policies', 'policies', '<h2>Policies</h2>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'second', 'Active', 'en', 1, NULL, '2021-12-04 01:11:48'),
(4, 4, 'Privacy', 'privacy', '<h2><strong>Privacy</strong></h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>&nbsp;</p>', 'second', 'Active', 'en', 1, NULL, '2021-07-05 06:20:04'),
(5, 5, 'Contact Us', 'contact-us', '<div class=\"col-md-12\">\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n\r\n<div align=\"center\" class=\"row\">\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/email.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Email Us</h2>\r\n\r\n<p><a>demo@gmail.com</a></p>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/call.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Call Us</h2>\r\n\r\n<p><a>+1 111 111 1111</a></p>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/placeholder.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Contact Address</h2>\r\n\r\n<p>City, State, Country</p>\r\n</div>\r\n</div>\r\n</div>', 'first', 'Active', 'en', 1, '2021-07-05 06:20:30', '2021-12-07 03:30:05'),
(7, 7, 'Terms of Service', 'terms-of-service', '<ul>\r\n	<li><a href=\"#\">Terms of Service</a></li>\r\n</ul>', 'first', 'Active', 'en', 1, '2021-07-05 06:21:23', '2021-12-10 07:30:57'),
(8, 8, 'Become Host', 'become-host', '<!--banner-->\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner host-banner-bg\">\r\n<div class=\"host-overlay\">&nbsp;</div>\r\n\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"join_banner_txt\">\r\n<h4>You can host anything,</h4>\r\n\r\n<h4>anywhere</h4>\r\n<button class=\"btn green-theme-btn\">Get Started</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n\r\n<p>&nbsp;</p>\r\n<!--why partner-->\r\n\r\n<section class=\"partner-sec\">\r\n<div class=\"container\">\r\n<div data-testid=\"how-it-works-section\">\r\n<div class=\"SectionSteps_root__2NGjK SectionSteps_root--gray__2vZS6\">\r\n<div class=\"Container_root__1WntK\">\r\n<div>\r\n<h1 class=\"SectionSteps_title__3JXIX text-center font-weight-700\">Safety On Rent</h1>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepsWrapper__231A6\">\r\n<div class=\"SectionSteps_stepsInner__3OYc8 row\">\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">5,00,000 host guarantee</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Host Protection Insurance</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Rent is built on trust</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--why partner-->\r\n\r\n<p>&nbsp;</p>\r\n<!--Customized for your bussiness-->\r\n\r\n<section class=\"pb-70 business-sec\">\r\n<div class=\"asd\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead section-intro text-center mt-70\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">We&rsquo;ll help you bring the art of hosting to life</p>\r\n\r\n<p class=\"mt-2\">Manage your bookings, Enquiry and Reviews</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row mt-5\">\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img1\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Ask</div>\r\n\r\n<p class=\"details\">Ask a Superhost</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img2\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Experience</div>\r\n\r\n<p class=\"details\">Host your experience</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img3\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Support Host</div>\r\n\r\n<p class=\"details\">Learn how we support hosts</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"faq-sec\" id=\"start-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">How do I start?</p>\r\n</div>\r\n\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<div data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">1. </span> Create your account</div>\r\n\r\n<div class=\"start-content\">This will take less than 5 minutes of&nbsp;your&nbsp;time</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">2. </span> Create your listing</div>\r\n\r\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">3. </span> Get Paid</div>\r\n\r\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n\r\n<section class=\"faq-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Frequently asked questions</p>\r\n</div>\r\n\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<ul class=\"faq-list\">\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Can i share my home on Rent?</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Who can be on Rent host?</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Does Rent screen Guests?</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">How should i price my listing on Rent?</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">How do Rent payments work?</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Does Rent provide any insurance for hosts?</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n\r\n<p>&nbsp;</p>\r\n<!--banner-->\r\n\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner join-banner-bg\" style=\"min-height: 420px;\">\r\n<div class=\"join-overlay\">&nbsp;</div>\r\n\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"join_banner_txt\">\r\n<h4 class=\"join-txt\">Join Now!</h4>\r\n\r\n<h2>Join us. We&rsquo;ll help you every step of the way.</h2>\r\n<button class=\"btn green-theme-btn\">Get Started</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"more-qn-sec\">\r\n<h2 class=\"font-weight-600\">Have More Questions?</h2>\r\n\r\n<p class=\"mt-md-5\">Contact us at <a class=\"green-theme-font\" href=\"mailto:support@migrateshop.com\">support@migrateshop.com</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 'first', 'Active', 'en', 1, '2021-08-05 10:22:25', '2022-10-05 07:10:59'),
(9, 2, 'عن', '', '<p>عن<br />\r\nهناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام &quot;هنا يوجد محتوى نصي ، هنا يوجد محتوى نصي&quot; ، مما يجعلها تبدو وكأنها إنجليزية قابلة للقراءة. تستخدم العديد من حزم النشر المكتبي ومحرري صفحات الويب الآن Lorem Ipsum كنص نموذج افتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من مواقع الويب التي لا تزال في مهدها. تطورت إصدارات مختلفة على مر السنين ، أحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (روح الدعابة المحقونة وما شابه ذلك).</p>', 'first', 'Active', 'ar', 2, '2021-12-04 00:42:41', '2021-12-04 00:42:41'),
(10, 2, '关于', '', '<h2>关于</h2>\r\n\r\n<p>一个长期存在的事实是，读者在查看页面布局时会被页面的可读内容分散注意力。使用 Lorem Ipsum 的重点在于它或多或少地具有正态分布的字母，而不是使用&ldquo;此处的内容，此处的内容&rdquo;，使其看起来像可读的英语。许多桌面出版软件包和网页编辑器现在使用 Lorem Ipsum 作为默认模型文本，搜索&ldquo;lorem ipsum&rdquo;将发现许多仍处于起步阶段的网站。多年来，各种版本已经演变，有时是偶然的，有时是故意的（注入幽默等）。</p>\r\n\r\n<p>&nbsp;</p>', 'first', 'Active', 'ch', 3, '2021-12-04 00:42:41', '2021-12-04 00:47:18'),
(11, 2, 'Sur', '', '<p>Sur<br />\r\nC&#39;est un fait &eacute;tabli de longue date qu&#39;un lecteur sera distrait par le contenu lisible d&#39;une page lorsqu&#39;il regarde sa mise en page. L&#39;int&eacute;r&ecirc;t d&#39;utiliser Lorem Ipsum est qu&#39;il a une distribution de lettres plus ou moins normale, par opposition &agrave; l&#39;utilisation de &laquo;&nbsp;Content here, content here&nbsp;&raquo;, le faisant ressembler &agrave; un anglais lisible. De nombreux logiciels de publication assist&eacute;e par ordinateur et &eacute;diteurs de pages Web utilisent d&eacute;sormais Lorem Ipsum comme texte de mod&egrave;le par d&eacute;faut, et une recherche de &laquo;&nbsp;lorem ipsum&nbsp;&raquo; permettra de d&eacute;couvrir de nombreux sites Web encore &agrave; leurs balbutiements. Diff&eacute;rentes versions ont &eacute;volu&eacute; au fil des ann&eacute;es, parfois par accident, parfois volontairement (humour inject&eacute;, etc.).</p>', 'first', 'Active', 'fr', 4, '2021-12-04 00:42:41', '2021-12-04 00:42:41'),
(12, 2, 'Cerca de', '', '<p>Cerca de<br />\r\n&Eacute; um fato estabelecido h&aacute; muito tempo que um leitor se distrair&aacute; com o conte&uacute;do leg&iacute;vel de uma p&aacute;gina ao examinar seu layout. O objetivo de usar Lorem Ipsum &eacute; que ele tem uma distribui&ccedil;&atilde;o de letras mais ou menos normal, ao contr&aacute;rio de usar &#39;Conte&uacute;do aqui, conte&uacute;do aqui&#39;, fazendo com que pare&ccedil;a um ingl&ecirc;s leg&iacute;vel. Muitos pacotes de editora&ccedil;&atilde;o eletr&ocirc;nica e editores de p&aacute;ginas da web agora usam Lorem Ipsum como seu texto de modelo padr&atilde;o, e uma pesquisa por &#39;lorem ipsum&#39; revelar&aacute; muitos sites ainda em sua inf&acirc;ncia. V&aacute;rias vers&otilde;es evolu&iacute;ram ao longo dos anos, &agrave;s vezes por acidente, &agrave;s vezes de prop&oacute;sito (humor injetado e coisas do g&ecirc;nero).</p>', 'first', 'Active', 'pt', 5, '2021-12-04 00:42:41', '2021-12-04 00:42:41'),
(13, 2, 'о', '', '<p>О<br />\r\nДавно установлено, что читатель будет отвлекаться на удобочитаемое содержимое страницы, глядя на ее макет. Смысл использования Lorem Ipsum в том, что он имеет более или менее нормальное распределение букв, в отличие от использования &laquo;Контент здесь, контент здесь&raquo;, что делает его похожим на читаемый английский. Многие настольные издательские пакеты и редакторы веб-страниц теперь используют Lorem Ipsum в качестве текста модели по умолчанию, а поиск по запросу &laquo;lorem ipsum&raquo; обнаружит многие веб-сайты, все еще находящиеся в зачаточном состоянии. С годами появились разные версии, иногда случайно, иногда специально (с добавлением юмора и т.п.).</p>', 'first', 'Active', 'ru', 6, '2021-12-04 00:42:41', '2021-12-04 00:45:46'),
(14, 2, 'sobre', '', '<p>Sobre<br />\r\nEs un hecho establecido desde hace mucho tiempo que un lector se distraer&aacute; con el contenido legible de una p&aacute;gina cuando mire su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n de letras m&aacute;s o menos normal, en lugar de usar &#39;Contenido aqu&iacute;, contenido aqu&iacute;&#39;, lo que hace que parezca un ingl&eacute;s legible. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web ahora usan Lorem Ipsum como su texto modelo predeterminado, y una b&uacute;squeda de &#39;lorem ipsum&#39; revelar&aacute; muchos sitios web que a&uacute;n est&aacute;n en su infancia. Varias versiones han evolucionado a lo largo de los a&ntilde;os, a veces por accidente, a veces a prop&oacute;sito (humor inyectado y cosas por el estilo).</p>', 'first', 'Active', 'es', 7, '2021-12-04 00:42:41', '2021-12-04 00:45:46'),
(15, 2, 'hakkında', '', '<p>Hakkında<br />\r\nBir okuyucunun, sayfa d&uuml;zenine bakarken sayfanın okunabilir i&ccedil;eriği tarafından dikkatinin dağılacağı uzun zamandır bilinen bir ger&ccedil;ektir. Lorem Ipsum kullanmanın amacı, &#39;İ&ccedil;erik burada, i&ccedil;erik burada&#39; kullanılmasının aksine, harflerin az &ccedil;ok normal dağılımına sahip olması ve okunabilir İngilizce gibi g&ouml;r&uuml;nmesini sağlamasıdır. Bir&ccedil;ok masa&uuml;st&uuml; yayıncılık paketi ve web sayfası d&uuml;zenleyicisi artık varsayılan model metni olarak Lorem Ipsum&#39;u kullanıyor ve &#39;lorem ipsum&#39; araması, hen&uuml;z emekleme aşamasında olan bir&ccedil;ok web sitesini ortaya &ccedil;ıkaracaktır. Yıllar i&ccedil;inde, bazen tesad&uuml;fen, bazen de bilerek (enjekte edilmiş mizah ve benzeri) &ccedil;eşitli versiyonlar gelişti.</p>', 'first', 'Active', 'tr', 8, '2021-12-04 00:42:41', '2021-12-04 00:45:46'),
(16, 1, 'يساعد', '', '<h2> مساعدة </ h2>\r\n\r\n<p> لوريم إيبسوم هو ببساطة نص شكلي يُستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد صمد ليس فقط لخمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظل دون تغيير جوهري. تم نشرها في الستينيات من القرن الماضي مع إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum. </p>\r\n\r\n<ul>\r\n<li>\r\n<p> هل يمكنني مشاركة منزلي على الإيجار؟ </ p>\r\n\r\n<p> Lorem ipsum dolor sit amet، consectetur adipiscing elit. Morbi aliquam، felis quis viverra mattis، quam mi elementum ipsum، lacinia blandit ipsum massa a elit. تعليق متقدم سابق ، سيرة ذاتية ، ساجيتيس دابيبوس سابين. Lorem ipsum dolor sit amet، consectetur adipiscing elit. Nulla mollis maximus sem ، معرف malesuada neque porta id. موليست موليس صلبة. عدد صحيح nec ullamcorper ماسا. </ p>\r\n</li>\r\n<li>\r\n<p> من يمكنه المشاركة في \"مضيف الإيجار؟ </ p>\r\n\r\n<p> Lorem ipsum dolor sit amet، consectetur adipiscing elit. Morbi aliquam، felis quis viverra mattis، quam mi elementum ipsum، lacinia blandit ipsum massa a elit. تعليق متقدم سابق ، سيرة ذاتية ، ساجيتيس دابيبوس سابين. Lorem ipsum dolor sit amet، consectetur adipiscing elit. Nulla mollis maximus sem ، معرف malesuada neque porta id. موليست موليس صلبة. عدد صحيح nec ullamcorper ماسا. </ p>\r\n</li>\r\n<li>\r\n<p> هل استئجار شاشة الضيوف؟ </ p>\r\n\r\n<p> Lorem ipsum dolor sit amet، consectetur adipiscing elit. Morbi aliquam، felis quis viverra mattis، quam mi elementum ipsum، lacinia blandit ipsum massa a elit. تعليق متقدم سابق ، سيرة ذاتية ، ساجيتيس دابيبوس سابين. Lorem ipsum dolor sit amet، consectetur adipiscing elit. Nulla mollis maximus sem ، معرف malesuada neque porta id. موليست موليس صلبة. عدد صحيح nec ullamcorper ماسا. </ p>\r\n</li>\r\n<li>\r\n<p> كيف يمكنني تسعير إعلاني على \"إيجار\"؟ </ p>\r\n\r\n<p> Lorem ipsum dolor sit amet، consectetur adipiscing elit. Morbi aliquam، felis quis viverra mattis، quam mi elementum ipsum، lacinia blandit ipsum massa a elit. تعليق متقدم سابق ، سيرة ذاتية ، ساجيتيس دابيبوس سابين. Lorem ipsum dolor sit amet، consectetur adipiscing elit. Nulla mollis maximus sem ، معرف malesuada neque porta id. موليست موليس صلبة. عدد صحيح nec ullamcorper ماسا. </ p>\r\n</li>\r\n<li>\r\n<p> كيف تعمل مدفوعات الإيجار؟ </ p>\r\n\r\n<p> Lorem ipsum dolor sit amet، consectetur adipiscing elit. Morbi aliquam، felis quis viverra mattis، quam mi elementum ipsum، lacinia blandit ipsum massa a elit. تعليق متقدم سابق ، سيرة ذاتية ، ساجيتيس دابيبوس سابين. Lorem ipsum dolor sit amet، consectetur adipiscing elit. Nulla mollis maximus sem ، معرف malesuada neque porta id. موليست موليس صلبة. عدد صحيح nec ullamcorper ماسا. </ p>\r\n</li>\r\n<li>\r\n<p> هل يوفر Rent أي تأمين للمضيفين؟ </ p>\r\n\r\n<p> Lorem ipsum dolor sit amet، consectetur adipiscing elit. Morbi aliquam، felis quis viverra mattis، quam mi elementum ipsum، lacinia blandit ipsum massa a elit. تعليق متقدم سابق ، سيرة ذاتية ، ساجيتيس دابيبوس سابين. Lorem ipsum dolor sit amet، consectetur adipiscing elit. Nulla mollis maximus sem ، معرف malesuada neque porta id. موليست موليس صلبة. عدد صحيح nec ullamcorper ماسا. </ p>\r\n</li>\r\n</ul>', 'first', 'Active', 'ar', 2, '2021-12-04 00:50:04', '2021-12-04 00:54:36'),
(17, 1, '帮助', '', '<h2>帮助</h2>\r\n\r\n<p>Lorem Ipsum 只是印刷和排版行业的虚拟文本。自 1500 年代以来，Lorem Ipsum 一直是行业标准的虚拟文本，当时一位不知名的印刷商使用了一个类型的厨房，并争先恐后地制作了一本类型样本书。它不仅存活了五个世纪，而且还经历了电子排版的飞跃，基本保持不变。它在 1960 年代随着包含 Lorem Ipsum 段落的 Letraset 表的发布而流行，最近随着桌面出版软件 Aldus PageMaker 包括 Lorem Ipsum 的版本而流行。</p>\r\n\r\n<ul>\r\n<li>\r\n<p>我可以出租我的房子吗？</p>\r\n\r\n<p>Lorem ipsum dolor 坐 amet，consectetur adipiscing 精英。 Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit。 Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien。 Lorem ipsum dolor 坐 amet，consectetur adipiscing 精英。 Nulla mollis maximus sem, idmalesuada neque porta id。 Praesent scelerisque molestie mollis。整数 necullamcorper massa。</p>\r\n</li>\r\n<li>\r\n<p>谁可以成为 Rent 主机？</p>\r\n\r\n<p>Lorem ipsum dolor 坐 amet，consectetur adipiscing 精英。 Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit。 Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien。 Lorem ipsum dolor 坐 amet，consectetur adipiscing 精英。 Nulla mollis maximus sem, idmalesuada neque porta id。 Praesent scelerisque molestie mollis。整数 necullamcorper massa。</p>\r\n</li>\r\n<li>\r\n<p>Rent 会筛选客人吗？</p>\r\n\r\n<p>Lorem ipsum dolor 坐 amet，consectetur adipiscing 精英。 Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit。 Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien。 Lorem ipsum dolor 坐 amet，consectetur adipiscing 精英。 Nulla mollis maximus sem, idmalesuada neque porta id。 Praesent scelerisque molestie mollis。整数 necullamcorper massa。</p>\r\n</li>\r\n<li>\r\n<p>我应该如何为我的房源定价？</p>\r\n\r\n<p>Lorem ipsum dolor 坐 amet，consectetur adipiscing 精英。 Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit。 Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien。 Lorem ipsum dolor 坐 amet，consectetur adipiscing 精英。 Nulla mollis maximus sem, idmalesuada neque porta id。 Praesent scelerisque molestie mollis。整数 necullamcorper massa。</p>\r\n</li>\r\n<li>\r\n<p>租金支付如何运作？</p>\r\n\r\n<p>Lorem ipsum dolor 坐 amet，consectetur adipiscing 精英。 Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit。 Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien。 Lorem ipsum dolor 坐 amet，consectetur adipiscing 精英。 Nulla mollis maximus sem, idmalesuada neque porta id。 Praesent scelerisque molestie mollis。整数 necullamcorper massa。</p>\r\n</li>\r\n<li>\r\n<p>Rent 是否为房东提供任何保险？</p>\r\n\r\n<p>Lorem ipsum dolor 坐 amet，consectetur adipiscing 精英。 Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit。 Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien。 Lorem ipsum dolor 坐 amet，consectetur adipiscing 精英。 Nulla mollis maximus sem, idmalesuada neque porta id。 Praesent scelerisque molestie mollis。整数 necullamcorper massa。</p>\r\n</li>\r\n</ul>', 'first', 'Active', 'ch', 3, '2021-12-04 00:50:04', '2021-12-04 00:54:36'),
(18, 1, 'Aider', '', '<h2>Aide</h2>\r\n\r\n<p>Lorem Ipsum est tout simplement un texte factice de l\'industrie de l\'impression et de la composition. Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, lorsqu\'un imprimeur inconnu a pris une galère de caractères et l\'a brouillé pour créer un livre de spécimens de caractères. Il a survécu non seulement à cinq siècles, mais aussi au saut dans la composition électronique, restant essentiellement inchangé. Il a été popularisé dans les années 1960 avec la sortie de feuilles Letraset contenant des passages de Lorem Ipsum, et plus récemment avec des logiciels de PAO comme Aldus PageMaker comprenant des versions de Lorem Ipsum.</p>\r\n\r\n<ul>\r\n<li>\r\n<p>Puis-je partager ma maison en location ?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Présent scelerisque molestie mollis. Entier nec ullamcorper massa.</p>\r\n</li>\r\n<li>\r\n<p>Qui peut être sur l\'hôte Rent ?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Présent scelerisque molestie mollis. Entier nec ullamcorper massa.</p>\r\n</li>\r\n<li>\r\n<p>Loue-t-il les invités de l\'écran ?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Présent scelerisque molestie mollis. Entier nec ullamcorper massa.</p>\r\n</li>\r\n<li>\r\n<p>Comment dois-je tarifer mon annonce sur Louer ?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Présent scelerisque molestie mollis. Entier nec ullamcorper massa.</p>\r\n</li>\r\n<li>\r\n<p>Comment fonctionnent les paiements de loyer ?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Présent scelerisque molestie mollis. Entier nec ullamcorper massa.</p>\r\n</li>\r\n<li>\r\n<p>Loyer propose-t-il une assurance pour les hôtes ?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Présent scelerisque molestie mollis. Entier nec ullamcorper massa.</p>\r\n</li>\r\n</ul>', 'first', 'Active', 'fr', 4, '2021-12-04 00:50:04', '2021-12-04 00:54:36'),
(19, 1, 'Ajuda', '', '<h2> Ajuda </h2>\r\n\r\n<p> Lorem Ipsum é simplesmente um texto fictício da indústria de impressão e composição. Lorem Ipsum tem sido o texto fictício padrão da indústria desde 1500, quando um impressor desconhecido pegou um modelo de impressão e o embaralhou para fazer um livro de amostra de tipos. Ele sobreviveu não apenas cinco séculos, mas também ao salto para a composição eletrônica, permanecendo essencialmente inalterado. Foi popularizado na década de 1960 com o lançamento de folhas de Letraset contendo passagens de Lorem Ipsum e, mais recentemente, com software de editoração eletrônica como Aldus PageMaker incluindo versões de Lorem Ipsum. </p>\r\n\r\n<ul>\r\n<li>\r\n<p> Posso dividir minha casa no aluguel? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa. </p>\r\n</li>\r\n<li>\r\n<p> Quem pode ser o host do Rent? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa. </p>\r\n</li>\r\n<li>\r\n<p> O Rent faz a triagem de convidados? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa. </p>\r\n</li>\r\n<li>\r\n<p> Como devo definir o preço de minha listagem no aluguel? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa. </p>\r\n</li>\r\n<li>\r\n<p> Como funcionam os pagamentos de aluguel? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa. </p>\r\n</li>\r\n<li>\r\n<p> O Rent oferece algum seguro para os anfitriões? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa. </p>\r\n</li>\r\n</ul>', 'first', 'Active', 'pt', 5, '2021-12-04 00:50:04', '2021-12-04 00:54:36'),
(20, 1, 'Помощь', '', '<h2> Справка </h2>\r\n\r\n<p> Lorem Ipsum - это просто фиктивный текст, используемый в полиграфической и наборной индустрии. Lorem Ipsum был стандартным фиктивным текстом в отрасли с 1500-х годов, когда неизвестный типограф взял камбуз шрифта и скремблировал его, чтобы сделать книгу образцов шрифта. Он пережил не только пять веков, но и скачок в электронный набор, оставшись практически неизменным. Он был популяризирован в 1960-х годах с выпуском листов Letraset, содержащих отрывки Lorem Ipsum, а в последнее время - с помощью настольных издательских программ, таких как Aldus PageMaker, включая версии Lorem Ipsum. </p>\r\n\r\n<ul>\r\n<li>\r\n<p> Могу ли я сдать свой дом в аренду? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, conctetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conctetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Целочисленное значение nec ullamcorper massa. </p>\r\n</li>\r\n<li>\r\n<p> Кто может быть на хосте Rent? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, conctetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conctetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Целочисленное значение nec ullamcorper massa. </p>\r\n</li>\r\n<li>\r\n<p> Учитывает ли аренда гостей? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, conctetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conctetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Целочисленное значение nec ullamcorper massa. </p>\r\n</li>\r\n<li>\r\n<p> Как мне установить цену на свое объявление при аренде? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, conctetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conctetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Целочисленное значение nec ullamcorper massa. </p>\r\n</li>\r\n<li>\r\n<p> Как работают арендные платежи? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, conctetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conctetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Целочисленное значение nec ullamcorper massa. </p>\r\n</li>\r\n<li>\r\n<p> Предоставляет ли Rent какую-либо страховку для хозяев? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, conctetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conctetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Целочисленное значение nec ullamcorper massa. </p>\r\n</li>\r\n</ul>', 'first', 'Active', 'ru', 6, '2021-12-04 00:50:04', '2021-12-04 00:54:36'),
(21, 1, 'Ayudar', '', '<h2> Ayuda </h2>\r\n\r\n<p> Lorem Ipsum es simplemente texto de relleno de la industria de la impresión y la composición tipográfica. Lorem Ipsum ha sido el texto de relleno estándar de la industria desde el año 1500, cuando un impresor desconocido tomó una galera de tipos y la mezcló para hacer un libro de muestras tipográficas. Ha sobrevivido no solo a cinco siglos, sino también al salto a la composición tipográfica electrónica, permaneciendo esencialmente sin cambios. Se popularizó en la década de 1960 con el lanzamiento de hojas de Letraset que contienen pasajes de Lorem Ipsum y, más recientemente, con software de autoedición como Aldus PageMaker que incluye versiones de Lorem Ipsum. </p>\r\n\r\n<ul>\r\n<li>\r\n<p> ¿Puedo compartir mi casa en Rent? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id maleuada neque porta id. Praesent scelerisque molestie mollis. Entero nec ullamcorper massa. </p>\r\n</li>\r\n<li>\r\n<p> ¿Quién puede participar en Rent host? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id maleuada neque porta id. Praesent scelerisque molestie mollis. Entero nec ullamcorper massa. </p>\r\n</li>\r\n<li>\r\n<p> ¿El alquiler muestra a los invitados? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id maleuada neque porta id. Praesent scelerisque molestie mollis. Entero nec ullamcorper massa. </p>\r\n</li>\r\n<li>\r\n<p> ¿Cómo debo fijar el precio de mi anuncio en Rent? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id maleuada neque porta id. Praesent scelerisque molestie mollis. Entero nec ullamcorper massa. </p>\r\n</li>\r\n<li>\r\n<p> ¿Cómo funcionan los pagos de alquiler? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id maleuada neque porta id. Praesent scelerisque molestie mollis. Entero nec ullamcorper massa. </p>\r\n</li>\r\n<li>\r\n<p> ¿Rent ofrece algún seguro para los anfitriones? </p>\r\n\r\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id maleuada neque porta id. Praesent scelerisque molestie mollis. Entero nec ullamcorper massa. </p>\r\n</li>\r\n</ul>', 'first', 'Active', 'es', 7, '2021-12-04 00:50:04', '2021-12-04 00:54:36'),
(22, 1, 'Yardım', '', '<h2>Yardım</h2>\r\n\r\n<p>Lorem Ipsum, basım ve dizgi endüstrisinin basit bir sahte metnidir. Lorem Ipsum, bilinmeyen bir matbaacının bir tip numune kitabı yapmak için bir yazı galerisini alıp karıştırdığı 1500\'lerden beri endüstrinin standart sahte metni olmuştur. Sadece beş yüzyıl boyunca hayatta kalmayıp, aynı zamanda esasen değişmeden elektronik dizgiye sıçradı. 1960\'larda Lorem Ipsum pasajları içeren Letraset sayfalarının yayınlanmasıyla ve daha yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımlarıyla popüler hale geldi.</p>\r\n\r\n<ul>\r\n<li>\r\n<p>Kiralık evimi paylaşabilir miyim?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum toplu bir elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conectetur adipiscing elit. Nulla mollis maximus sem, id mensuada neque porta id. Praesent scelerisque molestie mollis. Tamsayı nec ullamcorper kitle.</p>\r\n</li>\r\n<li>\r\n<p>Kimler Kiralık sunucuda olabilir?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum toplu bir elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conectetur adipiscing elit. Nulla mollis maximus sem, id mensuada neque porta id. Praesent scelerisque molestie mollis. Tamsayı nec ullamcorper kitle.</p>\r\n</li>\r\n<li>\r\n<p>Kira, Misafirleri ekrana getirir mi?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum toplu bir elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conectetur adipiscing elit. Nulla mollis maximus sem, id mensuada neque porta id. Praesent scelerisque molestie mollis. Tamsayı nec ullamcorper kitle.</p>\r\n</li>\r\n<li>\r\n<p>Kiralık listemi nasıl fiyatlandırmalıyım?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum toplu bir elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conectetur adipiscing elit. Nulla mollis maximus sem, id mensuada neque porta id. Praesent scelerisque molestie mollis. Tamsayı nec ullamcorper kitle.</p>\r\n</li>\r\n<li>\r\n<p>Kira ödemeleri nasıl çalışır?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum toplu bir elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conectetur adipiscing elit. Nulla mollis maximus sem, id mensuada neque porta id. Praesent scelerisque molestie mollis. Tamsayı nec ullamcorper kitle.</p>\r\n</li>\r\n<li>\r\n<p>Rent, ev sahipleri için herhangi bir sigorta sağlıyor mu?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum toplu bir elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conectetur adipiscing elit. Nulla mollis maximus sem, id mensuada neque porta id. Praesent scelerisque molestie mollis. Tamsayı nec ullamcorper kitlesi.</p>\r\n</li>\r\n</ul>', 'first', 'Active', 'tr', 8, '2021-12-04 00:50:04', '2021-12-04 00:54:36');
INSERT INTO `pages` (`id`, `temp_id`, `name`, `url`, `content`, `position`, `status`, `lang`, `lang_id`, `created_at`, `updated_at`) VALUES
(23, 5, 'اتصل بنا', '', '<div class=\"col-md-12\">\r\n<p><strong>لوريم إيبسوم <!-- strong--> هو ببساطة نص شكلي مخصص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة.</strong></p>\r\n\r\n<div align=\"center\" class=\"row\">\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><strong><img src=\"public/img/email.png\" /></strong></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\"><strong>ارسل لنا عبر البريد الإلكتروني</strong></h2>\r\n\r\n<p><strong><a>demo@gmail.com</a></strong></p>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><strong><img src=\"public/img/call.png\" /></strong></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\"><strong>اتصل بنا</strong></h2>\r\n\r\n<p><strong><a>+1 111 111 1111</a></strong></p>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><strong><img src=\"public/img/placeholder.png\" /></strong></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\"><strong>عنوان الإتصال</strong></h2>\r\n\r\n<p><strong>مدينة ولاية دولة</strong></p>\r\n</div>\r\n</div>\r\n</div>', 'first', 'Active', 'ar', 2, '2021-12-04 01:00:50', '2021-12-07 03:28:35'),
(24, 5, '联系我们', '', '<div class=\"col-md-12\">\r\n<p><strong>Lorem Ipsum</strong>&nbsp;只是印刷和排版行业的虚拟文本。自 1500 年代以来，Lorem Ipsum 就一直是行业标准的虚拟文本，当时一位不知名的印刷商使用了一个类型的厨房并争先恐后地制作了一本类型样本书。</p>\r\n\r\n<div align=\"center\" class=\"row\">\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/email.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">给我们发电子邮件</h2>\r\n\r\n<p><a>demo@gmail.com</a></p>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/call.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">致电我们</h2>\r\n\r\n<p><a>+1 111 111 1111</a></p>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/placeholder.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">联系地址</h2>\r\n\r\n<p>城市、州、国家</p>\r\n</div>\r\n</div>\r\n</div>', 'first', 'Active', 'ch', 3, '2021-12-04 01:00:50', '2021-12-07 03:32:50'),
(25, 5, 'Nous contacter', '', '<div class=\"col-md-12\">\r\n<p><strong>Lorem Ipsum</strong>&nbsp;est simplement un texte factice de l&#39;industrie de l&#39;impression et de la composition. Lorem Ipsum est le texte factice standard de l&#39;industrie depuis les ann&eacute;es 1500, lorsqu&#39;un imprimeur inconnu a pris une gal&egrave;re de caract&egrave;res et l&#39;a brouill&eacute; pour en faire un livre sp&eacute;cimen de caract&egrave;res.</p>\r\n\r\n<div align=\"center\" class=\"row\">\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/email.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Envoyez-nous un e-mail</h2>\r\n\r\n<p><a>demo@gmail.com</a></p>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/call.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Appelez-nous</h2>\r\n\r\n<p><a>+1 111 111 1111</a></p>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/placeholder.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Adresse de contact</h2>\r\n\r\n<p>Ville, &Eacute;tat, Pays</p>\r\n</div>\r\n</div>\r\n</div>', 'first', 'Active', 'fr', 4, '2021-12-04 01:00:50', '2021-12-07 03:35:19'),
(26, 5, 'Entre em contato conosco', '', '<div class=\"col-md-12\">\r\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; &eacute; simplesmente um texto fict&iacute;cio da ind&uacute;stria de impress&atilde;o e composi&ccedil;&atilde;o. Lorem Ipsum tem sido o texto fict&iacute;cio padr&atilde;o da ind&uacute;stria desde os anos 1500, quando um impressor desconhecido pegou uma gal&eacute; do tipo e embaralhou para fazer um livro de amostra de tipos.</p>\r\n\r\n<div align=\"center\" class=\"row\">\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/email.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Envie-nos um e-mail</h2>\r\n\r\n<p><a> demo@gmail.com </a></p>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/call.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Ligue para n&oacute;s</h2>\r\n\r\n<p><a> +1 111 111 1111 </a></p>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/placeholder.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Endere&ccedil;o de contato</h2>\r\n\r\n<p>Cidade, estado, pa&iacute;s</p>\r\n</div>\r\n</div>\r\n</div>', 'first', 'Active', 'pt', 5, '2021-12-04 01:00:50', '2021-12-07 03:35:19'),
(27, 5, 'Связаться с нами', '', '<div class=\"col-md-12\">\r\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; - это просто фиктивный текст, используемый в полиграфической и наборной индустрии. Lorem Ipsum был стандартным фиктивным текстом в отрасли с 1500-х годов, когда неизвестный типограф взял гранку и скремблировал ее, чтобы сделать книгу с образцами шрифтов.</p>\r\n\r\n<div align=\"center\" class=\"row\">\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/email.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Напишите нам</h2>\r\n\r\n<p><a> demo@gmail.com </a></p>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/call.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Позвоните нам</h2>\r\n\r\n<p><a> +1 111 111 1111 </a></p>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/placeholder.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Контактный адрес</h2>\r\n\r\n<p>Город, штат, страна</p>\r\n</div>\r\n</div>\r\n</div>', 'first', 'Active', 'ru', 6, '2021-12-04 01:00:50', '2021-12-07 03:35:19'),
(28, 5, 'Contacta con nosotras', '', '<div class=\"col-md-12\">\r\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; es simplemente texto de relleno de la industria de la impresi&oacute;n y la composici&oacute;n tipogr&aacute;fica. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de la industria desde el siglo XVI, cuando un impresor desconocido tom&oacute; una galera de tipos y la mezcl&oacute; para hacer un libro de muestras tipogr&aacute;ficas.</p>\r\n\r\n<div align=\"center\" class=\"row\">\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/email.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Env&iacute;enos un correo electr&oacute;nico</h2>\r\n\r\n<p><a> demo@gmail.com </a></p>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/call.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Ll&aacute;manos</h2>\r\n\r\n<p><a> +1 111 111 1111 </a></p>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/placeholder.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Direcci&oacute;n de contacto</h2>\r\n\r\n<p>Ciudad, estado, pa&iacute;s</p>\r\n</div>\r\n</div>\r\n</div>', 'first', 'Active', 'es', 7, '2021-12-04 01:00:50', '2021-12-07 03:35:19'),
(29, 5, 'Bizimle iletişime geçin', '', '<div class=\"col-md-12\">\r\n<p><strong>Lorem Ipsum</strong>&nbsp;baskı ve dizgi end&uuml;strisinin sahte metnidir. Lorem Ipsum, bilinmeyen bir matbaacının bir tip numune kitabı yapmak i&ccedil;in bir yazı galerisini alıp karıştırdığı 1500&#39;lerden beri end&uuml;strinin standart sahte metni olmuştur.</p>\r\n\r\n<div align=\"center\" class=\"row\">\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/email.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Bize E-posta G&ouml;nderin</h2>\r\n\r\n<p><a>demo@gmail.com</a></p>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/call.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Bizi Arayın</h2>\r\n\r\n<p><a>+1 111 111 1111</a></p>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/placeholder.png\" /></div>\r\n\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">İletişim Adresi</h2>\r\n\r\n<p>Şehir, Eyalet, &Uuml;lke</p>\r\n</div>\r\n</div>\r\n</div>', 'first', 'Active', 'tr', 8, '2021-12-04 01:00:50', '2021-12-07 03:35:19'),
(30, 3, 'سياسات', '', '<h2> السياسات </ h2>\r\n\r\n<p> هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال الدعابة أو الكلمات العشوائية التي لا تبدو حتى قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك. </ p>', 'second', 'Active', 'ar', 2, '2021-12-04 01:11:48', '2021-12-04 01:11:48'),
(31, 3, '政策', '', '<h2>政策</h2>\r\n\r\n<p> Lorem Ipsum 的段落有很多变体，但大多数都以某种形式发生了改变，比如注入了幽默，或者看起来甚至有点不可信的随机词。 如果你打算使用 Lorem Ipsum 的一段，你需要确保文本中间没有隐藏任何令人尴尬的东西。 互联网上的所有 Lorem Ipsum 生成器都倾向于根据需要重复预定义的块，使其成为互联网上第一个真正的生成器。 它使用一个包含 200 多个拉丁词的词典，结合少量模型句结构，生成看起来合理的 Lorem Ipsum。 因此，生成的 Lorem Ipsum 始终没有重复、注入幽默或非特色词等。</p>', 'second', 'Active', 'ch', 3, '2021-12-04 01:11:48', '2021-12-04 01:11:48'),
(32, 3, 'Stratégies', '', '<h2>Politiques</h2>\r\n\r\n<p>Il existe de nombreuses variantes de passages de Lorem Ipsum disponibles, mais la majorité ont subi une altération sous une forme ou une autre, par injection d\'humour ou par des mots aléatoires qui ne semblent même pas légèrement crédibles. Si vous allez utiliser un passage de Lorem Ipsum, vous devez vous assurer qu\'il n\'y a rien d\'embarrassant caché au milieu du texte. Tous les générateurs Lorem Ipsum sur Internet ont tendance à répéter des morceaux prédéfinis si nécessaire, ce qui en fait le premier véritable générateur sur Internet. Il utilise un dictionnaire de plus de 200 mots latins, combiné à une poignée de structures de phrases modèles, pour générer Lorem Ipsum qui semble raisonnable. Le Lorem Ipsum généré est donc toujours exempt de répétition, d\'humour injecté, ou de mots non caractéristiques, etc.</p>', 'second', 'Active', 'fr', 4, '2021-12-04 01:11:48', '2021-12-04 01:11:48'),
(33, 3, 'Políticas', '', '<h2> Políticas </h2>\r\n\r\n<p> Existem muitas variações de passagens de Lorem Ipsum disponíveis, mas a maioria sofreu alteração de alguma forma, por humor injetado ou palavras aleatórias que não parecem nem um pouco críveis. Se for usar uma passagem de Lorem Ipsum, você precisa ter certeza de que não há nada embaraçoso escondido no meio do texto. Todos os geradores Lorem Ipsum na Internet tendem a repetir blocos predefinidos conforme necessário, tornando este o primeiro gerador verdadeiro na Internet. Ele usa um dicionário de mais de 200 palavras latinas, combinado com um punhado de estruturas de frases modelo, para gerar Lorem Ipsum que parece razoável. O Lorem Ipsum gerado é, portanto, sempre livre de repetição, humor injetado ou palavras não características, etc. </p>', 'second', 'Active', 'pt', 5, '2021-12-04 01:11:48', '2021-12-04 01:11:48'),
(34, 3, 'Политики', '', '<h2> Политики </h2>\r\n\r\n<p> Доступно множество вариаций отрывков Lorem Ipsum, но большинство из них претерпели изменения в той или иной форме из-за добавленного юмора или случайных слов, которые не выглядят даже слегка правдоподобными. Если вы собираетесь использовать отрывок из Lorem Ipsum, вы должны быть уверены, что в середине текста нет ничего смущающего. Все генераторы Lorem Ipsum в Интернете имеют тенденцию повторять заранее определенные блоки по мере необходимости, что делает его первым настоящим генератором в Интернете. Он использует словарь из более чем 200 латинских слов в сочетании с несколькими модельными структурами предложений для создания Lorem Ipsum, который выглядит разумным. Таким образом, сгенерированный Lorem Ipsum всегда свободен от повторов, добавленного юмора, нехарактерных слов и т. Д. </p>', 'second', 'Active', 'ru', 6, '2021-12-04 01:11:48', '2021-12-04 01:11:48'),
(35, 3, 'Políticas', '', '<h2> Políticas </h2>\r\n\r\n<p> Hay muchas variaciones de pasajes de Lorem Ipsum disponibles, pero la mayoría han sufrido alteraciones de alguna forma, por humor inyectado o palabras aleatorias que no parecen ni un poco creíbles. Si va a utilizar un pasaje de Lorem Ipsum, debe asegurarse de que no haya nada vergonzoso oculto en medio del texto. Todos los generadores de Lorem Ipsum en Internet tienden a repetir fragmentos predefinidos según sea necesario, lo que lo convierte en el primer generador verdadero en Internet. Utiliza un diccionario de más de 200 palabras latinas, combinado con un puñado de estructuras de oraciones modelo, para generar Lorem Ipsum que parece razonable. Por lo tanto, el Lorem Ipsum generado está siempre libre de repeticiones, humor inyectado o palabras no características, etc. </p>', 'second', 'Active', 'es', 7, '2021-12-04 01:11:48', '2021-12-04 01:11:48'),
(36, 3, 'Politikalar', '', '<h2>Politikalar</h2>\r\n\r\n<p>Lorem Ipsum\'un birçok pasaj varyasyonu mevcuttur, ancak çoğu, enjekte edilen mizah veya biraz inandırıcı görünmeyen rastgele kelimelerle bir şekilde değişikliğe uğramıştır. Lorem Ipsum\'dan bir pasaj kullanacaksanız, metnin ortasında utandırıcı bir şey olmadığından emin olmanız gerekir. İnternetteki tüm Lorem Ipsum oluşturucular, önceden tanımlanmış parçaları gerektiği gibi tekrarlama eğilimindedir ve bu da bunu İnternet\'teki ilk gerçek oluşturucu yapar. Makul görünen Lorem Ipsum\'u oluşturmak için bir avuç model cümle yapısıyla birleştirilmiş 200\'den fazla Latince kelimeden oluşan bir sözlük kullanır. Bu nedenle oluşturulan Lorem Ipsum\'da her zaman tekrar, enjekte edilen mizah veya karakteristik olmayan kelimeler vb. yoktur.</p>', 'second', 'Active', 'tr', 8, '2021-12-04 01:11:48', '2021-12-04 01:11:48'),
(37, 4, 'خصوصية', '', '<h2> <strong> الخصوصية </ strong> </h2>\r\n\r\n<p> خلافًا للاعتقاد الشائع ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 عام. قام ريتشارد مكلينتوك ، الأستاذ اللاتيني في كلية هامبدن سيدني في فيرجينيا ، بالبحث عن واحدة من أكثر الكلمات اللاتينية غموضًا ، consectetur ، من مقطع لوريم إيبسوم ، وتصفح اقتباسات الكلمة في الأدب الكلاسيكي ، اكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من الأقسام 1.10.32 و 1.10.33 من & quot؛ de Finibus Bonorum et Malorum & quot؛ (أقصى الخير والشر) بقلم شيشرون ، مكتوب عام 45 قبل الميلاد. هذا الكتاب عبارة عن أطروحة حول نظرية الأخلاق ، وقد حظيت بشعبية كبيرة خلال عصر النهضة. السطر الأول من Lorem Ipsum ، & quot؛ Lorem ipsum dolor sit amet .. & quot ؛، يأتي من سطر في القسم 1.10.32. </p>\r\n\r\n<p> نبسب ؛ </p>', 'second', 'Active', 'ar', 2, '2021-12-04 01:14:51', '2021-12-04 01:14:51'),
(38, 4, '隐私', '', '<h2><strong>隐私</strong></h2>\r\n\r\n<p>与流行的看法相反，Lorem Ipsum 不仅仅是随机文本。 它源于公元前 45 年的一段古典拉丁文学，已有 2000 多年的历史。 弗吉尼亚州汉普登-悉尼学院的拉丁语教授理查德麦克林托克从 Lorem Ipsum 的一篇文章中查找了一个较为晦涩的拉丁词 consectetur，并通过在古典文学中对该词的引用，发现了无可置疑的来源。 Lorem Ipsum 来自“de Finibus Bonorum et Malorum”的第 1.10.32 和 1.10.33 节。 (The Extremes of Good and Evil) by Cicero，写于公元前 45 年。 这本书是关于伦理学理论的论文，在文艺复兴时期非常流行。 Lorem Ipsum 的第一行“Lorem ipsum dolor sat amet..”来自第 1.10.32 节中的一行。</p>\r\n\r\n<p>&nbsp;</p>', 'second', 'Active', 'ch', 3, '2021-12-04 01:14:51', '2021-12-04 01:14:51'),
(39, 4, 'Intimité', '', '<h2><strong>Confidentialité</strong></h2>\r\n\r\n<p>Contrairement à la croyance populaire, Lorem Ipsum n\'est pas simplement un texte aléatoire. Il a ses racines dans un morceau de littérature latine classique de 45 avant JC, ce qui en fait plus de 2000 ans. Richard McClintock, professeur de latin au Hampden-Sydney College en Virginie, a recherché l\'un des mots latins les plus obscurs, consectetur, d\'un passage de Lorem Ipsum, et en parcourant les citations du mot dans la littérature classique, a découvert la source incontestable. Lorem Ipsum est issu des sections 1.10.32 et 1.10.33 de &quot;de Finibus Bonorum et Malorum&quot; (Les extrêmes du bien et du mal) de Cicéron, écrit en 45 av. Ce livre est un traité sur la théorie de l\'éthique, très populaire à la Renaissance. La première ligne de Lorem Ipsum, \"Lorem ipsum dolor sit amet...\", vient d\'une ligne de la section 1.10.32.</p>\r\n\r\n<p>&nbsp;</p>', 'second', 'Active', 'fr', 4, '2021-12-04 01:14:51', '2021-12-04 01:14:51'),
(40, 4, 'Privacidade', '', '<h2> <strong> Privacidade </strong> </h2>\r\n\r\n<p> Ao contrário da crença popular, Lorem Ipsum não é simplesmente um texto aleatório. Tem raízes em uma peça da literatura clássica latina de 45 aC, tornando-a com mais de 2.000 anos. Richard McClintock, professor de latim no Hampden-Sydney College, na Virgínia, pesquisou uma das palavras latinas mais obscuras, consectetur, de uma passagem de Lorem Ipsum e, examinando as citações da palavra na literatura clássica, descobriu a fonte indubitável. Lorem Ipsum vem das seções 1.10.32 e 1.10.33 de & quot; de Finibus Bonorum et Malorum & quot; (Os extremos do bem e do mal) por Cícero, escrito em 45 AC. Este livro é um tratado sobre a teoria da ética, muito popular durante o Renascimento. A primeira linha de Lorem Ipsum, & quot; Lorem ipsum dolor sit amet .. & quot ;, vem de uma linha na seção 1.10.32. </p>\r\n\r\n<p> & nbsp; </p>', 'second', 'Active', 'pt', 5, '2021-12-04 01:14:51', '2021-12-04 01:14:51'),
(41, 4, 'Конфиденциальность', '', '<h2> <strong> Privacidade </strong> </h2>\r\n\r\n<p> Ao contrário da crença popular, Lorem Ipsum não é simplesmente um texto aleatório. Tem raízes em uma peça da literatura clássica latina de 45 aC, tornando-a com mais de 2.000 anos. Richard McClintock, professor de latim no Hampden-Sydney College, na Virgínia, pesquisou uma das palavras latinas mais obscuras, consectetur, de uma passagem de Lorem Ipsum e, examinando as citações da palavra na literatura clássica, descobriu a fonte indubitável. Lorem Ipsum vem das seções 1.10.32 e 1.10.33 de & quot; de Finibus Bonorum et Malorum & quot; (Os extremos do bem e do mal) por Cícero, escrito em 45 AC. Este livro é um tratado sobre a teoria da ética, muito popular durante o Renascimento. A primeira linha de Lorem Ipsum, & quot; Lorem ipsum dolor sit amet .. & quot ;, vem de uma linha na seção 1.10.32. </p>\r\n\r\n<p> & nbsp; </p>', 'second', 'Active', 'ru', 6, '2021-12-04 01:14:51', '2021-12-04 01:14:51'),
(42, 4, 'Intimidad', '', '<h2> <strong> Privacidade </strong> </h2>\r\n\r\n<p> Ao contrário da crença popular, Lorem Ipsum não é simplesmente um texto aleatório. Tem raízes em uma peça da literatura clássica latina de 45 aC, tornando-a com mais de 2.000 anos. Richard McClintock, professor de latim no Hampden-Sydney College, na Virgínia, pesquisou uma das palavras latinas mais obscuras, consectetur, de uma passagem de Lorem Ipsum e, examinando as citações da palavra na literatura clássica, descobriu a fonte indubitável. Lorem Ipsum vem das seções 1.10.32 e 1.10.33 de & quot; de Finibus Bonorum et Malorum & quot; (Os extremos do bem e do mal) por Cícero, escrito em 45 AC. Este livro é um tratado sobre a teoria da ética, muito popular durante o Renascimento. A primeira linha de Lorem Ipsum, & quot; Lorem ipsum dolor sit amet .. & quot ;, vem de uma linha na seção 1.10.32. </p>\r\n\r\n<p> & nbsp; </p>', 'second', 'Active', 'es', 7, '2021-12-04 01:14:51', '2021-12-04 01:14:51'),
(43, 4, 'Mahremiyet', '', '<h2><strong>Gizlilik</strong></h2>\r\n\r\n<p>Popüler inanışın aksine, Lorem Ipsum rastgele bir metin değildir. 45\'ten kalma bir klasik Latin edebiyatı parçasında kökleri vardır ve 2000 yıldan daha eskidir. Virginia\'daki Hampden-Sydney College\'da Latince profesörü olan Richard McClintock, bir Lorem Ipsum pasajındaki daha anlaşılması güç Latince sözcüklerden biri olan consectetur\'u araştırdı ve kelimenin klasik edebiyattaki örneklerini gözden geçirerek, şüphesiz kaynağı keşfetti. Lorem Ipsum, \"de Finibus Bonorum et Malorum\"un 1.10.32 ve 1.10.33 bölümlerinden gelmektedir. (İyi ve Kötünün Aşırılıkları) Cicero tarafından MÖ 45\'te yazılmıştır. Bu kitap, Rönesans döneminde çok popüler olan etik teorisi üzerine bir incelemedir. Lorem Ipsum\'un ilk satırı, \"Lorem ipsum dolor sit amet..\", 1.10.32 bölümündeki bir satırdan gelmektedir.</p>\r\n\r\n<p>&nbsp;</p>', 'second', 'Active', 'tr', 8, '2021-12-04 01:14:51', '2021-12-04 01:14:51'),
(44, 7, 'شروط الخدمة', '', '<p>شروط الخدمة</p>', 'first', 'Active', 'ar', 2, '2021-12-04 01:17:25', '2021-12-04 01:17:25'),
(45, 7, '服务条款', '', '<p>服务条款</p>', 'first', 'Active', 'ch', 3, '2021-12-04 01:17:25', '2021-12-04 01:17:25'),
(46, 7, 'Conditions d\'utilisation', '', '<p>Conditions d&#39;utilisation</p>', 'first', 'Active', 'fr', 4, '2021-12-04 01:17:25', '2021-12-04 01:17:25'),
(47, 7, 'Termos de serviço', '', '<p>Termos de servi&ccedil;o</p>', 'first', 'Active', 'pt', 5, '2021-12-04 01:17:25', '2021-12-04 01:17:25'),
(48, 7, 'условия обслуживания', '', '<p>условия обслуживания</p>', 'first', 'Active', 'ru', 6, '2021-12-04 01:17:25', '2021-12-04 01:17:25'),
(49, 7, 'Términos de servicio', '', '<p>T&eacute;rminos de servicio</p>', 'first', 'Active', 'es', 7, '2021-12-04 01:17:25', '2021-12-04 01:17:25'),
(50, 7, 'Kullanım Şartları', '', '<p>Kullanım Şartları</p>', 'first', 'Active', 'tr', 8, '2021-12-04 01:17:25', '2021-12-04 01:17:25'),
(51, 8, 'كن مضيفا', '', '<!--banner-->\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner host-banner-bg\">\r\n<div class=\"host-overlay\">&nbsp;</div>\r\n\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"join_banner_txt\">\r\n<h4>يمكنك استضافة أي شيء ،</h4>\r\n\r\n<h4>في أى مكان</h4>\r\n<button class=\"btn green-theme-btn\">البدء</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n\r\n<p>&nbsp;</p>\r\n<!--why partner-->\r\n\r\n<section class=\"partner-sec\">\r\n<div class=\"container\">\r\n<div data-testid=\"how-it-works-section\">\r\n<div class=\"SectionSteps_root__2NGjK SectionSteps_root--gray__2vZS6\">\r\n<div class=\"Container_root__1WntK\">\r\n<div>\r\n<h1 class=\"SectionSteps_title__3JXIX text-center font-weight-700\">الأمان في الإيجار</h1>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepsWrapper__231A6\">\r\n<div class=\"SectionSteps_stepsInner__3OYc8 row\">\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">5،00،000 مضيف ضمان</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه للحجز.</p>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">تأمين حماية المضيف</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه للحجز.</p>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">الإيجار مبني على الثقة</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه للحجز.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--why partner-->\r\n\r\n<p>&nbsp;</p>\r\n<!--Customized for your bussiness-->\r\n\r\n<section class=\"pb-70 business-sec\">\r\n<div class=\"asd\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead section-intro text-center mt-70\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">سوف نساعدك على إضفاء الحيوية على فن الاستضافة</p>\r\n\r\n<p class=\"mt-2\">إدارة الحجوزات والاستفسارات والمراجعات الخاصة بك</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row mt-5\">\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img1\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">يطلب</div>\r\n\r\n<p class=\"details\">اسأل المضيف المتميز</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img2\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">خبرة</div>\r\n\r\n<p class=\"details\">استضف تجربتك</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img3\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">مضيف الدعم</div>\r\n\r\n<p class=\"details\">تعلم كيف ندعم المضيفين</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"faq-sec\" id=\"start-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">كيف ابدأ؟</p>\r\n</div>\r\n\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<div data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">1. </span> أنشئ حسابك</div>\r\n\r\n<div class=\"start-content\">سيستغرق هذا أقل من 5 دقائق من وقتك</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">2. </span> إنشاء بطاقة بياناتك</div>\r\n\r\n<div class=\"start-content\">كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه للحجز.</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">3. </span> يتقاضون رواتبهم</div>\r\n\r\n<div class=\"start-content\">كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه للحجز.</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n\r\n<section class=\"faq-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">أسئلة مكررة</p>\r\n</div>\r\n\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<ul class=\"faq-list\">\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">هل يمكنني مشاركة منزلي على الإيجار؟</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet، consectetur adipiscing elit. Morbi aliquam، felis quis viverra mattis، quam mi elementum ipsum، lacinia blandit ipsum massa a elit. تعليق متقدم سابق ، سيرة ذاتية ، ساجيتيس دابيبوس سابين. Lorem ipsum dolor sit amet، consectetur adipiscing elit. Nulla mollis maximus sem ، معرف malesuada neque porta id. موليست موليس صلبة. عدد صحيح غير مصنّف على شكل ماسا.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">من يمكنه أن يكون على مضيف الإيجار؟</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet، consectetur adipiscing elit. Morbi aliquam، felis quis viverra mattis، quam mi elementum ipsum، lacinia blandit ipsum massa a elit. تعليق متقدم سابق ، سيرة ذاتية ، ساجيتيس دابيبوس سابين. Lorem ipsum dolor sit amet، consectetur adipiscing elit. Nulla mollis maximus sem ، معرف malesuada neque porta id. موليست موليس صلبة. عدد صحيح غير مصنّف على شكل ماسا.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">هل تأجير شاشة الضيوف؟</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet، consectetur adipiscing elit. Morbi aliquam، felis quis viverra mattis، quam mi elementum ipsum، lacinia blandit ipsum massa a elit. تعليق متقدم سابق ، سيرة ذاتية ، ساجيتيس دابيبوس سابين. Lorem ipsum dolor sit amet، consectetur adipiscing elit. Nulla mollis maximus sem ، معرف malesuada neque porta id. موليست موليس صلبة. عدد صحيح غير مصنّف على شكل ماسا.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">كيف يمكنني تسعير قائمتي على الإيجار؟</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet، consectetur adipiscing elit. Morbi aliquam، felis quis viverra mattis، quam mi elementum ipsum، lacinia blandit ipsum massa a elit. تعليق متقدم سابق ، سيرة ذاتية ، ساجيتيس دابيبوس سابين. Lorem ipsum dolor sit amet، consectetur adipiscing elit. Nulla mollis maximus sem ، معرف malesuada neque porta id. موليست موليس صلبة. عدد صحيح غير مصنّف على شكل ماسا.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">كيف تعمل مدفوعات الإيجار؟</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet، consectetur adipiscing elit. Morbi aliquam، felis quis viverra mattis، quam mi elementum ipsum، lacinia blandit ipsum massa a elit. تعليق متقدم سابق ، سيرة ذاتية ، ساجيتيس دابيبوس سابين. Lorem ipsum dolor sit amet، consectetur adipiscing elit. Nulla mollis maximus sem ، معرف malesuada neque porta id. موليست موليس صلبة. عدد صحيح غير مصنّف على شكل ماسا.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">هل يوفر الإيجار أي تأمين للمضيفين؟</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet، consectetur adipiscing elit. Morbi aliquam، felis quis viverra mattis، quam mi elementum ipsum، lacinia blandit ipsum massa a elit. تعليق متقدم سابق ، سيرة ذاتية ، ساجيتيس دابيبوس سابين. Lorem ipsum dolor sit amet، consectetur adipiscing elit. Nulla mollis maximus sem ، معرف malesuada neque porta id. موليست موليس صلبة. عدد صحيح غير مصنّف على شكل ماسا..</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n\r\n<p>&nbsp;</p>\r\n<!--banner-->\r\n\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner join-banner-bg\" style=\"min-height: 420px;\">\r\n<div class=\"join-overlay\">&nbsp;</div>\r\n\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"join_banner_txt\">\r\n<h4 class=\"join-txt\">نضم الان!</h4>\r\n\r\n<h2>انضم إلينا. سنساعدك في كل خطوة على الطريق.</h2>\r\n<button class=\"btn green-theme-btn\">البدء</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"more-qn-sec\">\r\n<h2 class=\"font-weight-600\">هل لديك المزيد من الأسئلة؟</h2>\r\n\r\n<p class=\"mt-md-5\">تواصل معنا على <a class=\"green-theme-font\" href=\"mailto:support@migrateshop.com\">support@migrateshop.com</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 'first', 'Active', 'ar', 2, '2021-12-04 01:45:18', '2022-08-19 04:14:46'),
(52, 8, '成为主持人', '', '<!--banner-->\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner host-banner-bg\">\r\n<div class=\"host-overlay\">&nbsp;</div>\r\n\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"join_banner_txt\">\r\n<h4>你可以託管任何東西,</h4>\r\n\r\n<h4>任何地方</h4>\r\n<button class=\"btn green-theme-btn\">開始使用</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n\r\n<p>&nbsp;</p>\r\n<!--why partner-->\r\n\r\n<section class=\"partner-sec\">\r\n<div class=\"container\">\r\n<div data-testid=\"how-it-works-section\">\r\n<div class=\"SectionSteps_root__2NGjK SectionSteps_root--gray__2vZS6\">\r\n<div class=\"Container_root__1WntK\">\r\n<div>\r\n<h1 class=\"SectionSteps_title__3JXIX text-center font-weight-700\">出租安全</h1>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepsWrapper__231A6\">\r\n<div class=\"SectionSteps_stepsInner__3OYc8 row\">\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">5,00,000主機保證</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">自 1500 年代以來，Lorem Ipsum 一直是行業標準的虛擬文本，當時一位不知名的印刷商採用了一種類型的廚房並將其爭先恐後地進行預訂</p>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">房東保障保險</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">自 1500 年代以來，Lorem Ipsum 一直是行業標準的虛擬文本，當時一位不知名的印刷商採用了一種類型的廚房並將其爭先恐後地進行預訂。</p>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">租金建立在信任之上</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">租金建立在 trustLorem Ipsum 自從 1500 年代以來一直是行業標準的虛擬文本，當時一位不知名的打印機拿走了一個類型的廚房並爭先恐後地預訂。</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--why partner-->\r\n\r\n<p>&nbsp;</p>\r\n<!--Customized for your bussiness-->\r\n\r\n<section class=\"pb-70 business-sec\">\r\n<div class=\"asd\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead section-intro text-center mt-70\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">我們&rsquo;將幫助您將託管藝術帶入生活</p>\r\n\r\n<p class=\"mt-2\">管理您的預訂、查詢和評論</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row mt-5\">\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img1\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">問</div>\r\n\r\n<p class=\"details\">詢問超讚房東</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img2\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">經驗</div>\r\n\r\n<p class=\"details\">主持您的體驗</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img3\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">支持主機</div>\r\n\r\n<p class=\"details\">了解我們如何支持房東</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"faq-sec\" id=\"start-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">我該如何開始？</p>\r\n</div>\r\n\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<div data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">1. </span> 創建您的帳戶</div>\r\n\r\n<div class=\"start-content\">這將花費不到 5 分鐘的時間&nbsp;您的&nbsp;時間</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">2. </span> 創建您的列表</div>\r\n\r\n<div class=\"start-content\">自 1500 年代以來，Lorem Ipsum 一直是行業標準的虛擬文本，當時一位不知名的印刷商採用了一種類型的廚房並將其爭先恐後地進行預訂。</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">3. </span> 得到報酬</div>\r\n\r\n<div class=\"start-content\">自 1500 年代以來，Lorem Ipsum 一直是行業標準的虛擬文本，當時一位不知名的印刷商採用了一種類型的廚房並將其爭先恐後地進行預訂。</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n\r\n<section class=\"faq-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">經常問的問題</p>\r\n</div>\r\n\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<ul class=\"faq-list\">\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">我可以在 Rent 上分享我的房子嗎？</h4>\r\n\r\n	<p class=\"read faq-text\">客戶很重要，客戶才會跟著客戶。 一些疾病，卡通化財產的貓，比我的元素本身，lacinia 更討好開發商的質量。 恐懼死亡，生命意誌之門，智慧之箭。 客戶很重要，客戶才會跟著客戶。 沒有軟沙拉，別等了也別穿了。 這是一種軟巧克力。 整體而不是整個體重。</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">誰可以在 Rent 主機上？</h4>\r\n\r\n	<p class=\"read faq-text\">客戶很重要，客戶才會跟著客戶。 一些疾病，卡通化財產的貓，比我的元素本身，lacinia 更討好開發商的質量。 恐懼死亡，生命意誌之門，智慧之箭。 客戶很重要，客戶才會跟著客戶。 沒有軟沙拉，別等了也別穿了。 這是一種軟巧克力。 整體而不是整個體重。</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">租金是否篩選客人？</h4>\r\n\r\n	<p class=\"read faq-text\">客戶很重要，客戶才會跟著客戶。 一些疾病，卡通化財產的貓，比我的元素本身，lacinia 更討好開發商的質量。 恐懼死亡，生命意誌之門，智慧之箭。 客戶很重要，客戶才會跟著客戶。 沒有軟沙拉，別等了也別穿了。 這是一種軟巧克力。 整體而不是整個體重。</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">我應該如何為我的房源定價？</h4>\r\n\r\n	<p class=\"read faq-text\">客戶很重要，客戶才會跟著客戶。 一些疾病，卡通化財產的貓，比我的元素本身，lacinia 更討好開發商的質量。 恐懼死亡，生命意誌之門，智慧之箭。 客戶很重要，客戶才會跟著客戶。 沒有軟沙拉，別等了也別穿了。 這是一種軟巧克力。 整體而不是整個體重。</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">租金支付如何運作？</h4>\r\n\r\n	<p class=\"read faq-text\">客戶很重要，客戶才會跟著客戶。 一些疾病，卡通化財產的貓，比我的元素本身，lacinia 更討好開發商的質量。 恐懼死亡，生命意誌之門，智慧之箭。 客戶很重要，客戶才會跟著客戶。 沒有軟沙拉，別等了也別穿了。 這是一種軟巧克力。 整體而不是整個體重。</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Rent 是否為房東提供任何保險？</h4>\r\n\r\n	<p class=\"read faq-text\">客戶很重要，客戶才會跟著客戶。 一些疾病，卡通化財產的貓，比我的元素本身，lacinia 更討好開發商的質量。 恐懼死亡，生命意誌之門，智慧之箭。 客戶很重要，客戶才會跟著客戶。 沒有軟沙拉，別等了也別穿了。 這是一種軟巧克力。 整體而不是整個體重。</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n\r\n<p>&nbsp;</p>\r\n<!--banner-->\r\n\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner join-banner-bg\" style=\"min-height: 420px;\">\r\n<div class=\"join-overlay\">&nbsp;</div>\r\n\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"join_banner_txt\">\r\n<h4 class=\"join-txt\">立即加入！</h4>\r\n\r\n<h2>加入我們。 我會在每一步為您提供幫助。</h2>\r\n<button class=\"btn green-theme-btn\">開始使用</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"more-qn-sec\">\r\n<h2 class=\"font-weight-600\">還有更多問題？</h2>\r\n\r\n<p class=\"mt-md-5\">聯繫我們<a class=\"green-theme-font\" href=\"mailto:support@migrateshop.com\">support@migrateshop.com</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 'first', 'Active', 'ch', 3, '2021-12-04 01:45:18', '2022-08-27 01:39:20');
INSERT INTO `pages` (`id`, `temp_id`, `name`, `url`, `content`, `position`, `status`, `lang`, `lang_id`, `created_at`, `updated_at`) VALUES
(53, 8, 'Devenir hôte', '', '<!--banner-->\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner host-banner-bg\">\r\n<div class=\"host-overlay\">&nbsp;</div>\r\n\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"join_banner_txt\">\r\n<h4>Vous pouvez h&eacute;berger n&#39;importe quoi,</h4>\r\n\r\n<h4>partout</h4>\r\n<button class=\"btn green-theme-btn\">Commencer</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n\r\n<p>&nbsp;</p>\r\n<!--why partner-->\r\n\r\n<section class=\"partner-sec\">\r\n<div class=\"container\">\r\n<div data-testid=\"how-it-works-section\">\r\n<div class=\"SectionSteps_root__2NGjK SectionSteps_root--gray__2vZS6\">\r\n<div class=\"Container_root__1WntK\">\r\n<div>\r\n<h1 class=\"SectionSteps_title__3JXIX text-center font-weight-700\">S&eacute;curit&eacute; sur le loyer</h1>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepsWrapper__231A6\">\r\n<div class=\"SectionSteps_stepsInner__3OYc8 row\">\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">5&nbsp;000&nbsp;000 de garantie d&#39;h&ocirc;te</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum est le texte factice standard de l&#39;industrie depuis les ann&eacute;es 1500, lorsqu&#39;un imprimeur inconnu a pris une gal&egrave;re de type et l&#39;a brouill&eacute; pour le r&eacute;server.</p>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Assurance H&ocirc;te</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum est le texte factice standard de l&#39;industrie depuis les ann&eacute;es 1500, lorsqu&#39;un imprimeur inconnu a pris une gal&egrave;re de type et l&#39;a brouill&eacute; pour le r&eacute;server.</p>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Le loyer est bas&eacute; sur la confiance</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum est le texte factice standard de l&#39;industrie depuis les ann&eacute;es 1500, lorsqu&#39;un imprimeur inconnu a pris une gal&egrave;re de type et l&#39;a brouill&eacute; pour le r&eacute;server.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--why partner-->\r\n\r\n<p>&nbsp;</p>\r\n<!--Customized for your bussiness-->\r\n\r\n<section class=\"pb-70 business-sec\">\r\n<div class=\"asd\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead section-intro text-center mt-70\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Je vous aiderai &agrave; donner vie &agrave; l&#39;art de recevoir</p>\r\n\r\n<p class=\"mt-2\">G&eacute;rez vos r&eacute;servations, demandes de renseignements et commentaires</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row mt-5\">\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img1\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Interroger</div>\r\n\r\n<p class=\"details\">Demandez &agrave; un Superhost</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img2\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Vivre</div>\r\n\r\n<p class=\"details\">H&eacute;bergez votre exp&eacute;rience</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img3\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">H&ocirc;te de soutien</div>\r\n\r\n<p class=\"details\">D&eacute;couvrez comment nous aidons les h&ocirc;tes</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"faq-sec\" id=\"start-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Comment commencer ?</p>\r\n</div>\r\n\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<div data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">1. </span> Cr&eacute;ez votre compte</div>\r\n\r\n<div class=\"start-content\">Cela prendra moins de 5 minutes de&nbsp;ton&nbsp;temps</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">2. </span> Cr&eacute;ez votre annonce</div>\r\n\r\n<div class=\"start-content\">Lorem Ipsum est le texte factice standard de l&#39;industrie depuis les ann&eacute;es 1500, lorsqu&#39;un imprimeur inconnu a pris une gal&egrave;re de type et l&#39;a brouill&eacute; pour le r&eacute;server.</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">3. </span> Soyez pay&eacute;</div>\r\n\r\n<div class=\"start-content\">Lorem Ipsum est le texte factice standard de l&#39;industrie depuis les ann&eacute;es 1500, lorsqu&#39;un imprimeur inconnu a pris une gal&egrave;re de type et l&#39;a brouill&eacute; pour le r&eacute;server.</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n\r\n<section class=\"faq-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Questions fr&eacute;quemment pos&eacute;es</p>\r\n</div>\r\n\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<ul class=\"faq-list\">\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Puis-je partager ma maison sur Rent?</h4>\r\n\r\n	<p class=\"read faq-text\">Le client est tr&egrave;s important, le client sera suivi par le client. Certains de la maladie, le chat qui caricature la propri&eacute;t&eacute;, que mon &eacute;l&eacute;ment lui-m&ecirc;me, le lacinia flatte la masse du d&eacute;veloppeur. La peur de la mort, la porte de la volont&eacute; de vie, les fl&egrave;ches de la sagesse. Le client est tr&egrave;s important, le client sera suivi par le client. Il n&#39;y a pas de salade molle, ne l&#39;attendez pas et ne la portez pas. C&#39;est un chocolat moelleux. Ensemble et non une masse corporelle enti&egrave;re.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Qui peut &ecirc;tre sur l&#39;h&ocirc;te Rent&nbsp;?</h4>\r\n\r\n	<p class=\"read faq-text\">Le client est tr&egrave;s important, le client sera suivi par le client. Certains de la maladie, le chat qui caricature la propri&eacute;t&eacute;, que mon &eacute;l&eacute;ment lui-m&ecirc;me, le lacinia flatte la masse du d&eacute;veloppeur. La peur de la mort, la porte de la volont&eacute; de vie, les fl&egrave;ches de la sagesse. Le client est tr&egrave;s important, le client sera suivi par le client. Il n&#39;y a pas de salade molle, ne l&#39;attendez pas et ne la portez pas. C&#39;est un chocolat moelleux. Ensemble et non une masse corporelle enti&egrave;re.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Rent filtre-t-il les invit&eacute;s&nbsp;?</h4>\r\n\r\n	<p class=\"read faq-text\">Le client est tr&egrave;s important, le client sera suivi par le client. Certains de la maladie, le chat qui caricature la propri&eacute;t&eacute;, que mon &eacute;l&eacute;ment lui-m&ecirc;me, le lacinia flatte la masse du d&eacute;veloppeur. La peur de la mort, la porte de la volont&eacute; de vie, les fl&egrave;ches de la sagesse. Le client est tr&egrave;s important, le client sera suivi par le client. Il n&#39;y a pas de salade molle, ne l&#39;attendez pas et ne la portez pas. C&#39;est un chocolat moelleux. Ensemble et non une masse corporelle enti&egrave;re.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Comment dois-je fixer le prix de mon annonce sur Rent&nbsp;?</h4>\r\n\r\n	<p class=\"read faq-text\">Le client est tr&egrave;s important, le client sera suivi par le client. Certains de la maladie, le chat qui caricature la propri&eacute;t&eacute;, que mon &eacute;l&eacute;ment lui-m&ecirc;me, le lacinia flatte la masse du d&eacute;veloppeur. La peur de la mort, la porte de la volont&eacute; de vie, les fl&egrave;ches de la sagesse. Le client est tr&egrave;s important, le client sera suivi par le client. Il n&#39;y a pas de salade molle, ne l&#39;attendez pas et ne la portez pas. C&#39;est un chocolat moelleux. Ensemble et non une masse corporelle enti&egrave;re.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Comment fonctionnent les paiements de loyer?</h4>\r\n\r\n	<p class=\"read faq-text\">Le client est tr&egrave;s important, le client sera suivi par le client. Certains de la maladie, le chat qui caricature la propri&eacute;t&eacute;, que mon &eacute;l&eacute;ment lui-m&ecirc;me, le lacinia flatte la masse du d&eacute;veloppeur. La peur de la mort, la porte de la volont&eacute; de vie, les fl&egrave;ches de la sagesse. Le client est tr&egrave;s important, le client sera suivi par le client. Il n&#39;y a pas de salade molle, ne l&#39;attendez pas et ne la portez pas. C&#39;est un chocolat moelleux. Ensemble et non une masse corporelle enti&egrave;re.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Rent fournit-il une assurance pour les h&ocirc;tes ?</h4>\r\n\r\n	<p class=\"read faq-text\">Le client est tr&egrave;s important, le client sera suivi par le client. Certains de la maladie, le chat qui caricature la propri&eacute;t&eacute;, que mon &eacute;l&eacute;ment lui-m&ecirc;me, le lacinia flatte la masse du d&eacute;veloppeur. La peur de la mort, la porte de la volont&eacute; de vie, les fl&egrave;ches de la sagesse. Le client est tr&egrave;s important, le client sera suivi par le client. Il n&#39;y a pas de salade molle, ne l&#39;attendez pas et ne la portez pas. C&#39;est un chocolat moelleux. Ensemble et non une masse corporelle enti&egrave;re.</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n\r\n<p>&nbsp;</p>\r\n<!--banner-->\r\n\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner join-banner-bg\" style=\"min-height: 420px;\">\r\n<div class=\"join-overlay\">&nbsp;</div>\r\n\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"join_banner_txt\">\r\n<h4 class=\"join-txt\">Adh&eacute;rer maintenant!</h4>\r\n\r\n<h2>Rejoignez-nous. Je vous aiderai &agrave; chaque &eacute;tape.</h2>\r\n<button class=\"btn green-theme-btn\">Commencer</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"more-qn-sec\">\r\n<h2 class=\"font-weight-600\">Vous avez d&#39;autres questions&nbsp;?</h2>\r\n\r\n<p class=\"mt-md-5\">Contactez-nous &agrave; <a class=\"green-theme-font\" href=\"mailto:support@migrateshop.com\">support@migrateshop.com</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 'first', 'Active', 'fr', 4, '2021-12-04 01:45:18', '2022-08-27 02:18:18'),
(54, 8, 'Torne-se anfitrião', '', '<!--banner-->\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner host-banner-bg\">\r\n<div class=\"host-overlay\">&nbsp;</div>\r\n\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"join_banner_txt\">\r\n<h4>Voc pode hospedar qualquer coisa,</h4>\r\n\r\n<h4>qualquer lugar</h4>\r\n<button class=\"btn green-theme-btn\">Iniciar</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n\r\n<p>&nbsp;</p>\r\n<!--why partner-->\r\n\r\n<section class=\"partner-sec\">\r\n<div class=\"container\">\r\n<div data-testid=\"how-it-works-section\">\r\n<div class=\"SectionSteps_root__2NGjK SectionSteps_root--gray__2vZS6\">\r\n<div class=\"Container_root__1WntK\">\r\n<div>\r\n<h1 class=\"SectionSteps_title__3JXIX text-center font-weight-700\">Seguran&ccedil;a no aluguel</h1>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepsWrapper__231A6\">\r\n<div class=\"SectionSteps_stepsInner__3OYc8 row\">\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Garantia de host de 5.00.000</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum tem sido o texto fict&iacute;cio padr&atilde;o da ind&uacute;stria desde os anos 1500, quando uma impressora desconhecida pegou um tipo de galley e o embaralhou para reservar.</p>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Seguro de Prote&ccedil;&atilde;o ao Anfitri&atilde;o</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum tem sido o texto fict&iacute;cio padr&atilde;o da ind&uacute;stria desde os anos 1500, quando uma impressora desconhecida pegou um tipo de galley e o embaralhou para reservar.</p>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">O aluguel &eacute; baseado na confian&ccedil;a</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum tem sido o texto fict&iacute;cio padr&atilde;o da ind&uacute;stria desde os anos 1500, quando uma impressora desconhecida pegou um tipo de galley e o embaralhou para reservar.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--why partner-->\r\n\r\n<p>&nbsp;</p>\r\n<!--Customized for your bussiness-->\r\n\r\n<section class=\"pb-70 business-sec\">\r\n<div class=\"asd\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead section-intro text-center mt-70\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Vou ajud&aacute;-lo a dar vida &agrave; arte de hospedar</p>\r\n\r\n<p class=\"mt-2\">Gerencie suas reservas, consultas e coment&aacute;rios</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row mt-5\">\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img1\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Perguntar</div>\r\n\r\n<p class=\"details\">Pergunte a um Superhost</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img2\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Experi&ecirc;ncia</div>\r\n\r\n<p class=\"details\">Hospede sua experi&ecirc;ncia</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img3\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Anfitri&atilde;o de suporte</div>\r\n\r\n<p class=\"details\">Saiba como apoiamos os anfitri&otilde;es</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"faq-sec\" id=\"start-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Como eu come&ccedil;o?</p>\r\n</div>\r\n\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<div data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">1. </span> crie sua conta</div>\r\n\r\n<div class=\"start-content\">Isso levar&aacute; menos de 5 minutos do seu&nbsp;tempo</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">2. </span> Crie sua listagem</div>\r\n\r\n<div class=\"start-content\">Lorem Ipsum tem sido o texto fict&iacute;cio padr&atilde;o da ind&uacute;stria desde os anos 1500, quando uma impressora desconhecida pegou um tipo de galley e o embaralhou para reservar.</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">3. </span> Ser pago</div>\r\n\r\n<div class=\"start-content\">Lorem Ipsum tem sido o texto fict&iacute;cio padr&atilde;o da ind&uacute;stria desde os anos 1500, quando uma impressora desconhecida pegou um tipo de galley e o embaralhou para reservar.</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n\r\n<section class=\"faq-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Perguntas frequentes</p>\r\n</div>\r\n\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<ul class=\"faq-list\">\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Posso partilhar a minha casa no Rent?</h4>\r\n\r\n	<p class=\"read faq-text\">O cliente &eacute; muito importante, o cliente ser&aacute; seguido pelo cliente. Alguns da doen&ccedil;a, o gato que caricatura a propriedade, do que meu elemento em si, a lacinia lisonjeia a massa do desenvolvedor. O medo da morte, a porta para a vontade da vida, as flechas da sabedoria. O cliente &eacute; muito importante, o cliente ser&aacute; seguido pelo cliente. N&atilde;o h&aacute; salada macia, n&atilde;o espere e n&atilde;o a use. &Eacute; um chocolate macio. Massa de corpo inteiro e n&atilde;o de corpo inteiro.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Quem pode estar no Rent host?</h4>\r\n\r\n	<p class=\"read faq-text\">O cliente &eacute; muito importante, o cliente ser&aacute; seguido pelo cliente. Alguns da doen&ccedil;a, o gato que caricatura a propriedade, do que meu elemento em si, a lacinia lisonjeia a massa do desenvolvedor. O medo da morte, a porta para a vontade da vida, as flechas da sabedoria. O cliente &eacute; muito importante, o cliente ser&aacute; seguido pelo cliente. N&atilde;o h&aacute; salada macia, n&atilde;o espere e n&atilde;o a use. &Eacute; um chocolate macio. Massa de corpo inteiro e n&atilde;o de corpo inteiro.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">O Rent seleciona os H&oacute;spedes?</h4>\r\n\r\n	<p class=\"read faq-text\">O cliente &eacute; muito importante, o cliente ser&aacute; seguido pelo cliente. Alguns da doen&ccedil;a, o gato que caricatura a propriedade, do que meu elemento em si, a lacinia lisonjeia a massa do desenvolvedor. O medo da morte, a porta para a vontade da vida, as flechas da sabedoria. O cliente &eacute; muito importante, o cliente ser&aacute; seguido pelo cliente. N&atilde;o h&aacute; salada macia, n&atilde;o espere e n&atilde;o a use. &Eacute; um chocolate macio. Massa de corpo inteiro e n&atilde;o de corpo inteiro.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Como devo precificar meu an&uacute;ncio no Rent?</h4>\r\n\r\n	<p class=\"read faq-text\">O cliente &eacute; muito importante, o cliente ser&aacute; seguido pelo cliente. Alguns da doen&ccedil;a, o gato que caricatura a propriedade, do que meu elemento em si, a lacinia lisonjeia a massa do desenvolvedor. O medo da morte, a porta para a vontade da vida, as flechas da sabedoria. O cliente &eacute; muito importante, o cliente ser&aacute; seguido pelo cliente. N&atilde;o h&aacute; salada macia, n&atilde;o espere e n&atilde;o a use. &Eacute; um chocolate macio. Massa de corpo inteiro e n&atilde;o de corpo inteiro.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Como funcionam os pagamentos de aluguel?</h4>\r\n\r\n	<p class=\"read faq-text\">O cliente &eacute; muito importante, o cliente ser&aacute; seguido pelo cliente. Alguns da doen&ccedil;a, o gato que caricatura a propriedade, do que meu elemento em si, a lacinia lisonjeia a massa do desenvolvedor. O medo da morte, a porta para a vontade da vida, as flechas da sabedoria. O cliente &eacute; muito importante, o cliente ser&aacute; seguido pelo cliente. N&atilde;o h&aacute; salada macia, n&atilde;o espere e n&atilde;o a use. &Eacute; um chocolate macio. Massa de corpo inteiro e n&atilde;o de corpo inteiro.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">A Rent oferece algum seguro para os anfitri&otilde;es?</h4>\r\n\r\n	<p class=\"read faq-text\">O cliente &eacute; muito importante, o cliente ser&aacute; seguido pelo cliente. Alguns da doen&ccedil;a, o gato que caricatura a propriedade, do que meu elemento em si, a lacinia lisonjeia a massa do desenvolvedor. O medo da morte, a porta para a vontade da vida, as flechas da sabedoria. O cliente &eacute; muito importante, o cliente ser&aacute; seguido pelo cliente. N&atilde;o h&aacute; salada macia, n&atilde;o espere e n&atilde;o a use. &Eacute; um chocolate macio. Massa de corpo inteiro e n&atilde;o de corpo inteiro.</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n\r\n<p>&nbsp;</p>\r\n<!--banner-->\r\n\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner join-banner-bg\" style=\"min-height: 420px;\">\r\n<div class=\"join-overlay\">&nbsp;</div>\r\n\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"join_banner_txt\">\r\n<h4 class=\"join-txt\">Entrar!</h4>\r\n\r\n<h2>Junte-se a n&oacute;s. Eu vou ajud&aacute;-lo a cada passo do caminho.</h2>\r\n<button class=\"btn green-theme-btn\">Iniciar</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"more-qn-sec\">\r\n<h2 class=\"font-weight-600\">Tem mais perguntas?</h2>\r\n\r\n<p class=\"mt-md-5\">Contacte-nos em <a class=\"green-theme-font\" href=\"mailto:support@migrateshop.com\">support@migrateshop.com</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 'first', 'Active', 'pt', 5, '2021-12-04 01:45:18', '2022-08-27 02:18:18'),
(55, 8, 'Стать хозяином', '', '<!--banner-->\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner host-banner-bg\">\r\n<div class=\"host-overlay\">&nbsp;</div>\r\n\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"join_banner_txt\">\r\n<h4>Вы можете разместить что угодно,</h4>\r\n\r\n<h4>в любом месте</h4>\r\n<button class=\"btn green-theme-btn\">Начать</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n\r\n<p>&nbsp;</p>\r\n<!--why partner-->\r\n\r\n<section class=\"partner-sec\">\r\n<div class=\"container\">\r\n<div data-testid=\"how-it-works-section\">\r\n<div class=\"SectionSteps_root__2NGjK SectionSteps_root--gray__2vZS6\">\r\n<div class=\"Container_root__1WntK\">\r\n<div>\r\n<h1 class=\"SectionSteps_title__3JXIX text-center font-weight-700\">Безопасность в аренде</h1>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepsWrapper__231A6\">\r\n<div class=\"SectionSteps_stepsInner__3OYc8 row\">\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Гарантия 500000 хостов</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum был стандартным фиктивным текстом в отрасли с 1500-х годов, когда неизвестный печатник взял гранку шрифта и закодировал ее в книгу.</p>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Страхование защиты хозяев</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum был стандартным фиктивным текстом в отрасли с 1500-х годов, когда неизвестный печатник взял гранку шрифта и закодировал ее в книгу.</p>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Аренда строится на доверии</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum был стандартным фиктивным текстом в отрасли с 1500-х годов, когда неизвестный печатник взял гранку шрифта и закодировал ее в книгу.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--why partner-->\r\n\r\n<p>&nbsp;</p>\r\n<!--Customized for your bussiness-->\r\n\r\n<section class=\"pb-70 business-sec\">\r\n<div class=\"asd\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead section-intro text-center mt-70\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Мы поможем вам воплотить искусство хостинга в жизнь</p>\r\n\r\n<p class=\"mt-2\">Управляйте своими бронированиями, запросами и отзывами</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row mt-5\">\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img1\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Спросить</div>\r\n\r\n<p class=\"details\">Спросите суперхозяина</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img2\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Опыт</div>\r\n\r\n<p class=\"details\">Разместите свой опыт</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img3\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Хост поддержки</div>\r\n\r\n<p class=\"details\">Узнайте, как мы поддерживаем хозяев</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"faq-sec\" id=\"start-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Как мне начать?</p>\r\n</div>\r\n\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<div data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">1. </span> Создать учетную запись</div>\r\n\r\n<div class=\"start-content\">Это займет не более 5 минут&nbsp;ваш&nbsp;время</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">2. </span> Создайте свой список</div>\r\n\r\n<div class=\"start-content\">Lorem Ipsum был стандартным фиктивным текстом в отрасли с 1500-х годов, когда неизвестный печатник взял гранку шрифта и закодировал ее в книгу.</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">3. </span> Получить оплату</div>\r\n\r\n<div class=\"start-content\">Lorem Ipsum был стандартным фиктивным текстом в отрасли с 1500-х годов, когда неизвестный печатник взял гранку шрифта и закодировал ее в книгу.</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n\r\n<section class=\"faq-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Часто задаваемые вопросы</p>\r\n</div>\r\n\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<ul class=\"faq-list\">\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Могу ли я поделиться своим домом в Rent?</h4>\r\n\r\n	<p class=\"read faq-text\">Клиент очень важен, за клиентом последует клиент. Некоторые болезни, кот, который мультяшный собственности, чем сам мой элемент, лациния льстит массе разработчика. Страх смерти, дверь в волю жизни, стрелы мудрости. Клиент очень важен, за клиентом последует клиент. Мягкого салата нет, его не жди и не носи. Это мягкий шоколад. Целая и не вся масса тела.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Кто может быть на аренде хоста?</h4>\r\n\r\n	<p class=\"read faq-text\">Клиент очень важен, за клиентом последует клиент. Некоторые болезни, кот, который мультяшный собственности, чем сам мой элемент, лациния льстит массе разработчика. Страх смерти, дверь в волю жизни, стрелы мудрости. Клиент очень важен, за клиентом последует клиент. Мягкого салата нет, его не жди и не носи. Это мягкий шоколад. Целая и не вся масса тела.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Проверяет ли Rent гостей?</h4>\r\n\r\n	<p class=\"read faq-text\">Клиент очень важен, за клиентом последует клиент. Некоторые болезни, кот, который мультяшный собственности, чем сам мой элемент, лациния льстит массе разработчика. Страх смерти, дверь в волю жизни, стрелы мудрости. Клиент очень важен, за клиентом последует клиент. Мягкого салата нет, его не жди и не носи. Это мягкий шоколад. Целая и не вся масса тела.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Как я должен оценить свое объявление в Rent?</h4>\r\n\r\n	<p class=\"read faq-text\">Клиент очень важен, за клиентом последует клиент. Некоторые болезни, кот, который мультяшный собственности, чем сам мой элемент, лациния льстит массе разработчика. Страх смерти, дверь в волю жизни, стрелы мудрости. Клиент очень важен, за клиентом последует клиент. Мягкого салата нет, его не жди и не носи. Это мягкий шоколад. Целая и не вся масса тела.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Как работают арендные платежи?</h4>\r\n\r\n	<p class=\"read faq-text\">Клиент очень важен, за клиентом последует клиент. Некоторые болезни, кот, который мультяшный собственности, чем сам мой элемент, лациния льстит массе разработчика. Страх смерти, дверь в волю жизни, стрелы мудрости. Клиент очень важен, за клиентом последует клиент. Мягкого салата нет, его не жди и не носи. Это мягкий шоколад. Целая и не вся масса тела.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Предоставляет ли Rent какую-либо страховку для хозяев?</h4>\r\n\r\n	<p class=\"read faq-text\">Клиент очень важен, за клиентом последует клиент. Некоторые болезни, кот, который мультяшный собственности, чем сам мой элемент, лациния льстит массе разработчика. Страх смерти, дверь в волю жизни, стрелы мудрости. Клиент очень важен, за клиентом последует клиент. Мягкого салата нет, его не жди и не носи. Это мягкий шоколад. Целая и не вся масса тела.</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n\r\n<p>&nbsp;</p>\r\n<!--banner-->\r\n\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner join-banner-bg\" style=\"min-height: 420px;\">\r\n<div class=\"join-overlay\">&nbsp;</div>\r\n\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"join_banner_txt\">\r\n<h4 class=\"join-txt\">Присоединяйся сейчас!</h4>\r\n\r\n<h2>Присоединяйтесь к нам. Я помогу вам на каждом этапе пути.</h2>\r\n<button class=\"btn green-theme-btn\">Начать</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"more-qn-sec\">\r\n<h2 class=\"font-weight-600\">Есть еще вопросы?</h2>\r\n\r\n<p class=\"mt-md-5\">Свяжитесь с нами по <a class=\"green-theme-font\" href=\"mailto:support@migrateshop.com\">support@migrateshop.com</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 'first', 'Active', 'ru', 6, '2021-12-04 01:45:18', '2022-08-27 02:58:05'),
(56, 8, 'Conviértete en anfitriona', '', '<!--banner-->\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner host-banner-bg\">\r\n<div class=\"host-overlay\">&nbsp;</div>\r\n\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"join_banner_txt\">\r\n<h4>Puedes alojar cualquier cosa,</h4>\r\n\r\n<h4>anywhere</h4>\r\n<button class=\"btn green-theme-btn\">Empezar</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n\r\n<p>&nbsp;</p>\r\n<!--why partner-->\r\n\r\n<section class=\"partner-sec\">\r\n<div class=\"container\">\r\n<div data-testid=\"how-it-works-section\">\r\n<div class=\"SectionSteps_root__2NGjK SectionSteps_root--gray__2vZS6\">\r\n<div class=\"Container_root__1WntK\">\r\n<div>\r\n<h1 class=\"SectionSteps_title__3JXIX text-center font-weight-700\">Seguridad en el alquiler</h1>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepsWrapper__231A6\">\r\n<div class=\"SectionSteps_stepsInner__3OYc8 row\">\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">5,00,000 garant&iacute;a de anfitri&oacute;n</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum ha sido el texto ficticio est&aacute;ndar de la industria desde la d&eacute;cada de 1500, cuando un impresor desconocido tom&oacute; una galera de tipos y la codific&oacute; para reservar.</p>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Seguro de Protecci&oacute;n al Anfitri&oacute;n</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum ha sido el texto ficticio est&aacute;ndar de la industria desde la d&eacute;cada de 1500, cuando un impresor desconocido tom&oacute; una galera de tipos y la codific&oacute; para reservar.</p>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">El alquiler se basa en la confianza</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum ha sido el texto ficticio est&aacute;ndar de la industria desde la d&eacute;cada de 1500, cuando un impresor desconocido tom&oacute; una galera de tipos y la codific&oacute; para reservar.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--why partner-->\r\n\r\n<p>&nbsp;</p>\r\n<!--Customized for your bussiness-->\r\n\r\n<section class=\"pb-70 business-sec\">\r\n<div class=\"asd\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead section-intro text-center mt-70\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Te ayudar&eacute; a darle vida al arte de hospedar</p>\r\n\r\n<p class=\"mt-2\">Gestiona tus reservas, Consultas y Rese&ntilde;as</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row mt-5\">\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img1\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Pedir</div>\r\n\r\n<p class=\"details\">Preg&uacute;ntale a un Superanfitri&oacute;n</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img2\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Experiencia</div>\r\n\r\n<p class=\"details\">Aloja tu experiencia</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img3\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Anfitriona de soporte</div>\r\n\r\n<p class=\"details\">Aprenda c&oacute;mo apoyamos a las anfitrionas</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"faq-sec\" id=\"start-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">&iquest;Como empiezo?</p>\r\n</div>\r\n\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<div data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">1. </span> Crea tu cuenta</div>\r\n\r\n<div class=\"start-content\">Esto tomar&aacute; menos de 5 minutos de&nbsp;su&nbsp;tiempo</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">2. </span> Crea tu listado</div>\r\n\r\n<div class=\"start-content\">Lorem Ipsum ha sido el texto ficticio est&aacute;ndar de la industria desde la d&eacute;cada de 1500, cuando un impresor desconocido tom&oacute; una galera de tipos y la codific&oacute; para reservar.</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">3. </span> Recibir el pago</div>\r\n\r\n<div class=\"start-content\">Lorem Ipsum ha sido el texto ficticio est&aacute;ndar de la industria desde la d&eacute;cada de 1500, cuando un impresor desconocido tom&oacute; una galera de tipos y la codific&oacute; para reservar.</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n\r\n<section class=\"faq-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Preguntas frecuentes</p>\r\n</div>\r\n\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<ul class=\"faq-list\">\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">&iquest;Puedo compartir mi casa en alquiler?</h4>\r\n\r\n	<p class=\"read faq-text\">El cliente es muy importante, el cliente ser&aacute; seguido por el cliente. Parte de la enfermedad, el gato que caricaturiza la propiedad, que mi propio elemento, la lacinia halaga la masa del desarrollador. El miedo a la muerte, la puerta a la voluntad de vida, las flechas de la sabidur&iacute;a. El cliente es muy importante, el cliente ser&aacute; seguido por el cliente. No hay ensalada blanda, no la esperes y no te la pongas. Es un chocolate suave. Masa corporal entera y no entera.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">&iquest;Qui&eacute;n puede estar en Rent host?</h4>\r\n\r\n	<p class=\"read faq-text\">El cliente es muy importante, el cliente ser&aacute; seguido por el cliente. Parte de la enfermedad, el gato que caricaturiza la propiedad, que mi propio elemento, la lacinia halaga la masa del desarrollador. El miedo a la muerte, la puerta a la voluntad de vida, las flechas de la sabidur&iacute;a. El cliente es muy importante, el cliente ser&aacute; seguido por el cliente. No hay ensalada blanda, no la esperes y no te la pongas. Es un chocolate suave. Masa corporal entera y no entera.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">&iquest;Rent examina a los hu&eacute;spedes?</h4>\r\n\r\n	<p class=\"read faq-text\">El cliente es muy importante, el cliente ser&aacute; seguido por el cliente. Parte de la enfermedad, el gato que caricaturiza la propiedad, que mi propio elemento, la lacinia halaga la masa del desarrollador. El miedo a la muerte, la puerta a la voluntad de vida, las flechas de la sabidur&iacute;a. El cliente es muy importante, el cliente ser&aacute; seguido por el cliente. No hay ensalada blanda, no la esperes y no te la pongas. Es un chocolate suave. Masa corporal entera y no entera.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">&iquest;C&oacute;mo debo fijar el precio de mi anuncio en alquiler?</h4>\r\n\r\n	<p class=\"read faq-text\">El cliente es muy importante, el cliente ser&aacute; seguido por el cliente. Parte de la enfermedad, el gato que caricaturiza la propiedad, que mi propio elemento, la lacinia halaga la masa del desarrollador. El miedo a la muerte, la puerta a la voluntad de vida, las flechas de la sabidur&iacute;a. El cliente es muy importante, el cliente ser&aacute; seguido por el cliente. No hay ensalada blanda, no la esperes y no te la pongas. Es un chocolate suave. Masa corporal entera y no entera.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">&iquest;C&oacute;mo funcionan los pagos de alquiler?</h4>\r\n\r\n	<p class=\"read faq-text\">El cliente es muy importante, el cliente ser&aacute; seguido por el cliente. Parte de la enfermedad, el gato que caricaturiza la propiedad, que mi propio elemento, la lacinia halaga la masa del desarrollador. El miedo a la muerte, la puerta a la voluntad de vida, las flechas de la sabidur&iacute;a. El cliente es muy importante, el cliente ser&aacute; seguido por el cliente. No hay ensalada blanda, no la esperes y no te la pongas. Es un chocolate suave. Masa corporal entera y no entera.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">&iquest;Rent proporciona alg&uacute;n seguro para las anfitrionas?</h4>\r\n\r\n	<p class=\"read faq-text\">El cliente es muy importante, el cliente ser&aacute; seguido por el cliente. Parte de la enfermedad, el gato que caricaturiza la propiedad, que mi propio elemento, la lacinia halaga la masa del desarrollador. El miedo a la muerte, la puerta a la voluntad de vida, las flechas de la sabidur&iacute;a. El cliente es muy importante, el cliente ser&aacute; seguido por el cliente. No hay ensalada blanda, no la esperes y no te la pongas. Es un chocolate suave. Masa corporal entera y no entera.</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n\r\n<p>&nbsp;</p>\r\n<!--banner-->\r\n\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner join-banner-bg\" style=\"min-height: 420px;\">\r\n<div class=\"join-overlay\">&nbsp;</div>\r\n\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"join_banner_txt\">\r\n<h4 class=\"join-txt\">&iexcl;&Uacute;nete ahora!</h4>\r\n\r\n<h2>&Uacute;nete a nosotros. Nosotros&rsquo;Te ayudar&eacute; en cada paso del camino.</h2>\r\n<button class=\"btn green-theme-btn\">Empezar</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"more-qn-sec\">\r\n<h2 class=\"font-weight-600\">&iquest;Tienes m&aacute;s preguntas?</h2>\r\n\r\n<p class=\"mt-md-5\">Contacta con nosotras en <a class=\"green-theme-font\" href=\"mailto:support@migrateshop.com\">support@migrateshop.com</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 'first', 'Active', 'es', 7, '2021-12-04 01:45:18', '2022-08-27 03:01:09');
INSERT INTO `pages` (`id`, `temp_id`, `name`, `url`, `content`, `position`, `status`, `lang`, `lang_id`, `created_at`, `updated_at`) VALUES
(57, 8, 'Ev Sahibi Ol', '', '<!--banner-->\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner host-banner-bg\">\r\n<div class=\"host-overlay\">&nbsp;</div>\r\n\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"join_banner_txt\">\r\n<h4>Her şeyi barındırabilirsin,</h4>\r\n\r\n<h4>herhangi bir yer</h4>\r\n<button class=\"btn green-theme-btn\">Başlamak</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n\r\n<p>&nbsp;</p>\r\n<!--why partner-->\r\n\r\n<section class=\"partner-sec\">\r\n<div class=\"container\">\r\n<div data-testid=\"how-it-works-section\">\r\n<div class=\"SectionSteps_root__2NGjK SectionSteps_root--gray__2vZS6\">\r\n<div class=\"Container_root__1WntK\">\r\n<div>\r\n<h1 class=\"SectionSteps_title__3JXIX text-center font-weight-700\">Kiralık G&uuml;venlik</h1>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepsWrapper__231A6\">\r\n<div class=\"SectionSteps_stepsInner__3OYc8 row\">\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">5.000.000 ev sahibi garantisi</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum, 1500&#39;l&uuml; yıllardan beri, bilinmeyen bir matbaacının bir t&uuml;r kadırga alıp kitap haline getirdiğinden beri end&uuml;stri standardı sahte metin olmuştur.</p>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Ev Sahibi Koruma Sigortası</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\r\n</div>\r\n\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Kira g&uuml;ven &uuml;zerine inşa edilmiştir</h2>\r\n</div>\r\n\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--why partner-->\r\n\r\n<p>&nbsp;</p>\r\n<!--Customized for your bussiness-->\r\n\r\n<section class=\"pb-70 business-sec\">\r\n<div class=\"asd\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead section-intro text-center mt-70\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Barındırma sanatını hayata ge&ccedil;irmenize yardımcı olacağım</p>\r\n\r\n<p class=\"mt-2\">Rezervasyonlarınızı, Sorgunuzu ve Yorumlarınızı y&ouml;netin</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row mt-5\">\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img1\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Sormak</div>\r\n\r\n<p class=\"details\">Bir S&uuml;per Ev Sahibine Sorun</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img2\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Deneyim</div>\r\n\r\n<p class=\"details\">Deneyiminize ev sahipliği yapın</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img3\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Destek Ana Bilgisayarı</div>\r\n\r\n<p class=\"details\">SupportEv sahiplerini nasıl desteklediğimizi &ouml;ğrenin</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"faq-sec\" id=\"start-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Nasıl başlarım?</p>\r\n</div>\r\n\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<div data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">1. </span> hesabını oluştur</div>\r\n\r\n<div class=\"start-content\">Bu,&nbsp;zamanınızı&nbsp;5 dakikadan daha kısa s&uuml;recektir</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">2. </span> Listenizi oluşturun</div>\r\n\r\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">3. </span> &Ouml;deme Alın</div>\r\n\r\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\r\n</div>\r\n\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n\r\n<section class=\"faq-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Sık&ccedil;a Sorulan Sorular</p>\r\n</div>\r\n\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<ul class=\"faq-list\">\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Kiralık evimi paylaşabilir miyim?</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Kimler Kiralık sunucuda olabilir?</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Rent Misafirleri İzliyor mu?</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Kiralık kaydımı nasıl fiyatlandırmalıyım?</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Kira &ouml;demeleri nasıl &ccedil;alışır?</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n	<li>\r\n	<h4 class=\"faq-heading font-weight-600\">Rent, ev sahipleri i&ccedil;in herhangi bir sigorta sağlıyor mu?</h4>\r\n\r\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n\r\n<p>&nbsp;</p>\r\n<!--banner-->\r\n\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner join-banner-bg\" style=\"min-height: 420px;\">\r\n<div class=\"join-overlay\">&nbsp;</div>\r\n\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"join_banner_txt\">\r\n<h4 class=\"join-txt\">Şimdi Katıl!</h4>\r\n\r\n<h2>Bize katılın. Size yolun her adımında yardım edeceğim.</h2>\r\n<button class=\"btn green-theme-btn\">Başlamak</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"container\">\r\n<div align=\"center\" class=\"col-ms-12\">\r\n<div class=\"more-qn-sec\">\r\n<h2 class=\"font-weight-600\">Daha Fazla Sorunuz mu Var?</h2>\r\n\r\n<p class=\"mt-md-5\">Bize ulaşın <a class=\"green-theme-font\" href=\"mailto:support@migrateshop.com\">support@migrateshop.com</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 'first', 'Active', 'tr', 8, '2021-12-04 01:45:18', '2022-08-27 03:09:31'),
(58, 58, 'Guest Refund', 'guest-refund', '<h2><strong>Guest Refund</strong></h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', 'second', 'Active', 'en', 1, '2021-12-07 06:25:17', '2021-12-07 06:29:32'),
(59, 58, 'ضيف استرداد', '', '<h2><strong>رد أموال الضيف <!-- strong--> </strong></h2>\r\n\r\n<p><strong><strong>Lorem Ipsum </strong> هو مجرد نص وهمي لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشرها في الستينيات من القرن الماضي مع إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum. </strong></p>\r\n\r\n<p><strong>نبسب ؛ </strong></p>\r\n\r\n<p><strong><strong>Lorem Ipsum </strong> هو مجرد نص وهمي لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد صمد ليس فقط لخمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظل دون تغيير جوهري. <!-- p--> </strong></p>', 'second', 'Active', 'ar', 2, '2021-12-07 06:25:17', '2021-12-07 07:37:27'),
(60, 58, '客人退款', '', '<h2><strong>客人退款</strong></h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;只是印刷和排版行业的虚拟文本。自 1500 年代以来，Lorem Ipsum 一直是行业标准的虚拟文本，当时一位不知名的印刷商使用了一个类型的厨房，并争先恐后地制作了一本类型样本书。它不仅存活了五个世纪，而且还经历了电子排版的飞跃，基本保持不变。它在 1960 年代随着包含 Lorem Ipsum 段落的 Letraset 表格的发布而流行，最近随着桌面出版软件 Aldus PageMaker 包括 Lorem Ipsum 的版本而流行。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;只是印刷和排版行业的虚拟文本。自 1500 年代以来，Lorem Ipsum 一直是行业标准的虚拟文本，当时一位不知名的印刷商使用了一个类型的厨房，并争先恐后地制作了一本类型样本书。它不仅存活了五个世纪，而且还经历了电子排版的飞跃，基本保持不变。</p>', 'second', 'Active', 'ch', 3, '2021-12-07 06:25:17', '2021-12-07 07:37:27'),
(61, 58, 'Remboursement invité', '', '<h2><strong>Remboursement invit&eacute;</strong></h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;est simplement un texte factice de l&#39;industrie de l&#39;impression et de la composition. Lorem Ipsum est le texte factice standard de l&#39;industrie depuis les ann&eacute;es 1500, lorsqu&#39;un imprimeur inconnu a pris une gal&egrave;re de caract&egrave;res et l&#39;a brouill&eacute; pour cr&eacute;er un livre de sp&eacute;cimens de caract&egrave;res. Il a surv&eacute;cu non seulement &agrave; cinq si&egrave;cles, mais aussi au saut dans la composition &eacute;lectronique, restant essentiellement inchang&eacute;. Il a &eacute;t&eacute; popularis&eacute; dans les ann&eacute;es 1960 avec la sortie de feuilles Letraset contenant des passages de Lorem Ipsum, et plus r&eacute;cemment avec des logiciels de PAO comme Aldus PageMaker comprenant des versions de Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;est simplement un texte factice de l&#39;industrie de l&#39;impression et de la composition. Lorem Ipsum est le texte factice standard de l&#39;industrie depuis les ann&eacute;es 1500, lorsqu&#39;un imprimeur inconnu a pris une gal&egrave;re de caract&egrave;res et l&#39;a brouill&eacute; pour cr&eacute;er un livre de sp&eacute;cimens de caract&egrave;res. Il a surv&eacute;cu non seulement &agrave; cinq si&egrave;cles, mais aussi au saut dans la composition &eacute;lectronique, restant essentiellement inchang&eacute;.</p>', 'second', 'Active', 'fr', 4, '2021-12-07 06:25:17', '2021-12-07 07:37:27'),
(62, 58, 'Reembolso de Convidado', '', '<h2><strong>Reembolso de Convidado </strong></h2>\r\n\r\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; &eacute; simplesmente um texto fict&iacute;cio da ind&uacute;stria de impress&atilde;o e composi&ccedil;&atilde;o. Lorem Ipsum tem sido o texto fict&iacute;cio padr&atilde;o da ind&uacute;stria desde 1500, quando um impressor desconhecido pegou um modelo de impress&atilde;o e o embaralhou para fazer um livro de amostra de tipos. Ele sobreviveu n&atilde;o apenas cinco s&eacute;culos, mas tamb&eacute;m ao salto para a composi&ccedil;&atilde;o eletr&ocirc;nica, permanecendo essencialmente inalterado. Foi popularizado na d&eacute;cada de 1960 com o lan&ccedil;amento de folhas de Letraset contendo passagens de Lorem Ipsum e, mais recentemente, com software de editora&ccedil;&atilde;o eletr&ocirc;nica como Aldus PageMaker incluindo vers&otilde;es de Lorem Ipsum.</p>\r\n\r\n<p>&amp; nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; &eacute; simplesmente um texto fict&iacute;cio da ind&uacute;stria de impress&atilde;o e composi&ccedil;&atilde;o. Lorem Ipsum tem sido o texto fict&iacute;cio padr&atilde;o da ind&uacute;stria desde 1500, quando um impressor desconhecido pegou um modelo de impress&atilde;o e o embaralhou para fazer um livro de amostra de tipos. Ele sobreviveu n&atilde;o apenas cinco s&eacute;culos, mas tamb&eacute;m ao salto para a composi&ccedil;&atilde;o eletr&ocirc;nica, permanecendo essencialmente inalterado.</p>', 'second', 'Active', 'pt', 5, '2021-12-07 06:25:17', '2021-12-07 07:37:27'),
(63, 58, 'Возврат гостя', '', '<h2><strong>Возврат гостя </strong></h2>\r\n\r\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; - это просто фиктивный текст, используемый в полиграфической и наборной индустрии. Lorem Ipsum был стандартным фиктивным текстом в отрасли с 1500-х годов, когда неизвестный типограф взял камбуз шрифта и скремблировал его, чтобы сделать книгу образцов шрифта. Он пережил не только пять веков, но и скачок в электронный набор, оставшись практически неизменным. Он был популяризирован в 1960-х годах с выпуском листов Letraset, содержащих отрывки Lorem Ipsum, а в последнее время - с помощью настольных издательских программ, таких как Aldus PageMaker, включая версии Lorem Ipsum.</p>\r\n\r\n<p>&amp; nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; - это просто фиктивный текст, используемый в полиграфической и наборной индустрии. Lorem Ipsum был стандартным фиктивным текстом в отрасли с 1500-х годов, когда неизвестный типограф взял камбуз шрифта и скремблировал его, чтобы сделать книгу образцов шрифта. Он пережил не только пять веков, но и скачок в электронный набор, оставшись практически неизменным.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', 'second', 'Active', 'ru', 6, '2021-12-07 06:25:17', '2021-12-07 07:37:27'),
(64, 58, 'Reembolso de invitado', '', '<h2><strong>Reembolso de invitado </strong></h2>\r\n\r\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; es simplemente texto de relleno de la industria de la impresi&oacute;n y la composici&oacute;n tipogr&aacute;fica. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de la industria desde el a&ntilde;o 1500, cuando un impresor desconocido tom&oacute; una galera de tipos y la mezcl&oacute; para hacer un libro de muestras tipogr&aacute;ficas. Ha sobrevivido no solo a cinco siglos, sino tambi&eacute;n al salto a la composici&oacute;n tipogr&aacute;fica electr&oacute;nica, permaneciendo esencialmente sin cambios. Se populariz&oacute; en la d&eacute;cada de 1960 con el lanzamiento de hojas de Letraset que contienen pasajes de Lorem Ipsum y, m&aacute;s recientemente, con software de autoedici&oacute;n como Aldus PageMaker que incluye versiones de Lorem Ipsum.</p>\r\n\r\n<p>&amp; nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; es simplemente texto de relleno de la industria de la impresi&oacute;n y la composici&oacute;n tipogr&aacute;fica. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de la industria desde el a&ntilde;o 1500, cuando un impresor desconocido tom&oacute; una galera de tipos y la mezcl&oacute; para hacer un libro de muestras tipogr&aacute;ficas. Ha sobrevivido no solo a cinco siglos, sino tambi&eacute;n al salto a la composici&oacute;n tipogr&aacute;fica electr&oacute;nica, permaneciendo esencialmente sin cambios.</p>', 'second', 'Active', 'es', 7, '2021-12-07 06:25:17', '2021-12-07 07:37:27'),
(65, 58, 'Misafir Geri Ödemesi', '', '<h2><strong>Misafir Geri &Ouml;demesi</strong></h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;baskı ve dizgi end&uuml;strisinin sahte metnidir. Lorem Ipsum, bilinmeyen bir matbaacının bir tip numune kitabı yapmak i&ccedil;in bir yazı galerisini alıp karıştırdığı 1500&#39;lerden beri end&uuml;strinin standart sahte metni olmuştur. Sadece beş y&uuml;zyıl boyunca hayatta kalmayıp, aynı zamanda esasen değişmeden elektronik dizgiye sı&ccedil;radı. 1960&#39;larda Lorem Ipsum pasajları i&ccedil;eren Letraset sayfalarının yayınlanmasıyla ve daha yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımlarıyla pop&uuml;ler hale geldi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;baskı ve dizgi end&uuml;strisinin sahte metnidir. Lorem Ipsum, bilinmeyen bir matbaacının bir tip numune kitabı yapmak i&ccedil;in bir yazı galerisini alıp karıştırdığı 1500&#39;lerden beri end&uuml;strinin standart sahte metni olmuştur. Yalnızca beş y&uuml;zyıl boyunca ayakta kalmayı başarmakla kalmamış, aynı zamanda temelde değişmeden elektronik dizgiye ge&ccedil;işte de olmuştur.</p>', 'second', 'Active', 'tr', 8, '2021-12-07 06:25:17', '2021-12-07 07:37:27'),
(66, 66, 'Cancellation Policies', 'cancellation-policies', '<h2><strong>Cancellation Policies</strong></h2>\r\n\r\n<div class=\"cancellation_policy\">\r\n<p>&nbsp;</p>\r\n\r\n<p>Buy2rental allows hosts to choose among three standardized cancellation policies (Flexible, Moderate, and Strict) that we will enforce to protect both guest and host alike. Each listing and reservation on our site will clearly state the cancellation policy. Guests may cancel and review any penalties by viewing their travel plans and then clicking &#39;Cancel&#39; on the appropriate reservation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Flexible: Full refund 1 day prior to arrival, except fees</strong></h3>\r\n\r\n<ul>\r\n	<li>Cleaning fees are always refunded if the guest did not check in.</li>\r\n	<li>The Buy2rental service fee is non-refundable.</li>\r\n	<li>If there is a complaint from either party, notice must be given to Buy2rental within 24 hours of check-in.</li>\r\n	<li>Buy2rental will mediate when necessary, and has the final say in all disputes.</li>\r\n	<li>A reservation is officially canceled when the guest clicks the cancellation button on the cancellation confirmation page, which they can find in Dashboard &gt; Your Trips &gt; Change or Cancel.</li>\r\n	<li>Cancellation policies may be superseded by the Guest Refund Policy, safety cancellations, or extenuating circumstances. Please review these exceptions.</li>\r\n	<li>Applicable taxes will be retained and remitted.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Moderate: Full refund 5 days prior to arrival, except fees</strong></h3>\r\n\r\n<ul>\r\n	<li>Cleaning fees are always refunded if the guest did not check in.</li>\r\n	<li>The Buy2rental service fee is non-refundable.</li>\r\n	<li>If there is a complaint from either party, notice must be given to Buy2rental&nbsp;within 24 hours of check-in.</li>\r\n	<li>Buy2rental will mediate when necessary, and has the final say in all disputes.</li>\r\n	<li>A reservation is officially canceled when the guest clicks the cancellation button on the cancellation confirmation page, which they can find in Dashboard &gt; Your Trips &gt; Change or Cancel.</li>\r\n	<li>Cancellation policies may be superseded by the Guest Refund Policy, safety cancellations, or extenuating circumstances. Please review these exceptions.</li>\r\n	<li>Applicable taxes will be retained and remitted.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Strict: 50% refund up until 1 week prior to arrival, except fees</strong></h3>\r\n\r\n<ul>\r\n	<li>Cleaning fees are always refunded if the guest did not check in.</li>\r\n	<li>The Buy2rental service fee is non-refundable.</li>\r\n	<li>If there is a complaint from either party, notice must be given to Buy2rental within 24 hours of check-in.</li>\r\n	<li>Buy2rental will mediate when necessary, and has the final say in all disputes.</li>\r\n	<li>A reservation is officially canceled when the guest clicks the cancellation button on the cancellation confirmation page, which they can find in Dashboard &gt; Your Trips &gt; Change or Cancel.</li>\r\n	<li>Cancellation policies may be superseded by the Guest Refund Policy, safety cancellations, or extenuating circumstances. Please review these exceptions.</li>\r\n	<li>Applicable taxes will be retained and remitted.</li>\r\n</ul>\r\n</div>', 'second', 'Active', 'en', 1, '2021-12-07 06:28:56', '2021-12-07 06:42:02'),
(67, 66, 'سياسات الإلغاء', '', '<h2> <strong> سياسات الإلغاء </ strong> </h2>\r\n\r\n<div class = \"cancellation_policy\">\r\n<p> نبسب ؛ </p>\r\n\r\n<p> يسمح Buy2rental للمضيفين بالاختيار من بين ثلاث سياسات إلغاء موحدة (مرنة ومعتدلة وصارمة) نطبقها لحماية كل من الضيف والمضيف على حدٍ سواء. كل قائمة وحجز على موقعنا ستشير بوضوح إلى سياسة الإلغاء. يمكن للضيوف إلغاء ومراجعة أي عقوبات من خلال عرض خطط السفر الخاصة بهم ثم النقر فوق & # 39 ؛ إلغاء & # 39 ؛ على الحجز المناسب. </ p>\r\n\r\n<p> نبسب ؛ </p>\r\n\r\n<h3> <strong> مرن: رد الأموال بالكامل قبل يوم واحد من الوصول ، باستثناء الرسوم </ strong> </h3>\r\n\r\n<ul>\r\n<li> يتم دائمًا رد رسوم التنظيف في حالة عدم قيام الضيف بتسجيل الوصول. </ li>\r\n<li> رسوم خدمة Buy2rental غير قابلة للاسترداد. </ li>\r\n<li> إذا كانت هناك شكوى من أي من الطرفين ، فيجب إرسال إشعار إلى Buy2rental في غضون 24 ساعة من تسجيل الوصول. </ li>\r\n<li> سوف تتوسط Buy2rental عند الضرورة ، وله القول الفصل في جميع النزاعات. </ li>\r\n<li> يتم إلغاء الحجز رسميًا عندما ينقر الضيف على زر الإلغاء في صفحة تأكيد الإلغاء ، والذي يمكنه العثور عليه في Dashboard & gt؛ رحلاتك و GT. تغيير أو إلغاء. </ li>\r\n<li> قد يتم استبدال سياسات الإلغاء بسياسة رد أموال الضيف أو عمليات إلغاء الأمان أو الظروف المخففة. يرجى مراجعة هذه الاستثناءات. </ li>\r\n<li> سيتم الاحتفاظ بالضرائب المطبقة وسدادها. </ li>\r\n</ul>\r\n\r\n<p> نبسب ؛ </p>\r\n\r\n<h3> <strong> معتدل: رد الأموال بالكامل قبل 5 أيام من الوصول ، باستثناء الرسوم </ strong> </h3>\r\n\r\n<ul>\r\n<li> يتم دائمًا رد رسوم التنظيف في حالة عدم قيام الضيف بتسجيل الوصول. </ li>\r\n<li> رسوم خدمة Buy2rental غير قابلة للاسترداد. </ li>\r\n<li> إذا كانت هناك شكوى من أي من الطرفين ، فيجب إرسال إشعار إلى Buy2rental & nbsp؛ في غضون 24 ساعة من تسجيل الوصول. </ li>\r\n<li> سوف تتوسط Buy2rental عند الضرورة ، وله القول الفصل في جميع النزاعات. </ li>\r\n<li> يتم إلغاء الحجز رسميًا عندما ينقر الضيف على زر الإلغاء في صفحة تأكيد الإلغاء ، والذي يمكنه العثور عليه في Dashboard & gt؛ رحلاتك و GT. تغيير أو إلغاء. </ li>\r\n<li> قد يتم استبدال سياسات الإلغاء بسياسة رد أموال الضيف أو عمليات إلغاء الأمان أو الظروف المخففة. يرجى مراجعة هذه الاستثناءات. </ li>\r\n<li> سيتم الاحتفاظ بالضرائب المطبقة وسدادها. </ li>\r\n</ul>\r\n\r\n<p> نبسب ؛ </p>\r\n\r\n<h3> <strong> صارم: استرداد 50٪ حتى أسبوع واحد قبل الوصول ، باستثناء الرسوم </ strong> </h3>\r\n\r\n<ul>\r\n<li> يتم دائمًا رد رسوم التنظيف في حالة عدم قيام الضيف بتسجيل الوصول. </ li>\r\n<li> رسوم خدمة Buy2rental غير قابلة للاسترداد. </ li>\r\n<li> إذا كانت هناك شكوى من أي من الطرفين ، فيجب إرسال إشعار إلى Buy2rental في غضون 24 ساعة من تسجيل الوصول. </ li>\r\n<li> سوف تتوسط Buy2rental عند الضرورة ، وله القول الفصل في جميع النزاعات. </ li>\r\n<li> يتم إلغاء الحجز رسميًا عندما ينقر الضيف على زر الإلغاء في صفحة تأكيد الإلغاء ، والذي يمكنه العثور عليه في Dashboard & gt؛ رحلاتك و GT. تغيير أو إلغاء. </ li>\r\n<li> قد يتم استبدال سياسات الإلغاء بسياسة رد أموال الضيف أو عمليات إلغاء الأمان أو الظروف المخففة. يرجى مراجعة هذه الاستثناءات. </ li>\r\n<li> سيتم الاحتفاظ بالضرائب المطبقة وسدادها. </ li>\r\n</ul>\r\n</div>', 'second', 'Active', 'ar', 2, '2021-12-07 06:28:56', '2021-12-07 07:41:16'),
(68, 66, '取消政策', '', '<h2><strong>取消政策</strong></h2>\r\n\r\n<div class=\"cancellation_policy\">\r\n<p>&nbsp;</p>\r\n\r\n<p>Buy2rental 允许房东在我们将强制执行以保护房客和房东的三种标准化取消政策（灵活、中等和严格）中进行选择。我们网站上的每个列表和预订都将明确说明取消政策。客人可以通过查看他们的旅行计划，然后单击“取消”来取消和查看任何处罚。在适当的保留。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>灵活：抵达前 1 天全额退款，费用除外</strong></h3>\r\n\r\n<ul>\r\n<li>如果客人没有登记入住，清洁费一律退还。</li>\r\n<li>Buy2rental 服务费不予退还。</li>\r\n<li>如果任何一方提出投诉，必须在入住后 24 小时内通知 Buy2rental。</li>\r\n<li>Buy2rental 将在必要时进行调解，并对所有争议拥有最终决定权。</li>\r\n<li>当客人点击取消确认页面上的取消按钮（他们可以在仪表板中找到）时，预订被正式取消 &gt;你的旅行 &gt;更改或取消。</li>\r\n<li>取消政策可能会被宾客退款政策、安全取消或情有可原的情况所取代。请查看这些例外情况。</li>\r\n<li>将保留和免除适用的税款。</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>中等：抵达前 5 天全额退款，费用除外</strong></h3>\r\n\r\n<ul>\r\n<li>如果客人没有登记入住，清洁费一律退还。</li>\r\n<li>Buy2rental 服务费不予退还。</li>\r\n<li>如果任何一方提出投诉，必须在入住后 24 小时内通知 Buy2rental。</li>\r\n<li>Buy2rental 将在必要时进行调解，并对所有争议拥有最终决定权。</li>\r\n<li>当客人点击取消确认页面上的取消按钮（他们可以在仪表板中找到）时，预订被正式取消 &gt;你的旅行 &gt;更改或取消。</li>\r\n<li>取消政策可能会被宾客退款政策、安全取消或情有可原的情况所取代。请查看这些例外情况。</li>\r\n<li>将保留和免除适用的税款。</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>严格：抵达前 1 周前退还 50%，费用除外</strong></h3>\r\n\r\n<ul>\r\n<li>如果客人没有登记入住，清洁费一律退还。</li>\r\n<li>Buy2rental 服务费不予退还。</li>\r\n<li>如果任何一方提出投诉，必须在入住后 24 小时内通知 Buy2rental。</li>\r\n<li>Buy2rental 将在必要时进行调解，并对所有争议拥有最终决定权。</li>\r\n<li>当客人点击取消确认页面上的取消按钮（他们可以在仪表板中找到）时，预订被正式取消 &gt;你的旅行 &gt;更改或取消。</li>\r\n<li>取消政策可能会被宾客退款政策、安全取消或情有可原的情况所取代。请查看这些例外情况。</li>\r\n<li>将保留和免除适用的税款。</li>\r\n</ul>\r\n</div>', 'second', 'Active', 'ch', 3, '2021-12-07 06:28:56', '2021-12-07 07:41:16'),
(69, 66, 'Politiques d\'annulation', '', '<h2><strong>Politiques d\'annulation</strong></h2>\r\n\r\n<div class=\"cancellation_policy\">\r\n<p>&nbsp;</p>\r\n\r\n<p>Buy2rental permet aux hôtes de choisir parmi trois politiques d\'annulation standardisées (flexible, modérée et stricte) que nous appliquerons pour protéger à la fois l\'invité et l\'hôte. Chaque annonce et réservation sur notre site indiquera clairement la politique d\'annulation. Les voyageurs peuvent annuler et revoir les pénalités en consultant leurs projets de voyage, puis en cliquant sur « Annuler ». sur la réservation appropriée.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Flexible : Remboursement intégral 1 jour avant la date d\'arrivée, hors frais</strong></h3>\r\n\r\n<ul>\r\n<li>Les frais de ménage sont toujours remboursés si le client ne s\'est pas enregistré.</li>\r\n<li>Les frais de service Buy2rental ne sont pas remboursables.</li>\r\n<li>S\'il y a une plainte de l\'une ou l\'autre des parties, un avis doit être donné à Buy2rental dans les 24 heures suivant l\'enregistrement.</li>\r\n<li>Buy2rental arbitrera si nécessaire et aura le dernier mot dans tous les litiges.</li>\r\n<li>Une réservation est officiellement annulée lorsque le client clique sur le bouton d\'annulation sur la page de confirmation d\'annulation, qu\'il peut trouver dans le tableau de bord &gt ; Vos voyages &gt; Modifier ou annuler.</li>\r\n<li>Les politiques d\'annulation peuvent être remplacées par la politique de remboursement des invités, les annulations de sécurité ou des circonstances atténuantes. Veuillez consulter ces exceptions.</li>\r\n<li>Les taxes applicables seront retenues et remises.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Modéré : Remboursement intégral 5 jours avant la date d\'arrivée, hors frais</strong></h3>\r\n\r\n<ul>\r\n<li>Les frais de ménage sont toujours remboursés si le client ne s\'est pas enregistré.</li>\r\n<li>Les frais de service Buy2rental ne sont pas remboursables.</li>\r\n<li>S\'il y a une plainte de l\'une ou l\'autre des parties, un avis doit être donné à Buy2rental&nbsp;dans les 24 heures suivant l\'enregistrement.</li>\r\n<li>Buy2rental arbitrera si nécessaire et aura le dernier mot dans tous les litiges.</li>\r\n<li>Une réservation est officiellement annulée lorsque le client clique sur le bouton d\'annulation sur la page de confirmation d\'annulation, qu\'il peut trouver dans le tableau de bord &gt ; Vos voyages &gt; Modifier ou annuler.</li>\r\n<li>Les politiques d\'annulation peuvent être remplacées par la politique de remboursement des invités, les annulations de sécurité ou des circonstances atténuantes. Veuillez consulter ces exceptions.</li>\r\n<li>Les taxes applicables seront retenues et remises.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Strict : 50 % de remboursement jusqu\'à 1 semaine avant la date d\'arrivée, hors frais</strong></h3>\r\n\r\n<ul>\r\n<li>Les frais de ménage sont toujours remboursés si le client ne s\'est pas enregistré.</li>\r\n<li>Les frais de service Buy2rental ne sont pas remboursables.</li>\r\n<li>S\'il y a une plainte de l\'une ou l\'autre des parties, un avis doit être donné à Buy2rental dans les 24 heures suivant l\'enregistrement.</li>\r\n<li>Buy2rental arbitrera si nécessaire et aura le dernier mot dans tous les litiges.</li>\r\n<li>Une réservation est officiellement annulée lorsque le client clique sur le bouton d\'annulation sur la page de confirmation d\'annulation, qu\'il peut trouver dans le tableau de bord &gt ; Vos voyages &gt; Modifier ou annuler.</li>\r\n<li>Les politiques d\'annulation peuvent être remplacées par la politique de remboursement des invités, les annulations de sécurité ou des circonstances atténuantes. Veuillez consulter ces exceptions.</li>\r\n<li>Les taxes applicables seront retenues et remises.</li>\r\n</ul>\r\n</div>', 'second', 'Active', 'fr', 4, '2021-12-07 06:28:56', '2021-12-07 07:41:16'),
(70, 66, 'Políticas de Cancelamento', '', '<h2> <strong> Políticas de cancelamento </strong> </h2>\r\n\r\n<div class = \"cancellation_policy\">\r\n<p> & nbsp; </p>\r\n\r\n<p> Buy2rental permite que os hosts escolham entre três políticas de cancelamento padronizadas (flexível, moderada e estrita) que aplicaremos para proteger tanto o hóspede quanto o anfitrião. Cada listagem e reserva em nosso site indicará claramente a política de cancelamento. Os hóspedes podem cancelar e revisar quaisquer penalidades visualizando seus planos de viagem e clicando em & # 39; Cancelar & # 39; na reserva apropriada. </p>\r\n\r\n<p> & nbsp; </p>\r\n\r\n<h3> <strong> Flexível: Reembolso total 1 dia antes da chegada, exceto taxas </strong> </h3>\r\n\r\n<ul>\r\n<li> As taxas de limpeza são sempre reembolsadas caso o hóspede não tenha feito o check-in. </li>\r\n<li> A taxa de serviço Buy2rental não é reembolsável. </li>\r\n<li> Se houver uma reclamação de qualquer uma das partes, um aviso deve ser dado ao Buy2rental dentro de 24 horas após o check-in. </li>\r\n<li> Buy2rental mediará quando necessário e terá a palavra final em todas as disputas. </li>\r\n<li> Uma reserva é oficialmente cancelada quando o hóspede clica no botão de cancelamento na página de confirmação de cancelamento, que pode ser encontrado em Painel & gt; Suas viagens & gt; Alterar ou cancelar. </li>\r\n<li> As políticas de cancelamento podem ser substituídas pela Política de Reembolso de Hóspedes, cancelamentos de segurança ou circunstâncias atenuantes. Reveja essas exceções. </li>\r\n<li> Os impostos aplicáveis ​​serão retidos e remetidos. </li>\r\n</ul>\r\n\r\n<p> & nbsp; </p>\r\n\r\n<h3> <strong> Moderado: Reembolso total 5 dias antes da chegada, exceto taxas </strong> </h3>\r\n\r\n<ul>\r\n<li> As taxas de limpeza são sempre reembolsadas caso o hóspede não tenha feito o check-in. </li>\r\n<li> A taxa de serviço Buy2rental não é reembolsável. </li>\r\n<li> Se houver uma reclamação de qualquer uma das partes, um aviso deve ser enviado ao Buy2rental & nbsp; dentro de 24 horas após o check-in. </li>\r\n<li> Buy2rental mediará quando necessário e terá a palavra final em todas as disputas. </li>\r\n<li> Uma reserva é oficialmente cancelada quando o hóspede clica no botão de cancelamento na página de confirmação de cancelamento, que pode ser encontrado em Painel & gt; Suas viagens & gt; Alterar ou cancelar. </li>\r\n<li> As políticas de cancelamento podem ser substituídas pela Política de Reembolso de Hóspedes, cancelamentos de segurança ou circunstâncias atenuantes. Reveja essas exceções. </li>\r\n<li> Os impostos aplicáveis ​​serão retidos e remetidos. </li>\r\n</ul>\r\n\r\n<p> & nbsp; </p>\r\n\r\n<h3> <strong> Estrito: 50% de reembolso até 1 semana antes da chegada, exceto taxas </strong> </h3>\r\n\r\n<ul>\r\n<li> As taxas de limpeza são sempre reembolsadas caso o hóspede não tenha feito o check-in. </li>\r\n<li> A taxa de serviço Buy2rental não é reembolsável. </li>\r\n<li> Se houver uma reclamação de qualquer uma das partes, um aviso deve ser dado ao Buy2rental dentro de 24 horas após o check-in. </li>\r\n<li> Buy2rental mediará quando necessário e terá a palavra final em todas as disputas. </li>\r\n<li> Uma reserva é oficialmente cancelada quando o hóspede clica no botão de cancelamento na página de confirmação de cancelamento, que pode ser encontrado em Painel & gt; Suas viagens & gt; Alterar ou cancelar. </li>\r\n<li> As políticas de cancelamento podem ser substituídas pela Política de Reembolso de Hóspedes, cancelamentos de segurança ou circunstâncias atenuantes. Reveja essas exceções. </li>\r\n<li> Os impostos aplicáveis ​​serão retidos e remetidos. </li>\r\n</ul>\r\n</div>', 'second', 'Active', 'pt', 5, '2021-12-07 06:28:56', '2021-12-07 07:41:16'),
(71, 66, 'Политика отмены', '', '<h2> <strong> Политика отмены </strong> </h2>\r\n\r\n<div class = \"cancellation_policy\">\r\n<p> & nbsp; </p>\r\n\r\n<p> Buy2rental позволяет хостам выбирать из трех стандартных политик отмены (гибкая, умеренная и строгая), которые мы будем применять для защиты как гостя, так и хоста. В каждом объявлении и бронировании на нашем сайте будет четко указана политика отмены. Гости могут отменить и просмотреть любые штрафы, просмотрев свои планы поездок и нажав кнопку «Отменить». по соответствующему бронированию. </p>\r\n\r\n<p> & nbsp; </p>\r\n\r\n<h3> <strong> Гибко: полный возврат средств за 1 день до прибытия, за исключением сборов </strong> </h3>\r\n\r\n<ul>\r\n<li> Плата за уборку всегда возвращается, если гость не прошел регистрацию. </li>\r\n<li> Плата за услугу Buy2rental не возвращается. </li>\r\n<li> Если есть жалоба от любой из сторон, уведомление должно быть отправлено Buy2rental в течение 24 часов после регистрации. </li>\r\n<li> Buy2rental выступит посредником, когда это необходимо, и последнее слово во всех спорах. </li>\r\n<li> Бронирование официально отменяется, когда гость нажимает кнопку отмены на странице подтверждения отмены, которую он может найти в Личном кабинете & gt; Ваши поездки & gt; Изменить или отменить. </li>\r\n<li> Политика отмены бронирования может быть заменена Политикой возврата гостя, отменой бронирования по соображениям безопасности или смягчающими обстоятельствами. Просмотрите эти исключения. </li>\r\n<li> Применимые налоги будут удерживаться и перечисляться. </li>\r\n</ul>\r\n\r\n<p> & nbsp; </p>\r\n\r\n<h3> <strong> Умеренно: полный возврат средств за 5 дней до прибытия, за исключением сборов </strong> </h3>\r\n\r\n<ul>\r\n<li> Плата за уборку всегда возвращается, если гость не прошел регистрацию. </li>\r\n<li> Плата за услугу Buy2rental не возвращается. </li>\r\n<li> Если есть жалоба от любой из сторон, уведомление должно быть отправлено Buy2rental & nbsp; в течение 24 часов после регистрации. </li>\r\n<li> Buy2rental выступит посредником, когда это необходимо, и последнее слово во всех спорах. </li>\r\n<li> Бронирование официально отменяется, когда гость нажимает кнопку отмены на странице подтверждения отмены, которую он может найти в Личном кабинете & gt; Ваши поездки & gt; Изменить или отменить. </li>\r\n<li> Политика отмены бронирования может быть заменена Политикой возврата гостя, отменой бронирования по соображениям безопасности или смягчающими обстоятельствами. Просмотрите эти исключения. </li>\r\n<li> Применимые налоги будут удерживаться и перечисляться. </li>\r\n</ul>\r\n\r\n<p> & nbsp; </p>\r\n\r\n<h3> <strong> Строгое: возврат 50% за 1 неделю до прибытия, за исключением сборов </strong> </h3>\r\n\r\n<ul>\r\n<li> Плата за уборку всегда возвращается, если гость не прошел регистрацию. </li>\r\n<li> Плата за услугу Buy2rental не возвращается. </li>\r\n<li> Если есть жалоба от любой из сторон, уведомление должно быть отправлено Buy2rental в течение 24 часов после регистрации. </li>\r\n<li> Buy2rental выступит посредником, когда это необходимо, и последнее слово во всех спорах. </li>\r\n<li> Бронирование официально отменяется, когда гость нажимает кнопку отмены на странице подтверждения отмены, которую он может найти в Личном кабинете & gt; Ваши поездки & gt; Изменить или отменить. </li>\r\n<li> Политика отмены бронирования может быть заменена Политикой возврата гостя, отменой бронирования по соображениям безопасности или смягчающими обстоятельствами. Просмотрите эти исключения. </li>\r\n<li> Применимые налоги будут удерживаться и перечисляться. </li>\r\n</ul>\r\n</div>', 'second', 'Active', 'ru', 6, '2021-12-07 06:28:56', '2021-12-07 07:41:16'),
(72, 66, 'Políticas de cancelación', '', '<h2> <strong> Políticas de cancelación </strong> </h2>\r\n\r\n<div class = \"cancelación_política\">\r\n<p> & nbsp; </p>\r\n\r\n<p> Buy2rental permite a los anfitriones elegir entre tres políticas de cancelación estandarizadas (Flexible, Moderada y Estricta) que aplicaremos para proteger tanto al huésped como al anfitrión. Cada listado y reserva en nuestro sitio indicará claramente la política de cancelación. Los huéspedes pueden cancelar y revisar cualquier penalización al ver sus planes de viaje y luego hacer clic en & # 39; Cancelar & # 39; en la reserva correspondiente. </p>\r\n\r\n<p> & nbsp; </p>\r\n\r\n<h3> <strong> Flexible: reembolso completo 1 día antes de la llegada, excepto tarifas </strong> </h3>\r\n\r\n<ul>\r\n<li> Las tarifas de limpieza siempre se reembolsan si el huésped no se registró. </li>\r\n<li> La tarifa del servicio Buy2rental no es reembolsable. </li>\r\n<li> Si hay una queja de cualquiera de las partes, se debe notificar a Buy2rental dentro de las 24 horas posteriores al registro. </li>\r\n<li> Buy2rental mediará cuando sea necesario y tiene la última palabra en todas las disputas. </li>\r\n<li> Una reserva se cancela oficialmente cuando el huésped hace clic en el botón de cancelación en la página de confirmación de cancelación, que puede encontrar en Panel de control & gt; Tus viajes & gt; Cambiar o cancelar. </li>\r\n<li> Las políticas de cancelación pueden ser reemplazadas por la Política de reembolso para huéspedes, cancelaciones de seguridad o circunstancias atenuantes. Revise estas excepciones. </li>\r\n<li> Los impuestos aplicables se retendrán y remitirán. </li>\r\n</ul>\r\n\r\n<p> & nbsp; </p>\r\n\r\n<h3> <strong> Moderado: reembolso completo 5 días antes de la llegada, excepto tarifas </strong> </h3>\r\n\r\n<ul>\r\n<li> Las tarifas de limpieza siempre se reembolsan si el huésped no se registró. </li>\r\n<li> La tarifa del servicio Buy2rental no es reembolsable. </li>\r\n<li> Si hay una queja de cualquiera de las partes, se debe notificar a Buy2rental & nbsp; dentro de las 24 horas posteriores al registro. </li>\r\n<li> Buy2rental mediará cuando sea necesario y tiene la última palabra en todas las disputas. </li>\r\n<li> Una reserva se cancela oficialmente cuando el huésped hace clic en el botón de cancelación en la página de confirmación de cancelación, que puede encontrar en Panel de control & gt; Tus viajes & gt; Cambiar o cancelar. </li>\r\n<li> Las políticas de cancelación pueden ser reemplazadas por la Política de reembolso para huéspedes, cancelaciones de seguridad o circunstancias atenuantes. Revise estas excepciones. </li>\r\n<li> Los impuestos aplicables se retendrán y remitirán. </li>\r\n</ul>\r\n\r\n<p> & nbsp; </p>\r\n\r\n<h3> <strong> Estricto: reembolso del 50% hasta 1 semana antes de la llegada, excepto tarifas </strong> </h3>\r\n\r\n<ul>\r\n<li> Las tarifas de limpieza siempre se reembolsan si el huésped no se registró. </li>\r\n<li> La tarifa del servicio Buy2rental no es reembolsable. </li>\r\n<li> Si hay una queja de cualquiera de las partes, se debe notificar a Buy2rental dentro de las 24 horas posteriores al registro. </li>\r\n<li> Buy2rental mediará cuando sea necesario y tiene la última palabra en todas las disputas. </li>\r\n<li> Una reserva se cancela oficialmente cuando el huésped hace clic en el botón de cancelación en la página de confirmación de cancelación, que puede encontrar en Panel de control & gt; Tus viajes & gt; Cambiar o cancelar. </li>\r\n<li> Las políticas de cancelación pueden ser reemplazadas por la Política de reembolso para huéspedes, cancelaciones de seguridad o circunstancias atenuantes. Revise estas excepciones. </li>\r\n<li> Los impuestos aplicables se retendrán y remitirán. </li>\r\n</ul>\r\n</div>', 'second', 'Active', 'es', 7, '2021-12-07 06:28:56', '2021-12-07 07:41:16'),
(73, 66, 'İptal Koşulları', '', '<h2><strong>İptal Politikaları</strong></h2>\r\n\r\n<div class=\"cancellation_policy\">\r\n<p>&nbsp;</p>\r\n\r\n<p>Buy2rental, ev sahiplerinin hem misafiri hem de ev sahibini aynı şekilde korumak için uygulayacağımız üç standartlaştırılmış iptal politikası (Esnek, Orta ve Katı) arasından seçim yapmasına olanak tanır. Sitemizdeki her kayıt ve rezervasyon, iptal politikasını açıkça belirtecektir. Misafirler, seyahat planlarını görüntüleyerek ve ardından \'İptal\'i tıklayarak cezaları iptal edebilir ve gözden geçirebilir; uygun rezervasyonda.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Esnek: Ücretler hariç varıştan 1 gün önce tam geri ödeme</strong></h3>\r\n\r\n<ul>\r\n<li>Konuk giriş yapmadıysa temizlik ücretleri her zaman iade edilir.</li>\r\n<li>Buy2rental hizmet ücreti iade edilmez.</li>\r\n<li>Taraflardan herhangi birinin şikayeti varsa, check-in\'den sonraki 24 saat içinde Buy2rental\'e bildirilmelidir.</li>\r\n<li>Buy2rental gerektiğinde arabuluculuk yapacak ve tüm anlaşmazlıklarda son sözü söyleyecektir.</li>\r\n<li>Konuk, Kontrol Paneli &gt; Seyahatleriniz &gt; Değiştir veya İptal Et.</li>\r\n<li>İptal politikaları, Misafir Geri Ödeme Politikası, güvenlik iptalleri veya hafifletici nedenler tarafından geçersiz kılınabilir. Lütfen bu istisnaları inceleyin.</li>\r\n<li>Geçerli vergiler alıkonulacak ve havale edilecektir.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Orta: Ücretler hariç, varıştan 5 gün önce tam geri ödeme</strong></h3>\r\n\r\n<ul>\r\n<li>Konuk giriş yapmadıysa temizlik ücretleri her zaman iade edilir.</li>\r\n<li>Buy2rental hizmet ücreti iade edilmez.</li>\r\n<li>Taraflardan herhangi birinin şikayeti varsa, check-in\'den sonraki 24 saat içinde Buy2rental&nbsp;\'e bildirilmelidir.</li>\r\n<li>Buy2rental gerektiğinde arabuluculuk yapacak ve tüm anlaşmazlıklarda son sözü söyleyecektir.</li>\r\n<li>Konuk, Kontrol Paneli &gt; Seyahatleriniz &gt; Değiştir veya İptal Et.</li>\r\n<li>İptal politikaları, Misafir Geri Ödeme Politikası, güvenlik iptalleri veya hafifletici nedenler tarafından geçersiz kılınabilir. Lütfen bu istisnaları inceleyin.</li>\r\n<li>Geçerli vergiler alıkonulacak ve havale edilecektir.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Kesin: Ücretler hariç, varıştan 1 hafta öncesine kadar %50 geri ödeme</strong></h3>\r\n\r\n<ul>\r\n<li>Konuk giriş yapmadıysa temizlik ücretleri her zaman iade edilir.</li>\r\n<li>Buy2rental hizmet ücreti iade edilmez.</li>\r\n<li>Taraflardan herhangi birinin şikayeti varsa, check-in\'den sonraki 24 saat içinde Buy2rental\'e bildirilmelidir.</li>\r\n<li>Buy2rental gerektiğinde arabuluculuk yapacak ve tüm anlaşmazlıklarda son sözü söyleyecektir.</li>\r\n<li>Konuk, Kontrol Paneli &gt; Seyahatleriniz &gt; Değiştir veya İptal Et.</li>\r\n<li>İptal politikaları, Misafir Geri Ödeme Politikası, güvenlik iptalleri veya hafifletici nedenler tarafından geçersiz kılınabilir. Lütfen bu istisnaları inceleyin.</li>\r\n<li>Geçerli vergiler alıkonulacak ve havale edilecektir.</li>\r\n</ul>\r\n</div>', 'second', 'Active', 'tr', 8, '2021-12-07 06:28:56', '2021-12-07 07:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('demo@gmail.com', 'B4BcN0FmyOkVO8zEf6aw64mAgctYVc6ZoN43bftTNE9JrefDDm460PbzX5pehU9lL0HscZpaDOFxVwWi9j9lVIsOFO2YgYtY8wlI', '2021-07-05 05:20:37'),
('testuser@gmail.com', 'VqJih3cingiIQJy3hXywenLoNViOEW2Fln81RtbCroQ5209LGZzkfl2DGKV7yaQoV6h7xyvKwFG4SHbRLqeGbnpEnejWPs08RMqQ', '2021-07-20 05:49:23'),
('aaaaaaaaa@gmail.com', 'mAckdmmmph78DoIXQ8iP7Zf2e6u77RUgKuRwtFEwXCmbYlHdsyfPKKwZPoOUUrE9bHFJ5XU9i0KBGtHxVfGmTSwQW593PEoIDLXj', '2021-07-31 11:40:33'),
('bbbb@gmail.com', 'nRQ6q537K410jfBakmMkeewHWKhnIJsHYZ86IOyrQZqut8NYksUJMLLLfzNYRCTHiLNUdHp3QCjJEvxzFNcz0jsRjFcDHGqkoJQb', '2021-07-31 11:42:23'),
('athi@gmail.com', '0lcPVPgAnDGsesJwz0nPbiy6lostctuyYjRPwYaasZDhDwfZj7bdaWKO9YiwgyTe6VcfEwhC8xZxFF4wxMG1hSUwVUTNsfSVCT7U', '2021-08-11 17:36:15'),
('test10@gmail.com', 'C7nWArAFzrtKNKivqLnhkpGfPXNoOzobhYiD6eCgvZ03rIRwfoL2Ve65ez0HxWv8jeFEgNAiteMJas1IQykDNqMhKQkDfi6Vd7nt', '2021-08-17 10:44:03'),
('mshop@test.com', '3vWWG3LPQdrcNs21Ez28cRWqz1Uk368W1MHgIMvvLFSXrCQhYYHDP5QDvaBYkLecZjo9kygb7mRKJFrln2VWvGaOGtk7YG4faUYv', '2021-08-17 10:46:11'),
('aaaa@gmail.com', 'JtOh8vSvOb0PA8F86ZrbpGKevUUxhM5kv3JbNklODMMizw5bF6XJoqKmY30NjwuJQXx07zuX4qhlblPlIYrjneJ1gYYHiCR5a5MR', '2021-08-17 11:08:39'),
('mshopfg@test.com', 'pmtzqfgh8krEkE9wpWLkpzBMOfi6acqfCxp8PckvCOTaGjah50222XpfyohpR7nCMPSAeuuETydFZTXSfkxdAXKTgIU9fRhuvLWq', '2021-08-17 11:21:11'),
('hghg@sdhfhsgd.com', '11DGmSxAqTiliqL4kKJMNSnsT6VnGlmWitjJFNaAaOIR9A0dDScMKVGinAV2X4X9md3hIaNiEunX3J37tXHjfo7aIZoMsaNRFKHb', '2021-08-17 11:25:03'),
('vifyebiknu@biyac.com', 'JXelDM8UrNvPqcJfXGnNYXLSAkZUCzaERotmc3pkOG1nsxFkNdfvBTVnVePWZmICYuzOR76PH9n4O5vFvWbwkSOWye8yiNJ5oz8k', '2021-08-17 11:42:20'),
('test10@gmail.com', 'q3HM8GrJ8nVVq1Gjj1JKENlLKHoOyQ2AFzTJGQF9PpFM3u590QP32OdljyfUkcZnJxpw0bpYsUTphCEJAHR2dce3VjBBvYbaluFh', '2021-08-17 13:07:47'),
('albert@demo.com', 'P4Afh4Go1yBBUJngb59ZgCrDkCks2SjbeA7MjxJCpltpTzx6nkcYAGr3hatpVgFBnaNyHkgfm1I9tTlSmoHOSytztPAyrZZ5wqo7', '2021-08-23 15:41:47'),
('anna@demo.com', 'RlMnrdSXb6a3pQUbn4y3xOdQRVWliw2JUhOMwl3Mrg7N1okWDdZUvgdfzJsh1ZSe6mxe7tEKPXnhqyJrv3Yv1Mkpmv14xb8A4L9F', '2021-08-23 15:46:59'),
('vosheo@scrsot.com', '1yQz6s5GnG8lIXNeDY0OtzoILHpbz2jO32xN4fsEhyt9bOBaWnx6X0HnF6BvrqPTxBckOdDEX2r1BkSpejli6PudmgKX3NarojT1', '2021-08-26 10:17:15'),
('aaaa@gmail.com', 'DBEuGbVDq4VeaCRq1j7E8sI9DM6qdfV0m75jKSgWxZIHyud7Aob7env8PK1yAzbj8q9zFbKsA0PTq0pHsRr355DOkkWF66aLs9hv', '2021-08-26 10:18:27'),
('dfsgdf@hfghfd.com', 'CnBOG3JEXGw8MPnYtZM1WdRqqiZ9k76etvOsr8Y7N9bqP0SKKhNqlKqydE2ERiqz0V4rqrGrQCy1XNgaEaDZOI0dX646sB7QXY9l', '2021-08-26 10:19:59'),
('dfsgdf@gmaill.com', 'bfV2erTvg0UMZPnBse3ALoOZA65BgwMbhEb9zZSLtpXEtzRXhZIoJVU7CQyjhXC7EihCFcxhP5ba7raHGec3rVLt1rAnT9r5Zk4Q', '2021-08-26 10:20:15'),
('dfsgdf@gmail.com', 'jVXOSBoTD0NBJ6SghcBSoYT4X8dd2BdtvkV5AikYAGNlTsDujJBeFX8Fn2P9rGk0PUqMcR7ynuyIixrDQnS0LoUTVGs6pTRYusvo', '2021-08-26 10:20:27'),
('demoaccount@demo.com', '2nDsQY3r4u4y4BCvdaAxy3mXavkGT1DMoUPBIxkUMcmQRBqbWCJwL7pEaoURN0eZG9WrxfPULkcw8rTwZ6aMXVsjVYCfDM4ZZMtJ', '2021-09-02 09:51:41'),
('demoaccount@demo.com', 'YEHUA2vz3JzQalIfhgMP0JgWuZoQdUDqXTdqv2dtv3qhDuXIwPpXDcFpEWM8lZxwMMUJ4Deidwb2alTzv1Hc4YMKxAjmveaGzdMW', '2021-09-02 09:56:07'),
('albert@demo.com', 'ZjNKAWrkoo7AhugH5XFTSkxQfTJ5PyJNU13UeuFo11PtxR44MZ12yhwOaqan7wQ3wE7oS4AWulzAx5RiGqwWugT708mfKcofjtPt', '2021-09-13 03:59:37'),
('siprai@scrsot.com', 'bx0lTyq38N1wPhFB18TkjVxhyU3Fx9hl5Edq2RKxftezSHiMitq2BbsRU71iGbxGX41AwSVNPcz5WWCuHnXfmBhJWK0vmirrMo3F', '2021-09-13 05:26:54'),
('sonsimon159@gmail.com', 'czh3eBaHjSp0Dy3jMDt7qnDq5lXCXNWym82RhkGxslAifIHg10ihaAhy2HkPSBNvpUlwMp7RatZ8XTIm6cZUNTfXHtOIjro4CXYb', '2021-12-02 01:16:50'),
('charlesj2195@gmail.com', '67Rd691GnSmh4RBlMJuUcxM3zJ9NO1p5MIPnVfyfaXgIIEfQazNVmgdt3CRQEP1UF0mgtMPkxg6ePd894eh4029mh0Wh1FXJnOlh', '2021-12-02 01:20:53'),
('test100@gmail.com', '7HFCZatpZgj6QygXybnr9YNB4iSput6MIcRzyoTm8jItGrsBF0CRcKgT55aK9v9Ccf3Aac9dWfWZPDkdRXinnCUYLwA8VS6zOv8u', '2021-12-17 08:02:13'),
('gdfg@gmail.com', 'GhUEBMOrJ6t7ZI6h8af3qOgXDDvWJJzwkibuy3ULqQxN8mZrYhUa7YBkoukoc6bTTx11LicuFPDcGCZQwqPgCl850R2GTBemVC76', '2021-12-24 02:20:57'),
('test12@gmail.com', 'KcyIu91h1ZeBWpaZQ1L5UB5tAxFlNkxy9cjsSwX3rM5aOzVhZ4uO7Felgsh3VJCkIyfaqDwIaWn99gSWi6aIjufJIBbERZdN8B9R', '2021-12-24 02:22:10'),
('jhon@demo.com', 'eqy328HIe9nOkhsltpxZNzqu6MWOJGfSNyLqvtV0lTmi2pfP9cGx9E7qz7irCCU5kpcNmpeZwB55bw1fpiexwd2Gu4JiAEhttQh7', '2021-12-30 01:34:55'),
('migrateshop20@gmail.com', 'wP8o5jpAQow1u2fOXc0i7yMGRWnbIU6hbG48Diegd22Faz1TRNUMYBwEIK27jD61AH2jzIjFzZLphEJTcG0rGI5EyQCKwMTaP0rk', '2022-01-12 04:39:48'),
('migrateshop20@gmail.com', '07FXLcFwfXrTNL4ruQsOML8NSb3pITfQuUu78zYJTM89SwNfP0OwCYRQAXg9qlyuVtoavPawoHCP6pXvc2kpH2KQmr2Ju77eLqDC', '2022-01-12 04:42:43'),
('demo@gmail.com', 'n09MFEkxMBOaSuKu1grN4LGtC0OtqDz8ZNuuepfxOFaRqkF34wWaxPgNkeHXTC9f25FunljgpSUghfXdoT5XqUAWnixmqCxGIzvi', '2022-05-10 02:51:16'),
('aalvinmark92@gmail.com', '42TEL3uBuBfmr3EFvkDPPOulc2MF9gseHPIho40QzT4FFFMBaFh2ivln1dnZdYJVnPdV12oBUs9pwzfx6JtCtKVvSKbcdnrN4Khk', '2022-08-12 00:39:23'),
('graciaceline21@gmail.com', 'dxoZDq2ph8OKRP0guqd0OJFNkBqO8sw1fusNZCbgXksQMsuy2e1xn5WlyX6XO0lHfsLnJLDtXI64ipdhUFubUrbeKd0L2ui3aq7O', '2022-08-12 01:05:59'),
('testidfdnggg@gmail.com', 'VWxJX2SbJDCPA0GifXdkFcR1vbZDG51Muy2J9GalqwzEjqb2DVnJxkJhXpeV1RNqRLy2rpyWDSgMBsdrWclTWVZrJqljPNhsV7EU', '2022-08-19 04:19:22'),
('charles@gmail.com', '8NWKZ7b75GQt0HRUysRDSdTOKdRkVvQTLmWgj3VxP5vNCjc66aTzHbiTuBDb0TSdc00f9fNA8VsyVuiOHL1qfSsVmMyTNij7P3iP', '2022-08-19 04:56:21'),
('demo@gmail.com', 'ZHqHH70oLIlyCCwvWOCg49wTCSb98a7cHk6hO8i5JkzZXIuVQFHw6QrNoAfU2dHLZHWxauowGHUqjwmDGpsxOr56MJw3rrcZsNDx', '2022-09-02 05:59:14'),
('albert@demo.com', 'EcNLTwwLnjdemhIVYbNSfD1bSFnAhMDSXXS2Nh91eOpBVgfgf6DSiWGnZufQw0rHibNgh7KsY8j7al8W5YXlbUmXUlhZlJit9msC', '2022-09-02 07:18:04'),
('aalvinmark92@gmail.com', 'Ck3N4cyBr9DJy4Ro3U6lTQ3b8s4IxNsxxSY44Dw0G6FLnKAZAEvsdIpPz8DGJRyyJxqBFEYkbuqO0UMj9wBkKWf2QYJz6pw0aAWR', '2022-09-03 01:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `status`) VALUES
(1, 'Paypal', 'Active'),
(2, 'Stripe', 'Active'),
(3, 'Wallet', 'Active'),
(4, 'Bank', 'Active'),
(5, 'Razorpay', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payouts`
--

CREATE TABLE `payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_type` enum('Host','Guest') COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `penalty_amount` double NOT NULL DEFAULT '0',
  `status` enum('Completed','Future') COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payouts`
--

INSERT INTO `payouts` (`id`, `booking_id`, `user_id`, `property_id`, `user_type`, `account`, `amount`, `penalty_amount`, `status`, `currency_code`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 6, 'Host', NULL, 171, 0, 'Future', 'USD', '2022-09-03 02:17:17', '2022-09-03 02:17:17'),
(2, 2, 2, 16, 'Host', NULL, 47, 0, 'Future', 'USD', '2022-09-03 02:23:28', '2022-09-03 02:23:28'),
(3, 2, 2, 16, 'Host', NULL, 47, 0, 'Future', 'USD', '2022-09-03 02:25:00', '2022-09-03 02:25:00'),
(4, 3, 1, 4, 'Host', NULL, 43, 0, 'Future', 'USD', '2022-09-03 02:27:20', '2022-09-03 02:27:20'),
(5, 4, 2, 8, 'Host', NULL, 24, 0, 'Future', 'USD', '2022-09-03 02:31:29', '2022-09-03 02:31:29'),
(6, 5, 2, 23, 'Host', NULL, 177, 0, 'Future', 'USD', '2022-09-16 06:53:21', '2022-09-16 06:53:21'),
(7, 5, 2, 23, 'Host', NULL, 177, 0, 'Future', 'USD', '2022-09-16 07:08:13', '2022-09-16 07:08:13'),
(8, 6, 2, 23, 'Host', NULL, 177, 0, 'Future', 'USD', '2022-09-19 02:27:54', '2022-09-19 02:27:54'),
(9, 6, 2, 23, 'Host', NULL, 177, 0, 'Future', 'USD', '2022-09-19 02:41:43', '2022-09-19 02:41:43'),
(10, 7, 2, 25, 'Host', NULL, 57, 0, 'Future', 'USD', '2022-09-21 00:08:35', '2022-09-21 00:08:35'),
(11, 7, 2, 25, 'Host', NULL, 57, 0, 'Future', 'USD', '2022-09-21 00:18:08', '2022-09-21 00:18:08'),
(13, 8, 3, 8, 'Guest', '', 27, 0, 'Completed', 'USD', '2022-09-21 06:38:35', '2022-09-21 06:40:24'),
(14, 9, 2, 17, 'Host', NULL, 57, 0, 'Future', 'USD', '2022-09-21 07:27:25', '2022-09-21 07:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `payout_penalties`
--

CREATE TABLE `payout_penalties` (
  `id` int(10) UNSIGNED NOT NULL,
  `payout_id` int(11) NOT NULL,
  `penalty_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout_settings`
--

CREATE TABLE `payout_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `swift_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `selected` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payout_settings`
--

INSERT INTO `payout_settings` (`id`, `user_id`, `type`, `email`, `account_name`, `account_number`, `bank_branch_name`, `bank_branch_city`, `bank_branch_address`, `country`, `swift_code`, `bank_name`, `is_active`, `selected`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'aalvinmark92@gmail.com', 'Aalvin Mark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'No', '2022-09-21 06:42:53', '2022-09-21 06:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `penalty`
--

CREATE TABLE `penalty` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` enum('Host','Guest') COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `remaining_penalty` double NOT NULL DEFAULT '0',
  `reason` enum('cancelation','demurrage','violation_of_rules') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Pending','Completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'manage_admin', 'Manage Admin', 'Manage Admin Users', NULL, NULL),
(2, 'customers', 'View Customers', 'View Customer', NULL, NULL),
(3, 'add_customer', 'Add Customer', 'Add Customer', NULL, NULL),
(4, 'edit_customer', 'Edit Customer', 'Edit Customer', NULL, NULL),
(5, 'properties', 'View Properties', 'View Properties', NULL, NULL),
(6, 'add_properties', 'Add Properties', 'Add Properties', NULL, NULL),
(7, 'edit_properties', 'Edit Properties', 'Edit Properties', NULL, NULL),
(8, 'delete_property', 'Delete Property', 'Delete Property', NULL, NULL),
(9, 'manage_bookings', 'Manage Bookings', 'Manage Bookings', NULL, NULL),
(10, 'manage_email_template', 'Manage Email Template', 'Manage Email Template', NULL, NULL),
(11, 'view_payouts', 'View Payouts', 'View Payouts', NULL, NULL),
(12, 'manage_amenities', 'Manage Amenities', 'Manage Amenities', NULL, NULL),
(13, 'manage_pages', 'Manage Pages', 'Manage Pages', NULL, NULL),
(14, 'manage_reviews', 'Manage Reviews', 'Manage Reviews', NULL, NULL),
(15, 'view_reports', 'View Reports', 'View Reports', NULL, NULL),
(16, 'general_setting', 'Settings', 'Settings', NULL, NULL),
(17, 'preference', 'Preference', 'Preference', NULL, NULL),
(18, 'manage_banners', 'Manage Banners', 'Manage Banners', NULL, NULL),
(19, 'starting_cities_settings', 'Starting Cities Settings', 'Starting Cities Settings', NULL, NULL),
(20, 'manage_property_type', 'Manage Property Type', 'Manage Property Type', NULL, NULL),
(21, 'space_type_setting', 'Space Type Setting', 'Space Type Setting', NULL, NULL),
(22, 'manage_bed_type', 'Manage Bed Type', 'Manage Bed Type', NULL, NULL),
(23, 'manage_currency', 'Manage Currency', 'Manage Currency', NULL, NULL),
(24, 'manage_country', 'Manage Country', 'Manage Country', NULL, NULL),
(25, 'manage_amenities_type', 'Manage Amenities Type', 'Manage Amenities Type', NULL, NULL),
(26, 'email_settings', 'Email Settings', 'Email Settings', NULL, NULL),
(27, 'manage_fees', 'Manage Fees', 'Manage Fees', NULL, NULL),
(28, 'manage_language', 'Manage Language', 'Manage Language', NULL, NULL),
(29, 'manage_metas', 'Manage Metas', 'Manage Metas', NULL, NULL),
(30, 'api_informations', 'Api Credentials', 'Api Credentials', NULL, NULL),
(31, 'payment_settings', 'Payment Settings', 'Payment Settings', NULL, NULL),
(32, 'social_links', 'Social Links', 'Social Links', NULL, NULL),
(33, 'manage_roles', 'Manage Roles', 'Manage Roles', NULL, NULL),
(34, 'database_backup', 'Database Backup', 'Database Backup', NULL, NULL),
(35, 'manage_sms', 'Manage SMS', 'Manage SMS', NULL, NULL),
(36, 'manage_messages', 'Manage Messages', 'Manage Messages', NULL, NULL),
(37, 'edit_messages', 'Edit Messages', 'Edit Messages', NULL, NULL),
(38, 'manage_testimonial', 'Manage Testimonial', 'Manage Testimonial', NULL, NULL),
(39, 'add_testimonial', 'Add Testimonial', 'Add Testimonial', NULL, NULL),
(40, 'edit_testimonial', 'Edit Testimonial', 'Edit Testimonial', NULL, NULL),
(41, 'delete_testimonial', 'Delete Testimonial', 'Delete Testimonial', NULL, NULL),
(42, 'manage_penalty', 'Penalty', 'Penalty', NULL, NULL),
(43, 'experience', 'View Experience', 'View Experience', NULL, NULL),
(44, 'add-experience', 'Add Experience', 'Add Experience', NULL, NULL),
(45, 'manage_experience_category', 'Manage Experience Category', 'Manage Experience Category', NULL, NULL),
(46, 'manage_inclusion', 'Manage Inclusion', 'Manage Inclusion', NULL, NULL),
(47, 'manage_exclusion', 'Manage Exclusion', 'Manage Exclusion', NULL, NULL),
(48, 'edit_experience', 'Edit Experience', 'Edit Experience', NULL, NULL),
(49, 'delete_demo_content', 'Delete Demo Content', 'Delete Demo Content', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
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
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host_id` int(11) NOT NULL,
  `bedrooms` tinyint(4) DEFAULT NULL,
  `beds` tinyint(4) DEFAULT NULL,
  `bed_type` int(10) UNSIGNED DEFAULT NULL,
  `bathrooms` double(8,2) DEFAULT NULL,
  `amenities` longtext COLLATE utf8mb4_unicode_ci,
  `property_type` int(11) NOT NULL DEFAULT '0',
  `space_type` int(11) NOT NULL DEFAULT '0',
  `accommodates` tinyint(4) DEFAULT NULL,
  `booking_type` enum('instant','request') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'request',
  `cancellation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Flexible',
  `status` enum('Unlisted','Listed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unlisted',
  `recomended` tinyint(4) DEFAULT NULL,
  `admin_approval` int(50) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'property',
  `experience_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_booking_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerary` text COLLATE utf8mb4_unicode_ci,
  `inclusion` longtext COLLATE utf8mb4_unicode_ci,
  `exclusion` longtext COLLATE utf8mb4_unicode_ci,
  `check_in_after` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_out_before` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_status` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `slug`, `url_name`, `host_id`, `bedrooms`, `beds`, `bed_type`, `bathrooms`, `amenities`, `property_type`, `space_type`, `accommodates`, `booking_type`, `cancellation`, `status`, `recomended`, `admin_approval`, `type`, `experience_type`, `duration`, `exp_booking_type`, `itinerary`, `inclusion`, `exclusion`, `check_in_after`, `check_out_before`, `deleted_at`, `created_at`, `updated_at`, `deleted_status`) VALUES
(1, 'Shared room in New York', 'shared-room-in-new-york', NULL, 1, 3, 2, 1, 2.00, '1,194,195,196,197,198,199,200,,2,61,62,63,64,65,66,67,,3,229,230,231,232,233,234,235,,4,250,251,252,253,254,255,256,,6,124,125,126,127,128,129,130,,7,131,132,133,134,135,136,137,,21,187,188,189,190,191,192,193,,27,82,83,84,85,86,87,88,,28,222,223,224,225,226,227,228,,29,173,174,175,176,177,178,179,,30,96,97,98,99,100,101,102,,31,180,181,182,183,184,185,186,', 2, 3, 4, 'request', 'Flexible', 'Listed', NULL, 1, 'property', NULL, NULL, NULL, NULL, NULL, NULL, '5', '23', NULL, '2022-09-02 06:02:24', '2022-09-02 07:11:46', 'No'),
(2, 'Entire Home in Paris', 'entire-home-in-paris', NULL, 1, 4, 4, 2, 4.00, '1,2,4,6,7,13,14,16,18,19,20,21,27,29,30', 7, 1, 10, 'instant', 'Flexible', 'Listed', 1, 1, 'property', NULL, NULL, NULL, NULL, NULL, NULL, '6', '22', NULL, '2022-09-02 06:11:44', '2022-10-06 05:20:33', 'No'),
(3, 'Villa in England', 'villa-in-england', NULL, 1, 5, 5, 3, 4.00, '1,2,4,6,7,8,13,14,15,16,17,19,20,21,27,28,29', 9, 1, 15, 'instant', 'Flexible', 'Listed', 1, 1, 'property', NULL, NULL, NULL, NULL, NULL, NULL, '7', '22', NULL, '2022-09-02 06:39:54', '2022-10-06 05:19:37', 'No'),
(4, 'Boat House in Alappuzha', 'boat-house-in-alappuzha', NULL, 1, 2, 2, 2, 2.00, '2,61,62,63,64,65,66,67,,6,124,125,126,127,128,129,130,,7,131,132,133,134,135,136,137,,21,187,188,189,190,191,192,193,,27,82,83,84,85,86,87,88,,28,222,223,224,225,226,227,228,,29,173,174,175,176,177,178,179,,30,96,97,98,99,100,101,102,,31,180,181,182,183,184,185,186,', 13, 1, 2, 'instant', 'Flexible', 'Listed', NULL, 1, 'property', NULL, NULL, NULL, NULL, NULL, NULL, '6', '21', NULL, '2022-09-02 06:53:02', '2022-09-05 06:07:35', 'No'),
(5, 'Tree House in Nice', 'tree-house-in-nice', NULL, 1, 2, 2, 3, 1.00, '1,194,195,196,197,198,199,200,,2,61,62,63,64,65,66,67,,4,250,251,252,253,254,255,256,,6,124,125,126,127,128,129,130,,14,40,41,42,43,44,45,46,', 12, 2, 3, 'instant', 'Flexible', 'Listed', NULL, 1, 'property', NULL, NULL, NULL, NULL, NULL, NULL, '7', '23', NULL, '2022-09-02 06:59:24', '2022-09-02 07:11:27', 'No'),
(6, 'Tent House in New York', 'tent-house-in-new-york', NULL, 2, 1, 1, 1, 1.00, '1,2,13,14,29,30', 26, 2, 2, 'instant', 'Moderate', 'Listed', 1, 1, 'property', NULL, NULL, NULL, NULL, NULL, NULL, '8', '20', NULL, '2022-09-02 07:22:45', '2022-10-06 05:18:20', 'No'),
(7, 'Unique stays in Island', 'unique-stays-in-island', NULL, 2, 2, 2, 3, 2.00, '1,194,195,196,197,198,199,200,,2,61,62,63,64,65,66,67,,4,250,251,252,253,254,255,256,,7,131,132,133,134,135,136,137,,14,40,41,42,43,44,45,46,,21,187,188,189,190,191,192,193,,27,82,83,84,85,86,87,88,,29,173,174,175,176,177,178,179,,30,96,97,98,99,100,101,102,,31,180,181,182,183,184,185,186,', 21, 4, 4, 'instant', 'Strict', 'Listed', NULL, 1, 'property', NULL, NULL, NULL, NULL, NULL, NULL, '10', '23', NULL, '2022-09-02 07:29:15', '2022-09-13 01:52:09', 'No'),
(8, 'Hut in La Celle-Sous-Gouzon', 'hut-in-la-celle-sous-gouzon', NULL, 2, 1, 1, 1, 1.00, '1,194,195,196,197,198,199,200,,4,250,251,252,253,254,255,256,,6,124,125,126,127,128,129,130,,7,131,132,133,134,135,136,137,,14,40,41,42,43,44,45,46,,21,187,188,189,190,191,192,193,,27,82,83,84,85,86,87,88,,30,96,97,98,99,100,101,102,', 24, 1, 2, 'instant', 'Flexible', 'Listed', NULL, 1, 'property', NULL, NULL, NULL, NULL, NULL, NULL, '6', '20', NULL, '2022-09-02 07:37:34', '2022-09-02 07:41:07', 'No'),
(9, 'Castle in Roma', 'castle-in-roma', NULL, 2, 2, 2, 3, 2.00, '2,61,62,63,64,65,66,67,,3,229,230,231,232,233,234,235,,4,250,251,252,253,254,255,256,,6,124,125,126,127,128,129,130,,14,40,41,42,43,44,45,46,,15,145,146,147,148,149,150,151,,16,54,55,56,57,58,59,60,,18,208,209,210,211,212,213,214,,19,243,244,245,246,247,248,249,,27,82,83,84,85,86,87,88,,28,222,223,224,225,226,227,228,,29,173,174,175,176,177,178,179,,30,96,97,98,99,100,101,102,,31,180,181,182,183,184,185,186,', 10, 1, 5, 'request', 'Moderate', 'Listed', NULL, 1, 'property', NULL, NULL, NULL, NULL, NULL, NULL, '6', '23', NULL, '2022-09-02 07:44:54', '2022-09-02 07:49:48', 'No'),
(10, 'Dorm in Thailand', 'dorm-in-thailand', NULL, 2, 1, 1, 1, 1.00, '1,2,4,5,6,7,21,29,30', 11, 1, 2, 'instant', 'Flexible', 'Listed', 1, 1, 'property', NULL, NULL, NULL, NULL, NULL, NULL, '6', '23', NULL, '2022-09-02 07:53:56', '2022-10-06 05:12:27', 'No'),
(11, 'Active Adventure & Stay with Locals', 'active-adventure-stay-with-locals', NULL, 1, NULL, NULL, NULL, NULL, '0', 1, 1, 5, 'instant', 'Flexible', 'Listed', 1, 1, 'experience', '1', '2 Days 1 Night', '3', NULL, '1,2,3,4,5,6,7,8,,9,10,11,12,13,14,15,16,,17,18,19,20,21,22,23,24,', '1,2,3,4,5,6,7,8,,25,26,27,28,29,30,31,32,', NULL, NULL, NULL, '2022-09-02 23:47:37', '2022-10-07 03:52:09', 'No'),
(12, 'Backroads - Beautiful Bali Home Stay', 'backroads-beautiful-bali-home-stay', NULL, 1, NULL, NULL, NULL, NULL, '0', 1, 1, 10, 'instant', 'Moderate', 'Listed', 1, 1, 'experience', '33', '3 Days 2 Nights', '1', NULL, '1,2,3,4,5,6,7,8,,9,10,11,12,13,14,15,16,,17,18,19,20,21,22,23,24,,25,26,27,28,29,30,31,32,,33,34,35,36,37,38,39,40,,41,42,43,44,45,46,47,48,,49,50,51,52,53,54,55,56,', '1,2,3,4,5,6,7,8,,9,10,11,12,13,14,15,16,,17,18,19,20,21,22,23,24,,25,26,27,28,29,30,31,32,', NULL, NULL, NULL, '2022-09-03 00:07:36', '2022-10-07 03:52:13', 'No'),
(13, 'Meet over 200 rescued animals!', 'meet-over-200-rescued-animals', NULL, 1, NULL, NULL, NULL, NULL, '0', 1, 1, 6, 'instant', 'Flexible', 'Listed', NULL, 1, 'experience', '33,34,35,36,37,38,39,40,', '3 Hours', '2', NULL, '1,2,3,4,5,6,7,8,,9,10,11,12,13,14,15,16,,17,18,19,20,21,22,23,24,,33,34,35,36,37,38,39,40,', '1,2,3,4,5,6,7,8,,9,10,11,12,13,14,15,16,,17,18,19,20,21,22,23,24,,25,26,27,28,29,30,31,32,', NULL, NULL, NULL, '2022-09-03 00:13:10', '2022-09-03 00:18:19', 'No'),
(14, 'Mount Trekking to Himalayas', 'mount-trekking-to-himalayas', NULL, 1, NULL, NULL, NULL, NULL, '0', 1, 1, 5, 'request', 'Flexible', 'Listed', 1, 1, 'experience', '33', '3 Days 2 Nights', '1', NULL, '9,10,11,12,13,14,15,16,,17,18,19,20,21,22,23,24,,33,34,35,36,37,38,39,40,', '1,2,3,4,5,6,7,8,,25,26,27,28,29,30,31,32,', NULL, NULL, NULL, '2022-09-03 00:19:20', '2022-10-07 03:52:23', 'No'),
(15, 'Family Trip with Local Guide', 'family-trip-with-local-guide', NULL, 1, NULL, NULL, NULL, NULL, '0', 1, 1, 6, 'instant', 'Flexible', 'Listed', NULL, 1, 'experience', '25,26,27,28,29,30,31,32,', '2 Days 1 Night', '3', NULL, '1,2,3,4,5,6,7,8,,9,10,11,12,13,14,15,16,,41,42,43,44,45,46,47,48,', '1,2,3,4,5,6,7,8,,25,26,27,28,29,30,31,32,', NULL, NULL, NULL, '2022-09-03 00:30:10', '2022-09-13 01:54:01', 'No'),
(16, 'Kochi Hills Trekking', 'kochi-hills-trekking', NULL, 2, NULL, NULL, NULL, NULL, '0', 1, 1, 5, 'instant', 'Strict', 'Listed', 1, 1, 'experience', '33', '2 Days 1 Night', '3', NULL, '1,2,3,4,5,6,7,8,,9,10,11,12,13,14,15,16,,33,34,35,36,37,38,39,40,,41,42,43,44,45,46,47,48,', '1,2,3,4,5,6,7,8,,17,18,19,20,21,22,23,24,,25,26,27,28,29,30,31,32,', NULL, NULL, NULL, '2022-09-03 00:43:04', '2022-10-07 03:51:45', 'No'),
(17, 'Adventure Helicopter Ride', 'adventure-helicopter-ride', NULL, 2, NULL, NULL, NULL, NULL, '0', 1, 1, 2, 'instant', 'Flexible', 'Listed', NULL, 1, 'experience', '33,34,35,36,37,38,39,40,', '2 Hours', '2', NULL, '1,2,3,4,5,6,7,8,,25,26,27,28,29,30,31,32,,41,42,43,44,45,46,47,48,,49,50,51,52,53,54,55,56,', '1,2,3,4,5,6,7,8,,9,10,11,12,13,14,15,16,,17,18,19,20,21,22,23,24,,25,26,27,28,29,30,31,32,', NULL, NULL, NULL, '2022-09-03 00:59:02', '2022-09-03 01:04:44', 'No'),
(18, 'Trekking in Munnar', 'trekking-in-munnar', NULL, 2, NULL, NULL, NULL, NULL, '0', 1, 1, 5, 'instant', 'Flexible', 'Listed', 1, 1, 'experience', '1', '3 Days 2 Nights', '3', NULL, '9,10,11,12,13,14,15,16,,17,18,19,20,21,22,23,24,,25,26,27,28,29,30,31,32,,33,34,35,36,37,38,39,40,,41,42,43,44,45,46,47,48,', '1,2,3,4,5,6,7,8,,9,10,11,12,13,14,15,16,,25,26,27,28,29,30,31,32,', NULL, NULL, NULL, '2022-09-03 01:05:46', '2022-10-07 03:52:47', 'No'),
(19, 'Parasailing in Goa', 'parasailing-in-goa', NULL, 2, NULL, NULL, NULL, NULL, '0', 1, 1, 1, 'instant', 'Flexible', 'Listed', 1, 1, 'experience', '9', '1 Hour', '2', NULL, '1,2,3,4,5,6,7,8,,25,26,27,28,29,30,31,32,,49,50,51,52,53,54,55,56,', '1,2,3,4,5,6,7,8,,9,10,11,12,13,14,15,16,,17,18,19,20,21,22,23,24,', NULL, NULL, NULL, '2022-09-03 01:40:25', '2022-10-07 03:52:58', 'No'),
(20, 'Adventure Microlight Flying', 'adventure-microlight-flying', NULL, 2, NULL, NULL, NULL, NULL, '0', 1, 1, 2, 'request', 'Flexible', 'Listed', 1, 1, 'experience', '17', '2 Hours', '2', NULL, '1,2,3,4,5,6,7,8,,9,10,11,12,13,14,15,16,,25,26,27,28,29,30,31,32,,49,50,51,52,53,54,55,56,', '1,2,3,4,5,6,7,8,,9,10,11,12,13,14,15,16,', NULL, NULL, NULL, '2022-09-03 01:52:12', '2022-10-07 03:51:23', 'No'),
(21, 'Tree House in Nice', 'tree-house-in-nice', NULL, 1, 2, 2, 3, 1.00, '1,194,195,196,197,198,199,200,,2,61,62,63,64,65,66,67,,4,250,251,252,253,254,255,256,,6,124,125,126,127,128,129,130,,14,40,41,42,43,44,45,46,', 12, 2, 3, 'instant', 'Flexible', 'Listed', NULL, 0, 'property', NULL, NULL, NULL, NULL, NULL, NULL, '7', '23', NULL, '2022-09-05 04:19:08', '2022-09-05 04:19:44', 'No'),
(22, 'Family Trip with Local Guide', 'family-trip-with-local-guide', NULL, 1, NULL, NULL, NULL, NULL, '0', 1, 1, 6, 'request', 'Flexible', 'Listed', NULL, 0, 'experience', '25,26,27,28,29,30,31,32,', '2 Days 1 Night', '3', NULL, '1,2,3,4,5,6,7,8,,9,10,11,12,13,14,15,16,,41,42,43,44,45,46,47,48,', '1,2,3,4,5,6,7,8,,25,26,27,28,29,30,31,32,', NULL, NULL, NULL, '2022-09-05 04:20:18', '2022-09-20 02:13:15', 'No'),
(23, 'Bungalow in London', 'bungalow-in-london', NULL, 2, 2, 2, 3, 2.00, '1,194,195,196,197,198,199,200,,2,61,62,63,64,65,66,67,,3,229,230,231,232,233,234,235,,4,250,251,252,253,254,255,256,,5,152,153,154,155,156,157,158,,6,124,125,126,127,128,129,130,,7,131,132,133,134,135,136,137,,14,40,41,42,43,44,45,46,,16,54,55,56,57,58,59,60,,21,187,188,189,190,191,192,193,,27,82,83,84,85,86,87,88,,28,222,223,224,225,226,227,228,,29,173,174,175,176,177,178,179,,30,96,97,98,99,100,101,102,,31,180,181,182,183,184,185,186,', 7, 1, 4, 'request', 'Flexible', 'Listed', NULL, 1, 'property', NULL, NULL, NULL, NULL, NULL, NULL, '6', '23', NULL, '2022-09-15 07:16:14', '2022-09-21 00:51:33', 'No'),
(24, 'Trekking in Thekkady test', 'trekking-in-thekkady-test', NULL, 2, NULL, NULL, NULL, NULL, '0', 1, 1, 5, 'request', 'Flexible', 'Unlisted', NULL, 0, 'experience', '33,34,35,36,37,38,39,40,', '2 Days 1 Night', NULL, NULL, '1,2,3,4,5,6,7,8,,9,10,11,12,13,14,15,16,,17,18,19,20,21,22,23,24,,33,34,35,36,37,38,39,40,', '9,10,11,12,13,14,15,16,,17,18,19,20,21,22,23,24,,25,26,27,28,29,30,31,32,', NULL, NULL, NULL, '2022-09-20 01:53:01', '2022-09-20 02:43:00', 'No'),
(25, 'Trekking in Thekkady', 'trekking-in-thekkady', NULL, 2, NULL, NULL, NULL, NULL, '0', 1, 1, 5, 'request', 'Flexible', 'Listed', 1, 1, 'experience', '33', '2 Days 1 Night', '3', NULL, '1,2,3,4,5,6,7,8,,9,10,11,12,13,14,15,16,,17,18,19,20,21,22,23,24,,33,34,35,36,37,38,39,40,', '9,10,11,12,13,14,15,16,,17,18,19,20,21,22,23,24,,25,26,27,28,29,30,31,32,', NULL, NULL, NULL, '2022-09-20 02:15:42', '2022-10-07 03:51:00', 'No'),
(26, 'Entire home/apt in Mysuru', 'entire-homeapt-in-mysuru', NULL, 3, 1, 1, 1, 1.00, '1,194,195,196,197,198,199,200,,2,61,62,63,64,65,66,67,,3,229,230,231,232,233,234,235,,6,124,125,126,127,128,129,130,,9,201,202,203,204,205,206,207,,21,187,188,189,190,191,192,193,,24,117,118,119,120,121,122,123,,27,82,83,84,85,86,87,88,,28,222,223,224,225,226,227,228,,29,173,174,175,176,177,178,179,,30,96,97,98,99,100,101,102,,31,180,181,182,183,184,185,186,', 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, 'property', NULL, NULL, NULL, NULL, NULL, NULL, '7', '23', NULL, '2022-09-21 07:02:03', '2022-09-24 00:29:13', 'No'),
(27, '', '', NULL, 3, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 'request', 'Flexible', 'Unlisted', NULL, 0, 'experience', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-21 07:12:13', '2022-09-21 07:12:13', 'No'),
(28, 'Test Experience', 'test-experience', NULL, 3, NULL, NULL, NULL, NULL, '0', 1, 1, 2, 'instant', 'Flexible', 'Unlisted', NULL, 0, 'experience', '1,2,3,4,5,6,7,8,', '2 Hours', '1', NULL, '1,2,3,4,5,6,7,8,,25,26,27,28,29,30,31,32,,33,34,35,36,37,38,39,40,', '9,10,11,12,13,14,15,16,,17,18,19,20,21,22,23,24,', NULL, NULL, NULL, '2022-09-21 07:13:11', '2022-09-21 07:14:16', 'No'),
(29, 'Entire home/apt in New York', 'entire-homeapt-in-new-york', NULL, 2, 1, 1, 1, 1.00, '1,194,195,196,197,198,199,200,,7,131,132,133,134,135,136,137,,8,159,160,161,162,163,164,165,,9,201,202,203,204,205,206,207,,17,103,104,105,106,107,108,109,,19,243,244,245,246,247,248,249,,27,82,83,84,85,86,87,88,,28,222,223,224,225,226,227,228,,30,96,97,98,99,100,101,102,', 1, 1, 1, 'instant', 'Flexible', 'Listed', 0, 1, 'property', NULL, NULL, NULL, NULL, NULL, NULL, '7', '22', NULL, '2022-10-03 00:06:25', '2022-10-05 07:06:21', 'No'),
(30, 'Air Balloon Safari in Goa', 'air-balloon-safari-in-goa', NULL, 2, NULL, NULL, NULL, NULL, '0', 1, 1, 2, 'instant', 'Flexible', 'Listed', NULL, 0, 'experience', '33,34,35,36,37,38,39,40,', '2 Hours', '3', NULL, '1,2,3,4,5,6,7,8,,25,26,27,28,29,30,31,32,', '1,2,3,4,5,6,7,8,,9,10,11,12,13,14,15,16,,17,18,19,20,21,22,23,24,,25,26,27,28,29,30,31,32,', NULL, NULL, NULL, '2022-10-05 00:24:57', '2022-10-05 00:36:18', 'No'),
(31, 'Entire home/apt in New York', 'entire-homeapt-in-new-york-1', NULL, 2, 1, 1, 1, 1.00, '1,194,195,196,197,198,199,200,,7,131,132,133,134,135,136,137,,8,159,160,161,162,163,164,165,,9,201,202,203,204,205,206,207,,17,103,104,105,106,107,108,109,,19,243,244,245,246,247,248,249,,27,82,83,84,85,86,87,88,,28,222,223,224,225,226,227,228,,30,96,97,98,99,100,101,102,', 1, 1, 1, 'instant', 'Flexible', 'Unlisted', 0, 0, 'property', NULL, NULL, NULL, NULL, NULL, NULL, '7', '22', NULL, '2022-10-05 00:54:03', '2022-10-05 00:54:03', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `property_address`
--

CREATE TABLE `property_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_address`
--

INSERT INTO `property_address` (`id`, `property_id`, `address_line_1`, `address_line_2`, `latitude`, `longitude`, `city`, `state`, `country`, `postal_code`) VALUES
(1, 1, '254 Broadway, New York, NY 10007, USA', NULL, '40.7127753', '-74.0059728', 'New York', 'New York', 'US', '10007'),
(2, 2, '4 Pl. de l\'Hôtel de Ville, 75004 Paris, France', NULL, '48.856614', '2.3522219', 'Paris', 'Île-de-France', 'FR', '75004'),
(3, 3, '49 The Mall, London SW1A 2DX, UK', NULL, '51.50708424381051', '-0.12758619999999388', 'England', 'England', 'GB', 'SW1A 2DX'),
(4, 4, 'G922+PVM, Punnamada, Finishing Point, Alappuzha, Kerala 688013, India', NULL, '9.5018293', '76.3521653', 'Alappuzha', 'Kerala', 'IN', '688013'),
(5, 5, '06, 06000 Nice, France', NULL, '43.7101728', '7.261953200000001', 'Nice', 'Provence-Alpes-Côte d\'Azur', 'FR', '06000'),
(6, 6, '254 Broadway, New York, NY 10007, USA', NULL, '40.7127753', '-74.0059728', 'New York', 'New York', 'US', '10007'),
(7, 7, 'PMR5+2F Ferrargunj, Andaman and Nicobar Islands, India', NULL, '11.7400867', '92.6586401', 'Ferrargunj', 'Andaman and Nicobar Islands', 'IN', NULL),
(8, 8, 'Route de l’hôtel de, 23230 La Celle-Sous-Gouzon, France', NULL, '46.227638', '2.213749', 'La Celle-Sous-Gouzon', 'Nouvelle-Aquitaine', 'FR', '23230'),
(9, 9, 'Viale Palmiro Togliatti, 483, 00175 Roma RM, Italy', NULL, '41.87194', '12.56738', 'Roma', 'Lazio', 'IT', '00175'),
(10, 10, '401/12 สี่แยกบางพระเมืองใหม่ หมู่ที่ 2 ตำบลบางพระ อำเภอปากพนัง จังหวัดนครศรีธรรมราช Tambon Nong Chaeng, Amphoe Bueng Sam Phan, Chang Wat Phetchabun 67160, Thailand', NULL, '15.870032', '100.992541', 'Tambon Nong Chaeng', 'Chang Wat Phetchabun', 'TH', '67160'),
(11, 11, '7, 2nd St, Chinnaiyan Colony, State Bank Colony, Perambur, Chennai, Tamil Nadu 600012, India', NULL, '13.0826802', '80.2707184', 'Chennai', 'Tamil Nadu', 'IN', '600012'),
(12, 12, 'H5RQ+5HV Taman Wana Nature Park, Jalan Taman Wana, Tua, Marga, Tabanan Regency, Bali 82191, Indonesia', NULL, '-8.4095178', '115.188916', 'Bali', 'Bali', 'ID', '82191'),
(13, 13, '4873 West St, Forest Park, GA 30297, USA', NULL, '33.6220542', '-84.36909179999999', 'Forest Park', 'Georgia', 'US', '30297'),
(14, 14, 'HWXJ+8C Ghandruk, Nepal', NULL, '28.5983159', '83.9310039', 'Ghandruk', 'Gandaki Province', 'NP', '33700'),
(15, 15, '7, 2nd St, Chinnaiyan Colony, State Bank Colony, Perambur, Chennai, Tamil Nadu 600012, India', NULL, '13.0826802', '80.2707184', 'Chennai', 'Tamil Nadu', 'IN', '600012'),
(16, 16, 'W7J5+J55, Kochupally Rd, Pratheeksha Nagar, GCDA Housing Colony, Thoppumpady, Kochi, Kerala 682005, India', NULL, '9.931486433566615', '76.25816313167722', 'Kochi', 'Kerala', 'IN', '682005'),
(17, 17, '15/11, HSR Layout, KG Halli, D\' Souza Layout, Ashok Nagar, Bengaluru, Karnataka 560001, India', NULL, '12.9715987', '77.5945627', 'Bengaluru', 'Karnataka', 'IN', '560001'),
(18, 18, '33Q5+HRC, Nullatanni, Munnar, Kerala 685612, India', NULL, '10.0889333', '77.05952479999999', 'Munnar', 'Kerala', 'IN', '685612'),
(19, 19, '74XF+PHQ, Bandoli, Goa 403706, India', NULL, '15.2993265', '74.12399599999999', 'Bandoli', 'Goa', 'IN', '403706'),
(20, 20, '15/11, HSR Layout, KG Halli, D\' Souza Layout, Ashok Nagar, Bengaluru, Karnataka 560001, India', NULL, '12.9715987', '77.5945627', 'Bengaluru', 'Karnataka', 'IN', '560001'),
(21, 21, '06, 06000 Nice, France', NULL, '43.7101728', '7.261953200000001', 'Nice', 'Provence-Alpes-Côte d\'Azur', 'FR', '06000'),
(22, 22, '7, 2nd St, Chinnaiyan Colony, State Bank Colony, Perambur, Chennai, Tamil Nadu 600012, India', NULL, '13.0826802', '80.2707184', 'Chennai', 'Tamil Nadu', 'IN', '600012'),
(23, 23, '3 Whitehall, London SW1A 2DD, UK', '3 whitehall', '51.5072178', '-0.1275862', 'England', 'England', 'GB', 'SW1A 2DD'),
(24, 24, 'J537+539, Thekkady, Kumily, Tamil Nadu 685509, India', NULL, '9.601754750222383', '77.16223047619627', 'Kumily', 'Tamil Nadu', 'IN', '685509'),
(25, 25, 'J537+539, Thekkady, Kumily, Tamil Nadu 685509, India', NULL, '9.601712436079582', '77.1621446455078', 'Kumily', 'Tamil Nadu', 'IN', '685509'),
(26, 26, '7JWQ+8QC, Siddhartha Nagar, Chamarajapuram Mohalla, Lakshmipuram, Mysuru, Karnataka 570004, India', NULL, '12.2958104', '76.6393805', 'Mysuru', 'Karnataka', 'IN', '570004'),
(27, 27, 'Model Town Rd', NULL, '32.2431872', '77.1891761', 'Manali', 'Himachal Pradesh', 'IN', '175131'),
(28, 28, 'Model Town Rd, Model Town, Siyal, Manali, Himachal Pradesh 175131, India', NULL, '32.2431872', '77.1891761', 'Manali', 'Himachal Pradesh', 'IN', '175131'),
(29, 29, '254 Broadway, New York, NY 10007, USA', NULL, '40.7127753', '-74.0059728', 'New York', 'New York', 'US', '10007'),
(30, 30, '74XF+PHQ, Bandoli, Goa 403706, India', NULL, '15.2993265', '74.12399599999999', 'Bandoli', 'Goa', 'IN', '403706'),
(31, 31, '254 Broadway, New York, NY 10007, USA', NULL, '40.7127753', '-74.0059728', 'New York', 'New York', 'US', '10007');

-- --------------------------------------------------------

--
-- Table structure for table `property_beds`
--

CREATE TABLE `property_beds` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `bed_type_id` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_dates`
--

CREATE TABLE `property_dates` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `status` enum('Available','Not available') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Available',
  `price` int(11) NOT NULL DEFAULT '0',
  `min_stay` tinyint(4) NOT NULL DEFAULT '0',
  `min_day` int(11) NOT NULL DEFAULT '0',
  `max_stay` int(11) NOT NULL DEFAULT '0',
  `max_day` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `color` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('calendar','normal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_dates`
--

INSERT INTO `property_dates` (`id`, `property_id`, `status`, `price`, `min_stay`, `min_day`, `max_stay`, `max_day`, `date`, `color`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'Available', 35, 0, 0, 0, 0, '2022-09-02', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(2, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-02', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(3, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-03', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(4, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-04', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(5, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-05', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(6, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-06', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(7, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-07', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(8, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-08', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(9, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-09', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(10, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-10', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(11, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-11', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(12, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-12', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(13, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-13', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(14, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-14', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(15, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-15', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(16, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-16', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(17, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-17', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(18, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-18', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(19, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-19', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(20, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-20', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(21, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-21', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(22, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-22', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:07:59'),
(23, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-23', NULL, 'normal', '2022-09-02 06:07:59', '2022-09-02 06:08:00'),
(24, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-24', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(25, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-25', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(26, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-26', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(27, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-27', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(28, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-28', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(29, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-29', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(30, 1, 'Available', 35, 1, 1, 1, 10, '2022-09-30', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(31, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-01', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(32, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-02', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(33, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-03', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(34, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-04', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(35, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-05', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(36, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-06', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(37, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-07', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(38, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-08', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(39, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-09', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(40, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-10', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(41, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-11', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(42, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-12', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(43, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-13', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(44, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-14', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(45, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-15', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(46, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-16', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(47, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-17', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(48, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-18', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(49, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-19', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(50, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-20', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(51, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-21', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(52, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-22', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(53, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-23', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(54, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-24', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(55, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-25', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(56, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-26', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(57, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-27', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(58, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-28', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(59, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-29', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(60, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-30', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(61, 1, 'Available', 35, 1, 1, 1, 10, '2022-10-31', NULL, 'normal', '2022-09-02 06:08:00', '2022-09-02 06:08:00'),
(62, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-02', NULL, 'normal', '2022-09-02 06:48:26', '2022-09-02 06:48:26'),
(63, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-03', NULL, 'normal', '2022-09-02 06:48:26', '2022-09-02 06:48:26'),
(64, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-04', NULL, 'normal', '2022-09-02 06:48:26', '2022-09-02 06:48:26'),
(65, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-05', NULL, 'normal', '2022-09-02 06:48:26', '2022-09-02 06:48:26'),
(66, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-06', NULL, 'normal', '2022-09-02 06:48:26', '2022-09-02 06:48:26'),
(67, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-07', NULL, 'normal', '2022-09-02 06:48:26', '2022-09-02 06:48:26'),
(68, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-08', NULL, 'normal', '2022-09-02 06:48:26', '2022-09-02 06:48:26'),
(69, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-09', NULL, 'normal', '2022-09-02 06:48:26', '2022-09-02 06:48:27'),
(70, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-10', NULL, 'normal', '2022-09-02 06:48:26', '2022-09-02 06:48:27'),
(71, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-11', NULL, 'normal', '2022-09-02 06:48:26', '2022-09-02 06:48:27'),
(72, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-12', NULL, 'normal', '2022-09-02 06:48:26', '2022-09-02 06:48:27'),
(73, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-13', NULL, 'normal', '2022-09-02 06:48:26', '2022-09-02 06:48:27'),
(74, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-14', NULL, 'normal', '2022-09-02 06:48:26', '2022-09-02 06:48:27'),
(75, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-15', NULL, 'normal', '2022-09-02 06:48:26', '2022-09-02 06:48:27'),
(76, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-16', NULL, 'normal', '2022-09-02 06:48:26', '2022-09-02 06:48:27'),
(77, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-17', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(78, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-18', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(79, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-19', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(80, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-20', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(81, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-21', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(82, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-22', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(83, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-23', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(84, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-24', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(85, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-25', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(86, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-26', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(87, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-27', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(88, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-28', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(89, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-29', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(90, 3, 'Available', 42, 0, 0, 0, 0, '2022-09-30', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(91, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-01', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(92, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-02', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(93, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-03', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(94, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-04', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(95, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-05', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(96, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-06', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(97, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-07', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(98, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-08', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(99, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-09', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(100, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-10', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(101, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-11', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(102, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-12', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(103, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-13', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(104, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-14', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(105, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-15', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(106, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-16', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(107, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-17', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(108, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-18', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(109, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-19', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(110, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-20', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(111, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-21', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(112, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-22', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(113, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-23', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(114, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-24', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(115, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-25', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(116, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-26', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(117, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-27', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(118, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-28', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(119, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-29', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(120, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-30', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(121, 3, 'Available', 42, 0, 0, 0, 0, '2022-10-31', NULL, 'normal', '2022-09-02 06:48:27', '2022-09-02 06:48:27'),
(122, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-02', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(123, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-03', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(124, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-04', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(125, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-05', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(126, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-06', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(127, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-07', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(128, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-08', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(129, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-09', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(130, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-10', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(131, 6, 'Not available', 30, 0, 0, 0, 0, '2022-09-11', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-03 02:17:17'),
(132, 6, 'Not available', 30, 0, 0, 0, 0, '2022-09-12', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-03 02:17:17'),
(133, 6, 'Not available', 30, 0, 0, 0, 0, '2022-09-13', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-03 02:17:17'),
(134, 6, 'Not available', 30, 0, 0, 0, 0, '2022-09-14', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-03 02:17:17'),
(135, 6, 'Not available', 30, 0, 0, 0, 0, '2022-09-15', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-03 02:17:17'),
(136, 6, 'Not available', 30, 0, 0, 0, 0, '2022-09-16', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-03 02:17:17'),
(137, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-17', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(138, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-18', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(139, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-19', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(140, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-20', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(141, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-21', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(142, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-22', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(143, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-23', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(144, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-24', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(145, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-25', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(146, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-26', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(147, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-27', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(148, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-28', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(149, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-29', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(150, 6, 'Available', 30, 0, 0, 0, 0, '2022-09-30', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(151, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-01', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(152, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-02', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(153, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-03', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(154, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-04', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(155, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-05', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(156, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-06', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(157, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-07', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(158, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-08', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(159, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-09', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(160, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-10', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(161, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-11', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(162, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-12', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(163, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-13', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(164, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-14', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(165, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-15', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(166, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-16', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(167, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-17', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(168, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-18', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(169, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-19', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(170, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-20', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(171, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-21', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(172, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-22', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(173, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-23', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(174, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-24', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(175, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-25', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(176, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-26', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(177, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-27', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(178, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-28', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(179, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-29', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(180, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-30', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(181, 6, 'Available', 30, 0, 0, 0, 0, '2022-10-31', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(182, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-01', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(183, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-02', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(184, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-03', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(185, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-04', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(186, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-05', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(187, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-06', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(188, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-07', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(189, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-08', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(190, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-09', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(191, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-10', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(192, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-11', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(193, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-12', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(194, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-13', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(195, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-14', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(196, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-15', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(197, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-16', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(198, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-17', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(199, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-18', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(200, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-19', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(201, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-20', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(202, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-21', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(203, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-22', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(204, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-23', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(205, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-24', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(206, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-25', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(207, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-26', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(208, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-27', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(209, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-28', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(210, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-29', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(211, 6, 'Available', 30, 0, 0, 0, 0, '2022-11-30', NULL, 'normal', '2022-09-02 07:27:34', '2022-09-02 07:27:34'),
(212, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-03', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(213, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-04', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(214, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-05', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(215, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-06', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(216, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-07', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(217, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-08', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(218, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-09', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(219, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-10', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(220, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-11', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(221, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-12', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(222, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-12', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(223, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-13', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(224, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-14', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(225, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-14', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(226, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-15', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(227, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-16', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(228, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-16', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(229, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-17', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(230, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-18', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(231, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-19', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(232, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-19', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(233, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-20', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(234, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-21', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(235, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-21', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(236, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-22', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(237, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-23', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(238, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-24', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(239, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-25', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(240, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-26', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(241, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-27', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(242, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-27', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(243, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-28', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(244, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-29', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(245, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-29', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(246, 11, 'Available', 0, 0, 0, 0, 0, '2022-09-30', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(247, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-01', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(248, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-01', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(249, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-02', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(250, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-03', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(251, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-03', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(252, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-04', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(253, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-04', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(254, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-05', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(255, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-05', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(256, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-06', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(257, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-07', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(258, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-07', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(259, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-08', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(260, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-09', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(261, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-09', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(262, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-10', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(263, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-11', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(264, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-11', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(265, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-12', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(266, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-13', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(267, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-13', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(268, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-14', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(269, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-14', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(270, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-15', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(271, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-15', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(272, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-16', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(273, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-17', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(274, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-18', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(275, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-19', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(276, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-20', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(277, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-20', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(278, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-21', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(279, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-22', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(280, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-22', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(281, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-23', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(282, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-24', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(283, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-24', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(284, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-25', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(285, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-25', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(286, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-26', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(287, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-26', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(288, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-27', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(289, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-27', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(290, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-28', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(291, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-28', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(292, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-29', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(293, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-29', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(294, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-30', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(295, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-30', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(296, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-31', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(297, 11, 'Available', 0, 0, 0, 0, 0, '2022-10-31', NULL, 'normal', '2022-09-03 00:02:02', '2022-09-03 00:02:02'),
(298, 15, 'Available', 0, 0, 0, 0, 0, '2022-09-03', NULL, 'normal', '2022-09-03 00:37:18', '2022-09-03 00:37:18'),
(299, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-03', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(300, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-04', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(301, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-05', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(302, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-06', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(303, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-07', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(304, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-08', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(305, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-09', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(306, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-10', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(307, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-11', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(308, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-11', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(309, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-12', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(310, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-13', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(311, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-13', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(312, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-14', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(313, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-15', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(314, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-15', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(315, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-16', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(316, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-17', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(317, 17, 'Available', 30, 0, 0, 0, 0, '2022-09-17', NULL, 'normal', '2022-09-03 01:04:20', '2022-09-03 01:04:20'),
(318, 4, 'Not available', 25, 0, 0, 0, 0, '2022-09-03', NULL, 'normal', '2022-09-03 02:27:20', '2022-09-03 02:27:20'),
(319, 8, 'Not available', 20, 0, 0, 0, 0, '2022-09-03', NULL, 'normal', '2022-09-03 02:31:29', '2022-09-03 02:31:29'),
(320, 5, 'Available', 30, 1, 3, 1, 3, '2022-09-05', NULL, 'normal', '2022-09-05 00:51:12', '2022-09-05 01:17:53'),
(321, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-05', NULL, 'normal', '2022-09-05 04:19:08', '2022-09-05 04:20:01'),
(322, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-01', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(323, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-02', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(324, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-03', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(325, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-04', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(326, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-06', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(327, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-07', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(328, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-08', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(329, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-09', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(330, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-10', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(331, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-11', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(332, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-12', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(333, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-13', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(334, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-14', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(335, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-15', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(336, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-16', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(337, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-17', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(338, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-18', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(339, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-19', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(340, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-20', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(341, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-21', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(342, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-22', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(343, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-23', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(344, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-24', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(345, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-25', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(346, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-26', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(347, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-27', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(348, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-28', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(349, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-29', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(350, 21, 'Available', 30, 0, 0, 0, 0, '2022-09-30', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(351, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-01', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(352, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-02', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(353, 21, 'Available', 25, 1, 2, 1, 5, '2022-10-03', NULL, 'normal', '2022-09-05 04:20:01', '2022-10-03 11:21:38'),
(354, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-04', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(355, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-05', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(356, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-06', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(357, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-07', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(358, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-08', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(359, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-09', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(360, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-10', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(361, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-11', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(362, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-12', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(363, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-13', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(364, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-14', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(365, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-15', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(366, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-16', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(367, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-17', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(368, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-18', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(369, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-19', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(370, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-20', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(371, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-21', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(372, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-22', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(373, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-23', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(374, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-24', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(375, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-25', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(376, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-26', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(377, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-27', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(378, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-28', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(379, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-29', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(380, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-30', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(381, 21, 'Available', 30, 0, 0, 0, 0, '2022-10-31', NULL, 'normal', '2022-09-05 04:20:01', '2022-09-05 04:20:01'),
(382, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-03', NULL, 'normal', '2022-09-05 04:20:18', '2022-09-05 04:20:18'),
(383, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-05', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(384, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-06', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(385, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-07', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(386, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-08', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(387, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-09', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(388, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-10', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(389, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-11', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(390, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-12', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(391, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-13', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(392, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-14', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(393, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-15', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(394, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-16', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(395, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-17', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(396, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-18', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(397, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-19', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(398, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-20', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(399, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-21', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(400, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-22', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(401, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-23', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(402, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-24', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(403, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-25', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(404, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-26', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(405, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-27', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(406, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-28', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(407, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-29', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(408, 22, 'Available', 0, 0, 0, 0, 0, '2022-09-30', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(409, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-01', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(410, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-02', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(411, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-03', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(412, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-04', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(413, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-05', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(414, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-06', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(415, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-07', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(416, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-08', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(417, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-09', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(418, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-10', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(419, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-11', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(420, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-12', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(421, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-13', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(422, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-14', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(423, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-15', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(424, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-16', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(425, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-17', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(426, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-18', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(427, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-19', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(428, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-20', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(429, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-21', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(430, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-22', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(431, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-23', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(432, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-24', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(433, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-25', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(434, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-26', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(435, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-27', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(436, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-28', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(437, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-29', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(438, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-30', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(439, 22, 'Available', 0, 0, 0, 0, 0, '2022-10-31', NULL, 'normal', '2022-09-05 04:21:10', '2022-09-05 04:21:10'),
(440, 23, 'Available', 50, 0, 0, 0, 0, '2022-09-15', NULL, 'normal', '2022-09-15 07:46:52', '2022-09-15 07:46:52');
INSERT INTO `property_dates` (`id`, `property_id`, `status`, `price`, `min_stay`, `min_day`, `max_stay`, `max_day`, `date`, `color`, `type`, `created_at`, `updated_at`) VALUES
(441, 23, 'Available', 50, 0, 0, 0, 0, '2022-09-16', NULL, 'normal', '2022-09-15 07:46:52', '2022-09-15 07:46:52'),
(442, 23, 'Available', 50, 0, 0, 0, 0, '2022-09-17', NULL, 'normal', '2022-09-15 07:46:52', '2022-09-15 07:46:52'),
(443, 23, 'Available', 50, 0, 0, 0, 0, '2022-09-18', NULL, 'normal', '2022-09-15 07:46:52', '2022-09-15 07:46:52'),
(444, 23, 'Available', 50, 0, 0, 0, 0, '2022-09-19', NULL, 'normal', '2022-09-15 07:46:52', '2022-09-15 07:46:52'),
(445, 23, 'Available', 50, 0, 0, 0, 0, '2022-09-20', NULL, 'normal', '2022-09-15 07:46:52', '2022-09-15 07:46:52'),
(446, 23, 'Available', 50, 0, 0, 0, 0, '2022-09-21', NULL, 'normal', '2022-09-15 07:46:52', '2022-09-15 07:46:52'),
(447, 23, 'Not available', 50, 0, 0, 0, 0, '2022-09-22', NULL, 'normal', '2022-09-15 07:46:52', '2022-09-19 02:41:43'),
(448, 23, 'Not available', 50, 0, 0, 0, 0, '2022-09-23', NULL, 'normal', '2022-09-15 07:46:52', '2022-09-19 02:41:43'),
(449, 23, 'Not available', 50, 0, 0, 0, 0, '2022-09-24', NULL, 'normal', '2022-09-15 07:46:52', '2022-09-19 02:41:43'),
(450, 23, 'Available', 50, 0, 0, 0, 0, '2022-09-25', NULL, 'normal', '2022-09-15 07:46:52', '2022-09-15 07:46:52'),
(451, 23, 'Not available', 50, 0, 0, 0, 0, '2022-09-26', NULL, 'normal', '2022-09-15 07:46:52', '2022-09-16 07:08:13'),
(452, 23, 'Not available', 50, 0, 0, 0, 0, '2022-09-27', NULL, 'normal', '2022-09-15 07:46:52', '2022-09-16 07:08:13'),
(453, 23, 'Not available', 50, 0, 0, 0, 0, '2022-09-28', NULL, 'normal', '2022-09-15 07:46:52', '2022-09-16 07:08:13'),
(454, 23, 'Available', 50, 0, 0, 0, 0, '2022-09-29', NULL, 'normal', '2022-09-15 07:46:52', '2022-09-15 07:46:52'),
(455, 23, 'Available', 50, 0, 0, 0, 0, '2022-09-30', NULL, 'normal', '2022-09-15 07:46:52', '2022-09-15 07:46:52'),
(456, 23, 'Available', 50, 0, 0, 0, 0, '2022-10-01', NULL, 'normal', '2022-09-15 07:46:52', '2022-09-15 07:46:52'),
(457, 25, 'Available', 0, 0, 0, 0, 0, '2022-09-20', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(458, 25, 'Available', 0, 0, 0, 0, 0, '2022-09-21', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(459, 25, 'Available', 0, 0, 0, 0, 0, '2022-09-22', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(460, 25, 'Available', 0, 0, 0, 0, 0, '2022-09-23', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(461, 25, 'Available', 0, 0, 0, 0, 0, '2022-09-24', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(462, 25, 'Available', 0, 0, 0, 0, 0, '2022-09-25', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(463, 25, 'Available', 0, 0, 0, 0, 0, '2022-09-26', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(464, 25, 'Available', 0, 0, 0, 0, 0, '2022-09-27', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(465, 25, 'Available', 0, 0, 0, 0, 0, '2022-09-28', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(466, 25, 'Available', 0, 0, 0, 0, 0, '2022-09-29', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(467, 25, 'Available', 0, 0, 0, 0, 0, '2022-09-30', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(468, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-01', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(469, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-02', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(470, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-03', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(471, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-04', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(472, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-05', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(473, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-06', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(474, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-07', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(475, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-08', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(476, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-09', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(477, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-10', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(478, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-11', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(479, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-12', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(480, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-13', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(481, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-14', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(482, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-15', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(483, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-16', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(484, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-17', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(485, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-18', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(486, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-19', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(487, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-20', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(488, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-21', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(489, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-22', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(490, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-23', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(491, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-24', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(492, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-25', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(493, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-26', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(494, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-27', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(495, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-28', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(496, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-29', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(497, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-30', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(498, 25, 'Available', 0, 0, 0, 0, 0, '2022-10-31', NULL, 'normal', '2022-09-20 02:31:20', '2022-09-20 02:31:20'),
(500, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-03', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(501, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-04', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(502, 29, 'Available', 55, 1, 2, 1, 36, '2022-10-05', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-05 00:49:33'),
(503, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-06', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(504, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-07', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(505, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-08', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(506, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-09', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(507, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-10', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(508, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-11', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(509, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-12', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(510, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-13', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(511, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-14', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(512, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-15', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(513, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-16', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(514, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-17', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(515, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-18', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(516, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-19', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(517, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-20', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(518, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-21', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(519, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-22', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(520, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-23', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(521, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-24', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(522, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-25', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(523, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-26', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(524, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-27', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(525, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-28', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(526, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-29', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(527, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-30', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(528, 29, 'Available', 55, 1, 2, 1, 33, '2022-10-31', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(529, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-01', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(530, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-02', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(531, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-03', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(532, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-04', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(533, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-05', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(534, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-06', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(535, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-07', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(536, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-08', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(537, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-09', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(538, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-10', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(539, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-11', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(540, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-12', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(541, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-13', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(542, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-14', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(543, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-15', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(544, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-16', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(545, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-17', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(546, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-18', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(547, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-19', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(548, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-20', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(549, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-21', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(550, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-22', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(551, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-23', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(552, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-24', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(553, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-25', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(554, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-26', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(555, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-27', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(556, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-28', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(557, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-29', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(558, 29, 'Available', 55, 1, 2, 1, 33, '2022-11-30', NULL, 'normal', '2022-10-03 00:17:32', '2022-10-03 00:17:32'),
(559, 21, 'Available', 30, 0, 0, 0, 0, '2022-11-06', NULL, 'normal', '2022-10-03 09:15:08', '2022-10-03 09:15:08'),
(560, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-05', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(561, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-06', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(562, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-07', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(563, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-08', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(564, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-09', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(565, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-10', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(566, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-11', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(567, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-12', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(568, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-13', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(569, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-14', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(570, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-15', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(571, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-16', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(572, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-17', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(573, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-18', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(574, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-19', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(575, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-20', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(576, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-21', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(577, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-22', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(578, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-23', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(579, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-24', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(580, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-25', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(581, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-26', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(582, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-27', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(583, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-28', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(584, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-29', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(585, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-30', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(586, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-31', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(587, 30, 'Available', 0, 0, 0, 0, 0, '2022-11-01', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(588, 30, 'Available', 0, 0, 0, 0, 0, '2022-11-02', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(589, 30, 'Available', 0, 0, 0, 0, 0, '2022-11-03', NULL, 'normal', '2022-10-05 00:41:07', '2022-10-05 00:41:07'),
(590, 31, 'Available', 55, 1, 2, 1, 33, '2022-10-03', NULL, 'normal', '2022-10-05 00:54:03', '2022-10-05 00:54:03'),
(591, 30, 'Available', 0, 0, 0, 0, 0, '2022-10-04', NULL, 'normal', '2022-10-05 07:22:47', '2022-10-05 07:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `property_description`
--

CREATE TABLE `property_description` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `place_is_great_for` text COLLATE utf8mb4_unicode_ci,
  `about_place` text COLLATE utf8mb4_unicode_ci,
  `guest_can_access` text COLLATE utf8mb4_unicode_ci,
  `interaction_guests` text COLLATE utf8mb4_unicode_ci,
  `other` text COLLATE utf8mb4_unicode_ci,
  `about_neighborhood` text COLLATE utf8mb4_unicode_ci,
  `get_around` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_description`
--

INSERT INTO `property_description` (`id`, `property_id`, `summary`, `place_is_great_for`, `about_place`, `guest_can_access`, `interaction_guests`, `other`, `about_neighborhood`, `get_around`) VALUES
(1, 1, 'New york Shared room', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'Best Accommodation for a Perfect vacation Trip', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 'At the highest point in the city, this spacious villa offers breathtaking and unending views. The balcony\'s views will present unique opportunities for rest and enjoyment!', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 'Guests may experience the backwaters because the property is continually floating in the rivers. ', 'A boat that has been transformed into your floating home away from home—while taking in the splendor of God\'s Own Country!', 'A bamboo-thatched canopy creates a relaxing atmosphere for a river tour that will make you wish time would stop.', 'Guests may experience the backwaters because the property is continually floating in the rivers. ', 'A bamboo-thatched canopy creates a relaxing atmosphere for a river tour that will make you wish time would stop.', 'A boat that has been transformed into your floating home away from home—while taking in the splendor of God\'s Own Country!', 'Guests may experience the backwaters because the property is continually floating in the rivers. ', 'A boat that has been transformed into your floating home away from home—while taking in the splendor of God\'s Own Country!'),
(5, 5, 'Live out your fantasies in this incredible treehouse. You reach a little deck area where you may sit and enjoy a sunset through a perfect wooden tree house.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 'Stay in our lovely, well-furnished tent. This is an exceptional and truly unique experience.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 'With large, fashionable rooms and accommodation with two bedrooms,', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 'Hut House', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 'The Castle is renovated into a luxurious home where visitors may stay while on vacation.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 'Dorm in Thailand', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, 'This local accommodation never fails to amaze you. A unique curriculum is also devised to offer a sense of enjoyment to guarantee that participants get the correct blend of adventure and learning. Not only that but the classic coracle trip and boats will keep you entertained. The breathtaking trekking paths and rapids are only a few highlights of the total trip.', 'Not only that but the classic coracle trip and boats will keep you entertained. The breathtaking trekking paths and rapids are only a few highlights of the total trip.', 'This local accommodation never fails to amaze you. A unique curriculum is also devised to offer a sense of enjoyment to guarantee that participants get the correct blend of adventure and learning', 'The breathtaking trekking paths and rapids are only a few highlights of the total trip.', 'This local accommodation never fails to amaze.', 'Always put on a protective suit. Respect the procedures of the instructor/guide completely.', 'Adventure tours and torrents are a few things that will add to your whole trip.', NULL),
(12, 12, 'The peaceful beauty of early sunlight amidst the scenic of Mount ticks off your mornings at the campground at Bali homestay. The enhancing ambiance and sonorous sounds of captivating fauna allow you to immerse yourself in the authentic essence of nature.', 'The enhancing ambiance and sonorous sounds of captivating fauna allow you to immerse yourself in the authentic essence of nature.', 'The peaceful beauty of early sunlight amidst the scenic of Mount ticks off your mornings at the campground at Bali homestay', 'The peaceful beauty of early sunlight amidst the scenic of Mount ticks off your mornings at the campground at Bali homestay', NULL, NULL, NULL, NULL),
(13, 13, 'You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14, 'Trekking in the Himalayas is one of the most thrilling experiences you will ever have. This hike takes you across rugged terrain. Villagers will assist you if you want assistance, which is a 10-kilometer trip.', 'This hike takes you across rugged terrain. Villagers will assist you if you want assistance, which is a 10-kilometer trip.', 'Trekking in the Himalayas is one of the most thrilling experiences you will ever have.', 'Trekking in the Himalayas is one of the most thrilling experiences you will ever have.', 'Villagers will assist you if you want assistance, which is a 10-kilometer trip.', NULL, NULL, NULL),
(15, 15, 'Enjoy watching the stunning view of the sunrise. Relax and enjoy locally prepared breakfast cooked at spot.', 'Relax and enjoy locally prepared breakfast cooked at spot.', 'Enjoy watching the stunning view of the sunrise.', NULL, NULL, NULL, NULL, NULL),
(16, 16, 'Kerala is often referred to as \"God\'s Own Country,\" because of the ideal blend of natural beauty and peace that it provides. It has it all, from beaches to backwaters to mountains.', 'Adventure Hill Trekking', 'The ideal blend of natural beauty and peace', 'Additional Guest can access with additional pay', 'Kerala is often referred to as \"God\'s Own Country,\" because of the ideal blend of natural beauty and peace that it provides. It has it all, from beaches to backwaters to mountains', 'It has it all, from beaches to backwaters to mountains.', NULL, 'It has National Parks, Tea Plantations, Wildlife Sanctuaries, and other attractions.'),
(17, 17, 'The helicopter trip is the finest way to see Bengaluru\'s architectural treasures. The thrilling trip takes you on a city tour of the city\'s most important landmarks from a bird\'s eye perspective.', 'The thrilling trip takes you on a city tour of the city\'s most important landmarks from a bird\'s eye perspective', 'Bengaluru is a metropolis filled with shades of diverse cultures, with a mix of modern technology and ancient grandeur', NULL, NULL, NULL, 'Enjoy this thrilling ride while taking in the panoramic scenery of Bengaluru, with the sounds of twiirling blades adding to the whole experience', NULL),
(18, 18, 'Munnar trekking is a fantastic adventure. Which brings peace to the heart and mental rejuvenation. The hike in the high-altitude region provides a rewarding experience.', 'Munnar is a great place for wonderful vacation', 'Munnar trekking is a fantastic adventure. Which brings peace to the heart and mental rejuvenation.', 'At Munnar\'s Wonder Valley Adventure & Amusement Park, you\'ll have an adventure like no other.', 'The hike in the high-altitude region provides a rewarding experience as well as an opportunity to learn about nature and its inhabitants', 'At Munnar\'s Wonder Valley Adventure & Amusement Park,', 'Munnar trekking is a fantastic adventure. Which brings peace to the heart and mental rejuvenation.', 'At Munnar\'s Wonder Valley Adventure & Amusement Park,'),
(19, 19, 'Parasailing is one such activity that each adventure enthusiast should attempt. Paddle about in the crystal clear waters. Every encounter has the potential to become a lifelong memory. This location includes banana rides, bumper rides, speed boating, knee boating, and jet skiing, to name a few adventurous activities.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 20, 'In Bengaluru, microlight flying provides a unique combination of comfort and exhilaration. It has evolved into a community-wide leisure and adventurous activity. Co-piloting a flight while seated in the aircraft is an unforgettable experience.', 'Enjoy the panoramic views of the area below once you\'ve reached the summit.', 'Co-piloting a flight while sitting in the cockpit is a once-in-a-lifetime event.', NULL, NULL, NULL, NULL, NULL),
(21, 21, 'Live out your fantasies in this incredible treehouse. You reach a little deck area where you may sit and enjoy a sunset through a perfect wooden tree house.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 22, 'Enjoy watching the stunning view of the sunrise. Relax and enjoy locally prepared breakfast cooked at spot.', 'Relax and enjoy locally prepared breakfast cooked at spot.', 'Enjoy watching the stunning view of the sunrise.', NULL, NULL, NULL, NULL, NULL),
(23, 23, 'The bungalow can accommodate upto 4 people. It has two bedrooms with double beds.', 'A peaceful and relaxed environment in a very stylish restored home.', 'The bungalow is located on a quiet secluded road with no neighbors and a garden.', 'The entire home and garden are to the personal usage of the visitors.', NULL, 'smoking not allowed', NULL, NULL),
(24, 24, 'In Thekkady trekking is a fantastic activity. It brings inner peace and mental refreshment.', 'Trekking in Thekkady is the most exciting activity to engage in the hills', 'The hike in the high altitude area provides a pleasant experience and a possibility to explore nature and its inhabitants.', 'Trekkers will like this place because it has a lot of good hiking trails.', NULL, NULL, NULL, NULL),
(25, 25, 'In Thekkady trekking is a fantastic activity. It brings inner peace and mental refreshment.', 'Trekking is the most exciting activity to engage in the hills', 'The hike in the high altitude area provides a pleasant experience and a posibility to explore nature and its inhabitants.', 'Trekkers will like this place beacuse it has lot of good hiking trails.', NULL, NULL, NULL, NULL),
(26, 26, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 28, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 29, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 30, 'This adventure is one of Goa\'s most popular activities. Embark on the balloon-mounted wooden basket. Enjoy the stunning views of Goa as the pilot navigates and captures the feeling of seeing the city from above.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 31, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_details`
--

CREATE TABLE `property_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `field` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_fees`
--

CREATE TABLE `property_fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_fees`
--

INSERT INTO `property_fees` (`id`, `field`, `value`) VALUES
(1, 'more_then_seven', '5'),
(2, 'less_then_seven', '10'),
(3, 'host_service_charge', '5'),
(4, 'guest_service_charge', '5'),
(5, 'cancel_limit', '0'),
(6, 'currency', 'USD'),
(7, 'host_penalty', '10'),
(8, 'iva_tax', '5'),
(9, 'accomodation_tax', '5'),
(10, 'flexible_day_before', '1'),
(11, 'flexible_day_before_percentage', '100'),
(12, 'flexible_day_after_percentage', '0'),
(13, 'moderate_day_before', '5'),
(14, 'moderate_day_before_percentage', '100'),
(15, 'moderate_day_after_percentage', '50'),
(16, 'strict_day_before', '7'),
(17, 'strict_day_before_percentage', '50'),
(18, 'strict_day_after_percentage', '0');

-- --------------------------------------------------------

--
-- Table structure for table `property_icalimports`
--

CREATE TABLE `property_icalimports` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `icalendar_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icalendar_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icalendar_last_sync` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_photos`
--

CREATE TABLE `property_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(105) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_photo` int(11) NOT NULL DEFAULT '0',
  `serial` int(11) NOT NULL DEFAULT '0',
  `type` enum('photo','video') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_photos`
--

INSERT INTO `property_photos` (`id`, `property_id`, `photo`, `message`, `cover_photo`, `serial`, `type`) VALUES
(1, 1, '1662118502_1625484861_img4.jpg', NULL, 1, 1, 'photo'),
(2, 1, '1630049374_new196311ea8f96ced.jpg', NULL, 0, 2, 'photo'),
(3, 1, 'https://www.youtube.com/embed/OQ2448utWIE', NULL, 0, 1, 'video'),
(4, 2, '1629721749_ny36311ecaccbee5.jpg', NULL, 1, 1, 'photo'),
(5, 2, '1629988070_new86311ecc5d89d1.jpg', NULL, 0, 2, 'photo'),
(6, 3, '1629722281_ny46311f3d33709b.jpg', NULL, 1, 1, 'photo'),
(7, 3, '1629906270_216311f40d0db51.jpg', NULL, 0, 2, 'photo'),
(8, 3, '1629906284_226311f42517681.jpg', NULL, 0, 3, 'photo'),
(9, 3, '1629906295_236311f443e3e3b.jpg', NULL, 0, 4, 'photo'),
(10, 4, '1629722998_ny56311f612487fd.jpg', NULL, 1, 1, 'photo'),
(11, 4, '1629905851_196311f6445075c.jpg', NULL, 0, 2, 'photo'),
(12, 4, '1629905863_206311f67ed3878.jpg', NULL, 0, 3, 'photo'),
(13, 5, '1629723435_ny66311f81ed7c95.jpg', NULL, 1, 1, 'photo'),
(14, 5, '1629905461_176311f85493d9f.jpg', NULL, 0, 2, 'photo'),
(15, 5, '1629905471_186311f87ad395e.jpg', NULL, 0, 3, 'photo'),
(16, 6, '1629724316_ny76311fd5f8191a.jpg', NULL, 1, 1, 'photo'),
(17, 6, '1629905199_166311fd88ebd91.jpg', NULL, 0, 2, 'photo'),
(18, 7, '1629904717_136311ff02ea320.jpg', NULL, 1, 1, 'photo'),
(19, 7, '1629904757_146311ff32c8424.jpg', NULL, 0, 2, 'photo'),
(20, 7, '1629904975_156311ff54644aa.jpg', NULL, 0, 3, 'photo'),
(21, 8, '1629725388_ny96312008c635ec.jpg', NULL, 1, 1, 'photo'),
(22, 8, '1629904309_12631200b3332a7.jpg', NULL, 0, 2, 'photo'),
(23, 9, '1629726009_ny106312028b3a082.jpg', NULL, 1, 1, 'photo'),
(24, 9, '1629904107_11631202aecfcd0.jpg', NULL, 0, 2, 'photo'),
(25, 10, '1629727321_ny116312045bc2b50.jpg', NULL, 1, 1, 'photo'),
(26, 10, '1629903803_96312047d6f327.jpg', NULL, 0, 2, 'photo'),
(27, 10, '1629903899_106312049f57cee.jpg', NULL, 0, 3, 'photo'),
(28, 11, '1647074753_omer-salom-pftnxpww6by-unsplash-15862299256312e45a2c479.jpg', NULL, 1, 1, 'photo'),
(29, 11, '1647074753_thom-holmes-57q4x4qtdbs-unsplash-15862299306312e491b1bf1.jpg', NULL, 0, 2, 'photo'),
(30, 11, '1647074753_thom-holmes-i9blfp-1zzc-unsplash-15862299326312e4af15b28.jpg', NULL, 0, 3, 'photo'),
(31, 12, '1647874866_nicolas-savignat-xhka2wzjfrw-unsplash-15862266606312e8d9ed08b.jpg', NULL, 1, 1, 'photo'),
(32, 12, 'https://www.youtube.com/embed/OQ2448utWIE', NULL, 0, 1, 'video'),
(33, 13, '1648007656_animals6312e9d10d5cb.jpg', NULL, 1, 1, 'photo'),
(34, 13, '1648007656_animals26312ea106e24c.jpg', NULL, 0, 2, 'photo'),
(35, 14, '1648021153_himalayas_trekking6312eb7b85dd9.jpg', NULL, 1, 1, 'photo'),
(36, 14, '1648021170_himalayas_trekking_16312ebc7e9eba.jpg', NULL, 0, 2, 'photo'),
(37, 14, '1648021170_himalayas_trekking_26312ebe96e606.jpg', NULL, 0, 3, 'photo'),
(38, 15, '1648450593_kevin-delvecchio-7noZJ_4nhU8-unsplash_11zon6312edf221075.jpg', NULL, 1, 1, 'photo'),
(39, 15, '1648450593_mike-erskine-S_VbdMTsdiA-unsplash_11zon6312ee49e3d63.jpg', NULL, 0, 2, 'photo'),
(40, 16, 'gigin-krishnan-hYo8BxhdLH8-unsplash6312f19c87cfe.jpg', NULL, 1, 1, 'photo'),
(41, 16, 'toomas-tartes-Yizrl9N_eDA-unsplash6312f1aea5dd0.jpg', NULL, 0, 2, 'photo'),
(42, 17, 'georg-regauer-XxeMVqcm9iA-unsplash6312f4f9ebcfe.jpg', NULL, 1, 1, 'photo'),
(43, 17, 'greg-wilson-ro-GJ-Hlz-s-unsplash6312f50d63548.jpg', NULL, 0, 2, 'photo'),
(44, 18, 'hayato-shin-oXend5neBr0-unsplash6312f6d3c3b7b.jpg', NULL, 1, 1, 'photo'),
(45, 18, 'max-kukurudziak-XcbkbCe4kT0-unsplash6312f6e8a3b1b.jpg', NULL, 0, 2, 'photo'),
(46, 19, 'quino-al-rK_nz3DswX4-unsplash6312ff15be07f.jpg', NULL, 1, 1, 'photo'),
(47, 19, 'antoine-petitteville-g77jFS1C-X8-unsplash6312ff273a5c9.jpg', NULL, 0, 2, 'photo'),
(48, 20, 'zhenyu-ye-VmNu6uNp1og-unsplash63130105df729.jpg', NULL, 1, 1, 'photo'),
(49, 20, 'simon-fitall-drBUfUTOX5M-unsplash6313011467131.jpg', NULL, 0, 2, 'photo'),
(50, 21, '1629723435_ny66311f81ed7c95.jpg', NULL, 1, 1, 'photo'),
(51, 21, '1629905461_176311f85493d9f.jpg', NULL, 0, 2, 'photo'),
(52, 21, '1629905471_186311f87ad395e.jpg', NULL, 0, 3, 'photo'),
(53, 22, '1648450593_kevin-delvecchio-7noZJ_4nhU8-unsplash_11zon6312edf221075.jpg', NULL, 1, 1, 'photo'),
(54, 22, '1648450593_mike-erskine-S_VbdMTsdiA-unsplash_11zon6312ee49e3d63.jpg', NULL, 0, 2, 'photo'),
(55, 23, 'Bungalow in london6323255705dde.jpg', NULL, 1, 1, 'photo'),
(56, 23, 'Bungalow in london images6323256eb53fe.jpg', NULL, 0, 2, 'photo'),
(57, 24, 'Trekking in Thekkady63296c8f78eb8.jpg', NULL, 1, 1, 'photo'),
(59, 25, 'Trekking in Thekkady632970f9e0682.jpg', NULL, 1, 1, 'photo'),
(60, 25, 'Trekking in Thekkady, Kerala6329710d9de15.jpg', NULL, 0, 2, 'photo'),
(61, 29, 'alexander-kovacs-SN0mu2M_Va0-unsplash633a752db279d.jpg', NULL, 1, 1, 'photo'),
(62, 30, 'hot air balloon safari633d1d50e984b.jpg', NULL, 1, 1, 'photo'),
(63, 30, 'hot airballoon633d1d83a3960.jpg', NULL, 0, 2, 'photo'),
(64, 31, 'alexander-kovacs-SN0mu2M_Va0-unsplash633a752db279d.jpg', NULL, 1, 1, 'photo');

-- --------------------------------------------------------

--
-- Table structure for table `property_price`
--

CREATE TABLE `property_price` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `cleaning_fee` int(11) NOT NULL DEFAULT '0',
  `guest_after` int(11) NOT NULL DEFAULT '0',
  `guest_fee` int(11) NOT NULL DEFAULT '0',
  `security_fee` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `weekend_price` int(11) NOT NULL DEFAULT '0',
  `weekly_discount` int(11) NOT NULL DEFAULT '0',
  `monthly_discount` int(11) NOT NULL DEFAULT '0',
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_price`
--

INSERT INTO `property_price` (`id`, `property_id`, `cleaning_fee`, `guest_after`, `guest_fee`, `security_fee`, `price`, `weekend_price`, `weekly_discount`, `monthly_discount`, `currency_code`) VALUES
(1, 1, 10, 1, 0, 0, 35, 0, 0, 0, 'USD'),
(2, 2, 5, 1, 0, 10, 40, 0, 0, 0, 'USD'),
(3, 3, 10, 10, 10, 0, 42, 0, 0, 0, 'USD'),
(4, 4, 5, 1, 0, 10, 25, 30, 0, 0, 'USD'),
(5, 5, 0, 1, 0, 0, 30, 0, 0, 0, 'USD'),
(6, 6, 0, 1, 0, 0, 30, 0, 0, 0, 'USD'),
(7, 7, 10, 1, 0, 25, 50, 55, 0, 0, 'USD'),
(8, 8, 5, 1, 0, 0, 20, 0, 0, 0, 'USD'),
(9, 9, 0, 1, 0, 0, 60, 0, 5, 0, 'USD'),
(10, 10, 0, 1, 0, 0, 20, 0, 0, 0, 'USD'),
(11, 11, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(12, 12, 0, 0, 0, 0, 80, 0, 0, 0, 'USD'),
(13, 13, 0, 0, 0, 0, 20, 0, 0, 0, 'USD'),
(14, 14, 0, 0, 0, 0, 30, 0, 0, 0, 'USD'),
(15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(16, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(17, 17, 0, 0, 0, 0, 30, 0, 0, 0, 'USD'),
(18, 18, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(19, 19, 0, 0, 0, 0, 50, 0, 0, 0, 'USD'),
(20, 20, 0, 0, 0, 0, 25, 0, 0, 0, 'USD'),
(21, 21, 0, 1, 0, 0, 30, 0, 0, 0, 'USD'),
(22, 22, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(23, 23, 10, 4, 20, 25, 50, 60, 5, 0, 'USD'),
(24, 24, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(25, 25, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(26, 26, 0, 1, 0, 0, 50, 0, 0, 0, 'USD'),
(27, 27, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(28, 28, 0, 0, 0, 0, 500, 0, 0, 0, 'INR'),
(29, 29, 0, 1, 0, 0, 50, 0, 5, 10, 'USD'),
(30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(31, 31, 0, 1, 0, 0, 50, 0, 5, 10, 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `property_rules`
--

CREATE TABLE `property_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_steps`
--

CREATE TABLE `property_steps` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `basics` int(11) NOT NULL DEFAULT '0',
  `description` int(11) NOT NULL DEFAULT '0',
  `location` int(11) NOT NULL DEFAULT '0',
  `photos` int(11) NOT NULL DEFAULT '0',
  `pricing` int(11) NOT NULL DEFAULT '0',
  `booking` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_steps`
--

INSERT INTO `property_steps` (`id`, `property_id`, `basics`, `description`, `location`, `photos`, `pricing`, `booking`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 1, 1, 1, 1, 1, 1),
(3, 3, 1, 1, 1, 1, 1, 1),
(4, 4, 1, 1, 1, 1, 1, 1),
(5, 5, 1, 1, 1, 1, 1, 1),
(6, 6, 1, 1, 1, 1, 1, 1),
(7, 7, 1, 1, 1, 1, 1, 1),
(8, 8, 1, 1, 1, 1, 1, 1),
(9, 9, 1, 1, 1, 1, 1, 1),
(10, 10, 1, 1, 1, 1, 1, 1),
(11, 11, 1, 1, 1, 1, 1, 1),
(12, 12, 1, 1, 1, 1, 1, 1),
(13, 13, 1, 1, 1, 1, 1, 1),
(14, 14, 1, 1, 1, 1, 1, 1),
(15, 15, 1, 1, 1, 1, 1, 1),
(16, 16, 1, 1, 1, 1, 1, 1),
(17, 17, 1, 1, 1, 1, 1, 1),
(18, 18, 1, 1, 1, 1, 1, 1),
(19, 19, 1, 1, 1, 1, 1, 1),
(20, 20, 1, 1, 1, 1, 1, 1),
(21, 21, 1, 1, 1, 1, 1, 1),
(22, 22, 1, 1, 1, 1, 1, 1),
(23, 23, 1, 1, 1, 1, 1, 1),
(24, 24, 1, 1, 1, 1, 0, 0),
(25, 25, 1, 1, 1, 1, 1, 1),
(26, 26, 1, 1, 1, 0, 1, 1),
(27, 27, 0, 0, 0, 0, 0, 0),
(28, 28, 1, 1, 1, 0, 1, 1),
(29, 29, 1, 1, 1, 1, 1, 1),
(30, 30, 1, 1, 1, 1, 1, 1),
(31, 31, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `property_time`
--

CREATE TABLE `property_time` (
  `id` int(11) NOT NULL,
  `property_id` int(25) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property_time`
--

INSERT INTO `property_time` (`id`, `property_id`, `start_time`, `end_time`) VALUES
(1, 13, '10:00 AM', '01:00 PM'),
(2, 13, '01:00 PM', '03:00 PM'),
(3, 13, NULL, NULL),
(4, 17, '08:00 AM', '10:00 AM'),
(5, 17, '10:00 AM', '12:00 PM'),
(6, 17, '12:00 PM', '02:00 PM'),
(7, 17, '02:00 PM', '04:00 AM'),
(8, 19, '08:00 AM', '09:00 AM'),
(9, 19, '09:00 AM', '10:00 AM'),
(10, 19, '10:00 AM', '11:00 AM'),
(11, 20, '10:00 AM', '12:00 PM'),
(12, 20, '12:00 PM', '02:00 PM'),
(13, 20, '02:00 AM', '04:00 AM'),
(14, 20, '04:00 AM', '06:00 AM');

-- --------------------------------------------------------

--
-- Table structure for table `property_type`
--

CREATE TABLE `property_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `temp_id` int(25) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` int(25) DEFAULT NULL,
  `deleted_status` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_type`
--

INSERT INTO `property_type` (`id`, `temp_id`, `name`, `description`, `status`, `icon`, `lang`, `lang_id`, `deleted_status`) VALUES
(1, 1, 'Apartment', 'Apartment', 'Active', 'apartment.jpg', 'en', 1, 'No'),
(2, 2, 'House', 'House', 'Active', 'house.jpg', 'en', 1, 'No'),
(3, 3, 'Bed & Break Fast', 'Bed & Break Fast', 'Active', 'bed-and-breakfast.png', 'en', 1, 'No'),
(4, 4, 'Loft', 'Loft', 'Active', 'loft.png', 'en', 1, 'No'),
(5, 5, 'Townhouse', 'Townhouse', 'Active', 'town house.png', 'en', 1, 'No'),
(6, 6, 'Condominium', 'Condominium', 'Active', 'condominium.png', 'en', 1, 'No'),
(7, 7, 'Bungalow', 'Bungalow', 'Active', 'bungalow.png', 'en', 1, 'No'),
(8, 8, 'Cabin', 'Cabin', 'Active', 'cabin.png', 'en', 1, 'No'),
(9, 9, 'Villa', 'Villa', 'Active', 'villa.png', 'en', 1, 'No'),
(10, 10, 'Castle', 'Castle', 'Active', 'sand-castle.png', 'en', 1, 'No'),
(11, 11, 'Dorm', 'Dorm', 'Active', 'dormitory.png', 'en', 1, 'No'),
(12, 12, 'Treehouse', 'Treehouse', 'Active', 'tree-house.png', 'en', 1, 'No'),
(13, 13, 'Boat', 'Boat', 'Active', 'boat.png', 'en', 1, 'No'),
(14, 14, 'Plane', 'Plane', 'Active', 'airplane.png', 'en', 1, 'No'),
(15, 15, 'Camper/RV', 'Camper/RV', 'Active', 'camper.png', 'en', 1, 'No'),
(16, 16, 'Igloo', 'Igloo', 'Active', 'igloo.png', 'en', 1, 'No'),
(18, 18, 'Yurt', 'Yurt', 'Active', 'yurt.png', 'en', 1, 'No'),
(19, 19, 'Tipi', 'Tipi', 'Active', 'tipi.png', 'en', 1, 'No'),
(20, 20, 'Cave', 'Cave', 'Active', 'cave.png', 'en', 1, 'No'),
(21, 21, 'Island', 'Island', 'Active', 'island.png', 'en', 1, 'No'),
(22, 22, 'Chalet', 'Chalet', 'Active', 'chalet.png', 'en', 1, 'No'),
(23, 23, 'Earth House', 'Earth House', 'Active', 'earth house.png', 'en', 1, 'No'),
(24, 24, 'Hut', 'Hut', 'Active', 'hut.png', 'en', 1, 'No'),
(25, 25, 'Train', 'Train', 'Active', 'train.png', 'en', 1, 'No'),
(26, 26, 'Tent', 'Tent', 'Active', 'tent.png', 'en', 1, 'No'),
(27, 27, 'Other', 'Other', 'Active', 'more.png', 'en', 1, 'No'),
(44, 44, 'Lighthouse', 'Lighthouse', 'Active', 'lighthouse.png', 'en', 1, 'No'),
(45, 44, 'منارz', 'منارة', 'Active', NULL, 'ar', 2, 'No'),
(46, 44, '灯塔', '灯塔', 'Active', NULL, 'ch', 3, 'No'),
(47, 44, 'phare', 'phare', 'Active', NULL, 'fr', 4, 'No'),
(48, 44, 'Portugais', 'Portugais', 'Active', NULL, 'pt', 5, 'No'),
(49, 44, 'маяк', 'маяк', 'Active', NULL, 'ru', 6, 'No'),
(50, 44, 'faro', 'faro', 'Active', NULL, 'es', 7, 'No'),
(51, 44, 'deniz feneri', 'deniz feneri', 'Active', NULL, 'tr', 8, 'No'),
(52, 52, 'test', 'test desc', 'Active', 'filter.jpg', 'en', 1, 'No'),
(53, 52, 'اختبار', 'اختبار', 'Active', NULL, 'ar', 2, 'No'),
(54, 52, '测试', '测试', 'Active', NULL, 'ch', 3, 'No'),
(55, 52, 'test', 'test', 'Active', NULL, 'fr', 4, 'No'),
(56, 52, 'teste', 'teste', 'Active', NULL, 'pt', 5, 'No'),
(57, 52, 'тестовое задание', 'тестовое задание', 'Active', NULL, 'ru', 6, 'No'),
(58, 52, 'prueba', 'prueba', 'Active', NULL, 'es', 7, 'No'),
(59, 52, 'Ölçek', 'Ölçek', 'Active', NULL, 'tr', 8, 'No'),
(60, 18, 'يورت', 'يورت', 'Active', NULL, 'ar', 2, 'No'),
(61, 18, '蒙古包', '蒙古包', 'Active', NULL, 'ch', 3, 'No'),
(62, 18, 'Yourte', 'Yourte', 'Active', NULL, 'fr', 4, 'No'),
(63, 18, 'Yurt', 'Yurt', 'Active', NULL, 'pt', 5, 'No'),
(64, 18, 'Юрта', 'Юрта', 'Active', NULL, 'ru', 6, 'No'),
(65, 18, 'Yurta', 'Yurta', 'Active', NULL, 'es', 7, 'No'),
(66, 18, 'yurt', 'yurt', 'Active', NULL, 'tr', 8, 'No'),
(67, 9, 'فيلا', 'فيلا', 'Active', NULL, 'ar', 2, 'No'),
(68, 9, '维拉', '维拉', 'Active', NULL, 'ch', 3, 'No'),
(69, 9, 'villa', 'villa', 'Active', NULL, 'fr', 4, 'No'),
(70, 9, 'villa', 'villa', 'Active', NULL, 'pt', 5, 'No'),
(71, 9, 'вилла', 'вилла', 'Active', NULL, 'ru', 6, 'No'),
(72, 9, 'vila', 'vila', 'Active', NULL, 'es', 7, 'No'),
(73, 9, 'villa', 'villa', 'Active', NULL, 'tr', 8, 'No'),
(74, 12, 'تري هاوس', 'تري هاوس', 'Active', NULL, 'ar', 2, 'No'),
(75, 12, '树屋', '树屋', 'Active', NULL, 'ch', 3, 'No'),
(76, 12, 'cabane dans les arbres', 'cabane dans les arbres', 'Active', NULL, 'fr', 4, 'No'),
(77, 12, 'casa da árvore', 'casa da árvore', 'Active', NULL, 'pt', 5, 'No'),
(78, 12, 'дом на дереве', 'дом на дереве', 'Active', NULL, 'ru', 6, 'No'),
(79, 12, 'casa del árbol', 'casa del árbol', 'Active', NULL, 'es', 7, 'No'),
(80, 25, 'يدرب', 'يدرب', 'Active', NULL, 'ar', 2, 'No'),
(81, 12, 'ağaç ev', 'ağaç ev', 'Active', NULL, 'tr', 8, 'No'),
(82, 25, '火车', '火车', 'Active', NULL, 'ch', 3, 'No'),
(83, 25, 'métro', 'métro', 'Active', NULL, 'fr', 4, 'No'),
(84, 25, 'Comboio', 'Comboio', 'Active', NULL, 'pt', 5, 'No'),
(85, 25, 'тренироваться', 'тренироваться', 'Active', NULL, 'ru', 6, 'No'),
(86, 25, 'tren', 'tren', 'Active', NULL, 'es', 7, 'No'),
(87, 25, 'tren', 'tren', 'Active', NULL, 'tr', 8, 'No'),
(88, 5, 'تاون هاوس', 'تاون هاوس', 'Active', NULL, 'ar', 2, 'No'),
(89, 5, '联排别墅', '联排别墅', 'Active', NULL, 'ch', 3, 'No'),
(90, 5, 'maison de ville', 'maison de ville', 'Active', NULL, 'fr', 4, 'No'),
(91, 5, 'kamienica', 'kamienica', 'Active', NULL, 'pt', 5, 'No'),
(92, 5, 'таунхаус', 'таунхаус', 'Active', NULL, 'ru', 6, 'No'),
(93, 5, 'casa adosada', 'casa adosada', 'Active', NULL, 'es', 7, 'No'),
(94, 5, 'konak', 'konak', 'Active', NULL, 'tr', 8, 'No'),
(95, 19, 'تيبي', 'تيبي', 'Active', NULL, 'ar', 2, 'No'),
(96, 19, '蒂皮', '蒂皮', 'Active', NULL, 'ch', 3, 'No'),
(97, 19, 'tipi', 'tipi', 'Active', NULL, 'fr', 4, 'No'),
(98, 19, 'tipi', 'tipi', 'Active', NULL, 'pt', 5, 'No'),
(99, 19, 'типи', 'типи', 'Active', NULL, 'ru', 6, 'No'),
(100, 19, 'tipi', 'tipi', 'Active', NULL, 'es', 7, 'No'),
(101, 19, 'tip', 'tip', 'Active', NULL, 'tr', 8, 'No'),
(102, 1, 'شقة', 'شقة', 'Active', NULL, 'ar', 2, 'No'),
(103, 1, '公寓', '公寓', 'Active', NULL, 'ch', 3, 'No'),
(104, 1, 'bâtiment de plusieurs chambres', 'bâtiment de plusieurs chambres', 'Active', NULL, 'fr', 4, 'No'),
(105, 1, 'apartamento', 'apartamento', 'Active', NULL, 'pt', 5, 'No'),
(106, 1, 'квартира', 'квартира', 'Active', NULL, 'ru', 6, 'No'),
(107, 1, 'Departamento', 'Departamento', 'Active', NULL, 'es', 7, 'No'),
(108, 1, 'apartman', 'apartman', 'Active', NULL, 'tr', 8, 'No'),
(109, 2, 'منزل', 'منزل', 'Active', NULL, 'ar', 2, 'No'),
(110, 2, '房子', '房子', 'Active', NULL, 'ch', 3, 'No'),
(111, 2, 'maison', 'maison', 'Active', NULL, 'fr', 4, 'No'),
(112, 2, 'casa', 'casa', 'Active', NULL, 'pt', 5, 'No'),
(113, 2, 'дом', 'дом', 'Active', NULL, 'ru', 6, 'No'),
(114, 2, 'casa', 'casa', 'Active', NULL, 'es', 7, 'No'),
(115, 2, 'ev', 'ev', 'Active', NULL, 'tr', 8, 'No'),
(116, 26, 'خيمة', 'خيمة', 'Active', NULL, 'ar', 2, 'No'),
(117, 26, '棚屋', '棚屋', 'Active', NULL, 'ch', 3, 'No'),
(118, 26, 'Tente', 'Tente', 'Active', NULL, 'fr', 4, 'No'),
(119, 26, 'tenda', 'tenda', 'Active', NULL, 'pt', 5, 'No'),
(120, 26, 'палатка', 'палатка', 'Active', NULL, 'ru', 6, 'No'),
(121, 26, 'carpa', 'carpa', 'Active', NULL, 'es', 7, 'No'),
(122, 26, 'çadır', 'çadır', 'Active', NULL, 'tr', 8, 'No'),
(123, 14, 'طائرة', 'طائرة', 'Active', NULL, 'ar', 2, 'No'),
(124, 14, '飞机', '飞机', 'Active', NULL, 'ch', 3, 'No'),
(125, 14, 'avion', 'avion', 'Active', NULL, 'fr', 4, 'No'),
(126, 14, 'avião', 'avião', 'Active', NULL, 'pt', 5, 'No'),
(127, 14, 'самолет', 'самолет', 'Active', NULL, 'ru', 6, 'No'),
(128, 14, 'avión', 'avión', 'Active', NULL, 'es', 7, 'No'),
(129, 14, 'uçak', 'uçak', 'Active', NULL, 'tr', 8, 'No'),
(130, 27, 'آخر', 'آخر', 'Active', NULL, 'ar', 2, 'No'),
(131, 27, '其他', '其他', 'Active', NULL, 'ch', 3, 'No'),
(132, 27, 'autre', 'autre', 'Active', NULL, 'fr', 4, 'No'),
(133, 27, 'de outros', 'de outros', 'Active', NULL, 'pt', 5, 'No'),
(134, 27, 'Другие', 'Другие', 'Active', NULL, 'ru', 6, 'No'),
(135, 27, 'otro', 'otro', 'Active', NULL, 'es', 7, 'No'),
(136, 27, 'başka', 'başka', 'Active', NULL, 'tr', 8, 'No'),
(137, 4, 'العلية', 'العلية', 'Active', NULL, 'ar', 2, 'No'),
(138, 4, '阁楼', '阁楼', 'Active', NULL, 'ch', 3, 'No'),
(139, 4, 'grenier', 'grenier', 'Active', NULL, 'fr', 4, 'No'),
(140, 4, 'loft', 'loft', 'Active', NULL, 'pt', 5, 'No'),
(141, 4, 'чердак', 'чердак', 'Active', NULL, 'ru', 6, 'No'),
(142, 4, 'desván', 'desván', 'Active', NULL, 'es', 7, 'No'),
(143, 4, 'çatı katı', 'çatı katı', 'Active', NULL, 'tr', 8, 'No'),
(144, 16, 'المبني القبني', 'المبني القبني', 'Active', NULL, 'ar', 2, 'No'),
(145, 16, '冰屋', '冰屋', 'Active', NULL, 'ch', 3, 'No'),
(146, 16, 'Iglou', 'Iglou', 'Active', NULL, 'fr', 4, 'No'),
(147, 16, 'iglu', 'iglu', 'Active', NULL, 'pt', 5, 'No'),
(148, 16, 'иглу', 'иглу', 'Active', NULL, 'ru', 6, 'No'),
(149, 16, 'iglú', 'iglú', 'Active', NULL, 'es', 7, 'No'),
(150, 16, 'eskimo', 'eskimo', 'Active', NULL, 'tr', 8, 'No'),
(151, 21, 'جزيرة', 'جزيرة', 'Active', NULL, 'ar', 2, 'No'),
(152, 21, '岛', '岛', 'Active', NULL, 'ch', 3, 'No'),
(153, 21, 'île', 'île', 'Active', NULL, 'fr', 4, 'No'),
(154, 21, 'ilha', 'ilha', 'Active', NULL, 'pt', 5, 'No'),
(155, 21, 'остров', 'остров', 'Active', NULL, 'ru', 6, 'No'),
(156, 21, 'isla', 'isla', 'Active', NULL, 'es', 7, 'No'),
(157, 21, 'Adalet', 'Adalet', 'Active', NULL, 'tr', 8, 'No'),
(158, 24, 'كوخ', 'كوخ', 'Active', NULL, 'ar', 2, 'No'),
(159, 24, '小屋', '小屋', 'Active', NULL, 'ch', 3, 'No'),
(160, 24, 'cabane', 'cabane', 'Active', NULL, 'fr', 4, 'No'),
(161, 24, 'cabana', 'cabana', 'Active', NULL, 'pt', 5, 'No'),
(162, 24, 'хижина', 'хижина', 'Active', NULL, 'ru', 6, 'No'),
(163, 24, 'cabaña', 'cabaña', 'Active', NULL, 'es', 7, 'No'),
(164, 24, 'kulübe', 'kulübe', 'Active', NULL, 'tr', 8, 'No'),
(165, 23, 'بيت الأرض', 'بيت الأرض', 'Active', NULL, 'ar', 2, 'No'),
(166, 23, '地球屋', '地球屋', 'Active', NULL, 'ch', 3, 'No'),
(167, 23, 'Maison de la Terre', 'Maison de la Terre', 'Active', NULL, 'fr', 4, 'No'),
(168, 23, 'Casa da Terra', 'Casa da Terra', 'Active', NULL, 'pt', 5, 'No'),
(169, 23, 'Земляной дом', 'Земляной дом', 'Active', NULL, 'ru', 6, 'No'),
(170, 23, 'Casa de la tierra', 'Casa de la tierra', 'Active', NULL, 'es', 7, 'No'),
(171, 23, 'toprak ev', 'toprak ev', 'Active', NULL, 'tr', 8, 'No'),
(172, 11, 'المسكن', 'المسكن', 'Active', NULL, 'ar', 2, 'No'),
(173, 11, '宿舍', '宿舍', 'Active', NULL, 'ch', 3, 'No'),
(174, 11, 'dortoir', 'dortoir', 'Active', NULL, 'fr', 4, 'No'),
(175, 11, 'dormitório', 'dormitório', 'Active', NULL, 'pt', 5, 'No'),
(176, 11, 'общежитие', 'общежитие', 'Active', NULL, 'ru', 6, 'No'),
(177, 11, 'residencia universitaria', 'residencia universitaria', 'Active', NULL, 'es', 7, 'No'),
(178, 11, 'yurt', 'yurt', 'Active', NULL, 'tr', 8, 'No'),
(179, 6, 'عمارات', 'عمارات', 'Active', NULL, 'ar', 2, 'No'),
(180, 6, '共管公寓', '共管公寓', 'Active', NULL, 'ch', 3, 'No'),
(181, 6, 'condominium', 'condominium', 'Active', NULL, 'fr', 4, 'No'),
(182, 6, 'condomínio', 'condomínio', 'Active', NULL, 'pt', 5, 'No'),
(183, 6, 'кондоминиум', 'кондоминиум', 'Active', NULL, 'ru', 6, 'No'),
(184, 6, 'condominio', 'condominio', 'Active', NULL, 'es', 7, 'No'),
(185, 6, 'kat mülkiyeti', 'kat mülkiyeti', 'Active', NULL, 'tr', 8, 'No'),
(186, 22, 'شاليه', 'شاليه', 'Active', NULL, 'ar', 2, 'No'),
(187, 22, '木屋', '木屋', 'Active', NULL, 'ch', 3, 'No'),
(188, 22, 'Chalet', 'Chalet', 'Active', NULL, 'fr', 4, 'No'),
(189, 22, 'Chalé', 'Chalé', 'Active', NULL, 'pt', 5, 'No'),
(190, 22, 'Шале', 'Шале', 'Active', NULL, 'ru', 6, 'No'),
(191, 22, 'chalé', 'chalé', 'Active', NULL, 'es', 7, 'No'),
(192, 22, 'Dağ evi', 'Dağ evi', 'Active', NULL, 'tr', 8, 'No'),
(193, 20, 'كهف', 'كهف', 'Active', NULL, 'ar', 2, 'No'),
(194, 20, '洞穴', '洞穴', 'Active', NULL, 'ch', 3, 'No'),
(195, 20, 'la grotte', 'la grotte', 'Active', NULL, 'fr', 4, 'No'),
(196, 20, 'caverna', 'caverna', 'Active', NULL, 'pt', 5, 'No'),
(197, 20, 'пещера', 'пещера', 'Active', NULL, 'ru', 6, 'No'),
(198, 20, 'cueva', 'cueva', 'Active', NULL, 'es', 7, 'No'),
(199, 20, 'mağara', 'mağara', 'Active', NULL, 'tr', 8, 'No'),
(200, 10, 'قلعة', 'قلعة', 'Active', NULL, 'ar', 2, 'No'),
(201, 10, '城堡', '城堡', 'Active', NULL, 'ch', 3, 'No'),
(202, 10, 'château', 'château', 'Active', NULL, 'fr', 4, 'No'),
(203, 10, 'castelo', 'castelo', 'Active', NULL, 'pt', 5, 'No'),
(204, 10, 'замок', 'замок', 'Active', NULL, 'ru', 6, 'No'),
(205, 10, 'castillo', 'castillo', 'Active', NULL, 'es', 7, 'No'),
(206, 10, 'kale', 'kale', 'Active', NULL, 'tr', 8, 'No'),
(207, 15, 'العربة / عربة سكن متنقلة', 'العربة / عربة سكن متنقلة', 'Active', NULL, 'ar', 2, 'No'),
(208, 15, '露营车/房车', '露营车/房车', 'Active', NULL, 'ch', 3, 'No'),
(209, 15, 'Camping-car / VR', 'Camping-car / VR', 'Active', NULL, 'fr', 4, 'No'),
(210, 15, 'Caravana / RV', 'Caravana / RV', 'Active', NULL, 'pt', 5, 'No'),
(211, 15, 'Кемпер / Фургон', 'Кемпер / Фургон', 'Active', NULL, 'ru', 6, 'No'),
(212, 15, 'Camper / RV', 'Camper / RV', 'Active', NULL, 'es', 7, 'No'),
(213, 15, 'karavan / karavan', 'karavan / karavan', 'Active', NULL, 'tr', 8, 'No'),
(214, 8, 'الطائرة', 'الطائرة', 'Active', NULL, 'ar', 2, 'No'),
(215, 8, '舱', '舱', 'Active', NULL, 'ch', 3, 'No'),
(216, 8, 'cabine', 'cabine', 'Active', NULL, 'fr', 4, 'No'),
(217, 8, 'cabine', 'cabine', 'Active', NULL, 'pt', 5, 'No'),
(218, 8, 'салон самолета', 'салон самолета', 'Active', NULL, 'ru', 6, 'No'),
(219, 8, 'cabina', 'cabina', 'Active', NULL, 'es', 7, 'No'),
(220, 8, 'kabin', 'kabin', 'Active', NULL, 'tr', 8, 'No'),
(221, 7, 'بيت من طابق واحد', 'بيت من طابق واحد', 'Active', NULL, 'ar', 2, 'No'),
(222, 7, '平房', '平房', 'Active', NULL, 'ch', 3, 'No'),
(223, 7, 'bungalow', 'bungalow', 'Active', NULL, 'fr', 4, 'No'),
(224, 7, 'bangalô', 'bangalô', 'Active', NULL, 'pt', 5, 'No'),
(225, 7, 'бунгало', 'бунгало', 'Active', NULL, 'ru', 6, 'No'),
(226, 7, 'bungalow', 'bungalow', 'Active', NULL, 'es', 7, 'No'),
(227, 7, 'tek katlı ev', 'tek katlı ev', 'Active', NULL, 'tr', 8, 'No'),
(228, 13, 'قارب', 'قارب', 'Active', NULL, 'ar', 2, 'No'),
(229, 13, '船', '船', 'Active', NULL, 'ch', 3, 'No'),
(230, 13, 'bateau', 'bateau', 'Active', NULL, 'fr', 4, 'No'),
(231, 13, 'barco', 'barco', 'Active', NULL, 'pt', 5, 'No'),
(232, 13, 'лодка', 'лодка', 'Active', NULL, 'ru', 6, 'No'),
(233, 13, 'barco', 'barco', 'Active', NULL, 'es', 7, 'No'),
(234, 13, 'tekne', 'tekne', 'Active', NULL, 'tr', 8, 'No'),
(235, 3, 'سرير و فطور', 'سرير و فطور', 'Active', NULL, 'ar', 2, 'No'),
(236, 3, '床和早餐', '床和早餐', 'Active', NULL, 'ch', 3, 'No'),
(237, 3, 'lit et petit-déjeuner', 'lit et petit-déjeuner', 'Active', NULL, 'fr', 4, 'No'),
(238, 3, 'Cama e café da manhã', 'Cama e café da manhã', 'Active', NULL, 'pt', 5, 'No'),
(239, 3, 'Кровать и завтрак', 'Кровать и завтрак', 'Active', NULL, 'ru', 6, 'No'),
(240, 3, 'Cama y Desayuno', 'Cama y Desayuno', 'Active', NULL, 'es', 7, 'No'),
(241, 3, 'Oda & Kahvaltı', 'Oda & Kahvaltı', 'Active', NULL, 'tr', 8, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` enum('unsolved','solved') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unsolved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `reviewer` enum('guest','host') COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `secret_feedback` text COLLATE utf8mb4_unicode_ci,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `improve_message` text COLLATE utf8mb4_unicode_ci,
  `rating` int(11) DEFAULT NULL,
  `accuracy` int(11) DEFAULT NULL,
  `accuracy_message` text COLLATE utf8mb4_unicode_ci,
  `location` int(11) DEFAULT NULL,
  `location_message` text COLLATE utf8mb4_unicode_ci,
  `communication` int(11) DEFAULT NULL,
  `communication_message` text COLLATE utf8mb4_unicode_ci,
  `checkin` int(11) DEFAULT NULL,
  `checkin_message` text COLLATE utf8mb4_unicode_ci,
  `cleanliness` int(11) DEFAULT NULL,
  `cleanliness_message` text COLLATE utf8mb4_unicode_ci,
  `amenities` int(11) DEFAULT NULL,
  `amenities_message` text COLLATE utf8mb4_unicode_ci,
  `value` int(11) DEFAULT NULL,
  `value_message` text COLLATE utf8mb4_unicode_ci,
  `house_rules` int(11) DEFAULT NULL,
  `recommend` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `sender_id`, `receiver_id`, `booking_id`, `property_id`, `reviewer`, `message`, `secret_feedback`, `comments`, `improve_message`, `rating`, `accuracy`, `accuracy_message`, `location`, `location_message`, `communication`, `communication_message`, `checkin`, `checkin_message`, `cleanliness`, `cleanliness_message`, `amenities`, `amenities_message`, `value`, `value_message`, `house_rules`, `recommend`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 3, 4, 'guest', 'Our stay was incredibly enjoyable, and checking in was a breeze!', 'Best accommodation for a vacation trip', NULL, 'None', 5, 5, NULL, 5, NULL, 5, NULL, 5, NULL, 4, NULL, 5, NULL, 5, NULL, NULL, NULL, '2022-09-05 02:48:22', '2022-09-05 02:48:47'),
(2, 1, 3, 3, 4, 'host', 'Hosting you was a delight. You gave everything such careful consideration. You really simplified our tasks.', 'Hosting you was a delight. You gave everything such careful consideration. You really simplified our tasks.', NULL, NULL, 5, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 5, NULL, '2022-09-05 02:51:25', '2022-09-05 02:51:25'),
(3, 1, 2, 4, 8, 'guest', 'Extremely pleasant place with a good host! I\'m really grateful for this experience.', 'Extremely pleasant place with a good host! I\'m really grateful for this experience.', NULL, 'None', 5, 4, NULL, 5, NULL, 5, NULL, 5, NULL, 5, NULL, 5, NULL, 5, NULL, NULL, NULL, '2022-09-05 02:56:14', '2022-09-05 02:56:24'),
(4, 2, 1, 4, 8, 'host', 'Friendly and mindful of the surroundings. fully adhered to the house rules. We would adore having you back!', 'friendly and mindful of the surroundings. fully adhered to the house rules. We would adore having you back!', NULL, NULL, 5, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 5, NULL, '2022-09-05 02:58:39', '2022-09-05 02:58:39'),
(5, 1, 2, 7, 25, 'guest', 'Excellent hiking Across Thekkady\'s mountain\'s! Awesome Experience', 'Valuable information was shared all along walk by the best host', NULL, 'None', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-24 02:14:30', '2022-09-24 02:14:30'),
(6, 2, 1, 7, 25, 'host', 'An excellent guest to have, compiled by all the trekking guidelines.', 'I had a great time hosting this guest. Easy to communicate with', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-24 02:35:16', '2022-09-24 02:35:16'),
(7, 1, 2, 6, 23, 'guest', 'We had a great time there and thoroughly enjoyed our holiday.', 'The host is incredibly accommodating and helpful', NULL, 'None', 5, NULL, NULL, 5, NULL, 5, NULL, 4, NULL, 5, NULL, 5, NULL, 5, NULL, NULL, NULL, '2022-09-29 04:34:11', '2022-09-29 04:34:29'),
(8, 2, 1, 6, 23, 'host', 'It was delightful to host such a kind and friendly guest.', 'During the entire visit, the guest was respectful and left the property clean.', NULL, NULL, 5, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 5, NULL, '2022-09-29 04:38:11', '2022-09-29 04:38:11'),
(9, 1, 2, 5, 23, 'guest', 'Best Accommodation and host', 'Best Accommodation and host', NULL, 'none', 5, 5, NULL, 4, NULL, 4, NULL, 4, NULL, 4, NULL, 4, NULL, 5, NULL, NULL, NULL, '2022-10-03 08:08:43', '2022-10-03 08:08:53');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admin User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_admin`
--

CREATE TABLE `role_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_admin`
--

INSERT INTO `role_admin` (`admin_id`, `role_id`) VALUES
(1, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `message`, `status`) VALUES
(1, 'Suitable for children (2-12 years)', 'Active'),
(2, 'Suitable for infants (Under 2 years)', 'Active'),
(3, 'Suitable for pets', 'Active'),
(4, 'Smoking allowed', 'Active'),
(5, 'Events or parties allowed', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `seo_metas`
--

CREATE TABLE `seo_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_metas`
--

INSERT INTO `seo_metas` (`id`, `url`, `title`, `description`, `keywords`) VALUES
(1, '/', 'Home | Rental  Marketplace Script', 'Rental marketplace to Add your listing & Earn', 'rental business, rental marketplace, rental script'),
(2, 'login', 'Log In', 'Log In', ''),
(3, 'register', 'Register', 'Register', ''),
(4, 'newest', 'Newest Photos', 'Newest Photos', ''),
(5, 'forgot_password', 'Forgot Password', 'Forgot Password', ''),
(6, 'dashboard', 'Feeds', 'Feeds', ''),
(7, 'uploads', 'Uploads', 'Uploads', ''),
(8, 'notification', 'Notification', 'Notification', ''),
(9, 'profile', 'Profile', 'Profile', ''),
(10, 'profile/{id}', 'Profile', 'Profile', ''),
(11, 'manage-photos', 'Manage Photos', 'Manage Photos', ''),
(12, 'earning', 'Earning', 'Earning', ''),
(13, 'purchase', 'Purchase', 'Purchase', ''),
(14, 'settings', 'Settings', 'Settings', ''),
(15, 'settings/account', 'Settings', 'Settings', ''),
(16, 'settings/payment', 'Settings', 'Settings', ''),
(17, 'photo/single/{id}', 'Photo Single', 'Photo Single', ''),
(18, 'payments/success', 'Payment Success', 'Payment Success', ''),
(19, 'payments/cancel', 'Payment Cancel', 'Payment Cancel', ''),
(20, 'profile-uploads/{type}', 'Profile Uploads', 'Profile Uploads', ''),
(21, 'photo-details/{id}', 'Photo Details', 'Photo Details', ''),
(22, 'withdraws', 'Withdraws', 'Withdraws', ''),
(23, 'photos/download/{id}', 'Photos Download', 'Photos Download', ''),
(24, 'users/reset_password/{secret?}', 'Reset Password', 'Reset Password', ''),
(25, 'search/{word}', 'Search Result', 'Search Result', ''),
(26, 'search/user/{word}', 'Search User Result', 'Search User Result', ''),
(27, 'signup', 'Signup', 'Signup', ''),
(28, 'property/create', 'Create New Property', 'Create New Property', ''),
(29, 'listing/{id}/{step}', 'Property Listing', 'Property Listing', ''),
(30, 'properties', 'Properties', 'Properties', ''),
(31, 'my_bookings', 'My Bookings', 'My Bookings', ''),
(32, 'trips/active', 'Your Trips', 'Your Trips', ''),
(33, 'users/profile', 'Edit Profile', 'Edit Profile', ''),
(34, 'users/account_preferences', 'Account Preferences', 'Account Preferences', ''),
(35, 'users/transaction_history', 'Transaction History', 'Transaction History', ''),
(36, 'users/security', 'Security', 'Security', ''),
(37, 'search', 'Search', 'Search', ''),
(38, 'inbox', 'Inbox', 'Inbox', ''),
(39, 'users/profile/media', 'Profile Photo', 'Profile Photo', ''),
(40, 'booking/requested', 'Payment Completed', 'Payment Completed', '');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `type`) VALUES
(1, 'name', 'Buy2Rental', 'general'),
(2, 'logo', NULL, 'general'),
(3, 'favicon', '1628150085_favicon.png', 'general'),
(4, 'head_code', '', 'general'),
(5, 'default_currency', '1', 'general'),
(6, 'default_language', '1', 'general'),
(7, 'email_logo', 'email_logo.png', 'general'),
(8, 'username', 't.h.vi_1351491820_biz_api1.gmail.com', 'PayPal'),
(9, 'password', '1351491839', 'PayPal'),
(10, 'signature', 'AZGV1CNjHxJ4zn5NqPrGQtAvS90vAkjDSqiU7eAJJQF-TOZssH4CUz8T', 'PayPal'),
(11, 'mode', 'sandbox', 'PayPal'),
(12, 'paypal_status', '1', 'PayPal'),
(13, 'publishable', 'pk_test_51JP1GISHoGAoXlO0cI5iJMhY0Xp5pm5MM5L6lUrepGpReDkawvYcpsjkgJqUFNk8wVoZpE2Z66GMmPHMH1Dn9UxW00UYyHa3Ad', 'Stripe'),
(14, 'secret', 'sk_test_51JP1GISHoGAoXlO0lSzTJ7XRFfdCindE0ZrMwJp2sYJ97HzCN4GCvMgTFp1o970830RqOuAKBdW5KdPL4wXlwBfc00GSuKGYO0', 'Stripe'),
(15, 'stripe_status', '1', 'Stripe'),
(16, 'driver', 'smtp', 'email'),
(17, 'host', 'mail.demowpthemes.com', 'email'),
(18, 'port', '465', 'email'),
(19, 'from_address', 'test@demowpthemes.com', 'email'),
(20, 'from_name', 'Buy2Rental', 'email'),
(21, 'encryption', 'SSL', 'email'),
(22, 'username', 'test@demowpthemes.com', 'email'),
(23, 'password', 'YNwDh.0?wXzL', 'email'),
(24, 'facebook', '#', 'join_us'),
(25, 'google_plus', '#', 'join_us'),
(26, 'twitter', '#', 'join_us'),
(27, 'linkedin', '#', 'join_us'),
(28, 'pinterest', '#', 'join_us'),
(29, 'youtube', '#', 'join_us'),
(30, 'instagram', '#', 'join_us'),
(31, 'key', 'AIzaSyA6wia8aK8N3tbsi-b5X5tT7sfjjOdHf6g', 'googleMap'),
(32, 'client_id', '673970283138-om7qt5erh1bd3a92ftcvt4pv2tg4mhlj.apps.googleusercontent.com', 'google'),
(33, 'client_secret', 'B8SZ7qyNwoGkRlSlXZpZWIjy', 'google'),
(34, 'client_id', '290119536484571', 'facebook'),
(35, 'client_secret', 'c6538c565e5cde4413da29f110641029', 'facebook'),
(36, 'email_status', '1', 'email'),
(37, 'row_per_page', '24', 'preferences'),
(38, 'date_separator', '-', 'preferences'),
(39, 'date_format', '1', 'preferences'),
(40, 'dflt_timezone', 'UTC', 'preferences'),
(41, 'money_format', 'before', 'preferences'),
(42, 'date_format_type', 'dd-mm-yyyy', 'preferences'),
(43, 'front_date_format_type', 'dd-mm-yy', 'preferences'),
(44, 'search_date_format_type', 'd-m-yy', 'preferences'),
(45, 'auto_approval', 'no', 'general'),
(46, 'light_logo', '1654012655_light_logo.png', 'general'),
(47, 'colorpicker', '#ed3615', 'general'),
(48, 'user_login_img', '1635916380_user_login_img.jpg', 'general'),
(49, 'admin_login_img', '1635916462_admin_login_img.png', 'general'),
(50, 'list_your_space', '1635921594_list_your_space.jpg', 'general'),
(51, 'description_img', '1635920925_description_img.jpg', 'general'),
(52, 'hosting_third_img', '1635920977_hosting_third_img.jpg', 'general'),
(53, 'hosting_fourth_img', '1635921016_hosting_fourth_img.jpg', 'general'),
(54, 'hosting_fifth_img', '1635921121_hosting_fifth_img.jpg', 'general'),
(55, 'hosting_sixth_img', '1635921178_hosting_sixth_img.jpg', 'general'),
(56, 'hosting_seventh_img', '1635921220_hosting_seventh_img.jpg', 'general'),
(57, 'hosting_eighth_img', '1635921270_hosting_eighth_img.jpg', 'general'),
(58, 'hosting_ninth_img', '1635921373_hosting_ninth_img.jpg', 'general'),
(59, 'try_hosting_img', '1635917422_try_hosting_img.jpg', 'general'),
(60, 'invoice_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'general'),
(61, 'recaptcha_site_key', '6Lc2fYkdAAAAAJz7hw6enl07t7i2nWDO_4nZlw3M', 'google'),
(62, 'recaptcha_secret_key', '6Lc2fYkdAAAAAAG7cWu_oJp059KLoeP_Ol4Iqi5p', 'google'),
(63, 'guest_payment_expiration_time', '1', 'general'),
(64, 'enable_captcha', 'no', 'general'),
(65, 'razorpay_key', 'rzp_test_CFuxKXKEXHgUGM', 'Razorpay'),
(66, 'razorpay_secret', 'VYW1zvdW8eF0vjAY2ybyE2y4', 'Razorpay'),
(67, 'razorpay_status', '1', 'Razorpay'),
(68, 'enable_facebook', 'yes', 'general'),
(69, 'enable_google', 'yes', 'general'),
(70, 'experience_first_img', '1660816095_experience_first_img.png', 'general'),
(71, 'experience_second_img', '1660816095_experience_second_img.png', 'general'),
(72, 'experience_third_img', '1660816095_experience_third_img.png', 'general'),
(73, 'experience_fourth_img', '1660816095_experience_fourth_img.png', 'general'),
(74, 'experience_fifth_img', '1660816095_experience_fifth_img.png', 'general'),
(75, 'experience_sixth_img', '1660816095_experience_sixth_img.png', 'general'),
(76, 'experience_seventh_img', '1660816095_experience_seventh_img.png', 'general'),
(77, 'experience_eighth_img', '1660816095_experience_eighth_img.png', 'general'),
(78, 'experience_ninth_img', '1660816095_experience_ninth_img.png', 'general'),
(79, 'google_map_search_key', 'AIzaSyDHEAPvHyQE8j2NyTq8THj-e2fnrelirK4', 'GoogleMap'),
(80, 'aplInstallLicense', 'Yes', 'general'),
(81, 'enable_experience', 'Yes', 'general'),
(82, 'homepage_type', 'new_home', 'general'),
(83, 'enable_cookies', 'Yes', 'general');

-- --------------------------------------------------------

--
-- Table structure for table `space_type`
--

CREATE TABLE `space_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `temp_id` int(25) DEFAULT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` int(25) DEFAULT NULL,
  `deleted_status` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `space_type`
--

INSERT INTO `space_type` (`id`, `temp_id`, `name`, `description`, `status`, `lang`, `lang_id`, `deleted_status`) VALUES
(1, 1, 'Entire home/apt', 'Entire home/apt', 'Active', 'en', 1, 'No'),
(2, 2, 'Private room', 'Private room', 'Active', 'en', 1, 'No'),
(3, 3, 'Shared room', 'Shared room', 'Active', 'en', 1, 'No'),
(4, 4, 'Unique stays', 'Unique stays', 'Active', 'en', 1, 'No'),
(5, 5, 'single room', 'single room', 'Active', 'en', 1, 'No'),
(6, 5, 'غرفة مفردة', 'غرفة مفردة', 'Active', 'ar', 2, 'No'),
(7, 5, '单人房', '单人房', 'Active', 'ch', 3, 'No'),
(8, 5, 'chambre simple', 'chambre simple', 'Active', 'fr', 4, 'No'),
(9, 5, 'quarto de solteiro', 'quarto de solteiro', 'Active', 'pt', 5, 'No'),
(10, 5, 'одноместный номер', 'одноместный номер', 'Active', 'ru', 6, 'No'),
(11, 5, 'habitación individual', 'habitación individual', 'Active', 'es', 7, 'No'),
(12, 5, 'tek oda', 'tek oda', 'Active', 'tr', 8, 'No'),
(13, 4, 'إقامة فريدة', 'إقامة فريدة', 'Active', 'ar', 2, 'No'),
(14, 4, '独特的住宿', '独特的住宿', 'Active', 'ch', 3, 'No'),
(15, 4, 'Des séjours uniques', 'Des séjours uniques', 'Active', 'fr', 4, 'No'),
(16, 4, 'Estadias únicas', 'Estadias únicas', 'Active', 'pt', 5, 'No'),
(17, 4, 'Уникальное пребывание', 'Уникальное пребывание', 'Active', 'ru', 6, 'No'),
(18, 4, 'Estancias únicas', 'Estancias únicas', 'Active', 'es', 7, 'No'),
(19, 4, 'Eşsiz konaklamalar', 'Eşsiz konaklamalar', 'Active', 'tr', 8, 'No'),
(20, 3, 'غرفة مشتركة', 'غرفة مشتركة', 'Active', 'ar', 2, 'No'),
(21, 3, '共享房间', '共享房间', 'Active', 'ch', 3, 'No'),
(22, 3, 'pièce partagée', 'pièce partagée', 'Active', 'fr', 4, 'No'),
(23, 3, 'quarto compartilhado', 'quarto compartilhado', 'Active', 'pt', 5, 'No'),
(24, 3, 'Общая комната', 'Общая комната', 'Active', 'ru', 6, 'No'),
(25, 3, 'habitación compartida', 'habitación compartida', 'Active', 'es', 7, 'No'),
(26, 3, 'paylaşılan oda', 'paylaşılan oda', 'Active', 'tr', 8, 'No'),
(27, 2, 'غرفة خاصة', 'غرفة خاصة', 'Active', 'ar', 2, 'No'),
(28, 2, '私人房间', '私人房间', 'Active', 'ch', 3, 'No'),
(29, 2, 'Chambre privée', 'Chambre privée', 'Active', 'fr', 4, 'No'),
(30, 2, 'Sala privada', 'Sala privada', 'Active', 'pt', 5, 'No'),
(31, 2, 'Приватная комната', 'Приватная комната', 'Active', 'ru', 6, 'No'),
(32, 2, 'Habitación privada', 'Habitación privada', 'Active', 'es', 7, 'No'),
(33, 2, 'Özel oda', 'Özel oda', 'Active', 'tr', 8, 'No'),
(34, 1, 'المنزل / الشقة بالكامل', 'المنزل / الشقة بالكامل', 'Active', 'ar', 2, 'No'),
(35, 1, '整个家庭/公寓', '整个家庭/公寓', 'Active', 'ch', 3, 'No'),
(36, 1, 'Maison/appartement entier', 'Maison/appartement entier', 'Active', 'fr', 4, 'No'),
(37, 1, 'Casa / apto inteiro', 'Casa / apto inteiro', 'Active', 'pt', 5, 'No'),
(38, 1, 'Дом / квартира целиком', 'Дом / квартира целиком', 'Active', 'ru', 6, 'No'),
(39, 1, 'Toda la casa / apto.', 'Toda la casa / apto.', 'Active', 'es', 7, 'No'),
(40, 1, 'Tüm ev/daire', 'Tüm ev/daire', 'Active', 'tr', 8, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `starting_cities`
--

CREATE TABLE `starting_cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `starting_cities`
--

INSERT INTO `starting_cities` (`id`, `name`, `image`, `status`) VALUES
(1, 'New York', 'starting_city_1.jpg', 'Active'),
(2, 'Sydney', 'starting_city_2.jpg', 'Active'),
(3, 'Paris', 'starting_city_3.jpg', 'Active'),
(4, 'Barcelona', 'starting_city_4.jpg', 'Active'),
(5, 'Berlin', 'starting_city_5.jpg', 'Active'),
(6, 'Budapest', 'starting_city_6.jpg', 'Active'),
(7, 'Singapore', 'starting_city_1627625434.jpg', 'Active'),
(8, 'New Delhi', 'starting_city_1627625602.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sv_doc_verification`
--

CREATE TABLE `sv_doc_verification` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sv_doc_verification`
--

INSERT INTO `sv_doc_verification` (`id`, `user_id`, `doc`, `type`, `created_at`) VALUES
(1, '3', '1663756736.simon profile pic.jpg', 'image/jpeg', '2022-09-21 05:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `sv_experience_itinerary`
--

CREATE TABLE `sv_experience_itinerary` (
  `id` int(11) NOT NULL,
  `property_id` int(25) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sv_property_meta`
--

CREATE TABLE `sv_property_meta` (
  `id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` text,
  `about_place` text,
  `place_is_great_for` text,
  `guest_can_access` text,
  `interaction_guests` text,
  `other` text,
  `about_neighborhood` text,
  `get_around` text,
  `lang` varchar(255) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sv_property_meta`
--

INSERT INTO `sv_property_meta` (`id`, `property_id`, `name`, `summary`, `about_place`, `place_is_great_for`, `guest_can_access`, `interaction_guests`, `other`, `about_neighborhood`, `get_around`, `lang`, `lang_id`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(5, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(8, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(9, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(10, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(11, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(12, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(13, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(14, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(15, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(16, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(17, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(18, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(19, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(21, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(22, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(23, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(24, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(25, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(26, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(27, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(28, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(29, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(30, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(31, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(32, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(33, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(34, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(35, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(36, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(37, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(38, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(39, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(40, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(41, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(42, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(43, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(44, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(45, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(46, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(47, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(48, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(49, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(50, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(51, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(52, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(53, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(54, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(55, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(56, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(57, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(58, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(59, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(60, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(61, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(62, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(63, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(64, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(65, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(66, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(67, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(68, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(69, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(70, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(71, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(72, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(73, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(74, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(75, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(76, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(77, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(78, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(79, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(80, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(81, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(82, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(83, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(84, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(85, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(86, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(87, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(88, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(89, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(90, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(91, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(92, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(93, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(94, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(95, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(96, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(97, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(98, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(99, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(100, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(101, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(102, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(103, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(104, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(105, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(106, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(107, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(108, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(109, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(110, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(111, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(112, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(113, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(114, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(115, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(116, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(117, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(118, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(119, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(120, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(121, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(122, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(123, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(124, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(125, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(126, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(127, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(128, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(129, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(130, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(131, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(132, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(133, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(134, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(135, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(136, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(137, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(138, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(139, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(140, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(141, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(142, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(143, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(144, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(145, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(146, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(147, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(148, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(149, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(150, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(151, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(152, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(153, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(154, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(155, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(156, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(157, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(158, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(159, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(160, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(161, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(162, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(163, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(164, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(165, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(166, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(167, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(168, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(169, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(170, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(171, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(172, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(173, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(174, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(175, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(176, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(177, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(178, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(179, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(180, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(181, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(182, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(183, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(184, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(185, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(186, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(187, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(188, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(189, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(190, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(191, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(192, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(193, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(194, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(195, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(196, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(197, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(198, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(199, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(200, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(201, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(202, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(203, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8),
(204, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar', 2),
(205, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ch', 3),
(206, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fr', 4),
(207, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pt', 5),
(208, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru', 6),
(209, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'es', 7),
(210, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 8);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` int(11) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `image`, `description`, `review`, `status`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'Traveller', 'testimonial_1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 5, 'Active', NULL, NULL),
(2, 'Adam Smith', 'Traveller', 'testimonial_2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 5, 'Active', NULL, NULL),
(3, 'Alysa', 'Photographer', 'testimonial_3.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 5, 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timezone`
--

CREATE TABLE `timezone` (
  `id` int(10) UNSIGNED NOT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezone`
--

INSERT INTO `timezone` (`id`, `zone`, `value`) VALUES
(1, '(GMT-11:00) International Date Line West', 'Pacific/Kwajalein'),
(2, '(GMT-11:00) Midway Island', 'Pacific/Midway'),
(3, '(GMT-11:00) Samoa', 'Pacific/Samoa'),
(4, '(GMT-10:00) Hawaii', 'Pacific/Honolulu'),
(5, '(GMT-10:00) Pacific/Honolulu', 'Pacific/Honolulu'),
(6, '(GMT-09:00) Alaska', 'US/Alaska'),
(7, '(GMT-08:00) America/Los_Angeles', 'America/Los_Angeles'),
(8, '(GMT-08:00) Pacific Time (US &amp; Canada)', 'America/Los_Angeles'),
(9, '(GMT-08:00) Tijuana', 'America/Tijuana'),
(10, '(GMT-07:00) America/Denver', 'America/Denver'),
(11, '(GMT-07:00) America/Phoenix', 'America/Phoenix'),
(12, '(GMT-07:00) Arizona', 'US/Arizona'),
(13, '(GMT-07:00) Chihuahua', 'America/Chihuahua'),
(14, '(GMT-07:00) Mazatlan', 'America/Mazatlan'),
(15, '(GMT-07:00) Mountain Time (US &amp; Canada)', 'US/Mountain'),
(16, '(GMT-06:00) America/Chicago', 'America/Chicago'),
(17, '(GMT-06:00) America/Mexico_City', 'America/Mexico_City'),
(18, '(GMT-06:00) Central America', 'America/Managua'),
(19, '(GMT-06:00) Central Time (US &amp; Canada)', 'US/Central'),
(20, '(GMT-06:00) Guadalajara', 'America/Mexico_City'),
(21, '(GMT-06:00) Mexico City', 'America/Mexico_City'),
(22, '(GMT-06:00) Monterrey', 'America/Monterrey'),
(23, '(GMT-06:00) Saskatchewan', 'Canada/Saskatchewan'),
(24, '(GMT-05:00) America/Nassau', 'America/Nassau'),
(25, '(GMT-05:00) America/New_York', 'America/New_York'),
(26, '(GMT-05:00) America/Port-au-Prince', 'America/Port-au-Prince'),
(27, '(GMT-05:00) America/Toronto', 'America/Toronto'),
(28, '(GMT-05:00) Bogota', 'America/Bogota'),
(29, '(GMT-05:00) Eastern Time (US &amp; Canada)', 'US/Eastern'),
(30, '(GMT-05:00) Indiana (East)', 'US/East-Indiana'),
(31, '(GMT-05:00) Lima', 'America/Lima'),
(32, '(GMT-05:00) Quito', 'America/Bogota'),
(33, '(GMT-04:30) Caracas', 'America/Caracas'),
(34, '(GMT-04:00) Atlantic Time (Canada)', 'Canada/Atlantic'),
(35, '(GMT-04:00) Georgetown', 'America/Argentina/Buenos_Aires'),
(36, '(GMT-04:00) La Paz', 'America/La_Paz'),
(37, '(GMT-03:30) Newfoundland', 'Canada/Newfoundland'),
(38, '(GMT-03:00) America/Argentina/Buenos_Aires', 'America/Argentina/Buenos_Aires'),
(39, '(GMT-03:00) America/Cordoba', 'America/Cordoba'),
(40, '(GMT-03:00) America/Fortaleza', 'America/Fortaleza'),
(41, '(GMT-03:00) America/Montevideo', 'America/Montevideo'),
(42, '(GMT-03:00) America/Santiago', 'America/Santiago'),
(43, '(GMT-03:00) America/Sao_Paulo', 'America/Sao_Paulo'),
(44, '(GMT-03:00) Brasilia', 'America/Sao_Paulo'),
(45, '(GMT-03:00) Buenos Aires', 'America/Argentina/Buenos_Aires'),
(46, '(GMT-03:00) Greenland', 'America/Godthab'),
(47, '(GMT-03:00) Santiago', 'America/Santiago'),
(48, '(GMT-02:00) Mid-Atlantic', 'America/Noronha'),
(49, '(GMT-01:00) Azores', 'Atlantic/Azores'),
(50, '(GMT-01:00) Cape Verde Is.', 'Atlantic/Cape_Verde'),
(51, '(GMT+00:00) Africa/Casablanca', 'Africa/Casablanca'),
(52, '(GMT+00:00) Atlantic/Canary', 'Atlantic/Canary'),
(53, '(GMT+00:00) Atlantic/Reykjavik', 'Atlantic/Reykjavik'),
(54, '(GMT+00:00) Casablanca', 'Africa/Casablanca'),
(55, '(GMT+00:00) Dublin', 'Etc/Greenwich'),
(56, '(GMT+00:00) Edinburgh', 'Europe/London'),
(57, '(GMT+00:00) Europe/Dublin', 'Europe/Dublin'),
(58, '(GMT+00:00) Europe/Lisbon', 'Europe/Lisbon'),
(59, '(GMT+00:00) Europe/London', 'Europe/London'),
(60, '(GMT+00:00) Lisbon', 'Europe/Lisbon'),
(61, '(GMT+00:00) London', 'Europe/London'),
(62, '(GMT+00:00) Monrovia', 'Africa/Monrovia'),
(63, '(GMT+00:00) UTC', 'UTC'),
(64, '(GMT+01:00) Amsterdam', 'Europe/Amsterdam'),
(65, '(GMT+01:00) Belgrade', 'Europe/Belgrade'),
(66, '(GMT+01:00) Berlin', 'Europe/Berlin'),
(67, '(GMT+01:00) Bern', 'Europe/Berlin'),
(68, '(GMT+01:00) Bratislava', 'Europe/Bratislava'),
(69, '(GMT+01:00) Brussels', 'Europe/Brussels'),
(70, '(GMT+01:00) Budapest', 'Europe/Budapest'),
(71, '(GMT+01:00) Copenhagen', 'Europe/Copenhagen'),
(72, '(GMT+01:00) Europe/Amsterdam', 'Europe/Amsterdam'),
(73, '(GMT+01:00) Europe/Belgrade', 'Europe/Belgrade'),
(74, '(GMT+01:00) Europe/Berlin', 'Europe/Berlin'),
(75, '(GMT+01:00) Europe/Bratislava', 'Europe/Bratislava'),
(76, '(GMT+01:00) Europe/Brussels', 'Europe/Brussels'),
(77, '(GMT+01:00) Europe/Budapest', 'Europe/Budapest'),
(78, '(GMT+01:00) Europe/Copenhagen', 'Europe/Copenhagen'),
(79, '(GMT+01:00) Europe/Ljubljana', 'Europe/Ljubljana'),
(80, '(GMT+01:00) Europe/Madrid', 'Europe/Madrid'),
(81, '(GMT+01:00) Europe/Monaco', 'Europe/Monaco'),
(82, '(GMT+01:00) Europe/Oslo', 'Europe/Oslo'),
(83, '(GMT+01:00) Europe/Paris', 'Europe/Paris'),
(84, '(GMT+01:00) Europe/Podgorica', 'Europe/Podgorica'),
(85, '(GMT+01:00) Europe/Prague', 'Europe/Prague'),
(86, '(GMT+01:00) Europe/Rome', 'Europe/Rome'),
(87, '(GMT+01:00) Europe/Stockholm', 'Europe/Stockholm'),
(88, '(GMT+01:00) Europe/Tirane', 'Europe/Tirane'),
(89, '(GMT+01:00) Europe/Vienna', 'Europe/Vienna'),
(90, '(GMT+01:00) Europe/Warsaw', 'Europe/Warsaw'),
(91, '(GMT+01:00) Europe/Zagreb', 'Europe/Zagreb'),
(92, '(GMT+01:00) Europe/Zurich', 'Europe/Zurich'),
(93, '(GMT+01:00) Ljubljana', 'Europe/Ljubljana'),
(94, '(GMT+01:00) Madrid', 'Europe/Madrid'),
(95, '(GMT+01:00) Paris', 'Europe/Paris'),
(96, '(GMT+01:00) Prague', 'Europe/Prague'),
(97, '(GMT+01:00) Rome', 'Europe/Rome'),
(98, '(GMT+01:00) Sarajevo', 'Europe/Sarajevo'),
(99, '(GMT+01:00) Skopje', 'Europe/Skopje'),
(100, '(GMT+01:00) Stockholm', 'Europe/Stockholm'),
(101, '(GMT+01:00) Vienna', 'Europe/Vienna'),
(102, '(GMT+01:00) Warsaw', 'Europe/Warsaw'),
(103, '(GMT+01:00) West Central Africa', 'Africa/Lagos'),
(104, '(GMT+01:00) Zagreb', 'Europe/Zagreb'),
(105, '(GMT+02:00) Asia/Beirut', 'Asia/Beirut'),
(106, '(GMT+02:00) Asia/Jerusalem', 'Asia/Jerusalem'),
(107, '(GMT+02:00) Asia/Nicosia', 'Asia/Nicosia'),
(108, '(GMT+02:00) Athens', 'Europe/Athens'),
(109, '(GMT+02:00) Bucharest', 'Europe/Bucharest'),
(110, '(GMT+02:00) Cairo', 'Africa/Cairo'),
(111, '(GMT+02:00) Europe/Athens', 'Europe/Athens'),
(112, '(GMT+02:00) Europe/Helsinki', 'Europe/Helsinki'),
(113, '(GMT+02:00) Europe/Istanbul', 'Europe/Istanbul'),
(114, '(GMT+02:00) Europe/Riga', 'Europe/Riga'),
(115, '(GMT+02:00) Europe/Sofia', 'Europe/Sofia'),
(116, '(GMT+02:00) Harare', 'Africa/Harare'),
(117, '(GMT+02:00) Helsinki', 'Europe/Helsinki'),
(118, '(GMT+02:00) Istanbul', 'Europe/Istanbul'),
(119, '(GMT+02:00) Jerusalem', 'Asia/Jerusalem'),
(120, '(GMT+02:00) Kyiv', 'Europe/Helsinki'),
(121, '(GMT+02:00) Pretoria', 'Africa/Johannesburg'),
(122, '(GMT+02:00) Riga', 'Europe/Riga'),
(123, '(GMT+02:00) Sofia', 'Europe/Sofia'),
(124, '(GMT+02:00) Tallinn', 'Europe/Tallinn'),
(125, '(GMT+02:00) Vilnius', 'Europe/Vilnius'),
(126, '(GMT+03:00) Baghdad', 'Asia/Baghdad'),
(127, '(GMT+03:00) Europe/Minsk', 'Europe/Minsk'),
(128, '(GMT+03:00) Europe/Moscow', 'Europe/Moscow'),
(129, '(GMT+03:00) Kuwait', 'Asia/Kuwait'),
(130, '(GMT+03:00) Minsk', 'Europe/Minsk'),
(131, '(GMT+03:00) Moscow', 'Europe/Moscow'),
(132, '(GMT+03:00) Nairobi', 'Africa/Nairobi'),
(133, '(GMT+03:00) Riyadh', 'Asia/Riyadh'),
(134, '(GMT+03:00) St. Petersburg', 'Europe/Moscow'),
(135, '(GMT+03:00) Volgograd', 'Europe/Volgograd'),
(136, '(GMT+03:30) Tehran', 'Asia/Tehran'),
(137, '(GMT+04:00) Abu Dhabi', 'Asia/Muscat'),
(138, '(GMT+04:00) Asia/Dubai', 'Asia/Dubai'),
(139, '(GMT+04:00) Asia/Tbilisi', 'Asia/Tbilisi'),
(140, '(GMT+04:00) Baku', 'Asia/Baku'),
(141, '(GMT+04:00) Muscat', 'Asia/Muscat'),
(142, '(GMT+04:00) Tbilisi', 'Asia/Tbilisi'),
(143, '(GMT+04:00) Yerevan', 'Asia/Yerevan'),
(144, '(GMT+04:30) Kabul', 'Asia/Kabul'),
(145, '(GMT+05:00) Ekaterinburg', 'Asia/Yekaterinburg'),
(146, '(GMT+05:00) Indian/Maldives', 'Indian/Maldives'),
(147, '(GMT+05:00) Islamabad', 'Asia/Karachi'),
(148, '(GMT+05:00) Karachi', 'Asia/Karachi'),
(149, '(GMT+05:00) Tashkent', 'Asia/Tashkent'),
(150, '(GMT+05:30) Asia/Calcutta', 'Asia/Calcutta'),
(151, '(GMT+05:30) Asia/Colombo', 'Asia/Colombo'),
(152, '(GMT+05:30) Chennai', 'Asia/Calcutta'),
(153, '(GMT+05:30) Kolkata', 'Asia/Kolkata'),
(154, '(GMT+05:30) Mumbai', 'Asia/Calcutta'),
(155, '(GMT+05:30) New Delhi', 'Asia/Calcutta'),
(156, '(GMT+05:30) Sri Jayawardenepura', 'Asia/Calcutta'),
(157, '(GMT+05:45) Kathmandu', 'Asia/Katmandu'),
(158, '(GMT+06:00) Almaty', 'Asia/Almaty'),
(159, '(GMT+06:00) Astana', 'Asia/Dhaka'),
(160, '(GMT+06:00) Dhaka', 'Asia/Dhaka'),
(161, '(GMT+06:00) Novosibirsk', 'Asia/Novosibirsk'),
(162, '(GMT+06:00) Urumqi', 'Asia/Urumqi'),
(163, '(GMT+06:30) Rangoon', 'Asia/Rangoon'),
(164, '(GMT+07:00) Asia/Bangkok', 'Asia/Bangkok'),
(165, '(GMT+07:00) Asia/Jakarta', 'Asia/Jakarta'),
(166, '(GMT+07:00) Bangkok', 'Asia/Bangkok'),
(167, '(GMT+07:00) Hanoi', 'Asia/Bangkok'),
(168, '(GMT+07:00) Jakarta', 'Asia/Jakarta'),
(169, '(GMT+07:00) Krasnoyarsk', 'Asia/Krasnoyarsk'),
(170, '(GMT+08:00) Asia/Chongqing', 'Asia/Chongqing'),
(171, '(GMT+08:00) Asia/Hong_Kong', 'Asia/Hong_Kong'),
(172, '(GMT+08:00) Asia/Kuala_Lumpur', 'Asia/Kuala_Lumpur'),
(173, '(GMT+08:00) Asia/Macau', 'Asia/Macau'),
(174, '(GMT+08:00) Asia/Makassar', 'Asia/Makassar'),
(175, '(GMT+08:00) Asia/Shanghai', 'Asia/Shanghai'),
(176, '(GMT+08:00) Asia/Taipei', 'Asia/Taipei'),
(177, '(GMT+08:00) Beijing', 'Asia/Hong_Kong'),
(178, '(GMT+08:00) Chongqing', 'Asia/Chongqing'),
(179, '(GMT+08:00) Hong Kong', 'Asia/Hong_Kong'),
(180, '(GMT+08:00) Irkutsk', 'Asia/Irkutsk'),
(181, '(GMT+08:00) Kuala Lumpur', 'Asia/Kuala_Lumpur'),
(182, '(GMT+08:00) Perth', 'Australia/Perth'),
(183, '(GMT+08:00) Singapore', 'Asia/Singapore'),
(184, '(GMT+08:00) Taipei', 'Asia/Taipei'),
(185, '(GMT+08:00) Ulaan Bataar', 'Asia/Ulan_Bator'),
(186, '(GMT+09:00) Asia/Seoul', 'Asia/Seoul'),
(187, '(GMT+09:00) Asia/Tokyo', 'Asia/Tokyo'),
(188, '(GMT+09:00) Osaka', 'Asia/Tokyo'),
(189, '(GMT+09:00) Sapporo', 'Asia/Tokyo'),
(190, '(GMT+09:00) Seoul', 'Asia/Seoul'),
(191, '(GMT+09:00) Tokyo', 'Asia/Tokyo'),
(192, '(GMT+09:00) Yakutsk', 'Asia/Yakutsk'),
(193, '(GMT+09:30) Adelaide', 'Australia/Adelaide'),
(194, '(GMT+09:30) Darwin', 'Australia/Darwin'),
(195, '(GMT+10:00) Australia/Brisbane', 'Australia/Brisbane'),
(196, '(GMT+10:00) Australia/Hobart', 'Australia/Hobart'),
(197, '(GMT+10:00) Australia/Melbourne', 'Australia/Melbourne'),
(198, '(GMT+10:00) Australia/Sydney', 'Australia/Sydney'),
(199, '(GMT+10:00) Brisbane', 'Australia/Brisbane'),
(200, '(GMT+10:00) Canberra', 'Australia/Canberra'),
(201, '(GMT+10:00) Guam', 'Pacific/Guam'),
(202, '(GMT+10:00) Hobart', 'Australia/Hobart'),
(203, '(GMT+10:00) Magadan', 'Asia/Magadan'),
(204, '(GMT+10:00) Melbourne', 'Australia/Melbourne'),
(205, '(GMT+10:00) Port Moresby', 'Pacific/Port_Moresby'),
(206, '(GMT+10:00) Solomon Is.', 'Asia/Magadan'),
(207, '(GMT+10:00) Sydney', 'Australia/Sydney'),
(208, '(GMT+10:00) Vladivostok', 'Asia/Vladivostok'),
(209, '(GMT+11:00) New Caledonia', 'Asia/Magadan'),
(210, '(GMT+12:00) Auckland', 'Pacific/Auckland'),
(211, '(GMT+12:00) Fiji', 'Pacific/Fiji'),
(212, '(GMT+12:00) Kamchatka', 'Asia/Kamchatka'),
(213, '(GMT+12:00) Marshall Is.', 'Pacific/Fiji'),
(214, '(GMT+12:00) Pacific/Auckland', 'Pacific/Auckland'),
(215, '(GMT+12:00) Wellington', 'Pacific/Auckland'),
(216, '(GMT+13:00) Nuku&#39;alofa', 'Pacific/Tongatapu');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formatted_phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrier_code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` double NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_status` enum('No','Yes') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `formatted_phone`, `carrier_code`, `default_country`, `password`, `profile_image`, `balance`, `status`, `otp`, `remember_token`, `deleted_status`, `created_at`, `updated_at`) VALUES
(1, 'John', 'Doe', 'John Doe', 'demo@gmail.com', '9876543210', '+919876543210', '91', 'in', '$2y$10$Kw.zhKf4pCTSeWOh8Y/hoearK.3Q4hTbGeJFDptlmt4gbHRf.TmfW', 'profile_1662118257.png', 0, 'Active', NULL, NULL, 'No', '2022-09-02 05:59:14', '2022-09-05 00:46:11'),
(2, 'albert', 'stephen', 'Albert', 'albert@demo.com', '9632587410', '+919632587410', '91', 'in', '$2y$10$sYUWbpX5KcjP0uL2e1XnjOGUxpdCBLc85NCP7Bjktey0vUZ5LxLs6', 'profile_1662122956.png', 0, 'Active', NULL, NULL, 'No', '2022-09-02 07:18:04', '2022-09-02 07:20:21'),
(3, 'aalvin', 'mark', 'aalvin', 'aalvinmark92@gmail.com', '8529637412', '+918529637412', '91', 'in', '$2y$10$OuhbDHXV7UN6RLs9BL73nemhF4QWK/UI90H5LH7igZyGP8RYrvtNa', NULL, 0, 'Active', NULL, NULL, 'No', '2022-09-03 01:59:22', '2022-09-21 05:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `users_verification`
--

CREATE TABLE `users_verification` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `facebook` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `google` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `linkedin` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `phone` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `fb_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_for_disapprove` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_verification`
--

INSERT INTO `users_verification` (`id`, `user_id`, `email`, `facebook`, `google`, `linkedin`, `phone`, `document`, `fb_id`, `google_id`, `linkedin_id`, `reason_for_disapprove`) VALUES
(1, 1, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(2, 2, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(3, 3, 'yes', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `field` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `field`, `value`) VALUES
(1, 1, '', NULL),
(2, 2, '', NULL),
(3, 2, 'about', 'I\'m Albert, and I like to meet new people and learn about various cultures. This is mainly why I chose to work as a host.'),
(4, 2, 'gender', 'Male'),
(5, 3, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `balance` decimal(8,2) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `currency_id`, `balance`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '43.00', 1, '2022-09-02 05:59:14', '2022-09-03 02:27:20'),
(2, 2, 1, '710.00', 1, '2022-09-02 07:18:04', '2022-09-21 07:27:25'),
(3, 3, 1, '27.00', 1, '2022-09-03 01:59:22', '2022-09-21 06:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `propertyid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(4) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userid`, `propertyid`, `status`) VALUES
(1, '2', '23', '0'),
(3, '3', '4', '0'),
(7, '1', '17', '1'),
(8, '1', '18', '1'),
(9, '1', '2', '1'),
(11, '2', '3', '1');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payout_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `uuid` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `payment_method_info` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Success','Refund','Blocked') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_username_unique` (`username`),
  ADD UNIQUE KEY `admin_email_unique` (`email`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenity_type`
--
ALTER TABLE `amenity_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed_type`
--
ALTER TABLE `bed_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_packages`
--
ALTER TABLE `booking_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country_short_name_unique` (`short_name`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_code_unique` (`code`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exclusion`
--
ALTER TABLE `exclusion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience_category`
--
ALTER TABLE `experience_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_package`
--
ALTER TABLE `family_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inclusion`
--
ALTER TABLE `inclusion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_type`
--
ALTER TABLE `message_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_penalties`
--
ALTER TABLE `payout_penalties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_settings`
--
ALTER TABLE `payout_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penalty`
--
ALTER TABLE `penalty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_address`
--
ALTER TABLE `property_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_beds`
--
ALTER TABLE `property_beds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_dates`
--
ALTER TABLE `property_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_description`
--
ALTER TABLE `property_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_details`
--
ALTER TABLE `property_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_fees`
--
ALTER TABLE `property_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_icalimports`
--
ALTER TABLE `property_icalimports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_photos`
--
ALTER TABLE `property_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_price`
--
ALTER TABLE `property_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_rules`
--
ALTER TABLE `property_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_steps`
--
ALTER TABLE `property_steps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_time`
--
ALTER TABLE `property_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_type`
--
ALTER TABLE `property_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_admin`
--
ALTER TABLE `role_admin`
  ADD PRIMARY KEY (`admin_id`,`role_id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_metas`
--
ALTER TABLE `seo_metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `space_type`
--
ALTER TABLE `space_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `starting_cities`
--
ALTER TABLE `starting_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sv_doc_verification`
--
ALTER TABLE `sv_doc_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sv_experience_itinerary`
--
ALTER TABLE `sv_experience_itinerary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sv_property_meta`
--
ALTER TABLE `sv_property_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezone`
--
ALTER TABLE `timezone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_verification`
--
ALTER TABLE `users_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `amenity_type`
--
ALTER TABLE `amenity_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `bed_type`
--
ALTER TABLE `bed_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `booking_packages`
--
ALTER TABLE `booking_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `exclusion`
--
ALTER TABLE `exclusion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `experience_category`
--
ALTER TABLE `experience_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `family_package`
--
ALTER TABLE `family_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `inclusion`
--
ALTER TABLE `inclusion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `message_type`
--
ALTER TABLE `message_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payout_penalties`
--
ALTER TABLE `payout_penalties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout_settings`
--
ALTER TABLE `payout_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penalty`
--
ALTER TABLE `penalty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `property_address`
--
ALTER TABLE `property_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `property_beds`
--
ALTER TABLE `property_beds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_dates`
--
ALTER TABLE `property_dates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=592;

--
-- AUTO_INCREMENT for table `property_description`
--
ALTER TABLE `property_description`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `property_details`
--
ALTER TABLE `property_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_fees`
--
ALTER TABLE `property_fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `property_icalimports`
--
ALTER TABLE `property_icalimports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_photos`
--
ALTER TABLE `property_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `property_price`
--
ALTER TABLE `property_price`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `property_rules`
--
ALTER TABLE `property_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_steps`
--
ALTER TABLE `property_steps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `property_time`
--
ALTER TABLE `property_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `property_type`
--
ALTER TABLE `property_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seo_metas`
--
ALTER TABLE `seo_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `space_type`
--
ALTER TABLE `space_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `starting_cities`
--
ALTER TABLE `starting_cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sv_doc_verification`
--
ALTER TABLE `sv_doc_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sv_experience_itinerary`
--
ALTER TABLE `sv_experience_itinerary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sv_property_meta`
--
ALTER TABLE `sv_property_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `timezone`
--
ALTER TABLE `timezone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_verification`
--
ALTER TABLE `users_verification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
