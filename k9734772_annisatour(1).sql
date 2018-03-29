-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 08, 2018 at 04:39 AM
-- Server version: 5.5.58-cll
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `k9734772_annisatour`
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
(1, 'admin', 'admin', 'e00cf25ad42683b3df678c61f42c6bda', 'admin1', '1');

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
(1, 'ada', 'edwinlaksono12@gmail.com', '567', 'da');

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
(1, 1, 'Dashboard', '', 'menu-icon fa fa-tachometer', 'home', '', '2018-02-06 04:30:29', NULL),
(8, 8, 'Administrator', '', 'menu-icon fa fa-user', '#', '', '2017-10-13 17:57:17', NULL),
(2, 2, 'Slider', '', 'menu-icon fa fa-file-image-o', 'slider', '', '2018-02-06 04:30:36', NULL),
(3, 3, 'About', '', 'menu-icon fa fa-newspaper-o', 'about', '', '2018-02-06 04:30:41', NULL),
(4, 4, 'Produk', '', 'menu-icon fa fa-briefcase', 'produk', '', '2018-02-06 04:30:48', NULL),
(5, 5, 'Gallery', '', 'menu-icon fa fa-file-image-o', 'gallery', '', '2018-02-06 04:31:38', NULL),
(6, 6, 'Kontak', '', 'menu-icon fa fa-book', 'kontak', '', '2018-02-06 04:32:03', NULL),
(7, 7, 'Video', '', 'menu-icon fa fa-film', 'Video', '', '2017-10-26 21:02:50', NULL);

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
(1, 'Entry User', 8, '', '', 'user', '', '2018-02-06 04:26:47', NULL),
(2, 'Kategori Produk', 4, '', '', 'produk', '', '2018-02-06 04:27:30', NULL),
(3, 'Produk', 4, '', '', 'Produk/detail', '', '2017-10-17 17:34:26', NULL),
(4, 'Album', 5, '', '', 'gallery', '', '2018-02-06 04:27:40', NULL),
(5, 'Foto', 5, '', '', 'Gallery/foto', '', '2017-10-17 17:34:40', NULL);

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
(1, 1, 1, NULL, 1, NULL, NULL, '2017-09-25 16:49:01', 'direktur'),
(2, 8, 1, 0, 0, 0, 0, '2017-10-18 18:47:26', ''),
(3, 2, 1, 0, 1, 0, 0, '2017-10-13 19:29:46', ''),
(4, 3, 1, 0, 1, 0, 0, '2017-10-14 14:31:55', ''),
(5, 4, 1, 0, 1, 0, 0, '2017-10-15 19:22:01', ''),
(6, 5, 1, 0, 1, 0, 0, '2017-10-15 19:24:32', ''),
(7, 6, 1, 0, 1, 0, 0, '2017-10-18 18:47:15', ''),
(8, 7, 1, 0, 1, 0, 0, '2017-10-26 20:52:10', '');

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
(1, 1, 1, 0, 1, 0, 0, '2017-10-13 17:45:40', ''),
(2, 2, 1, 0, 1, 0, 0, '2017-10-15 22:59:02', ''),
(3, 3, 1, 0, 0, 0, 0, '2017-10-18 04:12:32', ''),
(4, 4, 1, 0, 1, 0, 0, '2017-10-15 22:59:16', ''),
(5, 5, 1, 0, 0, 0, 0, '2017-10-18 04:12:33', '');

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
(1, 'Untitled4l.png', '<p>Tentang Biro Perjalanan Annisa Tour</p>', 1, 'Annisa Tour', '<p>Tentang Biro Perjalanan Annisa Tour</p>', 'Annisa Tour');

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
(1, '2015', 'KL.jpg', 1, '2015', '<p>2015</p>', '2015'),
(6, '2016', '2016.jpg', 1, '2016', '<p>2016</p>', '2016'),
(7, '2017', 'pakettourbromo.jpg', 1, '2017', '<p>2017</p>', '2017');

-- --------------------------------------------------------

--
-- Table structure for table `tb_foto`
--

