-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Bulan Mei 2019 pada 04.23
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_login`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  `usersuka` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`, `usersuka`) VALUES
(13, 'sultan', 'kingarbai14@gmail.com', '4K-Black-Wallpaper-High-Quality.jpg', '$2y$10$NrsTq/FslT.YwqGIrzm6JueIkiKv.3f6EFvacCBvBaLHO9W2IMbEi', 1, 1, 1556503746, 100),
(17, 'sultan arba\'i', 'sultanarbai@gmail.com', 'IMG_20171006_222139_096.jpg', '$2y$10$Zhgg3w6voYUcvnLr06C1h.t527bErs69JmvRKAcSJGQPyglLlaLrG', 1, 1, 1557554736, 92),
(18, 'sultan arbai', 'aa@gmail.com', 'default.jpg', '$2y$10$0WAdIP/KDQrmFPCg/zPA8.Nrs63e78dH8dfjcnFXxp6bNg4LuO5im', 2, 1, 1557834090, 10),
(19, 'asaa', 'asaa@gmail.com', 'default.jpg', '$2y$10$Jr9CtSEOI0sm8CssBtXfJu6eI2NfOJ7d2A2OMPjfJ/roYnLEXyye6', 2, 1, 1557837688, 10),
(20, 'asalal', 'asa@gmail.com', 'default.jpg', '$2y$10$Bm1D7PjW26Bqx0A9ptWB2OYrILm1.DatgGJTUP.7ats6Q3HlYK08u', 2, 1, 1557837763, 10),
(21, 'sultan arbai', 'asd@gmail.com', 'default.jpg', '$2y$10$7pTTxmsh4fcJyhm/NkIxbO9Cs7oCMl4gsPoXyg6HAGwxy8dwaIuxi', 2, 1, 1557890185, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(11, 1, 3),
(14, 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_articel`
--

CREATE TABLE `user_articel` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date_created` varchar(128) NOT NULL,
  `kategori` varchar(128) NOT NULL,
  `image` varchar(125) NOT NULL,
  `name` varchar(125) NOT NULL,
  `suka` int(255) NOT NULL,
  `cek` int(1) NOT NULL,
  `email` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_articel`
--

INSERT INTO `user_articel` (`id`, `title`, `content`, `date_created`, `kategori`, `image`, `name`, `suka`, `cek`, `email`) VALUES
(6, 'Arsip (file)ayah', 'adalah kumpulan rekaman (record) yang bertipe sama. Pengelolaan arsip pada bhasa java sedikit lebih rumit dibandingkan dengan pengelolaan arsip pada bahasa C, khususnya yang berhubungan dengan proses membuka arsip yang dibedakan lagi apakah untukk dibaca atau untuk ditulis.ayah', '1557891042', 'hiburan', '', 'sultan arbai', 14, 0, 'sultanarbai@gmail.com'),
(7, 'apa itu algoritma', 'proosedur yang berisi langkah langkah  penyelesaian persoalan disebut algoritma.\r\n\r\nalgoritma adalah urutan langkah-langkah untuk menyelesaikan suatu persoalan.\r\n\r\n      terdapat beberapa definisi lain tentang algoritma - tetapi pada prinsipnya senada dengan definisi yang diungkapkan di atas - yang di kutip dari berbagai literatur, antara lain:\r\n\r\nalgoritma adalah deretan langkah-langkah komputasi yang mentransformasikan data masukan menjadi luaran.[COR90]\r\n\r\nalgoritma adalah deretan instruksi yang jelas untuk memecahkan persoalan, yaitu untuk memperoleh luaran yang diinginkan dari suatu masukan dalam jumlah waktu yang terbatas.[LEVo3]', '1557642058', 'pendidikan', '', '', 0, 0, 'sultanarbai@gmail.com'),
(8, 'kata kata bijak', 'makan untuk hidup bukan hidup untuk makan. camkan itu bagi orang mumbazir dengan makanan.', '1557805982', 'pendidikan', '', '', 0, 0, 'sultanarbai@gmail.com'),
(10, 'php mvc itu gampang gitu', 'djijwujeufjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj<div style=\"background-color: black; color: red; font-size: 1000px\">uhukuhuk', '1557890961', 'olahraga', '', 'sultan arbai', 0, 0, 'sultanarbai@gmail.com'),
(14, 'puasa', 'bukan sekedar menahan lapar dan dahaga, tapi juga menahan amarah emosi.', '1557674913', 'agama', '', '', 0, 0, 'sultanarbai@gmail.com'),
(15, 'jkasbugdvjyassygd&lt;div style=&quot;color: red; font-size: 100px&quot;&gt;uhukuhuk&lt;/div&gt;', 'mnddbdbdbdbd&lt;div style=&quot;color: red; font-size: 100px&quot;&gt;uhukuhuk', '1557893208', 'olahraga', '4K-Black-Wallpaper-High-Quality.jpg', 'sultan arbai', 0, 0, 'sultanarbai@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(8, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(9, 2, 'Articel', 'user/articel', 'far fa-fw fa-newspaper', 1),
(10, 2, 'Film', 'user/film', 'fas fa-fw fa-film', 1),
(11, 2, 'Weather', 'user/weather', 'fas fa-fw fa-cloud-sun-rain', 1),
(12, 2, 'My articel', 'controller/myarticel', 'far fa-fw fa-newspaper', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(3, 'sultanarbai@gmail.com', 'zA/KkS8QTENZwjzdnn9ZeeRUdGpfb9Q9XWHtdEM0u+c=', 1556717987),
(4, 'sultanarbai@gmail.com', 'Mn7Dth2BtpCwnRmEc1mi8+ci3MTuR9VVkAznXy9tV/M=', 1557554736),
(5, 'aa@gmail.com', 'FmbB7+TIbC/muFHnLPTmegkrr9XA3+BqhIFAuYFuRyg=', 1557834090),
(6, 'asaa@gmail.com', 'peIZSZxpjO8eX+rbJo6yVQ+3Tt+29y4l0gZjH/U4Oug=', 1557837688),
(7, 'asa@gmail.com', 'oNRukXcrixPYqpv+j83wTn4Suj4mCZFhumL1TkCtIYE=', 1557837763),
(8, 'asd@gmail.com', 'kfS0I1G491T0awO2ETX+AyTPGw3rxKkZJciJZen6urs=', 1557890185);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_articel`
--
ALTER TABLE `user_articel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user_articel`
--
ALTER TABLE `user_articel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
