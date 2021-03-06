-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2019 at 02:32 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exchangeo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `login_time` datetime DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `mobile`, `image`, `status`, `login_time`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jhon Doe', 'admin', 'admin@gmail.com', '8801825683631', 'admin_1538903120.jpg', 1, '2018-05-04 14:36:07', '$2y$10$kfQgrrcGkYBwbXB9.ytMwuJtme1O7X/.SOf0FEJRWGdXA/CECvUXC', 'ZerjkFDMoTYSo5rdpjtpwPhZmXiMKHQ0FjMsgmnzlDxJKsVAjaQJuvfY3n8o', '2018-03-26 06:08:23', '2018-10-07 03:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `name`, `account`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Rupali Bank', '454541646154854', NULL, '2018-10-18 18:00:00', '2018-10-18 18:00:00'),
(2, 'Sonali bank', '8223659874', NULL, '2018-10-18 18:00:00', '2018-10-18 18:00:00'),
(3, 'sata Bank', '213123', '2018-10-20 10:15:41', '2018-10-20 09:10:50', '2018-10-20 10:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `basic_settings`
--

CREATE TABLE `basic_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `sitename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sym` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `email_verification` tinyint(1) NOT NULL DEFAULT '0',
  `sms_verification` tinyint(1) NOT NULL DEFAULT '0',
  `email_notification` tinyint(1) NOT NULL DEFAULT '0',
  `sms_notification` tinyint(4) NOT NULL DEFAULT '0',
  `level_one` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_two` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_three` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sending_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `decimal` int(2) NOT NULL,
  `cron` tinyint(4) NOT NULL DEFAULT '0',
  `map_api` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` tinyint(4) NOT NULL DEFAULT '0',
  `refcom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_comment` text COLLATE utf8mb4_unicode_ci,
  `terms` longtext COLLATE utf8mb4_unicode_ci,
  `privacy` longtext COLLATE utf8mb4_unicode_ci,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section1_heading` text COLLATE utf8mb4_unicode_ci,
  `section1_para` text COLLATE utf8mb4_unicode_ci,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mentor_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mentor_para` text COLLATE utf8mb4_unicode_ci,
  `service_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_para` text COLLATE utf8mb4_unicode_ci,
  `payout_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payout_details` text COLLATE utf8mb4_unicode_ci,
  `buy_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sell_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_settings`
--

INSERT INTO `basic_settings` (`id`, `sitename`, `color`, `phone`, `email`, `address`, `currency`, `currency_sym`, `registration`, `email_verification`, `sms_verification`, `email_notification`, `sms_notification`, `level_one`, `level_two`, `level_three`, `sending_charge`, `decimal`, `cron`, `map_api`, `location`, `refcom`, `about`, `about_title`, `about_video`, `fb_comment`, `terms`, `privacy`, `rate`, `section1_heading`, `section1_para`, `copyright`, `mentor_heading`, `mentor_para`, `service_heading`, `service_para`, `payout_title`, `payout_details`, `buy_title`, `sell_title`, `created_at`, `updated_at`) VALUES
(1, 'Exchangeo', '1e98ff', '+8801234567890', 'do-not-reply@thesoftking.com', 'Company Location, Country', 'USD', '$', 1, 0, 0, 1, 0, '3', '2', '1', '40', 2, 0, 'AIzaSyDi-rrw9lb-uKY1vHd9gkzuBpj4-hiBsUA', 0, '0', '<span style=\"color: rgb(128, 128, 163); font-family: Poppins, sans-serif; font-size: 16px; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span>', 'Exchange All You Need To Know About Rexchange', 'https://www.youtube.com/watch?v=pHGGNPMPz3M', '<div id=\"fb-root\"></div>\r\n<script>\r\n    (function(d, s, id) {\r\n        var js, fjs = d.getElementsByTagName(s)[0];\r\n        if (d.getElementById(id)) return;\r\n        js = d.createElement(s); js.id = id;\r\n        js.src = \'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.12&appId=205856110142667&autoLogAppEvents=1\';\r\n        fjs.parentNode.insertBefore(js, fjs);\r\n    }(document, \'script\', \'facebook-jssdk\'));\r\n</script>', '<h2 style=\"margin-bottom: 20px; font-family: Poppins, sans-serif; color: rgb(25, 25, 75); font-size: 60px; text-align: center;\">Terms of use</h2><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis.</p><h3 style=\"margin-bottom: 16px; font-family: Poppins, sans-serif; color: rgb(25, 25, 75); font-size: 30px; text-align: center;\">Enforcement &amp; Amendments</h3><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p><h3 style=\"margin-bottom: 16px; font-family: Poppins, sans-serif; color: rgb(25, 25, 75); font-size: 30px; text-align: center;\">Provided Services</h3><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p><h3 style=\"margin-bottom: 16px; font-family: Poppins, sans-serif; color: rgb(25, 25, 75); font-size: 30px; text-align: center;\">Eligibility</h3><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p><h3 style=\"margin-bottom: 16px; font-family: Poppins, sans-serif; color: rgb(25, 25, 75); font-size: 30px; text-align: center;\">Termination of the Terms</h3><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p>', '<h2 style=\"margin-bottom: 20px; font-family: Poppins, sans-serif; color: rgb(25, 25, 75); font-size: 60px; text-align: center;\">Privacy &amp;Policy</h2><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis.</p><h3 style=\"margin-bottom: 16px; font-family: Poppins, sans-serif; color: rgb(25, 25, 75); font-size: 30px; text-align: center;\">Enforcement &amp; Amendments</h3><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p><h3 style=\"margin-bottom: 16px; font-family: Poppins, sans-serif; color: rgb(25, 25, 75); font-size: 30px; text-align: center;\">Provided Services</h3><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p><h3 style=\"margin-bottom: 16px; font-family: Poppins, sans-serif; color: rgb(25, 25, 75); font-size: 30px; text-align: center;\">Eligibility</h3><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p><h3 style=\"margin-bottom: 16px; font-family: Poppins, sans-serif; color: rgb(25, 25, 75); font-size: 30px; text-align: center;\">Termination of the Policy</h3><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p><p style=\"margin-bottom: 42px; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163); font-family: Poppins, sans-serif; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p>', '1', 'Exchange CryptoCurrency', 'Transfer from one wallet to another within seconds. It\'s that simple.', 'We are a full service Digital Marketing Agency all the foundational tool you need inbound success.', 'Our Mentors', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt utet dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.', 'Our Services', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt utet dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.', 'Currency Payout', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt utet dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.', 'Check The Amounts & Have A Look At The Transfer Details', 'Check The Amounts & Have A Look At The Transfer Details', NULL, '2018-11-11 15:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `buy_moneys`
--

CREATE TABLE `buy_moneys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `enter_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buy_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buy_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `get_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` text COLLATE utf8mb4_unicode_ci,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Branding', 1, '2018-06-10 05:01:22', '2018-10-08 00:00:46'),
(2, 'Music', 1, '2018-06-10 05:01:49', '2018-10-08 00:00:33'),
(3, 'Fashion', 1, '2018-06-10 05:02:01', '2018-10-08 00:00:10'),
(4, 'Travel', 1, '2018-06-10 05:02:14', '2018-10-07 23:59:56'),
(5, 'Lifestyle', 1, '2018-10-07 23:47:15', '2018-10-07 23:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `sell` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `buy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available_balance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_coin` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `price`, `exchange`, `sell`, `buy`, `payment_id`, `available_balance`, `image`, `is_coin`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ethereum', 'ETH', '0.00926269', '0', '0', '0', 'ETH222336322232', '1000', 'ethereum_1539867743.png', 1, 1, '2018-02-15 00:36:57', '2019-02-02 07:51:05'),
(2, 'Ripple', 'XRP', '3.22997416', '0', '0', '0', 'XRP23232323232323232323232', '10000', 'ripple_1539867757.png', 1, 1, '2018-02-15 00:36:57', '2019-02-02 07:50:39'),
(3, 'Bitcoin Cash', 'BCH', '0.00840266', '0', '3', '6', 'BCH987784654341', '10000', 'bitcoin-cash_1539867845.png', 1, 1, '2018-02-15 00:36:57', '2019-02-02 07:51:08'),
(4, 'Litecoin', 'LTC', '0.03021148', '0', '0', '0', 'LTC132132132123', '10000', 'litecoin_1539867876.png', 1, 1, '2018-02-15 00:36:57', '2019-02-02 07:51:09'),
(5, 'Cardano', 'ADA', '25.87322122', '0', '0', '0', 'ADA3625241566', '10000', 'cardano_1539867915.png', 1, 1, '2018-02-15 00:36:57', '2019-02-02 07:50:43'),
(6, 'Stellar', 'XLM', '12.2488976', '0', '0', '0', 'XLM741936528', '10000', 'stellar_1539867948.png', 1, 1, '2018-02-15 00:36:57', '2019-02-02 07:51:11'),
(7, 'NEO', 'NEO', '0.13793103', '0', '0', '0', 'NEO1231654564', '10000', 'neo_1539867967.png', 1, 1, '2018-02-15 00:36:57', '2019-02-02 07:50:45'),
(8, 'EOS', 'EOS', '0.42016807', '0', '0', '0', 'EOS123132132', '10000', 'eos_1539868008.png', 1, 1, '2018-02-15 00:36:57', '2019-02-02 07:50:47'),
(9, 'MIOTA', 'IOTA', '0.00481034', '0', '0', '0', 'IOTA222336322232', '10000', 'iota_1539868042.png', 1, 1, '2018-02-15 00:36:57', '2019-02-02 07:50:48'),
(10, 'Dash', 'DASH', '0.01476887', '0', '0', '0', 'Dash3132332131', '10000', 'dash_1539868063.png', 1, 1, '2018-02-15 00:36:57', '2019-02-02 07:50:49'),
(11, 'Perfect Money', 'PM', NULL, '2', '4', '6', 'demo.pm@sdfsd.com', '1000', 'perfect-money_1540216154.png', 0, 1, '2018-10-22 07:49:14', '2018-10-22 07:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `wallet_id` int(11) DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `try` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `gateway_id`, `currency_id`, `wallet_id`, `amount`, `charge`, `usd`, `btc_amo`, `btc_wallet`, `trx`, `status`, `try`, `created_at`, `updated_at`) VALUES
(1, 1, 108, NULL, NULL, '30', '1.3', '31.3', '0', '', '5y1qMUCPwOTFJffK', 0, 0, '2018-09-29 04:59:14', '2018-09-29 04:59:14'),
(2, 1, 103, NULL, NULL, '30', '3.9', '0.42', '0', '', 'RsWZl3sGFWpvBZvm', 0, 0, '2018-09-29 05:25:36', '2018-09-29 05:25:36'),
(3, 1, 101, NULL, NULL, '30', '1.267', '0.4', '0', '', 'xG1QC1HY3xKiJ3wN', 0, 0, '2018-09-29 05:25:59', '2018-09-29 05:25:59'),
(4, 1, 102, NULL, NULL, '30', '2.3', '0.4', '0', '', 'i3AlS5PtlQBUAbWh', 0, 0, '2018-09-29 05:29:30', '2018-09-29 05:29:30'),
(5, 1, 103, NULL, NULL, '30', '3.9', '0.42', '0', '', 'AOIBfEQKtdYXTTtS', 0, 0, '2018-09-29 05:30:01', '2018-09-29 05:30:01'),
(6, 1, 103, NULL, NULL, '300', '12', '3.9', '0', '', '7IlSwhZtogWesCYF', 1, 0, '2018-09-29 05:48:59', '2018-09-29 05:49:21'),
(7, 1, 103, NULL, NULL, '2500', '78', '32.23', '0', '', 'uyD727N0Uy7jC648', 1, 0, '2018-09-29 05:56:15', '2018-09-29 05:56:37'),
(8, 1, 104, NULL, NULL, '30', '3.9', '0.42', '0', '', 'eje0ybHbXfAAQaAS', 0, 0, '2018-09-29 05:56:47', '2018-09-29 05:56:47'),
(9, 1, 105, NULL, NULL, '100', '2', '102', '0', '', 'gtoEiHnKNoE2oS06', 0, 0, '2018-09-29 05:57:20', '2018-09-29 05:57:20'),
(10, 1, 106, NULL, NULL, '100', '2', '102', '0', '', 'eubjxg3VcbNJOyYJ', 0, 0, '2018-09-29 05:57:35', '2018-09-29 05:57:35'),
(11, 1, 107, NULL, NULL, '100', '2', '102', '0', '', 'UjlzZm6QsSt7vfpI', 0, 0, '2018-09-29 05:57:51', '2018-09-29 05:57:51'),
(12, 1, 108, NULL, NULL, '100', '2', '102', '0', '', 'C7tCG9xBb7B53NdT', 0, 0, '2018-09-29 05:58:35', '2018-09-29 05:58:35'),
(13, 1, 501, NULL, NULL, '3000', '16', '37.7', '0', '', 'H6SXlkDUwet00Wa7', 0, 0, '2018-09-29 05:59:05', '2018-09-29 05:59:05'),
(14, 1, 501, NULL, NULL, '2000', '11', '25.14', '0', '', 'h8VcVZDRYUzs04zA', 0, 0, '2018-09-29 05:59:21', '2018-09-29 05:59:21'),
(15, 1, 502, NULL, NULL, '300', '2.5', '3.78', '0.00057324', '3NMcyLMYFQvrA3DuFboPEHxhXK4tACA4Sz', 'C0f9gZtDakjxuUcf', 0, 0, '2018-09-29 05:59:31', '2018-09-29 05:59:34'),
(16, 1, 501, NULL, NULL, '300', '2.5', '3.78', '0', '', 'pqUfmeu49BqkIzNi', 0, 0, '2018-09-29 06:03:44', '2018-09-29 06:03:44'),
(17, 1, 502, NULL, NULL, '200', '2', '2.53', '0.00038388', '3JyGkKWc94oAgaYGm5HFh1VxeB3y6wbzra', 'DGJpD1fYQmHPJW9B', 0, 0, '2018-09-29 06:03:59', '2018-09-29 06:04:02'),
(18, 1, 503, NULL, NULL, '2000', '20.4', '25.26', '0.40860563', '3LYBaXDV6HEc7XLuRbybF6oBpL5QdEEXG4', 'DPhYA5Gy2WAtw6Ou', 0, 0, '2018-09-29 06:04:13', '2018-09-29 06:04:18'),
(19, 1, 504, NULL, NULL, '500', '13.11', '6.41', '1104.63123971', '9v7jtk2emM39iuLsDvMvYnhgxAmCos37ws', 'fGXcNbhElOiVQb17', 0, 0, '2018-09-29 06:07:16', '2018-09-29 06:07:19'),
(20, 1, 101, NULL, NULL, '30', '1.267', '0.4', '0', '', 'Fh3zLgeC5lohqbEm', 0, 0, '2018-09-30 01:03:48', '2018-09-30 01:03:48'),
(21, 1, 102, NULL, NULL, '30', '2.3', '0.4', '0', '', 'fh1kh2tF0iAAY971', 0, 0, '2018-09-30 01:39:06', '2018-09-30 01:39:06'),
(22, 1, 103, NULL, NULL, '30', '3.9', '0.42', '0', '', '31nOgRYsu4AKe8I4', 0, 0, '2018-09-30 01:39:33', '2018-09-30 01:39:33'),
(23, 1, 103, NULL, NULL, '303', '12.09', '3.94', '0', '', 'l1daIwpsdgNujnsa', 1, 0, '2018-09-30 02:57:22', '2018-09-30 03:12:28'),
(24, 1, 104, NULL, NULL, '33', '3.99', '0.46', '0', '', 'h7dByjFx1Sg9ZYjM', 0, 0, '2018-09-30 03:14:32', '2018-09-30 03:14:32'),
(25, 1, 105, NULL, NULL, '100', '2', '102', '0', '', 'TsqACK18UVOmMnPV', 0, 0, '2018-09-30 03:14:48', '2018-09-30 03:14:48'),
(26, 1, 106, NULL, NULL, '30', '1.3', '31.3', '0', '', '5plHiK1ECrSzlSxO', 0, 0, '2018-09-30 03:15:06', '2018-09-30 03:15:06'),
(27, 1, 107, NULL, NULL, '100', '2', '102', '0', '', 'kzVXBdiddyw5YU9x', 0, 0, '2018-09-30 03:15:20', '2018-09-30 03:15:20'),
(28, 1, 108, NULL, NULL, '30', '1.3', '31.3', '0', '', 'ZVs4QROYIZ2qghhE', 0, 0, '2018-09-30 03:16:26', '2018-09-30 03:16:26'),
(29, 1, 501, NULL, NULL, '30', '1.15', '0.39', '0', '', 'S8iwX0yAey2eobHP', 0, 0, '2018-09-30 03:16:35', '2018-09-30 03:16:35'),
(30, 1, 502, NULL, NULL, '999', '5.995', '12.56', '0.00191365', '3NwKbAWxvWmTzdjUb7hcr6BnG64b2VN6SA', '6BaJ4fVer4zaxGkf', 0, 0, '2018-09-30 03:16:46', '2018-09-30 03:16:50'),
(31, 1, 513, NULL, NULL, '1000', '55', '13.19', '0', '', 'GXA7UBn5JtL3KUdf', 0, 0, '2018-09-30 03:54:47', '2018-09-30 03:54:47'),
(32, 1, 513, NULL, NULL, '300', '20', '4', '0', '', '6f5ecOz81EJU4WUf', 0, 0, '2018-09-30 03:55:02', '2018-09-30 03:55:02'),
(33, 1, 512, NULL, NULL, '30', '6.5', '0.46', '0', '', 'MyI09MHIEVjydnwj', 0, 0, '2018-09-30 03:55:17', '2018-09-30 03:55:17'),
(34, 1, 510, NULL, NULL, '500', '13.11', '6.41', '0.10582649', 'LhgTFB3bjmNScJGvZ6p7pdFsqwsDdkLdp4', 'SkQJLQPdfL2uB96u', 0, 0, '2018-09-30 03:55:59', '2018-09-30 03:56:03'),
(35, 1, 509, NULL, NULL, '500', '13.11', '6.41', '1097.11149632', 'DQBTg1FJZWyHsFxBMXqsCTjXQx8D3Y9qHU', 'AZCFj4qOLZKEMa58', 0, 0, '2018-09-30 03:56:17', '2018-09-30 03:56:20'),
(36, 1, 508, NULL, NULL, '300', '8.07', '3.85', '0.02064152', 'XrSCyzZXEt75McRzMkozmLVjxioqiQmsEd', 'xI12gbSxMvDwbmnA', 0, 0, '2018-09-30 03:56:30', '2018-09-30 03:56:34'),
(37, 1, 507, NULL, NULL, '500', '13.11', '6.41', '0.01198769', '12yGrw2ErcgxtYcfgDpSMGDxUnXdLBA35g', 'rf9RinplVc47vamS', 0, 0, '2018-09-30 03:58:14', '2018-09-30 03:58:18'),
(38, 1, 506, NULL, NULL, '300', '8.07', '3.9', '0.01679211', '0x28a9b010b541100b15c0a14eaf7a562acb2e098e', 'jMmWr5EPosFhu3dL', 0, 0, '2018-09-30 03:59:03', '2018-09-30 03:59:07'),
(39, 1, 505, NULL, NULL, '200', '5.55', '2.57', '0.00039130', '39sPUoHYRbMGfDSdYjoHcPjgGP3JUkrwbf', '7JnpEcMwpDSdy7nI', 0, 0, '2018-09-30 03:59:18', '2018-09-30 03:59:22'),
(40, 1, 504, NULL, NULL, '2300', '58.47', '29.48', '5029.28406418', 'AEHrqmnkUTP9dihuEAP7nuMoPA5TS5rVMn', '79bh9NmCRU6GJTar', 0, 0, '2018-09-30 04:03:54', '2018-09-30 04:03:58'),
(41, 1, 503, NULL, NULL, '2000', '20.4', '25.26', '0.41758968', '39iK4hd97MirNpu1Nv4mWd4vySrPu8ehFF', '2soY836C6JeYwFIu', 0, 0, '2018-09-30 04:04:07', '2018-09-30 04:04:10'),
(42, 1, 501, NULL, NULL, '3200', '17', '40.21', '0', '', 'zPhiwTC15edMMAQB', 0, 0, '2018-09-30 04:04:18', '2018-09-30 04:04:18'),
(43, 1, 105, NULL, NULL, '100', '2', '102', '0', '', 'xq0hIeGY64wOtNVU', 0, 0, '2018-09-30 04:04:38', '2018-09-30 04:04:38'),
(44, 1, 106, NULL, NULL, '100', '2', '102', '0', '', '9p7HtNSkutEDIH6i', 0, 0, '2018-09-30 04:04:51', '2018-09-30 04:04:51'),
(45, 1, 107, NULL, NULL, '100', '2', '102', '0', '', 'IAHSrpHkmwTeqqMm', 0, 0, '2018-09-30 04:05:10', '2018-09-30 04:05:10'),
(46, 1, 108, NULL, NULL, '100', '2', '102', '0', '', 'uriDZbFtqg0s5THx', 0, 0, '2018-09-30 04:05:22', '2018-09-30 04:05:22'),
(47, 1, 107, NULL, NULL, '100', '2', '102', '0', '', 'elH8YprgKrqDnZ9c', 0, 0, '2018-09-30 04:06:14', '2018-09-30 04:06:14'),
(48, 1, 108, NULL, NULL, '100', '2', '102', '0', '', 'CtlviYv5YGadIO25', 0, 0, '2018-09-30 04:08:08', '2018-09-30 04:08:08'),
(49, 1, 513, NULL, NULL, '100', '10', '1.38', '0', '', 'S5QRxoIbytLravmZ', 0, 0, '2018-09-30 04:17:31', '2018-09-30 04:17:31'),
(50, 1, 510, NULL, NULL, '30', '1.266', '0.39', '0.00643338', 'LQsScqMZGvPk2oa9ZFGC7sQgForow7yEdr', 'YyIkBEexPuhQRl9m', 0, 0, '2018-09-30 04:17:44', '2018-09-30 04:17:48'),
(51, 1, 509, NULL, NULL, '100', '3.0300000000000002', '1.29', '220.69388208', 'DEDxWMB3BKaspRdFCDmE8st4y6T2bZdc2a', 'f9nrIJWBxV4frCZ1', 0, 0, '2018-09-30 04:17:58', '2018-09-30 04:18:02'),
(52, 1, 508, NULL, NULL, '30', '1.266', '0.39', '0.00208879', 'Xxw1TJPmrfh4t6TQXyQ2eR1D8GU9tq7w1j', 'zp1JeYRiMVTsjZji', 0, 0, '2018-09-30 04:18:10', '2018-09-30 04:18:14'),
(53, 1, 507, NULL, NULL, '300', '8.07', '3.85', '0.00717128', '14rKJr9HPkkTeWPXsCxtKVtECVa9MxvLvA', 'uw8Oz5QbPruZ5kiH', 0, 0, '2018-09-30 04:24:20', '2018-09-30 04:24:24'),
(54, 1, 506, NULL, NULL, '300', '8.07', '3.9', '0.01678274', '0x46fd7b3fe0d7413e88a188cc8710dbe50aa16da9', '1uL4VkEFWXrojntC', 0, 0, '2018-09-30 04:27:19', '2018-09-30 04:28:23'),
(55, 1, 505, NULL, NULL, '3000', '76.11', '38.45', '0.00585446', '3MHwKhdJnBo1sG4TGbvm51H7nqCpJJEB4R', '1ceVteFkrY517aHu', 0, 0, '2018-09-30 04:28:51', '2018-09-30 04:28:55'),
(56, 1, 504, NULL, NULL, '300', '8.07', '3.85', '656.78761425', '9tPS2qFQssUnttXKune4k8KFp5LcykSvbW', 'PN6Z66EU9SS7IIQa', 0, 0, '2018-09-30 04:29:12', '2018-09-30 04:29:16'),
(57, 1, 503, NULL, NULL, '3000', '30.4', '37.88', '0.62139108', '325JZgGofB3pH9Jh1EQwMQPbY9t5DrLzSZ', 'NsiiUghZe3MuyZpU', 0, 0, '2018-09-30 04:29:25', '2018-09-30 04:29:29'),
(58, 1, 504, NULL, NULL, '300', '8.07', '3.85', '656.78761425', 'A5Tkjefi8DHZJvu7C56yX1eJpLXuXLTeYs', 'VtSbywIeP8RWcOxC', 0, 0, '2018-09-30 04:29:55', '2018-09-30 04:29:59'),
(59, 1, 503, NULL, NULL, '3000', '30.4', '37.88', '0.62139108', '3A9CqRs4C19pDXhPCix1ETvCxpFcex5ppF', 'boCEMca19CtipNzg', 0, 0, '2018-09-30 04:30:23', '2018-09-30 04:30:26'),
(60, 1, 504, NULL, NULL, '300', '8.07', '3.85', '656.18190249', '9yBfX1UaEnxUEKXGUnBxVCrNZaypsv5LdH', 'wNzQnCjRJqDWZmgO', 0, 0, '2018-09-30 04:30:47', '2018-09-30 04:30:51'),
(61, 1, 503, NULL, NULL, '3000', '30.4', '37.88', '0.62333388', '32inJeL5h1qHnrBiZBy5dQEU96eWjgJYWy', 'f06TeOi6Ud4mCBeV', 0, 0, '2018-09-30 04:31:00', '2018-09-30 04:31:03'),
(62, 1, 502, NULL, NULL, '253', '2.2649999999999997', '3.19', '0', '', 'dwFFnOSbdaJhsMjL', 0, 0, '2018-09-30 04:31:12', '2018-09-30 04:31:12'),
(63, 1, 502, NULL, NULL, '25323', '127.615', '318.13', '0', '', 'kJTsdvlCrgomRFDE', 0, 0, '2018-09-30 04:31:12', '2018-09-30 04:31:12'),
(64, 1, 502, NULL, NULL, '25323', '127.615', '318.13', '0.04838222', '3C5k5bMR6NWGqzEGTY9nUAiyMpcxmzBD8i', '5atrO0oSvVm3iwnz', 0, 0, '2018-09-30 04:31:12', '2018-09-30 04:31:16'),
(65, 1, 104, NULL, NULL, '31232', '939.96', '402.15', '0', '', 'D3lDzu5wWjMwNpQt', 0, 0, '2018-09-30 04:31:45', '2018-09-30 04:31:45'),
(66, 4, 103, NULL, NULL, '50000', '1503', '643.79', '0', '', '9FK2rAUEhMJ9XXKT', 1, 0, '2018-09-30 23:13:57', '2018-09-30 23:14:16'),
(67, 2, 103, NULL, NULL, '3000', '93', '38.66', '0', '', 'ohn6xHD6xlvlPhKU', 1, 0, '2018-10-02 23:31:46', '2018-10-02 23:32:26'),
(68, 2, 101, NULL, NULL, '23', '1.0906', '0.3', '0', '', '5V4Z1Q10OvApKZ9O', 0, 0, '2018-10-03 07:16:29', '2018-10-03 07:16:29'),
(69, 1, 101, NULL, NULL, '20', '1.0150000000000001', '0.27', '0', '', 'dnOyiG1My10KYJtT', 0, 0, '2018-10-07 01:45:54', '2018-10-07 01:45:54'),
(70, 1, 101, NULL, NULL, '1000', '25.711', '12.98', '0', '', 'L6CElTlYA77bjnGl', 0, 0, '2018-10-10 00:26:25', '2018-10-10 00:26:25'),
(71, 1, 101, NULL, NULL, '1000', '25.711', '12.98', '0', '', '8JGggbjrtRn7Wi8s', 0, 0, '2018-10-10 00:28:40', '2018-10-10 00:28:40'),
(72, 1, 101, NULL, NULL, '545', '14.245000000000001', '7.08', '0', '', 'GlR2xC9v7hCbSY4h', 0, 0, '2018-10-10 00:29:09', '2018-10-10 00:29:09'),
(73, 1, 102, NULL, NULL, '2000', '22', '25.28', '0', '', '98KI6dLXKiQ5SoXK', 0, 0, '2018-10-10 00:33:57', '2018-10-10 00:33:57'),
(74, 1, 103, NULL, NULL, '300', '12', '3.9', '0', '', 'ngxVVeQZ7FT8pH9P', 0, 0, '2018-10-10 00:34:30', '2018-10-10 00:34:30'),
(75, 1, 102, NULL, NULL, '2000', '22', '25.28', '0', '', 'L28jCgoqW1MNEAbo', 0, 0, '2018-10-10 00:38:26', '2018-10-10 00:38:26'),
(76, 1, 103, NULL, NULL, '10000', '303', '128.79', '0', '', 'pRvfQ4apzpsB5lq8', 0, 0, '2018-10-10 00:38:45', '2018-10-10 00:38:45'),
(77, 1, 104, NULL, NULL, '5000', '153', '64.41', '0', '', 'g7A0PgX3NENtFFj9', 0, 0, '2018-10-10 00:41:06', '2018-10-10 00:41:06'),
(78, 1, 105, NULL, NULL, '100', '2', '102', '0', '', '5pOQmdmsbeBjH8Zi', 0, 0, '2018-10-10 00:41:20', '2018-10-10 00:41:20'),
(79, 1, 106, NULL, NULL, '100', '2', '102', '0', '', 'MjnpzbrCJMRI2Iqe', 0, 0, '2018-10-10 00:41:45', '2018-10-10 00:41:45'),
(80, 1, 107, NULL, NULL, '100', '2', '102', '0', '', 'YEdQJYC06zoyiY4t', 0, 0, '2018-10-10 00:42:00', '2018-10-10 00:42:00'),
(81, 1, 108, NULL, NULL, '100', '2', '102', '0', '', 'kmzjdRZjsFUfpzDV', 0, 0, '2018-10-10 00:42:16', '2018-10-10 00:42:16'),
(82, 1, 108, NULL, NULL, '100', '2', '102', '0', '', 'pR7ZVntWShe6uDKn', 0, 0, '2018-10-10 00:43:42', '2018-10-10 00:43:42'),
(83, 1, 108, NULL, NULL, '100', '2', '102', '0', '', 'MOlUL1uCwdHrogZp', 0, 0, '2018-10-10 00:45:23', '2018-10-10 00:45:23'),
(84, 1, 107, NULL, NULL, '100', '2', '102', '0', '', 'k5wy4tINYeZHAfJy', 1, 0, '2018-10-10 00:47:05', '2018-10-10 00:47:27'),
(85, 1, 106, NULL, NULL, '100', '2', '102', '0', '', 'VmlViiBt7ZLEIBTf', 0, 0, '2018-10-10 00:47:37', '2018-10-10 00:47:37'),
(86, 1, 501, NULL, NULL, '2000', '11', '25.14', '0', '', 'etjy78afVuQz6XVF', 0, 0, '2018-10-10 00:48:03', '2018-10-10 00:48:03'),
(87, 1, 501, NULL, NULL, '2000', '11', '25.14', '0', '', 'O1XgbqhzInUy3fIU', 0, 0, '2018-10-10 00:48:14', '2018-10-10 00:48:14'),
(88, 1, 502, NULL, NULL, '999', '5.995', '12.56', '0.0019372', '3B8t9vS68zhatUD1EFmRWjK678cKAn423h', 'FFFWUFN8BpQE1IwE', 0, 0, '2018-10-10 00:48:32', '2018-10-10 00:48:39'),
(89, 1, 502, NULL, NULL, '30', '1.15', '0.39', '0.00006011', '3Q8wnTwx2yWMjBeUjKghBombncufRYqF6e', 'wYWbpVTGyLatLXb5', 0, 0, '2018-10-10 01:05:19', '2018-10-10 01:05:23'),
(90, 1, 513, NULL, NULL, '100', '10', '1.38', '0', '', '0pexlXlFenN3PqTX', 0, 0, '2018-10-10 01:09:16', '2018-10-10 01:09:16'),
(91, 1, 512, NULL, NULL, '1000', '55', '13.19', '0', '', '1Rp6ciE7BA6Q55X5', 0, 0, '2018-10-10 01:09:31', '2018-10-10 01:09:31'),
(92, 1, 512, NULL, NULL, '1000', '55', '13.19', '0', '', '1dJlXhO89d5D9YQJ', 0, 0, '2018-10-10 01:10:08', '2018-10-10 01:10:08'),
(93, 1, 510, NULL, NULL, '5000', '126.51', '64.08', '0', '', 'ySWSLbxBTbtNePqX', 0, 0, '2018-10-10 01:16:31', '2018-10-10 01:16:31'),
(94, 1, 105, NULL, NULL, '100', '2', '102', '0', '', 'rF56dtwVBqc62x0Y', 0, 0, '2018-10-10 01:25:59', '2018-10-10 01:25:59'),
(95, 1, 106, NULL, NULL, '100', '2', '102', '0', '', 'xSrVCruMo1HMDaZp', 0, 0, '2018-10-10 01:26:20', '2018-10-10 01:26:20'),
(96, 1, 107, NULL, NULL, '100', '2', '102', '0', '', 'r7SxPrriAz83OigT', 1, 0, '2018-10-10 01:26:31', '2018-10-10 01:50:16'),
(97, 1, 501, NULL, NULL, '3000', '16', '37.7', '0', '', 'WPwHAaYmFaYERRtd', 0, 0, '2018-10-10 01:50:37', '2018-10-10 01:50:37'),
(98, 1, 501, NULL, NULL, '1000', '6', '12.58', '0', '', 'Nb7FJUiuvloGMqR5', 0, 0, '2018-10-10 01:55:04', '2018-10-10 01:55:04'),
(99, 1, 106, NULL, NULL, '100', '2', '102', '0', '', 'wBk3zTFiyr3Czdpk', 0, 0, '2018-10-10 01:55:13', '2018-10-10 01:55:13'),
(100, 1, 101, NULL, NULL, '232', '6.3574', '3.02', '0', '', 'ojHmNPwzUyywU2YS', 0, 0, '2018-10-14 00:57:29', '2018-10-14 00:57:29'),
(101, 1, 513, NULL, NULL, '100', '10', '1.38', '0', '', '6zzKzbMcazmMmFVu', 0, 0, '2018-10-14 00:57:41', '2018-10-14 00:57:41'),
(102, 5, 103, NULL, NULL, '500', '18', '6.48', '0', '', 'MWlqC7wvdkwLbwEI', 1, 0, '2018-10-21 01:57:54', '2018-10-21 01:58:27'),
(103, 2, 103, NULL, NULL, '500', '18', '6.48', '0', '', 'y4cCCd4hIO2MIqGs', 1, 0, '2018-10-21 02:01:23', '2018-10-21 02:02:19'),
(104, 1, 103, NULL, NULL, '500', '18', '6.48', '0', '', 'mcugsPNP9wBLW5Oa', 1, 0, '2018-10-21 02:05:02', '2018-10-21 02:05:26'),
(105, 1, 103, NULL, NULL, '100', '6', '1.33', '0', '', 'jtVNuVCcwdxKWVOs', 1, 0, '2019-02-02 07:17:20', '2019-02-02 07:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `etemplates`
--

CREATE TABLE `etemplates` (
  `id` int(10) UNSIGNED NOT NULL,
  `esender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emessage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `smsapi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etemplates`
--

INSERT INTO `etemplates` (`id`, `esender`, `mobile`, `emessage`, `smsapi`, `created_at`, `updated_at`) VALUES
(1, 'do-not-reply@thesoftking.com', '+01234567890', '<br><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><table id=\"emb-email-header-container\" class=\"header\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto;\" align=\"center\"><tbody><tr><td style=\"padding: 0; width: 600px;\"><br><div class=\"header__logo emb-logo-margin-box\" style=\"font-size: 26px; line-height: 32px; color: #c3ced9; font-family: Roboto,Tahoma,sans-serif; margin: 6px 20px 20px 20px;\"><img style=\"height: auto; width: 100%; border: 0; max-width: 312px;\" src=\"http://i.imgur.com/nNCNPZT.png\" alt=\"\" width=\"312\" height=\"44\"><br></div></td></tr></tbody></table><br><table class=\"layout layout--no-gutter\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\" align=\"center\"><tbody><tr><td class=\"column\" style=\"padding: 0; text-align: left; vertical-align: top; color: #60666d; font-size: 14px; line-height: 21px; font-family: sans-serif; width: 600px;\"><br><div style=\"margin-left: 20px; margin-right: 20px;\"><font size=\"4\">Hi {{name}},<br></font><p><strong>{{message}}</strong></p></div><div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\"><br><p class=\"size-14\" style=\"margin-top: 0; margin-bottom: 0; font-size: 14px; line-height: 21px;\">Thanks,<br> <strong>THESOFTKING TEAM</strong></p><br></div><br></td></tr></tbody></table><br></div>', 'https://api.infobip.com/api/v3/sendsms/plain?user=****&password=****&sender=Exchangeo&SMSText={{message}}&GSM={{number}}&type=longSMS', '2018-01-09 23:45:09', '2018-11-11 15:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `exchange_moneys`
--

CREATE TABLE `exchange_moneys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_amount_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_currency_id` int(11) DEFAULT NULL,
  `receive_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receive_currency_id` int(11) DEFAULT NULL,
  `transaction_number` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_payment_id` text COLLATE utf8mb4_unicode_ci,
  `info` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Is registration required on your site?', '<div>No, registration is not required. But if you sign up on our service, you can participate in the cumulative discount program and referral program.</div><div><br></div>', '2018-04-15 02:14:58', '2018-10-08 03:17:43'),
(2, 'How to make an exchange on your site?', '<div>You need to choose the direction of exchange and fill out an application for exchange. Click the Exchange button and follow the instructions that you will see in the confirmation window of the exchange request. If you have any questions in the exchange process, please contact the operator via the online help chat.</div><div><br></div>', '2018-04-15 02:15:11', '2018-10-08 03:19:27'),
(3, 'I did not specify a payment note. It is necessary?', '<div>When you make an application, you will receive on your monitor exact instructions on what payment you must indicate when making a payment. If this note is not indicated, then we reserve the right to return the amount to the requisites indicated in the application. The procedure can take up to 6 days. At the same time, all commissions are charged to the client.</div><div><br></div>', '2018-05-22 22:36:44', '2018-10-08 03:19:56'),
(4, 'Do you have an affiliate program?', '<div>Yes. We have a very clear and transparent affiliate program, according to which you can receive 25% of our earnings for exchanging the users you cited. Remuneration payments are from 1 PMUSD. In your office you can track the operations of your referrals online. You can get acquainted with more detailed information after registration in your Personal Account.</div><div><br></div>', '2018-10-04 01:19:53', '2018-10-08 03:20:22'),
(5, 'What bonuses are for regular customers?', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\"><font color=\"#505050\" face=\"Open Sans, sans-serif\"><span style=\"letter-spacing: 0.5px;\">Any registered user, making any exchange, is already involved in the formation of its cumulative discount. After reaching any of the stages of our loyalty program, you will receive a coefficient that is applied to the formation of a more favorable exchange rate just for you at each subsequent exchange. That is, you get a discount on any exchange in any direction. You can get acquainted with more detailed information after registration in your Personal Account.</span></font></p><div><br></div>', '2018-10-04 01:20:10', '2018-10-08 03:20:56'),
(6, 'How do I manage my Remitly account?', 'To make changes to your account information, first go to your account Settings\r\n\r\nSign in to your account.\r\nSelect “Settings”.\r\nFrom “Settings”, select “Profile information”.\r\nTo change your password\r\n\r\nSelect “edit password”.\r\nEnter your current password.\r\nEnter your new password twice.\r\nSelect “change password” to complete and save your changes.\r\nTo change your address\r\n\r\nSelect “edit address”.\r\nEnter your new address.\r\nSelect “change address” to complete and save your changes.\r\nTo change your phone number\r\n\r\nSelect “edit phone number”.\r\nEnter your new phone number.\r\nSelect “change phone number” to complete and save your changes.\r\nTo change your email address\r\n\r\nSelect “edit email address”.\r\nEnter your new email address\r\nSelect “change email” to complete and save your changes.', '2018-10-04 01:20:48', '2018-10-04 01:20:48'),
(7, 'Bitcoin operation is not confirmed for a long time. What does it mean?', '<div>Translations in the Bitcoin system may be in a state of \"Unconfirmed Transaction\" for a long time. Most often this is due to the fact that one of the operations does not take long. According to the rules of the Bitcoin network, such a problem translation is attached to another block and then follows the standard procedure.</div><div><br></div>', '2018-10-04 01:21:18', '2018-10-08 03:21:23'),
(8, 'What are the limitations when exchanging Yandex.Money?', '<div>The first exchange Yandex. Money may be made in the amount of up to 10,000 rubles. Exchange will occur 25 hours after payment at the rate at the time of the expiration of the hold. After successful completion of the exchange operation, there will be no restrictions on the period and amount of exchange from this wallet.</div><div><br></div>', '2018-10-04 01:59:20', '2018-10-08 03:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `main_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Website',
  `val4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Industry Type',
  `val5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Channel ID',
  `val6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Transaction URL',
  `val7` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Transaction Status URL',
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `main_name`, `name`, `minamo`, `maxamo`, `fixed_charge`, `percent_charge`, `rate`, `val1`, `val2`, `val3`, `val4`, `val5`, `val6`, `val7`, `status`, `created_at`, `updated_at`) VALUES
(101, 'PayPal', 'PayPal', '5', '1000', '0.511', '2.52', '79', 'rexrifat636@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-07-18 01:13:45'),
(102, 'PerfectMoney', 'Perfect Money', '20', '20000', '2', '1', '80', 'U5376900', 'G079qn4Q7XATZBqyoCkBteGRg', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-07-01 01:22:11'),
(103, 'Stripe', 'Credit Card', '10', '50000', '3', '3', '80', 'sk_test_aat3tzBCCXXBkS4sxY3M8A1B', 'pk_test_AU3G7doZ1sbdpJLj0NaozPBu', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-27 18:11:50'),
(104, 'Skrill', 'Skrill', '10', '50000', '3', '3', '80', 'merchant@skrill', 'TheSoftKing', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-20 12:01:09'),
(105, 'PayTM', 'PayTM', '1', '100', '1', '1', '1', 'PoojaE46324372286132', 'JAKMX9PVoj208dMq', 'WEB_STAGINGb', 'Retail', 'WEB', 'https://pguat.paytm.com/oltp-web/processTransaction', 'https://pguat.paytm.com/paytmchecksum/paytmCallback.jsp', 1, NULL, '2018-08-29 02:06:01'),
(106, 'Payeer', 'Payeer', '1', '100', '1', '1', '1', '627881897', 'Admin727096', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-08-18 01:30:48'),
(107, 'PayStack', 'PayStack', '1', '100', '1', '1', '1', 'pk_test_c1775454cc81a5ad2d6a31d0b0471585d44c4dcb', 'sk_test_22327c329aa7ea76448cfe279aa1e5d583d306fa', NULL, NULL, NULL, NULL, '0.0028', 1, NULL, '2018-08-18 01:31:07'),
(108, 'VoguePay', 'VoguePay', '1', '100', '1', '1', '1', 'demo', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-08-29 02:09:58'),
(501, 'Blockchain.info', 'BitCoin', '1', '20000', '1', '0.5', '80', '3965f52f-ec19-43af-90ed-d613dc60657eSSS', 'xpub6DREmHywjNizvs9b4hhNekcjFjvL4rshJjnrHHgtLNCSbhhx5jKFRgqdmXAecLAddEPudDZY4xoDbV1NVHSCeDp1S7NumPCNNjbxB7sGasY0000', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-21 01:20:29'),
(502, 'block.io - BTC', 'BitCoin', '1', '99999', '1', '0.5', '80', '1658-8015-2e5e-9afb', '09876softk', NULL, NULL, NULL, NULL, NULL, 1, '2018-01-27 18:00:00', '2018-05-31 09:12:55'),
(503, 'block.io - LTC', 'LiteCoin', '100', '10000', '0.4', '1', '80', 'cb91-a5bc-69d7-1c27', '09876softk', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-31 09:27:34'),
(504, 'block.io - DOGE', 'DogeCoin', '1', '50000', '0.51', '2.52', '80', '2daf-d165-2135-5951', '09876softk', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-31 09:28:54'),
(505, 'CoinPayment - BTC', 'BitCoin', '1', '50000', '0.51', '2.52', '80', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-31 09:38:33'),
(506, 'CoinPayment - ETH', 'Etherium', '1', '50000', '0.51', '2.52', '79', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-07-16 03:42:22'),
(507, 'CoinPayment - BCH', 'Bitcoin Cash', '1', '50000', '0.51', '2.52', '80', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-31 09:39:04'),
(508, 'CoinPayment - DASH', 'DASH', '1', '50000', '0.51', '2.52', '80', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-31 09:39:04'),
(509, 'CoinPayment - DOGE', 'DOGE', '1', '50000', '0.51', '2.52', '80', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-31 09:39:04'),
(510, 'CoinPayment - LTC', 'LTC', '1', '50000', '0.51', '2.52', '80', '596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315', '7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-31 09:39:04'),
(512, 'CoinGate', 'CoinGate', '10', '1000', '05', '5', '80', 'Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-07-08 18:00:00', '2018-05-21 01:20:54'),
(513, 'CoinPayment-ALL', 'Coin Payment', '10', '1000', '05', '5', '80', 'db1d9f12444e65c921604e289a281c56', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2018-05-21 01:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `mentors`
--

CREATE TABLE `mentors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mentors`
--

INSERT INTO `mentors` (`id`, `name`, `image`, `designation`, `created_at`, `updated_at`) VALUES
(2, 'William B. Hannah', 'mentor_1539064936.jpg', 'Founder', '2018-10-09 00:02:16', '2018-10-09 00:02:16'),
(3, 'Halim H. Thomson', 'mentor_1539064969.jpg', 'CEO', '2018-10-09 00:02:49', '2018-10-09 00:02:49'),
(4, 'Arista T. Promi', 'mentor_1539064987.jpg', 'Manager', '2018-10-09 00:03:07', '2018-10-09 00:03:07'),
(5, 'Linkon J. Hannah', 'mentor_1539065004.jpg', 'Pilot', '2018-10-09 00:03:24', '2018-10-09 00:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Our Goals', 'our-goals', 0x3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c2f6469763e3c6469763e3c666f6e7420636f6c6f723d2223303030303030223e3c62723e3c2f666f6e743e3c2f6469763e, '2018-09-09 07:27:34', '2018-10-20 21:34:49'),
(3, 'Our Achivements', 'our-achivements', 0x3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c6469763e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b223e3c666f6e7420636f6c6f723d2223303030303030223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f666f6e743e3c2f703e3c2f6469763e3c2f6469763e3c6469763e3c666f6e7420636f6c6f723d2223303030303030223e3c62723e3c2f666f6e743e3c2f6469763e, '2018-09-09 07:27:42', '2018-10-20 21:35:03');

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
(3, '2018_09_24_054215_create_admins_table', 2),
(4, '2018_09_24_054216_create_admin_password_resets_table', 2),
(11, '2018_09_27_072818_create_user_logins_table', 4),
(12, '2018_10_08_100843_create_mentors_table', 5),
(13, '2018_10_08_101212_create_services_table', 5),
(20, '2018_10_10_102109_create_currencies_table', 6),
(21, '2018_10_14_073737_create_buy_moneys_table', 6),
(22, '2018_10_16_084059_create_sell_moneys_table', 6),
(23, '2018_10_17_114330_create_exchange_moneys_table', 6),
(24, '2018_10_18_124342_create_banks_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(1, 'ronnniearea@gmail.com', 'kzSptVkMDe8YAmJw2LQ7roFFKkOEgv', '2018-09-28 23:48:02'),
(2, 'ronnniearea@gmail.com', 'MaZaw7yw0fc68rnHSKn1ygY6YJX1O2', '2018-09-28 23:49:47'),
(3, 'ronnniearea@gmail.com', 'RTUzOiojFTwQ5cP6cztn2II3q74prw', '2018-09-28 23:50:20'),
(4, 'ronnniearea@gmail.com', 'mRuvG5lCrZ6VlXmG5XFfDWPFLXvRdV', '2018-09-29 00:00:20'),
(5, 'ronnniearea@gmail.com', 'xCslNU18YblO0pdt3srO1vatWLOIvN', '2018-09-29 00:02:18'),
(6, 'mutasim@gmil.com', 'F0BcdXHXCsq0qPtWXM2xNoUNF9Huh4', '2018-09-30 23:12:51'),
(7, 'ronniearea@gmail.com', 'ckDecsw5PvuUhR1cxaVxlMHU7oEGNx', '2018-10-08 20:13:11'),
(8, 'ronniearea@gmail.com', 'jJTERKrBUZh9N7GuggxGZPnwdR8JhS', '2018-10-08 20:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `hit` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `title`, `image`, `details`, `status`, `hit`, `created_at`, `updated_at`) VALUES
(2, 2, 'It is a long established fact that a reader', 'post_1538982284.jpg', '<p style=\"font-size: 16px; color: rgba(30, 48, 86, 0.8); line-height: 30px; font-family: Poppins, sans-serif;\"></p><div class=\"single-blog\" style=\"box-sizing: border-box; margin-bottom: 37px; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"></div><p></p><div class=\"single-blog\" style=\"box-sizing: border-box; margin-bottom: 37px; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"part-text\" style=\"box-sizing: border-box;\"><p style=\"box-sizing: border-box; margin-top: 24px; margin-bottom: 1rem; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p><p style=\"box-sizing: border-box; margin-top: 24px; margin-bottom: 1rem; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163);\"></p><div class=\"single-blog\" style=\"box-sizing: border-box; margin-bottom: 37px; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"></div><p></p><div class=\"single-blog\" style=\"box-sizing: border-box; margin-bottom: 37px; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"part-text\" style=\"box-sizing: border-box;\"><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><p style=\"box-sizing: border-box; margin-top: 24px; margin-bottom: 1rem; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div></div></div>', 1, 38, '2018-06-12 18:00:00', '2018-10-08 01:04:44'),
(4, 1, 'labore et dolore magna aliqua', 'post_1538982509.jpg', '<p style=\"font-size: 16px; color: rgba(30, 48, 86, 0.8); line-height: 30px; font-family: Poppins, sans-serif;\"></p><div class=\"single-blog\" style=\"box-sizing: border-box; margin-bottom: 37px; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"></div><p></p><div class=\"single-blog\" style=\"box-sizing: border-box; margin-bottom: 37px; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"part-text\" style=\"box-sizing: border-box;\"><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><p style=\"box-sizing: border-box; margin-top: 24px; margin-bottom: 1rem; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div>', 1, 7, '2018-06-08 18:00:00', '2018-10-08 01:08:29'),
(6, 3, 'Hashpower transfer for Users', 'post_1538982228.jpg', '<p style=\"font-size: 16px; color: rgba(30, 48, 86, 0.8); line-height: 30px; font-family: Poppins, sans-serif;\"></p><div class=\"single-blog\" style=\"box-sizing: border-box; margin-bottom: 37px; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"></div><p></p><div class=\"single-blog\" style=\"box-sizing: border-box; margin-bottom: 37px; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"part-text\" style=\"box-sizing: border-box;\"><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><p style=\"box-sizing: border-box; margin-top: 24px; margin-bottom: 1rem; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div>', 1, 18, '2018-06-10 06:41:15', '2018-10-08 01:03:48'),
(7, 2, 'Hashpower for CryptoNight Users', 'post_1538981815.jpg', '<p style=\"font-size: 16px; color: rgba(30, 48, 86, 0.8); line-height: 30px; font-family: Poppins, sans-serif;\"><div class=\"single-blog\" style=\"box-sizing: border-box; margin-bottom: 37px; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"></div></p><div class=\"single-blog\" style=\"box-sizing: border-box; margin-bottom: 37px; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"part-text\" style=\"box-sizing: border-box;\"><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><p style=\"box-sizing: border-box; margin-top: 24px; margin-bottom: 1rem; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div>', 1, 55, '2018-06-10 06:41:27', '2018-10-08 00:56:55'),
(9, 4, 'There is no one who loves pain itself', 'post_1538981798.jpg', '<p style=\"font-size: 16px; color: rgba(30, 48, 86, 0.8); line-height: 30px; font-family: Poppins, sans-serif;\"><div class=\"single-blog\" style=\"box-sizing: border-box; margin-bottom: 37px; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"></div></p><div class=\"single-blog\" style=\"box-sizing: border-box; margin-bottom: 37px; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"part-text\" style=\"box-sizing: border-box;\"><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><p style=\"box-sizing: border-box; margin-top: 24px; margin-bottom: 1rem; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div>', 1, 15, '2018-06-10 06:42:21', '2018-10-08 00:56:38'),
(10, 2, 'labore et dolore magna aliqua', 'post_1538981783.jpg', '<p style=\"font-size: 16px; color: rgba(30, 48, 86, 0.8); line-height: 30px; font-family: Poppins, sans-serif;\"><div class=\"single-blog\" style=\"box-sizing: border-box; margin-bottom: 37px; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"></div></p><div class=\"single-blog\" style=\"box-sizing: border-box; margin-bottom: 37px; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"part-text\" style=\"box-sizing: border-box;\"><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"><div class=\"part-text\"><p style=\"margin-top: 24px; line-height: 1.6; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div><div class=\"single-blog\" style=\"margin-bottom: 37px;\"></div><p style=\"box-sizing: border-box; margin-top: 24px; margin-bottom: 1rem; line-height: 1.6; font-size: 16px; color: rgb(128, 128, 163);\">Lorem Ipsum is simply dummy text ofthe anadthe printing of typesetting industry is not fire for dummy texat the dummy text ofthe anadthe printing dummy text ofthe anadthe breath in printing of dummy text ofthe anadthe printing of dummy text ofthe anadthe local market for printing of typesetting industrydummy texat the dummy.</p></div></div>', 1, 53, '2018-06-10 06:48:58', '2018-10-08 00:56:23');

-- --------------------------------------------------------

--
-- Table structure for table `sell_moneys`
--

CREATE TABLE `sell_moneys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `enter_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sell_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sell_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `get_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` text COLLATE utf8mb4_unicode_ci,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `image`, `details`, `created_at`, `updated_at`) VALUES
(3, 'Bitcoin Transaction', '<i class=\"flaticon-bitcoin-2\"></i>', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.', '2018-10-09 02:50:11', '2018-10-09 02:50:11'),
(4, 'Instant Exchange', '<i class=\"flaticon-blockchain\"></i>', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.', '2018-10-09 03:24:44', '2018-10-09 03:24:44'),
(5, 'Investment Banking', '<i class=\"flaticon-mining\"></i>', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.', '2018-10-09 03:25:27', '2018-10-21 07:57:31'),
(6, 'Safe And Secure', '<i class=\"flaticon-bitcoin-1\"></i>', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.', '2018-10-09 03:26:10', '2018-10-09 03:26:10'),
(7, 'Investment Planning', '<i class=\"flaticon-bitcoin\"></i>', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.', '2018-10-09 03:27:15', '2018-10-09 03:27:15'),
(8, 'Instant Trading', '<i class=\"flaticon-wallet-1\"></i>', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.', '2018-10-09 03:28:04', '2018-10-09 03:28:04');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `name`, `code`, `link`, `created_at`, `updated_at`) VALUES
(3, 'fb.com/thesoftking', '<i class=\"fab fa-facebook-f\"></i>', 'https://www.facebook.com/thesoftking', '2018-05-22 22:56:12', '2018-05-22 22:57:20'),
(4, 'twitter.com/thesoftking', '<i class=\"fab fa-twitter\"></i>', 'http://thesoftking.com/contact#asda', '2018-05-22 23:57:46', '2018-05-22 23:57:46'),
(5, 'linkedin.com/thesoftking', '<i class=\"fab fa-linkedin-in\"></i>', 'http://thesoftking.com/contact#asda', '2018-05-22 23:58:14', '2018-07-03 04:53:27'),
(6, 'stack-overflow/thesoftking', '<i class=\"fab fa-stack-overflow\"></i>', 'http://thesoftking.com/contact#asda', '2018-05-22 23:58:34', '2018-05-23 00:15:44'),
(7, 'linkedin.com/thesoftking', '<i class=\"fab fa-staylinked\"></i>', 'http://thesoftking.com/contact#asda', '2018-05-22 23:59:12', '2018-10-07 05:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'arifroni20@gmail.com', 1, '2018-05-02 06:36:08', '2018-07-02 06:36:08'),
(2, 'ronniearea@gmail.com', 1, '2018-06-02 06:36:24', '2018-07-02 06:36:24'),
(3, 'redhack98@gmail.com', 1, '2018-06-02 06:38:46', '2018-07-02 06:53:54'),
(4, 'arif20@gmail.com', 1, '2018-07-26 06:37:40', '2018-07-26 06:37:40'),
(5, 'leadit@gmail.com', 1, '2018-08-09 07:49:13', '2018-08-09 07:49:13'),
(6, 'ronnie@gmail.com', 1, '2018-08-15 05:49:14', '2018-08-30 03:22:16'),
(7, 'mutasim@gmil.com', 1, '2018-10-04 02:33:23', '2018-10-04 02:33:23'),
(8, 'mutasimmia@gmil.com', 1, '2018-10-04 02:35:19', '2018-10-04 02:35:19'),
(9, 'sdfsdf@gmail.com', 1, '2018-10-06 00:22:58', '2018-10-06 00:22:58'),
(10, 'ronniearea94@gmail.com', 1, '2018-10-21 08:17:56', '2018-10-21 08:17:56'),
(11, 'admin@gmail.com', 1, '2018-11-11 00:34:20', '2018-11-11 00:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `image`, `designation`, `details`, `created_at`, `updated_at`) VALUES
(1, 'William Hannah', 'testimonial_1538811215.jpg', 'founder, themes llc.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '2018-09-12 18:00:00', '2018-10-06 01:33:35'),
(3, 'Neque porro', 'testimonial_1538630482.jpg', 'Fonder, Zigzag co', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain. There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain', '2018-07-02 08:59:54', '2018-10-03 23:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `trxes`
--

CREATE TABLE `trxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `main_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `charge` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '+',
  `reffer` tinyint(4) NOT NULL DEFAULT '0',
  `currency_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verify` tinyint(4) NOT NULL DEFAULT '0',
  `email_verify` tinyint(4) NOT NULL DEFAULT '0',
  `email_time` datetime DEFAULT NULL,
  `phone_time` datetime DEFAULT NULL,
  `refer` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `login_time` datetime DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_logs`
--

CREATE TABLE `withdraw_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `method_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `net_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_details` text COLLATE utf8mb4_unicode_ci,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_logs`
--

INSERT INTO `withdraw_logs` (`id`, `user_id`, `method_id`, `transaction_id`, `wallet_id`, `currency_id`, `amount`, `charge`, `net_amount`, `send_details`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '6JLOQSR4T6O80IKVFLIN', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 05:34:43', '2018-10-21 05:34:43'),
(2, 1, 1, 'ONFENKI0LCAPL8GF60B4', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:00:58', '2018-10-21 06:00:58'),
(3, 1, 1, 'VVJVCUAM6D61XRAKOFXA', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:01:15', '2018-10-21 06:01:15'),
(4, 1, 1, 'GCS7TTHEIQOTMDNTE1JZ', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:01:47', '2018-10-21 06:01:47'),
(5, 1, 1, 'QRWGPGGEVGB2RO47KQ1S', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:06:32', '2018-10-21 06:06:32'),
(6, 1, 1, 'KPBJVPCNQMAW92IWHKVB', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:07:06', '2018-10-21 06:07:06'),
(7, 1, 1, 'LTRPVAQZRGB4ZRLMVV2V', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:11:35', '2018-10-21 06:11:35'),
(8, 1, 1, 'BNEX76Y8JGDXECIAIHDF', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:12:11', '2018-10-21 06:12:11'),
(9, 1, 1, 'ZID60BTXDW13ECJGQ0RX', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:12:59', '2018-10-21 06:12:59'),
(10, 1, 1, '75CCJGGZS9K10OEUCSAK', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:13:11', '2018-10-21 06:13:11'),
(11, 1, 1, 'F0JMJJFYPNDKPFPKTTCJ', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:14:17', '2018-10-21 06:14:17'),
(12, 1, 1, 'LAIHASGSV7LHZC2RIG9D', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:14:54', '2018-10-21 06:14:54'),
(13, 1, 1, 'T4O3EL62FSOGH0WJLYG6', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:15:09', '2018-10-21 06:15:09'),
(14, 1, 1, 'UUWMMDK2LLDYG3VCB3LA', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:15:24', '2018-10-21 06:15:24'),
(15, 1, 1, '45LNQKRQJQGWW20UEZL6', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:16:04', '2018-10-21 06:16:04'),
(16, 1, 1, 'Z4ZJ6DH3REGHHUM3NOVZ', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:16:15', '2018-10-21 06:16:15'),
(17, 1, 1, 'EVLMUWE53JPLODDBG2VP', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:16:44', '2018-10-21 06:16:44'),
(18, 1, 1, '2J01RSYOU0BU2A61VJIK', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:17:47', '2018-10-21 06:17:47'),
(19, 1, 1, '5KXYXS5TLRJCB2UQIQ97', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:18:46', '2018-10-21 06:18:46'),
(20, 1, 1, 'JLO5IP57ZN21J6EGQLGL', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:19:17', '2018-10-21 06:19:17'),
(21, 1, 1, 'RUEP6KCCLTOXSENJCKJW', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:19:26', '2018-10-21 06:19:26'),
(22, 1, 1, 'F13UVPHHPUFDD9AOPZCB', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:20:21', '2018-10-21 06:20:21'),
(23, 1, 1, 'P0BBBNOJBKQMWRVQICOU', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:20:51', '2018-10-21 06:20:51'),
(24, 1, 1, 'SG33WI8A0RFLFGLXHQWK', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:21:08', '2018-10-21 06:21:08'),
(25, 1, 1, 'NJMZ0RWD5GHXYW3QEOQ0', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:21:25', '2018-10-21 06:21:25'),
(26, 1, 1, 'O5OCYEWJDIR9XXPHY9M6', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:21:38', '2018-10-21 06:21:38'),
(27, 1, 1, 'MUSDGQKANZSPDKK2RC5J', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:21:57', '2018-10-21 06:21:57'),
(28, 1, 1, 'TBDX7A3LQ4DVRDRGBX7Y', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:22:33', '2018-10-21 06:22:33'),
(29, 1, 1, 'KKJWUEXBMZ8HAXWGM82F', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:23:09', '2018-10-21 06:23:09'),
(30, 1, 1, 'DZEGAA8HFSUDWERNRIC7', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:23:25', '2018-10-21 06:23:25'),
(31, 1, 1, 'FZ2EVUGMZN65ZHBV22AE', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:23:59', '2018-10-21 06:23:59'),
(32, 1, 1, 'C7R7QHNWRJLX8Z27LG0G', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:24:19', '2018-10-21 06:24:19'),
(33, 1, 1, 'YW8WGETOUZZ6ID0KWUWT', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:24:34', '2018-10-21 06:24:34'),
(34, 1, 1, 'B2DAAN5J0YKDGNBANXQB', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:25:21', '2018-10-21 06:25:21'),
(35, 1, 1, 'TD7OKZ6GTH7Z3DACBQYR', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:25:36', '2018-10-21 06:25:36'),
(36, 1, 1, 'JNFZTK4CS6PJE5NVQ6NH', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:26:17', '2018-10-21 06:26:17'),
(37, 1, 1, 'RKEIVAU9EVEEN8QZDMXC', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:26:56', '2018-10-21 06:26:56'),
(38, 1, 1, 'A0AICT6UYHKPIS2DDITH', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:27:19', '2018-10-21 06:27:19'),
(39, 1, 1, 'UO9C5IUS2DIWUUWF8H9I', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:27:49', '2018-10-21 06:27:49'),
(40, 1, 1, 'ZQJ7PBUC0NBYDNK0NQ6F', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:28:19', '2018-10-21 06:28:19'),
(41, 1, 1, 'PR5NGBMHQM2HFRUP3WMY', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:28:50', '2018-10-21 06:28:50'),
(42, 1, 1, '3UGZKMPIVTLV1VNESL5B', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:29:08', '2018-10-21 06:29:08'),
(43, 1, 1, '0A1SH54FGM9E17F9KQ2I', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:29:24', '2018-10-21 06:29:24'),
(44, 1, 1, 'QFTNNPCAYABESQWOEPQE', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:30:19', '2018-10-21 06:30:19'),
(45, 1, 1, 'F2SSWPRJMEBSVH1UCULT', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:30:26', '2018-10-21 06:30:26'),
(46, 1, 1, '5CQHWPVK3UGB35SUXVWE', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:30:41', '2018-10-21 06:30:41'),
(47, 1, 1, 'TKBLDP7N1RVRQMK27QIE', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:31:49', '2018-10-21 06:31:49'),
(48, 1, 1, 'XRAMC1RZUBVMDVGIRAHK', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:32:12', '2018-10-21 06:32:12'),
(49, 1, 1, 'MYO7VWZYYN5SCXLL5FDE', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:34:23', '2018-10-21 06:34:23'),
(50, 1, 1, 'QSGRMRZYSI04ZCFV8F1A', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:35:39', '2018-10-21 06:35:39'),
(51, 1, 1, 'SW30LZKFO12OQANTJPQE', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:35:51', '2018-10-21 06:35:51'),
(52, 1, 1, '4JJBZYU7VQEDIYDOXLIR', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:37:11', '2018-10-21 06:37:11'),
(53, 1, 1, 'S5MVTW5K1KAO5XGH1FR5', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:41:25', '2018-10-21 06:41:25'),
(54, 1, 1, 'S0HFMHU2EAUIVP6NMQWI', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:42:18', '2018-10-21 06:42:18'),
(55, 1, 1, 'RRCFPC6MHVBSPWMI8HMF', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:43:08', '2018-10-21 06:43:08'),
(56, 1, 1, 'ECP67XJ7Q0ULZ779IBVF', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:43:19', '2018-10-21 06:43:19'),
(57, 1, 1, 'OEBWHQ8G7RTHPGXBQZDS', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:43:28', '2018-10-21 06:43:28'),
(58, 1, 1, 'CE5KS9BAPHD47N728KUN', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:43:59', '2018-10-21 06:43:59'),
(59, 1, 1, '1FSFURSGWBHIVWQE0WEW', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:44:16', '2018-10-21 06:44:16'),
(60, 1, 1, 'CG1SVOZ6C53QYP4A6GPY', NULL, NULL, '10', '10.13', '20.130000000000003', NULL, NULL, 0, '2018-10-21 06:44:32', '2018-10-21 06:44:32'),
(61, 1, 1, 'GYFJKFQEQYNOGRIUR5WD', NULL, NULL, '10', '10.13', '20.130000000000003', 'gfdgdfg', 'dfgdfgdfg', 1, '2018-10-21 06:44:39', '2018-10-21 06:44:47'),
(62, 1, 2, 'PJKPZ1RI4GD5AL64JKQN', NULL, NULL, '10', '25.11', '35.11', 'sdfs', 'sdf', 2, '2018-10-21 06:45:07', '2018-10-21 07:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdraw_min` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `withdraw_max` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '10',
  `fix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `name`, `image`, `withdraw_min`, `withdraw_max`, `fix`, `percent`, `duration`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bitcoin Cash', '5b2b9d60516d9.jpg', '10', '25000', '10', '1.25', '2', 1, '2017-07-28 09:09:41', '2018-10-21 07:13:42'),
(2, 'BitCoin Cash', '5b2b9cc1da397.jpg', '10', '2000', '25', '1.10', '3', 1, '2017-07-28 09:10:00', '2018-09-19 13:43:17'),
(3, 'Dash', '5b2b9c308ef55.jpg', '10', '20000', '2', '1.8', '1', 1, '2017-08-09 15:06:21', '2018-09-19 13:42:36'),
(6, 'LiteCoin', '5b2b9c1094ec8.jpg', '10', '10000', '20', '2.5', '2-5', 1, '2018-03-12 07:43:54', '2018-09-19 13:42:31'),
(7, 'Ethereum', '5b2b9bd0e6b2f.jpg', '10', '1000', '10', '1.5', '2-50', 0, '2018-03-13 00:16:14', '2018-09-19 13:42:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_settings`
--
ALTER TABLE `basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buy_moneys`
--
ALTER TABLE `buy_moneys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etemplates`
--
ALTER TABLE `etemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exchange_moneys`
--
ALTER TABLE `exchange_moneys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mentors`
--
ALTER TABLE `mentors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_moneys`
--
ALTER TABLE `sell_moneys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trxes`
--
ALTER TABLE `trxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `withdraw_logs`
--
ALTER TABLE `withdraw_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `basic_settings`
--
ALTER TABLE `basic_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buy_moneys`
--
ALTER TABLE `buy_moneys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `etemplates`
--
ALTER TABLE `etemplates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exchange_moneys`
--
ALTER TABLE `exchange_moneys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;

--
-- AUTO_INCREMENT for table `mentors`
--
ALTER TABLE `mentors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sell_moneys`
--
ALTER TABLE `sell_moneys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trxes`
--
ALTER TABLE `trxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_logs`
--
ALTER TABLE `withdraw_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
