-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 24, 2023 at 09:23 PM
-- Server version: 8.0.34-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `futures7_rome`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `created_at`, `updated_at`, `name`, `email`, `address`, `userid`) VALUES
(1, '2022-11-13 20:07:55', '2022-11-13 20:07:55', 'Savalan Alasov', 'savalanalovsoy@gmail.com', '4098584467173058', '38'),
(2, '2023-01-01 12:17:26', '2023-01-01 12:17:26', 'Saifullah', 'seyaljalalzai@gmai.com', 'Kabul ceti', '80'),
(3, '2023-01-13 06:02:57', '2023-01-13 06:02:57', 'Ravi Kumar', 'ravi170587@gmail.com', 'Maa sumitra niwas puran vihar near twin tower ranchi jharkhand 834002 India', '86'),
(4, '2023-05-02 10:07:33', '2023-05-02 10:07:33', 'Joshua', 'investorjosh734@gmail.com', 'investorjosh734@gmail.com', '162'),
(5, '2023-05-05 19:42:48', '2023-05-05 19:42:48', 'Sher Bahadur', 'mrsher2000@gmail.com', 'Via Vandalino 131, 10142, Torino, Torino, IT', '135'),
(6, '2023-06-03 07:05:45', '2023-06-03 07:05:45', 'Prema Kumari Barain', 'PremakumariBarain9811@gmail.com', '545320000000', '258'),
(7, '2023-06-11 17:07:55', '2023-06-11 17:07:55', 'Sheikh Farhad Mia', 'farhad.phulpur@gmail.com', 'Katuly Ruposhi Phulpur Mymensingh', '310'),
(8, '2023-09-05 21:35:08', '2023-09-05 21:35:08', 'Yusuf Gadanya Ahmad', 'yusufgadanya44@gmail.com', 'Sahad store', '485');

-- --------------------------------------------------------

--
-- Table structure for table `companydetails`
--

CREATE TABLE `companydetails` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `aboutTitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `companyName` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `runningDays` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyemail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companylocation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyphone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `depositDate` date NOT NULL,
  `amount` int NOT NULL,
  `method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `methodAccount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `userId` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `created_at`, `updated_at`, `depositDate`, `amount`, `method`, `name`, `email`, `methodAccount`, `status`, `userId`) VALUES
(1, '2022-10-16 19:31:06', '2022-10-16 20:40:01', '2022-10-16', 500, 'btc_address', 'Benjamin', 'benizu86@gmail.com', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 1, 7),
(2, '2022-10-16 23:34:28', '2022-10-24 13:22:02', '2022-10-17', 100, 'btc_address', 'Benjamin', 'benizu86@gmail.com', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 1, 7),
(3, '2022-10-16 23:36:20', '2022-10-24 13:31:12', '2022-10-17', 100, 'eth', 'Benjamin', 'benizu86@gmail.com', '0xFd42cEeFAcD2Eb3728EF8bbDF9050BF6a5f392f9', 1, 7),
(4, '2022-10-16 23:36:44', '2022-10-24 13:31:23', '2022-10-17', 100, 'xrp', 'Benjamin', 'benizu86@gmail.com', 'rsP2HJoA9ji925W4Q9xDxnqh37j47oAd7H', 1, 7),
(5, '2022-10-21 06:03:36', '2022-10-24 13:31:35', '2022-10-21', 10000, 'btc_address', 'Benjamin', 'benizu86@gmail.com', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 1, 7),
(6, '2022-10-23 07:06:35', '2022-10-24 13:31:44', '2022-10-23', 500, 'btc_address', 'Lisa', 'ofomata66778@gmail.com', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 1, 10),
(7, '2022-10-23 07:06:52', '2022-10-24 13:31:58', '2022-10-23', 500, 'btc_address', 'Lisa', 'ofomata66778@gmail.com', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 1, 10),
(8, '2022-10-23 13:32:44', '2022-10-24 13:32:37', '2022-10-23', 20000, 'eth', 'Peneki', 'jude44by2@gmail.com', '0xFd42cEeFAcD2Eb3728EF8bbDF9050BF6a5f392f9', 1, 13),
(9, '2022-10-23 13:33:54', '2022-10-24 13:32:14', '2022-10-23', 20000, 'xrp', 'Peneki', 'jude44by2@gmail.com', 'rsP2HJoA9ji925W4Q9xDxnqh37j47oAd7H', 1, 13),
(10, '2022-10-24 12:58:05', '2022-10-24 13:22:41', '2022-10-24', 30000, 'btc_address', 'Lisa', 'ofomata66778@gmail.com', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 1, 10),
(11, '2022-10-24 12:58:37', '2022-10-24 13:22:22', '2022-10-24', 30000, 'btc_address', 'Lisa', 'ofomata66778@gmail.com', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 1, 10),
(12, '2022-10-24 14:01:08', '2022-10-24 22:30:30', '2022-10-24', 200, 'usdt', 'Benjamin', 'benizu86@gmail.com', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 1, 7),
(13, '2022-10-24 14:06:54', '2022-10-24 22:30:19', '2022-10-24', 50000, 'usdt', 'Eastonbenz', 'benz74170@gmail.com', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 1, 17),
(14, '2022-10-24 14:15:41', '2022-10-24 22:30:10', '2022-10-24', 100000, 'eth', 'Klifford', 'iwal2874@gmail.com', '0xFd42cEeFAcD2Eb3728EF8bbDF9050BF6a5f392f9', 1, 18),
(15, '2022-10-24 22:12:27', '2022-10-24 22:29:57', '2022-10-24', 30000, 'usdt', 'George', 'ofomat667788@gmail.com', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 1, 16),
(16, '2022-10-24 22:13:27', '2022-10-24 22:29:44', '2022-10-24', 30000, 'btc_address', 'George', 'ofomat667788@gmail.com', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 1, 16),
(17, '2022-10-27 13:37:20', '2022-10-27 13:42:12', '2022-10-27', 30000, 'xrp', 'LucBenart', 'benarlucy@gmail.com', 'rsP2HJoA9ji925W4Q9xDxnqh37j47oAd7H', 1, 20),
(18, '2022-10-27 14:23:36', '2022-10-27 14:24:41', '2022-10-27', 50000, 'eth', 'Alexander', 'bimeoalexander@gmail.com', '0xFd42cEeFAcD2Eb3728EF8bbDF9050BF6a5f392f9', 1, 21),
(19, '2022-10-28 09:17:44', '2022-10-28 09:28:59', '2022-10-28', 50000, 'btc_address', 'Lina', 'ofomataeze445566@gmail.com', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 1, 22),
(20, '2022-10-29 07:59:04', '2022-10-29 08:05:50', '2022-10-29', 60000, 'btc_address', 'Emelia', 'ofomatajude556677@gmail.com', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 1, 23),
(21, '2022-10-29 08:00:52', '2022-10-29 08:05:56', '2022-10-29', 60000, 'btc_address', 'Emelia', 'ofomatajude556677@gmail.com', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 1, 23),
(22, '2022-10-29 08:04:34', '2022-10-29 08:05:43', '2022-10-29', 40000, 'eth', 'Bruel nelson', 'supfuturesoptimax@gmail.com', '0xFd42cEeFAcD2Eb3728EF8bbDF9050BF6a5f392f9', 1, 19),
(23, '2022-11-01 06:30:02', '2022-11-02 14:14:17', '2022-11-01', 200, 'Lucy Patrick', 'Lucy Patrick', 'patrickluc61@gmail.com', 'BTC', 1, 25),
(24, '2022-11-02 07:12:01', '2022-11-02 07:15:11', '2022-11-02', 300, 'BTC', 'Bruel Hannah', 'robihannah33@gmail.com', 'BTC', 1, 24),
(25, '2022-11-02 07:18:15', '2022-11-02 07:19:46', '2022-11-02', 174, 'BTC', 'Seth Smallville', 'smallvillestudios10@gmail.com', 'BTC', 1, 26),
(26, '2022-11-03 15:48:33', '2022-11-12 20:38:25', '2022-11-03', 80, 'usdt', 'Lucy Patrick', 'patrickluc61@gmail.com', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 1, 25),
(27, '2022-11-03 15:49:12', '2022-11-12 20:38:17', '2022-11-03', 80, 'usdt', 'Lucy Patrick', 'patrickluc61@gmail.com', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 1, 25),
(77, '2022-12-15 05:49:05', '2022-12-15 05:49:53', '2022-12-15', 100, 'usdt', 'Ashu HZ', 'ashukhan0140@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 70),
(29, '2022-11-10 08:44:48', '2022-11-10 08:48:48', '2022-11-10', 5700, 'usdt', 'baatherine', 'ofomaeze556677@gmail.com', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 1, 31),
(30, '2022-11-10 09:11:20', '2022-11-10 09:14:17', '2022-11-10', 100, 'xrp', 'Natalie', 'info@futuresoptimax.com', 'rsP2HJoA9ji925W4Q9xDxnqh37j47oAd7H', 1, 32),
(31, '2022-11-10 10:36:52', '2022-11-10 10:42:03', '2022-11-10', 50000, 'eth', 'Jason gray', 'ugwuanyieze23@gmail.com', '0xFd42cEeFAcD2Eb3728EF8bbDF9050BF6a5f392f9', 1, 33),
(32, '2022-11-10 11:12:39', '2022-11-10 11:12:47', '2022-11-10', 5, 'BTC', 'Seidu', 'Seidulhassan928@gmai.com', 'BTC', 1, 8),
(33, '2022-11-10 12:56:18', '2022-11-10 20:26:54', '2022-11-10', 100, 'usdt', 'Bruel nelson', 'supfuturesoptimax@gmail.com', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 1, 19),
(34, '2022-11-10 19:40:08', '2022-11-10 20:26:42', '2022-11-10', 6477, 'eth', 'Bruel nelson', 'supfuturesoptimax@gmail.com', '0xFd42cEeFAcD2Eb3728EF8bbDF9050BF6a5f392f9', 1, 19),
(76, '2022-12-13 22:36:45', '2023-01-22 10:55:28', '2022-12-13', 100, 'xrp', 'Pedersen Benart', 'supfuturesoptimax@gmail.com', 'rEJTVnxf7zBP36fDoE8xLatFjXDawYE3yb', 1, 19),
(37, '2022-11-11 19:37:11', '2022-11-11 19:37:59', '2022-11-11', 10000, 'btc_address', 'Bruel Hannah', 'robihannah33@gmail.com', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 1, 24),
(75, '2022-12-13 22:36:23', '2023-01-22 10:55:38', '2022-12-13', 100, 'usdt', 'Pedersen Benart', 'supfuturesoptimax@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 19),
(39, '2022-11-13 21:28:20', '2022-11-17 17:30:41', '2022-11-13', 11740, 'btc_address', 'Pedersen Benart', 'supfuturesoptimax@gmail.com', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 1, 19),
(40, '2022-11-13 21:30:47', '2022-11-18 03:08:56', '2022-11-13', 64, 'btc_address', 'Jason gray', 'ugwuanyieze23@gmail.com', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 1, 33),
(74, '2022-12-13 22:35:56', '2023-04-15 13:34:41', '2022-12-13', 100, 'eth', 'Pedersen Benart', 'supfuturesoptimax@gmail.com', '0x6578e8c943F457ac4E3A6fa63f32d3CB9aAE54cC', 1, 19),
(42, '2022-11-16 13:47:30', '2022-11-17 17:06:22', '2022-11-16', 600, 'usdt', 'Pedersen Benart', 'supfuturesoptimax@gmail.com', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 1, 19),
(43, '2022-11-17 17:23:09', '2022-11-17 17:30:26', '2022-11-17', 80000, 'btc_address', 'James kana', 'ugwuanyieze23@gmail.com', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 1, 33),
(44, '2022-11-17 22:03:28', '2022-11-18 03:08:35', '2022-11-17', 50000, 'usdt', 'James kana', 'ugwuanyieze23@gmail.com', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 1, 33),
(45, '2022-11-18 03:07:10', '2022-11-18 03:08:46', '2022-11-18', 10000, 'usdt', 'George Helma', 'georgehelma6@gmail.com', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 1, 44),
(46, '2022-11-18 04:04:21', '2022-11-18 17:18:50', '2022-11-18', 3000, 'xrp', 'Lucy Patrick', 'patrickluc61@gmail.com', 'rsP2HJoA9ji925W4Q9xDxnqh37j47oAd7H', 1, 25),
(47, '2022-11-18 22:33:49', '2022-11-22 19:32:31', '2022-11-18', 500, 'usdt', 'Benjamin', 'benizu86@gmail.com', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 1, 7),
(48, '2022-11-18 22:33:51', '2022-11-22 19:32:23', '2022-11-18', 500, 'usdt', 'Benjamin', 'benizu86@gmail.com', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 1, 7),
(49, '2022-11-19 18:17:10', '2022-11-19 19:37:10', '2022-11-19', 1000, 'usdt', 'Gary Author', 'garryauthor3@gmail.com', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 1, 46),
(50, '2022-11-20 13:54:00', '2022-11-20 13:59:15', '2022-11-20', 25000, 'usdt', 'Alina', 'alinaelsa28@gmail.com', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 1, 47),
(51, '2022-11-20 16:27:58', '2022-11-22 19:32:13', '2022-11-20', 600, 'btc_address', 'Pedersen Benart', 'supfuturesoptimax@gmail.com', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 1, 19),
(73, '2022-12-13 22:35:35', '2023-01-22 10:55:49', '2022-12-13', 100, 'btc_address', 'Pedersen Benart', 'supfuturesoptimax@gmail.com', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', 1, 19),
(53, '2022-11-21 16:39:45', '2022-11-21 19:59:46', '2022-11-21', 300, 'btc_address', 'Pedersen Benart', 'supfuturesoptimax@gmail.com', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', 1, 19),
(54, '2022-11-21 19:58:27', '2022-11-21 19:59:30', '2022-11-21', 50000, 'eth', 'Lucy Patrick', 'patrickluc61@gmail.com', '0x6578e8c943F457ac4E3A6fa63f32d3CB9aAE54cC', 1, 25),
(55, '2022-11-23 13:04:03', '2022-12-11 11:20:30', '2022-11-23', 5000, 'btc_address', 'Alina', 'alinaelsa28@gmail.com', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', 1, 47),
(56, '2022-11-24 00:07:00', '2022-11-24 00:08:48', '2022-11-24', 15, 'btc_address', 'Sajith NS', 'sajithns210@gmail.com', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', 1, 43),
(87, '2022-12-23 05:31:44', '2022-12-23 05:46:43', '2022-12-23', 20, 'usdt', 'Sajith NS', 'sajithns210@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 43),
(59, '2022-11-24 05:50:03', '2022-11-24 05:52:20', '2022-11-24', 1000, 'xrp', 'Gary Author', 'garryauthor3@gmail.com', 'rEJTVnxf7zBP36fDoE8xLatFjXDawYE3yb', 1, 46),
(60, '2022-11-28 03:47:43', '2022-12-11 11:20:47', '2022-11-28', 300, 'btc_address', 'Benjamin', 'benizu86@gmail.com', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', 1, 7),
(61, '2022-11-28 14:25:26', '2022-11-29 07:51:15', '2022-11-28', 500, 'usdt', 'Bruel Hannah', 'robihannah33@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 24),
(140, '2023-02-03 08:33:42', '2023-02-03 08:41:37', '2023-02-03', 200, 'usdt', 'Arun Kumar Ray', 'rayarun786@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 110),
(169, '2023-02-11 11:37:56', '2023-02-11 11:43:55', '2023-02-11', 140, 'usdt', 'Dinesh Prasad', 'dinesh02263@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 114),
(167, '2023-02-07 06:28:50', '2023-02-07 06:57:34', '2023-02-07', 22, 'usdt', 'Silambarasan', 'gcscilambu@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 75),
(65, '2022-12-06 14:28:30', '2022-12-11 11:21:21', '2022-12-06', 1000, 'btc_address', 'Kokul Innocent', 'supfuturesoptimax@gmail.com', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', 1, 19),
(94, '2022-12-28 15:27:50', '2023-02-07 06:55:42', '2022-12-28', 300, 'eth', 'Hannah$$%', 'benizu86@gmail.com', '0x6578e8c943F457ac4E3A6fa63f32d3CB9aAE54cC', 1, 7),
(95, '2022-12-28 15:39:07', '2023-04-15 13:34:55', '2022-12-28', 300, 'usdt', 'Hannah$$%', 'benizu86@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 7),
(68, '2022-12-12 14:47:24', '2022-12-12 14:50:16', '2022-12-12', 2000, 'btc_address', 'Emilia', 'EmiliaMila087@gmail.com', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', 1, 65),
(69, '2022-12-12 14:48:08', '2023-02-27 08:26:33', '2022-12-12', 2000, 'btc_address', 'Emilia', 'EmiliaMila087@gmail.com', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', 1, 65),
(70, '2022-12-12 18:35:45', '2023-02-27 08:26:43', '2022-12-12', 500, 'usdt', 'Khan', 'akkhan57545@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 66),
(71, '2022-12-12 18:45:56', '2022-12-12 19:15:33', '2022-12-12', 500, 'usdt', 'Khan', 'akkhan57545@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 66),
(72, '2022-12-13 19:55:39', '2022-12-13 19:57:47', '2022-12-13', 8000, 'btc_address', 'Ailly', 'aillybam28@gmail.com', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', 1, 48),
(82, '2022-12-16 08:01:32', '2022-12-16 08:02:44', '2022-12-16', 100, 'usdt', 'Ashu HZ', 'ashukhan0140@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 70),
(79, '2022-12-15 16:31:44', '2022-12-15 16:46:09', '2022-12-15', 50, 'usdt', 'ouakrim abdellaziz', 'amkss1984@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 42),
(80, '2022-12-15 16:44:46', '2022-12-17 09:55:38', '2022-12-15', 500, 'btc_address', 'Alina', 'alinaelsa28@gmail.com', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', 1, 47),
(81, '2022-12-15 16:45:02', '2022-12-17 09:55:25', '2022-12-15', 2800, 'usdt', 'Alina', 'alinaelsa28@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 47),
(83, '2022-12-17 09:54:40', '2022-12-17 09:55:02', '2022-12-17', 5000, 'btc_address', 'Emilia', 'EmiliaMila087@gmail.com', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', 1, 65),
(84, '2022-12-17 09:58:34', '2022-12-17 10:00:01', '2022-12-17', 100, 'eth', 'Ashu HZ', 'ashukhan0140@gmail.com', '0x6578e8c943F457ac4E3A6fa63f32d3CB9aAE54cC', 1, 70),
(85, '2022-12-21 12:37:41', '2023-01-22 10:56:18', '2022-12-21', 800, 'usdt', 'Emilia', 'EmiliaMila087@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 65),
(86, '2022-12-21 18:21:47', '2022-12-21 18:30:19', '2022-12-21', 50, 'usdt', 'ouakrim abdellaziz', 'amkss1984@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 42),
(97, '2022-12-29 05:21:01', '2022-12-29 05:21:22', '2022-12-28', 8, 'Usdt', 'Sajith NS', 'sajithns210@gmail.com', 'Usdt', 1, 43),
(99, '2022-12-31 04:41:58', '2022-12-31 04:42:14', '2022-12-30', 8, 'Usdt', 'Sajith NS', 'sajithns210@gmail.com', 'Usdt', 1, 43),
(168, '2023-02-08 19:59:57', '2023-02-09 05:57:52', '2023-02-08', 500, 'usdt', 'LucBenart', 'benarlucy@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 20),
(93, '2022-12-28 08:56:10', '2022-12-28 10:10:59', '2022-12-28', 10, 'usdt', 'Sajith NS', 'sajithns210@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 43),
(137, '2023-02-02 10:13:09', '2023-02-02 10:17:49', '2023-02-02', 180, 'usdt', 'Ravi kumar', 'ravi170587@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 86),
(186, '2023-03-09 05:50:03', '2023-03-09 05:55:26', '2023-03-09', 2000, 'usdt', 'Alexander', 'bimeoalexander@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 21),
(136, '2023-02-02 09:53:56', '2023-02-02 10:04:04', '2023-02-02', 320, 'usdt', 'Ravi kumar', 'ravi170587@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 86),
(299, '2023-05-25 04:53:41', '2023-05-25 08:10:07', '2023-05-25', 500, 'usdt', 'Rajesh', 'EmiliaMila087@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 65),
(330, '2023-06-04 11:04:52', '2023-06-15 10:40:22', '2023-06-04', 2000, 'usdt', 'Tanya', 'tanya224100@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 156),
(133, '2023-01-28 06:54:47', '2023-01-28 06:55:30', '2023-01-28', 10000, 'usdt', 'Leakena', 'leakenaachariya@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 106),
(331, '2023-06-04 11:24:12', '2023-06-15 10:40:17', '2023-06-04', 800, 'usdt', 'Emilia', 'EmiliaMila087@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 65),
(123, '2023-01-14 07:05:58', '2023-01-14 07:10:46', '2023-01-14', 10000, 'btc_address', 'James', 'jamesco7707@gmail.com', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', 1, 87),
(122, '2023-01-13 13:57:57', '2023-01-13 14:12:08', '2023-01-13', 30, 'usdt', 'ouakrim abdelaziz', 'azizjetli85@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 42),
(125, '2023-01-19 13:57:13', '2023-01-22 10:56:00', '2023-01-19', 10000, 'btc_address', 'James', 'jamesco7707@gmail.com', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', 1, 87),
(128, '2023-01-22 10:54:35', '2023-01-22 10:56:08', '2023-01-22', 800, 'eth', 'Han bou', 'hanhbou@gmail.com', '0x6578e8c943F457ac4E3A6fa63f32d3CB9aAE54cC', 1, 98),
(127, '2023-01-22 05:08:14', '2023-01-22 05:11:46', '2023-01-22', 22, 'usdt', 'Sajith NS', 'sajithns210@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 43),
(129, '2023-01-22 11:04:57', '2023-01-22 11:32:01', '2023-01-22', 50, 'usdt', 'Ravi kumar', 'ravi170587@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 86),
(130, '2023-01-22 11:05:20', '2023-01-22 11:19:54', '2023-01-22', 50, 'usdt', 'Ravi kumar', 'ravi170587@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 86),
(132, '2023-01-22 12:59:20', '2023-01-22 13:03:14', '2023-01-22', 22, 'usdt', 'Sajith NS', 'sajithns210@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 43),
(117, '2023-01-02 05:50:29', '2023-01-02 05:51:11', '2023-01-02', 100, 'Usdt', 'ouakrim abdelaziz', 'azizjetli85@gmail.com', 'Usdt', 1, 42),
(307, '2023-05-28 13:09:51', '2023-05-28 13:10:00', '2023-05-28', 180, 'Usdt', 'Carlyster Nonye Ijere', 'nonyeijere@gmail.com', 'Usdt', 1, 188),
(317, '2023-05-31 07:50:14', '2023-05-31 07:58:39', '2023-05-31', 83, 'usdt', 'Ravi Chaudhary', 'ravichaudhareee223@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 180),
(178, '2023-03-02 23:19:30', '2023-03-02 23:19:30', '2023-03-03', 9, 'usdt', 'Sajith NS', 'sajithns210@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 0, 43),
(179, '2023-03-04 17:38:33', '2023-03-04 17:38:33', '2023-03-04', 9, 'usdt', 'Sajith NS', 'sajithns210@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 0, 43),
(146, '2023-02-04 05:15:22', '2023-02-27 08:28:55', '2023-02-04', 400, 'usdt', 'Emilia', 'EmiliaMila087@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 65),
(182, '2023-03-07 09:50:56', '2023-03-07 09:51:45', '2023-03-07', 20000, 'usdt', 'Hannah$$%', 'benizu86@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 7),
(148, '2023-02-04 14:44:29', '2023-02-04 14:52:51', '2023-02-04', 200, 'usdt', 'Dinesh Prasad', 'dinesh02263@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 114),
(170, '2023-02-11 11:53:17', '2023-02-11 11:56:37', '2023-02-11', 360, 'usdt', 'Dinesh Prasad', 'dinesh02263@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 114),
(315, '2023-05-31 07:28:25', '2023-05-31 07:39:02', '2023-05-31', 304, 'usdt', 'Ravi Chaudhary', 'ravichaudhareee223@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 180),
(304, '2023-05-28 04:07:04', '2023-05-28 14:35:16', '2023-05-28', 2000, 'usdt', 'Omar', 'EmiliaMila087@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 65),
(305, '2023-05-28 05:23:29', '2023-05-28 05:38:26', '2023-05-28', 287, 'usdt', 'Carlyster Nonye Ijere', 'nonyeijere@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 188),
(174, '2023-02-20 08:32:47', '2023-02-20 08:37:08', '2023-02-20', 140, 'usdt', 'Arun Kumar Ray', 'rayarun786@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 110),
(175, '2023-02-27 08:24:08', '2023-02-27 08:27:04', '2023-02-27', 8000, 'btc_address', 'Lisa', 'alinaelsa28@gmail.com', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', 1, 47),
(187, '2023-03-09 05:52:16', '2023-03-09 05:55:16', '2023-03-09', 10000, 'usdt', 'Patrick Gabriel', 'iwal2874@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 18),
(157, '2023-02-06 14:28:17', '2023-02-06 14:29:00', '2023-02-06', 21, 'usdt', 'Sajith NS', 'sajithns210@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 43),
(188, '2023-03-14 09:29:56', '2023-03-14 09:29:56', '2023-03-14', 110, 'usdt', 'Sajith NS', 'sajithns210@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 0, 43),
(194, '2023-03-19 08:32:42', '2023-03-19 08:32:42', '2023-03-19', 31, 'usdt', 'Sajith NS', 'sajithns210@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 0, 43),
(193, '2023-03-18 05:44:21', '2023-03-18 05:44:21', '2023-03-18', 55, 'usdt', 'Sajith NS', 'sajithns210@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 0, 43),
(191, '2023-03-17 15:37:32', '2023-03-17 15:37:32', '2023-03-17', 15, 'usdt', 'Sajith NS', 'sajithns210@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 0, 43),
(192, '2023-03-17 17:41:45', '2023-03-17 17:42:43', '2023-03-18', 100, 'Usdt', 'Sher bahadur', 'mrsher2000@gmail.com', 'Usdt', 1, 135),
(195, '2023-03-19 08:32:51', '2023-03-19 08:32:51', '2023-03-19', 31, 'usdt', 'Sajith NS', 'sajithns210@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 0, 43),
(165, '2023-02-06 17:03:24', '2023-02-06 17:11:28', '2023-02-06', 50, 'usdt', 'Silambarasan', 'gcscilambu@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 75),
(166, '2023-02-06 18:05:47', '2023-02-06 19:27:32', '2023-02-07', 28, 'Usdt', 'Silambarasan', 'gcscilambu@gmail.com', 'Usdt', 1, 75),
(196, '2023-03-19 16:28:24', '2023-03-19 16:28:24', '2023-03-19', 24, 'usdt', 'Sajith NS', 'sajithns210@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 0, 43),
(320, '2023-05-31 22:59:49', '2023-05-31 23:02:43', '2023-05-31', 500, 'usdt', 'Herbert', 'herbermoe556677@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 203),
(332, '2023-06-04 11:24:36', '2023-06-07 10:31:07', '2023-06-04', 800, 'usdt', 'Emilia', 'EmiliaMila087@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 65),
(199, '2023-03-29 14:38:40', '2023-03-29 14:55:49', '2023-03-29', 320, 'usdt', 'Sher bahadur', 'mrsher2000@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 135),
(323, '2023-06-01 02:18:19', '2023-06-01 07:04:52', '2023-06-01', 500, 'usdt', 'Emilia', 'EmiliaMila087@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 65),
(316, '2023-05-31 07:40:20', '2023-05-31 07:43:48', '2023-05-31', 600, 'usdt', 'Khan', 'akkhan57545@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 66),
(311, '2023-05-29 10:18:30', '2023-05-29 10:25:33', '2023-05-29', 50000, 'usdt', 'Gabriel Thelanz', 'thelanzgabriel@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 266),
(204, '2023-04-15 13:33:52', '2023-04-15 13:35:29', '2023-04-15', 7000, 'usdt', 'CUMA', 'robihannah33@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 24),
(205, '2023-04-15 18:09:58', '2023-04-15 18:11:34', '2023-04-15', 18000, 'usdt', 'Ashu HZ', 'ashukhan0140@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 70),
(206, '2023-04-18 23:04:36', '2023-04-19 06:39:00', '2023-04-19', 100, 'usdt', 'Tanya', 'tanya224100@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 156),
(207, '2023-04-20 06:37:33', '2023-04-20 06:39:06', '2023-04-20', 15000, 'btc_address', 'Natasha', 'hanhbou@gmail.com', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', 1, 98),
(208, '2023-04-20 13:21:04', '2023-04-20 13:26:27', '2023-04-20', 2000, 'usdt', 'Gary Author', 'garryauthor3@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 46),
(209, '2023-04-20 13:25:28', '2023-04-20 13:26:18', '2023-04-20', 20000, 'usdt', 'Gary Author', 'garryauthor3@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 46),
(210, '2023-04-24 12:37:11', '2023-04-24 12:44:09', '2023-04-24', 320, 'usdt', 'Tanya', 'tanya224100@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 156),
(211, '2023-04-25 15:54:10', '2023-04-25 15:55:19', '2023-04-25', 80000, 'btc_address', 'Sera', 'EmiliaMila087@gmail.com', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', 1, 65),
(284, '2023-05-22 13:42:31', '2023-05-22 14:05:24', '2023-05-22', 140, 'usdt', 'Aloysius EZE', 'ezealoy04@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 205),
(215, '2023-05-01 15:56:31', '2023-05-01 16:20:09', '2023-05-01', 100, 'btc_address', 'Charles Boateng', 'boatengcharles51@yahoo.com', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', 1, 164),
(217, '2023-05-02 15:53:30', '2023-05-02 15:55:26', '2023-05-02', 8000, 'usdt', 'Katarina', 'k9565652@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 166),
(248, '2023-05-15 12:15:12', '2023-05-15 12:41:38', '2023-05-15', 200, 'usdt', 'Aloysius EZE', 'ezealoy04@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 205),
(260, '2023-05-20 21:36:00', '2023-08-09 15:21:11', '2023-05-13', 320, 'Usdt', 'Silambarasan', 'gcscilambu@gmail.com', 'Usdt', 1, 75),
(325, '2023-06-01 15:36:26', '2023-06-01 15:40:18', '2023-06-01', 100, 'usdt', 'Radheshyam Dahit', 'radheshyamdahit@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 248),
(221, '2023-05-06 08:13:30', '2023-05-06 08:16:25', '2023-05-06', 30000, 'usdt', 'Natasha', 'hanhbou@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 98),
(222, '2023-05-06 12:14:30', '2023-05-06 12:19:48', '2023-05-06', 100000, 'usdt', 'Khan', 'akkhan57545@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 66),
(223, '2023-05-06 12:15:12', '2023-05-06 12:19:35', '2023-05-06', 2400, 'usdt', 'Khan', 'akkhan57545@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 66),
(250, '2023-05-16 16:32:17', '2023-05-16 17:24:04', '2023-05-16', 130, 'usdt', 'Ozioko Michael', 'oziokomichael0@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 196),
(225, '2023-05-06 16:21:59', '2023-05-06 16:28:05', '2023-05-06', 1600, 'usdt', 'Ailly', 'aillybam28@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 48),
(255, '2023-05-19 13:46:18', '2023-05-19 13:49:29', '2023-05-19', 320, 'eth', 'Benjamin', 'bj1542744@gmail.com', '0x6578e8c943F457ac4E3A6fa63f32d3CB9aAE54cC', 1, 190),
(256, '2023-05-19 14:18:20', '2023-05-19 14:18:55', '2023-05-19', 100, 'usdt', 'Benjamin', 'bj1542744@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 190),
(229, '2023-05-10 10:14:35', '2023-05-10 10:16:07', '2023-05-10', 100000, 'usdt', 'baatherine', 'EmiliaMila087@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 65),
(230, '2023-05-12 14:05:19', '2023-05-15 07:05:39', '2023-05-12', 5000, 'usdt', 'Khan', 'akkhan57545@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 66),
(254, '2023-05-17 18:15:26', '2023-05-17 18:20:57', '2023-05-17', 125, 'usdt', 'ORJI CYRIL', 'cyrilorjialisi@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 211),
(247, '2023-05-15 07:03:18', '2023-05-15 07:05:05', '2023-05-15', 100, 'usdt', 'Herbert', 'herbermoe556677@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 203),
(281, '2023-05-22 11:02:25', '2023-05-22 11:08:19', '2023-05-22', 191, 'usdt', 'Ozioko Michael', 'oziokomichael0@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 196),
(280, '2023-05-22 10:31:07', '2023-05-22 10:42:50', '2023-05-22', 78, 'usdt', 'Ozioko Michael', 'oziokomichael0@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 196),
(235, '2023-05-14 09:36:58', '2023-05-14 09:51:23', '2023-05-14', 103, 'usdt', 'Ravi Chaudhary', 'ravichaudhareee223@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 180),
(236, '2023-05-14 09:58:11', '2023-05-14 10:18:44', '2023-05-14', 100, 'usdt', 'Alabi Fatai Temitope', 'temifatty@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 186),
(237, '2023-05-14 10:19:00', '2023-05-14 10:20:43', '2023-05-14', 500, 'usdt', 'Benjamin', 'Benjaminleo956@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 187),
(238, '2023-05-14 10:57:38', '2023-05-14 11:05:14', '2023-05-14', 100, 'usdt', 'Benjamin', 'bj1542744@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 190),
(286, '2023-05-22 21:26:53', '2023-05-22 23:00:49', '2023-05-22', 480, 'usdt', 'Aloy Eze', 'ezealoy4@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 246),
(240, '2023-05-14 16:03:42', '2023-05-14 17:23:38', '2023-05-14', 50, 'usdt', 'Eze Grace Chinasa', 'ezegracy1984@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 194),
(241, '2023-05-14 16:10:45', '2023-05-14 17:27:16', '2023-05-14', 100, 'usdt', 'Carlyster Nonye Ijere', 'nonyeijere@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 188),
(285, '2023-05-22 14:21:10', '2023-05-22 14:26:52', '2023-05-22', 360, 'usdt', 'Aloysius EZE', 'ezealoy04@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 205),
(243, '2023-05-14 17:40:00', '2023-05-14 18:03:26', '2023-05-14', 105, 'usdt', 'Ozioko Michael', 'oziokomichael0@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 196),
(244, '2023-05-14 19:57:25', '2023-05-14 22:17:52', '2023-05-14', 100, 'usdt', 'Eunice Onah', 'onaheunice2012@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 200),
(245, '2023-05-14 22:04:51', '2023-05-14 22:18:08', '2023-05-14', 50, 'usdt', 'Eze Grace Chinasa', 'ezegracy1984@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 194),
(246, '2023-05-15 06:12:13', '2023-05-15 07:06:27', '2023-05-15', 1000, 'usdt', 'Deepak Kumar', 'izugod07@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 178),
(361, '2023-06-25 02:27:25', '2023-06-28 16:09:06', '2023-06-25', 7000, 'usdt', 'Rajesh', 'EmiliaMila087@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 65),
(337, '2023-06-07 06:24:50', '2023-06-07 10:25:12', '2023-06-07', 500000, 'usdt', 'Emilia', 'EmiliaMila087@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 65),
(336, '2023-06-07 06:24:03', '2023-06-07 10:25:03', '2023-06-07', 1000000, 'usdt', 'Emilia', 'EmiliaMila087@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 65),
(358, '2023-06-23 09:37:11', '2023-06-23 09:46:53', '2023-06-23', 500, 'usdt', 'ADAM KOMIVI AUGUSTIN', 'augusti26n@yahoo.fr', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 318),
(360, '2023-06-24 11:24:20', '2023-06-24 11:30:06', '2023-06-24', 1000, 'usdt', 'ADAM KOMIVI AUGUSTIN', 'augusti26n@yahoo.fr', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 318),
(342, '2023-06-12 20:21:59', '2023-06-12 20:45:51', '2023-06-12', 20, 'usdt', 'Aliyu Ibrahim chigari', 'Ahleeshy@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 309),
(381, '2023-06-29 10:18:10', '2023-06-29 10:46:21', '2023-06-29', 20, 'usdt', 'Bright', 'sirraybright4@yahoo.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 254),
(384, '2023-06-30 13:03:00', '2023-06-30 13:09:01', '2023-06-30', 300, 'usdt', 'ADAM KOMIVI AUGUSTIN', 'augusti26n@yahoo.fr', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 318),
(383, '2023-06-29 16:59:52', '2023-06-29 19:51:09', '2023-06-29', 10, 'usdt', 'Bright', 'sirraybright4@yahoo.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 254),
(441, '2023-08-27 19:16:48', '2023-08-27 19:18:51', '2023-08-27', 100, 'usdt', 'Annabella', 'abe56437743@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 447),
(435, '2023-08-25 12:46:13', '2023-08-27 12:54:40', '2023-08-25', 1000, 'usdt', 'Khan', 'akkhan57545@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 66),
(388, '2023-07-01 19:58:56', '2023-07-01 20:03:26', '2023-07-01', 7000, 'usdt', 'Emilia', 'EmiliaMila087@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 65),
(380, '2023-06-28 04:21:54', '2023-06-28 08:34:47', '2023-06-28', 5000, 'usdt', 'Emilia', 'EmiliaMila087@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 65),
(372, '2023-06-26 13:33:12', '2023-06-26 13:34:04', '2023-06-26', 6600, 'usdt', 'Mr Jeff', 'mrjeff140314@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 399),
(394, '2023-07-05 15:12:30', '2023-07-05 15:17:23', '2023-07-05', 500, 'usdt', 'ADAM KOMIVI AUGUSTIN', 'augusti26n@yahoo.fr', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 318),
(396, '2023-07-11 12:19:33', '2023-07-11 13:33:30', '2023-07-11', 300, 'usdt', 'ADAM KOMIVI AUGUSTIN', 'augusti26n@yahoo.fr', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 318),
(398, '2023-07-18 04:33:50', '2023-07-21 04:52:56', '2023-07-18', 100, 'usdt', 'Ekezie Afam', 'afamatris@gmail.com', 'TPq8Z183sC91EUrmr9vWakt43DkNHwpVC8', 1, 414),
(399, '2023-07-18 08:01:07', '2023-07-18 08:41:16', '2023-07-18', 900, 'usdt', 'ADAM KOMIVI AUGUSTIN', 'augusti26n@yahoo.fr', 'TPq8Z183sC91EUrmr9vWakt43DkNHwpVC8', 1, 318),
(407, '2023-07-20 06:03:50', '2023-07-20 06:22:45', '2023-07-20', 20, 'usdt', 'Bright', 'sirraybright4@yahoo.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 254),
(414, '2023-07-27 12:15:30', '2023-07-27 13:11:32', '2023-07-27', 300, 'usdt', 'Yvan', 'yvanmadje@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 418),
(412, '2023-07-20 17:54:51', '2023-07-21 04:52:19', '2023-07-20', 100, 'usdt', 'Ekezie Afam Chibuzo', 'ekeziebuuzor@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 415),
(420, '2023-07-30 10:19:22', '2023-07-30 14:32:29', '2023-07-30', 81, 'usdt', 'Aliyu Ibrahim chigari', 'Ahleeshy@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 309),
(427, '2023-08-17 11:42:25', '2023-08-27 12:54:48', '2023-08-17', 500, 'usdt', 'Emilia', 'EmiliaMila087@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 65),
(428, '2023-08-22 08:06:17', '2023-08-27 12:54:35', '2023-08-22', 2000, 'usdt', 'Tanya', 'tanya224100@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 156),
(429, '2023-08-23 11:16:34', '2023-08-23 11:20:14', '2023-08-23', 1000, 'usdt', 'Benjamin', 'Benjaminleo956@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 187),
(481, '2023-09-02 08:52:09', '2023-09-02 08:57:55', '2023-09-02', 5000, 'usdt', 'Isabella', 'Isabellaaha1994@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 474),
(529, '2023-09-15 11:08:01', '2023-09-15 11:35:06', '2023-09-15', 321, 'usdt', 'Ya\'u Haruna Umar', 'zakariyyaharunaumar@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 468),
(434, '2023-08-24 15:43:40', '2023-08-24 15:51:39', '2023-08-24', 100, 'usdt', 'Senthil Kumar', 'pvcmetaindia@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 441),
(440, '2023-08-27 11:51:46', '2023-08-27 12:54:27', '2023-08-27', 1500, 'usdt', 'Michael', 'alinaelsa28@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 47),
(523, '2023-09-10 08:20:02', '2023-09-10 08:20:27', '2023-09-10', 100, 'Usdt', 'Mohammed Abdullahi Ndirmbita', 'babane996@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 502),
(475, '2023-09-01 08:58:59', '2023-09-01 09:26:36', '2023-09-01', 1000, 'usdt', 'Suhani', 'izugod07@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 178),
(478, '2023-09-01 17:45:50', '2023-09-01 17:58:34', '2023-09-01', 100, 'usdt', 'Elshan', 'slavabelous73@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 466),
(452, '2023-08-30 14:42:00', '2023-08-30 14:42:15', '2023-08-30', 92, 'Usdt', 'Michael', 'shodolamichael200@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 456),
(459, '2023-08-31 13:24:06', '2023-08-31 13:27:01', '2023-08-31', 86, 'usdt', 'MOHD', 'meelamahamood@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 451),
(477, '2023-09-01 12:23:35', '2023-09-01 12:24:12', '2023-09-01', 6, 'Usdt', 'Nam', 'vanthongd565@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 469),
(474, '2023-09-01 08:45:01', '2023-09-01 08:57:51', '2023-09-01', 10000, 'usdt', 'Suhani', 'izugod07@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 178),
(500, '2023-09-05 13:18:23', '2023-09-05 13:19:43', '2023-09-05', 200, 'usdt', 'Jenilee', 'JenileeElizabeth0@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 483),
(493, '2023-09-03 14:06:25', '2023-09-03 14:59:04', '2023-09-03', 200, 'usdt', 'Nam', 'vanthongd565@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 469),
(519, '2023-09-10 00:11:28', '2023-09-10 00:18:43', '2023-09-10', 500, 'usdt', 'Barai', 'baraisuraji99@gmali.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 497),
(524, '2023-09-10 10:48:25', '2023-09-10 10:57:43', '2023-09-10', 100, 'usdt', 'Ya\'u Haruna Umar', 'zakariyyaharunaumar@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 468),
(497, '2023-09-04 05:33:00', '2023-09-04 06:45:12', '2023-09-04', 100, 'usdt', 'tranhoang76hb', 'Tranhoang76hb@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 470),
(528, '2023-09-14 13:10:11', '2023-09-14 13:14:20', '2023-09-14', 160, 'usdt', 'tranhoang76hb', 'Tranhoang76hb@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 470),
(515, '2023-09-09 04:07:55', '2023-09-09 04:10:13', '2023-09-09', 100, 'usdt', 'Nam', 'vanthongd565@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 469),
(514, '2023-09-09 03:49:04', '2023-09-09 03:53:25', '2023-09-09', 126, 'usdt', 'Nam', 'vanthongd565@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 469),
(527, '2023-09-14 12:22:45', '2023-09-14 12:30:19', '2023-09-14', 325, 'usdt', 'tranhoang76hb', 'Tranhoang76hb@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 470),
(530, '2023-09-15 12:45:35', '2023-09-15 12:49:41', '2023-09-15', 500, 'usdt', 'Ya\'u Haruna Umar', 'zakariyyaharunaumar@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 468),
(548, '2023-09-21 20:52:23', '2023-09-21 20:54:40', '2023-09-21', 500, 'usdt', 'Jenilee', 'JenileeElizabeth0@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 483),
(539, '2023-09-19 10:30:58', '2023-09-19 10:38:48', '2023-09-19', 2000, 'usdt', 'Hyejinyoom', 'Hyejinyoom@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 510),
(538, '2023-09-18 14:08:35', '2023-09-18 14:11:01', '2023-09-18', 100, 'usdt', 'Arun Kumar', 'iaruna007@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 523),
(554, '2023-09-24 09:07:20', '2023-09-24 09:15:47', '2023-09-24', 100, 'usdt', 'Md.Arman Hossain', 'armanraju780@gmail.com', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 1, 535);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `totalusers` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `totaldeposit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `totalwithdrawn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `started` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `onlinevisitors` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `balance` int NOT NULL DEFAULT '0',
  `totaldepost` int NOT NULL DEFAULT '0',
  `deposit_pending` int NOT NULL DEFAULT '0',
  `pendingwithdrawal` int NOT NULL DEFAULT '0',
  `totalwithdrawal` int NOT NULL DEFAULT '0',
  `currentinvestment` int NOT NULL DEFAULT '0',
  `totalbalance` int NOT NULL DEFAULT '0',
  `currentprofit` int NOT NULL DEFAULT '0',
  `userid` int NOT NULL,
  `totalprofit` int NOT NULL DEFAULT '0',
  `transfer` int NOT NULL DEFAULT '0',
  `bonus` int NOT NULL DEFAULT '0',
  `withdrawal_minimum` int NOT NULL DEFAULT '0',
  `withdrawal_maximum` int NOT NULL DEFAULT '9999999'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `funds`
--

INSERT INTO `funds` (`id`, `created_at`, `updated_at`, `balance`, `totaldepost`, `deposit_pending`, `pendingwithdrawal`, `totalwithdrawal`, `currentinvestment`, `totalbalance`, `currentprofit`, `userid`, `totalprofit`, `transfer`, `bonus`, `withdrawal_minimum`, `withdrawal_maximum`) VALUES
(1, '2022-10-10 07:40:00', '2022-10-10 07:40:00', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 9999999),
(2, '2022-10-10 08:27:22', '2022-10-10 08:27:22', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 9999999),
(3, '2022-10-10 11:38:32', '2023-05-15 09:28:09', 1000, 0, 0, 0, 0, 10000, 0, 10000, 3, 0, 0, 0, 0, 9999999),
(4, '2022-10-11 07:48:35', '2022-10-11 07:48:35', 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 9999999),
(5, '2022-10-13 18:35:21', '2022-10-13 18:35:21', 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 9999999),
(6, '2022-10-14 01:08:57', '2022-11-11 19:31:44', 0, 0, 1040, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 9999999),
(7, '2022-10-14 08:44:35', '2023-09-01 17:56:19', 13479, 32900, 2000, 26791, 26791, 100, 13579, 10, 7, 10, 0, 0, 0, 9999999),
(8, '2022-10-16 23:20:38', '2022-11-10 11:12:47', 5, 5, -5, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 9999999),
(9, '2022-10-16 23:59:32', '2022-10-16 23:59:32', 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 9999999),
(10, '2022-10-23 07:02:49', '2022-10-24 13:31:58', 61000, 61000, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 9999999),
(11, '2022-10-23 07:42:54', '2022-10-23 07:42:54', 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 9999999),
(12, '2022-10-23 10:36:08', '2022-10-23 10:36:08', 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 9999999),
(13, '2022-10-23 13:31:41', '2022-10-24 13:32:37', 40000, 40000, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 9999999),
(14, '2022-10-23 23:07:16', '2022-10-23 23:07:16', 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 9999999),
(15, '2022-10-24 00:09:50', '2022-10-24 00:09:50', 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 9999999),
(16, '2022-10-24 13:07:20', '2022-10-24 22:35:26', 55800, 60000, 0, 4200, 4200, 0, 60000, 0, 16, 0, 0, 0, 0, 9999999),
(17, '2022-10-24 14:06:00', '2023-01-02 05:43:24', 50000, 50000, 0, 0, 0, 0, 50000, 0, 17, 0, 0, 0, 0, 9999999),
(18, '2022-10-24 14:15:04', '2023-05-20 05:55:41', 2287000, 110000, 0, 64000, 64000, 0, 2287000, 0, 18, 0, 0, 0, 0, 9999999),
(19, '2022-10-24 15:45:33', '2023-04-15 13:34:41', 46751, 61217, 0, 15354, 15354, 0, 46351, 2, 19, 0, 1, 300, 0, 9999999),
(20, '2022-10-27 13:36:28', '2023-05-16 17:21:12', 12249, 30500, 0, 24641, 24641, 0, 12249, 0, 20, 0, 0, 0, 0, 9999999),
(21, '2022-10-27 14:22:42', '2023-05-14 17:22:11', 26000, 52000, 0, 53000, 53000, 0, 26000, 0, 21, 0, 0, 0, 0, 9999999),
(22, '2022-10-28 09:15:45', '2022-10-28 09:28:59', 50000, 50000, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 9999999),
(23, '2022-10-29 07:58:18', '2022-10-29 09:05:22', 111000, 120000, 0, 9000, 9000, 0, 111000, 0, 23, 0, 0, 0, 0, 9999999),
(24, '2022-10-29 11:37:47', '2023-04-15 18:08:25', 8120, 17800, -300, 9700, 9700, 0, 8120, 0, 24, 0, 0, 0, 0, 9999999),
(25, '2022-10-29 12:05:02', '2022-12-08 17:00:10', 9013, 53360, -200, 24652, 24652, 20000, 29013, 4200, 25, 4200, 0, 0, 0, 9999999),
(26, '2022-11-01 05:44:37', '2023-02-22 07:53:54', 190, 174, -174, 74, 74, 0, 190, -1, 26, 16, 0, 0, 0, 9999999),
(27, '2022-11-03 01:17:29', '2022-11-03 01:17:29', 0, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 9999999),
(28, '2022-11-03 17:59:12', '2022-11-03 18:14:41', 0, 0, 150, 0, 0, 0, 0, 0, 28, 0, 0, 0, 0, 9999999),
(29, '2022-11-04 06:23:33', '2022-11-04 06:23:33', 0, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 9999999),
(30, '2022-11-09 02:20:30', '2022-11-09 02:20:30', 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 9999999),
(31, '2022-11-10 08:43:00', '2022-11-10 09:55:12', 5700, 5700, 0, 0, 0, 0, 5700, 0, 31, 0, 1, 0, 0, 9999999),
(32, '2022-11-10 09:10:45', '2022-11-21 19:45:25', 0, 100, 0, 0, 0, 100, 100, 6, 32, 6, 0, 0, 0, 9999999),
(33, '2022-11-10 10:19:38', '2022-11-22 10:11:57', 147709, 180064, 0, 32300, 32300, 0, 147709, 0, 33, 0, 1, 0, 0, 9999999),
(34, '2022-11-10 12:27:12', '2022-11-10 12:27:12', 0, 0, 0, 0, 0, 0, 0, 0, 34, 0, 0, 0, 0, 9999999),
(35, '2022-11-10 14:02:44', '2022-11-10 14:02:44', 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 9999999),
(36, '2022-11-10 16:15:35', '2023-05-01 20:40:28', 5, 0, 0, 5, 5, 0, 5, 0, 36, 0, 0, 0, 0, 9999999),
(37, '2022-11-12 14:27:37', '2022-11-12 15:53:47', 50, 0, 0, 50, 50, 0, 50, 0, 37, 0, 0, 0, 0, 9999999),
(38, '2022-11-13 20:04:17', '2022-11-20 18:30:16', 0, 0, 300, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 9999999),
(39, '2022-11-14 09:11:01', '2022-11-14 09:11:01', 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 0, 0, 9999999),
(40, '2022-11-15 10:38:18', '2022-11-15 10:38:18', 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 9999999),
(41, '2022-11-15 10:45:28', '2022-11-15 10:45:28', 0, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 9999999),
(42, '2022-11-15 16:48:03', '2023-02-04 12:34:56', 194, 230, 110, 150, 150, 0, 194, 0, 42, 0, 0, 0, 0, 9999999),
(43, '2022-11-16 09:02:26', '2023-05-05 11:48:26', 621, 126, 396, 157, 157, 0, 621, 0, 43, 0, 0, 0, 0, 9999999),
(44, '2022-11-18 03:06:08', '2022-11-24 05:34:12', 0, 10000, 0, 0, 0, 10000, 10000, 852, 44, 852, 0, 0, 0, 9999999),
(45, '2022-11-18 17:23:48', '2022-11-18 17:23:48', 0, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 9999999),
(46, '2022-11-19 17:53:28', '2023-04-20 13:27:03', 22021, 24000, 0, 2300, 2300, 0, 2321, 9, 46, 0, 0, 0, 0, 9999999),
(47, '2022-11-20 13:52:57', '2023-08-27 14:07:06', 157367, 42800, 0, 41100, 41100, 0, 157367, 3, 47, 0, 0, 300, 0, 9999999),
(48, '2022-11-21 08:13:48', '2023-06-07 08:38:44', 332800, 9600, 0, 3200, 3200, 0, 332800, 0, 48, 0, 0, 0, 0, 9999999),
(49, '2022-11-21 15:36:01', '2022-11-21 15:36:01', 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 9999999),
(50, '2022-11-24 03:59:10', '2022-11-24 04:00:50', 0, 0, 9155, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 9999999),
(51, '2022-11-24 06:45:37', '2022-11-24 06:45:37', 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 9999999),
(52, '2022-11-24 11:49:23', '2022-11-24 11:49:23', 0, 0, 0, 0, 0, 0, 0, 0, 52, 0, 0, 0, 0, 9999999),
(53, '2022-11-28 13:28:32', '2022-11-28 13:28:32', 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0, 0, 0, 9999999),
(54, '2022-11-28 15:51:44', '2022-11-28 15:57:51', 0, 0, 31000, 0, 0, 0, 0, 0, 54, 0, 0, 0, 0, 9999999),
(55, '2022-11-29 00:53:43', '2022-11-29 00:53:43', 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0, 0, 0, 9999999),
(56, '2022-11-29 01:24:00', '2022-11-29 01:24:00', 0, 0, 0, 0, 0, 0, 0, 0, 56, 0, 0, 0, 0, 9999999),
(57, '2022-12-05 08:15:00', '2022-12-05 08:15:00', 0, 0, 0, 0, 0, 0, 0, 0, 57, 0, 0, 0, 0, 9999999),
(58, '2022-12-06 13:57:40', '2022-12-06 15:35:00', 0, 0, 200, 0, 0, 0, 0, 0, 58, 0, 0, 0, 0, 9999999),
(59, '2022-12-08 12:47:59', '2022-12-08 12:47:59', 0, 0, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 9999999),
(60, '2022-12-08 15:36:32', '2022-12-08 15:36:32', 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 9999999),
(61, '2022-12-09 09:11:48', '2022-12-09 09:11:48', 0, 0, 0, 0, 0, 0, 0, 0, 61, 0, 0, 0, 0, 9999999),
(62, '2022-12-09 21:41:04', '2022-12-09 21:44:11', 0, 0, 500, 0, 0, 0, 0, 0, 62, 0, 0, 0, 0, 9999999),
(63, '2022-12-10 17:46:43', '2022-12-10 17:46:43', 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 9999999),
(64, '2022-12-11 12:40:21', '2023-04-13 10:44:14', 0, 0, 100, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 9999999),
(65, '2022-12-12 14:36:27', '2023-09-09 15:52:34', 1557195, 1714300, 57600, 162347, 162347, 0, 1557195, 628, 65, 0, 0, 0, 0, 9999999),
(66, '2022-12-12 18:12:04', '2023-09-01 09:31:43', 285660, 310000, -199350, 24500, 24500, 0, 285660, -10, 66, 0, 0, 0, 0, 9999999),
(67, '2022-12-13 10:12:36', '2022-12-13 10:12:36', 0, 0, 0, 0, 0, 0, 0, 0, 67, 0, 0, 0, 0, 9999999),
(68, '2022-12-14 01:49:32', '2022-12-14 01:49:32', 0, 0, 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, 9999999),
(69, '2022-12-14 08:54:23', '2022-12-14 08:54:23', 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 9999999),
(70, '2022-12-15 05:48:31', '2023-04-15 18:11:34', 18348, 18300, 0, 0, 0, 0, 348, -3, 70, 0, 0, 0, 0, 9999999),
(71, '2022-12-16 07:36:32', '2022-12-16 07:36:32', 0, 0, 0, 0, 0, 0, 0, 0, 71, 0, 0, 0, 0, 9999999),
(72, '2022-12-24 16:28:23', '2022-12-24 16:28:23', 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 9999999),
(73, '2022-12-26 00:05:18', '2022-12-26 00:11:52', 0, 0, 1300, 0, 0, 0, 0, 0, 73, 0, 0, 0, 0, 9999999),
(74, '2022-12-26 08:28:15', '2022-12-26 08:28:15', 0, 0, 0, 0, 0, 0, 0, 0, 74, 0, 0, 0, 0, 9999999),
(75, '2022-12-28 07:26:56', '2023-09-20 13:31:24', 11212293, 420, 2902, 1331239, 1331239, 349998, 11562291, 5213720, 75, 5214089, 0, 0, 0, 9999999),
(76, '2022-12-29 08:05:07', '2022-12-29 08:05:07', 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 9999999),
(77, '2022-12-30 12:22:50', '2022-12-30 12:22:50', 0, 0, 0, 0, 0, 0, 0, 0, 77, 0, 0, 0, 0, 9999999),
(78, '2022-12-31 14:12:28', '2022-12-31 14:12:28', 0, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 9999999),
(79, '2023-01-01 05:49:51', '2023-01-01 05:49:51', 0, 0, 0, 0, 0, 0, 0, 0, 79, 0, 0, 0, 0, 9999999),
(80, '2023-01-01 12:13:04', '2023-01-02 05:27:15', 0, 0, 2320, 0, 0, 0, 0, 0, 80, 0, 0, 0, 0, 9999999),
(81, '2023-01-03 07:16:59', '2023-01-03 07:16:59', 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 9999999),
(82, '2023-01-05 16:01:08', '2023-01-05 16:03:00', 0, 0, 25800, 0, 0, 0, 0, 0, 82, 0, 0, 0, 0, 9999999),
(83, '2023-01-07 16:52:54', '2023-01-07 16:52:54', 0, 0, 0, 0, 0, 0, 0, 0, 83, 0, 0, 0, 0, 9999999),
(84, '2023-01-10 17:55:01', '2023-01-10 17:55:01', 0, 0, 0, 0, 0, 0, 0, 0, 84, 0, 0, 0, 0, 9999999),
(85, '2023-01-12 07:49:56', '2023-01-12 07:49:56', 0, 0, 0, 0, 0, 0, 0, 0, 85, 0, 0, 0, 0, 9999999),
(86, '2023-01-13 03:51:01', '2023-03-08 15:15:14', 5504, 600, 1150, 5684, 5684, 0, 5504, 0, 86, 0, 0, 14, 0, 9999999),
(87, '2023-01-13 06:32:22', '2023-01-22 10:55:59', 20000, 20000, 0, 0, 0, 0, 10000, 0, 87, 0, 0, 0, 0, 9999999),
(88, '2023-01-13 06:41:43', '2023-01-13 06:41:43', 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 9999999),
(89, '2023-01-13 06:47:41', '2023-01-13 06:47:41', 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 0, 0, 0, 9999999),
(90, '2023-01-13 06:52:19', '2023-01-13 06:52:19', 0, 0, 0, 0, 0, 0, 0, 0, 90, 0, 0, 0, 0, 9999999),
(91, '2023-01-13 06:56:34', '2023-01-13 06:56:34', 0, 0, 0, 0, 0, 0, 0, 0, 91, 0, 0, 0, 0, 9999999),
(92, '2023-01-13 07:00:45', '2023-01-13 07:00:45', 0, 0, 0, 0, 0, 0, 0, 0, 92, 0, 0, 0, 0, 9999999),
(93, '2023-01-14 12:18:26', '2023-01-14 12:18:26', 0, 0, 0, 0, 0, 0, 0, 0, 93, 0, 0, 0, 0, 9999999),
(94, '2023-01-14 16:21:37', '2023-01-14 16:34:23', 0, 0, 500, 0, 0, 0, 0, 0, 94, 0, 0, 0, 0, 9999999),
(95, '2023-01-15 08:42:31', '2023-01-15 08:42:31', 0, 0, 0, 0, 0, 0, 0, 0, 95, 0, 0, 0, 0, 9999999),
(96, '2023-01-20 06:14:45', '2023-01-20 06:14:45', 0, 0, 0, 0, 0, 0, 0, 0, 96, 0, 0, 0, 0, 9999999),
(97, '2023-01-21 18:27:14', '2023-01-21 18:27:14', 0, 0, 0, 0, 0, 0, 0, 0, 97, 0, 0, 0, 0, 9999999),
(98, '2023-01-22 10:53:51', '2023-08-27 14:02:52', 30004, 45800, 0, 23220, 23220, 0, 30004, 0, 98, 0, 0, 0, 0, 9999999),
(99, '2023-01-22 12:33:45', '2023-01-22 12:33:45', 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 9999999),
(100, '2023-01-22 15:12:30', '2023-01-22 15:12:30', 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 9999999),
(101, '2023-01-22 16:34:31', '2023-01-22 16:34:31', 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 9999999),
(102, '2023-01-25 17:13:23', '2023-01-25 17:13:23', 0, 0, 0, 0, 0, 0, 0, 0, 102, 0, 0, 0, 0, 9999999),
(103, '2023-01-26 18:18:27', '2023-01-26 18:18:27', 0, 0, 0, 0, 0, 0, 0, 0, 103, 0, 0, 0, 0, 9999999),
(104, '2023-01-26 18:23:10', '2023-01-26 18:23:10', 0, 0, 0, 0, 0, 0, 0, 0, 104, 0, 0, 0, 0, 9999999),
(105, '2023-01-27 10:23:14', '2023-01-27 10:23:14', 0, 0, 0, 0, 0, 0, 0, 0, 105, 0, 0, 0, 0, 9999999),
(106, '2023-01-28 06:49:20', '2023-01-28 06:58:01', 9213, 10000, 0, 787, 787, 0, 9213, 0, 106, 0, 0, 0, 0, 9999999),
(107, '2023-01-28 14:59:11', '2023-03-07 01:03:53', 0, 0, 100, 0, 0, 0, 0, 0, 107, 0, 0, 0, 0, 9999999),
(108, '2023-01-28 17:27:47', '2023-01-28 17:27:47', 0, 0, 0, 0, 0, 0, 0, 0, 108, 0, 0, 0, 0, 9999999),
(109, '2023-01-30 16:32:49', '2023-01-30 16:39:48', 0, 0, 100, 0, 0, 0, 0, 0, 109, 0, 0, 0, 0, 9999999),
(110, '2023-02-03 07:36:57', '2023-09-24 15:48:08', 147966, 340, 1000, 8000, 8000, 10000, 157966, 70404, 110, 70400, 0, 0, 0, 9999999),
(111, '2023-02-03 11:00:34', '2023-02-03 11:27:19', 0, 0, 400, 0, 0, 0, 0, 0, 111, 0, 0, 0, 0, 9999999),
(112, '2023-02-03 15:05:29', '2023-02-03 15:10:28', 0, 0, 500, 0, 0, 0, 0, 0, 112, 0, 0, 0, 0, 9999999),
(113, '2023-02-04 05:07:04', '2023-02-04 05:20:25', 0, 0, 5, 0, 0, 0, 0, 0, 113, 0, 0, 0, 0, 9999999),
(114, '2023-02-04 06:45:09', '2023-06-03 13:48:52', 5300, 700, 0, 5660, 5660, 0, 5300, 0, 114, 0, 0, 0, 0, 9999999),
(115, '2023-02-04 18:33:18', '2023-02-04 18:33:18', 0, 0, 0, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, 9999999),
(116, '2023-02-05 02:07:35', '2023-02-05 02:07:35', 0, 0, 0, 0, 0, 0, 0, 0, 116, 0, 0, 0, 0, 9999999),
(117, '2023-02-05 18:18:15', '2023-02-05 18:18:15', 0, 0, 0, 0, 0, 0, 0, 0, 117, 0, 0, 0, 0, 9999999),
(118, '2023-02-07 14:00:59', '2023-02-07 14:00:59', 0, 0, 0, 0, 0, 0, 0, 0, 118, 0, 0, 0, 0, 9999999),
(119, '2023-02-07 14:32:10', '2023-02-07 14:32:10', 0, 0, 0, 0, 0, 0, 0, 0, 119, 0, 0, 0, 0, 9999999),
(120, '2023-02-08 06:42:16', '2023-02-08 06:42:16', 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0, 0, 0, 9999999),
(121, '2023-02-09 09:21:54', '2023-02-09 09:21:54', 0, 0, 0, 0, 0, 0, 0, 0, 121, 0, 0, 0, 0, 9999999),
(122, '2023-02-09 10:44:33', '2023-02-09 10:44:33', 0, 0, 0, 0, 0, 0, 0, 0, 122, 0, 0, 0, 0, 9999999),
(123, '2023-02-09 16:09:15', '2023-02-09 16:09:15', 0, 0, 0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 9999999),
(124, '2023-02-10 19:14:58', '2023-02-10 19:14:58', 0, 0, 0, 0, 0, 0, 0, 0, 124, 0, 0, 0, 0, 9999999),
(125, '2023-02-11 18:28:02', '2023-02-11 18:28:02', 0, 0, 0, 0, 0, 0, 0, 0, 125, 0, 0, 0, 0, 9999999),
(126, '2023-02-12 16:11:03', '2023-02-12 16:11:03', 0, 0, 0, 0, 0, 0, 0, 0, 126, 0, 0, 0, 0, 9999999),
(127, '2023-02-13 15:47:03', '2023-02-13 15:48:09', 0, 0, 150, 0, 0, 0, 0, 0, 127, 0, 0, 0, 0, 9999999),
(128, '2023-02-14 10:43:06', '2023-02-14 10:43:06', 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 9999999),
(129, '2023-02-15 01:50:14', '2023-02-15 01:53:14', 0, 0, 500, 0, 0, 0, 0, 0, 129, 0, 0, 0, 0, 9999999),
(130, '2023-02-15 02:18:20', '2023-02-15 02:18:20', 0, 0, 0, 0, 0, 0, 0, 0, 130, 0, 0, 0, 0, 9999999),
(131, '2023-02-16 18:58:39', '2023-02-16 18:58:39', 0, 0, 0, 0, 0, 0, 0, 0, 131, 0, 0, 0, 0, 9999999),
(132, '2023-02-18 06:30:27', '2023-02-18 06:30:27', 0, 0, 0, 0, 0, 0, 0, 0, 132, 0, 0, 0, 0, 9999999),
(133, '2023-02-18 14:01:43', '2023-02-18 14:01:43', 0, 0, 0, 0, 0, 0, 0, 0, 133, 0, 0, 0, 0, 9999999),
(134, '2023-02-20 01:36:56', '2023-02-20 01:36:56', 0, 0, 0, 0, 0, 0, 0, 0, 134, 0, 0, 0, 0, 9999999),
(135, '2023-02-20 20:16:49', '2023-09-23 12:47:29', 2336853, 420, 430, 1000, 1000, 23000, 2359853, 569408, 135, 569411, 0, 0, 0, 9999999),
(136, '2023-02-26 18:19:07', '2023-02-26 18:19:07', 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 9999999),
(137, '2023-02-27 13:16:36', '2023-02-27 13:16:36', 0, 0, 0, 0, 0, 0, 0, 0, 137, 0, 0, 0, 0, 9999999),
(138, '2023-02-27 19:45:52', '2023-02-28 05:37:19', 0, 0, 1, 0, 0, 0, 0, 0, 138, 0, 0, 0, 0, 9999999),
(139, '2023-03-01 13:06:28', '2023-03-01 13:06:28', 0, 0, 0, 0, 0, 0, 0, 0, 139, 0, 0, 0, 0, 9999999),
(140, '2023-03-03 06:52:10', '2023-03-03 06:52:10', 0, 0, 0, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, 9999999),
(141, '2023-03-05 11:04:45', '2023-03-05 11:04:45', 0, 0, 0, 0, 0, 0, 0, 0, 141, 0, 0, 0, 0, 9999999),
(142, '2023-03-05 19:34:05', '2023-03-05 19:34:05', 0, 0, 0, 0, 0, 0, 0, 0, 142, 0, 0, 0, 0, 9999999),
(143, '2023-03-08 09:34:11', '2023-03-08 09:42:24', 0, 0, 10, 0, 0, 0, 0, 0, 143, 0, 0, 0, 0, 9999999),
(144, '2023-03-11 15:38:35', '2023-03-11 15:38:35', 0, 0, 0, 0, 0, 0, 0, 0, 144, 0, 0, 0, 0, 9999999),
(145, '2023-03-23 11:11:29', '2023-03-23 11:11:29', 0, 0, 0, 0, 0, 0, 0, 0, 145, 0, 0, 0, 0, 9999999),
(146, '2023-03-25 22:24:30', '2023-03-25 22:24:30', 0, 0, 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 9999999),
(147, '2023-03-26 19:25:18', '2023-03-26 19:25:18', 0, 0, 0, 0, 0, 0, 0, 0, 147, 0, 0, 0, 0, 9999999),
(148, '2023-03-27 19:54:54', '2023-03-27 19:54:54', 0, 0, 0, 0, 0, 0, 0, 0, 148, 0, 0, 0, 0, 9999999),
(149, '2023-03-28 08:23:28', '2023-03-28 08:31:03', 0, 0, 1, 0, 0, 0, 0, 0, 149, 0, 0, 0, 0, 9999999),
(150, '2023-04-01 16:10:54', '2023-04-01 16:10:54', 0, 0, 0, 0, 0, 0, 0, 0, 150, 0, 0, 0, 0, 9999999),
(151, '2023-04-03 13:22:24', '2023-04-03 13:22:24', 0, 0, 0, 0, 0, 0, 0, 0, 151, 0, 0, 0, 0, 9999999),
(152, '2023-04-05 13:05:04', '2023-05-25 05:04:25', 0, 0, 30, 0, 0, 0, 0, 0, 152, 0, 0, 0, 0, 9999999),
(153, '2023-04-05 13:25:24', '2023-04-05 13:38:23', 0, 0, 300, 0, 0, 0, 0, 0, 153, 0, 0, 0, 0, 9999999),
(154, '2023-04-06 06:31:52', '2023-04-06 06:31:52', 0, 0, 0, 0, 0, 0, 0, 0, 154, 0, 0, 0, 0, 9999999),
(155, '2023-04-07 01:11:26', '2023-04-07 01:11:26', 0, 0, 0, 0, 0, 0, 0, 0, 155, 0, 0, 0, 0, 9999999),
(156, '2023-04-18 22:37:10', '2023-09-23 15:12:07', 24058, 4420, 4932, 7500, 7500, 20000, 44058, 599380, 156, 599380, 1, 0, 0, 9999999),
(157, '2023-04-24 08:10:43', '2023-04-24 08:10:43', 0, 0, 0, 0, 0, 0, 0, 0, 157, 0, 0, 0, 0, 9999999),
(158, '2023-04-25 04:14:18', '2023-05-05 06:26:07', 0, 0, 100, 0, 0, 0, 0, 0, 158, 0, 0, 0, 0, 9999999),
(159, '2023-04-29 02:04:54', '2023-05-06 13:54:31', 0, 0, 200, 0, 0, 0, 0, 0, 159, 0, 0, 0, 0, 9999999),
(160, '2023-04-29 10:05:13', '2023-04-29 10:05:13', 0, 0, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 9999999),
(161, '2023-04-30 05:10:25', '2023-04-30 05:10:25', 0, 0, 0, 0, 0, 0, 0, 0, 161, 0, 0, 0, 0, 9999999),
(162, '2023-04-30 11:28:28', '2023-05-02 10:05:54', 0, 0, 50000, 0, 0, 0, 0, 0, 162, 0, 0, 0, 0, 9999999),
(163, '2023-04-30 15:45:44', '2023-04-30 15:45:44', 0, 0, 0, 0, 0, 0, 0, 0, 163, 0, 0, 0, 0, 9999999),
(164, '2023-05-01 15:35:40', '2023-05-07 05:24:58', 180, 100, 103, 180, 180, 0, 180, 0, 164, 0, 0, 0, 0, 9999999),
(165, '2023-05-02 10:08:55', '2023-05-02 10:08:55', 0, 0, 0, 0, 0, 0, 0, 0, 165, 0, 0, 0, 0, 9999999),
(166, '2023-05-02 15:52:56', '2023-08-26 22:02:05', 2500, 8000, 0, 5500, 5500, 0, 2500, 0, 166, 0, 0, 0, 0, 9999999),
(167, '2023-05-03 09:58:49', '2023-05-03 09:58:49', 0, 0, 0, 0, 0, 0, 0, 0, 167, 0, 0, 0, 0, 9999999),
(168, '2023-05-04 07:14:02', '2023-05-04 07:14:02', 0, 0, 0, 0, 0, 0, 0, 0, 168, 0, 0, 0, 0, 9999999),
(169, '2023-05-05 12:43:40', '2023-05-05 12:43:40', 0, 0, 0, 0, 0, 0, 0, 0, 169, 0, 0, 0, 0, 9999999),
(170, '2023-05-06 18:57:43', '2023-05-06 18:57:43', 0, 0, 0, 0, 0, 0, 0, 0, 170, 0, 0, 0, 0, 9999999),
(171, '2023-05-07 18:29:45', '2023-05-07 18:29:45', 0, 0, 0, 0, 0, 0, 0, 0, 171, 0, 0, 0, 0, 9999999),
(172, '2023-05-08 08:46:19', '2023-05-14 00:32:46', 0, 0, 400, 0, 0, 0, 0, 0, 172, 0, 0, 0, 0, 9999999),
(173, '2023-05-08 10:53:56', '2023-05-08 10:59:30', 0, 0, 100, 0, 0, 0, 0, 0, 173, 0, 0, 0, 0, 9999999),
(174, '2023-05-08 14:00:03', '2023-05-08 14:00:03', 0, 0, 0, 0, 0, 0, 0, 0, 174, 0, 0, 0, 0, 9999999),
(175, '2023-05-08 18:24:18', '2023-05-08 18:24:18', 0, 0, 0, 0, 0, 0, 0, 0, 175, 0, 0, 0, 0, 9999999),
(176, '2023-05-09 09:55:43', '2023-05-09 09:55:43', 0, 0, 0, 0, 0, 0, 0, 0, 176, 0, 0, 0, 0, 9999999),
(177, '2023-05-11 15:37:49', '2023-05-11 15:37:49', 0, 0, 0, 0, 0, 0, 0, 0, 177, 0, 0, 0, 0, 9999999),
(178, '2023-05-12 09:43:47', '2023-09-02 02:29:15', 11000, 12000, 4360, 1000, 1000, 0, 11000, 0, 178, 0, 0, 0, 0, 9999999),
(179, '2023-05-12 10:51:33', '2023-05-12 10:51:33', 0, 0, 0, 0, 0, 0, 0, 0, 179, 0, 0, 0, 0, 9999999),
(180, '2023-05-13 14:54:31', '2023-09-13 11:10:56', 3341281, 490, 1, 1598, 1598, 139999, 3481280, 852714, 180, 852715, 0, 13, 0, 9999999),
(181, '2023-05-13 17:14:16', '2023-05-13 17:14:16', 0, 0, 0, 0, 0, 0, 0, 0, 181, 0, 0, 0, 0, 9999999),
(182, '2023-05-13 20:34:09', '2023-05-13 20:34:09', 0, 0, 0, 0, 0, 0, 0, 0, 182, 0, 0, 0, 0, 9999999),
(183, '2023-05-14 04:01:10', '2023-05-14 04:01:10', 0, 0, 0, 0, 0, 0, 0, 0, 183, 0, 0, 0, 0, 9999999),
(184, '2023-05-14 08:02:03', '2023-05-14 08:02:03', 0, 0, 0, 0, 0, 0, 0, 0, 184, 0, 0, 0, 0, 9999999),
(185, '2023-05-14 08:41:19', '2023-05-14 08:41:19', 0, 0, 0, 0, 0, 0, 0, 0, 185, 0, 0, 0, 0, 9999999),
(186, '2023-05-14 08:59:53', '2023-05-27 12:36:23', 180, 100, 0, 90, 90, 0, 180, 0, 186, 0, 0, 0, 0, 9999999),
(187, '2023-05-14 10:09:58', '2023-09-21 13:40:53', 3000, 1500, 0, 800, 800, 2500, 5500, 23200, 187, 23200, 0, 0, 0, 9999999),
(188, '2023-05-14 10:14:05', '2023-09-07 11:15:44', 209, 567, 520, 220, 220, 5100, 5309, 16312, 188, 16320, 0, 24, 0, 9999999),
(189, '2023-05-14 10:48:41', '2023-05-14 10:48:41', 0, 0, 0, 0, 0, 0, 0, 0, 189, 0, 0, 0, 0, 9999999),
(190, '2023-05-14 10:57:02', '2023-06-04 06:26:26', 0, 520, 0, 100, 100, 500, 500, 2400, 190, 2400, 0, 0, 0, 9999999),
(191, '2023-05-14 10:58:44', '2023-05-14 10:58:44', 0, 0, 0, 0, 0, 0, 0, 0, 191, 0, 0, 0, 0, 9999999),
(192, '2023-05-14 13:24:51', '2023-05-14 13:24:51', 0, 0, 0, 0, 0, 0, 0, 0, 192, 0, 0, 0, 0, 9999999),
(193, '2023-05-14 13:27:29', '2023-05-14 13:27:29', 0, 0, 0, 0, 0, 0, 0, 0, 193, 0, 0, 0, 0, 9999999),
(194, '2023-05-14 13:32:58', '2023-05-20 22:24:17', 180, 100, 230, 230, 230, 0, 180, 0, 194, 0, 0, 0, 0, 9999999),
(195, '2023-05-14 15:24:01', '2023-05-14 15:24:01', 0, 0, 0, 0, 0, 0, 0, 0, 195, 0, 0, 0, 0, 9999999),
(196, '2023-05-14 16:13:07', '2023-09-24 09:37:45', 5347676, 504, 925, 3190, 3190, 319998, 5667674, 459938, 196, 459957, 0, 0, 0, 9999999),
(197, '2023-05-14 17:44:33', '2023-05-14 17:44:33', 0, 0, 0, 0, 0, 0, 0, 0, 197, 0, 0, 0, 0, 9999999),
(198, '2023-05-14 17:52:24', '2023-05-14 17:52:24', 0, 0, 0, 0, 0, 0, 0, 0, 198, 0, 0, 0, 0, 9999999),
(199, '2023-05-14 18:35:19', '2023-05-14 18:35:19', 0, 0, 0, 0, 0, 0, 0, 0, 199, 0, 0, 0, 0, 9999999),
(200, '2023-05-14 19:12:33', '2023-05-20 04:31:42', 180, 100, 0, 180, 180, 0, 180, 0, 200, 0, 0, 0, 0, 9999999),
(201, '2023-05-15 02:30:55', '2023-05-15 02:30:55', 0, 0, 0, 0, 0, 0, 0, 0, 201, 0, 0, 0, 0, 9999999),
(202, '2023-05-15 06:03:45', '2023-05-15 06:03:45', 0, 0, 0, 0, 0, 0, 0, 0, 202, 0, 0, 0, 0, 9999999),
(203, '2023-05-15 07:02:43', '2023-06-04 06:24:58', 60, 600, 0, 120, 120, 500, 560, 480, 203, 480, 0, 0, 0, 9999999),
(204, '2023-05-15 09:16:09', '2023-05-15 09:16:09', 0, 0, 0, 0, 0, 0, 0, 0, 204, 0, 0, 0, 0, 9999999),
(205, '2023-05-15 12:14:23', '2023-06-23 19:07:51', 5300, 900, -200, 384, 384, 0, 5300, 0, 205, 0, 0, 24, 0, 9999999),
(206, '2023-05-15 18:45:38', '2023-05-15 18:45:38', 0, 0, 0, 0, 0, 0, 0, 0, 206, 0, 0, 0, 0, 9999999),
(207, '2023-05-15 21:20:17', '2023-05-15 21:20:17', 0, 0, 0, 0, 0, 0, 0, 0, 207, 0, 0, 0, 0, 9999999),
(208, '2023-05-16 05:21:59', '2023-05-16 06:12:46', 0, 0, 100, 0, 0, 0, 0, 0, 208, 0, 0, 0, 0, 9999999),
(209, '2023-05-16 08:24:43', '2023-05-16 08:24:43', 0, 0, 0, 0, 0, 0, 0, 0, 209, 0, 0, 0, 0, 9999999),
(210, '2023-05-17 13:47:41', '2023-05-29 14:30:57', 0, 0, 4, 0, 0, 0, 0, 0, 210, 0, 0, 0, 0, 9999999),
(211, '2023-05-17 14:08:00', '2023-05-26 17:52:41', 225, 125, 300, 0, 0, 0, 225, 0, 211, 0, 0, 0, 0, 9999999),
(212, '2023-05-18 23:11:47', '2023-05-18 23:11:47', 0, 0, 0, 0, 0, 0, 0, 0, 212, 0, 0, 0, 0, 9999999),
(213, '2023-05-19 09:16:23', '2023-05-19 09:16:23', 0, 0, 0, 0, 0, 0, 0, 0, 213, 0, 0, 0, 0, 9999999),
(214, '2023-05-19 10:31:16', '2023-05-19 10:31:16', 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 9999999),
(215, '2023-05-19 15:23:30', '2023-05-19 15:23:30', 0, 0, 0, 0, 0, 0, 0, 0, 215, 0, 0, 0, 0, 9999999),
(216, '2023-05-19 22:38:55', '2023-05-19 22:38:55', 0, 0, 0, 0, 0, 0, 0, 0, 216, 0, 0, 0, 0, 9999999),
(217, '2023-05-20 11:56:19', '2023-05-20 11:56:19', 0, 0, 0, 0, 0, 0, 0, 0, 217, 0, 0, 0, 0, 9999999),
(218, '2023-05-21 00:22:53', '2023-05-21 00:22:53', 0, 0, 0, 0, 0, 0, 0, 0, 218, 0, 0, 0, 0, 9999999),
(219, '2023-05-21 00:40:26', '2023-05-21 00:40:26', 0, 0, 0, 0, 0, 0, 0, 0, 219, 0, 0, 0, 0, 9999999),
(220, '2023-05-22 07:27:00', '2023-05-22 07:27:00', 0, 0, 0, 0, 0, 0, 0, 0, 220, 0, 0, 0, 0, 9999999),
(221, '2023-05-22 07:27:22', '2023-05-22 07:27:22', 0, 0, 0, 0, 0, 0, 0, 0, 221, 0, 0, 0, 0, 9999999),
(222, '2023-05-22 07:30:13', '2023-05-22 07:30:13', 0, 0, 0, 0, 0, 0, 0, 0, 222, 0, 0, 0, 0, 9999999),
(223, '2023-05-22 07:31:43', '2023-05-22 07:31:43', 0, 0, 0, 0, 0, 0, 0, 0, 223, 0, 0, 0, 0, 9999999),
(224, '2023-05-22 07:34:31', '2023-05-22 07:34:31', 0, 0, 0, 0, 0, 0, 0, 0, 224, 0, 0, 0, 0, 9999999),
(225, '2023-05-22 07:42:51', '2023-05-22 07:42:51', 0, 0, 0, 0, 0, 0, 0, 0, 225, 0, 0, 0, 0, 9999999),
(226, '2023-05-22 07:48:57', '2023-05-22 07:48:57', 0, 0, 0, 0, 0, 0, 0, 0, 226, 0, 0, 0, 0, 9999999),
(227, '2023-05-22 07:53:00', '2023-05-22 07:53:00', 0, 0, 0, 0, 0, 0, 0, 0, 227, 0, 0, 0, 0, 9999999),
(228, '2023-05-22 07:54:04', '2023-05-22 07:54:04', 0, 0, 0, 0, 0, 0, 0, 0, 228, 0, 0, 0, 0, 9999999),
(229, '2023-05-22 07:56:13', '2023-05-22 07:56:13', 0, 0, 0, 0, 0, 0, 0, 0, 229, 0, 0, 0, 0, 9999999),
(230, '2023-05-22 07:58:09', '2023-05-22 07:58:09', 0, 0, 0, 0, 0, 0, 0, 0, 230, 0, 0, 0, 0, 9999999),
(231, '2023-05-22 08:04:13', '2023-05-22 08:04:13', 0, 0, 0, 0, 0, 0, 0, 0, 231, 0, 0, 0, 0, 9999999),
(232, '2023-05-22 08:05:24', '2023-05-22 08:05:24', 0, 0, 0, 0, 0, 0, 0, 0, 232, 0, 0, 0, 0, 9999999),
(233, '2023-05-22 08:06:37', '2023-05-22 08:06:37', 0, 0, 0, 0, 0, 0, 0, 0, 233, 0, 0, 0, 0, 9999999),
(234, '2023-05-22 08:12:56', '2023-05-22 08:12:56', 0, 0, 0, 0, 0, 0, 0, 0, 234, 0, 0, 0, 0, 9999999),
(235, '2023-05-22 08:29:15', '2023-05-22 08:29:15', 0, 0, 0, 0, 0, 0, 0, 0, 235, 0, 0, 0, 0, 9999999),
(236, '2023-05-22 08:30:49', '2023-05-22 09:12:07', 0, 0, 122, 0, 0, 0, 0, 0, 236, 0, 0, 0, 0, 9999999),
(237, '2023-05-22 08:34:46', '2023-05-22 08:34:46', 0, 0, 0, 0, 0, 0, 0, 0, 237, 0, 0, 0, 0, 9999999),
(238, '2023-05-22 08:39:48', '2023-05-22 08:39:48', 0, 0, 0, 0, 0, 0, 0, 0, 238, 0, 0, 0, 0, 9999999),
(239, '2023-05-22 08:44:46', '2023-05-22 08:44:46', 0, 0, 0, 0, 0, 0, 0, 0, 239, 0, 0, 0, 0, 9999999),
(240, '2023-05-22 08:58:26', '2023-05-22 08:58:26', 0, 0, 0, 0, 0, 0, 0, 0, 240, 0, 0, 0, 0, 9999999),
(241, '2023-05-22 09:01:16', '2023-05-22 09:01:16', 0, 0, 0, 0, 0, 0, 0, 0, 241, 0, 0, 0, 0, 9999999),
(242, '2023-05-22 09:03:32', '2023-05-22 09:03:32', 0, 0, 0, 0, 0, 0, 0, 0, 242, 0, 0, 0, 0, 9999999),
(243, '2023-05-22 09:03:51', '2023-05-22 09:03:51', 0, 0, 0, 0, 0, 0, 0, 0, 243, 0, 0, 0, 0, 9999999),
(244, '2023-05-22 09:14:01', '2023-05-22 09:14:01', 0, 0, 0, 0, 0, 0, 0, 0, 244, 0, 0, 0, 0, 9999999),
(245, '2023-05-22 12:48:30', '2023-05-22 12:49:22', 0, 0, 200, 0, 0, 0, 0, 0, 245, 0, 0, 0, 0, 9999999),
(246, '2023-05-22 18:59:45', '2023-07-26 15:11:04', 5300, 480, 0, 5665, 5665, 0, 5300, 0, 246, 0, 0, 0, 0, 9999999),
(247, '2023-05-22 19:31:06', '2023-05-22 19:31:06', 0, 0, 0, 0, 0, 0, 0, 0, 247, 0, 0, 0, 0, 9999999),
(248, '2023-05-23 01:29:20', '2023-09-20 03:57:39', 5556, 100, 460, 180, 180, 0, 5556, -1, 248, 0, 0, 0, 0, 9999999),
(249, '2023-05-23 03:17:20', '2023-05-23 03:17:20', 0, 0, 0, 0, 0, 0, 0, 0, 249, 0, 0, 0, 0, 9999999),
(250, '2023-05-23 07:48:28', '2023-05-23 07:48:28', 0, 0, 0, 0, 0, 0, 0, 0, 250, 0, 0, 0, 0, 9999999),
(251, '2023-05-23 16:50:50', '2023-05-23 16:50:50', 0, 0, 0, 0, 0, 0, 0, 0, 251, 0, 0, 0, 0, 9999999),
(252, '2023-05-24 02:00:39', '2023-05-24 04:03:03', 0, 0, 550, 0, 0, 0, 0, 0, 252, 0, 0, 0, 0, 9999999),
(253, '2023-05-24 08:05:36', '2023-05-24 08:06:41', 0, 0, 100, 0, 0, 0, 0, 0, 253, 0, 0, 0, 0, 9999999),
(254, '2023-05-24 15:18:52', '2023-09-14 08:02:34', 180, 110, 1301, 270, 270, 0, 8584, 0, 254, 0, 0, 0, 0, 9999999),
(255, '2023-05-24 15:52:50', '2023-05-24 15:52:50', 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 9999999),
(256, '2023-05-25 07:07:58', '2023-05-25 07:07:58', 0, 0, 0, 0, 0, 0, 0, 0, 256, 0, 0, 0, 0, 9999999),
(257, '2023-05-25 07:44:37', '2023-05-25 07:44:37', 0, 0, 0, 0, 0, 0, 0, 0, 257, 0, 0, 0, 0, 9999999),
(258, '2023-05-25 12:29:31', '2023-05-25 12:29:31', 0, 0, 0, 0, 0, 0, 0, 0, 258, 0, 0, 0, 0, 9999999),
(259, '2023-05-25 13:07:12', '2023-05-25 13:07:12', 0, 0, 0, 0, 0, 0, 0, 0, 259, 0, 0, 0, 0, 9999999),
(260, '2023-05-25 13:51:51', '2023-05-25 13:51:51', 0, 0, 0, 0, 0, 0, 0, 0, 260, 0, 0, 0, 0, 9999999),
(261, '2023-05-26 15:16:53', '2023-05-26 15:16:53', 0, 0, 0, 0, 0, 0, 0, 0, 261, 0, 0, 0, 0, 9999999),
(262, '2023-05-26 15:17:27', '2023-05-26 15:17:27', 0, 0, 0, 0, 0, 0, 0, 0, 262, 0, 0, 0, 0, 9999999),
(263, '2023-05-28 03:27:46', '2023-05-28 03:27:46', 0, 0, 0, 0, 0, 0, 0, 0, 263, 0, 0, 0, 0, 9999999),
(264, '2023-05-28 10:18:06', '2023-05-28 10:18:06', 0, 0, 0, 0, 0, 0, 0, 0, 264, 0, 0, 0, 0, 9999999),
(265, '2023-05-29 00:33:59', '2023-05-29 00:33:59', 0, 0, 0, 0, 0, 0, 0, 0, 265, 0, 0, 0, 0, 9999999),
(266, '2023-05-29 10:17:34', '2023-09-14 08:04:34', 1000, 50000, 6800, 130000, 130000, 0, 1000, 0, 266, 0, 0, 36000, 0, 9999999),
(267, '2023-05-29 13:35:16', '2023-07-03 17:23:43', 0, 0, 931, 0, 0, 0, 0, 0, 267, 0, 0, 0, 0, 9999999),
(268, '2023-05-29 17:01:14', '2023-05-29 17:01:14', 0, 0, 0, 0, 0, 0, 0, 0, 268, 0, 0, 0, 0, 9999999),
(269, '2023-05-30 05:42:03', '2023-05-30 05:42:03', 0, 0, 0, 0, 0, 0, 0, 0, 269, 0, 0, 0, 0, 9999999),
(270, '2023-05-30 07:54:02', '2023-05-30 07:54:02', 0, 0, 0, 0, 0, 0, 0, 0, 270, 0, 0, 0, 0, 9999999),
(271, '2023-05-30 13:58:51', '2023-05-30 13:58:51', 0, 0, 0, 0, 0, 0, 0, 0, 271, 0, 0, 0, 0, 9999999),
(272, '2023-05-31 07:11:19', '2023-05-31 07:11:19', 0, 0, 0, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 9999999),
(273, '2023-05-31 22:54:37', '2023-05-31 22:55:44', 0, 0, 1000000102, 0, 0, 0, 0, 0, 273, 0, 0, 0, 0, 9999999),
(274, '2023-06-01 01:33:30', '2023-06-01 01:33:30', 0, 0, 0, 0, 0, 0, 0, 0, 274, 0, 0, 0, 0, 9999999),
(275, '2023-06-01 05:18:45', '2023-06-01 05:18:45', 0, 0, 0, 0, 0, 0, 0, 0, 275, 0, 0, 0, 0, 9999999),
(276, '2023-06-01 08:05:56', '2023-06-01 08:05:56', 0, 0, 0, 0, 0, 0, 0, 0, 276, 0, 0, 0, 0, 9999999),
(277, '2023-06-01 08:29:17', '2023-06-01 08:29:17', 0, 0, 0, 0, 0, 0, 0, 0, 277, 0, 0, 0, 0, 9999999),
(278, '2023-06-02 07:34:26', '2023-06-02 07:34:26', 0, 0, 0, 0, 0, 0, 0, 0, 278, 0, 0, 0, 0, 9999999),
(279, '2023-06-02 07:54:48', '2023-06-02 07:54:48', 0, 0, 0, 0, 0, 0, 0, 0, 279, 0, 0, 0, 0, 9999999),
(280, '2023-06-03 07:24:44', '2023-06-03 07:24:44', 0, 0, 0, 0, 0, 0, 0, 0, 280, 0, 0, 0, 0, 9999999),
(281, '2023-06-03 14:08:31', '2023-06-03 14:08:31', 0, 0, 0, 0, 0, 0, 0, 0, 281, 0, 0, 0, 0, 9999999),
(282, '2023-06-03 14:17:04', '2023-06-03 14:17:04', 0, 0, 0, 0, 0, 0, 0, 0, 282, 0, 0, 0, 0, 9999999),
(283, '2023-06-03 14:17:18', '2023-06-03 14:17:18', 0, 0, 0, 0, 0, 0, 0, 0, 283, 0, 0, 0, 0, 9999999),
(284, '2023-06-03 14:25:18', '2023-06-03 14:25:18', 0, 0, 0, 0, 0, 0, 0, 0, 284, 0, 0, 0, 0, 9999999),
(285, '2023-06-03 14:26:52', '2023-06-03 14:26:52', 0, 0, 0, 0, 0, 0, 0, 0, 285, 0, 0, 0, 0, 9999999),
(286, '2023-06-03 14:28:38', '2023-06-03 14:28:38', 0, 0, 0, 0, 0, 0, 0, 0, 286, 0, 0, 0, 0, 9999999),
(287, '2023-06-03 14:29:26', '2023-06-03 14:29:26', 0, 0, 0, 0, 0, 0, 0, 0, 287, 0, 0, 0, 0, 9999999),
(288, '2023-06-03 14:29:54', '2023-06-03 14:29:54', 0, 0, 0, 0, 0, 0, 0, 0, 288, 0, 0, 0, 0, 9999999),
(289, '2023-06-03 14:31:34', '2023-06-03 14:31:34', 0, 0, 0, 0, 0, 0, 0, 0, 289, 0, 0, 0, 0, 9999999),
(290, '2023-06-03 14:32:47', '2023-06-03 14:32:47', 0, 0, 0, 0, 0, 0, 0, 0, 290, 0, 0, 0, 0, 9999999),
(291, '2023-06-03 15:10:21', '2023-06-03 15:10:21', 0, 0, 0, 0, 0, 0, 0, 0, 291, 0, 0, 0, 0, 9999999),
(292, '2023-06-03 17:19:15', '2023-06-03 17:19:15', 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 0, 0, 9999999),
(293, '2023-06-03 17:43:01', '2023-06-03 17:43:01', 0, 0, 0, 0, 0, 0, 0, 0, 293, 0, 0, 0, 0, 9999999),
(294, '2023-06-03 18:10:35', '2023-06-03 18:34:56', 0, 0, 202, 0, 0, 0, 0, 0, 294, 0, 0, 0, 0, 9999999),
(295, '2023-06-03 19:39:41', '2023-06-03 19:39:41', 0, 0, 0, 0, 0, 0, 0, 0, 295, 0, 0, 0, 0, 9999999),
(296, '2023-06-04 06:11:52', '2023-06-04 06:11:52', 0, 0, 0, 0, 0, 0, 0, 0, 296, 0, 0, 0, 0, 9999999),
(297, '2023-06-04 08:23:04', '2023-06-04 08:23:04', 0, 0, 0, 0, 0, 0, 0, 0, 297, 0, 0, 0, 0, 9999999),
(298, '2023-06-04 12:17:36', '2023-06-04 12:17:36', 0, 0, 0, 0, 0, 0, 0, 0, 298, 0, 0, 0, 0, 9999999),
(299, '2023-06-05 02:11:44', '2023-06-05 03:36:18', 0, 0, 112, 0, 0, 0, 0, 0, 299, 0, 0, 0, 0, 9999999),
(300, '2023-06-05 04:13:18', '2023-06-05 04:13:18', 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 0, 0, 0, 9999999),
(301, '2023-06-05 04:39:02', '2023-06-05 04:39:02', 0, 0, 0, 0, 0, 0, 0, 0, 301, 0, 0, 0, 0, 9999999),
(302, '2023-06-07 06:31:52', '2023-06-07 06:33:34', 0, 0, 3, 0, 0, 0, 0, 0, 302, 0, 0, 0, 0, 9999999),
(303, '2023-06-07 09:09:22', '2023-06-07 09:09:22', 0, 0, 0, 0, 0, 0, 0, 0, 303, 0, 0, 0, 0, 9999999),
(304, '2023-06-09 00:43:46', '2023-06-09 00:43:46', 0, 0, 0, 0, 0, 0, 0, 0, 304, 0, 0, 0, 0, 9999999),
(305, '2023-06-09 12:48:32', '2023-06-09 12:48:32', 0, 0, 0, 0, 0, 0, 0, 0, 305, 0, 0, 0, 0, 9999999),
(306, '2023-06-10 12:46:34', '2023-06-10 12:46:34', 0, 0, 0, 0, 0, 0, 0, 0, 306, 0, 0, 0, 0, 9999999),
(307, '2023-06-11 09:53:54', '2023-06-11 09:53:54', 0, 0, 0, 0, 0, 0, 0, 0, 307, 0, 0, 0, 0, 9999999),
(308, '2023-06-11 13:17:26', '2023-06-11 13:17:26', 0, 0, 0, 0, 0, 0, 0, 0, 308, 0, 0, 0, 0, 9999999),
(309, '2023-06-11 13:21:53', '2023-09-21 06:13:25', 0, 101, 182, 5201, 5201, 6219, 6219, 10969, 309, 10962, 0, 0, 0, 9999999),
(310, '2023-06-11 16:58:05', '2023-06-11 17:02:13', 0, 0, 100, 0, 0, 0, 0, 0, 310, 0, 0, 0, 0, 9999999),
(311, '2023-06-12 09:59:24', '2023-06-12 09:59:24', 0, 0, 0, 0, 0, 0, 0, 0, 311, 0, 0, 0, 0, 9999999),
(312, '2023-06-15 04:31:13', '2023-06-15 04:46:11', 0, 0, 100, 0, 0, 0, 0, 0, 312, 0, 0, 0, 0, 9999999),
(313, '2023-06-16 03:05:06', '2023-06-16 03:29:38', 0, 0, 1120, 0, 0, 0, 0, 0, 313, 0, 0, 0, 0, 9999999),
(314, '2023-06-17 05:55:04', '2023-06-17 05:58:10', 0, 0, 500, 0, 0, 0, 0, 0, 314, 0, 0, 0, 0, 9999999),
(315, '2023-06-17 09:43:20', '2023-06-17 09:43:20', 0, 0, 0, 0, 0, 0, 0, 0, 315, 0, 0, 0, 0, 9999999),
(316, '2023-06-17 10:43:01', '2023-06-17 10:43:01', 0, 0, 0, 0, 0, 0, 0, 0, 316, 0, 0, 0, 0, 9999999),
(317, '2023-06-17 10:44:01', '2023-06-17 10:44:01', 0, 0, 0, 0, 0, 0, 0, 0, 317, 0, 0, 0, 0, 9999999),
(318, '2023-06-17 21:14:18', '2023-08-21 10:35:00', 25206, 3500, 300, 17050, 17050, 0, 25206, -1, 318, 0, 0, 15, 0, 9999999),
(319, '2023-06-18 13:29:52', '2023-06-18 13:29:52', 0, 0, 0, 0, 0, 0, 0, 0, 319, 0, 0, 0, 0, 9999999),
(320, '2023-06-18 16:59:42', '2023-06-18 16:59:42', 0, 0, 0, 0, 0, 0, 0, 0, 320, 0, 0, 0, 0, 9999999),
(321, '2023-06-18 17:43:30', '2023-06-18 17:43:30', 0, 0, 0, 0, 0, 0, 0, 0, 321, 0, 0, 0, 0, 9999999),
(322, '2023-06-18 17:55:19', '2023-06-18 17:55:19', 0, 0, 0, 0, 0, 0, 0, 0, 322, 0, 0, 0, 0, 9999999),
(323, '2023-06-18 18:00:25', '2023-06-18 18:00:25', 0, 0, 0, 0, 0, 0, 0, 0, 323, 0, 0, 0, 0, 9999999),
(324, '2023-06-18 18:08:04', '2023-06-18 18:08:04', 0, 0, 0, 0, 0, 0, 0, 0, 324, 0, 0, 0, 0, 9999999),
(325, '2023-06-18 18:13:52', '2023-06-18 18:13:52', 0, 0, 0, 0, 0, 0, 0, 0, 325, 0, 0, 0, 0, 9999999),
(326, '2023-06-18 18:15:10', '2023-06-18 18:15:10', 0, 0, 0, 0, 0, 0, 0, 0, 326, 0, 0, 0, 0, 9999999),
(327, '2023-06-18 18:21:54', '2023-06-18 18:21:54', 0, 0, 0, 0, 0, 0, 0, 0, 327, 0, 0, 0, 0, 9999999),
(328, '2023-06-18 18:23:42', '2023-06-18 18:23:42', 0, 0, 0, 0, 0, 0, 0, 0, 328, 0, 0, 0, 0, 9999999),
(329, '2023-06-18 18:36:01', '2023-06-18 18:36:01', 0, 0, 0, 0, 0, 0, 0, 0, 329, 0, 0, 0, 0, 9999999),
(330, '2023-06-18 18:36:17', '2023-06-18 18:36:17', 0, 0, 0, 0, 0, 0, 0, 0, 330, 0, 0, 0, 0, 9999999),
(331, '2023-06-18 18:51:47', '2023-06-18 18:51:47', 0, 0, 0, 0, 0, 0, 0, 0, 331, 0, 0, 0, 0, 9999999),
(332, '2023-06-18 19:07:44', '2023-06-18 19:08:27', 0, 0, 60000, 0, 0, 0, 0, 0, 332, 0, 0, 0, 0, 9999999),
(333, '2023-06-18 19:21:55', '2023-06-18 19:21:55', 0, 0, 0, 0, 0, 0, 0, 0, 333, 0, 0, 0, 0, 9999999),
(334, '2023-06-18 19:27:08', '2023-06-18 19:27:08', 0, 0, 0, 0, 0, 0, 0, 0, 334, 0, 0, 0, 0, 9999999),
(335, '2023-06-18 19:30:30', '2023-06-18 19:30:30', 0, 0, 0, 0, 0, 0, 0, 0, 335, 0, 0, 0, 0, 9999999),
(336, '2023-06-18 19:51:24', '2023-06-18 19:51:24', 0, 0, 0, 0, 0, 0, 0, 0, 336, 0, 0, 0, 0, 9999999),
(337, '2023-06-18 19:57:09', '2023-06-18 19:57:09', 0, 0, 0, 0, 0, 0, 0, 0, 337, 0, 0, 0, 0, 9999999),
(338, '2023-06-18 20:01:18', '2023-06-18 20:01:18', 0, 0, 0, 0, 0, 0, 0, 0, 338, 0, 0, 0, 0, 9999999),
(339, '2023-06-18 20:01:42', '2023-06-18 20:01:42', 0, 0, 0, 0, 0, 0, 0, 0, 339, 0, 0, 0, 0, 9999999),
(340, '2023-06-18 20:45:04', '2023-06-18 20:45:04', 0, 0, 0, 0, 0, 0, 0, 0, 340, 0, 0, 0, 0, 9999999),
(341, '2023-06-18 20:48:04', '2023-06-18 20:48:04', 0, 0, 0, 0, 0, 0, 0, 0, 341, 0, 0, 0, 0, 9999999),
(342, '2023-06-18 20:53:09', '2023-06-18 20:53:09', 0, 0, 0, 0, 0, 0, 0, 0, 342, 0, 0, 0, 0, 9999999),
(343, '2023-06-18 21:12:13', '2023-06-18 21:12:13', 0, 0, 0, 0, 0, 0, 0, 0, 343, 0, 0, 0, 0, 9999999),
(344, '2023-06-18 21:18:48', '2023-06-18 21:18:48', 0, 0, 0, 0, 0, 0, 0, 0, 344, 0, 0, 0, 0, 9999999),
(345, '2023-06-18 21:23:49', '2023-06-18 21:23:49', 0, 0, 0, 0, 0, 0, 0, 0, 345, 0, 0, 0, 0, 9999999),
(346, '2023-06-18 21:26:06', '2023-06-18 21:26:06', 0, 0, 0, 0, 0, 0, 0, 0, 346, 0, 0, 0, 0, 9999999),
(347, '2023-06-18 21:29:02', '2023-06-18 21:29:02', 0, 0, 0, 0, 0, 0, 0, 0, 347, 0, 0, 0, 0, 9999999),
(348, '2023-06-18 21:52:37', '2023-06-18 21:52:37', 0, 0, 0, 0, 0, 0, 0, 0, 348, 0, 0, 0, 0, 9999999),
(349, '2023-06-18 21:56:01', '2023-06-18 21:58:32', 0, 0, 200000, 0, 0, 0, 0, 0, 349, 0, 0, 0, 0, 9999999),
(350, '2023-06-18 22:02:08', '2023-06-18 22:02:08', 0, 0, 0, 0, 0, 0, 0, 0, 350, 0, 0, 0, 0, 9999999),
(351, '2023-06-18 22:03:30', '2023-06-18 22:03:30', 0, 0, 0, 0, 0, 0, 0, 0, 351, 0, 0, 0, 0, 9999999),
(352, '2023-06-18 22:03:32', '2023-06-18 22:03:32', 0, 0, 0, 0, 0, 0, 0, 0, 352, 0, 0, 0, 0, 9999999),
(353, '2023-06-18 23:19:31', '2023-06-18 23:19:31', 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, 0, 0, 0, 9999999),
(354, '2023-06-18 23:42:24', '2023-06-18 23:42:24', 0, 0, 0, 0, 0, 0, 0, 0, 354, 0, 0, 0, 0, 9999999),
(355, '2023-06-19 03:27:28', '2023-06-19 03:27:28', 0, 0, 0, 0, 0, 0, 0, 0, 355, 0, 0, 0, 0, 9999999),
(356, '2023-06-19 04:45:20', '2023-06-19 04:45:20', 0, 0, 0, 0, 0, 0, 0, 0, 356, 0, 0, 0, 0, 9999999),
(357, '2023-06-19 05:06:27', '2023-06-19 05:06:27', 0, 0, 0, 0, 0, 0, 0, 0, 357, 0, 0, 0, 0, 9999999),
(358, '2023-06-19 05:06:37', '2023-06-19 05:06:37', 0, 0, 0, 0, 0, 0, 0, 0, 358, 0, 0, 0, 0, 9999999),
(359, '2023-06-19 05:14:59', '2023-06-19 05:14:59', 0, 0, 0, 0, 0, 0, 0, 0, 359, 0, 0, 0, 0, 9999999),
(360, '2023-06-19 05:34:59', '2023-06-19 05:34:59', 0, 0, 0, 0, 0, 0, 0, 0, 360, 0, 0, 0, 0, 9999999),
(361, '2023-06-19 05:36:34', '2023-06-19 05:36:34', 0, 0, 0, 0, 0, 0, 0, 0, 361, 0, 0, 0, 0, 9999999),
(362, '2023-06-19 05:46:24', '2023-06-19 05:46:24', 0, 0, 0, 0, 0, 0, 0, 0, 362, 0, 0, 0, 0, 9999999),
(363, '2023-06-19 05:58:19', '2023-06-19 05:58:19', 0, 0, 0, 0, 0, 0, 0, 0, 363, 0, 0, 0, 0, 9999999),
(364, '2023-06-19 06:55:35', '2023-06-19 07:04:07', 0, 0, 10, 0, 0, 0, 0, 0, 364, 0, 0, 0, 0, 9999999),
(365, '2023-06-19 07:13:12', '2023-06-19 07:13:12', 0, 0, 0, 0, 0, 0, 0, 0, 365, 0, 0, 0, 0, 9999999),
(366, '2023-06-19 08:57:17', '2023-06-19 08:57:17', 0, 0, 0, 0, 0, 0, 0, 0, 366, 0, 0, 0, 0, 9999999),
(367, '2023-06-19 09:10:47', '2023-06-19 09:10:47', 0, 0, 0, 0, 0, 0, 0, 0, 367, 0, 0, 0, 0, 9999999),
(368, '2023-06-19 09:13:42', '2023-06-19 09:13:42', 0, 0, 0, 0, 0, 0, 0, 0, 368, 0, 0, 0, 0, 9999999),
(369, '2023-06-19 09:23:13', '2023-06-19 09:26:16', 0, 0, 500, 0, 0, 0, 0, 0, 369, 0, 0, 0, 0, 9999999),
(370, '2023-06-19 09:40:51', '2023-06-19 09:40:51', 0, 0, 0, 0, 0, 0, 0, 0, 370, 0, 0, 0, 0, 9999999),
(371, '2023-06-19 13:28:48', '2023-06-19 13:28:48', 0, 0, 0, 0, 0, 0, 0, 0, 371, 0, 0, 0, 0, 9999999),
(372, '2023-06-19 14:53:12', '2023-06-19 14:53:12', 0, 0, 0, 0, 0, 0, 0, 0, 372, 0, 0, 0, 0, 9999999),
(373, '2023-06-19 15:24:30', '2023-06-19 15:24:30', 0, 0, 0, 0, 0, 0, 0, 0, 373, 0, 0, 0, 0, 9999999),
(374, '2023-06-19 21:11:42', '2023-06-19 21:11:42', 0, 0, 0, 0, 0, 0, 0, 0, 374, 0, 0, 0, 0, 9999999),
(375, '2023-06-19 22:09:40', '2023-06-19 22:09:40', 0, 0, 0, 0, 0, 0, 0, 0, 375, 0, 0, 0, 0, 9999999),
(376, '2023-06-19 22:27:31', '2023-06-19 22:28:43', 0, 0, 1000, 0, 0, 0, 0, 0, 376, 0, 0, 0, 0, 9999999),
(377, '2023-06-20 03:53:58', '2023-06-20 03:56:21', 0, 0, 5000, 0, 0, 0, 0, 0, 377, 0, 0, 0, 0, 9999999),
(378, '2023-06-20 05:39:28', '2023-06-20 05:49:04', 0, 0, 200, 0, 0, 0, 0, 0, 378, 0, 0, 0, 0, 9999999),
(379, '2023-06-20 11:20:21', '2023-06-20 11:20:21', 0, 0, 0, 0, 0, 0, 0, 0, 379, 0, 0, 0, 0, 9999999),
(380, '2023-06-20 12:49:34', '2023-06-20 12:49:34', 0, 0, 0, 0, 0, 0, 0, 0, 380, 0, 0, 0, 0, 9999999),
(381, '2023-06-20 13:14:55', '2023-06-20 13:14:55', 0, 0, 0, 0, 0, 0, 0, 0, 381, 0, 0, 0, 0, 9999999),
(382, '2023-06-20 13:52:52', '2023-06-20 13:52:52', 0, 0, 0, 0, 0, 0, 0, 0, 382, 0, 0, 0, 0, 9999999),
(383, '2023-06-20 14:07:03', '2023-06-20 14:07:03', 0, 0, 0, 0, 0, 0, 0, 0, 383, 0, 0, 0, 0, 9999999),
(384, '2023-06-20 14:34:55', '2023-06-20 14:34:55', 0, 0, 0, 0, 0, 0, 0, 0, 384, 0, 0, 0, 0, 9999999),
(385, '2023-06-20 15:02:14', '2023-06-20 15:02:14', 0, 0, 0, 0, 0, 0, 0, 0, 385, 0, 0, 0, 0, 9999999),
(386, '2023-06-20 16:20:42', '2023-06-20 16:20:42', 0, 0, 0, 0, 0, 0, 0, 0, 386, 0, 0, 0, 0, 9999999),
(387, '2023-06-20 19:04:45', '2023-06-20 19:04:45', 0, 0, 0, 0, 0, 0, 0, 0, 387, 0, 0, 0, 0, 9999999),
(388, '2023-06-20 19:08:43', '2023-06-20 19:08:43', 0, 0, 0, 0, 0, 0, 0, 0, 388, 0, 0, 0, 0, 9999999),
(389, '2023-06-20 21:07:55', '2023-06-20 21:07:55', 0, 0, 0, 0, 0, 0, 0, 0, 389, 0, 0, 0, 0, 9999999),
(390, '2023-06-20 21:44:29', '2023-06-20 21:44:29', 0, 0, 0, 0, 0, 0, 0, 0, 390, 0, 0, 0, 0, 9999999),
(391, '2023-06-21 04:13:42', '2023-06-21 04:13:42', 0, 0, 0, 0, 0, 0, 0, 0, 391, 0, 0, 0, 0, 9999999),
(392, '2023-06-22 15:09:34', '2023-06-22 15:09:34', 0, 0, 0, 0, 0, 0, 0, 0, 392, 0, 0, 0, 0, 9999999),
(393, '2023-06-22 18:21:54', '2023-06-22 18:21:54', 0, 0, 0, 0, 0, 0, 0, 0, 393, 0, 0, 0, 0, 9999999),
(394, '2023-06-22 19:21:51', '2023-06-22 19:21:51', 0, 0, 0, 0, 0, 0, 0, 0, 394, 0, 0, 0, 0, 9999999),
(395, '2023-06-22 19:23:45', '2023-06-22 19:23:45', 0, 0, 0, 0, 0, 0, 0, 0, 395, 0, 0, 0, 0, 9999999),
(396, '2023-06-23 15:25:35', '2023-06-23 15:25:35', 0, 0, 0, 0, 0, 0, 0, 0, 396, 0, 0, 0, 0, 9999999),
(397, '2023-06-26 08:50:51', '2023-06-26 08:50:51', 0, 0, 0, 0, 0, 0, 0, 0, 397, 0, 0, 0, 0, 9999999),
(398, '2023-06-26 12:30:17', '2023-06-26 12:30:17', 0, 0, 0, 0, 0, 0, 0, 0, 398, 0, 0, 0, 0, 9999999),
(399, '2023-06-26 12:55:19', '2023-06-26 13:35:02', 6600, 6600, 64200, 0, 0, 0, 6600, 0, 399, 0, 0, 0, 0, 9999999),
(400, '2023-06-26 14:59:22', '2023-06-26 15:18:26', 0, 0, 1450, 0, 0, 0, 0, 0, 400, 0, 0, 0, 0, 9999999),
(401, '2023-06-27 02:26:03', '2023-06-27 02:26:03', 0, 0, 0, 0, 0, 0, 0, 0, 401, 0, 0, 0, 0, 9999999),
(402, '2023-06-27 08:23:00', '2023-06-27 08:23:00', 0, 0, 0, 0, 0, 0, 0, 0, 402, 0, 0, 0, 0, 9999999),
(403, '2023-06-27 18:20:19', '2023-06-27 18:20:19', 0, 0, 0, 0, 0, 0, 0, 0, 403, 0, 0, 0, 0, 9999999),
(404, '2023-06-27 21:29:58', '2023-06-27 21:32:42', 0, 0, 100, 0, 0, 0, 0, 0, 404, 0, 0, 0, 0, 9999999),
(405, '2023-06-28 07:02:17', '2023-06-28 07:02:17', 0, 0, 0, 0, 0, 0, 0, 0, 405, 0, 0, 0, 0, 9999999),
(406, '2023-06-28 08:33:58', '2023-06-28 08:33:58', 0, 0, 0, 0, 0, 0, 0, 0, 406, 0, 0, 0, 0, 9999999),
(407, '2023-07-02 13:08:03', '2023-07-02 13:09:22', 0, 0, 10, 0, 0, 0, 0, 0, 407, 0, 0, 0, 0, 9999999),
(408, '2023-07-05 16:14:42', '2023-07-05 16:14:42', 0, 0, 0, 0, 0, 0, 0, 0, 408, 0, 0, 0, 0, 9999999),
(409, '2023-07-12 17:14:43', '2023-07-12 17:14:43', 0, 0, 0, 0, 0, 0, 0, 0, 409, 0, 0, 0, 0, 9999999),
(410, '2023-07-13 06:16:57', '2023-07-13 06:16:57', 0, 0, 0, 0, 0, 0, 0, 0, 410, 0, 0, 0, 0, 9999999),
(411, '2023-07-14 10:15:04', '2023-07-14 10:15:04', 0, 0, 0, 0, 0, 0, 0, 0, 411, 0, 0, 0, 0, 9999999),
(412, '2023-07-17 10:15:07', '2023-07-17 10:15:07', 0, 0, 0, 0, 0, 0, 0, 0, 412, 0, 0, 0, 0, 9999999),
(413, '2023-07-17 13:53:32', '2023-07-17 13:53:32', 0, 0, 0, 0, 0, 0, 0, 0, 413, 0, 0, 0, 0, 9999999),
(414, '2023-07-18 04:31:20', '2023-07-28 10:53:38', 80, 100, 100, 80, 80, 100, 180, 16, 414, 16, 0, 0, 0, 9999999),
(415, '2023-07-18 04:50:08', '2023-07-31 01:37:17', 80, 100, 200, 180, 180, 100, 180, 64, 415, 64, 0, 0, 0, 9999999),
(416, '2023-07-26 08:43:46', '2023-07-26 08:43:46', 0, 0, 0, 0, 0, 0, 0, 0, 416, 0, 0, 0, 0, 9999999),
(417, '2023-07-26 12:36:28', '2023-07-26 12:36:28', 0, 0, 0, 0, 0, 0, 0, 0, 417, 0, 0, 0, 0, 9999999),
(418, '2023-07-26 20:51:48', '2023-08-01 13:21:19', 540, 300, 0, 540, 540, 0, 540, 0, 418, 0, 0, 0, 0, 9999999),
(419, '2023-07-27 15:29:58', '2023-07-28 10:24:29', 0, 0, 100, 0, 0, 0, 0, 0, 419, 0, 0, 0, 0, 9999999),
(420, '2023-07-28 08:08:36', '2023-07-28 08:13:13', 0, 0, 11000, 0, 0, 0, 0, 0, 420, 0, 0, 0, 0, 9999999),
(421, '2023-07-31 12:55:25', '2023-07-31 12:55:25', 0, 0, 0, 0, 0, 0, 0, 0, 421, 0, 0, 0, 0, 9999999),
(422, '2023-08-01 21:53:08', '2023-08-01 21:53:08', 0, 0, 0, 0, 0, 0, 0, 0, 422, 0, 0, 0, 0, 9999999),
(423, '2023-08-02 04:01:52', '2023-08-02 04:05:13', 0, 0, 300, 0, 0, 0, 0, 0, 423, 0, 0, 0, 0, 9999999),
(424, '2023-08-04 06:34:44', '2023-08-04 06:35:24', 0, 0, 500, 0, 0, 0, 0, 0, 424, 0, 0, 0, 0, 9999999),
(425, '2023-08-05 04:14:48', '2023-08-05 04:14:48', 0, 0, 0, 0, 0, 0, 0, 0, 425, 0, 0, 0, 0, 9999999),
(426, '2023-08-07 17:51:37', '2023-08-07 17:51:37', 0, 0, 0, 0, 0, 0, 0, 0, 426, 0, 0, 0, 0, 9999999),
(427, '2023-08-10 14:23:09', '2023-08-10 14:23:09', 0, 0, 0, 0, 0, 0, 0, 0, 427, 0, 0, 0, 0, 9999999),
(428, '2023-08-11 00:18:13', '2023-08-11 00:18:13', 0, 0, 0, 0, 0, 0, 0, 0, 428, 0, 0, 0, 0, 9999999),
(429, '2023-08-11 01:47:13', '2023-08-11 01:47:13', 0, 0, 0, 0, 0, 0, 0, 0, 429, 0, 0, 0, 0, 9999999),
(430, '2023-08-11 05:32:50', '2023-08-11 05:32:50', 0, 0, 0, 0, 0, 0, 0, 0, 430, 0, 0, 0, 0, 9999999),
(431, '2023-08-11 09:10:03', '2023-08-11 09:11:21', 0, 0, 500, 0, 0, 0, 0, 0, 431, 0, 0, 0, 0, 9999999),
(432, '2023-08-12 14:28:24', '2023-08-12 14:28:24', 0, 0, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 9999999),
(433, '2023-08-12 16:11:23', '2023-08-12 16:11:23', 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, 0, 0, 0, 9999999),
(434, '2023-08-12 16:14:00', '2023-08-12 16:14:00', 0, 0, 0, 0, 0, 0, 0, 0, 434, 0, 0, 0, 0, 9999999),
(435, '2023-08-15 03:37:54', '2023-08-15 03:37:54', 0, 0, 0, 0, 0, 0, 0, 0, 435, 0, 0, 0, 0, 9999999),
(436, '2023-08-15 16:09:26', '2023-08-15 16:09:26', 0, 0, 0, 0, 0, 0, 0, 0, 436, 0, 0, 0, 0, 9999999),
(437, '2023-08-19 00:38:21', '2023-08-19 00:38:21', 0, 0, 0, 0, 0, 0, 0, 0, 437, 0, 0, 0, 0, 9999999),
(438, '2023-08-23 16:13:43', '2023-08-24 03:22:18', 0, 0, 200, 0, 0, 0, 0, 0, 438, 0, 0, 0, 0, 9999999),
(439, '2023-08-24 06:46:29', '2023-08-24 06:52:40', 0, 0, 100, 0, 0, 0, 0, 0, 439, 0, 0, 0, 0, 9999999),
(440, '2023-08-24 14:39:21', '2023-08-24 14:39:21', 0, 0, 0, 0, 0, 0, 0, 0, 440, 0, 0, 0, 0, 9999999),
(441, '2023-08-24 15:28:45', '2023-08-30 15:32:56', 80, 100, 100, 180, 180, 100, 180, 0, 441, 0, 0, 0, 0, 9999999),
(442, '2023-08-25 21:21:35', '2023-09-03 21:39:46', 20, 500, 6895, 20, 20, 0, 20, 0, 442, 0, 0, 0, 0, 9999999),
(443, '2023-08-26 17:15:19', '2023-08-26 17:15:19', 0, 0, 0, 0, 0, 0, 0, 0, 443, 0, 0, 0, 0, 9999999),
(444, '2023-08-26 17:48:37', '2023-08-26 17:48:37', 0, 0, 0, 0, 0, 0, 0, 0, 444, 0, 0, 0, 0, 9999999),
(445, '2023-08-26 21:51:52', '2023-08-26 22:07:33', 0, 0, 10, 0, 0, 0, 0, 0, 445, 0, 0, 0, 0, 9999999),
(446, '2023-08-27 12:32:15', '2023-08-27 12:32:15', 0, 0, 0, 0, 0, 0, 0, 0, 446, 0, 0, 0, 0, 9999999),
(447, '2023-08-27 19:16:10', '2023-09-05 08:46:29', 180, 100, 0, 0, 0, 0, 180, 0, 447, 80, 0, 0, 0, 9999999),
(448, '2023-08-28 12:12:10', '2023-08-28 12:12:10', 0, 0, 0, 0, 0, 0, 0, 0, 448, 0, 0, 0, 0, 9999999),
(449, '2023-08-29 15:32:20', '2023-08-29 15:32:20', 0, 0, 0, 0, 0, 0, 0, 0, 449, 0, 0, 0, 0, 9999999),
(450, '2023-08-29 15:36:48', '2023-09-15 09:51:02', 0, 0, 0, 4, 4, 0, 0, 0, 450, 0, 0, 4, 0, 9999999),
(451, '2023-08-29 15:39:15', '2023-09-24 17:38:53', 85, 86, 448, 84, 84, 500, 585, 1440, 451, 1440, 0, 0, 0, 9999999),
(452, '2023-08-29 20:39:40', '2023-08-29 20:39:40', 0, 0, 0, 0, 0, 0, 0, 0, 452, 0, 0, 0, 0, 9999999),
(453, '2023-08-30 07:10:16', '2023-08-30 07:19:38', 0, 0, 5000, 0, 0, 0, 0, 0, 453, 0, 0, 0, 0, 9999999),
(454, '2023-08-30 09:23:50', '2023-08-30 09:23:50', 0, 0, 0, 0, 0, 0, 0, 0, 454, 0, 0, 0, 0, 9999999),
(455, '2023-08-30 10:52:42', '2023-08-30 10:55:15', 0, 0, 1, 0, 0, 0, 0, 0, 455, 0, 0, 0, 0, 9999999),
(456, '2023-08-30 11:39:25', '2023-09-24 12:14:44', 145, 92, 401, 280, 280, 700, 845, 896, 456, 896, 0, 0, 0, 9999999),
(457, '2023-08-30 22:10:24', '2023-08-30 22:10:24', 0, 0, 0, 0, 0, 0, 0, 0, 457, 0, 0, 0, 0, 9999999),
(458, '2023-08-31 04:47:18', '2023-08-31 04:47:18', 0, 0, 0, 0, 0, 0, 0, 0, 458, 0, 0, 0, 0, 9999999),
(459, '2023-08-31 08:26:31', '2023-08-31 08:40:50', 0, 0, 100, 0, 0, 0, 0, 0, 459, 0, 0, 0, 0, 9999999),
(460, '2023-08-31 13:59:55', '2023-09-01 12:26:02', 0, 20, 0, 0, 0, 0, 0, 0, 460, 0, 0, 0, 0, 9999999),
(461, '2023-08-31 15:22:23', '2023-08-31 15:38:16', 0, 0, 100, 0, 0, 0, 0, 0, 461, 0, 0, 0, 0, 9999999),
(462, '2023-08-31 16:58:25', '2023-08-31 16:58:25', 0, 0, 0, 0, 0, 0, 0, 0, 462, 0, 0, 0, 0, 9999999),
(463, '2023-08-31 17:54:36', '2023-09-05 09:05:08', 10, 0, 30, 10, 10, 0, 10, 0, 463, 0, 0, 0, 0, 9999999),
(464, '2023-08-31 18:21:46', '2023-08-31 18:21:46', 0, 0, 0, 0, 0, 0, 0, 0, 464, 0, 0, 0, 0, 9999999),
(465, '2023-08-31 18:34:37', '2023-08-31 18:34:37', 0, 0, 0, 0, 0, 0, 0, 0, 465, 0, 0, 0, 0, 9999999),
(466, '2023-08-31 20:24:46', '2023-09-22 13:06:00', 180, 100, 0, 380, 380, 0, 180, 0, 466, 0, 0, 0, 0, 9999999),
(467, '2023-08-31 20:30:42', '2023-08-31 20:31:40', 0, 0, 100, 0, 0, 0, 0, 0, 467, 0, 0, 0, 0, 9999999),
(468, '2023-08-31 21:15:55', '2023-09-24 13:11:49', 0, 921, 616, 501, 501, 500, 500, 1440, 468, 1440, 0, 0, 0, 9999999),
(469, '2023-09-01 00:10:08', '2023-09-14 11:55:42', 2, 437, 182, 726, 726, 0, 2, 0, 469, 0, 0, 5, 0, 9999999),
(470, '2023-09-01 00:32:18', '2023-09-24 13:47:43', 0, 585, 244, 160, 160, 505, 505, 1620, 470, 1620, 0, 0, 0, 9999999),
(471, '2023-09-01 02:50:09', '2023-09-01 02:52:27', 0, 0, 1000, 0, 0, 0, 0, 0, 471, 0, 0, 0, 0, 9999999),
(472, '2023-09-01 10:47:39', '2023-09-01 10:47:39', 0, 0, 0, 0, 0, 0, 0, 0, 472, 0, 0, 0, 0, 9999999),
(473, '2023-09-01 15:30:40', '2023-09-01 15:30:40', 0, 0, 0, 0, 0, 0, 0, 0, 473, 0, 0, 0, 0, 9999999),
(474, '2023-09-02 08:51:47', '2023-09-05 09:00:48', 4970, 5000, 0, 0, 0, 0, 4980, 0, 474, 0, 1, 0, 0, 9999999),
(475, '2023-09-03 05:17:40', '2023-09-03 05:17:40', 0, 0, 0, 0, 0, 0, 0, 0, 475, 0, 0, 0, 0, 9999999),
(476, '2023-09-03 07:57:01', '2023-09-03 07:57:42', 0, 0, 1000, 0, 0, 0, 0, 0, 476, 0, 0, 0, 0, 9999999),
(477, '2023-09-04 16:22:19', '2023-09-04 16:28:45', 0, 0, 100, 0, 0, 0, 0, 0, 477, 0, 0, 0, 0, 9999999),
(478, '2023-09-04 21:16:04', '2023-09-04 21:16:04', 0, 0, 0, 0, 0, 0, 0, 0, 478, 0, 0, 0, 0, 9999999),
(479, '2023-09-05 06:34:19', '2023-09-06 08:55:55', 0, 0, 5, 0, 0, 0, 0, 0, 479, 0, 0, 0, 0, 9999999),
(480, '2023-09-05 10:17:55', '2023-09-05 10:17:55', 0, 0, 0, 0, 0, 0, 0, 0, 480, 0, 0, 0, 0, 9999999);
INSERT INTO `funds` (`id`, `created_at`, `updated_at`, `balance`, `totaldepost`, `deposit_pending`, `pendingwithdrawal`, `totalwithdrawal`, `currentinvestment`, `totalbalance`, `currentprofit`, `userid`, `totalprofit`, `transfer`, `bonus`, `withdrawal_minimum`, `withdrawal_maximum`) VALUES
(481, '2023-09-05 10:57:44', '2023-09-05 10:57:44', 0, 0, 0, 0, 0, 0, 0, 0, 481, 0, 0, 0, 0, 9999999),
(482, '2023-09-05 11:47:08', '2023-09-05 11:47:08', 0, 0, 0, 0, 0, 0, 0, 0, 482, 0, 0, 0, 0, 9999999),
(483, '2023-09-05 13:07:14', '2023-09-21 20:55:47', 740, 700, 0, 120, 120, 0, 740, 0, 483, 0, 0, 0, 0, 9999999),
(484, '2023-09-05 21:00:05', '2023-09-06 13:56:32', 0, 0, 20, 0, 0, 0, 0, 0, 484, 0, 0, 0, 0, 9999999),
(485, '2023-09-05 21:32:28', '2023-09-05 21:36:45', 0, 0, 5000, 0, 0, 0, 0, 0, 485, 0, 0, 0, 0, 9999999),
(486, '2023-09-05 22:49:45', '2023-09-05 22:51:36', 0, 0, 5000, 0, 0, 0, 0, 0, 486, 0, 0, 0, 0, 9999999),
(487, '2023-09-06 07:42:12', '2023-09-06 07:42:12', 0, 0, 0, 0, 0, 0, 0, 0, 487, 0, 0, 0, 0, 9999999),
(488, '2023-09-06 14:43:47', '2023-09-06 14:43:47', 0, 0, 0, 0, 0, 0, 0, 0, 488, 0, 0, 0, 0, 9999999),
(489, '2023-09-07 13:51:05', '2023-09-07 13:57:40', 0, 0, 100, 0, 0, 0, 0, 0, 489, 0, 0, 0, 0, 9999999),
(490, '2023-09-07 16:43:24', '2023-09-07 16:43:24', 0, 0, 0, 0, 0, 0, 0, 0, 490, 0, 0, 0, 0, 9999999),
(491, '2023-09-08 00:05:10', '2023-09-08 00:06:04', 0, 0, 20, 0, 0, 0, 0, 0, 491, 0, 0, 0, 0, 9999999),
(492, '2023-09-08 06:36:43', '2023-09-08 06:44:08', 0, 0, 100, 0, 0, 0, 0, 0, 492, 0, 0, 0, 0, 9999999),
(493, '2023-09-08 06:55:19', '2023-09-08 06:55:19', 0, 0, 0, 0, 0, 0, 0, 0, 493, 0, 0, 0, 0, 9999999),
(494, '2023-09-08 15:56:39', '2023-09-08 15:56:39', 0, 0, 0, 0, 0, 0, 0, 0, 494, 0, 0, 0, 0, 9999999),
(495, '2023-09-08 20:12:04', '2023-09-08 20:12:04', 0, 0, 0, 0, 0, 0, 0, 0, 495, 0, 0, 0, 0, 9999999),
(496, '2023-09-09 01:53:33', '2023-09-09 01:53:33', 0, 0, 0, 0, 0, 0, 0, 0, 496, 0, 0, 0, 0, 9999999),
(497, '2023-09-09 04:34:24', '2023-09-23 03:21:02', 0, 500, 500, 0, 0, 500, 500, 2080, 497, 2080, 0, 0, 0, 9999999),
(498, '2023-09-09 20:38:33', '2023-09-09 20:38:33', 0, 0, 0, 0, 0, 0, 0, 0, 498, 0, 0, 0, 0, 9999999),
(499, '2023-09-09 21:50:41', '2023-09-09 21:50:41', 0, 0, 0, 0, 0, 0, 0, 0, 499, 0, 0, 0, 0, 9999999),
(500, '2023-09-09 23:19:43', '2023-09-09 23:24:25', 0, 0, 40, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 9999999),
(501, '2023-09-09 23:30:00', '2023-09-09 23:30:00', 0, 0, 0, 0, 0, 0, 0, 0, 501, 0, 0, 0, 0, 9999999),
(502, '2023-09-10 07:11:50', '2023-09-17 06:32:54', 180, 100, 102, 180, 180, 0, 180, 0, 502, 0, 0, 0, 0, 9999999),
(503, '2023-09-10 07:53:16', '2023-09-10 07:53:16', 0, 0, 0, 0, 0, 0, 0, 0, 503, 0, 0, 0, 0, 9999999),
(504, '2023-09-11 19:53:01', '2023-09-11 19:53:01', 0, 0, 0, 0, 0, 0, 0, 0, 504, 0, 0, 0, 0, 9999999),
(505, '2023-09-14 08:08:46', '2023-09-14 08:08:46', 0, 0, 0, 0, 0, 0, 0, 0, 505, 0, 0, 0, 0, 9999999),
(506, '2023-09-15 14:35:23', '2023-09-15 14:41:23', 0, 0, 850, 0, 0, 0, 0, 0, 506, 0, 0, 0, 0, 9999999),
(507, '2023-09-16 16:35:38', '2023-09-16 16:35:38', 0, 0, 0, 0, 0, 0, 0, 0, 507, 0, 0, 0, 0, 9999999),
(508, '2023-09-16 16:43:31', '2023-09-16 16:43:31', 0, 0, 0, 0, 0, 0, 0, 0, 508, 0, 0, 0, 0, 9999999),
(509, '2023-09-16 16:47:35', '2023-09-16 16:47:35', 0, 0, 0, 0, 0, 0, 0, 0, 509, 0, 0, 0, 0, 9999999),
(510, '2023-09-16 16:51:13', '2023-09-22 10:00:07', 1100, 2000, 0, 400, 400, 500, 1700, 160, 510, 160, 0, 0, 0, 9999999),
(511, '2023-09-16 16:57:29', '2023-09-16 16:57:29', 0, 0, 0, 0, 0, 0, 0, 0, 511, 0, 0, 0, 0, 9999999),
(512, '2023-09-16 23:28:16', '2023-09-16 23:28:16', 0, 0, 0, 0, 0, 0, 0, 0, 512, 0, 0, 0, 0, 9999999),
(513, '2023-09-17 00:56:49', '2023-09-17 00:56:49', 0, 0, 0, 0, 0, 0, 0, 0, 513, 0, 0, 0, 0, 9999999),
(514, '2023-09-17 04:54:10', '2023-09-17 04:54:10', 0, 0, 0, 0, 0, 0, 0, 0, 514, 0, 0, 0, 0, 9999999),
(515, '2023-09-17 05:39:58', '2023-09-17 05:39:58', 0, 0, 0, 0, 0, 0, 0, 0, 515, 0, 0, 0, 0, 9999999),
(516, '2023-09-17 06:15:32', '2023-09-17 06:15:32', 0, 0, 0, 0, 0, 0, 0, 0, 516, 0, 0, 0, 0, 9999999),
(517, '2023-09-17 06:40:30', '2023-09-17 06:43:28', 0, 0, 500, 0, 0, 0, 0, 0, 517, 0, 0, 0, 0, 9999999),
(518, '2023-09-17 09:35:57', '2023-09-17 09:45:37', 0, 0, 270, 0, 0, 0, 0, 0, 518, 0, 0, 0, 0, 9999999),
(519, '2023-09-17 10:44:32', '2023-09-21 23:58:06', 0, 0, 0, 5, 5, 0, 0, 0, 519, 0, 0, 5, 0, 9999999),
(520, '2023-09-17 14:14:01', '2023-09-17 14:14:01', 0, 0, 0, 0, 0, 0, 0, 0, 520, 0, 0, 0, 0, 9999999),
(521, '2023-09-18 00:21:51', '2023-09-18 00:21:51', 0, 0, 0, 0, 0, 0, 0, 0, 521, 0, 0, 0, 0, 9999999),
(522, '2023-09-18 09:13:41', '2023-09-18 09:13:41', 0, 0, 0, 0, 0, 0, 0, 0, 522, 0, 0, 0, 0, 9999999),
(523, '2023-09-18 13:37:14', '2023-09-23 15:14:37', 180, 100, 200, 180, 180, 0, 180, 0, 523, 0, 0, 0, 0, 9999999),
(524, '2023-09-18 17:21:22', '2023-09-18 17:21:22', 0, 0, 0, 0, 0, 0, 0, 0, 524, 0, 0, 0, 0, 9999999),
(525, '2023-09-19 20:29:55', '2023-09-21 14:32:29', 0, 0, 100, 0, 0, 0, 0, 0, 525, 0, 0, 0, 0, 9999999),
(526, '2023-09-20 07:07:12', '2023-09-20 07:17:19', 0, 0, 100, 0, 0, 0, 0, 0, 526, 0, 0, 0, 0, 9999999),
(527, '2023-09-20 09:17:08', '2023-09-20 09:17:08', 0, 0, 0, 0, 0, 0, 0, 0, 527, 0, 0, 0, 0, 9999999),
(528, '2023-09-20 10:19:32', '2023-09-20 10:19:32', 0, 0, 0, 0, 0, 0, 0, 0, 528, 0, 0, 0, 0, 9999999),
(529, '2023-09-20 12:51:21', '2023-09-20 12:51:21', 0, 0, 0, 0, 0, 0, 0, 0, 529, 0, 0, 0, 0, 9999999),
(530, '2023-09-21 05:35:47', '2023-09-21 05:41:48', 0, 0, 2600, 0, 0, 0, 0, 0, 530, 0, 0, 0, 0, 9999999),
(531, '2023-09-21 08:19:52', '2023-09-21 08:19:52', 0, 0, 0, 0, 0, 0, 0, 0, 531, 0, 0, 0, 0, 9999999),
(532, '2023-09-21 11:02:37', '2023-09-21 16:44:57', 0, 0, 100, 0, 0, 0, 0, 0, 532, 0, 0, 0, 0, 9999999),
(533, '2023-09-21 16:38:15', '2023-09-21 16:38:15', 0, 0, 0, 0, 0, 0, 0, 0, 533, 0, 0, 0, 0, 9999999),
(534, '2023-09-21 18:49:06', '2023-09-21 18:49:06', 0, 0, 0, 0, 0, 0, 0, 0, 534, 0, 0, 0, 0, 9999999),
(535, '2023-09-22 01:59:50', '2023-09-24 09:37:21', 0, 100, 100, 0, 0, 100, 100, 0, 535, 0, 0, 0, 0, 9999999),
(536, '2023-09-22 04:25:02', '2023-09-22 04:25:02', 0, 0, 0, 0, 0, 0, 0, 0, 536, 0, 0, 0, 0, 9999999),
(537, '2023-09-22 05:51:21', '2023-09-22 06:15:45', 0, 0, 100, 0, 0, 0, 0, 0, 537, 0, 0, 0, 0, 9999999),
(538, '2023-09-22 13:20:32', '2023-09-22 13:20:32', 0, 0, 0, 0, 0, 0, 0, 0, 538, 0, 0, 0, 0, 9999999),
(539, '2023-09-22 15:49:52', '2023-09-22 15:50:59', 0, 0, 1760, 0, 0, 0, 0, 0, 539, 0, 0, 0, 0, 9999999),
(540, '2023-09-23 05:27:57', '2023-09-23 05:27:57', 0, 0, 0, 0, 0, 0, 0, 0, 540, 0, 0, 0, 0, 9999999),
(541, '2023-09-23 08:53:06', '2023-09-23 09:02:47', 0, 0, 100, 0, 0, 0, 0, 0, 541, 0, 0, 0, 0, 9999999),
(542, '2023-09-23 13:45:08', '2023-09-23 13:45:08', 0, 0, 0, 0, 0, 0, 0, 0, 542, 0, 0, 0, 0, 9999999),
(543, '2023-09-24 00:33:28', '2023-09-24 00:33:28', 0, 0, 0, 0, 0, 0, 0, 0, 543, 0, 0, 0, 0, 9999999),
(544, '2023-09-24 11:02:09', '2023-09-24 11:02:09', 0, 0, 0, 0, 0, 0, 0, 0, 544, 0, 0, 0, 0, 9999999),
(545, '2023-09-24 11:18:40', '2023-09-24 11:18:40', 0, 0, 0, 0, 0, 0, 0, 0, 545, 0, 0, 0, 0, 9999999),
(546, '2023-09-24 12:00:24', '2023-09-24 12:00:24', 0, 0, 0, 0, 0, 0, 0, 0, 546, 0, 0, 0, 0, 9999999),
(547, '2023-09-24 12:42:08', '2023-09-24 12:42:08', 0, 0, 0, 0, 0, 0, 0, 0, 547, 0, 0, 0, 0, 9999999),
(548, '2023-09-24 15:46:37', '2023-09-24 15:46:37', 0, 0, 0, 0, 0, 0, 0, 0, 548, 0, 0, 0, 0, 9999999);

-- --------------------------------------------------------

--
-- Table structure for table `investmentplans`
--

CREATE TABLE `investmentplans` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `duration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `durationunit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `refpercent` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum` int NOT NULL,
  `maximum` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `repeat` int NOT NULL DEFAULT '0',
  `noofrepeat` int NOT NULL DEFAULT '0',
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `investmentplans`
--

INSERT INTO `investmentplans` (`id`, `created_at`, `updated_at`, `duration`, `durationunit`, `refpercent`, `percentage`, `minimum`, `maximum`, `name`, `repeat`, `noofrepeat`, `type`) VALUES
(6, '2022-12-16 07:46:39', '2022-12-17 14:57:38', '1', '24', '5', '16', 100, 499, 'ACADEMIC PLAN', 1, 5, 'crypto plans'),
(7, '2022-12-16 07:53:46', '2022-12-17 15:01:06', '1', '24', '10', '32', 500, 5000, 'BASIC PLAN', 1, 30, 'crypto plans'),
(8, '2022-12-16 08:02:40', '2022-12-17 15:04:58', '1', '24', '15', '64', 5001, 15000, 'SUPREME PLAN', 1, 30, 'crypto plans'),
(10, '2022-12-16 08:07:10', '2022-12-17 15:05:52', '1', '24', '25', '90', 40001, 99999, 'V.I.P PLAN', 1, 30, 'crypto plans'),
(9, '2022-12-16 08:04:33', '2022-12-17 15:06:26', '1', '24', '25', '130.3', 15001, 40000, 'OIL AND GAS PLAN', 1, 30, 'crypto plans');

-- --------------------------------------------------------

--
-- Table structure for table `investments`
--

CREATE TABLE `investments` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `investmentplan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `investmentpercent` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `investmentdate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `investmentduration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `investmentprofit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `investmenttotalprofit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `investmentmaturitydate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `investmentamount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `investmentStatus` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` int NOT NULL,
  `nooftimes` int NOT NULL,
  `gotteninvestmentprofit` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `investments`
--

INSERT INTO `investments` (`id`, `created_at`, `updated_at`, `investmentplan`, `investmentpercent`, `investmentdate`, `investmentduration`, `investmentprofit`, `investmenttotalprofit`, `investmentmaturitydate`, `investmentamount`, `investmentStatus`, `stage`, `type`, `userid`, `nooftimes`, `gotteninvestmentprofit`) VALUES
(1, '2022-10-24 13:43:12', '2023-09-01 17:56:19', 'ACADEMIC PLAN', '0.53', '2022-10-24 14:43:12', '21600', '0.53', '115.9', '2025-04-11 14:43:12', '100', '0', '{\"10\":\"2023-09-19T14:43:12.913191Z\",\"11\":\"2023-10-19T14:43:12.913208Z\",\"12\":\"2023-11-18T14:43:12.913225Z\",\"13\":\"2023-12-18T14:43:12.913242Z\",\"14\":\"2024-01-17T14:43:12.913260Z\",\"15\":\"2024-02-16T14:43:12.913277Z\",\"16\":\"2024-03-17T14:43:12.913295Z\",\"17\":\"2024-04-16T14:43:12.913313Z\",\"18\":\"2024-05-16T14:43:12.913330Z\",\"19\":\"2024-06-15T14:43:12.913347Z\",\"20\":\"2024-07-15T14:43:12.913364Z\",\"21\":\"2024-08-14T14:43:12.913382Z\",\"22\":\"2024-09-13T14:43:12.913399Z\",\"23\":\"2024-10-13T14:43:12.913416Z\",\"24\":\"2024-11-12T14:43:12.913434Z\",\"25\":\"2024-12-12T14:43:12.913451Z\",\"26\":\"2025-01-11T14:43:12.913468Z\",\"27\":\"2025-02-10T14:43:12.913486Z\",\"28\":\"2025-03-12T14:43:12.913503Z\",\"29\":\"2025-04-11T14:43:12.913521Z\"}', 'crypto plans', 7, 30, 10),
(64, '2023-05-22 14:38:40', '2023-06-22 11:25:06', 'BASIC PLAN', '32', '2023-05-22 15:38:40', '720', '160', '5300', '2023-06-21 15:38:40', '500', '1', '{}', 'crypto plans', 205, 30, 4800),
(45, '2023-05-01 16:33:47', '2023-05-06 20:40:08', 'ACADEMIC PLAN', '16', '2023-05-01 17:33:47', '120', '16', '180', '2023-05-06 17:33:47', '100', '1', '{}', 'crypto plans', 164, 5, 80),
(2, '2022-10-24 13:43:54', '2022-12-09 02:56:09', 'SUPREME PLAN', '2.13', '2022-10-24 14:43:54', '900', '213', '16390', '2022-12-01 02:43:54', '10000', '1', '{}', 'crypto plans', 7, 30, 6390),
(9, '2022-11-19 19:55:34', '2023-04-09 11:00:48', 'BASIC PLAN', '1.07', '2022-11-19 20:55:34', '900', '10.7', '1321', '2022-12-27 08:55:34', '1000', '1', '{}', 'crypto plans', 46, 30, 321),
(3, '2022-10-29 11:16:28', '2022-12-06 11:20:11', 'BASIC PLAN', '1.07', '2022-10-29 12:16:28', '900', '5.35', '660.5', '2022-12-06 00:16:28', '500', '1', '{}', 'crypto plans', 19, 30, 154),
(58, '2023-05-15 12:54:18', '2023-05-20 15:00:49', 'ACADEMIC PLAN', '16', '2023-05-15 13:54:18', '120', '32', '360', '2023-05-20 13:54:18', '200', '1', '{}', 'crypto plans', 205, 5, 160),
(50, '2023-05-14 10:28:22', '2023-05-19 11:35:51', 'ACADEMIC PLAN', '16', '2023-05-14 11:28:22', '120', '16', '180', '2023-05-19 11:28:22', '100', '1', '{}', 'crypto plans', 186, 5, 80),
(15, '2022-12-13 21:15:03', '2023-01-28 04:38:23', 'BASIC PLAN', '1.07', '2022-12-13 22:15:03', '900', '21.4', '2642', '2023-01-20 10:15:03', '2000', '1', '{}', 'crypto plans', 65, 30, 642),
(27, '2023-02-03 08:42:56', '2023-02-08 09:18:21', 'ACADEMIC PLAN', '16', '2023-02-03 09:42:56', '120', '32', '360', '2023-02-08 09:42:56', '200', '1', '{}', 'crypto plans', 110, 5, 160),
(48, '2023-05-10 15:22:35', '2023-06-09 15:29:21', 'V.I.P PLAN', '90', '2023-05-10 16:22:35', '720', '37800', '1176000', '2023-06-09 16:22:35', '42000', '1', '{}', 'crypto plans', 75, 30, 1134000),
(11, '2022-11-28 19:56:11', '2023-01-22 23:16:37', 'OIL AND GAS PLAN', '3', '2022-11-28 20:56:11', '900', '900', '57000', '2023-01-05 08:56:11', '30000', '1', '{}', 'crypto plans', 21, 30, 27000),
(8, '2022-11-18 04:01:57', '2022-11-24 05:34:12', 'SUPREME PLAN', '2.13', '2022-11-18 05:01:57', '900', '213', '16390', '2022-12-25 17:01:57', '10000', '0', '{\"4\":\"2022-11-24T11:01:57.874833Z\",\"5\":\"2022-11-25T17:01:57.874849Z\",\"6\":\"2022-11-26T23:01:57.874865Z\",\"7\":\"2022-11-28T05:01:57.874881Z\",\"8\":\"2022-11-29T11:01:57.874897Z\",\"9\":\"2022-11-30T17:01:57.874913Z\",\"10\":\"2022-12-01T23:01:57.874929Z\",\"11\":\"2022-12-03T05:01:57.874944Z\",\"12\":\"2022-12-04T11:01:57.874959Z\",\"13\":\"2022-12-05T17:01:57.874988Z\",\"14\":\"2022-12-06T23:01:57.875003Z\",\"15\":\"2022-12-08T05:01:57.875019Z\",\"16\":\"2022-12-09T11:01:57.875033Z\",\"17\":\"2022-12-10T17:01:57.875048Z\",\"18\":\"2022-12-11T23:01:57.875063Z\",\"19\":\"2022-12-13T05:01:57.875077Z\",\"20\":\"2022-12-14T11:01:57.875092Z\",\"21\":\"2022-12-15T17:01:57.875107Z\",\"22\":\"2022-12-16T23:01:57.875122Z\",\"23\":\"2022-12-18T05:01:57.875137Z\",\"24\":\"2022-12-19T11:01:57.875152Z\",\"25\":\"2022-12-20T17:01:57.875167Z\",\"26\":\"2022-12-21T23:01:57.875182Z\",\"27\":\"2022-12-23T05:01:57.875196Z\",\"28\":\"2022-12-24T11:01:57.875211Z\",\"29\":\"2022-12-25T17:01:57.875226Z\"}', 'crypto plans', 44, 30, 852),
(4, '2022-10-29 18:50:27', '2022-12-06 11:20:11', 'BASIC PLAN', '1.07', '2022-10-29 19:50:27', '900', '10.7', '1321', '2022-12-06 07:50:27', '1000', '1', '{}', 'crypto plans', 19, 30, 324),
(42, '2023-04-10 12:30:50', '2023-05-10 12:38:03', 'SUPREME PLAN', '64', '2023-04-10 13:30:50', '720', '3392', '107060', '2023-05-10 13:30:50', '5300', '1', '{}', 'crypto plans', 75, 30, 101760),
(12, '2022-11-29 07:53:56', '2022-12-08 17:00:10', 'OIL AND GAS PLAN', '3', '2022-11-29 08:53:56', '900', '600', '38000', '2023-01-05 20:53:56', '20000', '0', '{\"7\":\"2022-12-09T08:53:56.216381Z\",\"8\":\"2022-12-10T14:53:56.216397Z\",\"9\":\"2022-12-11T20:53:56.216414Z\",\"10\":\"2022-12-13T02:53:56.216430Z\",\"11\":\"2022-12-14T08:53:56.216445Z\",\"12\":\"2022-12-15T14:53:56.216460Z\",\"13\":\"2022-12-16T20:53:56.216476Z\",\"14\":\"2022-12-18T02:53:56.216491Z\",\"15\":\"2022-12-19T08:53:56.216519Z\",\"16\":\"2022-12-20T14:53:56.216535Z\",\"17\":\"2022-12-21T20:53:56.216550Z\",\"18\":\"2022-12-23T02:53:56.216565Z\",\"19\":\"2022-12-24T08:53:56.216579Z\",\"20\":\"2022-12-25T14:53:56.216594Z\",\"21\":\"2022-12-26T20:53:56.216608Z\",\"22\":\"2022-12-28T02:53:56.216623Z\",\"23\":\"2022-12-29T08:53:56.216638Z\",\"24\":\"2022-12-30T14:53:56.216653Z\",\"25\":\"2022-12-31T20:53:56.216667Z\",\"26\":\"2023-01-02T02:53:56.216682Z\",\"27\":\"2023-01-03T08:53:56.216697Z\",\"28\":\"2023-01-04T14:53:56.216711Z\",\"29\":\"2023-01-05T20:53:56.216726Z\"}', 'crypto plans', 25, 30, 4200),
(46, '2023-05-01 18:28:56', '2023-05-31 18:30:01', 'SUPREME PLAN', '64', '2023-05-01 19:28:56', '720', '3392', '107060', '2023-05-31 19:28:56', '5300', '1', '{}', 'crypto plans', 135, 30, 101760),
(10, '2022-11-20 15:02:29', '2023-01-04 13:32:55', 'BASIC PLAN', '1.07', '2022-11-20 16:02:29', '900', '28.89', '3566.7', '2022-12-28 04:02:29', '2700', '1', '{}', 'crypto plans', 47, 30, 867),
(7, '2022-11-17 17:32:39', '2022-12-15 07:01:08', 'ACADEMIC PLAN', '3.2', '2022-11-17 18:32:39', '600', '3.2', '116', '2022-12-12 18:32:39', '100', '1', '{}', 'crypto plans', 24, 5, 15),
(6, '2022-11-10 09:15:11', '2022-11-21 19:45:25', 'ACADEMIC PLAN', '3.2', '2022-11-10 10:15:11', '600', '3.2', '116', '2022-12-05 10:15:11', '100', '0', '{\"2\":\"2022-11-25T10:15:11.809187Z\",\"3\":\"2022-11-30T10:15:11.809205Z\",\"4\":\"2022-12-05T10:15:11.809222Z\"}', 'crypto plans', 32, 5, 6),
(5, '2022-11-02 09:31:18', '2023-02-22 07:53:54', 'ACADEMIC PLAN', '3.2', '2022-11-02 10:31:18', '600', '3.2', '116', '2022-11-27 10:31:18', '100', '1', '[]', 'crypto plans', 26, 5, 16),
(70, '2023-05-31 08:08:51', '2023-06-30 09:09:39', 'BASIC PLAN', '32', '2023-05-31 09:08:51', '720', '160', '5300', '2023-06-30 09:08:51', '500', '1', '{}', 'crypto plans', 180, 30, 4800),
(47, '2023-05-06 16:24:31', '2023-06-07 08:36:36', 'SUPREME PLAN', '64', '2023-05-06 17:24:31', '720', '6400', '202000', '2023-06-05 17:24:31', '10000', '1', '[]', 'crypto plans', 48, 30, 192000),
(72, '2023-05-31 23:04:22', '2023-06-04 06:24:58', 'BASIC PLAN', '32', '2023-06-01 00:04:22', '720', '160', '5300', '2023-07-01 00:04:22', '500', '0', '{\"3\":\"2023-06-05T00:04:22.899535Z\",\"4\":\"2023-06-06T00:04:22.899556Z\",\"5\":\"2023-06-07T00:04:22.899581Z\",\"6\":\"2023-06-08T00:04:22.899599Z\",\"7\":\"2023-06-09T00:04:22.899623Z\",\"8\":\"2023-06-10T00:04:22.899641Z\",\"9\":\"2023-06-11T00:04:22.899659Z\",\"10\":\"2023-06-12T00:04:22.899676Z\",\"11\":\"2023-06-13T00:04:22.899693Z\",\"12\":\"2023-06-14T00:04:22.899710Z\",\"13\":\"2023-06-15T00:04:22.899726Z\",\"14\":\"2023-06-16T00:04:22.899743Z\",\"15\":\"2023-06-17T00:04:22.899765Z\",\"16\":\"2023-06-18T00:04:22.899782Z\",\"17\":\"2023-06-19T00:04:22.899814Z\",\"18\":\"2023-06-20T00:04:22.899830Z\",\"19\":\"2023-06-21T00:04:22.899846Z\",\"20\":\"2023-06-22T00:04:22.899863Z\",\"21\":\"2023-06-23T00:04:22.899879Z\",\"22\":\"2023-06-24T00:04:22.899895Z\",\"23\":\"2023-06-25T00:04:22.899916Z\",\"24\":\"2023-06-26T00:04:22.899933Z\",\"25\":\"2023-06-27T00:04:22.899961Z\",\"26\":\"2023-06-28T00:04:22.899979Z\",\"27\":\"2023-06-29T00:04:22.899995Z\",\"28\":\"2023-06-30T00:04:22.900011Z\",\"29\":\"2023-07-01T00:04:22.900028Z\"}', 'crypto plans', 203, 30, 480),
(65, '2023-05-23 01:43:30', '2023-05-28 02:04:28', 'ACADEMIC PLAN', '16', '2023-05-23 02:43:30', '120', '76.8', '864', '2023-05-28 02:43:30', '480', '1', '{}', 'crypto plans', 246, 5, 385),
(43, '2023-04-19 07:26:58', '2023-04-24 12:07:20', 'ACADEMIC PLAN', '16', '2023-04-19 08:26:58', '120', '16', '180', '2023-04-24 08:26:58', '100', '1', '{}', 'crypto plans', 156, 5, 80),
(60, '2023-05-18 20:15:42', '2023-05-24 13:38:27', 'ACADEMIC PLAN', '16', '2023-05-18 21:15:42', '120', '20', '225', '2023-05-23 21:15:42', '125', '1', '{}', 'crypto plans', 211, 5, 100),
(23, '2023-01-22 11:39:19', '2023-01-27 11:50:56', 'ACADEMIC PLAN', '16', '2023-01-22 12:39:19', '120', '16', '180', '2023-01-27 12:39:19', '100', '1', '{}', 'crypto plans', 86, 5, 80),
(18, '2022-12-17 10:01:22', '2023-04-15 18:09:32', 'ACADEMIC PLAN', '3.2', '2022-12-17 11:01:22', '120', '3.2', '116', '2022-12-22 11:01:22', '100', '1', '[]', 'crypto plans', 70, 5, 16),
(17, '2022-12-16 08:03:24', '2023-04-15 18:09:32', 'ACADEMIC PLAN', '3.2', '2022-12-16 09:03:24', '120', '3.2', '116', '2022-12-21 09:03:24', '100', '1', '{}', 'crypto plans', 70, 5, 16),
(16, '2022-12-15 05:51:02', '2023-04-15 18:09:32', 'ACADEMIC PLAN', '3.2', '2022-12-15 06:51:02', '600', '3.2', '116', '2023-01-09 06:51:02', '100', '1', '[]', 'crypto plans', 70, 5, 16),
(14, '2022-12-12 19:42:03', '2023-02-12 12:33:37', 'BASIC PLAN', '1.07', '2022-12-12 20:42:03', '900', '5.35', '660.5', '2023-01-19 08:42:03', '500', '1', '{}', 'crypto plans', 66, 30, 160),
(34, '2023-02-12 12:35:21', '2023-03-25 13:31:38', 'SUPREME PLAN', '64', '2023-02-12 13:35:21', '720', '4480', '141400', '2023-03-14 13:35:21', '7000', '1', '[]', 'crypto plans', 48, 30, 134400),
(80, '2023-06-21 13:21:05', '2023-07-22 00:58:21', 'BASIC PLAN', '32', '2023-06-21 14:21:05', '720', '749.44', '24825.2', '2023-07-21 14:21:05', '2342', '1', '{}', 'crypto plans', 196, 30, 22482),
(44, '2023-04-24 12:46:49', '2023-05-25 01:09:03', 'BASIC PLAN', '32', '2023-04-24 13:46:49', '720', '160', '5300', '2023-05-24 13:46:49', '500', '1', '{}', 'crypto plans', 156, 30, 4800),
(24, '2023-01-22 13:17:52', '2023-01-27 16:29:20', 'ACADEMIC PLAN', '16', '2023-01-22 14:17:52', '120', '16', '180', '2023-01-27 14:17:52', '100', '1', '{}', 'crypto plans', 43, 5, 80),
(21, '2022-12-23 07:59:47', '2023-02-17 19:58:52', 'V.I.P PLAN', '90', '2022-12-23 08:59:47', '720', '74700', '2324000', '2023-01-22 08:59:47', '83000', '1', '{}', 'crypto plans', 18, 30, 2241000),
(22, '2023-01-22 10:57:44', '2023-03-01 10:37:21', 'BASIC PLAN', '32', '2023-01-22 11:57:44', '720', '256', '8480', '2023-02-21 11:57:44', '800', '1', '{}', 'crypto plans', 98, 30, 7680),
(52, '2023-05-14 11:12:33', '2023-05-19 13:40:33', 'ACADEMIC PLAN', '16', '2023-05-14 12:12:33', '120', '16', '180', '2023-05-19 12:12:33', '100', '1', '{}', 'crypto plans', 190, 5, 80),
(62, '2023-05-19 14:19:34', '2023-06-04 06:26:26', 'BASIC PLAN', '32', '2023-05-19 15:19:34', '720', '160', '5300', '2023-06-18 15:19:34', '500', '0', '{\"15\":\"2023-06-04T15:19:34.891129Z\",\"16\":\"2023-06-05T15:19:34.891146Z\",\"17\":\"2023-06-06T15:19:34.891164Z\",\"18\":\"2023-06-07T15:19:34.891181Z\",\"19\":\"2023-06-08T15:19:34.891198Z\",\"20\":\"2023-06-09T15:19:34.891215Z\",\"21\":\"2023-06-10T15:19:34.891232Z\",\"22\":\"2023-06-11T15:19:34.891249Z\",\"23\":\"2023-06-12T15:19:34.891267Z\",\"24\":\"2023-06-13T15:19:34.891284Z\",\"25\":\"2023-06-14T15:19:34.891302Z\",\"26\":\"2023-06-15T15:19:34.891320Z\",\"27\":\"2023-06-16T15:19:34.891337Z\",\"28\":\"2023-06-17T15:19:34.891354Z\",\"29\":\"2023-06-18T15:19:34.891371Z\"}', 'crypto plans', 190, 30, 2400),
(13, '2022-11-29 08:13:17', '2023-01-28 04:42:36', 'SUPREME PLAN', '2.13', '2022-11-29 09:13:17', '900', '213', '16390', '2023-01-05 21:13:17', '10000', '1', '{}', 'crypto plans', 20, 30, 6390),
(25, '2023-02-02 10:19:40', '2023-03-04 10:21:41', 'BASIC PLAN', '32', '2023-02-02 11:19:40', '720', '160', '5300', '2023-03-04 11:19:40', '500', '1', '{}', 'crypto plans', 86, 30, 4800),
(41, '2023-03-29 15:01:49', '2023-04-28 15:03:03', 'BASIC PLAN', '32', '2023-03-29 16:01:49', '720', '160', '5300', '2023-04-28 16:01:49', '500', '1', '{}', 'crypto plans', 135, 30, 4800),
(40, '2023-03-17 18:19:01', '2023-03-22 18:53:47', 'ACADEMIC PLAN', '16', '2023-03-17 19:19:01', '120', '16', '180', '2023-03-22 19:19:01', '100', '1', '{}', 'crypto plans', 135, 5, 80),
(38, '2023-02-28 02:53:33', '2023-03-05 03:33:06', 'ACADEMIC PLAN', '16', '2023-02-28 03:53:33', '120', '16', '180', '2023-03-05 03:53:33', '100', '1', '{}', 'crypto plans', 75, 5, 80),
(107, '2023-07-24 20:22:58', '2023-08-21 10:33:56', 'ACADEMIC PLAN', '16', '2023-07-24 21:22:58', '120', '72', '810', '2023-07-29 21:22:58', '450', '1', '{}', 'crypto plans', 318, 5, 360),
(36, '2023-02-20 08:38:15', '2023-03-22 11:23:47', 'BASIC PLAN', '32', '2023-02-20 09:38:15', '720', '160', '5300', '2023-03-22 09:38:15', '500', '1', '{}', 'crypto plans', 110, 30, 4800),
(32, '2023-02-12 12:04:31', '2023-02-17 14:31:33', 'ACADEMIC PLAN', '16', '2023-02-12 13:04:31', '120', '16', '180', '2023-02-17 13:04:31', '100', '1', '{}', 'crypto plans', 75, 5, 80),
(30, '2023-02-08 14:05:34', '2023-02-13 23:08:11', 'ACADEMIC PLAN', '16', '2023-02-08 15:05:34', '120', '55.36', '622.8', '2023-02-13 15:05:34', '346', '1', '{}', 'crypto plans', 43, 5, 275),
(26, '2023-02-02 17:05:40', '2023-02-08 02:25:42', 'ACADEMIC PLAN', '16', '2023-02-02 18:05:40', '120', '28.8', '324', '2023-02-07 18:05:40', '180', '1', '{}', 'crypto plans', 43, 5, 145),
(20, '2022-12-21 18:45:52', '2022-12-26 21:23:12', 'ACADEMIC PLAN', '16', '2022-12-21 19:45:52', '120', '16', '180', '2022-12-26 19:45:52', '100', '1', '{}', 'crypto plans', 42, 5, 80),
(55, '2023-05-14 22:19:04', '2023-05-20 08:09:21', 'ACADEMIC PLAN', '16', '2023-05-14 23:19:04', '120', '16', '180', '2023-05-19 23:19:04', '100', '1', '{}', 'crypto plans', 194, 5, 80),
(123, '2023-08-04 19:49:47', '2023-08-10 10:50:06', 'ACADEMIC PLAN', '16', '2023-08-04 20:49:47', '120', '28.96', '325.8', '2023-08-09 20:49:47', '181', '1', '{}', 'crypto plans', 309, 5, 145),
(19, '2022-12-21 07:55:54', '2022-12-27 07:31:35', 'ACADEMIC PLAN', '16', '2022-12-21 08:55:54', '120', '16', '180', '2022-12-26 08:55:54', '100', '1', '{}', 'crypto plans', 7, 5, 80),
(28, '2023-02-05 15:11:44', '2023-02-10 15:11:56', 'ACADEMIC PLAN', '16', '2023-02-05 16:11:44', '120', '32', '360', '2023-02-10 16:11:44', '200', '1', '{}', 'crypto plans', 114, 5, 160),
(29, '2023-02-07 07:35:41', '2023-02-12 08:02:58', 'ACADEMIC PLAN', '16', '2023-02-07 08:35:41', '120', '16', '180', '2023-02-12 08:35:41', '100', '1', '{}', 'crypto plans', 75, 5, 80),
(31, '2023-02-11 11:57:26', '2023-03-13 11:57:35', 'BASIC PLAN', '32', '2023-02-11 12:57:26', '720', '160', '5300', '2023-03-13 12:57:26', '500', '1', '{}', 'crypto plans', 114, 30, 4800),
(126, '2023-08-09 14:45:25', '2023-09-08 19:18:54', 'V.I.P PLAN', '90', '2023-08-09 15:45:25', '720', '89999.1', '2799972', '2023-09-08 15:45:25', '99999', '1', '{}', 'crypto plans', 75, 30, 2699971),
(147, '2023-08-30 15:32:56', '2023-08-30 15:32:56', 'ACADEMIC PLAN', '16', '2023-08-30 16:32:56', '120', '16', '180', '2023-09-04 16:32:56', '100', '0', '[\"2023-08-31T16:32:56.836867Z\",\"2023-09-01T16:32:56.836878Z\",\"2023-09-02T16:32:56.836885Z\",\"2023-09-03T16:32:56.836891Z\",\"2023-09-04T16:32:56.836897Z\"]', 'crypto plans', 441, 5, 0),
(51, '2023-05-14 10:29:50', '2023-06-24 20:29:05', 'BASIC PLAN', '32', '2023-05-14 11:29:50', '720', '160', '5300', '2023-06-13 11:29:50', '500', '1', '{}', 'crypto plans', 187, 30, 4800),
(39, '2023-03-05 03:42:14', '2023-04-04 06:54:51', 'BASIC PLAN', '32', '2023-03-05 04:42:14', '720', '160', '5300', '2023-04-04 04:42:14', '500', '1', '{}', 'crypto plans', 75, 30, 4800),
(37, '2023-02-23 01:29:47', '2023-02-28 02:52:04', 'ACADEMIC PLAN', '16', '2023-02-23 02:29:47', '120', '16', '180', '2023-02-28 02:29:47', '100', '1', '{}', 'crypto plans', 75, 5, 80),
(35, '2023-02-17 14:37:47', '2023-02-23 01:28:29', 'ACADEMIC PLAN', '16', '2023-02-17 15:37:47', '120', '16', '180', '2023-02-22 15:37:47', '100', '1', '{}', 'crypto plans', 75, 5, 80),
(33, '2023-02-12 12:32:32', '2023-04-12 07:41:20', 'SUPREME PLAN', '64', '2023-02-12 13:32:32', '720', '5120', '161600', '2023-03-14 13:32:32', '8000', '1', '{}', 'crypto plans', 47, 30, 153600),
(54, '2023-05-14 19:02:47', '2023-05-19 19:13:45', 'ACADEMIC PLAN', '16', '2023-05-14 20:02:47', '120', '16.8', '189', '2023-05-19 20:02:47', '105', '1', '{}', 'crypto plans', 196, 5, 85),
(49, '2023-05-14 09:52:07', '2023-05-19 09:54:43', 'ACADEMIC PLAN', '16', '2023-05-14 10:52:07', '120', '16.48', '185.4', '2023-05-19 10:52:07', '103', '1', '{}', 'crypto plans', 180, 5, 80),
(76, '2023-06-09 15:30:33', '2023-07-09 16:14:45', 'OIL AND GAS PLAN', '130.3', '2023-06-09 16:30:33', '720', '52120', '1603600', '2023-07-09 16:30:33', '40000', '1', '{}', 'crypto plans', 75, 30, 1563600),
(90, '2023-07-01 01:27:45', '2023-07-31 10:29:21', 'SUPREME PLAN', '64', '2023-07-01 02:27:45', '720', '3392', '107060', '2023-07-31 02:27:45', '5300', '1', '{}', 'crypto plans', 180, 30, 101760),
(86, '2023-06-26 16:04:25', '2023-07-26 16:31:07', 'V.I.P PLAN', '90', '2023-06-26 17:04:25', '720', '77400', '2408000', '2023-07-26 17:04:25', '86000', '1', '{}', 'crypto plans', 75, 30, 2322000),
(73, '2023-06-01 05:40:03', '2023-07-01 05:41:33', 'V.I.P PLAN', '90', '2023-06-01 06:40:03', '720', '36000.9', '1120028', '2023-07-01 06:40:03', '40001', '1', '{}', 'crypto plans', 135, 30, 1080030),
(59, '2023-05-16 18:34:40', '2023-05-21 18:54:57', 'ACADEMIC PLAN', '16', '2023-05-16 19:34:40', '120', '20.8', '234', '2023-05-21 19:34:40', '130', '1', '{}', 'crypto plans', 196, 5, 105),
(53, '2023-05-14 18:18:00', '2023-05-19 18:53:20', 'ACADEMIC PLAN', '16', '2023-05-14 19:18:00', '120', '16', '180', '2023-05-19 19:18:00', '100', '1', '{}', 'crypto plans', 188, 5, 80),
(61, '2023-05-19 09:57:29', '2023-05-24 16:28:50', 'ACADEMIC PLAN', '16', '2023-05-19 10:57:29', '120', '16', '180', '2023-05-24 10:57:29', '100', '1', '{}', 'crypto plans', 180, 5, 80),
(66, '2023-05-24 16:29:18', '2023-05-29 22:15:16', 'ACADEMIC PLAN', '16', '2023-05-24 17:29:18', '120', '58.08', '653.4', '2023-05-29 17:29:18', '363', '1', '{}', 'crypto plans', 180, 5, 290),
(56, '2023-05-15 01:42:01', '2023-05-20 01:42:03', 'ACADEMIC PLAN', '16', '2023-05-15 02:42:01', '120', '16', '180', '2023-05-20 02:42:01', '100', '1', '{}', 'crypto plans', 200, 5, 80),
(57, '2023-05-15 07:06:23', '2023-05-22 11:01:50', 'ACADEMIC PLAN', '16', '2023-05-15 08:06:23', '120', '16', '180', '2023-05-20 08:06:23', '100', '1', '[]', 'crypto plans', 203, 5, 80),
(63, '2023-05-22 11:12:10', '2023-06-21 11:43:42', 'BASIC PLAN', '32', '2023-05-22 12:12:10', '720', '161.28', '5342.4', '2023-06-21 12:12:10', '504', '1', '{}', 'crypto plans', 196, 30, 4838),
(81, '2023-06-22 04:12:38', '2023-07-04 01:26:51', 'ACADEMIC PLAN', '16', '2023-06-22 05:12:38', '120', '67.2', '756', '2023-06-27 05:12:38', '420', '1', '[]', 'crypto plans', 248, 5, 336),
(94, '2023-07-04 01:27:42', '2023-08-30 11:41:41', 'BASIC PLAN', '32', '2023-07-04 02:27:42', '720', '160', '5300', '2023-08-03 02:27:42', '500', '1', '{}', 'crypto plans', 248, 30, 4800),
(67, '2023-05-28 02:06:49', '2023-06-27 21:39:09', 'BASIC PLAN', '32', '2023-05-28 03:06:49', '720', '160', '5300', '2023-06-27 03:06:49', '500', '1', '{}', 'crypto plans', 246, 30, 4800),
(87, '2023-06-28 04:17:04', '2023-07-28 14:16:14', 'SUPREME PLAN', '64', '2023-06-28 05:17:04', '720', '9600', '303000', '2023-07-28 05:17:04', '15000', '1', '{}', 'crypto plans', 75, 30, 288000),
(104, '2023-07-21 10:02:53', '2023-07-27 04:17:48', 'ACADEMIC PLAN', '16', '2023-07-21 11:02:53', '120', '16', '180', '2023-07-26 11:02:53', '100', '1', '{}', 'crypto plans', 414, 5, 80),
(68, '2023-05-28 05:41:45', '2023-06-27 13:07:41', 'BASIC PLAN', '32', '2023-05-28 06:41:45', '720', '160.32', '5310.6', '2023-06-27 06:41:45', '501', '1', '{}', 'crypto plans', 188, 30, 4808),
(110, '2023-07-24 20:24:25', '2023-08-21 10:33:56', 'ACADEMIC PLAN', '16', '2023-07-24 21:24:25', '120', '72', '810', '2023-07-29 21:24:25', '450', '1', '{}', 'crypto plans', 318, 5, 360),
(118, '2023-07-30 15:01:40', '2023-08-04 15:14:13', 'ACADEMIC PLAN', '16', '2023-07-30 16:01:40', '120', '16.16', '181.8', '2023-08-04 16:01:40', '101', '1', '{}', 'crypto plans', 309, 5, 80),
(117, '2023-07-28 08:44:03', '2023-08-27 09:07:26', 'BASIC PLAN', '32', '2023-07-28 09:44:03', '720', '832', '27560', '2023-08-27 09:44:03', '2600', '1', '{}', 'crypto plans', 110, 30, 24960),
(139, '2023-08-26 15:23:34', '2023-09-20 13:31:24', 'BASIC PLAN', '32', '2023-08-26 16:23:34', '720', '1600', '53000', '2023-09-25 16:23:34', '5000', '0', '{\"24\":\"2023-09-20T16:23:34.488467Z\",\"25\":\"2023-09-21T16:23:34.488472Z\",\"26\":\"2023-09-22T16:23:34.488477Z\",\"27\":\"2023-09-23T16:23:34.488482Z\",\"28\":\"2023-09-24T16:23:34.488488Z\",\"29\":\"2023-09-25T16:23:34.488499Z\"}', 'crypto plans', 75, 30, 38400),
(164, '2023-09-10 04:21:13', '2023-09-15 06:14:12', 'ACADEMIC PLAN', '16', '2023-09-10 05:21:13', '120', '41.6', '468', '2023-09-15 05:21:13', '260', '1', '{}', 'crypto plans', 456, 5, 210),
(162, '2023-09-09 11:20:15', '2023-09-14 11:20:54', 'ACADEMIC PLAN', '16', '2023-09-09 12:20:15', '120', '20.16', '226.8', '2023-09-14 12:20:15', '126', '1', '{}', 'crypto plans', 469, 5, 100),
(116, '2023-07-27 13:18:55', '2023-08-01 13:19:12', 'ACADEMIC PLAN', '16', '2023-07-27 14:18:55', '120', '48', '540', '2023-08-01 14:18:55', '300', '1', '{}', 'crypto plans', 418, 5, 240),
(69, '2023-05-28 11:29:44', '2023-07-01 20:02:36', 'BASIC PLAN', '32', '2023-05-28 12:29:44', '720', '1376', '45580', '2023-06-27 12:29:44', '4300', '1', '{}', 'crypto plans', 156, 30, 41280),
(112, '2023-07-26 08:05:58', '2023-07-31 01:37:17', 'ACADEMIC PLAN', '16', '2023-07-26 09:05:58', '120', '16', '180', '2023-07-31 09:05:58', '100', '0', '{\"4\":\"2023-07-31T09:05:58.441272Z\"}', 'crypto plans', 415, 5, 64),
(83, '2023-06-23 10:08:49', '2023-07-23 11:58:14', 'BASIC PLAN', '32', '2023-06-23 11:08:49', '720', '160', '5300', '2023-07-23 11:08:49', '500', '1', '{}', 'crypto plans', 318, 30, 4800),
(79, '2023-06-18 11:14:07', '2023-07-18 20:31:27', 'BASIC PLAN', '32', '2023-06-18 12:14:07', '720', '640', '21200', '2023-07-18 12:14:07', '2000', '1', '{}', 'crypto plans', 266, 30, 19200),
(121, '2023-08-04 01:27:07', '2023-09-06 12:43:01', 'OIL AND GAS PLAN', '130.3', '2023-08-04 02:27:07', '720', '52120', '1603600', '2023-09-03 02:27:07', '40000', '1', '{}', 'crypto plans', 180, 30, 1563600),
(74, '2023-06-01 15:40:48', '2023-06-06 23:24:47', 'ACADEMIC PLAN', '16', '2023-06-01 16:40:48', '120', '16', '180', '2023-06-06 16:40:48', '100', '1', '{}', 'crypto plans', 248, 5, 80),
(97, '2023-07-11 13:35:17', '2023-07-16 13:36:34', 'ACADEMIC PLAN', '16', '2023-07-11 14:35:17', '120', '48', '540', '2023-07-16 14:35:17', '300', '1', '{}', 'crypto plans', 318, 5, 240),
(95, '2023-07-05 15:18:47', '2023-08-21 10:33:56', 'BASIC PLAN', '32', '2023-07-05 16:18:47', '720', '160', '5300', '2023-08-04 16:18:47', '500', '1', '{}', 'crypto plans', 318, 30, 4800),
(177, '2023-09-15 12:50:10', '2023-09-24 13:11:49', 'BASIC PLAN', '32', '2023-09-15 13:50:10', '720', '160', '5300', '2023-10-15 13:50:10', '500', '0', '{\"9\":\"2023-09-25T13:50:10.325147Z\",\"10\":\"2023-09-26T13:50:10.325153Z\",\"11\":\"2023-09-27T13:50:10.325158Z\",\"12\":\"2023-09-28T13:50:10.325163Z\",\"13\":\"2023-09-29T13:50:10.325169Z\",\"14\":\"2023-09-30T13:50:10.325174Z\",\"15\":\"2023-10-01T13:50:10.325182Z\",\"16\":\"2023-10-02T13:50:10.325187Z\",\"17\":\"2023-10-03T13:50:10.325193Z\",\"18\":\"2023-10-04T13:50:10.325198Z\",\"19\":\"2023-10-05T13:50:10.325203Z\",\"20\":\"2023-10-06T13:50:10.325208Z\",\"21\":\"2023-10-07T13:50:10.325213Z\",\"22\":\"2023-10-08T13:50:10.325218Z\",\"23\":\"2023-10-09T13:50:10.325225Z\",\"24\":\"2023-10-10T13:50:10.325230Z\",\"25\":\"2023-10-11T13:50:10.325235Z\",\"26\":\"2023-10-12T13:50:10.325240Z\",\"27\":\"2023-10-13T13:50:10.325254Z\",\"28\":\"2023-10-14T13:50:10.325260Z\",\"29\":\"2023-10-15T13:50:10.325269Z\"}', 'crypto plans', 468, 30, 1440),
(167, '2023-09-10 17:26:21', '2023-09-15 17:26:53', 'ACADEMIC PLAN', '16', '2023-09-10 18:26:21', '120', '52', '585', '2023-09-15 18:26:21', '325', '1', '{}', 'crypto plans', 451, 5, 260),
(71, '2023-05-31 09:01:38', '2023-07-04 14:18:31', 'OIL AND GAS PLAN', '130.3', '2023-05-31 10:01:38', '720', '26060', '801800', '2023-06-30 10:01:38', '20000', '1', '{}', 'crypto plans', 266, 30, 781800),
(84, '2023-06-24 10:48:16', '2023-07-24 11:51:09', 'BASIC PLAN', '32', '2023-06-24 11:48:16', '720', '320', '10600', '2023-07-24 11:48:16', '1000', '1', '{}', 'crypto plans', 110, 30, 9600),
(78, '2023-06-18 11:13:23', '2023-07-18 20:31:27', 'OIL AND GAS PLAN', '130.3', '2023-06-18 12:13:23', '720', '44302', '1363060', '2023-07-18 12:13:23', '34000', '1', '{}', 'crypto plans', 266, 30, 1329060),
(82, '2023-06-22 15:19:26', '2023-07-23 06:25:10', 'BASIC PLAN', '32', '2023-06-22 16:19:26', '720', '960', '31800', '2023-07-22 16:19:26', '3000', '1', '{}', 'crypto plans', 196, 30, 28800),
(106, '2023-07-23 06:27:48', '2023-08-23 05:29:19', 'SUPREME PLAN', '64', '2023-07-23 07:27:48', '720', '7439.36', '234804.8', '2023-08-22 07:27:48', '11624', '1', '{}', 'crypto plans', 196, 30, 223180),
(75, '2023-06-06 23:26:38', '2023-06-12 00:34:42', 'ACADEMIC PLAN', '16', '2023-06-07 00:26:38', '120', '16', '180', '2023-06-12 00:26:38', '100', '1', '{}', 'crypto plans', 248, 5, 80),
(77, '2023-06-12 00:40:42', '2023-06-22 04:11:42', 'ACADEMIC PLAN', '16', '2023-06-12 01:40:42', '120', '32', '360', '2023-06-17 01:40:42', '200', '1', '[]', 'crypto plans', 248, 5, 160),
(114, '2023-07-26 13:43:47', '2023-08-25 14:57:08', 'SUPREME PLAN', '64', '2023-07-26 14:43:47', '720', '6080', '191900', '2023-08-25 14:43:47', '9500', '1', '{}', 'crypto plans', 196, 30, 182400),
(174, '2023-09-13 10:07:17', '2023-09-24 15:48:08', 'SUPREME PLAN', '64', '2023-09-13 11:07:17', '720', '6400', '202000', '2023-10-13 11:07:17', '10000', '0', '{\"11\":\"2023-09-25T11:07:17.435078Z\",\"12\":\"2023-09-26T11:07:17.435083Z\",\"13\":\"2023-09-27T11:07:17.435088Z\",\"14\":\"2023-09-28T11:07:17.435093Z\",\"15\":\"2023-09-29T11:07:17.435100Z\",\"16\":\"2023-09-30T11:07:17.435105Z\",\"17\":\"2023-10-01T11:07:17.435110Z\",\"18\":\"2023-10-02T11:07:17.435116Z\",\"19\":\"2023-10-03T11:07:17.435121Z\",\"20\":\"2023-10-04T11:07:17.435126Z\",\"21\":\"2023-10-05T11:07:17.435131Z\",\"22\":\"2023-10-06T11:07:17.435136Z\",\"23\":\"2023-10-07T11:07:17.435144Z\",\"24\":\"2023-10-08T11:07:17.435150Z\",\"25\":\"2023-10-09T11:07:17.435155Z\",\"26\":\"2023-10-10T11:07:17.435160Z\",\"27\":\"2023-10-11T11:07:17.435165Z\",\"28\":\"2023-10-12T11:07:17.435170Z\",\"29\":\"2023-10-13T11:07:17.435175Z\"}', 'crypto plans', 110, 30, 70400),
(99, '2023-07-16 15:54:50', '2023-08-17 02:03:22', 'BASIC PLAN', '32', '2023-07-16 16:54:50', '720', '320', '10600', '2023-08-15 16:54:50', '1000', '1', '{}', 'crypto plans', 110, 30, 9600),
(89, '2023-06-30 16:47:13', '2023-07-30 16:48:13', 'BASIC PLAN', '32', '2023-06-30 17:47:13', '720', '416', '13780', '2023-07-30 17:47:13', '1300', '1', '{}', 'crypto plans', 110, 30, 12480),
(119, '2023-07-30 18:02:27', '2023-08-05 01:08:13', 'ACADEMIC PLAN', '16', '2023-07-30 19:02:27', '120', '72', '810', '2023-08-04 19:02:27', '450', '1', '{}', 'crypto plans', 254, 5, 360),
(85, '2023-06-24 11:31:26', '2023-07-24 11:37:39', 'BASIC PLAN', '32', '2023-06-24 12:31:26', '720', '320', '10600', '2023-07-24 12:31:26', '1000', '1', '{}', 'crypto plans', 318, 30, 9600),
(108, '2023-07-24 20:23:42', '2023-08-21 10:33:56', 'ACADEMIC PLAN', '16', '2023-07-24 21:23:42', '120', '72', '810', '2023-07-29 21:23:42', '450', '1', '{}', 'crypto plans', 318, 5, 360),
(98, '2023-07-16 13:37:09', '2023-07-21 14:10:15', 'ACADEMIC PLAN', '16', '2023-07-16 14:37:09', '120', '48', '540', '2023-07-21 14:37:09', '300', '1', '{}', 'crypto plans', 318, 5, 240),
(105, '2023-07-21 14:10:53', '2023-07-28 10:16:10', 'ACADEMIC PLAN', '16', '2023-07-21 15:10:53', '120', '78.4', '882', '2023-07-26 15:10:53', '490', '1', '{}', 'crypto plans', 318, 5, 391),
(122, '2023-08-04 01:27:39', '2023-09-06 12:43:01', 'V.I.P PLAN', '90', '2023-08-04 02:27:39', '720', '60354', '1877680', '2023-09-03 02:27:39', '67060', '1', '{}', 'crypto plans', 180, 30, 1810620),
(158, '2023-09-06 12:45:56', '2023-09-13 11:10:56', 'OIL AND GAS PLAN', '130.3', '2023-09-06 13:45:56', '720', '52120', '1603600', '2023-10-06 13:45:56', '40000', '0', '{\"6\":\"2023-09-13T13:45:56.432865Z\",\"7\":\"2023-09-14T13:45:56.432874Z\",\"8\":\"2023-09-15T13:45:56.432880Z\",\"9\":\"2023-09-16T13:45:56.432885Z\",\"10\":\"2023-09-17T13:45:56.432890Z\",\"11\":\"2023-09-18T13:45:56.432896Z\",\"12\":\"2023-09-19T13:45:56.432901Z\",\"13\":\"2023-09-20T13:45:56.432907Z\",\"14\":\"2023-09-21T13:45:56.432912Z\",\"15\":\"2023-09-22T13:45:56.432919Z\",\"16\":\"2023-09-23T13:45:56.432924Z\",\"17\":\"2023-09-24T13:45:56.432929Z\",\"18\":\"2023-09-25T13:45:56.432934Z\",\"19\":\"2023-09-26T13:45:56.432939Z\",\"20\":\"2023-09-27T13:45:56.432952Z\",\"21\":\"2023-09-28T13:45:56.432957Z\",\"22\":\"2023-09-29T13:45:56.432962Z\",\"23\":\"2023-09-30T13:45:56.432969Z\",\"24\":\"2023-10-01T13:45:56.432975Z\",\"25\":\"2023-10-02T13:45:56.432980Z\",\"26\":\"2023-10-03T13:45:56.432985Z\",\"27\":\"2023-10-04T13:45:56.432990Z\",\"28\":\"2023-10-05T13:45:56.432995Z\",\"29\":\"2023-10-06T13:45:56.433001Z\"}', 'crypto plans', 180, 30, 312720),
(160, '2023-09-07 12:20:24', '2023-09-12 12:20:34', 'ACADEMIC PLAN', '16', '2023-09-07 13:20:24', '120', '16', '180', '2023-09-12 13:20:24', '100', '1', '{}', 'crypto plans', 466, 5, 80),
(166, '2023-09-10 11:06:23', '2023-09-15 11:06:31', 'ACADEMIC PLAN', '16', '2023-09-10 12:06:23', '120', '16', '180', '2023-09-15 12:06:23', '100', '1', '{}', 'crypto plans', 468, 5, 80),
(154, '2023-09-04 07:45:43', '2023-09-23 12:47:29', 'OIL AND GAS PLAN', '130.3', '2023-09-04 08:45:43', '720', '29969', '922070', '2023-10-04 08:45:43', '23000', '0', '{\"19\":\"2023-09-24T08:45:43.761515Z\",\"20\":\"2023-09-25T08:45:43.761520Z\",\"21\":\"2023-09-26T08:45:43.761525Z\",\"22\":\"2023-09-27T08:45:43.761530Z\",\"23\":\"2023-09-28T08:45:43.761537Z\",\"24\":\"2023-09-29T08:45:43.761542Z\",\"25\":\"2023-09-30T08:45:43.761547Z\",\"26\":\"2023-10-01T08:45:43.761553Z\",\"27\":\"2023-10-02T08:45:43.761558Z\",\"28\":\"2023-10-03T08:45:43.761563Z\",\"29\":\"2023-10-04T08:45:43.761568Z\"}', 'crypto plans', 135, 30, 569411),
(88, '2023-06-30 13:12:13', '2023-07-05 14:11:08', 'ACADEMIC PLAN', '16', '2023-06-30 14:12:13', '120', '48', '540', '2023-07-05 14:12:13', '300', '1', '{}', 'crypto plans', 318, 5, 240),
(96, '2023-07-09 16:17:12', '2023-08-09 14:42:43', 'OIL AND GAS PLAN', '130.3', '2023-07-09 17:17:12', '720', '52120', '1603600', '2023-08-08 17:17:12', '40000', '1', '{}', 'crypto plans', 75, 30, 1563600),
(125, '2023-08-09 14:44:43', '2023-09-08 19:18:54', 'OIL AND GAS PLAN', '130.3', '2023-08-09 15:44:43', '720', '52120', '1603600', '2023-09-08 15:44:43', '40000', '1', '{}', 'crypto plans', 75, 30, 1563600),
(159, '2023-09-06 12:46:08', '2023-09-13 11:10:56', 'V.I.P PLAN', '90', '2023-09-06 13:46:08', '720', '89999.1', '2799972', '2023-10-06 13:46:08', '99999', '0', '{\"6\":\"2023-09-13T13:46:08.716895Z\",\"7\":\"2023-09-14T13:46:08.716903Z\",\"8\":\"2023-09-15T13:46:08.716908Z\",\"9\":\"2023-09-16T13:46:08.716914Z\",\"10\":\"2023-09-17T13:46:08.716919Z\",\"11\":\"2023-09-18T13:46:08.716924Z\",\"12\":\"2023-09-19T13:46:08.716929Z\",\"13\":\"2023-09-20T13:46:08.716935Z\",\"14\":\"2023-09-21T13:46:08.716940Z\",\"15\":\"2023-09-22T13:46:08.716957Z\",\"16\":\"2023-09-23T13:46:08.716966Z\",\"17\":\"2023-09-24T13:46:08.716975Z\",\"18\":\"2023-09-25T13:46:08.716984Z\",\"19\":\"2023-09-26T13:46:08.716990Z\",\"20\":\"2023-09-27T13:46:08.716995Z\",\"21\":\"2023-09-28T13:46:08.717000Z\",\"22\":\"2023-09-29T13:46:08.717005Z\",\"23\":\"2023-09-30T13:46:08.717013Z\",\"24\":\"2023-10-01T13:46:08.717019Z\",\"25\":\"2023-10-02T13:46:08.717024Z\",\"26\":\"2023-10-03T13:46:08.717029Z\",\"27\":\"2023-10-04T13:46:08.717034Z\",\"28\":\"2023-10-05T13:46:08.717039Z\",\"29\":\"2023-10-06T13:46:08.717044Z\"}', 'crypto plans', 180, 30, 539995),
(92, '2023-07-03 17:42:54', '2023-08-03 12:34:32', 'BASIC PLAN', '32', '2023-07-03 18:42:54', '720', '1600', '53000', '2023-08-02 18:42:54', '5000', '1', '{}', 'crypto plans', 75, 30, 48000),
(91, '2023-07-03 04:45:21', '2023-08-02 04:54:08', 'OIL AND GAS PLAN', '130.3', '2023-07-03 05:45:21', '720', '19546.303', '601390.09', '2023-08-02 05:45:21', '15001', '1', '{}', 'crypto plans', 135, 30, 586380),
(120, '2023-08-03 05:47:10', '2023-09-02 08:56:07', 'OIL AND GAS PLAN', '130.3', '2023-08-03 06:47:10', '720', '19546.303', '601390.09', '2023-09-02 06:47:10', '15001', '1', '{}', 'crypto plans', 135, 30, 586383),
(151, '2023-09-02 09:09:42', '2023-09-07 11:15:44', 'SUPREME PLAN', '64', '2023-09-02 10:09:42', '720', '3264', '103020', '2023-10-02 10:09:42', '5100', '0', '{\"5\":\"2023-09-08T10:09:42.152734Z\",\"6\":\"2023-09-09T10:09:42.152739Z\",\"7\":\"2023-09-10T10:09:42.152747Z\",\"8\":\"2023-09-11T10:09:42.152752Z\",\"9\":\"2023-09-12T10:09:42.152758Z\",\"10\":\"2023-09-13T10:09:42.152763Z\",\"11\":\"2023-09-14T10:09:42.152768Z\",\"12\":\"2023-09-15T10:09:42.152773Z\",\"13\":\"2023-09-16T10:09:42.152779Z\",\"14\":\"2023-09-17T10:09:42.152784Z\",\"15\":\"2023-09-18T10:09:42.152790Z\",\"16\":\"2023-09-19T10:09:42.152796Z\",\"17\":\"2023-09-20T10:09:42.152801Z\",\"18\":\"2023-09-21T10:09:42.152807Z\",\"19\":\"2023-09-22T10:09:42.152812Z\",\"20\":\"2023-09-23T10:09:42.152817Z\",\"21\":\"2023-09-24T10:09:42.152822Z\",\"22\":\"2023-09-25T10:09:42.152827Z\",\"23\":\"2023-09-26T10:09:42.152835Z\",\"24\":\"2023-09-27T10:09:42.152840Z\",\"25\":\"2023-09-28T10:09:42.152845Z\",\"26\":\"2023-09-29T10:09:42.152850Z\",\"27\":\"2023-09-30T10:09:42.152863Z\",\"28\":\"2023-10-01T10:09:42.152868Z\",\"29\":\"2023-10-02T10:09:42.152873Z\"}', 'crypto plans', 188, 30, 16320),
(148, '2023-08-31 13:22:11', '2023-09-23 15:12:07', 'OIL AND GAS PLAN', '130.3', '2023-08-31 14:22:11', '720', '26060', '801800', '2023-09-30 14:22:11', '20000', '0', '{\"23\":\"2023-09-24T14:22:11.918933Z\",\"24\":\"2023-09-25T14:22:11.918939Z\",\"25\":\"2023-09-26T14:22:11.918944Z\",\"26\":\"2023-09-27T14:22:11.918959Z\",\"27\":\"2023-09-28T14:22:11.918964Z\",\"28\":\"2023-09-29T14:22:11.918969Z\",\"29\":\"2023-09-30T14:22:11.918975Z\"}', 'crypto plans', 156, 30, 599380),
(132, '2023-08-23 11:30:54', '2023-09-21 13:40:53', 'BASIC PLAN', '32', '2023-08-23 12:30:54', '720', '800', '26500', '2023-09-22 12:30:54', '2500', '0', '{\"29\":\"2023-09-22T12:30:54.407902Z\"}', 'crypto plans', 187, 30, 23200),
(103, '2023-07-21 05:09:22', '2023-07-26 05:31:24', 'ACADEMIC PLAN', '16', '2023-07-21 06:09:22', '120', '16', '180', '2023-07-26 06:09:22', '100', '1', '{}', 'crypto plans', 415, 5, 80),
(102, '2023-07-20 06:29:12', '2023-07-25 06:38:11', 'ACADEMIC PLAN', '16', '2023-07-20 07:29:12', '120', '22.4', '252', '2023-07-25 07:29:12', '140', '1', '{}', 'crypto plans', 254, 5, 110),
(100, '2023-07-18 08:42:54', '2023-07-23 09:12:56', 'ACADEMIC PLAN', '16', '2023-07-18 09:42:54', '120', '72', '810', '2023-07-23 09:42:54', '450', '1', '{}', 'crypto plans', 318, 5, 360),
(101, '2023-07-18 08:44:06', '2023-07-23 09:12:56', 'ACADEMIC PLAN', '16', '2023-07-18 09:44:06', '120', '72', '810', '2023-07-23 09:44:06', '450', '1', '{}', 'crypto plans', 318, 5, 360),
(111, '2023-07-25 09:10:05', '2023-07-30 13:22:37', 'ACADEMIC PLAN', '16', '2023-07-25 10:10:05', '120', '40', '450', '2023-07-30 10:10:05', '250', '1', '{}', 'crypto plans', 254, 5, 200),
(115, '2023-07-27 04:19:07', '2023-07-28 10:51:53', 'ACADEMIC PLAN', '16', '2023-07-27 05:19:07', '120', '16', '180', '2023-08-01 05:19:07', '100', '0', '{\"1\":\"2023-07-29T05:19:07.665101Z\",\"2\":\"2023-07-30T05:19:07.665122Z\",\"3\":\"2023-07-31T05:19:07.665141Z\",\"4\":\"2023-08-01T05:19:07.665160Z\"}', 'crypto plans', 414, 5, 16),
(129, '2023-08-10 10:51:42', '2023-08-17 15:36:22', 'ACADEMIC PLAN', '16', '2023-08-10 11:51:42', '120', '52.16', '586.8', '2023-08-15 11:51:42', '326', '1', '{}', 'crypto plans', 309, 5, 260),
(130, '2023-08-17 16:26:44', '2023-09-17 01:33:16', 'BASIC PLAN', '32', '2023-08-17 17:26:44', '720', '187.52', '6211.6', '2023-09-16 17:26:44', '586', '1', '{}', 'crypto plans', 309, 30, 5633),
(93, '2023-07-03 17:45:24', '2023-07-09 14:37:46', 'ACADEMIC PLAN', '16', '2023-07-03 18:45:24', '120', '79.84', '898.2', '2023-07-08 18:45:24', '499', '1', '{}', 'crypto plans', 75, 5, 400),
(127, '2023-08-09 14:45:49', '2023-09-08 19:18:54', 'SUPREME PLAN', '64', '2023-08-09 15:45:49', '720', '9600', '303000', '2023-09-08 15:45:49', '15000', '1', '{}', 'crypto plans', 75, 30, 288000),
(180, '2023-09-17 12:23:07', '2023-09-22 12:37:27', 'ACADEMIC PLAN', '16', '2023-09-17 13:23:07', '120', '75.04', '844.2', '2023-09-22 13:23:07', '469', '1', '{}', 'crypto plans', 466, 5, 375),
(124, '2023-08-05 01:10:18', '2023-09-04 15:21:59', 'BASIC PLAN', '32', '2023-08-05 02:10:18', '720', '259.2', '8586', '2023-09-04 02:10:18', '810', '1', '{}', 'crypto plans', 254, 30, 7774),
(155, '2023-09-04 18:29:39', '2023-09-10 04:18:34', 'ACADEMIC PLAN', '16', '2023-09-04 19:29:39', '120', '16', '180', '2023-09-09 19:29:39', '100', '1', '{}', 'crypto plans', 456, 5, 80),
(150, '2023-09-01 17:59:00', '2023-09-07 12:18:34', 'ACADEMIC PLAN', '16', '2023-09-01 18:59:00', '120', '16', '180', '2023-09-06 18:59:00', '100', '1', '{}', 'crypto plans', 466, 5, 80),
(137, '2023-08-24 15:58:03', '2023-08-29 17:30:48', 'ACADEMIC PLAN', '16', '2023-08-24 16:58:03', '120', '16', '180', '2023-08-29 16:58:03', '100', '1', '{}', 'crypto plans', 441, 5, 80),
(109, '2023-07-24 20:24:01', '2023-08-21 10:33:56', 'ACADEMIC PLAN', '16', '2023-07-24 21:24:01', '120', '72', '810', '2023-07-29 21:24:01', '450', '1', '{}', 'crypto plans', 318, 5, 360),
(113, '2023-07-26 13:42:27', '2023-08-25 14:57:08', 'OIL AND GAS PLAN', '130.3', '2023-07-26 14:42:27', '720', '20196.5', '621395', '2023-08-25 14:42:27', '15500', '1', '{}', 'crypto plans', 196, 30, 605900),
(131, '2023-08-18 16:56:44', '2023-09-17 17:27:45', 'SUPREME PLAN', '64', '2023-08-18 17:56:44', '720', '3200.64', '101020.2', '2023-09-17 17:56:44', '5001', '1', '{}', 'crypto plans', 110, 30, 96026),
(128, '2023-08-09 14:46:12', '2023-09-08 19:18:54', 'BASIC PLAN', '32', '2023-08-09 15:46:12', '720', '1600', '53000', '2023-09-08 15:46:12', '5000', '1', '{}', 'crypto plans', 75, 30, 48000),
(165, '2023-09-10 08:39:13', '2023-09-16 09:29:55', 'ACADEMIC PLAN', '16', '2023-09-10 09:39:13', '120', '16', '180', '2023-09-15 09:39:13', '100', '1', '{}', 'crypto plans', 502, 5, 80),
(138, '2023-08-26 15:23:09', '2023-08-31 16:20:46', 'ACADEMIC PLAN', '16', '2023-08-26 16:23:09', '120', '79.84', '898.2', '2023-08-31 16:23:09', '499', '1', '{}', 'crypto plans', 75, 5, 400),
(179, '2023-09-17 07:00:49', '2023-09-21 06:13:25', 'BASIC PLAN', '32', '2023-09-17 08:00:49', '720', '326.08', '10801.4', '2023-10-17 08:00:49', '1019', '0', '{\"3\":\"2023-09-21T08:00:49.736087Z\",\"4\":\"2023-09-22T08:00:49.736093Z\",\"5\":\"2023-09-23T08:00:49.736098Z\",\"6\":\"2023-09-24T08:00:49.736104Z\",\"7\":\"2023-09-25T08:00:49.736112Z\",\"8\":\"2023-09-26T08:00:49.736117Z\",\"9\":\"2023-09-27T08:00:49.736123Z\",\"10\":\"2023-09-28T08:00:49.736128Z\",\"11\":\"2023-09-29T08:00:49.736134Z\",\"12\":\"2023-09-30T08:00:49.736139Z\",\"13\":\"2023-10-01T08:00:49.736144Z\",\"14\":\"2023-10-02T08:00:49.736149Z\",\"15\":\"2023-10-03T08:00:49.736156Z\",\"16\":\"2023-10-04T08:00:49.736161Z\",\"17\":\"2023-10-05T08:00:49.736167Z\",\"18\":\"2023-10-06T08:00:49.736172Z\",\"19\":\"2023-10-07T08:00:49.736177Z\",\"20\":\"2023-10-08T08:00:49.736182Z\",\"21\":\"2023-10-09T08:00:49.736187Z\",\"22\":\"2023-10-10T08:00:49.736192Z\",\"23\":\"2023-10-11T08:00:49.736200Z\",\"24\":\"2023-10-12T08:00:49.736205Z\",\"25\":\"2023-10-13T08:00:49.736210Z\",\"26\":\"2023-10-14T08:00:49.736215Z\",\"27\":\"2023-10-15T08:00:49.736227Z\",\"28\":\"2023-10-16T08:00:49.736232Z\",\"29\":\"2023-10-17T08:00:49.736237Z\"}', 'crypto plans', 309, 30, 978),
(133, '2023-08-23 17:20:56', '2023-09-22 23:59:17', 'BASIC PLAN', '32', '2023-08-23 18:20:56', '720', '1600', '53000', '2023-09-22 18:20:56', '5000', '1', '{}', 'crypto plans', 196, 30, 48000),
(178, '2023-09-15 17:27:35', '2023-09-24 17:38:53', 'BASIC PLAN', '32', '2023-09-15 18:27:35', '720', '160', '5300', '2023-10-15 18:27:35', '500', '0', '{\"9\":\"2023-09-25T18:27:35.543055Z\",\"10\":\"2023-09-26T18:27:35.543060Z\",\"11\":\"2023-09-27T18:27:35.543066Z\",\"12\":\"2023-09-28T18:27:35.543071Z\",\"13\":\"2023-09-29T18:27:35.543076Z\",\"14\":\"2023-09-30T18:27:35.543081Z\",\"15\":\"2023-10-01T18:27:35.543088Z\",\"16\":\"2023-10-02T18:27:35.543093Z\",\"17\":\"2023-10-03T18:27:35.543099Z\",\"18\":\"2023-10-04T18:27:35.543104Z\",\"19\":\"2023-10-05T18:27:35.543109Z\",\"20\":\"2023-10-06T18:27:35.543115Z\",\"21\":\"2023-10-07T18:27:35.543120Z\",\"22\":\"2023-10-08T18:27:35.543125Z\",\"23\":\"2023-10-09T18:27:35.543132Z\",\"24\":\"2023-10-10T18:27:35.543137Z\",\"25\":\"2023-10-11T18:27:35.543142Z\",\"26\":\"2023-10-12T18:27:35.543147Z\",\"27\":\"2023-10-13T18:27:35.543159Z\",\"28\":\"2023-10-14T18:27:35.543165Z\",\"29\":\"2023-10-15T18:27:35.543170Z\"}', 'crypto plans', 451, 30, 1440),
(183, '2023-09-19 11:54:08', '2023-09-21 09:02:18', 'BASIC PLAN', '32', '2023-09-19 12:54:08', '720', '160', '5300', '2023-10-19 12:54:08', '500', '0', '{\"1\":\"2023-09-21T12:54:08.112571Z\",\"2\":\"2023-09-22T12:54:08.112578Z\",\"3\":\"2023-09-23T12:54:08.112584Z\",\"4\":\"2023-09-24T12:54:08.112589Z\",\"5\":\"2023-09-25T12:54:08.112595Z\",\"6\":\"2023-09-26T12:54:08.112600Z\",\"7\":\"2023-09-27T12:54:08.112609Z\",\"8\":\"2023-09-28T12:54:08.112615Z\",\"9\":\"2023-09-29T12:54:08.112621Z\",\"10\":\"2023-09-30T12:54:08.112626Z\",\"11\":\"2023-10-01T12:54:08.112631Z\",\"12\":\"2023-10-02T12:54:08.112636Z\",\"13\":\"2023-10-03T12:54:08.112641Z\",\"14\":\"2023-10-04T12:54:08.112647Z\",\"15\":\"2023-10-05T12:54:08.112653Z\",\"16\":\"2023-10-06T12:54:08.112659Z\",\"17\":\"2023-10-07T12:54:08.112664Z\",\"18\":\"2023-10-08T12:54:08.112669Z\",\"19\":\"2023-10-09T12:54:08.112674Z\",\"20\":\"2023-10-10T12:54:08.112680Z\",\"21\":\"2023-10-11T12:54:08.112685Z\",\"22\":\"2023-10-12T12:54:08.112690Z\",\"23\":\"2023-10-13T12:54:08.112697Z\",\"24\":\"2023-10-14T12:54:08.112702Z\",\"25\":\"2023-10-15T12:54:08.112707Z\",\"26\":\"2023-10-16T12:54:08.112712Z\",\"27\":\"2023-10-17T12:54:08.112727Z\",\"28\":\"2023-10-18T12:54:08.112732Z\",\"29\":\"2023-10-19T12:54:08.112738Z\"}', 'crypto plans', 510, 30, 160),
(134, '2023-08-23 17:21:30', '2023-09-22 23:59:17', 'SUPREME PLAN', '64', '2023-08-23 18:21:30', '720', '9600', '303000', '2023-09-22 18:21:30', '15000', '1', '{}', 'crypto plans', 196, 30, 288000),
(153, '2023-09-04 07:16:49', '2023-09-09 09:02:17', 'ACADEMIC PLAN', '16', '2023-09-04 08:16:49', '120', '16', '180', '2023-09-09 08:16:49', '100', '1', '{}', 'crypto plans', 470, 5, 80),
(135, '2023-08-23 17:22:09', '2023-09-22 23:59:17', 'V.I.P PLAN', '90', '2023-08-23 18:22:09', '720', '89999.1', '2799972', '2023-09-22 18:22:09', '99999', '1', '{}', 'crypto plans', 196, 30, 2699970),
(136, '2023-08-23 17:22:42', '2023-09-22 23:59:17', 'OIL AND GAS PLAN', '130.3', '2023-08-23 18:22:42', '720', '52120', '1603600', '2023-09-22 18:22:42', '40000', '1', '{}', 'crypto plans', 196, 30, 1563600),
(182, '2023-09-18 14:17:23', '2023-09-23 15:08:26', 'ACADEMIC PLAN', '16', '2023-09-18 15:17:23', '120', '16', '180', '2023-09-23 15:17:23', '100', '1', '{}', 'crypto plans', 523, 5, 80),
(184, '2023-09-20 08:43:59', '2023-09-24 12:14:44', 'BASIC PLAN', '32', '2023-09-20 09:43:59', '720', '224', '7420', '2023-10-20 09:43:59', '700', '0', '{\"4\":\"2023-09-25T09:43:59.134572Z\",\"5\":\"2023-09-26T09:43:59.134577Z\",\"6\":\"2023-09-27T09:43:59.134582Z\",\"7\":\"2023-09-28T09:43:59.134590Z\",\"8\":\"2023-09-29T09:43:59.134596Z\",\"9\":\"2023-09-30T09:43:59.134601Z\",\"10\":\"2023-10-01T09:43:59.134607Z\",\"11\":\"2023-10-02T09:43:59.134612Z\",\"12\":\"2023-10-03T09:43:59.134617Z\",\"13\":\"2023-10-04T09:43:59.134622Z\",\"14\":\"2023-10-05T09:43:59.134627Z\",\"15\":\"2023-10-06T09:43:59.134636Z\",\"16\":\"2023-10-07T09:43:59.134642Z\",\"17\":\"2023-10-08T09:43:59.134647Z\",\"18\":\"2023-10-09T09:43:59.134653Z\",\"19\":\"2023-10-10T09:43:59.134658Z\",\"20\":\"2023-10-11T09:43:59.134663Z\",\"21\":\"2023-10-12T09:43:59.134668Z\",\"22\":\"2023-10-13T09:43:59.134673Z\",\"23\":\"2023-10-14T09:43:59.134680Z\",\"24\":\"2023-10-15T09:43:59.134685Z\",\"25\":\"2023-10-16T09:43:59.134690Z\",\"26\":\"2023-10-17T09:43:59.134695Z\",\"27\":\"2023-10-18T09:43:59.134700Z\",\"28\":\"2023-10-19T09:43:59.134706Z\",\"29\":\"2023-10-20T09:43:59.134717Z\"}', 'crypto plans', 456, 30, 896),
(163, '2023-09-10 00:25:46', '2023-09-23 03:21:02', 'BASIC PLAN', '32', '2023-09-10 01:25:46', '720', '160', '5300', '2023-10-10 01:25:46', '500', '0', '{\"13\":\"2023-09-24T01:25:46.298151Z\",\"14\":\"2023-09-25T01:25:46.298157Z\",\"15\":\"2023-09-26T01:25:46.298164Z\",\"16\":\"2023-09-27T01:25:46.298169Z\",\"17\":\"2023-09-28T01:25:46.298175Z\",\"18\":\"2023-09-29T01:25:46.298180Z\",\"19\":\"2023-09-30T01:25:46.298185Z\",\"20\":\"2023-10-01T01:25:46.298190Z\",\"21\":\"2023-10-02T01:25:46.298195Z\",\"22\":\"2023-10-03T01:25:46.298200Z\",\"23\":\"2023-10-04T01:25:46.298207Z\",\"24\":\"2023-10-05T01:25:46.298212Z\",\"25\":\"2023-10-06T01:25:46.298218Z\",\"26\":\"2023-10-07T01:25:46.298223Z\",\"27\":\"2023-10-08T01:25:46.298228Z\",\"28\":\"2023-10-09T01:25:46.298233Z\",\"29\":\"2023-10-10T01:25:46.298238Z\"}', 'crypto plans', 497, 30, 2080),
(146, '2023-08-30 14:59:30', '2023-09-04 16:21:30', 'ACADEMIC PLAN', '16', '2023-08-30 15:59:30', '120', '16', '180', '2023-09-04 15:59:30', '100', '1', '{}', 'crypto plans', 456, 5, 80),
(145, '2023-08-27 19:27:52', '2023-09-05 08:46:29', 'ACADEMIC PLAN', '16', '2023-08-27 20:27:52', '120', '16', '180', '2023-09-01 20:27:52', '100', '1', '[]', 'crypto plans', 447, 5, 80),
(171, '2023-09-12 18:35:02', '2023-09-20 13:31:24', 'SUPREME PLAN', '64', '2023-09-12 19:35:02', '720', '9600', '303000', '2023-10-12 19:35:02', '15000', '0', '{\"7\":\"2023-09-20T19:35:02.798021Z\",\"8\":\"2023-09-21T19:35:02.798026Z\",\"9\":\"2023-09-22T19:35:02.798031Z\",\"10\":\"2023-09-23T19:35:02.798037Z\",\"11\":\"2023-09-24T19:35:02.798042Z\",\"12\":\"2023-09-25T19:35:02.798047Z\",\"13\":\"2023-09-26T19:35:02.798052Z\",\"14\":\"2023-09-27T19:35:02.798057Z\",\"15\":\"2023-09-28T19:35:02.798064Z\",\"16\":\"2023-09-29T19:35:02.798069Z\",\"17\":\"2023-09-30T19:35:02.798075Z\",\"18\":\"2023-10-01T19:35:02.798080Z\",\"19\":\"2023-10-02T19:35:02.798085Z\",\"20\":\"2023-10-03T19:35:02.798090Z\",\"21\":\"2023-10-04T19:35:02.798095Z\",\"22\":\"2023-10-05T19:35:02.798100Z\",\"23\":\"2023-10-06T19:35:02.798107Z\",\"24\":\"2023-10-07T19:35:02.798112Z\",\"25\":\"2023-10-08T19:35:02.798117Z\",\"26\":\"2023-10-09T19:35:02.798122Z\",\"27\":\"2023-10-10T19:35:02.798127Z\",\"28\":\"2023-10-11T19:35:02.798132Z\",\"29\":\"2023-10-12T19:35:02.798145Z\"}', 'crypto plans', 75, 30, 67200),
(140, '2023-08-26 15:23:52', '2023-09-20 13:31:24', 'SUPREME PLAN', '64', '2023-08-26 16:23:52', '720', '9600', '303000', '2023-09-25 16:23:52', '15000', '0', '{\"24\":\"2023-09-20T16:23:52.449973Z\",\"25\":\"2023-09-21T16:23:52.449979Z\",\"26\":\"2023-09-22T16:23:52.449984Z\",\"27\":\"2023-09-23T16:23:52.449989Z\",\"28\":\"2023-09-24T16:23:52.449994Z\",\"29\":\"2023-09-25T16:23:52.450007Z\"}', 'crypto plans', 75, 30, 230400),
(141, '2023-08-26 15:24:00', '2023-09-20 13:31:24', 'SUPREME PLAN', '64', '2023-08-26 16:24:00', '720', '9600', '303000', '2023-09-25 16:24:00', '15000', '0', '{\"24\":\"2023-09-20T16:24:00.671034Z\",\"25\":\"2023-09-21T16:24:00.671039Z\",\"26\":\"2023-09-22T16:24:00.671044Z\",\"27\":\"2023-09-23T16:24:00.671049Z\",\"28\":\"2023-09-24T16:24:00.671062Z\",\"29\":\"2023-09-25T16:24:00.671067Z\"}', 'crypto plans', 75, 30, 230400),
(142, '2023-08-26 15:24:23', '2023-09-20 13:31:24', 'V.I.P PLAN', '90', '2023-08-26 16:24:23', '720', '89999.1', '2799972', '2023-09-25 16:24:23', '99999', '0', '{\"24\":\"2023-09-20T16:24:23.581071Z\",\"25\":\"2023-09-21T16:24:23.581076Z\",\"26\":\"2023-09-22T16:24:23.581081Z\",\"27\":\"2023-09-23T16:24:23.581086Z\",\"28\":\"2023-09-24T16:24:23.581100Z\",\"29\":\"2023-09-25T16:24:23.581113Z\"}', 'crypto plans', 75, 30, 2159976);
INSERT INTO `investments` (`id`, `created_at`, `updated_at`, `investmentplan`, `investmentpercent`, `investmentdate`, `investmentduration`, `investmentprofit`, `investmenttotalprofit`, `investmentmaturitydate`, `investmentamount`, `investmentStatus`, `stage`, `type`, `userid`, `nooftimes`, `gotteninvestmentprofit`) VALUES
(187, '2023-09-21 16:34:28', '2023-09-24 09:37:45', 'V.I.P PLAN', '90', '2023-09-21 17:34:28', '720', '89999.1', '2799972', '2023-10-21 17:34:28', '99999', '0', '{\"2\":\"2023-09-24T17:34:28.888780Z\",\"3\":\"2023-09-25T17:34:28.888786Z\",\"4\":\"2023-09-26T17:34:28.888793Z\",\"5\":\"2023-09-27T17:34:28.888799Z\",\"6\":\"2023-09-28T17:34:28.888805Z\",\"7\":\"2023-09-29T17:34:28.888814Z\",\"8\":\"2023-09-30T17:34:28.888819Z\",\"9\":\"2023-10-01T17:34:28.888825Z\",\"10\":\"2023-10-02T17:34:28.888830Z\",\"11\":\"2023-10-03T17:34:28.888836Z\",\"12\":\"2023-10-04T17:34:28.888841Z\",\"13\":\"2023-10-05T17:34:28.888846Z\",\"14\":\"2023-10-06T17:34:28.888852Z\",\"15\":\"2023-10-07T17:34:28.888859Z\",\"16\":\"2023-10-08T17:34:28.888864Z\",\"17\":\"2023-10-09T17:34:28.888870Z\",\"18\":\"2023-10-10T17:34:28.888875Z\",\"19\":\"2023-10-11T17:34:28.888880Z\",\"20\":\"2023-10-12T17:34:28.888886Z\",\"21\":\"2023-10-13T17:34:28.888891Z\",\"22\":\"2023-10-14T17:34:28.888896Z\",\"23\":\"2023-10-15T17:34:28.888903Z\",\"24\":\"2023-10-16T17:34:28.888908Z\",\"25\":\"2023-10-17T17:34:28.888913Z\",\"26\":\"2023-10-18T17:34:28.888919Z\",\"27\":\"2023-10-19T17:34:28.888924Z\",\"28\":\"2023-10-20T17:34:28.888929Z\",\"29\":\"2023-10-21T17:34:28.888935Z\"}', 'crypto plans', 196, 30, 179998),
(170, '2023-09-12 18:34:46', '2023-09-20 13:31:24', 'BASIC PLAN', '32', '2023-09-12 19:34:46', '720', '1600', '53000', '2023-10-12 19:34:46', '5000', '0', '{\"7\":\"2023-09-20T19:34:46.926592Z\",\"8\":\"2023-09-21T19:34:46.926598Z\",\"9\":\"2023-09-22T19:34:46.926603Z\",\"10\":\"2023-09-23T19:34:46.926608Z\",\"11\":\"2023-09-24T19:34:46.926613Z\",\"12\":\"2023-09-25T19:34:46.926618Z\",\"13\":\"2023-09-26T19:34:46.926624Z\",\"14\":\"2023-09-27T19:34:46.926629Z\",\"15\":\"2023-09-28T19:34:46.926635Z\",\"16\":\"2023-09-29T19:34:46.926640Z\",\"17\":\"2023-09-30T19:34:46.926646Z\",\"18\":\"2023-10-01T19:34:46.926651Z\",\"19\":\"2023-10-02T19:34:46.926656Z\",\"20\":\"2023-10-03T19:34:46.926661Z\",\"21\":\"2023-10-04T19:34:46.926666Z\",\"22\":\"2023-10-05T19:34:46.926671Z\",\"23\":\"2023-10-06T19:34:46.926677Z\",\"24\":\"2023-10-07T19:34:46.926683Z\",\"25\":\"2023-10-08T19:34:46.926688Z\",\"26\":\"2023-10-09T19:34:46.926693Z\",\"27\":\"2023-10-10T19:34:46.926698Z\",\"28\":\"2023-10-11T19:34:46.926703Z\",\"29\":\"2023-10-12T19:34:46.926716Z\"}', 'crypto plans', 75, 30, 11200),
(175, '2023-09-14 13:18:42', '2023-09-24 13:47:43', 'BASIC PLAN', '32', '2023-09-14 14:18:42', '720', '161.6', '5353', '2023-10-14 14:18:42', '505', '0', '{\"10\":\"2023-09-25T14:18:42.581223Z\",\"11\":\"2023-09-26T14:18:42.581228Z\",\"12\":\"2023-09-27T14:18:42.581233Z\",\"13\":\"2023-09-28T14:18:42.581239Z\",\"14\":\"2023-09-29T14:18:42.581244Z\",\"15\":\"2023-09-30T14:18:42.581251Z\",\"16\":\"2023-10-01T14:18:42.581257Z\",\"17\":\"2023-10-02T14:18:42.581262Z\",\"18\":\"2023-10-03T14:18:42.581267Z\",\"19\":\"2023-10-04T14:18:42.581273Z\",\"20\":\"2023-10-05T14:18:42.581278Z\",\"21\":\"2023-10-06T14:18:42.581283Z\",\"22\":\"2023-10-07T14:18:42.581288Z\",\"23\":\"2023-10-08T14:18:42.581295Z\",\"24\":\"2023-10-09T14:18:42.581300Z\",\"25\":\"2023-10-10T14:18:42.581305Z\",\"26\":\"2023-10-11T14:18:42.581321Z\",\"27\":\"2023-10-12T14:18:42.581326Z\",\"28\":\"2023-10-13T14:18:42.581331Z\",\"29\":\"2023-10-14T14:18:42.581337Z\"}', 'crypto plans', 470, 30, 1620),
(176, '2023-09-15 06:16:12', '2023-09-20 08:40:52', 'ACADEMIC PLAN', '16', '2023-09-15 07:16:12', '120', '75.2', '846', '2023-09-20 07:16:12', '470', '1', '{}', 'crypto plans', 456, 5, 375),
(143, '2023-08-26 15:24:42', '2023-09-20 13:31:24', 'SUPREME PLAN', '64', '2023-08-26 16:24:42', '720', '9600', '303000', '2023-09-25 16:24:42', '15000', '0', '{\"24\":\"2023-09-20T16:24:42.321576Z\",\"25\":\"2023-09-21T16:24:42.321581Z\",\"26\":\"2023-09-22T16:24:42.321586Z\",\"27\":\"2023-09-23T16:24:42.321592Z\",\"28\":\"2023-09-24T16:24:42.321597Z\",\"29\":\"2023-09-25T16:24:42.321609Z\"}', 'crypto plans', 75, 30, 230400),
(144, '2023-08-26 15:24:58', '2023-09-20 13:31:24', 'OIL AND GAS PLAN', '130.3', '2023-08-26 16:24:58', '720', '52120', '1603600', '2023-09-25 16:24:58', '40000', '0', '{\"24\":\"2023-09-20T16:24:58.516172Z\",\"25\":\"2023-09-21T16:24:58.516177Z\",\"26\":\"2023-09-22T16:24:58.516182Z\",\"27\":\"2023-09-23T16:24:58.516188Z\",\"28\":\"2023-09-24T16:24:58.516193Z\",\"29\":\"2023-09-25T16:24:58.516205Z\"}', 'crypto plans', 75, 30, 1250880),
(169, '2023-09-12 18:34:26', '2023-09-20 13:31:24', 'ACADEMIC PLAN', '16', '2023-09-12 19:34:26', '120', '79.84', '898.2', '2023-09-17 19:34:26', '499', '1', '{}', 'crypto plans', 75, 5, 400),
(168, '2023-09-12 12:21:53', '2023-09-17 12:22:05', 'ACADEMIC PLAN', '16', '2023-09-12 13:21:53', '120', '41.6', '468', '2023-09-17 13:21:53', '260', '1', '{}', 'crypto plans', 466, 5, 209),
(156, '2023-09-05 13:21:22', '2023-09-11 07:13:49', 'ACADEMIC PLAN', '16', '2023-09-05 14:21:22', '120', '32', '360', '2023-09-10 14:21:22', '200', '1', '{}', 'crypto plans', 483, 5, 160),
(152, '2023-09-03 15:14:11', '2023-09-08 15:15:42', 'ACADEMIC PLAN', '16', '2023-09-03 16:14:11', '120', '32.96', '370.8', '2023-09-08 16:14:11', '206', '1', '{}', 'crypto plans', 469, 5, 165),
(149, '2023-08-31 13:39:53', '2023-09-05 13:43:37', 'ACADEMIC PLAN', '16', '2023-08-31 14:39:53', '120', '16', '180', '2023-09-05 14:39:53', '100', '1', '{}', 'crypto plans', 451, 5, 80),
(157, '2023-09-05 17:23:04', '2023-09-10 17:25:03', 'ACADEMIC PLAN', '16', '2023-09-05 18:23:04', '120', '28.8', '324', '2023-09-10 18:23:04', '180', '1', '{}', 'crypto plans', 451, 5, 145),
(161, '2023-09-08 15:33:04', '2023-09-14 00:39:08', 'ACADEMIC PLAN', '16', '2023-09-08 16:33:04', '120', '60.16', '676.8', '2023-09-13 16:33:04', '376', '1', '{}', 'crypto plans', 469, 5, 300),
(172, '2023-09-12 18:35:31', '2023-09-20 13:31:24', 'V.I.P PLAN', '90', '2023-09-12 19:35:31', '720', '89999.1', '2799972', '2023-10-12 19:35:31', '99999', '0', '{\"7\":\"2023-09-20T19:35:31.017590Z\",\"8\":\"2023-09-21T19:35:31.017596Z\",\"9\":\"2023-09-22T19:35:31.017601Z\",\"10\":\"2023-09-23T19:35:31.017606Z\",\"11\":\"2023-09-24T19:35:31.017612Z\",\"12\":\"2023-09-25T19:35:31.017617Z\",\"13\":\"2023-09-26T19:35:31.017622Z\",\"14\":\"2023-09-27T19:35:31.017627Z\",\"15\":\"2023-09-28T19:35:31.017634Z\",\"16\":\"2023-09-29T19:35:31.017639Z\",\"17\":\"2023-09-30T19:35:31.017644Z\",\"18\":\"2023-10-01T19:35:31.017649Z\",\"19\":\"2023-10-02T19:35:31.017654Z\",\"20\":\"2023-10-03T19:35:31.017659Z\",\"21\":\"2023-10-04T19:35:31.017664Z\",\"22\":\"2023-10-05T19:35:31.017669Z\",\"23\":\"2023-10-06T19:35:31.017676Z\",\"24\":\"2023-10-07T19:35:31.017681Z\",\"25\":\"2023-10-08T19:35:31.017687Z\",\"26\":\"2023-10-09T19:35:31.017692Z\",\"27\":\"2023-10-10T19:35:31.017696Z\",\"28\":\"2023-10-11T19:35:31.017701Z\",\"29\":\"2023-10-12T19:35:31.017716Z\"}', 'crypto plans', 75, 30, 629993),
(173, '2023-09-12 18:35:48', '2023-09-20 13:31:24', 'OIL AND GAS PLAN', '130.3', '2023-09-12 19:35:48', '720', '52120', '1603600', '2023-10-12 19:35:48', '40000', '0', '{\"7\":\"2023-09-20T19:35:48.914855Z\",\"8\":\"2023-09-21T19:35:48.914861Z\",\"9\":\"2023-09-22T19:35:48.914866Z\",\"10\":\"2023-09-23T19:35:48.914871Z\",\"11\":\"2023-09-24T19:35:48.914877Z\",\"12\":\"2023-09-25T19:35:48.914882Z\",\"13\":\"2023-09-26T19:35:48.914887Z\",\"14\":\"2023-09-27T19:35:48.914898Z\",\"15\":\"2023-09-28T19:35:48.914906Z\",\"16\":\"2023-09-29T19:35:48.914911Z\",\"17\":\"2023-09-30T19:35:48.914917Z\",\"18\":\"2023-10-01T19:35:48.914923Z\",\"19\":\"2023-10-02T19:35:48.914928Z\",\"20\":\"2023-10-03T19:35:48.914933Z\",\"21\":\"2023-10-04T19:35:48.914938Z\",\"22\":\"2023-10-05T19:35:48.914943Z\",\"23\":\"2023-10-06T19:35:48.914950Z\",\"24\":\"2023-10-07T19:35:48.914955Z\",\"25\":\"2023-10-08T19:35:48.914960Z\",\"26\":\"2023-10-09T19:35:48.914966Z\",\"27\":\"2023-10-10T19:35:48.914971Z\",\"28\":\"2023-10-11T19:35:48.914976Z\",\"29\":\"2023-10-12T19:35:48.914991Z\"}', 'crypto plans', 75, 30, 364840),
(189, '2023-09-22 16:14:55', '2023-09-24 09:37:45', 'BASIC PLAN', '32', '2023-09-22 17:14:55', '720', '1600', '53000', '2023-10-22 17:14:55', '5000', '0', '{\"1\":\"2023-09-24T17:14:55.574354Z\",\"2\":\"2023-09-25T17:14:55.574361Z\",\"3\":\"2023-09-26T17:14:55.574366Z\",\"4\":\"2023-09-27T17:14:55.574372Z\",\"5\":\"2023-09-28T17:14:55.574378Z\",\"6\":\"2023-09-29T17:14:55.574383Z\",\"7\":\"2023-09-30T17:14:55.574393Z\",\"8\":\"2023-10-01T17:14:55.574399Z\",\"9\":\"2023-10-02T17:14:55.574405Z\",\"10\":\"2023-10-03T17:14:55.574410Z\",\"11\":\"2023-10-04T17:14:55.574415Z\",\"12\":\"2023-10-05T17:14:55.574421Z\",\"13\":\"2023-10-06T17:14:55.574426Z\",\"14\":\"2023-10-07T17:14:55.574432Z\",\"15\":\"2023-10-08T17:14:55.574438Z\",\"16\":\"2023-10-09T17:14:55.574444Z\",\"17\":\"2023-10-10T17:14:55.574450Z\",\"18\":\"2023-10-11T17:14:55.574455Z\",\"19\":\"2023-10-12T17:14:55.574460Z\",\"20\":\"2023-10-13T17:14:55.574465Z\",\"21\":\"2023-10-14T17:14:55.574470Z\",\"22\":\"2023-10-15T17:14:55.574476Z\",\"23\":\"2023-10-16T17:14:55.574483Z\",\"24\":\"2023-10-17T17:14:55.574489Z\",\"25\":\"2023-10-18T17:14:55.574494Z\",\"26\":\"2023-10-19T17:14:55.574499Z\",\"27\":\"2023-10-20T17:14:55.574505Z\",\"28\":\"2023-10-21T17:14:55.574510Z\",\"29\":\"2023-10-22T17:14:55.574515Z\"}', 'crypto plans', 196, 30, 1600),
(193, '2023-09-24 09:37:21', '2023-09-24 09:37:21', 'ACADEMIC PLAN', '16', '2023-09-24 10:37:21', '120', '16', '180', '2023-09-29 10:37:21', '100', '0', '[\"2023-09-25T10:37:21.865356Z\",\"2023-09-26T10:37:21.865366Z\",\"2023-09-27T10:37:21.865373Z\",\"2023-09-28T10:37:21.865378Z\",\"2023-09-29T10:37:21.865383Z\"]', 'crypto plans', 535, 5, 0),
(186, '2023-09-21 16:33:51', '2023-09-24 09:37:45', 'SUPREME PLAN', '64', '2023-09-21 17:33:51', '720', '9600', '303000', '2023-10-21 17:33:51', '15000', '0', '{\"2\":\"2023-09-24T17:33:51.827524Z\",\"3\":\"2023-09-25T17:33:51.827529Z\",\"4\":\"2023-09-26T17:33:51.827535Z\",\"5\":\"2023-09-27T17:33:51.827541Z\",\"6\":\"2023-09-28T17:33:51.827546Z\",\"7\":\"2023-09-29T17:33:51.827556Z\",\"8\":\"2023-09-30T17:33:51.827561Z\",\"9\":\"2023-10-01T17:33:51.827567Z\",\"10\":\"2023-10-02T17:33:51.827573Z\",\"11\":\"2023-10-03T17:33:51.827578Z\",\"12\":\"2023-10-04T17:33:51.827583Z\",\"13\":\"2023-10-05T17:33:51.827589Z\",\"14\":\"2023-10-06T17:33:51.827594Z\",\"15\":\"2023-10-07T17:33:51.827601Z\",\"16\":\"2023-10-08T17:33:51.827607Z\",\"17\":\"2023-10-09T17:33:51.827613Z\",\"18\":\"2023-10-10T17:33:51.827618Z\",\"19\":\"2023-10-11T17:33:51.827623Z\",\"20\":\"2023-10-12T17:33:51.827629Z\",\"21\":\"2023-10-13T17:33:51.827634Z\",\"22\":\"2023-10-14T17:33:51.827639Z\",\"23\":\"2023-10-15T17:33:51.827646Z\",\"24\":\"2023-10-16T17:33:51.827651Z\",\"25\":\"2023-10-17T17:33:51.827657Z\",\"26\":\"2023-10-18T17:33:51.827662Z\",\"27\":\"2023-10-19T17:33:51.827667Z\",\"28\":\"2023-10-20T17:33:51.827672Z\",\"29\":\"2023-10-21T17:33:51.827678Z\"}', 'crypto plans', 196, 30, 19200),
(181, '2023-09-17 17:20:02', '2023-09-21 06:13:25', 'SUPREME PLAN', '64', '2023-09-17 18:20:02', '720', '3328', '105040', '2023-10-17 18:20:02', '5200', '0', '{\"3\":\"2023-09-21T18:20:02.654701Z\",\"4\":\"2023-09-22T18:20:02.654706Z\",\"5\":\"2023-09-23T18:20:02.654712Z\",\"6\":\"2023-09-24T18:20:02.654717Z\",\"7\":\"2023-09-25T18:20:02.654726Z\",\"8\":\"2023-09-26T18:20:02.654731Z\",\"9\":\"2023-09-27T18:20:02.654736Z\",\"10\":\"2023-09-28T18:20:02.654742Z\",\"11\":\"2023-09-29T18:20:02.654747Z\",\"12\":\"2023-09-30T18:20:02.654752Z\",\"13\":\"2023-10-01T18:20:02.654758Z\",\"14\":\"2023-10-02T18:20:02.654763Z\",\"15\":\"2023-10-03T18:20:02.654769Z\",\"16\":\"2023-10-04T18:20:02.654775Z\",\"17\":\"2023-10-05T18:20:02.654780Z\",\"18\":\"2023-10-06T18:20:02.654785Z\",\"19\":\"2023-10-07T18:20:02.654790Z\",\"20\":\"2023-10-08T18:20:02.654795Z\",\"21\":\"2023-10-09T18:20:02.654801Z\",\"22\":\"2023-10-10T18:20:02.654806Z\",\"23\":\"2023-10-11T18:20:02.654812Z\",\"24\":\"2023-10-12T18:20:02.654817Z\",\"25\":\"2023-10-13T18:20:02.654823Z\",\"26\":\"2023-10-14T18:20:02.654828Z\",\"27\":\"2023-10-15T18:20:02.654840Z\",\"28\":\"2023-10-16T18:20:02.654846Z\",\"29\":\"2023-10-17T18:20:02.654851Z\"}', 'crypto plans', 309, 30, 9984),
(185, '2023-09-21 16:33:13', '2023-09-24 09:37:45', 'BASIC PLAN', '32', '2023-09-21 17:33:13', '720', '1600', '53000', '2023-10-21 17:33:13', '5000', '0', '{\"2\":\"2023-09-24T17:33:13.867206Z\",\"3\":\"2023-09-25T17:33:13.867212Z\",\"4\":\"2023-09-26T17:33:13.867217Z\",\"5\":\"2023-09-27T17:33:13.867224Z\",\"6\":\"2023-09-28T17:33:13.867229Z\",\"7\":\"2023-09-29T17:33:13.867238Z\",\"8\":\"2023-09-30T17:33:13.867244Z\",\"9\":\"2023-10-01T17:33:13.867249Z\",\"10\":\"2023-10-02T17:33:13.867255Z\",\"11\":\"2023-10-03T17:33:13.867260Z\",\"12\":\"2023-10-04T17:33:13.867265Z\",\"13\":\"2023-10-05T17:33:13.867271Z\",\"14\":\"2023-10-06T17:33:13.867276Z\",\"15\":\"2023-10-07T17:33:13.867284Z\",\"16\":\"2023-10-08T17:33:13.867289Z\",\"17\":\"2023-10-09T17:33:13.867295Z\",\"18\":\"2023-10-10T17:33:13.867300Z\",\"19\":\"2023-10-11T17:33:13.867306Z\",\"20\":\"2023-10-12T17:33:13.867311Z\",\"21\":\"2023-10-13T17:33:13.867316Z\",\"22\":\"2023-10-14T17:33:13.867321Z\",\"23\":\"2023-10-15T17:33:13.867328Z\",\"24\":\"2023-10-16T17:33:13.867333Z\",\"25\":\"2023-10-17T17:33:13.867338Z\",\"26\":\"2023-10-18T17:33:13.867343Z\",\"27\":\"2023-10-19T17:33:13.867348Z\",\"28\":\"2023-10-20T17:33:13.867354Z\",\"29\":\"2023-10-21T17:33:13.867359Z\"}', 'crypto plans', 196, 30, 3200),
(188, '2023-09-21 16:35:00', '2023-09-24 09:37:45', 'OIL AND GAS PLAN', '130.3', '2023-09-21 17:35:00', '720', '52120', '1603600', '2023-10-21 17:35:00', '40000', '0', '{\"2\":\"2023-09-24T17:35:00.729211Z\",\"3\":\"2023-09-25T17:35:00.729217Z\",\"4\":\"2023-09-26T17:35:00.729223Z\",\"5\":\"2023-09-27T17:35:00.729229Z\",\"6\":\"2023-09-28T17:35:00.729234Z\",\"7\":\"2023-09-29T17:35:00.729242Z\",\"8\":\"2023-09-30T17:35:00.729248Z\",\"9\":\"2023-10-01T17:35:00.729253Z\",\"10\":\"2023-10-02T17:35:00.729259Z\",\"11\":\"2023-10-03T17:35:00.729264Z\",\"12\":\"2023-10-04T17:35:00.729269Z\",\"13\":\"2023-10-05T17:35:00.729275Z\",\"14\":\"2023-10-06T17:35:00.729280Z\",\"15\":\"2023-10-07T17:35:00.729287Z\",\"16\":\"2023-10-08T17:35:00.729293Z\",\"17\":\"2023-10-09T17:35:00.729298Z\",\"18\":\"2023-10-10T17:35:00.729303Z\",\"19\":\"2023-10-11T17:35:00.729309Z\",\"20\":\"2023-10-12T17:35:00.729314Z\",\"21\":\"2023-10-13T17:35:00.729319Z\",\"22\":\"2023-10-14T17:35:00.729324Z\",\"23\":\"2023-10-15T17:35:00.729331Z\",\"24\":\"2023-10-16T17:35:00.729336Z\",\"25\":\"2023-10-17T17:35:00.729342Z\",\"26\":\"2023-10-18T17:35:00.729347Z\",\"27\":\"2023-10-19T17:35:00.729352Z\",\"28\":\"2023-10-20T17:35:00.729357Z\",\"29\":\"2023-10-21T17:35:00.729362Z\"}', 'crypto plans', 196, 30, 104240),
(190, '2023-09-22 16:15:19', '2023-09-24 09:37:45', 'SUPREME PLAN', '64', '2023-09-22 17:15:19', '720', '9600', '303000', '2023-10-22 17:15:19', '15000', '0', '{\"1\":\"2023-09-24T17:15:19.494566Z\",\"2\":\"2023-09-25T17:15:19.494572Z\",\"3\":\"2023-09-26T17:15:19.494578Z\",\"4\":\"2023-09-27T17:15:19.494583Z\",\"5\":\"2023-09-28T17:15:19.494588Z\",\"6\":\"2023-09-29T17:15:19.494593Z\",\"7\":\"2023-09-30T17:15:19.494601Z\",\"8\":\"2023-10-01T17:15:19.494607Z\",\"9\":\"2023-10-02T17:15:19.494612Z\",\"10\":\"2023-10-03T17:15:19.494617Z\",\"11\":\"2023-10-04T17:15:19.494622Z\",\"12\":\"2023-10-05T17:15:19.494627Z\",\"13\":\"2023-10-06T17:15:19.494632Z\",\"14\":\"2023-10-07T17:15:19.494638Z\",\"15\":\"2023-10-08T17:15:19.494644Z\",\"16\":\"2023-10-09T17:15:19.494650Z\",\"17\":\"2023-10-10T17:15:19.494655Z\",\"18\":\"2023-10-11T17:15:19.494660Z\",\"19\":\"2023-10-12T17:15:19.494665Z\",\"20\":\"2023-10-13T17:15:19.494670Z\",\"21\":\"2023-10-14T17:15:19.494675Z\",\"22\":\"2023-10-15T17:15:19.494680Z\",\"23\":\"2023-10-16T17:15:19.494687Z\",\"24\":\"2023-10-17T17:15:19.494692Z\",\"25\":\"2023-10-18T17:15:19.494697Z\",\"26\":\"2023-10-19T17:15:19.494702Z\",\"27\":\"2023-10-20T17:15:19.494707Z\",\"28\":\"2023-10-21T17:15:19.494712Z\",\"29\":\"2023-10-22T17:15:19.494717Z\"}', 'crypto plans', 196, 30, 9600),
(191, '2023-09-22 16:15:47', '2023-09-24 09:37:45', 'V.I.P PLAN', '90', '2023-09-22 17:15:47', '720', '89999.1', '2799972', '2023-10-22 17:15:47', '99999', '0', '{\"1\":\"2023-09-24T17:15:47.776633Z\",\"2\":\"2023-09-25T17:15:47.776640Z\",\"3\":\"2023-09-26T17:15:47.776646Z\",\"4\":\"2023-09-27T17:15:47.776652Z\",\"5\":\"2023-09-28T17:15:47.776658Z\",\"6\":\"2023-09-29T17:15:47.776663Z\",\"7\":\"2023-09-30T17:15:47.776671Z\",\"8\":\"2023-10-01T17:15:47.776677Z\",\"9\":\"2023-10-02T17:15:47.776682Z\",\"10\":\"2023-10-03T17:15:47.776688Z\",\"11\":\"2023-10-04T17:15:47.776693Z\",\"12\":\"2023-10-05T17:15:47.776698Z\",\"13\":\"2023-10-06T17:15:47.776704Z\",\"14\":\"2023-10-07T17:15:47.776709Z\",\"15\":\"2023-10-08T17:15:47.776718Z\",\"16\":\"2023-10-09T17:15:47.776723Z\",\"17\":\"2023-10-10T17:15:47.776729Z\",\"18\":\"2023-10-11T17:15:47.776734Z\",\"19\":\"2023-10-12T17:15:47.776739Z\",\"20\":\"2023-10-13T17:15:47.776745Z\",\"21\":\"2023-10-14T17:15:47.776750Z\",\"22\":\"2023-10-15T17:15:47.776755Z\",\"23\":\"2023-10-16T17:15:47.776762Z\",\"24\":\"2023-10-17T17:15:47.776767Z\",\"25\":\"2023-10-18T17:15:47.776772Z\",\"26\":\"2023-10-19T17:15:47.776778Z\",\"27\":\"2023-10-20T17:15:47.776783Z\",\"28\":\"2023-10-21T17:15:47.776788Z\",\"29\":\"2023-10-22T17:15:47.776793Z\"}', 'crypto plans', 196, 30, 89999),
(192, '2023-09-22 16:16:08', '2023-09-24 09:37:45', 'OIL AND GAS PLAN', '130.3', '2023-09-22 17:16:08', '720', '52120', '1603600', '2023-10-22 17:16:08', '40000', '0', '{\"1\":\"2023-09-24T17:16:08.825327Z\",\"2\":\"2023-09-25T17:16:08.825333Z\",\"3\":\"2023-09-26T17:16:08.825339Z\",\"4\":\"2023-09-27T17:16:08.825344Z\",\"5\":\"2023-09-28T17:16:08.825350Z\",\"6\":\"2023-09-29T17:16:08.825355Z\",\"7\":\"2023-09-30T17:16:08.825363Z\",\"8\":\"2023-10-01T17:16:08.825369Z\",\"9\":\"2023-10-02T17:16:08.825374Z\",\"10\":\"2023-10-03T17:16:08.825379Z\",\"11\":\"2023-10-04T17:16:08.825384Z\",\"12\":\"2023-10-05T17:16:08.825389Z\",\"13\":\"2023-10-06T17:16:08.825395Z\",\"14\":\"2023-10-07T17:16:08.825400Z\",\"15\":\"2023-10-08T17:16:08.825406Z\",\"16\":\"2023-10-09T17:16:08.825412Z\",\"17\":\"2023-10-10T17:16:08.825417Z\",\"18\":\"2023-10-11T17:16:08.825422Z\",\"19\":\"2023-10-12T17:16:08.825427Z\",\"20\":\"2023-10-13T17:16:08.825432Z\",\"21\":\"2023-10-14T17:16:08.825437Z\",\"22\":\"2023-10-15T17:16:08.825442Z\",\"23\":\"2023-10-16T17:16:08.825450Z\",\"24\":\"2023-10-17T17:16:08.825455Z\",\"25\":\"2023-10-18T17:16:08.825460Z\",\"26\":\"2023-10-19T17:16:08.825465Z\",\"27\":\"2023-10-20T17:16:08.825470Z\",\"28\":\"2023-10-21T17:16:08.825475Z\",\"29\":\"2023-10-22T17:16:08.825480Z\"}', 'crypto plans', 196, 30, 52120);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` int NOT NULL,
  `read_status` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_22_141448_create_faqs_table', 1),
(5, '2021_07_22_171822_create_companydetails_table', 1),
(6, '2021_07_26_225650_create_deposits_table', 1),
(7, '2021_07_26_225706_create_withdrawals_table', 1),
(8, '2021_07_27_134944_create_investments_table', 1),
(9, '2021_07_28_132457_create_referrals_table', 1),
(10, '2021_07_28_162751_create_funds_table', 1),
(11, '2021_07_28_165642_create_investmentplans_table', 1),
(12, '2021_07_31_074639_create_newsposts_table', 1),
(13, '2021_08_01_135712_create_topearners_table', 1),
(14, '2021_09_07_193738_create_messages_table', 1),
(15, '2021_09_09_101753_create_notifications_table', 1),
(16, '2021_09_12_221029_create_sitesettings_table', 1),
(17, '2021_09_18_155003_laratrust_setup_tables', 1),
(18, '2022_02_03_102552_create_transfers_table', 1),
(19, '2022_02_08_235326_create_referralpercents_table', 1),
(20, '2022_02_08_235513_create_features_table', 1),
(21, '2022_03_09_014920_create_testimonials_table', 1),
(22, '2022_03_13_160456_create_cards_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsposts`
--

CREATE TABLE `newsposts` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `newstitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `newscontent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notification_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` int NOT NULL,
  `read_status` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ofomaeze556677@gmail.com', '$2y$10$HSNOfnoHomyNcWJrqpbRp.m1MlKZ/ANYUmPqtbW6ZlSSgGlCWs7by', '2022-11-10 10:24:15'),
('am7541848@gmail.com', '$2y$10$3jWr0j9orx6525ntopCOyO/D0nDrW5fQ241OcbWvA65gGan94KRa6', '2022-11-29 01:40:38'),
('mp9472631@gmail.com', '$2y$10$diccCHMx6UxqLRiW0f328ekNc9IlD5d8GJ1zjSotUT8N.3IQoNRpS', '2023-01-26 19:07:30'),
('gcssaranya@gmail.com', '$2y$10$yTovsiAFbXRmhGo2alzuRuKOG/bd72RdCPBVD6WP2qhC3lSSbht0u', '2023-05-02 13:31:06'),
('raihan297197@gmail.com', '$2y$10$jUkbyGy1CQckFclRXnnJBukGJUCWEJbKxJqCrO25T38FziTxWMnTq', '2023-05-04 16:26:20'),
('maryamhamza530@gmail.com', '$2y$10$Tqz8zjwsPs3g1IfE/xtv0eexYbFFDyBYZHzPxM1EebgTrW5LpV3fS', '2023-06-19 07:29:40'),
('shuaibuiseeh@gmail.com', '$2y$10$RoXalICg51Lf8D5SobWNdOjy5UHHd4G7ffy2q.S6wCB4B/3dJ/3oO', '2023-06-20 18:07:55'),
('gcscilambu@gmail.com', '$2y$10$iek6Tijj1l0DcLEEp/coBOoKeURqzSm5CCWSMyb06LqS3/blTclhC', '2023-08-21 14:57:11'),
('ekeziebuuzor@gmail.com', '$2y$10$BkuaVVAA06VXQC.IYtSZI.QDKvdEUaJAkVIo1Sao6NWSgsfX0z9cO', '2023-07-19 01:16:01'),
('afamatris@gmail.com', '$2y$10$vzNOJSMWDda7jgv9CF57vuR53bB7SflozuxPFmy2rLgBu0S6wawoK', '2023-07-19 01:16:59'),
('gkrohan198@gmail.com', '$2y$10$SskYyeiCkRSC/fUEwwsyBOSJ/RK83UD3R1RracybDr2Zqtsd3bDs.', '2023-07-21 05:38:05'),
('meelamahamood@gmail.com', '$2y$10$.P0Ar.wnysKBz1GtXM3QPuuucJVlNYcKYzaPg4vuTrFSh/qqP.seO', '2023-09-19 17:12:04');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2022-10-10 06:57:46', '2022-10-10 06:57:46'),
(2, 'users-read', 'Read Users', 'Read Users', '2022-10-10 06:57:46', '2022-10-10 06:57:46'),
(3, 'users-update', 'Update Users', 'Update Users', '2022-10-10 06:57:46', '2022-10-10 06:57:46'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2022-10-10 06:57:46', '2022-10-10 06:57:46'),
(5, 'payments-create', 'Create Payments', 'Create Payments', '2022-10-10 06:57:46', '2022-10-10 06:57:46'),
(6, 'payments-read', 'Read Payments', 'Read Payments', '2022-10-10 06:57:46', '2022-10-10 06:57:46'),
(7, 'payments-update', 'Update Payments', 'Update Payments', '2022-10-10 06:57:46', '2022-10-10 06:57:46'),
(8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2022-10-10 06:57:46', '2022-10-10 06:57:46'),
(9, 'profile-read', 'Read Profile', 'Read Profile', '2022-10-10 06:57:46', '2022-10-10 06:57:46'),
(10, 'profile-update', 'Update Profile', 'Update Profile', '2022-10-10 06:57:46', '2022-10-10 06:57:46'),
(11, 'module_1_name-create', 'Create Module_1_name', 'Create Module_1_name', '2022-10-10 06:57:46', '2022-10-10 06:57:46'),
(12, 'module_1_name-read', 'Read Module_1_name', 'Read Module_1_name', '2022-10-10 06:57:46', '2022-10-10 06:57:46'),
(13, 'module_1_name-update', 'Update Module_1_name', 'Update Module_1_name', '2022-10-10 06:57:46', '2022-10-10 06:57:46'),
(14, 'module_1_name-delete', 'Delete Module_1_name', 'Delete Module_1_name', '2022-10-10 06:57:46', '2022-10-10 06:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 4),
(12, 4),
(13, 4),
(14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referralpercents`
--

CREATE TABLE `referralpercents` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `firstref` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondref` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thirdref` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `newuserid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `newuseremail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `oldusername` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `olduseremail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `olduseruserid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `newusername` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'superadministrator', 'Superadministrator', 'Superadministrator', '2022-10-10 06:57:46', '2022-10-10 06:57:46'),
(2, 'administrator', 'Administrator', 'Administrator', '2022-10-10 06:57:46', '2022-10-10 06:57:46'),
(3, 'user', 'User', 'User', '2022-10-10 06:57:46', '2022-10-10 06:57:46'),
(4, 'role_name', 'Role Name', 'Role Name', '2022-10-10 06:57:46', '2022-10-10 06:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 3, 'App\\Models\\User'),
(1, 4, 'App\\Models\\User'),
(1, 5, 'App\\Models\\User'),
(1, 6, 'App\\Models\\User'),
(1, 7, 'App\\Models\\User'),
(1, 8, 'App\\Models\\User'),
(1, 9, 'App\\Models\\User'),
(1, 10, 'App\\Models\\User'),
(1, 11, 'App\\Models\\User'),
(1, 12, 'App\\Models\\User'),
(1, 13, 'App\\Models\\User'),
(1, 14, 'App\\Models\\User'),
(1, 15, 'App\\Models\\User'),
(1, 16, 'App\\Models\\User'),
(1, 17, 'App\\Models\\User'),
(1, 18, 'App\\Models\\User'),
(1, 19, 'App\\Models\\User'),
(1, 20, 'App\\Models\\User'),
(1, 21, 'App\\Models\\User'),
(1, 22, 'App\\Models\\User'),
(1, 23, 'App\\Models\\User'),
(1, 24, 'App\\Models\\User'),
(1, 25, 'App\\Models\\User'),
(1, 26, 'App\\Models\\User'),
(1, 27, 'App\\Models\\User'),
(1, 28, 'App\\Models\\User'),
(1, 29, 'App\\Models\\User'),
(1, 30, 'App\\Models\\User'),
(1, 31, 'App\\Models\\User'),
(1, 32, 'App\\Models\\User'),
(1, 33, 'App\\Models\\User'),
(1, 34, 'App\\Models\\User'),
(1, 35, 'App\\Models\\User'),
(1, 36, 'App\\Models\\User'),
(1, 37, 'App\\Models\\User'),
(1, 38, 'App\\Models\\User'),
(1, 39, 'App\\Models\\User'),
(1, 40, 'App\\Models\\User'),
(1, 41, 'App\\Models\\User'),
(1, 42, 'App\\Models\\User'),
(1, 43, 'App\\Models\\User'),
(1, 44, 'App\\Models\\User'),
(1, 45, 'App\\Models\\User'),
(1, 46, 'App\\Models\\User'),
(1, 47, 'App\\Models\\User'),
(1, 48, 'App\\Models\\User'),
(1, 49, 'App\\Models\\User'),
(1, 50, 'App\\Models\\User'),
(1, 51, 'App\\Models\\User'),
(1, 52, 'App\\Models\\User'),
(1, 53, 'App\\Models\\User'),
(1, 54, 'App\\Models\\User'),
(1, 55, 'App\\Models\\User'),
(1, 56, 'App\\Models\\User'),
(1, 57, 'App\\Models\\User'),
(1, 58, 'App\\Models\\User'),
(1, 59, 'App\\Models\\User'),
(1, 60, 'App\\Models\\User'),
(1, 61, 'App\\Models\\User'),
(1, 62, 'App\\Models\\User'),
(1, 63, 'App\\Models\\User'),
(1, 64, 'App\\Models\\User'),
(1, 65, 'App\\Models\\User'),
(1, 66, 'App\\Models\\User'),
(1, 67, 'App\\Models\\User'),
(1, 68, 'App\\Models\\User'),
(1, 69, 'App\\Models\\User'),
(1, 70, 'App\\Models\\User'),
(1, 71, 'App\\Models\\User'),
(1, 72, 'App\\Models\\User'),
(1, 73, 'App\\Models\\User'),
(1, 74, 'App\\Models\\User'),
(1, 75, 'App\\Models\\User'),
(1, 76, 'App\\Models\\User'),
(1, 77, 'App\\Models\\User'),
(1, 78, 'App\\Models\\User'),
(1, 79, 'App\\Models\\User'),
(1, 80, 'App\\Models\\User'),
(1, 81, 'App\\Models\\User'),
(1, 82, 'App\\Models\\User'),
(1, 83, 'App\\Models\\User'),
(1, 84, 'App\\Models\\User'),
(1, 85, 'App\\Models\\User'),
(1, 86, 'App\\Models\\User'),
(1, 87, 'App\\Models\\User'),
(1, 88, 'App\\Models\\User'),
(1, 89, 'App\\Models\\User'),
(1, 90, 'App\\Models\\User'),
(1, 91, 'App\\Models\\User'),
(1, 92, 'App\\Models\\User'),
(1, 93, 'App\\Models\\User'),
(1, 94, 'App\\Models\\User'),
(1, 95, 'App\\Models\\User'),
(1, 96, 'App\\Models\\User'),
(1, 97, 'App\\Models\\User'),
(1, 98, 'App\\Models\\User'),
(1, 99, 'App\\Models\\User'),
(1, 100, 'App\\Models\\User'),
(1, 101, 'App\\Models\\User'),
(1, 102, 'App\\Models\\User'),
(1, 103, 'App\\Models\\User'),
(1, 104, 'App\\Models\\User'),
(1, 105, 'App\\Models\\User'),
(1, 106, 'App\\Models\\User'),
(1, 107, 'App\\Models\\User'),
(1, 108, 'App\\Models\\User'),
(1, 109, 'App\\Models\\User'),
(1, 110, 'App\\Models\\User'),
(1, 111, 'App\\Models\\User'),
(1, 112, 'App\\Models\\User'),
(1, 113, 'App\\Models\\User'),
(1, 114, 'App\\Models\\User'),
(1, 115, 'App\\Models\\User'),
(1, 116, 'App\\Models\\User'),
(1, 117, 'App\\Models\\User'),
(1, 118, 'App\\Models\\User'),
(1, 119, 'App\\Models\\User'),
(1, 120, 'App\\Models\\User'),
(1, 121, 'App\\Models\\User'),
(1, 122, 'App\\Models\\User'),
(1, 123, 'App\\Models\\User'),
(1, 124, 'App\\Models\\User'),
(1, 125, 'App\\Models\\User'),
(1, 126, 'App\\Models\\User'),
(1, 127, 'App\\Models\\User'),
(1, 128, 'App\\Models\\User'),
(1, 129, 'App\\Models\\User'),
(1, 130, 'App\\Models\\User'),
(1, 131, 'App\\Models\\User'),
(1, 132, 'App\\Models\\User'),
(1, 133, 'App\\Models\\User'),
(1, 134, 'App\\Models\\User'),
(1, 135, 'App\\Models\\User'),
(1, 136, 'App\\Models\\User'),
(1, 137, 'App\\Models\\User'),
(1, 138, 'App\\Models\\User'),
(1, 139, 'App\\Models\\User'),
(1, 140, 'App\\Models\\User'),
(1, 141, 'App\\Models\\User'),
(1, 142, 'App\\Models\\User'),
(1, 143, 'App\\Models\\User'),
(1, 144, 'App\\Models\\User'),
(1, 145, 'App\\Models\\User'),
(1, 146, 'App\\Models\\User'),
(1, 147, 'App\\Models\\User'),
(1, 148, 'App\\Models\\User'),
(1, 149, 'App\\Models\\User'),
(1, 150, 'App\\Models\\User'),
(1, 151, 'App\\Models\\User'),
(1, 152, 'App\\Models\\User'),
(1, 153, 'App\\Models\\User'),
(1, 154, 'App\\Models\\User'),
(1, 155, 'App\\Models\\User'),
(1, 156, 'App\\Models\\User'),
(1, 157, 'App\\Models\\User'),
(1, 158, 'App\\Models\\User'),
(1, 159, 'App\\Models\\User'),
(1, 160, 'App\\Models\\User'),
(1, 161, 'App\\Models\\User'),
(1, 162, 'App\\Models\\User'),
(1, 163, 'App\\Models\\User'),
(1, 164, 'App\\Models\\User'),
(1, 165, 'App\\Models\\User'),
(1, 166, 'App\\Models\\User'),
(1, 167, 'App\\Models\\User'),
(1, 168, 'App\\Models\\User'),
(1, 169, 'App\\Models\\User'),
(1, 170, 'App\\Models\\User'),
(1, 171, 'App\\Models\\User'),
(1, 172, 'App\\Models\\User'),
(1, 173, 'App\\Models\\User'),
(1, 174, 'App\\Models\\User'),
(1, 175, 'App\\Models\\User'),
(1, 176, 'App\\Models\\User'),
(1, 177, 'App\\Models\\User'),
(1, 178, 'App\\Models\\User'),
(1, 179, 'App\\Models\\User'),
(1, 180, 'App\\Models\\User'),
(1, 181, 'App\\Models\\User'),
(1, 182, 'App\\Models\\User'),
(1, 183, 'App\\Models\\User'),
(1, 184, 'App\\Models\\User'),
(1, 185, 'App\\Models\\User'),
(1, 186, 'App\\Models\\User'),
(1, 187, 'App\\Models\\User'),
(1, 188, 'App\\Models\\User'),
(1, 189, 'App\\Models\\User'),
(1, 190, 'App\\Models\\User'),
(1, 191, 'App\\Models\\User'),
(1, 192, 'App\\Models\\User'),
(1, 193, 'App\\Models\\User'),
(1, 194, 'App\\Models\\User'),
(1, 195, 'App\\Models\\User'),
(1, 196, 'App\\Models\\User'),
(1, 197, 'App\\Models\\User'),
(1, 198, 'App\\Models\\User'),
(1, 199, 'App\\Models\\User'),
(1, 200, 'App\\Models\\User'),
(1, 201, 'App\\Models\\User'),
(1, 202, 'App\\Models\\User'),
(1, 203, 'App\\Models\\User'),
(1, 204, 'App\\Models\\User'),
(1, 205, 'App\\Models\\User'),
(1, 206, 'App\\Models\\User'),
(1, 207, 'App\\Models\\User'),
(1, 208, 'App\\Models\\User'),
(1, 209, 'App\\Models\\User'),
(1, 210, 'App\\Models\\User'),
(1, 211, 'App\\Models\\User'),
(1, 212, 'App\\Models\\User'),
(1, 213, 'App\\Models\\User'),
(1, 214, 'App\\Models\\User'),
(1, 215, 'App\\Models\\User'),
(1, 216, 'App\\Models\\User'),
(1, 217, 'App\\Models\\User'),
(1, 218, 'App\\Models\\User'),
(1, 219, 'App\\Models\\User'),
(1, 220, 'App\\Models\\User'),
(1, 221, 'App\\Models\\User'),
(1, 222, 'App\\Models\\User'),
(1, 223, 'App\\Models\\User'),
(1, 224, 'App\\Models\\User'),
(1, 225, 'App\\Models\\User'),
(1, 226, 'App\\Models\\User'),
(1, 227, 'App\\Models\\User'),
(1, 228, 'App\\Models\\User'),
(1, 229, 'App\\Models\\User'),
(1, 230, 'App\\Models\\User'),
(1, 231, 'App\\Models\\User'),
(1, 232, 'App\\Models\\User'),
(1, 233, 'App\\Models\\User'),
(1, 234, 'App\\Models\\User'),
(1, 235, 'App\\Models\\User'),
(1, 236, 'App\\Models\\User'),
(1, 237, 'App\\Models\\User'),
(1, 238, 'App\\Models\\User'),
(1, 239, 'App\\Models\\User'),
(1, 240, 'App\\Models\\User'),
(1, 241, 'App\\Models\\User'),
(1, 242, 'App\\Models\\User'),
(1, 243, 'App\\Models\\User'),
(1, 244, 'App\\Models\\User'),
(1, 245, 'App\\Models\\User'),
(1, 246, 'App\\Models\\User'),
(1, 247, 'App\\Models\\User'),
(1, 248, 'App\\Models\\User'),
(1, 249, 'App\\Models\\User'),
(1, 250, 'App\\Models\\User'),
(1, 251, 'App\\Models\\User'),
(1, 252, 'App\\Models\\User'),
(1, 253, 'App\\Models\\User'),
(1, 254, 'App\\Models\\User'),
(1, 255, 'App\\Models\\User'),
(1, 256, 'App\\Models\\User'),
(1, 257, 'App\\Models\\User'),
(1, 258, 'App\\Models\\User'),
(1, 259, 'App\\Models\\User'),
(1, 260, 'App\\Models\\User'),
(1, 261, 'App\\Models\\User'),
(1, 262, 'App\\Models\\User'),
(1, 263, 'App\\Models\\User'),
(1, 264, 'App\\Models\\User'),
(1, 265, 'App\\Models\\User'),
(1, 266, 'App\\Models\\User'),
(1, 267, 'App\\Models\\User'),
(1, 268, 'App\\Models\\User'),
(1, 269, 'App\\Models\\User'),
(1, 270, 'App\\Models\\User'),
(1, 271, 'App\\Models\\User'),
(1, 272, 'App\\Models\\User'),
(1, 273, 'App\\Models\\User'),
(1, 274, 'App\\Models\\User'),
(1, 275, 'App\\Models\\User'),
(1, 276, 'App\\Models\\User'),
(1, 277, 'App\\Models\\User'),
(1, 278, 'App\\Models\\User'),
(1, 279, 'App\\Models\\User'),
(1, 280, 'App\\Models\\User'),
(1, 281, 'App\\Models\\User'),
(1, 282, 'App\\Models\\User'),
(1, 283, 'App\\Models\\User'),
(1, 284, 'App\\Models\\User'),
(1, 285, 'App\\Models\\User'),
(1, 286, 'App\\Models\\User'),
(1, 287, 'App\\Models\\User'),
(1, 288, 'App\\Models\\User'),
(1, 289, 'App\\Models\\User'),
(1, 290, 'App\\Models\\User'),
(1, 291, 'App\\Models\\User'),
(1, 292, 'App\\Models\\User'),
(1, 293, 'App\\Models\\User'),
(1, 294, 'App\\Models\\User'),
(1, 295, 'App\\Models\\User'),
(1, 296, 'App\\Models\\User'),
(1, 297, 'App\\Models\\User'),
(1, 298, 'App\\Models\\User'),
(1, 299, 'App\\Models\\User'),
(1, 300, 'App\\Models\\User'),
(1, 301, 'App\\Models\\User'),
(1, 302, 'App\\Models\\User'),
(1, 303, 'App\\Models\\User'),
(1, 304, 'App\\Models\\User'),
(1, 305, 'App\\Models\\User'),
(1, 306, 'App\\Models\\User'),
(1, 307, 'App\\Models\\User'),
(1, 308, 'App\\Models\\User'),
(1, 309, 'App\\Models\\User'),
(1, 310, 'App\\Models\\User'),
(1, 311, 'App\\Models\\User'),
(1, 312, 'App\\Models\\User'),
(1, 313, 'App\\Models\\User'),
(1, 314, 'App\\Models\\User'),
(1, 315, 'App\\Models\\User'),
(1, 316, 'App\\Models\\User'),
(1, 317, 'App\\Models\\User'),
(1, 318, 'App\\Models\\User'),
(1, 319, 'App\\Models\\User'),
(1, 320, 'App\\Models\\User'),
(1, 321, 'App\\Models\\User'),
(1, 322, 'App\\Models\\User'),
(1, 323, 'App\\Models\\User'),
(1, 324, 'App\\Models\\User'),
(1, 325, 'App\\Models\\User'),
(1, 326, 'App\\Models\\User'),
(1, 327, 'App\\Models\\User'),
(1, 328, 'App\\Models\\User'),
(1, 329, 'App\\Models\\User'),
(1, 330, 'App\\Models\\User'),
(1, 331, 'App\\Models\\User'),
(1, 332, 'App\\Models\\User'),
(1, 333, 'App\\Models\\User'),
(1, 334, 'App\\Models\\User'),
(1, 335, 'App\\Models\\User'),
(1, 336, 'App\\Models\\User'),
(1, 337, 'App\\Models\\User'),
(1, 338, 'App\\Models\\User'),
(1, 339, 'App\\Models\\User'),
(1, 340, 'App\\Models\\User'),
(1, 341, 'App\\Models\\User'),
(1, 342, 'App\\Models\\User'),
(1, 343, 'App\\Models\\User'),
(1, 344, 'App\\Models\\User'),
(1, 345, 'App\\Models\\User'),
(1, 346, 'App\\Models\\User'),
(1, 347, 'App\\Models\\User'),
(1, 348, 'App\\Models\\User'),
(1, 349, 'App\\Models\\User'),
(1, 350, 'App\\Models\\User'),
(1, 351, 'App\\Models\\User'),
(1, 352, 'App\\Models\\User'),
(1, 353, 'App\\Models\\User'),
(1, 354, 'App\\Models\\User'),
(1, 355, 'App\\Models\\User'),
(1, 356, 'App\\Models\\User'),
(1, 357, 'App\\Models\\User'),
(1, 358, 'App\\Models\\User'),
(1, 359, 'App\\Models\\User'),
(1, 360, 'App\\Models\\User'),
(1, 361, 'App\\Models\\User'),
(1, 362, 'App\\Models\\User'),
(1, 363, 'App\\Models\\User'),
(1, 364, 'App\\Models\\User'),
(1, 365, 'App\\Models\\User'),
(1, 366, 'App\\Models\\User'),
(1, 367, 'App\\Models\\User'),
(1, 368, 'App\\Models\\User'),
(1, 369, 'App\\Models\\User'),
(1, 370, 'App\\Models\\User'),
(1, 371, 'App\\Models\\User'),
(1, 372, 'App\\Models\\User'),
(1, 373, 'App\\Models\\User'),
(1, 374, 'App\\Models\\User'),
(1, 375, 'App\\Models\\User'),
(1, 376, 'App\\Models\\User'),
(1, 377, 'App\\Models\\User'),
(1, 378, 'App\\Models\\User'),
(1, 379, 'App\\Models\\User'),
(1, 380, 'App\\Models\\User'),
(1, 381, 'App\\Models\\User'),
(1, 382, 'App\\Models\\User'),
(1, 383, 'App\\Models\\User'),
(1, 384, 'App\\Models\\User'),
(1, 385, 'App\\Models\\User'),
(1, 386, 'App\\Models\\User'),
(1, 387, 'App\\Models\\User'),
(1, 388, 'App\\Models\\User'),
(1, 389, 'App\\Models\\User'),
(1, 390, 'App\\Models\\User'),
(1, 391, 'App\\Models\\User'),
(1, 392, 'App\\Models\\User'),
(1, 393, 'App\\Models\\User'),
(1, 394, 'App\\Models\\User'),
(1, 395, 'App\\Models\\User'),
(1, 396, 'App\\Models\\User'),
(1, 397, 'App\\Models\\User'),
(1, 398, 'App\\Models\\User'),
(1, 399, 'App\\Models\\User'),
(1, 400, 'App\\Models\\User'),
(1, 401, 'App\\Models\\User'),
(1, 402, 'App\\Models\\User'),
(1, 403, 'App\\Models\\User'),
(1, 404, 'App\\Models\\User'),
(1, 405, 'App\\Models\\User'),
(1, 406, 'App\\Models\\User'),
(1, 407, 'App\\Models\\User'),
(1, 408, 'App\\Models\\User'),
(1, 409, 'App\\Models\\User'),
(1, 410, 'App\\Models\\User'),
(1, 411, 'App\\Models\\User'),
(1, 412, 'App\\Models\\User'),
(1, 413, 'App\\Models\\User'),
(1, 414, 'App\\Models\\User'),
(1, 415, 'App\\Models\\User'),
(1, 416, 'App\\Models\\User'),
(1, 417, 'App\\Models\\User'),
(1, 418, 'App\\Models\\User'),
(1, 419, 'App\\Models\\User'),
(1, 420, 'App\\Models\\User'),
(1, 421, 'App\\Models\\User'),
(1, 422, 'App\\Models\\User'),
(1, 423, 'App\\Models\\User'),
(1, 424, 'App\\Models\\User'),
(1, 425, 'App\\Models\\User'),
(1, 426, 'App\\Models\\User'),
(1, 427, 'App\\Models\\User'),
(1, 428, 'App\\Models\\User'),
(1, 429, 'App\\Models\\User'),
(1, 430, 'App\\Models\\User'),
(1, 431, 'App\\Models\\User'),
(1, 432, 'App\\Models\\User'),
(1, 433, 'App\\Models\\User'),
(1, 434, 'App\\Models\\User'),
(1, 435, 'App\\Models\\User'),
(1, 436, 'App\\Models\\User'),
(1, 437, 'App\\Models\\User'),
(1, 438, 'App\\Models\\User'),
(1, 439, 'App\\Models\\User'),
(1, 440, 'App\\Models\\User'),
(1, 441, 'App\\Models\\User'),
(1, 442, 'App\\Models\\User'),
(1, 443, 'App\\Models\\User'),
(1, 444, 'App\\Models\\User'),
(1, 445, 'App\\Models\\User'),
(1, 446, 'App\\Models\\User'),
(1, 447, 'App\\Models\\User'),
(1, 448, 'App\\Models\\User'),
(1, 449, 'App\\Models\\User'),
(1, 450, 'App\\Models\\User'),
(1, 451, 'App\\Models\\User'),
(1, 452, 'App\\Models\\User'),
(1, 453, 'App\\Models\\User'),
(1, 454, 'App\\Models\\User'),
(1, 455, 'App\\Models\\User'),
(1, 456, 'App\\Models\\User'),
(1, 457, 'App\\Models\\User'),
(1, 458, 'App\\Models\\User'),
(1, 459, 'App\\Models\\User'),
(1, 460, 'App\\Models\\User'),
(1, 461, 'App\\Models\\User'),
(1, 462, 'App\\Models\\User'),
(1, 463, 'App\\Models\\User'),
(1, 464, 'App\\Models\\User'),
(1, 465, 'App\\Models\\User'),
(1, 466, 'App\\Models\\User'),
(1, 467, 'App\\Models\\User'),
(1, 468, 'App\\Models\\User'),
(1, 469, 'App\\Models\\User'),
(1, 470, 'App\\Models\\User'),
(1, 471, 'App\\Models\\User'),
(1, 472, 'App\\Models\\User'),
(1, 473, 'App\\Models\\User'),
(1, 474, 'App\\Models\\User'),
(1, 475, 'App\\Models\\User'),
(1, 476, 'App\\Models\\User'),
(1, 477, 'App\\Models\\User'),
(1, 478, 'App\\Models\\User'),
(1, 479, 'App\\Models\\User'),
(1, 480, 'App\\Models\\User'),
(1, 481, 'App\\Models\\User'),
(1, 482, 'App\\Models\\User'),
(1, 483, 'App\\Models\\User'),
(1, 484, 'App\\Models\\User'),
(1, 485, 'App\\Models\\User'),
(1, 486, 'App\\Models\\User'),
(1, 487, 'App\\Models\\User'),
(1, 488, 'App\\Models\\User'),
(1, 489, 'App\\Models\\User'),
(1, 490, 'App\\Models\\User'),
(1, 491, 'App\\Models\\User'),
(1, 492, 'App\\Models\\User'),
(1, 493, 'App\\Models\\User'),
(1, 494, 'App\\Models\\User'),
(1, 495, 'App\\Models\\User'),
(1, 496, 'App\\Models\\User'),
(1, 497, 'App\\Models\\User'),
(1, 498, 'App\\Models\\User'),
(1, 499, 'App\\Models\\User'),
(1, 500, 'App\\Models\\User'),
(1, 501, 'App\\Models\\User'),
(1, 502, 'App\\Models\\User'),
(1, 503, 'App\\Models\\User'),
(1, 504, 'App\\Models\\User'),
(1, 505, 'App\\Models\\User'),
(1, 506, 'App\\Models\\User'),
(1, 507, 'App\\Models\\User'),
(1, 508, 'App\\Models\\User'),
(1, 509, 'App\\Models\\User'),
(1, 510, 'App\\Models\\User'),
(1, 511, 'App\\Models\\User'),
(1, 512, 'App\\Models\\User'),
(1, 513, 'App\\Models\\User'),
(1, 514, 'App\\Models\\User'),
(1, 515, 'App\\Models\\User'),
(1, 516, 'App\\Models\\User'),
(1, 517, 'App\\Models\\User'),
(1, 518, 'App\\Models\\User'),
(1, 519, 'App\\Models\\User'),
(1, 520, 'App\\Models\\User'),
(1, 521, 'App\\Models\\User'),
(1, 522, 'App\\Models\\User'),
(1, 523, 'App\\Models\\User'),
(1, 524, 'App\\Models\\User'),
(1, 525, 'App\\Models\\User'),
(1, 526, 'App\\Models\\User'),
(1, 527, 'App\\Models\\User'),
(1, 528, 'App\\Models\\User'),
(1, 529, 'App\\Models\\User'),
(1, 530, 'App\\Models\\User'),
(1, 531, 'App\\Models\\User'),
(1, 532, 'App\\Models\\User'),
(1, 533, 'App\\Models\\User'),
(1, 534, 'App\\Models\\User'),
(1, 535, 'App\\Models\\User'),
(1, 536, 'App\\Models\\User'),
(1, 537, 'App\\Models\\User'),
(1, 538, 'App\\Models\\User'),
(1, 539, 'App\\Models\\User'),
(1, 540, 'App\\Models\\User'),
(1, 541, 'App\\Models\\User'),
(1, 542, 'App\\Models\\User'),
(1, 543, 'App\\Models\\User'),
(1, 544, 'App\\Models\\User'),
(1, 545, 'App\\Models\\User'),
(1, 546, 'App\\Models\\User'),
(1, 547, 'App\\Models\\User'),
(1, 548, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `sitesettings`
--

CREATE TABLE `sitesettings` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `btc_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eth` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usdt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `xrp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdrawal_minimum` int NOT NULL DEFAULT '0',
  `withdrawal_maximum` int NOT NULL DEFAULT '9999999',
  `companyabouttitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyabouttext` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `companyname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyrunningdays` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyemail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companylocation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyphone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depositcharge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdrawlcharges` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitesettings`
--

INSERT INTO `sitesettings` (`id`, `created_at`, `updated_at`, `btc_address`, `paypal`, `eth`, `usdt`, `xrp`, `withdrawal_minimum`, `withdrawal_maximum`, `companyabouttitle`, `companyabouttext`, `companyname`, `companyrunningdays`, `companyemail`, `companylocation`, `companyphone`, `depositcharge`, `withdrawlcharges`) VALUES
(1, '2022-10-16 15:50:55', '2023-07-31 13:38:16', 'bc1qjtgwu6ng5hs6rps2m87fg3zu3hxj80gnv5tjmk', NULL, '0x6578e8c943F457ac4E3A6fa63f32d3CB9aAE54cC', 'TMCU8Tp5nKdibbMj3ZYQBpH8Ut3jogCt9q', 'rEJTVnxf7zBP36fDoE8xLatFjXDawYE3yb', 1, 999999999, 'About us', '<p>Futures Optimax Company is a professional wealth management company with emphasis on Wealth Creation and Digital Assets. We offer various insured services involved in the Blockchain with our prime interest in Cryptocurrency trading, Real Estate Investment, Oil and Gas, Financial and Investment planning. company name has qualified and licensed financiers that manages and provides financial consulting services for her investors.</p>', 'Futures Optimax', '24/7', 'support@futuresoptimax.com', 'Flat 41 Brookfield Farm, Curzon St, Lbstock, United Kingddom, LE67 6LA', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `created_at`, `updated_at`, `name`, `message`) VALUES
(1, '2023-01-14 20:56:55', '2023-01-14 20:56:55', 'Benjamin', '<p>UB</p>');

-- --------------------------------------------------------

--
-- Table structure for table `topearners`
--

CREATE TABLE `topearners` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `userid` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `userid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `beneficiary` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `created_at`, `updated_at`, `userid`, `amount`, `beneficiary`) VALUES
(1, '2022-11-10 08:58:22', '2022-11-10 08:58:22', '19', '100', 'patrickluc61@gmail.com'),
(2, '2022-11-10 09:04:35', '2022-11-10 09:04:35', '19', '200', 'patrickluc61@gmail.com'),
(3, '2022-11-10 11:06:39', '2022-11-10 11:06:39', '19', '5', 'patrickluc61@gmail.com'),
(4, '2022-11-10 11:07:23', '2022-11-10 11:07:23', '19', '5', 'robihannah33@gmail.com'),
(5, '2022-11-10 16:28:22', '2022-11-10 16:28:22', '33', '5', 'Seidualhassan928@gmail.com'),
(6, '2022-11-12 15:47:31', '2022-11-12 15:47:31', '33', '50', 'minakhisahoo399@gmail.com'),
(7, '2023-08-30 14:51:41', '2023-08-30 14:51:41', '156', '8', 'shodolamichael200@gmail.com'),
(8, '2023-08-31 13:30:09', '2023-08-31 13:30:09', '156', '14', 'meelamahamood@gmail.com'),
(9, '2023-09-02 08:58:55', '2023-09-02 08:58:55', '474', '20', 'tvprince36@gmail.com'),
(10, '2023-09-05 09:00:48', '2023-09-05 09:00:48', '474', '10', 'Anniesagyapong10@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `blocked` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `street` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_adddress` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profilepic` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminmessage` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `blocked`, `remember_token`, `created_at`, `updated_at`, `street`, `city`, `state`, `post_code`, `facebook`, `instagram`, `twitter`, `linkedin`, `wallet_adddress`, `profilepic`, `birthday`, `gender`, `address`, `adminmessage`) VALUES
(206, 'Abhi', 'ay2369836@gmail.com', NULL, '$2y$10$xfLMmZxTGoNlqDC7CZvl7erOXEgp8QcEb4lWJVtHaFGLIkt9xwZcC', '9827731361', '0', '0', NULL, '2023-05-15 18:45:37', '2023-05-15 18:45:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'Aloysius EZE', 'ezealoy04@gmail.com', NULL, '$2y$10$qsK7u1PEPOj1wmZPJHVe6Op2DjTrI3HX1W2GopqkNYrcfISY6CEha', '08054053725', '0', '1', NULL, '2023-05-15 12:14:23', '2023-09-14 09:36:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Ben', 'benjaminservices03@gmail.com', NULL, '$2y$10$0nGaONwjq6tn.8gDIJ/Mc.Aop1KBZRFDTKG1G6glGQAVsPQTEFFGO', '+892752815', '0', '0', NULL, '2022-10-10 11:38:32', '2022-10-10 11:38:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Big man', 'bouncebanana8@gmail.com', NULL, '$2y$10$1UkKNZwY2ndLfeDoDD15yuv9OdQYHrCyIxhAfzsp2kepKtsfTTbU.', '08036123645', '0', '0', NULL, '2022-10-11 07:48:35', '2022-10-11 07:48:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Fidel Mills', 'halle41@mteen.net', NULL, '$2y$10$gyn7imbO4ZBWlAvnNHV2mu.G4cVbVsVwvLUmC4G5IDmrt72TOC2u6', '485866047', '0', '0', NULL, '2022-10-13 18:35:21', '2022-10-13 18:35:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Ogunbiyi Babatunde', 'otunde4u@gmail.com', NULL, '$2y$10$g1en2U5CedvzRUbnHehhd.8xrAG9YjqU/hf.9xOLyD7lt5mJ6PZF6', '8035676244', '0', '0', NULL, '2022-10-14 01:08:57', '2022-10-14 01:08:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Deepack kumar', 'benizu86@gmail.com', NULL, '$2y$10$3qFej0P1GZfRr7qcZIFTV.m6yRN4UKa1rZdpsU0Ks7vfwPbz7OzIe', '08069456984', '0', '0', NULL, '2022-10-14 08:44:35', '2023-05-22 14:44:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4/08/1983', 'Gender', 'UK', NULL),
(8, 'Seidu', 'Seidulhassan928@gmai.com', NULL, '$2y$10$OJkFkfTQVgYQgLvaAwHHKuWaX5arzI0T2T8ZT8ITLMZkcu6aGE3dW', '0248596350', '0', '0', NULL, '2022-10-16 23:20:38', '2022-10-16 23:20:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Velu R', 'rvelu819@gmail.com', NULL, '$2y$10$VOnSbzbdlLtDsv0dE6lxIuPk5OTDd3XVcklB7SOoiyeybZrIq0do2', '8870613870', '0', '0', NULL, '2022-10-16 23:59:32', '2022-10-16 23:59:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Lisa', 'ofomata66778@gmail.com', NULL, '$2y$10$QI7Xjn4WlrVyhtYsjf51i.FNMUHnuMEk2yQ1wu./a2Ebi6QjvWuQC', '08141520008', '0', '0', NULL, '2022-10-23 07:02:48', '2022-10-23 07:02:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Benjamin Musembi', 'benja47054@gmail.com', '2022-10-23 07:48:49', '$2y$10$3ovfkaOK7IOY.gyz0zR7NO/4twn9akzxr0AXssaZEJDxdXhjgPRK6', '+254757868365', '0', '0', NULL, '2022-10-23 07:42:54', '2022-10-23 07:48:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'amir', 'amir.lashgari7979@yahoo.com', NULL, '$2y$10$mFSjFjM8C39YkT391cLm.utCFKA60t27/Rm658aRdinCnIbq1MY12', '44556677', '0', '0', NULL, '2022-10-23 10:36:08', '2022-10-23 10:36:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Peneki', 'jude44by2@gmail.com', '2022-10-23 13:37:18', '$2y$10$oFDZrj9NIfZRHxTT2pSIN.csw8Amhf0vZLyC2Mt/4DTf/g7iSf5Ue', '09045782488', '0', '0', NULL, '2022-10-23 13:31:41', '2022-10-23 13:37:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Offum Emmanuel', 'Offumemmanuel1@gmail.com', NULL, '$2y$10$EH47IrH3n//zcNFR2fiFYOMdCn/F0kKiDIrUXds2nLcEkFktjQK9G', '+233599322756', '0', '0', NULL, '2022-10-23 23:07:16', '2022-10-23 23:07:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Md rone islam', 'mdroneislam7103@gmail.com', NULL, '$2y$10$uxhSltQEcx9ndXxhZ1Uo.O.oUHgLeAanBhyQbo2fam45V4.RBBMGe', '01894357103', '0', '0', NULL, '2022-10-24 00:09:49', '2022-10-24 00:09:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'George', 'ofomat667788@gmail.com', '2022-10-24 13:25:44', '$2y$10$IUQhIOiWoxyaK6s4U8teouEJ7.6ud3HROy.q0tnMChACXbfITGRQG', '08141520008', '0', '0', NULL, '2022-10-24 13:07:19', '2022-10-24 13:25:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Eastonbenz', 'benz74170@gmail.com', NULL, '$2y$10$vkfYrRF8hESDLfjIvEK0X./VIll8wdcJ9BFc/EdRnhsntEBlWu8Ui', '08069456984', '0', '0', NULL, '2022-10-24 14:06:00', '2022-10-24 14:06:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Justin', 'iwal2874@gmail.com', NULL, '$2y$10$O1.XnlIHvoDGlFstMSZypOdeC4XFrY9YnvXPbWvFQnsyfD92E5i4e', '08069456984', '0', '0', NULL, '2022-10-24 14:15:04', '2023-05-20 04:09:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4/08/1983', 'Gender', 'UK', NULL),
(19, 'Abdullah', 'supfuturesoptimax@gmail.com', NULL, '$2y$10$cIST/5PGkwFJxSlpfBFHxO1rjjaeXcGiW2Jy.qVbeflNkxz15Yjty', '08042574278', '0', '0', NULL, '2022-10-24 15:45:33', '2022-12-15 12:55:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12/6/1986', 'Gender', 'Hjjjjjj', NULL),
(20, 'LucBenart', 'benarlucy@gmail.com', '2022-10-27 13:42:45', '$2y$10$gWaiOhuUeR7UfZkuBXUtk.Iu1NctjUwx6pOVC2qJLQiGE366EAFCC', '08069456984', '0', '0', NULL, '2022-10-27 13:36:28', '2022-10-27 13:42:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Alexander', 'bimeoalexander@gmail.com', '2022-10-27 14:34:38', '$2y$10$OXG8zA/aajwgoCgGOK9lM.Rp7JejGw2EG0NtvAmIXb0nr3mhX9eFi', '08069456984', '0', '0', NULL, '2022-10-27 14:22:42', '2022-10-27 14:34:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Lina', 'ofomataeze445566@gmail.com', NULL, '$2y$10$JrpUodx7zSpet8hr1k7If.m2TcdcHcQTONdeZcVTuUTreUEofb2t.', '08141520008', '0', '0', NULL, '2022-10-28 09:15:45', '2022-10-28 09:15:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Emelia', 'ofomatajude556677@gmail.com', NULL, '$2y$10$5lvTLqALxiya1/ouJ4gFL.sovCk9TyFTEg.f8cCp9jxxC3i0hqxuu', '091620345424', '0', '0', NULL, '2022-10-29 07:58:18', '2022-10-29 07:58:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'CUMA', 'robihannah33@gmail.com', NULL, '$2y$10$a0apXe.MJlfoAGIpBg/Pg.XqzwsHApSQWwRVfc0pASr3RRo3e5c5C', '08042574278', '0', '0', NULL, '2022-10-29 11:37:47', '2022-12-15 07:02:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12/6/1986', '2', 'Ggjj', NULL),
(25, 'Pat Kumar', 'patrickluc61@gmail.com', NULL, '$2y$10$D9QSsx9XbYXAVoV9qt7Zd.PURFBgeOmMquoJ4mhoxFfM7P.g4d0w2', '08042574278', '0', '0', NULL, '2022-10-29 12:05:02', '2022-11-21 20:07:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4/6/1979', 'Gender', 'In', NULL),
(26, 'Seth Smallville', 'smallvillestudios10@gmail.com', NULL, '$2y$10$oYAN/8FY0WcGUJ53VnlFXe/OcNOIArTBrNBFCdYN8X4rZ3RpFPZeS', '0554303269', '0', '0', NULL, '2022-11-01 05:44:37', '2022-11-01 05:44:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Lahiru Shantha', 'lahirushantha00j24@gmail.com', NULL, '$2y$10$O1shrdj3VKXDwn1V0/HNCuT6IkUd9EI7isOs.UrNpNMrzjqeY.5Cy', '0769657224', '0', '0', NULL, '2022-11-03 01:17:29', '2022-11-03 01:17:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Shrawansingh Sindhal', 'shrawansinghsingh74@gmail.com', NULL, '$2y$10$WaTePDDeAXZB6I6JsJ5xy.JtOSZKWgtj228vcitnR5gt2ibqrwvUW', '9158151570', '0', '0', NULL, '2022-11-03 17:59:12', '2022-11-03 17:59:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Vikky Singh', 'Rishirajput0@gmail.com', NULL, '$2y$10$.vcsimOfKFue6BGSsxiRwOE0duazv35OV3MoXBzZ6wbJMTO6Vnfhe', '7405740558', '0', '0', NULL, '2022-11-04 06:23:32', '2022-11-04 06:23:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Md Sarfaraz', 'rockandrolllegend11@gmail.com', NULL, '$2y$10$hv2SljniSRQ28JeGEunUK.OyMK7CEfFdTeGgEoa4bBIaTqkA5VrHu', '9051111858', '0', '0', NULL, '2022-11-09 02:20:29', '2022-11-09 02:20:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'baatherine', 'ofomaeze556677@gmail.com', NULL, '$2y$10$3FYBmrJPZpVnd4tn5R.wZeqwn9.xrGc3ztdJ/gw2Cwfwy.lXgMZqu', '8041520008', '0', '0', NULL, '2022-11-10 08:43:00', '2022-11-10 08:43:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Natalie', 'info@futuresoptimax.com', NULL, '$2y$10$qxw2dJhlnNl29OsCIQ6eYOaY9mA0Frj5CaGj6d5Uxsb7x0vNp3xn2', '08042574278', '0', '0', NULL, '2022-11-10 09:10:45', '2022-11-10 09:10:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'James kana', 'ugwuanyieze23@gmail.com', NULL, '$2y$10$5Q6ZX57yAnF7BmKMDXRLYuT6R0Hq102N4XyeK3keqR4wVmomIzIfy', '8041520008', '0', '0', NULL, '2022-11-10 10:19:38', '2022-11-17 17:20:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16031890', 'Gender', 'Abuja', NULL),
(34, 'Nuwan', 'NuNuwannadishka11@gmail.com', NULL, '$2y$10$CplMnf.uFxsEDjurgzXrD.Vz2XW5C54xC6.G.PLEXVb1RUv.ivPne', '0779386418', '0', '0', NULL, '2022-11-10 12:27:12', '2022-11-10 12:27:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Alex Willson', 'forpayeer0431@gmail.com', NULL, '$2y$10$jerjDLsahBbEiqCVmFV/Vu3dC0BemomHVsnDTBwCMnk7DKGv7Uxsm', '+165828521', '0', '0', NULL, '2022-11-10 14:02:44', '2022-11-10 14:02:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Seidu Alhassan', 'seidualhassan928@gmail.com', '2022-11-10 16:16:30', '$2y$10$WNd64o0U2RNZOHtu2dEGaulFdclz1rDaYfJDrLh5/WDHBvpyPhsCi', '0248596350', '0', '0', NULL, '2022-11-10 16:15:35', '2022-11-10 16:16:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Ganguli Sahoo', 'minakhisahoo399@gmail.com', NULL, '$2y$10$QTNfVuFZklYzwMAz9NBDQ.rQmdAo7ikJoxe7DeEYVschoCdDVF3wu', '6370785935', '0', '0', NULL, '2022-11-12 14:27:37', '2022-11-12 14:27:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Savalan Alasov', 'savalanalovsoy@gmail.com', NULL, '$2y$10$A9aw39vtBdOHyMYApHRw5OAQ71Qzk1BPsb08R60dtjvEQxPa7343G', '994770323897', '0', '0', NULL, '2022-11-13 20:04:17', '2022-11-20 18:31:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '26/03/1994', '2', 'Bakikhanov settlement, Mukhtar Fataliyev Street', NULL),
(39, 'Rahul', 'rkp1782002@gmail.com', NULL, '$2y$10$Vs95AmzbLdiySYhJO1D2NuYNx.WrdpEy1ExtRcjyVVN358RrDWH.i', '8740990142', '0', '0', NULL, '2022-11-14 09:11:01', '2022-11-14 09:11:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Aman', 'panwaralok94@gmail.con', NULL, '$2y$10$OQ6wfIsecXy9NTHUCxRIO.vdGVgAc5qoGA.D4mpnZVl8XTSRjrVWi', '9557635445', '0', '0', NULL, '2022-11-15 10:38:18', '2022-11-15 10:38:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Alok panwar', 'panwaralok2@gmail.com', NULL, '$2y$10$jkTydKkmCgxi0MGLsg9XJeJy9Jfzxrxq4iqY6Y0nql33m82W.g2um', '9557635445', '0', '0', NULL, '2022-11-15 10:45:28', '2022-11-15 10:45:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'ouakrim abdelaziz', 'azizjetli85@gmail.com', NULL, '$2y$10$L5vusLEBrusgxrwAc3lCgOhORzSp95vtTk0uH9LpRSTRbU0OIlyi2', '212623867802', '0', '0', NULL, '2022-11-15 16:48:03', '2022-12-29 19:20:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01/01/1984', 'Gender', 'Ain choke', NULL),
(43, 'Sajith NS', 'sajithns210@gmail.com', NULL, '$2y$10$1ZimzI.8a5da8KSQJgG1QuoX3Qh8alfnsKDMc5g4CHJlGdZVPX1D6', '7025743240', '0', '1', NULL, '2022-11-16 09:02:26', '2023-02-11 11:51:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30/05/1986', '2', 'Narayaparambil', NULL),
(44, 'George Helma', 'georgehelma6@gmail.com', NULL, '$2y$10$l5UcAg6IEvO9S8vUJLMJMOES68LXXYYXn3SwuvueteZf0tFspWmle', '08042574278', '0', '0', NULL, '2022-11-18 03:06:08', '2022-11-18 03:06:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Shahor11', 'gmshagorhossen@gmail.com', NULL, '$2y$10$ovmcL3t8PgDVd2uQzqlZxeoMAUYoAVcb7iVFIGSsEQj/PIKQxzrl2', '01642312822', '0', '0', NULL, '2022-11-18 17:23:48', '2022-11-18 17:23:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Gary Author', 'garryauthor3@gmail.com', NULL, '$2y$10$R/CojEjjY3TSMalyZeGo5ulSWWwm8/zU9LTJeWF2cK93WADNH0DCi', '08042574278', '0', '0', NULL, '2022-11-19 17:53:28', '2022-11-19 17:53:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Suhani', 'suhani74107@gmail.com', NULL, '$2y$10$HSmdW7SegdxYDidwvNmrH.wi0eCYUwjIuO/hqs6H5V.KbgBi58HOe', '08141520008', '0', '0', NULL, '2022-11-20 13:52:57', '2023-08-27 14:15:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24', 'Gender', 'Hgggghggg', NULL),
(48, 'Oliswa', 'aillybam28@gmail.com', NULL, '$2y$10$qzJ6zuNibaTnTYjaNjkYNeuw2/O.9PDCYSV1lJvRe0GjYWVIsRDty', '8041520008', '0', '0', NULL, '2022-11-21 08:13:48', '2023-06-07 08:38:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Zhzhzhzhsh', 'Gender', 'Hzhzjdjdjjjdjdjdjdjdd', NULL),
(49, 'Nuwan', 'Nuwannadishka11@gmail.com', NULL, '$2y$10$s0IWSM9MCtDvLDX7ticAF.0HDKn8CzQTu3IZ/weLGsA4UotvrCGIu', '0779386418', '0', '0', NULL, '2022-11-21 15:36:01', '2022-11-21 15:36:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Rahul', 'rkp1782001@gmail.com', NULL, '$2y$10$R1R3LLyt/DBdcS7KfG24c.7PWAtcPZNLZdi477rTOok6UyNha/3xe', '8740990142', '0', '0', NULL, '2022-11-24 03:59:10', '2022-11-24 03:59:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Sudeshna Saha', 'sudeshnaihm@gmail.com', NULL, '$2y$10$5TfHq6i3LB70yIYhbonpjOYAWtnyEsIACC/qR4gus8e1khKqaNIHe', '+918777652600', '0', '0', NULL, '2022-11-24 06:45:37', '2022-11-24 06:45:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Alla', 'lla26756@gmail.com', NULL, '$2y$10$pA0bDJ/lXGdT2LNgnNZbcOWOLTlLnqJnlcZ/a6Jd187NwANqnTv9a', '05365666841', '0', '0', NULL, '2022-11-24 11:49:23', '2022-11-24 11:49:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Savindu Dilshan', 'savindudilshan661@gmail.com', NULL, '$2y$10$AQxw67fRIsdVcTQo.B3MIOLdLJavdJnM6YPYN2uAkKeaa6PRarZqu', '0779502004', '0', '0', NULL, '2022-11-28 13:28:32', '2022-11-28 13:28:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Asadmalik', 'am7541848@gmail.com', '2022-11-28 15:56:22', '$2y$10$5CwiRyZWpN3tvI06ccZN3eDeqf1f9AF6oWl3qfSEv6YdycJqojcSi', '+923251683325', '0', '0', NULL, '2022-11-28 15:51:43', '2022-11-28 15:56:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'SAVINDU DILSHAN', 'Savindudilshan774@gmail.com', NULL, '$2y$10$vOddZ3.FQfQ8oKUQthfZFebS/zvuYTmCJQ8OOinazxI7kwPYVPvAq', '0779502004', '0', '0', NULL, '2022-11-29 00:53:43', '2022-11-29 00:53:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Savindu Dilshan', 'Savindud55@gmail', NULL, '$2y$10$LyrXSGVdR9cxarWjYG5AV.5HrTclNLEt.szER2OM34IffVFZh.lMm', '0779502004', '0', '0', NULL, '2022-11-29 01:24:00', '2022-11-29 01:24:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Mohamed Farvis', 'mohamedaktharfarvis@gmail.com', NULL, '$2y$10$/0tHOo1UsMa3HZsnjHv7O.tU0PvFeQ6oqbo48JvWD4CbO.fQumpcK', '768147123', '0', '0', NULL, '2022-12-05 08:15:00', '2022-12-05 08:15:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Karabo', 'karabokari44@gmail.com', NULL, '$2y$10$i6Fem72ZGFTvBm0kGYcrzO4mdPVgSv4GNpithsgFtLFeiE1KM7RzS', '+2768009992', '0', '0', NULL, '2022-12-06 13:57:40', '2022-12-06 13:57:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'Ahmed hikam', 'ahmedhikam293@gmail.com', NULL, '$2y$10$hQfcZnkgb/a/6f1JQMuyBe.GDiHXKeVjmfOA0d/O2KUcKQVRxV3sS', '51039513', '0', '0', NULL, '2022-12-08 12:47:58', '2022-12-08 12:47:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'K Narayanappa', 'knarayanapa16@gmail.com', NULL, '$2y$10$rdUa/Yuz1RpizVtfQGbUZ.U8jC0nyCMgv0shPYY/Xr46XWgli.eBG', '8106062292', '0', '0', NULL, '2022-12-08 15:36:32', '2022-12-08 15:36:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Zella Gleichner', 'linda_kreiger45@recodz.com', NULL, '$2y$10$JZefCx2rI.n5MFP80TNMcOkSq4RPbPS7BGFX4xaxK8.ibQV/yINCW', '+447782693750', '0', '0', NULL, '2022-12-09 09:11:47', '2022-12-09 09:11:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'MODU ALHAJI', 'modua096@gmail.com', NULL, '$2y$10$JWllRxlFMnC.cMJOB0Oq1.hjPeURgigRSEqNVZkoob1woLEUY3ADS', '+2349012888076', '0', '0', NULL, '2022-12-09 21:41:04', '2022-12-09 21:41:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'Anurag', 'anurag.8355@gmail.com', NULL, '$2y$10$rl/T45cNc9/keDTAxoWtqOAm.d1xyRrYdBhhyG6WMUQ/wsFHsiK6q', '8882145998', '0', '0', NULL, '2022-12-10 17:46:42', '2022-12-10 17:46:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'Radhae', 'Airapple067@gmail.com', NULL, '$2y$10$NogolrhWK5lMip5ISvVJtOtp6BoKOm8nZPA9wBr3/rtXT4ZWBtiQ.', '7021244793', '0', '0', NULL, '2022-12-11 12:40:20', '2022-12-11 12:40:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'Ariana', 'EmiliaMila087@gmail.com', NULL, '$2y$10$869r3SJL3rwhHwLTXxw6Ze.hulNcoBoCWKcoE1WtjCui4rAJOMT4S', '08141520008', '0', '0', NULL, '2022-12-12 14:36:27', '2023-09-09 15:51:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23/09/1999', 'Gender', 'Ghhggfffgh', NULL),
(66, 'Marci', 'akkhan57545@gmail.com', NULL, '$2y$10$/uYvnvcxMvo4X25S8eYa3eg1cyIZghCH38pOvy93O92m9JRQGMaQy', '08141520008', '0', '0', NULL, '2022-12-12 18:12:04', '2023-09-23 03:51:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hghgghg', 'Gender', 'Hhfhfhg', NULL),
(67, 'Alaa', 'lhsn97902@gmail.com', NULL, '$2y$10$0CM.XcO43X8L.bPChUtL1eOwAA0KpYvx/0svsCLqAzWPGs0wm0agW', '+905313924468', '0', '0', NULL, '2022-12-13 10:12:36', '2022-12-13 10:12:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'Frimpong jnr', 'frimpongjnr007@gmail.com', NULL, '$2y$10$aDNS33N0vMxJ.16kMekDb.sTe3cV9UKx4D1x/iVVQ83n9BsluWYpW', '0261589256', '0', '0', NULL, '2022-12-14 01:49:32', '2022-12-14 01:49:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'Hosam', 'hosambar066@gmail.com', NULL, '$2y$10$HFb1SvZncjb1473LHDmRb.xMujohMiSn3PyT2dryMKkF0wirmshG.', '+201020304050', '0', '0', NULL, '2022-12-14 08:54:23', '2022-12-14 08:54:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'Ashu HZ', 'ashukhan0140@gmail.com', NULL, '$2y$10$ZXiNiOB5VYg6Q3QeIseE9Ottgrmj9h6WoJLX3.wtNnVDOaZ68GFnC', '08042574278', '0', '0', NULL, '2022-12-15 05:48:31', '2022-12-15 05:48:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'Patrick Mung\'oni', 'patrickmungoni2@gmail.com', NULL, '$2y$10$XhoqQubmEAnFWAOW3p6w4eDcNB8zkhQaldaowmehGUA0RrWIyZbNC', '0115329202', '0', '0', NULL, '2022-12-16 07:36:32', '2022-12-16 07:36:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Dick Wing', 'fitguyppp@gmail.com', '2022-12-24 16:36:04', '$2y$10$bAOUoQN2gFH7rRF7B6oBtOblvobvHI9ZLhY.tm5UI6Kccnq47zxP2', '+85297174223', '0', '0', NULL, '2022-12-24 16:28:23', '2022-12-24 16:36:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'Mohamed Elemary', 'emarymohamed7991@gmail.com', NULL, '$2y$10$5.fLKZDb3UuSqEZTyOjjeO2pZknEOZabsRVMyzGNgkJBriMi4QG2i', '01020602048', '0', '0', NULL, '2022-12-26 00:05:18', '2022-12-26 00:05:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Muluebrhan Tesfalem', 'muluebrhantesfalem067@gmail.com', '2022-12-26 08:41:34', '$2y$10$9xyR8930Q53QFPpxgAT45.epbFO8ufrPrQGnWn/012FSo66WWXdjW', '+251976473167', '0', '0', NULL, '2022-12-26 08:28:15', '2022-12-26 08:41:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Silambarasan', 'gcscilambu@gmail.com', NULL, '$2y$10$fFEVTefrX88qk1WZ8qMMaOvow5RVnhHh02xPyvh5usIJUDpp.4jj6', '8056861348', '0', '1', 'LDao2mOlD5JFsQ0dGlVqiQuH2juMoTjCsFWvMdVHm9B7L1LBwyVDWS9POp0f', '2022-12-28 07:26:55', '2023-06-07 10:52:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.3.1988', 'Gender', 'India tamilnadu Kumbakonam kumaramangalam saduramanikam', NULL),
(76, 'Shreyash Pathak', 'shreyashpathak41@gmail.com', NULL, '$2y$10$9ek0PwiAHWDZTDtMh0Iu2ObFopCaslesX5.c3WtyC4AQdQibqRJbm', '6265093215', '0', '0', NULL, '2022-12-29 08:05:07', '2022-12-29 08:05:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'Shivam Tiwari', '508shivam@gmail.com', NULL, '$2y$10$uXcSScuinbqarHatzmnvKe3n60MVj0JY/NSEd61cRw7vuJhY3mX3i', '08839257551', '0', '0', NULL, '2022-12-30 12:22:50', '2022-12-30 12:22:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'Saifullah', 'jalalzaiarman0@gmail.com', NULL, '$2y$10$Y23lVayCeRH7QsmN.je54en64QLCFZ/9aCFXbCuud2vE80ml/LHva', '0766960081', '0', '0', NULL, '2022-12-31 14:12:28', '2022-12-31 14:12:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'Saifullah', 'seyaljalalzai@gmai.com', NULL, '$2y$10$LTcSYLymiDrtzrTV6LvQUuAq/ZeHVKkkU6yPucM0pqjWlUIBAbb4m', '+93766960081', '0', '0', NULL, '2023-01-01 05:49:51', '2023-01-01 05:49:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'Saifullah', 'seyaljalalzai@gmail.com', NULL, '$2y$10$RXqVKmt.6RNDMZPXH5iOUuuh6EbL3KE5h9KjeS.6YD1xQLgNnTM9G', '0766960081', '0', '0', NULL, '2023-01-01 12:13:03', '2023-01-01 12:13:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'Mostafa Ibrahim', 'mostafapopo383@gmail.com', NULL, '$2y$10$cLhKZOvGEnZM9.eRs9VJP.CUA/NNCdLVaTTpBC.uEmcDX62Bnm/He', '01018116704', '0', '0', NULL, '2023-01-03 07:16:59', '2023-01-03 07:16:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'Abdulqadir Abubakar', 'abubakarabdulqadir.26@gmail.com', NULL, '$2y$10$WpBma6QRqKLTEudVxTh2TOTlbXr6LnzqhRKkpUa19mD63Tt1izR/a', '08147124299', '0', '0', NULL, '2023-01-05 16:01:08', '2023-01-05 16:01:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'Omar', 'mrm898415@gmail.com', NULL, '$2y$10$Tmum.YceCXWk1zypV5ZhleQsKbbFBtVFLqIAaHkK7Aeb5IgV5c9dm', '0201128088816', '0', '0', NULL, '2023-01-07 16:52:54', '2023-01-07 16:52:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Vipul', 'vipulmahajan621@gmail.com', NULL, '$2y$10$AIo9OVez2Ox/FdEUfsuxW.43OPGx9fIJHlntYlMybgKMQSe4UkJ/i', '8168001688', '0', '0', NULL, '2023-01-10 17:55:01', '2023-01-10 17:55:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'Jorenda B buelas', 'leeancheng23@gmail.com', NULL, '$2y$10$NxOC2TccLKiyEdwZc6Vd9.4zNovRGoaKiupQRYtqP.8B1jO486F1i', '+639514596551', '0', '0', NULL, '2023-01-12 07:49:56', '2023-01-12 07:49:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'Ravi kumar', 'ravi170587@gmail.com', '2023-01-13 03:52:25', '$2y$10$By20Exe1ygxrnYsnCpp1Me2GOMwIq0hurb95ixXWGmpNPtRZWjjGK', '7004130925', '0', '1', '7Kv2kJKnkTyaEgpcKRf4wohOlsScS7H5gb1djbCENhUh3ObAuWPmRdEFOTy5', '2023-01-13 03:51:01', '2023-09-14 09:41:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17/05/1987', 'Gender', 'Maa sumitra niwas puran vihar near twin tower', NULL),
(87, 'James', 'jamesco7707@gmail.com', NULL, '$2y$10$E5JIkrrqWOkmO/tVVde9Leuz198oQXoW2Sr8owtSog8I540RpU6sS', '09058662512', '0', '0', NULL, '2023-01-13 06:32:22', '2023-01-13 06:32:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'Peter', 'peterpeter@gemelcom', NULL, '$2y$10$kYQ5x3YsWAmPNBRcZi036une8KPg/TyVgCZDQoSI190w8GteuwoQ.', '08145253686', '0', '0', NULL, '2023-01-13 06:41:43', '2023-01-13 06:41:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'David', 'DavidDavid@gmelcom', NULL, '$2y$10$scLYzS/QDpjHFYyJvLuE3usgnQrgGIGRGGIS8scCAgEkE9o9IMB12', '09063215485', '0', '0', NULL, '2023-01-13 06:47:41', '2023-01-13 06:47:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'Olivia', 'oliviaolivia@gmail', NULL, '$2y$10$FkuX2pSK8rZ5L6AxH6N67OumcJCNXGZz0a1r1C6i7Mx3p0KxVRRaG', '08145158299', '0', '0', NULL, '2023-01-13 06:52:19', '2023-01-13 06:52:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'Beast lon', 'BeastlonBeastlon@gmailcom', NULL, '$2y$10$qAFQFQ4FN.O4lyPD5LR2MudwcJNuE7Kwc5YHM9z64nlLdhvsXKjRG', '07056426388', '0', '0', NULL, '2023-01-13 06:56:34', '2023-01-13 06:56:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'Gloria', 'Gloria@gmailcom', NULL, '$2y$10$eYCv.VSdkZ3syRe0vPDAees0K7M3zRfLurxNDIDgMso9N5IJPYmmm', '08056321456', '0', '0', NULL, '2023-01-13 07:00:45', '2023-01-13 07:00:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'Olivia', 'oliviawehfni@gmailcom', NULL, '$2y$10$xbIeWeFfLKARlFTZGn9JAun/gdOvz6zHWDCN0Ky0xI.OcNvah9ciW', '08056528566', '0', '0', NULL, '2023-01-14 12:18:26', '2023-01-14 12:18:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Md Nasim', 'nasvib143@gmail.com', '2023-01-14 16:35:54', '$2y$10$huFWsTOOXNIVYAXXXwudWeavm1DDZKodSBEnyKYF2OabYbTr8WyAG', '7970772773', '0', '0', NULL, '2023-01-14 16:21:37', '2023-01-14 16:35:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04/03/1978', 'Gender', 'Lovely villa hazi lane hindpiri Ranchi', NULL),
(95, 'Harman Singh', 'kulwindersingh12795@gmail.com', NULL, '$2y$10$O6Z1e2NbgWmO.E.22bvX.uNnMMigFVf2VS0FjGjudna38A9jVId/G', '9780541721', '0', '0', 'HUV73qVZqkFTpW6W6hlvEgBnUUuKOthpIqwV6oAb3wPg0RLPBkI4ytSJp1EK', '2023-01-15 08:42:31', '2023-01-16 08:19:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'Thc nepal', 'thcphotographynepal@gmail.com', NULL, '$2y$10$coSbdKyhH5G3jV/PlB0b0e9kh3FVI5T26Q0iF104zL1fxnyMmXrMC', '9862450957', '0', '0', NULL, '2023-01-20 06:14:45', '2023-01-20 06:14:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'Mfjejdkwdwfkjwkw,.//fwdbdjswfjwsjdakdjwsjfhwkdajdk рырвоышвофшаргырагфошвОРРРраы: kkwjdkwdwfkefwksmxdke Заосшырацоырвфвравыо gjdjwsfegfksfgrjkfkfhjk futuresoptimax.com', 'm.aekely.4.1.8@gmail.com', NULL, '$2y$10$xlEeTjygjGDFh6DujKup8.meC8AkyBEVMWRBL8ezbD2J2xk2LZHPu', '85882924947', '0', '0', NULL, '2023-01-21 18:27:14', '2023-01-21 18:27:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'Suhani', 'hanhbou@gmail.com', NULL, '$2y$10$q7DF2YnTwOHSY3TDYwT0KeTs0bVa8Sboxhd2nykfSAYrr7PMyl2oW', '09014753688', '0', '0', NULL, '2023-01-22 10:53:50', '2023-08-27 14:05:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4/08/1983', 'Gender', 'UK', NULL),
(99, 'SUNILKUMAR', 'Sunilrajpoot817@gmail.com', NULL, '$2y$10$fS9flkcWEi7RjUjawX4kVuiEnS4qPCPqo5ahLgiWf4aHiLgV7Dx5W', '8178004209', '0', '0', NULL, '2023-01-22 12:33:45', '2023-01-24 11:42:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01/01/1998', '2', 'Nitoi bhamora bareilly', NULL),
(100, 'Satyam Singh parihar', 'satyamsinghparihar3091@gmail.com', NULL, '$2y$10$OHZYm7Q0pyZzw89S6d0o2uuj2JHqIKM7lnSDbqnpUOEBTrnPa7aV.', '7909784761', '0', '0', NULL, '2023-01-22 15:12:30', '2023-01-22 15:12:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'Nusan Noyon', 'noyonnusan@gmail.com', NULL, '$2y$10$gtjFEOYU7JDhrrIiu1jaduJqgzQRN7ATIw8on1uaZ0G7CHrzTnSDq', '01747570499', '0', '0', NULL, '2023-01-22 16:34:31', '2023-01-22 16:34:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'Johnson agyeman', 'sam10@gmail.com', NULL, '$2y$10$wgjleu2zwUkk96gx/vrzKe7brYNFBwWOsGRuHNw4DVuN8oKW7IsoG', '0248806784', '0', '0', NULL, '2023-01-25 17:13:23', '2023-01-25 17:29:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01/05/1990', '2', 'Accra- tema', NULL),
(103, 'Manish pal', 'mp9472631@gmail.com', NULL, '$2y$10$HRa8xAhsIGRb0wnc/nGfdu/EeWUujfm.2m8CU.acknfcAYK4hXSZq', '6264044363', '0', '0', NULL, '2023-01-26 18:18:27', '2023-01-26 18:18:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'Manish pal', 'mpal97803@gmail.com', NULL, '$2y$10$aK9.PBFG2xhRZcOpv7qN4uF6ASI3XiKMZkaZEaWcjaO6MMQYpEI4.', '6264044363', '0', '0', NULL, '2023-01-26 18:23:10', '2023-01-26 18:23:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'Mayadhar Behera', 'Mdbehera95@gmail.com', NULL, '$2y$10$BNHRtt9pj/PnzXHyhlGWke9X.3522y0r48tqSNCwwO3WRZrgiuUR2', '+918707742970', '0', '0', NULL, '2023-01-27 10:23:14', '2023-01-27 10:23:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'Leakena', 'leakenaachariya@gmail.com', '2023-01-28 06:58:00', '$2y$10$eJoITIDFwz2P3q51QBvSgexKzbqVEANejPkZzdROxbi2Xk7S9ZdLK', '08069456984', '0', '0', NULL, '2023-01-28 06:49:19', '2023-01-28 06:58:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'Ahmet Bensol', 'gulkurusu83@outlook.com', NULL, '$2y$10$DRIGrvA7OCJJ5CFqEbzL8.2DRXKzK/GhMeEnWeGxfctjarzF6sFP2', '+905323382052', '0', '0', NULL, '2023-01-28 14:59:10', '2023-01-28 14:59:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'Resad', 'resadibisov0@gmail.com', NULL, '$2y$10$TD8vE.B2O/.vt4b6PykSAecRAMIDDgqlw.4/XhSyNI.y25GSEOZFO', '514042410', '0', '0', NULL, '2023-01-28 17:27:47', '2023-01-28 17:27:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'Mujeeb ur Rehman Farooqi', 'mujeebfarooqi96@gmail.com', NULL, '$2y$10$RQ7jQL5OZqA0IxGLzpdRuuw9lyjakEby7mPTkgH5MlPk65BcwBkrG', '+923139301395', '0', '0', NULL, '2023-01-30 16:32:49', '2023-01-30 16:32:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'Arun Kumar Ray', 'rayarun786@gmail.com', '2023-02-03 07:37:37', '$2y$10$tgMTlZbJOGAzqZGaEUOGAevvdjk4w4MBnCJCEIZsSJRuleqAYtjLm', '9801110110', '0', '1', '286Lc3tbISlUu0O4VaN9LMKF0jSg9UEztTvpKKVhSjnZNVlzil8SftNVYMMZ', '2023-02-03 07:36:57', '2023-09-14 09:40:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'Aakash Singh', 'yatharhvardhan@gmail.com', NULL, '$2y$10$OMVgn5SaSS1rqz1ToRh/qOt63YVXH600yhK5ULvSF2STV1jFYh5LO', '9151441101', '0', '0', NULL, '2023-02-03 11:00:34', '2023-02-03 11:00:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'Yashwanth a', 'yashwanth.904@gmail.com', NULL, '$2y$10$ffQh9nh6ffG7gQEBLExC4.u1O9F/ZYpen5qWylDK6oiFydp9rpPui', '9738689061', '0', '0', NULL, '2023-02-03 15:05:29', '2023-02-03 15:08:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22101990', '2', '#23 v r nillya srk Indian school road 5th cross kidagehalli', NULL),
(113, 'Shivaprasad', 'shivu.snms2535@gmail.com', NULL, '$2y$10$MkyVSGI1N.wzyKdtwa2BHOmPHjZGr9DVDH2gw0f3/ypvkAH7PRrQq', '9448523684', '0', '0', NULL, '2023-02-04 05:07:03', '2023-02-04 05:07:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'Dinesh Prasad', 'dinesh02263@gmail.com', '2023-02-04 06:49:42', '$2y$10$TD1vzP5EL3r89ScBImXkvOb5BWBWMdZzJglvxtXUfOs5K4fE4568e', '7004086481', '0', '1', NULL, '2023-02-04 06:45:09', '2023-09-14 09:40:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'Pargat Singh', 'pawarpargatsingh@gmail.com', NULL, '$2y$10$uslWYmxwCgob2p97AeVSce2307um/9qQMsdVQOnPz3OW/Pnv12fmG', '9501999313', '0', '0', 'u25RREjhoQ8uLb0Raq3UpRNSRRxZJMJZBpg0CdHWZ601Nxku0gSFLUkutqoW', '2023-02-04 18:33:17', '2023-02-04 18:43:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'Sreejith satheesan', 'Satheesan9645@gmail.com', NULL, '$2y$10$57KQMF8FKHAFMWWwLl6CU.v6M/N6NOTXFKXNFAf0PMavofeCTnMB.', '8891102687', '0', '0', NULL, '2023-02-05 02:07:34', '2023-02-05 02:07:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'Harish', 'praveentoolroom@gmail.com', NULL, '$2y$10$H5Zw06HmR/IpNHg/wFHoZ.rECdE1BLYFVJ1re5TIprjDkZitV0L.6', '8392962070', '0', '0', NULL, '2023-02-05 18:18:15', '2023-02-05 18:18:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'Cornelius wanyoike', 'corni7877@gmail.com', NULL, '$2y$10$cnj8iFAOQyGha2bHCv3Bvupt1F6oAFf/8SEI2ZMMU83uE0qXuq4Aq', '0759000862', '0', '0', NULL, '2023-02-07 14:00:59', '2023-02-07 14:00:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'Mohit kushawah', 'mohitkfzd83@gmail.com', NULL, '$2y$10$jGdV5GiNR61zyGxfBshb7uJ8e0lXbXyNNg9ZuokD/NyN0A6.iq.ly', '8650940981', '0', '0', NULL, '2023-02-07 14:32:10', '2023-02-07 14:32:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'Always happy', 'vikram@ambikaproperties.in', NULL, '$2y$10$eZRgYsi0V8M.VKAKwt0tIu5SJnUWtcUsbR04LSIPWVtx7CM.gjhpC', '9811084848', '0', '0', NULL, '2023-02-08 06:42:16', '2023-02-08 06:42:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'Shani Chaudhary', 'shanichaudhary200@gmail.com', NULL, '$2y$10$lCAMEr6r31zMV4ixaEI1E.HhXttzzukUCRlwixmOxGO3kg91X8pOC', '7800628587', '0', '0', NULL, '2023-02-09 09:21:54', '2023-02-09 09:24:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01/02/2000', 'Gender', 'Siddharth nagar', NULL),
(122, 'Akash Kumar Gupta', 'akashkumargupta4554@gmail.com', NULL, '$2y$10$omjvu4Thx7SyPNn3jy7tFOd8qmbo.bKJjuXwCRP8q77FQLtMG3DJO', '7905228294', '0', '0', NULL, '2023-02-09 10:44:33', '2023-02-09 10:44:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'Emmanuel Tarimo', 'emmanueliumtarimz@gmail.com', '2023-02-09 16:15:52', '$2y$10$tZZw2yhWxkdswHyPLwktvOLUt./QUZgtZHOwcXoxuRbDsjS4SBW/m', '+255757738967', '0', '0', NULL, '2023-02-09 16:09:15', '2023-02-09 16:15:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Saranya', 'gcssaranya@gmail.com', NULL, '$2y$10$5w9R1MjG3fx6JAkChBB9CO4CQX8kcPWSzJhZoKO7ONVWWQ3JhUIlC', '+919629134829', '0', '0', NULL, '2023-02-10 19:14:57', '2023-02-10 19:14:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'Hitesh variya', 'harivandan@gmail.com', NULL, '$2y$10$BnCDzJyF8H4XIE1O4x6X2ustb35v/MVDW62EJw2gGuHYaZAKmD3sq', '+919819201030', '0', '0', NULL, '2023-02-11 18:28:02', '2023-02-11 18:28:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'Tanvir Singh', 'tanvirmatharoo057@gmail.com', NULL, '$2y$10$QGu61WwNdBPdyxc5/SZxa.5v0ZqFJlaELm0qpm0SVPOjcn4unDUly', '8437667041', '0', '0', NULL, '2023-02-12 16:11:02', '2023-02-12 16:11:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Alaa', 'fgyyyg1@gmail.com', NULL, '$2y$10$WLwV7s75aL.dp.LU0eFjRenjg7WXB8GUk7O2MMV8wRPjgf3LkIMRm', '05313924468', '0', '0', NULL, '2023-02-13 15:47:03', '2023-02-13 15:47:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'Narayan Shrestha', 'binodmagar415@gmail.com', NULL, '$2y$10$T0quHKIDU8X9.TuV1r9S6.UHs012UMxSsAjjY/IHA2Fo//6fw6yTm', '9818148444', '0', '0', NULL, '2023-02-14 10:43:06', '2023-02-14 10:43:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Arun kumar', 'arunpal2266@gmail.com', NULL, '$2y$10$SKf3uCM4HNy5ZEqibcRvEOzuTuTYAnog3g/yi15Y8McEhtBart2T6', '7018564071', '0', '0', NULL, '2023-02-15 01:50:14', '2023-02-15 01:50:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'Thashreef Rayyan', 'thashreefrayyan12@gmail.com', NULL, '$2y$10$dx26W5vFcbWBBNJM7X.CKOVMp52WLQ7mkREsXOVLJmGHbhzBBigNW', '8592027841', '0', '0', NULL, '2023-02-15 02:18:20', '2023-02-15 02:18:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'Khairat', 'alkhairat717117142@gmail.com', NULL, '$2y$10$dE9r9QQT1x4lupfq6B10SuWKLIW1gg9QMrKyWkDOMFWMG68r5m/Xq', '967777125893', '0', '0', NULL, '2023-02-16 18:58:39', '2023-02-16 18:58:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'zubair ali', '03233055811@gamil.com', NULL, '$2y$10$QaRZRPt9.nV1QiLMv5L61OknDuVF6relrh2zab1TBIgIL/qyC9Z/i', '03233055811', '0', '0', NULL, '2023-02-18 06:30:26', '2023-02-18 06:30:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'Kundan', 'kundankumar1905@gmail.com', NULL, '$2y$10$4rhpMIFvbijwhPYpV228A.kzH11BcQ1Jn.2.J59mmWH8Lm7jbJcxG', '9650181753', '0', '0', NULL, '2023-02-18 14:01:43', '2023-02-18 14:01:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'Prakash', 'ps428279@gmail.com', NULL, '$2y$10$zrN5gy5f1OzfEKtpD61L1u7E1OyTVEm4qnXRZriYcb/ZI7pvlI58O', '8929787797', '0', '0', NULL, '2023-02-20 01:36:56', '2023-02-20 01:36:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'Sher bahadur', 'mrsher2000@gmail.com', '2023-02-20 20:44:52', '$2y$10$5sNfQlQofOh7YkldwPNQ1.T8q1/hhZWJLZ77r5dPBw9ohFJnjkL1S', '+393511295860', '0', '1', NULL, '2023-02-20 20:16:49', '2023-09-14 09:40:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'RichDad', 'sabogusimon60@gmail.com', NULL, '$2y$10$RIqQTGWO0HOVnZ4HI6dzaeCWkVUVwQNP08HzgpxH3a1rKTF4NCLna', '0202661757', '0', '0', NULL, '2023-02-26 18:19:07', '2023-02-26 18:19:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'Nabin chaudhary', 'proznabin@gmail.com', NULL, '$2y$10$8DdO2UOStgiEI1RtffGArejWAPjFo.winQTkdDy.pytUVK1RaQa12', '9848445886', '0', '0', NULL, '2023-02-27 13:16:36', '2023-02-27 13:16:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Baro', 'zaxoizaxo890@gmail.com', NULL, '$2y$10$FC.GmLvlUPwJc5DqDwooouBm2LK4RArPQu7xhxHoBtZwj371eyFJa', '07507075881', '0', '0', NULL, '2023-02-27 19:45:52', '2023-02-27 19:45:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Raju khatodra', 'rajuvasava450@gmail.com', NULL, '$2y$10$9o96D9nJTbs6l5R9L8m/2u8Tlju7Nd6uvkPUvKw4ULBtf1SQkCfCG', '8976545765', '0', '0', NULL, '2023-03-01 13:06:27', '2023-03-01 13:06:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Naveen', 'nvnsh09@gmail.com', NULL, '$2y$10$Uw2FSncwDxOSIvvTzQNMjONe2SMvHVBXHo4uM/XvkisqDo6CiNGpy', '8561870705', '0', '0', NULL, '2023-03-03 06:52:10', '2023-03-03 06:52:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Himanshu', 'himashu.rabblesoft@gmail.com', NULL, '$2y$10$O5koQcyZvgMcOfPiLtWq2.MtrivyKH5owCW.AozIgKcCwwrpRFu8K', '7696802762', '0', '0', NULL, '2023-03-05 11:04:44', '2023-03-05 11:04:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'Md Sakim S', 'smdsakir808@gmail.com', NULL, '$2y$10$cYLZdteDBQm4SsKRJccpPuLLsa8DXv2EIkrgCAVkNtjmGrYC8MKOe', '9867327875', '0', '0', NULL, '2023-03-05 19:34:04', '2023-03-05 19:34:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'Faizan', 'fm77513036@gmail.com', NULL, '$2y$10$dmDDVFFzyvcwo2DOQKavnuvQ6DSt/1nRQMpg4ItbjYTZVT9nVkk1a', '9622570647', '0', '0', NULL, '2023-03-08 09:34:10', '2023-03-08 09:34:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'Pankaj', 'mycollection369@gmail.com', NULL, '$2y$10$tUapHe9lkkaDBMbNTQ..velh/r6f/W22PFMUbWGFULg.WsWqTk2dq', '9911411971', '0', '0', NULL, '2023-03-11 15:38:35', '2023-03-11 15:38:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'Rahul', 'k@gmail.com', NULL, '$2y$10$RL7HzsZZGWCUU0byVYws3euTpkiT98mgt/hOWDMnOIfF6lYUakunq', '8851864840', '0', '0', NULL, '2023-03-23 11:11:29', '2023-03-23 11:11:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'normyeben Larruso', 'adamteyebenezer301@gmail.com', NULL, '$2y$10$vF8M267XgW9d70hRm.hAH.pWg62qP.QhNfUgbCAFde1Lu/CqiQEKq', '0249055381', '0', '0', NULL, '2023-03-25 22:24:28', '2023-03-25 22:24:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'Neeraj Kumar singhal', 'neerajsinghal222@gmail.com', NULL, '$2y$10$jM.oqI/10MkJs37WHRnLY.Nbhqyu45ISA1IiQCZVrQZVzU3SoILjS', '9694402867', '0', '0', NULL, '2023-03-26 19:25:17', '2023-03-26 19:25:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'Rohan', 'gkrohan198@gmail.com', NULL, '$2y$10$AJDjk6WJIkrkXKmUqu4AyOlnj1EJUFhx9BMLbPRIw9clytf//cuzy', '7396653553', '0', '0', NULL, '2023-03-27 19:54:52', '2023-03-27 19:54:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'Khizar', 'tharoon242@gmail.com', NULL, '$2y$10$1hW2OIDm6XFasus9sjjXGuOLJqC7tYwMlpmXnR6EXez97d.4Bikdy', '03311404116', '0', '0', NULL, '2023-03-28 08:23:28', '2023-03-28 08:23:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'vishnu k', 'vishnukk0123@gmail.com', NULL, '$2y$10$hXOtFjtl7deoYTLBGn42QO6KSWrpI85LhDNVCKD91YgE39pTLBbqm', '9072946065', '0', '0', NULL, '2023-04-01 16:10:54', '2023-04-01 16:10:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'Rathika', 'guganrathika@gmail.com', '2023-04-03 13:38:34', '$2y$10$YMbAMI2zNFu.bAc4.RqDT.no.DtIWzFOL29Nt6l9F3TpXeLP6kfpW', '9843208434', '0', '0', NULL, '2023-04-03 13:22:22', '2023-04-03 13:38:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'Saeed Sultan', 'saeedsultan873@gmail.com', NULL, '$2y$10$EDHWMz4aAZcftAUYlfH2RuM.37zQw7VE7OAjvgJu9BX1PzO0MZI92', '03054442762', '0', '0', 'KKrBqAcSpBLlxnnRlAtem7UQnRuoByW1flJeuiI7wWs0vy2bqAPo6ECDsRpW', '2023-04-05 13:05:03', '2023-05-24 19:21:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12.08.2001', 'Gender', 'Karoondi Village https://maps.app.goo.gl/BjRD8BvaGzEpfQ4o6', NULL),
(153, 'Saeed Sultan', 'saeednaaz73@gmail.com', NULL, '$2y$10$0cFaocLIcRrryQ5a7J80He0eKkRkidasHVAClLsRfsiW.ISOH5zVi', '03054442762', '0', '0', NULL, '2023-04-05 13:25:24', '2023-04-17 01:18:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12.08.2001', 'Gender', 'Karoondi Village https://maps.app.goo.gl/BjRD8BvaGzEpfQ4o6', NULL),
(154, 'Vish sharma', 'Vishsharma060@gmail.com', NULL, '$2y$10$3hVqXAY.dobqQDPX9Ncg0.SGz0J0cpqA9jxSH9IDjTO.sowuCeO5u', '7419177676', '0', '0', NULL, '2023-04-06 06:31:52', '2023-04-06 06:31:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'Ameer Hamza', 'vdoctor495@gmail.com', '2023-04-07 01:53:59', '$2y$10$pLsS0P1An23cyEKt7UFXXuPUd17OXioQhYKzLOBahX83c3O1EITQm', '+923154601707', '0', '0', NULL, '2023-04-07 01:11:26', '2023-04-07 01:53:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'Suhani', 'tanya224100@gmail.com', NULL, '$2y$10$UPIM0kz4XBVm2UMp5gyuQ.EUfysRmoWfsmfPOFkuGppPUdMoMt3C2', '07056458512', '0', '0', NULL, '2023-04-18 22:37:10', '2023-08-31 13:23:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23/07/1991', 'Gender', 'Ghfdx', NULL),
(157, 'patrick', 'patrickdokpo48@gmail.com', NULL, '$2y$10$gjIi/5tjR1bR8meZuyNEd.JkehyLoYK/B4IngdHacuBSl0V0smQ1m', '0200194594', '0', '0', NULL, '2023-04-24 08:10:43', '2023-04-24 08:10:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'Suresh', 'Sureshcs91@gmail.com', NULL, '$2y$10$Mr1GakeCOhuueJWs4XQiMet6OW8gHIAF6Im2Wsofs//usz24JdQkq', '552298744', '0', '0', NULL, '2023-04-25 04:14:18', '2023-04-25 04:14:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'Muttiurrehman', 'muttiurrehman7745@gmail.com', '2023-04-29 02:28:36', '$2y$10$4Sgcd70wNQbCPTIx6lCkfOKd3d8E0p9fsqJEpdwCWBBJ6I8xELifu', '03037745054', '0', '0', NULL, '2023-04-29 02:04:54', '2023-04-29 02:28:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'Aguma', 'naijadroom@gmail.com', NULL, '$2y$10$PI3dHyJlpNzHXuPAqqjSN.pbtJPcIlYILdWc8JdlqBfnr03/Lf06W', '07042930904', '0', '0', NULL, '2023-04-29 10:04:41', '2023-04-29 10:04:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'Shedrack Arinze', 'shedrackarinze927@gmail.com', NULL, '$2y$10$b.uxDLhtnJz3muYKq6CqOOQnpVL1s8rJGV.GfDa2m/0v.eyaKbwra', '08132330515', '0', '0', NULL, '2023-04-30 05:10:24', '2023-04-30 05:10:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'Joshua', 'investorjosh734@gmail.com', NULL, '$2y$10$/zTxjqf.ryt0g86apDQZXeFafj091KHG1mVGYc8Bu.PsQWE1MAnrK', '09165556786', '0', '0', NULL, '2023-04-30 11:28:28', '2023-04-30 11:28:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'Masoom', 'ali.masoom6543@gmail.com', NULL, '$2y$10$evbLMtfqTDYEzWZ3Q22MAuEhey40bcmcdyQXuOMcQE1xMGduACosS', '0509620833', '0', '0', NULL, '2023-04-30 15:45:44', '2023-04-30 15:45:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'Charles Boateng', 'boatengcharles51@yahoo.com', '2023-05-01 15:43:30', '$2y$10$2fZkg.l2SwNCo0RuvUP9I.B7xWSkrr7w7zB3Rp5SNJzJerKMrXq2.', '233268190872', '0', '1', NULL, '2023-05-01 15:35:39', '2023-09-14 09:39:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'Harmony', 'mariefleischwoerfel@gmail.com', '2023-05-02 10:12:16', '$2y$10$tY/sG9X5IoDktdRpPxWCteOMS8QwkoIMJO5Pdk/1CHgnF4Xl/spkS', '09066376365', '0', '0', NULL, '2023-05-02 10:08:55', '2023-05-02 10:12:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'Katarina', 'k9565652@gmail.com', NULL, '$2y$10$Xtu5puK1LCF2p2.tjomWtuEU0IP41GILTjiQSlKv9okQOgHoRWRlC', '08141520008', '0', '0', NULL, '2023-05-02 15:52:56', '2023-05-02 15:52:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'MariaBense', 'carlossantanaofficiall1@gmail.com', NULL, '$2y$10$e.V7XWoD3T6WizHaj88BTOujUwA9zbruGzPjNCPUqD0qcDBTdcuaO', '07036871641', '0', '0', NULL, '2023-05-03 09:58:49', '2023-05-03 09:58:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'Raihan Rana', 'raihan297197@gmail.com', NULL, '$2y$10$DGDmC3//GGV2ZnuKS4zaYecx0LIHUtSmS14AP93NHTz5XHecDrI.O', '01845297197', '0', '0', NULL, '2023-05-04 07:14:02', '2023-05-04 07:14:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'Ahmed', 'ahmedabdallh12344@yahoo.com', NULL, '$2y$10$IysFvT9c..uBkJIjS67CzuZr7HFqdeLMwkE79v7cmAm8cfGWUt/u6', '01278136175', '0', '0', NULL, '2023-05-05 12:43:40', '2023-05-05 12:43:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'Ahmy', 'jgkggjj578@gmail.com', NULL, '$2y$10$ORTToHRvpdkr37LF8fMRuu8mlVLPd.MeeIgxqmGacv9QTnM.ndyai', '01278136175', '0', '0', NULL, '2023-05-06 18:57:43', '2023-05-06 18:57:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'Hamza', 'hamzashaikh616586@gmail.com', NULL, '$2y$10$kzsCRX6eid7BnDIajxqN/uNiFmBFWihDr97Y5Wbhoaf3FPx8FzMs6', '923158443640', '0', '0', NULL, '2023-05-07 18:29:45', '2023-05-07 18:29:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'MD NUR ISLAM', 'mdnurislam1980@gmail.com', NULL, '$2y$10$zPtt7NO7vdUkt4HYVfdfgeuc26kF81bmqQIL2b66UuD9HGKkzRDiS', '9851779987', '0', '0', NULL, '2023-05-08 08:46:19', '2023-05-08 08:46:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'MD NUR ISLAM', 'nurislammd1980@gmail.com', NULL, '$2y$10$BUN1d3X5ZSPrBOpVR7qMHuT6AIIINw9dYUHKE.4GrHRvp7MhYDpR2', '9851779987', '0', '0', NULL, '2023-05-08 10:53:56', '2023-05-08 12:26:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25/01/1980', '2', 'BAKHARPUR', NULL),
(174, 'JAMAL HOQUE', 'jamalhoque423@gmail.com', NULL, '$2y$10$X31pOevCsN4SN3uz9zzPrOc9rHQPzHdjUqp6zoAAcRroV721GLNPu', '09732823556', '0', '0', NULL, '2023-05-08 14:00:02', '2023-05-08 14:00:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `blocked`, `remember_token`, `created_at`, `updated_at`, `street`, `city`, `state`, `post_code`, `facebook`, `instagram`, `twitter`, `linkedin`, `wallet_adddress`, `profilepic`, `birthday`, `gender`, `address`, `adminmessage`) VALUES
(175, 'MD RAFIKUL ISLAM', 'imdrafikul881@gmail.com', NULL, '$2y$10$dt/on0XVxA8rrJYpqd.iKumWBrU2Qz.WlCoKUVVF0z0Cohv66xNgC', '8910468475', '0', '0', NULL, '2023-05-08 18:24:18', '2023-05-08 18:24:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'Sreehari', 'shanmukhan.sreehari@gmail.com', NULL, '$2y$10$Hi3vFBG.xjq/QOC29IZ.i.5idBUcQyLOsp5sMwzaObHCZmy75af5K', '7447251496', '0', '0', NULL, '2023-05-09 09:55:43', '2023-05-09 09:55:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'Shishir tamang', 'shishirlama00@gmail.com', NULL, '$2y$10$ugAWFUoIOOdMFt6WVbTMkOQgwFaL7g6Ph5B8dxeIRNfmEDBEWPYCC', '9840321573', '0', '0', NULL, '2023-05-11 15:37:49', '2023-05-11 15:37:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'Suhani', 'izugod07@gmail.com', NULL, '$2y$10$djqUv2X0IXUhpYItur106OTmiSpL9vAWller.xhfwxfSWAbZdbQLK', '07056458512', '0', '0', NULL, '2023-05-12 09:43:47', '2023-06-01 00:01:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23/07/1991', 'Gender', 'Ghfdx', NULL),
(179, 'Rako', 'vejason681@appxapi.com', NULL, '$2y$10$CzTZ7.6Si3XV.pGsOkvKXeePSnb0Siy6RC2TZtRZHz9hCuP1s7WSC', '682638489', '0', '0', NULL, '2023-05-12 10:51:33', '2023-05-12 10:51:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'Ravi Chaudhary', 'ravichaudhareee223@gmail.com', '2023-05-13 15:08:36', '$2y$10$uENS9xj/y1AkSr6sRLLEz.roOWkzgXykA0Q3.B07ujwmHPgboo4Uu', '9827277628', '0', '1', NULL, '2023-05-13 14:54:31', '2023-05-19 18:31:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'Sujan Tamang', 'musicnepal954@gmail.com', NULL, '$2y$10$tfOnliNwykFMKe02dGZbpudbfRfFxV4pujDXYIz.uea88isID9KfW', '9818237662', '0', '0', NULL, '2023-05-13 17:14:15', '2023-05-13 17:14:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'Abdulganiu Kassim', 'abdulganiu754@gmail.com', NULL, '$2y$10$TgEWc0WeqkS/5IubL/tn8OuXHv8Bmgq5RjnQLSIiMwEFfGAcMoiau', '+233544147174', '0', '0', NULL, '2023-05-13 20:34:09', '2023-05-13 20:34:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'Tej Bahadur Rai', 'bahadurraitej12@gmail.com', NULL, '$2y$10$ux8rJmhtVrXGXLVhNl5VXuSvD7sXsAVw..xJkTkArXLAFbzR8mJqW', '9779828790183', '0', '0', NULL, '2023-05-14 04:01:10', '2023-05-14 04:01:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'Sicamo', 'www.sicamosicamo2@gmail.com', NULL, '$2y$10$7dyDtTwUByjyJlRdbuKLIOXGS/mc48aS.kN5a5D5ktPBzo08.YgO6', '09068186044', '0', '0', NULL, '2023-05-14 08:02:03', '2023-05-14 08:02:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'Muskan❤️tila', 'magarmuskan603@gmail.com', '2023-05-14 08:45:28', '$2y$10$zAqkaiK6OjGQrzWYMnL1fedy7kyvd6pVT2KrnEy.HQbbgjC6L5opK', '9811201919', '0', '0', 'rtI7aWjoWJE5M3o9uU3wCR3NceDFVnRIW0pUH8IaxEFeWs9qGJbL3lywu2jK', '2023-05-14 08:41:19', '2023-05-21 17:08:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'Alabi Fatai Temitope', 'temifatty@gmail.com', '2023-05-14 09:13:41', '$2y$10$ymDj2fIgGF/.WJEnhHCBLubpVgMvDQ9v73hXd/7z3foN6IcIifGd6', '+218928109348', '0', '1', NULL, '2023-05-14 08:59:53', '2023-05-21 17:10:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'saadella Sana', 'Benjaminleo956@gmail.com', NULL, '$2y$10$xlG6gwKDBKykjFH4qPtyXOXN1N1CUH.t7RTiT0zwDpDfWkN9ZvLSS', '08141520008', '0', '0', NULL, '2023-05-14 10:09:58', '2023-08-23 11:20:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hhgggggg', 'Gender', 'Hdhshdhdhdh', NULL),
(188, 'Carlyster Nonye Ijere', 'nonyeijere@gmail.com', '2023-05-14 10:18:24', '$2y$10$x8HoOhr7dCgLUOuSBn/Z2OBMC00U3vs7byx.NA6iPUAm.rjapCMhu', '08134968206', '0', '1', NULL, '2023-05-14 10:14:05', '2023-09-14 09:38:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'Sujit Karki', 'sujitkarki2002@gmail.com', NULL, '$2y$10$ieeIW6tXFCgfcF1oN8khDeirc/es9fNfhOSS3/mZbK76KdlYAhAkq', '9765455555', '0', '0', NULL, '2023-05-14 10:48:40', '2023-05-14 10:48:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'Benjamin', 'bj1542744@gmail.com', NULL, '$2y$10$wYVeVVpMNA3QAf39qqEPJOuHm89yLd2zhr.uAyr/Z9p05322FUVUG', '08141520008', '0', '0', NULL, '2023-05-14 10:57:02', '2023-05-14 10:57:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'Manish Tamang', 'manishgyaba98@gmail.com', NULL, '$2y$10$MKDyGIULscTQifQpS7kl5uHIl2rUA2hGXNUbMpYejCsSXqrb22QU2', '9829080088', '0', '0', NULL, '2023-05-14 10:58:44', '2023-05-14 10:58:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'Benaiza', 'ceejaybenaiza@gmail.com', NULL, '$2y$10$y9susx3IGwuwg6dagdpNdOR.ptmYjy0dmWv9cBA0ZRCsU4jzThK/S', '790481015', '0', '0', NULL, '2023-05-14 13:24:51', '2023-05-14 13:24:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'Ebenezer', 'ceejaybenaiza01@gmail.com', NULL, '$2y$10$/o2.3VPAWI23icrnWOx0Pe02MztgbzCbNp1EfpTJwX2TMb1zffLoG', '724465885', '0', '0', NULL, '2023-05-14 13:27:29', '2023-05-14 13:27:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'Eze Grace Chinasa', 'ezegracy1984@gmail.com', NULL, '$2y$10$SSJ3DUH9ZDhtX3MJKkvKKOI4AYXklQTsdpkWTzLYPP7/A2UarMM/S', '09031727987', '0', '1', NULL, '2023-05-14 13:32:58', '2023-05-22 11:03:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15/04/1984', 'Gender', 'Nsukka', NULL),
(195, 'Rabin dural', 'duralrabin58@gmail.com', NULL, '$2y$10$R2DOnBlKc1CtTsT/0Ip1gebaNXSdkzBRT.uFmDUYsqBtNV49d4HTe', '9865477418', '0', '0', NULL, '2023-05-14 15:24:01', '2023-05-14 15:24:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'Ozioko Michael', 'oziokomichael0@gmail.com', NULL, '$2y$10$MHuGetoQdr5kRSP6Q/OTKOpoHnI7IlzrNdfinPX0Seq5eFKIKmFFW', '08037149201', '0', '1', NULL, '2023-05-14 16:13:06', '2023-09-14 09:37:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'Abdul hadi', 'abdulrahmantalha459@gmail.com', '2023-05-14 18:01:33', '$2y$10$1FqQei6SLpC/hyRuY13zuOoJpAu0yQObUbDyMyEiM9r8onCOE./Pm', '03204367459', '0', '0', NULL, '2023-05-14 17:44:33', '2023-05-14 18:01:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'Igboka Oliver Anayo', 'oliverigboka64@gmail.com', NULL, '$2y$10$N3hFO2M1WLpgREKgnzebNOdyXYeZ4WwnT6whQJgI6A5nrVa5efu.2', '07039248346', '0', '0', NULL, '2023-05-14 17:52:24', '2023-05-14 17:52:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'Nar Ghimire', 'nar.ghimire96@gmail.com', NULL, '$2y$10$U6RxVLhoDvP/Bw7nq2d/Tefefai02VC2cYM4Imbbgt9lM10ONMvIy', '9818214925', '0', '0', NULL, '2023-05-14 18:35:19', '2023-05-14 18:35:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'Eunice Onah', 'onaheunice2012@gmail.com', NULL, '$2y$10$LneYPP4rYJHh0A7bYQaXOeDp/rYhY6q6TVzSL.1JS2ljtnX3t3yS.', '7030967232', '0', '1', NULL, '2023-05-14 19:12:33', '2023-05-21 17:08:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'Pramod Kumar Yadav', 'pky99450@gmail.com', '2023-05-15 02:37:13', '$2y$10$ceqmCUxrDWqN7e3fzQ0Hq.vz/sCFs232dGLqxpKY/OW6odtMwW8sO', '9826770893', '0', '0', NULL, '2023-05-15 02:30:55', '2023-05-15 02:37:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'Proser kopnka', 'bolifebeen@gmail.com', '2023-05-15 06:04:44', '$2y$10$xW1nnznarVEouu2EYFp5cueGR97EyyS1M6VnC6q882Housf8rT5fm', '0542572855', '0', '0', NULL, '2023-05-15 06:03:45', '2023-05-15 06:04:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'Herbert', 'herbermoe556677@gmail.com', NULL, '$2y$10$XcjB8yZQgMl/TS5ANTiaquvpAljeLa2dwrirwfDtgHGoKc4l9uLfa', '08141520008', '0', '0', NULL, '2023-05-15 07:02:43', '2023-05-15 07:02:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'Ravi', 'ravi0000777700@gmail.com', NULL, '$2y$10$pogqbjJ7izSWu0RlboXpxO/MmVLYRI2yKatRjNPpbN.UKl5A3CJKO', '07056458512', '0', '0', 'Wofmf37wjHlXM4mSrfspnkhsl13VaYTezenrtiNxPTsK9b6CkOX9XFoqVzl0', '2023-05-15 09:16:09', '2023-05-15 09:19:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'Agbowo kingsley ebube', 'peruzzyobo@gmail.com', NULL, '$2y$10$zZ.q.KM4Rmed4p7dIa2UXO4rhYuBAk39bCwcVaSvB20SMCs5ozTC2', '08108362703', '0', '0', NULL, '2023-05-15 21:20:16', '2023-05-15 21:20:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'Anil Kumar Chaudhary', 'anilchaudhary466@gmail.com', NULL, '$2y$10$ilqt5xhSiiqKDbuiNbNGnetpRyvPhWvGj5cJv5qQ3q0sjKVqlSc2i', '9845042183', '0', '0', NULL, '2023-05-16 05:21:59', '2023-05-16 05:21:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'Isaac opoku', 'opoku7301@gmail.com', '2023-05-16 08:33:26', '$2y$10$gYRiCFyAla7QkhkhCExyoeqDQ6jzY7cTrO7WHOPXpuBeY.7LJj/Uu', '233240130928', '0', '0', NULL, '2023-05-16 08:24:42', '2023-05-20 04:57:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19/11/93', '2', 'old tafo kumasi, Ghana. west Africa', NULL),
(210, 'Arjun luitel', 'arjunluitel306@gmail.com', NULL, '$2y$10$8WWp0P1Rnh5zeKXuGjOdFusTacaROhYmrAmgUwpCIq0iyimxtfOIW', '9825741770', '0', '0', NULL, '2023-05-17 13:47:41', '2023-05-17 13:47:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'ORJI CYRIL', 'cyrilorjialisi@gmail.com', NULL, '$2y$10$XvemwrweDOBH9Sw44YuPYeQdjQEbuXl8tPoy0dX8Z1ZZS68e0xVl6', '+2348037989831', '0', '1', NULL, '2023-05-17 14:08:00', '2023-05-29 10:11:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'Ando Rakoto', 'raktarivelo@gmail.com', NULL, '$2y$10$LUy2rT5FdJwffqCTk2WEzO9S6AoS.lW3/UfdG0Vfvsxf.2lGnXaJy', '261343965517', '0', '0', NULL, '2023-05-18 23:11:47', '2023-05-18 23:11:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'Dinesh Kumar', 'dineshteilors85@gmail.com', NULL, '$2y$10$r95Roy4UbjyH32d6tOrMfOEHu45PtC1dz70VG6KVSIKkYa3loPCg2', '+916354392685', '0', '0', NULL, '2023-05-19 09:16:23', '2023-05-19 09:16:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'Amit kushwaha', 'akashmahato35322@gmail.com', '2023-05-19 10:32:26', '$2y$10$/gfPiqSBqvOEs479FjJsIuYoWVxBwRc/a9PYRzcfOemUC/v1PgMMi', '+9779822568385', '0', '0', NULL, '2023-05-19 10:31:16', '2023-05-19 10:32:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'Daniel Gyasi', 'gyasidaniel989@gmail.com', '2023-05-19 15:24:53', '$2y$10$nKzXab2E1DDibOq6Chs2JOBvSybue/1S8AZpypKYb8A/qnIGl6ws6', '0556910292', '0', '0', NULL, '2023-05-19 15:23:30', '2023-05-19 15:27:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01022002', '2', 'KM-189-9', NULL),
(216, 'Chinyere', 'amazinghealth10@gmail.com', NULL, '$2y$10$Hg9bLg4fdSrX7uSQL./gF.mbdvMvaQm/sA5Whc2tUhyya4uBl2jFK', '7448287812', '0', '0', NULL, '2023-05-19 22:38:54', '2023-05-19 22:38:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'Shishir joshi', 'joshishishir19@gmail.com', NULL, '$2y$10$nXCZCbNrt23f/zJNSdsPxuX986l3aw.w2sutB2i0tRv3RCBRDY7c2', '9843338460', '0', '0', NULL, '2023-05-20 11:56:19', '2023-05-20 11:56:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'radheshyamcdry50@gmail.com', 'radheshyamcdry50@gmail.com', '2023-05-21 00:28:40', '$2y$10$T1uzGCKk4GduXFTp0OZGwuG01JfY.n9svz17Hg9y.9Ilo/NQUhKs.', '9810768457', '0', '0', NULL, '2023-05-21 00:22:52', '2023-05-21 00:28:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'Binay Singh', 'binaygangai24@gmail.com', NULL, '$2y$10$3DjFdP70C6EUAuFq.YHEqOJy7AtbMGe4hdd3QJkEBPRrha6HYlmVS', '+9779810483242', '0', '0', NULL, '2023-05-21 00:40:26', '2023-05-21 00:40:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'test', 'futureoptimax@gmail.com', NULL, '$2y$10$HWDjl0cIWpmn0t2YCHHZnuBmmGKnE7.S0HXl58xWOjaN8Ds0rZtNa', '23322323', '0', '0', NULL, '2023-05-22 07:27:00', '2023-05-22 07:27:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'romeobourne211@gmail.com', 'osbornromeo@gmail.com', NULL, '$2y$10$bEOgQBfhXPIat/oqhQBtk.5CUqFeGOf7n6f.nXDKatUePE5RJP.G.', '+2347019403958', '0', '0', NULL, '2023-05-22 07:27:22', '2023-05-22 07:27:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'test user', 'support@futuresoptimax.com', NULL, '$2y$10$ypDtiofSS1HIr/WjtSPvGeM3gthK7Jq7.EnsIn06UFIap.qElmz2K', '21212124442', '0', '0', NULL, '2023-05-22 07:30:13', '2023-05-22 07:30:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'test user', 'test@gmai.co', NULL, '$2y$10$B5dmZB7FEvwxUuVG5Od9ju7ZYfnlxsu4lsuBNVp4cet35cEJJQ5WW', '2323232', '0', '0', NULL, '2023-05-22 07:31:43', '2023-05-22 07:31:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'test', 'sdsd@gmai.co', NULL, '$2y$10$qe1CPWZLRLaytpHmvlt2zu8ITLetwfUdXRrlYU4yw2wxYDcXafJEK', '90983289329', '0', '0', NULL, '2023-05-22 07:34:31', '2023-05-22 07:34:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'test', 'test@gg.com', NULL, '$2y$10$qLIgCvurGFLz6Qs25VV.TuNP1Fzjizz1tairmRkf63NRgstQrJpF6', '32393293', '0', '0', NULL, '2023-05-22 07:42:51', '2023-05-22 07:42:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'test', 'hell2@gmail.com', NULL, '$2y$10$OcdUM7fPZckGYmcQoaF.d.7E/RVi5OF5Ssx030ZW6S7/AitnTLjcq', '090938948932', '0', '0', NULL, '2023-05-22 07:48:57', '2023-05-22 07:48:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'test', 'test@gogo.com', NULL, '$2y$10$FDWcF52NZs8FpKCYFjs5uup5353/hCewohriX5t3k4KOVJW5ZhJfC', '230928893', '0', '0', NULL, '2023-05-22 07:53:00', '2023-05-22 07:53:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'users', 'deh@dehli.com', NULL, '$2y$10$qUr/LgEIbRUbX6z6J5xtju23ybsCDDQHyjkqCWlLX5r/j21kE.HjW', '94394', '0', '0', NULL, '2023-05-22 07:54:04', '2023-05-22 07:54:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'test', 'hello@other.com', NULL, '$2y$10$MyPFn7RqwqxZ6p6nOon2yue8qaNDWDFCMrYpcNsEDqGta6oPKwTPG', '49239293', '0', '0', NULL, '2023-05-22 07:56:13', '2023-05-22 07:56:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'test22', 'ben@ben.com', NULL, '$2y$10$XvTre7JmmM3/D/Fy97TxjeMKHuzWTmvm7UaeDLw/PsjA0L7cNxcG6', '43939439', '0', '0', NULL, '2023-05-22 07:58:09', '2023-05-22 07:58:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 'test44', 'tstes212@gmgm.com', NULL, '$2y$10$UUMOLneIFIm6/upoqQsTpOExOy8iGJ6gjaki3Cx120IiMfFPhOg.a', '99983289289', '0', '0', NULL, '2023-05-22 08:04:13', '2023-05-22 08:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'ueeueu', 'wekk@gg.com', NULL, '$2y$10$7MFRxEhraOWt1zpWotxNuO48fe9lgeiBU5B1zDq.q8RyUO6n1Mnwu', '99403423', '0', '0', NULL, '2023-05-22 08:05:24', '2023-05-22 08:05:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 'romeobourne211@gmail.com', 'test22@gmail.com', NULL, '$2y$10$5.NPKff67in3MJRY/63qHu344GRVrJ4qQ5hZ7vyvfafUKJMEJCj4y', '+2347019403958', '0', '0', NULL, '2023-05-22 08:06:37', '2023-05-22 08:06:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'test44', 'ben@hhoh.co', NULL, '$2y$10$cGd5AWS5H5rad9q6HiwUV.Q1UIVDcjVuaqooyL0jhVr6i6aOaPPfC', '9029039920', '0', '0', NULL, '2023-05-22 08:12:56', '2023-05-22 08:12:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, 'test', 'ben@gn.co', NULL, '$2y$10$bADxx/wGJ/ZB5BsrMtBhOuhRVXa3o6SggZU1v5i4wtI8b7Jvobuau', '0020320', '0', '0', NULL, '2023-05-22 08:29:15', '2023-05-22 08:29:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'romeobourne211@gmail.com', 'test200@gmail.com', NULL, '$2y$10$ZRZKtVOOScPpK5uxjsQjWem1KwgNoO8cEbyu6WYypvEoeXIhIC4nm', '11111111', '0', '0', NULL, '2023-05-22 08:30:49', '2023-05-22 08:30:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'test33', 'ben@gma.com', NULL, '$2y$10$itRsU93p0RHnpABcaiHTe.udj1w1mNq523.aHDedMOE3nDgCpqFSS', '92939290', '0', '0', NULL, '2023-05-22 08:34:46', '2023-05-22 08:34:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'hello', 'emil@gma.com', NULL, '$2y$10$M6I/xWCL2jOGUkgqhmIHuulv5QckSRsNTM.38zDvkOsRrxKggr0L.', '112121', '0', '0', NULL, '2023-05-22 08:39:48', '2023-05-22 08:39:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'test', 'ged@go.com', NULL, '$2y$10$4pu...MxyM0K/22Eamh3F.dGdqZcDk/8Z7mXxi6ioiXLnOJNU1RqS', '30203203', '0', '0', NULL, '2023-05-22 08:44:46', '2023-05-22 08:44:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, 'test4444', 'hell@gogo.com', NULL, '$2y$10$aWSpcL/KK8fsabmNYZTUzuDo893Jz0uVls2mV7uDkBbV4rNnpzkBS', '30928389', '0', '0', NULL, '2023-05-22 08:58:26', '2023-05-22 08:58:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, 'test33', 'ben@gogi.com', NULL, '$2y$10$pUqlJ.VOQoccOlYpUmvHhe7b1y5ZVGODJiXvEnPSbLKF/6HAqQeV6', '0329239', '0', '0', NULL, '2023-05-22 09:01:16', '2023-05-22 09:01:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 'romeobourne211@gmail.com', 'test2900@gmail.com', NULL, '$2y$10$4a9w7llABHfDlM7gEpq3Vu3V/8snbL8FqrIbrNaXqGJxgIlQXh.sq', '+2347019403958', '0', '0', NULL, '2023-05-22 09:03:32', '2023-05-22 09:03:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'shds', 'benee@kkkd.co', NULL, '$2y$10$OqYNd0KBv0aHkEZWRnG8weqAt.BAhGxrsYoWSfZfYRH6jUr50lTYa', '9099887', '0', '0', NULL, '2023-05-22 09:03:51', '2023-05-22 09:03:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'test22', 'benhjh@ko.coco', NULL, '$2y$10$igmlppLs1zwkxLy1s2OSpe/dZIec.3KdzXvdU9aQF6WJGwdQJvONG', '32099023290', '0', '0', NULL, '2023-05-22 09:14:01', '2023-05-22 09:14:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'Kiran Pokhrel', 'pokhrelkiran0612@gmail.com', NULL, '$2y$10$WxCesfQJTxf/q8Z///X0ee9vr/0lTuFcfxuWgLC1JIBp2KcS3S7aC', '9866040679', '0', '0', NULL, '2023-05-22 12:48:29', '2023-05-22 12:48:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'Aloy Eze', 'ezealoy4@gmail.com', NULL, '$2y$10$IvT5ihTzWY4rWHh8vZQRvupdoFMcfhZv9AB3zRqk/QapiKxSVzdKa', '+2348066254558', '0', '1', NULL, '2023-05-22 18:59:45', '2023-09-14 09:36:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'Mouade Mouslime', 'Mouslime15@gmail.com', '2023-05-22 19:42:38', '$2y$10$zdBGFgMRWCVb4vi/TJoT/eQkVpmeGQ8feoRxQr.ZqmllbRQXXB8WG', '+212698944406', '0', '0', NULL, '2023-05-22 19:31:06', '2023-05-22 19:42:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'Radheshyam Dahit', 'radheshyamdahit@gmail.com', '2023-05-23 01:53:27', '$2y$10$pXzTHG9hXHJDWUeMA1B4Dei4QZpmnSCmj1u4BxlR4npf7hGbGoF/2', '9810768457', '0', '1', NULL, '2023-05-23 01:29:20', '2023-09-14 09:36:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25/03/25', '2', 'Shreepur-11 Birgunj', NULL),
(249, 'Bikash chaudhary', 'cbikash052@gmail.com', NULL, '$2y$10$MmuXYWX.y5Gl8OuVNAV0SOgdxv0kevrznVaucZxZ83/dmmceIIxuq', '9805918703', '0', '0', NULL, '2023-05-23 03:17:19', '2023-05-23 03:17:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'Joseph Eni Ogbu', 'ogbujosepheni@gmail.com', NULL, '$2y$10$DHmEjdsQHosh4Z0YywF.E.VApIelVj.40027UhNhDJrcBx1FWi9bq', '09037118404', '0', '0', NULL, '2023-05-23 07:48:28', '2023-05-23 07:48:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, 'Surya Mazze', 'nirajsurya568@gmail.com', NULL, '$2y$10$REnENb66fYIJqyYL1DDKBe82VCjcQW/KDtyKd3JweUakhkBH7Ypiq', '9813716316', '0', '0', NULL, '2023-05-23 16:50:49', '2023-05-23 16:50:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'Ishowar Budha', 'budhaishowar381@gmail.com', NULL, '$2y$10$uTAHe6tT7ry9qKfhDj8Jbubj3.pi2yr36IDAeTuSyQz2cI6rUkjgq', '9847979146', '0', '0', NULL, '2023-05-24 02:00:39', '2023-05-24 02:00:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 'Triloki prasad', 'trilokigupta2010@gmail.com', NULL, '$2y$10$quiMlDAB/dp1biR2bW.S0eu9w3nVu4oPPN70SvfSILOcFLIn6ZXyW', '9560058652', '0', '0', NULL, '2023-05-24 08:05:36', '2023-05-24 08:05:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, 'Bright', 'sirraybright4@yahoo.com', NULL, '$2y$10$U8EMzmz15S1VEIUEU559eOb6H2lPdXX/gIeyowjUAUFxMoz/WA8wu', '07036475414', '0', '1', NULL, '2023-05-24 15:18:52', '2023-09-14 09:35:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 'soane viorel', 'soaneviorel@gmail.com', NULL, '$2y$10$VgRfJKuNW5HLU5yks0G18OXVcu9SgAuZTFfh2x/5WX0MNv6n..U0W', '0724602381', '0', '0', NULL, '2023-05-24 15:52:50', '2023-05-24 15:52:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, 'Sabin', 'rajthakuri370@gmail.com', NULL, '$2y$10$EauTMEllMK6Vm9M.ROW0z.3veDOND3JEowtlDgSjwhTo9v1EN50sK', '9823415088', '0', '0', NULL, '2023-05-25 07:07:58', '2023-05-25 07:07:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, 'Pawan Pandey', 'ppawan280.pp@gmail.com', NULL, '$2y$10$i1b8z6VdrpJjWpI/rFYhmOeR3n55bXenKPKmkGvVNvonQIFWETlpe', '+9779824415681', '0', '0', NULL, '2023-05-25 07:44:37', '2023-05-25 07:44:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 'Prema Kumari Barain', 'PremakumariBarain9811@gmail.com', NULL, '$2y$10$PEYWLLZjOOp7z4Ps4RyKruu3c1rCdBeKIAa6DSmZj8IlBuZfduxIy', '9811490519', '0', '0', NULL, '2023-05-25 12:29:31', '2023-05-27 07:42:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09/01/1985', '1', 'premakumaribarain9811@gmail.com', NULL),
(259, 'Abdul rehman', 'trigonal83@gmail.com', '2023-05-25 13:07:54', '$2y$10$bIJsKuJTmWPxwBUeSYY4Quew6x7aW82v5Q5QuqX571eAc40aIgGLq', '+923318140095', '0', '0', NULL, '2023-05-25 13:07:12', '2023-05-25 13:07:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, 'Jagat bahadur bithari', 'jbithari@gmail.com', NULL, '$2y$10$rDi8yqTJYGuSZ2n1MZ2xsuslnDbBHzG0/CIM7f6a8mL4Q0mOWR8TW', '9840047008', '0', '0', NULL, '2023-05-25 13:51:50', '2023-05-25 13:51:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 'Suraj shah', 'surajshahofficial100@gmail.com', NULL, '$2y$10$GJEuYRLwn2LQy01RUQEbAOfeMunQuKS62WFbqS72W9tpdYsMXk8e2', '+9779826767475', '0', '0', NULL, '2023-05-26 15:16:53', '2023-05-26 15:16:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 'Suraj', 'sahsuraj9825711726@gmail.com', NULL, '$2y$10$gfPF0QM1Z/S6/xtnB5UvR.U4Z66bbsKuTqt6TmZkdgUDrKeKVb6eW', '+9779826767475', '0', '0', NULL, '2023-05-26 15:17:27', '2023-05-26 15:17:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 'Muhammad Toqeer Muhammad Yousaf', 'aliyaan.ahmed44@gmail.com', NULL, '$2y$10$mQThBY8rjR.Tx7NL9YFCauZTk2Ur6JEPVxFXZcBbFqYSAdJMxA1ZK', '03030454771', '0', '0', NULL, '2023-05-28 03:27:46', '2023-05-28 03:27:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 'Bikash chaudhary', 'bikashcy31@gmail.com', NULL, '$2y$10$lRY62RBoFNHbyxwJdhlmd.JJpDbOmBiXxpVsknxNcBf8rBdh.hL16', '9805918703', '0', '0', NULL, '2023-05-28 10:18:06', '2023-05-28 10:18:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 'Rangilal Barai', 'baraidurgesh573@gmail.com', NULL, '$2y$10$vAVrHtYiFr6R4WizJLnl9u3y0Efe/PT0JkbeoHRdnwQvMVEgiBrY6', '9817412434', '0', '0', NULL, '2023-05-29 00:33:59', '2023-05-29 00:33:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 'Natasha', 'thelanzgabriel@gmail.com', NULL, '$2y$10$O1rAyV/FCPIDiXd2gdfyjuCgycyuxifm1A49sq/dt1BzBi8g3KsCe', '07056458512', '0', '0', NULL, '2023-05-29 10:17:34', '2023-05-31 09:13:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23/07/1991', 'Gender', 'Ghfdx', NULL),
(267, 'Samir', 'sa3649295@gmail.com', NULL, '$2y$10$kH7SOc08miFjHKLAr2UPkOfXvfRf6XHtgYimzbENj5NMR7yYEKb7O', '9815878311', '0', '0', NULL, '2023-05-29 13:35:16', '2023-07-03 17:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01-05-1996', '2', 'Pokhra Municipality', NULL),
(268, 'Frank', 'obugnkiruka10@gmail.com', NULL, '$2y$10$MUPJ6Gf0mC.iqlCtNzmZreQgk10YQ7BZhpnrRO0um5sxzq/vvOpRC', '08162765480', '0', '0', NULL, '2023-05-29 17:01:14', '2023-05-29 17:01:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 'Darko Nedanovski', 'darko.nedanovski@gmail.com', NULL, '$2y$10$8wVKSJtugGbhFhk.GjByDuV0bD54PHzchMaGwLG7wezB36kZo2g2y', '+447453310828', '0', '0', NULL, '2023-05-30 05:42:02', '2023-05-30 05:42:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 'Tabrej Ansari', 'ansaritabrej620a@gmail.com', NULL, '$2y$10$c5q0rkiY.2hy6a6ZL8qT1uzgCHE.bReM8ZdAMxGItPFbmg3NwmwfS', '9822843995', '0', '0', NULL, '2023-05-30 07:54:02', '2023-05-30 07:54:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 'Akash Ayer', 'akashayer008@gmail.com', NULL, '$2y$10$Spv7ncq3.2vKgDMx5UgeYO.XpygUf17QJWG4R4bE2U0qgui9kuaO.', '9822724316', '0', '0', NULL, '2023-05-30 13:58:50', '2023-05-30 13:58:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 'Jeevan shahi', 'shahijeevanjkt@gmail.com', NULL, '$2y$10$GcTndcmGtqqoFlzUvMZ11.IxtEcGykBAo82rVLxXxD/ffTFWWR6IK', '9848331333', '0', '0', NULL, '2023-05-31 07:11:19', '2023-05-31 07:11:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 'Harry', 'anegm6814@gmail.com', NULL, '$2y$10$JOvovMiWt.KvcYXwWFbVAO3XsiI93bf0tQUD9mqIXZ75B/JvH8X4G', '01050763181', '0', '0', NULL, '2023-05-31 22:54:37', '2023-05-31 22:54:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 'Deepak pandey', 'dp0663653@gmail.com', NULL, '$2y$10$k4H/ZIbDkQtRC2ZdfaSBFO8p0df7rMEuizAJNrEqR7PuXiL/tuhXi', '9749769096', '0', '0', NULL, '2023-06-01 01:33:30', '2023-06-01 01:33:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 'Mamta kumari', 'mk24838894@gmail.com', NULL, '$2y$10$VGlHNtjHn64MLQsa5FxQuO1FPBZiEE4IQeW4uIBPCZhSe2CG/JFSu', '9806932471', '0', '0', NULL, '2023-06-01 05:18:45', '2023-06-01 05:18:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'Ifeoma', 'sirraybright@yahoo.com', NULL, '$2y$10$tV2HfbUZPnuKh5CfxC0wguiBn0xg8S5uKWocH74goJIkEepWY2Boa', '09039183707', '0', '0', NULL, '2023-06-01 08:05:56', '2023-06-01 08:05:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 'Elijah E.', 'etimelijah800@gmail.com', NULL, '$2y$10$DMsSEg.HJnFqDi4G4Wyk1OYL1XCYKluKX3kb10pH7d/7oMJryBfx.', '07033755012', '0', '0', NULL, '2023-06-01 08:29:17', '2023-06-01 08:29:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 'Sabin', 'rajthakuri363@gmail.com', NULL, '$2y$10$iGvYhh6g71hMJRd0B2vJZOajJ1fqlKBq43BwbyiQFboR4huBHDNou', '9823415088', '0', '0', NULL, '2023-06-02 07:34:26', '2023-06-02 07:34:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 'Sagar', 'oceanrana3@gmail.com', NULL, '$2y$10$yVegJrYDgtVQs46D4GLLyOlftXtix2ZT9e.GwmIgKlBjdhAy7vhyy', '9809226484', '0', '0', NULL, '2023-06-02 07:54:48', '2023-06-02 07:54:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 'Sarjeet Singh', 'sarjeetsingh99725@gmali.com', NULL, '$2y$10$sN28tdDj2lL8FS80WaVXbOTE2eewsSd4Y4tXw2rYvUMrrGjxBtNs.', '8306882539', '0', '0', NULL, '2023-06-03 07:24:44', '2023-06-03 07:24:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 'Jodine Michael', 'jodinemichael405@gmail.com', NULL, '$2y$10$gkIEwouo33Gres.arYY9BuX77FJpNCyo7XQuhwVj4LVigL2zPVsb.', '57653487', '0', '0', NULL, '2023-06-03 14:08:31', '2023-06-03 14:08:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, 'Steve Owens', 'so6632238@gmail.com', NULL, '$2y$10$wVi0a79Ok12PiarLyZ.5COsW78kZvQs1u6Q7z/LHPTSUQF6BRPQ66', '2568890456', '0', '0', NULL, '2023-06-03 14:17:04', '2023-06-03 14:17:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, 'Hetty Rambo', 'rambohettie@gmail.com', NULL, '$2y$10$IwcU5FweAKpbJJuFSPbcOONdcIlY0hs25Z.h/57.F2R6CC7Z/h1VO', '848498883', '0', '0', NULL, '2023-06-03 14:17:18', '2023-06-03 14:17:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, 'Michelle Williams', 'michellewilliams964832@gmail.com', NULL, '$2y$10$StBElzAAky0Y5wgx9/.GO.D18OA9FCEoLhCFHNf0vrS0/5vZdE6Im', '5643234576', '0', '0', NULL, '2023-06-03 14:25:17', '2023-06-03 14:25:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 'Johnson Gravatte', 'johnsongravatte@gmail.com', NULL, '$2y$10$0syXBFK5h6y2h.M0Xs1qEOvIYosqRNcZnw3t8nO7IzEmD9jSlVFWS', '5682855285', '0', '0', NULL, '2023-06-03 14:26:52', '2023-06-03 14:26:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, 'Nathan Peters', 'nathanpeters62972@gmail.com', NULL, '$2y$10$Hv3mhbx8OwcPhbo/1xQ.U.a./wiSw0UBluR12I23ZoHf9RjwkfC2W', '2454684248', '0', '0', NULL, '2023-06-03 14:28:38', '2023-06-03 14:28:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, 'Rose Michael', 'rosemichael9648@gmail.com', NULL, '$2y$10$iPfN7BHfqbIvJz/juK/kn.mlrE9I7AUqJaV7XPd17toEJOeVFUzde', '5647437689', '0', '0', NULL, '2023-06-03 14:29:26', '2023-06-03 14:29:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, 'Merritt', 'censordave1727@gmail.com', NULL, '$2y$10$Fw.lhd8emdkq1B/xEF9PWuQEYqruGoHCbw5VwavJBfJoduioRFh6a', '1689965436', '0', '0', NULL, '2023-06-03 14:29:54', '2023-06-03 14:29:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, 'Rosa Robert', 'roserobert964832@gmail.com', NULL, '$2y$10$1bYpvGhfmnMjKI8Ua6qGV.txaCmhE243ejUCepn3.Bn..XkfT/NJ.', '5465867898', '0', '0', NULL, '2023-06-03 14:31:34', '2023-06-03 14:31:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, 'Alice', 'alicecurrin05@gmail.com', NULL, '$2y$10$NHQcHGYRh2Co6hRrjS/u5u50xZBkctXQ2Pt5e43BeQP7lVTza854q', '+447900204960', '0', '0', NULL, '2023-06-03 14:32:47', '2023-06-03 14:32:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, 'Cici Michael', 'cicimchl@gmail.com', NULL, '$2y$10$tQKK2pBa3QCDSDschVSEiesJJ384lzolMslfHxdv/jkxYKtHXirEO', '5786445463', '0', '0', NULL, '2023-06-03 15:10:21', '2023-06-03 15:10:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, 'Sandesh magar', 'sandeshruwale@gmail.com', NULL, '$2y$10$hTILzqDtvNZuajzPMi9xx.JCRvWDPbVyXxbtcGyeLnVwhRIQkElDe', '9829191375', '0', '0', NULL, '2023-06-03 17:19:15', '2023-06-03 17:19:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, 'Wirdo', 'harriskuwar@gmail.com', NULL, '$2y$10$VccvfdPCA6mgN6I8vrBK9.OrOBZmI4sLJnoWK1uFUkVKbPpT833lq', '9865903711', '0', '0', NULL, '2023-06-03 17:43:01', '2023-06-03 17:43:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, 'Muskan', 'tilamuskan@gmail.com', '2023-06-03 18:11:12', '$2y$10$.vndLH.Fjy.YCfkcUh0F2u4jzyaRK7LaGN2UDxqr73F6ZJGki9poe', '9746399561', '0', '0', NULL, '2023-06-03 18:10:35', '2023-06-03 18:11:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, 'Green Nikki', 'greennikki688@gmail.com', NULL, '$2y$10$2zn4IJtSvfa4KByypVJ6QOMwk/rF5Q6.xHe1RRkGIxXVccNEGb9T2', '2492601346', '0', '0', NULL, '2023-06-03 19:39:31', '2023-06-03 19:39:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 'Abhishek Thakur', 'abhishek323to@gmail.com', NULL, '$2y$10$5EBObQbklD2otfvcarKtB.ScPGhijvErMBKFnh8w7hopNhxCO5HC6', '9819799280', '0', '0', NULL, '2023-06-04 06:11:52', '2023-06-04 06:11:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 'Pranabh pokharel', 'catalpqx3@gmail.com', NULL, '$2y$10$dEPadVWNc4ZsfADSHCMYFe34mDGlhOXWbkkosikoGQO6pBWFg/ejy', '9825322168', '0', '0', NULL, '2023-06-04 08:23:04', '2023-06-04 08:23:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 'SHREJAL GHIMIRE', 'shrejal.ghimire1995@gmail.com', NULL, '$2y$10$m89ihYUk9yYdskNOYwER7u7.tVcPjpT8SU5gOfL6LQ/WfEAp69OFK', '9845679254', '0', '0', NULL, '2023-06-04 12:17:35', '2023-06-04 12:17:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 'Rajesh Kumar S', 'rajeshkumar75@protonmail.com', '2023-06-05 02:12:35', '$2y$10$liCc/ToHFfxT6CIv42fkoObN97WOLAn/q4nfxrHwMvnkXObYBFUoS', '919789655564', '0', '0', NULL, '2023-06-05 02:11:44', '2023-06-05 02:12:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 'Naveen', 'smileynaveen36@gmail.com', NULL, '$2y$10$eskleXaPXWivfEgrq6lAQ.qWbsKkcHfO03zZD5qowD6MVVmBwpPAC', '9502166262', '0', '0', NULL, '2023-06-05 04:13:18', '2023-06-05 04:13:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 'Bikram shrestha', 'sthabikram29@gmail.com', NULL, '$2y$10$DD/lQOYnsSrwRtawEu5U1ugwzb.6DervbAtPwLypZ1esfv1tIf2iq', '+9779842171169', '0', '0', NULL, '2023-06-05 04:38:42', '2023-06-05 04:38:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, 'Prawesh Kumar', 'dasspraweshs@gmail.com', NULL, '$2y$10$rAwDJQH0fsTOpyp8BhqcYOz9eUIl9ybXVmN8qbVqIrJdFF/x9TFpy', '9810527870', '0', '0', NULL, '2023-06-07 06:31:52', '2023-06-07 06:35:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2004/05/07', 'Gender', 'Rangeli', NULL),
(303, 'Faisal Abbas', 'faisalabbas6941@gmail.com', NULL, '$2y$10$OeSuNfFNrI7XNMty86miBuq0X7v1LIMDI3v/XZ0VNvcDPCuSLK28S', '923056941764', '0', '0', NULL, '2023-06-07 09:09:22', '2023-06-07 09:09:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, 'Sujan Tamang', 'sujantmg5755@gmail.com', NULL, '$2y$10$/JL72fckSRfV1lfHmIwR1.nv1xk6ql4BCP6ZOWf7l9tJjE9P9KPI2', '9818237662', '0', '0', NULL, '2023-06-09 00:43:46', '2023-06-09 00:43:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, 'Bahawal Sherwatto', 'rahmanaaliyahabdul@gmail.com', NULL, '$2y$10$3NPJC0xIJGDN9usMhHXgtuZK.q4ajeulNIsR11/ihVNRdRdjFt//y', '543046669', '0', '0', NULL, '2023-06-09 12:48:32', '2023-06-09 12:48:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, 'Nabin shah', 'gamew2819@gmail.com', NULL, '$2y$10$zrPMFGvBeTJab4dTshuna.bRJvnIYB4g0AlGwC84YgHRT/4hGFMQ2', '9810496486', '0', '0', NULL, '2023-06-10 12:46:33', '2023-06-10 12:46:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, 'Santra Chaudhary', 'santrachaudhareeeee223@gmail.com', NULL, '$2y$10$7rpkj8J53tAPNgDa.Uc2TeSaD0F55CsLPiSeK3.uqFJNNueHCoCMu', '9810584426', '0', '0', NULL, '2023-06-11 09:53:53', '2023-06-11 09:53:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 'Aliyu Ibrahim chigari', 'Shawaragi3@gmail.com', NULL, '$2y$10$B/7NCCCyGLn4JN7A01V0IONiUgmmZ6x4OD5O7D3iph8zOArtRAXl2', '+2349032337857', '0', '0', NULL, '2023-06-11 13:17:26', '2023-06-11 13:17:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, 'Aliyu Ibrahim chigari', 'Ahleeshy@gmail.com', NULL, '$2y$10$pZT2.x/k4FWWEK9/WB30RerCp5HSS1po63g0pVec7SKnuXoSbXtKm', '+2349032337857', '0', '1', NULL, '2023-06-11 13:21:53', '2023-09-14 09:34:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, 'Sheikh Farhad Mia', 'farhad.phulpur@gmail.com', NULL, '$2y$10$CJ0TnwAB/IWE.6j47pU/jOUVEhLLby63g0jIEqZOtKTh1hKbNO8x2', '+8801911414202', '0', '0', NULL, '2023-06-11 16:58:05', '2023-06-11 16:58:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, 'Lenatus Mtegeta', 'mtegetalenatus@gmail.com', NULL, '$2y$10$uaXK.6KFMgv6XQbrBbNbM.mrnyX5xDMs6Yiq2TjRSlAAx5CQqHxim', '0766136757', '0', '0', NULL, '2023-06-12 09:59:24', '2023-06-12 10:03:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06/02/2023', '2', 'P.O.BOX 211 URAMBO', NULL),
(312, 'Ankit shsh', 'shahankit337@gmail.com', NULL, '$2y$10$N6xizxOnyJ1EYr1OhdJSBuSAQvKlPx2fuDd6H5z5AXZ7XsgY0wTXS', '9804784621', '0', '0', NULL, '2023-06-15 04:31:13', '2023-06-15 04:31:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, 'Sachin Mahato', 'hemantachaudhary55@gmail.com', NULL, '$2y$10$vRA20PuWCjG2HkV6ByICYeqC0ZPDMSt0cnpAU24ddmTY3Sp1Oi73i', '+9779827184696', '0', '0', NULL, '2023-06-16 03:05:06', '2023-06-16 03:05:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, 'Komivi Augustin ADAM', 'gugnath@gmail.com', NULL, '$2y$10$4iA/28LSUqZMVeA1jOEZ7uQGKn19pii1xTLPeIocc3.oP39s/VSva', '0022891983983', '0', '0', NULL, '2023-06-17 05:55:04', '2023-06-17 05:55:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, 'Bharat', 'bharataggarwal123456789@gmail.com', NULL, '$2y$10$bjhl2OA7xSiUl8Yj9BAPReghKug.YMPhjrV1/O92K3K27ppJnLEH.', '7494889679', '0', '0', NULL, '2023-06-17 09:43:20', '2023-06-17 09:43:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, 'Waheed Altaf', 'waheedaltaf178@gmail.com', NULL, '$2y$10$SyVltJ2ZW//iiZrDzQY52eqL62euLHroXxQODuGFQoASuNcw3PF4K', '03158896751', '0', '0', NULL, '2023-06-17 10:43:01', '2023-06-17 10:43:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, 'Usama Safdar', 'malikusama4295@gmail.com', NULL, '$2y$10$kWsL4duGTZDssMjwB9XHou4zZv/43d1eR4K67fYao0KHhEWlrM/Qe', '+923498952137', '0', '0', NULL, '2023-06-17 10:44:01', '2023-06-17 10:44:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 'ADAM KOMIVI AUGUSTIN', 'augusti26n@yahoo.fr', NULL, '$2y$10$9gIhaiBE1nsmoXBnfFrMsub56iBBZqSNVTBbCJVS50KGIkPIGPO1a', '002891983983', '0', '1', 'BWTHUUSY6NgE4fdG8OYTiLCEczx2FAakWIQTbqQ4qNWUifCqlz7rtt3F0Pr2', '2023-06-17 21:13:29', '2023-09-14 09:32:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07/09/1977', '2', '128 Boulebard du 13 janvier  Lome TOGO', NULL),
(319, 'Abhi Raj', 'abhi666raj@gmail.com', NULL, '$2y$10$xszTSHLlsPdNLD79hC.tw.1Mpu/bdXZs/rNNCYHo90nrKgoMZQny6', '9817039594', '0', '0', NULL, '2023-06-18 13:29:52', '2023-06-18 13:29:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, 'Shaminu', 'shamunuhusaini20@gmail.com', NULL, '$2y$10$fPuRGRMJbrmUWf2uV8PcwuN4wpcbMGPO/mfRE3gJKhHZ/okvQ2D2K', '08039640016', '0', '0', NULL, '2023-06-18 16:59:42', '2023-06-18 16:59:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, 'Bashir Ibrahim', 'excellencybashir0013@gmail.com', NULL, '$2y$10$2lltSf4pwwJQas07RVi1te9MBICdbB70J7825k9bl2efDVSvP.Vc2', '8168050013', '0', '0', NULL, '2023-06-18 17:43:29', '2023-06-18 17:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, 'Hafizu Muhammad', 'mhafizu53@gmail.com', NULL, '$2y$10$Kick7yom6xT/NMx/6t6RZ.NpnGXvGqoAGSQ6o4YHXjAdPf7nH7oQW', '09039353517', '0', '0', NULL, '2023-06-18 17:55:19', '2023-06-18 17:55:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, 'Mujittafa Hamza', 'mujittafahamza@gmail.com', NULL, '$2y$10$/yYB72ucslxPNe5TpY.d/ulKNuuuXhniuO6fg84GI1IAeaE1F6hZe', '09055289225', '0', '0', NULL, '2023-06-18 18:00:25', '2023-06-18 18:00:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 'Aliyu Ahmad', 'aliyuahmad817@gmail.com', NULL, '$2y$10$PpRAGcwksWzEeTrBgdgnL.E9tHujeSkyEPLbfQmpIHt78c6.i6JHe', '07064852644', '0', '0', NULL, '2023-06-18 18:08:04', '2023-06-18 18:08:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, 'Maryam hamza', 'maryamhamza530@gmail.com', NULL, '$2y$10$Vw960m.W/5Gs6kcv6kG93uT/fWwjxNUxL/EQKnkyk7afL7uxM0J3O', '09079885028', '0', '0', NULL, '2023-06-18 18:13:52', '2023-06-18 18:13:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, 'Shuaibu Isah', 'shuaibuiseeh@gmail.com', NULL, '$2y$10$F./7ZDapWI56OPCW719ZzeBi4yUOm59evFNjzKLVWLYdpVdYqIFM2', '08036859054', '0', '0', NULL, '2023-06-18 18:15:10', '2023-06-18 18:15:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, 'Usman Abubakar', 'nazeefatmusa@gmail.com', NULL, '$2y$10$itWiWbcLGq/301Q6p5UhL.CiIyGiXTxQsqLKl0OmVfRjo68Bcd2ky', '08065676562', '0', '0', NULL, '2023-06-18 18:21:54', '2023-06-18 18:21:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, 'Auwal musa imam', 'Kwashakwasha222@gmail.com', NULL, '$2y$10$XnwsjfJyZv1.wE4I4V94ue2SdLUFuboAW1x7gCJn6G6yc0sfDLzPu', '08148975183', '0', '0', NULL, '2023-06-18 18:23:42', '2023-06-18 18:23:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, 'Aisha', 'humairahaidarmuhammad@gmail.com', NULL, '$2y$10$I3.JU288yIW0TLghGjUShuYozMBlNXPbUp3VgV/7N0Y0PMVnq1NXK', '08109890730', '0', '0', NULL, '2023-06-18 18:36:01', '2023-06-18 18:36:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, 'Balkisu Muhammed', 'balkisumuhammed125@gmail.com', NULL, '$2y$10$EPQO45wUT7QZAr2.gfOkdONo35ONbKZTDxaqr28rD51ZPzejZTq92', '08081247870', '0', '0', NULL, '2023-06-18 18:36:17', '2023-06-18 18:36:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, 'Hassan', 'hasanulbasary4321@gmail.com', NULL, '$2y$10$CtjYT5w6k847xNsWC8cAYOpbjpjfZrwfszlZ40Uw5Y6iiiTUQElMC', '+2347063098300', '0', '0', NULL, '2023-06-18 18:51:46', '2023-06-18 18:51:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, 'Rabiu Umar Bello', 'tanibafula@gmail.com', NULL, '$2y$10$i50N0E6b1JS/mmSRiF./tuGqW3YOa44qd4cUGYIocYpqPeEmJW1Q6', '07067600306', '0', '0', NULL, '2023-06-18 19:07:44', '2023-06-18 19:07:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, 'UMAR MUHAMMAD', 'muhdu0853@gmail.com', NULL, '$2y$10$fEKVgIapiiFym9EZ2Bl4ZOMNic2QmwvfT7YpCa2DmZWybfR1slebC', '07061163635', '0', '0', NULL, '2023-06-18 19:21:55', '2023-06-18 19:21:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, 'Bashir Ahmad Kabir', 'abbaahmad3415@gmail.com', NULL, '$2y$10$Vr.XaJMchtNpCyFxEct4yuKM6bABkZAyPbamFeme6mHigdJzHEFTG', '07036141101', '0', '0', NULL, '2023-06-18 19:27:08', '2023-06-18 19:27:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, 'Adam Dahiru', 'adiamdahiru2024@gmail.com', NULL, '$2y$10$zIuZnqJlBZJih6OM8mXDUeVekA4urslJOS9mlkgyLf9Sni6civ7qm', '08147465396', '0', '0', NULL, '2023-06-18 19:30:30', '2023-06-18 19:30:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, 'Samaila', 'samailasuleiman924@gmail.com', NULL, '$2y$10$yIpPhi1ILfcRKnHMRpffTO.C/cVGhaJoOPusZ5tsyeTxvB9cFhbvK', '08164348281', '0', '0', NULL, '2023-06-18 19:51:24', '2023-06-18 19:51:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, 'Hassan Abba Musa', 'abbamusahassan620@gmail.com', NULL, '$2y$10$wG/PtXgJt1B4W.zKEE1tGuhCguJovGUQMcf2n33QrIZmgsPtwkED2', '9030952497', '0', '0', NULL, '2023-06-18 19:57:09', '2023-06-18 19:57:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, 'Bello Umar', 'belloumar6560@gmail.com', NULL, '$2y$10$d/c7fbD4Or3PXp2VFj5QD.gkI4fkk49DDw8xo23d2ZOZbv0/1FMH2', '08034798262', '0', '0', NULL, '2023-06-18 20:01:18', '2023-06-18 20:01:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, 'Amina Muhammad Adam', 'amina4muhammadadam@gmail.com', NULL, '$2y$10$g4JlVzSMVzv5eF5MTLPK1O1gu/LkzYFw.HSLYXYqbhUNhDSPmTS/a', '08067293721', '0', '0', NULL, '2023-06-18 20:01:42', '2023-06-18 20:01:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, 'Abbas Muhammad kolo', 'abbasmuhammadkolo98@gmail.com', NULL, '$2y$10$L785eJkkJHz5IEXPO8.ak.nvrsMQM11jNw8qCx//rdmjbxWNvtcnu', '08106985229', '0', '0', NULL, '2023-06-18 20:45:04', '2023-06-18 20:45:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, 'Muhammad Abbas', 'muhammadabbas@gmail.com', NULL, '$2y$10$go9Jcf2NYv6zzspxhzJcmOXULw9iDzbqvZ3ylSm01vo2.bR5pZl2y', '08106353214', '0', '0', NULL, '2023-06-18 20:48:04', '2023-06-18 20:48:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, 'Jamilu abdullahi', 'abdullahijamilu337@gmail.com', NULL, '$2y$10$dwgPQyO/rpgMt2klD80f4uSPlTIlUchXaZbuOeVYA6R.RVouSiVra', '8038791252', '0', '0', NULL, '2023-06-18 20:53:09', '2023-06-18 20:53:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, 'Najib Muhd Aliyu', 'najibamd14@gmail.com', NULL, '$2y$10$1ezfNK0PyVcf8JxgUN.IVutL8aUOjzwgG85IAu6uar3CP2AeFAK.m', '08036001134', '0', '0', NULL, '2023-06-18 21:12:13', '2023-06-18 21:12:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, 'Nasiru magaji', 'nasirumagajibkd1@gmail.com', NULL, '$2y$10$TxSbO6TTe7ACCr2oBRigluGkCOzzaaaIPc9XR/kgFOOC1kMbwMq52', '08039710543', '0', '0', NULL, '2023-06-18 21:18:48', '2023-06-18 21:18:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, 'Zulkifil', 'ibrahimzkfl@gmail.com', NULL, '$2y$10$Zix6TFPzDTttnDB7s.sL6uL6e62WbOjaMWiVKBe6H/i.q5p5XOZdi', '07088078473', '0', '0', NULL, '2023-06-18 21:23:49', '2023-06-18 21:23:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, 'Abubakar Ibrahim abubakar', 'khaleefa7723@gmail.com', NULL, '$2y$10$75vRj6Fjvel6hGG7VYmgROVMj5u81VNGf7cfcvSHVVRMwuTACegHq', '08131930058', '0', '0', NULL, '2023-06-18 21:26:06', '2023-06-18 21:26:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, 'Musa Yusuf Tanimu', 'musay1612@gmail.com', NULL, '$2y$10$zDoOYYDa5kS6hmsUzmG2uugS6O83TZKMtmnf/GfqPOld9pdm7G6c.', '08069607827', '0', '0', NULL, '2023-06-18 21:29:02', '2023-06-18 21:29:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, 'Umar adamu', 'umaradm853@gmail.com', NULL, '$2y$10$DzOwSR/.HkcgSADBRs5c7.TI8.MdD60OQIDs2ENfYs4FgrvGRZ60K', '07046636273', '0', '0', NULL, '2023-06-18 21:52:37', '2023-06-18 21:52:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, 'Auwalu Sabo', 'auwalusabo50@gmail.com', NULL, '$2y$10$MwsPXTvKlSDQnygZPJ0tBO61gDCae1CNRNhxn5DLidmbrFyOXo.U2', '07069762379', '0', '0', NULL, '2023-06-18 21:56:01', '2023-06-18 21:56:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, 'Bukhari Haruna', 'bukhariharuna7@gmail.com', NULL, '$2y$10$cix8lnkQo.M1QFq3jqO7k.QgauIYY/wf1UbM0N3UzidBfF0dRabkG', '+2348120919703', '0', '0', NULL, '2023-06-18 22:02:08', '2023-06-18 22:02:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, 'Sanusi sani', 'sanisanusi013@gmail.com', NULL, '$2y$10$zhoNsArk8Ukj2rric0je7.wS7us4q3POrf9uH324f..XjHmXzucxC', '09038967128', '0', '0', NULL, '2023-06-18 22:03:29', '2023-06-18 22:03:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, 'Mohamadou Awal', 'muhammedawwwal@gmail.com', NULL, '$2y$10$ZGJR5d.Vdu0JR1ykt2jst.d8ypEds9KpAxjVcd3CHvRRNkNmjrB.C', '677219051', '0', '0', NULL, '2023-06-18 22:03:32', '2023-06-18 22:03:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `blocked`, `remember_token`, `created_at`, `updated_at`, `street`, `city`, `state`, `post_code`, `facebook`, `instagram`, `twitter`, `linkedin`, `wallet_adddress`, `profilepic`, `birthday`, `gender`, `address`, `adminmessage`) VALUES
(353, 'Oseyemi Chidi Paul', 'ocp0077@gmail.com', NULL, '$2y$10$Rjm2V62OoMNty.AFeQXwmuKOaGiNMc1B3UOkAXOZjJCHK.8k0UOUa', '09032706110', '0', '0', NULL, '2023-06-18 23:19:31', '2023-06-18 23:20:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10/10/1996', '2', 'Ajasa Command Ikola Road', NULL),
(354, 'saifullahi zubairu', 'saifullahibkd33@gmail.com', NULL, '$2y$10$uwuqKX1Q7BxU3C1eKv4sTewPme49.Ajs55NkrBlamQQkLvY.55tWe', '09116489948', '0', '0', NULL, '2023-06-18 23:42:24', '2023-06-18 23:42:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, 'Mubarak', 'mubarakumar0828@gmail.com', NULL, '$2y$10$ZzIDD35aZ4Ne0cU9Di.Hbu4BsBcEcPeDQvcjbuoKzdXycEM1edN9W', '08065456059', '0', '0', NULL, '2023-06-19 03:27:28', '2023-06-19 03:27:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, 'Danish Naeem', 'danimehar0493@gmail.com', NULL, '$2y$10$ehkIrzPvFVdbDpT9rP6XcO91/IMF6zr87JV6BjIqP0mWjuhYw2UFi', '03434650493', '0', '0', NULL, '2023-06-19 04:45:20', '2023-06-19 04:45:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, 'Tukurdahiru', 'bukhariarahman76@gmail.com', NULL, '$2y$10$HdqtytbggUiCV.lzHV0zIehUobaot7vd9LzWvieNI2JpgHCNdpuDy', '+2349160309014', '0', '0', NULL, '2023-06-19 05:06:27', '2023-06-19 05:06:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, 'YAKUBU MUHAMMAD SHEHU', 'abunabeela@yahoo.com', NULL, '$2y$10$zF/Tb2gb3WDx5qzLdYLd5Oe29DQCsMI6tOthzYn5Jork35h25zLJ2', '090796750820', '0', '0', NULL, '2023-06-19 05:06:37', '2023-06-19 05:06:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, 'Musa Abdulaziz', 'musaabdulaziz5637@gmail.com', NULL, '$2y$10$0Hngz0t1QgA6l0nhnufPgeUbDWM0EWRgLs3VSfQC5ImUlsZQ/AwDa', '08131528465', '0', '0', NULL, '2023-06-19 05:14:59', '2023-06-19 05:39:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2-3-1999', '2', 'Itakanki quaters', NULL),
(360, 'Munahty', 'maimunatu1209@gmail.com', NULL, '$2y$10$CCM9blNieku2yjtz/uXZvO6GbRgDAp1xdCTcDb47LB2Gl5x.Duq26', '09031421765', '0', '0', NULL, '2023-06-19 05:34:59', '2023-06-19 05:46:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5/9/2004', '1', 'Kano state', NULL),
(361, 'Muhammad adamu', 'Muhammadadamu090316@gmail.com', NULL, '$2y$10$fn6CV3Ph95zZzKutfwBcNeirWlqa367G58FBwWOTP6l34OSPPMAF6', '08085972285', '0', '0', NULL, '2023-06-19 05:36:34', '2023-06-19 05:36:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, 'Rajesh V. D', 'rajeshvd722@gmail.com', NULL, '$2y$10$GsssivqYvfvOn1UH4qqed.UIlWy7ictjqaRQhj34OBEIqzYEzg8ma', '9605688722', '0', '0', NULL, '2023-06-19 05:46:24', '2023-06-19 05:46:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, 'Jamila', 'Maimunatuattashirbako@gmail.com', NULL, '$2y$10$30RJEkU0ZnLvBrX4D9/zDOrdZDNkusyH0SwAQavvzDKMLUICEYN.S', '08063850182', '0', '0', NULL, '2023-06-19 05:58:19', '2023-06-19 05:58:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, 'Abduljalal Halliru', 'abduljalalhalliru335@gmail.com', NULL, '$2y$10$sWR5KRincbqGurYBysatZOyAGFBOcnP8Mwjtmkl.kNrYvnOPVM.SK', '+2349066396426', '0', '0', NULL, '2023-06-19 06:55:35', '2023-06-19 06:55:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, 'Buhari Lawan A.', 'buharilawana@gmail.com', NULL, '$2y$10$EuwdKTo4VWwmEd5cSwnf7e31M/XG8FG8dLFTcVrtH04BKH0mcCwGa', '08086885959', '0', '0', NULL, '2023-06-19 07:13:12', '2023-06-19 07:13:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, 'Yusuf Abubakar', 'halimatuyusuf265@gmail.com', NULL, '$2y$10$/iwkeVs3E/4C/zAF.fFa8uNJnFnv69vJV5hDPEBJO0aFo4sINqgF6', '09063333555', '0', '0', NULL, '2023-06-19 08:57:16', '2023-06-19 08:57:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, 'Adamu umar', 'adermm20@gmail.com', NULL, '$2y$10$8zcxIQB4BgduS4uibHy8GuJ.AxFBxcm/hn8xDKXxK4uvXOy7zqtPG', '07042739579', '0', '0', NULL, '2023-06-19 09:10:47', '2023-06-19 09:10:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, 'Sulaiman Aliyu', 'sulaimanasas064@gmail.com', NULL, '$2y$10$8RlwsMxX1LWLtSQFfx72F.Ws5jD3/4GTbmgoOoY6cumsruN1enVD.', '09117663105', '0', '0', NULL, '2023-06-19 09:13:42', '2023-06-19 09:13:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, 'ABDURRAHMAN', 'abdullahiopphicial@gmail.com', NULL, '$2y$10$f6hwKe/5LdNMkYion72u2.S6lOGIXuidSq.3C/knsf1Kw9NtQEVby', '08108020155', '0', '0', NULL, '2023-06-19 09:23:13', '2023-06-19 09:23:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, 'Hassan Auwalu', 'auwaluhassan52@gmail.com', NULL, '$2y$10$X4tvYN12.1kEKrRP/Dm9POCL/lZ3ocggChsbynbgKKGjsSY7JAD.K', '09168969450', '0', '0', NULL, '2023-06-19 09:40:51', '2023-06-19 09:40:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, 'Ahmad Usman Isah', 'ahmadusmanisah0@gmail.com', NULL, '$2y$10$ZAAh0AxoJzot0/qAhtwKj.TzLwmyFzUbGcdsJqSXAzLvwCmnP39BS', '07035986145', '0', '0', NULL, '2023-06-19 13:28:46', '2023-06-19 13:28:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, 'Sadik shehu idris', 'sadikshehudkowa@gmail.com', NULL, '$2y$10$gdIfVxTdMbf3YDr2pnLuuukVnx89iyu668zK0lxCMUmYoX.il0Dje', '9011217808', '0', '0', NULL, '2023-06-19 14:53:12', '2023-06-19 14:53:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, 'Muhammadnafiu', 'muhammadnafiu648247@gmail.com', NULL, '$2y$10$DsWuBl4/9Cc55oye5kwDD.R1Eu8mRYUbMdbd.3QpXD4AQyIr6sdUi', '07064824761', '0', '0', NULL, '2023-06-19 15:24:30', '2023-06-19 15:24:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, 'Abdulmalik', 'abdulmalikbashir05@gmail.com', NULL, '$2y$10$nyOBGJeYuxUgvp1BSMeyMeayH/Qnw20rG8be/Aqyu9AZc/OptC24K', '09033861369', '0', '0', NULL, '2023-06-19 21:11:42', '2023-06-19 21:11:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, 'Ibrahim Abdullahi Muazzam', 'iamuazzam36@gmail.com', NULL, '$2y$10$LMYSizFx8rugT9Y8op1FoOk4v/KzBVUSy9MLs/0E.azrXFye1wbnK', '+2348103681132', '0', '0', NULL, '2023-06-19 22:09:40', '2023-06-19 22:09:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, 'Abdullahi Zubairu', 'kawunta1521@gmail.com', NULL, '$2y$10$IIgCzoCKDjAaHUNoQpGFQ.ECegP0iMLmpTEm219uOZHTybu6MyrPy', '09032704774', '0', '0', NULL, '2023-06-19 22:27:30', '2023-06-19 22:27:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, 'Yunusamuhammad', 'muhammayunusa692@gmail.com', NULL, '$2y$10$0hXRVgWDo1NH5nPOYic3YuUg6JPVroObNWR01vMLQ1.G3qqrd9I8G', '09159349197', '0', '0', NULL, '2023-06-20 03:53:58', '2023-06-20 03:53:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, 'Zabi', 'muhammadzohaib4914@gmail.com', NULL, '$2y$10$GlygxBa/nwQvQ253hIqr0.UKgjDVxLvzmlmHJ2QK7pXLz9UFHKO8u', '+923028884914', '0', '0', NULL, '2023-06-20 05:39:28', '2023-06-20 05:39:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, 'Umar Ibrahim', 'umarguga86@gmail.com', NULL, '$2y$10$5a1PYR4RrMe.eAh/SaXltuzJSAlgjWCununKcuNItqZqLHua13Ihe', '08034903316', '0', '0', NULL, '2023-06-20 11:20:21', '2023-06-20 11:20:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, 'ABDULGAFFAR TASI\'U', 'tasiuabdulgaffar@gmail.com', NULL, '$2y$10$Tx8ZbCWMyMLdAHGFBIPKnu8k1BRahGokxbP3fTaMCPyJT1XiOkHUe', '08106265778', '0', '0', NULL, '2023-06-20 12:49:33', '2023-06-20 12:49:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, 'Abubakar', 'abubakarismail446@gmail.com', NULL, '$2y$10$qb68e34GNcWgq3hMLUnKxOhBDHeZCpdaQh1Oxua/ePH7JX/CHB7wy', '08065074563', '0', '0', NULL, '2023-06-20 13:14:54', '2023-06-20 13:14:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, 'Abubakar', 'abubakardan39@gmail.com', NULL, '$2y$10$qAfUFELeS/V6EhcvOz5dtev/BKNNEgJKJ6misrQcyaOn90O7QVlgC', '08068875968', '0', '0', NULL, '2023-06-20 13:52:52', '2023-06-20 13:52:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, 'M.azeem', 'azeemshahbukhari@gmail.com', NULL, '$2y$10$bzGx0FdXrjrKdTHntYuVV.zfVQP2EmS0gk/v3IRNL487HBae75D1m', '03008305789', '0', '0', NULL, '2023-06-20 14:07:03', '2023-06-20 14:07:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, 'Joy Oyoo', 'joysonia14@gmail.com', NULL, '$2y$10$DG5wrgjeaFaSOLouAs6DGueJQHwTT/XaL7fjfiPW7jNTP2l5wtv92', '+254797895107', '0', '0', NULL, '2023-06-20 14:34:55', '2023-06-20 14:34:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, 'Iftikhar Ahmed', 'ia6069242@gmail.com', NULL, '$2y$10$BQHtJTo5OdR16wEQ36hJB.02imY0I2uV2NhwmyA8bHJX5020BvR.G', '03214666846', '0', '0', NULL, '2023-06-20 15:02:14', '2023-06-20 15:02:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, 'Ibrahim Abubakar Bala', 'ibrahimbalaabubakar01@gmail.com', NULL, '$2y$10$hJcrX5kHSMwCvAC1lnImhupD3Lg1GNt8ctUWVOgypK1i7NjufMHZ6', '08131079945', '0', '0', NULL, '2023-06-20 16:20:42', '2023-06-20 16:20:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, 'Muhammad Sani', 'muhammadsani0103@gmail.com', NULL, '$2y$10$tYJgO/BW3dpOI7fQtt8iq.oft1sfuFRENHVnXMLMQgqVEXesWMXTq', '08060895397', '0', '0', NULL, '2023-06-20 19:04:45', '2023-06-20 19:04:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, 'Muhammad Sani', 'muhammadsani190@gmail.com', NULL, '$2y$10$XuapFmvFfzUBh24qu.EGEeQE8prs3.tJqk.sIGP28a21rHS9mIJKe', '08060895397', '0', '0', NULL, '2023-06-20 19:08:43', '2023-06-20 19:08:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, 'Aminu Sani', 'aminusani00@gmail.com', NULL, '$2y$10$41h85/iqhXT8LguCpFG6.uPl7wUGpTSUqrlrRS88EH21xB5RITQl.', '07067740530', '0', '0', NULL, '2023-06-20 21:07:54', '2023-06-20 21:07:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, 'Ahmed Yusuf Abubakar', 'ahmadabubakaryusuf02@gmail.com', NULL, '$2y$10$qWni7vPMRUW8q1jfHC7mA.4sNApsB3/XvNx.iIiR3ft5LggchBDj6', '07067283492', '0', '0', NULL, '2023-06-20 21:44:29', '2023-06-20 21:44:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, 'Bilya Jibo Ahmad', 'bilyaji494@gmail.com', NULL, '$2y$10$Z29fwCvsf3KKYwN0wxpQ7Oh7aBE5SgIL9g6XeLp8/3qFv/WvKNAl6', '07014429006', '0', '0', NULL, '2023-06-21 04:13:42', '2023-06-21 04:13:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, 'Olusoji Onabowale', 'u4love4real@gmail.com', NULL, '$2y$10$dsTnQPz.azsbp8XTPQGfZ.hYoT7ixx/r3fUbH9WF3uAcTgTLodIiC', '+2347089560605', '0', '0', NULL, '2023-06-22 15:09:34', '2023-06-22 15:09:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, 'Boaz', 'boahbasoahboaz@gmail.com', NULL, '$2y$10$zzhPuXixN4SwMsauLFXr.eS0/QifmgZFQ/mlScM5jUATmT1LOPTrC', '0550114314', '0', '0', NULL, '2023-06-22 18:21:54', '2023-06-22 18:21:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, 'Prakash subedi', 'prakassubedi6@gmail.com', NULL, '$2y$10$AZTodjKSD2nY1zRT6kzMEeIQkVv.oQYJO5VK6Usbct3AQmCwRGnEe', '9829307523', '0', '0', NULL, '2023-06-22 19:21:51', '2023-06-22 19:21:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, 'Prakash subedi', 'prakashsubedi175@gmail.com', NULL, '$2y$10$ruj4Cs6LZ0x0eMnieNoWdOdyZp3d5l1Yuk7sXv6FdR4riFJ2F03Tm', '9800955405', '0', '0', NULL, '2023-06-22 19:23:45', '2023-06-22 19:23:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, 'Kamaludeen Muhammed Murtala', 'cabasakamal@gmail.com', NULL, '$2y$10$/dJfuC3C73yZye9SWoPOfuL1xQF16Xmnp3eI9ciNTrhRBgR4dyOq.', '09133212019', '0', '0', NULL, '2023-06-23 15:25:34', '2023-06-23 15:25:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, 'Ömer Yılmaz', 'omer5234@hotmail.com', NULL, '$2y$10$wm58Ka4AqlRF5uYlTgv91.Zs/rHpr6PPyRGDqrpj9N/ewnWnx32U2', '+905524152252', '0', '0', NULL, '2023-06-26 08:50:51', '2023-06-26 08:50:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, 'MR JEFF', 'kosiabel8@gmail.com', NULL, '$2y$10$Ct/q3eZKBigSRNN5TdgXmeCJrtFdd2YrvyZy4h/Znp/WalXj2e4Na', '+2347012824773', '0', '0', NULL, '2023-06-26 12:30:17', '2023-06-26 12:30:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, 'Mr Jeff', 'mrjeff140314@gmail.com', NULL, '$2y$10$9A0DZoUVl0eWX6x.GQkLU.tfvio3eBaCqsqZqUFR6gZp29JxWj1Oy', '+2349138234080', '0', '0', NULL, '2023-06-26 12:55:19', '2023-06-26 12:55:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, 'Raman', 'ramansingh88049@gmail.com', NULL, '$2y$10$P8O4HaBjsnx6ATaFxbmoTu.bd9jFdsNbus5MxDJ44zzBwHSmESOjK', '9835123055', '0', '0', NULL, '2023-06-26 14:59:22', '2023-06-26 14:59:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, 'Akash', 'akashkashyap20062000@gmail.com', NULL, '$2y$10$ih3pIvq2CVv5bbf/9IlhGuawqCqndH3TnaQCtI5ko1/apGs1BK06S', '9675664243', '0', '0', NULL, '2023-06-27 02:26:03', '2023-06-27 02:26:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, 'Chamal pradeep', 'Chamalgamlath122@gmail.com', NULL, '$2y$10$r9yvDNjzskmUEnXi0X3bjefO4EptgTI8P4LO4T4fmUyUk3O5VwxTq', '+40740360133', '0', '0', NULL, '2023-06-27 08:23:00', '2023-06-27 08:23:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, 'ilnar', 'fattahovilnar151@gmail.com', NULL, '$2y$10$EF75GL5Qw43GPDZvTug4yuI4aJPnbx8Sd1K4dfHgFsOF73wzca5N2', '+89393774909', '0', '0', NULL, '2023-06-27 18:20:18', '2023-06-27 18:20:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, 'Prakash seth', 'akashseth667@gmail.com', NULL, '$2y$10$0R/usr..hf/K3.61t8xjVOeiMqiiAjvxTkRqs1P9WyGk3Rf72dlVi', '09559148032', '0', '0', NULL, '2023-06-27 21:29:58', '2023-06-27 21:29:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, 'Chamal pradeep', 'chamagama122@gmail.com', NULL, '$2y$10$Eh1HPX7USumTZaf9iXDhR.jyIZiE18thmSMoAya8EEFeoNkWz8ezS', '0740360133', '0', '0', NULL, '2023-06-28 07:02:17', '2023-06-28 07:02:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, 'Lenatus Ibrahim', 'lmtgta5926@gmail.com', NULL, '$2y$10$.p7QrKM9IEecrqalDYWDh.zyp6UVr.OVGLyhdHNdxPrGkMgbb4uya', '0766136757', '0', '0', NULL, '2023-06-28 08:33:58', '2023-06-28 08:33:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, 'Sunil Balmiki', 'sbalmiki928@gmail.com', NULL, '$2y$10$3j4WLF7e2Zxg7xtBZqULB.eMmMQbgySeWYh6NSIWxorCFcCcxDUHe', '9779848119567', '0', '0', NULL, '2023-07-02 13:08:03', '2023-07-05 04:32:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21/10/1992', '2', 'Birendranagar-5, Chisapani, Surkhet, Karnali Province, Nepal', NULL),
(408, 'Khalil', 'alhbyshykhlyl018@gmail.com', NULL, '$2y$10$rF2Zh30UXSLyp4RnPrvU0u6Ss.bek4yORG1ttbE2e9H0Iq/FTJXEW', '780835358', '0', '0', NULL, '2023-07-05 16:14:42', '2023-07-05 16:14:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, 'Mamadou', 'mokawsio@gmail.com', NULL, '$2y$10$FNAjEtUjRa.bwnOhWCJcPu9FZm//P4D1kNUdJxobHU0KVSg40dSim', '+221771780451', '0', '0', NULL, '2023-07-12 17:14:43', '2023-07-12 17:14:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, 'Dan Mark', 'dm2134086@gmail.com', NULL, '$2y$10$eLzWEfYjWnUZU8geUM8BC.1t.E0J6O6EhPuv8gNq8qiEzGNBzfh4S', '+254715168599', '0', '0', NULL, '2023-07-13 06:16:56', '2023-07-13 06:16:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, 'Sahabi Aminu', 'sahabiaminu035@gmail.com', NULL, '$2y$10$dXJoDTvFC1h49V9MgcL59eVKrxBfGLG98tAhMCiXQ35vY6t4mZjjS', '08108393926', '0', '0', NULL, '2023-07-14 10:15:04', '2023-07-14 10:15:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, 'Koffi Konan Arsène', 'koffikonanarsene63@gmail.com', NULL, '$2y$10$zbWwRunYWou6gMryuDkt2.DMuOsBoyiFoVKmwZjzAjqSVd9U5FJAq', '0748817970', '0', '0', NULL, '2023-07-17 10:15:07', '2023-07-17 10:15:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, 'Funmi olatunji', 'microhematocrit@gmail.com', NULL, '$2y$10$xfxePGmi53q5O1ly3A3ccOzT2A6gp0CbjvBHq7nery35XiE6coxJK', '08164684332', '0', '0', NULL, '2023-07-17 13:53:32', '2023-07-17 13:53:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, 'Ekezie Afam', 'afamatris@gmail.com', NULL, '$2y$10$b3RuZscOAnpSTErnc5jz/eUc7OuelqNqCQM/VZbMIhOhuvPFNcSAi', '08067356560', '0', '1', NULL, '2023-07-18 04:31:20', '2023-09-14 09:31:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, 'Ekezie Afam Chibuzo', 'ekeziebuuzor@gmail.com', NULL, '$2y$10$03z/7KUGTbPYHqSAzL3rs.KkQNN3bBn2RIAbRtMfsNt8xr0spAZBy', '08067356560', '0', '1', NULL, '2023-07-18 04:50:08', '2023-09-14 09:31:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17091987', '2', 'Umuezizee Obiofia Nnewichi Nnewi', NULL),
(416, 'Celebrity Jonathan', 'jonathanasante78@gmail.com', NULL, '$2y$10$9wTPFtGvHlN0qOjYrpd53umIfG73nI9UVxd4qfioFZo6gZCPhmu9m', '+233574330315', '0', '0', NULL, '2023-07-26 08:43:46', '2023-07-26 08:43:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, 'Hassan Basiru', 'hassanbasiru12@gmail.com', NULL, '$2y$10$uXE1vJWQtm.QDrnLdA6vk.3ytCx9OvtdNFx2yJCTKvzUf6UzCd7du', '08143830995', '0', '0', NULL, '2023-07-26 12:36:28', '2023-07-26 12:36:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, 'Yvan', 'yvanmadje@gmail.com', NULL, '$2y$10$6xMnae50l5hJ/nyoUpu9aeWvfm2NfWxYEjX8vldaaJXp2uOeBeIRK', '97621283', '0', '1', NULL, '2023-07-26 20:51:46', '2023-09-14 09:30:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, 'Abdul Basit', 'iddrisuabdulbasit000@gmail.com', NULL, '$2y$10$RrePAOucPfv/vVw35FQqVO5IEMVd4nRKGHJADbDe87IK/7Vfwt8IO', '0597255745', '0', '0', NULL, '2023-07-27 15:29:58', '2023-07-27 15:29:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, 'Shiv', 'www.shivsingh668@gmail.com', NULL, '$2y$10$sJnbT5UL1nFsIVsXJve4Z.OFZ4dpfOsY5Tu5ucMiDRp.Do9qPTXgG', '9954341666', '0', '0', NULL, '2023-07-28 08:08:36', '2023-07-28 08:08:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, 'Arush', 'aakashchouhan2626@gmail.com', NULL, '$2y$10$KpH/m7krBATBRjXlTEJ8tegfFB1C8ACRpUpMJl4rsxYKNcWSWQCpy', '6260192626', '0', '0', NULL, '2023-07-31 12:55:25', '2023-07-31 12:55:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, 'Pfiefjwdjwihdwjdiwjdwh гпругшовшырваувапцовцврц аоувацвошцвргцр jedfjisfeufhuhdwdiwjdwisfuediudiywfuw ьвцыволоыоцпарыойырцпв udwhudwsfueufywudiadwuf futuresoptimax.com', 'a.l.be.r.tha.n.shi.n.49@gmail.com', NULL, '$2y$10$1xivIHMiRvBfJR7vlYHh9udHyHb8hctBnJa4oHKkNUfQjM498eR36', '87943672771', '0', '0', NULL, '2023-08-01 21:53:08', '2023-08-01 21:53:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, 'sparrow', 'p5z288fx3@kzccv.com', NULL, '$2y$10$839.ABwGNNxl1ATINgO5..YTB.uVLcAyTaqD7zO6CmlzHpmkqPfVO', '09685741236', '0', '0', NULL, '2023-08-02 04:01:51', '2023-08-02 04:01:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, 'Jackson', 'ca926774@gmail.com', NULL, '$2y$10$fISyIK9vgXIadZmW.e2VIOxjzfJLspp1AAj0BNlEL2ikWdR75506K', '07064317842', '0', '0', NULL, '2023-08-04 06:34:44', '2023-08-04 06:34:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, 'Md Ahsanul karim', 'mdahsanulkarimtapader58@gmail.com', NULL, '$2y$10$UZ/jbVtMEpRQxkw16rvVG.YixfT/ahw69Ibpgsp8ub0REb0xveKOm', '+8801754176658', '0', '0', NULL, '2023-08-05 04:14:48', '2023-08-05 04:14:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, 'theron1975@ffamilyaa.com', 'theron1975@ffamilyaa.com', NULL, '$2y$10$YnAYQzhkXyZ5GofZCRC2tuB8k6NckiKVPi9Vpn/PjXCCrZq1ZZlOe', '1827328737', '0', '0', NULL, '2023-08-07 17:51:37', '2023-08-07 17:51:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, 'Taofeek Abdulbaki', 'Taofeektito@gmail.com', NULL, '$2y$10$YLlIAZifNpvDU1ZElwrP4eeG4Xgu6ckmXZ4UOe4t4urhIAOWxGRzC', '08169409439', '0', '0', NULL, '2023-08-10 14:23:09', '2023-08-10 14:23:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, 'Hanan Yussif', 'hananyussif4@gmail.com', NULL, '$2y$10$SuI.Z/4aXcCsoDD8D/bgP.tZ3e5ohu6c2Odp5i0eE9I1TtGnh4WSG', '+22891329200', '0', '0', NULL, '2023-08-11 00:18:12', '2023-08-11 00:18:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, 'Arava Rasool', 'rasoolshaik748@gmail.com', NULL, '$2y$10$UixcaLGVuMe.nDIvi1mOuO6s2HE21saZICz7SlGXddK/Cbs5Rd.Yu', '+919963476059', '0', '0', NULL, '2023-08-11 01:47:13', '2023-08-11 01:47:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, 'Maryam Adamu Danladi', 'danladimaryam27@gmail.com', NULL, '$2y$10$HsE32reee8qIQrgUp0dYxOE81KyWCbxJTpb.NsnFHXuHAo4Je3NSK', '09068264837', '0', '0', NULL, '2023-08-11 05:32:50', '2023-08-11 05:32:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, 'Bibek Rawal', 'rawalbibej@gmail.com', NULL, '$2y$10$hYnCk3PecQENY4atE02cye/YhlvatDNeNSvkYvJIhJ93OQxPsABpi', '+9779809476232', '0', '0', NULL, '2023-08-11 09:10:02', '2023-08-11 09:10:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, 'عبدالقادر', 'becharkiabedlkadre@gmail.com', NULL, '$2y$10$j5/kh8nYF.pAkss0wNzqf.FFQMcHvv8AgVvvLFDkb3h441.taTGyC', '0542297844', '0', '0', NULL, '2023-08-12 14:28:23', '2023-08-12 14:28:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, 'Bright Opara', 'sirraybright4@gmail.com', NULL, '$2y$10$HLb/YtkIYn6tgmdfvbqVa.suipoZJBPfzwBNitrjJAAdRteJoeRRm', '7031332510', '0', '0', NULL, '2023-08-12 16:11:23', '2023-08-12 16:11:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, 'Ifeoma uduogu', 'ifeomabright64@gmail.com', NULL, '$2y$10$.8XmhWHF9EujoFSIzUQRSugzCvlxc3rh2wQE8Gds2jtzYljnZX556', '9039183707', '0', '0', NULL, '2023-08-12 16:14:00', '2023-08-12 16:14:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, 'Ezeugwu Romanus Chukwuemeka', 'romeobourne212@gmail.com', NULL, '$2y$10$4/4/UGd1fdeaNzTXPV6uwO9nq9e1BfpvWZewRJWYiudJ5e68KnR/W', '+2347019403958', '0', '0', NULL, '2023-08-15 03:37:54', '2023-08-15 03:37:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, 'divy patel', 'divypatel247@gmail.com', NULL, '$2y$10$lo6BOTVyK1COg9kKuCWBTeiFZL772Mlrb07izEG8NwC6ZGqRCb8QO', '8160255393', '0', '0', NULL, '2023-08-15 16:09:26', '2023-08-15 16:09:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, 'Agwara Ogwo', 'ogagwara@gmail.com', NULL, '$2y$10$b.yy3PZWHTw8MKmfTi7wvec1aW5oiRVZZcUEbX8dmq/v/nkCiIyqi', '+2348032431916', '0', '0', NULL, '2023-08-19 00:38:21', '2023-08-19 00:38:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, 'Shakshi meena', 'bharoshimeena14@gmail.com', NULL, '$2y$10$5O4xBM5cENq5asXw.VR2yOxe5HUot3lOciP1WISGcqAgDdFPKCyfe', '8302844278', '0', '0', NULL, '2023-08-23 16:13:43', '2023-08-23 16:13:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, 'ALI BUNU ALI', 'alibunu269@gmail.com', NULL, '$2y$10$e5fqiZwASuagEa6vDMaj1ejqEVBiMY8xqAbBrXKs0nmrCSTx.Oske', '09038986818', '0', '0', NULL, '2023-08-24 06:46:29', '2023-08-24 06:46:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'MUHAMMAD', 'meelasco@gmail.com', NULL, '$2y$10$YflunYGMYSfInxfG5nVb1O1lm/XorfTrXRH0am8t9ByDM0Xt1Y.dG', '08129376250', '0', '0', NULL, '2023-08-24 14:39:21', '2023-08-24 14:39:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, 'Senthil Kumar', 'pvcmetaindia@gmail.com', NULL, '$2y$10$GDm/nJE.vLjGOFuQQDgPXu2sjQkud0asj9GqZc0PjvoRSpz62Kv0q', '+917200350909', '0', '1', NULL, '2023-08-24 15:28:45', '2023-09-14 09:30:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, 'Abdullahi dahiru bature', 'tvprince36@gmail.com', NULL, '$2y$10$DpY6KVUVzws1ORzZgOZQQugwsfMd7wXKYPCAszX2rlwuFieTIkbfK', '09019607219', '0', '1', NULL, '2023-08-25 21:21:35', '2023-09-14 09:29:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05/03/2002', 'Gender', 'Rogo local government Kano state', NULL),
(443, 'Idrissa Cissoko', 'natou929@gmail.com', NULL, '$2y$10$5qwSJiW5DPNY.0P/UCVmyOMuA/LqTd3rrnA3VEL8/YC1pUHbWWEWa', '+224620303063', '0', '0', NULL, '2023-08-26 17:15:19', '2023-08-26 17:15:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, 'Rahul stha', 'Insectadult@gmail.com', NULL, '$2y$10$HwSxaqSG3rnrZcBlZRMeOOwngS0kxqlDeWyg6n4O7cZFia23vTE9y', '+9779828719444', '0', '0', NULL, '2023-08-26 17:48:37', '2023-08-26 17:48:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, 'Ali', 'aliabdolourte@gmail.com', NULL, '$2y$10$KoWmyxtIRqv8EYrWVZI0k.oBJTXOI0zMapIgbqRw97edSOZrPuJtW', '0680641270', '0', '0', NULL, '2023-08-26 21:51:52', '2023-08-26 21:51:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, 'ASEP HERI EDI JUMHARI', 'asepcyber28@gmail.com', NULL, '$2y$10$9qpFXbFzrFLZa5f7uIRqhO0Y/R5f1Dbft96rz9SWr.qk5WGRwFnwq', '085220012328', '0', '0', NULL, '2023-08-27 12:32:15', '2023-08-27 12:34:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17121982', '2', 'Lingkungan Sukasari 01 01', NULL),
(447, 'Annabella', 'abe56437743@gmail.com', NULL, '$2y$10$iKRFww1THvKvbLBvQApYaem/D8vPcyvOZbixJdSQILV8AB1qXYn6.', '+2340841520008', '0', '0', NULL, '2023-08-27 19:16:10', '2023-08-27 19:16:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, 'Kasahun Mekonen', 'kasameko2013@gmail.com', NULL, '$2y$10$boPn1Y3Ds4zFhbECT4mbO.mR.yQ5KCfdmLq87afhBfBMM7Ap5OLwW', '+251932257960', '0', '0', NULL, '2023-08-28 12:12:10', '2023-08-28 12:12:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, 'JAMILA', 'jamilazakaria1234567@gmail.com', NULL, '$2y$10$cRzXnFFVGTgC14IzAxXeq.LWvj660UMmywvMeqZQsVnK1qWOmydTa', '09022477651', '0', '0', NULL, '2023-08-29 15:32:20', '2023-08-29 15:32:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, 'JAFAR', 'mimamohd20@gmail.com', NULL, '$2y$10$lIn8oNL1aHqH/du9eC4RkeEEDKa005HqsC2a3defkHRPU5QrxbwmG', '8129376250', '0', '0', NULL, '2023-08-29 15:36:48', '2023-09-15 08:25:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22/08/2000', 'Gender', 'Kano', NULL),
(451, 'MOME GRACE', 'meelamahamood@gmail.com', NULL, '$2y$10$wGIDQpQcXnchKrliQyWCD.BlwGhTTJX0XGV9e.J4TPdsuVZFU8jki', '07036629395', '0', '1', NULL, '2023-08-29 15:39:15', '2023-09-14 09:29:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22/3/1991', 'Gender', 'Kurna masallacin juma', NULL),
(452, 'Ibrahim Yusuf Ibrahim', 'abbasta080@gmail.com', NULL, '$2y$10$Xu.TNJCDK5935W8A6zgpbeifORwsv5g41TwOZsuvL7pLqECFlfxNO', '+2348065641173', '0', '0', NULL, '2023-08-29 20:39:40', '2023-08-29 20:39:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(453, 'Ibrahim Isah', 'youngfsk@gmail.com', NULL, '$2y$10$B1mTf.QuRM7wBbmdXZtaMeg9eda5nmAPDC0seHLHgV6A7D16xMDBO', '07065014225', '0', '0', NULL, '2023-08-30 07:10:16', '2023-08-30 07:10:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, 'Amadi chima henry', 'Chimaije92@gmail.com', NULL, '$2y$10$xSUWgOg2vPbbwkD1LbYzTOWl2IbU/EQDLBFMu6uoHX3LATgQmX4nS', '08140412737', '0', '0', NULL, '2023-08-30 09:23:50', '2023-08-30 09:23:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, 'Nikhil jena', 'jenanikhil91@gmail.com', NULL, '$2y$10$o.4UTKozPSdQYbxKHc5vZefpxtDiNCc0kAsWqTxmDrzj/ThCu342G', '9004910924', '0', '0', NULL, '2023-08-30 10:52:42', '2023-08-30 10:52:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, 'Michael', 'shodolamichael200@gmail.com', NULL, '$2y$10$2MKm9DZHGPXA28/c60n8/OXGHoZpTQZO7iZtAE/yOGSKnUKZHtdsq', '09016483289', '0', '1', NULL, '2023-08-30 11:39:25', '2023-09-14 09:27:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(486, 'Sulyman', 'sulyman3906@gmail.com', NULL, '$2y$10$RpE8qwnN8Z.8U48/C6gIlu0PCJ6QxT2QBNR/m7XzriVQ0uL/BlLpu', '+2348117333659', '0', '0', NULL, '2023-09-05 22:49:45', '2023-09-05 22:49:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, 'AJAYI EMMANUEL SEGUN', 'bseitcomputer@gmail.com', NULL, '$2y$10$09bTJv2nnId012caj32nsec9HJp7/dxzcU.XBKLYqt7dQrvtfKz3m', '09045251990', '0', '0', NULL, '2023-08-30 22:10:24', '2023-08-30 22:12:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21/04/1982', '2', '24 AFUNBIOWO ESTATE OKEARO AKURE', NULL),
(458, 'David Githinji', 'davsonia48@gmail.com', NULL, '$2y$10$RrhIBKkAR3/paiwChUVRZeRUGk4sA2G9TIX8ZibME4ZmszYnZnHZ2', '0700727458', '0', '0', NULL, '2023-08-31 04:47:18', '2023-08-31 04:47:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, 'Abdulrahaman lawal', 'Abdulrahamanlawal63@gmail.com', NULL, '$2y$10$2EEBEnprgRt51eXpw3ilZ.VdoPQ/8K1iGqn1h05IONciHoykRdHCe', '08039353235', '0', '0', NULL, '2023-08-31 08:26:31', '2023-08-31 08:26:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, 'Juma Mabula', 'mabulantobi@gmail.com', NULL, '$2y$10$VqVOBvVxhrZ6IvW494Jkze6z19ULP/a2BHdhv8U0M/4eDKHpkJv02', '0689942329', '0', '0', NULL, '2023-08-31 13:59:55', '2023-08-31 13:59:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, 'Padmalava Routray', 'routraykabuli1234@gmail.com', NULL, '$2y$10$hVh7Leq52HmB7fOlMovOneNQO9eKZDZZIbszebJdEtRqo.Kig4p86', '7008775875', '0', '0', NULL, '2023-08-31 15:22:23', '2023-08-31 15:22:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, 'Doroshko Dmitriy', 'ddorosho0106@gmail.com', NULL, '$2y$10$HZV1hRFEmntLiPcIr3N00.j8N2NgqdF969LJkDrzcG9zd7HwgXnqO', '+380635934772', '0', '0', NULL, '2023-08-31 16:58:25', '2023-08-31 16:58:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, 'MOZART', 'anniesagyapong10@gmail.com', NULL, '$2y$10$gjXTLSYH.ypm6TYvAMI.FOAs4ttBF10U4szjqbCnmfYS/BvZ/skjK', '0547113104', '0', '0', NULL, '2023-08-31 17:54:36', '2023-08-31 17:54:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, 'Oluwafemi', 'jayeolaoluwafemi1546@gmail.com', NULL, '$2y$10$RswUndbwk.FmW9tm5w/KD.T94IlRx0TnIViaxH3/zSnyyaLa4GHU6', '07025578802', '0', '0', NULL, '2023-08-31 18:21:46', '2023-08-31 18:21:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, 'Auwal isah', 'iauwall99@gmail.com', NULL, '$2y$10$lPNMpO0/B8QaE51gvXUG1OgV7G1d9Lh7gf0yoGD6sExDkqUWWbnTe', '08064583921', '0', '0', NULL, '2023-08-31 18:34:37', '2023-08-31 18:34:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(466, 'Elshan', 'kruglov0017office@gmail.com', NULL, '$2y$10$AiCssypw8jmk5BvMM7jx6eFfgxBL8pEbmpLdHiisHXAfl7WxM/yCi', '380635934772', '0', '1', NULL, '2023-08-31 20:24:46', '2023-09-14 09:26:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06.09.1992', 'Gender', 'Mira str 22', NULL),
(467, 'Tabriz', 'artemsemenov0017@icloud.com', NULL, '$2y$10$9QJXFd7Zfvt5VFqzz.ckAOP.aiTITJXBvhyAOJCYicVaEiUHeCLWq', '380963416737', '0', '0', NULL, '2023-08-31 20:30:42', '2023-09-18 10:23:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01061991', '2', 'Titova str 6', NULL),
(468, 'Ya\'u Haruna Umar', 'zakariyyaharunaumar@gmail.com', NULL, '$2y$10$yeJoBfsYasDM.t4cNFfPPOR8QwRuIs6sKuhhgBFENjM1rfXnQmx0u', '07038642944', '0', '0', NULL, '2023-08-31 21:15:55', '2023-08-31 21:15:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, 'Nam', 'vanthongd565@gmail.com', NULL, '$2y$10$A8aCXux.HNnnXr0tlBesC.yp2FBApRMCPnd86KMKS2bTCEUUjmKBW', '0867144500', '0', '1', NULL, '2023-09-01 00:10:08', '2023-09-13 21:33:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, 'tranhoang76hb', 'Tranhoang76hb@gmail.com', NULL, '$2y$10$Sperq6NrLZ35JfAma/rrUOijI1fGNfywBiCxGZ1CFV3U2yaHAFpcS', '0984545715', '0', '0', NULL, '2023-09-01 00:32:18', '2023-09-14 17:42:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, 'Pius Leza', 'piusleza1@gmail.com', NULL, '$2y$10$6PB/b/sQ8I8LVKxEKqUv0.TsNfD5r2LhMinnKklnqcEHpkGCBODnG', '0745870310', '0', '0', NULL, '2023-09-01 02:50:09', '2023-09-01 02:50:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, 'LAWAN ADAM USMAN', 'lawan4486@gmail.com', NULL, '$2y$10$q0qX8I/0yKkfkMuQJCy0beZNPABPpBMwPHtfXalU/JAWMjRqlwWO2', '07037753922', '0', '0', NULL, '2023-09-01 10:47:39', '2023-09-01 10:47:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, 'Shafiu Baffa Babba', 'shafbabba@gmail.com', NULL, '$2y$10$MJKrBUK5UPMAOC0Vz3ZOh.os1f6yIiNGKHqACaE/uEtxN80Y9ZJgi', '08036588010', '0', '0', NULL, '2023-09-01 15:30:40', '2023-09-01 15:30:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, 'Isabella', 'Isabellaaha1994@gmail.com', NULL, '$2y$10$2khS2DoIhtpzTwBTRtMNk.4QwbESciY44c3FEfApRkjlqY7b5J7aa', '+2348141520008', '0', '0', NULL, '2023-09-02 08:51:47', '2023-09-02 08:51:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, 'Md parbej Aalam', 'mdparbejaalam51@gmail.com', NULL, '$2y$10$tTc7LBIQFcY6lZj9w1M95OeDlgK4Gb97Spi3DHGtMvxkGG7FyoR/y', '9824711450', '0', '0', NULL, '2023-09-03 05:17:40', '2023-09-03 05:17:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, 'hemant', 'hemantmoremore22@gmail.com', NULL, '$2y$10$M6K91VHt30VfjHcgDY6pS./bgr5BROGoDWUOMHNXRUFYe5AgxyZ7m', '9823599699', '0', '0', NULL, '2023-09-03 07:57:01', '2023-09-03 07:57:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, 'Ali khattak', 'khattakali808@gmail.com', NULL, '$2y$10$xXKhCRCBZkNN0oFvMKmnXuoO50xTpabf2nvh5zFC0ZZF8epQsnoxK', '03028407448', '0', '0', NULL, '2023-09-04 16:22:19', '2023-09-04 16:22:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, 'Adebayo Akeem Adekunle', 'akeemadekunle424@gmail.com', NULL, '$2y$10$aizNZj4lvaEFDr2Dq7qdU.tMzNqZ8GtW2Z2Qcq3ldON4gBFvdccsu', '09124905297', '0', '0', NULL, '2023-09-04 21:16:04', '2023-09-04 21:16:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, 'Biniyam Hagos', 'binihagos24@gmail.com', NULL, '$2y$10$ck1uMoCeVmhufFPQuuIsceqSZbV57AElqbhtp9IhFaWOL3sYrluw2', '251942612329', '0', '0', NULL, '2023-09-05 06:34:19', '2023-09-06 08:59:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5/12/1995', 'Gender', 'Axum St. Marry church', NULL),
(480, 'Ronald Buye', 'ronaldbuye@gmail.com', NULL, '$2y$10$hYGNQAJrCaivspzKcJC6deKNNgQByjx172qkAagTA.IIxHU1TsBYy', '0761951625', '0', '0', NULL, '2023-09-05 10:17:55', '2023-09-05 10:17:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, 'Mmekobong Joe', 'joejacobsonmec@gmail.com', NULL, '$2y$10$kfLlYViYUSXkX12d6ow1T.et1M3B07w81tH0BBORsqsn5rmXzzske', '08038149314', '0', '0', NULL, '2023-09-05 10:57:44', '2023-09-05 10:57:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, 'Athiram Sankar Alagar', 'aathiramsankar@gmail.com', NULL, '$2y$10$eO3FM7NF4FcajaZgWjPkpejKcvbHR4d0n5htaKIx6sG75TfMqPpZa', '9442969451', '0', '0', NULL, '2023-09-05 11:47:08', '2023-09-05 11:47:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, 'Jenilee', 'JenileeElizabeth0@gmail.com', NULL, '$2y$10$MLO1U5mWPRpPCsc4JZZy8uH62WFhj0Bxakjqj9r49gL1.oZQ2LQui', '+2348141520008', '0', '0', NULL, '2023-09-05 13:07:14', '2023-09-05 13:07:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, 'George Bogia', 'georgebogia6@gmail.com', NULL, '$2y$10$UAIpA/m/YTDJG2u4gxSJEuxkcHWZs8sITXTIzMi1rRc6Z8UdH6FwG', '74206475', '0', '0', NULL, '2023-09-05 21:00:05', '2023-09-05 21:00:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, 'Yusuf Gadanya Ahmad', 'yusufgadanya44@gmail.com', NULL, '$2y$10$jqr7ZTBACdqZJSKIjQ5viuZBMb62swK6k.p3hCGgYX7I1EOekwMBS', '08035305251', '0', '0', NULL, '2023-09-05 21:32:28', '2023-09-05 21:32:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(487, 'obijicynthiachinwendu', 'obijicynthiachinwendu@gmail.com', NULL, '$2y$10$5Sqi4Gqt47Fh5eX2FfcImeiwwBQMMPWGksO8B0HX2cmr5WXG2wYLW', '08146509080', '0', '0', NULL, '2023-09-06 07:42:12', '2023-09-06 07:42:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(488, 'Ibrahim salisu', 'ibrahimabdulhadi339@gmail.com', NULL, '$2y$10$5IAfkd4G9fGU8ON0vOpdGe3zoP6rpbeSCACDtm0nkoenUoXIf.RRm', '+2348096864179', '0', '0', NULL, '2023-09-06 14:43:47', '2023-09-06 14:43:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(489, 'THEOPHILUS EJIKEME', 'theocracy2011@yahoo.com', NULL, '$2y$10$Gi4vG2UYnDw2ryW3ShUyWeAEVkMuAaA8y/fSOp4bh1W0DLkFog91m', '+2348023447866', '0', '0', NULL, '2023-09-07 13:51:05', '2023-09-07 13:51:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(490, 'altagent', 'altybox@outlook.com', '2023-09-07 16:43:57', '$2y$10$Rk0IYMWwKfRLXDc4sf71ZOTbkPCsZE.DIotwThJvCVOLtlYnOP07m', '968175269', '0', '0', NULL, '2023-09-07 16:43:24', '2023-09-07 16:43:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, 'Aziz Khan', 'azizullahsaifi870@gmail.com', NULL, '$2y$10$MSh2B5goZGvLXuIBxCTaveAwjFr.vFUqfbIk68bwDZ6FLMMDAdKsq', '03001050356', '0', '0', NULL, '2023-09-08 00:05:10', '2023-09-08 00:05:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(492, 'techsk', 'techsk84@gmail.com', NULL, '$2y$10$RYPsjAXUgKgKWf9vzfd9re8zbqze75qwK1m9z0iq9..hW9BMHWAd.', '09677284882', '0', '0', NULL, '2023-09-08 06:36:43', '2023-09-08 06:36:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, 'Abdullahi', 'talk2ibrahimdasuki@gmail.com', NULL, '$2y$10$3huZnBjKIF/yWkOHjXWGROLAuVPxWAy/NCz7yN.6bBQLTpClHrTPu', '09065583591', '0', '0', NULL, '2023-09-08 06:55:19', '2023-09-08 06:55:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(494, 'RITA PAUL-GILBERT', 'paulritexventures@gmail.com', NULL, '$2y$10$AI0SMFNTv6SQ4DyvnhCa/.m98Cetz2PwGXzc8/OzJFFQvwcEUMA/2', '08105014748', '0', '0', NULL, '2023-09-08 15:56:39', '2023-09-08 15:56:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(495, 'Oyekunle Olalekan Joshua', 'oyekunleolalekan22@gmail.com', NULL, '$2y$10$g8HwUwSofikpsQ8HAp9Kw.lixZo.xLF2QIDT6LvkLOUSix0Dtm4du', '08111049785', '0', '0', NULL, '2023-09-08 20:12:04', '2023-09-08 20:12:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(496, 'Junior', 'kessep147@gmail.com', NULL, '$2y$10$7mhSv9NqwLoKd3y12mCWTudWjsv27PoI3vObh3/jOTp8RUTvS6lV2', '0534268769', '0', '0', NULL, '2023-09-09 01:53:33', '2023-09-09 01:53:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(497, 'Barai', 'baraisuraji99@gmali.com', NULL, '$2y$10$/hfrAOLEV2/LczVxPkf4beEap4MtOTDBShRKWYDI8yBWtNUTOOQNu', '+2348141520008', '0', '0', NULL, '2023-09-09 04:34:24', '2023-09-09 04:34:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(498, 'Anumenechi Chimkeziem Hillary', 'chikeanumenechi45@gmail.com', NULL, '$2y$10$scbb1d7KcwRs3L818YeGi.kaGb/pkUjpAHnLswoJV3ZRTEJ1VNaea', '+2349135279216', '0', '0', NULL, '2023-09-09 20:38:33', '2023-09-09 20:38:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(499, 'Muhammad', 'muhdumar762@gmail.com', NULL, '$2y$10$hHDnTLHCLEGPBcCI7sRGwe38UOrp74zt3ltfFz./hyYHUmn3qj9pu', '8103679890', '0', '0', NULL, '2023-09-09 21:50:41', '2023-09-09 22:20:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '29/07/1995', '2', '122 kofar ruwa', NULL),
(500, 'Muhammad Nasiru', 'muhammadnasiru796@gmail.com', NULL, '$2y$10$1DAkShh4ihj/.rORcGJWm.hLsiT7ki2zkaUy8IHKjUtXfz1YbWjlu', '09037268515', '0', '0', NULL, '2023-09-09 23:19:43', '2023-09-09 23:27:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19/01/1992', '2', 'Anguwan remi', NULL),
(501, 'Solomon Armah', 'yser8114@gmail.com', NULL, '$2y$10$rjWnVF5I1dxugVXS78ulpePzASd8PJkJBtj.9TmBuMyVVTWkQixoO', '0247810408', '0', '0', NULL, '2023-09-09 23:30:00', '2023-09-09 23:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(502, 'Mohammed Abdullahi Ndirmbita', 'mohdabdul213@gmail.com', NULL, '$2y$10$VaRQpbktwwW8.6k7/QYRs.RMUSgbuYToWdLp14SHIt1Qa957Tr4Cm', '23436822996', '0', '1', NULL, '2023-09-10 07:11:50', '2023-09-17 06:29:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12/06/1973', 'Gender', 'National Institute For Cultural Orientation Ribadu square, Off Nent city Runde Baru', NULL),
(503, 'Mohammad Abubakar', 'abubakarm971@gmail.com', NULL, '$2y$10$e3Kd/oN.7y3KJygg8RQGDO80aUkDm9yW5ZO.MQu8CDhSUol8TJVHy', '09063254938', '0', '0', NULL, '2023-09-10 07:53:16', '2023-09-10 07:53:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(504, 'Sulaiman Abubakar Muhammad', 'Sulaimanabubakarmohd@gmail.com', NULL, '$2y$10$3tJUopGCH5.2XWNlzfvBRu/l5D1ciqCUV4PyqnQiG/15NIEOexVJm', '08065849149', '0', '0', NULL, '2023-09-11 19:53:01', '2023-09-11 19:53:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(505, 'Typhu', 'a20.01.1984@gmail.com', NULL, '$2y$10$EmR5K.ae9jhEpckIsi0UJuQllSuTJvM3uRfhK3ueSbZlUh4ezUGNi', '0354907884', '0', '0', NULL, '2023-09-14 08:08:46', '2023-09-14 08:08:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(506, 'Typhu', 'Mattranthaithinh@gmail.com', NULL, '$2y$10$aIHArQcsRKn.M0M0By5dgexPo/OiAjT5G5onIABHA.4xxJzKwToVi', '0916373222', '0', '0', NULL, '2023-09-15 14:35:23', '2023-09-15 14:35:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(507, 'Angela Rose', 'Angelarosexx60@gmail.com', NULL, '$2y$10$MGZMAL.BQZs7VS0.8jsclOaUBDG0t/uEJmlFyfBtgE2pF/dzJGaIW', '07067890751', '0', '0', NULL, '2023-09-16 16:35:38', '2023-09-16 16:35:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(508, 'Sandra cristy', 'sandracristy50@gmail.com', NULL, '$2y$10$JXimYO6mB8Q46jJPy/QKTenftlYXwp8tgqqmZlZ7F6dhq3yIsyNdW', '07067890751', '0', '0', NULL, '2023-09-16 16:43:31', '2023-09-16 16:43:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(509, 'Alex field', 'alexfelid315@gmail.com', NULL, '$2y$10$fk1f1UKSUtoNxgAurXddueVw.lw8xNgKg8jxo5Fv2q8vN1SZtgLJW', '07067890751', '0', '0', NULL, '2023-09-16 16:47:35', '2023-09-16 16:47:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(510, 'Hyejinyoom', 'Hyejinyoom@gmail.com', NULL, '$2y$10$pbVzbN10Aag1GjbUjrLgPuxXX5jgbvTc8BU497Q8fa8lLcUS/5HZi', '07067890751', '0', '0', NULL, '2023-09-16 16:51:13', '2023-09-16 16:51:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, 'Smith Sandra Nora', 'smithsandranora@gmail.com', NULL, '$2y$10$Wluq73Vlf6bDWCfCZt7Pdux9ZI9A1jU4DpLSiBuG9K5EbGoRypxJW', '07067890751', '0', '0', NULL, '2023-09-16 16:57:29', '2023-09-16 16:57:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(512, 'Zanna', 'riccardozaninoni@gmail.com', NULL, '$2y$10$FCsTzJh8DF6xHt1ytmnYw.0mYArM9S/fV1hW0LVNtrWrMIKac06Bu', '3483023131', '0', '0', NULL, '2023-09-16 23:28:16', '2023-09-16 23:28:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(513, 'Limon', 'limonhoshen976@gmail.com', NULL, '$2y$10$5K0J1PUW9CDboBruEyvnUeZT5I79Q61EgowLTp3KqHyQ2a1Xe8T1u', '01585209154', '0', '0', NULL, '2023-09-17 00:56:49', '2023-09-17 00:56:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(514, 'Benjamin Egboworomo', 'eyitokunbo@gmail.com', NULL, '$2y$10$F8Dbii0l6bcHOG/fuY8VZO1B4YqSS5rri4yQrXhoEyj/hAS0zizW.', '08066940756', '0', '0', NULL, '2023-09-17 04:54:10', '2023-09-17 04:58:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11/03/1985', '2', '29 Ogunyemi Street, Ilaje, Sabo-Ajangbadi, Ojo.', NULL),
(515, 'Arun Thinakaran', 'arun.theena@gmail.com', NULL, '$2y$10$/Jl2XMmzZP3ldcZqmZccfOVR85zfHhy0wVIc23IjZTKod8Ibm9WBK', '8072251425', '0', '0', NULL, '2023-09-17 05:39:58', '2023-09-17 05:39:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(516, 'Jamilu Abubakar Adam', 'wadata1983@gmail.com', NULL, '$2y$10$JcrIX7e1XURVsAkCs8dRQuyqlIZIIc7/AzySL2CLhvcwMlzrsiRV6', '09033331020', '0', '0', NULL, '2023-09-17 06:15:32', '2023-09-17 06:26:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01 01 1983', '2', 'Rlemo titin danrimi tankin shafii 1235', NULL),
(517, 'Hamza GIRGIN', 'ydkhsb16@outlook.com', NULL, '$2y$10$wDDSMtIjI2lV4IsnPAt6uuZHZnSirbnIf70NJ874MIkcuXSCan00K', '5366683637', '0', '0', NULL, '2023-09-17 06:40:30', '2023-09-17 06:40:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(518, 'Sunusi Lawan', 'sunusilawan80@gmail.com', NULL, '$2y$10$0HmqRAW5xDVfCu1VvrP5xuENJIhQuGT1JNuZnr7b5oxKYZYs1kKOa', '09132854903', '0', '0', NULL, '2023-09-17 09:35:57', '2023-09-17 09:35:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(519, 'Mahesha K C', 'kcm444029@gmail.com', NULL, '$2y$10$zrdz8yQWigvoD3bvz0QMTuRTCg0d56.VvI57mzoQa3fwOiR71ygYK', '9901231623', '0', '0', NULL, '2023-09-17 10:44:32', '2023-09-17 10:51:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15/02/1988', 'Gender', 'Kanakatte, Arasikere taluk, Hassan District.', NULL),
(520, 'Ilker', 'ilker.gavaz@gmail.com', NULL, '$2y$10$kZqy9YoAcAcp8iJ4UdGqr.Bz.2wZEm5rrdKzB3CDqeBgxcRGz5ewq', '+38971618199', '0', '0', NULL, '2023-09-17 14:14:01', '2023-09-17 14:14:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(521, 'Ezeugwu Romanus Chukwuemeka', 'romeobourne213@gmail.com', NULL, '$2y$10$m3.dLIo8NmgYouZxDyYhc.3kvlmUnup6YcEgNqVh3tytXMl9DIsl.', '+2347019403958', '0', '0', NULL, '2023-09-18 00:21:51', '2023-09-18 00:21:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(522, 'Thiago Miracle', 'adiegwuchigaemezu9@gmail.com', NULL, '$2y$10$JXrMUisajaKGFU8PhHId3ObGPXTPvngoN3lUW9dBrY1FEwgQdDhfW', '08137420482', '0', '0', NULL, '2023-09-18 09:13:41', '2023-09-18 09:13:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(523, 'Arun Kumar', 'iaruna007@gmail.com', NULL, '$2y$10$/Clilvf.P8l39EIRsxebleEEgvMosFrXSzoNsBQ.kbyC2FhFaVeNG', '09900830271', '0', '0', NULL, '2023-09-18 13:37:14', '2023-09-18 13:37:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(524, 'Loyiso Mkhanyiseli Ngaloshe', 'loyisongaloshe@gmail.com', NULL, '$2y$10$TYk2vqrASAiHfNCvDHHBE.2v29ustcGsHDptfzJdARR4oeIp3i8RC', '+27713803800', '0', '0', NULL, '2023-09-18 17:21:22', '2023-09-18 17:21:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(525, 'Yusuf', 'yusufavci7206@gmail.com', NULL, '$2y$10$M8r6nUltLwjFgitgeTM31uYAP91pF0SjQviGgCV8q9XsFuI1K9unG', '5314869053', '0', '0', NULL, '2023-09-19 20:29:55', '2023-09-19 20:29:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(526, 'Ikililu Madina', 'ikililusultan13@gmail.com', NULL, '$2y$10$KqHcX2bokGxaQmBlKQzP/OKYglfCkKaeiS44.IqpJvV09jXiHpr2W', '0246985985', '0', '0', NULL, '2023-09-20 07:07:12', '2023-09-20 07:09:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12/03/1977', 'Gender', 'Ghana', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `blocked`, `remember_token`, `created_at`, `updated_at`, `street`, `city`, `state`, `post_code`, `facebook`, `instagram`, `twitter`, `linkedin`, `wallet_adddress`, `profilepic`, `birthday`, `gender`, `address`, `adminmessage`) VALUES
(527, 'Aisha Idris Ibrahim', 'aishaidrisibrahimtumfafi@gmail.com', NULL, '$2y$10$onfFF0Q9MyAxjHZL.Oq5k.nEP86ht4R7OuLrdYNXz4qIG5wrv19ri', '08132695023', '0', '0', NULL, '2023-09-20 09:17:08', '2023-09-20 09:17:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(528, 'Aisha Muhammad Kamilu', 'aishamuhammadkamilu6@gmail.com', NULL, '$2y$10$2hh8NtUcGJddE7EA6d6iqeJBHDpgnUJLKFoIowtd..Z0HX52khRJa', '07043993530', '0', '0', NULL, '2023-09-20 10:19:32', '2023-09-20 10:19:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(529, 'Srinivas H K', 'shrinivashk001@gmail.com', NULL, '$2y$10$x0sQ/tNNAigiyfeGvuywXuxLmP207IrYQYi58CeTgL0WCGnnk44ie', '917019382675', '0', '0', NULL, '2023-09-20 12:51:21', '2023-09-20 12:58:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21/01/2000', 'Gender', 'Hassan', NULL),
(530, 'Lucky man', 'fiwaqagu@hexi.pics', NULL, '$2y$10$rszFFSeOKp/zCJJ1h9uFc.whNe765g2yefC6F3znZ0jpqdB5O6w7e', '9874563215', '0', '0', NULL, '2023-09-21 05:35:47', '2023-09-21 05:35:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(531, 'Sunilkumar', 'sunilkunnath50@gmail.com', NULL, '$2y$10$Yfyk7fVbByGM40/I/oA/9uLXJ0QENoFXHMillsVzJYhC0dl1vpwUS', '+918547758065', '0', '0', NULL, '2023-09-21 08:19:52', '2023-09-21 08:19:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(532, 'Abhishek likhar', 'abhilikhar09@gmail.com', NULL, '$2y$10$QKtQFsESrSGL.OaaAvekXOnDj/ldpEAxzUkhZTnf3xeGKsjpAaZa6', '8871964290', '0', '0', NULL, '2023-09-21 11:02:37', '2023-09-21 11:02:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(533, 'Wilberforce Esikuri', 'wesikuri@gmail.com', NULL, '$2y$10$6abQvRQ3QqZqz6XHcxL8wO/DW3mGRaaVuzQWu7BOUGE5uRILU9Mfe', '+10713128628', '0', '0', NULL, '2023-09-21 16:38:15', '2023-09-21 16:38:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(534, 'Muhammad Avaid', 'av9989971@gmail.com', NULL, '$2y$10$odr7V3Gvtp7u1YSjICKSQegG6gVpT4gAWT/rLXbTSRVNYaIE7VGkK', '+923329989971', '0', '0', NULL, '2023-09-21 18:49:06', '2023-09-21 18:49:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(535, 'Md.Arman Hossain', 'armanraju780@gmail.com', NULL, '$2y$10$pRXPTyIWomgG71sCbQ5/HuQ0B141WwAaDyUNB5oOoY6MX.NY5WUVK', '01739214144', '0', '0', NULL, '2023-09-22 01:59:50', '2023-09-22 01:59:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(536, 'Muhammad Sulaiman', 'sulaimanmuhammad08104@gmail.com', NULL, '$2y$10$gsju1L/JBuOTujJmWG3MHO6e.FrV0PyKN2OUQCQu7SlVZt1/hrueu', '08104275836', '0', '0', NULL, '2023-09-22 04:25:02', '2023-09-22 04:25:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(537, 'Subash Basnet', 'subashbasnet124@gmail.com', NULL, '$2y$10$GH4s/2qrqtgBMoKojR4YrOYI9r8Z8q88sx3ICJWLArmstPZmVzn6i', '9842562734', '0', '0', NULL, '2023-09-22 05:51:21', '2023-09-22 05:51:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(538, 'Meatchi Moutarou', 'moutarououroakpo14@gmail.com', NULL, '$2y$10$cYRzLp0cNuleLqaQ.n3R9u2gUDJjQZWGxYlsfsVV6yOiAiGeeSdLe', '26342991', '0', '0', NULL, '2023-09-22 13:20:32', '2023-09-22 13:20:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(539, 'Demian', 'demianmicheal2019@gmail.com', NULL, '$2y$10$7TInzQoJPiwDvZZa3R1jpO6NHuMCBQPlshz8MFxwQL0nIktlQFT16', '+17659861772', '0', '0', NULL, '2023-09-22 15:49:52', '2023-09-22 15:49:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(540, 'CoolJ', 'Musju38@gmail.com', NULL, '$2y$10$KS0ZB.hIJ4R.FecXHJGkZOoz5nF3N8CGTqjbMvjZQsJtu1tfF9E6u', '8689139', '0', '0', NULL, '2023-09-23 05:27:57', '2023-09-23 05:27:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(541, 'Jabir', 'technicaljabirhussain@gmail.com', NULL, '$2y$10$YbkrkNcgdDtx59yrafmhaOdh/Kjg0nkXJ.K51RpNJMWBYj5F3f.Ti', '03078283328', '0', '0', NULL, '2023-09-23 08:53:06', '2023-09-23 08:53:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(542, 'Samson', 'samsonokumu69@gmail.com', NULL, '$2y$10$IGo3yIC7N.qP57cCxIrvUuWRKot.cRw7KJNYVAigZQGKSrUiWuiQq', '0724531449', '0', '0', NULL, '2023-09-23 13:45:08', '2023-09-23 13:45:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(543, 'Thandeka', 'thandekanteyi@gmail.com', NULL, '$2y$10$W6TFnujvG.Ef7vf1mjongu9pSvvj13sK/oIIdjQBrx2As6OZ.3Gr.', '0783738447', '0', '0', NULL, '2023-09-24 00:33:28', '2023-09-24 00:33:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(544, 'Md Saed Afridi', 'afridi2501@gmail.com', NULL, '$2y$10$R4dyoC7jQ6gkmCnE.VOLM.PZ57M/vX2Koftz98.oPL3GR9Q.V90m6', '01748235291', '0', '0', NULL, '2023-09-24 11:02:09', '2023-09-24 11:02:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(545, 'Md Saed Afridi', 'afridi0125@gmail.com', NULL, '$2y$10$v9l/jVDBQNg4Ou3u5wJyGOk1.jyUpAkiW0ZxzRObmK2J9ddzHWND2', '01917452740', '0', '0', NULL, '2023-09-24 11:18:40', '2023-09-24 11:18:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(546, 'GEORGE KINGSFORD KWESI', 'gkingsforddzigbah803@gmail.com', NULL, '$2y$10$FxQQVlZ1nyerG9FR9cyz2uL70soL29zPe9Pk0VGFHMlYlRY2ssemW', '+233545037306', '0', '0', NULL, '2023-09-24 12:00:24', '2023-09-24 12:00:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(547, 'Md Saed Afridi', 'jishan2501@gmail.com', NULL, '$2y$10$jY/Hs5p5n5T6ve/x3EVKW.hDmGCrQGBtKEUDrg18fsYUQoerdCsO.', '01748235291', '0', '0', NULL, '2023-09-24 12:42:08', '2023-09-24 12:42:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(548, 'Md. Mahadizzaman', 'mahadidr1979@gmail.com', NULL, '$2y$10$8E4LqvWUt4/t14mnW0MrzOSw5mLiBzcsOlBZNnW4Lx7aWG0LkfAb6', '01671568967', '0', '0', NULL, '2023-09-24 15:46:37', '2023-09-24 17:49:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20.06.1979', '2', 'House no: 735. Road: 09, Baitul aman housing, Adabar. Dhaka', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `withdrawaltdate` date NOT NULL,
  `amount` int NOT NULL,
  `method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `methodaccount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `created_at`, `updated_at`, `withdrawaltdate`, `amount`, `method`, `methodaccount`, `userid`, `name`, `status`) VALUES
(1, '2022-10-24 22:33:05', '2022-10-24 22:35:26', '2022-10-24', 4200, 'Btc', 'Hshshshshsehheheheheheheheheheh', 16, 'George', 1),
(2, '2022-10-27 13:43:23', '2022-10-27 13:50:41', '2022-10-27', 2000, 'XRP', 'fhjkkk', 20, 'LucBenart', 1),
(3, '2022-10-27 13:43:51', '2022-10-27 13:50:35', '2022-10-27', 300, 'XRP', 'fhjkkk', 20, 'LucBenart', 1),
(4, '2022-10-27 13:44:20', '2022-10-27 13:51:04', '2022-10-27', 1, 'XRP', 'fhjkkk', 20, 'LucBenart', 1),
(5, '2022-10-27 13:44:58', '2022-10-27 13:50:53', '2022-10-27', 2340, 'XRP', 'fhjkkk', 20, 'LucBenart', 1),
(6, '2022-10-27 13:45:15', '2022-10-27 13:50:28', '2022-10-27', 10000, 'XRP', 'fhjkkk', 20, 'LucBenart', 1),
(7, '2022-10-27 14:34:13', '2022-10-29 08:09:19', '2022-10-27', 4000, 'Eth', '0xba93a656304cda12e4746f683b76fee718a156df', 21, 'Alexander', 1),
(8, '2022-10-27 14:40:48', '2022-10-27 14:52:16', '2022-10-27', 1000, 'Eth', '0xba93a656304cda12e4746f683b76fee718a156df', 21, 'Alexander', 1),
(9, '2022-10-28 09:28:00', '2022-10-28 09:29:56', '2022-10-28', 17000, 'Btc', '18a6rwtmr9rkixs39QFRR7AJosBpZS56NF', 18, 'Patrick Gabriel', 1),
(10, '2022-10-29 08:07:33', '2022-10-29 08:09:01', '2022-10-29', 3000, 'USDT', 'Uwususushejejejejejjiurrwii5wbzgzyue', 23, 'Emelia', 1),
(11, '2022-10-29 08:24:20', '2022-10-29 08:26:16', '2022-10-29', 3000, 'Btc', '4f3426bbd30de897f1971b6079a42c55bf82b33f7d9e027cc4752eeb4fb40d56', 23, 'Emelia', 1),
(12, '2022-10-29 08:46:00', '2022-10-29 08:47:35', '2022-10-29', 3000, 'Btc', '3EkhqzxQEUUQm1tQw8m9aXAa4cmQAuSiMf', 23, 'Emelia', 1),
(67, '2023-01-27 12:28:37', '2023-02-02 10:03:42', '2023-01-27', 180, 'USDT', 'TYQdX5JQPMnTKHW3CHkJvwtQrKxN85A32w', 86, 'Ravi kumar', 1),
(14, '2022-11-03 01:02:18', '2022-11-03 01:03:14', '2022-11-03', 80, 'USDT', '0xdac17f958d2ee523a2206206994597c13d831ec7', 19, 'Bruel nelson', 1),
(16, '2022-11-11 19:36:23', '2022-11-11 19:38:23', '2022-11-11', 300, 'Btc', '0xdac17f958d2ee523a2206206994597c13d831ec7', 24, 'Bruel Hannah', 1),
(66, '2023-01-24 03:57:15', '2023-01-24 03:57:41', '2023-01-24', 256, 'Usdt', 'usdt', 98, 'Han bou', 1),
(18, '2022-11-13 20:56:21', '2022-11-13 20:59:23', '2022-11-13', 11740, 'Btc', '0xdac17f958d2ee523a2206206994597c13d831ec7', 19, 'Pedersen Benart', 1),
(19, '2022-11-14 20:06:04', '2022-11-17 17:07:46', '2022-11-14', 750, 'Btc', 'd4cda6b74dd1711120f5f1e11cf7014219b072bbea3ab11945580b07b82e50a2', 19, 'Pedersen Benart', 1),
(20, '2022-11-14 20:07:02', '2022-11-17 17:07:35', '2022-11-14', 1000, 'USDT', '0xb2763edb2eefd775756596131281a02e3d7bdf0da78a0082fe4c7cfb193fe65f', 19, 'Pedersen Benart', 1),
(21, '2022-11-14 20:10:58', '2022-11-14 20:15:38', '2022-11-14', 600, 'Btc', 'Bt003b5274d8743b93995641038f480f62779350048cc5d3d892e9762902964820', 25, 'Lucy Patrick', 1),
(22, '2022-11-14 20:13:00', '2022-11-14 20:15:21', '2022-11-14', 5000, 'USDT', '0x2f1c5c2b44f771e942a8506148e256f94f1a464babc938ae0690c6e34cd79190', 24, 'Bruel Hannah', 1),
(23, '2022-11-17 16:51:21', '2022-11-17 17:07:13', '2022-11-17', 5000, 'Btc', 'bc1qp5302d0zxeu9qud272nh8az05dmgn34flgghgu', 33, 'Sera', 1),
(24, '2022-11-17 16:53:54', '2022-11-17 17:07:03', '2022-11-17', 7000, 'Eth', '0x641457295332ECE4D1c3E8aD3fF5ca88EdDD38e9', 33, 'James kana', 1),
(25, '2022-11-17 16:59:08', '2022-11-17 17:06:36', '2022-11-17', 2800, 'USDT', 'TRnHivCVYWxZuvqePkGGCwhT5t57HEY915', 33, 'Lisa kane', 1),
(26, '2022-11-17 17:01:51', '2022-11-17 17:05:46', '2022-11-17', 12500, 'XRP', 'rGJGmT12PNQDA9qzYbN1RWj62fmJYG41Wf', 33, 'Michael Wilson', 1),
(27, '2022-11-17 17:20:54', '2022-11-17 17:30:01', '2022-11-17', 5000, 'Btc', 'bc1qp5302d0zxeu9qud272nh8az05dmgn34flgghgu', 33, 'James kana', 1),
(28, '2022-11-17 17:37:04', '2022-11-17 17:39:58', '2022-11-17', 600, 'Eth', '0x5af9013c98353cd7144a47d2e68ac8590f95abaa3b9e8f67c7afa8ab09186e8e', 24, 'Bruel Hannah', 1),
(29, '2022-11-17 17:38:05', '2022-11-17 17:40:18', '2022-11-17', 200, 'Eth', '0x5af9013c98353cd7144a47d2e68ac8590f95abaa3b9e8f67c7afa8ab09186e8e', 24, 'Bruel Hannah', 1),
(30, '2022-11-17 17:39:01', '2022-11-17 17:40:32', '2022-11-17', 1000, 'Eth', '0x5af9013c98353cd7144a47d2e68ac8590f95abaa3b9e8f67c7afa8ab09186e8e', 24, 'Bruel Hannah', 1),
(31, '2022-11-17 17:39:27', '2022-11-17 17:40:25', '2022-11-17', 100, 'Eth', '0x5af9013c98353cd7144a47d2e68ac8590f95abaa3b9e8f67c7afa8ab09186e8e', 24, 'Bruel Hannah', 1),
(32, '2022-11-19 18:42:16', '2022-11-19 18:56:29', '2022-11-19', 800, 'Btc', '003b5274d8743b93995641038f480f62779350048cc5d3d892e9762902964820', 24, 'Bruel Hannah', 1),
(33, '2022-11-20 14:08:52', '2022-11-20 14:44:34', '2022-11-20', 2000, 'Btc', '19BnJW5DDLb7xR4u7oE2yEaW766LBLFreW', 47, 'Alina', 1),
(34, '2022-11-20 14:10:24', '2022-11-20 14:44:43', '2022-11-20', 2000, 'Btc', 'b812044dc2de9b8172c83ef49282bed79e9adb0c6def0b47187515a4c7259a41', 47, 'Alina', 1),
(35, '2022-11-20 14:12:31', '2022-11-20 14:44:55', '2022-11-20', 2000, 'Btc', 'bc1qp5302d0zxeu9qud272nh8az05dmgn34flgghgu', 47, 'Alina', 1),
(36, '2022-11-20 14:15:57', '2022-11-20 14:45:04', '2022-11-20', 6100, 'Btc', '19BnJW5DDLb7xR4u7oE2yEaW766LBLFreW', 47, 'Alina', 1),
(37, '2022-11-20 14:20:47', '2022-11-20 14:44:17', '2022-11-20', 10200, 'Eth', '0x641457295332ECE4D1c3E8aD3fF5ca88EdDD38e9', 47, 'Alina', 1),
(38, '2022-11-21 19:53:09', '2022-11-21 20:23:31', '2022-11-21', 2500, 'Btc', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 25, 'Lucy Patrick', 1),
(39, '2022-11-21 20:08:22', '2022-11-21 20:09:09', '2022-11-21', 10526, 'Btc', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 25, 'Pat Kumar', 1),
(40, '2022-11-21 20:25:44', '2022-11-21 20:26:15', '2022-11-21', 10526, 'Btc', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 25, 'Pat Kumar', 1),
(41, '2022-11-24 16:24:04', '2022-11-24 16:25:51', '2022-11-24', 500, 'Btc', 'Bc20275a918b19ede750fb0613cbd57205da7c4020adeaec1faf5cc96fca030986', 25, 'Pat Kumar', 1),
(42, '2022-11-28 19:58:17', '2022-11-28 20:07:24', '2022-11-28', 10000, 'USDT', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 21, 'Alexander', 1),
(45, '2022-11-30 16:18:01', '2022-11-30 16:24:06', '2022-11-30', 524, 'USDT', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 19, 'Kokul Innocent', 1),
(46, '2022-12-07 15:45:49', '2022-12-07 15:46:26', '2022-12-07', 1000, 'Btc', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 19, 'Pedersen Benart', 1),
(47, '2022-12-09 18:45:53', '2022-12-09 18:51:37', '2022-12-09', 3000, 'USDT', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 7, 'Hannah$$%', 1),
(48, '2022-12-11 06:47:24', '2022-12-11 06:51:02', '2022-12-11', 500, 'USDT', 'TCpAM3uisptWZyUho9M1MHM9TAVgRUyY5F', 47, 'Alina', 1),
(49, '2022-12-13 20:09:07', '2022-12-13 20:09:50', '2022-12-13', 200, 'Btc', 'TCpAM3uisptWZyUho9M1MHM9TAVgRUyY5F', 48, 'Ailly', 1),
(50, '2022-12-15 05:32:27', '2022-12-15 05:36:01', '2022-12-15', 2800, 'Btc', '6f1518746d00093757d9d9b86aabbb1587f2ea2b170220a3349cc1fccb600c9a', 47, 'Alina', 1),
(51, '2022-12-15 07:02:55', '2022-12-15 07:04:44', '2022-12-15', 700, 'Btc', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 24, 'CUMA', 1),
(52, '2022-12-15 07:07:19', '2022-12-15 07:08:01', '2022-12-15', 1000, 'Btc', 'bc1qt9dkynrluulnzf8hk6fxlk8rlaqnma43vr9r8w', 24, 'CUMA', 1),
(53, '2022-12-15 12:58:55', '2022-12-15 13:01:00', '2022-12-15', 60, 'USDT', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 19, 'Abdullah', 1),
(223, '2023-09-17 06:32:54', '2023-09-17 06:32:54', '2023-09-17', 180, 'USDT', '0x7a4D0A34cA39Df1317f1DbBD3036e76746F21265', 502, 'Mohammed Abdullahi Ndirmbita', 0),
(55, '2022-12-17 09:56:01', '2022-12-17 09:56:18', '2022-12-17', 800, 'Eth', '6f1518746d00093757d9d9b86aabbb1587f2ea2b170220a3349cc1fccb600c9a', 65, 'Emilia', 1),
(57, '2022-12-23 11:09:17', '2022-12-23 11:10:59', '2022-12-23', 16, 'Usdt', 'usdt', 42, 'ouakrim abdellaziz', 1),
(68, '2023-01-27 16:33:00', '2023-01-27 16:33:00', '2023-01-27', 80, 'USDT', 'TRAGGvo6n5qeRMy1CzHAYTqQHndA5vxzwc', 43, 'Sajith NS', 0),
(59, '2022-12-23 12:41:07', '2022-12-23 14:41:55', '2022-12-23', 5, 'USDT', 'TXZ6aiMTxkbqXZEhyC12L3RzL2cmvEmj3f', 43, 'Sajith NS', 1),
(69, '2023-01-28 04:35:14', '2023-01-28 04:43:43', '2023-01-28', 800, 'USDT', 'TCpAM3uisptWZyUho9M1MHM9TAVgRUyY5F', 47, 'Alina', 1),
(70, '2023-01-28 04:39:36', '2023-01-28 04:43:29', '2023-01-28', 400, 'Btc', 'bc1qxhfekzexjlcxtzgda2tlhwvq0vydmjrvjfq7wt', 65, 'Emilia', 1),
(71, '2023-01-28 06:56:21', '2023-01-28 06:56:53', '2023-01-28', 787, 'USDT', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 106, 'Leakena', 1),
(72, '2023-02-04 12:34:56', '2023-02-04 12:34:56', '2023-02-04', 50, 'USDT', 'TYM169TEaqrY2h771Q6wJv7SSwTLoVRQg2', 42, 'ouakrim abdelaziz', 0),
(73, '2023-02-08 19:55:33', '2023-02-08 19:56:21', '2023-02-08', 1000, 'USDT', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 20, 'LucBenart', 1),
(74, '2023-02-08 19:57:48', '2023-02-08 19:59:10', '2023-02-08', 2000, 'USDT', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 20, 'LucBenart', 1),
(75, '2023-02-11 11:31:11', '2023-02-11 11:43:30', '2023-02-11', 360, 'USDT', 'TYQdX5JQPMnTKHW3CHkJvwtQrKxN85A32w', 114, 'Dinesh Prasad', 1),
(117, '2023-05-13 08:59:09', '2023-05-13 08:59:53', '2023-05-13', 10000, 'USDT', 'TYM169TEaqrY2h771Q6wJv7SSwTLoVRQg2', 75, 'Silambarasan', 1),
(77, '2023-02-15 08:47:58', '2023-02-15 08:49:37', '2023-02-15', 800, 'Eth', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 47, 'Lisa', 1),
(78, '2023-02-15 18:01:08', '2023-02-15 18:04:50', '2023-02-15', 3000, 'Btc', 'bnb1zhxnh2fqsfrf0g4m0uf74c4ta0pt0h038evjds', 65, 'Emilia', 1),
(79, '2023-02-27 08:27:56', '2023-02-27 08:29:28', '2023-02-27', 5700, 'Btc', 'bnb1zhxnh2fqsfrf0g4m0uf74c4ta0pt0h038evjds', 47, 'Lisa', 1),
(80, '2023-03-01 10:34:14', '2023-03-01 10:43:02', '2023-03-01', 15900, 'USDT', 'TFoutuLNhgvNUwe8eA51DDCGaui19EHVyv', 7, 'Hannah$$%', 1),
(81, '2023-03-01 10:36:17', '2023-03-01 10:43:19', '2023-03-01', 30000, 'Btc', '0xba93a656304cda12e4746f683b76fee718a156b', 21, 'Alexander', 1),
(82, '2023-03-01 10:40:22', '2023-03-01 10:43:37', '2023-03-01', 1000, 'USDT', 'T18a6rwtmr9rkixs39QFRR7AJosBpZS56NF', 98, 'Natasha', 1),
(83, '2023-03-01 10:42:17', '2023-03-01 10:43:48', '2023-03-01', 25000, 'USDT', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 18, 'Patrick Gabriel', 1),
(84, '2023-03-04 16:32:41', '2023-03-04 16:32:41', '2023-03-04', 5504, 'USDT', 'TYQdX5JQPMnTKHW3CHkJvwtQrKxN85A32w', 86, 'Ravi kumar', 0),
(85, '2023-03-07 09:53:57', '2023-03-07 09:54:26', '2023-03-07', 4090, 'USDT', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 7, 'Hannah$$%', 1),
(86, '2023-03-25 13:26:44', '2023-03-25 14:40:45', '2023-03-25', 5000, 'Btc', 'raqmcRsH5XoLjfKnjPM3GsYXrfGoFKrn6W', 65, 'Emilia', 1),
(87, '2023-03-25 13:29:46', '2023-03-25 14:41:00', '2023-03-25', 600, 'Btc', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 66, 'Khan', 1),
(88, '2023-03-25 13:33:53', '2023-03-25 14:40:20', '2023-03-25', 3000, 'Btc', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 48, 'Ailly', 1),
(89, '2023-04-09 10:59:01', '2023-04-09 11:02:08', '2023-04-09', 200, 'USDT', 'addr1qyas3v8u5ef4n9rcuyeu8v4n75d5ytlple7klz4ywnfu9vgrc3er7kwcdca3pnqpts42ezm5zj4ua363s7wd5wvlufnscfy2se', 66, 'Khan', 1),
(90, '2023-04-19 06:38:22', '2023-04-19 06:39:21', '2023-04-19', 500, 'USDT', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 7, 'Tanya', 1),
(91, '2023-04-20 06:36:31', '2023-04-20 06:38:24', '2023-04-20', 4000, 'Btc', '0xba93a656304cda12e4746f683b76fee718a156df', 98, 'Natasha', 1),
(92, '2023-04-20 13:24:11', '2023-04-20 13:27:03', '2023-04-20', 2300, 'USDT', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 46, 'Gary Author', 1),
(93, '2023-04-25 15:44:13', '2023-04-25 15:55:35', '2023-04-25', 1500, 'USDT', 'thor1vvjuqvula30mpuuy2z5ermdfvf26908yhzcmex', 65, 'Omar', 1),
(94, '2023-04-25 15:56:17', '2023-04-25 15:57:33', '2023-04-25', 9000, 'Eth', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 65, 'Sera', 1),
(95, '2023-04-28 15:07:15', '2023-04-28 15:07:15', '2023-04-28', 1000, 'USDT', 'TJJJurtRrGqpSEVb4SsipAZoXD4XvcVBo4', 135, 'Sher bahadur', 0),
(138, '2023-05-20 22:24:17', '2023-05-20 22:24:17', '2023-05-20', 180, 'USDT', 'TL4YijSdfEJ9FHGnUbmJsZ5CzdB2BJYh9d', 194, 'Eze Grace Chinasa', 0),
(97, '2023-05-02 04:24:19', '2023-05-02 04:25:14', '2023-05-02', 20000, 'Btc', '18a6rwtmr9rkixs39QFRR7AJosBpZS56NF', 18, 'Patrick Gabriel', 1),
(98, '2023-05-02 15:58:37', '2023-05-02 15:59:00', '2023-05-02', 2000, 'USDT', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 166, 'Katarina', 1),
(99, '2023-05-05 06:30:57', '2023-05-05 06:32:22', '2023-05-05', 1000, 'USDT', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 7, 'Tanya', 1),
(100, '2023-05-05 06:35:30', '2023-05-05 06:36:05', '2023-05-05', 1001, 'USDT', 'TFEyoyVazPjZ64ZTFcnBFt32s11aa8yBaA', 7, 'Tanya', 1),
(101, '2023-05-06 08:11:57', '2023-05-06 08:16:54', '2023-05-06', 4500, 'Btc', 'qp2nxlcue3tvfj6q8lqfgyxtv5v63jqsfggeaeznr6', 65, 'Emilia', 1),
(102, '2023-05-06 08:15:28', '2023-05-06 08:17:04', '2023-05-06', 18220, 'USDT', 'TFoutuLNhgvNUwe8eA51DDCGaui19EHVyv', 98, 'Natasha', 1),
(103, '2023-05-06 12:18:45', '2023-05-06 12:20:28', '2023-05-06', 7000, 'Btc', '0xba93a656304cda12e4746f683b76fee718a156df', 20, 'LucBenart', 1),
(104, '2023-05-06 18:15:27', '2023-05-06 18:17:37', '2023-05-06', 7000, 'Eth', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 65, 'Itsyogurl', 1),
(105, '2023-05-06 20:48:14', '2023-05-06 20:48:14', '2023-05-06', 180, 'Btc', 'bc1qex9senr8zv8jc4a4l2mqmew82sur3h9gxgn36h', 164, 'Charles Boateng', 0),
(106, '2023-05-07 06:00:06', '2023-05-07 06:02:31', '2023-05-07', 2500, 'USDT', 'ltc1qm9xszc4j7dw956qda48m5mghkhcns8e65cj6um', 166, 'Katarina', 1),
(107, '2023-05-07 06:01:42', '2023-05-07 06:02:47', '2023-05-07', 8000, 'Btc', '0xba93a656304cda12e4746f683b76fee718a156df', 21, 'Alexander', 1),
(108, '2023-05-09 09:57:11', '2023-05-09 09:57:49', '2023-05-09', 15000, 'Btc', '0xE16C1694770158eA4397eb166E0690a413f274F8', 66, 'Khan', 1),
(109, '2023-05-09 20:31:28', '2023-05-09 20:33:58', '2023-05-09', 10000, 'USDT', 'addr1qyas3v8u5ef4n9rcuyeu8v4n75d5ytlple7klz4ywnfu9vgrc3er7kwcdca3pnqpts42ezm5zj4ua363s7wd5wvlufnscfy2se', 65, 'Michael', 1),
(110, '2023-05-10 05:31:37', '2023-05-10 05:33:53', '2023-05-10', 7500, 'Btc', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 47, 'Alina', 1),
(111, '2023-05-10 10:13:18', '2023-05-10 10:16:38', '2023-05-10', 1000, 'Btc', 'DJzPGNv1yiaimWMzBwC77FN4MXwxuTVQ4J', 65, 'baatherine', 1),
(112, '2023-05-11 06:38:38', '2023-05-11 09:58:05', '2023-05-11', 8700, 'Btc', 'TQd7CdTK6tNEbd5VUCeTf3CTgbyEKxmCMu', 66, 'Harry', 1),
(113, '2023-05-12 09:37:03', '2023-05-12 09:39:32', '2023-05-12', 5200, 'XRP', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 65, 'Sera', 1),
(114, '2023-05-13 08:49:27', '2023-05-13 08:58:16', '2023-05-13', 10000, 'USDT', 'TYM169TEaqrY2h771Q6wJv7SSwTLoVRQg2', 75, 'Silambarasan', 1),
(115, '2023-05-13 08:55:46', '2023-05-13 08:58:04', '2023-05-13', 20000, 'USDT', 'TYM169TEaqrY2h771Q6wJv7SSwTLoVRQg2', 75, 'Silambarasan', 1),
(116, '2023-05-13 08:56:02', '2023-05-13 08:57:55', '2023-05-13', 20000, 'USDT', 'TYM169TEaqrY2h771Q6wJv7SSwTLoVRQg2', 75, 'Silambarasan', 1),
(118, '2023-05-13 09:00:37', '2023-05-13 09:00:57', '2023-05-13', 5000, 'USDT', 'TYM169TEaqrY2h771Q6wJv7SSwTLoVRQg2', 75, 'Silambarasan', 1),
(119, '2023-05-13 09:16:44', '2023-05-13 09:17:12', '2023-05-13', 60, 'USDT', 'TYM169TEaqrY2h771Q6wJv7SSwTLoVRQg2', 75, 'Silambarasan', 1),
(120, '2023-05-13 09:38:08', '2023-05-13 09:38:47', '2023-05-13', 13000, 'USDT', 'TUqtY2V4vJ63ogzCJRAS91miboGR7uWWE9', 65, 'Omar', 1),
(121, '2023-05-13 18:39:45', '2023-05-13 18:41:10', '2023-05-13', 1000, 'USDT', 'TQd7CdTK6tNEbd5VUCeTf3CTgbyEKxmCMu', 166, 'Katarina', 1),
(122, '2023-05-14 08:07:36', '2023-05-14 08:09:39', '2023-05-14', 30000, 'XRP', '0x2e36b113a112be28dc83952160f47a29990c7805', 65, 'Kumari', 1),
(123, '2023-05-14 10:36:16', '2023-05-14 10:52:28', '2023-05-14', 10, 'USDT', 'TPXshTNmaPviAFLizVv7VxVovCEvGuSjvs', 180, 'Ravi Chaudhary', 1),
(128, '2023-05-16 18:01:30', '2023-05-16 19:57:29', '2023-05-16', 6, 'USDT', 'TGbjYH2JQ5fo9jQ4gYdp4tZe9vUtsgJSn1', 188, 'Carlyster Nonye Ijere', 1),
(125, '2023-05-14 22:22:33', '2023-05-14 22:44:25', '2023-05-14', 5, 'USDT', 'TPXshTNmaPviAFLizVv7VxVovCEvGuSjvs', 180, 'Ravi Chaudhary', 1),
(126, '2023-05-15 03:27:51', '2023-05-15 05:25:29', '2023-05-15', 15, 'USDT', 'TGbjYH2JQ5fo9jQ4gYdp4tZe9vUtsgJSn1', 188, 'Carlyster Nonye Ijere', 1),
(127, '2023-05-15 12:50:04', '2023-05-15 12:59:50', '2023-05-15', 10, 'USDT', 'TGbjYH2JQ5fo9jQ4gYdp4tZe9vUtsgJSn1', 188, 'Carlyster Nonye Ijere', 1),
(129, '2023-05-17 18:49:19', '2023-05-18 03:50:23', '2023-05-17', 6, 'USDT', 'TGbjYH2JQ5fo9jQ4gYdp4tZe9vUtsgJSn1', 188, 'Carlyster Nonye Ijere', 1),
(130, '2023-05-19 09:48:27', '2023-05-19 09:50:16', '2023-05-19', 300, 'Eth', '0x2e36b113a112be28dc83952160f47a29990c7805', 65, 'Itsyogurl_', 1),
(131, '2023-05-19 09:56:05', '2023-05-31 07:37:39', '2023-05-19', 83, 'USDT', 'TPXshTNmaPviAFLizVv7VxVovCEvGuSjvs', 180, 'Ravi Chaudhary', 1),
(132, '2023-05-19 11:38:47', '2023-05-19 11:38:47', '2023-05-19', 80, 'USDT', 'TQgfQFQmjJ5BnfdCPoGUXKxGkmhZkMBiEb', 186, 'Alabi Fatai Temitope', 0),
(133, '2023-05-19 13:45:36', '2023-05-19 13:48:43', '2023-05-19', 100, 'Eth', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 190, 'Benjamin', 1),
(134, '2023-05-19 18:54:40', '2023-05-28 05:44:18', '2023-05-19', 180, 'USDT', 'TGbjYH2JQ5fo9jQ4gYdp4tZe9vUtsgJSn1', 188, 'Carlyster Nonye Ijere', 1),
(135, '2023-05-19 19:15:38', '2023-05-22 10:42:35', '2023-05-19', 190, 'USDT', 'TEnVFE728EwD6uVifiTByMCmcEQYAutLvT', 196, 'Ozioko Michael', 1),
(136, '2023-05-20 04:10:36', '2023-05-20 04:11:10', '2023-05-20', 2000, 'USDT', 'TFoutuLNhgvNUwe8eA51DDCGaui19EHVyv', 18, 'Justin', 1),
(137, '2023-05-20 04:31:42', '2023-05-20 04:31:42', '2023-05-20', 180, 'USDT', 'TCmbFfnQ17hsPmKN9GB3aoJa4MaHQJytBi', 200, 'Eunice Onah', 0),
(143, '2023-05-22 14:45:39', '2023-05-22 14:46:26', '2023-05-22', 300, 'USDT', 'TM8VXwNU4XhsYUh3aYmaWVghT3LLhGtqwr', 7, 'Deepack kumar', 1),
(140, '2023-05-22 11:04:53', '2023-05-22 11:21:53', '2023-05-22', 120, 'Btc', 'bc1qxhfekzexjlcxtzgda2tlhwvq0vydmjrvjfq7wt', 203, 'Herbert', 1),
(141, '2023-05-22 11:45:55', '2023-05-22 14:05:09', '2023-05-22', 360, 'USDT', 'TC7Chonn5Z8MmE7VAkRXmWaKM5y25uv1dM', 205, 'Aloysius EZE', 1),
(165, '2023-05-29 13:05:17', '2023-05-29 13:06:11', '2023-05-29', 10000, 'Btc', 'bc1qex9senr8zv8jc4a4l2mqmew82sur3h9gxgn36h', 266, 'Suhani', 1),
(164, '2023-05-28 10:45:29', '2023-05-28 10:45:59', '2023-05-28', 1000, 'USDT', 'TYM169TEaqrY2h771Q6wJv7SSwTLoVRQg2', 156, 'Tanya', 1),
(144, '2023-05-22 18:04:41', '2023-05-22 18:06:59', '2023-05-22', 120, 'Btc', 'bc1qxhfekzexjlcxtzgda2tlhwvq0vydmjrvjfq7wt', 65, 'Herbert', 1),
(145, '2023-05-23 06:02:46', '2023-05-23 06:04:41', '2023-05-23', 300, 'USDT', 'TYM169TEaqrY2h771Q6wJv7SSwTLoVRQg2', 178, 'Deepak Kumar', 1),
(146, '2023-05-23 06:37:37', '2023-05-23 06:41:21', '2023-05-23', 500, 'Eth', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 65, 'Rajesh', 1),
(147, '2023-05-23 06:39:27', '2023-05-23 06:41:33', '2023-05-23', 1000, 'Btc', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 65, 'Rajesh', 1),
(148, '2023-05-23 06:39:57', '2023-05-23 06:41:57', '2023-05-23', 100, 'Btc', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 65, 'Rajesh', 1),
(149, '2023-05-23 06:40:30', '2023-05-23 06:41:10', '2023-05-23', 400, 'Btc', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 65, 'Rajesh', 1),
(150, '2023-05-23 06:41:01', '2023-05-23 06:42:25', '2023-05-23', 150, 'Btc', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 65, 'Rajesh', 1),
(151, '2023-05-23 06:41:30', '2023-05-23 06:41:43', '2023-05-23', 300, 'Btc', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 65, 'Rajesh', 1),
(152, '2023-05-23 06:41:47', '2023-05-23 06:42:05', '2023-05-23', 450, 'Btc', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 65, 'Rajesh', 1),
(153, '2023-05-23 06:42:01', '2023-05-23 06:42:15', '2023-05-23', 600, 'Btc', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 65, 'Rajesh', 1),
(154, '2023-05-23 06:42:34', '2023-05-23 06:43:46', '2023-05-23', 50, 'Btc', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 65, 'Rajesh', 1),
(155, '2023-05-23 06:42:55', '2023-05-23 06:44:03', '2023-05-23', 77, 'Btc', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 65, 'Rajesh', 1),
(156, '2023-05-23 06:43:22', '2023-05-23 06:43:56', '2023-05-23', 1500, 'Btc', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 65, 'Rajesh', 1),
(158, '2023-05-25 08:06:56', '2023-05-25 11:37:32', '2023-05-25', 2000, 'XRP', 'raqmcRsH5XoLjfKnjPM3GsYXrfGoFKrn6W', 65, 'Michael', 1),
(159, '2023-05-25 11:35:40', '2023-05-25 11:37:23', '2023-05-25', 300, 'USDT', 'TYM169TEaqrY2h771Q6wJv7SSwTLoVRQg2', 178, 'Deepak Kumar', 1),
(160, '2023-05-26 07:19:05', '2023-05-26 07:23:50', '2023-05-26', 700, 'XRP', 'raqmcRsH5XoLjfKnjPM3GsYXrfGoFKrn6W', 47, 'Michael', 1),
(162, '2023-05-27 12:36:23', '2023-05-27 12:36:23', '2023-05-27', 10, 'USDT', 'TQgfQFQmjJ5BnfdCPoGUXKxGkmhZkMBiEb', 186, 'Alabi Fatai Temitope', 0),
(163, '2023-05-28 02:13:17', '2023-05-28 05:18:05', '2023-05-28', 365, 'USDT', 'TC7Chonn5Z8MmE7VAkRXmWaKM5y25uv1dM', 246, 'Aloy Eze', 1),
(166, '2023-05-29 20:08:59', '2023-05-29 20:10:07', '2023-05-29', 3000, 'Btc', 'bc1qex9senr8zv8jc4a4l2mqmew82sur3h9gxgn36h', 266, 'Suhani', 1),
(167, '2023-05-29 20:12:55', '2023-05-29 20:13:52', '2023-05-29', 10000, 'USDT', 'TCmbFfnQ17hsPmKN9GB3aoJa4MaHQJytBi', 266, 'Justin', 1),
(168, '2023-05-30 05:14:40', '2023-05-30 05:15:49', '2023-05-30', 5000, 'USDT', 'TCmbFfnQ17hsPmKN9GB3aoJa4MaHQJytBi', 266, 'Justin', 1),
(169, '2023-05-30 06:07:21', '2023-05-30 06:07:55', '2023-05-30', 2000, 'USDT', 'TCmbFfnQ17hsPmKN9GB3aoJa4MaHQJytBi', 266, 'Justin', 1),
(170, '2023-06-01 00:01:52', '2023-06-01 00:04:12', '2023-06-01', 400, 'Btc', 'bc1qex9senr8zv8jc4a4l2mqmew82sur3h9gxgn36h', 178, 'Suhani', 1),
(172, '2023-06-03 13:48:52', '2023-06-03 13:48:52', '2023-06-03', 5300, 'USDT', 'TYQdX5JQPMnTKHW3CHkJvwtQrKxN85A32w', 114, 'Dinesh Prasad', 0),
(220, '2023-09-14 12:47:12', '2023-09-14 12:52:44', '2023-09-09', 160, 'Usdt', 'TXTQP3iiQJBdqoTuZECh9wda3eLo5wLXzw', 470, 'tranhoang76hb', 1),
(174, '2023-06-06 23:25:45', '2023-06-06 23:25:45', '2023-06-07', 80, 'USDT', 'TGfH1PooqGqgv1tXL8K7kEfDsRcXRzPCBh', 248, 'Radheshyam Dahit', 0),
(219, '2023-09-14 11:37:31', '2023-09-14 11:47:08', '2023-09-14', 500, 'USDT', 'TJQodYf6wMTTNzodZi3dX7rcs68n1YQrHt', 469, 'Nam', 1),
(177, '2023-06-09 16:48:52', '2023-06-09 16:48:52', '2023-06-09', 999999, 'USDT', 'TTyZBKNSHF5pAGJ7KayhQoSWNBag5HyWj3', 75, 'Silambarasan', 0),
(178, '2023-06-09 18:23:36', '2023-06-09 18:23:36', '2023-06-09', 20000, 'USDT', 'TTyZBKNSHF5pAGJ7KayhQoSWNBag5HyWj3', 75, 'Silambarasan', 0),
(179, '2023-06-10 02:55:47', '2023-06-10 02:55:47', '2023-06-10', 10000, 'USDT', 'TTyZBKNSHF5pAGJ7KayhQoSWNBag5HyWj3', 75, 'Silambarasan', 0),
(182, '2023-06-13 09:02:19', '2023-06-13 09:04:02', '2023-06-13', 2000, 'XRP', 'raqmcRsH5XoLjfKnjPM3GsYXrfGoFKrn6W', 65, 'Emilia', 1),
(181, '2023-06-13 08:56:15', '2023-06-13 08:58:30', '2023-06-13', 7000, 'USDT', 'raqmcRsH5XoLjfKnjPM3GsYXrfGoFKrn6W', 65, 'Emilia', 1),
(198, '2023-07-26 15:11:04', '2023-07-26 15:11:04', '2023-07-26', 5300, 'USDT', 'TCtJRHV78q6KWyuXWzMyPoipBGtN6E535v', 246, 'Aloy Eze', 0),
(185, '2023-06-21 11:45:29', '2023-06-21 11:45:29', '2023-06-21', 3000, 'USDT', 'TCowwNWHnVp3wmKhA43StpZYm7XXzRoy6c', 196, 'Ozioko Michael', 0),
(186, '2023-06-22 05:32:11', '2023-06-22 08:13:16', '2023-06-22', 50000, 'USDT', '0x0E5Df0DA9dEb179a001979D3905120fE23843fe2', 65, 'Emilia', 1),
(188, '2023-06-30 09:12:22', '2023-06-30 09:12:22', '2023-06-30', 500, 'USDT', 'TPXshTNmaPviAFLizVv7VxVovCEvGuSjvs', 180, 'Ravi Chaudhary', 0),
(189, '2023-07-04 14:35:47', '2023-07-04 14:37:55', '2023-07-04', 2000, 'USDT', 'TYM169TEaqrY2h771Q6wJv7SSwTLoVRQg2', 156, 'Mohammed', 1),
(190, '2023-07-04 17:01:55', '2023-07-04 17:02:56', '2023-07-04', 100000, 'USDT', 'TCmbFfnQ17hsPmKN9GB3aoJa4MaHQJytBi', 266, 'Natasha', 1),
(191, '2023-07-04 21:26:06', '2023-07-04 21:29:51', '2023-07-04', 300, 'Btc', 'bc1qxhfekzexjlcxtzgda2tlhwvq0vydmjrvjfq7wt', 187, 'Benjamin', 1),
(192, '2023-07-05 14:12:31', '2023-07-05 14:19:49', '2023-07-05', 540, 'USDT', 'TVZS6ep1CMwJzvL32rG21PXyngzvZVaQi9', 318, 'ADAM KOMIVI AUGUSTIN', 1),
(193, '2023-07-15 13:18:34', '2023-07-15 13:18:34', '2023-07-15', 100, 'USDT', '0x3c0b3e5cb5185c785ddff5ae4a19186f0baa3bb0', 248, 'Radheshyam Dahit', 0),
(194, '2023-07-16 13:38:10', '2023-07-16 15:12:21', '2023-07-16', 240, 'USDT', 'TVZS6ep1CMwJzvL32rG21PXyngzvZVaQi9', 318, 'ADAM KOMIVI AUGUSTIN', 1),
(195, '2023-07-24 11:39:21', '2023-07-24 11:39:21', '2023-07-24', 15770, 'USDT', 'TVZS6ep1CMwJzvL32rG21PXyngzvZVaQi9', 318, 'ADAM KOMIVI AUGUSTIN', 0),
(196, '2023-07-25 06:43:01', '2023-07-25 06:43:01', '2023-07-25', 110, 'USDT', 'TAzau3qrPCubKLMyASHewweNv9sbZknpYt', 254, 'Bright', 0),
(197, '2023-07-26 05:33:17', '2023-07-26 05:33:17', '2023-07-26', 180, 'USDT', 'TF5RH4YxXCsS4qypcYiEsZYGjYtE8pEmZU', 415, 'Ekezie Afam Chibuzo', 0),
(199, '2023-07-28 10:25:19', '2023-07-28 10:25:19', '2023-07-28', 500, 'USDT', 'TMUAUXNVefuYAgj4d4NZeyKUm2tgFmtmjj', 318, 'ADAM KOMIVI AUGUSTIN', 0),
(200, '2023-07-28 10:53:38', '2023-07-28 10:53:38', '2023-07-28', 80, 'USDT', 'TF5RH4YxXCsS4qypcYiEsZYGjYtE8pEmZU', 414, 'Ekezie Afam', 0),
(201, '2023-07-31 06:52:41', '2023-07-31 06:52:41', '2023-07-31', 3000, 'USDT', 'TYQdX5JQPMnTKHW3CHkJvwtQrKxN85A32w', 110, 'Arun Kumar Ray', 0),
(202, '2023-08-01 13:21:19', '2023-08-01 13:21:19', '2023-08-01', 540, 'USDT', 'TST9JRRnXcsjhjxj6dqvq6h78WJNS5hnHe', 418, 'Yvan', 0),
(203, '2023-08-04 15:15:35', '2023-08-04 15:15:35', '2023-08-04', 181, 'USDT', 'TK6N8rfNwGmVAgbDSQn1wu6i4NoqgdJito', 309, 'Aliyu Ibrahim chigari', 0),
(204, '2023-08-09 15:19:05', '2023-08-09 15:21:57', '2023-08-09', 3500, 'USDT', 'TYM169TEaqrY2h771Q6wJv7SSwTLoVRQg2', 156, 'Tanya', 1),
(205, '2023-08-10 14:26:02', '2023-08-10 14:26:02', '2023-08-10', 100000, 'USDT', 'TTyZBKNSHF5pAGJ7KayhQoSWNBag5HyWj3', 75, 'Silambarasan', 0),
(206, '2023-08-17 15:32:04', '2023-08-17 15:32:04', '2023-08-17', 50000, 'USDT', 'TTyZBKNSHF5pAGJ7KayhQoSWNBag5HyWj3', 75, 'Silambarasan', 0),
(207, '2023-08-23 09:26:32', '2023-08-23 09:28:28', '2023-08-23', 400, 'USDT', 'TKwMr6wQc83CmK7NnbDpPJFADLKKz6FWuX', 65, 'Emilia', 1),
(208, '2023-08-23 11:15:29', '2023-08-23 11:20:02', '2023-08-23', 500, 'Btc', '3GF4Q43euzntyrmp4uQ7uhej6DbyUpJuXY', 187, 'Benjamin', 1),
(209, '2023-08-29 17:32:30', '2023-08-29 17:32:30', '2023-08-29', 180, 'USDT', 'TKjzK46fXQPEbigt917tc37bXkmt6mQKvZ', 441, 'Senthil Kumar', 0),
(213, '2023-09-05 13:53:34', '2023-09-05 13:53:34', '2023-09-05', 84, 'USDT', 'TRwBG4L2RPftHs3LqAxF6aUWeEZXW63Rpy', 451, 'MOHD', 0),
(211, '2023-09-04 16:23:44', '2023-09-04 16:23:44', '2023-09-04', 180, 'USDT', '0x75d3b4732c535986fbe610f0b1029148975c0523', 456, 'Michael', 0),
(214, '2023-09-06 12:43:49', '2023-09-06 12:43:49', '2023-09-06', 1000, 'USDT', 'TH8qiX1vGHzoBmB7sSEzaGk7EzXwDQHkoY', 180, 'Ravi Chaudhary', 0),
(215, '2023-09-07 12:19:36', '2023-09-07 12:19:36', '2023-09-07', 180, 'USDT', 'TY4LWZUwbSAUcnKoZTRrZeXFqrwuUidFma', 466, 'Elshan', 0),
(216, '2023-09-08 15:22:52', '2023-09-09 03:53:39', '2023-09-08', 100, 'USDT', 'TJQodYf6wMTTNzodZi3dX7rcs68n1YQrHt', 469, 'Nam', 1),
(221, '2023-09-15 08:00:34', '2023-09-15 08:27:08', '2023-09-15', 4, 'USDT', 'TFT7bWFpoy8fxEVJx91AcKY8jTWzis2xBv', 450, 'EMAN', 1),
(222, '2023-09-15 12:07:55', '2023-09-15 12:13:19', '2023-09-15', 501, 'USDT', 'TCPTrqK4B92UGf7P58UPBWbpEqaYCec3iR', 468, 'Ya\'u Haruna Umar', 1),
(225, '2023-09-19 18:39:06', '2023-09-19 20:30:09', '2023-09-19', 300, 'Btc', '0x5b1f6e390E3342Cf8609365e850da5A706328fC9', 510, 'Hyejinyoom', 1),
(226, '2023-09-20 08:42:44', '2023-09-20 08:42:44', '2023-09-20', 100, 'USDT', '0x75d3b4732c535986fbe610f0b1029148975c0523', 456, 'Michael', 0),
(227, '2023-09-21 12:22:10', '2023-09-21 12:26:31', '2023-09-21', 5, 'USDT', 'TXi9ZvtNgm9kHttj4k18ZsfdRDrpMdJ3kZ', 519, 'Mahesha K C', 1),
(228, '2023-09-21 20:52:49', '2023-09-21 20:55:12', '2023-09-21', 120, 'USDT', 'TUKPzU3Rfw7YYVuhb5StohKHRfgZUu3teq', 483, 'Jenilee', 1),
(229, '2023-09-22 03:13:36', '2023-09-22 03:13:36', '2023-09-22', 5000, 'USDT', 'TYQdX5JQPMnTKHW3CHkJvwtQrKxN85A32w', 110, 'Arun Kumar Ray', 0),
(230, '2023-09-22 09:57:22', '2023-09-22 10:00:07', '2023-09-22', 100, 'USDT', '0x5b1f6e390E3342Cf8609365e850da5A706328fC9', 510, 'Hyejinyoom', 1),
(232, '2023-09-23 15:14:37', '2023-09-23 15:14:37', '2023-09-23', 180, 'USDT', 'TQmAS5fSSVGGhJ3sfxzikUEebp143uVLQD', 523, 'Arun Kumar', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companydetails`
--
ALTER TABLE `companydetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investmentplans`
--
ALTER TABLE `investmentplans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsposts`
--
ALTER TABLE `newsposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `referralpercents`
--
ALTER TABLE `referralpercents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sitesettings`
--
ALTER TABLE `sitesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topearners`
--
ALTER TABLE `topearners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `companydetails`
--
ALTER TABLE `companydetails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=555;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=549;

--
-- AUTO_INCREMENT for table `investmentplans`
--
ALTER TABLE `investmentplans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `investments`
--
ALTER TABLE `investments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `newsposts`
--
ALTER TABLE `newsposts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `referralpercents`
--
ALTER TABLE `referralpercents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sitesettings`
--
ALTER TABLE `sitesettings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `topearners`
--
ALTER TABLE `topearners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=549;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
