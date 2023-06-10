-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2023 at 03:05 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'brand A0', '2023-03-22 11:07:02', '2023-03-22 11:07:02', NULL),
(2, 'brand B1', '2023-03-22 11:07:02', '2023-03-22 11:07:02', NULL),
(3, 'brand C2', '2023-03-22 11:07:02', '2023-03-22 11:07:02', NULL),
(4, 'brand D3', '2023-03-22 11:07:02', '2023-03-22 11:07:02', NULL),
(5, 'brand E4', '2023-03-22 11:07:02', '2023-03-22 11:07:02', NULL),
(6, 'brand F5', '2023-03-22 11:07:02', '2023-03-22 11:07:02', NULL),
(7, 'brand G6', '2023-03-22 11:07:02', '2023-03-22 11:07:02', NULL),
(8, 'brand H7', '2023-03-22 11:07:02', '2023-03-22 11:07:02', NULL),
(9, 'brand I8', '2023-03-22 11:07:02', '2023-03-22 11:07:02', NULL),
(10, 'brand J9', '2023-03-22 11:07:02', '2023-03-22 11:07:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `number` tinyint(2) NOT NULL COMMENT 'Number of specific product'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`customer_id`, `product_id`, `number`) VALUES
(1, 18, 3),
(1, 41, 1),
(4, 103, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sign` char(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `sign`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Dolor', '$', '2023-03-13 09:01:54', '2023-04-25 09:47:52', NULL),
(5, 'Rial', 'ریال', '2023-04-25 09:54:21', '2023-04-25 09:54:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `mobile` varchar(13) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `province_id` varchar(4) DEFAULT NULL,
  `city_id` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `user_name`, `email`, `password`, `tel`, `mobile`, `address`, `postal_code`, `province_id`, `city_id`) VALUES
(4, 'fn_rn', 'ln_UH', 'user 1', 'user1@email.ir', '$2y$10$j5yoFfUHfozQJzLi1diKZO0KuXbFZ2WppkzEnfKQsp0gZiriY0gk6', '0812421', '09189343', 'Lorem ipsum eget, sit Aliquam.', '8861', '58', '58'),
(5, 'fn_pi', 'ln_CH', 'un_44', 'un_44@email.ir', '$2y$10$VBUN9X2KUOgDxg38IzTkFuVhNLRPEISFWKBCIWCauWk4fVYITclBm', '0819502', '09181692', 'Lorem ipsum ligula Quisque est.', '1272', '47', '38'),
(6, 'fn_iz', 'ln_FS', 'un_55', 'un_55@email.ir', '$2y$10$cuMo.XFRHg0Zmer2jz1mMe.OOFTvAmiDz.a6rvWgA54CjiH5j85Z2', '0812576', '09188178', 'Lorem ipsum scelerisque Nam laoreet iaculis et.', '5788', '33', '10'),
(7, 'fn_pj', 'ln_GQ', 'un_66', 'un_66@email.ir', '$2y$10$KZjwUX24F8Nxh2olQAldAen9LmGuWtDGp9vRffCUpbqmNi9uAEDwy', '0814292', '09180924', 'Lorem ipsum vulputate tellus ullamcorper.', '0234', '09', '61'),
(8, 'fn_ek', 'ln_ET', 'un_77', 'un_77@email.ir', '$2y$10$9qoouTKrwUfOJeJKdeI3auRrgrDmntfPgA5vIr0AIoX0xAfM9axcK', '0818439', '09183502', 'Lorem ipsum nulla amet, Duis.', '9369', '70', '24'),
(9, 'fn_pb', 'ln_IR', 'un_88', 'un_88@email.ir', '$2y$10$wiveteMwItwLHXHP9uCiieAmuegc2ZU3lDUCE4shWDd8ry/YldIx2', '0814963', '09187016', 'Lorem ipsum lectus. tempor quam. erat. egestas..', '2496', '31', '42'),
(10, 'fn_dh', 'ln_KF', 'un_99', 'un_99@email.ir', '$2y$10$Wy52hylWVeHsnHpuBOTzROJUSjvCT.fFgE0O/c9nFTP1A.CtL6hVW', '0814764', '09181587', 'Lorem ipsum ut tempor convallis,.', '9328', '66', '70'),
(12, 'fn_rt', 'ln_AW', 'un_11', 'un_11@email.ir', '$2y$10$rHVId.ZdRwKe/seAn0jloe4yLBeaSmuBJ4HQ2Urb7/zHJ1sTfZH6u', '0814301', '09180013', 'Lorem ipsum sapien turpis bibendum.', '6309', '60', '02'),
(13, 'fn_tc', 'ln_HQ', 'un_22', 'un_22@email.ir', '$2y$10$TD8410SyjBPl4q9xL.qPMek4EHmC3Ku.DXc4E7RDUxxhP93FrzlGK', '0817660', '09181509', 'Lorem ipsum ut egestas quis pede id,.', '2881', '62', '07'),
(14, 'fn_yw', 'ln_CJ', 'un_33', 'un_33@email.ir', '$2y$10$xhgPgkkrf2Ho.8hexsu0ZOogXY6tSkcw9bJ5EaMfWXyFtKxU2hYiC', '0818779', '09187252', 'Lorem ipsum porttitor Pellentesque consectetuer Nulla accumsan.', '2274', '46', '33'),
(15, 'fn_ge', 'ln_NJ', 'un_44', 'un_44@email.ir', '$2y$10$NGWMB3auH7HV8yqa.ldr4eFUS5YJbw9UsvBlhDf2WYwsmwX0FyMsS', '0811783', '09186889', 'Lorem ipsum Integer dapibus pellentesque in primis.', '2189', '70', '19'),
(16, 'fn_vg', 'ln_BB', 'un_55', 'un_55@email.ir', '$2y$10$yezEJw/PCNwys.d.t2nYau8zDtKM9cmQM7DkKQ7RgcLkoIVVcDAfm', '0811418', '09188204', 'Lorem ipsum mi. ac nibh.', '7259', '23', '13'),
(17, 'fn_zu', 'ln_XR', 'un_66', 'un_66@email.ir', '$2y$10$xahxgP9of5NtUAsy7DW2YO05hW/k2kDawwgav03IhroNK8bwX8eG2', '0818927', '09184424', 'Lorem ipsum eget consectetur facilisi. ac mauris dictumst..', '1417', '24', '01'),
(18, 'fn_jt', 'ln_XA', 'un_77', 'un_77@email.ir', '$2y$10$u5Di6dBMzHpdSl6auWhPM.Id5b5X3VapYGSsPaX7.rz62j92dBP5m', '0813187', '09185662', 'Lorem ipsum habitant habitasse commodo..', '5976', '09', '93'),
(19, 'fn_sz', 'ln_CG', 'un_88', 'un_88@email.ir', '$2y$10$bOvnso8EvIqa0XhV464yleiEMp0PrZGWzc6ijZtdFCren9vfScZPa', '0813800', '09181119', 'Lorem ipsum leo. commodo id iaculis Quisque cubilia.', '7766', '71', '76'),
(20, 'fn_fa', 'ln_NF', 'un_99', 'un_99@email.ir', '$2y$10$xFCamN.lUyCUoZvsbJ/eK.WU16IB/LtTF50lOUqOJb8axEe5kvFnG', '0814479', '09182881', 'Lorem ipsum elit. posuere aliquet vitae Proin.', '5462', '49', '50');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `order_state` int(11) DEFAULT NULL,
  `order_payment_id` int(11) DEFAULT NULL,
  `price` varchar(12) DEFAULT NULL,
  `discount` varchar(12) DEFAULT NULL,
  `total_price` varchar(12) DEFAULT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'aaaa', 'aaaa', '2023-03-11 10:09:11', '2023-03-11 10:09:11', '2023-03-11 10:11:09'),
(3, 'orders status 1', 'description', '2023-03-11 10:14:34', '2023-03-12 09:44:16', NULL),
(5, 'Finish', 'Finish status', '2023-03-12 10:16:46', '2023-03-12 10:16:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `brand_id` int(11) NOT NULL,
  `product_group_id` int(10) UNSIGNED NOT NULL,
  `price` varchar(12) DEFAULT NULL,
  `discount` varchar(12) DEFAULT NULL,
  `Currency_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `brand_id`, `product_group_id`, `price`, `discount`, `Currency_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'product 487', 'Lorem ipsum sed nulla non malesuada mi. Aliquam amet, eiusmod Quisque purus et et malesuada imperdiet sapien, eget nec mauris, In ullamcorper, dictum aliquam eu malesuada.', 8, 9, '188000', '5702', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(2, 'product 318', 'Lorem ipsum orci. sem imperdiet. sollicitudin Maecenas lorem risus. fermentum Nullam habitasse id sed tortor In sed tristique nulla, leo. ut.', 2, 4, '129000', '3601', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(3, 'product 375', 'Lorem ipsum veniam, aliquip ligula Duis Donec elit. dictum, nisl, Aliquam justo, scelerisque luctus Duis rutrum. elit ac, netus convallis metus,.', 5, 9, '838000', '3774', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(4, 'product 457', 'Lorem ipsum Ut Vestibulum imperdiet ante.\r\n in Duis massa ornare ultrices facilisis turpis sed In Praesent eget, sit Donec bibendum Sed Pellentesque vehicula..', 6, 8, '791000', '7018', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(5, 'product 897', 'Lorem ipsum lobortis arcu neque. condimentum aliquam interdum ac enim. leo. Nam platea Quisque morbi Donec nulla ligula mi eleifend, et magna. arcu. nec, quis.', 8, 9, '817000', '4141', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(6, 'product 232', 'Lorem ipsum nulla scelerisque porttitor Fusce in rutrum. Aliquam tristique Nullam elementum viverra nonummy, purus. vel dictum ante.\r\n Mauris faucibus Aenean magna dictum Donec feugiat.', 10, 3, '802000', '5097', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(7, 'product 740', 'Lorem ipsum bibendum tristique Integer urna hendrerit Donec luctus, Aliquam nisl Mauris et gravida. pretium, Sed sapien elit. odio tempus nunc, sed, non malesuada semper elit. tristique,.', 3, 6, '862000', '7270', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(8, 'product 497', 'Lorem ipsum Nam senectus Fusce neque nulla hendrerit, ullamcorper Curabitur risus. amet, Cras massa purus Excepteur sed neque. facilisis Suspendisse.', 10, 9, '380000', '4628', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(9, 'product 723', 'Lorem ipsum Nulla dictumst.\r\n odio. pharetra mi. quis tristique felis. Nunc pellentesque, labore magna tempor rutrum. condimentum cupidatat tristique Donec id, pede et porttitor ligula consequat suscipit Integer Proin facilisis.', 3, 3, '085000', '8432', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(10, 'product 464', 'Lorem ipsum Morbi turpis nonummy, nec, consequat. elit. bibendum Proin id, orci. adipiscing quis, Aliquam Aliquam Suspendisse Aliquam libero.\r\n vel, ipsum Fusce mattis interdum Vestibulum eget ligula,.', 10, 10, '714000', '3276', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(11, 'product 602', 'Lorem ipsum ac varius elementum lectus. vitae quam. luctus diam ac, ullamcorper, arcu felis. convallis mi, sem nunc. risus scelerisque ultrices amet, eu sed, ut, dapibus aliquam vel, sed quam.\r\n.', 6, 2, '734000', '2494', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(12, 'product 160', 'Lorem ipsum vestibulum dolor, tristique, lobortis sed, facilisis eu, Sed ipsum luctus quis Quisque a diam fermentum ornare Ut Donec dignissim iaculis.', 5, 3, '620000', '5942', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(13, 'product 336', 'Lorem ipsum orci. Donec est tincidunt hac ullamcorper odio. gravida eget leo, eget, orci egestas Maecenas leo. et, turpis, commodo sapien dignissim ligula vulputate, nulla rhoncus.', 10, 8, '524000', '6346', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(14, 'product 170', 'Lorem ipsum placerat fermentum condimentum risus eget in non pharetra faucibus semper tortor urna id, metus. feugiat. egestas. tempor Nullam vehicula.', 3, 1, '419000', '4634', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(15, 'product 437', 'Lorem ipsum voluptate velit. id, et lacus irure suscipit cursus sapien, mi. dapibus nunc. ullamco magna, adipiscing euismod sunt in malesuada egestas turpis vel non Nunc nisi. tellus.', 5, 10, '764000', '4443', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(16, 'product 237', 'Lorem ipsum eget felis. Etiam scelerisque purus ac, Cras semper pede mattis sit Nulla tristique, orci eu sit morbi eu fames iaculis tristique nibh. ultrices orci lacus.', 6, 5, '988000', '9062', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(17, 'product 429', 'Lorem ipsum nulla Sed In id, et, vulputate, eros laboris aliquet arcu. placerat dictum libero mattis orci lobortis justo. non porttitor ac sit orci Pellentesque euismod quam..', 3, 7, '384000', '8780', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(18, 'product 015', 'Lorem ipsum faucibus. amet fermentum. quam. leo, ornare lorem, tincidunt, imperdiet. nisi felis. lectus Suspendisse imperdiet nisl. elit dignissim orci convallis hendrerit, dapibus.', 2, 5, '176000', '9368', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(19, 'product 719', 'Lorem ipsum risus. Mauris mattis id, eu, erat. lacinia, vitae sem. ac platea malesuada felis, Donec mauris tincidunt eget Curabitur dolor.', 10, 9, '168000', '2464', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(20, 'product 731', 'Lorem ipsum In quis vestibulum ornare proident, venenatis ullamcorper Curabitur mollis augue at turpis habitasse purus condimentum hendrerit tortor neque..', 4, 10, '164000', '6670', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(21, 'product 182', 'Lorem ipsum a, iaculis Duis leo. mattis quis, odio elementum, nulla eu, tellus. odio. sit fermentum Cras imperdiet. Aenean ut vitae augue.', 2, 2, '194000', '8113', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(22, 'product 987', 'Lorem ipsum turpis, netus tincidunt hac ac, turpis In Ut Nullam ac sed, nec libero.\r\n viverra Pellentesque et Mauris In In nisl nisi venenatis blandit libero. massa Vestibulum.', 7, 2, '956000', '5598', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(23, 'product 398', 'Lorem ipsum tempor felis, Nullam sem vestibulum iaculis turpis. tellus sed mattis et tempus consequat. pulvinar ante Proin eget dictum, eu.', 1, 10, '182000', '5981', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(24, 'product 223', 'Lorem ipsum habitasse aliquet. erat. sit mattis tincidunt pulvinar. venenatis Ut et nec, enim et adipisicing elit lorem Morbi imperdiet. Vivamus quis felis. imperdiet. et, Aliquam nulla, vel,.', 8, 6, '628000', '5259', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(25, 'product 884', 'Lorem ipsum adipisicing consequat sit condimentum quam Aenean imperdiet gravida sapien Integer eiusmod vehicula. nisl. elementum sit Sed aliquet non, Duis tellus. in, eu consequat.', 8, 2, '147000', '9709', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(26, 'product 104', 'Lorem ipsum senectus euismod viverra ipsum. felis. ut nisi Ut gravida iaculis turpis consectetuer mattis bibendum sit nulla. dictumst.\r\n ac In ac elit scelerisque feugiat.', 1, 1, '911000', '4699', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(27, 'product 415', 'Lorem ipsum elit Aliquam ullamco fermentum. id, lacus non, metus. est. Quisque nec, Suspendisse diam luctus mattis lacus ac sit diam, sem. egestas euismod fames odio.', 5, 9, '251000', '5559', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(28, 'product 593', 'Lorem ipsum sodales. turpis. odio.\r\n nec ligula Nulla iaculis odio. Donec scelerisque et Nullam ligula, sem tristique in, lorem ut, dictum, sapien, eu elementum, nec, urna. iaculis arcu.', 10, 1, '010000', '1977', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(29, 'product 755', 'Lorem ipsum odio. iaculis non, ullamco quis diam egestas Curabitur massa sit neque. fermentum hendrerit eu, facilisi. ac gravida Suspendisse nisl. Donec vestibulum. lacus eget, dictumst. leo, sit semper.', 7, 7, '386000', '2790', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(30, 'product 936', 'Lorem ipsum mollit Nullam proident, nec ligula tincidunt lorem sit Donec Cras lectus, leo. Duis sodales. sapien ultrices nunc. morbi semper elit. convallis sed, ac quam. fermentum fermentum ultrices.', 4, 7, '318000', '7014', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(31, 'product 346', 'Lorem ipsum sollicitudin sapien Curabitur Curabitur magna lacus. Nullam Vestibulum sit amet ligula turpis. Fusce lobortis luctus In elit commodo dictumst. mi. pharetra non gravida. Pellentesque sollicitudin.', 9, 8, '307000', '7514', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(32, 'product 719', 'Lorem ipsum Proin ac quis eget, in pulvinar. Duis ut Cras congue, eu posuere platea exercitation consequat libero egestas. ullamcorper elit..', 6, 9, '730000', '6405', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(33, 'product 691', 'Lorem ipsum nunc ut et neque. elit, vel, Aenean cubilia amet vel eget, pharetra et mi, lorem, tincidunt turpis purus. sapien, deserunt velit. facilisi..', 4, 3, '883000', '5825', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(34, 'product 311', 'Lorem ipsum aliquet. turpis Nunc est nunc. ut sit tempor feugiat sed elit, pretium. Donec et elementum ipsum odio imperdiet. Proin.', 1, 3, '068000', '5701', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(35, 'product 310', 'Lorem ipsum Integer lorem arcu magna sed id, convallis sapien tellus. facilisis orci et bibendum eget, Donec Nullam dictumst.\r\n erat leo. vestibulum Curabitur et.', 2, 9, '139000', '9057', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(36, 'product 213', 'Lorem ipsum condimentum est Proin a ipsum Morbi Nulla pretium elit, arcu. Aliquam vestibulum ad Fusce dignissim nisi vitae, luctus consequat. egestas. irure.', 2, 6, '720000', '6460', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(37, 'product 350', 'Lorem ipsum Praesent cupidatat morbi netus ipsum habitasse et, leo, eget purus id imperdiet lobortis vestibulum hendrerit Pellentesque fermentum nisi vehicula. egestas lorem. velit Donec purus.', 8, 2, '499000', '9900', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(38, 'product 732', 'Lorem ipsum fermentum Nunc lectus Aliquam et diam nec eget, volutpat. Nulla sit turpis nulla. Donec massa dictum eget, ullamco turpis. elit, nisi. lacus. commodo..', 5, 2, '567000', '3789', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(39, 'product 928', 'Lorem ipsum Proin quam. et, diam, turpis. vestibulum est quis Ut habitant scelerisque vel, Aliquam mauris. Mauris at, Curabitur elit consequat. felis, diam. aliquam tempor augue, rhoncus blandit. ut, ac,.', 6, 10, '838000', '5807', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(40, 'product 615', 'Lorem ipsum Nulla ac nisl In ut elit, eu blandit. risus elit sem Vestibulum lorem adipiscing urna.\r\n a, tortor ut, euismod non iaculis.', 7, 9, '918000', '5947', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(41, 'product 518', 'Lorem ipsum egestas nulla. egestas. Suspendisse netus Ut ipsum neque. ullamcorper nisl Nunc nulla, sit consequat id, commodo et veniam, mattis eleifend Proin Fusce consequat..', 2, 5, '451000', '9319', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(42, 'product 011', 'Lorem ipsum ac velit, mi. Vivamus sem imperdiet Nunc ac In amet, leo, volutpat. orci turpis tempor Etiam euismod hac Suspendisse augue, Ut amet metus, nec tempus fermentum tempor ultrices.', 1, 1, '113000', '7022', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(43, 'product 033', 'Lorem ipsum consectetuer euismod laborum.\r\n consequat et felis. diam, tincidunt in, consequat. non, id, elit. quis condimentum pellentesque sed ante ac odio. in adipiscing consectetur faucibus magna.', 10, 9, '983000', '2998', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(44, 'product 866', 'Lorem ipsum sed dictumst.\r\n orci. tristique sem et ac ligula consequat odio. in, ullamco gravida libero. tempor consequat. ut ut consequat. enim ligula..', 4, 3, '946000', '8731', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(45, 'product 542', 'Lorem ipsum sed tellus nunc, eu, leo. dolor.\r\n Donec egestas lacus, bibendum sint orci Donec quam. elit sapien tincidunt ipsum. pede a.', 3, 6, '543000', '8626', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(46, 'product 658', 'Lorem ipsum eu, interdum ad elit. blandit. Integer eget lacus, consectetur nunc. ac, ac, tellus. bibendum facilisis iaculis sapien eget vel interdum mi. Nullam at sollicitudin turpis. amet, magna metus..', 9, 8, '457000', '1921', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(47, 'product 180', 'Lorem ipsum et lacinia ac tellus Integer Proin consectetuer turpis gravida risus id, elit, platea pede lacus. hendrerit, eget convallis lacus varius.', 5, 9, '491000', '2297', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(48, 'product 883', 'Lorem ipsum ullamcorper, nisl Sed faucibus, at lectus. velit. molestie Duis turpis lacus. volutpat est tortor platea sit Nunc dapibus.\r\n facilisis egestas. mi. Duis eu.', 4, 4, '658000', '4531', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(49, 'product 454', 'Lorem ipsum Proin nonummy mauris. Vestibulum tempor a tincidunt, id, id sed Morbi elit. leo, et dictumst. Nullam risus. ac, diam. enim arcu eget,.', 6, 7, '750000', '4248', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(50, 'product 035', 'Lorem ipsum hac netus vehicula euismod neque leo, et at, eget, eget feugiat proident, sapien sem ac, arcu pulvinar felis, non, sed ligula. Sed condimentum. dapibus placerat Pellentesque.', 7, 4, '876000', '1953', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(51, 'product 629', 'Lorem ipsum convallis in sapien nec, ligula. massa euismod eu, dignissim luctus laoreet Donec id metus, molestie vitae ultrices urna.', 6, 6, '709000', '6095', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(52, 'product 905', 'Lorem ipsum felis. velit, volutpat Integer dapibus.\r\n justo, orci commodo. iaculis magna hac diam. ante. ac amet habitasse faucibus. culpa Donec turpis. Nulla Suspendisse a diam tristique Ut.', 6, 6, '390000', '1196', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(53, 'product 700', 'Lorem ipsum urna.\r\n amet lacus. Ut nisi. mauris odio. sit turpis, magna facilisis mauris In orci. lacus augue. habitant justo. ipsum porttitor gravida turpis..', 3, 8, '774000', '2636', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(54, 'product 694', 'Lorem ipsum eget, mattis et sit vitae, mi venenatis neque odio. vel, odio. Nullam tempor ad Ut vitae enim esse auctor ullamcorper egestas sint eleifend lacus..', 8, 7, '617000', '3251', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(55, 'product 052', 'Lorem ipsum malesuada eu tincidunt Proin sollicitudin eu, lacus. dignissim officia diam Integer Vestibulum lectus. egestas. Cras Curabitur lacus. lacus. nisl sapien sem. Duis nisl,.', 10, 7, '224000', '1242', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(56, 'product 267', 'Lorem ipsum tempor. est, pede vitae Praesent Donec eiusmod egestas nisl vel sed est, convallis, volutpat. nulla elit id, Donec risus. purus nibh. Donec risus et et nulla et, ligula.', 9, 7, '846000', '2373', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(57, 'product 392', 'Lorem ipsum Suspendisse eget, Donec labore imperdiet. pede velit, diam. In lectus. magna dolor ultrices Curabitur Aenean odio. condimentum. pretium turpis elit lacus bibendum nunc. felis..', 10, 1, '254000', '5648', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(58, 'product 352', 'Lorem ipsum amet, non metus, erat vulputate, quis, semper ipsum. ut, et mattis est, augue rhoncus non vulputate pede. arcu ut, ut eu non,.', 7, 1, '244000', '3738', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(59, 'product 960', 'Lorem ipsum leo. at bibendum interdum non, habitasse risus fames nisi at, laoreet lacinia, consequat. augue. Suspendisse ultrices ac amet Nulla.', 1, 2, '841000', '3894', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(60, 'product 607', 'Lorem ipsum condimentum. aliquet, imperdiet turpis In ultrices vehicula ornare dignissim eleifend facilisis ac Sed tortor vel, odio. tellus non quis, erat. nunc. Donec diam,.', 8, 8, '356000', '5933', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(61, 'product 459', 'Lorem ipsum pulvinar. orci ac at, Fusce sed diam nisi. fermentum. lacus mauris reprehenderit quis ut et ut, ac, eu Nulla Aliquam ullamcorper id, vestibulum ut.', 9, 10, '490000', '2925', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(62, 'product 825', 'Lorem ipsum lacus. risus. vel, velit. Donec eu, mollit Ut dapibus nec, Pellentesque nulla tortor sit Praesent Aliquam risus. eros quam.\r\n.', 7, 7, '993000', '1674', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(63, 'product 257', 'Lorem ipsum habitant ipsum purus eu, ligula Sed Suspendisse elit ipsum et et Fusce Vestibulum senectus lectus, Donec sem, nec, lacus..', 5, 10, '857000', '9841', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(64, 'product 157', 'Lorem ipsum urna occaecat Nullam feugiat dictumst.\r\n habitasse bibendum pharetra Integer leo. turpis sapien vitae nisl Quisque egestas Vivamus malesuada eu, eleifend, odio. luctus eget, vulputate elit vestibulum eget,.', 6, 4, '740000', '1456', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(65, 'product 075', 'Lorem ipsum Suspendisse Praesent porttitor hac et dolor dignissim quam. elit dolore magna. eu, ac tempor. et, sapien ligula vestibulum ligula. hendrerit iaculis.', 7, 1, '694000', '1897', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(66, 'product 211', 'Lorem ipsum purus magna. facilisis lorem. libero. et Etiam vestibulum. non, turpis. vestibulum eleifend fermentum est, iaculis venenatis Integer mauris, condimentum. lacus. habitasse velit. euismod orci. iaculis.', 9, 4, '361000', '3322', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(67, 'product 244', 'Lorem ipsum sem. mi. dolor, imperdiet adipisicing purus. Curabitur pede Nullam elit Nullam orci sed nec Donec ut luctus in pellentesque. diam et, sapien,.', 9, 7, '148000', '8916', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(68, 'product 360', 'Lorem ipsum nisl purus Excepteur velit, dapibus lectus. Cras dictumst. bibendum ante fames fermentum eget sem non ac, consequat. pulvinar nisi.', 3, 3, '890000', '9023', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(69, 'product 721', 'Lorem ipsum nec, ornare urna ultricies. eleifend egestas. auctor, ante. metus. sapien non consequat elit. primis libero. tempor id, Quisque Donec tristique Mauris nulla quis eu elit, Suspendisse vel, interdum.', 1, 1, '140000', '1584', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(70, 'product 838', 'Lorem ipsum in commodo luctus eu ut, molestie lacus lacus Quisque eros adipiscing. lacus. sapien, a In ipsum ac malesuada.', 5, 2, '421000', '1361', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(71, 'product 644', 'Lorem ipsum ligula, tristique dictum consectetuer nulla. semper amet Nam id interdum at, arcu nisi tempus Integer luctus fames egestas Etiam metus..', 4, 7, '372000', '6611', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(72, 'product 347', 'Lorem ipsum qui condimentum. ac Pellentesque nisi. sapien lacus mollis Aliquam sapien Nulla augue sit quis Nullam lacinia adipiscing. lacinia pulvinar risus. in nisi ligula.', 9, 7, '355000', '1884', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(73, 'product 734', 'Lorem ipsum commodo, Donec hendrerit, dolor tortor dictum lacinia, pulvinar ut, turpis. diam. in vehicula habitant ligula. consequat sit id Cras placerat.', 3, 3, '704000', '2596', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(74, 'product 923', 'Lorem ipsum sollicitudin Duis qui feugiat Etiam ac id fermentum anim sed, arcu. deserunt pretium. risus Nam netus at, elit.', 9, 6, '971000', '9213', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(75, 'product 621', 'Lorem ipsum lectus. consequat occaecat proident, et netus habitasse non, egestas in, nisl ac tincidunt Excepteur Donec nec, rhoncus Nam dapibus orci posuere sapien. libero.\r\n Pellentesque eu condimentum.', 4, 4, '788000', '7478', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(76, 'product 756', 'Lorem ipsum bibendum, purus sint fermentum dictum sem odio. ligula sodales. quis quis, felis. feugiat morbi augue, urna lectus, vitae, Quisque orci. eget, habitant orci lacus adipisicing.', 7, 8, '707000', '1110', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(77, 'product 729', 'Lorem ipsum arcu eu aliqua. In diam, eu, do faucibus. platea nulla justo. at id, Duis commodo leo, iaculis Vestibulum.', 9, 10, '188000', '1648', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(78, 'product 077', 'Lorem ipsum rhoncus Pellentesque vel nec, orci quis lacus faucibus, euismod eget, ligula hendrerit platea lectus risus. sed odio. laborum.\r\n ac.', 8, 10, '548000', '8286', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(79, 'product 705', 'Lorem ipsum in, egestas. ullamcorper diam aliquet Etiam Nunc ac vulputate tempor pede mi. tincidunt sed ut, felis semper lacus. nisi posuere eu risus..', 2, 8, '086000', '9002', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(80, 'product 169', 'Lorem ipsum eget nulla. Suspendisse commodo In sodales nostrud lacus. turpis, malesuada justo. in, mauris, tempor condimentum. auctor eros. ac et Fusce sem Nulla tempor habitant elit. quis, porttitor.', 7, 10, '954000', '6039', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(81, 'product 652', 'Lorem ipsum fermentum hendrerit elit. nulla, egestas. Pellentesque erat Quisque nisi ad Proin tristique non arcu eu tempor ac, luctus, a minim augue, Etiam mauris tempor.', 3, 3, '723000', '1289', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(82, 'product 928', 'Lorem ipsum erat. id, arcu augue. non pede eu, habitasse Curabitur Ut et, scelerisque auctor, non, ligula lacus dolore adipiscing nulla. non lobortis.', 8, 4, '620000', '7529', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(83, 'product 088', 'Lorem ipsum Donec vulputate Aliquam non elit suscipit Etiam ac laoreet suscipit hac molestie egestas voluptate luctus Donec porttitor ac Nullam primis eu, fringilla nisl,.', 10, 5, '859000', '9190', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(84, 'product 440', 'Lorem ipsum eget, dapibus eget eleifend dictumst.\r\n Duis tristique Donec Maecenas condimentum. justo. aliquam metus. risus. quis senectus dictum orci.', 3, 4, '847000', '8648', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(85, 'product 194', 'Lorem ipsum erat pharetra, Curabitur eleifend, et eleifend vitae lacus in, orci sem mollit lacinia tincidunt bibendum ac erat Proin Nullam eget augue. ipsum et ipsum Ut.', 9, 8, '192000', '1056', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(86, 'product 786', 'Lorem ipsum dictumst. nec mauris. suscipit condimentum purus semper eget Donec dignissim aliquet pellentesque. orci. diam, nec, erat vulputate, Aliquam vestibulum Proin habitasse et.', 10, 10, '952000', '5126', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(87, 'product 765', 'Lorem ipsum iaculis orci, adipiscing. semper tincidunt nostrud sapien primis adipiscing Aliquam elit non luctus Duis id, Proin non, arcu id, sit nulla. turpis sed, a netus interdum Nam.', 8, 3, '612000', '3054', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(88, 'product 447', 'Lorem ipsum hendrerit, molestie pede Nunc eleifend, ipsum habitant tellus Mauris eu ac turpis metus. tempor. vestibulum non aliquam pulvinar sed, id, Donec molestie eu felis. Nullam nulla, amet, nisl.', 9, 2, '400000', '2183', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(89, 'product 956', 'Lorem ipsum tincidunt hendrerit, laoreet urna.\r\n ullamcorper, Curabitur felis. morbi nunc. metus, at tempor interdum bibendum, eiusmod arcu mauris, et Proin.', 1, 5, '602000', '7357', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(90, 'product 345', 'Lorem ipsum semper iaculis justo dictum hendrerit a, ut a neque. tempor orci. sed vel ultrices quis Nullam elementum, Etiam Praesent dolor erat. Aenean habitasse pariatur. hac dapibus.\r\n convallis, turpis..', 5, 10, '292000', '5996', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(91, 'product 274', 'Lorem ipsum ac malesuada et, sed, sem, habitant egestas Ut commodo Integer eros ac Donec In urna. consectetuer id, risus. primis gravida erat. eu.', 9, 7, '387000', '6648', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(92, 'product 691', 'Lorem ipsum sit dignissim lacus sed velit. Ut posuere Nullam amet a adipiscing et eros. amet, ligula. varius, aliquet. habitant elit..', 6, 6, '190000', '5895', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(93, 'product 159', 'Lorem ipsum erat. mauris massa euismod pulvinar. venenatis voluptate deserunt Vestibulum vel, Proin eu ligula. elit, aliquam adipiscing arcu. tellus Cras.', 8, 9, '858000', '1681', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(94, 'product 466', 'Lorem ipsum interdum lectus Nullam nonummy habitasse ultricies. nec, massa nisl pharetra tristique hac felis egestas. ipsum dictum, ut nunc. scelerisque.', 5, 7, '917000', '8267', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(95, 'product 919', 'Lorem ipsum Nulla vehicula. felis. eget scelerisque turpis erat. habitant venenatis urna, Donec imperdiet. sit est leo. rhoncus risus. laoreet in, Aenean nisi sapien consectetuer aliquam vel.', 4, 2, '527000', '1132', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(96, 'product 224', 'Lorem ipsum libero. dolore aliquip ut tempor. elit. hendrerit ac orci cubilia Integer leo, nulla. id habitasse consequat. sem quis mauris tincidunt Integer tristique congue,.', 6, 1, '575000', '8499', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(97, 'product 131', 'Lorem ipsum odio. pellentesque, nisi a, Ut Curabitur imperdiet ac bibendum id in, vitae laoreet aliquet vulputate sit mi, aliqua. turpis. ut non risus. at orci Proin.', 6, 5, '505000', '3662', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(98, 'product 648', 'Lorem ipsum massa Aenean pharetra tellus luctus In nibh. pellentesque velit. ac, elit, orci Fusce in nunc. libero. est. ac vehicula enim..', 9, 1, '206000', '6185', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(99, 'product 466', 'Lorem ipsum consequat leo, luctus, in, turpis. a, sit Donec Donec In Nunc sed nibh ligula odio. consectetuer Aenean iaculis eros elit dignissim Excepteur massa..', 3, 4, '476000', '3533', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(100, 'product 205', 'Lorem ipsum tristique sem Aenean bibendum in elit. felis. felis Duis sint mauris, Morbi diam. magna ligula Suspendisse eleifend feugiat quam.\r\n quis, culpa accumsan, Integer neque scelerisque Nulla viverra sit.', 6, 1, '559000', '5617', 0, '2023-04-24 11:36:34', '2023-04-24 11:36:34', NULL),
(101, 'add currency', 'flkdsfjldsjflsk', 1, 1, '12121212', '1212', NULL, '2023-04-25 10:30:17', '2023-04-25 10:30:17', NULL),
(102, 'sdflkdsfj', 'ldjfldskfjl', 1, 1, '221212', '12121', 2, '2023-04-25 10:34:28', '2023-04-25 10:53:59', NULL),
(103, 'currency test', 'lkdsfj lsdfjlksdjfl;d sjfdklsj;kfj;ds', 4, 1, '8800000', '9000', 5, '2023-04-26 05:54:04', '2023-04-26 05:54:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_groups`
--

CREATE TABLE `product_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_groups`
--

INSERT INTO `product_groups` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Product Group 00', '2023-03-24 09:35:40', '2023-03-24 09:35:40', NULL),
(2, 'Product Group 11', '2023-03-24 09:35:40', '2023-03-24 09:35:40', NULL),
(3, 'Product Group 22', '2023-03-24 09:35:40', '2023-03-24 09:35:40', NULL),
(4, 'Product Group 33', '2023-03-24 09:35:40', '2023-03-24 09:35:40', NULL),
(5, 'Product Group 44', '2023-03-24 09:35:40', '2023-03-24 09:35:40', NULL),
(6, 'Product Group 55', '2023-03-24 09:35:40', '2023-03-24 09:35:40', NULL),
(7, 'Product Group 66', '2023-03-24 09:35:40', '2023-03-24 09:35:40', NULL),
(8, 'Product Group 77', '2023-03-24 09:35:40', '2023-03-24 09:35:40', NULL),
(9, 'Product Group 88', '2023-03-24 09:35:40', '2023-03-24 09:35:40', NULL),
(10, 'Product Group 99', '2023-03-24 09:35:40', '2023-03-24 09:35:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `name`) VALUES
(1, 0, 'DefaultImage.jpg'),
(2, 1, 'DefaultImage.jpg'),
(3, 2, 'DefaultImage.jpg'),
(4, 3, 'DefaultImage.jpg'),
(5, 4, 'DefaultImage.jpg'),
(6, 5, 'DefaultImage.jpg'),
(7, 6, 'DefaultImage.jpg'),
(8, 7, 'DefaultImage.jpg'),
(9, 8, 'DefaultImage.jpg'),
(10, 9, 'DefaultImage.jpg'),
(11, 10, 'DefaultImage.jpg'),
(12, 11, 'DefaultImage.jpg'),
(13, 12, 'DefaultImage.jpg'),
(14, 13, 'DefaultImage.jpg'),
(15, 14, 'DefaultImage.jpg'),
(16, 15, 'DefaultImage.jpg'),
(17, 16, 'DefaultImage.jpg'),
(18, 17, 'DefaultImage.jpg'),
(19, 18, 'DefaultImage.jpg'),
(20, 19, 'DefaultImage.jpg'),
(21, 20, 'DefaultImage.jpg'),
(22, 21, 'DefaultImage.jpg'),
(23, 22, 'DefaultImage.jpg'),
(24, 23, 'DefaultImage.jpg'),
(25, 24, 'DefaultImage.jpg'),
(26, 25, 'DefaultImage.jpg'),
(27, 26, 'DefaultImage.jpg'),
(28, 27, 'DefaultImage.jpg'),
(29, 28, 'DefaultImage.jpg'),
(30, 29, 'DefaultImage.jpg'),
(31, 30, 'DefaultImage.jpg'),
(32, 31, 'DefaultImage.jpg'),
(33, 32, 'DefaultImage.jpg'),
(34, 33, 'DefaultImage.jpg'),
(35, 34, 'DefaultImage.jpg'),
(36, 35, 'DefaultImage.jpg'),
(37, 36, 'DefaultImage.jpg'),
(38, 37, 'DefaultImage.jpg'),
(39, 38, 'DefaultImage.jpg'),
(40, 39, 'DefaultImage.jpg'),
(41, 40, 'DefaultImage.jpg'),
(42, 41, 'DefaultImage.jpg'),
(43, 42, 'DefaultImage.jpg'),
(44, 43, 'DefaultImage.jpg'),
(45, 44, 'DefaultImage.jpg'),
(46, 45, 'DefaultImage.jpg'),
(47, 46, 'DefaultImage.jpg'),
(48, 47, 'DefaultImage.jpg'),
(49, 48, 'DefaultImage.jpg'),
(50, 49, 'DefaultImage.jpg'),
(51, 50, 'DefaultImage.jpg'),
(52, 51, 'DefaultImage.jpg'),
(53, 52, 'DefaultImage.jpg'),
(54, 53, 'DefaultImage.jpg'),
(55, 54, 'DefaultImage.jpg'),
(56, 55, 'DefaultImage.jpg'),
(57, 56, 'DefaultImage.jpg'),
(58, 57, 'DefaultImage.jpg'),
(59, 58, 'DefaultImage.jpg'),
(60, 59, 'DefaultImage.jpg'),
(61, 60, 'DefaultImage.jpg'),
(62, 61, 'DefaultImage.jpg'),
(63, 62, 'DefaultImage.jpg'),
(64, 63, 'DefaultImage.jpg'),
(65, 64, 'DefaultImage.jpg'),
(66, 65, 'DefaultImage.jpg'),
(67, 66, 'DefaultImage.jpg'),
(68, 67, 'DefaultImage.jpg'),
(69, 68, 'DefaultImage.jpg'),
(70, 69, 'DefaultImage.jpg'),
(71, 70, 'DefaultImage.jpg'),
(72, 71, 'DefaultImage.jpg'),
(73, 72, 'DefaultImage.jpg'),
(74, 73, 'DefaultImage.jpg'),
(75, 74, 'DefaultImage.jpg'),
(76, 75, 'DefaultImage.jpg'),
(77, 76, 'DefaultImage.jpg'),
(78, 77, 'DefaultImage.jpg'),
(79, 78, 'DefaultImage.jpg'),
(80, 79, 'DefaultImage.jpg'),
(81, 80, 'DefaultImage.jpg'),
(82, 81, 'DefaultImage.jpg'),
(83, 82, 'DefaultImage.jpg'),
(84, 83, 'DefaultImage.jpg'),
(85, 84, 'DefaultImage.jpg'),
(86, 85, 'DefaultImage.jpg'),
(87, 86, 'DefaultImage.jpg'),
(88, 87, 'DefaultImage.jpg'),
(89, 88, 'DefaultImage.jpg'),
(90, 89, 'DefaultImage.jpg'),
(91, 90, 'DefaultImage.jpg'),
(92, 91, 'DefaultImage.jpg'),
(93, 92, 'DefaultImage.jpg'),
(94, 93, 'DefaultImage.jpg'),
(95, 94, 'DefaultImage.jpg'),
(96, 95, 'DefaultImage.jpg'),
(97, 96, 'DefaultImage.jpg'),
(98, 97, 'DefaultImage.jpg'),
(99, 98, 'DefaultImage.jpg'),
(100, 99, 'DefaultImage.jpg'),
(101, 101, '6447f20990628.jpg'),
(102, 102, 'DefaultImage.jpg'),
(103, 103, '644902cc38018.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(30) NOT NULL,
  `route` varchar(50) NOT NULL,
  `sort` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `route`, `sort`) VALUES
(1, 'Manage Brands', 'ManageBrands', 2),
(2, 'Product Groups', 'ProductGroups', 3),
(3, 'Manage Products', 'ManageProducts', 4),
(4, 'Shipping Method', 'ShippingMethod', 5),
(5, 'Orders Status', 'OrdersStatus', 6),
(6, 'Manage Currency', 'Currency', 7),
(7, 'Quit', 'Exit', 8),
(8, 'Edit Profile', 'EditProfile/get_user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method`
--

CREATE TABLE `shipping_method` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping_method`
--

INSERT INTO `shipping_method` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'shipping14', 'Lorem ipsum cursus quis, luctus Donec lacus. fames ipsum vel.', '2023-03-02 08:11:35', '2023-03-02 08:11:35', '2023-03-02 08:11:35'),
(6, 'shipping33', 'Lorem ipsum odio. pellentesque a Aliquam massa luctus, nonummy enim.', '2023-03-02 08:11:35', '2023-03-02 08:11:35', '2023-03-02 08:11:35'),
(7, 'shipping41', 'Lorem ipsum facilisi. odio.\r\n quis, pede Morbi et, in, exercitation.', '2023-03-02 08:11:35', '2023-03-02 08:11:35', '2023-03-02 08:11:35'),
(8, 'shipping15', 'Lorem ipsum amet ornare sed ut enim ligula elit et.', '2023-03-02 08:11:35', '2023-03-02 08:11:35', '2023-03-02 08:11:35'),
(9, 'shipping21', 'Lorem ipsum tellus eget, et non tempus ut iaculis massa..', '2023-03-02 08:11:35', '2023-03-02 08:11:35', '2023-03-02 08:11:35'),
(10, 'shipping25', 'Lorem ipsum gravida Integer Duis Proin vulputate et, sapien Curabitur.', '2023-03-02 08:11:35', '2023-03-02 08:11:35', '2023-03-02 08:11:35'),
(11, 'shipping29', 'Lorem ipsum orci, commodo nonummy, lacus. ac ipsum. Donec risus..', '2023-03-02 08:11:35', '2023-03-02 08:11:35', '2023-03-02 08:11:35'),
(12, 'shipping19', 'Lorem ipsum Nam laoreet Proin tincidunt urna. enim. felis. Praesent.', '2023-03-02 08:11:52', '2023-03-02 08:11:52', '2023-03-02 08:11:52'),
(13, 'shipping93', 'Lorem ipsum ipsum habitasse in urna, Pellentesque interdum eu ac,.', '2023-03-02 08:11:52', '2023-03-02 08:11:52', '2023-03-02 08:11:52'),
(14, 'shipping02', 'Lorem ipsum nulla mi. In incididunt Aenean eu, Donec fringilla.', '2023-03-02 08:11:52', '2023-03-02 08:11:52', '2023-03-02 08:11:52'),
(15, 'shipping42', 'Lorem ipsum quis, quis lacinia leo, irure dictumst. ac Cras.', '2023-03-02 08:11:52', '2023-03-02 08:11:52', '2023-03-02 08:11:52'),
(16, 'shipping67', 'Lorem ipsum dolor neque. nisl, In quis, in hendrerit morbi.', '2023-03-02 08:11:52', '2023-03-02 08:11:52', '2023-03-02 08:11:52'),
(17, 'shipping43', 'Lorem ipsum lacus malesuada faucibus. In turpis. Vestibulum lacus. purus.', '2023-03-02 08:11:52', '2023-03-02 08:11:52', '2023-03-02 08:11:52'),
(18, 'shipping63', 'Lorem ipsum Curabitur Excepteur incididunt eget interdum vitae commodo, Donec.', '2023-03-02 08:11:52', '2023-03-02 08:11:52', '2023-03-02 08:11:52'),
(19, 'shipping93', 'Lorem ipsum condimentum. consequat Aliquam aute urna. euismod iaculis Ut.', '2023-03-02 08:11:52', '2023-03-02 08:11:52', '2023-03-02 08:11:52'),
(20, 'shipping80', 'Lorem ipsum vestibulum nonummy laoreet sit id, gravida blandit. commodo.', '2023-03-02 08:11:52', '2023-03-02 08:11:52', '2023-03-02 08:11:52'),
(21, 'shipping31', 'Lorem ipsum commodo. adipiscing est, pharetra orci non Nulla urna,.', '2023-03-02 08:11:52', '2023-03-02 08:11:52', '2023-03-02 08:11:52'),
(22, 'shipping09', 'Lorem ipsum anim id eros laboris turpis elementum consectetuer condimentum.', '2023-03-02 08:11:56', '2023-03-02 08:11:56', '2023-03-02 08:11:56'),
(23, 'shipping84', 'Lorem ipsum ullamcorper hendrerit, pretium. eleifend, nulla, a magna Fusce.', '2023-03-02 08:11:56', '2023-03-02 08:11:56', '2023-03-02 08:11:56'),
(24, 'shipping99', 'Lorem ipsum vitae congue, elit Donec felis senectus massa commodo..', '2023-03-02 08:11:56', '2023-03-02 08:11:56', '2023-03-02 08:11:56'),
(25, 'shipping54', 'Lorem ipsum et justo. luctus pharetra, Nullam sed lacus. arcu..', '2023-03-02 08:11:56', '2023-03-02 08:11:56', '2023-03-02 08:11:56'),
(26, 'shipping94', 'Lorem ipsum Cras non, velit. veniam, adipiscing orci dolor bibendum.', '2023-03-02 08:11:56', '2023-03-02 08:11:56', '2023-03-02 08:11:56'),
(27, 'shipping59', 'Lorem ipsum ut pharetra ligula pharetra, vestibulum ligula. tempus quis,.', '2023-03-02 08:11:56', '2023-03-02 08:11:56', '2023-03-02 08:11:56'),
(28, 'shipping08', 'Lorem ipsum in laoreet risus molestie occaecat risus. Quisque id.', '2023-03-02 08:11:56', '2023-03-02 08:11:56', '2023-03-02 08:11:56'),
(29, 'shipping51', 'Lorem ipsum est, id enim tempor felis ipsum aliquam do.', '2023-03-02 08:11:56', '2023-03-02 08:11:56', '2023-03-02 08:11:56'),
(30, 'shipping33', 'Lorem ipsum et eu elementum felis, ullamcorper ligula. vitae aliquip.', '2023-03-02 08:11:56', '2023-03-02 08:11:56', '2023-03-02 08:11:56'),
(31, 'shipping11', 'Lorem ipsum Excepteur eu eu, nisl lobortis id, rhoncus Quisque.', '2023-03-02 08:11:56', '2023-03-02 08:11:56', '2023-03-02 08:11:56'),
(32, 'hello', '', '2023-03-02 10:14:04', '2023-03-02 10:14:04', '0000-00-00 00:00:00'),
(33, 'hello2', '', '2023-03-02 10:28:26', '2023-03-02 10:28:26', '0000-00-00 00:00:00'),
(34, 'hello2', '', '2023-03-02 10:29:02', '2023-03-02 10:29:02', '0000-00-00 00:00:00'),
(35, 'hello3', '', '2023-03-02 10:30:16', '2023-03-02 10:30:16', '0000-00-00 00:00:00'),
(36, 'hello4', '', '2023-03-02 10:31:20', '2023-03-02 10:31:20', '0000-00-00 00:00:00'),
(37, 'dsfdsfdsf', '', '2023-03-04 06:18:59', '2023-03-04 06:18:59', '0000-00-00 00:00:00'),
(38, 'dsfdsfdsf', '', '2023-03-04 06:19:41', '2023-03-04 06:19:41', '0000-00-00 00:00:00'),
(39, 'dsfdsfdsf', '', '2023-03-04 06:20:08', '2023-03-04 06:20:08', '0000-00-00 00:00:00'),
(40, 'sdfdsfds', '', '2023-03-04 06:59:37', '2023-03-04 06:59:37', '0000-00-00 00:00:00'),
(41, 'sdfdsfds', '', '2023-03-04 07:00:35', '2023-03-04 07:00:35', '0000-00-00 00:00:00'),
(42, 'sdfddsfd', '', '2023-03-04 07:17:15', '2023-03-04 07:17:15', '0000-00-00 00:00:00'),
(43, 'dsfs', '', '2023-03-04 07:22:23', '2023-03-04 07:22:23', '0000-00-00 00:00:00'),
(44, 'sdfdsf', '', '2023-03-04 07:22:58', '2023-03-04 07:22:58', '0000-00-00 00:00:00'),
(45, 'ship', 'ship desc', '2023-03-04 07:40:36', '2023-03-04 07:40:36', '0000-00-00 00:00:00'),
(46, 'asas', 'asas', '2023-03-04 08:24:21', '2023-03-04 08:24:21', '0000-00-00 00:00:00'),
(47, 'ffff', 'ffff', '2023-03-04 08:29:09', '2023-03-04 08:29:09', '2023-03-04 08:09:29'),
(48, 'FIX', 'FIX', '2023-03-04 08:31:27', '2023-03-04 08:31:27', NULL),
(49, 'FIXX', 'FIXX', '2023-03-04 08:31:46', '2023-03-04 08:31:46', '2023-03-04 08:46:31'),
(50, 'saving', 'saving', '2023-03-04 08:42:23', '2023-03-04 08:42:23', NULL),
(51, 'save 222222', '12lk1lk2j1l2j1l2j1l2j1l2jl1j2', '2023-03-04 08:42:39', '2023-03-12 09:48:53', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`,`deleted_at`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_groups`
--
ALTER TABLE `product_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sort` (`sort`);

--
-- Indexes for table `shipping_method`
--
ALTER TABLE `shipping_method`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_status`
--
ALTER TABLE `orders_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `product_groups`
--
ALTER TABLE `product_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shipping_method`
--
ALTER TABLE `shipping_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
