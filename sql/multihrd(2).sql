-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 24 Mar 2021 pada 15.07
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multihrd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `photo_profile`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'photo_profle/qLpDoU1M9PnawA1BwT71EpmD19Tc4n6tT4pMgdqo.jpg', 'Alvina Moore', 'superadmin@gmail.com', '2021-03-12 21:21:14', '$2y$10$gsN6BR2hAFbWZ5MTQ86vc.FDURTGCo2e6JrSw1M6EJE.Lsg4gXpF.', 'HwaxYPIymUpGDZj3sidhP5dm0ugAISavujNStbVey4gWjnPwh2vfn6awaDqR', '2021-03-12 21:21:14', '2021-03-14 00:16:14'),
(4, 'photo_profile/8ngejMEX7j5gN1OfAXKfZ6NZSNWZqLFirttFamTo.jpg', 'user roma', 'userroma@gmail.com', NULL, '$2y$10$HxZeAP9IruzE7waK4a1YXOCEPIZkcxEnZetZ.aqBwfuLJ.vzvH7N.', NULL, '2021-03-14 00:26:03', '2021-03-14 00:26:03'),
(6, 'photo_profile/J56W8fMYkIb5MrtVVWKcQdXTlxj1jECjld4O46HC.jpg', 'romadhon', 'userromaa@gmail.com', NULL, '$2y$10$1Ru8wnIKAucKxP.oHC1sqeXLHWJ8ZXB3pkwveXg.mqCq4oa6l5JLS', NULL, '2021-03-14 00:28:03', '2021-03-14 00:28:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=aktive,2 non-aktive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `banners`
--

INSERT INTO `banners` (`id`, `photo_banner`, `judul`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(10, 'https://via.placeholder.com/1101x450', 'banner 1', 'banner-1', 1, '2021-02-05 09:27:56', '2021-02-05 09:27:56'),
(11, 'https://via.placeholder.com/1100x450', 'banner 2', 'banner-2', 1, '2021-02-05 09:27:56', '2021-02-05 09:27:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `indonesia_cities`
--

CREATE TABLE `indonesia_cities` (
  `id` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `indonesia_districts`
--

CREATE TABLE `indonesia_districts` (
  `id` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `indonesia_provinces`
--

CREATE TABLE `indonesia_provinces` (
  `id` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `indonesia_villages`
--

CREATE TABLE `indonesia_villages` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jasas`
--

CREATE TABLE `jasas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jasa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_jasa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` bigint(20) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `jumlah_dp` int(11) NOT NULL,
  `jumlah_dp_uang` bigint(20) NOT NULL,
  `dilihat` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jasas`
--

INSERT INTO `jasas` (`id`, `nama_jasa`, `slug`, `photo_jasa`, `deskripsi`, `kategori_id`, `user_id`, `vendor_id`, `harga`, `jumlah_dp`, `jumlah_dp_uang`, `dilihat`, `status`, `created_at`, `updated_at`) VALUES
(2, 'jasa tenda pernikahan', 'jasa-tenda-pernikahan', 'photo_jasa/AFr2LSV4cL0rc7hsjmaCH5haOCT74QbKyd7oxLgr.png', 'bagus', 3, 1, 994, 8700000, 30, 2610000, 0, 1, '2020-12-23 16:01:13', '2020-12-23 16:01:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama_kategori`, `icon`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'gedung', 'icon_kategori/6w3qE5A4Fr08wedOrrrVtxghshZUOG4Qn1ffagXE.png', 'gedung', '2020-12-22 15:15:07', '2020-12-22 15:15:07'),
(3, 'Dekorasi', 'icon_kategori/9A5gP3IfndRrdnYULUI9Ja45Pn2pnHWkHnCsjNaj.png', 'dekorasi', '2020-12-22 15:15:26', '2020-12-22 15:15:26'),
(4, 'entertaiment', 'icon_kategori/hWrGnYQ69jWF1lG6xVn0uW4U30fJiGzVsiZI94de.png', 'entertaiment', '2020-12-22 15:15:39', '2020-12-22 15:15:39'),
(5, 'katering', 'icon_kategori/XxOCzUobxT1mZ9bLkEUHFd6sTND8QsAAuxRJC7b8.png', 'katering', '2020-12-22 15:15:55', '2020-12-22 15:15:55'),
(6, 'photografer', 'icon_kategori/cklq2ib4AV6lopadmEQmV445ISfHpmDGPIioT2VV.png', 'photografer', '2020-12-22 15:16:09', '2020-12-22 15:16:09'),
(7, 'tata rias', 'icon_kategori/crmHoJlixD2vyEdFLFoFsxo6ZODK2T07v2wjnabg.png', 'tata-rias', '2020-12-22 15:16:25', '2020-12-22 15:16:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `labels`
--

CREATE TABLE `labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `labels`
--

INSERT INTO `labels` (`id`, `nama_label`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'promo akhir tahun 2021', 'promo-akhir-tahun-2021', '2021-02-17 07:04:28', '2021-02-17 07:09:53'),
(2, 'rekomendasi untuk kamu', 'rekomendasi-untuk-kamu', '2021-02-17 07:04:55', '2021-02-17 07:04:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `label_jasas`
--

CREATE TABLE `label_jasas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jasa_id` int(10) UNSIGNED NOT NULL,
  `label_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_03_13_041512_create_admins_table', 2),
(7, '2021_03_14_020848_tambah_photo_profile', 3),
(8, '2016_08_03_072729_create_provinces_table', 4),
(9, '2016_08_03_072750_create_cities_table', 4),
(10, '2016_08_03_072804_create_districts_table', 4),
(11, '2016_08_03_072819_create_villages_table', 4),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 4),
(13, '2021_03_21_102603_create_sessions_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_cities`
--

CREATE TABLE `m_cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('kabupaten','kota') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'kabupaten',
  `m_province_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `m_cities`
--

INSERT INTO `m_cities` (`id`, `name`, `level`, `m_province_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1101, 'simeulue', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1102, 'aceh singkil', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1103, 'aceh selatan', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1104, 'aceh tenggara', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1105, 'aceh timur', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1106, 'aceh tengah', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1107, 'aceh barat', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1108, 'aceh besar', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1109, 'pidie', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1110, 'bireuen', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1111, 'aceh utara', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1112, 'aceh barat daya', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1113, 'gayo lues', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1114, 'aceh tamiang', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1115, 'nagan raya', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1116, 'aceh jaya', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1117, 'bener meriah', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1118, 'pidie jaya', 'kabupaten', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1171, 'banda aceh', 'kota', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1172, 'sabang', 'kota', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1173, 'langsa', 'kota', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1174, 'lhokseumawe', 'kota', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1175, 'subulussalam', 'kota', 11, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1201, 'nias', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1202, 'mandailing natal', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1203, 'tapanuli selatan', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1204, 'tapanuli tengah', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1205, 'tapanuli utara', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1206, 'toba samosir', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1207, 'labuhan batu', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1208, 'asahan', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1209, 'simalungun', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1210, 'dairi', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1211, 'karo', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1212, 'deli serdang', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1213, 'langkat', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1214, 'nias selatan', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1215, 'humbang hasundutan', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1216, 'pakpak bharat', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1217, 'samosir', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1218, 'serdang bedagai', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1219, 'batu bara', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1220, 'padang lawas utara', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1221, 'padang lawas', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1222, 'labuhan batu selatan', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1223, 'labuhan batu utara', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1224, 'nias utara', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1225, 'nias barat', 'kabupaten', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1271, 'sibolga', 'kota', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1272, 'tanjung balai', 'kota', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1273, 'pematang siantar', 'kota', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1274, 'tebing tinggi', 'kota', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1275, 'medan', 'kota', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1276, 'binjai', 'kota', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1277, 'padangsidimpuan', 'kota', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1278, 'gunungsitoli', 'kota', 12, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1301, 'kepulauan mentawai', 'kabupaten', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1302, 'pesisir selatan', 'kabupaten', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1303, 'solok', 'kabupaten', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1304, 'sijunjung', 'kabupaten', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1305, 'tanah datar', 'kabupaten', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1306, 'padang pariaman', 'kabupaten', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1307, 'agam', 'kabupaten', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1308, 'lima puluh kota', 'kabupaten', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1309, 'pasaman', 'kabupaten', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1310, 'solok selatan', 'kabupaten', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1311, 'dharmasraya', 'kabupaten', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1312, 'pasaman barat', 'kabupaten', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1371, 'padang', 'kota', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1372, 'solok', 'kota', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1373, 'sawah lunto', 'kota', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1374, 'padang panjang', 'kota', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1375, 'bukittinggi', 'kota', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1376, 'payakumbuh', 'kota', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1377, 'pariaman', 'kota', 13, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1401, 'kuantan singingi', 'kabupaten', 14, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1402, 'indragiri hulu', 'kabupaten', 14, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1403, 'indragiri hilir', 'kabupaten', 14, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1404, 'pelalawan', 'kabupaten', 14, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1405, 's i a k', 'kabupaten', 14, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1406, 'kampar', 'kabupaten', 14, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1407, 'rokan hulu', 'kabupaten', 14, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1408, 'bengkalis', 'kabupaten', 14, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1409, 'rokan hilir', 'kabupaten', 14, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1410, 'kepulauan meranti', 'kabupaten', 14, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1471, 'pekanbaru', 'kota', 14, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1473, 'd u m a i', 'kota', 14, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1501, 'kerinci', 'kabupaten', 15, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1502, 'merangin', 'kabupaten', 15, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1503, 'sarolangun', 'kabupaten', 15, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1504, 'batang hari', 'kabupaten', 15, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1505, 'muaro jambi', 'kabupaten', 15, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1506, 'tanjung jabung timur', 'kabupaten', 15, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1507, 'tanjung jabung barat', 'kabupaten', 15, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1508, 'tebo', 'kabupaten', 15, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1509, 'bungo', 'kabupaten', 15, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1571, 'jambi', 'kota', 15, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1572, 'sungai penuh', 'kota', 15, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1601, 'ogan komering ulu', 'kabupaten', 16, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1602, 'ogan komering ilir', 'kabupaten', 16, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1603, 'muara enim', 'kabupaten', 16, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1604, 'lahat', 'kabupaten', 16, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1605, 'musi rawas', 'kabupaten', 16, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1606, 'musi banyuasin', 'kabupaten', 16, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1607, 'banyu asin', 'kabupaten', 16, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1608, 'ogan komering ulu selatan', 'kabupaten', 16, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1609, 'ogan komering ulu timur', 'kabupaten', 16, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1610, 'ogan ilir', 'kabupaten', 16, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1611, 'empat lawang', 'kabupaten', 16, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1612, 'penukal abab lematang ilir', 'kabupaten', 16, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1613, 'musi rawas utara', 'kabupaten', 16, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1671, 'palembang', 'kota', 16, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1672, 'prabumulih', 'kota', 16, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1673, 'pagar alam', 'kota', 16, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1674, 'lubuklinggau', 'kota', 16, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1701, 'bengkulu selatan', 'kabupaten', 17, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1702, 'rejang lebong', 'kabupaten', 17, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1703, 'bengkulu utara', 'kabupaten', 17, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1704, 'kaur', 'kabupaten', 17, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1705, 'seluma', 'kabupaten', 17, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1706, 'mukomuko', 'kabupaten', 17, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1707, 'lebong', 'kabupaten', 17, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1708, 'kepahiang', 'kabupaten', 17, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1709, 'bengkulu tengah', 'kabupaten', 17, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1771, 'bengkulu', 'kota', 17, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1801, 'lampung barat', 'kabupaten', 18, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1802, 'tanggamus', 'kabupaten', 18, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1803, 'lampung selatan', 'kabupaten', 18, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1804, 'lampung timur', 'kabupaten', 18, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1805, 'lampung tengah', 'kabupaten', 18, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1806, 'lampung utara', 'kabupaten', 18, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1807, 'way kanan', 'kabupaten', 18, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1808, 'tulangbawang', 'kabupaten', 18, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1809, 'pesawaran', 'kabupaten', 18, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1810, 'pringsewu', 'kabupaten', 18, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1811, 'mesuji', 'kabupaten', 18, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1812, 'tulang bawang barat', 'kabupaten', 18, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1813, 'pesisir barat', 'kabupaten', 18, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1871, 'bandar lampung', 'kota', 18, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1872, 'metro', 'kota', 18, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1901, 'bangka', 'kabupaten', 19, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1902, 'belitung', 'kabupaten', 19, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1903, 'bangka barat', 'kabupaten', 19, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1904, 'bangka tengah', 'kabupaten', 19, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1905, 'bangka selatan', 'kabupaten', 19, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1906, 'belitung timur', 'kabupaten', 19, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(1971, 'pangkal pinang', 'kota', 19, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(2101, 'karimun', 'kabupaten', 21, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(2102, 'bintan', 'kabupaten', 21, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(2103, 'natuna', 'kabupaten', 21, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(2104, 'lingga', 'kabupaten', 21, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(2105, 'kepulauan anambas', 'kabupaten', 21, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(2171, 'b a t a m', 'kota', 21, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(2172, 'tanjung pinang', 'kota', 21, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3101, 'kepulauan seribu', 'kabupaten', 31, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3171, 'jakarta selatan', 'kota', 31, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3172, 'jakarta timur', 'kota', 31, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3173, 'jakarta pusat', 'kota', 31, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3174, 'jakarta barat', 'kota', 31, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3175, 'jakarta utara', 'kota', 31, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3201, 'bogor', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3202, 'sukabumi', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3203, 'cianjur', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3204, 'bandung', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3205, 'garut', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3206, 'tasikmalaya', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3207, 'ciamis', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3208, 'kuningan', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3209, 'cirebon', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3210, 'majalengka', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3211, 'sumedang', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3212, 'indramayu', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3213, 'subang', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3214, 'purwakarta', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3215, 'karawang', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3216, 'bekasi', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3217, 'bandung barat', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3218, 'pangandaran', 'kabupaten', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3271, 'bogor', 'kota', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3272, 'sukabumi', 'kota', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3273, 'bandung', 'kota', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3274, 'cirebon', 'kota', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3275, 'bekasi', 'kota', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3276, 'depok', 'kota', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3277, 'cimahi', 'kota', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3278, 'tasikmalaya', 'kota', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3279, 'banjar', 'kota', 32, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3301, 'cilacap', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3302, 'banyumas', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3303, 'purbalingga', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3304, 'banjarnegara', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3305, 'kebumen', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3306, 'purworejo', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3307, 'wonosobo', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3308, 'magelang', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3309, 'boyolali', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3310, 'klaten', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3311, 'sukoharjo', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3312, 'wonogiri', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3313, 'karanganyar', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3314, 'sragen', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3315, 'grobogan', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3316, 'blora', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3317, 'rembang', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3318, 'pati', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3319, 'kudus', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3320, 'jepara', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3321, 'demak', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3322, 'semarang', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3323, 'temanggung', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3324, 'kendal', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3325, 'batang', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3326, 'pekalongan', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3327, 'pemalang', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3328, 'tegal', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3329, 'brebes', 'kabupaten', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3371, 'magelang', 'kota', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3372, 'surakarta', 'kota', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3373, 'salatiga', 'kota', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3374, 'semarang', 'kota', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3375, 'pekalongan', 'kota', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3376, 'tegal', 'kota', 33, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3401, 'kulon progo', 'kabupaten', 34, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3402, 'bantul', 'kabupaten', 34, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3403, 'gunung kidul', 'kabupaten', 34, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3404, 'sleman', 'kabupaten', 34, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3471, 'yogyakarta', 'kota', 34, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3501, 'pacitan', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3502, 'ponorogo', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3503, 'trenggalek', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3504, 'tulungagung', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3505, 'blitar', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3506, 'kediri', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3507, 'malang', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3508, 'lumajang', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3509, 'jember', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3510, 'banyuwangi', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3511, 'bondowoso', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3512, 'situbondo', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3513, 'probolinggo', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3514, 'pasuruan', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3515, 'sidoarjo', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3516, 'mojokerto', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3517, 'jombang', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3518, 'nganjuk', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3519, 'madiun', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3520, 'magetan', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3521, 'ngawi', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3522, 'bojonegoro', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3523, 'tuban', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3524, 'lamongan', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3525, 'gresik', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3526, 'bangkalan', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3527, 'sampang', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3528, 'pamekasan', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3529, 'sumenep', 'kabupaten', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3571, 'kediri', 'kota', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3572, 'blitar', 'kota', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3573, 'malang', 'kota', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3574, 'probolinggo', 'kota', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3575, 'pasuruan', 'kota', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3576, 'mojokerto', 'kota', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3577, 'madiun', 'kota', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3578, 'surabaya', 'kota', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3579, 'batu', 'kota', 35, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3601, 'pandeglang', 'kabupaten', 36, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3602, 'lebak', 'kabupaten', 36, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3603, 'tangerang', 'kabupaten', 36, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3604, 'serang', 'kabupaten', 36, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3671, 'tangerang', 'kota', 36, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3672, 'cilegon', 'kota', 36, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3673, 'serang', 'kota', 36, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(3674, 'tangerang selatan', 'kota', 36, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5101, 'jembrana', 'kabupaten', 51, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5102, 'tabanan', 'kabupaten', 51, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5103, 'badung', 'kabupaten', 51, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5104, 'gianyar', 'kabupaten', 51, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5105, 'klungkung', 'kabupaten', 51, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5106, 'bangli', 'kabupaten', 51, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5107, 'karang asem', 'kabupaten', 51, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5108, 'buleleng', 'kabupaten', 51, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5171, 'denpasar', 'kota', 51, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5201, 'lombok barat', 'kabupaten', 52, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5202, 'lombok tengah', 'kabupaten', 52, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5203, 'lombok timur', 'kabupaten', 52, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5204, 'sumbawa', 'kabupaten', 52, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5205, 'dompu', 'kabupaten', 52, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5206, 'bima', 'kabupaten', 52, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5207, 'sumbawa barat', 'kabupaten', 52, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5208, 'lombok utara', 'kabupaten', 52, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5271, 'mataram', 'kota', 52, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5272, 'bima', 'kota', 52, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5301, 'sumba barat', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5302, 'sumba timur', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5303, 'kupang', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5304, 'timor tengah selatan', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5305, 'timor tengah utara', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5306, 'belu', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5307, 'alor', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5308, 'lembata', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5309, 'flores timur', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5310, 'sikka', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5311, 'ende', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5312, 'ngada', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5313, 'manggarai', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5314, 'rote ndao', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5315, 'manggarai barat', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5316, 'sumba tengah', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5317, 'sumba barat daya', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5318, 'nagekeo', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5319, 'manggarai timur', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5320, 'sabu raijua', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5321, 'malaka', 'kabupaten', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(5371, 'kupang', 'kota', 53, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6101, 'sambas', 'kabupaten', 61, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6102, 'bengkayang', 'kabupaten', 61, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6103, 'landak', 'kabupaten', 61, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6104, 'mempawah', 'kabupaten', 61, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6105, 'sanggau', 'kabupaten', 61, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6106, 'ketapang', 'kabupaten', 61, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6107, 'sintang', 'kabupaten', 61, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6108, 'kapuas hulu', 'kabupaten', 61, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6109, 'sekadau', 'kabupaten', 61, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6110, 'melawi', 'kabupaten', 61, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6111, 'kayong utara', 'kabupaten', 61, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6112, 'kubu raya', 'kabupaten', 61, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6171, 'pontianak', 'kota', 61, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6172, 'singkawang', 'kota', 61, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6201, 'kotawaringin barat', 'kabupaten', 62, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6202, 'kotawaringin timur', 'kabupaten', 62, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6203, 'kapuas', 'kabupaten', 62, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6204, 'barito selatan', 'kabupaten', 62, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6205, 'barito utara', 'kabupaten', 62, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6206, 'sukamara', 'kabupaten', 62, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6207, 'lamandau', 'kabupaten', 62, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6208, 'seruyan', 'kabupaten', 62, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6209, 'katingan', 'kabupaten', 62, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6210, 'pulang pisau', 'kabupaten', 62, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6211, 'gunung mas', 'kabupaten', 62, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6212, 'barito timur', 'kabupaten', 62, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6213, 'murung raya', 'kabupaten', 62, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6271, 'palangka raya', 'kota', 62, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6301, 'tanah laut', 'kabupaten', 63, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6302, 'kota baru', 'kabupaten', 63, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6303, 'banjar', 'kabupaten', 63, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6304, 'barito kuala', 'kabupaten', 63, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6305, 'tapin', 'kabupaten', 63, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6306, 'hulu sungai selatan', 'kabupaten', 63, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6307, 'hulu sungai tengah', 'kabupaten', 63, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6308, 'hulu sungai utara', 'kabupaten', 63, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6309, 'tabalong', 'kabupaten', 63, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6310, 'tanah bumbu', 'kabupaten', 63, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6311, 'balangan', 'kabupaten', 63, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6371, 'banjarmasin', 'kota', 63, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6372, 'banjar baru', 'kota', 63, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6401, 'paser', 'kabupaten', 64, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6402, 'kutai barat', 'kabupaten', 64, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6403, 'kutai kartanegara', 'kabupaten', 64, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6404, 'kutai timur', 'kabupaten', 64, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6405, 'berau', 'kabupaten', 64, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6409, 'penajam paser utara', 'kabupaten', 64, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6411, 'mahakam hulu', 'kabupaten', 64, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6471, 'balikpapan', 'kota', 64, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6472, 'samarinda', 'kota', 64, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6474, 'bontang', 'kota', 64, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6501, 'malinau', 'kabupaten', 65, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6502, 'bulungan', 'kabupaten', 65, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6503, 'tana tidung', 'kabupaten', 65, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6504, 'nunukan', 'kabupaten', 65, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(6571, 'tarakan', 'kota', 65, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7101, 'bolaang mongondow', 'kabupaten', 71, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7102, 'minahasa', 'kabupaten', 71, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7103, 'kepulauan sangihe', 'kabupaten', 71, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7104, 'kepulauan talaud', 'kabupaten', 71, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7105, 'minahasa selatan', 'kabupaten', 71, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7106, 'minahasa utara', 'kabupaten', 71, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7107, 'bolaang mongondow utara', 'kabupaten', 71, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7108, 'siau tagulandang biaro', 'kabupaten', 71, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7109, 'minahasa tenggara', 'kabupaten', 71, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7110, 'bolaang mongondow selatan', 'kabupaten', 71, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7111, 'bolaang mongondow timur', 'kabupaten', 71, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7171, 'manado', 'kota', 71, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7172, 'bitung', 'kota', 71, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7173, 'tomohon', 'kota', 71, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7174, 'kotamobagu', 'kota', 71, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7201, 'banggai kepulauan', 'kabupaten', 72, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7202, 'banggai', 'kabupaten', 72, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7203, 'morowali', 'kabupaten', 72, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7204, 'poso', 'kabupaten', 72, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7205, 'donggala', 'kabupaten', 72, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7206, 'toli-toli', 'kabupaten', 72, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7207, 'buol', 'kabupaten', 72, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7208, 'parigi moutong', 'kabupaten', 72, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7209, 'tojo una-una', 'kabupaten', 72, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7210, 'sigi', 'kabupaten', 72, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7211, 'banggai laut', 'kabupaten', 72, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7212, 'morowali utara', 'kabupaten', 72, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7271, 'palu', 'kota', 72, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7301, 'kepulauan selayar', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7302, 'bulukumba', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7303, 'bantaeng', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7304, 'jeneponto', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7305, 'takalar', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7306, 'gowa', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7307, 'sinjai', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7308, 'maros', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7309, 'pangkajene dan kepulauan', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7310, 'barru', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7311, 'bone', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7312, 'soppeng', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7313, 'wajo', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7314, 'sidenreng rappang', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7315, 'pinrang', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7316, 'enrekang', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7317, 'luwu', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7318, 'tana toraja', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7322, 'luwu utara', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7325, 'luwu timur', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7326, 'toraja utara', 'kabupaten', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7371, 'makassar', 'kota', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7372, 'parepare', 'kota', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7373, 'palopo', 'kota', 73, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7401, 'buton', 'kabupaten', 74, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7402, 'muna', 'kabupaten', 74, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7403, 'konawe', 'kabupaten', 74, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7404, 'kolaka', 'kabupaten', 74, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7405, 'konawe selatan', 'kabupaten', 74, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7406, 'bombana', 'kabupaten', 74, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7407, 'wakatobi', 'kabupaten', 74, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7408, 'kolaka utara', 'kabupaten', 74, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7409, 'buton utara', 'kabupaten', 74, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7410, 'konawe utara', 'kabupaten', 74, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7411, 'kolaka timur', 'kabupaten', 74, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7412, 'konawe kepulauan', 'kabupaten', 74, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7413, 'muna barat', 'kabupaten', 74, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7414, 'buton tengah', 'kabupaten', 74, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7415, 'buton selatan', 'kabupaten', 74, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7471, 'kendari', 'kota', 74, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7472, 'baubau', 'kota', 74, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7501, 'boalemo', 'kabupaten', 75, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7502, 'gorontalo', 'kabupaten', 75, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7503, 'pohuwato', 'kabupaten', 75, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7504, 'bone bolango', 'kabupaten', 75, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7505, 'gorontalo utara', 'kabupaten', 75, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7571, 'gorontalo', 'kota', 75, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7601, 'majene', 'kabupaten', 76, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7602, 'polewali mandar', 'kabupaten', 76, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7603, 'mamasa', 'kabupaten', 76, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7604, 'mamuju', 'kabupaten', 76, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7605, 'mamuju utara', 'kabupaten', 76, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(7606, 'mamuju tengah', 'kabupaten', 76, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8101, 'maluku tenggara barat', 'kabupaten', 81, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8102, 'maluku tenggara', 'kabupaten', 81, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8103, 'maluku tengah', 'kabupaten', 81, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8104, 'buru', 'kabupaten', 81, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8105, 'kepulauan aru', 'kabupaten', 81, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8106, 'seram bagian barat', 'kabupaten', 81, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8107, 'seram bagian timur', 'kabupaten', 81, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8108, 'maluku barat daya', 'kabupaten', 81, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8109, 'buru selatan', 'kabupaten', 81, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8171, 'ambon', 'kota', 81, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8172, 'tual', 'kota', 81, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8201, 'halmahera barat', 'kabupaten', 82, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8202, 'halmahera tengah', 'kabupaten', 82, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8203, 'kepulauan sula', 'kabupaten', 82, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8204, 'halmahera selatan', 'kabupaten', 82, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8205, 'halmahera utara', 'kabupaten', 82, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8206, 'halmahera timur', 'kabupaten', 82, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8207, 'pulau morotai', 'kabupaten', 82, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8208, 'pulau taliabu', 'kabupaten', 82, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8271, 'ternate', 'kota', 82, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(8272, 'tidore kepulauan', 'kota', 82, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9101, 'fakfak', 'kabupaten', 91, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9102, 'kaimana', 'kabupaten', 91, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9103, 'teluk wondama', 'kabupaten', 91, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9104, 'teluk bintuni', 'kabupaten', 91, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9105, 'manokwari', 'kabupaten', 91, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9106, 'sorong selatan', 'kabupaten', 91, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9107, 'sorong', 'kabupaten', 91, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9108, 'raja ampat', 'kabupaten', 91, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9109, 'tambrauw', 'kabupaten', 91, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9110, 'maybrat', 'kabupaten', 91, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9111, 'manokwari selatan', 'kabupaten', 91, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9112, 'pegunungan arfak', 'kabupaten', 91, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9171, 'sorong', 'kota', 91, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9401, 'merauke', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9402, 'jayawijaya', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9403, 'jayapura', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9404, 'nabire', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9408, 'kepulauan yapen', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9409, 'biak numfor', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9410, 'paniai', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9411, 'puncak jaya', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9412, 'mimika', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9413, 'boven digoel', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9414, 'mappi', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9415, 'asmat', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9416, 'yahukimo', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9417, 'pegunungan bintang', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9418, 'tolikara', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9419, 'sarmi', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9420, 'keerom', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9426, 'waropen', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9427, 'supiori', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9428, 'mamberamo raya', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9429, 'nduga', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9430, 'lanny jaya', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9431, 'mamberamo tengah', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9432, 'yalimo', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9433, 'puncak', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9434, 'dogiyai', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9435, 'intan jaya', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9436, 'deiyai', 'kabupaten', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL),
(9471, 'jayapura', 'kota', 94, '2020-12-01 07:26:22', '2020-12-01 07:26:22', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `negoisasi_id` int(10) UNSIGNED NOT NULL,
  `kode_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qr_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_order` date NOT NULL,
  `waktu_order` time NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=menunggu pembayaran, 2=menunggu acara hari h, 3=tagihan pelunasan, 4=selesai',
  `metode_pembayaran` tinyint(4) NOT NULL COMMENT '1=dp dulu, 2= langsung lunas',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Kjd6629roeoTS6dP1RdywOzvf2a2HG0MjV8aVo8K', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:86.0) Gecko/20100101 Firefox/86.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakFoNHUwYnNnMjc4a0xsRHZKbDZiQVNNUnRvMVMwa2FUWW1yTlpLWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fX0=', 1616594848);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `jasa_id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'ini untuk data pembeli',
  `harga_total` int(10) UNSIGNED NOT NULL COMMENT 'harga deal',
  `down_payment` int(10) UNSIGNED NOT NULL,
  `sisa_pembayaran` int(10) UNSIGNED NOT NULL,
  `status` int(10) UNSIGNED NOT NULL COMMENT '0:menunggu pembayaran, 1:menuggu hari h, 2:menunggu pelunasan, 3: batal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksis`
--

INSERT INTO `transaksis` (`id`, `kode_transaksi`, `waktu_transaksi`, `jasa_id`, `vendor_id`, `user_id`, `harga_total`, `down_payment`, `sisa_pembayaran`, `status`, `created_at`, `updated_at`) VALUES
(411, 'd5S9Heh4FidNvOf', '2021-01-09 20:38:49', 2, 502, 506, 1170362881, 195590140, 1446792723, 1, '2021-01-19 08:25:11', '2021-01-19 08:25:11'),
(413, 'zshJ1wzHZx3fR1Y', '2021-01-09 20:38:49', 2, 503, 3, 1974077364, 382275990, 1164475074, 1, '2021-01-19 08:25:11', '2021-01-19 08:25:11'),
(575, 'fpwzMrvIPvWUM4X', '2021-01-09 20:38:49', 2, 504, 3, 1140978539, 670088014, 255414794, 3, '2021-01-19 08:48:28', '2021-01-19 08:48:28'),
(1001, 'Kshjori1Qot21gO', '2021-01-09 20:38:49', 2, 113, 35, 1646792478, 542128386, 1399974187, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1002, 'FPZG7ocVd28qKi5', '2021-01-09 20:38:49', 2, 198, 69, 1554633118, 407593293, 1128633853, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1003, 'd5ooa03CpeF8VzR', '2021-01-09 20:38:49', 2, 46, 68, 1922630197, 820562151, 1028635816, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1004, 'zrDErDaX8p5Vcab', '2021-01-09 20:38:49', 33, 12, 41, 1858997814, 97645343, 1384849672, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1005, 'Fd3JrweoiMjXNxI', '2021-01-09 20:38:49', 185, 34, 40, 1432556528, 584845694, 697267998, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1006, 'BdjoE8i5GV6Ptby', '2021-01-09 20:38:49', 55, 17, 77, 1636935090, 119620092, 494075061, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1007, 'GkAJ7AYHuI4hI76', '2021-01-09 20:38:49', 112, 36, 63, 1955344956, 182238524, 1379948248, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1008, 'kOmzWHkAOJS2DGs', '2021-01-09 20:38:49', 176, 169, 86, 1681488697, 835053671, 802746617, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1009, 'ykWH024RoKIasMQ', '2021-01-09 20:38:49', 24, 177, 14, 1562607766, 273302576, 392508422, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1010, 'sE3neREotcdz59q', '2021-01-09 20:38:49', 195, 37, 75, 1302139961, 257774119, 749322792, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1011, 'WvM3PdAJkN8Y7rH', '2021-01-09 20:38:49', 5, 37, 99, 1645323063, 127056756, 1150669867, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1012, 'SQMTBW1hkOZdBRB', '2021-01-09 20:38:49', 163, 60, 69, 1726835575, 700352966, 1472097761, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1013, 'CWoh3GxGybsbNWB', '2021-01-09 20:38:49', 163, 197, 60, 1652241836, 775969536, 1482761862, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1014, '3weBFs49Mm43h8Y', '2021-01-09 20:38:49', 11, 27, 95, 1510454120, 143676481, 1398254893, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1015, 'c7Ln4Zlaxm30fVZ', '2021-01-09 20:38:49', 193, 18, 46, 1535800205, 308703217, 1322405917, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1016, 'MTugGMacqoPomrU', '2021-01-09 20:38:49', 181, 198, 98, 1611846406, 100959574, 374302144, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1017, 'j1XrvuTCq88eaGI', '2021-01-09 20:38:49', 75, 144, 48, 1570713440, 116225345, 880238233, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1018, 'GvhMTeBS6H5VqOg', '2021-01-09 20:38:49', 86, 47, 70, 1401248443, 654221022, 608654871, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1019, 'dqGxxP519C2raBp', '2021-01-09 20:38:49', 162, 147, 55, 1775850034, 653265589, 572136441, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1020, 'wjr2dS5G2JdlZB0', '2021-01-09 20:38:49', 31, 193, 7, 1101018913, 893930919, 856738530, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1021, 'nA6GX4Qf1qDV9Tk', '2021-01-09 20:38:49', 133, 41, 62, 1283383201, 493786626, 1135849046, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1022, 'VOOLXg6N5EJ4m1g', '2021-01-09 20:38:49', 92, 146, 68, 1542101647, 177173686, 216916409, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1023, '7SFx2xuJDNSq5jn', '2021-01-09 20:38:49', 1, 3, 16, 1860501745, 321494263, 1449521902, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1024, '8tEJyV6JQGrZLE7', '2021-01-09 20:38:49', 17, 18, 8, 1943280133, 720894784, 1085211329, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1025, 'DzCoP2iCFY2ycwK', '2021-01-09 20:38:49', 59, 58, 29, 1396681943, 221338397, 1295894804, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1026, 'DslHE55Wn398FM1', '2021-01-09 20:38:49', 25, 82, 45, 1465767727, 338102549, 1363887729, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1027, 'MGz7GldmQhfpeuJ', '2021-01-09 20:38:49', 13, 32, 58, 1781937346, 523685822, 1423386671, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1028, 'xKh9INg7gDxhjM5', '2021-01-09 20:38:49', 3, 158, 10, 1843869218, 719539188, 1479922817, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1029, 'ABwkrGqGVwVcrL2', '2021-01-09 20:38:49', 89, 166, 34, 1308195873, 628245821, 181935013, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1030, 'Qsz86qSQ3MzvJfz', '2021-01-09 20:38:49', 84, 98, 62, 1287520769, 402811940, 891500200, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1031, 'zGvdRzfmYxR0Auy', '2021-01-09 20:38:49', 20, 74, 27, 1167568638, 647421830, 193996589, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1032, 'r8KRe5Jx7G6log4', '2021-01-09 20:38:49', 45, 59, 9, 1489674195, 137154569, 567494509, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1033, 'NQUIYhTgqU8F26c', '2021-01-09 20:38:49', 131, 131, 100, 1239790040, 296243020, 362985748, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1034, '7Pq15b6DTiAuWOF', '2021-01-09 20:38:49', 75, 61, 90, 1029591256, 671523903, 111362405, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1035, 'LULgmMSgZjLS3Dj', '2021-01-09 20:38:49', 69, 25, 54, 1463302867, 966666294, 772456384, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1036, 'CNq4ZyZOHwAgXDy', '2021-01-09 20:38:49', 111, 87, 71, 1479852769, 372006834, 179540993, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1037, '5lZcU7voEN79YaA', '2021-01-09 20:38:49', 170, 169, 79, 1356403691, 367250012, 1286831791, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1038, '9WPCjCkbRIJikB4', '2021-01-09 20:38:49', 35, 150, 57, 1540491604, 373680395, 210941503, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1039, 'DKWAbYgzxcinCLi', '2021-01-09 20:38:49', 123, 183, 79, 1454436838, 730786726, 505004677, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1040, 'X85Ei6JrHobuwcG', '2021-01-09 20:38:49', 108, 79, 57, 1530013955, 404034988, 968084302, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1041, 'CJdSdrJJhL8LXDd', '2021-01-09 20:38:49', 16, 91, 100, 1336373680, 443625643, 638933836, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1042, 'IjVniZ3UXEzrSfz', '2021-01-09 20:38:49', 2, 86, 76, 1896342749, 841157350, 1432529811, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1043, 'yEzYe2HumzeCjhs', '2021-01-09 20:38:49', 151, 11, 75, 1673739262, 630458561, 422012381, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1044, 'Y2i95pGXPmCAgQv', '2021-01-09 20:38:49', 167, 165, 1, 1511639377, 624653235, 1248025741, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1045, 'iTIlT844mutby2b', '2021-01-09 20:38:49', 140, 167, 11, 1588375641, 207024289, 979763066, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1046, 'oHo0P4dAvQtDeGi', '2021-01-09 20:38:49', 40, 55, 37, 1310600841, 289034869, 385014403, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1047, 'VAo2YCLaOIF956K', '2021-01-09 20:38:49', 6, 16, 14, 1644487749, 144294510, 346142318, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1048, 'yFdleUhT9ULtu14', '2021-01-09 20:38:49', 182, 49, 38, 1540468144, 951996666, 1224196171, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1049, 'qPxUgYhCcO6BBiO', '2021-01-09 20:38:49', 107, 1, 52, 1530981771, 972549837, 177473074, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1050, 'EKFAZbwHlCAe6qv', '2021-01-09 20:38:49', 169, 198, 13, 1495870115, 281184053, 1076928590, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1051, '2DGyh0Cu02pab9o', '2021-01-09 20:38:49', 35, 38, 10, 1559813201, 623458006, 278239176, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1052, 'KMoUJj4S9rvA1aJ', '2021-01-09 20:38:49', 43, 147, 94, 1907094279, 885935842, 584387713, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1053, 'Ysv8lkeBPdwAQ8K', '2021-01-09 20:38:49', 168, 72, 85, 1560605940, 860532752, 564959926, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1054, 'gpTe1xT9ZqWJY0c', '2021-01-09 20:38:49', 103, 178, 34, 1974860380, 685992354, 281781893, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1055, 'XapzLWUEV7qP4cs', '2021-01-09 20:38:49', 159, 73, 33, 1222298648, 152100787, 733164339, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1056, 'jyP2kapWmOM1dHq', '2021-01-09 20:38:49', 15, 145, 91, 1048971767, 429509993, 777655238, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1057, 'Mjq6H8q0QdSti6K', '2021-01-09 20:38:49', 56, 79, 37, 1385857751, 185426584, 319902289, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1058, 'anP73YJOk3QfyO2', '2021-01-09 20:38:49', 125, 22, 9, 1745357187, 417112067, 1350858406, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1059, 'xkTR9ivEHqydrjl', '2021-01-09 20:38:49', 66, 32, 20, 1734566569, 971564654, 230985692, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1060, 'dG3QrL7V2kjUu6u', '2021-01-09 20:38:49', 29, 89, 45, 1623884154, 170072182, 1213735366, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1061, '8b8jLVG9USc8J5G', '2021-01-09 20:38:49', 147, 44, 62, 1129646445, 198045248, 1395454934, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1062, 'tbEPXNSmTXDMIpw', '2021-01-09 20:38:49', 42, 123, 57, 1193005337, 332416479, 337298597, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1063, 'NoqBa8Ziq5hGEyU', '2021-01-09 20:38:49', 41, 75, 54, 1107769090, 778476337, 216285984, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1064, 'CEyWXtd2MIQN0l3', '2021-01-09 20:38:49', 42, 123, 19, 1521830097, 348917653, 1235337380, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1065, 'vV3OgSRktvcvkEs', '2021-01-09 20:38:49', 43, 180, 88, 1217120388, 60544914, 103252379, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1066, 'ELuASFcLvfbDGxw', '2021-01-09 20:38:49', 193, 186, 38, 1533603483, 562340098, 767485319, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1067, '2e5YJRSIZR4DMFL', '2021-01-09 20:38:49', 169, 1, 52, 1964071338, 747373062, 1044358668, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1068, 'XQTGVxoSJ9xe6Xw', '2021-01-09 20:38:49', 12, 28, 9, 1338088074, 962457775, 1310410431, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1069, 'UEyLoMaUKef70NY', '2021-01-09 20:38:49', 8, 120, 10, 1966767707, 931044946, 354571575, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1070, '5qagSuwwQFHPmNc', '2021-01-09 20:38:49', 180, 100, 51, 1267904245, 467464019, 1355171755, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1071, 'Zenm5mRtPw26GUW', '2021-01-09 20:38:49', 111, 18, 57, 1363508951, 649058344, 119278757, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1072, 'ZzKuntFMz2ax5Ri', '2021-01-09 20:38:49', 181, 49, 91, 1606174664, 374072466, 586827627, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1073, 'l1kcjFQQpXdWYXa', '2021-01-09 20:38:49', 49, 2, 27, 1190201630, 355846010, 846898363, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1074, 'LzUd6ZUmaen33se', '2021-01-09 20:38:49', 52, 3, 23, 1745349766, 53540814, 397541691, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1075, '3L9o0bOphRwy4lM', '2021-01-09 20:38:49', 42, 21, 98, 1802975306, 69753086, 390886306, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1076, 'bCAcoERJE3oEp7w', '2021-01-09 20:38:49', 136, 122, 2, 1219302725, 105663406, 359367408, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1077, 'matU4uKkfdDudps', '2021-01-09 20:38:49', 131, 8, 15, 1991967273, 399855961, 1067504117, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1078, '4zBlCmwzCVdAfVY', '2021-01-09 20:38:49', 38, 36, 7, 1463109159, 84412424, 1318349722, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1079, 'KcptYDIi9IUPiCK', '2021-01-09 20:38:49', 10, 124, 62, 1044424211, 870707176, 1036633946, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1080, '2CviOncj34Oj4fo', '2021-01-09 20:38:49', 197, 177, 99, 1491939987, 253294923, 1400571561, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1081, 'D1lI4AzpHj82DkP', '2021-01-09 20:38:49', 106, 82, 45, 1592181482, 498897280, 765563931, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1082, 'Pp4Ss6VjB0JtnbJ', '2021-01-09 20:38:49', 137, 13, 32, 1092599351, 377729780, 1103494022, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1083, 'YdCgwUWIypM0qLx', '2021-01-09 20:38:49', 152, 51, 20, 1066662391, 473657270, 767972820, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1084, 'ASl0TpuMoCxap0w', '2021-01-09 20:38:49', 111, 56, 85, 1977718227, 345954592, 1050820124, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1085, '0LyaCHpceLQjSzU', '2021-01-09 20:38:49', 9, 68, 20, 1512508580, 589497423, 931950453, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1086, 'GYrqJLGLUsbydCp', '2021-01-09 20:38:49', 40, 154, 21, 1340063878, 205363121, 426925225, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1087, '5dy7JmwvOTydhPs', '2021-01-09 20:38:49', 35, 83, 97, 1547969110, 735099154, 577881645, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1088, 'RR4BrZCwcJhQum0', '2021-01-09 20:38:49', 193, 132, 74, 1868016212, 801434796, 1289010965, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1089, 'Fk2elkvlHxH9h4Q', '2021-01-09 20:38:49', 199, 4, 45, 1391998026, 121420463, 579433469, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1090, 'zU0ILAXyz8ZnzJq', '2021-01-09 20:38:49', 158, 7, 73, 1511444775, 841141967, 685760053, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1091, 'qPasiP2akkFsppz', '2021-01-09 20:38:49', 3, 50, 32, 1736268696, 456663616, 644536232, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1092, 'ZnxVfBLf70OAizO', '2021-01-09 20:38:49', 193, 144, 53, 1711812677, 767191169, 165008420, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1093, 'VlDauyNrDJaJfEJ', '2021-01-09 20:38:49', 112, 155, 86, 1428862582, 471982819, 413066935, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1094, '3PiVgafBEeRzeYH', '2021-01-09 20:38:49', 120, 177, 75, 1199848118, 531773804, 707044946, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1095, '6sxLqoGrYg9rE7z', '2021-01-09 20:38:49', 100, 22, 3, 1433784736, 650937515, 1287159081, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1096, 'ININYTb8D6JKnYb', '2021-01-09 20:38:49', 194, 181, 99, 1104709982, 135387572, 1022555091, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1097, 'IRZa4Y88IIVSz9y', '2021-01-09 20:38:49', 69, 31, 83, 1022333551, 301273817, 1458067581, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1098, 'ffdjC3YuCzgMp9j', '2021-01-09 20:38:49', 23, 2, 99, 1864505115, 324893140, 610028583, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1099, 'ycYMn1xmXpzApLo', '2021-01-09 20:38:49', 156, 19, 31, 1964022698, 364168652, 663462463, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1100, 'hzO6Dn1rgy9T4fx', '2021-01-09 20:38:49', 182, 44, 72, 1244441754, 211067769, 817693901, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1101, 'bKBBZpD9mmfQKT0', '2021-01-09 20:38:49', 38, 20, 17, 1782501494, 699227258, 303704998, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1102, '8Gk4CrWKekOCO0C', '2021-01-09 20:38:49', 158, 152, 88, 1676551885, 111292808, 1154607143, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1103, '21YcM90x7NkAdcF', '2021-01-09 20:38:49', 10, 112, 86, 1877293007, 613919141, 1213211488, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1104, '5k99qxaih6ORs6e', '2021-01-09 20:38:49', 74, 179, 63, 1951140850, 810783001, 338960883, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1105, 'GqQCFLXwe0ls1Q0', '2021-01-09 20:38:49', 54, 121, 51, 1082972633, 697583334, 1121243992, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1106, 'fVMsIjbFJqpdu7W', '2021-01-09 20:38:49', 131, 173, 2, 1407825974, 390113071, 1265122179, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1107, 'G4ssqf3df2bxZi8', '2021-01-09 20:38:49', 175, 64, 18, 1923032421, 587606467, 362082459, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1108, 'trAKSMIFyIc0g5b', '2021-01-09 20:38:49', 99, 197, 4, 1181269135, 420804926, 823194863, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1109, 'lHmIdtCOvK51ssd', '2021-01-09 20:38:49', 176, 47, 30, 1042461625, 320821116, 1373156167, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1110, 'Km4xno8dZBYfv9M', '2021-01-09 20:38:49', 172, 15, 36, 1315035074, 989480118, 930524816, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1111, 'rEnqd4XwNOjHJjJ', '2021-01-09 20:38:49', 89, 138, 66, 1940468476, 139785867, 920101625, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1112, 'g1Bc8v1F1rB7CrL', '2021-01-09 20:38:49', 19, 124, 46, 1392652122, 721860293, 990201018, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1113, 'LoAdMqlYQJrFZL7', '2021-01-09 20:38:49', 177, 156, 100, 1658558733, 913561117, 1354271281, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1114, 'DaX7IEVRxj6xcXu', '2021-01-09 20:38:49', 132, 3, 80, 1685392323, 733437695, 1317165823, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1115, 'va9Q0Uj8j27FFew', '2021-01-09 20:38:49', 82, 56, 19, 1573328493, 861515139, 1247512932, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1116, 'vEEDTrkNmfxvyB4', '2021-01-09 20:38:49', 67, 187, 76, 1472130596, 411048178, 446715280, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1117, 'swRFnUiLWooC7ZH', '2021-01-09 20:38:49', 1, 170, 79, 1710880818, 268431619, 285689510, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1118, 'JXnxYnmEMHhnybi', '2021-01-09 20:38:49', 159, 196, 56, 1551308971, 578525543, 1445609516, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1119, '2v5cjHzXa7QxvVk', '2021-01-09 20:38:49', 61, 174, 6, 1194322267, 613407753, 465715087, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1120, 'uJD9LhxW9amXIO3', '2021-01-09 20:38:49', 49, 55, 9, 1114433738, 405142117, 938985289, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1121, 'BsIURTiDUhBkAH9', '2021-01-09 20:38:49', 195, 37, 53, 1996191349, 465862992, 1211902700, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1122, 'dJ3bkQmAf1K1Mz4', '2021-01-09 20:38:49', 144, 197, 39, 1004541763, 735442550, 1298599588, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1123, 'zGjGK4tN7luCsan', '2021-01-09 20:38:49', 168, 25, 28, 1906197912, 487554187, 904604394, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1124, 'su6wGQLMeISglCK', '2021-01-09 20:38:49', 18, 9, 96, 1520744297, 438614474, 1374855263, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1125, 'y1ADTKmbhFNFvrU', '2021-01-09 20:38:49', 79, 194, 36, 1131685831, 629748023, 651487489, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1126, 'bRIqC8escQI3Umn', '2021-01-09 20:38:49', 112, 164, 71, 1543080816, 860311969, 1367736636, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1127, 'CZzTItrzID3IbqC', '2021-01-09 20:38:49', 123, 7, 95, 1535231644, 473201796, 1319183872, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1128, 'p648YEadhRjlkYu', '2021-01-09 20:38:49', 182, 75, 25, 1989534034, 835186751, 253147519, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1129, 'jN7EY0XRLS7flqO', '2021-01-09 20:38:49', 3, 150, 67, 1792174704, 914028732, 105587796, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1130, 'YoamYerHnFNnMt7', '2021-01-09 20:38:49', 78, 23, 87, 1547383626, 449354413, 181057812, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1131, 'Df2EcyUV2YgyrAt', '2021-01-09 20:38:49', 132, 25, 13, 1308670347, 309417387, 841390364, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1132, 'QgxzzKiKsngLxAg', '2021-01-09 20:38:49', 25, 6, 2, 1518255039, 579872457, 608275135, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1133, 'cMp4JskVOu7peKm', '2021-01-09 20:38:49', 147, 2, 67, 1781342823, 503159352, 1300366694, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1134, 'hrg0QMNubQNFU0B', '2021-01-09 20:38:49', 120, 138, 14, 1660452264, 60947579, 196375126, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1135, 'YpNAJmyIzrjcQoZ', '2021-01-09 20:38:49', 130, 80, 78, 1847794206, 229591393, 395033345, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1136, 'FASN9vIuReUJ9q1', '2021-01-09 20:38:49', 26, 186, 33, 1049159883, 600566212, 1485519573, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1137, 'l8JbEx9RzJb3zuX', '2021-01-09 20:38:49', 91, 115, 45, 1431768449, 372051488, 1383921885, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1138, '6ZtP1EH2dfjdpiC', '2021-01-09 20:38:49', 166, 49, 31, 1596174284, 82455298, 363669456, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1139, 'WdF1hSjVzeB2Wir', '2021-01-09 20:38:49', 184, 6, 42, 1827335996, 836330574, 689038949, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1140, '7ydEmSv9emtvpVS', '2021-01-09 20:38:49', 184, 43, 14, 1428484070, 741641326, 1045704406, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1141, 'H4QC7QWXfkg52zG', '2021-01-09 20:38:49', 3, 11, 3, 1154075221, 395990145, 245613367, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1142, 'tIyhvtS5gKFI1Ht', '2021-01-09 20:38:49', 17, 40, 1, 1687941867, 594661804, 753782591, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1143, 'gmMWVlywi9cjDKS', '2021-01-09 20:38:49', 175, 120, 77, 1117829509, 466828742, 1072824575, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1144, 'Z9XrgSIfKaAA39y', '2021-01-09 20:38:49', 62, 48, 25, 1838381969, 860105674, 864449406, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1145, '4dAC59MH7tSfofl', '2021-01-09 20:38:49', 117, 130, 69, 1647748902, 559615209, 1037637373, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1146, 'hnBMq65XdabNcvA', '2021-01-09 20:38:49', 105, 25, 55, 1361778123, 463869029, 871266747, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1147, '2jRdCXiHwWq3AUG', '2021-01-09 20:38:49', 179, 187, 40, 1386226230, 142869148, 954236432, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1148, 't17QNyQM6W7I8fP', '2021-01-09 20:38:49', 92, 111, 70, 1371280366, 774459054, 226423717, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1149, 'Iq4aGM14QmMUjem', '2021-01-09 20:38:49', 49, 109, 59, 1804087273, 688743205, 496473376, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1150, 'UwB1PNulVGQWIhU', '2021-01-09 20:38:49', 186, 150, 14, 1490074037, 828512891, 705741287, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1151, 'hxtmqRWh1yuLLkR', '2021-01-09 20:38:49', 137, 101, 43, 1747858175, 560222693, 803575907, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1152, 'ecfj6n5WARmD43a', '2021-01-09 20:38:49', 51, 173, 24, 1314812951, 531207702, 471554802, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1153, 'm7cpqq3CkGnKmTG', '2021-01-09 20:38:49', 109, 160, 48, 1078099909, 971479857, 1037778658, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1154, '5YUlnmnvbu8RhFw', '2021-01-09 20:38:49', 143, 182, 34, 1855159578, 254395261, 1187176701, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1155, 'sRAF9cTRRypiD2I', '2021-01-09 20:38:49', 92, 118, 19, 1174910175, 225806895, 1369749564, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1156, 'itI7HhaIusY5SNG', '2021-01-09 20:38:49', 81, 191, 54, 1554111883, 335444283, 1495459779, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1157, 'UZSciT5iMmAJL0K', '2021-01-09 20:38:49', 151, 94, 5, 1984499410, 564786018, 726608232, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1158, 'laX7kd7RG6oYYwp', '2021-01-09 20:38:49', 68, 142, 36, 1475213338, 260209703, 871795636, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1159, 'wGr3ncg0J15hSE2', '2021-01-09 20:38:49', 78, 136, 16, 1867052432, 816216002, 193609894, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1160, 'dWWbYV2q4JQIXMv', '2021-01-09 20:38:49', 37, 158, 77, 1263584797, 500989635, 140178038, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1161, 'KlUVxx4GcHpYrps', '2021-01-09 20:38:49', 147, 64, 47, 1538244371, 601862276, 813925415, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1162, 'ivRtG855TNTjUcG', '2021-01-09 20:38:49', 13, 20, 73, 1104669933, 752724634, 1324076474, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1163, 'kjsGVwu5smX4GSc', '2021-01-09 20:38:49', 101, 121, 73, 1296939214, 782200680, 1149293483, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1164, 'BPwt7ty6SGZB0I3', '2021-01-09 20:38:49', 160, 197, 70, 1469967052, 366895540, 1393557355, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1165, 'UMg8wClP8Ogcgnh', '2021-01-09 20:38:49', 31, 36, 21, 1713620416, 133580424, 1274313897, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1166, 'Q9CNV6XKzfZH8if', '2021-01-09 20:38:49', 36, 137, 99, 1664794526, 941346911, 248538992, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1167, 'OsA2l0c2GZfaf3D', '2021-01-09 20:38:49', 125, 23, 18, 1878921917, 50358679, 217456794, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1168, 'i8ukY1pPCvYUPW7', '2021-01-09 20:38:49', 96, 108, 88, 1178595912, 432766325, 316976201, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1169, 'Hi7IJVf8anWT0uc', '2021-01-09 20:38:49', 60, 165, 85, 1467085169, 763928293, 722807251, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1170, 'HmZncJnW33q62TA', '2021-01-09 20:38:49', 60, 200, 61, 1607211602, 970890819, 965556184, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1171, 'hNOIMC1kbXFRw3G', '2021-01-09 20:38:49', 154, 35, 54, 1534899313, 361470656, 1336007888, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1172, 'K54EbxjLDF5eFPP', '2021-01-09 20:38:49', 129, 177, 86, 1193091811, 875369134, 1490039601, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1173, 'owWIZX6Xb3epn7I', '2021-01-09 20:38:49', 156, 192, 71, 1335891589, 246163433, 150253099, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1174, 'ecAHjY6XnDCs3vA', '2021-01-09 20:38:49', 198, 56, 51, 1564581433, 437910357, 352689328, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1175, 'zDgrKvWwCrCi732', '2021-01-09 20:38:49', 155, 40, 40, 1485730563, 639940728, 1180367599, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1176, 'HoEB5ZoLT1D54n9', '2021-01-09 20:38:49', 53, 62, 16, 1403908951, 630168783, 272387291, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1177, '2612TQmW0VopfyE', '2021-01-09 20:38:49', 41, 126, 12, 1914107878, 284589194, 266781536, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1178, 'hiRim140EkTPY9T', '2021-01-09 20:38:49', 128, 78, 7, 1852893611, 994030534, 463166444, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1179, 'qf2WeGYwNc76IuJ', '2021-01-09 20:38:49', 19, 70, 100, 1371041959, 564714683, 421443722, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1180, 'x5Y7uGqDduDQpvz', '2021-01-09 20:38:49', 145, 117, 25, 1256551644, 325557023, 1283806629, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1181, 'RmHB8bkQtPkJ9IL', '2021-01-09 20:38:49', 72, 179, 60, 1231829823, 851274353, 1027550341, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1182, 'Yen8ZmlhxQsJlup', '2021-01-09 20:38:49', 52, 200, 77, 1356438413, 979156038, 576081137, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1183, 'm8pkF76rDx1MQgA', '2021-01-09 20:38:49', 163, 126, 23, 1915427479, 666720441, 417805902, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1184, 'Qcf4XjSrSAnew0p', '2021-01-09 20:38:49', 109, 1, 60, 1282362132, 649687020, 663418608, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1185, 'k9AEXluthjirHcg', '2021-01-09 20:38:49', 75, 184, 42, 1978701702, 423007521, 602386822, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1186, 'I2PTvaZRaRkgMgX', '2021-01-09 20:38:49', 59, 89, 7, 1331076348, 760317918, 1180859642, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1187, 'KOyvCV53qXPdEpV', '2021-01-09 20:38:49', 17, 116, 42, 1846680748, 688794974, 1088780094, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1188, 'EKG31ES3iOHr8YF', '2021-01-09 20:38:49', 134, 23, 38, 1082994761, 762344396, 494854020, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1189, 'jxb3b6xn2IXTLX2', '2021-01-09 20:38:49', 48, 196, 66, 1826281480, 484350063, 773491006, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1190, 'KgfuxLvvrvoszTB', '2021-01-09 20:38:49', 70, 27, 48, 1225940086, 981638382, 736450601, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1191, 'ZVQyIBKVMTeB7BY', '2021-01-09 20:38:49', 100, 12, 8, 1729650078, 589205239, 115128364, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1192, 'oy3QRfA7SMal1Zi', '2021-01-09 20:38:49', 10, 83, 3, 1574424808, 933992212, 416281620, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1193, 'uTs2nT2GBbIUFRn', '2021-01-09 20:38:49', 37, 42, 76, 1110271623, 540688016, 1265829675, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1194, 'bPRHpb2wkpRiO4I', '2021-01-09 20:38:49', 104, 118, 2, 1116319459, 894087940, 1371985526, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1195, 'bAnNIvq4rPi0Zwt', '2021-01-09 20:38:49', 115, 114, 96, 1382042783, 467236208, 618490887, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1196, '0fqmJuZ6iyucx64', '2021-01-09 20:38:49', 144, 35, 4, 1491058205, 155822050, 194678115, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1197, 'G7n8LgvnMlyKgtz', '2021-01-09 20:38:49', 1, 152, 99, 1853992081, 795742535, 419916765, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1198, 'UQKKRURK19IY6mw', '2021-01-09 20:38:49', 193, 138, 30, 1566361924, 517853777, 588802632, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1199, 'RKEVRK5bLT4vyrP', '2021-01-09 20:38:49', 86, 68, 57, 1819477246, 934510982, 933786959, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1200, 'zWcYOlGsHiNtcdY', '2021-01-09 20:38:49', 177, 143, 44, 1114509603, 349819459, 153085727, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1201, 'baiVpg3gjR51yf2', '2021-01-09 20:38:49', 15, 21, 18, 1485497836, 311562662, 399473116, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1202, '61AsTovWf88Jwbg', '2021-01-09 20:38:49', 60, 175, 22, 1933812507, 875560750, 1035150935, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1203, 'YG7FVJeqwA4EPuu', '2021-01-09 20:38:49', 47, 112, 56, 1716443045, 670638718, 951043860, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1204, 'Nn7zLlSlMpwetND', '2021-01-09 20:38:49', 142, 164, 100, 1627588580, 935500983, 491068386, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1205, 'BKxYWGECven1lfH', '2021-01-09 20:38:49', 20, 75, 98, 1437160384, 850290982, 766098624, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1206, 'bM7ZWl98sFJP1Xu', '2021-01-09 20:38:49', 176, 80, 29, 1346859623, 257685002, 154032253, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1207, '053uoEZSkSmceGA', '2021-01-09 20:38:49', 154, 173, 36, 1782658493, 433119763, 151979762, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1208, '6ButaxxlPimQNnS', '2021-01-09 20:38:49', 61, 100, 91, 1044322847, 90012083, 694536875, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1209, 'g9DelbD8X3Amgco', '2021-01-09 20:38:49', 129, 8, 64, 1408545231, 216600318, 1346525047, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1210, 'BWWTE1tGKZXtckW', '2021-01-09 20:38:49', 121, 179, 5, 1804698012, 993239426, 339010486, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1211, 'k4Jgc25sFk9BOnI', '2021-01-09 20:38:49', 38, 48, 41, 1750227065, 236565576, 361458867, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1212, 'hwOEMXB16YT7EON', '2021-01-09 20:38:49', 189, 51, 11, 1368912067, 590701888, 758895730, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1213, 'qPx9PmE0CnEJL41', '2021-01-09 20:38:49', 41, 113, 20, 1306680906, 321758359, 1061104070, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1214, 'PNe795Rj3Ljwv3m', '2021-01-09 20:38:49', 52, 165, 15, 1518435002, 374872400, 707956084, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1215, '9doQk9kI7AY2cHy', '2021-01-09 20:38:49', 76, 106, 61, 1581325050, 196531683, 912866171, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1216, 'zRfW4cEQ5d8Ynfh', '2021-01-09 20:38:49', 89, 26, 36, 1959973294, 634025070, 1265753103, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1217, 'VWRSagpWsiPB5jo', '2021-01-09 20:38:49', 116, 163, 44, 1368850605, 544239773, 1219092419, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1218, 'ZbXTv0EtQ5SIXuA', '2021-01-09 20:38:49', 6, 48, 12, 1841369929, 474827462, 661356908, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1219, 'jcxSoZQK8g2JzBQ', '2021-01-09 20:38:49', 139, 142, 77, 1892141237, 979666756, 1243537617, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1220, 'oE1XwbSKiqwAJN6', '2021-01-09 20:38:49', 167, 132, 56, 1486726444, 835402730, 464430831, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1221, 'mQldGpOxK7yG0BC', '2021-01-09 20:38:49', 182, 176, 71, 1271019891, 113040874, 239513814, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1222, 'HJHBr34tikXV59u', '2021-01-09 20:38:49', 108, 118, 80, 1138674947, 523005818, 269650156, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1223, 'vSFPj0PxYyLGJxA', '2021-01-09 20:38:49', 195, 20, 5, 1046841624, 490893382, 203181283, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1224, 'G9rYfUVLM9fleRP', '2021-01-09 20:38:49', 5, 113, 49, 1722056150, 423705782, 1444709539, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1225, '9DJFxsKvh9zx3Vc', '2021-01-09 20:38:49', 148, 15, 27, 1310338004, 700403054, 984336015, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1226, 'FofiqE2FK4R1mcH', '2021-01-09 20:38:49', 140, 41, 57, 1362106724, 406012919, 290546088, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1227, '7IIUP1Mz7ybh3DH', '2021-01-09 20:38:49', 142, 21, 24, 1634650243, 115180402, 484107060, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1228, 'ospNyQIKPH7YfVl', '2021-01-09 20:38:49', 90, 105, 75, 1955460130, 352693786, 1423388178, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1229, 'OowVgctLSXyM0Cc', '2021-01-09 20:38:49', 102, 73, 30, 1155604810, 644244313, 507822988, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1230, '3d3oErDoqHAHc3r', '2021-01-09 20:38:49', 135, 176, 70, 1668932490, 81217803, 1075064730, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1231, 'VUlK5Wml5xCcV36', '2021-01-09 20:38:49', 17, 65, 9, 1407379613, 723904756, 749548986, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1232, 'xNgyhRLrSI0WvQd', '2021-01-09 20:38:49', 161, 5, 17, 1002225481, 962732303, 868191670, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1233, 'L3CyLpJypj98mzt', '2021-01-09 20:38:49', 111, 96, 54, 1108988241, 190405323, 451350668, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1234, 'WQaqPrt71zEIqq4', '2021-01-09 20:38:49', 157, 54, 88, 1116071627, 390502030, 1017313731, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1235, 'KJjr9LbEx1mZ2MU', '2021-01-09 20:38:49', 114, 119, 74, 1668542238, 50754167, 1262408882, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1236, 'qAli2wCxGEptm5C', '2021-01-09 20:38:49', 115, 50, 88, 1853729443, 558892869, 513404119, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1237, 'BeWrJsMpndVZz4Y', '2021-01-09 20:38:49', 137, 39, 100, 1967797627, 199631827, 130055187, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1238, 'rcvv2PxwDvq2eg0', '2021-01-09 20:38:49', 32, 200, 13, 1625582192, 350150909, 350710018, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1239, 'HOxGIrayzOmRFXv', '2021-01-09 20:38:49', 173, 179, 14, 1370138047, 798954511, 1466090814, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1240, 'zwogNS2EcMdXzvo', '2021-01-09 20:38:49', 86, 100, 83, 1406093439, 829596009, 107367639, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1241, 'fCEX1L2a52Bxsaq', '2021-01-09 20:38:49', 95, 95, 30, 1302812233, 438233551, 871903652, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1242, '3c92yM37mYEDKbB', '2021-01-09 20:38:49', 110, 151, 99, 1399006131, 218407439, 409359215, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1243, 'o8Y3tt5K91Q7MEp', '2021-01-09 20:38:49', 84, 114, 98, 1103718720, 985086709, 834143239, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1244, '2jCxilpA6yh64QE', '2021-01-09 20:38:49', 136, 54, 84, 1740984576, 857866472, 1312961152, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1245, 'SojI7VjhKBBXK8s', '2021-01-09 20:38:49', 163, 136, 85, 1514132367, 526701069, 620094491, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1246, '6W0Lk5ZcpQroB6M', '2021-01-09 20:38:49', 143, 154, 84, 1698699127, 323455422, 791453369, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1247, 'SRoMfbYTDZBgbol', '2021-01-09 20:38:49', 12, 81, 63, 1702645399, 747892167, 1482131412, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1248, '3dyxwtP2RMkrD86', '2021-01-09 20:38:49', 6, 158, 46, 1541928954, 373888644, 823171954, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1249, 'VFcopFPHom2mX55', '2021-01-09 20:38:49', 193, 104, 47, 1294076123, 258835773, 1478210410, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1250, 'T2k63umDhZpfsb0', '2021-01-09 20:38:49', 135, 113, 46, 1857047582, 588573530, 296235523, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1251, 'vYPc92IgQUNq14l', '2021-01-09 20:38:49', 157, 192, 98, 1801299721, 587041069, 1219875565, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1252, '0SwdmzQgZzWesh0', '2021-01-09 20:38:49', 113, 51, 45, 1243814767, 170345739, 124839499, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1253, '8yhPl7rO4Z54P9r', '2021-01-09 20:38:49', 171, 20, 78, 1199257892, 804446138, 1432975079, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1254, 'vyrk7PQIxNQB4nj', '2021-01-09 20:38:49', 166, 62, 2, 1676678239, 842429827, 661345597, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1255, 'E0uQlhifKEIhsYk', '2021-01-09 20:38:49', 61, 58, 97, 1794066410, 150846450, 400791850, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1256, 'sHf1tljUoylqQL4', '2021-01-09 20:38:49', 191, 105, 54, 1153213527, 972437103, 364791192, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1257, 'DhdCfKgXvyenRGR', '2021-01-09 20:38:49', 12, 17, 73, 1932539218, 692946905, 939494280, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1258, 'jVjGbSS1GLoAt5s', '2021-01-09 20:38:49', 22, 199, 34, 1666923833, 559540294, 593791124, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1259, '3kTyGsusFI8my1a', '2021-01-09 20:38:49', 96, 20, 82, 1907876485, 94592286, 197248159, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1260, 'JsIlCc6dMNlkpQc', '2021-01-09 20:38:49', 144, 27, 6, 1842255722, 140247260, 357557931, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1261, 'FWqJHOOIiELw5Tc', '2021-01-09 20:38:49', 146, 157, 89, 1875781933, 667756986, 1497251772, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1262, '5A31sqsZZV0YQBM', '2021-01-09 20:38:49', 25, 121, 66, 1529970544, 470635942, 655110790, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1263, 'gcBFuKN2ndPnJKF', '2021-01-09 20:38:49', 196, 193, 94, 1592430873, 667926745, 1265864874, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1264, 'A2n1l17Gtu2QOe5', '2021-01-09 20:38:49', 123, 150, 89, 1870759288, 719455839, 1224019589, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1265, 'NZ9RynvOeDsJfJd', '2021-01-09 20:38:49', 139, 138, 56, 1942060285, 778451447, 238375460, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1266, '5ND7Ng3ycEgrbiY', '2021-01-09 20:38:49', 196, 54, 49, 1506100527, 473587726, 325487023, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1267, 'Bax1YOGDOegcBRa', '2021-01-09 20:38:49', 164, 46, 20, 1935717200, 194704903, 539617664, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1268, 'EsmoMtm44u7BZu5', '2021-01-09 20:38:49', 68, 140, 13, 1607773677, 432384087, 728838526, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1269, '75J3RDZ2pxnSG8H', '2021-01-09 20:38:49', 91, 106, 83, 1983844708, 284786312, 902955172, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1270, 'anb8oGgJB2Kt6QN', '2021-01-09 20:38:49', 13, 81, 7, 1256116425, 659147620, 175657123, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1271, 'X4Z9VElBwAIcEt9', '2021-01-09 20:38:49', 51, 165, 53, 1845699385, 679739577, 1419704911, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1272, 'hSGy6eIviqEPSiE', '2021-01-09 20:38:49', 171, 136, 67, 1386125646, 672289795, 1031311270, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1273, '65HrAog3OfIWnJ4', '2021-01-09 20:38:49', 99, 2, 66, 1747462835, 656281587, 423919865, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1274, 'UNIJVitfuTRMRlN', '2021-01-09 20:38:49', 31, 190, 26, 1140299336, 663160116, 1456905654, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1275, 'bf4jqWAmRVh4sxs', '2021-01-09 20:38:49', 8, 73, 42, 1216275079, 679894462, 873835729, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1276, 'gHdEEuAkpo9zWpX', '2021-01-09 20:38:49', 95, 113, 27, 1107278146, 830712658, 657525191, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1277, 'rd8LY3jRKC0nF0c', '2021-01-09 20:38:49', 133, 36, 61, 1447997490, 384088262, 1182257043, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1278, 'vLv2eTemyPN1wV6', '2021-01-09 20:38:49', 85, 189, 77, 1948814107, 510024569, 1460082949, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1279, 'c5Nh7GJznFsUjuI', '2021-01-09 20:38:49', 28, 135, 85, 1110618557, 434213586, 434158551, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1280, 'DhHVGXRm2DDfVNG', '2021-01-09 20:38:49', 189, 44, 93, 1629291599, 318875519, 448496694, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1281, 'G03aEL6R6ClL7kv', '2021-01-09 20:38:49', 44, 108, 79, 1642872183, 655130351, 1497256430, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1282, 'BYH3QkS6AIM5Xyw', '2021-01-09 20:38:49', 187, 99, 43, 1414337981, 783901456, 234990503, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1283, '1mwOPEykyOiiT0S', '2021-01-09 20:38:49', 16, 82, 71, 1058117430, 508738508, 371384504, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1284, 'ZPqgJTZJbna2Fp1', '2021-01-09 20:38:49', 122, 191, 64, 1832481349, 897498499, 1252380049, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1285, 'KQOHWeUzGTJMDjv', '2021-01-09 20:38:49', 151, 198, 81, 1606557228, 220630391, 1120804164, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1286, 'TcSH2lAGWdM1mvm', '2021-01-09 20:38:49', 63, 2, 5, 1637517344, 617554939, 690083053, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1287, '5AB43V7wH5kcgqm', '2021-01-09 20:38:49', 137, 102, 85, 1550319881, 607243088, 454396607, 3, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1288, 'llaY4fH6zZA2uYR', '2021-01-09 20:38:49', 27, 178, 78, 1179820314, 772199086, 271539130, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1289, '2R5rA2QMETlixub', '2021-01-09 20:38:49', 97, 126, 97, 1567587445, 739847697, 915215237, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1290, 'mo79heAGLZ3fI2f', '2021-01-09 20:38:49', 21, 171, 39, 1534123833, 878335745, 998127142, 1, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1291, 'bn7rvbJ5o6XcYu0', '2021-01-09 20:38:49', 77, 153, 27, 1437745262, 131721245, 906355198, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1292, 'hJVbdzdU3Izp04D', '2021-01-09 20:38:49', 196, 18, 53, 1031412892, 150812940, 1125809064, 0, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1293, 'WmLKYk0AXF57apm', '2021-01-09 20:38:49', 188, 173, 18, 1860175574, 282790488, 1039727117, 2, '2021-01-21 16:09:23', '2021-01-21 16:09:23'),
(1294, 'KhEONfriV2vOvqp', '2021-01-09 20:38:49', 48, 34, 73, 1629192999, 310896191, 1436407540, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1295, 'gNO8HlPSlCYfu4x', '2021-01-09 20:38:49', 71, 73, 90, 1444817453, 918617801, 1079917632, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1296, 'R9FGtW8HXbBpYxn', '2021-01-09 20:38:49', 95, 69, 83, 1054288396, 743472733, 281244437, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1297, 'LyjuQPkq5VtpaLz', '2021-01-09 20:38:49', 78, 109, 18, 1745247303, 779069833, 1129152489, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1298, 'e1RUXdDPdMyQsJh', '2021-01-09 20:38:49', 12, 14, 70, 1009266775, 202859842, 413937439, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1299, 'bf11XA1Iw9rdxsH', '2021-01-09 20:38:49', 150, 110, 59, 1688635576, 771449047, 525524269, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1300, 'AdFALcgLJIQRFcR', '2021-01-09 20:38:49', 66, 1, 1, 1750877131, 919972147, 577383440, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1301, 'FKtW6z7YwlDE4j9', '2021-01-09 20:38:49', 145, 38, 85, 1907580038, 802856992, 940067572, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1302, '7M4K5MUI7p4whvq', '2021-01-09 20:38:49', 56, 74, 51, 1722756987, 580402802, 605096387, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1303, 'Hgz2rQd9CfV3QWy', '2021-01-09 20:38:49', 102, 74, 89, 1339644284, 897425075, 835715748, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1304, 'lfMTAs7i5b8H6VD', '2021-01-09 20:38:49', 129, 138, 33, 1944083304, 96995841, 666926008, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1305, 'A3z9LuO658pQ3m6', '2021-01-09 20:38:49', 186, 102, 23, 1221707940, 656084232, 192395652, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1306, 'INcnLi75L4GSEfV', '2021-01-09 20:38:49', 24, 107, 63, 1297991565, 224551698, 1163697404, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1307, '9dsX497yXfj1E2D', '2021-01-09 20:38:49', 69, 11, 7, 1410010507, 810751280, 326582237, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1308, 'dhwigvZVKIu71pM', '2021-01-09 20:38:49', 162, 6, 94, 1256132903, 81917896, 432857524, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1309, '4TAangnZp46XXST', '2021-01-09 20:38:49', 169, 93, 53, 1662466161, 423639026, 639512882, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1310, '35VS1mGpol4yIqd', '2021-01-09 20:38:49', 34, 57, 53, 1153441249, 53582507, 744881320, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1311, '3eY16ABYyU7jrkj', '2021-01-09 20:38:49', 33, 6, 49, 1213148547, 251445473, 509009885, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1312, 'jpgyDNq0rCKn2ep', '2021-01-09 20:38:49', 188, 126, 91, 1447933323, 102916067, 543434643, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1313, '5VmygehIHV1VDA1', '2021-01-09 20:38:49', 159, 90, 36, 1597337269, 541188060, 472080943, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1314, 'ycKpJHqDwYNeWjN', '2021-01-09 20:38:49', 107, 134, 22, 1032509012, 706043031, 1126222312, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1315, 'p22B8kqWsfIpppK', '2021-01-09 20:38:49', 16, 131, 36, 1127043899, 820725628, 967652500, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1316, 'gBayvj60htYM1P6', '2021-01-09 20:38:49', 115, 23, 100, 1443483981, 298842312, 882022872, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1317, 'vgvfCpP2qzyS64n', '2021-01-09 20:38:49', 163, 142, 55, 1996689766, 997920480, 371737219, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1318, 'M8zPSbwRG6ZzOPj', '2021-01-09 20:38:49', 124, 152, 97, 1905249916, 136449040, 850459052, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1319, 'duRG1MQT6OVp6HF', '2021-01-09 20:38:49', 180, 197, 76, 1962065798, 757980716, 723160165, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1320, 'lph31dK2XCJW39m', '2021-01-09 20:38:49', 194, 77, 30, 1689783171, 413778900, 457258213, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1321, '8ics5ylK4DW6SaL', '2021-01-09 20:38:49', 182, 39, 19, 1014529399, 702214617, 331865484, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1322, 'frX5OJ3ZCqqkQv4', '2021-01-09 20:38:49', 66, 173, 56, 1745201929, 420485630, 1231843788, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1323, 'FazeF7ioaKm7DQr', '2021-01-09 20:38:49', 83, 166, 83, 1754943337, 953920540, 1173253975, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1324, '8rs2RUMIOr1eSPI', '2021-01-09 20:38:49', 171, 69, 74, 1334157590, 180208214, 963571122, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1325, 'WKMgMWhQhM5fWXw', '2021-01-09 20:38:49', 104, 182, 28, 1135768117, 297384640, 354277934, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1326, '6CubSm4tKPrTVZm', '2021-01-09 20:38:49', 35, 193, 80, 1984868438, 730739481, 1165512709, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1327, 'oxoqwriCenM3QhA', '2021-01-09 20:38:49', 20, 29, 13, 1583754987, 258292007, 321111734, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1328, 'JSHgokLiiZmo5ay', '2021-01-09 20:38:49', 193, 112, 48, 1506770052, 56158686, 236538578, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1329, 'xaD5BZjFpRsM62c', '2021-01-09 20:38:49', 168, 78, 49, 1656495240, 335664736, 531776456, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1330, '6i6VQD6wcBOrXEx', '2021-01-09 20:38:49', 117, 90, 88, 1362544362, 665255272, 1342749100, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1331, 'mXS7zIZeo0Gb6Om', '2021-01-09 20:38:49', 139, 115, 98, 1793991385, 292678496, 748853138, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1332, 'Zd3or5P96IMhbMi', '2021-01-09 20:38:49', 80, 121, 97, 1972592239, 271123872, 168299522, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1333, 'hFFN1A1XQYzxpaU', '2021-01-09 20:38:49', 102, 41, 84, 1550276747, 238017164, 850088152, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1334, 'I3YlvEJnXl7sMdj', '2021-01-09 20:38:49', 41, 86, 99, 1348179828, 730864599, 844841979, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1335, 'c68VP5mBq49LWdB', '2021-01-09 20:38:49', 117, 69, 78, 1207885553, 223994239, 402877901, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1336, 'lqRCZxaC8W1yTgq', '2021-01-09 20:38:49', 57, 26, 32, 1897879066, 656573949, 314375737, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1337, 'QwahBOeKFNIUtaM', '2021-01-09 20:38:49', 91, 181, 29, 1120229045, 376522453, 582630147, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1338, 'TFX7k1k7l2exRKo', '2021-01-09 20:38:49', 21, 47, 56, 1717087030, 530716693, 943835672, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1339, 'rxMKd6CTGBKXSXR', '2021-01-09 20:38:49', 97, 56, 57, 1303095313, 892263458, 1396405893, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1340, 'lXWuovESnyQvU0h', '2021-01-09 20:38:49', 32, 93, 82, 1572921986, 744445009, 623794909, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1341, 'H4erkyoNNYETqYu', '2021-01-09 20:38:49', 134, 185, 63, 1954604937, 432095983, 563749134, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1342, 'tdbcUMqKUh8bdRy', '2021-01-09 20:38:49', 131, 74, 58, 1187724347, 391931410, 173110943, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24');
INSERT INTO `transaksis` (`id`, `kode_transaksi`, `waktu_transaksi`, `jasa_id`, `vendor_id`, `user_id`, `harga_total`, `down_payment`, `sisa_pembayaran`, `status`, `created_at`, `updated_at`) VALUES
(1343, 'rGIBr5ZxDFwG4pH', '2021-01-09 20:38:49', 191, 159, 49, 1517828478, 617941384, 138430276, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1344, '0VbhACJUVFMVNC0', '2021-01-09 20:38:49', 42, 17, 26, 1951047736, 885091824, 225495782, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1345, 'JAXmfADnDi8tcOs', '2021-01-09 20:38:49', 191, 49, 86, 1981096671, 672669823, 643331165, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1346, 'kACNRQDDNdaOXXA', '2021-01-09 20:38:49', 169, 48, 28, 1789242354, 412906263, 1322986246, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1347, 'JYq2RQPE0AONEkW', '2021-01-09 20:38:49', 72, 182, 93, 1009797512, 531297810, 429072946, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1348, '1OvXOs47XWjBy3b', '2021-01-09 20:38:49', 7, 61, 83, 1387206265, 159020609, 389068821, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1349, 'TpKNkAgwNKhAQtf', '2021-01-09 20:38:49', 78, 26, 51, 1723383770, 229576214, 944272609, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1350, 'VuhLiab3aIhXMw3', '2021-01-09 20:38:49', 39, 13, 15, 1493017986, 166674803, 770712774, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1351, 'LvyBD91l4IN2cbu', '2021-01-09 20:38:49', 139, 52, 2, 1077258152, 667055573, 489988411, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1352, 'kMvsquq9iQ8mRUI', '2021-01-09 20:38:49', 26, 20, 46, 1407042652, 463627965, 1220012643, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1353, 'b0g1A6tT7TlIW7Z', '2021-01-09 20:38:49', 12, 25, 19, 1097466020, 707872323, 889382929, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1354, 'yaXi6RZp76ZG1Sv', '2021-01-09 20:38:49', 33, 115, 45, 1269192612, 769779577, 915935131, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1355, 't2tUiIaB0iwxlLX', '2021-01-09 20:38:49', 185, 158, 1, 1576947895, 179320235, 720967272, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1356, 'Mm7RxdtpVwwD3T0', '2021-01-09 20:38:49', 123, 73, 16, 1246929229, 124397323, 462513419, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1357, 'Ml4i1NUK7QuOn1H', '2021-01-09 20:38:49', 180, 69, 67, 1382053816, 651066474, 1046744091, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1358, 'odb3U7A4xbQSufL', '2021-01-09 20:38:49', 165, 28, 53, 1386221369, 413232575, 1179444524, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1359, 'PkAn6tPDwQGd3m6', '2021-01-09 20:38:49', 169, 130, 26, 1428109755, 548164605, 1432284202, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1360, 'XGbP1xwmq4ZB1t5', '2021-01-09 20:38:49', 22, 181, 91, 1278565560, 267242136, 195759181, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1361, '9LS2LsFrWXMB8M5', '2021-01-09 20:38:49', 94, 7, 60, 1745277590, 490107434, 978457919, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1362, '9nGOVbJKUPxSD6B', '2021-01-09 20:38:49', 88, 34, 20, 1472624226, 169701076, 996026052, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1363, '8ZxfGh37kKD2Qnt', '2021-01-09 20:38:49', 26, 65, 37, 1312583111, 370028133, 1498434101, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1364, 'RrFvUPzxIfC2ytB', '2021-01-09 20:38:49', 46, 109, 97, 1214870440, 203708660, 693546570, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1365, '8OW3iR7pXtKJkI9', '2021-01-09 20:38:49', 184, 116, 56, 1290005654, 821192966, 273107485, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1366, 'vfBOK0lfjiiA5Ud', '2021-01-09 20:38:49', 13, 199, 76, 1560125741, 502897463, 442000674, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1367, 'F3zlMbmg6kddPYA', '2021-01-09 20:38:49', 108, 123, 13, 1240685158, 463933303, 102830296, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1368, 'IJp0EDsiI4BtPQm', '2021-01-09 20:38:49', 123, 192, 16, 1131279682, 840687127, 897917949, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1369, 'GlCtGGCRsbO1cBX', '2021-01-09 20:38:49', 81, 132, 62, 1608965441, 438892811, 1357339820, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1370, 'RFl1ESSP7hGMMp2', '2021-01-09 20:38:49', 162, 28, 43, 1906593739, 349123918, 909753244, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1371, '9qsIpDtWoNDq9n2', '2021-01-09 20:38:49', 61, 110, 96, 1992485675, 789945124, 279999659, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1372, '9ajWmxp18fc9gd4', '2021-01-09 20:38:49', 40, 199, 92, 1416312217, 486238510, 867414522, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1373, 'MggZbXV3u8PTtlr', '2021-01-09 20:38:49', 168, 33, 59, 1106903092, 225247044, 115925698, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1374, 'jf1klWfkdgMTkW9', '2021-01-09 20:38:49', 111, 106, 71, 1497362815, 357886776, 604558011, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1375, 'EuTxVNFOjNXeH69', '2021-01-09 20:38:49', 6, 119, 76, 1869214024, 819587986, 340207652, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1376, '0yckqzWz8swq8ut', '2021-01-09 20:38:49', 134, 189, 40, 1271355473, 268513837, 426728336, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1377, 'yGBzO9MALzGJLWP', '2021-01-09 20:38:49', 68, 181, 2, 1749259533, 650797473, 1474680853, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1378, 'SbxtIGJK4pWZsSu', '2021-01-09 20:38:49', 106, 199, 42, 1968947814, 564530208, 896028111, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1379, 'BIajf1fr1Qzk2dL', '2021-01-09 20:38:49', 10, 5, 35, 1507042575, 224793996, 479155123, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1380, 'T7JGaRM8Qu1CyDM', '2021-01-09 20:38:49', 19, 165, 20, 1384314181, 456759858, 721763673, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1381, 'Y6kitUVQf1N22Ie', '2021-01-09 20:38:49', 191, 59, 57, 1246199027, 554067194, 288010051, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1382, '4wf3MWMdoPj15UA', '2021-01-09 20:38:49', 5, 41, 33, 1434704172, 94126386, 820494212, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1383, 'Sk9lCUlMsR0ykYf', '2021-01-09 20:38:49', 191, 36, 95, 1854772370, 752469136, 667946287, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1384, 'J8XxmbzEM1RcAT0', '2021-01-09 20:38:49', 62, 60, 6, 1842886620, 50041555, 480786000, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1385, 'utTJlmbJlMBSh9U', '2021-01-09 20:38:49', 131, 29, 100, 1375173878, 886592019, 591652075, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1386, 'gt2larticKBMjYS', '2021-01-09 20:38:49', 63, 97, 35, 1409304238, 928840905, 1024371125, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1387, 'Sd08qaKFjvRssUV', '2021-01-09 20:38:49', 91, 72, 4, 1758410550, 752283525, 1366882101, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1388, 'MFx3G8BKmGcdThM', '2021-01-09 20:38:49', 191, 60, 49, 1198175107, 609327650, 226742802, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1389, 'RCdGIHKCgQIrYjD', '2021-01-09 20:38:49', 126, 7, 30, 1879966296, 582760145, 581069842, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1390, 'hyQ5NAWiuo8kCFN', '2021-01-09 20:38:49', 98, 128, 23, 1277724489, 684034840, 460054893, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1391, 'm4v5EEDifWd9rzp', '2021-01-09 20:38:49', 139, 123, 2, 1880050975, 982416520, 1177864891, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1392, 'r4c4vmd6bJxZEmG', '2021-01-09 20:38:49', 179, 82, 10, 1507252946, 953588768, 133554026, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1393, '2zUUvEl2HBqduwI', '2021-01-09 20:38:49', 33, 174, 14, 1380564350, 437469407, 1481945370, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1394, 'B5aAepQo6IlNvEc', '2021-01-09 20:38:49', 47, 18, 18, 1596443374, 899116433, 706457458, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1395, '12qObZUv6ngsYoV', '2021-01-09 20:38:49', 74, 88, 39, 1847837615, 396548179, 1385632038, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1396, 'V16EBgVb7oD1G0G', '2021-01-09 20:38:49', 129, 155, 90, 1921780727, 145113636, 1407095113, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1397, 'N9bb4mRXGiT7g3A', '2021-01-09 20:38:49', 158, 83, 65, 1184257030, 757212544, 1400153341, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1398, '2VwQje4qFWyDH9a', '2021-01-09 20:38:49', 158, 187, 12, 1495707665, 380164855, 1477010241, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1399, '2FrufIwQUKZxHxY', '2021-01-09 20:38:49', 182, 16, 78, 1417989658, 344979333, 904643159, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1400, '5vRpot48y9PVMm4', '2021-01-09 20:38:49', 125, 5, 79, 1533372243, 86276792, 1225967383, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1401, 'Ku6qpcG2SS6wufC', '2021-01-09 20:38:49', 115, 78, 12, 1406900873, 783809438, 1212062781, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1402, 'm1L4ZWCFAnlinzo', '2021-01-09 20:38:49', 85, 130, 33, 1719666508, 362356598, 1191772043, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1403, 'FJ4KoN6nocykQ6W', '2021-01-09 20:38:49', 171, 47, 8, 1508461038, 213920720, 1187406620, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1404, '9WhwgevJ7XuslwD', '2021-01-09 20:38:49', 72, 139, 21, 1458655987, 742568662, 405048740, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1405, 'cMVx7edVpnZ7Pz5', '2021-01-09 20:38:49', 198, 186, 49, 1509615105, 522910216, 1065333563, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1406, 'NjImUG1yfxQ36Tz', '2021-01-09 20:38:49', 77, 190, 55, 1942794516, 997325730, 779322115, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1407, 'lZqZeN5C78q6pqo', '2021-01-09 20:38:49', 39, 179, 93, 1429105315, 256718510, 136063655, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1408, 'dqBo16UUfSfVwol', '2021-01-09 20:38:49', 2, 58, 5, 1426191213, 957375823, 304371714, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1409, 'n1fJb2T7oHDwkxN', '2021-01-09 20:38:49', 79, 10, 66, 1556563806, 922992133, 982589905, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1410, 'aPGpKmatao1L35B', '2021-01-09 20:38:49', 3, 150, 3, 1883406133, 821901471, 278514916, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1411, 'jFgEZLeE361syiT', '2021-01-09 20:38:49', 16, 169, 31, 1151426835, 652109141, 426156621, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1412, 'kUEKYIADdIYc684', '2021-01-09 20:38:49', 130, 126, 9, 1453757389, 325092588, 1407199159, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1413, 'XVndNuAuirMmij3', '2021-01-09 20:38:49', 154, 119, 55, 1630902591, 259052412, 1199804060, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1414, 'MYsSLEAPoJU5HaO', '2021-01-09 20:38:49', 4, 146, 41, 1338977723, 401393556, 573267798, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1415, 'B5uoNgdDgnlhfd3', '2021-01-09 20:38:49', 139, 109, 61, 1371099477, 340196633, 698361759, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1416, 'gnyOlXTzeFSABK8', '2021-01-09 20:38:49', 91, 1, 35, 1765746519, 455424682, 1074787161, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1417, '4cXMEfBsBxY9fdx', '2021-01-09 20:38:49', 155, 64, 11, 1321770777, 903995213, 1463900142, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1418, '5iLexC2JgnVsOqr', '2021-01-09 20:38:49', 72, 113, 62, 1997280447, 172746609, 182049850, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1419, 'VvdnHYRW4gUDtUE', '2021-01-09 20:38:49', 139, 49, 66, 1951872980, 132051180, 292406796, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1420, 'DfBSlxmKxzAISMK', '2021-01-09 20:38:49', 151, 143, 16, 1161408292, 759189052, 1328216443, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1421, 'h4DFv6Ct9RS7BRh', '2021-01-09 20:38:49', 168, 42, 25, 1284805165, 650884875, 385514105, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1422, 'pDF1UwApethuogz', '2021-01-09 20:38:49', 195, 194, 3, 1133998432, 136504820, 733161589, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1423, '3Ed3QlJyOgRVJQJ', '2021-01-09 20:38:49', 3, 192, 29, 1897014370, 114404197, 719453853, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1424, 'hWHRQAK2xxYudPB', '2021-01-09 20:38:49', 129, 33, 57, 1680606467, 730636988, 1489911810, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1425, 'utdWrRKzZwiz2a8', '2021-01-09 20:38:49', 129, 197, 15, 1842875844, 237255578, 348547696, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1426, 'dE39FgqFnDMXzS6', '2021-01-09 20:38:49', 11, 105, 89, 1188743736, 608926008, 660714619, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1427, '42lkdqmEfg9BZFO', '2021-01-09 20:38:49', 35, 141, 73, 1157310537, 474401826, 321284422, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1428, 'i8AYnadcWFik7qN', '2021-01-09 20:38:49', 178, 137, 13, 1651251148, 342469913, 461218585, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1429, 'T3f6XmGiIpij0VO', '2021-01-09 20:38:49', 80, 61, 83, 1142127236, 889155019, 1436333994, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1430, 'Xn7WL36j11cmncl', '2021-01-09 20:38:49', 22, 68, 7, 1695782297, 98254675, 562887687, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1431, 'QnP27OklLpIlQFq', '2021-01-09 20:38:49', 55, 196, 14, 1908803010, 81998575, 894611367, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1432, 'Qeeso0SBGIN8wYF', '2021-01-09 20:38:49', 109, 9, 24, 1449933488, 972001968, 1344035790, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1433, 'GOiJfqdi5DrQN9l', '2021-01-09 20:38:49', 16, 94, 96, 1847150405, 928195382, 1040159882, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1434, 'pQxWsvS1qZy68UN', '2021-01-09 20:38:49', 164, 34, 58, 1805097303, 338842667, 1411941965, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1435, 'djgZxW4ZVxHQLEO', '2021-01-09 20:38:49', 40, 181, 40, 1833168659, 51580782, 749672863, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1436, 'x1BUeFNyideciOd', '2021-01-09 20:38:49', 21, 75, 28, 1263237585, 735636415, 887414551, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1437, 'vx8HMQLJwIZaWna', '2021-01-09 20:38:49', 150, 70, 100, 1568594547, 204195618, 1082609695, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1438, 'lfsAfeAEk8sVk4y', '2021-01-09 20:38:49', 188, 16, 2, 1300287484, 265288016, 1185296371, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1439, 'U1nSm8WHpTHNTry', '2021-01-09 20:38:49', 21, 86, 5, 1101887387, 203740953, 568726099, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1440, 'M4O2UrOp1qjjCxr', '2021-01-09 20:38:49', 16, 12, 45, 1302118179, 373214321, 835423770, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1441, 'hIIXimSbFkxyLMo', '2021-01-09 20:38:49', 98, 59, 75, 1039838177, 439542978, 1284304251, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1442, 'VgtukkmgoXsvKsf', '2021-01-09 20:38:49', 43, 64, 63, 1641033111, 754642434, 167571882, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1443, 'bCsQNYY0vOSAzBm', '2021-01-09 20:38:49', 44, 81, 52, 1414099275, 906069984, 489736973, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1444, 'ZOyfVWi3zttDM0z', '2021-01-09 20:38:49', 90, 122, 59, 1074642428, 879306485, 1187107356, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1445, 'SXhRCJNnCOiaEkL', '2021-01-09 20:38:49', 18, 30, 5, 1751803174, 402048770, 1170528717, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1446, 'rOvEZfbay9LVglJ', '2021-01-09 20:38:49', 64, 142, 42, 1165090496, 525343849, 1056624884, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1447, 'jyil8Xq5mjbc9Af', '2021-01-09 20:38:49', 59, 90, 35, 1116893688, 499100591, 1429982822, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1448, 'ZfDCCKLotTRzzpX', '2021-01-09 20:38:49', 190, 176, 67, 1813153117, 139267670, 244037700, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1449, 'F60PS7Gb7dUUDDT', '2021-01-09 20:38:49', 34, 121, 47, 1534761998, 774328715, 705803592, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1450, '7rAg25wfOIou4II', '2021-01-09 20:38:49', 174, 12, 34, 1002107433, 353527310, 1119104155, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1451, 'nOj8dJJyUSb8IVx', '2021-01-09 20:38:49', 83, 145, 54, 1886332930, 465641278, 193746778, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1452, 'B6s404tSG09DE64', '2021-01-09 20:38:49', 150, 64, 93, 1546697924, 882821419, 298315575, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1453, '17dKmAyQy1ovvPM', '2021-01-09 20:38:49', 192, 129, 42, 1798266952, 928136052, 1409065481, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1454, 'HlfpwNHeZK0z6MP', '2021-01-09 20:38:49', 40, 121, 16, 1985893758, 644796418, 1413625092, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1455, 'm9WfHBSq9BVKjzu', '2021-01-09 20:38:49', 131, 97, 15, 1442815797, 510613457, 1144129540, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1456, 'NrjL4S8JFXCEbIF', '2021-01-09 20:38:49', 36, 190, 70, 1663329371, 460144668, 1391371353, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1457, 'Ks992I1HyE7E87R', '2021-01-09 20:38:49', 70, 184, 43, 1559827892, 152055478, 244242088, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1458, '3PWObDeLBwu9kAW', '2021-01-09 20:38:49', 149, 188, 62, 1440366522, 736167529, 1356960440, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1459, 'u8lHkcmXFnZPPvf', '2021-01-09 20:38:49', 78, 143, 45, 1413292209, 985603496, 323630926, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1460, 'WFEeRNt25xqlgsJ', '2021-01-09 20:38:49', 99, 166, 40, 1572420334, 163254611, 422724054, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1461, '0ZqeX7tUzq6HweJ', '2021-01-09 20:38:49', 46, 79, 63, 1961347597, 994318101, 557439717, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1462, 'QZr0phT0B5yJcnl', '2021-01-09 20:38:49', 89, 32, 80, 1914813889, 492442442, 1362512322, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1463, 'mmugPY741POp9ci', '2021-01-09 20:38:49', 113, 56, 51, 1584928827, 547727652, 310322856, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1464, 'DugfYOMDKbYUVAc', '2021-01-09 20:38:49', 198, 53, 83, 1843646484, 553839211, 1220919633, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1465, 'CpXYqzzPRrKWJ63', '2021-01-09 20:38:49', 34, 194, 63, 1849224182, 959646699, 135881504, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1466, 'XGDgMIx6YygMkVf', '2021-01-09 20:38:49', 41, 111, 86, 1585433230, 461882876, 1207127811, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1467, 'ncWoE38RwFnMIoK', '2021-01-09 20:38:49', 30, 18, 14, 1374842570, 322544269, 856527687, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1468, 'WQZ1rEaCxjaQcFI', '2021-01-09 20:38:49', 87, 181, 88, 1584869847, 123914061, 969815703, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1469, '5pZpg1MmBTgM0Tx', '2021-01-09 20:38:49', 138, 105, 30, 1048142362, 839616201, 1202439475, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1470, 'S6gfWESV4Pn3Mx8', '2021-01-09 20:38:49', 119, 135, 76, 1205815088, 329804209, 917554793, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1471, 'JMlLM7u2bUE5Om8', '2021-01-09 20:38:49', 170, 149, 32, 1413992628, 800082113, 1324946444, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1472, '8iwhJ6h3uB69d9v', '2021-01-09 20:38:49', 154, 25, 43, 1312773806, 100681858, 950607915, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1473, 'Ctq82nWOFPNwSiU', '2021-01-09 20:38:49', 195, 99, 66, 1420749834, 786296057, 375968662, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1474, 'JgIbkkbsE4lycxB', '2021-01-09 20:38:49', 139, 83, 58, 1931319554, 842121013, 779382093, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1475, 'gwbrxqEv4Lhl154', '2021-01-09 20:38:49', 194, 198, 7, 1107307958, 316289315, 269165678, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1476, 'ZSQJPhr6fFUmSqA', '2021-01-09 20:38:49', 164, 149, 76, 1810869993, 209202091, 454162293, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1477, 'ohwt8pb8B4TqweK', '2021-01-09 20:38:49', 112, 116, 31, 1631626334, 861450445, 864659326, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1478, 'Hnp4m944RjgBjGr', '2021-01-09 20:38:49', 169, 157, 59, 1036893480, 668207288, 1236438367, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1479, 'j8ZTJ9kvTv2Lpl2', '2021-01-09 20:38:49', 23, 11, 8, 1151179534, 145158713, 1040819932, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1480, 'e936lgJREOC7Oz3', '2021-01-09 20:38:49', 171, 182, 94, 1334173678, 467041410, 1405777828, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1481, 'HH6yjpzd5eqpTX0', '2021-01-09 20:38:49', 130, 71, 13, 1415335311, 787353297, 567487683, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1482, 'H68h1du5ZL7DS8Z', '2021-01-09 20:38:49', 136, 90, 53, 1266080277, 405449734, 726365791, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1483, '16y77oqYavFR32I', '2021-01-09 20:38:49', 79, 60, 59, 1505152905, 345398123, 413970337, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1484, 'rNgBDvf5O5U29hm', '2021-01-09 20:38:49', 95, 15, 14, 1096565168, 146686546, 1175843638, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1485, 'zdmvNCINtThISrT', '2021-01-09 20:38:49', 146, 71, 73, 1131521927, 491421629, 662154312, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1486, 'uR16FcwYJ9MMODL', '2021-01-09 20:38:49', 141, 60, 39, 1499309656, 438675098, 494719465, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1487, 'zxu8dqa6kuJ3QG1', '2021-01-09 20:38:49', 143, 153, 1, 1693072781, 74726019, 571850041, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1488, 'ZEdPxeC6q6irnjT', '2021-01-09 20:38:49', 46, 157, 55, 1628077357, 995140806, 1030566356, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1489, 'nJ1AA4wzZMnm24Q', '2021-01-09 20:38:49', 141, 41, 94, 1836492913, 837051367, 159784886, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1490, 's8v2McnXZwWdZ8T', '2021-01-09 20:38:49', 68, 128, 22, 1517569880, 638347417, 330622421, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1491, 'f5BY15YC1AuZ1Xv', '2021-01-09 20:38:49', 78, 54, 57, 1527999053, 995394536, 1102740543, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1492, 'tygxWjKfJ44kt7T', '2021-01-09 20:38:49', 42, 19, 55, 1954619139, 279360939, 451699487, 1, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1493, 'c34yBsvO6YYeAQI', '2021-01-09 20:38:49', 174, 67, 12, 1511410539, 582236788, 1199443913, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1494, 'IdywnW9ibudziNU', '2021-01-09 20:38:49', 19, 47, 17, 1469118149, 277151339, 1078972898, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1495, 'w3JhNwqViiRm4Jk', '2021-01-09 20:38:49', 39, 175, 27, 1535855746, 916028699, 494420707, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1496, 'q5J3G7LXQoVXMoy', '2021-01-09 20:38:49', 126, 61, 18, 1925760682, 178856317, 478850048, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1497, 'riH3QhNGuLdadNH', '2021-01-09 20:38:49', 53, 2, 99, 1622896478, 410299567, 621762520, 3, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1498, 'thf03gjVvxDQ7Ev', '2021-01-09 20:38:49', 61, 180, 29, 1689077942, 500141238, 1309622395, 2, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1499, 'pGR584zBHtyRtfp', '2021-01-09 20:38:49', 34, 136, 16, 1127553447, 219244227, 1069804358, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24'),
(1500, '06OI1sMK1odx6K2', '2021-01-09 20:38:49', 142, 77, 48, 1215514511, 767010611, 1237983536, 0, '2021-01-21 16:09:24', '2021-01-21 16:09:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_details`
--

CREATE TABLE `transaksi_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` int(10) UNSIGNED NOT NULL,
  `tanggal_acara` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_akhir` time NOT NULL,
  `lokasi_acara` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi_id` int(10) UNSIGNED NOT NULL,
  `kabupaten_id` int(10) UNSIGNED NOT NULL,
  `kecamatan_id` int(10) UNSIGNED NOT NULL,
  `kelurahan_id` int(10) UNSIGNED NOT NULL,
  `catatan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksi_details`
--

INSERT INTO `transaksi_details` (`id`, `transaksi_id`, `tanggal_acara`, `jam_mulai`, `jam_akhir`, `lokasi_acara`, `provinsi_id`, `kabupaten_id`, `kecamatan_id`, `kelurahan_id`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 365, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Rumah Sakit No. 725, Pangkal Pinang 65968, Kalbar', 15, 43, 139, 130, 'Voluptatem occaecati ut maiores. Consequatur architecto molestiae earum veritatis ullam sit. Repudiandae deleniti tenetur sunt ea ad aspernatur. Perferendis qui quis aliquam sunt explicabo repellat.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(2, 413, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Baung No. 698, Denpasar 40473, DIY', 8, 60, 191, 101, 'Quis culpa deleniti blanditiis expedita rerum. Non illum dolorem in aut. Error sunt eos voluptatem. Deleniti similique doloremque tempore voluptas sunt.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(3, 160, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Adisumarmo No. 39, Bandung 69618, Jatim', 4, 2, 84, 190, 'Et quia et rerum architecto beatae delectus in. Voluptatem omnis et nulla et dolorem. Officiis consequatur quis voluptatem occaecati. Quas excepturi voluptas illo quia.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(4, 226, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Baranang No. 388, Langsa 96177, Malut', 2, 66, 77, 61, 'Nulla qui error et quaerat est. Quam et est consectetur aut hic maiores. Veniam voluptas qui occaecati.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(5, 493, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Merdeka No. 230, Bukittinggi 98102, Babel', 31, 32, 138, 180, 'Neque qui nulla laboriosam. Et quam molestiae distinctio quae est iure ut. Aut est et nam. Illum numquam quia sit quod.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(6, 335, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Orang No. 45, Salatiga 22791, Maluku', 26, 6, 22, 115, 'Dolorem harum rerum voluptas sunt hic et nisi. Aut in consequatur numquam aut cum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(7, 459, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Untung Suropati No. 257, Bontang 53657, Papua', 32, 23, 194, 38, 'Minus quibusdam praesentium perferendis nulla et sit. Dolorem aspernatur et eveniet sit nostrum eius.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(8, 330, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Industri No. 28, Blitar 59548, Jambi', 17, 67, 139, 73, 'Autem dolorem aut vel repellat culpa quia. Quis pariatur eum corporis minus suscipit. Saepe voluptatem reiciendis dignissimos magni neque et. Quam aut assumenda vel est magni quis in.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(9, 297, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Banal No. 668, Administrasi Jakarta Pusat 36428, Sulsel', 32, 23, 189, 168, 'Nulla odio praesentium eum iure commodi doloremque vel. Quod doloribus et adipisci quia sed doloremque.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(10, 130, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Abdul Muis No. 764, Samarinda 27476, DKI', 10, 20, 147, 7, 'Et repudiandae enim natus nobis. Et itaque sit sed dolores hic. Nisi iste beatae ad. Tempora sunt laborum quos pariatur saepe.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(11, 439, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Sudiarto No. 202, Cirebon 67690, DIY', 22, 73, 45, 37, 'Qui et laboriosam distinctio deleniti. Facilis omnis quis odio porro exercitationem quia. Est earum neque quos similique incidunt.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(12, 53, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Untung Suropati No. 344, Gunungsitoli 46171, Jabar', 31, 45, 22, 16, 'Molestiae tenetur est aut. Doloribus impedit voluptatum perspiciatis ratione molestiae aliquam. Non nihil sunt qui dolorem recusandae at. Eius dolorem eum dignissimos quis eius.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(13, 328, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Baha No. 302, Surabaya 22367, Sulut', 12, 8, 84, 189, 'Et quis quidem eaque nobis ipsa sapiente error officia. Fugit esse quae ducimus placeat rerum velit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(14, 74, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Veteran No. 846, Pekalongan 12426, Sulteng', 31, 18, 31, 133, 'Eveniet debitis temporibus quia voluptatum. Voluptas modi delectus culpa aut non voluptatem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(15, 321, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Tambun No. 886, Ambon 24515, Jatim', 17, 51, 189, 165, 'Atque sint temporibus voluptas iste. Ut non consequatur iste non. Atque labore eligendi repellat consequuntur.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(16, 454, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Gading No. 422, Yogyakarta 13792, Banten', 24, 42, 102, 132, 'Excepturi et dolores dolorem. Qui veniam aliquid nisi sapiente et nulla. Accusamus commodi atque quos rem facilis. Maiores ea doloremque facere.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(17, 37, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Yos No. 801, Padang 93320, Sulteng', 33, 68, 113, 75, 'Enim facere nam quis beatae ut voluptate dolorem. Id incidunt et non. Voluptatem eligendi incidunt et voluptatum delectus dolore ut in. Harum molestiae molestias fugiat ut ratione ut odit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(18, 468, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Tentara Pelajar No. 138, Medan 43902, Jambi', 7, 6, 60, 149, 'Est illo quos non explicabo non a expedita. Est totam natus ex consequatur. Facere necessitatibus modi aliquid dolorum quam. Repellendus officia eos corporis accusamus in nihil.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(19, 462, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Batako No. 544, Salatiga 23910, Kalteng', 27, 46, 83, 113, 'Veniam qui sint necessitatibus aut id commodi quisquam. Ab optio expedita modi iusto accusamus quibusdam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(20, 463, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Dago No. 56, Bandar Lampung 33569, Sumsel', 23, 54, 124, 91, 'At et recusandae omnis unde non rerum veniam. Excepturi est tempore itaque quis laborum modi sunt. Ut accusamus est vitae laboriosam ab. Ut dolores commodi molestiae magnam sint sit est.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(21, 217, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Gajah Mada No. 125, Pekanbaru 26284, Kalsel', 32, 47, 180, 19, 'Nemo sequi aut doloribus nostrum veniam dolor. Doloremque voluptas amet recusandae adipisci quod fugit officia. Doloribus velit consectetur culpa doloribus rem ea.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(22, 252, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Cut Nyak Dien No. 641, Batu 76222, Kaltara', 16, 80, 136, 172, 'Vel est eius laborum vel et at. Ut voluptas atque quae quibusdam omnis officia nisi rem. Corrupti aperiam non alias quos accusamus consequatur.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(23, 469, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Peta No. 249, Lhokseumawe 65285, Sulut', 8, 41, 114, 92, 'Autem vitae cupiditate dolor est. Tempora id beatae doloribus vero quaerat repellat eum. Aut rem velit debitis veniam qui iste.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(24, 476, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Cikutra Timur No. 881, Bau-Bau 48508, Sulut', 6, 64, 53, 155, 'Voluptas at nesciunt velit molestias. Natus deleniti molestiae et numquam consequatur ad. Sit velit officiis sit sapiente dolore voluptatem aut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(25, 30, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Kebangkitan Nasional No. 412, Pasuruan 51047, Babel', 14, 77, 58, 150, 'Nulla recusandae ullam voluptate animi nam excepturi. Deleniti corporis magnam pariatur fugit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(26, 268, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Asia Afrika No. 984, Administrasi Jakarta Selatan 16271, Riau', 2, 24, 71, 65, 'Neque corporis fuga reprehenderit qui. Ipsam ipsa et consequatur perferendis. Temporibus excepturi quibusdam quasi est voluptas ipsam. Rerum debitis ut placeat.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(27, 326, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Bazuka Raya No. 8, Madiun 72720, Kaltim', 3, 20, 181, 102, 'Adipisci ab eaque qui. Qui error aut atque est. Consequatur dicta id quas asperiores. Quo et quo est dolorem eius et. Iste magni ut eos repudiandae tenetur incidunt.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(28, 37, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Bakau No. 213, Gunungsitoli 92432, Sumsel', 19, 53, 186, 126, 'Suscipit dolorem minima perferendis quibusdam. Dolor dolores omnis voluptas voluptatem consequatur totam. Labore veniam eum qui. Ut autem earum facilis perferendis beatae.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(29, 62, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Sukabumi No. 981, Binjai 82028, Malut', 31, 48, 19, 106, 'Doloribus et deserunt est animi nisi sit nemo. Excepturi corrupti est nulla rem ex neque.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(30, 131, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Ir. H. Juanda No. 824, Administrasi Jakarta Barat 94700, Sultra', 26, 31, 80, 160, 'Qui maiores sint ipsa quasi eos qui. Beatae sequi vel officiis magnam consequatur earum. Qui voluptatem reiciendis aut quia odit nam. Id officiis et illum consectetur saepe quas.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(31, 317, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Bass No. 156, Subulussalam 41792, Pabar', 7, 64, 123, 128, 'Voluptatem quaerat quia labore dolorem accusantium et eveniet possimus. Asperiores aut et hic et. Maiores vitae quo ipsum et. Cumque perferendis ut facere autem ex repellat facilis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(32, 375, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Gatot Subroto No. 635, Payakumbuh 20311, Lampung', 15, 79, 136, 158, 'Vel sit tempora error fugiat. Pariatur et laudantium facere omnis laudantium rerum recusandae. Dolores quia quia pariatur laudantium est.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(33, 329, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Pattimura No. 962, Sabang 63520, Sultra', 30, 50, 76, 106, 'Culpa qui amet sunt esse qui. Hic perferendis aut incidunt quisquam et. Corporis nobis exercitationem incidunt ea et et quasi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(34, 121, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Nangka No. 704, Padang 63146, Gorontalo', 19, 70, 177, 150, 'Facilis deserunt adipisci omnis ut modi quasi. Molestiae consectetur quia consequatur rerum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(35, 443, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Cut Nyak Dien No. 486, Subulussalam 66686, Bengkulu', 31, 46, 49, 91, 'Aperiam non sint enim cupiditate. Velit corrupti modi suscipit sit voluptates. Aut quos iure aut ipsa. Dolore natus eligendi nihil saepe.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(36, 71, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Nakula No. 715, Salatiga 81565, Sumbar', 30, 63, 26, 93, 'Dolorem rerum aut veritatis corrupti. Autem aut soluta deleniti et rerum. Et sit a explicabo veritatis ab et. Expedita consectetur vel autem earum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(37, 62, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Jaksa No. 922, Administrasi Jakarta Barat 77397, Maluku', 27, 5, 172, 165, 'Tempora quo repudiandae tempora et et ut temporibus. Eos nihil amet accusamus ad velit corrupti autem. Animi molestiae consectetur porro est.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(38, 4, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Bakau Griya Utama No. 222, Pasuruan 38376, Sumbar', 29, 12, 34, 76, 'Ut beatae atque sed beatae facilis minus. Et numquam culpa illum neque. Perferendis voluptatem soluta labore sunt.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(39, 268, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Kalimantan No. 933, Pasuruan 22453, DKI', 16, 55, 112, 33, 'Ut libero harum et dolorem nisi. Sed qui est optio quia voluptas. Nostrum expedita veniam maxime aspernatur nesciunt aspernatur ipsum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(40, 394, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Babakan No. 36, Probolinggo 67499, Sumut', 4, 38, 35, 125, 'Totam nihil sapiente quibusdam ut qui voluptatum. Harum in architecto laboriosam. Sit consequatur beatae odit mollitia quia amet voluptatem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(41, 85, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Astana Anyar No. 75, Administrasi Jakarta Timur 73167, Sulsel', 17, 48, 152, 23, 'Fugiat dicta blanditiis rerum amet. Accusamus similique consequatur eaque. Commodi magni aspernatur et at voluptatem ab sit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(42, 53, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Industri No. 707, Tanjung Pinang 99389, Bali', 24, 41, 20, 92, 'Unde vel similique esse consequatur omnis labore. Aut dolor quis qui delectus est sit. Dolor optio ut dolor minima expedita et. Numquam deserunt sapiente laudantium voluptatum quis ipsam cumque.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(43, 31, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Ahmad Dahlan No. 503, Ambon 52652, Banten', 28, 31, 41, 161, 'Id animi sequi quia quo quasi exercitationem laudantium. Excepturi modi sed sequi dicta inventore rerum consequatur.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(44, 89, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Thamrin No. 731, Serang 53437, Sulsel', 18, 46, 43, 119, 'Quia esse qui laudantium est mollitia. Accusamus voluptates consequatur veniam recusandae. Sint quibusdam eos repellat quia accusamus porro accusamus distinctio.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(45, 216, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Tubagus Ismail No. 489, Samarinda 63091, NTT', 26, 40, 50, 97, 'Dolores voluptatem distinctio facere aut necessitatibus est voluptatem. Accusamus fuga fugit quae mollitia.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(46, 59, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Tambak No. 398, Bukittinggi 42002, Riau', 11, 2, 92, 67, 'Provident dignissimos minima itaque et. Dolore ipsa sequi totam neque id fugit. Perferendis ut autem inventore maiores ut laboriosam eos.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(47, 70, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Babakan No. 285, Solok 56978, Sulut', 8, 51, 174, 157, 'Omnis animi sit exercitationem. Nobis modi qui qui sed. Quisquam impedit esse culpa eos et ipsam. Sunt dolorum et nobis ipsum vel. Ea doloremque id eaque consequuntur.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(48, 278, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Sugiyopranoto No. 925, Malang 81727, Bali', 17, 59, 150, 151, 'Quia molestiae fuga sed suscipit id illo qui. Eum suscipit illo quibusdam et totam. Est minus enim quia unde enim.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(49, 122, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Basudewo No. 432, Batam 46941, DIY', 1, 17, 146, 56, 'Amet minus animi aut ut expedita animi voluptates. Quisquam dolorem consequatur similique et. Minus et vel repudiandae mollitia fugiat sed.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(50, 463, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Bagis Utama No. 385, Tanjung Pinang 51080, Kaltim', 27, 26, 56, 85, 'Expedita occaecati animi sit est. Quia ipsum sunt officiis reiciendis possimus expedita sit. Ea dolor omnis quisquam dignissimos occaecati. Sed qui repellat modi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(51, 24, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Suprapto No. 942, Cirebon 85959, Bengkulu', 10, 56, 124, 177, 'Ad veritatis rerum impedit. Et harum deleniti cumque aliquam itaque ea. Cupiditate voluptatem placeat voluptatem debitis blanditiis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(52, 71, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Suryo No. 49, Tarakan 58001, Sulsel', 11, 1, 183, 67, 'In debitis ut ut asperiores praesentium porro. Quia est aut et amet laboriosam fugiat. Fuga vel delectus rerum omnis deserunt expedita.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(53, 382, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Otto No. 412, Administrasi Jakarta Pusat 66650, Bali', 21, 53, 58, 59, 'Totam voluptatem incidunt ratione odio ipsam. Culpa repudiandae beatae earum. Necessitatibus molestiae tempora cupiditate perferendis et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(54, 448, '2021-01-02', '20:38:49', '20:38:49', 'Ds. HOS. Cjokroaminoto (Pasirkaliki) No. 901, Serang 98757, Sulteng', 10, 73, 164, 108, 'Molestiae molestiae et labore asperiores. Rerum reiciendis quam voluptas quibusdam beatae. Quia facilis molestiae voluptates.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(55, 211, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Warga No. 320, Sorong 68716, Malut', 4, 10, 26, 12, 'Beatae odit quasi maiores rerum voluptatum enim illo. Porro eos laborum a magni. Quibusdam odio facere nisi repellat quo dicta. Culpa maxime adipisci impedit placeat nemo.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(56, 452, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Dewi Sartika No. 578, Kotamobagu 42575, Sumut', 21, 30, 163, 195, 'Perferendis magnam qui nobis exercitationem ut et doloremque. Est sed non est quaerat rem. Qui at et ipsum accusamus assumenda porro. Dolorum expedita quod vero quae quas velit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(57, 380, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Wora Wari No. 120, Metro 43948, Kalteng', 11, 11, 73, 129, 'Consectetur perferendis rerum quos rerum. Repellendus rem natus sed. Est eius adipisci eum architecto eius corrupti assumenda.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(58, 186, '2021-01-02', '20:38:49', '20:38:49', 'Ds. B.Agam 1 No. 775, Surabaya 19646, Babel', 23, 8, 70, 2, 'Et nisi tempore molestiae deleniti quasi. Accusantium molestiae eos at velit ex. Id suscipit et quaerat assumenda. Officiis illum non ut optio ut blanditiis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(59, 63, '2021-01-02', '20:38:49', '20:38:49', 'Ds. R.E. Martadinata No. 791, Lubuklinggau 48449, Sulteng', 18, 10, 36, 141, 'Nobis odio similique voluptas maiores quod. Qui in fugiat non maiores sint aperiam beatae. Ut quod qui sed ullam non ut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(60, 33, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Otista No. 406, Tomohon 73973, Jabar', 17, 48, 99, 150, 'Voluptatem earum cumque fugit cum voluptatem id nostrum. Sunt ab aspernatur sint ipsa omnis animi. Placeat fugit nulla dolore a cum. Nihil magnam sint quasi consequatur.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(61, 251, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Salatiga No. 336, Kediri 38059, Banten', 7, 7, 192, 51, 'Minus ut ut nam consectetur debitis. A quasi temporibus ullam necessitatibus consequuntur non corporis consequatur. Provident odit blanditiis eum officiis. Alias at et porro quis sequi ea asperiores.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(62, 26, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Radio No. 832, Banjarmasin 52617, Jateng', 11, 62, 10, 165, 'Tenetur voluptas cumque ipsum laboriosam sit enim ut. Ut eveniet aut id eos eos. Nulla facilis iste officia et. Facere qui voluptates sit consequuntur odit mollitia.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(63, 118, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Honggowongso No. 482, Bima 93211, Banten', 25, 33, 82, 178, 'Ut eligendi inventore asperiores quo dolore. Quo qui nemo aliquid eveniet ab. Quasi reprehenderit incidunt iure blanditiis eius.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(64, 93, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Sam Ratulangi No. 142, Malang 64377, DKI', 14, 25, 89, 20, 'Dolor nemo dolore voluptate. Porro veritatis sint nulla. Facilis magnam est adipisci quos. Repudiandae quia est dolores recusandae adipisci vero repellat ratione.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(65, 401, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Rajawali Barat No. 719, Bontang 84732, Sumbar', 19, 58, 122, 63, 'Ipsa qui qui voluptas voluptatem. Eius non sed in quia magnam ea odit. Nemo error inventore et enim ea rerum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(66, 111, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Wahidin No. 654, Palangka Raya 75234, Bengkulu', 31, 3, 113, 28, 'Corporis sed quas itaque quod qui. Veritatis quo vel qui molestias aut rerum. Error ex omnis et corporis ut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(67, 328, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Bakti No. 774, Tanjung Pinang 53652, Maluku', 25, 50, 170, 132, 'Tempora itaque quas tempore molestias laborum quidem corrupti. Facere omnis placeat corrupti neque dignissimos. Consequatur laudantium ut cupiditate similique aperiam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(68, 80, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Muwardi No. 522, Makassar 17583, Bali', 2, 23, 45, 11, 'Mollitia quia ducimus voluptatem enim odio. Dolorem quis et beatae cum repudiandae.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(69, 302, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Bakin No. 982, Kotamobagu 79778, Aceh', 21, 5, 150, 180, 'Aut excepturi aut voluptate suscipit eos possimus. Dicta culpa quia ut recusandae dolorem facere. Enim qui quisquam qui. Et eligendi aut voluptates dignissimos tempora.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(70, 500, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Laswi No. 437, Tangerang Selatan 32707, DKI', 17, 20, 119, 19, 'Praesentium repellat voluptates magnam sunt quis aperiam. Consequatur dolor eos omnis et placeat vel.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(71, 31, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Lembong No. 690, Langsa 77736, Kaltim', 6, 30, 44, 149, 'Repellat hic nobis explicabo dolor commodi voluptas. Cupiditate blanditiis tempore rerum dolore officiis hic. Neque debitis aspernatur suscipit minima ex.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(72, 87, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Sukajadi No. 654, Salatiga 96402, Malut', 32, 32, 74, 6, 'Consequatur facilis suscipit omnis sed aut libero voluptatem accusamus. Quae incidunt similique omnis accusantium quis ex eius. Et omnis ut est architecto est.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(73, 131, '2021-01-02', '20:38:49', '20:38:49', 'Jln. S. Parman No. 720, Payakumbuh 52398, Aceh', 2, 72, 190, 93, 'Dolorem dolorum nihil sit nobis facere. Mollitia beatae porro sunt ea rerum et voluptas. Expedita autem facilis omnis ratione. In reprehenderit veritatis nulla sit ipsum adipisci voluptates.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(74, 207, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Wahid No. 810, Tomohon 72219, Gorontalo', 21, 17, 132, 122, 'Iusto earum sint consequuntur provident beatae delectus voluptas cupiditate. Neque qui dicta nesciunt et qui quia enim. Unde enim ut quas optio.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(75, 102, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Gotong Royong No. 915, Semarang 51794, Sultra', 27, 27, 63, 135, 'Molestias est architecto qui temporibus qui ex. Saepe voluptatum incidunt voluptas velit soluta. Sunt laboriosam id ipsa harum placeat. Adipisci esse consequuntur reprehenderit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(76, 258, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Thamrin No. 977, Malang 77663, Malut', 17, 38, 109, 148, 'Possimus velit ea sunt libero consequatur consequuntur quia. Omnis et recusandae vero blanditiis enim qui quae. Cumque earum praesentium magni molestiae quasi tenetur.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(77, 93, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Aceh No. 289, Mataram 64199, Bengkulu', 22, 38, 158, 190, 'Molestias eligendi reprehenderit pariatur quaerat et quae. Dolorum similique ut autem reiciendis nisi repellendus. Dolor sunt impedit illum ipsam consequatur et magnam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(78, 429, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Gotong Royong No. 526, Tanjungbalai 74430, Kalbar', 12, 4, 150, 129, 'Incidunt et amet repellendus mollitia et voluptas ipsam earum. Perspiciatis officia molestiae rem hic aut et. Dolor nulla fugit ipsam blanditiis aut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(79, 378, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Bhayangkara No. 962, Depok 81321, Kaltara', 18, 67, 127, 123, 'Omnis non voluptatem vitae omnis culpa et praesentium. Nemo quo dolor nesciunt sunt quo eligendi. Quas sit commodi voluptatem dolorem ratione. Laboriosam cupiditate maxime alias.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(80, 285, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Tambun No. 496, Bengkulu 27381, Kalbar', 8, 39, 12, 145, 'Quas nostrum id enim quibusdam maxime voluptatum quo dignissimos. Blanditiis et voluptates unde autem ratione. Non velit et corrupti. Ut saepe qui iure.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(81, 438, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Babah No. 744, Padang 94584, Riau', 32, 59, 23, 69, 'Veniam maiores ullam aperiam. Molestiae impedit necessitatibus praesentium expedita. Maxime ut sed sed optio occaecati expedita. Aut earum voluptatem et perferendis provident hic.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(82, 209, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. S. Parman No. 209, Pangkal Pinang 12193, Kalbar', 15, 24, 43, 127, 'A dolores distinctio expedita amet beatae. Quis corrupti fugit qui quia nihil tempore fuga. Exercitationem fugit tempore aut sequi qui. Adipisci iure ut consequatur fugit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(83, 30, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Sumpah Pemuda No. 495, Bontang 98826, Jateng', 31, 51, 119, 119, 'Rem voluptates veritatis quos aut et. Id quaerat error fugit. Voluptas quos ipsam doloremque et voluptatibus earum ipsa.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(84, 271, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Antapani Lama No. 397, Bogor 14385, Kalteng', 18, 21, 56, 164, 'Mollitia voluptatem et porro rem et sit facere. Voluptas voluptas cupiditate est quia voluptatem. Nostrum tempore numquam id ea excepturi quos veniam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(85, 415, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Ciwastra No. 998, Jambi 53243, Sulteng', 11, 34, 98, 142, 'Dolores rerum deleniti magnam deleniti. Quia iusto velit optio neque perferendis ut perferendis. Corporis commodi sunt ut necessitatibus illum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(86, 344, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Tambun No. 285, Bitung 20233, Kaltara', 23, 55, 73, 33, 'Est voluptas perferendis ducimus totam ut eius dolores impedit. Et enim et aperiam maiores officia et. Laborum nihil atque officiis nostrum sapiente amet tempore. Non vel ex dolore sunt.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(87, 142, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Kusmanto No. 321, Salatiga 79667, Bengkulu', 4, 39, 47, 79, 'Sunt voluptatem et quibusdam eos nisi unde accusantium. Libero cupiditate quia aut similique. Quis maiores impedit molestias molestias.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(88, 455, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Yos No. 942, Probolinggo 43951, Malut', 19, 13, 79, 163, 'Dolor possimus vel ut dolorem. Ipsum atque dolorum suscipit nihil magni commodi ut. Qui est dignissimos temporibus sint ipsa natus aliquid. Id modi libero neque et debitis qui sit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(89, 122, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Baik No. 588, Tebing Tinggi 56502, Jateng', 30, 27, 19, 16, 'Aut dolorum eos dolores. Mollitia quas saepe laboriosam quo possimus sit. Ab et quibusdam velit rerum officiis voluptatibus.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(90, 50, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Dewi Sartika No. 476, Tarakan 18450, Kalsel', 19, 44, 146, 62, 'Reiciendis voluptas molestiae nostrum deserunt cupiditate. Et ut ut quibusdam consequatur sint. Esse labore quibusdam nulla.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(91, 371, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Bawal No. 720, Kupang 39442, Maluku', 32, 57, 39, 18, 'Sit vel ut nihil labore. Nemo provident ea voluptatem alias repellendus rerum quibusdam soluta. Ipsa in ea perferendis non. Dolor quia magnam qui eveniet error.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(92, 266, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Kiaracondong No. 355, Probolinggo 12191, Sultra', 21, 63, 174, 194, 'Id fugiat rem atque voluptas perferendis omnis quis. Quia quasi laudantium unde totam reprehenderit sed maiores. Rerum vitae voluptatem amet et quia.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(93, 395, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Jagakarsa No. 856, Mataram 85891, Jateng', 9, 55, 195, 49, 'Facilis at qui eius eveniet non dolore id. Iure dolorum eveniet ipsa ipsam sit. Sunt aut libero modi et non quo non.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(94, 196, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Radio No. 115, Magelang 20105, Sumbar', 7, 73, 105, 135, 'Rerum porro eveniet placeat perspiciatis. Et ab asperiores voluptas aliquam omnis provident harum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(95, 340, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Kartini No. 386, Payakumbuh 82918, Jatim', 23, 27, 78, 176, 'Nulla qui quam nostrum laudantium rerum dolor non. Assumenda ex est sint quidem aut suscipit. Ex magnam eaque necessitatibus rerum et atque.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(96, 120, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Juanda No. 544, Solok 57195, Papua', 23, 68, 16, 166, 'In ut ipsum dolor magnam officia vel. Nostrum voluptas quaerat quis necessitatibus quia quae. Dolor ut molestiae sed voluptatem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(97, 372, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Nanas No. 51, Probolinggo 42782, Sultra', 5, 5, 196, 188, 'Reprehenderit est nemo occaecati voluptatem sit ipsum temporibus occaecati. Placeat eum sequi soluta iusto quis aut dolorum accusamus. Expedita similique dolorem ab iusto accusantium.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(98, 480, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Bakhita No. 180, Pekalongan 93868, Bengkulu', 7, 67, 137, 41, 'Reprehenderit rerum totam non officia commodi. Voluptas itaque reprehenderit natus dolorem. Voluptatibus consequatur quis rerum deleniti aut eius dicta.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(99, 284, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Nanas No. 387, Payakumbuh 79028, Kaltara', 19, 57, 64, 52, 'Quia expedita quo consequatur minima tenetur. Voluptates harum non eveniet modi quas.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(100, 456, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Umalas No. 708, Semarang 31332, Gorontalo', 18, 26, 140, 144, 'Fugit eum ipsum facilis. Rem exercitationem exercitationem ea et cumque repellendus consequatur. Et et voluptatum quam aspernatur ad consequatur porro.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(101, 374, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Barasak No. 236, Cilegon 94577, Bengkulu', 28, 27, 136, 60, 'Nesciunt explicabo voluptatibus non placeat. Illum rerum saepe voluptates et. Aut iure qui voluptas magni aut suscipit magni nisi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(102, 94, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Teuku Umar No. 239, Tegal 48080, Sumut', 2, 29, 108, 64, 'Ea possimus facilis ad. Omnis quis modi quis. Voluptates enim id minima.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(103, 257, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Baing No. 826, Sabang 98425, Gorontalo', 30, 3, 161, 122, 'Nostrum sit reprehenderit vero et et amet beatae. Quia officiis quidem quia amet blanditiis dolorem numquam non. Sint reiciendis perspiciatis odit repellendus consectetur earum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(104, 5, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Wahid Hasyim No. 603, Padang 29621, Sumut', 7, 28, 43, 51, 'Rem sit maiores magnam iste vel nobis debitis illum. Reiciendis et omnis sequi adipisci numquam. Repellat quam et dicta officia odit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(105, 229, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Barat No. 446, Palu 62360, Riau', 6, 69, 38, 42, 'Consequuntur et ut est rerum. Quidem aliquid eos earum quia voluptatem. Tempora blanditiis reprehenderit enim quis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(106, 254, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Haji No. 814, Parepare 32619, Bengkulu', 5, 79, 89, 124, 'Veritatis rerum voluptatem corrupti nam officia. Ut quis quo ratione qui. Corrupti ratione eligendi voluptates.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(107, 289, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Sadang Serang No. 30, Bandar Lampung 46879, Jatim', 15, 7, 149, 126, 'Autem doloremque beatae est dolorum alias officiis quia. Et aut non dolor sit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(108, 90, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Muwardi No. 426, Tarakan 41837, Pabar', 5, 24, 121, 11, 'Sunt inventore minima reiciendis iusto modi accusamus officia laboriosam. Est quaerat repudiandae laudantium quis. Porro cupiditate illum autem aspernatur in.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(109, 269, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Casablanca No. 594, Yogyakarta 57548, Jatim', 7, 79, 107, 33, 'Dicta beatae minus temporibus laudantium deleniti autem et consectetur. Non repellendus nobis suscipit voluptas occaecati. Qui reiciendis fuga ea non.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(110, 418, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Achmad Yani No. 739, Sorong 48283, Sumbar', 30, 71, 8, 164, 'Voluptatem soluta tempore maxime consequuntur facere nisi quis. Eos rerum velit perferendis. Laudantium laboriosam vel praesentium harum aut et. Porro dolores aut odio.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(111, 183, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Kalimantan No. 125, Tangerang 16385, Sulut', 7, 35, 124, 54, 'Officiis voluptatem voluptates sapiente in tenetur aut illo saepe. Qui alias labore non. Minima magni tenetur corrupti qui similique ut. Iure ut quia at officiis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(112, 464, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Bank Dagang Negara No. 741, Bengkulu 24008, Bengkulu', 18, 19, 187, 22, 'Cum et voluptate totam quasi et nobis et molestiae. Nemo mollitia aliquam distinctio est commodi itaque optio. Ea amet nostrum omnis occaecati hic rerum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(113, 459, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Lumban Tobing No. 514, Denpasar 10357, Sumbar', 12, 69, 105, 108, 'Est debitis odit eveniet voluptas ut tempore porro. Officia porro culpa consequuntur. Vel ea delectus et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(114, 287, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Elang No. 162, Batu 71596, Kaltim', 4, 12, 153, 181, 'Et est neque perspiciatis. Et repellendus fuga odit est. Pariatur illum aut esse dolor minima omnis distinctio.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(115, 159, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Padang No. 295, Samarinda 90184, Sumbar', 22, 68, 166, 157, 'Neque repellat voluptatem hic. Est nostrum voluptates dolore et id est quo. Labore quia nesciunt inventore illum rerum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(116, 191, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Moch. Yamin No. 529, Jayapura 63261, Kalbar', 17, 12, 128, 104, 'Et recusandae adipisci amet iusto eligendi aut. Aut quia aut quo praesentium. Vel ipsum necessitatibus id. Et minus ipsum architecto culpa esse perspiciatis incidunt.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(117, 26, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Pasir Koja No. 547, Solok 66681, NTT', 15, 2, 146, 146, 'Nulla natus omnis occaecati maiores illum aut est dignissimos. Id nobis id cum quibusdam quibusdam eos iure. Ut occaecati ipsa rerum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(118, 136, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Sutarto No. 573, Pekalongan 87803, Banten', 27, 54, 137, 30, 'Sequi deserunt eveniet molestias possimus esse. Aut distinctio maxime officiis nihil et voluptas non. Recusandae quasi eligendi totam qui voluptas.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(119, 242, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Soekarno Hatta No. 790, Tangerang 60583, Bengkulu', 14, 6, 163, 133, 'Molestiae aut quod aut et tenetur. Molestiae et debitis esse.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(120, 447, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Labu No. 164, Manado 64854, Jambi', 22, 71, 65, 143, 'Quas omnis dolorem nesciunt amet quo et. Aliquam delectus ratione explicabo nesciunt cumque ea quasi. Voluptas sint nihil fuga ea qui. Fuga tempora nihil accusantium minus.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(121, 31, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Siliwangi No. 909, Bogor 21806, NTT', 18, 66, 193, 45, 'Ut fugit minus doloribus alias laborum sint ullam dolorem. Animi officia mollitia culpa totam autem. Nostrum autem sed et. Cum deleniti eius aut omnis facilis ab aut veniam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(122, 286, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Warga No. 534, Pematangsiantar 48120, Babel', 14, 3, 174, 7, 'Aut maxime magni aut exercitationem. Amet dolore eius iste quis harum ut tempore. Magni dolores quia laboriosam nisi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(123, 101, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Baranangsiang No. 845, Pekalongan 37470, Kalteng', 5, 18, 26, 109, 'Illum consectetur minima culpa eaque. Quae nulla est sed et consequuntur autem et atque. Quod at officia velit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(124, 74, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Suniaraja No. 873, Batu 77386, Gorontalo', 29, 22, 175, 16, 'Ut sit et est. Voluptate voluptatem ipsa rerum illo. Tempora deserunt veniam est culpa iure.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(125, 171, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Flora No. 814, Pariaman 60580, DKI', 10, 21, 139, 88, 'Itaque aliquam rerum nihil nostrum consequatur. Aut tempore iure omnis non qui recusandae perferendis. Est ipsa non ad aperiam pariatur voluptatem est.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(126, 297, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Bappenas No. 762, Sukabumi 54882, Sumsel', 1, 19, 174, 49, 'Quasi voluptatem beatae inventore et libero et ut. Quod ut voluptatem asperiores vel odit dolores consequatur.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(127, 487, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Wahidin Sudirohusodo No. 652, Denpasar 77411, NTT', 26, 18, 191, 23, 'Aut non sed ipsa et. Repudiandae explicabo accusamus fugiat officiis est modi. Voluptas reiciendis est dicta dolores sit est ipsa. Voluptas et magnam atque facere omnis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(128, 467, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Sentot Alibasa No. 636, Mataram 96824, Kaltim', 23, 43, 105, 56, 'Ex eaque animi non veritatis et quia. Quos ad perferendis earum ut impedit. Maxime qui fugit alias et ut similique odit. Amet optio sed at voluptas et voluptatem aut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(129, 159, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Peta No. 237, Kotamobagu 93712, Sumbar', 14, 45, 39, 200, 'Ad rerum laudantium aperiam voluptate labore debitis maiores. Mollitia suscipit aspernatur earum consectetur praesentium.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(130, 221, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Yoga No. 817, Bau-Bau 22850, Sulsel', 16, 57, 156, 162, 'Sint ipsa alias magni numquam. Fuga beatae totam omnis laborum culpa dolores magnam adipisci. Rem culpa inventore cum laudantium fuga.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(131, 258, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Sukajadi No. 402, Jayapura 82291, Sulteng', 14, 5, 73, 40, 'Iusto totam nostrum beatae ut. Id et eveniet ut minima beatae. Perspiciatis accusamus animi incidunt eum quam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(132, 407, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Adisumarmo No. 966, Pasuruan 10796, Kalbar', 32, 77, 141, 112, 'Recusandae quibusdam aliquid at eos quasi sunt inventore. Culpa veniam ipsa qui pariatur tempora esse dolor. Similique alias quisquam possimus sequi sunt vero.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(133, 465, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Cut Nyak Dien No. 862, Padangsidempuan 59845, Sulsel', 29, 13, 79, 71, 'Optio non hic aut. Dolor et optio occaecati eos consequuntur. Consequatur omnis voluptatem autem eveniet magni. Debitis aut tenetur quis nostrum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(134, 400, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Kebangkitan Nasional No. 360, Madiun 26062, Sumbar', 20, 42, 3, 167, 'Magni autem laudantium hic debitis inventore. Rerum autem qui nihil. Similique ut quas nulla perferendis molestiae deleniti.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(135, 310, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Cikutra Timur No. 160, Batam 23941, Jabar', 15, 42, 22, 125, 'Et quos et deleniti quod maxime. Dolores ab magnam numquam in. Beatae omnis nemo ut dolore. Officia et sequi non autem at dicta nemo.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(136, 488, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Laksamana No. 556, Cimahi 35872, Kalteng', 20, 47, 92, 53, 'Ut unde id numquam esse. Recusandae repudiandae blanditiis quia officia.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(137, 195, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. W.R. Supratman No. 838, Pariaman 64383, Kalteng', 28, 77, 108, 191, 'Et provident est est asperiores atque ullam aut. Laudantium dolorum cupiditate eos voluptatum. Eos asperiores et itaque et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(138, 438, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Rajiman No. 635, Mojokerto 99744, DIY', 32, 56, 38, 195, 'Deserunt facere dolorem accusamus magni. Et cumque rerum repellendus eum nam natus debitis. Fugit qui aut est qui quo velit. Blanditiis a non et consequatur magni.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(139, 4, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Nanas No. 510, Surabaya 72283, Aceh', 24, 27, 166, 123, 'Magnam quia expedita culpa distinctio facilis. Quos quibusdam ut harum ipsa facilis. Repellendus magnam illum eveniet quo aut aperiam. Pariatur libero distinctio laudantium ut sed distinctio.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(140, 480, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Basudewo No. 86, Administrasi Jakarta Selatan 83818, Kaltim', 6, 14, 142, 29, 'Occaecati reprehenderit atque pariatur aut. Eum ut laudantium suscipit nostrum veritatis et. Ipsam omnis hic et consequatur sit sunt.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(141, 465, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Eka No. 559, Palembang 16389, Papua', 21, 6, 43, 141, 'Explicabo quam quisquam aut sunt fugit perferendis. Quia vitae dolores ipsa excepturi amet quia facilis. Delectus at quas sint.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(142, 17, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Antapani Lama No. 370, Langsa 23460, NTT', 17, 51, 69, 117, 'Cumque ut quidem quis excepturi nam ut. Ducimus magni molestiae inventore voluptatem aliquid ipsum. Sunt optio aut vero alias sit sint voluptas ut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(143, 482, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Thamrin No. 713, Tidore Kepulauan 81528, Gorontalo', 24, 44, 125, 170, 'Soluta aliquid aut dolor aut iusto accusantium. Doloremque id aut quos consequatur eaque fugit consequuntur. Autem corporis magnam voluptate.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(144, 451, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Babah No. 858, Bontang 26754, Jateng', 23, 32, 142, 47, 'Maiores recusandae labore molestiae cupiditate sed quae voluptatem. Quo perferendis ad deleniti quis ut error id. Nesciunt in adipisci nihil consequatur numquam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(145, 258, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Batako No. 139, Banjarmasin 57810, Jateng', 18, 49, 99, 25, 'Nisi sit facilis tempore voluptatum ut commodi. Laudantium voluptatem saepe enim sed illo eaque. Quae alias quo perspiciatis id doloribus dicta amet est. Consequatur eum fugiat ipsam numquam odit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(146, 465, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Labu No. 721, Kediri 64299, Sulteng', 11, 72, 109, 74, 'Omnis aut id vero facere quisquam. Dolorem illo explicabo voluptates consequatur aspernatur quibusdam. Dolorem aut voluptatibus nulla consequuntur veritatis. Voluptas aliquid non est commodi dolorem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(147, 99, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Bambon No. 860, Samarinda 23139, Sulteng', 12, 74, 30, 174, 'Ut corrupti excepturi nobis enim magni. Voluptate tempore corrupti suscipit et commodi ut. Doloribus qui cupiditate repellat ut eligendi et asperiores. Atque praesentium porro sint.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(148, 137, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Camar No. 160, Tidore Kepulauan 34145, Riau', 19, 18, 143, 30, 'Eaque mollitia officiis recusandae labore harum earum consequatur atque. Illum tempore totam ullam et ipsam. Qui voluptas architecto in illo at id. Quia consequuntur recusandae vel nihil.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(149, 92, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Lembong No. 913, Gunungsitoli 33891, Jabar', 17, 75, 85, 149, 'Et dolorem temporibus et nemo unde. Quos est autem sed dolores sint distinctio mollitia. Et in suscipit vel quis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(150, 394, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Sumpah Pemuda No. 507, Lhokseumawe 22085, Sulteng', 30, 50, 100, 153, 'Quo mollitia sit impedit voluptatibus quis omnis. Neque porro laboriosam molestias earum quae. Quod voluptas et vel.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(151, 170, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Imam Bonjol No. 241, Kupang 92998, Kepri', 8, 68, 117, 193, 'Totam libero aperiam sed. Nam voluptas est molestias expedita sed sed fugit. Ipsa rem blanditiis in sequi enim odio. Praesentium necessitatibus alias quae nemo atque.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(152, 457, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Cemara No. 351, Pagar Alam 94777, Aceh', 22, 29, 68, 48, 'Velit dolor saepe commodi laborum voluptates aspernatur modi. Dolorum iste tempore maxime ut ea eius quia. Quo ut dolor nobis suscipit minus sapiente minima qui.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(153, 12, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Warga No. 368, Balikpapan 43831, Sulteng', 22, 17, 61, 97, 'Dignissimos voluptatibus qui aut est est. Veritatis doloribus nostrum et tenetur ut neque. Sit nisi et excepturi consequatur minima dolorum fuga. Recusandae hic occaecati enim illo.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(154, 224, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Yohanes No. 167, Bau-Bau 86512, Kaltim', 3, 18, 50, 83, 'Et ipsa incidunt animi non. Vel pariatur explicabo eaque laudantium error eos quia. Expedita et debitis velit aperiam molestiae sed. Voluptatem non et quibusdam minus eos.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(155, 125, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Padang No. 511, Administrasi Jakarta Pusat 59654, Jatim', 27, 56, 178, 19, 'Enim facilis eaque quam nemo earum. Sint eaque dicta quidem voluptate totam quo eum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(156, 404, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Bass No. 34, Kotamobagu 67503, Jatim', 4, 22, 153, 146, 'Omnis ducimus aliquam quae sint. Est blanditiis veniam vel aut quisquam sunt eum. Exercitationem corrupti dolorem enim facilis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(157, 152, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Kebonjati No. 27, Bengkulu 39561, Pabar', 18, 38, 182, 125, 'Atque libero odio recusandae dolorum. Consequatur molestiae vitae rerum illo incidunt eos provident. Magni suscipit voluptatem labore possimus sunt. Sit quasi blanditiis eveniet quam et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(158, 430, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Tentara Pelajar No. 560, Ternate 43270, Sulut', 32, 41, 60, 121, 'Voluptatem aut soluta voluptas atque. Et quae est qui pariatur. Rerum qui expedita quam voluptatem tempora enim quo. Facilis suscipit libero vel.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(159, 117, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Ronggowarsito No. 763, Gunungsitoli 17965, Sumsel', 11, 41, 8, 153, 'Totam velit cupiditate cum. Consequatur odio ut dolorem. Eligendi eos illo nam corrupti.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(160, 458, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Jakarta No. 858, Bengkulu 71783, Kalteng', 27, 52, 94, 147, 'Non aliquam et suscipit. Doloribus totam ipsum consequatur veniam sint impedit. Voluptatum laborum aut neque deleniti. Veniam quidem vitae et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(161, 257, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Babah No. 260, Dumai 29282, Sulteng', 30, 25, 152, 33, 'Similique sit natus cumque iure. Autem vitae laborum ab saepe assumenda amet vel culpa.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(162, 261, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Baing No. 974, Tegal 67167, Sulbar', 33, 65, 6, 156, 'Odit aliquid dolor qui enim. Rerum suscipit quia harum reiciendis voluptatum. Veritatis culpa alias perferendis voluptatum consequatur.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(163, 283, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Moch. Yamin No. 376, Pasuruan 48651, Kepri', 9, 23, 1, 9, 'Nostrum voluptate temporibus et nam omnis hic molestiae qui. Sapiente aliquid quae ea ea saepe commodi ducimus. Qui voluptatem aut nemo in et tempore.', '2021-01-19 08:49:03', '2021-01-19 08:49:03');
INSERT INTO `transaksi_details` (`id`, `transaksi_id`, `tanggal_acara`, `jam_mulai`, `jam_akhir`, `lokasi_acara`, `provinsi_id`, `kabupaten_id`, `kecamatan_id`, `kelurahan_id`, `catatan`, `created_at`, `updated_at`) VALUES
(164, 419, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Radio No. 242, Jayapura 27554, Maluku', 22, 75, 101, 13, 'Dolorem pariatur ex et. Ad blanditiis quisquam aperiam. Nihil adipisci praesentium sed amet. Velit pariatur rem consequuntur non suscipit illum et natus.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(165, 195, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Gajah No. 687, Serang 73464, Jabar', 25, 31, 183, 68, 'Facilis et nihil ut similique. Maiores totam reprehenderit et similique dignissimos dolores facilis. Explicabo deleniti eaque et. Eaque voluptatem nulla culpa et est deleniti.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(166, 394, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Mulyadi No. 207, Mojokerto 26005, Sumut', 9, 58, 97, 48, 'Inventore commodi dolore sed aut. Quaerat modi suscipit aut praesentium exercitationem unde voluptas. Consequatur eveniet debitis eveniet aut ut perspiciatis ut quisquam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(167, 301, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Sutarjo No. 703, Pematangsiantar 90038, Papua', 29, 37, 114, 77, 'Tempore voluptas et sed molestias ex dolores sint. Qui voluptatem eos labore asperiores. Rerum quaerat est incidunt aspernatur et. Sunt quasi fuga aut corrupti.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(168, 74, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Kalimantan No. 869, Tasikmalaya 87812, Sulsel', 18, 63, 184, 177, 'Eos aspernatur quibusdam harum quia quae dolor. Facilis fugit dolorum autem. Ea est velit qui consequuntur non molestias cumque.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(169, 459, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Setiabudhi No. 466, Surakarta 66292, Bali', 26, 1, 184, 38, 'Autem eos id non explicabo dolor. Est fugiat deserunt laborum. Earum corporis est et sunt laboriosam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(170, 482, '2021-01-02', '20:38:49', '20:38:49', 'Gg. K.H. Maskur No. 543, Metro 10371, Gorontalo', 24, 76, 165, 77, 'Ipsam atque dolor repellendus. Velit quos doloremque enim deserunt omnis. Magni dignissimos in asperiores expedita.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(171, 11, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Jaksa No. 655, Pagar Alam 97402, NTT', 11, 49, 182, 145, 'Consequatur sed autem eveniet atque id. Omnis unde eius doloribus ipsum et. Aut fuga dolor sed est harum voluptatem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(172, 386, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Kartini No. 858, Sawahlunto 43801, Sumsel', 6, 11, 12, 124, 'Sit nihil incidunt ad aliquam neque. Minima a possimus facere expedita odio omnis. Fugiat rem quas delectus ut sapiente labore non dolor. Id ducimus neque et. In vero sit voluptatem aliquam qui.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(173, 421, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Suprapto No. 205, Bekasi 38028, Jatim', 16, 39, 11, 157, 'Neque odio necessitatibus itaque quod accusamus delectus. Expedita dolor et dolores est. Doloribus sit qui adipisci velit non quo. In numquam eius beatae magni.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(174, 180, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Baiduri No. 186, Blitar 94130, Sulsel', 3, 35, 127, 151, 'Ea consequatur sed commodi dolorum voluptas placeat. Qui consequuntur commodi aperiam dolores quia in. Sed sequi quae quas aliquid est facere autem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(175, 344, '2021-01-02', '20:38:49', '20:38:49', 'Ds. B.Agam Dlm No. 497, Tangerang Selatan 69934, DKI', 13, 57, 119, 45, 'Beatae eum exercitationem possimus a recusandae magnam. Placeat ad quasi facere tempore. Repudiandae omnis optio enim excepturi vero harum. Veniam molestias et non magni omnis alias.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(176, 63, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Moch. Toha No. 131, Palopo 53247, Malut', 30, 38, 45, 185, 'Amet impedit nihil possimus ut accusantium est veritatis. Sequi est id reprehenderit ipsa. Similique hic veritatis et dignissimos sit. Provident id beatae labore laborum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(177, 402, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Lada No. 88, Palu 65555, Sulbar', 31, 48, 111, 105, 'Hic aut mollitia voluptatum officiis. Sunt nisi cumque cumque at pariatur est qui. Ipsa dolore eos ea iste.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(178, 43, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Villa No. 938, Palopo 48047, Pabar', 5, 64, 168, 115, 'Ut quaerat excepturi qui quis repellendus quam ut. Consequatur tempore laboriosam dicta consequatur. Laborum accusantium libero ea doloribus est et non.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(179, 357, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. R.E. Martadinata No. 523, Sabang 67536, Sulbar', 21, 80, 177, 71, 'Atque natus et accusantium eum molestias. Impedit laudantium ut qui aspernatur voluptates corporis ducimus. Vero ex aut iste provident et fugiat provident.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(180, 9, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Wahid Hasyim No. 990, Banjarbaru 41268, Kepri', 12, 60, 109, 66, 'Et voluptatem nulla in. Dolorum rerum corrupti amet. Numquam porro unde est omnis dolorum. Nisi perspiciatis ipsum in eos deleniti totam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(181, 14, '2021-01-02', '20:38:49', '20:38:49', 'Ki. R.M. Said No. 477, Sawahlunto 90113, Sumut', 28, 64, 44, 179, 'Rerum cum quo inventore qui sunt impedit soluta. Aliquid maxime non ut qui suscipit. Nemo est ea eius minus. Ipsa aut nemo quis qui ab.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(182, 420, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Cikapayang No. 386, Surakarta 83766, Gorontalo', 5, 49, 65, 96, 'Ut accusamus reiciendis est. Dolore nam labore ea tempore. Velit velit eius non cumque voluptates qui temporibus. Earum pariatur eveniet sed perferendis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(183, 70, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Barat No. 180, Kediri 46893, Malut', 5, 45, 63, 72, 'Unde molestias qui et omnis facere. Perferendis praesentium sint molestiae quia necessitatibus laborum. Voluptatem itaque dolores nihil inventore id consequatur.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(184, 353, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Jambu No. 935, Binjai 88834, Jatim', 7, 76, 130, 165, 'Atque aut quo et sit omnis. Est alias exercitationem vel explicabo placeat aut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(185, 225, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Rajawali Barat No. 586, Makassar 32630, Sultra', 25, 54, 112, 146, 'Rerum iste molestias est autem expedita sint. Sit non ipsum qui rerum laboriosam ut. Voluptas sit voluptates et quam consequuntur mollitia et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(186, 175, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Daan No. 331, Probolinggo 92191, Sultra', 25, 57, 161, 120, 'Quia ratione labore fugiat qui modi. Fugit quo sit excepturi sed. Blanditiis sit sed quaerat deserunt ut quas rem voluptas.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(187, 483, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Baja No. 596, Sibolga 31406, NTT', 13, 38, 112, 176, 'Harum consectetur tenetur sed. Qui sunt sunt blanditiis nesciunt. Quaerat quia nam quia sit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(188, 461, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Bambu No. 493, Kediri 54137, DIY', 8, 6, 77, 154, 'Aut placeat facilis voluptatibus. Quo facere adipisci nobis sit corporis. Voluptatibus consequatur aspernatur autem qui. Esse aut ut delectus quidem et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(189, 269, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Basmol Raya No. 880, Kupang 77108, Jatim', 25, 53, 30, 140, 'Facere dolor veniam veritatis. Non nesciunt doloribus culpa laudantium. Sed est ipsam dicta. Exercitationem voluptas sit eos sit. Quis quia enim aut commodi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(190, 15, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Bazuka Raya No. 517, Tomohon 78432, Jateng', 13, 13, 47, 110, 'Et debitis omnis minus earum quo. Qui vel dolores id expedita. Maxime ab nesciunt praesentium doloribus laborum assumenda ea.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(191, 326, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Lembong No. 822, Tegal 88229, Sulbar', 1, 1, 21, 129, 'Molestiae qui odio qui quia eaque minus. Explicabo dignissimos quidem asperiores aut. Sed est rerum facilis sit rerum dolore consequuntur. Ratione sit quos ut expedita consequatur qui consequatur.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(192, 363, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Jayawijaya No. 856, Tasikmalaya 57761, Sumut', 1, 26, 110, 78, 'Nostrum recusandae occaecati quisquam vero voluptatem impedit. Vero est libero ut. Modi aut cupiditate impedit nemo non. Est omnis quidem est sunt at.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(193, 156, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Warga No. 479, Blitar 81502, Maluku', 8, 39, 6, 65, 'Ea delectus nam magnam. Omnis natus et delectus consequatur quo sunt quod id.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(194, 295, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Yos No. 309, Pagar Alam 63735, Riau', 26, 49, 102, 98, 'Voluptatum sed ut qui odit quis sit dolore. Enim in laborum beatae et ullam. Error et perferendis at incidunt. Ea hic veniam numquam doloribus.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(195, 368, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Rajawali No. 865, Sabang 52968, Jatim', 12, 39, 175, 50, 'A eius laudantium architecto. Et nostrum quis quasi laudantium quas. Tempore ut est perferendis necessitatibus est iusto.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(196, 314, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Rajiman No. 139, Administrasi Jakarta Barat 53007, Jateng', 30, 74, 170, 180, 'Aut tempore suscipit voluptatem culpa. Illum quia eum exercitationem unde tempora vel. Voluptate architecto non porro esse optio laudantium et ab. Est est voluptatum est. Eos sunt odio praesentium.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(197, 283, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Raya Setiabudhi No. 627, Kupang 16895, Riau', 3, 73, 122, 182, 'Nostrum eum eos eaque animi. Inventore non est dolor culpa. Est vero velit quidem at quia laboriosam in expedita. Illo neque laboriosam modi totam eaque soluta tenetur.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(198, 221, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Sudirman No. 748, Prabumulih 27114, Sulut', 29, 12, 190, 200, 'Maiores repellat eveniet architecto quia. Ipsam alias odit molestiae minus doloribus eaque. Qui sunt et perferendis saepe debitis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(199, 303, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Basudewo No. 943, Balikpapan 93791, Kalbar', 2, 49, 54, 75, 'Autem rerum alias sequi quis. Voluptas sit aliquid reprehenderit sunt rerum explicabo fugiat.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(200, 406, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Yohanes No. 433, Bitung 61111, Jambi', 31, 42, 129, 163, 'Rerum magni quisquam quam ipsam at. Ut error velit et consequatur sit praesentium. Et quisquam blanditiis nulla quo sunt dolores aliquam praesentium.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(201, 121, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Salam No. 613, Langsa 82520, Kalbar', 4, 13, 79, 115, 'Mollitia aperiam repudiandae incidunt. Dicta et ut voluptates numquam quae. Hic qui cum ea.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(202, 417, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Cikapayang No. 481, Pematangsiantar 11524, Sulsel', 7, 76, 93, 192, 'Sequi laborum voluptatum neque illo excepturi fuga. Debitis quaerat ut perspiciatis velit ab delectus rerum facere. Nulla vitae autem id iusto nihil voluptatibus et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(203, 416, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Baya Kali Bungur No. 742, Denpasar 88567, Sumbar', 2, 32, 88, 62, 'Architecto numquam odio qui blanditiis. Quasi et minus et consequatur natus aspernatur quidem. Et placeat est libero quos porro numquam. Maxime dolorem et dolor est.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(204, 407, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Jayawijaya No. 608, Balikpapan 28714, Jambi', 13, 31, 136, 165, 'Ut et sunt exercitationem hic. Nam nam voluptates ullam. Voluptatem doloribus dolores et qui sequi ullam. Eum sed laboriosam dolorem adipisci. Nihil ab accusamus consequuntur et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(205, 463, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Honggowongso No. 543, Denpasar 33884, Kaltim', 13, 12, 132, 8, 'Odio voluptate itaque voluptatem et dignissimos voluptas. Minus aut rerum explicabo magni ut hic.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(206, 476, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Gedebage Selatan No. 321, Batam 75038, Sulteng', 26, 61, 40, 86, 'Ipsam possimus accusamus praesentium quaerat sunt. Eligendi natus omnis dolores maxime non quibusdam ipsam. Dolores aut dolores aut sed impedit maxime.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(207, 469, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Bass No. 880, Administrasi Jakarta Timur 78581, Sultra', 33, 73, 124, 87, 'Illum dolorem aperiam ut laborum iure dicta. Assumenda dolor est autem. Rem quod quia dolorem laudantium commodi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(208, 218, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Gatot Subroto No. 120, Pematangsiantar 29692, Kalteng', 2, 18, 106, 54, 'Ullam veniam itaque et ut porro. Ab dolorem rerum tempora dolore soluta amet qui. Commodi ducimus impedit qui possimus facilis ratione unde. Labore dicta nisi et ut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(209, 338, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Lumban Tobing No. 973, Pangkal Pinang 25613, Sulsel', 4, 60, 16, 20, 'Quidem repudiandae et assumenda eligendi. Qui excepturi est omnis temporibus. Ducimus quia ratione voluptatem et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(210, 81, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Kebonjati No. 759, Bengkulu 73841, Kaltara', 33, 29, 4, 60, 'Non maxime laudantium dolores deleniti. Soluta ea molestias alias vel quod id. Nihil molestiae qui dolores asperiores unde reiciendis. Et non laboriosam qui eveniet eius.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(211, 40, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Moch. Ramdan No. 666, Surabaya 58641, Sulteng', 15, 30, 28, 156, 'Suscipit dignissimos quaerat saepe nisi. Aut aut quos ut magni aperiam vel. Est itaque voluptas aperiam ratione non. Ut provident quia omnis est quae nihil.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(212, 69, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Pattimura No. 529, Banjarbaru 37906, Jabar', 33, 5, 75, 35, 'Nobis delectus aut sunt ea aut hic. Quia aliquam occaecati eos dolores architecto vel. Non est quas rerum tempora.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(213, 117, '2021-01-02', '20:38:49', '20:38:49', 'Jr. B.Agam 1 No. 483, Medan 30890, Kalbar', 26, 42, 47, 58, 'Ipsa rem amet accusantium est deserunt commodi nulla. Quasi aspernatur praesentium quis alias est omnis. Sit non excepturi voluptate unde et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(214, 489, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Bakhita No. 53, Tebing Tinggi 20398, DIY', 10, 18, 124, 182, 'Illo consequatur assumenda sit iusto nobis aut quos. Cum temporibus autem dolor. Quia ducimus nisi consequatur veritatis ratione.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(215, 136, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Basuki No. 758, Lhokseumawe 90944, Sumsel', 19, 26, 125, 51, 'Nihil dolorem dicta eveniet tenetur totam. Ut delectus ad beatae fugiat beatae temporibus praesentium. Voluptatem a est culpa eum tempora fugiat.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(216, 164, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Surapati No. 752, Sawahlunto 74150, Kalteng', 20, 6, 182, 62, 'Est labore perspiciatis quas eius. Rerum nihil repellendus sunt officiis cupiditate. Ipsum et doloribus enim ut dolorem dicta voluptatum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(217, 127, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Sugiyopranoto No. 223, Cimahi 69482, Kepri', 14, 7, 97, 42, 'Sed numquam molestias doloribus rerum velit. Voluptatibus accusamus optio sunt exercitationem. Deleniti aut nemo repellendus eos reiciendis. Nemo necessitatibus amet voluptatem velit pariatur eos.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(218, 468, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Sampangan No. 274, Administrasi Jakarta Barat 81172, NTT', 11, 14, 23, 44, 'Qui id iusto cum eligendi nesciunt. Amet qui aut eos modi vel veritatis aut dolor.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(219, 494, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Veteran No. 225, Mataram 94375, Kaltim', 2, 52, 182, 47, 'Autem voluptate inventore qui architecto necessitatibus et. Nisi cupiditate eos sint est aut. Minima exercitationem veritatis totam totam porro sequi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(220, 436, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Bah Jaya No. 940, Kotamobagu 55523, DKI', 10, 64, 64, 88, 'Vitae sapiente voluptatem non temporibus quo odio. Praesentium enim rerum est. Amet assumenda harum ea dolorum perspiciatis quae quaerat.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(221, 405, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Jagakarsa No. 567, Lhokseumawe 96414, Bali', 14, 70, 58, 194, 'Ut voluptatem voluptate sunt. Ullam aut a unde fugit provident. In in commodi expedita sint natus. Cupiditate ipsam hic non ullam velit nam quaerat.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(222, 320, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Raya Ujungberung No. 819, Makassar 31355, Jambi', 16, 55, 32, 172, 'A magnam sequi totam quo. Architecto et nihil qui corporis odit consequatur. Pariatur aperiam ut natus unde.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(223, 162, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Sukabumi No. 431, Kediri 35095, Jambi', 21, 3, 129, 55, 'Quia rerum deserunt consequuntur est. Quae commodi ad odit enim. Rem excepturi iure eum voluptatem nesciunt inventore odit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(224, 35, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Aceh No. 197, Tomohon 25589, Jabar', 17, 40, 34, 80, 'Sed explicabo et est quas. Aut sunt aut nam amet. Molestiae explicabo minima sed a eum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(225, 223, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Bagonwoto  No. 786, Metro 55247, NTT', 29, 25, 103, 71, 'Quia dolor quia ex et dignissimos nihil. Et possimus quidem aperiam asperiores. Consequatur modi quae reprehenderit. Est a inventore fuga soluta.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(226, 472, '2021-01-02', '20:38:49', '20:38:49', 'Ds. K.H. Maskur No. 715, Pasuruan 41822, Kalbar', 5, 23, 108, 131, 'Explicabo voluptatem dolorum optio. Aliquam distinctio aut aut. Facere aut molestiae nam totam aliquid quia distinctio quia.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(227, 97, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Yoga No. 310, Prabumulih 41672, Jambi', 32, 57, 59, 180, 'Enim repellendus maxime porro repellendus perferendis eum modi quam. Et labore assumenda temporibus harum est assumenda. Placeat reiciendis sint fugiat maxime.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(228, 398, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Pattimura No. 943, Administrasi Jakarta Selatan 26920, Jateng', 27, 4, 142, 106, 'Distinctio cupiditate omnis illo aspernatur. Et nulla fuga ducimus. Quis et deserunt minima inventore et magnam suscipit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(229, 417, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Ketandan No. 288, Blitar 70919, Sulbar', 29, 53, 194, 122, 'Repudiandae quibusdam laborum iste maxime blanditiis non molestiae. Quod quia aut inventore. Voluptate aut molestias sequi alias temporibus. Eos deserunt consequatur praesentium natus aut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(230, 181, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Eka No. 168, Gunungsitoli 85185, Sumsel', 23, 58, 161, 103, 'Rerum animi dicta error neque et. Vel nam nisi et et maiores voluptatibus. Sit animi voluptatem aliquam qui. Distinctio enim aperiam adipisci voluptatem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(231, 393, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Wahid No. 270, Balikpapan 76047, Aceh', 28, 37, 177, 71, 'Quam dolores a repellat totam dolorum id. Molestiae iusto harum sit cumque quod laborum commodi. Corporis quasi deleniti quia officiis dicta fuga tempora corrupti.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(232, 117, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Babadan No. 255, Tidore Kepulauan 84245, Sumbar', 23, 55, 22, 44, 'Odit eveniet illo laudantium quia ducimus vel at quia. Non dignissimos ut laboriosam eligendi et eius velit. Neque magni odio molestiae qui.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(233, 96, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Adisucipto No. 395, Ambon 77213, Sumsel', 23, 27, 38, 103, 'Minus soluta fuga autem quia rem ut. Voluptatem corporis hic omnis est et nihil aliquid. Ea illum dicta laborum nesciunt perferendis omnis. Quis voluptatem reprehenderit deserunt sint animi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(234, 306, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Sukajadi No. 657, Lhokseumawe 81842, Aceh', 14, 27, 52, 57, 'Voluptates dolore aut doloribus illo. Facilis illo ullam accusamus suscipit dolorem voluptatem et aspernatur. Quo omnis repellat animi voluptatem rerum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(235, 300, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Yogyakarta No. 99, Madiun 74428, NTB', 16, 25, 16, 5, 'Quas praesentium veniam cumque necessitatibus illo. Quia earum ut hic ex.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(236, 57, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Halim No. 21, Tebing Tinggi 93915, Kalsel', 22, 10, 181, 43, 'Ut qui temporibus at sunt distinctio quia quisquam. Veniam perspiciatis quisquam temporibus dolore sequi. Omnis molestiae nihil corporis quia eveniet unde.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(237, 163, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Barasak No. 923, Ternate 19686, Bengkulu', 26, 38, 138, 176, 'Quisquam ipsa dolor eos quisquam fuga et ut qui. Laboriosam est quam aut dolor quidem perspiciatis aperiam. Et quia qui natus aspernatur soluta consequatur quia quasi. Ipsum eius molestiae ipsam eum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(238, 378, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Kalimalang No. 58, Palangka Raya 13626, Jambi', 33, 9, 64, 75, 'Fugiat mollitia at provident maxime error sint. Quia aut nostrum officiis facere dolorum maxime. Voluptates voluptas rem est rerum aut incidunt.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(239, 461, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Imam Bonjol No. 154, Jambi 78729, Sulsel', 10, 52, 177, 181, 'Esse ut quia pariatur quisquam officia quod. Et culpa voluptas consequatur et unde. Et aut repellat et enim et omnis. Provident dolores nostrum libero. Cumque quia nobis debitis repudiandae.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(240, 250, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Umalas No. 45, Samarinda 14566, DKI', 25, 34, 64, 7, 'Quidem qui ratione quo dolore impedit nulla magnam. Alias eos debitis asperiores consequatur vel deleniti rem. Ducimus rerum et possimus id qui vitae qui. Iusto odit ipsum ipsa numquam magni nihil.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(241, 278, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Mahakam No. 53, Surakarta 32896, Sumut', 23, 62, 10, 119, 'Consectetur eos harum et repudiandae quia. Eaque commodi sed adipisci explicabo officia dolore beatae. Quia explicabo velit aut sed. Omnis nesciunt labore veniam maiores harum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(242, 390, '2021-01-02', '20:38:49', '20:38:49', 'Ki. PHH. Mustofa No. 105, Sorong 12968, Bali', 31, 78, 145, 6, 'Qui et cumque repudiandae vero rerum possimus id. Illo provident modi voluptas saepe.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(243, 39, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Otista No. 995, Administrasi Jakarta Selatan 76190, Aceh', 22, 58, 111, 167, 'Dolore enim natus et molestias qui quia tempora. Dicta sit doloribus sunt dicta rerum aspernatur est. Ad reprehenderit error quo doloribus ipsam. Et quos dignissimos voluptas alias.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(244, 3, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Bappenas No. 515, Ambon 70341, Pabar', 25, 62, 32, 194, 'Reiciendis repudiandae autem fugit sunt quisquam. Est modi veritatis perferendis ut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(245, 473, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Laswi No. 691, Pematangsiantar 36316, Kalsel', 3, 16, 9, 8, 'Magni quam ut reiciendis. Ad neque ad quisquam cumque dolores voluptate. Sunt qui consequatur sint. Ab sint non est aspernatur. Laudantium et qui temporibus deserunt at et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(246, 391, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Dr. Junjunan No. 691, Bontang 41233, Pabar', 11, 60, 86, 130, 'Est dolor est eaque at quis et. Quod voluptatem est aut totam fugit similique quia. Corporis sequi incidunt aliquam sequi est ut doloremque. Earum dolor fugiat itaque perspiciatis in minus aut totam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(247, 409, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Ekonomi No. 561, Sukabumi 11182, Bali', 18, 24, 122, 146, 'Molestias molestiae modi rem fuga eligendi. Commodi hic sequi aut aut officiis cum eos enim. Optio et sint aut deserunt numquam quam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(248, 114, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Jayawijaya No. 308, Manado 18704, Kalsel', 32, 57, 91, 112, 'Cumque quasi ex doloremque. Sunt molestiae ea id odit. Vitae enim modi quibusdam. Autem possimus suscipit impedit. Rerum ad amet doloremque. Ipsa consectetur voluptas illo distinctio ipsum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(249, 173, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Gotong Royong No. 187, Tomohon 48297, Kepri', 11, 56, 148, 163, 'Enim dicta corrupti omnis qui officia error sint. Voluptatum exercitationem nisi voluptas odit natus ut quo sed. A officia dolores et amet hic.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(250, 240, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Yoga No. 292, Bandung 51394, Sumbar', 20, 29, 32, 78, 'Sed aperiam vel et ut voluptatum suscipit. Beatae ut molestiae repellat mollitia quo perspiciatis et. Inventore autem quo quia esse aspernatur qui officia.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(251, 280, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Cikutra Timur No. 405, Padangsidempuan 13546, Sumut', 17, 36, 185, 171, 'Velit in deleniti omnis repellat velit atque est. Et sed ut labore aspernatur ipsam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(252, 241, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Gegerkalong Hilir No. 403, Payakumbuh 70964, Pabar', 23, 7, 41, 160, 'Animi saepe dignissimos vero. Perferendis et officiis et similique qui et reiciendis. Nihil ducimus fuga dicta quos velit sit incidunt. Ullam natus ullam nostrum quisquam qui necessitatibus harum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(253, 297, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Suryo No. 523, Langsa 58632, Kaltara', 33, 3, 165, 22, 'Sed adipisci optio voluptatem et nisi adipisci quaerat. Nihil commodi aut at odio optio modi voluptas earum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(254, 80, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Supono No. 688, Salatiga 99738, Pabar', 32, 3, 170, 75, 'Asperiores ipsam deleniti alias at est. Consequuntur unde nobis voluptatem. Molestias non corrupti eum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(255, 108, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Baja No. 265, Administrasi Jakarta Timur 69052, Papua', 29, 44, 151, 137, 'Sunt sint sit facere quidem deleniti saepe corporis ad. Explicabo quis sunt quis id est. Aut qui omnis dolor autem rem et voluptatibus.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(256, 205, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Tangkuban Perahu No. 33, Banjarbaru 96309, Sulsel', 2, 13, 52, 171, 'Rerum eius tempora sed voluptatem sed. Porro in omnis rerum dolorem eius adipisci. Et dignissimos itaque consequatur libero.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(257, 269, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Basuki Rahmat  No. 406, Jayapura 59530, Bengkulu', 3, 20, 2, 68, 'Eius laboriosam totam ipsa nesciunt ipsam. Inventore porro dicta ipsum impedit accusamus magnam distinctio adipisci.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(258, 166, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Daan No. 189, Tegal 92986, Lampung', 5, 6, 66, 140, 'Natus ea laboriosam temporibus. Sapiente non repellat eveniet quisquam quia voluptate cum exercitationem. Accusantium autem ut consequatur fugiat. Dolor mollitia quas et et dolore.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(259, 131, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Salak No. 3, Gorontalo 38431, Gorontalo', 5, 65, 193, 33, 'Debitis hic dolorem qui enim exercitationem placeat. Quam at porro id tenetur. Dolores dolor illum asperiores nulla optio.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(260, 136, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Rajawali Timur No. 726, Parepare 87319, Jambi', 24, 22, 110, 26, 'Quia rem commodi corporis quia et iusto. Dolores delectus voluptatibus aliquid quo est illo et explicabo. Architecto nemo alias aperiam et eum minima error.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(261, 439, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Baranang Siang Indah No. 589, Solok 95709, Gorontalo', 2, 78, 167, 141, 'Quia ipsam dolor exercitationem natus recusandae et qui asperiores. Tempora aliquid perspiciatis voluptatibus. Explicabo voluptas sed eaque quis molestiae voluptas.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(262, 10, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Bakin No. 394, Balikpapan 66826, Pabar', 4, 21, 14, 3, 'Non debitis dolores voluptates ipsa sit. Omnis officiis maiores velit pariatur quaerat similique sunt. Eum et vitae adipisci labore nobis et explicabo quia.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(263, 164, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Baranangsiang No. 465, Bontang 67049, Jabar', 30, 43, 129, 85, 'Nisi eaque illum reprehenderit autem eos at. Eos quisquam id et expedita beatae dolore reprehenderit. Vero voluptatum molestias velit non non odit rem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(264, 346, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Supomo No. 190, Manado 39823, Sumut', 18, 30, 26, 53, 'Est ut quos tempora aut est ut. Facilis delectus error molestias et inventore. Nemo commodi laboriosam dicta blanditiis exercitationem. Voluptatem sunt corrupti veritatis eum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(265, 326, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. R.E. Martadinata No. 635, Surakarta 74186, Jabar', 28, 16, 197, 185, 'Aperiam est consequatur molestias facilis molestiae molestiae voluptatum. Sunt doloribus sint praesentium eum. Similique incidunt omnis sint aperiam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(266, 26, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Halim No. 513, Sorong 58346, Sulteng', 5, 45, 53, 197, 'Id fugit eligendi voluptatem. Enim molestiae sit consequatur tempora commodi sint ex. Et eum omnis voluptatum eveniet mollitia.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(267, 457, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Jayawijaya No. 213, Administrasi Jakarta Timur 94431, Pabar', 30, 18, 38, 17, 'Est voluptatibus et ut non non fugiat. Libero aut et consequuntur quos dolor voluptas. Occaecati ipsam dolores ea qui.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(268, 352, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Madiun No. 981, Cilegon 12492, Riau', 31, 56, 31, 121, 'Laboriosam provident omnis nisi repudiandae quia doloribus. Sit totam sint iste voluptate qui minima. Sed non ea sint harum. Fugiat minus soluta iure neque repellat rerum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(269, 499, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Baranang Siang No. 263, Samarinda 98699, Lampung', 10, 71, 151, 5, 'Expedita eius ratione ipsa neque et cumque et. Rerum excepturi reprehenderit possimus nihil quo sit. Quae sed quaerat porro ut ipsam. Quo atque voluptatem est sapiente.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(270, 85, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Villa No. 166, Probolinggo 23172, Banten', 31, 63, 100, 158, 'In explicabo neque aliquam corporis. Enim ea ut et quia impedit. Quis aspernatur adipisci adipisci ut et facere vitae. Corrupti officia quasi dolorum ea perspiciatis sunt atque.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(271, 91, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Bata Putih No. 15, Banjar 84863, Malut', 6, 75, 60, 155, 'Vitae officiis asperiores modi molestiae accusantium iusto esse. Deserunt dolorem animi et voluptatum minima rem. Sunt id deserunt odit velit sint. Qui nam eaque velit explicabo est dignissimos.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(272, 454, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Dewi Sartika No. 339, Mojokerto 53787, Gorontalo', 32, 5, 139, 84, 'Amet cum et et unde similique repellat deleniti. Temporibus in voluptatem accusantium. Et quae ab molestias est cumque aliquid. Adipisci quaerat rerum modi ea accusamus ratione.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(273, 499, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Ronggowarsito No. 890, Gorontalo 88347, Sultra', 32, 75, 23, 139, 'Doloribus animi qui omnis vitae maxime. Nisi corporis et fuga. Sunt fuga aut reiciendis magni. Reprehenderit quis repudiandae dolor dolores.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(274, 183, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Basket No. 879, Tual 33273, Kaltim', 17, 18, 135, 76, 'Officia ab ut vel est aut. Ea adipisci ea ea voluptas. Ex ut omnis dolor quo deleniti.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(275, 157, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Bakti No. 142, Depok 28564, Sumsel', 10, 4, 178, 77, 'Consequatur eum vero quis ea quaerat. Dolor dicta eum vitae non sit. Et vitae inventore dolor.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(276, 468, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Baya Kali Bungur No. 817, Pekanbaru 13480, Sulbar', 1, 3, 58, 59, 'Earum et voluptas cupiditate enim culpa facere architecto. Perspiciatis in nam rerum excepturi ipsam. Repudiandae minima voluptas rerum. Accusantium sed laudantium rerum inventore consectetur.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(277, 46, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Samanhudi No. 171, Mojokerto 92465, Jateng', 28, 42, 98, 54, 'Et ipsa quidem est facilis sunt. Laborum sed ipsum ex tempora. Voluptatibus at veritatis sunt sed. Voluptatem odio in quas nobis voluptates.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(278, 144, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Ikan No. 745, Batu 74943, Sumut', 4, 20, 77, 10, 'Explicabo ipsum a velit officia quidem. Quia sunt animi amet suscipit qui.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(279, 37, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Dahlia No. 508, Bau-Bau 73488, Jatim', 27, 51, 70, 27, 'Incidunt sint dignissimos porro aspernatur vero. Modi eligendi neque dicta expedita maxime aut voluptatem dolor. Tempora nihil est suscipit unde architecto.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(280, 379, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Baiduri No. 992, Jambi 28884, Sulut', 1, 30, 86, 39, 'Animi magni aliquid quis dolorum. Eos expedita nihil provident rerum voluptates. Qui modi et officia id eligendi. Ea nemo sed ea iusto iste sed facilis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(281, 170, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Lumban Tobing No. 121, Tanjung Pinang 52946, Bali', 11, 60, 11, 20, 'Incidunt vero dicta dolor repellat velit veritatis excepturi. Quasi qui accusantium et quod debitis velit. Id totam recusandae illum corrupti architecto. Pariatur laboriosam quasi atque harum sit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(282, 182, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Padang No. 196, Madiun 63442, Jatim', 12, 4, 132, 150, 'Maxime eum vitae et voluptas cupiditate. Facilis placeat quo sit saepe dolores qui alias. Officiis maiores adipisci illum ab quisquam natus illo.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(283, 180, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Fajar No. 554, Cirebon 93991, Malut', 27, 49, 186, 59, 'Doloremque omnis rem ex reprehenderit quia ut est. Iure dicta velit quod non eligendi. Molestias sint dolorum numquam voluptatem. Accusamus iusto odit accusantium recusandae aspernatur id.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(284, 78, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. B.Agam Dlm No. 657, Singkawang 24190, Kaltara', 4, 65, 200, 119, 'Optio laboriosam error velit fugiat sequi consectetur nemo. Aut qui mollitia tenetur voluptatem vero minus et. Accusantium quam et itaque. Laboriosam odit animi ipsa distinctio quos quos.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(285, 343, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Mulyadi No. 363, Tarakan 79091, Sumut', 15, 1, 120, 138, 'Non aperiam rem atque maiores nobis veritatis. Eum id animi iste incidunt. Ipsum provident excepturi doloremque eaque. Est ea ut laudantium.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(286, 243, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Basudewo No. 482, Gorontalo 25811, Jambi', 30, 61, 187, 91, 'Illum voluptatem quis voluptas id odio nihil quidem. Quas quia consequatur consequatur repudiandae. Repellendus dolores voluptate sit praesentium tempore et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(287, 17, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Lada No. 645, Pekanbaru 84785, Lampung', 33, 7, 151, 119, 'Aut totam delectus at est sit est molestiae. Culpa maiores deleniti at exercitationem. Saepe architecto illum et dolorum a aut. Rerum rerum tenetur qui aut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(288, 173, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Diponegoro No. 187, Probolinggo 66665, NTB', 8, 12, 82, 2, 'Saepe aspernatur repellat sint ducimus veritatis. Ut aut voluptate laboriosam. Enim temporibus temporibus ut et fugiat accusamus dicta.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(289, 198, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Bakau No. 668, Sungai Penuh 46567, Kaltara', 33, 14, 35, 116, 'Qui praesentium quas neque est ut nihil et. Ut molestiae hic pariatur rerum sed ut modi. Atque dolor eum dolorem ad et nam. Nemo mollitia suscipit in sit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(290, 310, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Jend. A. Yani No. 598, Padang 93344, Pabar', 2, 13, 30, 148, 'Autem eos neque explicabo sunt. Est dolorem consequatur assumenda voluptatem vitae. Occaecati earum est perferendis rerum accusantium repudiandae.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(291, 387, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Abdullah No. 111, Samarinda 82707, Sultra', 20, 67, 166, 111, 'Consequatur molestiae aliquam rerum molestiae nisi qui quia. Rerum et deleniti nesciunt rem dicta expedita. Et exercitationem corporis explicabo et mollitia magni dolores.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(292, 499, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Bass No. 715, Pasuruan 27795, Bengkulu', 20, 4, 96, 192, 'Dolorem ipsa ut dolores rerum. Excepturi dolor porro blanditiis culpa tempore. Voluptatem facilis dolorem quaerat corrupti et ipsum possimus.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(293, 232, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Ikan No. 259, Lhokseumawe 95971, Kalteng', 9, 22, 149, 132, 'Possimus vitae fugiat fuga labore. Natus distinctio non repudiandae accusantium nobis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(294, 303, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Bah Jaya No. 297, Banjar 65471, Sumut', 25, 28, 25, 132, 'Ipsum necessitatibus iusto saepe expedita. Eum molestias voluptatem veniam reiciendis. Consectetur occaecati quam itaque quam. Eos repudiandae quia in et ea aliquam voluptate.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(295, 194, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Babadan No. 278, Binjai 61374, Kalsel', 11, 34, 194, 12, 'Velit itaque sit architecto possimus tenetur consequuntur non. Necessitatibus est qui nisi beatae quae similique qui blanditiis. Laboriosam labore ut illo sunt omnis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(296, 96, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Basket No. 784, Sungai Penuh 10439, Bali', 33, 26, 29, 88, 'Enim debitis neque libero et quibusdam corporis. Id sunt ad quae eaque. Dolorum autem voluptate nostrum voluptatem architecto.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(297, 4, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Ekonomi No. 594, Serang 48853, Pabar', 27, 52, 83, 114, 'Iure velit aspernatur rem dignissimos. Ratione dicta voluptatum sit est facilis et veniam voluptate. Consectetur nihil dolore quod ipsum et fugiat est. Aut deserunt et nobis est aperiam beatae.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(298, 90, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Wahid No. 314, Administrasi Jakarta Barat 64925, Kepri', 8, 50, 97, 157, 'Et aliquid veritatis est ad quibusdam qui. Voluptatem ut dicta sunt doloribus. Eos perspiciatis eum quia et adipisci temporibus laborum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(299, 338, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Ters. Jakarta No. 704, Bogor 28914, Kalbar', 7, 53, 160, 162, 'Modi est maiores quaerat eaque. Magni quam quis optio assumenda veniam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(300, 374, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Bakti No. 939, Sabang 43583, Sulbar', 12, 29, 9, 104, 'Ut a debitis blanditiis enim accusamus et. Atque ab ea voluptatem doloremque. Accusantium facilis repudiandae dignissimos excepturi velit a nemo. Rerum quis soluta sequi quaerat incidunt.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(301, 209, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Tentara Pelajar No. 644, Denpasar 67485, Babel', 15, 32, 171, 124, 'Explicabo eligendi perspiciatis mollitia dolores accusamus ab labore nulla. Et quisquam ex fugit. Tempora quasi nobis est et. Quos est corrupti pariatur labore cupiditate amet aut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(302, 382, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Gedebage Selatan No. 933, Pagar Alam 10852, Riau', 8, 33, 162, 130, 'Et est rerum quasi reprehenderit in iste eum. Reprehenderit impedit sint quia dolores maxime quasi provident. Qui delectus qui aut et libero molestiae.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(303, 7, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Bacang No. 795, Surakarta 52510, Sulteng', 29, 71, 134, 109, 'Error perspiciatis voluptas qui saepe. Quam quibusdam expedita non est sequi perspiciatis omnis. Temporibus et sint id quam fugiat voluptates voluptas atque.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(304, 230, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Halim No. 935, Sukabumi 19115, Sumsel', 7, 36, 71, 135, 'Porro deserunt quidem non excepturi. Placeat eligendi quaerat commodi voluptas. Fugiat eum in sint quisquam reiciendis ut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(305, 19, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Gatot Subroto No. 129, Ternate 60293, Gorontalo', 20, 49, 115, 184, 'Maxime totam similique quo. Et soluta at vel autem. Suscipit inventore quod optio nobis dolores ratione et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(306, 430, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Kartini No. 200, Yogyakarta 60070, Sumsel', 19, 21, 25, 73, 'Inventore molestiae in iusto illum odit veniam. Quo et et est rerum blanditiis aspernatur. Repudiandae natus numquam laborum et quasi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(307, 178, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Ciwastra No. 451, Gorontalo 39617, Jambi', 23, 77, 21, 24, 'Rerum vel et ex est dignissimos. Voluptas quas dolor deleniti. Quis quo esse reiciendis est aut nobis laboriosam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(308, 104, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Jambu No. 853, Bandar Lampung 80997, Sulut', 17, 72, 106, 126, 'Quos et enim repellendus aut autem at qui nihil. Excepturi molestias ea vero ipsam iusto voluptatem. Ex unde adipisci dolorem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(309, 55, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Jend. A. Yani No. 63, Banjar 84481, Sulteng', 30, 49, 192, 120, 'Nihil delectus neque et aut est sit dolores. Qui sapiente qui in explicabo sit quod. Atque tempora ipsam numquam delectus.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(310, 380, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Sugiono No. 603, Tual 26449, Papua', 7, 45, 10, 97, 'Corporis quaerat consequatur nostrum. Aut et voluptatem non voluptas rem vel. Voluptas nam impedit qui doloremque impedit qui quis dignissimos. Ipsam cum sint expedita vero suscipit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(311, 233, '2021-01-02', '20:38:49', '20:38:49', 'Jln. W.R. Supratman No. 933, Prabumulih 21359, Aceh', 26, 79, 154, 61, 'Et natus sed occaecati labore exercitationem totam inventore. Quia modi ad non nam vero. Suscipit quod et sit quo quo labore.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(312, 289, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Baranang No. 155, Batam 18947, Jabar', 31, 77, 2, 65, 'Soluta et saepe culpa et optio animi maiores. A sed minima vitae mollitia quia quisquam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(313, 285, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Bakau No. 465, Padang 32491, Gorontalo', 9, 9, 46, 66, 'Dicta voluptatem voluptatem totam eum ipsum. Ex nisi ipsam eos. Laboriosam porro sit porro et mollitia id ut. Quam nihil qui cumque omnis placeat.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(314, 429, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Ters. Pasir Koja No. 105, Sukabumi 55916, DIY', 25, 1, 35, 139, 'Dolorum dolor sit quod. Ut aut voluptas repellat dolorem at eum quia rerum. Laborum modi et voluptatum nihil consequatur. Est labore ipsam maiores sunt vel animi. Quasi et possimus iure nobis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(315, 315, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Villa No. 583, Yogyakarta 60952, Pabar', 13, 70, 70, 137, 'Animi rerum qui at ullam. Eos velit doloribus consequatur saepe facere totam. Molestias deleniti dolores voluptatum dolores eveniet ea at.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(316, 391, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Setia Budi No. 266, Palangka Raya 26688, Bengkulu', 33, 50, 58, 172, 'Pariatur dolorem quod aliquid optio quia sint. Omnis facere veniam aut autem et. Aut aspernatur modi error fuga quasi. Sint ea in enim repellat quod qui.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(317, 407, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Hasanuddin No. 411, Balikpapan 37058, Sulsel', 12, 30, 115, 177, 'Facere sed quia quas id enim temporibus optio. Quia voluptatem officia eligendi aut nisi. Eos esse rerum nihil odit et ratione fuga quibusdam. Aspernatur et nulla eum iusto modi tenetur.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(318, 456, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Salatiga No. 674, Dumai 85971, NTT', 25, 9, 182, 131, 'Corporis voluptates tempore cum voluptatem et sed totam et. Corporis quos voluptas recusandae vel. Assumenda voluptatem necessitatibus eius molestiae.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(319, 154, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Setiabudhi No. 90, Bima 47508, Bali', 26, 69, 162, 98, 'Omnis dolor laborum sit placeat magnam. Delectus sint aut exercitationem ab est laboriosam reprehenderit. Libero aperiam cupiditate nihil ea id alias aut. Aut non minus illo vel.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(320, 313, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Bakau Griya Utama No. 712, Solok 65983, Sumut', 32, 53, 82, 22, 'Et nihil debitis sed modi vel. Sed ut ipsam quo doloremque qui at perspiciatis. Sunt et nisi non iure. Optio dolorem et quibusdam nesciunt veniam pariatur consequuntur.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(321, 149, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Tambak No. 656, Administrasi Jakarta Pusat 41416, Riau', 14, 41, 171, 147, 'Molestiae qui repellat vel quas non. Vitae consequatur soluta rerum. Sed accusamus in ut corporis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(322, 121, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Teuku Umar No. 928, Singkawang 24308, Kalsel', 5, 7, 80, 105, 'Sunt et cupiditate dolorem. Quia omnis quis temporibus nobis quo ut occaecati. Aliquid voluptates aut adipisci et quisquam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(323, 328, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Karel S. Tubun No. 232, Payakumbuh 12802, Sumut', 2, 24, 125, 84, 'Voluptas provident quia rem id quos consequatur est. Ipsum totam a dolores vero nihil. Quasi dolorem voluptatum omnis repellat eligendi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(324, 401, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Bak Mandi No. 517, Makassar 32476, Kalteng', 13, 52, 90, 32, 'Et quia ipsam aut sit. Magni animi placeat nihil ipsam tempore optio quia.', '2021-01-19 08:49:03', '2021-01-19 08:49:03');
INSERT INTO `transaksi_details` (`id`, `transaksi_id`, `tanggal_acara`, `jam_mulai`, `jam_akhir`, `lokasi_acara`, `provinsi_id`, `kabupaten_id`, `kecamatan_id`, `kelurahan_id`, `catatan`, `created_at`, `updated_at`) VALUES
(325, 467, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Pacuan Kuda No. 231, Pontianak 37909, Jateng', 22, 31, 111, 164, 'Et in eos sint suscipit qui facere dignissimos. Repellendus quo odio unde. Ipsam aut laborum tempore accusantium nisi quia et ut. Harum et iure quos aut magni mollitia.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(326, 132, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Qrisdoren No. 556, Parepare 37611, Sulsel', 30, 25, 22, 97, 'Ut consequatur soluta pariatur eos tenetur. Voluptas velit enim nemo quas. Corporis quasi hic quo. Quibusdam sit quia non reprehenderit aut. Sint nostrum quo provident blanditiis veniam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(327, 488, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Mulyadi No. 347, Depok 76781, Sumbar', 31, 64, 40, 38, 'Cumque molestiae voluptatum facere repudiandae et reprehenderit. Quo rerum totam consequatur. Pariatur natus deleniti nostrum commodi rem eaque et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(328, 19, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Abang No. 667, Bau-Bau 34567, Jatim', 28, 13, 137, 55, 'Fugiat unde deleniti repudiandae consequatur ab velit eius possimus. Commodi odio nulla sint repellat. Et libero explicabo ex autem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(329, 123, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Villa No. 10, Lubuklinggau 91868, NTB', 13, 9, 133, 165, 'Deleniti enim enim veniam ipsa voluptatibus. Explicabo molestias dignissimos sunt. Suscipit aut quia sed est et minima.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(330, 102, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Bahagia No. 899, Singkawang 54132, Jabar', 10, 61, 65, 146, 'Sapiente accusamus dignissimos sed repellendus. Dolorem quasi ipsum dolores voluptatem. Perspiciatis odio eos fugit rerum. Nemo distinctio voluptatum est deserunt sit minima.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(331, 164, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Moch. Ramdan No. 512, Sabang 11945, Sulut', 30, 10, 39, 104, 'Nihil earum modi quia. Maxime cumque est in. Quam doloribus numquam non debitis ut. Saepe aut repellendus quisquam at.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(332, 428, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Bakau Griya Utama No. 30, Pekalongan 95327, NTB', 6, 74, 174, 6, 'Officia cum non quis. Eum ducimus nobis beatae at et. Incidunt impedit ut quaerat dolorem exercitationem. Doloremque qui vero quisquam eum recusandae saepe.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(333, 184, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Katamso No. 667, Dumai 15595, Kalteng', 14, 78, 97, 151, 'Molestiae voluptates maiores quas dolore mollitia ut. Quisquam animi sapiente aut dolore at officia unde suscipit. Dolorem ratione illo officiis asperiores sint.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(334, 200, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Bak Air No. 57, Administrasi Jakarta Utara 50032, Sumbar', 23, 36, 83, 6, 'Ad est in magni ut delectus. Optio officia praesentium quae reiciendis velit. Dicta harum odit sed perspiciatis autem dolores culpa quidem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(335, 180, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Bakau No. 696, Pematangsiantar 16943, Jambi', 1, 15, 7, 196, 'Qui alias error sit ab et. Nulla quis ut vitae aliquam modi magnam esse. Sunt iure sed voluptas odio ipsam culpa. Est molestias fuga vel cupiditate.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(336, 204, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Bass No. 61, Padangpanjang 62812, Malut', 3, 47, 49, 69, 'Ad et autem est. Accusantium ea non ut sequi est. Iusto eaque voluptates facere occaecati fuga voluptas. Quidem et in eum sit amet voluptatem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(337, 74, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Basuki No. 377, Palangka Raya 57740, Bengkulu', 18, 77, 124, 156, 'Aut aspernatur iusto qui eveniet rerum ipsam voluptatem sint. Repellat repellat harum voluptatem quibusdam. Repudiandae corporis non sapiente et et assumenda.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(338, 167, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Halim No. 418, Pagar Alam 57637, Banten', 23, 56, 109, 137, 'Illo necessitatibus consequatur earum et. Optio tempora quo nostrum repudiandae. Aliquid libero laborum qui.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(339, 105, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Sutoyo No. 303, Magelang 67650, Aceh', 27, 62, 122, 167, 'Corporis magni rem veritatis autem sed. Consequuntur vel in similique eum labore quibusdam illo. Labore nostrum consequatur magni et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(340, 141, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Cikutra Barat No. 521, Banjarmasin 66231, Kaltara', 21, 67, 104, 200, 'Similique architecto odit reprehenderit sequi. Sint qui vel impedit aut. Dolore laborum delectus ea voluptates quia nam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(341, 354, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Tentara Pelajar No. 215, Jayapura 95160, Kepri', 21, 10, 133, 60, 'Iure quas quo neque. Debitis iste qui et explicabo commodi rerum. Eos sint sed ad provident et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(342, 211, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Baranang No. 756, Bandung 30117, Kalsel', 12, 40, 173, 116, 'Inventore nam explicabo aut magnam. Impedit ipsa nam ut harum nihil libero deserunt. Non qui deleniti qui qui autem quos.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(343, 367, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Diponegoro No. 511, Palu 49387, Sumbar', 33, 5, 104, 6, 'Facere et aut aut et id. Numquam cum et autem sit. Reprehenderit voluptatem sed est blanditiis consequatur quisquam possimus. Quidem laborum et doloremque aut exercitationem aliquam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(344, 265, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Yoga No. 342, Bontang 17195, Kaltara', 21, 21, 120, 189, 'Numquam molestiae cupiditate fugit velit dignissimos. Quod exercitationem eos natus et. Voluptatem aperiam libero consequatur sed maiores aut. Error fuga maxime iste nostrum quasi unde.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(345, 485, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Ters. Kiaracondong No. 715, Lubuklinggau 89476, Kalteng', 27, 1, 81, 133, 'Mollitia et quidem debitis quam. Ut perspiciatis temporibus est quae qui. Facilis ab non qui quia et. Dolorem nemo quisquam excepturi perferendis. Neque quia optio sed iure modi harum sit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(346, 479, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Nangka No. 125, Tasikmalaya 78209, Sulbar', 9, 14, 101, 68, 'Non optio natus facilis molestiae et. Ad est error voluptas consequatur laboriosam provident. Accusamus minus doloremque molestias magni repudiandae qui dolorem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(347, 147, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Mahakam No. 807, Manado 68806, Kalbar', 18, 2, 188, 30, 'Expedita aperiam officiis modi aspernatur voluptatibus dignissimos eaque. Aut ut tempora dolores et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(348, 35, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Wahidin No. 261, Bukittinggi 77006, Papua', 9, 35, 109, 4, 'Occaecati sunt nam ad doloremque velit fuga. Sapiente eius atque esse et et asperiores illum. Odit commodi voluptatibus atque fuga provident.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(349, 162, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Yohanes No. 220, Prabumulih 30543, Jateng', 4, 14, 152, 44, 'Et voluptatibus est qui error porro ut nihil. Omnis tenetur aut quis aspernatur. Optio impedit officiis molestiae assumenda soluta ea. Velit vel qui laborum quaerat et hic.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(350, 225, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Adisucipto No. 159, Bima 36818, Malut', 2, 60, 28, 31, 'Placeat consequatur at rerum corrupti consectetur. Iure quam est eius ea quia repellendus. Animi similique qui dolorem quo voluptatem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(351, 188, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Bagonwoto  No. 371, Tarakan 54600, NTT', 2, 42, 26, 22, 'Beatae nam et architecto laboriosam. Perferendis autem odit mollitia quod vel explicabo architecto et. Accusantium facere ad placeat similique voluptatem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(352, 165, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Haji No. 252, Palembang 14041, Jambi', 15, 77, 73, 115, 'Vel saepe ab rem. Ipsam vero qui est non. Sunt mollitia libero est dicta nihil dicta et dicta. Est consectetur ut minima eos.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(353, 465, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Baladewa No. 377, Ambon 76221, Papua', 32, 8, 100, 124, 'Quo aliquid ut nostrum laboriosam ratione omnis. Amet sint consequuntur rerum temporibus et. Sint totam ut voluptatum. Exercitationem et alias excepturi dicta ut at.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(354, 229, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Abdul Muis No. 821, Blitar 31570, Riau', 25, 7, 199, 81, 'Nemo et et voluptate totam. Omnis soluta cum aut modi voluptas nostrum praesentium. Atque et quibusdam architecto est consequuntur dicta officia tempora. Omnis enim corporis rerum ex qui.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(355, 432, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Qrisdoren No. 956, Cilegon 58998, Pabar', 17, 29, 108, 147, 'Voluptatibus nihil totam officia ullam non alias reprehenderit. Aut quae labore voluptates eligendi quaerat vero nesciunt dolorem. Rerum minus et magnam quae. Eum ut quibusdam quia rerum voluptas.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(356, 353, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Achmad No. 40, Kotamobagu 71872, Jabar', 30, 27, 15, 126, 'Tempora fugit voluptate expedita dolores. Voluptatem et nulla culpa aut. Omnis voluptas modi nihil nulla et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(357, 192, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Dipatiukur No. 343, Tanjung Pinang 67189, Sulut', 27, 51, 38, 107, 'Blanditiis dolorum et quae illo provident. Odit qui in voluptatem amet id.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(358, 427, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Hasanuddin No. 161, Bitung 72688, Sumsel', 3, 77, 154, 192, 'Maxime sit eum sit cupiditate itaque voluptas ad. Aut iure enim occaecati eos corporis. Repellat animi similique impedit quam quasi ut sunt. Eaque sed quod aut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(359, 16, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Sukabumi No. 5, Tomohon 82483, Papua', 13, 25, 153, 174, 'Magni illo temporibus qui voluptatem deleniti ad ut. Laborum alias at voluptas. Consequuntur rerum quis repellat iure libero. Voluptatem eaque et sapiente ut consequatur.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(360, 485, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Baya Kali Bungur No. 591, Cirebon 71761, Sumut', 9, 32, 50, 174, 'Dolor esse necessitatibus corrupti sint veritatis magnam. Aut beatae molestiae maiores est autem ut quos. Veniam fuga commodi commodi voluptate quo. Et est dolores nam sint at vel eos.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(361, 396, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Laswi No. 587, Tual 15194, Kepri', 2, 35, 185, 31, 'Eos asperiores vitae repellat ab iusto autem aut dolores. Architecto nam animi sapiente ab dolorum. Et similique tempora eum modi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(362, 219, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Achmad Yani No. 429, Kotamobagu 74494, Gorontalo', 20, 79, 7, 15, 'Adipisci eum deleniti qui laudantium qui. A nulla voluptatem fugit pariatur consectetur magnam aliquid libero. Iure autem tenetur esse eaque dolore voluptates.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(363, 309, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Sutarto No. 911, Administrasi Jakarta Utara 19713, Jabar', 3, 26, 32, 182, 'Ut molestiae dolorem quis aut. Quo esse sunt quo velit et. Quia at perferendis minima et eligendi. Alias quos culpa enim assumenda quaerat impedit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(364, 142, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Wahid Hasyim No. 871, Magelang 73827, Sumsel', 27, 41, 71, 180, 'Aut est officia tempore optio ullam. Commodi dolores sit eveniet modi eos dolorum ullam praesentium. Sed est aut quasi aliquid fuga. Architecto sunt assumenda nihil.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(365, 96, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Aceh No. 598, Tangerang Selatan 99107, NTT', 11, 60, 114, 168, 'Et esse quia consequuntur aut est dolorem et consequatur. Assumenda quas vel pariatur. Minima dolor et voluptatem aliquam aut quasi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(366, 298, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Gading No. 90, Administrasi Jakarta Pusat 70668, Sumbar', 7, 55, 110, 167, 'Quia numquam consectetur eius quam architecto accusantium. At earum aut rerum magni et hic. Autem fugit magni rerum laboriosam sequi illo est.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(367, 200, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Sugiyopranoto No. 118, Administrasi Jakarta Timur 17090, Gorontalo', 18, 27, 156, 120, 'Voluptas delectus corporis quo similique. Dolore omnis earum quas velit sint quaerat error. Praesentium qui officia odit dolorum nihil ducimus. Et doloremque omnis eos doloribus eos fugit corporis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(368, 227, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Siliwangi No. 785, Padangpanjang 91743, Sultra', 32, 67, 63, 88, 'Modi molestiae quod aut cumque est blanditiis quia. Aliquam unde magnam sed ea ut dicta. Esse ratione ut est qui omnis fugiat dicta.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(369, 218, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Kyai Mojo No. 553, Administrasi Jakarta Selatan 52924, Sulbar', 24, 62, 36, 49, 'Molestiae in nulla sunt in in iusto. Repellat esse facilis vel est rem laudantium quis. Veniam sed aut qui aut numquam at itaque.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(370, 397, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Samanhudi No. 163, Pangkal Pinang 16715, Kalbar', 30, 36, 129, 161, 'Et occaecati quasi voluptates autem adipisci illo quibusdam. Officia architecto possimus ea delectus minus harum nemo. Sed quia rerum placeat a. Repudiandae dolor fuga et aut dolorum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(371, 355, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Pattimura No. 610, Mataram 88940, Kalbar', 28, 49, 117, 96, 'Saepe commodi sed iure. Nostrum porro et non est labore delectus dolores. Atque et et deleniti est atque voluptatem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(372, 290, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Astana Anyar No. 174, Administrasi Jakarta Timur 32367, Sulbar', 13, 4, 87, 158, 'Neque et illo ipsum. Perferendis maiores consequatur iure velit ut. Minus omnis officiis at totam et placeat eum. Fuga sit iste qui incidunt dolor illum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(373, 187, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Muwardi No. 63, Bekasi 56021, Kalbar', 12, 76, 54, 147, 'Commodi rem soluta in corrupti. Necessitatibus qui consectetur et nulla. Dolorem sunt nulla earum et est animi sint incidunt. Atque id sed id esse.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(374, 131, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Antapani Lama No. 128, Metro 51374, Kepri', 6, 61, 12, 57, 'Fugiat ratione sed ut sit ea voluptatem cupiditate eius. Officiis libero pariatur tempora dolores. Voluptas assumenda quia molestiae non.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(375, 142, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Labu No. 385, Administrasi Jakarta Timur 43274, Bali', 22, 39, 36, 63, 'Dolorum expedita pariatur dolorum ex fugiat tenetur. Et consectetur aut laboriosam hic repellat ut modi quia. Et accusantium voluptas quisquam non sint aut. Cum facilis et beatae voluptas ex.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(376, 211, '2021-01-02', '20:38:49', '20:38:49', 'Jln. B.Agam Dlm No. 782, Serang 53260, Kaltara', 8, 9, 117, 128, 'Illum voluptas eos asperiores veniam quisquam odit autem. Eos autem fugiat architecto consequatur iure. Et voluptate exercitationem minus iste.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(377, 218, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Bata Putih No. 765, Palopo 15884, DKI', 1, 24, 63, 84, 'Veritatis eos ratione iusto ullam et vel. Officia sit in id et libero maxime. Et laudantium similique aut. Molestiae recusandae quia unde.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(378, 379, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Perintis Kemerdekaan No. 937, Sibolga 50995, Sulbar', 9, 56, 36, 68, 'Praesentium aperiam sed a saepe. Nisi eum molestiae laboriosam dicta aut consectetur. Nemo quidem et doloremque vitae maxime iure. Omnis deserunt nam quo eum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(379, 307, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Moch. Yamin No. 902, Tidore Kepulauan 91281, Malut', 28, 16, 43, 92, 'Quis sapiente libero necessitatibus assumenda. Unde consectetur vel officia rerum velit. Autem in odit eos harum ut mollitia. Corporis magnam iure in nesciunt maxime sed.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(380, 481, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Bahagia  No. 194, Tasikmalaya 16238, Jabar', 23, 31, 128, 78, 'Sed sed quis est provident pariatur sint pariatur. Sit vel aut aut qui fugiat. Rerum earum ipsum voluptatem quidem odit voluptatem. Exercitationem dolorem sed fugiat id et minima.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(381, 184, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Bambu No. 607, Tebing Tinggi 91972, Sulsel', 32, 76, 149, 57, 'Ullam sit laudantium sint dolorum et. Itaque nulla amet aliquam. Cupiditate corrupti illum optio magni sint.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(382, 403, '2021-01-02', '20:38:49', '20:38:49', 'Dk. W.R. Supratman No. 229, Banjar 70256, Gorontalo', 28, 65, 188, 172, 'Et sunt maxime est architecto sint est consectetur. Dolor saepe perferendis enim tempora rerum sit. Ut impedit quibusdam odio et ipsum odio assumenda.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(383, 182, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Bhayangkara No. 666, Sabang 29024, DIY', 31, 11, 162, 108, 'Mollitia et ut ipsam laboriosam et ab consequatur. Aut incidunt occaecati omnis eligendi quas. Voluptas ut et et autem et quasi perferendis. Quia labore numquam corrupti sed.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(384, 320, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Bakti No. 628, Dumai 88881, Maluku', 4, 40, 7, 200, 'Voluptatem libero voluptas illo maxime odit est. Fugit rerum aut sed. Adipisci maxime aut perferendis tempore consequatur animi natus. Iusto iste quia placeat et sit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(385, 8, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Bagis Utama No. 725, Subulussalam 54755, NTB', 19, 80, 36, 16, 'In quia aut sit et sequi doloribus. Modi voluptate nemo et error. Ratione cupiditate vero quam omnis est non.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(386, 171, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Warga No. 802, Payakumbuh 15008, Kalbar', 3, 46, 173, 147, 'Dignissimos maxime temporibus dolor quod omnis velit. Tempora quia tempora et et et sint qui quia. Sunt accusantium illo minus et. Praesentium quibusdam rerum numquam qui.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(387, 163, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Antapani Lama No. 149, Mojokerto 49235, Kalteng', 17, 29, 135, 197, 'Quia ut ut quaerat reiciendis et est occaecati. Eligendi unde maiores explicabo deserunt quidem consequuntur. Accusamus dicta vel minima optio quia doloribus nostrum et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(388, 302, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Ahmad Dahlan No. 22, Bekasi 15362, Papua', 28, 65, 9, 115, 'Omnis aut sequi sed quia dolorum et omnis. Quis magnam cupiditate voluptas est a. Qui autem aliquid non rerum iste deserunt eum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(389, 25, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Tubagus Ismail No. 386, Jayapura 27685, Sumsel', 29, 25, 137, 36, 'Sed amet dolores voluptatem dolore et impedit error possimus. Est fugit quia ad odio et qui consequatur voluptatem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(390, 350, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Baja Raya No. 302, Tual 40005, Sulteng', 15, 57, 4, 122, 'Vel quos accusantium sed optio aliquam et. Et non aut autem. Et veritatis incidunt ex nesciunt facilis occaecati.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(391, 85, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Abdul Muis No. 881, Bukittinggi 35237, Gorontalo', 7, 8, 119, 88, 'Velit nesciunt officiis dolorem qui quod. Animi molestiae est ex neque numquam quia eos tempora. Quis natus officia illum ducimus vitae et. Et quis et voluptas ut eos.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(392, 343, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Ciwastra No. 611, Makassar 19877, Sumbar', 2, 27, 74, 93, 'Non earum nobis repellendus illo ratione corporis. Qui exercitationem asperiores quaerat voluptas dolor. Odit ut omnis et non officia animi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(393, 388, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Villa No. 375, Palangka Raya 93119, Kaltim', 5, 52, 27, 22, 'Vitae sequi nostrum rerum tenetur sint. Quos laboriosam labore enim est blanditiis iusto quia.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(394, 389, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Otto No. 329, Administrasi Jakarta Utara 35463, Babel', 18, 59, 152, 16, 'Nihil quas est molestiae facere animi ad. Distinctio non doloremque blanditiis accusamus voluptatem explicabo quaerat. Aliquid sed dolorem aperiam omnis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(395, 445, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Suprapto No. 181, Semarang 10152, Jambi', 29, 6, 121, 167, 'Ducimus cum ut et et animi. Atque aspernatur odio corporis et illo laboriosam. In et ipsum odio et quae possimus qui soluta. Quae qui qui illo consequatur est voluptatem a.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(396, 398, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Yos No. 169, Yogyakarta 19779, NTB', 10, 29, 186, 51, 'Sint est non amet consequatur quia voluptatem. Harum velit aut voluptatem eius dolorem non cupiditate qui. Voluptas molestias quis unde ut perferendis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(397, 218, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Baung No. 741, Dumai 12284, Bengkulu', 26, 72, 98, 159, 'In laborum dolore itaque omnis natus ea libero et. Earum explicabo ab recusandae et. Quo sunt fugiat et qui architecto sunt.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(398, 25, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Bacang No. 774, Balikpapan 54687, Sumbar', 33, 4, 30, 150, 'Molestiae dolores sed ad. Et omnis harum rerum dolorem. Beatae eaque dignissimos corporis. Nihil impedit modi corporis dolor.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(399, 122, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Merdeka No. 418, Denpasar 91757, Sumbar', 14, 8, 125, 115, 'Veritatis eius et omnis dolores. Quibusdam dolorum consequatur beatae incidunt. Unde ut quam fuga odit nobis aut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(400, 438, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Peta No. 793, Pagar Alam 79351, Babel', 23, 31, 10, 53, 'Voluptate sunt quae quas eum. Rem dolorum hic sunt quasi rem. Tenetur quo et in et cupiditate eos illo. Et cumque voluptatem error quas.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(401, 471, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Sam Ratulangi No. 790, Tarakan 57034, Kepri', 3, 72, 12, 16, 'Recusandae natus modi occaecati qui voluptas laborum officia. Fugiat ut et consequatur. Provident voluptatem accusamus rerum eaque aperiam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(402, 273, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Honggowongso No. 954, Probolinggo 44358, NTB', 4, 13, 73, 26, 'Reprehenderit unde et cumque quia. Dicta porro et minus doloremque.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(403, 342, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Warga No. 894, Blitar 93454, Sulbar', 19, 13, 94, 107, 'Magni aut eligendi quam molestiae dolorem illum. Quis eligendi consequatur deleniti quae voluptates excepturi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(404, 492, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Tubagus Ismail No. 216, Kotamobagu 30456, Jabar', 23, 59, 139, 12, 'Nulla dolorum quae asperiores. Occaecati distinctio alias est nihil quia non. Aut odio consequatur sequi quis maiores.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(405, 389, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Bass No. 183, Pontianak 35195, Kalsel', 14, 41, 125, 200, 'In occaecati nostrum repellendus quo. Qui ut iusto recusandae excepturi corporis aut. Assumenda saepe non voluptas sit. Cum eaque id sed enim ea alias est.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(406, 237, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Yosodipuro No. 266, Administrasi Jakarta Pusat 68380, Bali', 18, 68, 178, 29, 'Beatae in rerum architecto suscipit quibusdam alias odio. Cum suscipit occaecati voluptatem blanditiis modi et maiores. Alias sapiente odit facilis et quo. Natus aut itaque eum ut ducimus.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(407, 437, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Rumah Sakit No. 460, Malang 99470, NTB', 18, 3, 105, 77, 'Facere et dolor aliquam. Assumenda reprehenderit voluptatem possimus consequatur numquam aperiam. Consequuntur quia optio aut neque sed quis magni qui. Sit nobis est laudantium et iste.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(408, 351, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Cikutra Barat No. 723, Prabumulih 33406, Kalsel', 20, 44, 2, 112, 'Rerum qui consectetur numquam esse. Neque incidunt quia sit nesciunt quis quia. Eveniet enim velit accusamus aut eum blanditiis repellat.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(409, 90, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Bagas Pati No. 136, Pontianak 69397, Malut', 17, 5, 74, 8, 'Deserunt iusto ut aut enim dolor. Et iure quia consequatur. Perferendis est culpa distinctio nisi vel possimus ut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(410, 302, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Banda No. 206, Tarakan 16614, Aceh', 15, 7, 34, 90, 'Repellat sit rerum et qui illo itaque ipsam odit. Impedit quos voluptatem adipisci veritatis eligendi. Consectetur illo non a numquam incidunt rerum et. Labore quia aut sed est magnam asperiores.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(411, 388, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Bambu No. 445, Jambi 95859, Malut', 9, 5, 114, 163, 'Ut et qui id accusamus temporibus quisquam architecto est. Impedit facilis vero quod eligendi. Doloremque porro cumque et rem quae. Nobis sunt fuga cumque possimus.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(412, 66, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Tambak No. 47, Surakarta 58399, Kalteng', 15, 22, 3, 156, 'Sunt architecto dicta quidem ea recusandae est. Vel quis non tempora praesentium. Veritatis esse fuga dolores.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(413, 426, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Gegerkalong Hilir No. 29, Administrasi Jakarta Utara 96431, NTT', 15, 4, 177, 35, 'Doloribus voluptatem voluptates doloribus. Eius dicta sed et. Nostrum suscipit facere repellat non atque qui sunt. Architecto ut voluptatem in aut quod placeat illum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(414, 20, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Gremet No. 301, Medan 82490, Sulut', 6, 47, 13, 38, 'Asperiores vero quod est. Tempora explicabo qui fuga. Sint laudantium officia aperiam quas dolores.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(415, 26, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Kiaracondong No. 174, Administrasi Jakarta Selatan 47629, Jabar', 7, 78, 25, 48, 'Dolore ea at velit alias qui. Ut sit quia aliquid dolore. Maxime dolore veritatis sit ab. Reprehenderit quia qui necessitatibus.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(416, 180, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Kalimalang No. 225, Padangpanjang 85543, Sulut', 6, 32, 188, 57, 'Occaecati consequatur eius totam. Similique natus id quod omnis enim. Reiciendis aut optio ad illum non fugit modi velit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(417, 8, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Adisucipto No. 464, Medan 16432, Kalsel', 23, 62, 170, 196, 'Doloremque reprehenderit iste tenetur voluptatem. Sed dolores illo voluptas voluptatem qui aut et. Qui assumenda architecto explicabo eligendi sed et. Et asperiores et atque temporibus.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(418, 426, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Sumpah Pemuda No. 715, Tanjung Pinang 31760, Kaltim', 28, 33, 42, 107, 'Asperiores repudiandae neque sed dignissimos cupiditate. Quaerat et qui omnis est qui. Recusandae facilis aut nesciunt omnis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(419, 238, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Basudewo No. 462, Surakarta 31400, Jambi', 28, 32, 24, 136, 'Sunt incidunt ut quia eveniet non. Aut perspiciatis minima consequuntur qui itaque. Facilis natus fugiat ea explicabo. Hic amet dolores explicabo beatae et est eos.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(420, 172, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Camar No. 335, Cilegon 62023, Jatim', 9, 7, 72, 149, 'Ut consequuntur et nemo esse sit. Magni temporibus assumenda ratione nobis quisquam nobis sit. Omnis ducimus enim atque et eligendi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(421, 174, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Yoga No. 966, Pangkal Pinang 38460, Jatim', 13, 3, 90, 196, 'Enim aut quia quia minima et. Non quod recusandae itaque facere labore et. Vitae et id beatae dolorem quasi officia rerum mollitia. Enim eaque consectetur ipsa.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(422, 103, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Dago No. 876, Cimahi 79290, Kaltara', 23, 12, 155, 9, 'Quisquam ea consectetur magnam vitae est recusandae impedit. Autem laboriosam minima ea nesciunt. Perspiciatis esse est adipisci qui. Quam sit sint sit repudiandae delectus eum at.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(423, 72, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Gremet No. 342, Bogor 89895, Kepri', 5, 76, 124, 186, 'Qui et velit enim ut beatae corporis. Maxime officia non voluptates nihil praesentium perspiciatis repudiandae. Et reprehenderit qui voluptatibus architecto voluptatem ratione quia.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(424, 305, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Dipenogoro No. 859, Batam 22534, Sulbar', 18, 70, 116, 188, 'Rerum molestiae odio porro perferendis sed. Ut est deleniti itaque excepturi voluptatem suscipit. Dignissimos optio iusto inventore error ex in dolorum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(425, 142, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Sentot Alibasa No. 962, Jayapura 38108, Kalteng', 25, 79, 178, 49, 'Neque reiciendis aut velit tenetur. Ut doloribus omnis commodi tempore vitae. Itaque commodi cupiditate voluptatem velit est illo. Vel similique nostrum et assumenda.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(426, 146, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Kalimalang No. 442, Ambon 47516, Sumbar', 22, 32, 152, 40, 'Molestiae molestias porro neque quibusdam reprehenderit ad et. Excepturi non molestiae beatae. Quos odio temporibus dolore nisi id magnam. Neque quas nesciunt dolor quis perspiciatis sit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(427, 50, '2021-01-02', '20:38:49', '20:38:49', 'Ds. HOS. Cjokroaminoto (Pasirkaliki) No. 374, Binjai 89014, Sumsel', 8, 47, 146, 32, 'Vitae et perferendis amet non. Laboriosam voluptas sit quas laborum ullam culpa. Rerum provident exercitationem esse. Reiciendis voluptas ratione sed voluptatem sed eum et earum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(428, 284, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Banda No. 890, Tegal 16360, Lampung', 12, 33, 36, 190, 'Inventore quia quidem nostrum rerum eaque. Nobis qui eum omnis et consequatur dicta. Minima aut temporibus repellat et nemo rerum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(429, 310, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Kalimantan No. 601, Pekalongan 30954, Kepri', 4, 62, 41, 8, 'Suscipit sapiente doloribus nihil aut debitis facere consequuntur non. Aut sed asperiores aliquid ut. Illum velit ab sed corporis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(430, 176, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Bambon No. 359, Blitar 91461, Papua', 25, 39, 66, 11, 'Sint sit voluptatem error labore aliquam autem consequatur. Et aut accusantium doloremque qui iusto omnis. Repellat mollitia velit et accusamus.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(431, 186, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Bara Tambar No. 816, Tanjungbalai 70286, Sumbar', 3, 60, 53, 42, 'Corrupti culpa eum libero. Praesentium sint repudiandae saepe sit eius. Ipsum explicabo labore odio commodi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(432, 239, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Gardujati No. 837, Bengkulu 80281, Kalteng', 1, 50, 146, 158, 'Maiores ratione eum maiores ipsa. Officia saepe quidem aspernatur veniam consequatur labore id error. Aut voluptatum laborum blanditiis esse.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(433, 3, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Dr. Junjunan No. 60, Administrasi Jakarta Barat 38417, Jambi', 6, 31, 132, 39, 'Aut necessitatibus vel assumenda facilis qui. Velit eaque voluptates est. Ut ullam dolores soluta eaque ad quisquam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(434, 459, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Bayam No. 599, Medan 45329, DIY', 23, 41, 172, 176, 'Perspiciatis molestiae similique placeat voluptas unde ullam ex. Corrupti ipsam iste distinctio ex recusandae blanditiis. Et perspiciatis aliquam eum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(435, 18, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Barat No. 883, Gunungsitoli 58131, Jatim', 31, 55, 198, 112, 'Nobis voluptas blanditiis odio id perspiciatis. Assumenda architecto ex magnam et incidunt nostrum. Fugit quia maxime temporibus molestiae.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(436, 47, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Mulyadi No. 366, Gunungsitoli 54224, NTB', 29, 74, 58, 175, 'Nesciunt recusandae voluptas dolorem odit nobis tempore. Delectus sapiente laudantium iusto in excepturi. Quo quia quia itaque laborum unde numquam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(437, 144, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Gambang No. 996, Banda Aceh 11332, Jambi', 15, 55, 2, 117, 'Perferendis aut tempora amet explicabo. Alias cupiditate qui voluptates deserunt doloremque. Suscipit ut corrupti aut magnam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(438, 411, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Sutarto No. 617, Magelang 56221, Jatim', 29, 45, 38, 70, 'Est eaque est quas id dolore iusto dolores dolorum. Reiciendis fugit non reprehenderit voluptatibus modi ipsam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(439, 466, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Bappenas No. 452, Pagar Alam 64747, Kaltara', 33, 49, 90, 4, 'Illum omnis consequuntur et cupiditate ut fuga. Laboriosam rerum facilis veritatis doloremque. Rerum fuga similique odio provident facere laboriosam labore.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(440, 403, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Jagakarsa No. 436, Balikpapan 53022, Bali', 21, 15, 95, 103, 'Officiis accusamus sapiente eum laboriosam sapiente iure corporis. Aliquid facilis qui voluptates. Velit occaecati sequi quam assumenda ea expedita nobis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(441, 487, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Salak No. 349, Gorontalo 24105, Pabar', 17, 21, 147, 27, 'Eum voluptate fuga eveniet vel voluptatem recusandae blanditiis. Asperiores temporibus animi id et ex. Earum omnis labore quas. Aliquam eius rerum porro at et et voluptas praesentium.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(442, 420, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Moch. Toha No. 9, Palu 36241, Kalbar', 20, 38, 142, 81, 'Culpa ut ipsam rem. Rerum culpa sed debitis consequatur. Quo voluptates et ab reiciendis. Voluptatem officiis molestiae cupiditate vel inventore perspiciatis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(443, 17, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Veteran No. 31, Gunungsitoli 26796, DIY', 24, 30, 121, 2, 'Aliquam nihil et dolore velit. Officia fuga et et odit laudantium. Sequi eos eius est animi inventore magni.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(444, 145, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Ketandan No. 278, Administrasi Jakarta Utara 80605, Sumut', 27, 69, 187, 75, 'Omnis qui id et id aperiam dolore. Quasi fugit et non doloribus autem laborum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(445, 438, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Monginsidi No. 49, Cilegon 70712, Kalbar', 23, 74, 171, 104, 'Ipsam quidem occaecati non et velit neque illum. Illum exercitationem iure velit sed rerum est itaque. Ducimus enim esse minima molestias distinctio modi explicabo.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(446, 32, '2021-01-02', '20:38:49', '20:38:49', 'Gg. R.E. Martadinata No. 405, Tanjungbalai 44543, Bengkulu', 21, 51, 146, 7, 'Qui aut ducimus voluptas. Ut rerum tenetur est dicta et veniam et. Quo quia non et. In voluptatem nisi molestiae provident repellendus aut sint earum. Minima sit et ut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(447, 268, '2021-01-02', '20:38:49', '20:38:49', 'Gg. M.T. Haryono No. 591, Balikpapan 70189, Bengkulu', 32, 5, 45, 83, 'Odit vel rem numquam. Eum quis consequatur rerum odio. In illo laudantium et. Rerum tempore eos unde sit nihil ducimus.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(448, 228, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Sampangan No. 376, Tebing Tinggi 66459, Papua', 11, 71, 177, 160, 'Itaque explicabo qui et reprehenderit alias exercitationem. Recusandae deserunt quasi inventore ipsa recusandae blanditiis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(449, 85, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Kiaracondong No. 724, Surakarta 70187, Maluku', 24, 31, 22, 47, 'Consequatur magni dolorum eum. Occaecati rem deleniti explicabo nemo exercitationem. Nesciunt aut quo autem numquam est. In asperiores unde autem repellendus.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(450, 165, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Salak No. 431, Palembang 59712, Sulbar', 14, 6, 119, 181, 'Qui ratione rerum nulla dicta. Fuga quam sed voluptatem est sit eos. Architecto ea est eligendi dolorem et nobis voluptatem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(451, 484, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Nanas No. 997, Bandung 81746, Sulbar', 31, 3, 24, 2, 'Ut qui nesciunt id et nihil magni quisquam. Sed non quasi minus distinctio velit qui ut. Molestias dolorem esse illum accusantium quia non.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(452, 366, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Gedebage Selatan No. 968, Administrasi Jakarta Selatan 65416, Sulteng', 30, 58, 113, 173, 'Corporis molestias cum nemo voluptas. Fuga sed vitae quod sapiente reiciendis sunt. Qui libero sint eum veritatis aliquam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(453, 203, '2021-01-02', '20:38:49', '20:38:49', 'Ki. Bakaru No. 990, Bau-Bau 73862, Jabar', 31, 59, 29, 139, 'Vel illum nulla rerum id aut. Aut numquam ab ut maxime totam hic fugit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(454, 314, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Cikutra Barat No. 56, Tanjungbalai 90741, Kaltara', 22, 2, 50, 28, 'Iste dolores fugit sint dolore. Nobis repellat minima est minus et. A qui deleniti quia explicabo modi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(455, 386, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Yap Tjwan Bing No. 917, Pekalongan 30840, Sultra', 12, 30, 132, 123, 'Est aliquid praesentium illum nihil ducimus. Qui minima tenetur doloremque voluptates dolorum. Ullam voluptatem recusandae sapiente sit sunt nihil.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(456, 266, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Hang No. 336, Bitung 66985, Sumbar', 4, 5, 96, 118, 'Consequatur nam nihil corrupti rerum aut nisi. Non optio aperiam ut officia. Nihil et fuga nemo sapiente.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(457, 349, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Jend. Sudirman No. 746, Palu 57558, Kalbar', 26, 10, 89, 105, 'Velit non quis est necessitatibus et voluptates vel. A aut est dolores velit est alias. Molestiae itaque totam fugit ut est deserunt.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(458, 176, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Raden No. 653, Sibolga 62867, Jabar', 16, 5, 62, 121, 'Ab dolorum voluptas voluptatem dolore consequatur. Quia aliquid culpa suscipit non earum cupiditate. Sequi ullam quaerat eligendi officia nulla.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(459, 305, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Ters. Pasir Koja No. 998, Cimahi 46600, Sultra', 11, 48, 66, 161, 'Aut neque deserunt possimus aut cum eius. Repudiandae maxime provident commodi laboriosam ullam. Eius sed saepe consequatur culpa cupiditate corrupti ut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(460, 141, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Untung Suropati No. 965, Sorong 87894, Malut', 29, 36, 98, 26, 'Ducimus tempora sed qui ullam et necessitatibus animi. Praesentium soluta odio voluptas tempora dolor voluptas sed. Vero nostrum illo labore labore qui et optio. Eaque odit deserunt sed.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(461, 307, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Sam Ratulangi No. 784, Administrasi Jakarta Timur 62478, Sulut', 1, 72, 8, 140, 'Et iusto harum repudiandae eos. Esse soluta voluptatem sed tenetur. Exercitationem tenetur libero praesentium ullam doloremque sit placeat.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(462, 396, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Sadang Serang No. 723, Gorontalo 13624, Kaltara', 28, 15, 131, 10, 'Ut ullam asperiores libero enim repellat aliquid tenetur dolor. Ex ipsa officia consequatur fugiat exercitationem quaerat est. Repellat perspiciatis labore veritatis. Accusamus et laboriosam et ut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(463, 109, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Nakula No. 86, Manado 90085, Kaltim', 7, 31, 23, 117, 'Cupiditate excepturi rerum sed odio animi. Corrupti qui deserunt expedita necessitatibus dignissimos numquam suscipit. Nostrum molestiae dolore impedit perspiciatis id ratione sequi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(464, 392, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Bakau No. 490, Pematangsiantar 82916, Maluku', 22, 40, 113, 112, 'Doloremque esse voluptatum quaerat. Sapiente ipsum incidunt laborum quia et alias. Sapiente quia consequatur expedita et qui ut mollitia. Voluptatem aperiam id voluptas dolores.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(465, 326, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Tambun No. 727, Medan 90319, NTB', 11, 68, 192, 96, 'Dolore esse unde illo. Beatae iure dolorum dolore harum rerum quia. Sapiente cumque suscipit voluptatem qui cupiditate autem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(466, 67, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Baranang Siang No. 489, Makassar 65571, DKI', 13, 41, 182, 41, 'Consequatur quisquam reiciendis quia illum. Sed eligendi qui nihil ut. Velit nam quia minus sunt cumque recusandae dolores repudiandae. Itaque sunt fuga nostrum soluta perspiciatis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(467, 168, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Bakau No. 232, Semarang 82411, Maluku', 12, 58, 46, 106, 'Nostrum dolorum ut eos quis voluptate. In adipisci fugiat et eos quam eos ipsa. Adipisci dolorum non ut qui quos nisi sed. Eos aut qui fugiat qui et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(468, 86, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Suryo Pranoto No. 210, Probolinggo 40373, DIY', 14, 47, 47, 82, 'Ad eligendi dolorem impedit dolor quas cupiditate qui. Fugit quia deleniti id aspernatur expedita libero et quia.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(469, 393, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Untung Suropati No. 164, Tangerang Selatan 40638, Jateng', 24, 44, 48, 5, 'Voluptates delectus in qui quia necessitatibus dolore sunt. Exercitationem accusantium et quas rerum deserunt. Nisi quod vel quae et assumenda.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(470, 244, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Baya Kali Bungur No. 665, Tidore Kepulauan 81238, Kaltim', 11, 53, 109, 75, 'Quidem repellendus dignissimos dolores similique atque pariatur et. Ut aut itaque eum odio repellendus. Ut quo rerum rem quam modi. Qui ut ipsam explicabo qui asperiores.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(471, 500, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Thamrin No. 27, Padang 56932, Jabar', 22, 55, 139, 2, 'Voluptate quaerat est sapiente ipsam libero. Nulla ut ea voluptatem dolorem nulla. Est quo vitae blanditiis est et iusto fuga voluptatem. Tempore quia facere omnis sequi qui sunt ut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(472, 191, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Tentara Pelajar No. 248, Pangkal Pinang 75196, Riau', 13, 21, 58, 38, 'Nemo molestias vitae excepturi sit dolores. Voluptatem pariatur minima quaerat nostrum libero nemo. Iure odit accusamus odio rerum eveniet quaerat.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(473, 74, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Villa No. 800, Prabumulih 70564, Jambi', 23, 19, 67, 61, 'Quidem at dignissimos non ut est corporis aliquid quas. Pariatur velit possimus enim quaerat tempora molestiae deserunt. Animi itaque ut possimus officia quasi et repellendus. Quia quidem nemo qui.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(474, 395, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Baranang No. 401, Administrasi Jakarta Barat 32192, Pabar', 25, 41, 55, 185, 'Sit consequuntur cum dignissimos eos quaerat. Aut tenetur deserunt repellat et. Sint accusantium consequuntur officia alias.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(475, 455, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Moch. Yamin No. 619, Padangsidempuan 11531, Sulbar', 32, 62, 101, 97, 'Ea aliquam non omnis nam accusantium officia. Voluptas officiis a enim et. Beatae reiciendis dicta accusantium quo.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(476, 18, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Jakarta No. 863, Gorontalo 83324, Sulbar', 3, 76, 55, 180, 'Ratione veritatis corrupti omnis neque quis. Quis voluptatum tempora commodi aliquam illo quo. Aliquam animi aut quaerat aut. Et vero qui provident rerum consectetur neque accusantium non.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(477, 396, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Raya Ujungberung No. 102, Tasikmalaya 65657, Aceh', 12, 80, 16, 183, 'Sed natus aliquam dolores veniam qui deleniti. Quo nobis corporis placeat quo. Omnis corrupti magnam beatae et sequi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(478, 427, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Agus Salim No. 880, Cirebon 14293, Jatim', 28, 65, 115, 67, 'Nam aliquam aperiam labore hic assumenda est. Dolor qui voluptatem voluptatem enim incidunt eius nobis. Consequatur qui reiciendis placeat laborum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(479, 15, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Supono No. 456, Sibolga 43821, Sumbar', 24, 36, 99, 144, 'Maxime quos molestias reprehenderit cum. Totam nesciunt sit eveniet amet praesentium eius dolorum et. Asperiores omnis similique eius velit sapiente. Maiores eveniet quia debitis nulla nisi fugiat.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(480, 252, '2021-01-02', '20:38:49', '20:38:49', 'Gg. W.R. Supratman No. 262, Kediri 40137, Sultra', 26, 24, 172, 124, 'Rem maxime voluptas earum rerum. Qui omnis sint odio suscipit nesciunt in. Aperiam repellendus quis rem facere eius quae in.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(481, 163, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Jagakarsa No. 474, Balikpapan 70398, DIY', 25, 75, 194, 186, 'Cumque ex excepturi a explicabo quam asperiores. Quas velit ratione quidem laboriosam. Quam ea incidunt soluta exercitationem nesciunt voluptas. Eligendi sunt error placeat voluptatem minus.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(482, 490, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Siliwangi No. 576, Sawahlunto 73249, NTB', 14, 7, 152, 162, 'Accusantium labore ut omnis et omnis. Nam assumenda quibusdam et et. Est dolor sed officiis. Sed corrupti nobis ea qui labore voluptates.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(483, 61, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Basudewo No. 148, Tanjung Pinang 47745, Banten', 25, 50, 4, 59, 'Quibusdam magni maxime et corrupti atque sint incidunt libero. Aliquid veniam ut dolorum rerum omnis quaerat dignissimos. Soluta sed rem rem. Odio temporibus incidunt voluptatem.', '2021-01-19 08:49:03', '2021-01-19 08:49:03');
INSERT INTO `transaksi_details` (`id`, `transaksi_id`, `tanggal_acara`, `jam_mulai`, `jam_akhir`, `lokasi_acara`, `provinsi_id`, `kabupaten_id`, `kecamatan_id`, `kelurahan_id`, `catatan`, `created_at`, `updated_at`) VALUES
(484, 246, '2021-01-02', '20:38:49', '20:38:49', 'Ds. B.Agam Dlm No. 353, Banjarbaru 63267, Kaltara', 30, 9, 25, 26, 'Quaerat nihil aut minima ea et vero. Ut accusamus quam dolor praesentium blanditiis omnis corrupti sequi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(485, 159, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Dipenogoro No. 336, Banjar 17414, Kalsel', 19, 58, 137, 75, 'Qui ex sint ducimus omnis eos aut exercitationem. Est qui ipsam quia aut delectus quia.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(486, 354, '2021-01-02', '20:38:49', '20:38:49', 'Dk. Raya Ujungberung No. 782, Tegal 16012, Sulteng', 27, 2, 180, 52, 'Et commodi ipsa saepe quibusdam omnis. Eum voluptatem vero est laudantium aut aut ut. Id ex vero corporis officiis et.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(487, 434, '2021-01-02', '20:38:49', '20:38:49', 'Gg. K.H. Wahid Hasyim (Kopo) No. 913, Manado 50065, Sumbar', 20, 66, 174, 142, 'Quia nobis explicabo fugiat rerum. Omnis animi voluptatibus est laudantium laudantium ad totam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(488, 20, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Jamika No. 922, Payakumbuh 28401, Kalbar', 14, 15, 84, 95, 'Sed commodi minima reiciendis est accusamus nihil incidunt. Quod itaque suscipit quibusdam quas. Aperiam fugit rem quas.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(489, 171, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Samanhudi No. 278, Pariaman 99342, Maluku', 8, 11, 49, 63, 'Quasi enim numquam alias ea eligendi magnam sit. Sint ea enim fuga. Quia eos sed rerum molestiae error.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(490, 229, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Bank Dagang Negara No. 614, Tarakan 92490, Sumut', 5, 43, 36, 30, 'Itaque unde minus modi ut cum ut. Iste ipsa sed quo quidem unde fugit odit. Est voluptate est sint quis.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(491, 202, '2021-01-02', '20:38:49', '20:38:49', 'Gg. Bahagia  No. 367, Lhokseumawe 63595, Papua', 17, 67, 188, 127, 'Et nemo dolor eveniet vero. Eum distinctio tempore qui qui ab. Aut excepturi minima pariatur non et incidunt commodi magnam. Natus sapiente eos excepturi dolores in id quam ut.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(492, 142, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Salam No. 453, Prabumulih 33776, DIY', 23, 52, 162, 9, 'Aut vero vel ut voluptates minima hic sint. Quasi praesentium aut soluta deserunt minus.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(493, 250, '2021-01-02', '20:38:49', '20:38:49', 'Jr. Salam No. 338, Sibolga 14545, Jateng', 3, 39, 110, 42, 'Rerum eaque quia totam vitae in a voluptas. Quam accusamus quia id nihil saepe nihil. Tempore eius ducimus autem itaque incidunt mollitia.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(494, 334, '2021-01-02', '20:38:49', '20:38:49', 'Ds. Sentot Alibasa No. 191, Palangka Raya 41308, Kalteng', 7, 37, 22, 163, 'Nostrum voluptatem voluptatum in sunt ad eum corporis. Harum tempore qui rem dolorem eveniet.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(495, 296, '2021-01-02', '20:38:49', '20:38:49', 'Jln. Baabur Royan No. 127, Singkawang 63379, Gorontalo', 24, 32, 117, 158, 'Iusto debitis enim expedita fugiat voluptatem temporibus harum. Ut dolorem eius eos molestiae inventore nihil.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(496, 460, '2021-01-02', '20:38:49', '20:38:49', 'Psr. Baabur Royan No. 601, Sabang 32734, NTB', 32, 71, 84, 167, 'Et fugiat id illum et sed praesentium soluta. Similique dolores ut ex ducimus sit cupiditate sit illo. Impedit molestiae hic quas qui autem dolorum.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(497, 469, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Rajawali No. 925, Tomohon 35050, Bali', 27, 71, 10, 153, 'Voluptate dolor est omnis. Dolorem perspiciatis velit libero est quia ad in. Vitae fuga earum tempore sint sunt. Est laboriosam quia quia sint numquam.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(498, 81, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Bahagia  No. 290, Denpasar 25106, Jabar', 7, 54, 121, 64, 'Corrupti iure suscipit occaecati sequi. Officia adipisci ipsam et ea inventore asperiores voluptatem. Dolor molestiae consectetur delectus odit qui.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(499, 92, '2021-01-02', '20:38:49', '20:38:49', 'Kpg. Gardujati No. 490, Gorontalo 86116, NTB', 12, 11, 50, 121, 'Voluptatum neque doloribus amet nobis. Voluptas odio illum omnis vero aliquid atque doloremque. Provident dolor molestiae omnis voluptatem adipisci aut cupiditate commodi.', '2021-01-19 08:49:03', '2021-01-19 08:49:03'),
(500, 117, '2021-01-02', '20:38:49', '20:38:49', 'Ds. R.E. Martadinata No. 329, Bukittinggi 18922, Bengkulu', 31, 53, 16, 67, 'Voluptatem explicabo accusamus tempora et. Iusto perspiciatis id veritatis. Quidem sunt asperiores fugit est et odit.', '2021-01-19 08:49:03', '2021-01-19 08:49:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `photo_profile`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'photo_profile/WmOtUJUU7DxJyOeICbw4eQf6O0RB20lr4FmtPIX3.jpg', 'user', 'user@gmail.com', NULL, '$2y$10$gsN6BR2hAFbWZ5MTQ86vc.FDURTGCo2e6JrSw1M6EJE.Lsg4gXpF.', NULL, NULL, NULL, '2021-03-12 20:47:17', '2021-03-12 20:47:17'),
(2, 'photo_profile/WmOtUJUU7DxJyOeICbw4eQf6O0RB20lr4FmtPIX3.jpg', 'romadhon', 'userroma@gmail.com', NULL, '$2y$10$UaAo.pfeMAnkgZYZdjYXP.1ZrbF4MNZU8D4nC/P.AHsWorfzgG.La', NULL, NULL, NULL, '2021-03-14 00:29:19', '2021-03-14 00:29:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `photo_vendor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_vendor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kontak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi_id` int(10) UNSIGNED NOT NULL,
  `kabupaten_id` int(10) UNSIGNED NOT NULL,
  `kecamatan_id` int(10) UNSIGNED NOT NULL,
  `kelurahan_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_lengkap` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ktp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `vendors`
--

INSERT INTO `vendors` (`id`, `user_id`, `photo_vendor`, `nama_vendor`, `kontak`, `email`, `provinsi_id`, `kabupaten_id`, `kecamatan_id`, `kelurahan_id`, `status`, `alamat_lengkap`, `lokasi`, `ktp`, `created_at`, `updated_at`) VALUES
(502, 506, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Rahimah Wijayanti', '0472 0311 047', 'raharja24@gmail.co.id', 4, 22, 99, 20, '1', 'Ki. Ketandan No. 941, Yogyakarta 93910, Sumut', '1119', '4545554', '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(503, 356, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Rahimah Purnawati', '(+62) 894 5108 4674', 'ardianto.natalia@gmail.co.id', 24, 16, 49, 100, '1', 'Jln. Perintis Kemerdekaan No. 276, Tebing Tinggi 76843, Gorontalo', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(504, 479, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Wahyuni', '(+62) 458 4578 476', 'almira67@yahoo.co.id', 5, 14, 52, 50, '1', 'Psr. Babah No. 87, Tegal 55011, Kalbar', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(505, 165, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Kurniawan Tbk', '0321 8218 0449', 'haryanti.jatmiko@gmail.co.id', 11, 47, 20, 37, '1', 'Ki. Flora No. 476, Tidore Kepulauan 49501, Aceh', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(506, 144, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Yuliarti Wastuti', '0227 6980 675', 'galih65@yahoo.com', 7, 14, 82, 100, '0', 'Ki. Surapati No. 643, Batu 73272, Bali', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(507, 134, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Widodo Tbk', '0943 1988 1938', 'natalia.oktaviani@yahoo.com', 29, 20, 54, 66, '0', 'Ds. M.T. Haryono No. 117, Bandung 16553, Kepri', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(508, 454, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Sihombing Wijayanti (Persero) Tbk', '(+62) 969 3968 2380', 'rahayu.karja@suryatmi.asia', 13, 50, 93, 8, '0', 'Gg. Jamika No. 252, Tangerang Selatan 22152, Kalsel', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(509, 317, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Hasanah Wulandari', '(+62) 697 5402 4148', 'mangunsong.gamblang@gmail.com', 3, 34, 4, 25, '0', 'Kpg. Rajawali No. 540, Malang 15151, Riau', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(510, 297, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Prasetya Hastuti', '0840 5929 5081', 'lprayoga@hutagalung.co', 29, 18, 18, 61, '1', 'Jr. Yogyakarta No. 458, Cimahi 68556, Sulbar', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(511, 233, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Maheswara Tbk', '(+62) 851 3997 8922', 'mumpuni.suartini@simanjuntak.tv', 12, 75, 71, 51, '0', 'Psr. Soekarno Hatta No. 594, Kediri 85832, DIY', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(512, 433, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Haryanto (Persero) Tbk', '(+62) 28 3227 432', 'iriyanti@yahoo.co.id', 27, 80, 90, 88, '1', 'Ds. Abdul. Muis No. 251, Surakarta 14322, Gorontalo', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(513, 177, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Samosir Tbk', '026 4874 6228', 'yoga69@rahayu.sch.id', 28, 88, 39, 60, '1', 'Psr. Hasanuddin No. 80, Palu 96844, Kaltim', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(514, 328, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Yulianti Hartati Tbk', '(+62) 867 617 756', 'rachel69@tamba.in', 10, 18, 63, 5, '1', 'Ds. Thamrin No. 605, Banjar 53997, Papua', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(515, 164, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Manullang', '(+62) 313 3465 863', 'nugroho.danuja@wijayanti.or.id', 11, 11, 87, 5, '0', 'Psr. Bakau Griya Utama No. 350, Palangka Raya 43407, Gorontalo', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(516, 161, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Wasita', '(+62) 923 4119 890', 'kawaca20@prayoga.org', 15, 84, 32, 46, '0', 'Psr. Jaksa No. 628, Administrasi Jakarta Utara 77032, Jatim', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(517, 320, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Maheswara Melani (Persero) Tbk', '(+62) 812 408 325', 'ajeng.lestari@yahoo.com', 20, 8, 42, 28, '0', 'Dk. Ketandan No. 137, Blitar 69551, Kalsel', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(518, 44, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Usamah Tbk', '028 8351 685', 'darman66@laksmiwati.biz.id', 25, 8, 44, 41, '0', 'Gg. R.E. Martadinata No. 894, Cirebon 65917, Pabar', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(519, 161, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Saragih Pratiwi Tbk', '(+62) 774 8099 5019', 'lukman76@ramadan.co.id', 7, 89, 10, 24, '1', 'Jr. Bagis Utama No. 653, Malang 72880, Papua', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(520, 475, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Rahayu Widiastuti (Persero) Tbk', '(+62) 207 7034 0478', 'kunthara.hasanah@uwais.in', 2, 2, 68, 92, '1', 'Ki. Basoka No. 696, Cilegon 71820, Malut', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(521, 190, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Wulandari', '0556 9737 5916', 'timbul29@yahoo.co.id', 4, 100, 16, 33, '1', 'Ds. Suharso No. 747, Kotamobagu 23441, Gorontalo', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(522, 346, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Purwanti', '(+62) 520 4910 553', 'permadi.gatra@yahoo.com', 19, 34, 35, 65, '1', 'Kpg. Sukajadi No. 19, Bogor 13815, Kalteng', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(523, 146, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Haryanti Laksmiwati', '0565 2597 692', 'umi83@gmail.co.id', 12, 23, 4, 12, '1', 'Kpg. Laswi No. 416, Administrasi Jakarta Utara 57924, Gorontalo', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(524, 53, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Mulyani', '0365 8169 945', 'qsitompul@handayani.web.id', 15, 23, 51, 66, '1', 'Psr. Cikutra Timur No. 595, Padangpanjang 53265, Bali', '1106', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(525, 95, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Sihombing', '(+62) 760 6564 667', 'zelda73@dabukke.co', 10, 94, 14, 33, '1', 'Ki. Gatot Subroto No. 149, Subulussalam 33151, Papua', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(526, 388, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Yuniar Rahmawati', '0929 3782 9164', 'hariyah.omar@gmail.co.id', 16, 100, 68, 51, '0', 'Gg. Cikutra Barat No. 294, Singkawang 28827, Gorontalo', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(527, 498, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Mardhiyah (Persero) Tbk', '0680 9654 6173', 'sihombing.unjani@marbun.biz.id', 9, 37, 90, 100, '1', 'Ds. Supomo No. 769, Singkawang 17876, Kepri', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(528, 387, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Purwanti Budiman', '0373 6403 930', 'cinta11@yahoo.co.id', 25, 32, 45, 95, '0', 'Jln. Zamrud No. 502, Semarang 72177, Sulteng', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(529, 318, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Sudiati Mandala (Persero) Tbk', '0292 3460 5578', 'mustofa.balapati@yahoo.com', 28, 85, 21, 23, '1', 'Kpg. Daan No. 271, Kotamobagu 81529, NTB', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(530, 463, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Mustofa Mangunsong (Persero) Tbk', '(+62) 975 3269 5682', 'kairav56@wijayanti.mil.id', 11, 12, 8, 17, '0', 'Ds. Gading No. 235, Depok 21829, Kalbar', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(531, 45, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Nuraini Riyanti (Persero) Tbk', '0582 3319 1958', 'karsa.pradana@gmail.co.id', 2, 55, 63, 58, '0', 'Ds. Jend. A. Yani No. 734, Tanjungbalai 49138, Sulbar', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(532, 409, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Setiawan Tbk', '027 0907 805', 'dwulandari@yahoo.co.id', 5, 48, 12, 47, '0', 'Ki. Basket No. 477, Depok 21990, Jabar', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(533, 187, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Rahimah Napitupulu', '(+62) 984 8143 4133', 'pkuswoyo@wulandari.mil.id', 18, 6, 37, 23, '0', 'Gg. Babah No. 372, Bekasi 71542, DIY', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(534, 28, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Utami (Persero) Tbk', '(+62) 846 1236 674', 'nsantoso@gmail.com', 21, 1, 45, 51, '1', 'Jln. Gambang No. 79, Payakumbuh 64616, Sulbar', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(535, 90, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Mandasari Kusmawati (Persero) Tbk', '0334 6567 254', 'karsa11@yolanda.co', 22, 11, 92, 79, '0', 'Jln. Karel S. Tubun No. 125, Lubuklinggau 14223, DKI', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(536, 48, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Narpati Hutapea', '(+62) 407 2809 8328', 'jagaraga36@gmail.co.id', 10, 52, 56, 10, '0', 'Dk. Rajawali Timur No. 559, Bitung 37101, Riau', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(537, 15, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Dabukke Agustina', '0611 4118 9222', 'maryati.bagas@usamah.or.id', 24, 6, 34, 16, '1', 'Ki. Katamso No. 368, Sawahlunto 17720, Kalteng', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(538, 167, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Wasita Utami', '(+62) 330 3209 3680', 'pramadan@laksmiwati.biz.id', 12, 55, 49, 45, '1', 'Kpg. Suharso No. 639, Jayapura 15510, Kalteng', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(539, 351, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Puspasari Tbk', '(+62) 566 8051 1551', 'cawuk54@yahoo.co.id', 4, 56, 13, 75, '0', 'Ki. Villa No. 922, Tarakan 70969, Gorontalo', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(540, 366, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Adriansyah Ramadan (Persero) Tbk', '0972 8370 183', 'xuwais@gmail.co.id', 23, 14, 65, 78, '0', 'Jln. R.E. Martadinata No. 8, Batu 10172, Jambi', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(541, 306, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Safitri Wibisono', '(+62) 24 3824 399', 'permata.aurora@mandala.net', 19, 62, 89, 80, '1', 'Gg. Sukabumi No. 460, Palu 61838, Gorontalo', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(542, 376, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Sitompul Maryati (Persero) Tbk', '(+62) 209 8112 777', 'karen.lailasari@gmail.co.id', 6, 81, 99, 53, '1', 'Kpg. Bara No. 195, Tebing Tinggi 68659, Babel', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(543, 19, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Puspasari Kuswandari (Persero) Tbk', '(+62) 21 3021 6989', 'kasusra49@hasanah.tv', 28, 33, 79, 34, '1', 'Ds. Cikutra Timur No. 495, Semarang 96707, Malut', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(544, 372, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Anggraini', '022 6944 6742', 'wibowo.ulva@gmail.co.id', 25, 41, 17, 68, '0', 'Psr. Babakan No. 660, Banjar 66405, Aceh', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(545, 431, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Haryanti Wahyudin', '0303 2924 6547', 'ysuryatmi@siregar.co.id', 23, 50, 89, 96, '0', 'Jln. Kebangkitan Nasional No. 184, Palopo 20309, Kalsel', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(546, 431, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Mandasari Laksita', '(+62) 351 7191 428', 'upermata@halimah.mil.id', 8, 41, 15, 36, '0', 'Ds. Siliwangi No. 814, Blitar 62994, Sultra', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(547, 346, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Andriani (Persero) Tbk', '(+62) 764 3717 0626', 'umay18@gmail.com', 14, 55, 74, 97, '0', 'Ds. Dipatiukur No. 917, Pariaman 47837, Kalbar', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(548, 305, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Wibowo', '0742 5425 002', 'hsalahudin@tarihoran.id', 6, 80, 80, 86, '0', 'Gg. Raden No. 650, Bekasi 96441, Sulbar', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(549, 475, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Handayani Wijayanti Tbk', '(+62) 981 0490 569', 'agnes.hassanah@yahoo.co.id', 20, 25, 31, 19, '1', 'Psr. Rajiman No. 51, Bogor 98524, Sumut', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(550, 336, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Palastri', '(+62) 583 9731 040', 'pertiwi.safina@yahoo.com', 23, 28, 44, 12, '1', 'Psr. Rumah Sakit No. 577, Bengkulu 74063, Maluku', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(551, 420, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Haryanto Hardiansyah (Persero) Tbk', '(+62) 284 1477 779', 'bella.sirait@kurniawan.sch.id', 29, 89, 23, 23, '0', 'Ds. Jamika No. 538, Tomohon 42879, Sumbar', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(552, 245, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Pertiwi', '0429 9786 108', 'csaragih@hidayanto.info', 18, 91, 84, 11, '1', 'Psr. Otista No. 299, Sukabumi 90635, Kalbar', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(553, 337, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Pradana', '(+62) 242 4915 3982', 'faizah03@anggraini.my.id', 24, 81, 73, 10, '1', 'Jr. Pasirkoja No. 698, Palembang 67265, Riau', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(554, 308, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Puspasari', '0816 4310 498', 'laila91@yahoo.co.id', 26, 64, 80, 66, '1', 'Gg. Bank Dagang Negara No. 288, Depok 68888, Maluku', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(555, 458, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Yulianti', '020 8295 043', 'usamah.uchita@kusumo.ac.id', 30, 45, 57, 22, '1', 'Ki. Bahagia  No. 493, Solok 90697, Kalteng', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(556, 503, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Hutagalung Tbk', '0556 8004 7335', 'pangestu.michelle@gmail.co.id', 9, 12, 55, 70, '1', 'Ds. Bakau Griya Utama No. 795, Tanjung Pinang 38143, Kalteng', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(557, 125, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Permadi', '0753 1253 4727', 'anggraini.gawati@yahoo.co.id', 20, 66, 18, 28, '0', 'Ds. Madrasah No. 94, Tomohon 55309, Riau', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(558, 6, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Sinaga (Persero) Tbk', '0878 6935 355', 'zhidayanto@pertiwi.biz.id', 20, 76, 15, 23, '0', 'Ki. Moch. Yamin No. 688, Sabang 19861, Riau', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(559, 152, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Mayasari', '(+62) 640 5312 682', 'sabrina24@gmail.co.id', 6, 7, 83, 27, '0', 'Dk. Kartini No. 636, Tasikmalaya 18610, Kaltara', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(560, 291, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Rajasa Tbk', '0971 4204 234', 'puspita.arta@najmudin.info', 9, 82, 97, 68, '1', 'Dk. Reksoninten No. 345, Binjai 16494, Pabar', '1106', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(561, 120, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Gunawan (Persero) Tbk', '0972 4906 0748', 'laksmiwati.yuni@yolanda.tv', 16, 18, 10, 54, '1', 'Kpg. Ikan No. 680, Medan 83078, Kalteng', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(562, 132, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Rajata Tbk', '(+62) 448 4313 591', 'irfan.mansur@gmail.co.id', 9, 62, 6, 49, '0', 'Ds. Nangka No. 490, Pangkal Pinang 37815, Kaltara', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(563, 476, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Mahendra Wahyuni', '0804 7180 807', 'laila87@gmail.co.id', 22, 79, 53, 61, '1', 'Ki. Agus Salim No. 496, Padangsidempuan 31273, DIY', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(564, 447, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Habibi Saefullah Tbk', '(+62) 930 3502 603', 'jefri84@suartini.id', 2, 28, 42, 46, '0', 'Psr. Baja Raya No. 7, Bima 78233, Jabar', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(565, 195, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Budiman Tbk', '029 0823 669', 'drahimah@gmail.co.id', 20, 68, 44, 27, '0', 'Gg. Thamrin No. 961, Banjarmasin 26149, NTT', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(566, 249, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Melani', '(+62) 876 9230 503', 'bsaragih@yahoo.co.id', 12, 87, 90, 38, '0', 'Psr. Gedebage Selatan No. 157, Bogor 33682, Maluku', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(567, 210, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Wibisono Rahayu', '021 2347 9565', 'yulianti.maida@yahoo.com', 25, 3, 62, 88, '0', 'Jln. Raden Saleh No. 961, Semarang 73679, Aceh', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(568, 98, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Sihotang', '(+62) 898 5176 448', 'rahman.yolanda@gmail.com', 24, 66, 40, 68, '0', 'Dk. Bakaru No. 643, Banjarbaru 50561, Jateng', '1110', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(569, 93, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Permadi Tbk', '(+62) 982 2359 234', 'yessi.mayasari@yuliarti.go.id', 11, 7, 98, 41, '1', 'Psr. Sudiarto No. 618, Palembang 27428, Bengkulu', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(570, 315, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Prabowo Wulandari', '0890 039 331', 'wasita.silvia@gmail.co.id', 3, 73, 92, 82, '0', 'Kpg. Supomo No. 60, Solok 66995, Sulteng', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(571, 413, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Wacana Wacana', '(+62) 890 6000 2346', 'wulandari.warsita@rajasa.desa.id', 31, 85, 9, 87, '0', 'Psr. Teuku Umar No. 21, Dumai 35187, Kepri', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(572, 387, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Nugroho Wacana Tbk', '0653 7457 7671', 'kezia.maryati@yahoo.co.id', 27, 60, 85, 11, '1', 'Gg. Bacang No. 704, Padangsidempuan 98070, Sumut', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(573, 336, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Pertiwi Haryanti Tbk', '(+62) 957 4143 301', 'maryadi.daru@yahoo.com', 22, 76, 45, 28, '0', 'Dk. Samanhudi No. 54, Metro 39855, Kepri', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(574, 214, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Waskita', '(+62) 889 400 043', 'gina24@mayasari.in', 13, 35, 96, 29, '1', 'Gg. Kyai Gede No. 907, Gunungsitoli 13425, Kaltara', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(575, 446, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Lestari Yuniar Tbk', '(+62) 978 1536 729', 'cakrajiya11@rajasa.sch.id', 17, 56, 95, 51, '1', 'Kpg. Bhayangkara No. 629, Bandar Lampung 57631, Jabar', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(576, 300, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Pradipta', '0343 7831 5083', 'yuniar.calista@dabukke.or.id', 31, 55, 76, 100, '0', 'Jr. R.E. Martadinata No. 76, Padangsidempuan 97173, Papua', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(577, 415, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Susanti Wijaya', '(+62) 352 0312 4470', 'mutami@iswahyudi.net', 21, 88, 9, 10, '0', 'Gg. Juanda No. 308, Sabang 38506, Sulsel', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(578, 217, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Permadi (Persero) Tbk', '(+62) 939 4462 311', 'mahmud.mustofa@gmail.co.id', 7, 14, 4, 22, '1', 'Ds. Kyai Gede No. 934, Magelang 53545, Maluku', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(579, 184, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Marbun Nainggolan Tbk', '(+62) 395 0789 5495', 'jinawi74@maryati.web.id', 18, 5, 30, 38, '0', 'Jln. Abdullah No. 270, Prabumulih 96844, Sultra', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(580, 380, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Laksita Hakim', '(+62) 964 1009 870', 'michelle53@gmail.co.id', 9, 3, 41, 4, '1', 'Psr. Tambun No. 597, Palopo 37574, Maluku', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(581, 15, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Astuti', '(+62) 263 7457 9410', 'vanya.jailani@maryadi.biz.id', 25, 24, 96, 89, '0', 'Gg. Orang No. 789, Balikpapan 23661, DKI', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(582, 90, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Wijayanti', '(+62) 20 5702 588', 'diana46@yahoo.com', 31, 62, 85, 81, '1', 'Kpg. Siliwangi No. 278, Bandung 34187, Kalteng', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(583, 159, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Rahimah Mangunsong (Persero) Tbk', '0719 7420 767', 'kemal.gunarto@yahoo.com', 30, 93, 47, 67, '1', 'Psr. Lembong No. 973, Bekasi 91577, Sumbar', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(584, 88, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Puspita', '0254 2086 2527', 'suryatmi.devi@gmail.co.id', 8, 88, 13, 50, '0', 'Jr. Pelajar Pejuang 45 No. 551, Medan 10485, Gorontalo', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(585, 190, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Haryanto Aryani', '(+62) 672 7032 422', 'raryani@yahoo.com', 10, 10, 16, 79, '0', 'Psr. Warga No. 339, Administrasi Jakarta Timur 24770, Bengkulu', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(586, 202, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Wijaya Lailasari', '(+62) 844 115 473', 'artanto14@yahoo.com', 27, 68, 15, 19, '0', 'Psr. Rajawali Barat No. 796, Pariaman 36276, Aceh', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(587, 422, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Halim (Persero) Tbk', '(+62) 762 0322 793', 'ymardhiyah@yahoo.co.id', 5, 1, 43, 2, '0', 'Jr. Teuku Umar No. 98, Tarakan 81290, Kaltim', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(588, 396, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Nasyidah (Persero) Tbk', '0303 3504 8104', 'wahyuni.rachel@setiawan.co.id', 20, 68, 44, 77, '1', 'Kpg. Ronggowarsito No. 675, Palembang 66080, Kalteng', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(590, 246, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Narpati Widiastuti Tbk', '0450 2659 267', 'tugiman.wastuti@mansur.asia', 30, 67, 25, 5, '1', 'Gg. Cihampelas No. 363, Administrasi Jakarta Utara 14428, NTB', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(591, 222, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Setiawan Wijayanti Tbk', '(+62) 578 4664 001', 'joko10@gmail.com', 21, 38, 23, 15, '0', 'Kpg. Ters. Jakarta No. 584, Tidore Kepulauan 62721, Kalteng', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(592, 498, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Wacana Mardhiyah', '0819 4475 466', 'fathonah42@hidayat.biz.id', 10, 22, 95, 81, '1', 'Dk. Baranang Siang Indah No. 904, Blitar 16062, Sulbar', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(593, 381, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Zulaika Tbk', '(+62) 784 7325 7742', 'wacana.oskar@mayasari.co.id', 7, 95, 28, 46, '0', 'Gg. Banda No. 397, Kotamobagu 94535, NTT', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(594, 61, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Sudiati Hidayanto Tbk', '(+62) 673 5473 374', 'wpradana@kusmawati.org', 29, 24, 20, 57, '0', 'Jr. Ters. Buah Batu No. 609, Bukittinggi 84203, Sulbar', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(595, 59, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Yuniar Hassanah', '(+62) 939 3394 047', 'puspasari.salsabila@waluyo.co', 14, 30, 61, 62, '1', 'Jln. Setiabudhi No. 540, Bima 97691, Malut', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(596, 473, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Sihombing Tbk', '0292 8547 8435', 'claksmiwati@simanjuntak.biz.id', 12, 77, 85, 14, '0', 'Jr. Suharso No. 839, Bekasi 34427, Sulsel', '1110', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(597, 262, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Lailasari', '(+62) 739 7182 5130', 'ekuswandari@yahoo.com', 3, 21, 24, 57, '1', 'Psr. Supomo No. 283, Pekalongan 99764, Riau', '1106', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(598, 474, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Susanti', '0417 7473 156', 'yolanda.mulya@pradipta.org', 8, 37, 60, 9, '1', 'Gg. Sam Ratulangi No. 657, Manado 78779, Malut', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(599, 47, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Damanik Hutagalung (Persero) Tbk', '0670 4760 921', 'ismail.hastuti@yahoo.com', 23, 85, 21, 26, '1', 'Ds. Basmol Raya No. 410, Surakarta 35461, Kaltim', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(600, 159, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Budiman Sudiati', '029 8592 9653', 'haryanti.ami@yahoo.com', 20, 39, 15, 85, '0', 'Jln. Mahakam No. 903, Tegal 15411, Sulut', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(601, 486, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Suartini (Persero) Tbk', '0293 8598 2635', 'nfirgantoro@iswahyudi.web.id', 31, 3, 88, 87, '1', 'Jr. Imam No. 295, Pangkal Pinang 47372, Pabar', '1110', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(602, 288, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Utama Prasasta (Persero) Tbk', '(+62) 938 7830 326', 'kasusra18@maryati.id', 16, 11, 87, 3, '0', 'Jr. Sampangan No. 96, Bandar Lampung 99090, Sulut', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(603, 305, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Siregar (Persero) Tbk', '0811 431 952', 'sadina65@mayasari.co', 8, 9, 37, 25, '1', 'Kpg. Jambu No. 584, Tegal 18329, Kaltara', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(604, 445, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Oktaviani Tbk', '(+62) 894 1356 051', 'mahmud.nashiruddin@gmail.co.id', 32, 76, 59, 82, '1', 'Kpg. Umalas No. 412, Administrasi Jakarta Timur 33504, Sulbar', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(605, 113, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Mayasari', '023 7610 8992', 'swasita@mayasari.com', 33, 75, 97, 74, '0', 'Ki. M.T. Haryono No. 241, Cirebon 80312, Sulteng', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(606, 443, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Pranowo Tampubolon', '0962 2515 491', 'awaluyo@usada.info', 12, 49, 99, 66, '1', 'Ds. Dipenogoro No. 80, Tasikmalaya 49584, Sultra', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(607, 165, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Yolanda (Persero) Tbk', '0939 0722 6819', 'tpradana@gmail.co.id', 6, 46, 78, 31, '1', 'Dk. Bahagia  No. 352, Balikpapan 94430, Kalteng', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(608, 500, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Astuti', '(+62) 938 4984 9724', 'jmulyani@prabowo.sch.id', 17, 16, 49, 56, '1', 'Ki. Moch. Yamin No. 507, Kupang 73947, Jambi', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(609, 283, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Ardianto', '(+62) 758 3843 101', 'irfan54@gmail.co.id', 5, 35, 46, 52, '0', 'Ds. Abdul No. 766, Palu 32434, Maluku', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(610, 352, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Aryani Haryanto', '0499 7615 147', 'rahayu.novi@dabukke.in', 18, 12, 51, 2, '0', 'Dk. Bazuka Raya No. 665, Kendari 65523, Sumbar', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(611, 287, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Pradipta (Persero) Tbk', '0831 9972 2101', 'tpalastri@wahyudin.tv', 20, 21, 91, 19, '0', 'Gg. Basudewo No. 821, Padangsidempuan 17780, Kalbar', '1106', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(612, 450, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Wastuti Saefullah Tbk', '0350 7709 5446', 'mila62@prasetya.my.id', 18, 15, 42, 67, '1', 'Ds. Tambak No. 181, Jayapura 72366, DKI', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(613, 412, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Sinaga', '0850 721 875', 'luthfi.rajasa@rahayu.biz', 17, 69, 58, 100, '0', 'Kpg. Achmad Yani No. 848, Bima 23522, Sumsel', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(614, 363, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Pratama', '0675 3008 3417', 'mhartati@yahoo.com', 22, 6, 99, 4, '0', 'Ds. Pelajar Pejuang 45 No. 234, Padang 69917, Bengkulu', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(615, 406, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Hartati Situmorang (Persero) Tbk', '0721 4706 0451', 'ydongoran@yahoo.com', 20, 100, 96, 59, '0', 'Ki. Peta No. 419, Mataram 77245, Gorontalo', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(616, 452, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Yolanda Ardianto', '(+62) 862 4081 611', 'gsinaga@yahoo.co.id', 27, 9, 40, 17, '1', 'Ki. Lada No. 179, Balikpapan 47227, Papua', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(617, 418, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Habibi Siregar', '0358 5197 3945', 'anggraini.enteng@yahoo.com', 28, 78, 65, 20, '0', 'Gg. S. Parman No. 75, Prabumulih 16520, Bengkulu', '1106', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(618, 189, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Purnawati', '(+62) 834 2054 1149', 'habibi.cahyo@zulaika.my.id', 12, 30, 34, 46, '0', 'Psr. Nangka No. 79, Palembang 89411, Bali', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(619, 417, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Suryono Tbk', '0677 2616 4417', 'janet78@aryani.or.id', 4, 39, 66, 20, '1', 'Ki. Otto No. 739, Palembang 87004, Pabar', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(620, 471, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Permata Usamah', '0429 7572 3743', 'najmudin.kayun@gmail.com', 23, 56, 51, 41, '0', 'Dk. Samanhudi No. 128, Administrasi Jakarta Utara 99287, Sumbar', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(621, 391, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Namaga Narpati Tbk', '0535 8375 9992', 'usman.megantara@gmail.com', 25, 50, 87, 37, '1', 'Ki. Zamrud No. 464, Tanjung Pinang 42800, Jabar', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(622, 112, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Aryani (Persero) Tbk', '(+62) 718 0309 0013', 'fmaryati@mulyani.web.id', 24, 14, 46, 30, '0', 'Jln. Ekonomi No. 6, Prabumulih 49344, Kepri', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(623, 144, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Hasanah', '0210 1579 7701', 'darmaji36@dongoran.org', 8, 1, 68, 79, '1', 'Dk. Ekonomi No. 336, Jambi 15794, Aceh', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(624, 429, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Yuniar Rajata', '0747 3123 5248', 'tari.kuswoyo@marpaung.tv', 12, 45, 20, 29, '0', 'Jln. Baik No. 76, Batam 19621, Kalsel', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(625, 56, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Rahimah', '(+62) 522 0272 1811', 'eli.megantara@gmail.co.id', 19, 81, 28, 39, '1', 'Psr. Dahlia No. 375, Banjarmasin 23113, Banten', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(626, 335, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Safitri Santoso (Persero) Tbk', '0674 4167 4392', 'dian.widiastuti@gmail.com', 23, 90, 13, 11, '0', 'Psr. Abdul. Muis No. 473, Lhokseumawe 65730, Jabar', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(627, 251, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Marpaung Rahimah', '(+62) 25 0451 156', 'candra.jailani@gmail.com', 9, 41, 22, 5, '1', 'Kpg. Umalas No. 719, Dumai 78324, Sultra', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(628, 62, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Halimah Tbk', '(+62) 845 5230 2419', 'elvina.dabukke@pratama.info', 9, 87, 76, 54, '1', 'Gg. Gedebage Selatan No. 13, Batam 64813, Kaltim', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(629, 238, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Halimah', '0379 0098 9646', 'lidya.farida@gmail.com', 15, 18, 90, 25, '0', 'Kpg. Lada No. 794, Tangerang Selatan 38588, NTB', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(630, 420, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Riyanti Mandasari', '0352 3444 4620', 'talia.zulaika@yahoo.co.id', 1, 18, 88, 82, '0', 'Psr. Asia Afrika No. 850, Cimahi 87543, Riau', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(631, 415, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Prasetyo', '0271 5874 628', 'anita97@uwais.my.id', 4, 55, 91, 38, '1', 'Jr. Orang No. 721, Padang 91866, Kalsel', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(632, 49, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Natsir', '0884 8137 129', 'rina78@sitorus.ac.id', 11, 12, 64, 45, '1', 'Ki. Sunaryo No. 198, Palangka Raya 99533, Sulsel', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(633, 40, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Hidayanto Kurniawan', '0905 0524 524', 'sari46@maryati.biz', 21, 57, 17, 57, '1', 'Jln. Ters. Kiaracondong No. 990, Administrasi Jakarta Barat 12933, Malut', '1106', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(634, 98, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Yolanda Farida', '(+62) 471 2896 9302', 'adiarja34@yahoo.com', 3, 21, 68, 91, '0', 'Jln. Bara Tambar No. 278, Administrasi Jakarta Pusat 14472, Jabar', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(635, 270, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Waluyo Nasyiah', '(+62) 793 2772 5493', 'permata.ganda@handayani.mil.id', 3, 83, 26, 48, '0', 'Ki. Setiabudhi No. 284, Bandar Lampung 66910, Lampung', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(636, 401, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Sirait', '0933 5406 555', 'nashiruddin.ayu@yahoo.co.id', 10, 13, 80, 31, '0', 'Dk. Reksoninten No. 679, Tanjungbalai 39962, Kalbar', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(637, 466, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Halim Susanti', '(+62) 906 5148 359', 'hilda.nuraini@najmudin.go.id', 19, 10, 21, 12, '0', 'Jr. Baha No. 510, Sukabumi 21860, Riau', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(638, 350, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Rahayu Santoso', '0520 6690 447', 'bahuwarna.farida@yahoo.com', 10, 86, 94, 59, '0', 'Kpg. Bagis Utama No. 677, Administrasi Jakarta Barat 66459, Kaltara', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(639, 323, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Yulianti Firgantoro Tbk', '(+62) 24 4525 6299', 'sihombing.paris@gmail.co.id', 6, 27, 48, 34, '0', 'Ds. Yos Sudarso No. 494, Sabang 14027, Aceh', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(640, 176, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Padmasari Tbk', '(+62) 27 1440 740', 'xnajmudin@yahoo.com', 17, 9, 66, 33, '1', 'Dk. Laswi No. 539, Prabumulih 63382, Aceh', '1110', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(641, 35, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Wastuti Hariyah Tbk', '0798 4079 567', 'kezia.wastuti@samosir.sch.id', 20, 29, 77, 67, '1', 'Jln. Sutan Syahrir No. 803, Denpasar 92385, Papua', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(642, 120, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Riyanti Santoso Tbk', '0779 0791 023', 'ellis47@putra.name', 29, 11, 8, 37, '0', 'Ds. Baiduri No. 339, Banda Aceh 61652, DIY', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(643, 120, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Rajasa', '0477 1355 909', 'nnasyiah@pudjiastuti.my.id', 24, 27, 58, 8, '0', 'Gg. Bambu No. 469, Yogyakarta 65426, Sulteng', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(644, 423, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Jailani (Persero) Tbk', '(+62) 259 3743 2461', 'purwanti.yuni@yahoo.co.id', 7, 39, 13, 29, '0', 'Gg. Padma No. 795, Bau-Bau 16892, NTT', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(645, 199, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Suwarno Tbk', '0340 2496 391', 'hastuti.satya@yahoo.co.id', 11, 35, 91, 5, '0', 'Jr. Juanda No. 80, Samarinda 39171, Pabar', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(646, 320, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Andriani Tamba (Persero) Tbk', '(+62) 215 2213 612', 'hasanah.dalima@gmail.com', 7, 55, 81, 68, '0', 'Jr. Jamika No. 634, Lhokseumawe 30094, Kepri', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(647, 503, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Mangunsong Saragih Tbk', '0997 6336 855', 'msimbolon@gmail.co.id', 14, 94, 37, 54, '1', 'Jln. Badak No. 964, Banjar 96488, Jambi', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(648, 389, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Puspita Hartati', '0200 5047 0467', 'zpadmasari@yuniar.biz', 26, 82, 72, 46, '1', 'Ki. Lumban Tobing No. 188, Salatiga 73341, Sumsel', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(649, 267, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Suryatmi', '(+62) 710 3475 4260', 'nurdiyanti.kasiyah@gmail.co.id', 16, 39, 38, 34, '0', 'Dk. Casablanca No. 26, Langsa 67510, Maluku', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(650, 157, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Winarno', '0801 562 489', 'luhung.lailasari@sitompul.biz', 2, 36, 9, 23, '1', 'Gg. Yosodipuro No. 290, Payakumbuh 38589, Kaltara', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(651, 90, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Laksita (Persero) Tbk', '0938 4263 7116', 'opermata@dongoran.biz.id', 19, 42, 79, 88, '1', 'Kpg. Baan No. 249, Bitung 31101, Kaltim', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(652, 134, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Winarsih Yolanda', '0647 5616 460', 'jmegantara@yahoo.co.id', 16, 65, 64, 84, '0', 'Ds. Abang No. 978, Administrasi Jakarta Selatan 89185, NTB', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(653, 58, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Marpaung (Persero) Tbk', '0461 1768 726', 'kusumo.widya@yahoo.com', 29, 44, 12, 86, '1', 'Jr. Laksamana No. 198, Bitung 49928, Sumbar', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(654, 290, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Aryani', '0758 4330 525', 'siska56@halimah.tv', 12, 45, 12, 81, '1', 'Gg. Padang No. 976, Ternate 34796, Kaltara', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(655, 440, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Haryanti Pudjiastuti (Persero) Tbk', '(+62) 895 8840 655', 'kamidin.melani@nasyidah.sch.id', 12, 82, 1, 55, '0', 'Psr. Rumah Sakit No. 617, Binjai 27239, NTB', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(656, 233, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Pradana Yulianti Tbk', '(+62) 21 7986 128', 'nalar62@wahyuni.biz', 15, 5, 66, 87, '1', 'Dk. Gambang No. 820, Pekalongan 86768, Riau', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(657, 129, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Widiastuti Tbk', '(+62) 994 7377 273', 'nyana.riyanti@yahoo.co.id', 2, 81, 31, 72, '1', 'Dk. Basuki Rahmat  No. 393, Tebing Tinggi 54432, Malut', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(658, 164, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Rahimah', '0982 9082 6298', 'ida96@fujiati.asia', 16, 35, 97, 59, '0', 'Ki. Basmol Raya No. 435, Pangkal Pinang 36397, Sumut', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(659, 381, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Utami Tbk', '0351 2522 5952', 'msuryatmi@gmail.co.id', 5, 79, 40, 37, '1', 'Dk. Jakarta No. 676, Pangkal Pinang 12805, Sulut', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(660, 218, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Prayoga Prasasta Tbk', '(+62) 898 9146 143', 'juli80@wibowo.asia', 20, 59, 60, 77, '1', 'Ki. Dipenogoro No. 396, Mataram 54382, Kepri', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(661, 41, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Wulandari', '(+62) 583 6573 926', 'rachel35@gmail.com', 18, 72, 60, 91, '1', 'Dk. Babadak No. 504, Langsa 82163, DIY', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(662, 184, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Prasasta Aryani (Persero) Tbk', '0535 5303 027', 'lestari.harja@yahoo.co.id', 30, 57, 68, 83, '1', 'Psr. Flora No. 124, Bontang 21253, Sulteng', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(663, 475, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Permata Tbk', '(+62) 405 1661 164', 'gada72@yahoo.co.id', 13, 26, 9, 48, '0', 'Jln. Siliwangi No. 143, Cilegon 45783, Jateng', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(664, 429, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Suryatmi', '0306 0320 540', 'hardiansyah.zaenab@yahoo.co.id', 31, 14, 25, 1, '1', 'Ki. Arifin No. 183, Madiun 60930, NTT', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(665, 110, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Rahayu Prastuti (Persero) Tbk', '0959 6381 484', 'teddy24@yahoo.co.id', 32, 23, 77, 59, '0', 'Kpg. Kyai Mojo No. 28, Surabaya 33403, NTB', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(666, 95, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Siregar Napitupulu', '(+62) 833 423 120', 'paris35@irawan.biz.id', 6, 80, 80, 10, '1', 'Ki. Yosodipuro No. 727, Ambon 94375, Sulsel', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(667, 129, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Oktaviani Irawan', '(+62) 990 0762 7794', 'pratiwi.ghani@gmail.com', 29, 97, 68, 66, '0', 'Kpg. Pasir Koja No. 681, Pagar Alam 75196, Jateng', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(668, 402, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Uwais', '(+62) 862 2314 551', 'devi05@gmail.co.id', 13, 89, 79, 93, '1', 'Jln. Bahagia  No. 821, Cirebon 82610, Babel', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(669, 207, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Napitupulu Sitompul', '(+62) 710 1070 1880', 'samosir.gamanto@gmail.com', 23, 100, 72, 82, '0', 'Psr. Moch. Yamin No. 428, Palopo 48603, Sulsel', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(670, 186, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Halimah Firgantoro Tbk', '0626 4469 530', 'zulaikha68@suryatmi.name', 21, 44, 42, 11, '0', 'Kpg. Fajar No. 381, Ternate 52725, Riau', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(671, 179, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Simbolon Mardhiyah Tbk', '(+62) 728 7785 970', 'among11@yolanda.or.id', 9, 62, 50, 89, '0', 'Gg. Moch. Toha No. 917, Kediri 88972, Riau', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(672, 482, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Hardiansyah (Persero) Tbk', '0834 4493 3816', 'kamal.mandasari@yahoo.com', 24, 17, 27, 31, '0', 'Jr. Baing No. 260, Surabaya 99254, Papua', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(673, 150, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Wulandari Hardiansyah Tbk', '(+62) 641 1038 934', 'natalia.winarno@yahoo.co.id', 25, 85, 74, 2, '0', 'Ki. Sam Ratulangi No. 193, Banjar 42529, Kepri', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(674, 83, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Kusmawati Nasyidah Tbk', '0857 3496 6092', 'dacin91@gmail.co.id', 22, 36, 87, 62, '0', 'Jln. Babadan No. 563, Bandung 67196, Banten', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(675, 35, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Saptono Tbk', '(+62) 520 3570 5042', 'mustofa04@gmail.co.id', 25, 53, 22, 44, '1', 'Ki. Banda No. 501, Kotamobagu 33002, Papua', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(676, 207, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Wijayanti Susanti Tbk', '(+62) 906 0632 177', 'prasasta.rahmat@utama.net', 28, 22, 65, 83, '0', 'Jr. Basoka Raya No. 733, Surabaya 99565, NTT', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(677, 325, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Yuniar Yolanda', '021 9578 7262', 'titi.wasita@gmail.co.id', 20, 22, 63, 56, '0', 'Kpg. Sutoyo No. 307, Tual 22979, Riau', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(678, 256, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Laksmiwati Usada', '0583 7653 535', 'koko.winarno@yahoo.com', 33, 9, 71, 74, '1', 'Dk. Gambang No. 490, Subulussalam 52591, Papua', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(679, 448, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Anggraini', '(+62) 218 7753 881', 'wastuti.jono@hidayat.tv', 30, 98, 76, 63, '1', 'Ds. Wahidin Sudirohusodo No. 594, Batu 59435, Sulut', '1106', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(680, 223, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Prasetyo (Persero) Tbk', '0701 4373 2942', 'waskita.silvia@yahoo.co.id', 32, 72, 15, 22, '1', 'Gg. Cikutra Timur No. 848, Surabaya 88246, Malut', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(681, 484, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Maryati Saputra (Persero) Tbk', '(+62) 707 1164 0283', 'januar.winda@yahoo.co.id', 31, 93, 29, 54, '0', 'Jr. Bayan No. 474, Cirebon 68224, Kalteng', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(682, 64, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Nurdiyanti', '(+62) 996 9319 985', 'rahimah.chelsea@kusmawati.or.id', 31, 78, 44, 9, '0', 'Ds. Sutoyo No. 978, Manado 87338, Sulbar', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(683, 265, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Yulianti Suryono Tbk', '(+62) 974 9806 777', 'qrahayu@gmail.co.id', 21, 21, 78, 47, '0', 'Psr. Bakin No. 189, Ternate 32154, Riau', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(684, 153, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Dongoran Rajasa', '0494 2545 3514', 'qhardiansyah@wulandari.in', 2, 52, 13, 24, '1', 'Psr. S. Parman No. 973, Pontianak 32455, Sumut', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39');
INSERT INTO `vendors` (`id`, `user_id`, `photo_vendor`, `nama_vendor`, `kontak`, `email`, `provinsi_id`, `kabupaten_id`, `kecamatan_id`, `kelurahan_id`, `status`, `alamat_lengkap`, `lokasi`, `ktp`, `created_at`, `updated_at`) VALUES
(685, 331, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Nasyidah (Persero) Tbk', '0915 2665 8285', 'fathonah.namaga@yahoo.co.id', 4, 1, 55, 100, '1', 'Ds. Baan No. 628, Malang 27261, Gorontalo', '1106', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(686, 309, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Sinaga Namaga (Persero) Tbk', '0259 7053 166', 'nababan.praba@yahoo.co.id', 33, 20, 91, 31, '0', 'Dk. B.Agam Dlm No. 931, Salatiga 12209, Kaltara', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(687, 369, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Susanti Simanjuntak', '0856 3957 116', 'eka48@hutagalung.net', 11, 14, 39, 80, '0', 'Ds. M.T. Haryono No. 309, Pematangsiantar 10096, Gorontalo', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(688, 488, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Lailasari', '0829 5816 4337', 'ghassanah@saefullah.id', 6, 2, 33, 65, '0', 'Ds. Baabur Royan No. 471, Solok 52120, Kepri', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(689, 445, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Yuliarti', '0356 9479 1282', 'nmaheswara@yahoo.com', 7, 63, 19, 91, '0', 'Psr. Pelajar Pejuang 45 No. 37, Bandung 49978, Kalsel', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(690, 273, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Melani (Persero) Tbk', '(+62) 27 9294 9716', 'tiara.hutagalung@gmail.com', 9, 33, 82, 5, '1', 'Dk. Cikapayang No. 85, Palembang 66373, DKI', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(691, 137, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Firmansyah Riyanti', '0220 9706 4539', 'pusamah@yahoo.co.id', 14, 61, 32, 39, '0', 'Ds. Batako No. 301, Pariaman 23106, Riau', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(692, 421, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Hutasoit', '0798 1305 0012', 'nsitorus@utama.com', 20, 61, 61, 87, '1', 'Dk. Bah Jaya No. 580, Subulussalam 23828, NTT', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(693, 78, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Suryatmi Mardhiyah (Persero) Tbk', '(+62) 974 5574 407', 'salimah.habibi@gmail.com', 7, 2, 97, 90, '0', 'Gg. Gajah Mada No. 20, Tanjung Pinang 99560, Aceh', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(694, 232, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Andriani Yuniar', '0789 8609 057', 'karta19@narpati.asia', 28, 72, 81, 84, '0', 'Dk. Panjaitan No. 682, Depok 33435, Jambi', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(695, 132, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Palastri Tbk', '(+62) 960 4774 4484', 'suryono.cinta@yahoo.com', 9, 50, 46, 69, '0', 'Ki. Zamrud No. 234, Lhokseumawe 64050, Jambi', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(696, 47, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Uyainah Pertiwi', '0781 9808 4367', 'edison.hidayat@santoso.my.id', 3, 37, 45, 38, '1', 'Ds. R.E. Martadinata No. 831, Jambi 16792, Sumsel', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(697, 27, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Nashiruddin Hastuti Tbk', '0952 2589 5737', 'maimunah01@yahoo.com', 18, 44, 58, 1, '1', 'Psr. Sadang Serang No. 510, Padangsidempuan 43540, Kalteng', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(698, 138, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Tarihoran (Persero) Tbk', '0805 040 308', 'hassanah.devi@yahoo.co.id', 20, 20, 40, 49, '1', 'Psr. Sudirman No. 15, Bandung 33679, NTB', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(699, 140, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Fujiati Tbk', '0881 439 846', 'jjanuar@mulyani.desa.id', 14, 44, 51, 97, '0', 'Kpg. Jayawijaya No. 300, Depok 14596, Bali', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(700, 470, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Prasetya Puspita Tbk', '0342 4107 6569', 'kasiyah.thamrin@gmail.com', 7, 31, 79, 7, '0', 'Kpg. Moch. Ramdan No. 787, Jayapura 11328, Papua', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(701, 34, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Prayoga Zulaika', '0673 6663 807', 'npurnawati@palastri.name', 19, 76, 62, 60, '1', 'Ki. Bak Mandi No. 632, Tidore Kepulauan 14081, Gorontalo', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(702, 406, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Wijayanti Pertiwi Tbk', '(+62) 867 912 921', 'maryadi02@irawan.org', 26, 61, 78, 29, '0', 'Kpg. Sukajadi No. 674, Bima 49365, Kalteng', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(703, 198, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Pratama Rahmawati', '(+62) 203 6463 6500', 'ardianto.cakrabuana@yahoo.com', 14, 6, 62, 47, '0', 'Ds. Pelajar Pejuang 45 No. 632, Pematangsiantar 51738, Sumbar', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(704, 277, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Safitri (Persero) Tbk', '0953 2156 131', 'zamira48@aryani.org', 15, 78, 68, 44, '0', 'Psr. Jend. A. Yani No. 60, Cirebon 40644, Bali', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(705, 17, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Usamah', '(+62) 660 4494 075', 'widya74@gmail.com', 9, 3, 51, 24, '1', 'Gg. S. Parman No. 34, Manado 15318, Kepri', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(706, 6, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Yulianti Yuniar', '(+62) 643 5418 500', 'fujiati.johan@gmail.com', 13, 69, 95, 55, '1', 'Gg. Batako No. 159, Tidore Kepulauan 22866, Kaltim', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(707, 427, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Kusmawati Mandala (Persero) Tbk', '0319 8826 7657', 'ella77@tarihoran.asia', 2, 98, 88, 18, '0', 'Gg. Banceng Pondok No. 817, Lhokseumawe 70489, DKI', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(708, 18, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Suryatmi Sihombing (Persero) Tbk', '0987 4646 3446', 'nababan.dinda@gmail.com', 7, 20, 55, 83, '0', 'Psr. Padang No. 655, Kendari 81572, Kaltara', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(709, 27, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Permata Riyanti', '0969 9234 4690', 'kusmawati.harjasa@anggraini.biz', 10, 88, 47, 100, '0', 'Jln. Padma No. 462, Sawahlunto 28963, Bengkulu', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(710, 334, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Hardiansyah', '(+62) 318 2690 103', 'vsitumorang@yahoo.com', 32, 85, 78, 15, '1', 'Gg. Bass No. 696, Palu 71046, Sultra', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(711, 168, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Permadi Sihombing', '0888 4453 291', 'yolanda.maya@yahoo.co.id', 17, 24, 36, 77, '0', 'Psr. Baabur Royan No. 982, Sungai Penuh 87235, Maluku', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(712, 333, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Pertiwi Tbk', '(+62) 556 6109 5853', 'msimbolon@yahoo.com', 13, 100, 97, 92, '1', 'Dk. Hang No. 554, Lubuklinggau 30923, Pabar', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(713, 365, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Firgantoro', '(+62) 288 1524 295', 'puput86@mardhiyah.ac.id', 5, 44, 55, 18, '0', 'Jr. Casablanca No. 481, Cimahi 67956, DIY', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(714, 369, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Rahayu Mandala (Persero) Tbk', '(+62) 619 8631 7512', 'asalahudin@handayani.mil.id', 27, 91, 53, 3, '1', 'Psr. Suryo Pranoto No. 943, Subulussalam 42067, Kalsel', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(715, 193, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Pratama Anggraini', '0918 4236 4422', 'szulaika@gmail.co.id', 16, 87, 31, 88, '1', 'Dk. Fajar No. 73, Pagar Alam 23766, Kaltara', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(716, 479, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Purwanti (Persero) Tbk', '(+62) 24 6105 232', 'caket.napitupulu@yahoo.co.id', 24, 88, 62, 44, '1', 'Jln. Baranangsiang No. 833, Binjai 46324, Jabar', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(717, 157, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Laksmiwati Agustina Tbk', '(+62) 709 2326 5033', 'yuliarti.maria@permata.co', 6, 27, 95, 82, '0', 'Jr. Asia Afrika No. 496, Bogor 95188, Kalsel', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(718, 53, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Astuti', '0825 777 946', 'hakim.kajen@gmail.com', 8, 93, 43, 65, '1', 'Kpg. Gatot Subroto No. 76, Solok 61405, Kaltim', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(719, 76, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Yulianti Hassanah Tbk', '0662 9418 394', 'puspasari.betania@gmail.com', 13, 90, 22, 99, '1', 'Ds. Kebangkitan Nasional No. 972, Bau-Bau 72233, Kalsel', '1110', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(720, 392, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Budiman Nurdiyanti Tbk', '0469 2701 2891', 'tarihoran.asman@situmorang.id', 4, 60, 59, 42, '0', 'Gg. Dahlia No. 178, Bengkulu 61722, Kalteng', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(721, 478, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Usamah', '0657 2201 157', 'asihombing@yahoo.co.id', 20, 17, 36, 91, '1', 'Jr. Wahid No. 919, Bontang 19558, Kalsel', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(722, 502, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Haryanto Wibisono', '(+62) 749 4103 202', 'betania86@palastri.com', 23, 52, 48, 76, '0', 'Psr. Banceng Pondok No. 294, Cilegon 32981, Bengkulu', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(723, 114, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Purnawati Latupono', '0914 9826 5297', 'gpurnawati@kuswoyo.id', 30, 55, 79, 55, '1', 'Psr. Kyai Gede No. 239, Padangsidempuan 69339, Sulut', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(724, 411, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Firmansyah Hutagalung', '0830 8051 795', 'salimah54@yahoo.com', 17, 61, 2, 54, '1', 'Psr. Baabur Royan No. 156, Blitar 78406, DKI', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(725, 475, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Sihombing Saptono', '0612 2483 9121', 'martani90@wibisono.in', 4, 70, 12, 30, '1', 'Jln. Rajawali Barat No. 807, Madiun 11692, Sumut', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(726, 277, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Pratama Siregar (Persero) Tbk', '0944 4146 1734', 'budiman.lili@pratiwi.desa.id', 14, 54, 99, 76, '0', 'Jr. Sukajadi No. 571, Batu 67374, Jatim', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(727, 99, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Mulyani', '(+62) 396 3866 9577', 'kardianto@gmail.co.id', 20, 63, 64, 54, '0', 'Psr. Kalimantan No. 309, Salatiga 93223, Sumut', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(728, 293, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Suwarno (Persero) Tbk', '(+62) 239 7076 826', 'siska66@siregar.ac.id', 32, 87, 76, 68, '0', 'Ds. Babadak No. 17, Sawahlunto 36288, Papua', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(729, 191, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Saragih (Persero) Tbk', '(+62) 967 5103 3094', 'sakti.namaga@lestari.net', 11, 55, 99, 83, '0', 'Kpg. Barat No. 499, Tegal 58046, Jabar', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(730, 364, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Gunarto Farida (Persero) Tbk', '(+62) 840 0384 9916', 'kawaya.permata@widiastuti.info', 21, 89, 67, 31, '0', 'Gg. Aceh No. 128, Jambi 31993, Bali', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(731, 377, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Mustofa Tbk', '(+62) 854 4901 418', 'danggraini@marpaung.net', 26, 52, 17, 29, '1', 'Jln. Gedebage Selatan No. 950, Administrasi Jakarta Pusat 57951, Bengkulu', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(732, 275, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Zulaika Tbk', '(+62) 21 6240 099', 'irsad58@gmail.com', 31, 45, 74, 33, '1', 'Dk. Honggowongso No. 430, Administrasi Jakarta Pusat 52516, Riau', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(733, 250, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Wibowo Laksmiwati', '0918 8996 837', 'dhastuti@gmail.co.id', 22, 97, 31, 4, '1', 'Kpg. Industri No. 325, Padangpanjang 74720, NTT', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(734, 163, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Fujiati Astuti (Persero) Tbk', '0540 3367 743', 'titi48@prasetya.ac.id', 12, 30, 26, 73, '1', 'Jln. Bakti No. 430, Singkawang 71802, NTT', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(735, 52, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Saptono Tbk', '0373 5181 9015', 'andriani.paramita@gmail.com', 29, 81, 64, 92, '0', 'Dk. Sam Ratulangi No. 214, Bau-Bau 44661, Sumbar', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(736, 18, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Mulyani Zulkarnain Tbk', '(+62) 601 0691 8445', 'iwahyuni@pratiwi.name', 24, 42, 73, 74, '0', 'Gg. Barat No. 548, Administrasi Jakarta Barat 81804, Jambi', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(737, 108, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Haryanti Pratiwi', '(+62) 914 6001 326', 'glestari@kusumo.go.id', 30, 23, 88, 74, '1', 'Kpg. Bank Dagang Negara No. 609, Ternate 25571, Jatim', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(738, 258, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Wijaya Purwanti (Persero) Tbk', '0953 5655 474', 'betania.halimah@gmail.co.id', 7, 18, 20, 71, '0', 'Kpg. Acordion No. 598, Banjar 69938, Kalsel', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(739, 176, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Maheswara (Persero) Tbk', '(+62) 517 2188 272', 'rini46@hassanah.desa.id', 10, 18, 52, 29, '1', 'Jr. Suprapto No. 121, Depok 22986, Jateng', '1110', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(740, 501, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Kusumo Yulianti Tbk', '0852 2506 817', 'tsitumorang@yahoo.com', 33, 4, 13, 45, '1', 'Psr. Dahlia No. 723, Tegal 39910, Pabar', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(741, 38, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Adriansyah', '(+62) 411 7397 152', 'hani.usamah@zulaika.sch.id', 6, 90, 78, 97, '0', 'Psr. Suharso No. 144, Bandung 88830, Jambi', '1110', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(742, 484, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Waluyo Maheswara Tbk', '(+62) 996 7912 282', 'tlestari@waskita.co', 9, 97, 45, 41, '1', 'Dk. Moch. Toha No. 238, Administrasi Jakarta Utara 34005, Banten', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(743, 55, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Maryati Tbk', '0454 2199 902', 'kuncara.maryadi@mayasari.ac.id', 7, 65, 92, 100, '0', 'Ki. Rumah Sakit No. 71, Makassar 44813, Bengkulu', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(744, 252, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Natsir Waluyo', '(+62) 810 815 834', 'narpati.kezia@gmail.co.id', 19, 35, 63, 95, '1', 'Psr. Katamso No. 43, Administrasi Jakarta Utara 42081, Sumbar', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(745, 200, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Jailani', '0375 5879 454', 'dewi82@gmail.co.id', 7, 55, 99, 99, '0', 'Ki. Yos Sudarso No. 466, Yogyakarta 85686, Sulsel', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(746, 7, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Mustofa Tbk', '(+62) 556 8056 8446', 'dhabibi@mayasari.mil.id', 9, 65, 61, 29, '0', 'Gg. Banceng Pondok No. 73, Kediri 18112, Kalsel', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(747, 377, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Andriani Zulkarnain (Persero) Tbk', '(+62) 20 2424 212', 'banara05@yahoo.co.id', 28, 29, 58, 36, '0', 'Psr. Padang No. 874, Tual 24027, Sumbar', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(748, 147, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Salahudin Hariyah', '(+62) 937 0931 1362', 'tira48@gmail.co.id', 18, 62, 81, 27, '0', 'Jln. Bambu No. 739, Palangka Raya 72689, Sulsel', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(749, 256, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Nasyidah Anggriawan', '(+62) 213 2732 138', 'narpati.praba@hastuti.web.id', 3, 71, 53, 60, '1', 'Ki. Bah Jaya No. 443, Tual 88128, Sulut', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(750, 270, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Nasyiah Tbk', '(+62) 786 8599 5086', 'ulva.rahmawati@gmail.co.id', 12, 61, 52, 83, '0', 'Ki. Villa No. 169, Dumai 41305, Aceh', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(751, 252, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Simanjuntak (Persero) Tbk', '(+62) 937 6897 011', 'banara85@megantara.tv', 5, 8, 33, 90, '1', 'Dk. Industri No. 454, Tegal 87337, Pabar', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(752, 13, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Simbolon (Persero) Tbk', '0342 7050 6171', 'tasdik28@gmail.co.id', 16, 90, 59, 74, '1', 'Ds. Banal No. 230, Pasuruan 23078, Bengkulu', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(753, 439, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Laksita', '(+62) 292 1530 845', 'irawan.shania@gmail.com', 11, 48, 16, 8, '0', 'Psr. Daan No. 463, Administrasi Jakarta Barat 86328, Malut', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(754, 201, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Gunawan Purwanti', '(+62) 731 1443 533', 'chelsea09@yahoo.co.id', 2, 10, 56, 13, '1', 'Jln. Agus Salim No. 686, Magelang 39896, Riau', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(755, 222, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Marpaung Tbk', '(+62) 306 3385 6195', 'fnamaga@yahoo.com', 13, 69, 99, 93, '1', 'Jr. R.E. Martadinata No. 104, Bukittinggi 79730, Kalbar', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(756, 456, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Iswahyudi', '(+62) 245 4146 6850', 'winda.rahimah@gmail.com', 30, 10, 25, 53, '0', 'Ds. Badak No. 464, Pekalongan 83776, Banten', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(757, 187, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Firmansyah Permata Tbk', '0772 2274 7686', 'radika27@wahyuni.name', 11, 11, 4, 71, '1', 'Ds. Suniaraja No. 235, Mataram 50259, Pabar', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(758, 300, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Prastuti Aryani', '(+62) 205 1912 4427', 'imelani@yahoo.co.id', 8, 19, 48, 2, '1', 'Jln. Wahid No. 706, Serang 10033, Babel', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(759, 130, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Tarihoran', '(+62) 701 0776 1181', 'pmarbun@gmail.com', 25, 34, 4, 84, '1', 'Ds. Babakan No. 881, Tebing Tinggi 50393, Bali', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(760, 493, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Pertiwi (Persero) Tbk', '0569 5354 4072', 'kamal41@marbun.biz', 21, 83, 54, 100, '1', 'Gg. Baya Kali Bungur No. 46, Tangerang Selatan 27513, Riau', '1110', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(761, 328, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Hutapea (Persero) Tbk', '0894 261 121', 'ana.halimah@yahoo.co.id', 9, 71, 25, 32, '0', 'Dk. Cokroaminoto No. 745, Manado 89181, DIY', '1106', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(762, 63, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Setiawan', '0802 3023 232', 'samosir.samsul@gmail.com', 8, 51, 59, 9, '0', 'Gg. Ciwastra No. 15, Serang 57213, Kalteng', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(763, 181, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Hutasoit Tbk', '0471 2260 072', 'putra.marsito@pratama.ac.id', 28, 85, 99, 45, '1', 'Ki. Bak Air No. 767, Kediri 84222, Kaltara', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(764, 361, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Maryadi Lestari', '0847 657 021', 'sari.widodo@tampubolon.my.id', 29, 80, 6, 80, '0', 'Jln. Gambang No. 655, Administrasi Jakarta Pusat 82127, Kepri', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(765, 136, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Sihotang (Persero) Tbk', '0268 8440 5360', 'kuswandari.ghani@winarsih.desa.id', 25, 99, 3, 1, '1', 'Jr. Baing No. 748, Mojokerto 12242, Sumbar', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(766, 116, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Rahimah Tbk', '0321 8407 961', 'lailasari.bambang@laksita.co.id', 1, 46, 95, 88, '0', 'Psr. Pahlawan No. 527, Gunungsitoli 92171, Sulut', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(767, 168, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Maryadi Oktaviani', '020 9434 0776', 'lailasari.samsul@yahoo.co.id', 10, 43, 57, 85, '0', 'Jln. Nanas No. 852, Madiun 67164, Sumut', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(768, 354, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Hariyah Tbk', '0752 1283 4088', 'wulandari.darmanto@yahoo.co.id', 10, 39, 36, 58, '1', 'Dk. K.H. Maskur No. 126, Bitung 81187, NTT', '1110', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(769, 130, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Pradipta', '0293 3488 9870', 'padmasari.diana@waluyo.net', 19, 20, 29, 27, '1', 'Dk. Tangkuban Perahu No. 934, Tual 59636, Kaltim', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(770, 185, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Wastuti Tbk', '(+62) 240 3462 245', 'hasan.permata@permadi.ac.id', 9, 33, 44, 16, '0', 'Dk. Haji No. 151, Mataram 91962, Kalbar', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(771, 242, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Saputra Mangunsong Tbk', '0215 5987 935', 'irawan.usyi@gmail.com', 18, 61, 94, 89, '0', 'Ds. Imam No. 105, Bima 51472, Riau', '1106', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(772, 156, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Padmasari', '0859 5124 0967', 'mrahayu@mahendra.my.id', 23, 100, 25, 24, '0', 'Ds. Achmad Yani No. 29, Madiun 59081, Bengkulu', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(773, 164, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Kuswandari Sudiati', '(+62) 634 7890 4048', 'jono51@yahoo.co.id', 10, 6, 75, 69, '0', 'Gg. Baranangsiang No. 980, Pasuruan 44581, Malut', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(774, 153, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Saptono (Persero) Tbk', '0208 9825 065', 'wardianto@yahoo.com', 25, 63, 100, 27, '0', 'Dk. Supomo No. 269, Padangpanjang 59101, Jabar', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(775, 494, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Rahimah Halimah Tbk', '(+62) 970 9183 593', 'hardiansyah.uchita@pudjiastuti.org', 19, 47, 1, 92, '0', 'Jln. Orang No. 575, Administrasi Jakarta Timur 43712, Sumut', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(776, 284, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Yulianti Mandasari Tbk', '(+62) 846 0672 953', 'muhammad.sihombing@uyainah.co.id', 20, 8, 31, 73, '1', 'Ds. Orang No. 445, Padangsidempuan 97253, Banten', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(777, 262, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Wastuti Napitupulu', '(+62) 222 5903 6255', 'ophelia06@permata.go.id', 18, 18, 87, 57, '1', 'Ds. Ters. Jakarta No. 635, Salatiga 82357, Pabar', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(778, 183, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Mulyani Tbk', '0753 5064 2599', 'kagustina@latupono.biz.id', 25, 33, 99, 59, '0', 'Jr. Gardujati No. 192, Sungai Penuh 17792, Sulsel', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(779, 24, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Hastuti (Persero) Tbk', '(+62) 941 9843 7122', 'megantara.rusman@yahoo.com', 30, 15, 2, 25, '1', 'Ki. Nakula No. 184, Malang 64090, Bengkulu', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(780, 385, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Santoso Haryanto', '(+62) 860 655 607', 'oskar.waluyo@purwanti.asia', 13, 14, 78, 92, '1', 'Ds. Basuki No. 572, Kendari 80480, Kaltara', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(781, 400, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Astuti (Persero) Tbk', '0367 7425 601', 'mandasari.teddy@halimah.net', 11, 18, 15, 44, '0', 'Jr. Bakau Griya Utama No. 844, Administrasi Jakarta Utara 30281, NTT', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(782, 474, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Waskita', '022 3164 995', 'haryanti.hairyanto@hutapea.my.id', 29, 95, 61, 21, '0', 'Psr. Basoka Raya No. 522, Tanjung Pinang 35332, Kaltim', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(783, 451, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Adriansyah Firgantoro', '(+62) 860 5381 767', 'kariman37@yahoo.co.id', 27, 62, 89, 27, '1', 'Ki. Abdul Rahmat No. 432, Surabaya 81389, Banten', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(784, 466, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Suwarno Hakim Tbk', '(+62) 576 3748 545', 'jelita.astuti@yahoo.co.id', 24, 35, 63, 99, '0', 'Psr. S. Parman No. 600, Kotamobagu 93438, Bengkulu', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(785, 24, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Rahimah', '(+62) 797 4174 3262', 'isitompul@suryono.ac.id', 9, 22, 21, 15, '1', 'Psr. Pattimura No. 395, Mataram 94806, Jatim', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(786, 181, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Sihotang Tbk', '(+62) 224 5214 6883', 'purnawati.hardana@gmail.co.id', 19, 37, 3, 76, '1', 'Jln. Yogyakarta No. 72, Palembang 95366, Maluku', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(787, 393, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Wijayanti (Persero) Tbk', '0730 7206 553', 'okto.budiman@suartini.id', 1, 24, 86, 6, '0', 'Jr. Salak No. 846, Bontang 79420, Kaltara', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(788, 153, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Andriani (Persero) Tbk', '(+62) 375 1866 4843', 'prakasa.indra@gmail.co.id', 23, 42, 66, 42, '1', 'Ds. Adisumarmo No. 9, Lhokseumawe 93717, Papua', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(789, 362, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Mardhiyah Yuniar', '0318 4824 630', 'kartika70@purwanti.web.id', 21, 36, 52, 14, '0', 'Dk. Basuki Rahmat  No. 97, Sukabumi 95956, Kalteng', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(790, 371, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Megantara', '(+62) 560 0631 6697', 'citra56@gmail.co.id', 5, 11, 53, 90, '1', 'Ki. B.Agam 1 No. 149, Sawahlunto 19050, Kalsel', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(791, 226, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Simbolon (Persero) Tbk', '0315 2767 4878', 'wahyu.permata@gmail.com', 6, 36, 36, 48, '0', 'Kpg. Moch. Toha No. 149, Ternate 17312, Babel', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(792, 138, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Nasyiah Gunawan', '(+62) 455 5175 642', 'septi70@yahoo.com', 17, 24, 43, 71, '1', 'Jln. Babakan No. 139, Yogyakarta 13741, Sumut', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(793, 421, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Tamba Sudiati (Persero) Tbk', '0858 4562 414', 'prasetyo.embuh@pranowo.id', 5, 55, 86, 4, '1', 'Gg. Gedebage Selatan No. 742, Padang 66921, Bali', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(794, 77, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Utami Tbk', '0634 0020 870', 'marpaung.latika@mardhiyah.go.id', 9, 40, 62, 85, '1', 'Ds. B.Agam 1 No. 225, Tangerang 91806, Bali', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(795, 503, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Prastuti Hardiansyah (Persero) Tbk', '(+62) 202 3130 180', 'cpratama@yahoo.com', 7, 2, 52, 55, '1', 'Ds. Baiduri No. 839, Padangsidempuan 30473, NTB', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(796, 417, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Sinaga Wibowo (Persero) Tbk', '0843 7273 9952', 'flatupono@sitorus.desa.id', 7, 85, 55, 86, '1', 'Kpg. Honggowongso No. 868, Tegal 44330, DKI', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(797, 79, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Anggriawan Sinaga', '0482 4024 612', 'lazuardi.harjo@handayani.co.id', 5, 77, 28, 76, '0', 'Dk. Salak No. 632, Sungai Penuh 35946, Bengkulu', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(798, 92, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Gunarto Laksita (Persero) Tbk', '(+62) 497 4341 607', 'pangestu.raden@gmail.com', 6, 51, 63, 90, '0', 'Kpg. Basket No. 185, Pariaman 82511, Jabar', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(799, 378, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Wahyuni (Persero) Tbk', '(+62) 294 9208 9176', 'ewulandari@nasyidah.in', 6, 46, 16, 22, '1', 'Psr. Jambu No. 456, Yogyakarta 83570, Riau', '1110', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(800, 133, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Puspasari Suwarno', '(+62) 880 368 468', 'kusuma.maheswara@gmail.co.id', 32, 4, 95, 88, '1', 'Kpg. Dahlia No. 930, Gunungsitoli 43480, Babel', '1106', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(801, 235, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Nasyiah Rahmawati (Persero) Tbk', '(+62) 665 1990 409', 'asaefullah@rahayu.my.id', 33, 5, 23, 16, '0', 'Dk. Ahmad Dahlan No. 598, Pagar Alam 44753, Sultra', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(802, 34, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Uyainah', '(+62) 355 6748 735', 'vprastuti@hutasoit.org', 6, 77, 12, 53, '0', 'Ki. Sentot Alibasa No. 153, Bandung 11071, Maluku', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(803, 263, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Kusmawati Mayasari', '(+62) 568 7000 991', 'prasetyo.farhunnisa@gmail.com', 29, 42, 72, 54, '0', 'Ki. Mulyadi No. 887, Kediri 75753, Kaltim', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(804, 128, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Adriansyah Lestari (Persero) Tbk', '(+62) 962 7661 105', 'yolanda.kania@mustofa.name', 9, 30, 94, 82, '0', 'Ki. Abdul Muis No. 620, Banjarmasin 18088, Sulut', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(805, 455, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Usamah Tbk', '(+62) 984 1423 452', 'titi05@palastri.asia', 9, 48, 76, 82, '0', 'Ki. Suharso No. 191, Palembang 68277, Sulbar', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(806, 308, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Winarsih (Persero) Tbk', '021 8541 8485', 'mwasita@yahoo.com', 6, 20, 21, 81, '1', 'Ds. Padang No. 814, Parepare 16863, Kalsel', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(807, 44, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Kusumo Sinaga', '0412 7223 857', 'manggraini@waskita.desa.id', 30, 43, 73, 66, '0', 'Dk. Suharso No. 970, Tangerang Selatan 50211, Riau', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(808, 57, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Purnawati', '0982 0691 2874', 'pangestu.azalea@yahoo.com', 20, 31, 90, 75, '0', 'Psr. Nanas No. 516, Batam 73372, Papua', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(809, 450, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Prasetyo', '0384 5644 6879', 'nainggolan.heru@aryani.com', 17, 12, 38, 29, '1', 'Psr. Jambu No. 965, Gorontalo 49858, Bali', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(810, 58, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Thamrin', '(+62) 24 0977 871', 'elvina.maryadi@utami.org', 29, 89, 87, 91, '0', 'Jr. Pacuan Kuda No. 297, Palu 36931, NTT', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(811, 273, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Haryanto', '0524 6056 6734', 'wibisono.dacin@yahoo.co.id', 18, 85, 67, 20, '1', 'Dk. Ciumbuleuit No. 972, Bau-Bau 50434, Kalsel', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(812, 44, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Ramadan Lestari (Persero) Tbk', '(+62) 25 7049 833', 'keisha33@yahoo.co.id', 3, 73, 67, 84, '1', 'Jln. Moch. Yamin No. 296, Banjar 76341, Jabar', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(813, 251, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Sitompul Wastuti', '(+62) 279 5234 369', 'wulan.tarihoran@anggriawan.co.id', 6, 64, 54, 17, '1', 'Jln. Babakan No. 288, Surabaya 41843, Pabar', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(814, 197, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Waluyo', '(+62) 881 9176 0261', 'csiregar@gmail.com', 15, 38, 36, 51, '0', 'Dk. Setiabudhi No. 514, Bau-Bau 54637, Banten', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(815, 355, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Suwarno', '0291 0324 8865', 'daru.maryati@rahimah.com', 30, 13, 74, 21, '1', 'Kpg. Babadan No. 11, Serang 32351, Sulteng', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(816, 41, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Mayasari Yulianti (Persero) Tbk', '(+62) 20 9383 213', 'zalindra.mandasari@andriani.sch.id', 14, 47, 32, 49, '0', 'Jr. Bagis Utama No. 641, Magelang 84940, Sumut', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(817, 27, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Lailasari Oktaviani Tbk', '(+62) 816 608 164', 'wahyudin.laila@lestari.biz.id', 11, 68, 9, 5, '0', 'Jr. Kali No. 684, Palembang 38928, Banten', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(818, 378, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Megantara Tbk', '024 9949 8421', 'hutapea.niyaga@mangunsong.desa.id', 7, 79, 98, 46, '0', 'Kpg. Sudirman No. 79, Singkawang 27912, NTB', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(819, 284, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Kusmawati Anggraini', '(+62) 614 7882 4594', 'suryatmi.unjani@samosir.in', 26, 58, 42, 36, '1', 'Ki. Lumban Tobing No. 72, Subulussalam 50376, Sultra', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(820, 315, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Firmansyah', '0706 8471 967', 'laksana23@thamrin.my.id', 19, 93, 9, 61, '0', 'Psr. Cut Nyak Dien No. 979, Pagar Alam 11573, Jambi', '1106', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(821, 114, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Waskita Tampubolon (Persero) Tbk', '0858 5117 9649', 'uyainah.maria@yahoo.co.id', 17, 5, 7, 73, '0', 'Jln. Bakti No. 775, Solok 95091, Maluku', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(822, 210, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Hariyah', '(+62) 968 6320 568', 'bambang.nugroho@gmail.co.id', 9, 14, 54, 96, '0', 'Dk. Tambak No. 360, Sawahlunto 86714, Kaltara', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(823, 54, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Saragih Tbk', '(+62) 282 6186 7458', 'puspasari.bancar@irawan.asia', 27, 98, 61, 36, '0', 'Jr. Kyai Gede No. 476, Magelang 97737, Sultra', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(824, 89, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Damanik Hakim', '0604 9756 995', 'yfirgantoro@yahoo.com', 3, 16, 56, 35, '0', 'Jr. Baan No. 327, Magelang 73871, Kepri', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(825, 34, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Pradana Tbk', '0880 2384 385', 'cakrawangsa38@gmail.co.id', 6, 90, 1, 51, '1', 'Ds. Villa No. 950, Serang 52786, Sulteng', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(826, 481, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Anggraini Susanti', '(+62) 29 8504 268', 'nurul.winarno@jailani.web.id', 5, 58, 31, 59, '0', 'Ds. Baha No. 252, Administrasi Jakarta Barat 31454, Sumut', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(827, 17, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Palastri', '(+62) 386 1753 800', 'maida.simbolon@gmail.co.id', 25, 91, 100, 76, '0', 'Kpg. Achmad No. 627, Pariaman 28254, Sulsel', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(828, 465, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Riyanti (Persero) Tbk', '(+62) 222 7625 7582', 'juli70@yahoo.co.id', 11, 59, 59, 71, '0', 'Ki. Bah Jaya No. 367, Jayapura 78825, Sulsel', '1102', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(829, 255, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Pratama Melani', '0860 3526 339', 'pranata70@yulianti.in', 24, 78, 34, 2, '1', 'Gg. Dr. Junjunan No. 894, Malang 33365, Sulut', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(830, 54, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Suryatmi', '(+62) 457 0240 8284', 'sabrina.nurdiyanti@prakasa.in', 18, 46, 52, 63, '0', 'Psr. Muwardi No. 193, Ambon 13290, Bali', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(831, 43, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Nurdiyanti', '0774 4894 813', 'januar.tami@hassanah.name', 2, 36, 96, 17, '0', 'Ki. Sukajadi No. 423, Administrasi Jakarta Selatan 57106, Bengkulu', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(832, 114, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Widiastuti Andriani', '(+62) 667 8816 2529', 'iswahyudi.anggabaya@gmail.com', 17, 25, 89, 55, '0', 'Kpg. Taman No. 967, Tasikmalaya 84523, Pabar', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(833, 417, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Pangestu Megantara Tbk', '0889 7009 2922', 'zamira.saptono@fujiati.biz', 26, 87, 64, 34, '1', 'Ds. Jend. A. Yani No. 126, Administrasi Jakarta Barat 70107, Jabar', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(834, 16, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Prasasta (Persero) Tbk', '(+62) 365 8543 736', 'jono00@budiman.ac.id', 25, 61, 32, 80, '0', 'Ds. Umalas No. 733, Salatiga 50803, Kalbar', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(835, 415, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Waluyo', '0728 6999 785', 'halimah.estiono@yahoo.co.id', 5, 68, 69, 10, '1', 'Ki. Padma No. 298, Padang 17756, Maluku', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(836, 306, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Sihombing', '(+62) 29 0546 595', 'zulaika.prayitna@gmail.com', 33, 28, 99, 37, '0', 'Jr. Basmol Raya No. 981, Administrasi Jakarta Pusat 41392, Bali', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(837, 439, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Laksita (Persero) Tbk', '0904 5223 1386', 'situmorang.irwan@namaga.org', 33, 97, 91, 15, '0', 'Ds. Cemara No. 339, Pariaman 27440, Banten', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(838, 40, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Iswahyudi Padmasari', '(+62) 535 9269 264', 'gangsar.rahimah@utami.id', 9, 58, 32, 10, '0', 'Ki. Jamika No. 170, Bandung 18205, Sulbar', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(839, 369, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Pangestu', '0384 3081 624', 'jsuryono@widodo.web.id', 10, 46, 24, 77, '1', 'Gg. Monginsidi No. 82, Payakumbuh 92582, Riau', '1110', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(840, 198, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Hutapea', '(+62) 787 4473 4545', 'mlaksita@kuswoyo.biz', 25, 40, 74, 90, '0', 'Ds. Daan No. 486, Sungai Penuh 15113, Aceh', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(841, 426, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Andriani', '(+62) 685 2731 7950', 'dkuswoyo@yahoo.co.id', 13, 53, 72, 91, '0', 'Gg. Bara Tambar No. 473, Cilegon 50225, Sulut', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(842, 288, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Sihombing Lailasari (Persero) Tbk', '0885 0459 7724', 'cfirgantoro@hariyah.net', 13, 98, 38, 89, '0', 'Ki. Otista No. 179, Bogor 35661, NTB', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(843, 364, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Haryanto Tbk', '0518 7011 206', 'wadriansyah@yahoo.com', 31, 72, 13, 33, '0', 'Ki. Kebangkitan Nasional No. 995, Depok 74399, Aceh', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(844, 24, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Pradipta', '(+62) 296 2662 633', 'hastuti.irnanto@rajasa.mil.id', 30, 27, 28, 11, '1', 'Ki. Bak Mandi No. 371, Binjai 81833, Kaltara', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(845, 150, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Pradana Susanti (Persero) Tbk', '0508 9797 4034', 'saptono.anita@gmail.co.id', 7, 35, 44, 83, '0', 'Ki. R.E. Martadinata No. 596, Tual 73302, Babel', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(846, 476, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Agustina (Persero) Tbk', '(+62) 860 3667 6700', 'bhutagalung@gmail.com', 23, 99, 98, 38, '0', 'Ki. Bara No. 567, Tangerang 31324, Kaltara', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(847, 93, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Hutapea Hastuti (Persero) Tbk', '0834 4825 7082', 'wastuti.wakiman@gmail.com', 20, 57, 58, 32, '0', 'Kpg. Orang No. 17, Bandung 99015, Kalsel', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(848, 182, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Hassanah Tbk', '0498 7280 824', 'nsuryono@gmail.co.id', 5, 70, 82, 8, '1', 'Dk. Sudirman No. 382, Banda Aceh 64696, Sultra', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(849, 7, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Safitri Manullang', '0296 0536 872', 'gbudiyanto@gmail.co.id', 6, 56, 59, 43, '0', 'Ds. Sampangan No. 331, Sorong 80508, Sumut', '1110', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(850, 34, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Laksita Tbk', '(+62) 789 7475 2028', 'kasiyah89@kuswandari.tv', 25, 70, 18, 26, '1', 'Ki. Gegerkalong Hilir No. 265, Tangerang 96531, Sultra', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(851, 49, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Hakim (Persero) Tbk', '(+62) 341 0585 9147', 'laras38@anggraini.com', 25, 48, 30, 89, '1', 'Jln. Yosodipuro No. 500, Bontang 26617, Bali', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(852, 149, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Setiawan Nababan Tbk', '0551 2850 3391', 'victoria.puspasari@wulandari.name', 9, 41, 79, 100, '1', 'Dk. Thamrin No. 986, Serang 53857, Kalteng', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(853, 56, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Santoso', '0897 7669 7572', 'bala75@megantara.com', 22, 60, 99, 63, '1', 'Psr. Sugiono No. 573, Kendari 76946, DIY', '1106', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(854, 192, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Mangunsong', '(+62) 923 7567 0700', 'almira42@gmail.co.id', 20, 76, 90, 77, '1', 'Kpg. Hasanuddin No. 269, Padang 92110, Babel', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(855, 150, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Rahmawati Melani', '0534 0932 2095', 'ewibisono@mustofa.web.id', 27, 96, 49, 25, '0', 'Dk. Bara Tambar No. 650, Tebing Tinggi 71931, Gorontalo', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(856, 46, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Hartati', '0856 012 385', 'puspita.balamantri@gmail.co.id', 18, 22, 30, 96, '0', 'Psr. Pattimura No. 390, Balikpapan 73369, Banten', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(857, 395, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Hartati (Persero) Tbk', '(+62) 633 2584 2104', 'damanik.enteng@ardianto.sch.id', 9, 16, 62, 23, '1', 'Dk. Kalimalang No. 395, Pekanbaru 91893, Sumut', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(858, 486, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Simanjuntak Wahyudin (Persero) Tbk', '028 4034 201', 'ika26@mardhiyah.biz', 33, 63, 49, 75, '0', 'Psr. Banal No. 657, Palopo 42516, Kepri', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(859, 229, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Najmudin Melani Tbk', '0211 2816 606', 'budiyanto.emin@yahoo.co.id', 8, 25, 1, 82, '0', 'Ki. Rumah Sakit No. 692, Palu 96440, Sumut', '1110', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(860, 429, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Zulkarnain Winarno', '0241 1266 5925', 'ymardhiyah@yahoo.com', 27, 65, 4, 15, '0', 'Ki. Baik No. 414, Jayapura 47805, Kalsel', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(861, 345, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Wulandari (Persero) Tbk', '(+62) 887 1778 273', 'wardi60@gmail.com', 27, 79, 55, 61, '0', 'Gg. Sadang Serang No. 865, Samarinda 78665, Jatim', '1108', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(862, 501, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Anggraini Budiyanto', '0960 1717 3405', 'tari37@gmail.com', 15, 93, 82, 32, '1', 'Psr. Sukajadi No. 199, Jayapura 86629, Sulteng', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(863, 239, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Rahayu', '0817 5816 4163', 'wirawan@gmail.co.id', 30, 1, 3, 96, '1', 'Jln. Ikan No. 480, Bekasi 23292, Jatim', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(864, 283, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Halimah Wasita Tbk', '(+62) 799 6867 9474', 'anggabaya12@yahoo.co.id', 25, 86, 8, 46, '0', 'Psr. Pahlawan No. 525, Bitung 68350, Kalteng', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(865, 193, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Anggraini Tbk', '(+62) 533 1082 0343', 'dmansur@gmail.com', 26, 41, 5, 18, '1', 'Kpg. Krakatau No. 73, Metro 55617, Riau', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(866, 20, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Siregar Wulandari', '0561 3837 9003', 'ajeng.uyainah@yahoo.co.id', 14, 73, 80, 3, '1', 'Gg. Dewi Sartika No. 696, Cimahi 23130, Jambi', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39');
INSERT INTO `vendors` (`id`, `user_id`, `photo_vendor`, `nama_vendor`, `kontak`, `email`, `provinsi_id`, `kabupaten_id`, `kecamatan_id`, `kelurahan_id`, `status`, `alamat_lengkap`, `lokasi`, `ktp`, `created_at`, `updated_at`) VALUES
(867, 64, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Sirait Tbk', '020 1663 574', 'karya50@haryanto.name', 26, 81, 95, 49, '1', 'Ki. Asia Afrika No. 658, Tasikmalaya 94400, Riau', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(868, 215, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Andriani', '0755 5416 615', 'umi57@wulandari.co.id', 23, 82, 78, 30, '0', 'Jr. Gajah Mada No. 203, Kupang 41743, Banten', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(869, 186, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Rahimah Farida', '(+62) 950 4167 566', 'manullang.jail@yahoo.co.id', 11, 49, 7, 41, '0', 'Ki. Bagonwoto  No. 871, Tual 29334, Aceh', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(870, 3, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Kuswoyo', '0413 8807 9146', 'msudiati@fujiati.biz.id', 23, 85, 90, 30, '1', 'Psr. Industri No. 148, Parepare 35070, Malut', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(871, 30, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Budiyanto Zulaika', '(+62) 953 6126 2682', 'xuwais@yahoo.co.id', 20, 86, 95, 71, '0', 'Ds. Dr. Junjunan No. 57, Banda Aceh 72397, Jatim', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(872, 462, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Manullang Simanjuntak', '026 1614 1837', 'kuncara90@nasyidah.in', 15, 22, 73, 23, '1', 'Dk. Baranang Siang No. 164, Blitar 12307, Maluku', '1112', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(873, 189, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Hutasoit', '0730 3406 844', 'karsa.wahyudin@kusmawati.com', 7, 75, 55, 76, '0', 'Ds. Daan No. 687, Metro 92001, NTT', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(874, 303, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Budiyanto', '(+62) 22 3188 5481', 'jwahyudin@yahoo.com', 2, 82, 33, 86, '0', 'Gg. K.H. Maskur No. 268, Kotamobagu 23687, Bengkulu', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(875, 459, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Pudjiastuti Prastuti', '(+62) 813 081 194', 'vmaryati@zulaika.com', 31, 16, 78, 95, '0', 'Ds. Jaksa No. 145, Kendari 54200, Kepri', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(876, 171, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Pratama', '(+62) 742 2023 3960', 'mulyani.elisa@puspita.co', 8, 71, 95, 11, '0', 'Jln. Casablanca No. 120, Pangkal Pinang 99040, Pabar', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(877, 423, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Habibi', '(+62) 864 3227 8533', 'mujur.hasanah@riyanti.id', 30, 90, 8, 4, '0', 'Ki. Raden No. 149, Cilegon 49820, Banten', '1107', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(878, 148, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Purwanti Wastuti Tbk', '0925 5942 782', 'msitumorang@gmail.com', 31, 20, 56, 86, '1', 'Kpg. Bawal No. 706, Semarang 14721, Sulsel', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(879, 215, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Mandala Nainggolan', '(+62) 433 1241 2514', 'mahdi37@marpaung.net', 25, 4, 100, 76, '1', 'Psr. Barat No. 89, Kupang 10705, Sumbar', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(880, 317, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Budiman Puspita', '(+62) 528 4724 1248', 'hlaksmiwati@gmail.com', 26, 85, 30, 71, '0', 'Jr. Gading No. 638, Batam 27177, Babel', '1106', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(881, 242, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Rahayu Tbk', '0519 7232 355', 'wastuti.darimin@fujiati.biz', 27, 63, 78, 72, '1', 'Psr. Ters. Buah Batu No. 831, Tomohon 76297, Kaltim', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(882, 297, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Firmansyah Pratiwi Tbk', '(+62) 649 3200 602', 'adhiarja65@yahoo.com', 3, 57, 16, 71, '1', 'Gg. B.Agam 1 No. 588, Denpasar 45938, Jambi', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(883, 211, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Budiyanto', '0785 2556 5830', 'hasta.siregar@januar.mil.id', 18, 67, 55, 84, '0', 'Ds. Salak No. 328, Kupang 30303, NTB', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(884, 257, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Prasetyo', '(+62) 452 7617 453', 'tari.padmasari@santoso.or.id', 31, 51, 3, 88, '1', 'Ki. Bagonwoto  No. 392, Kupang 13295, Gorontalo', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(885, 79, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Marbun (Persero) Tbk', '0833 5422 684', 'rahmawati.anita@sirait.ac.id', 6, 46, 72, 21, '1', 'Psr. Salatiga No. 235, Banjarmasin 82004, Maluku', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(886, 233, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Latupono Kurniawan', '0987 2404 253', 'timbul71@gmail.com', 5, 56, 87, 72, '1', 'Psr. Basoka No. 328, Metro 27452, DIY', '1117', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(887, 349, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Safitri Puspita', '020 2858 2508', 'ghaliyati09@gmail.com', 14, 49, 29, 23, '0', 'Dk. Baing No. 740, Langsa 26425, Banten', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(888, 417, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Wastuti', '0281 4474 6132', 'faizah72@safitri.go.id', 29, 13, 88, 6, '1', 'Jln. Abdul Rahmat No. 113, Bukittinggi 44294, Bali', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(889, 100, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Farida Tbk', '0672 5315 1891', 'titin85@yahoo.com', 1, 49, 48, 83, '1', 'Gg. Kyai Mojo No. 406, Makassar 50337, Gorontalo', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(890, 81, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Habibi Saptono Tbk', '0723 7991 400', 'panji.haryanti@yahoo.com', 9, 96, 98, 79, '1', 'Ki. Flores No. 856, Pontianak 85745, Sumsel', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(891, 476, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Nuraini Andriani', '0435 6615 362', 'kamaria32@gmail.co.id', 1, 40, 58, 47, '1', 'Gg. Dahlia No. 123, Pariaman 10679, Aceh', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(892, 65, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Winarsih', '0834 9926 913', 'yuliarti.fitriani@yahoo.co.id', 30, 17, 45, 32, '0', 'Psr. Zamrud No. 780, Bandung 41816, Jateng', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(893, 406, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Andriani Suryono Tbk', '(+62) 704 1237 1078', 'ardianto.vivi@maulana.name', 19, 29, 6, 26, '0', 'Ds. Sentot Alibasa No. 365, Tanjung Pinang 43827, Jambi', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(894, 116, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Iswahyudi Tampubolon', '(+62) 247 3310 534', 'kusmawati.anita@yahoo.com', 17, 5, 51, 31, '1', 'Dk. Sutarto No. 670, Tangerang 85504, Papua', '1114', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(895, 414, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Sitompul Tbk', '(+62) 869 9907 716', 'mfarida@gmail.com', 30, 72, 56, 5, '0', 'Kpg. Bakau No. 494, Bitung 36687, Kepri', '1116', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(896, 168, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Wijayanti Nainggolan', '0768 5917 2825', 'nasyidah.jayadi@yahoo.co.id', 17, 84, 18, 18, '0', 'Dk. Badak No. 318, Pontianak 44213, Jateng', '1106', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(897, 333, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Hutasoit Suwarno Tbk', '0656 5050 623', 'fharyanto@prakasa.id', 31, 54, 53, 79, '1', 'Jln. Perintis Kemerdekaan No. 632, Pematangsiantar 78609, Sulteng', '1106', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(898, 73, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Tamba', '024 8835 616', 'wasis.hastuti@latupono.biz', 10, 46, 35, 28, '0', 'Jln. Dahlia No. 780, Blitar 25821, Kaltara', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(899, 160, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Marbun Nuraini (Persero) Tbk', '(+62) 565 5292 1416', 'jefri.namaga@waskita.co', 14, 11, 49, 99, '1', 'Jr. B.Agam 1 No. 281, Kupang 45247, Sumbar', '1105', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(900, 114, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Wastuti Prabowo', '(+62) 226 1410 865', 'citra.oktaviani@haryanti.ac.id', 6, 26, 26, 35, '0', 'Ds. Baiduri No. 936, Tual 28194, Bengkulu', '1104', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(901, 398, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Andriani Irawan (Persero) Tbk', '(+62) 894 5974 545', 'winda74@gmail.co.id', 15, 88, 87, 57, '0', 'Psr. Zamrud No. 669, Dumai 80898, Kalteng', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(902, 411, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Wastuti Widodo', '(+62) 215 1938 805', 'hassanah.widya@purnawati.co.id', 24, 98, 25, 71, '0', 'Ki. Sampangan No. 294, Solok 61999, Sulteng', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(903, 244, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Pangestu', '(+62) 813 722 727', 'kuswandari.rahmi@yahoo.com', 1, 60, 8, 52, '1', 'Dk. Basuki Rahmat  No. 588, Makassar 76376, DIY', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(904, 473, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Narpati Jailani', '0430 2907 4510', 'aris78@nasyiah.go.id', 12, 82, 39, 89, '0', 'Psr. Siliwangi No. 978, Kotamobagu 85227, Kepri', '1109', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(905, 256, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Wahyuni Gunarto (Persero) Tbk', '(+62) 748 1069 5096', 'johan03@situmorang.desa.id', 19, 5, 47, 62, '0', 'Psr. Warga No. 246, Pekanbaru 61445, Sulsel', '1110', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(906, 349, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Hartati Pratama', '(+62) 201 6419 4229', 'uyainah.dipa@yahoo.com', 7, 85, 75, 61, '1', 'Gg. Jakarta No. 386, Prabumulih 50059, Jatim', '1115', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(907, 56, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Wibowo', '(+62) 983 8596 034', 'safina.mulyani@mandasari.net', 16, 99, 74, 31, '0', 'Dk. Pahlawan No. 462, Banjarmasin 60819, Sulbar', '1103', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(908, 94, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Gunarto Lazuardi', '0395 8140 6673', 'mustofa.yolanda@yahoo.com', 23, 23, 73, 90, '0', 'Psr. Peta No. 693, Singkawang 13793, Kalbar', '1106', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(909, 298, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Pratiwi Riyanti Tbk', '(+62) 267 3224 4368', 'ika66@wijayanti.net', 12, 41, 50, 7, '1', 'Kpg. Bakti No. 70, Kupang 28258, DIY', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(910, 192, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Melani (Persero) Tbk', '(+62) 262 8490 929', 'jail96@gmail.co.id', 13, 52, 17, 45, '1', 'Dk. Baiduri No. 467, Payakumbuh 34081, Jatim', '1111', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(911, 416, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Palastri (Persero) Tbk', '0372 2071 7642', 'najmudin.suci@gmail.com', 10, 48, 12, 7, '1', 'Kpg. Merdeka No. 148, Bekasi 81463, Sulsel', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(912, 375, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Hastuti Suryono', '(+62) 396 9290 104', 'cawuk66@yahoo.co.id', 10, 39, 53, 70, '1', 'Dk. Abdul No. 459, Administrasi Jakarta Barat 40594, Sumbar', '1118', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(913, 30, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Handayani', '(+62) 496 7657 495', 'simanjuntak.kawaya@mandala.name', 31, 83, 12, 62, '0', 'Jln. Ahmad Dahlan No. 931, Tasikmalaya 36782, Babel', '1101', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(914, 128, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Pratiwi Handayani Tbk', '0221 2364 926', 'mulyani.paris@yahoo.co.id', 23, 2, 21, 47, '0', 'Psr. Nakula No. 489, Bengkulu 96276, Sulbar', '1113', NULL, '2021-01-20 16:59:39', '2021-01-20 16:59:39'),
(915, 251, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Nainggolan Mardhiyah', '0692 9647 164', 'eprasetyo@gmail.co.id', 4, 48, 62, 54, '0', 'Psr. Rajawali Timur No. 395, Kendari 46859, NTB', '1112', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(916, 264, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Haryanti Rajata (Persero) Tbk', '(+62) 311 6708 541', 'prayoga.lasmanto@gmail.com', 9, 94, 38, 32, '0', 'Ds. Baja No. 794, Tanjungbalai 44663, Sumbar', '1106', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(917, 67, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Padmasari Lestari', '0753 9509 625', 'aurora00@sihotang.id', 19, 100, 1, 5, '1', 'Jr. Wahid No. 458, Tegal 13661, Sumut', '1112', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(918, 439, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Palastri Hartati (Persero) Tbk', '0818 4031 1292', 'darijan.salahudin@gmail.co.id', 2, 99, 78, 86, '1', 'Gg. Bagas Pati No. 159, Jambi 28241, Sumsel', '1104', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(919, 104, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Maryadi (Persero) Tbk', '(+62) 21 1492 287', 'ajeng.situmorang@gmail.co.id', 10, 49, 43, 65, '0', 'Ds. Bakau Griya Utama No. 270, Bandar Lampung 76578, Sulsel', '1105', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(920, 323, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Permata Prakasa Tbk', '024 1775 380', 'cinthia34@situmorang.co', 26, 37, 67, 62, '0', 'Psr. Bank Dagang Negara No. 864, Bengkulu 30855, Papua', '1115', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(921, 447, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Puspita Yolanda (Persero) Tbk', '0555 1363 290', 'syuniar@yahoo.co.id', 10, 43, 52, 4, '1', 'Jr. Flores No. 659, Pekalongan 91134, Sumsel', '1110', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(922, 235, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Hidayanto (Persero) Tbk', '(+62) 805 1859 3985', 'melinda99@napitupulu.asia', 13, 27, 55, 80, '0', 'Jr. Krakatau No. 924, Tangerang 45140, Kaltara', '1106', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(923, 462, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Kuswoyo Maulana', '0814 7054 3437', 'titin00@anggraini.info', 9, 5, 46, 32, '1', 'Ki. Sugiyopranoto No. 925, Sabang 27621, Maluku', '1101', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(924, 382, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Hardiansyah Tbk', '0396 6950 829', 'jagaraga.natsir@yahoo.com', 19, 34, 9, 56, '0', 'Ds. Yos No. 216, Bontang 58341, Papua', '1101', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(925, 373, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Agustina Tbk', '(+62) 413 2450 1870', 'nzulaika@gmail.co.id', 15, 81, 85, 93, '1', 'Psr. Antapani Lama No. 156, Magelang 31350, Kaltara', '1118', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(926, 479, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Rahmawati Tbk', '(+62) 483 0202 956', 'yahya.sihotang@yahoo.com', 29, 31, 67, 39, '0', 'Gg. Rajiman No. 947, Denpasar 98453, Bali', '1111', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(927, 451, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Andriani (Persero) Tbk', '(+62) 706 1971 548', 'unovitasari@gmail.com', 12, 83, 16, 34, '0', 'Jln. Badak No. 779, Sorong 69759, Riau', '1112', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(928, 363, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Fujiati', '0761 7569 031', 'okusumo@gunawan.desa.id', 13, 18, 66, 61, '1', 'Gg. Yogyakarta No. 280, Surakarta 79521, Bali', '1117', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(929, 462, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Maryati Mayasari (Persero) Tbk', '0605 3823 2476', 'anggabaya45@wijayanti.name', 21, 1, 4, 3, '1', 'Jr. Ikan No. 88, Jambi 90941, Sulut', '1115', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(930, 266, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Wibisono Tbk', '0623 1050 8753', 'dastuti@yahoo.com', 33, 33, 67, 74, '1', 'Psr. Urip Sumoharjo No. 501, Denpasar 19668, Lampung', '1101', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(931, 20, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Manullang Tbk', '(+62) 922 2226 997', 'martaka.kuswandari@yahoo.com', 3, 98, 6, 8, '1', 'Jr. Abdul Rahmat No. 259, Bandar Lampung 33242, Papua', '1111', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(932, 429, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Mulyani Prastuti (Persero) Tbk', '0903 7450 8641', 'anggraini.fitriani@yahoo.com', 31, 16, 50, 80, '1', 'Ki. Mahakam No. 81, Sorong 87601, Bengkulu', '1102', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(933, 335, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Hartati Anggriawan Tbk', '(+62) 331 6440 875', 'permata.upik@mardhiyah.mil.id', 12, 87, 61, 68, '0', 'Ki. Jakarta No. 327, Tidore Kepulauan 10876, Gorontalo', '1106', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(934, 70, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Hariyah Tbk', '029 8078 4037', 'legawa21@gmail.co.id', 20, 95, 55, 45, '0', 'Gg. Ki Hajar Dewantara No. 804, Palu 43629, Sumut', '1108', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(935, 63, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Laksmiwati Widiastuti', '(+62) 816 419 360', 'wiswahyudi@pudjiastuti.info', 21, 27, 42, 16, '0', 'Ki. Jend. Sudirman No. 490, Tomohon 69295, Papua', '1104', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(936, 318, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Prasasta', '0874 1431 568', 'uwidodo@nuraini.go.id', 4, 25, 23, 5, '1', 'Kpg. Dipenogoro No. 814, Sabang 98809, Kalteng', '1116', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(937, 256, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Hasanah', '0864 193 843', 'danang.hutasoit@yahoo.com', 21, 46, 48, 26, '1', 'Dk. Lumban Tobing No. 46, Bogor 84774, Maluku', '1101', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(938, 446, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Suartini Marpaung (Persero) Tbk', '(+62) 888 1849 898', 'iyulianti@winarno.org', 30, 90, 18, 23, '1', 'Ds. Baha No. 465, Padang 15324, Lampung', '1115', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(939, 157, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Prasetyo Nasyidah', '0895 8843 2680', 'prasasta.mala@yahoo.com', 22, 10, 42, 97, '0', 'Ki. Agus Salim No. 157, Payakumbuh 48422, Kepri', '1113', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(940, 234, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Rahimah Nababan', '0700 6994 6205', 'padma.lazuardi@gmail.com', 16, 17, 70, 3, '1', 'Kpg. Peta No. 548, Administrasi Jakarta Barat 24847, Sulbar', '1108', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(941, 349, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Pratiwi Safitri Tbk', '(+62) 298 8627 0302', 'mardhiyah.zelda@gmail.co.id', 24, 92, 17, 3, '0', 'Dk. Labu No. 227, Sorong 23992, NTB', '1118', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(942, 191, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Firmansyah Anggraini Tbk', '(+62) 666 5871 4179', 'budiman.zamira@yahoo.com', 16, 38, 33, 9, '0', 'Gg. Bakaru No. 497, Semarang 19000, Sulut', '1106', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(943, 23, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Nugroho', '026 4215 9187', 'lanang77@yahoo.com', 16, 92, 80, 76, '1', 'Kpg. Cemara No. 720, Manado 64272, Kaltim', '1115', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(944, 124, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Hariyah Sihotang (Persero) Tbk', '(+62) 23 4950 1755', 'butami@yahoo.co.id', 17, 22, 70, 24, '1', 'Kpg. Laswi No. 712, Palangka Raya 83293, Kalteng', '1113', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(945, 492, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Siregar', '0893 3667 483', 'dono.maryati@yahoo.co.id', 28, 10, 82, 90, '0', 'Dk. Imam Bonjol No. 354, Pangkal Pinang 32366, Banten', '1105', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(946, 360, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Nasyidah', '(+62) 28 4518 2302', 'safitri.karsa@gmail.co.id', 20, 89, 59, 67, '0', 'Gg. Acordion No. 958, Cirebon 19303, Riau', '1115', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(947, 385, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Hutapea Rajata (Persero) Tbk', '0791 5446 168', 'siregar.rina@yahoo.co.id', 1, 9, 8, 51, '1', 'Ds. Jamika No. 344, Administrasi Jakarta Selatan 78478, Kalteng', '1118', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(948, 227, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Pertiwi Tbk', '0304 8544 172', 'pia.napitupulu@puspita.name', 1, 5, 27, 72, '0', 'Jln. Pacuan Kuda No. 869, Pagar Alam 92855, Bali', '1104', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(949, 164, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Prasetyo', '(+62) 288 0415 8244', 'rahayu82@yahoo.com', 21, 4, 14, 91, '1', 'Psr. Abdul No. 393, Payakumbuh 43824, DIY', '1106', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(950, 322, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Sitompul', '(+62) 764 1034 765', 'mardhiyah.unjani@yahoo.com', 4, 47, 63, 41, '0', 'Jln. B.Agam Dlm No. 975, Langsa 72292, Jateng', '1104', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(951, 452, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Namaga Nugroho (Persero) Tbk', '0650 9926 0184', 'nyuniar@winarsih.go.id', 27, 55, 83, 4, '0', 'Kpg. Ki Hajar Dewantara No. 134, Palembang 14745, DKI', '1106', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(952, 82, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Prasasta', '0725 6082 667', 'xhastuti@yahoo.co.id', 13, 63, 74, 90, '0', 'Psr. Tambun No. 688, Magelang 81562, Babel', '1118', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(953, 83, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Tarihoran', '0744 7642 4587', 'diana93@gmail.com', 21, 23, 66, 63, '1', 'Kpg. Labu No. 177, Tasikmalaya 79855, Sultra', '1114', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(954, 39, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Winarsih', '0287 1402 603', 'vlaksmiwati@yahoo.com', 21, 86, 42, 74, '0', 'Ki. Madrasah No. 512, Cimahi 21626, Bali', '1116', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(955, 301, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Puspita Pratiwi Tbk', '(+62) 901 8632 6345', 'cemeti.pudjiastuti@yahoo.co.id', 6, 1, 14, 49, '0', 'Dk. Elang No. 317, Administrasi Jakarta Timur 60814, Sultra', '1115', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(956, 85, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Wijaya (Persero) Tbk', '0531 6460 656', 'dabukke.emong@gmail.co.id', 2, 22, 64, 46, '1', 'Kpg. Suniaraja No. 869, Bandung 34057, NTT', '1110', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(957, 407, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Pratiwi Wijaya', '(+62) 594 9061 003', 'pranowo.keisha@saptono.asia', 12, 54, 38, 16, '1', 'Psr. Bakaru No. 180, Langsa 38188, Jatim', '1115', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(958, 369, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Wasita', '0973 1647 660', 'hardana.pangestu@gmail.co.id', 25, 8, 21, 81, '0', 'Kpg. Sudiarto No. 784, Kendari 46042, Sultra', '1102', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(959, 500, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Widiastuti Yulianti', '(+62) 482 8178 249', 'mahfud00@gmail.co.id', 18, 96, 29, 28, '1', 'Dk. Urip Sumoharjo No. 894, Cilegon 39840, Kalsel', '1115', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(960, 236, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Hardiansyah Kusmawati', '0943 7659 282', 'sirait.shania@gmail.co.id', 25, 71, 68, 49, '1', 'Dk. Bara Tambar No. 239, Metro 71053, Kaltim', '1118', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(961, 390, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Wulandari Tbk', '0634 1858 2704', 'prayoga14@maryati.ac.id', 16, 68, 7, 13, '1', 'Dk. Bappenas No. 87, Tanjung Pinang 19726, Sultra', '1108', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(962, 98, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Hidayanto Hakim', '0276 5018 322', 'sitompul.jaga@mansur.biz.id', 4, 63, 90, 61, '1', 'Gg. R.E. Martadinata No. 253, Salatiga 66281, Bali', '1107', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(963, 253, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Widodo Purwanti Tbk', '(+62) 861 0200 692', 'almira97@yolanda.org', 1, 84, 65, 5, '0', 'Psr. Nangka No. 708, Surakarta 63128, Sumsel', '1105', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(964, 437, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Nainggolan Tbk', '(+62) 25 0830 8161', 'driyanti@yahoo.com', 25, 12, 26, 35, '1', 'Jln. Barat No. 665, Balikpapan 48246, Kaltim', '1116', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(965, 266, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Situmorang', '0813 1729 2701', 'mulyani.bagus@mandasari.id', 27, 100, 69, 74, '0', 'Dk. Pahlawan No. 13, Palopo 22827, Kalsel', '1103', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(966, 486, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Mandala Nasyidah', '(+62) 363 4076 954', 'ssaefullah@gmail.co.id', 15, 22, 5, 17, '0', 'Psr. Mulyadi No. 259, Batu 99096, Bali', '1105', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(967, 470, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Astuti Tbk', '(+62) 877 419 644', 'qsuwarno@yahoo.co.id', 20, 6, 34, 15, '1', 'Dk. Cikutra Barat No. 349, Bekasi 97501, Babel', '1118', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(968, 38, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Padmasari', '(+62) 873 182 563', 'devi85@puspita.tv', 9, 35, 56, 4, '1', 'Ds. Dr. Junjunan No. 94, Bandung 13549, Jateng', '1118', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(969, 368, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Nasyiah Hastuti', '0797 6040 9714', 'kartika.haryanto@gmail.com', 16, 41, 33, 49, '0', 'Jln. Bata Putih No. 36, Bogor 28581, Sultra', '1116', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(970, 54, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Wijaya Waluyo', '0614 2071 1526', 'lestari.setya@astuti.id', 1, 78, 66, 98, '1', 'Psr. Bagonwoto  No. 755, Dumai 83614, Lampung', '1118', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(971, 428, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Namaga', '0206 0770 7400', 'febi70@mayasari.co.id', 22, 12, 37, 73, '0', 'Jr. Imam Bonjol No. 642, Pariaman 64299, Aceh', '1118', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(972, 345, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Nasyidah Melani', '0687 4393 804', 'ssiregar@saputra.ac.id', 19, 48, 61, 17, '0', 'Psr. Baha No. 735, Administrasi Jakarta Selatan 92146, Sumbar', '1107', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(973, 156, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Situmorang Anggriawan Tbk', '0804 970 600', 'hputra@gmail.co.id', 26, 52, 74, 7, '0', 'Dk. Jambu No. 64, Banjarbaru 94685, Kaltim', '1103', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(974, 311, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Budiyanto Tbk', '0838 9810 5055', 'padmi71@gmail.co.id', 20, 3, 18, 81, '0', 'Ki. Kebangkitan Nasional No. 419, Kendari 55472, Pabar', '1103', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(975, 486, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Prasetyo', '(+62) 395 4168 1734', 'awidiastuti@gmail.co.id', 15, 31, 98, 80, '0', 'Dk. Orang No. 499, Dumai 91419, Sulteng', '1106', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(976, 201, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Suryono (Persero) Tbk', '(+62) 307 7468 9735', 'ythamrin@ardianto.name', 13, 53, 23, 93, '1', 'Ki. Gremet No. 782, Banda Aceh 69993, Gorontalo', '1105', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(977, 207, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Natsir Irawan', '0641 2490 8633', 'ayu.anggraini@padmasari.asia', 25, 37, 89, 76, '1', 'Jr. Kusmanto No. 595, Serang 53266, Bengkulu', '1104', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(978, 208, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Maryati Tbk', '025 4465 702', 'indah34@halimah.in', 2, 78, 6, 46, '0', 'Gg. Mahakam No. 223, Payakumbuh 92514, Kepri', '1108', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(979, 11, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Lailasari Sihombing Tbk', '(+62) 25 7877 7623', 'namaga.hana@putra.web.id', 21, 36, 90, 18, '1', 'Gg. Madiun No. 610, Palembang 92390, Maluku', '1118', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(980, 456, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Haryanto Tbk', '0921 1191 4377', 'ssetiawan@damanik.info', 3, 21, 49, 69, '1', 'Ki. Kyai Gede No. 753, Bau-Bau 61272, Sultra', '1117', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(981, 355, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Wahyuni Rahimah', '(+62) 997 6852 7000', 'ellis.saptono@halim.net', 7, 83, 81, 67, '1', 'Jln. Imam No. 470, Banda Aceh 48525, Sumbar', '1112', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(982, 284, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Wahyuni (Persero) Tbk', '(+62) 487 7930 939', 'puti.kuswoyo@yahoo.com', 10, 62, 56, 40, '0', 'Kpg. Pasir Koja No. 698, Tanjung Pinang 60231, Kalbar', '1114', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(983, 230, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Mahendra (Persero) Tbk', '0885 570 772', 'talia09@gmail.co.id', 20, 99, 41, 76, '1', 'Ki. Siliwangi No. 22, Batam 89901, Babel', '1111', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(984, 19, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Suartini', '0272 6086 1856', 'candra.saptono@hariyah.mil.id', 30, 59, 23, 42, '1', 'Jr. Gotong Royong No. 460, Tual 75507, Sultra', '1108', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(985, 15, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Hidayanto', '0401 7082 9928', 'almira.laksmiwati@gmail.com', 5, 44, 67, 24, '0', 'Kpg. Gatot Subroto No. 758, Cirebon 81012, Jambi', '1116', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(986, 467, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Usamah (Persero) Tbk', '(+62) 861 1870 6726', 'pwastuti@gmail.co.id', 12, 37, 79, 50, '0', 'Dk. W.R. Supratman No. 492, Tarakan 96874, Gorontalo', '1102', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(987, 432, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Iswahyudi Tbk', '(+62) 409 9894 513', 'elma.novitasari@gmail.com', 33, 60, 25, 92, '1', 'Ki. Bagonwoto  No. 586, Sawahlunto 80727, Malut', '1106', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(988, 151, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'UD Maryadi Tbk', '(+62) 598 2137 367', 'margana.nababan@hutagalung.sch.id', 24, 83, 81, 13, '0', 'Kpg. Sutarto No. 721, Mojokerto 95014, Gorontalo', '1103', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(989, 190, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Permata', '0215 2281 276', 'nalar89@gmail.co.id', 12, 27, 55, 37, '0', 'Jr. Sutoyo No. 555, Blitar 38680, Bali', '1112', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(990, 495, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Hartati', '(+62) 727 9888 432', 'azalea.latupono@yahoo.com', 9, 87, 80, 66, '1', 'Gg. Bayan No. 640, Sibolga 37361, Bengkulu', '1113', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(991, 129, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Sudiati (Persero) Tbk', '(+62) 762 5106 408', 'gantar90@yahoo.co.id', 25, 73, 57, 55, '0', 'Kpg. Bhayangkara No. 5, Administrasi Jakarta Pusat 90376, Jatim', '1105', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(992, 266, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Pertiwi (Persero) Tbk', '(+62) 291 9398 280', 'umaryati@gmail.co.id', 27, 56, 20, 68, '1', 'Kpg. Jambu No. 464, Kotamobagu 65370, Kepri', '1108', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(993, 54, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Dabukke', '0970 7020 7762', 'lailasari.wardi@gmail.com', 10, 64, 98, 68, '1', 'Jr. Lumban Tobing No. 238, Ternate 69671, Kepri', '1111', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(994, 4, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Sudiati Hasanah', '0874 5301 373', 'prabowo.adikara@fujiati.asia', 2, 10, 9, 7, '1', 'Dk. Yoga No. 293, Tarakan 63924, Bali', '1117', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(995, 10, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PT Zulkarnain Hakim Tbk', '(+62) 481 2639 3860', 'karya10@suryatmi.asia', 2, 42, 36, 36, '0', 'Psr. Bakti No. 931, Sabang 12298, Jabar', '1115', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(996, 431, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Suartini Saragih (Persero) Tbk', '0577 9839 739', 'cemeti26@mandasari.name', 9, 42, 41, 60, '0', 'Dk. Labu No. 105, Tangerang Selatan 87887, NTB', '1112', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(997, 55, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'CV Samosir Wastuti (Persero) Tbk', '(+62) 588 7579 0661', 'humaira.suartini@situmorang.com', 20, 84, 97, 60, '0', 'Ds. Mahakam No. 659, Tangerang Selatan 46048, Jabar', '1111', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(998, 434, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Maheswara Tbk', '0332 8139 521', 'wibowo.taswir@gmail.com', 20, 19, 31, 32, '1', 'Jr. Jamika No. 780, Administrasi Jakarta Timur 27992, NTT', '1106', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(999, 179, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Hassanah', '020 8770 9994', 'xsaragih@gmail.co.id', 29, 9, 57, 6, '0', 'Jr. Madrasah No. 34, Depok 89652, NTT', '1116', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(1000, 162, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'PD Pradana Sihombing Tbk', '0351 5150 328', 'xyolanda@nuraini.org', 4, 82, 16, 16, '0', 'Jr. Ciwastra No. 979, Samarinda 32995, Babel', '1112', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40'),
(1001, 60, 'photo_vendor/vmhPolLLfY1y1LXxSdTCH8TMSyMCU7nCEPRxHrbT.jpg', 'Perum Permata Mardhiyah', '(+62) 776 0524 585', 'laksmiwati.puji@wahyudin.mil.id', 31, 81, 82, 2, '1', 'Ds. Imam No. 454, Solok 60278, Lampung', '1112', NULL, '2021-01-20 16:59:40', '2021-01-20 16:59:40');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indeks untuk tabel `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `indonesia_cities`
--
ALTER TABLE `indonesia_cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indonesia_cities_province_id_foreign` (`province_id`);

--
-- Indeks untuk tabel `indonesia_districts`
--
ALTER TABLE `indonesia_districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indonesia_districts_city_id_foreign` (`city_id`);

--
-- Indeks untuk tabel `indonesia_provinces`
--
ALTER TABLE `indonesia_provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `indonesia_villages`
--
ALTER TABLE `indonesia_villages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indonesia_villages_district_id_foreign` (`district_id`);

--
-- Indeks untuk tabel `jasas`
--
ALTER TABLE `jasas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `label_jasas`
--
ALTER TABLE `label_jasas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_cities`
--
ALTER TABLE `m_cities`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `m_cities_m_province_id_foreign` (`m_province_id`) USING BTREE;

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jasas`
--
ALTER TABLE `jasas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `labels`
--
ALTER TABLE `labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `label_jasas`
--
ALTER TABLE `label_jasas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `m_cities`
--
ALTER TABLE `m_cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9472;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1501;

--
-- AUTO_INCREMENT untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `indonesia_cities`
--
ALTER TABLE `indonesia_cities`
  ADD CONSTRAINT `indonesia_cities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `indonesia_provinces` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `indonesia_districts`
--
ALTER TABLE `indonesia_districts`
  ADD CONSTRAINT `indonesia_districts_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `indonesia_cities` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `indonesia_villages`
--
ALTER TABLE `indonesia_villages`
  ADD CONSTRAINT `indonesia_villages_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `indonesia_districts` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
