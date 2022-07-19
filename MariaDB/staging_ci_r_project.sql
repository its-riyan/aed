-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 19, 2022 at 03:45 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `staging_ci_r_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('c1cebe255caeabac02c7d6463bec0d8be73355f1', '127.0.0.1', 1653156849, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333135363834393b),
('bee579c4f4fd0dd357895fbfbdecc3d9828db5dd', '127.0.0.1', 1653157161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333135373136313b),
('c5a1b826d182b857c43b8e19bd90996e4561bbb8', '127.0.0.1', 1653157480, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333135373438303b),
('540c6cafef35307b736144db2c55118f46312b02', '127.0.0.1', 1653157889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333135373838393b),
('a5c5250e98af0689b88210b469913ee3e87f9c13', '127.0.0.1', 1653159426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333135393432363b),
('229c2602be929bda5420dd5fddb913af8c6d3c41', '127.0.0.1', 1653159793, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333135393739333b),
('3de6412875d7fdf4ed0148e8c96361970483c747', '127.0.0.1', 1653160094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136303039343b),
('04da1ebc7ec633463d14c5311dbaf551d172adb8', '127.0.0.1', 1653160438, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136303433383b),
('ca0702bad3dbd19fe28d647da1d89376096200c4', '127.0.0.1', 1653160752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136303735323b),
('25fc3bf854e94ea3e20af169ec30ceb2ea66c947', '127.0.0.1', 1653161085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136313038353b),
('7ecee2c7fdfc921cef881127ee741dc8388801cb', '127.0.0.1', 1653161421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136313432313b),
('9cf3f199df0690f90946cb4c647d527d70e62168', '127.0.0.1', 1653161744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136313734343b),
('9908bd69b00f663cd640c336c1a7e856864a4462', '127.0.0.1', 1653162433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136323433333b),
('3854f03760d7a5235f2e8f896926b2898977a044', '127.0.0.1', 1653163513, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136333531333b),
('c30ef259c2cc23f8a23ee0cf62d4d6789bac8893', '127.0.0.1', 1653164064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136343036343b),
('4913a1d501fd0d3d62843ee4276a4ea58c727a08', '127.0.0.1', 1653164493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136343439333b),
('8a5e99cd68b4f040dc3705f3a24e0c1473fa594f', '127.0.0.1', 1653164932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136343933323b),
('7b0aa89d741d4e6cfed04a1e118cecc4e1f97ec4', '127.0.0.1', 1653165237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136353233373b),
('2e1c72789b48f16c1da80183639f8f0e8745497b', '127.0.0.1', 1653165559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136353535393b),
('85216d033faa62120220e58cae850949bf28c827', '127.0.0.1', 1653165894, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136353839343b),
('3e2e46af525107f8b9b4c11d3b4e85c63714cf3c', '127.0.0.1', 1653166333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136363333333b),
('f73b181687c44fc19f2d5099b851756cb9a06dfa', '127.0.0.1', 1653166848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136363834383b),
('77b78ad48023ffdc075af2b42df80ca647740185', '127.0.0.1', 1653167363, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136373336333b),
('522812eed960dcfe1cf54754b2098b07881faa4f', '127.0.0.1', 1653167715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136373731353b),
('8797738e36206a5e7eb6432059542ea6ad1d3285', '127.0.0.1', 1653168018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136383031383b),
('8751d6c454ee5f8121ead9c3fe51bdbc292a293e', '127.0.0.1', 1653168356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136383335363b),
('e1d11b4dafad19c0ca819bc3ed53aae3fedafb12', '127.0.0.1', 1653168813, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136383831333b),
('6ff5f120d2addd72b8f1dafac1d2baf82ab92bb1', '127.0.0.1', 1653169149, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136393134393b),
('a720ea12b90e41c2c2733d5edd6aa81582b09ef1', '127.0.0.1', 1653169484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333136393438343b),
('c1be812f8ff88a8ad9b0b094a0e479315a766ccc', '127.0.0.1', 1653222153, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333232323135333b),
('fff7f76573ef20fceb6639a6c0ab0eec21724544', '127.0.0.1', 1653223179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333232333137393b),
('1c0be5ab86fbecdc59fe7b3a5123fda11adab502', '127.0.0.1', 1653223504, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333232333530343b),
('278559786404e551cb45f2adbfa0d50d49493095', '127.0.0.1', 1653223868, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333232333836383b),
('587d6392c2221c6e0f3bc21c55dc4b8fb807f39c', '127.0.0.1', 1653224264, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333232343236343b),
('153d8f0b5ac7c3979dab395b317143f03108c400', '127.0.0.1', 1653224603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333232343630333b),
('8fbad6abface2a8f31b5c6e91e90ba935592b3b0', '127.0.0.1', 1653224954, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333232343935343b),
('c2cad2c19cecdb2f4897cc12e5081df16691eb8a', '127.0.0.1', 1653225546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333232353534363b),
('9d0339a28463a7e6f4679743b7e0cd0dae347d70', '127.0.0.1', 1653225546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333232353534363b),
('31ed425f1f5b3c0ea123a86d5a0c23ac383cbd0d', '127.0.0.1', 1653297905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333239373930353b),
('77a9d69814078ca7ab493338c5e771adc462fa40', '127.0.0.1', 1653359839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333335393833393b),
('64a115b5f53ba848bcb872ff8f45ebda149f4372', '127.0.0.1', 1653377861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333337373836313b),
('1fa2e83dd2301a96f9315e35b4b92ebc2b9a8dd4', '127.0.0.1', 1653377861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333337373836313b),
('99e0b61d79da049c23227eaed696ef96813f043d', '127.0.0.1', 1653898704, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333839383730333b),
('78fa719a00724e1709a930dc318ca7ecd591dc8b', '127.0.0.1', 1655455321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635353435353331373b),
('c4a7947c328b108dcccbe075a400473d0e49bc13', '127.0.0.1', 1657533058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373533333035383b),
('23ea52d9b09140bf8923a8dbe0a0eb4bef5ac772', '127.0.0.1', 1657589888, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373538393838383b),
('852243d45300797de31939546e8e52983bf732e7', '127.0.0.1', 1657590232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373539303233323b),
('bcf029cfb4db138e80b59516d5cf0c971fdcfe5b', '127.0.0.1', 1657606003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373630363030333b),
('a2725aca0ca9b1e57f8397edfe6894f4e6858c80', '127.0.0.1', 1657607114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373630373131343b),
('504890848d535b82c97707e0953996f11b0c79b5', '127.0.0.1', 1657609233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373630393233333b),
('340665cc35fccf5ca1973548358e365ed81fa0fe', '127.0.0.1', 1657612643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373631323634333b),
('19da6ea4602a98477ed5fb6b0de1100c39b8ea54', '127.0.0.1', 1657612964, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373631323936343b),
('66e636929cf8a72fdcc7d6b8d5da17f79e2ec2c1', '127.0.0.1', 1657616162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373631363136323b),
('a328f173ae602787ed33e3e6848e3160c2778f55', '127.0.0.1', 1657616162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373631363136323b),
('c9eb3b1f96cd182785f304d429ec81224a2fd10f', '127.0.0.1', 1657942486, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635373934323437363b),
('8a41e30c5b152edc3d2d6c7e323831be20658407', '127.0.0.1', 1658194819, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383139343831393b),
('4fd47c55a07a53d6e5284701c052d1a9937e7ed0', '127.0.0.1', 1658195150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383139353135303b),
('18efdcab086376e48505349960d0edd57e14bd79', '127.0.0.1', 1658195150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383139353135303b);

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `site_lang` tinyint(4) DEFAULT 1,
  `timezone` varchar(100) DEFAULT 'America/New_York',
  `application_name` varchar(255) DEFAULT NULL,
  `recaptcha_site_key` varchar(500) DEFAULT NULL,
  `recaptcha_secret_key` varchar(500) DEFAULT NULL,
  `recaptcha_lang` varchar(30) DEFAULT NULL,
  `email_verification` tinyint(1) DEFAULT 0,
  `facebook_app_id` varchar(500) DEFAULT NULL,
  `facebook_app_secret` varchar(500) DEFAULT NULL,
  `google_client_id` varchar(500) DEFAULT NULL,
  `google_client_secret` varchar(500) DEFAULT NULL,
  `vk_app_id` varchar(500) DEFAULT NULL,
  `vk_secure_key` varchar(500) DEFAULT NULL,
  `google_analytics` text DEFAULT NULL,
  `multilingual_system` tinyint(1) DEFAULT 1,
  `kss_key` varchar(500) DEFAULT NULL,
  `kss_code` varchar(500) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `logo_email` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `product_cache_system` tinyint(1) DEFAULT 0,
  `static_content_cache_system` tinyint(1) DEFAULT 0,
  `refresh_cache_database_changes` tinyint(1) DEFAULT 0,
  `cache_refresh_time` int(11) DEFAULT 1800,
  `maintenance_mode_title` varchar(500) DEFAULT NULL,
  `maintenance_mode_description` varchar(2000) DEFAULT NULL,
  `maintenance_mode_status` tinyint(1) DEFAULT 0,
  `last_cron_update` timestamp NULL DEFAULT NULL,
  `last_cron_update_long` timestamp NULL DEFAULT NULL,
  `version` varchar(30) DEFAULT '14.1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_lang`, `timezone`, `application_name`, `recaptcha_site_key`, `recaptcha_secret_key`, `recaptcha_lang`, `email_verification`, `facebook_app_id`, `facebook_app_secret`, `google_client_id`, `google_client_secret`, `vk_app_id`, `vk_secure_key`, `google_analytics`, `multilingual_system`, `kss_key`, `kss_code`, `logo`, `logo_email`, `favicon`, `product_cache_system`, `static_content_cache_system`, `refresh_cache_database_changes`, `cache_refresh_time`, `maintenance_mode_title`, `maintenance_mode_description`, `maintenance_mode_status`, `last_cron_update`, `last_cron_update_long`, `version`) VALUES
