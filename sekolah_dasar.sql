-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2021 pada 07.37
-- Versi server: 10.3.15-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah_dasar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'adminsd', '32f73e7f671bc86cc8d165f2f952852c');

-- --------------------------------------------------------

--
-- Struktur dari tabel `content`
--

CREATE TABLE `content` (
  `id` int(100) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `tanggal` date NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `file` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `content`
--

INSERT INTO `content` (`id`, `judul`, `isi`, `tanggal`, `kategori`, `file`) VALUES
(8, 'upacara bendera', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Impedit corporis incidunt deleniti dolorem? Ipsam placeat doloremque, dolores corrupti, id voluptate suscipit quisquam dignissimos magni recusandae tempore facilis modi eos vero!Lorem ipsum dolor sit amet consectetur, adipisicing elit. Impedit corporis incidunt deleniti dolorem? Ipsam placeat doloremque, dolores corrupti, id voluptate suscipit quisquam dignissimos magni recusandae tempore facilis modi eos vero!Lorem ipsum dolor sit amet consectetur, adipisicing elit. Impedit corporis incidunt deleniti dolorem? Ipsam placeat doloremque, dolores corrupti, id voluptate suscipit quisquam dignissimos magni recusandae tempore facilis modi eos vero!\r\nLorem ipsum dolor sit amet consectetur, adipisicing elit. Impedit corporis incidunt deleniti dolorem? Ipsam placeat doloremque, dolores corrupti, id voluptate suscipit quisquam dignissimos magni recusandae tempore facilis modi eos vero!\r\nLorem ipsum dolor sit amet consectetur, adipisicing elit. Impedit corporis incidunt deleniti dolorem? Ipsam placeat doloremque, dolores corrupti, id voluptate suscipit quisquam dignissimos magni recusandae tempore facilis modi eos vero!', '2020-11-21', 'home', 'download1.jpg'),
(9, 'Latihan sikat gigi', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Impedit corporis incidunt deleniti dolorem? Ipsam placeat doloremque, dolores corrupti, id voluptate suscipit quisquam dignissimos magni recusandae tempore facilis modi eos vero!Lorem ipsum dolor sit amet consectetur, adipisicing elit. Impedit corporis incidunt deleniti dolorem? Ipsam placeat doloremque, dolores corrupti, id voluptate suscipit quisquam dignissimos magni recusandae tempore facilis modi eos vero!Lorem ipsum dolor sit amet consectetur, adipisicing elit. Impedit corporis incidunt deleniti dolorem? Ipsam placeat doloremque, dolores corrupti, id voluptate suscipit quisquam dignissimos magni recusandae tempore facilis modi eos vero!\r\n\r\n\r\nLorem ipsum dolor sit amet consectetur, adipisicing elit. Impedit corporis incidunt deleniti dolorem? Ipsam placeat doloremque, dolores corrupti, id voluptate suscipit quisquam dignissimos magni recusandae tempore facilis modi eos vero!\r\nLorem ipsum dolor sit amet consectetur, adipisicing elit. Impedit corporis incidunt deleniti dolorem? Ipsam placeat doloremque, dolores corrupti, id voluptate suscipit quisquam dignissimos magni recusandae tempore facilis modi eos vero!', '2020-11-14', 'home', 'download_(4).jpg'),
(10, 'karate', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.\r\n</br>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.\r\n', '2020-11-14', 'ekstrakulikuler', 'download_(6).jpg'),
(11, 'Sepak Bola', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.\r\n</br>', '2020-11-14', 'ekstrakulikuler', 'download_(8).jpg'),
(12, 'Pecinta Alam', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus. \r\n</br>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.', '2020-11-21', 'ekstrakulikuler', 'download_(7).jpg'),
(13, 'Laboratorium IPA', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, ', '2020-11-21', 'fasilitas', 'download_(10).jpg'),
(14, 'Laboratorium Komputer', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni\r\n', '2020-11-19', 'fasilitas', 'download_(11).jpg'),
(15, 'Perpustakaan', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, ', '2020-11-28', 'fasilitas', 'download_(9).jpg'),
(16, 'tadarus', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae,', '2020-11-12', 'kegiatan_rutin', 'download_(12).jpg'),
(17, 'Senam Jumat', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae,', '2020-11-21', 'kegiatan_rutin', 'download_(14).jpg'),
(18, 'Kerja bakti', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae,', '2020-11-19', 'kegiatan_rutin', 'download_(13).jpg'),
(19, 'Lomba Sepakbola', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae,', '2020-11-18', 'acara_khusus', '13425_781696055233156_8992933549528245203_n.jpg'),
(20, 'Lomba 17 agustus', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae,', '2020-11-21', 'acara_khusus', 'download_(17).jpg'),
(22, 'Maulid Nabi', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae,', '2020-11-19', 'acara_khusus', 'download_(15).jpg'),
(23, 'Ulang Tahun Siswa', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae,', '2020-11-20', 'acara_khusus', 'download_(16).jpg'),
(24, 'Juara 1 Sepak bola Tinggkat Kabupaten', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita,', '2020-11-20', 'prestasi_sekolah', 'prestasi.jpg'),
(25, 'Juara 2 Lomba Puisi Kecamatan', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita,', '2020-11-21', 'prestasi_sekolah', 'prestasi1.jpg'),
(26, 'Juara 2 Pramuka Tingkat Kabupaten', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita,', '2020-11-12', 'prestasi_sekolah', 'prestasi2.jpg'),
(27, 'Juara 3 Cerdas Cermat Tingkat Kabupaten', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita,', '2020-11-19', 'prestasi_sekolah', 'prestasi3.jpg'),
(28, 'Materi MTK kelas 2', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', '2020-11-13', 'materi', 'materi_sekolah.docx'),
(29, 'Materi PJOK kelas 4', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', '2020-11-19', 'materi', 'materi_sekolah1.docx'),
(30, 'Materi IPA kelas 4', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', '2020-11-19', 'materi', 'doc.pdf'),
(31, 'Materi Budi Pekerti Kelas 1', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', '2020-11-13', 'materi', 'doc1.pdf'),
(32, 'Materi Bahasa Indonesia', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', '2020-11-21', 'materi', 'materi_sekolah2.docx'),
(33, 'Gedung Sekolah Kita', 'Tempat mendapatkan ilmu', '2020-11-20', 'slide_home', 'gedung.jpeg'),
(34, 'Mendegarkan', 'dengan mendengar kita mendapatkan banyak ilmu', '2020-11-14', 'slide_home', 'mendengar.jpg'),
(35, 'Kerja Kelompok', 'Bisa saling bertukar pemikiran', '2020-11-21', 'slide_home', 'nulis.jpg'),
(36, 'Membaca', 'Membaca dapat memperluas wawasan kita', '2020-11-20', 'slide_home', 'baca.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `content`
--
ALTER TABLE `content`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
