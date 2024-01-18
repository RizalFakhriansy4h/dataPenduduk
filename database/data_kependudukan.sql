-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 04:27 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_kependudukan`
--

-- --------------------------------------------------------

--
-- Table structure for table `kode_agama`
--

CREATE TABLE `kode_agama` (
  `id_agama` char(2) NOT NULL,
  `nama_agama` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kode_agama`
--

INSERT INTO `kode_agama` (`id_agama`, `nama_agama`) VALUES
('01', 'Islam'),
('02', 'Kristen Protestan'),
('03', 'Katolik'),
('04', 'Hindu'),
('05', 'Buddha'),
('06', 'Kong Hu Cu'),
('07', 'Kepercayaan Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `kode_pekerjaan`
--

CREATE TABLE `kode_pekerjaan` (
  `id_pekerjaan` char(2) NOT NULL,
  `nama_pekerjaan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kode_pekerjaan`
--

INSERT INTO `kode_pekerjaan` (`id_pekerjaan`, `nama_pekerjaan`) VALUES
('01', 'PNS'),
('02', 'Wiraswasta'),
('03', 'Guru'),
('04', 'Dokter'),
('05', 'Perawat'),
('06', 'Petani'),
('07', 'Nelayan'),
('08', 'Pengusaha'),
('09', 'Karyawan Swasta'),
('10', 'Mahasiswa'),
('11', 'Pensiunan'),
('12', 'Buruh'),
('13', 'Polisi'),
('14', 'TNI'),
('15', 'Seniman'),
('16', 'Pedagang'),
('17', 'Pengemudi'),
('18', 'Programmer'),
('19', 'Arsitek'),
('20', 'Wartawan'),
('21', 'Penyiar'),
('22', 'Pilot'),
('23', 'Atlet'),
('24', 'Peneliti'),
('25', 'Dosen'),
('26', 'Guru Honorer'),
('27', 'Pengajar'),
('28', 'Pemadam Kebakaran'),
('29', 'Satpam'),
('30', 'Security'),
('31', 'Barista'),
('32', 'Chef'),
('33', 'Penjahit'),
('34', 'Fotografer'),
('35', 'Pembawa Acara'),
('36', 'MC'),
('37', 'Desainer'),
('38', 'Insinyur'),
('39', 'Dosen Swasta'),
('40', 'Penulis'),
('41', 'Aktor'),
('42', 'Artis'),
('43', 'Musisi'),
('44', 'Penyanyi'),
('45', 'Dosen Magang'),
('46', 'Pegawai Negeri'),
('47', 'Pengusaha Kecil'),
('48', 'Pengusaha Menengah'),
('49', 'Pengusaha Besar'),
('50', 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `kode_provinsi`
--

CREATE TABLE `kode_provinsi` (
  `id_provinsi` char(2) NOT NULL,
  `nama_provinsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kode_provinsi`
--

INSERT INTO `kode_provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
('01', 'Aceh'),
('02', 'Sumatera Utara'),
('03', 'Sumatera Barat'),
('04', 'Riau'),
('05', 'Kepulauan Riau'),
('06', 'Jambi'),
('07', 'Bengkulu'),
('08', 'Sumatera Selatan'),
('09', 'Kepulauan Bangka Belitung'),
('10', 'Lampung'),
('11', 'Banten'),
('12', 'DKI Jakarta'),
('13', 'Jawa Barat'),
('14', 'Jawa Tengah'),
('15', 'DI Yogyakarta'),
('16', 'Jawa Timur'),
('17', 'Bali'),
('18', 'Nusa Tenggara Barat'),
('19', 'Nusa Tenggara Timur'),
('20', 'Kalimantan Barat'),
('21', 'Kalimantan Tengah'),
('22', 'Kalimantan Selatan'),
('23', 'Kalimantan Timur'),
('24', 'Kalimantan Utara'),
('25', 'Sulawesi Utara'),
('26', 'Gorontalo'),
('27', 'Sulawesi Tengah'),
('28', 'Sulawesi Barat'),
('29', 'Sulawesi Selatan'),
('30', 'Sulawesi Tenggara'),
('31', 'Maluku'),
('32', 'Maluku Utara'),
('33', 'Papua Barat'),
('34', 'Papua');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `nik` char(14) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `umur` int(11) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `nik`, `nama`, `alamat`, `status`, `umur`, `email`) VALUES
(1004, '02050319930345', 'Opan Laksita', 'Gg. Dipenogoro', 'Cerai', 31, 'opanlaksita2@facebook.net'),
(1005, '05020219920618', 'Aurora Puspita', 'Jalan Pacuan Kuda', 'Cerai', 32, 'aurorapuspita4@twitter.com'),
(1006, '04120719980539', 'Wisnu Purwanti', 'Jalan Rajiman', 'Belum Menikah', 26, 'wisnupurwanti7@facebook.org'),
(1007, '32250319950107', 'Tira Rahimah, S.Pt', 'Gg. Gegerkalong Hilir', 'Menikah', 29, 'tirarahimah1@gmail.org'),
(1008, '22030219890620', 'Belinda Tampubolon', 'Jl. Ciwastra', 'Menikah', 35, 'belindatampubolon4@outlook.net'),
(1009, '03091019990423', 'Tami Saragih', 'Jl. Cikapayang', 'Menikah', 25, 'tamisaragih4@outlook.com'),
(1010, '06031019890639', 'Hari Mahendra', 'Jl. Rajawali Barat', 'Cerai', 35, 'harimahendra6@facebook.net'),
(1011, '21151219940639', 'Limar Uyainah, M.Farm', 'Gg. Rajawali Timur', 'Belum Menikah', 30, 'limaruyainah1@outlook.com'),
(1012, '12180520010304', 'Zaenab Suryono', 'Jl. Pasirkoja', 'Menikah', 23, 'zaenabsuryono6@gmail.org'),
(1013, '25190219960119', 'Paramita Iswahyudi', 'Gg. Kendalsari', 'Belum Menikah', 28, 'paramitaiswahyudi9@gmail.net'),
(1014, '30250619940516', 'Hadi Uwais', 'Gang Stasiun Wonokromo', 'Menikah', 30, 'hadiuwais8@gmail.com'),
(1015, '17090219990244', 'Jayeng Winarsih', 'Gg. Otto Iskandardinata', 'Menikah', 25, 'jayengwinarsih7@twitter.com'),
(1016, '13070519960110', 'Lili Mulyani', 'Gg. Jakarta', 'Belum Menikah', 28, 'lilimulyani5@twitter.org'),
(1017, '07241019930324', 'Zelaya Prayoga', 'Jalan K.H. Wahid Hasyim', 'Menikah', 31, 'zelayaprayoga8@outlook.org'),
(1018, '10250819930415', 'Lalita Suwarno', 'Jl. Ir. H. Djuanda', 'Cerai', 31, 'lalitasuwarno4@facebook.net'),
(1019, '08230620000619', 'Novi Wasita, S.H.', 'Gg. Ahmad Dahlan', 'Cerai', 24, 'noviwasita7@facebook.com'),
(1020, '24130919930138', 'Ade Saragih', 'Gg. Astana Anyar', 'Cerai', 31, 'adesaragih8@gmail.net'),
(1021, '10210419960421', 'Ella Budiman', 'Jalan Kapten Muslihat', 'Menikah', 28, 'ellabudiman10@outlook.com'),
(1022, '32020819910321', 'Sutan Ilyas Nuraini, M.Farm', 'Gg. Kapten Muslihat', 'Belum Menikah', 33, 'sutanilyas8@gmail.org'),
(1023, '16270319990104', 'Eman Widiastuti', 'Jl. W.R. Supratman', 'Menikah', 25, 'emanwidiastuti10@twitter.com'),
(1024, '18140819980119', 'Kamila Samosir', 'Jalan Rungkut Industri', 'Belum Menikah', 26, 'kamilasamosir3@twitter.org'),
(1025, '29261119940121', 'Anita Haryanti', 'Gg. Sadang Serang', 'Menikah', 30, 'anitaharyanti9@twitter.com'),
(1026, '26060519980509', 'Queen Lestari', 'Jalan Raya Ujungberung', 'Menikah', 26, 'queenlestari10@facebook.org'),
(1027, '02180119940327', 'Silvia Saptono', 'Gg. Pasir Koja', 'Belum Menikah', 30, 'silviasaptono6@gmail.com'),
(1028, '01220820020411', 'Shakila Hutagalung', 'Jalan Kutisari Selatan', 'Cerai', 22, 'shakilahutagalung4@twitter.org'),
(1029, '03120319910613', 'Galih Sihombing', 'Jalan HOS. Cokroaminoto', 'Menikah', 33, 'galihsihombing1@outlook.net'),
(1030, '26110319890320', 'Diah Yulianti', 'Jl. Raya Setiabudhi', 'Menikah', 35, 'diahyulianti4@twitter.org'),
(1031, '31170619900519', 'Aisyah Simanjuntak', 'Gg. Jend. Sudirman', 'Cerai', 34, 'aisyahsimanjuntak5@gmail.org'),
(1032, '32290119890711', 'Liman Yuliarti', 'Jl. Cikapayang', 'Cerai', 35, 'limanyuliarti1@twitter.org'),
(1033, '12130519910245', 'Sabrina Setiawan', 'Jl. Lembong', 'Belum Menikah', 33, 'sabrinasetiawan8@gmail.org'),
(1034, '28031119990140', 'Unjani Utami', 'Jl. KH Amin Jasuta', 'Menikah', 25, 'unjaniutami1@twitter.net'),
(1035, '31260619970601', 'Cengkir Kuswoyo, M.Pd', 'Gg. Ciumbuleuit', 'Menikah', 27, 'cengkirkuswoyo7@twitter.com'),
(1036, '32210820010649', 'Vivi Hakim', 'Gg. Abdul Muis', 'Belum Menikah', 23, 'vivihakim1@gmail.net'),
(1037, '33040819920202', 'Taufan Yulianti', 'Jl. Suryakencana', 'Cerai', 32, 'taufanyulianti7@gmail.org'),
(1038, '04210519900124', 'Pangeran Hutagalung', 'Jalan Pasirkoja', 'Menikah', 34, 'pangeranhutagalung1@gmail.com'),
(1039, '13210520000117', 'Sabrina Wahyuni', 'Jalan Bangka Raya', 'Menikah', 24, 'sabrinawahyuni2@facebook.net'),
(1040, '02261019920310', 'Jessica Saefullah', 'Gang Setiabudhi', 'Menikah', 32, 'jessicasaefullah3@facebook.org'),
(1041, '18160319890749', 'Teguh Susanti, S.E.', 'Jl. S. Parman', 'Cerai', 35, 'teguhsusanti1@gmail.com'),
(1042, '26071019940543', 'Narji Yuliarti', 'Gang Lembong', 'Belum Menikah', 30, 'narjiyuliarti2@gmail.com'),
(1043, '27051119930250', 'Arsipatra Napitupulu', 'Jalan Asia Afrika', 'Cerai', 31, 'arsipatranapitupulu3@twitter.org'),
(1044, '31160719930619', 'Hartaka Usada, S.Sos', 'Jl. Kutisari Selatan', 'Belum Menikah', 31, 'hartakausada9@facebook.com'),
(1045, '05091219920712', 'Sadina Nuraini', 'Jl. Abdul Muis', 'Belum Menikah', 32, 'sadinanuraini8@gmail.net'),
(1046, '24251119950222', 'Lanjar Halimah', 'Gang Tebet Barat Dalam', 'Menikah', 29, 'lanjarhalimah7@facebook.net'),
(1047, '27101119930715', 'Luwar Wijayanti', 'Gg. BKR', 'Cerai', 31, 'luwarwijayanti3@facebook.net'),
(1048, '20061219950610', 'Teddy Nasyidah', 'Jalan Jakarta', 'Menikah', 29, 'teddynasyidah7@outlook.com'),
(1049, '02300519920118', 'Mahdi Marbun', 'Jalan Sukajadi', 'Menikah', 32, 'mahdimarbun1@gmail.org'),
(1050, '25140620020745', 'Zelaya Simbolon', 'Jl. Waringin', 'Cerai', 22, 'zelayasimbolon2@twitter.org'),
(1051, '01290519950150', 'Dipa Tamba, S.E.', 'Gg. Medokan Ayu', 'Menikah', 29, 'dipatamba6@facebook.org'),
(1052, '33290119960706', 'Sutan Radit Lestari, S.Sos', 'Gang Raya Ujungberung', 'Belum Menikah', 28, 'sutanradit4@facebook.com'),
(1053, '31290619890413', 'Parman Damanik', 'Jl. Sadang Serang', 'Belum Menikah', 35, 'parmandamanik8@outlook.com'),
(1054, '15181219930646', 'Nugraha Kusmawati, S.E.I', 'Gang Pacuan Kuda', 'Menikah', 31, 'nugrahakusmawati9@gmail.net'),
(1055, '25071019910142', 'Azalea Utama', 'Jl. Moch. Toha', 'Cerai', 33, 'azaleautama4@facebook.net'),
(1056, '22141119990527', 'Dono Hardiansyah', 'Jl. Surapati', 'Belum Menikah', 25, 'donohardiansyah1@outlook.com'),
(1057, '12010819980330', 'Fitria Winarno', 'Jl. H.J Maemunah', 'Menikah', 26, 'fitriawinarno3@facebook.net'),
(1058, '19080520020203', 'Rika Puspita', 'Gg. Sukabumi', 'Menikah', 22, 'rikapuspita2@gmail.org'),
(1059, '27270319930543', 'Eman Mangunsong', 'Jalan Joyoboyo', 'Menikah', 31, 'emanmangunsong3@outlook.com'),
(1060, '20290120020713', 'Puji Wijayanti', 'Jl. Veteran', 'Cerai', 22, 'pujiwijayanti10@facebook.com'),
(1061, '10200919950641', 'Eka Handayani', 'Jalan Dipenogoro', 'Belum Menikah', 29, 'ekahandayani4@facebook.org'),
(1062, '20210219980330', 'Ratih Hutagalung', 'Jalan Cihampelas', 'Belum Menikah', 26, 'ratihhutagalung8@outlook.net'),
(1063, '18140519950327', 'Ulva Utami', 'Gang Pacuan Kuda', 'Belum Menikah', 29, 'ulvautami1@facebook.net'),
(1064, '20240419920521', 'Elvina Widiastuti', 'Jl. Astana Anyar', 'Belum Menikah', 32, 'elvinawidiastuti3@twitter.org'),
(1065, '01140419990727', 'Zizi Lazuardi', 'Gg. W.R. Supratman', 'Cerai', 25, 'zizilazuardi1@twitter.net'),
(1066, '13300619950342', 'Endah Manullang', 'Jalan Kutai', 'Belum Menikah', 29, 'endahmanullang2@gmail.net'),
(1067, '26130819890512', 'Rini Marpaung', 'Jalan KH Amin Jasuta', 'Cerai', 35, 'rinimarpaung8@twitter.net'),
(1068, '10090219920316', 'Ani Jailani', 'Jalan Tubagus Ismail', 'Belum Menikah', 32, 'anijailani9@outlook.com'),
(1069, '27230819890326', 'Putri Yuliarti', 'Jalan Stasiun Wonokromo', 'Belum Menikah', 35, 'putriyuliarti1@gmail.org'),
(1070, '05140119910443', 'Karsa Puspita', 'Jl. Erlangga', 'Cerai', 33, 'karsapuspita2@twitter.com'),
(1071, '27151219940243', 'Ana Suryono, S.Kom', 'Jl. Ahmad Dahlan', 'Cerai', 30, 'anasuryono6@twitter.com'),
(1072, '34290319900316', 'Jumari Namaga, S.IP', 'Jalan Peta', 'Menikah', 34, 'jumarinamaga6@facebook.org'),
(1073, '05121220020644', 'Kasiyah Prasasta', 'Jalan Laswi', 'Cerai', 22, 'kasiyahprasasta2@gmail.org'),
(1074, '29190419980627', 'Dina Prasetya', 'Jl. Pasirkoja', 'Belum Menikah', 26, 'dinaprasetya4@facebook.net'),
(1075, '27310819910645', 'Mahfud Kusmawati', 'Jalan Setiabudhi', 'Menikah', 33, 'mahfudkusmawati4@facebook.net'),
(1076, '22170319940537', 'Tantri Rahmawati', 'Gg. Pelajar Pejuang', 'Cerai', 30, 'tantrirahmawati8@gmail.org'),
(1077, '28050719940737', 'Tasdik Agustina', 'Jl. S. Parman', 'Belum Menikah', 30, 'tasdikagustina5@facebook.net'),
(1078, '32221019990249', 'Sutan Koko Prastuti, M.Kom.', 'Jl. Pelajar Pejuang', 'Belum Menikah', 25, 'sutankoko2@twitter.com'),
(1079, '18041219970402', 'Zizi Iswahyudi', 'Jalan Kutisari Selatan', 'Menikah', 27, 'ziziiswahyudi7@outlook.com'),
(1080, '15220520000301', 'Cut Fitria Kusmawati', 'Gg. Soekarno Hatta', 'Cerai', 24, 'cutfitria3@facebook.net'),
(1081, '27050519890717', 'Anastasia Zulaika', 'Jalan Kendalsari', 'Belum Menikah', 35, 'anastasiazulaika4@outlook.com'),
(1082, '11020519960233', 'Rahayu Natsir, S.E.I', 'Gang Jend. A. Yani', 'Menikah', 28, 'rahayunatsir5@outlook.com'),
(1083, '17140819960413', 'Lintang Manullang', 'Gg. W.R. Supratman', 'Menikah', 28, 'lintangmanullang2@twitter.com'),
(1084, '02090219890401', 'Harsana Mahendra', 'Gg. Soekarno Hatta', 'Cerai', 35, 'harsanamahendra5@facebook.com'),
(1085, '33040320020448', 'Pranawa Nasyidah', 'Gg. Antapani Lama', 'Belum Menikah', 22, 'pranawanasyidah10@twitter.com'),
(1086, '27280320020233', 'Najwa Nainggolan', 'Gg. Dr. Djunjunan', 'Menikah', 22, 'najwanainggolan7@outlook.com'),
(1087, '24051119970742', 'Salwa Nasyidah, M.TI.', 'Jl. Sukabumi', 'Belum Menikah', 27, 'salwanasyidah5@facebook.org'),
(1088, '02140820020703', 'Humaira Kusumo', 'Gg. Kapten Muslihat', 'Belum Menikah', 22, 'humairakusumo6@twitter.org'),
(1089, '24210320010229', 'Kenes Permata', 'Gang Indragiri', 'Belum Menikah', 23, 'kenespermata10@outlook.net'),
(1090, '11181119950535', 'Gawati Mandala, M.Kom.', 'Gg. Erlangga', 'Menikah', 29, 'gawatimandala7@facebook.com'),
(1091, '09140620020738', 'Ajimin Nurdiyanti', 'Jalan Ahmad Dahlan', 'Cerai', 22, 'ajiminnurdiyanti4@outlook.net'),
(1092, '27150620000712', 'Hilda Mustofa, S.Psi', 'Jl. Rungkut Industri', 'Cerai', 24, 'hildamustofa5@facebook.net'),
(1093, '02301019960735', 'Titi Nababan', 'Gang Pasirkoja', 'Menikah', 28, 'titinababan5@twitter.org'),
(1094, '28010120010636', 'Rosman Sitompul', 'Gg. Gardujati', 'Cerai', 23, 'rosmansitompul9@twitter.org'),
(1095, '02251219970717', 'Raihan Damanik', 'Gang Suryakencana', 'Cerai', 27, 'raihandamanik2@twitter.org'),
(1096, '14160619940425', 'Hilda Sitompul', 'Gang Rungkut Industri', 'Cerai', 30, 'hildasitompul9@twitter.com'),
(1097, '28100620000501', 'Salwa Prasetya, S.Sos', 'Jalan Medokan Ayu', 'Belum Menikah', 24, 'salwaprasetya2@outlook.org'),
(1098, '03130820020441', 'Zamira Wulandari', 'Jalan Ahmad Dahlan', 'Cerai', 22, 'zamirawulandari9@twitter.com'),
(1099, '16091119920510', 'Ghani Nashiruddin, M.Pd', 'Jl. Jend. Sudirman', 'Belum Menikah', 32, 'ghaninashiruddin4@twitter.org'),
(1100, '32080319990602', 'Catur Hartati', 'Jl. Peta', 'Belum Menikah', 25, 'caturhartati6@facebook.net'),
(1101, '33140520020322', 'Diana Hutagalung', 'Gg. Jend. Sudirman', 'Cerai', 22, 'dianahutagalung8@gmail.org'),
(1102, '11290119960239', 'Samiah Saputra', 'Jl. Indragiri', 'Belum Menikah', 28, 'samiahsaputra1@twitter.org'),
(1103, '31111119970535', 'Najwa Hidayat', 'Jalan Sukajadi', 'Belum Menikah', 27, 'najwahidayat9@twitter.net'),
(1104, '32170719980729', 'Kawaca Hutagalung', 'Jl. Ir. H. Djuanda', 'Cerai', 26, 'kawacahutagalung2@outlook.com'),
(1105, '06040120010145', 'Ade Pertiwi', 'Gang Raya Ujungberung', 'Cerai', 23, 'adepertiwi6@outlook.org'),
(1106, '32221219890315', 'Nasrullah Rajasa, S.Sos', 'Jalan Gedebage Selatan', 'Belum Menikah', 35, 'nasrullahrajasa2@twitter.com'),
(1107, '21220119950541', 'Simon Prasasta, M.Pd', 'Gg. Rajawali Timur', 'Menikah', 29, 'simonprasasta6@twitter.org'),
(1108, '25170519960119', 'Yance Halimah', 'Gang Pasir Koja', 'Cerai', 28, 'yancehalimah10@twitter.org'),
(1109, '33271019900336', 'Patricia Manullang', 'Jl. Ahmad Dahlan', 'Menikah', 34, 'patriciamanullang7@gmail.net'),
(1110, '17010720020331', 'Sutan Ganep Sinaga, S.Pt', 'Jl. Jend. Sudirman', 'Cerai', 22, 'sutanganep3@facebook.net'),
(1111, '06190519950533', 'Kamal Agustina', 'Gg. Tebet Barat Dalam', 'Cerai', 29, 'kamalagustina6@twitter.net'),
(1112, '26110820010104', 'Faizah Nugroho', 'Gang Monginsidi', 'Belum Menikah', 23, 'faizahnugroho5@outlook.net'),
(1113, '11140819980142', 'Wirda Yulianti', 'Gang Gedebage Selatan', 'Menikah', 26, 'wirdayulianti1@facebook.net'),
(1114, '32230919980617', 'Darmaji Hakim', 'Gang Kutisari Selatan', 'Belum Menikah', 26, 'darmajihakim9@gmail.org'),
(1115, '11040419910505', 'Eko Narpati', 'Jl. Jayawijaya', 'Belum Menikah', 33, 'ekonarpati4@facebook.org'),
(1116, '18081119940540', 'Dariati Pradana', 'Gang Erlangga', 'Belum Menikah', 30, 'dariatipradana5@twitter.net'),
(1117, '16010319910413', 'Dinda Wastuti, S.Gz', 'Jalan Jayawijaya', 'Cerai', 33, 'dindawastuti3@facebook.com'),
(1118, '22100420020537', 'Genta Tamba', 'Jalan Veteran', 'Cerai', 22, 'gentatamba7@outlook.org'),
(1119, '22261019940238', 'Ega Wibowo', 'Gang Veteran', 'Menikah', 30, 'egawibowo1@gmail.org'),
(1120, '29140120020540', 'Baktianto Marbun, S.T.', 'Jalan S. Parman', 'Belum Menikah', 22, 'baktiantomarbun4@outlook.org'),
(1121, '27061019980139', 'Umi Handayani', 'Jl. Veteran', 'Belum Menikah', 26, 'umihandayani8@outlook.org'),
(1122, '09040819900541', 'Yani Marpaung, S.Pd', 'Jl. Kebonjati', 'Belum Menikah', 34, 'yanimarpaung2@twitter.com'),
(1123, '29150520000612', 'Ajiono Maryati', 'Jalan Ir. H. Djuanda', 'Cerai', 24, 'ajionomaryati6@outlook.com'),
(1124, '14050420020507', 'Banawi Pradipta', 'Jl. W.R. Supratman', 'Belum Menikah', 22, 'banawipradipta2@facebook.net'),
(1125, '18020819910632', 'Anom Maheswara, S.Pt', 'Jalan Gegerkalong Hilir', 'Belum Menikah', 33, 'anommaheswara6@outlook.org'),
(1126, '34280919950517', 'Rahmi Wahyuni, S.H.', 'Jl. Siliwangi', 'Cerai', 29, 'rahmiwahyuni1@twitter.net'),
(1127, '27170919950310', 'Elma Widodo', 'Jl. Cihampelas', 'Belum Menikah', 29, 'elmawidodo4@twitter.net'),
(1128, '04070319900609', 'Indah Prayoga', 'Gg. Rajawali Barat', 'Cerai', 34, 'indahprayoga6@facebook.org'),
(1129, '33250319980244', 'Nasrullah Habibi', 'Gg. Rumah Sakit', 'Cerai', 26, 'nasrullahhabibi9@gmail.org'),
(1130, '30261119990205', 'Endah Firmansyah', 'Gang Kendalsari', 'Menikah', 25, 'endahfirmansyah8@twitter.com'),
(1131, '31090519900607', 'Jamalia Wahyuni', 'Gg. Pacuan Kuda', 'Belum Menikah', 34, 'jamaliawahyuni9@outlook.net'),
(1132, '32140820010725', 'Shakila Aryani', 'Jalan Raya Setiabudhi', 'Belum Menikah', 23, 'shakilaaryani5@twitter.net'),
(1133, '19220619890542', 'Emas Hasanah, S.Kom', 'Gg. Abdul Muis', 'Cerai', 35, 'emashasanah6@outlook.net'),
(1134, '34221220020645', 'Dariati Rajasa', 'Gang K.H. Wahid Hasyim', 'Cerai', 22, 'dariatirajasa7@gmail.net'),
(1135, '10180819950617', 'Zulfa Namaga', 'Gg. Ahmad Yani', 'Belum Menikah', 29, 'zulfanamaga5@twitter.com'),
(1136, '03191219910330', 'Ella Laksmiwati', 'Gg. Siliwangi', 'Cerai', 33, 'ellalaksmiwati9@outlook.org'),
(1137, '16140520000549', 'Wahyu Kusumo', 'Jl. Cikutra Timur', 'Menikah', 24, 'wahyukusumo9@facebook.net'),
(1138, '06171219890205', 'Mala Pranowo', 'Gang H.J Maemunah', 'Belum Menikah', 35, 'malapranowo2@facebook.com'),
(1139, '06230820000125', 'Irwan Handayani', 'Jalan Cikutra Barat', 'Cerai', 24, 'irwanhandayani9@twitter.net'),
(1140, '03020619950621', 'Halima Tarihoran', 'Jalan Ir. H. Djuanda', 'Cerai', 29, 'halimatarihoran3@facebook.com'),
(1141, '23020319900142', 'Sidiq Pertiwi', 'Gang Cikutra Barat', 'Cerai', 34, 'sidiqpertiwi10@facebook.com'),
(1142, '15030119900236', 'Rahmi Oktaviani, S.Kom', 'Gg. Ciwastra', 'Cerai', 34, 'rahmioktaviani1@gmail.org'),
(1143, '08180719940108', 'Lamar Mangunsong', 'Jalan Ronggowarsito', 'Belum Menikah', 30, 'lamarmangunsong6@outlook.net'),
(1144, '30011219970109', 'Asirwanda Pertiwi, S.Sos', 'Gang Cempaka', 'Cerai', 27, 'asirwandapertiwi3@facebook.net'),
(1145, '16090519930207', 'Fitriani Wijayanti', 'Jl. Abdul Muis', 'Menikah', 31, 'fitrianiwijayanti4@facebook.net'),
(1146, '08130219980545', 'Anom Utama', 'Gg. Ahmad Dahlan', 'Menikah', 26, 'anomutama9@twitter.org'),
(1147, '18080419910623', 'Dian Tamba, M.Pd', 'Gang Ciumbuleuit', 'Menikah', 33, 'diantamba8@outlook.org'),
(1148, '31010720020239', 'Cut Vanya Wulandari', 'Gang Moch. Toha', 'Cerai', 22, 'cutvanya6@twitter.org'),
(1149, '29171119900506', 'Sakura Firgantoro, M.Pd', 'Jl. Setiabudhi', 'Cerai', 34, 'sakurafirgantoro10@twitter.net'),
(1150, '13031119940739', 'Usman Palastri', 'Gang H.J Maemunah', 'Menikah', 30, 'usmanpalastri6@facebook.net'),
(1151, '12311019920641', 'Saiful Mahendra', 'Gang Tubagus Ismail', 'Cerai', 32, 'saifulmahendra3@facebook.com'),
(1152, '10120720010412', 'Narji Rajasa', 'Gang W.R. Supratman', 'Menikah', 23, 'narjirajasa10@facebook.org'),
(1153, '12090419950211', 'Anastasia Firgantoro', 'Jl. Astana Anyar', 'Belum Menikah', 29, 'anastasiafirgantoro9@gmail.com'),
(1154, '28150119960350', 'Hana Uwais', 'Jalan M.T Haryono', 'Cerai', 28, 'hanauwais8@facebook.org'),
(1155, '34010219970135', 'Febi Simbolon, S.Gz', 'Gang Tebet Barat Dalam', 'Belum Menikah', 27, 'febisimbolon4@gmail.com'),
(1156, '01270119990743', 'Sutan Wira Mansur', 'Jalan Setiabudhi', 'Menikah', 25, 'sutanwira8@twitter.com'),
(1157, '02251019940606', 'Langgeng Nasyidah', 'Gg. Moch. Ramdan', 'Menikah', 30, 'langgengnasyidah8@gmail.net'),
(1158, '22200420010117', 'Viktor Manullang', 'Jalan Pasteur', 'Cerai', 23, 'viktormanullang9@facebook.com'),
(1159, '05090620010717', 'Rini Lazuardi', 'Gg. Peta', 'Menikah', 23, 'rinilazuardi5@outlook.org'),
(1160, '27090820010334', 'Caraka Anggriawan', 'Jalan M.H Thamrin', 'Cerai', 23, 'carakaanggriawan1@outlook.com'),
(1161, '14080719990611', 'Putri Saptono, S.H.', 'Gang Yos Sudarso', 'Cerai', 25, 'putrisaptono9@facebook.com'),
(1162, '32161119940632', 'Eva Hutasoit', 'Jalan Dipatiukur', 'Cerai', 30, 'evahutasoit5@facebook.com'),
(1163, '20301119930302', 'Bakiono Firmansyah, S.H.', 'Gg. Dipenogoro', 'Cerai', 31, 'bakionofirmansyah10@gmail.net'),
(1164, '28290919910717', 'Putri Lailasari', 'Jalan Dipatiukur', 'Belum Menikah', 33, 'putrilailasari4@gmail.com'),
(1165, '12121220000443', 'Septi Oktaviani', 'Gg. K.H. Wahid Hasyim', 'Belum Menikah', 24, 'septioktaviani9@twitter.net'),
(1166, '28260819990435', 'Jayeng Pangestu, M.Farm', 'Jalan Pasirkoja', 'Menikah', 25, 'jayengpangestu10@twitter.org'),
(1167, '21120919940704', 'Almira Kuswandari, M.TI.', 'Gg. Gardujati', 'Cerai', 30, 'almirakuswandari6@twitter.net'),
(1168, '30120619930641', 'Makara Astuti', 'Jalan Tebet Barat Dalam', 'Cerai', 31, 'makaraastuti9@outlook.org'),
(1169, '22160819990109', 'Luhung Santoso', 'Gang Kiaracondong', 'Belum Menikah', 25, 'luhungsantoso9@outlook.org'),
(1170, '12260319930701', 'Fitriani Sudiati, M.Farm', 'Gg. Kutai', 'Menikah', 31, 'fitrianisudiati7@twitter.net'),
(1171, '32220119920131', 'Cut Kamaria Latupono, S.Pd', 'Jalan Medokan Ayu', 'Menikah', 32, 'cutkamaria9@facebook.com'),
(1172, '08070119920242', 'Tina Mulyani', 'Jl. Surapati', 'Menikah', 32, 'tinamulyani7@outlook.net'),
(1173, '13220919920729', 'Tantri Nuraini', 'Jalan Cihampelas', 'Belum Menikah', 32, 'tantrinuraini2@outlook.net'),
(1174, '03120619970301', 'Tantri Novitasari', 'Jalan M.T Haryono', 'Belum Menikah', 27, 'tantrinovitasari10@gmail.net'),
(1175, '10190819930102', 'Jaswadi Halimah, S.Kom', 'Gang Dipatiukur', 'Belum Menikah', 31, 'jaswadihalimah3@gmail.org'),
(1176, '06200820000601', 'Heryanto Kuswoyo', 'Gang R.E Martadinata', 'Belum Menikah', 24, 'heryantokuswoyo5@facebook.com'),
(1177, '06200319950346', 'Qori Hassanah, S.H.', 'Jalan Kapten Muslihat', 'Belum Menikah', 29, 'qorihassanah6@twitter.net'),
(1178, '07160319950549', 'Harja Sitompul', 'Jl. Cihampelas', 'Belum Menikah', 29, 'harjasitompul3@twitter.net'),
(1179, '19270119930423', 'Anastasia Hariyah', 'Jalan Surapati', 'Menikah', 31, 'anastasiahariyah3@twitter.net'),
(1180, '22290719910142', 'Wani Mardhiyah', 'Gg. Bangka Raya', 'Belum Menikah', 33, 'wanimardhiyah3@gmail.com'),
(1181, '26270719990331', 'Tania Santoso', 'Jl. Lembong', 'Cerai', 25, 'taniasantoso6@facebook.org'),
(1182, '32300720000405', 'Jarwi Prasetyo', 'Jalan Rumah Sakit', 'Menikah', 24, 'jarwiprasetyo5@outlook.net'),
(1183, '27180319970111', 'Surya Siregar', 'Jl. Ir. H. Djuanda', 'Cerai', 27, 'suryasiregar8@facebook.org'),
(1184, '10020919910138', 'Jasmin Samosir', 'Jl. Ahmad Yani', 'Belum Menikah', 33, 'jasminsamosir6@outlook.net'),
(1185, '28070319910340', 'Zizi Marpaung', 'Jl. Ciwastra', 'Menikah', 33, 'zizimarpaung1@facebook.net'),
(1186, '19140919980233', 'Kusuma Nasyiah, S.H.', 'Jalan Jayawijaya', 'Cerai', 26, 'kusumanasyiah2@facebook.org'),
(1187, '32020419900538', 'Vanesa Purwanti, S.E.', 'Jl. Pelajar Pejuang', 'Cerai', 34, 'vanesapurwanti5@gmail.org'),
(1188, '08230619890430', 'Irma Mardhiyah, M.Farm', 'Gg. Moch. Toha', 'Cerai', 35, 'irmamardhiyah9@facebook.com'),
(1189, '06180919960702', 'Puti Dian Susanti', 'Gang Suryakencana', 'Menikah', 28, 'putidian8@twitter.org'),
(1190, '28250819950717', 'Kamal Hutasoit', 'Jalan Asia Afrika', 'Cerai', 29, 'kamalhutasoit8@facebook.com'),
(1191, '03281119940343', 'Winda Sirait', 'Jalan Rumah Sakit', 'Belum Menikah', 30, 'windasirait6@outlook.org'),
(1192, '32280819910122', 'Oliva Pradipta', 'Gg. Moch. Toha', 'Belum Menikah', 33, 'olivapradipta5@gmail.net'),
(1193, '03081119900508', 'Budi Salahudin', 'Jalan HOS. Cokroaminoto', 'Belum Menikah', 34, 'budisalahudin8@facebook.net'),
(1194, '30270319980502', 'Nadine Santoso, S.Kom', 'Jalan M.H Thamrin', 'Belum Menikah', 26, 'nadinesantoso6@facebook.com'),
(1195, '16120419900329', 'Kamaria Sinaga', 'Jalan Rajiman', 'Cerai', 34, 'kamariasinaga6@facebook.net'),
(1196, '15130419890511', 'Aurora Suwarno, M.Farm', 'Gg. KH Amin Jasuta', 'Menikah', 35, 'aurorasuwarno3@twitter.org'),
(1197, '01020419980538', 'Jasmin Samosir', 'Gang Setiabudhi', 'Menikah', 26, 'jasminsamosir6@gmail.net'),
(1198, '14201119970440', 'Cager Sitompul, S.T.', 'Gg. Jend. A. Yani', 'Cerai', 27, 'cagersitompul3@outlook.net'),
(1199, '02080719920707', 'Warsa Hidayanto', 'Gang Surapati', 'Belum Menikah', 32, 'warsahidayanto4@twitter.com'),
(1200, '06200419910331', 'Respati Nainggolan', 'Jalan Kutai', 'Belum Menikah', 33, 'respatinainggolan5@outlook.net'),
(1201, '29030519970546', 'Zelda Marbun', 'Jalan S. Parman', 'Menikah', 27, 'zeldamarbun10@facebook.org'),
(1202, '15290719960203', 'Nyoman Nashiruddin', 'Gang Otto Iskandardinata', 'Cerai', 28, 'nyomannashiruddin9@gmail.org'),
(1203, '01220519920138', 'Harja Thamrin', 'Gang Kendalsari', 'Menikah', 32, 'harjathamrin2@twitter.com'),
(1204, '32081219910211', 'Winda Gunarto', 'Gg. Stasiun Wonokromo', 'Menikah', 33, 'windagunarto10@outlook.net'),
(1205, '25151119970326', 'Raditya Melani', 'Gang Kapten Muslihat', 'Cerai', 27, 'radityamelani7@gmail.net'),
(1206, '17060120020619', 'Kani Winarsih', 'Jl. H.J Maemunah', 'Belum Menikah', 22, 'kaniwinarsih10@gmail.org'),
(1207, '12060719960215', 'Julia Marbun', 'Gang M.T Haryono', 'Belum Menikah', 28, 'juliamarbun9@twitter.net'),
(1208, '28200519940216', 'Kala Lazuardi', 'Jl. Ciwastra', 'Belum Menikah', 30, 'kalalazuardi6@outlook.net'),
(1209, '09100719950407', 'Perkasa Mayasari', 'Gg. Asia Afrika', 'Belum Menikah', 29, 'perkasamayasari8@gmail.net'),
(1210, '18100219940139', 'Tantri Hariyah', 'Gg. Sukajadi', 'Cerai', 30, 'tantrihariyah9@gmail.com'),
(1211, '10080619950511', 'Puti Fitria Santoso, M.Kom.', 'Gg. Jend. A. Yani', 'Menikah', 29, 'putifitria10@twitter.com'),
(1212, '21161019920102', 'Rahayu Habibi', 'Gang Dipatiukur', 'Cerai', 32, 'rahayuhabibi9@twitter.org'),
(1213, '30121019890611', 'Harjaya Purwanti', 'Jalan S. Parman', 'Belum Menikah', 35, 'harjayapurwanti2@gmail.org'),
(1214, '06231119950111', 'Bambang Zulkarnain', 'Jalan Sentot Alibasa', 'Belum Menikah', 29, 'bambangzulkarnain1@facebook.org'),
(1215, '19140119950213', 'Vivi Lazuardi, M.Ak', 'Jalan Rajawali Barat', 'Belum Menikah', 29, 'vivilazuardi2@facebook.net'),
(1216, '26051219940644', 'Perkasa Utama', 'Gg. Jamika', 'Belum Menikah', 30, 'perkasautama2@outlook.org'),
(1217, '16170319890447', 'Dipa Kusmawati, S.E.', 'Jl. Tubagus Ismail', 'Menikah', 35, 'dipakusmawati1@twitter.com'),
(1218, '15070719960139', 'Emin Halim, S.H.', 'Jalan Pasirkoja', 'Menikah', 28, 'eminhalim10@facebook.com'),
(1219, '25241119930122', 'Patricia Sitompul', 'Gang Kutisari Selatan', 'Menikah', 31, 'patriciasitompul8@gmail.com'),
(1220, '26150619890711', 'Michelle Hartati, M.Ak', 'Jl. Kiaracondong', 'Belum Menikah', 35, 'michellehartati2@outlook.com'),
(1221, '06271019970423', 'Queen Safitri', 'Gang Cihampelas', 'Cerai', 27, 'queensafitri4@outlook.com'),
(1222, '18021119910137', 'Malika Siregar', 'Jl. Kutai', 'Cerai', 33, 'malikasiregar8@gmail.org'),
(1223, '30020819990112', 'Karimah Wahyudin, S.Pd', 'Gg. Sadang Serang', 'Cerai', 25, 'karimahwahyudin4@twitter.org'),
(1224, '09290720020333', 'Asmianto Kusumo', 'Jl. Kiaracondong', 'Belum Menikah', 22, 'asmiantokusumo5@twitter.org'),
(1225, '31181119950710', 'Vinsen Hassanah', 'Jl. Cempaka', 'Belum Menikah', 29, 'vinsenhassanah2@twitter.com'),
(1226, '21160819910716', 'Queen Haryanto', 'Jl. Sentot Alibasa', 'Cerai', 33, 'queenharyanto1@gmail.org'),
(1227, '11120519930350', 'Jaga Budiyanto', 'Gang R.E Martadinata', 'Belum Menikah', 31, 'jagabudiyanto2@twitter.net'),
(1228, '15061119970519', 'Zizi Rahimah', 'Gang PHH. Mustofa', 'Cerai', 27, 'zizirahimah3@outlook.org'),
(1229, '33291119900438', 'Arsipatra Manullang', 'Jl. Stasiun Wonokromo', 'Cerai', 34, 'arsipatramanullang10@gmail.net'),
(1230, '21210919890214', 'Wawan Wijaya', 'Gang Sentot Alibasa', 'Cerai', 35, 'wawanwijaya3@twitter.org'),
(1231, '15030619980304', 'Karya Mahendra, S.Sos', 'Gang Tubagus Ismail', 'Cerai', 26, 'karyamahendra2@twitter.com'),
(1232, '26030819940606', 'Cawisono Najmudin', 'Gang Merdeka', 'Menikah', 30, 'cawisononajmudin10@facebook.com'),
(1233, '25080520020750', 'Ilyas Wahyudin', 'Gg. Cempaka', 'Belum Menikah', 22, 'ilyaswahyudin4@twitter.com'),
(1234, '18311019920201', 'Prayitna Suryono', 'Gg. Pacuan Kuda', 'Belum Menikah', 32, 'prayitnasuryono9@twitter.com'),
(1235, '15280219900512', 'Endah Nasyiah', 'Gang Stasiun Wonokromo', 'Cerai', 34, 'endahnasyiah5@gmail.net'),
(1236, '21090319990525', 'Kartika Jailani', 'Gg. Cikapayang', 'Menikah', 25, 'kartikajailani6@facebook.org'),
(1237, '13040819990214', 'Syahrini Yolanda, S.H.', 'Gang Cempaka', 'Belum Menikah', 25, 'syahriniyolanda8@gmail.com'),
(1238, '27311219980434', 'Dono Mayasari, S.Sos', 'Jalan Soekarno Hatta', 'Belum Menikah', 26, 'donomayasari1@outlook.net'),
(1239, '27160619990228', 'Gambira Pudjiastuti, S.Ked', 'Gg. M.T Haryono', 'Menikah', 25, 'gambirapudjiastuti6@facebook.org'),
(1240, '09181119930202', 'Gangsar Zulaika', 'Jalan HOS. Cokroaminoto', 'Belum Menikah', 31, 'gangsarzulaika10@facebook.net'),
(1241, '17251119970138', 'Damu Wastuti', 'Jl. Kiaracondong', 'Belum Menikah', 27, 'damuwastuti2@twitter.com'),
(1242, '16290519890144', 'Dasa Suwarno', 'Gg. Cikutra Timur', 'Belum Menikah', 35, 'dasasuwarno3@gmail.org'),
(1243, '19181019970201', 'Rahmat Hartati', 'Gg. Yos Sudarso', 'Menikah', 27, 'rahmathartati9@outlook.net'),
(1244, '17130919940644', 'Pangeran Firmansyah', 'Jalan Moch. Toha', 'Cerai', 30, 'pangeranfirmansyah10@outlook.net'),
(1245, '01100120020450', 'Gamblang Manullang', 'Jalan Cikutra Barat', 'Menikah', 22, 'gamblangmanullang3@gmail.com'),
(1246, '17090419930202', 'Zulaikha Nashiruddin', 'Jalan Raya Ujungberung', 'Cerai', 31, 'zulaikhanashiruddin1@gmail.com'),
(1247, '16060720020335', 'Paulin Nurdiyanti, M.Farm', 'Jalan Moch. Toha', 'Belum Menikah', 22, 'paulinnurdiyanti7@twitter.com'),
(1248, '20110919920418', 'Salimah Wijayanti', 'Jalan Moch. Ramdan', 'Menikah', 32, 'salimahwijayanti4@outlook.net'),
(1249, '11160319920440', 'Halima Pradipta, S.Sos', 'Jalan Yos Sudarso', 'Belum Menikah', 32, 'halimapradipta7@twitter.org'),
(1250, '12180519920146', 'Nova Setiawan', 'Jalan Dipatiukur', 'Menikah', 32, 'novasetiawan4@gmail.net'),
(1251, '01180620020404', 'Vicky Waluyo', 'Jl. Indragiri', 'Cerai', 22, 'vickywaluyo6@outlook.net'),
(1252, '31060419980536', 'Jagapati Pertiwi', 'Gang Bangka Raya', 'Menikah', 26, 'jagapatipertiwi4@gmail.com'),
(1253, '08300619900642', 'Hafshah Laksmiwati', 'Jl. Kendalsari', 'Cerai', 34, 'hafshahlaksmiwati4@twitter.com'),
(1254, '31010119700319', 'RIzalludin Fakhriansyah Nugroho', 'Klojensss', 'Menikah', 54, 'fakhriansyahnugroho007@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kode_agama`
--
ALTER TABLE `kode_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `kode_pekerjaan`
--
ALTER TABLE `kode_pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `kode_provinsi`
--
ALTER TABLE `kode_provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1255;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