(1, 1, 'Asia/Jakarta', 'Kurnia Safety Supplies', '6LcPBAMdAAAAAHoazU70afdxk1K_95ebhs1HKdwS', '6LcPBAMdAAAAANHTBJqA-TX_hJZLUpJ2STPfs7RX', 'en', 0, NULL, NULL, NULL, NULL, NULL, NULL, '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-149343529-1\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-149343529-1\');\r\n</script>', 1, 'app_riyan', '', 'uploads/logo/logo_614028c114d6b.png', 'uploads/logo/logo_61849296378a7.png', 'uploads/logo/logo_6113033b847872.png', 0, 0, 0, 172800, 'Coming Soon', 'Our website is under construction. We\'ll be here soon with our new awesome site.', 0, '2022-04-09 18:01:54', '2022-04-09 18:01:54', '14.1');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_form` varchar(20) NOT NULL,
  `language_code` varchar(20) NOT NULL,
  `text_direction` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `language_order` tinyint(4) NOT NULL DEFAULT 1,
  `text_editor_lang` varchar(10) DEFAULT 'en',
  `flag_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `short_form`, `language_code`, `text_direction`, `status`, `language_order`, `text_editor_lang`, `flag_path`) VALUES
(1, 'English', 'en', 'en-US', 'ltr', 1, 1, 'en', 'uploads/blocks/flag_610273398bb367-63241681-54194314.jpg'),
(2, 'Indonesia', 'id', 'id-ID', 'ltr', 1, 2, 'id', 'uploads/blocks/flag_61009376cf0d81-50136032-72618554.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `language_translations`
--

CREATE TABLE `language_translations` (
  `id` int(11) NOT NULL,
  `lang_id` smallint(6) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `translation` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `route_key` varchar(100) DEFAULT NULL,
  `route` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `route_key`, `route`) VALUES
(1, 'admin', 'r/applications');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT 1,
  `site_font` smallint(6) DEFAULT 19,
  `dashboard_font` smallint(6) DEFAULT 22,
  `site_title` varchar(255) DEFAULT NULL,
  `homepage_title` varchar(255) DEFAULT 'Home',
  `site_description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `facebook_url` varchar(500) DEFAULT NULL,
  `twitter_url` varchar(500) DEFAULT NULL,
  `instagram_url` varchar(500) DEFAULT NULL,
  `pinterest_url` varchar(500) DEFAULT NULL,
  `linkedin_url` varchar(500) DEFAULT NULL,
  `vk_url` varchar(500) DEFAULT NULL,
  `whatsapp_url` varchar(500) DEFAULT NULL,
  `telegram_url` varchar(500) DEFAULT NULL,
  `youtube_url` varchar(500) DEFAULT NULL,
  `about_footer` varchar(1000) DEFAULT NULL,
  `contact_text` text DEFAULT NULL,
  `contact_address` varchar(500) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `copyright` varchar(500) DEFAULT NULL,
  `cookies_warning` tinyint(1) DEFAULT 0,
  `cookies_warning_text` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `lang_id`, `site_font`, `dashboard_font`, `site_title`, `homepage_title`, `site_description`, `keywords`, `facebook_url`, `twitter_url`, `instagram_url`, `pinterest_url`, `linkedin_url`, `vk_url`, `whatsapp_url`, `telegram_url`, `youtube_url`, `about_footer`, `contact_text`, `contact_address`, `contact_email`, `contact_phone`, `copyright`, `cookies_warning`, `cookies_warning_text`, `created_at`) VALUES
(1, 1, 37, 37, 'aed', 'Home', 'r', 'r', 'https://www.facebook.com', '', 'https://www.instagram.com', '', 'https://www.linkedin.com', '', '', '', 'https://www.youtube.com', '', '', '', '', '', 'Its-Riyan', 0, 'We use cookies to help personalise content and provide a personalized experience on Kurnia Safety Supplies site.', '2021-02-20 22:51:50'),
(2, 2, 37, 37, 'aed', 'Home', 'r', 'r', 'https://www.facebook.com', '', 'https://www.instagram.com', '', 'https://www.linkedin.com', '', '', '', 'https://www.youtube.com', '', '', '', '', '', 'Its-Riyan', 0, '<p><span class=\"left\">Kami menggunakan cookie untuk membantu mempersonalisasi konten dan memberikan pengalaman yang telah dipersonalisasi di situs Kurnia Safety Supplies.<br /></span></p>', '2021-07-27 23:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT 'name@domain.com',
  `email_status` tinyint(1) DEFAULT 0,
  `token` varchar(500) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT 'member',
  `balance` bigint(20) DEFAULT 0,
  `number_of_sales` int(11) DEFAULT 0,
  `user_type` varchar(20) DEFAULT 'registered',
  `facebook_id` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `vkontakte_id` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `cover_image_type` varchar(30) DEFAULT 'full_width',
  `banned` tinyint(1) DEFAULT 0,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `about_me` varchar(5000) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `zip_code` varchar(50) DEFAULT NULL,
  `show_email` tinyint(1) DEFAULT 0,
  `show_phone` tinyint(1) DEFAULT 0,
  `show_location` tinyint(1) DEFAULT 0,
  `personal_website_url` varchar(500) DEFAULT NULL,
  `facebook_url` varchar(500) DEFAULT NULL,
  `twitter_url` varchar(500) DEFAULT NULL,
  `instagram_url` varchar(500) DEFAULT NULL,
  `pinterest_url` varchar(500) DEFAULT NULL,
  `linkedin_url` varchar(500) DEFAULT NULL,
  `vk_url` varchar(500) DEFAULT NULL,
  `youtube_url` varchar(500) DEFAULT NULL,
  `whatsapp_url` varchar(500) DEFAULT NULL,
  `telegram_url` varchar(500) DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `show_rss_feeds` tinyint(1) DEFAULT 0,
  `send_email_new_message` tinyint(1) DEFAULT 0,
  `is_active_shop_request` tinyint(1) DEFAULT 0,
  `is_membership_plan_expired` tinyint(1) DEFAULT 0,
  `is_used_free_plan` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `vendor_documents` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `slug`, `email`, `email_status`, `token`, `password`, `role`, `balance`, `number_of_sales`, `user_type`, `facebook_id`, `google_id`, `vkontakte_id`, `avatar`, `cover_image`, `cover_image_type`, `banned`, `first_name`, `last_name`, `shop_name`, `about_me`, `phone_number`, `country_id`, `state_id`, `city_id`, `address`, `zip_code`, `show_email`, `show_phone`, `show_location`, `personal_website_url`, `facebook_url`, `twitter_url`, `instagram_url`, `pinterest_url`, `linkedin_url`, `vk_url`, `youtube_url`, `whatsapp_url`, `telegram_url`, `last_seen`, `show_rss_feeds`, `send_email_new_message`, `is_active_shop_request`, `is_membership_plan_expired`, `is_used_free_plan`, `created_at`, `vendor_documents`) VALUES
(2, 'itsriyan', 'itsriyan', 'isabelle@isabelle.com', 1, '61142e798c3656-96623986-97901305', '$2a$08$kOQoZbU2b6/grU9BExfmdeiOWnLzh0WMGb4NKQmSBHZwhAp1UrmEO', 'author', 0, 0, 'registered', NULL, NULL, NULL, NULL, NULL, 'full_width', 0, 'kss', 'kss', '', '', '', 100, 1270, 78017, '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '2021-08-16 01:35:26', 0, 0, 0, 0, 0, '2021-08-11 20:09:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_translations`
--
ALTER TABLE `language_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lang_id` (`lang_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_banned` (`banned`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_translations`
--
ALTER TABLE `language_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
