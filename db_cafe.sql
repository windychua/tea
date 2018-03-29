-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2018 at 03:27 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `admin_nama` varchar(50) DEFAULT NULL,
  `admin_username` varchar(100) DEFAULT NULL,
  `admin_password` varchar(32) DEFAULT NULL,
  `admin_view_password` varchar(32) DEFAULT NULL,
  `admin_level` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `admin_nama`, `admin_username`, `admin_password`, `admin_view_password`, `admin_level`) VALUES
(1, 'admin', 'admin', 'e00cf25ad42683b3df678c61f42c6bda', 'admin1', '1'),
(2, 'Imtihan71', 'Imtihan71', 'eda3b644a8631ee0f33fc01ec2cb5993', 'widia72', '1');

-- --------------------------------------------------------

--
-- Table structure for table `form_kontak`
--

CREATE TABLE `form_kontak` (
  `id_form` int(11) NOT NULL,
  `nama_form` varchar(100) NOT NULL,
  `email_form` varchar(100) NOT NULL,
  `phone_form` varchar(30) NOT NULL,
  `pesan_form` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_kontak`
--

INSERT INTO `form_kontak` (`id_form`, `nama_form`, `email_form`, `phone_form`, `pesan_form`) VALUES
(1, 'a', 'as@a.com', 'skj', 'kjkas'),
(2, '0', '0', '0', '0'),
(3, 'e', 'edwinlaksono12@gmail.com', '456', 'rtert'),
(4, 'a', 'edwinlaksono12@gmail.com', '345', 'awdw'),
(5, 'ew', 'edwinlaksono12@gmail.com', '45', 'dsfsd');

-- --------------------------------------------------------

--
-- Table structure for table `mainmenu`
--

CREATE TABLE `mainmenu` (
  `seq` int(11) NOT NULL,
  `idmenu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `active_menu` varchar(50) NOT NULL,
  `icon_class` varchar(50) NOT NULL,
  `link_menu` varchar(50) NOT NULL,
  `menu_akses` varchar(12) NOT NULL,
  `entry_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainmenu`
--

INSERT INTO `mainmenu` (`seq`, `idmenu`, `nama_menu`, `active_menu`, `icon_class`, `link_menu`, `menu_akses`, `entry_date`, `entry_user`) VALUES
(1, 1, 'Dashboard', '', 'menu-icon fa fa-tachometer', 'Dashboard', '', '2017-10-27 13:35:22', NULL),
(8, 8, 'Administrator', '', 'menu-icon fa fa-user', '#', '', '2017-10-13 16:57:17', NULL),
(2, 2, 'Slider', '', 'menu-icon fa fa-file-image-o', 'Slider', '', '2017-10-17 16:28:56', NULL),
(3, 3, 'About', '', 'menu-icon fa fa-newspaper-o', 'About', '', '2017-10-17 16:29:00', NULL),
(4, 4, 'Produk', '', 'menu-icon fa fa-briefcase', 'Produk', '', '2017-10-17 16:29:05', NULL),
(5, 5, 'Gallery', '', 'menu-icon fa fa-file-image-o', 'Gallery', '', '2017-10-17 16:29:09', NULL),
(6, 6, 'Kontak', '', 'menu-icon fa fa-book', 'Kontak', '', '2017-10-17 16:29:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id_sub` int(11) NOT NULL,
  `nama_sub` varchar(50) NOT NULL,
  `mainmenu_idmenu` int(11) NOT NULL,
  `active_sub` varchar(20) NOT NULL,
  `icon_class` varchar(100) NOT NULL,
  `link_sub` varchar(50) NOT NULL,
  `sub_akses` varchar(12) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id_sub`, `nama_sub`, `mainmenu_idmenu`, `active_sub`, `icon_class`, `link_sub`, `sub_akses`, `entry_date`, `entry_user`) VALUES
(1, 'Entry User', 8, '', '', 'User', '', '2017-10-17 16:28:25', NULL),
(2, 'Kategori Produk', 4, '', '', 'Produk', '', '2017-10-17 16:34:17', NULL),
(3, 'Produk', 4, '', '', 'Produk/detail', '', '2017-10-17 16:34:26', NULL),
(4, 'Album', 5, '', '', 'Gallery', '', '2017-10-17 16:34:34', NULL),
(5, 'Foto', 5, '', '', 'Gallery/foto', '', '2017-10-17 16:34:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tab_akses_mainmenu`
--

CREATE TABLE `tab_akses_mainmenu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `c` int(11) DEFAULT '0',
  `r` int(11) DEFAULT '0',
  `u` int(11) DEFAULT '0',
  `d` int(11) DEFAULT '0',
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_akses_mainmenu`
--

INSERT INTO `tab_akses_mainmenu` (`id`, `id_menu`, `id_level`, `c`, `r`, `u`, `d`, `entry_date`, `entry_user`) VALUES
(1, 1, 1, NULL, 1, NULL, NULL, '2017-10-27 13:41:23', 'direktur'),
(2, 8, 1, 0, 0, 0, 0, '2017-10-27 13:41:26', ''),
(3, 2, 1, 0, 1, 0, 0, '2017-10-13 18:29:46', ''),
(4, 3, 1, 0, 1, 0, 0, '2017-10-14 13:31:55', ''),
(5, 4, 1, 0, 1, 0, 0, '2017-10-15 18:22:01', ''),
(6, 5, 1, 0, 1, 0, 0, '2017-10-15 18:24:32', ''),
(7, 6, 1, 0, 1, 0, 0, '2017-10-15 18:24:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `tab_akses_submenu`
--

CREATE TABLE `tab_akses_submenu` (
  `id` int(11) NOT NULL,
  `id_sub_menu` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `c` int(11) DEFAULT '0',
  `r` int(11) DEFAULT '0',
  `u` int(11) DEFAULT '0',
  `d` int(11) DEFAULT '0',
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_akses_submenu`
--

INSERT INTO `tab_akses_submenu` (`id`, `id_sub_menu`, `id_level`, `c`, `r`, `u`, `d`, `entry_date`, `entry_user`) VALUES
(1, 1, 1, 0, 1, 0, 0, '2017-10-13 16:45:40', ''),
(2, 2, 1, 0, 1, 0, 0, '2017-10-15 21:59:02', ''),
(3, 3, 1, 0, 0, 0, 0, '2017-10-18 03:12:32', ''),
(4, 4, 1, 0, 1, 0, 0, '2017-10-15 21:59:16', ''),
(5, 5, 1, 0, 0, 0, 0, '2017-10-18 03:12:33', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_about`
--

CREATE TABLE `tb_about` (
  `id_about` int(11) NOT NULL,
  `about_logo` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `about_deskripsi` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `id_admin` int(11) DEFAULT NULL,
  `about_title_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `about_deskripsi_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `about_keyword_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_about`
--

INSERT INTO `tb_about` (`id_about`, `about_logo`, `about_deskripsi`, `id_admin`, `about_title_meta`, `about_deskripsi_meta`, `about_keyword_meta`) VALUES
(1, 'cf4.jpg', 'Cafe adalah tempat untuk bersantai dan berbincang-bincang dimana pengunjung dapat memesan minuman dan makanan. Kafe termasuk tipe restoran namun lebih mengutamakan suasana rileks, hiburan dan kenyamanan pengunjung sehingga menyediakan tempat duduk yang nyaman dan alunan musik.', 1, 'cafe Batavia', 'cafe Batavia', 'cafe Batavia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_album`
--

CREATE TABLE `tb_album` (
  `id_album` int(11) NOT NULL,
  `album_nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `album_gambar` varchar(200) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `album_title_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `album_deskripsi_meta` varchar(200) DEFAULT NULL,
  `album_keyword_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_album`
--

INSERT INTO `tb_album` (`id_album`, `album_nama`, `album_gambar`, `id_admin`, `album_title_meta`, `album_deskripsi_meta`, `album_keyword_meta`) VALUES
(1, 'Chocolate cake', 'g1.jpg', 1, 'Misteri', '', 'Misteri'),
(11, 'Dessert Cake', 'g2.jpg', 1, 'Mitos', '', 'Mitos'),
(12, 'Sponge Cake', 'g3.jpg', 1, 'Budaya', '', 'Budaya'),
(13, 'Cream Cake', 'g4.jpg', 1, 'Legenda', '', 'Legenda');

-- --------------------------------------------------------

--
-- Table structure for table `tb_foto`
--

CREATE TABLE `tb_foto` (
  `id_gallery` int(11) NOT NULL,
  `gallery_nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `gallery_gambar` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `id_album` int(11) DEFAULT NULL,
  `gallery_title_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `gallery_deskripsi_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `gallery_keyword_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_foto`
--

INSERT INTO `tb_foto` (`id_gallery`, `gallery_nama`, `gallery_gambar`, `id_admin`, `id_album`, `gallery_title_meta`, `gallery_deskripsi_meta`, `gallery_keyword_meta`) VALUES
(25, 'Bakery In Cakes', 'g1.jpg', 1, 1, 'Bakery In Cakes', 'Bakery In Cakes', 'Bakery In Cakes'),
(26, 'Bakery In Cakes', 'g2.jpg', 1, 1, 'Bakery In Cakes', 'Bakery In Cakes', 'Bakery In Cakes'),
(27, 'Bakery In Cakes', 'g3.jpg', 1, 1, 'Bakery In Cakes', 'Bakery In Cakes', 'Bakery In Cakes'),
(28, 'Bakery In Cakes', 'g4.jpg', 1, 1, 'Bakery In Cakes', 'Bakery In Cakes', 'Bakery In Cakes'),
(29, 'Bakery In Cakes', 'g5.jpg', 1, 1, 'Bakery In Cakes', 'Bakery In Cakes', 'Bakery In Cakes'),
(30, 'Bakery In Cakes', 'g6.jpg', 1, 1, 'Bakery In Cakes', 'Bakery In Cakes', 'Bakery In Cakes'),
(31, 'Bakery In Cakes', 'g9.jpg', 1, 1, 'Bakery In Cakes', 'Bakery In Cakes', 'Bakery In Cakes'),
(32, 'Bakery In Cakes', 'g7.jpg', 1, 1, 'Bakery In Cakes', 'Bakery In Cakes', 'Bakery In Cakes'),
(33, 'Bakery In Cakes', 'g12.jpg', 1, 1, 'Bakery In Cakes', 'Bakery In Cakes', 'Bakery In Cakes'),
(34, 'Bakery In Cakes', 'g8.jpg', 1, 1, 'Bakery In Cakes', 'Bakery In Cakes', 'Bakery In Cakes'),
(35, 'Bakery In Cakes', 'g10.jpg', 1, 1, 'Bakery In Cakes', 'Bakery In Cakes', 'Bakery In Cakes'),
(36, 'Bakery In Cakes', 'g11.jpg', 1, 1, 'Bakery In Cakes', 'Bakery In Cakes', 'Bakery In Cakes');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_produk`
--

CREATE TABLE `tb_kategori_produk` (
  `id_produk` int(11) NOT NULL,
  `produk_utama` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `produk_gambar` varchar(200) NOT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `produk_title_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `produk_deskripsi_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `produk_keyword_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori_produk`
--

INSERT INTO `tb_kategori_produk` (`id_produk`, `produk_utama`, `produk_gambar`, `id_admin`, `produk_title_meta`, `produk_deskripsi_meta`, `produk_keyword_meta`) VALUES
(3, 'Makanan', '', 1, 'Makanan', 'Makanan', 'Makanan'),
(8, 'Minuman', '', 1, 'Minuman', 'Minuman', 'Minuman');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kontak`
--

CREATE TABLE `tb_kontak` (
  `id_kontak` int(11) NOT NULL,
  `kontak_lat` varchar(100) DEFAULT NULL,
  `kontak_long` varchar(100) DEFAULT NULL,
  `kontak_deskripsi` text,
  `kontak_judul` varchar(30) DEFAULT NULL,
  `kontak_title_meta` varchar(200) DEFAULT NULL,
  `kontak_deskripsi_meta` text,
  `kontak_keyword_meta` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kontak`
--

INSERT INTO `tb_kontak` (`id_kontak`, `kontak_lat`, `kontak_long`, `kontak_deskripsi`, `kontak_judul`, `kontak_title_meta`, `kontak_deskripsi_meta`, `kontak_keyword_meta`) VALUES
(1, '', '', '<ul>\r\n<li>Banyuwangi JawaTimur- Indonesia</li>\r\n<li>085230201114</li>\r\n<li>Cafe Ceria<a href=\"mailto:kursusbahasa@gmail.com\">@gmail.com</a></li>\r\n</ul>', '', 'Kontak Cafe', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d246.80229153344686!2d114.36902224265599!3d-8.219175674612776!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd145328f59ba6b%3A0x3d44da55c55dce7d!2sSoerabi+Tuan!5e0!3m2!1sid!2sid!4v1519098893112\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Kontak Wisata Misteri');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_detail` int(11) NOT NULL,
  `detail_judul` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `detail_deskripsi` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `detail_gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `id_produk` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `detail_title_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `detail_deskripsi_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `detail_keyword_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_detail`, `detail_judul`, `detail_deskripsi`, `detail_gambar`, `id_admin`, `id_produk`, `detail_title_meta`, `detail_deskripsi_meta`, `detail_keyword_meta`) VALUES
(21, 'Sponge Cake', 'Sponge cake merupakan cake yang sering digunakan sebagai dasar kue tart (decorating cake), teksturnya berongga agak kasar, dan apabila dipotong cenderung remahannya akan terjatuh. \r\nuntuk pembuatan sponge cake bisa dibilang gampang gampang susah karena upaya pembentukan rongga pada cake akan gagal saat salah dalam teknik pembuatannya.\r\nbanyak kegagalan terjadi adalah cake menjadi turun dan berat\r\n', 'c1.jpg', 1, '3', 'Sponge Cake', 'Sponge Cake', 'Sponge Cake'),
(22, 'Dessert Cake', 'Dessert adalah sajian yang disajikan diakhir courses dalam suatu set menu yang gunanya untuk menghilangkan kesan rasa hidangan yang terdahulu dan menutup babak penyajian makanan. Sajian dessert sering dinamakan The final course atau The last course dan berasa manis atau disebut sweet Hidangan penutup (dessert) adalah hidangan yang disajikan setelah hidangan utama (main course) sebagai hidangan penutup atau biasa disebut dengan istilah pencuci mulut.', 'c2.jpg', 1, '3', 'Dessert Cake', 'Dessert Cake', 'Dessert Cake'),
(23, 'Cream Cake', 'Kategori kue yang juga tergolong dalam patiseri adalah cake. Cake adalah kue yang kaya akan rasa. Dalam pembuatan cake banyak menggunakan lemak dan gula sebagai pembentuk struktur cake. Struktur cake sangat ditentukan oleh bahan yang digunakan. Sebagian besar proses pembuatan cake relative mudah, penggunaan formula yang tepat, ukuran bahan yang tepat dan keseimbangan penggunaan bahan serta metode yang benar akan menghasilkan cake yang baik.\r\nCream merupakan istilah dari produk patiseri yang menggu-nakan telur, susu dan gula. Apabila campuran tersebut dipanggang akan menghasilkan dessert crème Brulee atau Cream Caramel.\r\n', 'c3.jpg', 1, '3', 'Cream Cake', 'Cream Cake', 'Cream Cake'),
(24, 'Cream Cake', 'Kategori kue yang juga tergolong dalam patiseri adalah cake. Cake adalah kue yang kaya akan rasa. Dalam pembuatan cake banyak menggunakan lemak dan gula sebagai pembentuk struktur cake. Struktur cake sangat ditentukan oleh bahan yang digunakan. Sebagian besar proses pembuatan cake relative mudah, penggunaan formula yang tepat, ukuran bahan yang tepat dan keseimbangan penggunaan bahan serta metode yang benar akan menghasilkan cake yang baik.\r\nCream merupakan istilah dari produk patiseri yang menggu-nakan telur, susu dan gula. Apabila campuran tersebut dipanggang akan menghasilkan dessert crème Brulee atau Cream Caramel.\r\n', 'c4.jpg', 1, '3', 'Cream Cake', 'Cream Cake', 'Cream Cake'),
(25, 'Chocolate Cake', 'Bolu atau kue bolu (bahasa Inggris: cake) adalah kue berbahan dasar tepung (umumnya tepung terigu), gula, dan telur. Kue bolu dan cake umumnya dimatangkan dengan cara dipanggang di dalam oven, walaupun ada juga bolu yang dikukus, misalnya: bolu kukus atau brownies kukus. Cake yang dihias dengan lapisan (icing) dari krim mentega (buttercream), fondant, atau marzipan disebut kue tart (kue tarcis).', 'c5.jpg', 1, '3', 'Chocolate Cake', 'Chocolate Cake', 'Chocolate Cake'),
(26, 'Butter Cake', 'dibuat dari lemak (mentega /margarine) yg dikocok dengan gula, baru kemudian telur dimasukkan dan terakhir bahan kering (terigu, susu, BPDA ) dan cairan.', 'c6.jpg', 1, '3', 'Butter Cake', 'Butter Cake', 'Butter Cake'),
(27, 'Carrot Juice', 'Wortel merupakan salah satu sayuran yang populer diseluruh dunia. Ia sangat dikenal akan kandungan vitamin A nya yang sangat tinggi. Selain harganya cukup ekonomis, wortel adalah salah satu makanan yang sangat bermanfaat bagi kesehatan. Selain digunakan sebagai bagian dari kuliner, wortel juga banyak dikonsumsi dalam bentuk segar atau di buat jus', 'image1.jpg', 1, '8', 'Carrot Juice', 'Carrot Juice', 'Carrot Juice'),
(28, 'vegetable juice', 'Banyak sekali manfaat jus buah dan sayur untuk kesehatan dan kecantikan. Jus adalah minuman yang terbuat dari bahan buah-buahan atau sayuran yang dilumatkan dengan menggunakan tangan atau dengan mesin seperti blender, cara ini agar saripati buah atau sayur dapat keluar sehingga dapat dijadikan minuman yang menyegarkan serta menyehatkan.', 'image2.jpg', 1, '8', 'vegetable juice', 'vegetable juice', 'vegetable juice'),
(29, 'watermelon juice', 'Jus semangka merupakan minuman jus yang berasal dari buah semangka yang dipercaya memiliki rasa yang sangatlah nikmat. Semangka ini merupakan sebuah buah yang memiliki rasa yang sangatlah manis dan mengandung banyak air. Jenis dari buah ini juga sangatlah banyak sekali, mulai dari tanpa biji hingga berwarna kuning dan jenis lainnya.', 'image3.jpg', 1, '8', 'watermelon juice', 'watermelon juice', 'watermelon juice'),
(30, 'Orange juice', 'Jeruk adalah salah satu buah yang paling lezat yang sama-sama populer pada orang tua, dewasa dan anak-anak juga. Ini \'karunia Allah\' tidak hanya memberikan Anda rasa segar tetapi juga kekuatan perlawanan penyakit\r\n\r\n', 'image4.jpg', 1, '8', 'Orange juice', 'Orange juice', 'Orange juice'),
(31, 'melon juice', 'jus melon merupakan salah satu minuman yang terbuat dari buah melon yang tentunya sangat disukai oleh banyak orang. Hal ini dikarenakan karena jus ini memiliki rasa yang sangat lezat serta banyak memiliki manfaat yang baik untuk kesehatan.', 'image5.jpg', 1, '8', 'melon juice', 'melon juice', 'melon juice'),
(32, 'tomato juice', 'Tomat merupakan salah satu jenis buah ataupun sayuran yang paling sering dikonsumsi oleh orang-orang. Baik sebagai bahan campuran pada makanan ataupun diolah dalam berntuk tertentu, salah satu olahan dari tomat yang paling populer adalah jus tomat.', 'image6.jpg', 1, '8', 'tomato juice', 'tomato juice', 'tomato juice');

-- --------------------------------------------------------

--
-- Table structure for table `tb_slider`
--

CREATE TABLE `tb_slider` (
  `id_slider` int(11) NOT NULL,
  `slider_judul` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `slider_deskripsi` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `slider_gambar` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_slider`
--

INSERT INTO `tb_slider` (`id_slider`, `slider_judul`, `slider_deskripsi`, `slider_gambar`, `id_admin`) VALUES
(4, 'cafe', 'Dari segi fasilitas, cafe yang baik tentu akan menyajikan kenyamanan bagi pengunjungnya. Kenyamanan bisa didapat dengan beragam cara, semisal beberapa fasilitas gratis yang bisa dinikmati pengunjung. Atau fasilitas lainnya yang memberikan kesan mendalam bagi pengunjung seperti sajian live musik.', 'cf1.jpg', 1),
(5, '', 'Sudah menjadi rahasia umum, tiap kali kita ke Cafe baru dengan tempat lucu, pasti update di path. Tak ketinggalan, harus hasilkan foto yang instagramable. Tapi, yang bisa dijadikan manfaat adalah bisa berkumpul bersama kerabat demi melepas penat aktivitas padat selama sepekan, misalnya. Atau buat kamu yang sering galau, kumpul di kafe bisa jadi salah satu obat mujarap demi hilangkan kegalauan.', 'cf2.jpg', 1),
(6, '', 'Selain tentunya menyediakan kopi dan minuman serta makanan yang beragam, sebagian besar Cafe juga menyajikan alunan musik sebagai sarana menarik lain selain tentunya fasilitas wi-fi gratis. Mendengarkan musik terbukti dapat merileksasi pikiran. Rangsangan ritmis yang dihasilkan musik mampu membuat pikiran menjadi lebih rileks, serta menimbulkan perasaan positif, nyaman dan tenang.', 'cf3.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `foto`) VALUES
(0, 'ew', 'edwin.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `user_type_id` int(11) NOT NULL,
  `user_type_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`user_type_id`, `user_type_name`) VALUES
(1, 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `form_kontak`
--
ALTER TABLE `form_kontak`
  ADD PRIMARY KEY (`id_form`);

--
-- Indexes for table `mainmenu`
--
ALTER TABLE `mainmenu`
  ADD PRIMARY KEY (`seq`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id_sub`);

--
-- Indexes for table `tab_akses_mainmenu`
--
ALTER TABLE `tab_akses_mainmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_akses_submenu`
--
ALTER TABLE `tab_akses_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_about`
--
ALTER TABLE `tb_about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indexes for table `tb_album`
--
ALTER TABLE `tb_album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `tb_foto`
--
ALTER TABLE `tb_foto`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `tb_kategori_produk`
--
ALTER TABLE `tb_kategori_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_kontak`
--
ALTER TABLE `tb_kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `tb_slider`
--
ALTER TABLE `tb_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `form_kontak`
--
ALTER TABLE `form_kontak`
  MODIFY `id_form` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mainmenu`
--
ALTER TABLE `mainmenu`
  MODIFY `seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tab_akses_mainmenu`
--
ALTER TABLE `tab_akses_mainmenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tab_akses_submenu`
--
ALTER TABLE `tab_akses_submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_about`
--
ALTER TABLE `tb_about`
  MODIFY `id_about` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_album`
--
ALTER TABLE `tb_album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tb_foto`
--
ALTER TABLE `tb_foto`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `tb_kategori_produk`
--
ALTER TABLE `tb_kategori_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_kontak`
--
ALTER TABLE `tb_kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
