-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 07 Sep 2019 pada 19.55
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `bootcamp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salary` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `salary`) VALUES
(1, 10000000),
(2, 12000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `name`
--

CREATE TABLE IF NOT EXISTS `name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `id_work` int(11) NOT NULL,
  `id_salary` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `name`
--

INSERT INTO `name` (`id`, `name`, `id_work`, `id_salary`) VALUES
(1, 'Rebecca', 1, 1),
(2, 'Vita', 2, 2),
(5, 'WITO', 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `id_status` varchar(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `session_id` varchar(50) NOT NULL,
  `flag` varchar(5) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nik`, `nama`, `username`, `password`, `id_user_level`, `id_status`, `email`, `session_id`, `flag`) VALUES
(8, 'CGK15I01H734', 'RIZAL', 'RIZAL', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Y', 'crbheldi@gmail.com', '1ca30091fa50f83ad6da7d943c02f635', 'Y'),
(9, '123454321', 'arief y', 'arief', '81dc9bdb52d04dc20036dbd8313ed055', 1, 'Y', 'arief@dot.com', 'c98703aed69284552ffffea25a1706d9', 'N'),
(10, 'CGK17E01A3976', 'Arief Yasiqin', 'Arief', '202cb962ac59075b964b07152d234b70', 1, 'Y', 'arief.yasiqin@jne.co.id', 'bc3d72a0dbd9d1a823893669845de6aa', 'Y');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_peserta`
--
CREATE TABLE IF NOT EXISTS `v_peserta` (
`id` int(11)
,`name` varchar(50)
,`pekerjaan` varchar(50)
,`salary` int(12)
);
-- --------------------------------------------------------

--
-- Struktur dari tabel `work`
--

CREATE TABLE IF NOT EXISTS `work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `id_salary` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `work`
--

INSERT INTO `work` (`id`, `name`, `id_salary`) VALUES
(1, 'Frontend Dev', 1),
(2, 'Backend Dev', 2);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_peserta`
--
DROP TABLE IF EXISTS `v_peserta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_peserta` AS select `a`.`id` AS `id`,`a`.`name` AS `name`,`b`.`name` AS `pekerjaan`,`c`.`salary` AS `salary` from ((`name` `a` join `work` `b`) join `kategori` `c`) where ((`a`.`id_work` = `b`.`id`) and (`a`.`id_salary` = `c`.`id`));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
