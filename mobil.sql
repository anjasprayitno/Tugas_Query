-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 05. Februari 2020 jam 21:43
-- Versi Server: 5.1.41
-- Versi PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `id_kategori` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `id_kategori`, `harga`) VALUES
(1, 'Honda Brio', 'LCGC', 157000000),
(2, 'Honda Jazz', 'LCGC', 240000000),
(3, 'Datsun Go Panca', 'LCGC', 103000000),
(4, 'Datsun Go ', 'LCGC', 112000000),
(5, 'Toyota Calya', 'LCGC', 132000000),
(6, 'Toyota Agya', 'LCGC', 131000000),
(7, 'Daihatsu Sigra', 'LCGC', 106000000),
(8, 'Daihatsu Ayla', 'LCGC', 92000000),
(9, 'Suzuki Karimun Wagon R', 'LCGC', 103000000),
(10, 'Renault Kwid', 'LCGC', 100000000),
(11, 'Toyota Agya 1.2', 'LCGC', 140000000),
(12, 'Datsun Go Live', 'LCGC', 130000000),
(13, 'Datsun Go Plus', 'LCGC', 115000000),
(14, 'Ford KA', 'LCGC', 135000000),
(15, 'Suzuki Karimun Wagon R GS', 'City Car', 129000000),
(16, 'Toyota Yaris', 'City Car', 200000000),
(17, 'Suzuki Baleno ', 'City Car', 199000000),
(18, 'Chevrolet Spark ', 'City Car', 197000000),
(19, 'Suzuki Ignis', 'City Car', 164000000),
(20, 'KIA Rio', 'City Car', 250000000),
(21, 'VW Polo', 'City Car', 265000000),
(22, 'Honda Brio RS', 'City Car', 190000000),
(23, 'Daihatsu Sirion', 'City Car', 200000000),
(24, 'Hyundai i10', 'City Car', 197000000),
(25, 'Hyundai i20', 'City Car', 203000000),
(26, 'Mitsubishi Mirage', 'City Car', 170000000),
(27, 'Nissan March', 'City Car', 165000000),
(28, 'Mazda 2', 'City Car', 250000000),
(29, 'Chevrolet Spark', 'City Car', 200500000),
(30, 'Suzuki Swift', 'City Car', 168000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(123, 'LCGC'),
(123, 'LCGC'),
(123, 'LCGC'),
(123, 'LCGC'),
(123, 'LCGC'),
(123, 'LCGC'),
(123, 'LCGC'),
(123, 'LCGC'),
(123, 'LCGC'),
(123, 'LCGC'),
(123, 'LCGC'),
(123, 'LCGC'),
(123, 'LCGC'),
(123, 'LCGC'),
(456, 'City Car'),
(456, 'City Car'),
(456, 'City Car'),
(456, 'City Car'),
(456, 'City Car'),
(456, 'City Car'),
(456, 'City Car'),
(456, 'City Car'),
(456, 'City Car'),
(456, 'City Car'),
(456, 'City Car'),
(456, 'City Car'),
(456, 'City Car'),
(456, 'City Car'),
(456, 'City Car'),
(456, 'City Car');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_barang` varchar(100) NOT NULL,
  `id_user` varchar(100) NOT NULL,
  `no_transaksi` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_barang`, `id_user`, `no_transaksi`, `tanggal`, `qty`, `harga`, `total`) VALUES
(1, '', '', 'trx001', '2020-01-28', 1, 0, 0),
(2, '', '', 'trx002', '2020-01-28', 1, 0, 0),
(3, '', '', 'trx003', '2020-01-29', 2, 0, 0),
(4, '', '', 'trx004', '2020-01-30', 6, 0, 0),
(5, '', '', 'trx005', '2020-01-31', 3, 0, 0),
(6, '', '', 'trx006', '2020-02-01', 2, 0, 0),
(7, '', '', 'trx007', '2020-02-04', 1, 0, 0),
(8, '', '', 'trx008', '2020-02-05', 3, 0, 0),
(9, '', '', 'trx009', '2020-02-06', 6, 0, 0),
(10, '', '', 'trx010', '2020-02-07', 2, 0, 0),
(11, '', '', 'trx011', '2020-02-08', 1, 0, 0),
(12, '', '', 'trx012', '2020-02-10', 2, 0, 0),
(13, '', '', 'trx013', '2020-02-11', 2, 0, 0),
(14, '', '', 'trx014', '2020-02-12', 3, 0, 0),
(15, '', '', 'trx015', '2020-02-13', 1, 0, 0),
(16, '', '', 'trx016', '2020-02-14', 3, 0, 0),
(17, '', '', 'trx017', '2020-02-15', 2, 0, 0),
(18, '', '', 'trx018', '2020-02-17', 4, 0, 0),
(19, '', '', 'trx019', '2020-02-18', 2, 0, 0),
(20, '', '', 'trx020', '2020-02-19', 1, 0, 0),
(21, '', '', 'trx021', '2020-02-20', 2, 0, 0),
(22, '', '', 'trx022', '2020-02-21', 2, 0, 0),
(23, '', '', 'trx023', '2020-02-24', 1, 0, 0),
(24, '', '', 'trx024', '2020-02-25', 2, 0, 0),
(25, '', '', 'trx025', '2020-03-03', 1, 0, 0),
(26, '', '', 'trx026', '2020-03-04', 3, 0, 0),
(27, '', '', 'trx027', '2020-03-05', 4, 0, 0),
(28, '', '', 'trx028', '2020-03-06', 3, 0, 0),
(29, '', '', 'trx029', '2020-03-09', 2, 0, 0),
(30, '', '', 'trx030', '2020-03-10', 3, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`) VALUES
(1, 'Bambang'),
(2, 'Pamungkas'),
(3, 'Anjas'),
(4, 'Arif'),
(5, 'Sulastri'),
(6, 'Sinta'),
(7, 'Yusuf'),
(8, 'Mahardika'),
(9, 'Sutopo'),
(10, 'Purwanto'),
(11, 'Mariana'),
(12, 'Zaenal'),
(13, 'Dedi'),
(14, 'Imam'),
(15, 'Firdaus'),
(16, 'Gerry'),
(17, 'Pablo'),
(18, 'Yun Siang'),
(19, 'Daffa'),
(20, 'Dodi'),
(21, 'Arifin'),
(22, 'Benny'),
(23, 'Aji'),
(24, 'Firman'),
(25, 'Johan'),
(26, 'Wulandari'),
(27, 'Ika'),
(28, 'Septian'),
(29, 'Malik'),
(30, 'Supardi');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
