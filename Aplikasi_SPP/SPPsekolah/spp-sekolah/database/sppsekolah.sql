-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2020 at 08:15 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_sppsekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(5) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `namalengkap` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `namalengkap`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Yuningsih,S.Pd'),
(3, 'operator', '20eabe5d64b0e216796e834f52d61fd0b70332fc', 'MUSOWWI'),
(4, 'operator', 'fe96dd39756ac41b74283a9292652d366d73931f', 'FARHATUN NUFUS');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `idguru` int(5) NOT NULL,
  `namaguru` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`idguru`, `namaguru`) VALUES
(1, 'Sulha, S.Pd'),
(2, 'Chairunnisa, S.Pd'),
(3, 'Nina Hasanah, S.Pd'),
(4, 'Ika Kartika, S.Pd'),
(5, 'M.Sulhan, S.Pd I'),
(6, 'Sulistianah, S.Pd'),
(7, 'Jalaludin, S.Pd, M.M'),
(8, 'Ahmad Ibrohim, S.Ag, M.M'),
(9, 'Hj.Umi Munfariqoh,S.Ag,M.M');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `idsiswa` int(10) NOT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `namasiswa` varchar(40) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `tahunajaran` varchar(10) DEFAULT NULL,
  `biaya` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`idsiswa`, `nis`, `namasiswa`, `kelas`, `tahunajaran`, `biaya`) VALUES
(43, '20201001', 'Adinda', 'VII A', '2020/2021', 70000),
(44, '20201002', 'Fahmi Idris', 'VII B', '2020/2021', 70000),
(45, '20201003', 'Cinta Ayu Aulia', 'VII C', '2020/2021', 70000),
(46, '20191001', 'Yayang Putri Raisa', 'VIII A', '2020/2021', 70000),
(47, '20191002', 'Dias Erlangga', 'VIII B', '2020/2021', 70000),
(48, '20191003', 'Anita Zahra', 'VIII C', '2020/2021', 70000),
(49, '20181001', 'Nabila Safitri', 'IX A', '2020/2021', 70000),
(50, '20181002', 'Asril Septian', 'IX B', '2020/2021', 70000),
(51, '20181003', 'Damayanti Fajriyah', 'IX A', '2020/2021', 70000);

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `idspp` int(5) NOT NULL,
  `idsiswa` int(10) DEFAULT NULL,
  `jatuhtempo` date DEFAULT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `nobayar` varchar(10) DEFAULT NULL,
  `tglbayar` date DEFAULT NULL,
  `jumlah` int(20) DEFAULT NULL,
  `ket` varchar(20) DEFAULT NULL,
  `idadmin` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`idspp`, `idsiswa`, `jatuhtempo`, `bulan`, `nobayar`, `tglbayar`, `jumlah`, `ket`, `idadmin`) VALUES
