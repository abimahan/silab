# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.35-MariaDB)
# Database: silab
# Generation Time: 2019-01-11 14:54:20 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table contents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contents`;

CREATE TABLE `contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(7) DEFAULT NULL,
  `updated_by` int(7) DEFAULT NULL,
  `deleted_by` int(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;

INSERT INTO `contents` (`id`, `section`, `content`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`)
VALUES
	(1,'site-name','SiLab',NULL,NULL,NULL,NULL,NULL,NULL),
	(2,'site-logo','assets/newassets/images/site-logo.png',NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dosen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dosen`;

CREATE TABLE `dosen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `dosen` WRITE;
/*!40000 ALTER TABLE `dosen` DISABLE KEYS */;

INSERT INTO `dosen` (`id`, `id_user`, `nip`, `alamat`, `email`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`)
VALUES
	(1,5,'1348943589784','Jl. HR. Hardijanto No. 6','dosen@mail.com','2018-12-29 10:35:47','2018-12-29 10:39:48',NULL,3,3,0),
	(2,6,'2347652343274','Jl. HR. Hardijanto No.6','sukaryo@mail.com','2018-12-29 10:41:29','2018-12-29 10:41:34','2018-12-29 10:41:34',3,0,3),
	(3,11,'2376452341251','Jl. Dosen','dosen2@mail.com','2019-01-03 15:55:38','2019-01-03 15:55:38',NULL,3,0,0);

/*!40000 ALTER TABLE `dosen` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hari
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hari`;

CREATE TABLE `hari` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hari` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `hari` WRITE;
/*!40000 ALTER TABLE `hari` DISABLE KEYS */;

INSERT INTO `hari` (`id`, `hari`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`)
VALUES
	(1,'Senin','2018-12-29 09:44:46','2018-12-29 09:44:46',NULL,3,0,0),
	(2,'Selasa','2018-12-29 09:44:50','2018-12-29 09:44:50',NULL,3,0,0),
	(3,'Rabu','2018-12-29 09:44:55','2018-12-29 09:44:55',NULL,3,0,0),
	(4,'Kamis','2018-12-29 09:44:58','2018-12-29 09:44:58',NULL,3,0,0),
	(5,'Jumat','2018-12-29 09:45:04','2018-12-29 09:45:04',NULL,3,0,0);

/*!40000 ALTER TABLE `hari` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table kalab
# ------------------------------------------------------------

DROP TABLE IF EXISTS `kalab`;

CREATE TABLE `kalab` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `kalab` WRITE;
/*!40000 ALTER TABLE `kalab` DISABLE KEYS */;

INSERT INTO `kalab` (`id`, `id_user`, `nip`, `alamat`, `email`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`)
VALUES
	(1,7,'32524121653214524','Jl. HR. Hardijanto No.5','kalab@mail.com','2018-12-29 11:01:59','2018-12-29 11:01:59',NULL,3,0,0),
	(2,8,'12124523432654254','Jl. Kolonel','kalab2@mail.com','2018-12-29 11:02:37','2018-12-29 11:03:00',NULL,3,3,3);

/*!40000 ALTER TABLE `kalab` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table laboratorium
# ------------------------------------------------------------

DROP TABLE IF EXISTS `laboratorium`;

CREATE TABLE `laboratorium` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user_kepala` int(11) NOT NULL,
  `laboratorium` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maks_peserta` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `laboratorium` WRITE;
/*!40000 ALTER TABLE `laboratorium` DISABLE KEYS */;

INSERT INTO `laboratorium` (`id`, `id_user_kepala`, `laboratorium`, `lokasi`, `maks_peserta`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`)
VALUES
	(1,7,'Lab. Multimedia 1','Gedung IT Lt. 1',51,'2018-12-29 13:28:39','2018-12-29 13:30:13',NULL,3,3,0),
	(2,8,'Lab. Multimedia 2','Gedung IT Lt. 2',55,'2018-12-29 13:29:13','2018-12-29 13:29:13',NULL,3,0,0);

/*!40000 ALTER TABLE `laboratorium` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table levels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `levels`;

CREATE TABLE `levels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(7) DEFAULT NULL,
  `updated_by` int(7) DEFAULT NULL,
  `deleted_by` int(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;

INSERT INTO `levels` (`id`, `level`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`)
VALUES
	(1,'Root','2018-03-08 00:00:00',NULL,NULL,1,NULL,NULL),
	(2,'Admin','2018-03-08 00:00:00',NULL,NULL,1,NULL,NULL),
	(3,'Kalab','2018-12-29 10:10:21','2018-12-29 10:10:21',NULL,3,NULL,NULL),
	(4,'Dosen','2018-12-29 10:10:25','2018-12-29 10:10:25',NULL,3,NULL,NULL),
	(5,'Mahasiswa','2018-12-29 10:10:28','2018-12-29 10:10:28',NULL,3,NULL,NULL);

/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `nama_tabel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_objek` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aktivitas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kalimat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;

INSERT INTO `log` (`id`, `id_user`, `nama_tabel`, `id_objek`, `aktivitas`, `kalimat`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`)
VALUES
	(1,3,NULL,NULL,'Menambah Submenu User Levels.',NULL,'2018-04-21 22:43:02','2018-04-21 22:43:02',NULL,3,NULL,NULL),
	(2,3,NULL,NULL,'Menambah Submenu User Levels.',NULL,'2018-04-21 22:43:17','2018-04-21 22:43:17',NULL,3,NULL,NULL),
	(3,3,NULL,NULL,'Menambah Submenu Application Menus.',NULL,'2018-04-21 22:43:27','2018-04-21 22:43:27',NULL,3,NULL,NULL),
	(4,3,NULL,NULL,'Menambah Submenu Logs.',NULL,'2018-04-21 22:43:55','2018-04-21 22:43:55',NULL,3,NULL,NULL),
	(5,3,NULL,NULL,'Menghapus Menu Trash.',NULL,'2018-05-24 08:28:56','2018-05-24 08:28:56',NULL,3,NULL,NULL),
	(6,3,NULL,NULL,'Menambah Menu Trash.',NULL,'2018-05-24 08:29:32','2018-05-24 08:29:32',NULL,3,NULL,NULL),
	(7,3,NULL,NULL,'Menghapus Menu Trash.',NULL,'2018-05-24 08:34:54','2018-05-24 08:34:54',NULL,3,NULL,NULL),
	(8,3,NULL,NULL,'Menambah Menu Trash.',NULL,'2018-05-24 08:35:21','2018-05-24 08:35:21',NULL,3,NULL,NULL),
	(9,3,NULL,NULL,'Menghapus Menu Trash.',NULL,'2018-05-24 08:57:26','2018-05-24 08:57:26',NULL,3,NULL,NULL),
	(10,3,NULL,NULL,'Menambah Submenu Tipe Kehadiran.',NULL,'2018-12-29 09:13:25','2018-12-29 09:13:25',NULL,3,NULL,NULL),
	(11,3,NULL,NULL,'Menambah Submenu Hari.',NULL,'2018-12-29 09:31:03','2018-12-29 09:31:03',NULL,3,NULL,NULL),
	(12,3,NULL,NULL,'Menambah Tipe Kehadiran.',NULL,'2018-12-29 09:32:55','2018-12-29 09:32:55',NULL,3,NULL,NULL),
	(13,3,NULL,NULL,'Menambah Hari.',NULL,'2018-12-29 09:44:46','2018-12-29 09:44:46',NULL,3,NULL,NULL),
	(14,3,NULL,NULL,'Menambah Hari.',NULL,'2018-12-29 09:44:50','2018-12-29 09:44:50',NULL,3,NULL,NULL),
	(15,3,NULL,NULL,'Menambah Hari.',NULL,'2018-12-29 09:44:55','2018-12-29 09:44:55',NULL,3,NULL,NULL),
	(16,3,NULL,NULL,'Menambah Hari.',NULL,'2018-12-29 09:44:58','2018-12-29 09:44:58',NULL,3,NULL,NULL),
	(17,3,NULL,NULL,'Menambah Hari.',NULL,'2018-12-29 09:45:04','2018-12-29 09:45:04',NULL,3,NULL,NULL),
	(18,3,NULL,NULL,'Menambah User Level: Kalab',NULL,'2018-12-29 10:10:21','2018-12-29 10:10:21',NULL,3,NULL,NULL),
	(19,3,NULL,NULL,'Menambah User Level: Dosen',NULL,'2018-12-29 10:10:25','2018-12-29 10:10:25',NULL,3,NULL,NULL),
	(20,3,NULL,NULL,'Menambah User Level: Mahasiswa',NULL,'2018-12-29 10:10:28','2018-12-29 10:10:28',NULL,3,NULL,NULL),
	(21,3,NULL,NULL,'Menambah Menu Dosen.',NULL,'2018-12-29 10:29:17','2018-12-29 10:29:17',NULL,3,NULL,NULL),
	(22,3,NULL,NULL,'Menambah Dosen.',NULL,'2018-12-29 10:35:47','2018-12-29 10:35:47',NULL,3,NULL,NULL),
	(23,3,NULL,NULL,'Mengubah Dosen.',NULL,'2018-12-29 10:39:48','2018-12-29 10:39:48',NULL,3,NULL,NULL),
	(24,3,NULL,NULL,'Menambah Dosen.',NULL,'2018-12-29 10:41:29','2018-12-29 10:41:29',NULL,3,NULL,NULL),
	(25,3,NULL,NULL,'Menghapus Dosen.',NULL,'2018-12-29 10:41:34','2018-12-29 10:41:34',NULL,3,NULL,NULL),
	(26,3,NULL,NULL,'Menambah Menu Kepala Laboratorium.',NULL,'2018-12-29 10:57:21','2018-12-29 10:57:21',NULL,3,NULL,NULL),
	(27,3,NULL,NULL,'Menambah Kalab.',NULL,'2018-12-29 11:01:59','2018-12-29 11:01:59',NULL,3,NULL,NULL),
	(28,3,NULL,NULL,'Menambah Kalab.',NULL,'2018-12-29 11:02:37','2018-12-29 11:02:37',NULL,3,NULL,NULL),
	(29,3,NULL,NULL,'Mengubah Kalab.',NULL,'2018-12-29 11:02:44','2018-12-29 11:02:44',NULL,3,NULL,NULL),
	(30,3,NULL,NULL,'Menghapus Kalab.',NULL,'2018-12-29 11:03:00','2018-12-29 11:03:00',NULL,3,NULL,NULL),
	(31,3,NULL,NULL,'Menambah Menu Mahasiswa.',NULL,'2018-12-29 11:15:45','2018-12-29 11:15:45',NULL,3,NULL,NULL),
	(32,3,NULL,NULL,'Menambah Mahasiswa.',NULL,'2018-12-29 11:17:04','2018-12-29 11:17:04',NULL,3,NULL,NULL),
	(33,3,NULL,NULL,'Menambah Mahasiswa.',NULL,'2018-12-29 11:18:05','2018-12-29 11:18:05',NULL,3,NULL,NULL),
	(34,3,NULL,NULL,'Menambah Menu Laboratorium.',NULL,'2018-12-29 13:25:32','2018-12-29 13:25:32',NULL,3,NULL,NULL),
	(35,3,NULL,NULL,'Menambah Laboratorium.',NULL,'2018-12-29 13:28:39','2018-12-29 13:28:39',NULL,3,NULL,NULL),
	(36,3,NULL,NULL,'Menambah Laboratorium.',NULL,'2018-12-29 13:29:13','2018-12-29 13:29:13',NULL,3,NULL,NULL),
	(37,3,NULL,NULL,'Mengubah Laboratorium.',NULL,'2018-12-29 13:30:07','2018-12-29 13:30:07',NULL,3,NULL,NULL),
	(38,3,NULL,NULL,'Mengubah Laboratorium.',NULL,'2018-12-29 13:30:13','2018-12-29 13:30:13',NULL,3,NULL,NULL),
	(39,3,NULL,NULL,'Menambah Menu Praktikum.',NULL,'2019-01-02 08:19:41','2019-01-02 08:19:41',NULL,3,NULL,NULL),
	(40,3,NULL,NULL,'Menambah Menu Praktikum.',NULL,'2019-01-02 08:19:48','2019-01-02 08:19:48',NULL,3,NULL,NULL),
	(41,3,NULL,NULL,'Menambah Praktikum.',NULL,'2019-01-03 15:45:07','2019-01-03 15:45:07',NULL,3,NULL,NULL),
	(42,3,NULL,NULL,'Menambah Praktikum.',NULL,'2019-01-03 15:47:36','2019-01-03 15:47:36',NULL,3,NULL,NULL),
	(43,3,NULL,NULL,'Menambah Praktikum.',NULL,'2019-01-03 15:54:28','2019-01-03 15:54:28',NULL,3,NULL,NULL),
	(44,3,NULL,NULL,'Menambah Dosen.',NULL,'2019-01-03 15:55:38','2019-01-03 15:55:38',NULL,3,NULL,NULL),
	(45,3,NULL,NULL,'Menambah Praktikum.',NULL,'2019-01-03 15:59:49','2019-01-03 15:59:49',NULL,3,NULL,NULL),
	(46,3,NULL,NULL,'Mengubah Praktikum.',NULL,'2019-01-03 16:04:18','2019-01-03 16:04:18',NULL,3,NULL,NULL),
	(47,3,NULL,NULL,'Menambah Submenu Praktikum Aktif.',NULL,'2019-01-10 10:08:21','2019-01-10 10:08:21',NULL,3,NULL,NULL),
	(48,3,NULL,NULL,'Menambah Submenu Praktikum Aktif.',NULL,'2019-01-10 10:11:45','2019-01-10 10:11:45',NULL,3,NULL,NULL),
	(49,3,NULL,NULL,'Menambah Submenu Praktikum Non Aktif.',NULL,'2019-01-10 10:14:05','2019-01-10 10:14:05',NULL,3,NULL,NULL),
	(50,3,NULL,NULL,'Menonaktifkan Praktikum.',NULL,'2019-01-10 10:26:32','2019-01-10 10:26:32',NULL,3,NULL,NULL),
	(51,3,NULL,NULL,'Menonaktifkan Praktikum.',NULL,'2019-01-10 10:46:05','2019-01-10 10:46:05',NULL,3,NULL,NULL),
	(52,3,NULL,NULL,'Mengubah status Pendaftaran Praktikum.',NULL,'2019-01-10 10:56:31','2019-01-10 10:56:31',NULL,3,NULL,NULL),
	(53,3,NULL,NULL,'Mengubah status Pendaftaran Praktikum.',NULL,'2019-01-10 10:58:10','2019-01-10 10:58:10',NULL,3,NULL,NULL),
	(54,3,NULL,NULL,'Mengubah status Pendaftaran Praktikum.',NULL,'2019-01-10 11:01:41','2019-01-10 11:01:41',NULL,3,NULL,NULL),
	(55,3,NULL,NULL,'Mengubah status Pendaftaran Praktikum.',NULL,'2019-01-10 11:01:43','2019-01-10 11:01:43',NULL,3,NULL,NULL),
	(56,3,NULL,NULL,'Mengubah status Pendaftaran Praktikum.',NULL,'2019-01-10 11:01:45','2019-01-10 11:01:45',NULL,3,NULL,NULL),
	(57,3,NULL,NULL,'Mengaktifkan PraktikumNonaktif.',NULL,'2019-01-10 11:10:43','2019-01-10 11:10:43',NULL,3,NULL,NULL),
	(58,3,NULL,NULL,'Menambah Menu Pendaftaran Praktikum.',NULL,'2019-01-10 11:56:24','2019-01-10 11:56:24',NULL,3,NULL,NULL),
	(59,9,NULL,NULL,'Mendaftar Pendaftaran Praktikum.',NULL,'2019-01-10 12:15:28','2019-01-10 12:15:28',NULL,9,NULL,NULL),
	(60,10,NULL,NULL,'Mendaftar Pendaftaran Praktikum.',NULL,'2019-01-10 12:16:45','2019-01-10 12:16:45',NULL,10,NULL,NULL),
	(61,10,NULL,NULL,'Membatalkan Pendaftaran Praktikum.',NULL,'2019-01-10 12:16:49','2019-01-10 12:16:49',NULL,10,NULL,NULL),
	(62,10,NULL,NULL,'Mendaftar Pendaftaran Praktikum.',NULL,'2019-01-10 12:16:53','2019-01-10 12:16:53',NULL,10,NULL,NULL),
	(63,3,NULL,NULL,'Mengubah status Pendaftaran Praktikum Aktif.',NULL,'2019-01-11 07:14:41','2019-01-11 07:14:41',NULL,3,NULL,NULL),
	(64,3,NULL,NULL,'Mengubah status Pendaftaran Praktikum Aktif.',NULL,'2019-01-11 07:14:45','2019-01-11 07:14:45',NULL,3,NULL,NULL),
	(65,9,NULL,NULL,'Mendaftar Pendaftaran Praktikum.',NULL,'2019-01-11 07:22:52','2019-01-11 07:22:52',NULL,9,NULL,NULL),
	(66,3,NULL,NULL,'Menambah Menu Praktikum Dosen.',NULL,'2019-01-11 07:29:21','2019-01-11 07:29:21',NULL,3,NULL,NULL),
	(67,3,NULL,NULL,'Menambah Submenu Praktikum Aktif.',NULL,'2019-01-11 07:29:43','2019-01-11 07:29:43',NULL,3,NULL,NULL),
	(68,5,NULL,NULL,'Mengaktifkan Praktikum Dosen.',NULL,'2019-01-11 07:42:39','2019-01-11 07:42:39',NULL,5,NULL,NULL),
	(69,3,NULL,NULL,'Menambah Submenu Praktikum Nonaktif.',NULL,'2019-01-11 07:49:42','2019-01-11 07:49:42',NULL,3,NULL,NULL),
	(70,3,NULL,NULL,'Mengubah status Pendaftaran Praktikum Aktif.',NULL,'2019-01-11 07:57:24','2019-01-11 07:57:24',NULL,3,NULL,NULL),
	(71,3,NULL,NULL,'Mengubah status Pendaftaran Praktikum Aktif.',NULL,'2019-01-11 09:00:47','2019-01-11 09:00:47',NULL,3,NULL,NULL),
	(72,3,NULL,NULL,'Mengubah status Pendaftaran Praktikum Aktif.',NULL,'2019-01-11 09:00:51','2019-01-11 09:00:51',NULL,3,NULL,NULL),
	(73,3,NULL,NULL,'Menghapus Menu Praktikum Dosen.',NULL,'2019-01-11 09:33:53','2019-01-11 09:33:53',NULL,3,NULL,NULL),
	(74,5,NULL,NULL,'Menambah Presensi Praktikum.',NULL,'2019-01-11 13:41:03','2019-01-11 13:41:03',NULL,5,NULL,NULL),
	(75,5,NULL,NULL,'Menambah Presensi Praktikum.',NULL,'2019-01-11 13:56:10','2019-01-11 13:56:10',NULL,5,NULL,NULL),
	(76,5,NULL,NULL,'Menambah Praktikum Aktif.',NULL,'2019-01-11 21:24:00','2019-01-11 21:24:00',NULL,5,NULL,NULL),
	(77,3,NULL,NULL,'Menonaktifkan Praktikum Aktif.',NULL,'2019-01-11 21:37:35','2019-01-11 21:37:35',NULL,3,NULL,NULL),
	(78,3,NULL,NULL,'Mengaktifkan PraktikumNonaktif.',NULL,'2019-01-11 21:38:28','2019-01-11 21:38:28',NULL,3,NULL,NULL),
	(79,3,NULL,NULL,'Menambah Menu Jadwal Praktikum.',NULL,'2019-01-11 21:50:07','2019-01-11 21:50:07',NULL,3,NULL,NULL),
	(80,3,NULL,NULL,'Menonaktifkan Praktikum Aktif.',NULL,'2019-01-11 21:53:39','2019-01-11 21:53:39',NULL,3,NULL,NULL),
	(81,3,NULL,NULL,'Mengaktifkan PraktikumNonaktif.',NULL,'2019-01-11 21:53:59','2019-01-11 21:53:59',NULL,3,NULL,NULL);

/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mahasiswa
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mahasiswa`;

CREATE TABLE `mahasiswa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `nim` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;

INSERT INTO `mahasiswa` (`id`, `id_user`, `nim`, `alamat`, `email`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`)
VALUES
	(1,9,'4611414043','Jl. HR. Hardijanto No. 7','mahasiswa@mail.com','2018-12-29 11:17:04','2018-12-29 11:17:04',NULL,3,0,0),
	(2,10,'4611414042','Jl. HR Hardijanto','mahasiswa2@mail.com','2018-12-29 11:18:05','2018-12-29 11:18:05',NULL,3,0,0);

/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `routing` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `menu`, `route`, `routing`, `icon`, `urutan`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`)
VALUES
	(1,'Dashboard','dashboard','dashboard.read','fa-dashboard',1,'2018-04-18 00:00:00',NULL,NULL,NULL,NULL,NULL),
	(2,'Users','users','users.read','fa-users',2,'2018-04-18 00:00:00',NULL,NULL,NULL,NULL,NULL),
	(3,'Application Config','configs','configs.read','fa-th',5,'2018-04-18 00:00:00',NULL,NULL,NULL,NULL,NULL),
	(4,'Profil','profile','profile.read','fa-user-circle',6,'2018-01-16 00:00:00',NULL,NULL,NULL,NULL,NULL),
	(5,'Log','log','log.read','fa-terminal',7,'2018-01-16 00:00:00',NULL,NULL,NULL,NULL,NULL),
	(6,'Trash','trash','trash.read','fa-trash',90,'2018-05-24 08:27:52','2018-05-24 08:28:55','2018-05-24 08:28:55',3,NULL,3),
	(7,'Trash','trash','trash.read','fa-trash',90,'2018-05-24 08:29:32','2018-05-24 08:34:54','2018-05-24 08:34:54',3,NULL,3),
	(8,'Trash','trash','trash.read','fa-trash',90,'2018-05-24 08:35:21','2018-05-24 08:57:26','2018-05-24 08:57:26',3,NULL,3),
	(9,'Dosen','dosen','dosen.read','fa-graduation-cap',7,'2018-12-29 10:29:17','2018-12-29 10:29:17',NULL,3,NULL,NULL),
	(10,'Kepala Laboratorium','kalab','kalab.read','fa-user-circle-o',8,'2018-12-29 10:57:21','2018-12-29 10:57:21',NULL,3,NULL,NULL),
	(11,'Mahasiswa','mahasiswa','mahasiswa.read','fa-users',9,'2018-12-29 11:15:45','2018-12-29 11:15:45',NULL,3,NULL,NULL),
	(12,'Laboratorium','laboratorium','laboratorium.read','fa-building-o',10,'2018-12-29 13:25:32','2018-12-29 13:25:32',NULL,3,NULL,NULL),
	(13,'Praktikum','praktikum','praktikum.read','fa-language',11,'2019-01-02 08:19:41','2019-01-02 08:19:48',NULL,3,3,NULL),
	(14,'Pendaftaran Praktikum','pendaftaranpraktikum','pendaftaranpraktikum.read','fa-sign-in',12,'2019-01-10 11:56:24','2019-01-10 11:56:24',NULL,3,NULL,NULL),
	(15,'Praktikum Dosen','praktikumdosen','praktikumdosen.read','fa-language',13,'2019-01-11 07:29:21','2019-01-11 09:33:53','2019-01-11 09:33:53',3,NULL,3),
	(16,'Jadwal Praktikum','jadwalpraktikum','jadwalpraktikum.read','fa-calendar',13,'2019-01-11 21:50:07','2019-01-11 21:50:07',NULL,3,NULL,NULL);

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2018_01_11_080123_create_menus_table',1),
	(4,'2018_01_11_081038_create_previleges_table',1),
	(5,'2018_01_11_081301_create_levels_table',1),
	(6,'2018_01_11_082649_create_user_levels_table',1),
	(7,'2018_01_11_091032_create_contents_table',1),
	(8,'2018_01_11_092154_add_column_to_users_table',1),
	(9,'2018_01_11_094545_add_soft_delete_to_users_table',1),
	(10,'2018_01_11_141306_create_submenus_table',1),
	(11,'2018_01_11_141844_add_column_to_submenus_table',1),
	(19,'2018_01_16_072632_create_submissions_table',2),
	(20,'2018_01_16_072735_create_abstract_reviews_table',2),
	(21,'2018_01_16_072810_create_publication_types_table',2),
	(22,'2018_01_16_072948_create_prices_table',2),
	(23,'2018_01_16_073018_create_scopes_table',2),
	(24,'2018_01_16_073050_create_countries_table',2),
	(25,'2018_01_16_073600_create_payments_table',2),
	(26,'2018_01_17_051942_create_status_table',3),
	(27,'2018_01_17_052837_create_full_paper_reviews_table',4),
	(28,'2018_01_17_055822_add_class_to_status_table',4),
	(29,'2018_01_17_065603_create_author_submission_update_table',4),
	(30,'2018_01_17_070247_create_reviewer_submission_review_table',4),
	(31,'2018_03_07_043346_create_log_table',5),
	(32,'2018_03_07_043535_create_masuk_table',5),
	(33,'2018_03_07_043619_create_keluar_table',5),
	(34,'2018_03_07_043731_create_barang_table',5),
	(35,'2018_03_07_043856_create_agen_table',5),
	(36,'2018_03_07_043935_create_status_keluar_table',5),
	(37,'2018_03_07_044025_create_satuan_table',5),
	(38,'2018_03_07_044109_create_kategori_agen_table',5),
	(39,'2018_03_26_142643_create_jalur_table',6),
	(40,'2018_04_01_093147_create_keuangan_table',7),
	(41,'2018_12_29_084416_create_laboratorium_table',8),
	(42,'2018_12_29_084428_create_kalab_table',8),
	(43,'2018_12_29_084434_create_dosen_table',8),
	(44,'2018_12_29_084440_create_hari_table',8),
	(45,'2018_12_29_084440_create_mahasiswa_table',8),
	(46,'2018_12_29_084451_create_praktikum_table',8),
	(47,'2018_12_29_084504_create_peserta_praktikum_table',8),
	(48,'2018_12_29_084513_create_pertemuan_table',8),
	(49,'2018_12_29_084520_create_tipe_kehadiran_table',8),
	(50,'2018_12_29_084523_create_presensi_praktikum_table',8),
	(51,'2018_12_29_084536_create_penilaian_praktikum_table',8),
	(52,'2018_12_29_084543_create_modul_table',8);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modul
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modul`;

CREATE TABLE `modul` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_praktikum` int(11) NOT NULL,
  `modul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;

INSERT INTO `password_resets` (`email`, `token`, `created_at`)
VALUES
	('admin@midnight-dev.com','$2y$10$WPFMN/CsSuueMQW6CCxZm.curzps5jqEH6SAXLEAicqZcSQwP0Z2y','2018-02-19 07:25:56');

/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nilai_praktikum
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nilai_praktikum`;

CREATE TABLE `nilai_praktikum` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_praktikum` int(11) NOT NULL,
  `id_user_mahasiswa` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `nilai_praktikum` WRITE;
/*!40000 ALTER TABLE `nilai_praktikum` DISABLE KEYS */;

INSERT INTO `nilai_praktikum` (`id`, `id_praktikum`, `id_user_mahasiswa`, `nilai`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`)
VALUES
	(1,1,9,87,'2019-01-11 21:24:00','2019-01-11 21:24:00',NULL,5,0,0),
	(2,1,10,86,'2019-01-11 21:24:00','2019-01-11 21:24:00',NULL,5,0,0);

/*!40000 ALTER TABLE `nilai_praktikum` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pertemuan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pertemuan`;

CREATE TABLE `pertemuan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_praktikum` int(11) NOT NULL,
  `waktu_pertemuan` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `pertemuan` WRITE;
/*!40000 ALTER TABLE `pertemuan` DISABLE KEYS */;

INSERT INTO `pertemuan` (`id`, `id_praktikum`, `waktu_pertemuan`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`)
VALUES
	(2,1,'2019-01-11 13:41:03','2019-01-11 13:41:03','2019-01-11 13:41:03',NULL,5,0,0),
	(3,1,'2019-01-11 13:56:10','2019-01-11 13:56:10','2019-01-11 13:56:10',NULL,5,0,0);

/*!40000 ALTER TABLE `pertemuan` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table peserta_praktikum
# ------------------------------------------------------------

DROP TABLE IF EXISTS `peserta_praktikum`;

CREATE TABLE `peserta_praktikum` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_praktikum` int(11) NOT NULL,
  `id_user_mahasiswa` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `peserta_praktikum` WRITE;
/*!40000 ALTER TABLE `peserta_praktikum` DISABLE KEYS */;

INSERT INTO `peserta_praktikum` (`id`, `id_praktikum`, `id_user_mahasiswa`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`)
VALUES
	(1,1,9,'2019-01-10 12:15:28','2019-01-10 12:15:28',NULL,0,0,0),
	(2,1,10,'2019-01-10 12:16:45','2019-01-10 12:16:49','2019-01-10 12:16:49',0,0,10),
	(3,1,10,'2019-01-10 12:16:53','2019-01-10 12:16:53',NULL,0,0,0),
	(4,2,9,'2019-01-11 07:22:52','2019-01-11 07:22:52',NULL,0,0,0);

/*!40000 ALTER TABLE `peserta_praktikum` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table praktikum
# ------------------------------------------------------------

DROP TABLE IF EXISTS `praktikum`;

CREATE TABLE `praktikum` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_laboratorium` int(11) NOT NULL,
  `id_user_dosen` int(11) NOT NULL,
  `id_hari` int(11) NOT NULL,
  `praktikum` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `is_pendaftaran` smallint(1) NOT NULL DEFAULT '1',
  `is_aktif` smallint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `praktikum` WRITE;
/*!40000 ALTER TABLE `praktikum` DISABLE KEYS */;

INSERT INTO `praktikum` (`id`, `id_laboratorium`, `id_user_dosen`, `id_hari`, `praktikum`, `waktu_mulai`, `waktu_selesai`, `is_pendaftaran`, `is_aktif`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`)
VALUES
	(1,1,5,1,'Praktikum Desain Grafis','07:00:00','09:00:00',0,1,'2019-01-03 15:45:07','2019-01-11 21:53:59',NULL,3,3,0),
	(2,1,5,1,'Praktikum Desain Manga','12:30:00','14:30:00',0,1,'2019-01-03 15:47:36','2019-01-11 07:42:39',NULL,3,5,0),
	(3,2,5,1,'Praktikum Desain Video','12:30:00','14:30:00',1,1,'2019-01-03 15:54:28','2019-01-10 11:01:45',NULL,3,3,0),
	(4,2,11,2,'Praktikum Desain Video','09:30:00','11:30:00',1,1,'2019-01-03 15:59:49','2019-01-10 11:01:43',NULL,3,3,0);

/*!40000 ALTER TABLE `praktikum` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table presensi_praktikum
# ------------------------------------------------------------

DROP TABLE IF EXISTS `presensi_praktikum`;

CREATE TABLE `presensi_praktikum` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pertemuan` int(11) NOT NULL,
  `id_user_mahasiswa` int(11) NOT NULL,
  `id_tipe_kehadiran` int(11) NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `presensi_praktikum` WRITE;
/*!40000 ALTER TABLE `presensi_praktikum` DISABLE KEYS */;

INSERT INTO `presensi_praktikum` (`id`, `id_pertemuan`, `id_user_mahasiswa`, `id_tipe_kehadiran`, `keterangan`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`)
VALUES
	(1,2,9,1,'-','2019-01-11 13:41:03','2019-01-11 13:41:03',NULL,5,0,0),
	(2,2,10,2,'Magh','2019-01-11 13:41:03','2019-01-11 13:41:03',NULL,5,0,0),
	(3,3,9,1,'-','2019-01-11 13:56:10','2019-01-11 13:56:10',NULL,5,0,0),
	(4,3,10,1,'-','2019-01-11 13:56:10','2019-01-11 13:56:10',NULL,5,0,0);

/*!40000 ALTER TABLE `presensi_praktikum` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table previleges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `previleges`;

CREATE TABLE `previleges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `create` int(11) NOT NULL DEFAULT '0',
  `read` int(11) NOT NULL DEFAULT '0',
  `update` int(11) NOT NULL DEFAULT '0',
  `delete` int(11) NOT NULL DEFAULT '0',
  `validate` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `previleges` WRITE;
/*!40000 ALTER TABLE `previleges` DISABLE KEYS */;

INSERT INTO `previleges` (`id`, `id_level`, `id_menu`, `create`, `read`, `update`, `delete`, `validate`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,1,1,1,1,1,1,1,NULL,'2018-04-13 20:47:55',NULL),
	(2,1,2,1,1,1,1,1,NULL,'2018-04-21 20:45:27',NULL),
	(3,1,3,1,1,1,1,1,NULL,NULL,NULL),
	(4,1,4,1,1,1,1,1,NULL,'2018-04-21 20:45:28',NULL),
	(5,1,5,1,1,1,1,1,NULL,NULL,NULL),
	(6,2,1,0,1,0,0,0,NULL,NULL,NULL),
	(7,2,2,0,1,0,0,0,NULL,NULL,NULL),
	(8,2,3,0,0,0,0,0,'2018-04-18 13:40:04','2018-04-18 13:40:04',NULL),
	(9,2,4,0,0,0,0,0,'2018-04-18 14:02:14','2018-04-18 14:02:37',NULL),
	(10,2,5,0,0,0,0,0,'2018-04-18 14:03:12','2018-04-18 14:03:12',NULL),
	(11,1,6,0,0,0,0,0,'2018-05-24 08:27:52','2018-05-24 08:28:55','2018-05-24 08:28:55'),
	(12,2,6,0,0,0,0,0,'2018-05-24 08:27:52','2018-05-24 08:28:55','2018-05-24 08:28:55'),
	(13,1,7,0,0,0,0,0,'2018-05-24 08:29:32','2018-05-24 08:34:54','2018-05-24 08:34:54'),
	(14,2,7,0,0,0,0,0,'2018-05-24 08:29:32','2018-05-24 08:34:54','2018-05-24 08:34:54'),
	(15,1,8,0,0,0,0,0,'2018-05-24 08:35:21','2018-05-24 08:57:26','2018-05-24 08:57:26'),
	(16,2,8,1,1,1,1,1,'2018-05-24 08:35:21','2018-05-24 08:57:26','2018-05-24 08:57:26'),
	(17,3,1,0,0,0,0,0,'2018-12-29 10:10:21','2018-12-29 10:10:21',NULL),
	(18,3,2,0,0,0,0,0,'2018-12-29 10:10:21','2018-12-29 10:10:21',NULL),
	(19,3,3,0,0,0,0,0,'2018-12-29 10:10:21','2018-12-29 10:10:21',NULL),
	(20,3,4,0,0,0,0,0,'2018-12-29 10:10:21','2018-12-29 10:10:21',NULL),
	(21,3,5,0,0,0,0,0,'2018-12-29 10:10:21','2018-12-29 10:10:21',NULL),
	(22,4,1,0,1,0,0,0,'2018-12-29 10:10:25','2019-01-11 07:39:59',NULL),
	(23,4,2,0,0,0,0,0,'2018-12-29 10:10:25','2019-01-11 07:40:01',NULL),
	(24,4,3,0,0,0,0,0,'2018-12-29 10:10:25','2019-01-11 07:40:03',NULL),
	(25,4,4,1,1,1,0,0,'2018-12-29 10:10:25','2019-01-11 07:40:08',NULL),
	(26,4,5,0,0,0,0,0,'2018-12-29 10:10:25','2018-12-29 10:10:25',NULL),
	(27,5,1,0,1,0,0,0,'2018-12-29 10:10:28','2019-01-10 11:56:55',NULL),
	(28,5,2,0,0,0,0,0,'2018-12-29 10:10:28','2018-12-29 10:10:28',NULL),
	(29,5,3,0,0,0,0,0,'2018-12-29 10:10:28','2018-12-29 10:10:28',NULL),
	(30,5,4,0,1,1,0,0,'2018-12-29 10:10:28','2019-01-10 11:56:59',NULL),
	(31,5,5,0,0,0,0,0,'2018-12-29 10:10:28','2018-12-29 10:10:28',NULL),
	(32,1,9,1,1,1,1,0,'2018-12-29 10:29:17','2018-12-29 10:29:33',NULL),
	(33,2,9,0,0,0,0,0,'2018-12-29 10:29:17','2018-12-29 10:29:17',NULL),
	(34,3,9,0,0,0,0,0,'2018-12-29 10:29:17','2018-12-29 10:29:17',NULL),
	(35,4,9,0,0,0,0,0,'2018-12-29 10:29:17','2018-12-29 10:29:17',NULL),
	(36,5,9,0,0,0,0,0,'2018-12-29 10:29:17','2018-12-29 10:29:17',NULL),
	(37,1,10,1,1,1,1,0,'2018-12-29 10:57:21','2018-12-29 10:57:32',NULL),
	(38,2,10,0,0,0,0,0,'2018-12-29 10:57:21','2018-12-29 10:57:21',NULL),
	(39,3,10,0,0,0,0,0,'2018-12-29 10:57:21','2018-12-29 10:57:21',NULL),
	(40,4,10,0,0,0,0,0,'2018-12-29 10:57:21','2018-12-29 10:57:21',NULL),
	(41,5,10,0,0,0,0,0,'2018-12-29 10:57:21','2018-12-29 10:57:21',NULL),
	(42,1,11,1,1,1,1,0,'2018-12-29 11:15:45','2018-12-29 11:15:56',NULL),
	(43,2,11,0,0,0,0,0,'2018-12-29 11:15:45','2018-12-29 11:15:45',NULL),
	(44,3,11,0,0,0,0,0,'2018-12-29 11:15:45','2018-12-29 11:15:45',NULL),
	(45,4,11,0,0,0,0,0,'2018-12-29 11:15:45','2018-12-29 11:15:45',NULL),
	(46,5,11,0,0,0,0,0,'2018-12-29 11:15:45','2018-12-29 11:15:45',NULL),
	(47,1,12,1,1,1,1,0,'2018-12-29 13:25:32','2018-12-29 13:25:42',NULL),
	(48,2,12,0,0,0,0,0,'2018-12-29 13:25:32','2018-12-29 13:25:32',NULL),
	(49,3,12,0,0,0,0,0,'2018-12-29 13:25:32','2018-12-29 13:25:32',NULL),
	(50,4,12,0,0,0,0,0,'2018-12-29 13:25:32','2018-12-29 13:25:32',NULL),
	(51,5,12,0,0,0,0,0,'2018-12-29 13:25:32','2018-12-29 13:25:32',NULL),
	(52,1,13,1,1,1,1,1,'2019-01-02 08:19:41','2019-01-10 10:24:46',NULL),
	(53,2,13,0,0,0,0,0,'2019-01-02 08:19:41','2019-01-02 08:19:41',NULL),
	(54,3,13,0,0,0,0,0,'2019-01-02 08:19:41','2019-01-02 08:19:41',NULL),
	(55,4,13,0,1,1,0,0,'2019-01-02 08:19:41','2019-01-11 09:32:05',NULL),
	(56,5,13,0,0,0,0,0,'2019-01-02 08:19:41','2019-01-02 08:19:41',NULL),
	(57,1,14,0,0,0,0,0,'2019-01-10 11:56:24','2019-01-10 11:56:24',NULL),
	(58,2,14,0,0,0,0,0,'2019-01-10 11:56:24','2019-01-10 11:56:24',NULL),
	(59,3,14,0,0,0,0,0,'2019-01-10 11:56:24','2019-01-10 11:56:24',NULL),
	(60,4,14,0,0,0,0,0,'2019-01-10 11:56:24','2019-01-10 11:56:24',NULL),
	(61,5,14,1,1,0,0,0,'2019-01-10 11:56:24','2019-01-10 11:56:36',NULL),
	(62,1,15,0,0,0,0,0,'2019-01-11 07:29:21','2019-01-11 09:33:53','2019-01-11 09:33:53'),
	(63,2,15,0,0,0,0,0,'2019-01-11 07:29:21','2019-01-11 09:33:53','2019-01-11 09:33:53'),
	(64,3,15,0,0,0,0,0,'2019-01-11 07:29:21','2019-01-11 09:33:53','2019-01-11 09:33:53'),
	(65,4,15,1,1,1,1,1,'2019-01-11 07:29:21','2019-01-11 09:33:53','2019-01-11 09:33:53'),
	(66,5,15,0,0,0,0,0,'2019-01-11 07:29:21','2019-01-11 09:33:53','2019-01-11 09:33:53'),
	(67,1,16,0,0,0,0,0,'2019-01-11 21:50:07','2019-01-11 21:50:07',NULL),
	(68,2,16,0,0,0,0,0,'2019-01-11 21:50:07','2019-01-11 21:50:07',NULL),
	(69,3,16,0,0,0,0,0,'2019-01-11 21:50:07','2019-01-11 21:50:07',NULL),
	(70,4,16,0,0,0,0,0,'2019-01-11 21:50:07','2019-01-11 21:50:07',NULL),
	(71,5,16,0,1,0,0,0,'2019-01-11 21:50:07','2019-01-11 21:50:19',NULL);

/*!40000 ALTER TABLE `previleges` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table submenus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `submenus`;

CREATE TABLE `submenus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_menu` int(11) NOT NULL,
  `submenu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `routing` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `submenus` WRITE;
/*!40000 ALTER TABLE `submenus` DISABLE KEYS */;

INSERT INTO `submenus` (`id`, `id_menu`, `submenu`, `urutan`, `created_at`, `updated_at`, `routing`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`)
VALUES
	(1,3,'User Levels',1,'2018-04-18 00:00:00','2018-04-21 22:43:17','configs.level.read',NULL,NULL,3,NULL),
	(2,3,'User Privileges',2,'2018-04-18 00:00:00',NULL,'configs.privileges.read','2018-03-08 00:00:00',NULL,NULL,NULL),
	(3,3,'Application Menus',2,'2018-04-18 00:00:00','2018-04-21 22:43:26','configs.menu.read',NULL,NULL,3,NULL),
	(4,3,'Log Aktivitas',4,'2018-03-08 00:00:00',NULL,'configs.log.read','2018-04-09 00:00:00',NULL,NULL,NULL),
	(5,3,'Logs',3,'2018-04-21 22:43:55','2018-04-21 22:43:55','configs.logsss.read','2018-04-21 00:00:00',3,NULL,NULL),
	(6,3,'Tipe Kehadiran',3,'2018-12-29 09:13:25','2018-12-29 09:13:25','configs.tipe-kehadiran.read',NULL,3,NULL,NULL),
	(7,3,'Hari',4,'2018-12-29 09:31:03','2018-12-29 09:31:03','configs.hari.read',NULL,3,NULL,NULL),
	(8,13,'Praktikum Aktif',1,'2019-01-10 10:08:21','2019-01-10 10:11:45','praktikum.aktif.read',NULL,3,3,NULL),
	(9,13,'Praktikum Non Aktif',2,'2019-01-10 10:14:05','2019-01-10 10:14:05','praktikum.nonaktif.read',NULL,3,NULL,NULL),
	(10,15,'Praktikum Aktif',1,'2019-01-11 07:29:43','2019-01-11 07:29:43','praktikumdosen.read',NULL,3,NULL,NULL),
	(11,15,'Praktikum Nonaktif',2,'2019-01-11 07:49:42','2019-01-11 07:49:42','praktikumdosen.nonaktif.read',NULL,3,NULL,NULL);

/*!40000 ALTER TABLE `submenus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tipe_kehadiran
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tipe_kehadiran`;

CREATE TABLE `tipe_kehadiran` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tipe_kehadiran` WRITE;
/*!40000 ALTER TABLE `tipe_kehadiran` DISABLE KEYS */;

INSERT INTO `tipe_kehadiran` (`id`, `alias`, `tipe`, `class`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`)
VALUES
	(1,'H','Hadir','success','2018-12-29 09:32:55','2018-12-29 09:32:55',NULL,3,0,0),
	(2,'S','Sakit','warning','2018-09-16 15:49:59','2018-09-16 15:49:59',NULL,3,0,0),
	(3,'I','Izin','warning','2018-09-16 15:50:07','2018-09-16 15:50:07',NULL,3,0,0),
	(4,'A','Alpa','danger','2018-09-16 15:50:16','2018-09-16 15:50:16',NULL,3,0,0);

/*!40000 ALTER TABLE `tipe_kehadiran` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_levels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_levels`;

CREATE TABLE `user_levels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `user_levels` WRITE;
/*!40000 ALTER TABLE `user_levels` DISABLE KEYS */;

INSERT INTO `user_levels` (`id`, `id_user`, `id_level`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,1,1,NULL,'2018-03-08 19:06:17',NULL),
	(2,2,2,NULL,NULL,NULL),
	(3,3,1,'2018-04-11 21:28:31','2018-04-11 21:28:31',NULL),
	(4,3,2,'2018-04-11 21:28:31','2018-04-11 21:28:31',NULL),
	(5,5,4,'2018-12-29 10:35:47','2018-12-29 10:35:47',NULL),
	(6,6,4,'2018-12-29 10:41:29','2018-12-29 10:41:34','2018-12-29 10:41:34'),
	(7,7,3,'2018-12-29 11:01:59','2018-12-29 11:01:59',NULL),
	(8,8,3,'2018-12-29 11:02:37','2018-12-29 11:02:48',NULL),
	(9,9,5,'2018-12-29 11:17:04','2018-12-29 11:17:04',NULL),
	(10,10,5,'2018-12-29 11:18:05','2018-12-29 11:18:05',NULL),
	(11,11,4,'2019-01-03 15:55:38','2019-01-03 15:55:38',NULL);

/*!40000 ALTER TABLE `user_levels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `username`, `password`, `phone`, `remember_token`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Super Admin','superadmin','$2y$10$z/ZFg.YbOmI44Y8jaBlbf.YjYNOxhtuC6I5QA4wCMB9pjdoaAiBiS','0878304159299','VAlruFMXuB6IPwUIkL51c8xG9bncBc5H989LSCA54Oc4KCq9EWk1kRoYHOiR',NULL,'2018-04-02 13:49:15',NULL),
	(2,'Admin','admin','$2y$10$gO.4pRhcHxT1dWblk47RZO25JW/ueQayUUVKN5QdC2Su9VFgrWfVC','087830415543',NULL,NULL,NULL,NULL),
	(3,'Root','root','$2y$10$jJ7ZzvfEVGvZBz53ZSLrvObGxqyYfUXbawesrjZVYk8CaiJRZ07BO','081111111111','WUOxP2eZpkZdoUAdD8P1P5EhYJqQwUOXRbHK4TXrwteN1FIQRbMaDpDRIxtR','2018-04-11 21:28:31','2018-12-29 08:42:28',NULL),
	(5,'Dr. Dosen S.Pd., M.Pd.','dosen','$2y$10$e/f4D1r3VHPhaOlJu5MGyuIsOEHk1VYi7rG1ZJ8pa9AzBK6WMjmae','08123456789','Nbm1QvJ0AQmxlfhl6RNhx2KqRCoRuwjuArhNAZqKSsVn26olKwKOD6jqY8Wx','2018-12-29 10:35:47','2018-12-29 10:39:48',NULL),
	(6,'Sukaryo S.Pd.','sukaryo','$2y$10$SEpcoezNwvkhcPeNblW45u5/91sQVFxuynH91wVaE6tGDY9xvqJlS','081234567890',NULL,'2018-12-29 10:41:29','2018-12-29 10:41:34','2018-12-29 10:41:34'),
	(7,'Kalab S.Kom., M.Kom.','kalab','$2y$10$vgFp8Zt5IUTLaNsx33s09ewVTLqwEk423kQFd8aYS0JqlbfVxTx/S','081234567890',NULL,'2018-12-29 11:01:59','2018-12-29 11:01:59',NULL),
	(8,'Kalab 2 S.Pd., M.Kom.','kalab2','$2y$10$Ob3PCL/mlATCMXrZkhRyKuPGPgJLGDFYSG8QuE2I5q/VlLZB9dmiy','081234567890',NULL,'2018-12-29 11:02:37','2018-12-29 11:02:48',NULL),
	(9,'Mahasiswa','mahasiswa','$2y$10$VyfZi7iFA3cWJpDre0vT5uH6gW2ka9zLIrEaTi5wfGLVmyqJ92dCa','081234567890','sk1BWbGytCetYAseYZJ1lHT7h35yxTmUEtyzMhF6wYELFhNJxGqsVzpBWZzz','2018-12-29 11:17:04','2018-12-29 11:17:04',NULL),
	(10,'Mahasiswa 2','mahasiswa2','$2y$10$Y1MP16BB6HEIMqx/bYm/AOZSvBR4Wt/rQNHqrR9y1wN6FDNesmnmK','081234567890',NULL,'2018-12-29 11:18:05','2018-12-29 11:18:05',NULL),
	(11,'Prof. Dosen Grafis','dosen2','$2y$10$8XZXAJGlEvYLpa/.doJbq.m3Ky5KADnI7.Xplno79ZszSCNPdRWJ.','081234567890',NULL,'2019-01-03 15:55:38','2019-01-03 15:55:38',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
