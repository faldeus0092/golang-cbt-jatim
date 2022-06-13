-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2022 at 10:47 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `processed_cbt_jatim_eas`
--
CREATE DATABASE IF NOT EXISTS `processed_cbt_jatim_eas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `processed_cbt_jatim_eas`;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_bangkalan`
--

DROP TABLE IF EXISTS `nilai_kab_bangkalan`;
CREATE TABLE IF NOT EXISTS `nilai_kab_bangkalan` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_banyuwangi`
--

DROP TABLE IF EXISTS `nilai_kab_banyuwangi`;
CREATE TABLE IF NOT EXISTS `nilai_kab_banyuwangi` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_blitar`
--

DROP TABLE IF EXISTS `nilai_kab_blitar`;
CREATE TABLE IF NOT EXISTS `nilai_kab_blitar` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_bojonegoro`
--

DROP TABLE IF EXISTS `nilai_kab_bojonegoro`;
CREATE TABLE IF NOT EXISTS `nilai_kab_bojonegoro` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_bondowoso`
--

DROP TABLE IF EXISTS `nilai_kab_bondowoso`;
CREATE TABLE IF NOT EXISTS `nilai_kab_bondowoso` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_gresik`
--

DROP TABLE IF EXISTS `nilai_kab_gresik`;
CREATE TABLE IF NOT EXISTS `nilai_kab_gresik` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_jember`
--

DROP TABLE IF EXISTS `nilai_kab_jember`;
CREATE TABLE IF NOT EXISTS `nilai_kab_jember` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_jombang`
--

DROP TABLE IF EXISTS `nilai_kab_jombang`;
CREATE TABLE IF NOT EXISTS `nilai_kab_jombang` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_kediri`
--

DROP TABLE IF EXISTS `nilai_kab_kediri`;
CREATE TABLE IF NOT EXISTS `nilai_kab_kediri` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_lamongan`
--

DROP TABLE IF EXISTS `nilai_kab_lamongan`;
CREATE TABLE IF NOT EXISTS `nilai_kab_lamongan` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_lumajang`
--

DROP TABLE IF EXISTS `nilai_kab_lumajang`;
CREATE TABLE IF NOT EXISTS `nilai_kab_lumajang` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_madiun`
--

DROP TABLE IF EXISTS `nilai_kab_madiun`;
CREATE TABLE IF NOT EXISTS `nilai_kab_madiun` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_magetan`
--

DROP TABLE IF EXISTS `nilai_kab_magetan`;
CREATE TABLE IF NOT EXISTS `nilai_kab_magetan` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_malang`
--

DROP TABLE IF EXISTS `nilai_kab_malang`;
CREATE TABLE IF NOT EXISTS `nilai_kab_malang` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_mojokerto`
--

DROP TABLE IF EXISTS `nilai_kab_mojokerto`;
CREATE TABLE IF NOT EXISTS `nilai_kab_mojokerto` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_nganjuk`
--

DROP TABLE IF EXISTS `nilai_kab_nganjuk`;
CREATE TABLE IF NOT EXISTS `nilai_kab_nganjuk` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_ngawi`
--

DROP TABLE IF EXISTS `nilai_kab_ngawi`;
CREATE TABLE IF NOT EXISTS `nilai_kab_ngawi` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_pacitan`
--

DROP TABLE IF EXISTS `nilai_kab_pacitan`;
CREATE TABLE IF NOT EXISTS `nilai_kab_pacitan` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_pamekasan`
--

DROP TABLE IF EXISTS `nilai_kab_pamekasan`;
CREATE TABLE IF NOT EXISTS `nilai_kab_pamekasan` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_pasuruan`
--

DROP TABLE IF EXISTS `nilai_kab_pasuruan`;
CREATE TABLE IF NOT EXISTS `nilai_kab_pasuruan` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_ponorogo`
--

DROP TABLE IF EXISTS `nilai_kab_ponorogo`;
CREATE TABLE IF NOT EXISTS `nilai_kab_ponorogo` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_probolinggo`
--

DROP TABLE IF EXISTS `nilai_kab_probolinggo`;
CREATE TABLE IF NOT EXISTS `nilai_kab_probolinggo` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_sampang`
--

DROP TABLE IF EXISTS `nilai_kab_sampang`;
CREATE TABLE IF NOT EXISTS `nilai_kab_sampang` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_sidoarjo`
--

DROP TABLE IF EXISTS `nilai_kab_sidoarjo`;
CREATE TABLE IF NOT EXISTS `nilai_kab_sidoarjo` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_situbondo`
--

DROP TABLE IF EXISTS `nilai_kab_situbondo`;
CREATE TABLE IF NOT EXISTS `nilai_kab_situbondo` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_sumenep`
--

DROP TABLE IF EXISTS `nilai_kab_sumenep`;
CREATE TABLE IF NOT EXISTS `nilai_kab_sumenep` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_trenggalek`
--

DROP TABLE IF EXISTS `nilai_kab_trenggalek`;
CREATE TABLE IF NOT EXISTS `nilai_kab_trenggalek` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_tuban`
--

DROP TABLE IF EXISTS `nilai_kab_tuban`;
CREATE TABLE IF NOT EXISTS `nilai_kab_tuban` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kab_tulungagung`
--

DROP TABLE IF EXISTS `nilai_kab_tulungagung`;
CREATE TABLE IF NOT EXISTS `nilai_kab_tulungagung` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kota_batu`
--

DROP TABLE IF EXISTS `nilai_kota_batu`;
CREATE TABLE IF NOT EXISTS `nilai_kota_batu` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kota_blitar`
--

DROP TABLE IF EXISTS `nilai_kota_blitar`;
CREATE TABLE IF NOT EXISTS `nilai_kota_blitar` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kota_kediri`
--

DROP TABLE IF EXISTS `nilai_kota_kediri`;
CREATE TABLE IF NOT EXISTS `nilai_kota_kediri` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kota_madiun`
--

DROP TABLE IF EXISTS `nilai_kota_madiun`;
CREATE TABLE IF NOT EXISTS `nilai_kota_madiun` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kota_malang`
--

DROP TABLE IF EXISTS `nilai_kota_malang`;
CREATE TABLE IF NOT EXISTS `nilai_kota_malang` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kota_mojokerto`
--

DROP TABLE IF EXISTS `nilai_kota_mojokerto`;
CREATE TABLE IF NOT EXISTS `nilai_kota_mojokerto` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kota_pasuruan`
--

DROP TABLE IF EXISTS `nilai_kota_pasuruan`;
CREATE TABLE IF NOT EXISTS `nilai_kota_pasuruan` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kota_probolinggo`
--

DROP TABLE IF EXISTS `nilai_kota_probolinggo`;
CREATE TABLE IF NOT EXISTS `nilai_kota_probolinggo` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kota_surabaya`
--

DROP TABLE IF EXISTS `nilai_kota_surabaya`;
CREATE TABLE IF NOT EXISTS `nilai_kota_surabaya` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `score` decimal(8,1) NOT NULL,
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