CREATE TABLE `tb_foto` (
  `id_gallery` int(11) NOT NULL,
  `gallery_nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `gallery_gambar` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
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
(19, 'Singapura', 'luarnegeri.jpg', 1, 1, 'Singapura', '<p>Singapura</p>', 'Singapura'),
(20, 'Malaysia', 'luarn.jpg', 1, 1, 'Malaysia', '<p>Malaysia</p>', 'Malaysia'),
(21, 'Luar negeri', 'luarng.jpg', 1, 1, 'Luar negeri', '<p>Luar negeri</p>', 'Luar negeri'),
(25, 'Bali', 'Universal_Studios_Singapore_lo', 1, 6, 'Bali', '<p>Bali</p>', 'Bali'),
(26, 'Bali', 'sunsbali.jpg', 1, 6, 'Bali', '<p>Bali</p>', 'Bali'),
(27, 'Bromo', 'bromo.jpg', 1, 7, 'Bromo', '<p>Bromo</p>', 'Bromo'),
(28, 'Bromo', 'bromo1.jpg', 1, 7, 'Bromo', '<p>Bromo</p>', 'Bromo');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_produk`
--

CREATE TABLE `tb_kategori_produk` (
  `id_produk` int(11) NOT NULL,
  `produk_utama` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `produk_gambar` varchar(200) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `produk_title_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `produk_deskripsi_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `produk_keyword_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori_produk`
--

INSERT INTO `tb_kategori_produk` (`id_produk`, `produk_utama`, `produk_gambar`, `id_admin`, `produk_title_meta`, `produk_deskripsi_meta`, `produk_keyword_meta`) VALUES
(6, 'PAKET TOUR MALANG', 'malang2.jpg', 1, 'PAKET TOUR MALANG', '<p>PAKET TOUR MALANG</p>', 'PAKET TOUR MALANG'),
(7, 'PAKET TOUR BALI', 'bali1.jpg', 1, 'PAKET TOUR BALI', '<p>PAKET TOUR BALI</p>', 'PAKET TOUR BALI'),
(8, 'PAKET TOUR LOMBOK', 'cbf696f747044c4a4d517feaca4875ea.jpg', 1, 'PAKET TOUR LOMBOK', '<p>PAKET TOUR LOMBOK</p>', 'PAKET TOUR LOMBOK'),
(9, 'PAKET TOUR LUAR NEGERI', 'EDIT.jpg', 1, 'PAKET TOUR LUAR NEGERI', '<p>PAKET TOUR LUAR NEGERI</p>', 'PAKET TOUR LUAR NEGERI');

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
(1, 'Annisa Tour', 'Annisa Tour', '<h5>JL.Danau maninjau selatan Blok D7 No.27, sawojajar, Sawojajar, Kedungkandang, Kota Malang, Jawa Timur 65142</h5>\n<p>0813-3343-3179</p>', 'Annisa Tour', 'Annisa Tour ', '<h5>JL.Danau maninjau selatan Blok D7 No.27, sawojajar, Sawojajar, Kedungkandang, Kota Malang, Jawa Timur 65142</h5>\n<p>0813-3343-3179</p>', 'Annisa Tour');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_detail` int(11) NOT NULL,
  `detail_judul` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `detail_deskripsi` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `detail_gambar` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
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
(4, 'PAKET TOUR BROMO', '<p><span><span>Harga</span><br /><span class=\"harga\">Rp. 650.000</span></span></p>\n<p><span>Gunung Bromo terletak di kawasan Taman Nasional Bromo Tengger Semeru menempati empat kabupaten di Provinsi Jawa Timur, Kabupaten Probolinggo, Malang, Pasuruan dan Lumajang. Gunung ini sangat populer dengan pemandangan matahari terbit yang sangat mempesona, biasanya turis harus mendaki pagi hari ke puncak gunung Bromo hanya untuk menikmati saat indah matahari terbit di antara gunung dan kawah aktif Bromo, tempat yang sempurna untuk menikmati matahari terbit adalah di Penanjakan. Jika Anda beruntung, ketika Anda turun dari gunung, Anda juga dapat melihat pelangi di atas lautan pasir di antara tebing yang mengelilingi daerah tersebut.</span><br /><br /><span>Selain menikmati saat matahari terbit dari Penanjakan, Anda juga bisa menikmati pemandangan kawasan gunung Bromo, gunung Batok dan gunung Semeru, lautan pasir dan kaldera yang luas dan Savana ( Bukit Teletubbies) dan Pure Poten yang terletak di tengah lautan pasir, tempat ini biasanya digunakan untuk upacara religius yang disebut Kasodo oleh masyarakat Tengger.</span><br /><br /><span>TOUR ITINERARY:&nbsp;</span><br /><span>DAY 1</span><br /><span>1. Kami jemput anda di Malang ( Airport atau Stasiun KA atau lokasi lain di kota Malang)&nbsp;</span><br /><span>2. Air Terjun Coban Rondo</span><br /><span>3. Jatim Park II ( Musium Satwa dan Batu Secret Zoo)&nbsp;</span><br /><span>4. BNS ( Batu Night Spectacular)&nbsp;</span><br /><span>5. Menuju Bromo</span><br /><span>6. Jika anda merasa perlu menginap di Bromo Tosari, kami dapat menyediakan homestay, dengan tambahan biaya Rp.100.000/ org utk beristirahat sebelum &amp; sesudah tour.</span><br /><br /><span>DAY 2</span><br /><span>1. Tiba di transit point sekitar Jam 02.00 pagi, istirahat sebentar kemudian langsung tour dengan menggunakan Jeep ke Pananjakan 1 untuk melihat Matahari terbit.</span><br /><span>2. Selesai dari Pananjakan kita turun ke lautan pasir, jeep parkir di pemberhentian Jeep. Peserta tour dapat berjalan kaki atau menunggang kuda menuju ke Kawah Bromo.</span><br /><span>3. Selesai dari Kawah Bromo, kembali ke Transit Point. Jika anda ingin ke ke Padang Savana / Bukit Teletubbies &amp; Lokasi shooting Film Pasir Berbisik tambah biaya Rp. 200.000/ jeep ( nego ke supir Jeep ) .</span><br /><span>4. Breakfast</span><br /><span>5. Tour selesai</span><br /><span>6. Diantar ke Airport / stasiun kereta / lokasi awal penjemputan / lokasi lainnya di Surabaya / Malang</span><br /><br /><span>NB :&nbsp;</span><br /><span>* Harga dapat berubah sewaktu-waktu disesuaikan dengan situasi dan kondisi ( long weekend &amp; holiday season)&nbsp;</span><br /><span>* Minimal peserta 5 orang</span></p>', 'WhatsApp Image 2018-02-08 at 1', 1, '6', 'PAKET TOUR BROMO', '<p>Harga<br /><span class=\"harga\">Rp. 650.000</span></p>\n<p>Gunung Bromo terletak di kawasan Taman Nasional Bromo Tengger Semeru menempati empat kabupaten di Provinsi Jawa Timur, Kabupaten Probolinggo', 'PAKET TOUR BROMO'),
(5, 'PAKET TOUR BROMO SEMPU ISLAND', '<p><span><span>Harga</span><br /><span class=\"harga\">Rp. 950.000</span></span></p>\n<p><span>Selain Gunung Bromo, Pulau Sempu adalah salah satu ikon pariwisata di Jawa Timur tidak kalah populer. Walaupun letak Gunung Bromo dan Pulau Sempu cukup jauh namun kombinasi paket wisata Bromo-Sempu menjadi banyak pilihan bagi mereka yang suka dengan wisata adventure. Sempu terletak di Kabupaten Malang, tepatnya di Pantai Selatan dan berbatasan dengan Sendang Biru. Pulau Sempu mempunyai luas daerah sekitar 877 hektar yang berbatasan langsung dengan Samudera Hindia. Keistimewaan yang bisa di nikmati dari Pulau Sempu adalah adanya Segara Anakan, sebuah telaga yang terletak di dalam Pulau Sempu yang airnya berasal dari deburan ombak pantai selatan. Berwisata di Pulau Sempu akan jauh dari hiruk pikuk kota. Suasananya yang asri dan masih alami akan menghilangkan kepenatan Anda karena rutinitas sehari-hari. Disini banyak ditemukan berbagai hewan langka seperti kera dan berbagai macam jenis burung . Untuk mencapai Obyek Wisata Pulau Sempu, setelah menyeberang dari pantai Sendang Biru Anda akan melakukan trekking / jungle trekking sekitar 2 jam untuk menuju Segara Anakan.</span><br /><br /><span>Paket Bromo Sempu, membutuhkan waktu paling tidak 3 hari 2 malam. 1 malam menginap di Hotel Bromo dan 1 malam menginap di Pulau Sempu</span><br /><br /><span>Jadwal Paket Bromo Sempu 3 Hari 2 Malam adalah sbb:&nbsp;</span><br /><br /><span>Hari 1 : Malang &ndash; Pulau Sempu</span><br /><span>- Paket Bromo Sempu di mulai dengan penjemputan di Malang ( Bandara / Stasiun/ Hotel) pagi hari, mulai start tour dengan berkendara menuju Pantai Sendang Biru sekitar 2 jam dari Malang ( jadwal wisata bisa disesuaikan dengan tiket pesawat/ kereta anda)&nbsp;</span><br /><span>- Setelah tiba di Pantai Sendang Biru istirahat sejenak dan menyeberang menuju Teluk Semut, sekitar 15 menit</span><br /><span>- Trekking Pulau Sempu start dari Teluk Semut menuju Segoro Anakan sekitar 2 jam ( kondisi medan kering)&nbsp;</span><br /><span>- Setelah tiba di Segoro Anakan , berenang , snorkeling, dll.</span><br /><span>- Istirahat dan bermalam di Pulau Sempu ( Camping Tenda)&nbsp;</span><br /><br /><span>Hari 2 : Wisata Pulau Sempu &ndash; Wisata Bromo</span><br /><span>- Setelah puas menikmati keindahan dan Explorasi Segoro Anakan sekitar jam 9 pagi trekking kembali menuju Teluk Semut</span><br /><span>- Menyeberang kembali ke Sendang Biru, kemudian mandi, makan dan persiapan menuju Bromo</span><br /><span>- Transfer ke Gunung Bromo, perjalanan sekitar 5-6 jam</span><br /><span>- Chek in Hotel di Bromo. Istirahat</span><br /><br /><span>Hari 3: Bromo Tour &ndash; Surabaya/ Malang</span><br /><span>- Bromo Tour start jam 3.30 pagi, menuju Gunung Penanjakan dengan kendaraan Jip/ Hardtop</span><br /><span>- Setelah puas menikmati Bromo Sunrise, turun ke Lautan Pasir Bromo</span><br /><span>- Dari parkiran Jip/ Hardtop dengan sewa kuda atau jalan kaki menuju kawah Gunung Bromo</span><br /><span>- Menaiki sekitar 250 anak tangga untuk mencapai puncak Gunung Bromo</span><br /><span>- Setelah puas explorasi Wisata Bromo, dilanjutkan ke Savanah, pasir berbisik dan kembali ke hotel</span><br /><span>- Sampai di hotel, breakfast, mandi, dan check out penginapan/ Hotel</span><br /><span>- Transfers out Surabaya/ Malang.</span><br /><span>- Program Paket Bromo Sempu 3 Hari 2 Malam selesai..</span><br /><br /><span>* Harga dapat berubah sewaktu-waktu disesuaikan dengan situasi dan kondisi ( long weekend &amp; holiday season)&nbsp;</span><br /><span>* Peserta minimal 5 orang</span></p>', 'sempu.jpg', 1, '6', 'PAKET TOUR BROMO SEMPU ISLAND', '<p>Harga<br /><span class=\"harga\">Rp. 950.000</span></p>\n<p>Selain Gunung Bromo, Pulau Sempu adalah salah satu ikon pariwisata di Jawa Timur tidak kalah populer. Walaupun letak Gunung Bromo dan Pulau ', 'PAKET TOUR BROMO SEMPU ISLAND'),
(6, 'PAKET BALI', '<p><span><span>Harga</span><br /><span class=\"harga\">Rp. 450.000</span></span></p>\n<p>Banyak sekali tempat menarik di Bali yang menunggu untuk Anda kunjungi. Tempat-tempat wisata yang tersebar memiliki keunikan masing-masing. Rasanya tak cukup satu hari untuk menikmati dan mengeksplorasi sebuah tempat wisata saja. Bahkan tidak sedikit yang kembali berkunjung ke Bali setelah kunjungan pertama mereka. Apakah Anda punya impian untuk berwisata ke Pulau Bali?&nbsp;</p>\n<p><br /><span>OBYEK WISATA PILIHAN :&nbsp;</span><br /><br /><span>1. Pantai Kuta</span><br /><span>2. Krisna Pusat Souvenir</span><br /><span>3. Pantai Pandawa</span><br /><span>4. Tanjung Benoa Water Sport</span><br /><span>5. Pasar Seni Sukawati</span><br /><span>6. Joger Luwus</span><br /><span>7. Danau Bratan Bedugul</span><br /><span>8. Pantai Tanah Lot</span><br /><span>9. Pusat makanan khas Bali</span><br /><br /><span>JADWAL PERJALANAN :&nbsp;</span><br /><br /><span>Hari 1</span><br /><span>Jam 14.30 Rombongan berangkat menuju Pulau Bali</span><br /><span>Jam 16.30 Transit &amp; Istirahat sejenak untuk makan malam di Probolinggo</span><br /><span>Jam 24.00 Sampai di Pelabuhan Ketapang Banyuwangi</span><br /><br /><span>Hari 2</span><br /><span>Jam 06.00 Sampai di Bali lalu Transit di RM Kertalangu untuk mandi &amp; makan pagi</span><br /><span>Jam 08.00 Setelah makan pagi rombongan menuju obyek wisata :&nbsp;</span><br /><span>Pantai Pandawa, Tanjung Benoa Water Sport lalu makan siang di Rest. Lokal selanjutnya menuju Krisna Pusat Souvenir dan Pantai Kuta. Dari Pantai Kuta menuju Hotel untuk check in dan makan malam ( acara bebas )&nbsp;</span><br /><br /><span>Hari 3</span><br /><span>Jam 07.00 Makan pagi di bufe Rest. hotel, lalu melanjutkan perjalanan menuju Obyek wisata : Pasar Seni Sukawati, Jogger Luwus selanjutnya makan siang di Bufe Rest. Air Tawar danau Beratan Bedugul sambil menikmati water sport dan terakhir rombongan menuju Pantai Tanah Lot lalu makan malam di Restaurant Bidadari &ndash; Negara. Rangkaian acara selesai langsung melanjutkan perjalanan ke Pelabuhan Gilimanuk.</span><br /><br /><span>Hari 4</span><br /><span>Jam 05.00 Sampai di Malang dan selesailah sudah acara Tour Bali.</span><br /><br /><span>Fasilitas :&nbsp;</span><br /><span>1. Bus Pariwisata ( AC, Video, Karaoke)&nbsp;</span><br /><span>2. Menginap 1 Malam di hotel kapasitas 4 orang/ room</span><br /><span>&bull; Fasilitas kamar AC</span><br /><span>3. Dapat Snack + Aqua saat pemberangkatan</span><br /><span>4. Donasi makan sesuai jadwal perjalanan</span><br /><span>5. Tiket masuk obyek wisata pilihan</span><br /><span>6. Didampingi Tour Leader dari Biro Perjalanan</span><br /><span>7. Sopir khusus Pariwisata</span><br /><span>8. Asuransi Jasa Raharja</span><br /><span>9. Tersedia pemandu guide tour lokal Bali</span><br /><br /><span>* Harga dapat berubah sewaktu-waktu disesuaikan dengan situasi dan kondisi ( long weekend &amp; holiday season)&nbsp;</span><br /><span>* Dapatkan harga khusus dengan minimal peserta 57 orang</span></p>', '1484872591882.jpg', 1, '7', 'PAKET BALI', '<p>Harga<br /><span class=\"harga\">Rp. 450.000</span></p>\n<p>Banyak sekali tempat menarik di Bali yang menunggu untuk Anda kunjungi. Tempat-tempat wisata yang tersebar memiliki keunikan m</p>', 'PAKET BALI'),
(8, 'PAKET TOUR MALANG-BATU 3H/2M', '<p><span>Harga : hubungi kami</span></p>\n<p><span>Paket Wisata Batu Malang atau Paket Tour Malang Batu City Tour 3 Hari 2 Malam, Adalah paket jala-jalan dan liburan ke Kota Wisata Batu Malang. Selain obyek wisata Bromo. Kota Batu Malang adalah tujuan utama wisata keluarga. Paket Tour Batu Malang ini start dari Bandara, Stasiun Kereta Api, Hotel di Kota Surabaya atau Kota Malang. Dengan mengunjungi berbagai obyek wisata di Kota Batu Malang yang terkenal sebagai kota wisata. Tempat wisata yang di kunjungi adalah pemandian Selecta/ selekta, Wisata Petik Apel, BNS, Paket Wisata Jatim Park Batu Malang, Wisata Kuliner, Wisata Belanja dll.</span><br /><br /><span>Detail program perjalanan Paket Wisata Batu Malang adalah sebagai berikut :&nbsp;</span><br /><br /><span>Hari 1: Bandara &ndash; Hotel di Batu Malang</span><br /><span>Penjemputan di tempat yang telah anda tentukan, dilanjutkan menuju Hotel di Batu Malang / Penginapan atau Villa di Kota Batu dan istirahat. Dilanjutkan mengunjungi wisata air terjun Coban Rondo. Setelah makan malam mengunjungi Wisata Malam Batu Night Spectakuler ( BNS) , setelah selesai kembali ke Hotel, istirahat.</span><br /><br /><span>Hari 2 : Selecta &ndash; Petik Apel &ndash; Jatim Park 2 Batu Malang</span><br /><span>Setelah makan pagi menuju menuju Selecta dan Wisata Agro Apel di kebun apel, Obyek Wisata Songgoriti dan kemudian di lajutkan mengunjungi Wisata Jatim Park 2 Batu Malang. Jalan- jalan Malam dan Wisata Kuliner ( Alun-Alun, Ijen Boulevard, dll)&nbsp;</span><br /><br /><span>Hari 3: Wisata Oleh-oleh &ndash; Candi Singosari &ndash; Transfer Out</span><br /><span>Setelah makan pagi di Hotel Batu dan chek out, dilanjutkan ke Wisata oleh-oleh khas Batu Malang, setelah itu di antar ke Bandara/ Stasiun Kota Surabaya/ Malang di perjalanan mengunjungi Wisata Candi Singosari. Program Paket Wisata Batu Malang berakhir</span><br /><br /><span>Optional tour di Kota Batu : Arung Jeram/ Rafting Batu, Paralayang, Outbond , Air Soft Gun, Motor Trail Adventure, Wisata Sepeda Gunung dan lain-lain</span><br /><br /><span>Fasilitas Paket Wisata Batu Malang 3H/ 2M :&nbsp;</span><br /><span>&ndash; Akomodasi Hotel 2 Malam di Kawasan Wisata Malang</span><br /><span>&ndash; Privat Car ( Sopir + BBM + AC)&nbsp;</span><br /><span>&ndash; Tiket masuk wisata batu malang</span><br /><span>&ndash; Parkir dan tol</span><br /><span>&ndash; Air mineral selama perjalanan</span><br /><span>&ndash; Breakfast</span><br /><br /><span>Tidak termasuk :&nbsp;</span><br /><span>&ndash; Makan siang dan malam</span><br /><span>&ndash; Travel asuransi</span><br /><span>&ndash; tips driver dan guide</span><br /><span>&ndash; kebutuhan pribadi</span><br /><br /><span>Silahkan Hubungi kami untuk info lebih detail</span></p>', 'batu1.jpg', 1, '6', 'PAKET TOUR MALANG-BATU 3H/2M', '<p>Harga : hubungi kami</p>\n<p>Paket Wisata Batu Malang atau Paket Tour Malang Batu City Tour 3 Hari 2 Malam, Adalah paket jala-jalan dan liburan ke Kota Wisata Batu Malang. Selain obyek wisata Bromo.', 'PAKET TOUR MALANG-BATU 3H/2M'),
(9, 'PAKET TOUR MATARAM', '<h4>Detail PAKET TOUR MATARAM</h4>\n<p><span>Hari Pertama :&nbsp;</span><br /><span>* Dari Bandara Anda dijemput crew Annisa Tour lalu menuju Rest.Lokal untuk makan siang selanjutnya rekreasi city tour Mataram ke Senggigi.</span></p>\n<p><span><span>Harga</span><br /><span class=\"harga\">Rp. 1.500.000</span></span></p>', 'WhatsApp Image 2018-02-08 at 1', 1, '8', 'Paket Tour Mataram', '<p><span>Hari Pertama :&nbsp;</span><br /><span>* Dari Bandara Anda dijemput crew Annisa Tour lalu menuju Rest.Lokal untuk makan siang selanjutnya rekreasi city tour Mataram ke Senggigi.</span></p>', 'Paket Tour Mataram'),
(10, 'PAKET LOMBOK', '<h4>Detail PAKET LOMBOK</h4>\n<p><br /><span>Harga</span><br /><span class=\"harga\">Rp. 1.250.000</span></p>\n<p>&nbsp;</p>\n<div class=\"desbox h-auto\">Paket Wisata Murah 3 Hari 2 Malam di Pulau Lombok<br /><br />Note : Paket ini untuk flight kedatangan siang dan keberangkatan sore dari/ ke Bandara International Lombok<br /><br />Rincian Program Paket Wisatanya sebagai berikut :&nbsp;<br /><br />Hari 1 : Airport - City Tour - Hotel ( MS, MM )&nbsp;<br /><br />Jemput di Bandara International Airport, diteruskan menuju ke Desa Sukarara / Desa Kain tenun Asli Lombok dan Makan Siang di RM Taliwang Khas Lombok dengan pelecing kangkungnya, Pura Meru/ Mayura di Cakranegara, Taman Narmada yang di kenal dengan Taman Replika dari Gunung Rinjani dan Air Awet Mudanya dan ke tempat oleh - oleh, sorenya menikmati Matahari terbenam di Bukit Malimbu ( disini anda dapat melihat pemandangan laut dengan panorama Gunung Agung Bali dan pulau Gili Trawangan, Meno dan Air. Makan Malam di restaurant Senggigi dan menuju ke Hotel untuk Istirahat.<br /><br />Hari 2 : Hotel - Gili Island ( Trawangan dan Meno ) - Hotel ( MS, MM )&nbsp;<br /><br />Wisata hari ini akan mengunjungi iconnya pulau Lombok yakni \" Gili Trawangan dan Gili Meno \" , disini anda akan bisa menikmati acara sendiri seperti snorkeling, bersepeda, bermain Kano, diving di gili, berkeliling pulau dengan CIDOMO, yakni alat transportasi asli Lombok yang sejenis dengan ANDONG ( diJawa) , biaya Sendiri dan siangnya istirahat sambil Makan Siang di restaurant Trawangan, beralih ke Gili Meno untuk menikmati Snorkeling juga di tempat ini dan berphoto ria, sorenya balik ke Senggigi dan malamnya kami akan jemput kembali untuk makan malam di Warung Seafood Senggigi - Acara sampai selesai.<br /><br />Hari 3 : Hotel - Shopping Tour - Pantai Tanjung A\' an Kuta Lombok - Bandara ( MS )&nbsp;<br /><br />Setelah makan pagi di hotel dan sambil berkemas untuk check out langsung, kami jemput di Lobby hotel dan akan melakukan perburuan mencari oleh - oleh yang akan dijadikan buah tangan nantinya, seperti : Baju kaos Lombok, Souvenir, Makanan Khas lombok dan pernak-pernik lainnya. Acara akan berakhir di Airport sesuai dengan jadwal penerbangan anda.<br /><br />Harga Paket Wisata Tour 3 Hari 2 Malam ini sudah termasuk :&nbsp;<br /><br />- Penjemputan dari dan ke Bandara PP<br />- Transportasi AC, Driver, BBM<br />- Return Boat dari Senggigi ke Gili<br />- 2 malam menginap di hotel pilihan<br />- Guide Berpengalaman<br />- Tour Leader<br />- Tiket masuk setiap objek wisata<br />- Donasi Makan<br /><br />Harga Paket Wisata ini tidak termasuk :&nbsp;<br /><br />- Tiket pesawat, Airport Tax<br />- Keperluan pribadi ( Laundry, Telepon, Mini Bar, dll)&nbsp;<br />- Tipping untuk guide dan sopir<br /><br />* Harga dapat berubah sewaktu-waktu disesuaikan dengan situasi dan kondisi ( long weekend &amp; holiday season)&nbsp;<br />* Dapatkan harga khusus dengan minimal peserta 57 orang</div>', 'PAKET_LOMBOK.jpg', 1, '8', 'PAKET LOMBOK', '<h4>Detail PAKET LOMBOK</h4>\n<p><br />Harga<br /><span class=\"harga\">Rp. 1.250.000</span></p>\n<p>&nbsp;</p>\n<div class=\"desbox h-auto\">Paket Wisata Murah 3 Hari 2 Malam di Pulau Lombok<br /><br />Note', 'PAKET LOMBOK'),
(11, 'PAKET TOUR BANGKOK-PATTAYA', '<h4>Detail PAKET TOUR BANGKOK-PATTAYA</h4>\n<p><span>Harga</span><br /><span class=\"harga\">Rp. 1.900.000</span></p>\n<div class=\"desbox h-auto\">Selain Singapura, Bangkok bisa menjadi pilihan bagi Anda yang hobi berwisata belanja di Asia Tenggara. Ibu kota Thailand itu menyediakan beragam pusat perbelanjaan, mulai dari yang menjual barang dengan harga miring, hingga barang bermerek asli yang memang terbilang mahal.<br />Selain wisata belanja, Anda dapat menikmati keindahan Bangkok yang identik dengan kota budaya. Kuil-kuil Buddha yang tersebar di Bangkok mewakili seni arsitektur yang luhur sehingga menciptakan kesan berbeda. Bentuknya cenderung tinggi menjulang dengan warna-warna yang cerah. Kuil-kuil Bangkok ini memang tampak berbeda dengan Borobudur atau Prambanan di Yogyakarta, Indonesia.<br /><br />ITINERARY :&nbsp;<br /><br />Hari 01 : ARRIVAL - BANGKOK<br />Tiba di Swarnabhumi / Don Muang Airport Bangkok dijemput dan langsung transfer ke hotel<br />untuk check in dan istirahat.<br /><br />Hari 02 : BANGKOK - PATTAYA TOUR ( Mp/ Ms/ Mm)&nbsp;<br />Sarapan pagi di hotel, dilanjutkan menyusuri Sungai Chaophraya dengan menggunakan boat<br />dan mengunjungi Wat Arun dan Pasar Terapung. Kemudian dilanjutkan mengunjungi Pabrik<br />Kulit. Makan siang di local restaurant. Dilanjutkan tour menuju Pattaya dan singgah mengun-<br />jungi Snake Farm, Tiger Zoo, &amp; Crocodile Farm di Sriracha. Singgah juga di Galery Perhiasan<br />( ISO 9002) . Makan malam di local restaurant.<br />Optional tour : Cabaret Show dan Thai Girl Show<br />Shopping di Hard Rock Caf&eacute; dan Mike Shopping Mall, kemudian check in hotel dan bebas.<br /><br />Hari 03 : PATTAYA - BANGKOK ( Mp)&nbsp;<br />Makan pagi di hotel dilanjutkan tour ke Noongnooch Village, dan menyaksikan Thai Village<br />Show dan Atraksi Gajah. Makan siang di local restaurant, setelah itu transfer ke Bangkok dan<br />shopping di MBK Mall sampai tiba waktunya transfer ke Airport untuk penerbangan selanjutnya.<br />Acara selesai.<br /><br />HARGA SUDAH TERMASUK :&nbsp;<br /><br />1. Akomodasi 1 malam di Bangkok<br />2. Akomodasi 1 malam di Pattaya<br />3. Transfer in &amp; out<br />4. Makan dan tour sesuai program<br />5. Guide berbahasa Indonesia<br /><br />HARGA TIDAK TERMASUK :&nbsp;<br /><br />1. Tiket pesawat PP + Airport tax<br />2. Pengeluaran pribadi ( telephone,&nbsp;<br />Laundry, Mini Bar, dll)&nbsp;<br />3. Tour tambahan<br />4. Tips sopir dan Guide USD.3/ org/ day</div>', 'EDIIT.jpg', 1, '9', 'PAKET TOUR BANGKOK-PATTAYA', '<h4>Detail PAKET TOUR BANGKOK-PATTAYA</h4>\n<p>Harga<br /><span class=\"harga\">Rp. 1.900.000</span></p>\n<div class=\"desbox h-auto\">Selain Singapura, Bangkok bisa menjadi pilihan bagi Anda yang hobi berw', 'PAKET TOUR BANGKOK-PATTAYA'),
(12, 'PAKET SINGAPORE-MALAYSIA', '<h4 style=\"font-size: 10px;\">Detail PAKET SINGAPORE-MALAYSIA</h4>\n<p><span>Harga</span><br /><span class=\"harga\">Rp. 3.500.000</span></p>\n<div class=\"desbox h-auto\">ITINERARY :&nbsp;<br /><br />Hari 01: ARRIVAL SINGAPORE ( Ms/ Mm)&nbsp;<br />Tiba di Changi Airport Singapore, dijemput &amp; langsung makan siang. Dilanjutkan acara peserta<br />Kunjungan ke Sekolah / tempat lain menyesuaikan. Setelah itu City Tour Singapore ( Suntec City,&nbsp;<br />Esplenade/ theatre on the bay, Merlion Park, Rafles Landing Site, &amp; Shopping di Chinatown) .<br />Setelah itu shopping tour di kawasan Orchard Road / Bugis Junction / Mustafa Center sampai tiba<br />waktunya makan malam di lokal restaurant. Setelah itu check in hotel dan acara bebas...<br /><br />Hari 02 : SINGAPORE - KUALA LUMPUR via MALAKA ( Mp/ Ms/ Mm)&nbsp;<br />Sarapan pagi di hotel/ local restaurant, check out, langsung transfer dengan menggunakan bus menuju<br />Kuala Lumpur via Jahore Bahru dan Malacca. Singgah untuk mengunjungi Malacca ( Bandar Hilir,&nbsp;<br />Benteng Portugis, Farmosa, Sam Poh Tample) . Check in hotel dan acara bebas...<br /><br />Hari 03 : KUALA LUMPUR - GENTING HIGHLAND TOUR ( Mp/ Ms/ Mm)&nbsp;<br />Sarapan pagi di hotel, setelah itu acara peserta Kunjungan ke Sekolah / tempat lain menyesuaikan.<br />Dilanjutkan menikmati City Tour ( Istana Negara, Dataran Merdeka, Masjid Negara, KLCC Photo stop) .<br />Makan siang di local restaurant dan dilanjutkan menuju ke Genting Highland dimana peserta bisa me-<br />nikmati genting di ketinggian 6000 kaki di atas permukaan laut serta dapat menyaksikan Casino Game.<br />Dan sebelum singgah di Toko Bebas Pajak dan produk lokal, sore hari kembali ke Kuala Lumpur dilan-<br />jutkan makan malam di local restaurant. Setelah itu kembali ke hotel dan acara bebas..<br /><br />Hari 04 : KUALA LUMPUR - DEPARTURE ( Mp)&nbsp;<br />Sarapan pagi di hotel, setelah itu check out menuju Kota Satelit Putra Jaya. Setelah itu menuju<br />airport untuk penerbangan selanjutnya. Acara selesai...<br /><br />HARGA SUDAH TERMASUK :&nbsp;<br /><br />* 3 malam di hotel * * *&nbsp;<br />* Makan pagi, siang, &amp; malam sesuai<br />program<br />* Transportasi AC Private<br />* Guide berbahasa Indonesia<br />* Harga per orang dalam Singapore<br />Dollar<br /><br />HARGA TIDAK TERMASUK :&nbsp;<br /><br />* Tiket pesawat dan airport tax<br />* Pengeluaran pribadi<br />( telepon, laundry, mini bar, dll)&nbsp;<br />* Wisata tambahan<br />* Tip sopir, porter, dan giude</div>', 'WhatsApp Image 2018-02-08 at 1', 1, '9', 'PAKET SINGAPORE-MALAYSIA', '<h4>Detail PAKET SINGAPORE-MALAYSIA</h4>\n<p>Harga<br /><span class=\"harga\">Rp. 3.500.000</span></p>\n<div class=\"desbox h-auto\">ITINERARY :&nbsp;<br /><br />Hari 01: ARRIVAL SINGAPORE ( Ms/ Mm)&nbsp;<b', 'PAKET SINGAPORE-MALAYSIA');

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
(1, 'Annisa Tour', '<p>Paket Wisata Annisa TourMalang</p>', '', 1),
(3, 'Lorem ipsum dolor sit amet', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit.', '23_lg.jpg', 1),
(4, 'Lorem ipsum dolor sit amet', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit.', '9_lg.jpg', NULL);

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
-- Table structure for table `tb_video`
--

CREATE TABLE `tb_video` (
  `id_video` int(11) NOT NULL,
  `video_judul` varchar(30) DEFAULT NULL,
  `video_deskripsi` varchar(200) DEFAULT NULL,
  `frame_video` text,
  `video_title_meta` varchar(200) DEFAULT NULL,
  `video_keyword_meta` varchar(200) DEFAULT NULL,
  `video_deskripsi_meta` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_video`
--

INSERT INTO `tb_video` (`id_video`, `video_judul`, `video_deskripsi`, `frame_video`, `video_title_meta`, `video_keyword_meta`, `video_deskripsi_meta`) VALUES
(1, 'Tata Janeta', 'Risalah Hati', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/C0HFlLxS3j0\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL);

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
-- Indexes for table `tb_video`
--
ALTER TABLE `tb_video`
  ADD PRIMARY KEY (`id_video`);

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
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `form_kontak`
--
ALTER TABLE `form_kontak`
  MODIFY `id_form` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_foto`
--
ALTER TABLE `tb_foto`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tb_kategori_produk`
--
ALTER TABLE `tb_kategori_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_kontak`
--
ALTER TABLE `tb_kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_video`
--
ALTER TABLE `tb_video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