(241, 43, '2020-06-20', 'Juni  2020', '2012230001', '2020-12-23', 70000, 'LUNAS', 1),
(242, 43, '2020-07-20', 'Juli  2020', NULL, NULL, 70000, NULL, NULL),
(243, 43, '2020-08-20', 'Agustus  2020', NULL, NULL, 70000, NULL, NULL),
(244, 43, '2020-09-20', 'September  2020', NULL, NULL, 70000, NULL, NULL),
(245, 43, '2020-10-20', 'Oktober  2020', NULL, NULL, 70000, NULL, NULL),
(246, 43, '2020-11-20', 'November  2020', NULL, NULL, 70000, NULL, NULL),
(247, 43, '2020-12-20', 'Desember  2020', NULL, NULL, 70000, NULL, NULL),
(248, 43, '2021-01-20', 'januari  2021', NULL, NULL, 70000, NULL, NULL),
(249, 43, '2021-02-20', 'Februari  2021', NULL, NULL, 70000, NULL, NULL),
(250, 43, '2021-03-20', 'Maret  2021', NULL, NULL, 70000, NULL, NULL),
(251, 43, '2021-04-20', 'April  2021', NULL, NULL, 70000, NULL, NULL),
(252, 43, '2021-05-20', 'Mei  2021', NULL, NULL, 70000, NULL, NULL),
(253, 44, '2020-06-20', 'Juni  2020', NULL, NULL, 70000, NULL, NULL),
(254, 44, '2020-07-20', 'Juli  2020', NULL, NULL, 70000, NULL, NULL),
(255, 44, '2020-08-20', 'Agustus  2020', NULL, NULL, 70000, NULL, NULL),
(256, 44, '2020-09-20', 'September  2020', NULL, NULL, 70000, NULL, NULL),
(257, 44, '2020-10-20', 'Oktober  2020', NULL, NULL, 70000, NULL, NULL),
(258, 44, '2020-11-20', 'November  2020', NULL, NULL, 70000, NULL, NULL),
(259, 44, '2020-12-20', 'Desember  2020', NULL, NULL, 70000, NULL, NULL),
(260, 44, '2021-01-20', 'januari  2021', NULL, NULL, 70000, NULL, NULL),
(261, 44, '2021-02-20', 'Februari  2021', NULL, NULL, 70000, NULL, NULL),
(262, 44, '2021-03-20', 'Maret  2021', NULL, NULL, 70000, NULL, NULL),
(263, 44, '2021-04-20', 'April  2021', NULL, NULL, 70000, NULL, NULL),
(264, 44, '2021-05-20', 'Mei  2021', NULL, NULL, 70000, NULL, NULL),
(265, 45, '2020-06-20', 'Juni  2020', NULL, NULL, 70000, NULL, NULL),
(266, 45, '2020-07-20', 'Juli  2020', NULL, NULL, 70000, NULL, NULL),
(267, 45, '2020-08-20', 'Agustus  2020', NULL, NULL, 70000, NULL, NULL),
(268, 45, '2020-09-20', 'September  2020', NULL, NULL, 70000, NULL, NULL),
(269, 45, '2020-10-20', 'Oktober  2020', NULL, NULL, 70000, NULL, NULL),
(270, 45, '2020-11-20', 'November  2020', NULL, NULL, 70000, NULL, NULL),
(271, 45, '2020-12-20', 'Desember  2020', NULL, NULL, 70000, NULL, NULL),
(272, 45, '2021-01-20', 'januari  2021', NULL, NULL, 70000, NULL, NULL),
(273, 45, '2021-02-20', 'Februari  2021', NULL, NULL, 70000, NULL, NULL),
(274, 45, '2021-03-20', 'Maret  2021', NULL, NULL, 70000, NULL, NULL),
(275, 45, '2021-04-20', 'April  2021', NULL, NULL, 70000, NULL, NULL),
(276, 45, '2021-05-20', 'Mei  2021', NULL, NULL, 70000, NULL, NULL),
(277, 46, '2020-06-20', 'Juni  2020', NULL, NULL, 70000, NULL, NULL),
(278, 46, '2020-07-20', 'Juli  2020', NULL, NULL, 70000, NULL, NULL),
(279, 46, '2020-08-20', 'Agustus  2020', NULL, NULL, 70000, NULL, NULL),
(280, 46, '2020-09-20', 'September  2020', NULL, NULL, 70000, NULL, NULL),
(281, 46, '2020-10-20', 'Oktober  2020', NULL, NULL, 70000, NULL, NULL),
(282, 46, '2020-11-20', 'November  2020', NULL, NULL, 70000, NULL, NULL),
(283, 46, '2020-12-20', 'Desember  2020', NULL, NULL, 70000, NULL, NULL),
(284, 46, '2021-01-20', 'januari  2021', NULL, NULL, 70000, NULL, NULL),
(285, 46, '2021-02-20', 'Februari  2021', NULL, NULL, 70000, NULL, NULL),
(286, 46, '2021-03-20', 'Maret  2021', NULL, NULL, 70000, NULL, NULL),
(287, 46, '2021-04-20', 'April  2021', NULL, NULL, 70000, NULL, NULL),
(288, 46, '2021-05-20', 'Mei  2021', NULL, NULL, 70000, NULL, NULL),
(289, 47, '2020-06-20', 'Juni  2020', NULL, NULL, 70000, NULL, NULL),
(290, 47, '2020-07-20', 'Juli  2020', NULL, NULL, 70000, NULL, NULL),
(291, 47, '2020-08-20', 'Agustus  2020', NULL, NULL, 70000, NULL, NULL),
(292, 47, '2020-09-20', 'September  2020', NULL, NULL, 70000, NULL, NULL),
(293, 47, '2020-10-20', 'Oktober  2020', NULL, NULL, 70000, NULL, NULL),
(294, 47, '2020-11-20', 'November  2020', NULL, NULL, 70000, NULL, NULL),
(295, 47, '2020-12-20', 'Desember  2020', NULL, NULL, 70000, NULL, NULL),
(296, 47, '2021-01-20', 'januari  2021', NULL, NULL, 70000, NULL, NULL),
(297, 47, '2021-02-20', 'Februari  2021', NULL, NULL, 70000, NULL, NULL),
(298, 47, '2021-03-20', 'Maret  2021', NULL, NULL, 70000, NULL, NULL),
(299, 47, '2021-04-20', 'April  2021', NULL, NULL, 70000, NULL, NULL),
(300, 47, '2021-05-20', 'Mei  2021', NULL, NULL, 70000, NULL, NULL),
(301, 48, '2020-06-20', 'Juni  2020', NULL, NULL, 70000, NULL, NULL),
(302, 48, '2020-07-20', 'Juli  2020', NULL, NULL, 70000, NULL, NULL),
(303, 48, '2020-08-20', 'Agustus  2020', NULL, NULL, 70000, NULL, NULL),
(304, 48, '2020-09-20', 'September  2020', NULL, NULL, 70000, NULL, NULL),
(305, 48, '2020-10-20', 'Oktober  2020', NULL, NULL, 70000, NULL, NULL),
(306, 48, '2020-11-20', 'November  2020', NULL, NULL, 70000, NULL, NULL),
(307, 48, '2020-12-20', 'Desember  2020', NULL, NULL, 70000, NULL, NULL),
(308, 48, '2021-01-20', 'januari  2021', NULL, NULL, 70000, NULL, NULL),
(309, 48, '2021-02-20', 'Februari  2021', NULL, NULL, 70000, NULL, NULL),
(310, 48, '2021-03-20', 'Maret  2021', NULL, NULL, 70000, NULL, NULL),
(311, 48, '2021-04-20', 'April  2021', NULL, NULL, 70000, NULL, NULL),
(312, 48, '2021-05-20', 'Mei  2021', NULL, NULL, 70000, NULL, NULL),
(313, 49, '2020-06-20', 'Juni  2020', NULL, NULL, 70000, NULL, NULL),
(314, 49, '2020-07-20', 'Juli  2020', NULL, NULL, 70000, NULL, NULL),
(315, 49, '2020-08-20', 'Agustus  2020', NULL, NULL, 70000, NULL, NULL),
(316, 49, '2020-09-20', 'September  2020', NULL, NULL, 70000, NULL, NULL),
(317, 49, '2020-10-20', 'Oktober  2020', NULL, NULL, 70000, NULL, NULL),
(318, 49, '2020-11-20', 'November  2020', NULL, NULL, 70000, NULL, NULL),
(319, 49, '2020-12-20', 'Desember  2020', NULL, NULL, 70000, NULL, NULL),
(320, 49, '2021-01-20', 'januari  2021', NULL, NULL, 70000, NULL, NULL),
(321, 49, '2021-02-20', 'Februari  2021', NULL, NULL, 70000, NULL, NULL),
(322, 49, '2021-03-20', 'Maret  2021', NULL, NULL, 70000, NULL, NULL),
(323, 49, '2021-04-20', 'April  2021', NULL, NULL, 70000, NULL, NULL),
(324, 49, '2021-05-20', 'Mei  2021', NULL, NULL, 70000, NULL, NULL),
(325, 50, '2020-06-20', 'Juni  2020', NULL, NULL, 70000, NULL, NULL),
(326, 50, '2020-07-20', 'Juli  2020', NULL, NULL, 70000, NULL, NULL),
(327, 50, '2020-08-20', 'Agustus  2020', NULL, NULL, 70000, NULL, NULL),
(328, 50, '2020-09-20', 'September  2020', NULL, NULL, 70000, NULL, NULL),
(329, 50, '2020-10-20', 'Oktober  2020', NULL, NULL, 70000, NULL, NULL),
(330, 50, '2020-11-20', 'November  2020', NULL, NULL, 70000, NULL, NULL),
(331, 50, '2020-12-20', 'Desember  2020', NULL, NULL, 70000, NULL, NULL),
(332, 50, '2021-01-20', 'januari  2021', NULL, NULL, 70000, NULL, NULL),
(333, 50, '2021-02-20', 'Februari  2021', NULL, NULL, 70000, NULL, NULL),
(334, 50, '2021-03-20', 'Maret  2021', NULL, NULL, 70000, NULL, NULL),
(335, 50, '2021-04-20', 'April  2021', NULL, NULL, 70000, NULL, NULL),
(336, 50, '2021-05-20', 'Mei  2021', NULL, NULL, 70000, NULL, NULL),
(337, 51, '2020-06-20', 'Juni  2020', NULL, NULL, 70000, NULL, NULL),
(338, 51, '2020-07-20', 'Juli  2020', NULL, NULL, 70000, NULL, NULL),
(339, 51, '2020-08-20', 'Agustus  2020', NULL, NULL, 70000, NULL, NULL),
(340, 51, '2020-09-20', 'September  2020', NULL, NULL, 70000, NULL, NULL),
(341, 51, '2020-10-20', 'Oktober  2020', NULL, NULL, 70000, NULL, NULL),
(342, 51, '2020-11-20', 'November  2020', NULL, NULL, 70000, NULL, NULL),
(343, 51, '2020-12-20', 'Desember  2020', NULL, NULL, 70000, NULL, NULL),
(344, 51, '2021-01-20', 'januari  2021', NULL, NULL, 70000, NULL, NULL),
(345, 51, '2021-02-20', 'Februari  2021', NULL, NULL, 70000, NULL, NULL),
(346, 51, '2021-03-20', 'Maret  2021', NULL, NULL, 70000, NULL, NULL),
(347, 51, '2021-04-20', 'April  2021', NULL, NULL, 70000, NULL, NULL),
(348, 51, '2021-05-20', 'Mei  2021', NULL, NULL, 70000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `walikelas`
--

CREATE TABLE `walikelas` (
  `kelas` varchar(10) NOT NULL,
  `idguru` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `walikelas`
--

INSERT INTO `walikelas` (`kelas`, `idguru`) VALUES
('VII A', 1),
('VII B', 2),
('VII C', 3),
('VIII B', 4),
('VIII A', 5),
('VIII C', 6),
('IX A', 7),
('IX B', 8),
('IX C', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`idguru`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`idsiswa`),
  ADD KEY `fk_kelas` (`kelas`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`idspp`),
  ADD KEY `fk_admin` (`idadmin`),
  ADD KEY `fk_siswa` (`idsiswa`);

--
-- Indexes for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD PRIMARY KEY (`kelas`),
  ADD KEY `fk_guru` (`idguru`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `idguru` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `idsiswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `idspp` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `fk_kelas` FOREIGN KEY (`kelas`) REFERENCES `walikelas` (`kelas`) ON UPDATE CASCADE;

--
-- Constraints for table `spp`
--
ALTER TABLE `spp`
  ADD CONSTRAINT `fk_admin` FOREIGN KEY (`idadmin`) REFERENCES `admin` (`idadmin`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_siswa` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD CONSTRAINT `fk_guru` FOREIGN KEY (`idguru`) REFERENCES `guru` (`idguru`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
