-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2023 at 07:23 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absen` int(11) NOT NULL,
  `jadwal` date NOT NULL,
  `keterangan` enum('Hadir','Sakit','Izin','Absen') NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `npm` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absen`, `jadwal`, `keterangan`, `id_kelas`, `npm`) VALUES
(163, '2019-06-30', 'Absen', '001', '201643502124'),
(164, '2019-06-30', 'Hadir', '001', '201643502125'),
(165, '2019-06-30', 'Hadir', '001', '201643502127'),
(166, '2019-06-30', 'Hadir', '001', '201643502130'),
(167, '2019-06-30', 'Hadir', '001', '201643502131'),
(168, '2019-06-30', 'Hadir', '001', '201643502132'),
(169, '2019-06-30', 'Hadir', '001', '201643502133'),
(170, '2019-06-30', 'Hadir', '002', '201643502218'),
(171, '2019-06-30', 'Hadir', '002', '201643502220'),
(172, '2019-06-30', 'Hadir', '002', '201643502224'),
(173, '2019-06-30', 'Hadir', '002', '201643502227'),
(174, '2019-06-30', 'Hadir', '002', '201643502228'),
(175, '2019-06-30', 'Hadir', '002', '201643502229'),
(176, '2019-06-30', 'Hadir', '002', '201643502230'),
(177, '2019-06-30', 'Hadir', '002', '201643502232'),
(178, '2019-06-30', 'Hadir', '002', '201643502235'),
(179, '2019-06-30', 'Hadir', '002', '201643502239'),
(180, '2019-06-30', 'Hadir', '002', '201643502250'),
(181, '2019-06-30', 'Hadir', '002', '201643502252'),
(182, '2019-06-30', 'Hadir', '002', '201643502275'),
(183, '2019-06-30', 'Hadir', '002', '201643502277'),
(184, '2019-06-30', 'Hadir', '002', '201643502278'),
(185, '2019-06-30', 'Hadir', '002', '201643502285'),
(186, '2019-06-30', 'Hadir', '002', '201643502294'),
(187, '2019-06-30', 'Hadir', '002', '201643502296'),
(188, '2019-06-30', 'Hadir', '002', '201643502297'),
(189, '2019-06-30', 'Hadir', '002', '201643502301'),
(190, '2019-06-30', 'Hadir', '002', '201643502302'),
(191, '2019-07-01', 'Hadir', '002', '201643502218'),
(192, '2019-07-01', 'Hadir', '002', '201643502220'),
(193, '2019-07-01', 'Hadir', '002', '201643502224'),
(194, '2019-07-01', 'Hadir', '002', '201643502227'),
(195, '2019-07-01', 'Hadir', '002', '201643502228'),
(196, '2019-07-01', 'Hadir', '002', '201643502229'),
(197, '2019-07-01', 'Hadir', '002', '201643502230'),
(198, '2019-07-01', 'Absen', '002', '201643502232'),
(199, '2019-07-01', 'Hadir', '002', '201643502235'),
(200, '2019-07-01', 'Hadir', '002', '201643502239'),
(201, '2019-07-01', 'Hadir', '002', '201643502250'),
(202, '2019-07-01', 'Hadir', '002', '201643502252'),
(203, '2019-07-01', 'Hadir', '002', '201643502275'),
(204, '2019-07-01', 'Hadir', '002', '201643502277'),
(205, '2019-07-01', 'Hadir', '002', '201643502278'),
(206, '2019-07-01', 'Hadir', '002', '201643502285'),
(207, '2019-07-01', 'Hadir', '002', '201643502294'),
(208, '2019-07-01', 'Hadir', '002', '201643502296'),
(209, '2019-07-01', 'Hadir', '002', '201643502297'),
(210, '2019-07-01', 'Hadir', '002', '201643502301'),
(211, '2019-07-01', 'Hadir', '002', '201643502302');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` enum('Pria','Wanita') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `last_login` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama`, `jk`, `tgl_lahir`, `email`, `password`, `no_hp`, `foto`, `status`, `last_login`) VALUES
(1, 'Sutan', 'Pria', '0000-00-00', 'rico@gmail.com', '$2y$10$Nx44ci/AbhmvY/HPmVXu4O0vGdfZa8vWURXeRLp5omvBl2O8G7s4e', '123123123', 'sutan.jpg', 'Dosen', '2023-01-16 08:43:03'),
(2, 'admin', 'Pria', '0000-00-00', 'admin', '$2y$10$Nx44ci/AbhmvY/HPmVXu4O0vGdfZa8vWURXeRLp5omvBl2O8G7s4e', '123123123', 'redo.jpg', 'Dosen', '2023-01-16 08:43:03');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `id_dosen` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `id_dosen`) VALUES
('001', 'XI TKJ 2', '1'),
('002', 'XI TKJ 1', '1'),
('003', 'XI TKJ 1', '2'),
('004', 'XI TKJ 2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` enum('Pria','Wanita') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama`, `jk`, `tgl_lahir`, `alamat`, `id_kelas`, `foto`) VALUES
('201643502302', 'Rico Shandika Jovial Agista', 'Pria', '2005-08-21', 'Jl. Bersama Dia', '004', 'rico.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `id_matkul` int(11) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL,
  `jenis_matkul` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id_matkul`, `nama_matkul`, `jenis_matkul`, `sks`, `id_dosen`) VALUES
(1, 'Pemrograman Web 2', 'Semi Praktikum', 3, 1),
(2, 'Teknik Komputer dan Jaringan', 'Praktikum', 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absen`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `npm` (`npm`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id_matkul`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
