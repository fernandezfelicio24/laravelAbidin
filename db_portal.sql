-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Agu 2020 pada 09.27
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ku`
--

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_12_01_133938_create_users_table', 1),
(3, '2019_12_01_135930_create_user_table', 2),
(4, '2019_12_01_140310_create_users_table', 3);

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
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `nama`, `email`, `username`, `password`, `gambar`) VALUES
(1, 'Juan Karly Matheus', 'juan@abidinnews.com', 'juan12345', 'c84258e9c39059a89ab77d846ddab909', ''),
(2, 'Felicio', 'felicio@abidinnews.com', 'felicio12345', 'e00cf25ad42683b3df678c61f42c6bda', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_artikel`
--

CREATE TABLE `tb_artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `id_kategori` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_artikel`
--

INSERT INTO `tb_artikel` (`id`, `judul`, `kategori`, `id_kategori`, `deskripsi`, `isi`, `gambar`, `created_at`, `updated_at`) VALUES
(11, 'Hilang Hampir Sepekan, Petani di Salatiga Ditemukan Tewas', 'Ekonomi', 'tk-1', 'Artikel ini berisika tentang Hilang Hampir Sepekan, Petani di Salatiga Ditemukan Tewas', '<h1><strong>Salatiga</strong>&nbsp;- Seorang petani di Salatiga yang dilaporkan hilang sejak Rabu (31/7) ditemukan hari ini. Petani bernama Rusito Rusman (77) ditemukan dalam kondisi meninggal dunia.<br />\r\n<img alt=\"\" src=\"https://akcdn.detik.net.id/community/media/visual/2019/08/05/215e30f8-99e1-42a1-9bdc-60a385ad83a0_169.jpeg?w=780&amp;q=90\" style=\"height:440px; width:780px\" /><br />\r\n&quot;Kami informasikan, tadi info dari kepala Desa Kumpulrejo, Bapak Bayu, bahwa pada pukul 14.40 WIB tadi Rusito Rusman sudah ditemukan,&quot; Humas Basarnas Jateng, Nur Mustofa, Senin (5/8/2019).<br />\r\n<br />\r\nNur Mustofa menjelaskan jasad korban ditemukan oleh warga. Sedangkan proses evakuasinya melibatkan, warga, Tim Sar Gabungan, dan aparat setempat.<br />\r\n&nbsp;</h1>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Baca juga:&nbsp;</strong><a href=\"https://news.detik.com/read/2019/08/02/162553/4649844/1536/pamit-ke-kebun-petani-di-salatiga-sudah-3-hari-hilang\">Pamit ke Kebun, Petani di Salatiga sudah 3 Hari Hilang</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h1><br />\r\n&quot;Lokasinya (penemuan jasad korban) ke arah timur, sekitar 200 meter dari TKP. Korban ditemukan dalam keadaan meninggal dunia. Saat ini korban berada dibawa ke RSUD Salatiga,&quot; tegas Nur Mustofa.<br />\r\n<br />\r\nDiwawancara sebelumnya, Nur Mustofa menjelaskan bahwa Rusito hilang setelah pamit pergi ke ladang yang berjarak 1,5 km dari rumahnya pada Rabu pekan lalu.<br />\r\n<br />\r\n&quot;Waktu sore hari, sebelum diinfokan hilang. Diketahui bahwa ada warga yang masih melihat korban di ladang, tetapi sampai malam hari, Rusito tidak kunjung pulang ke rumah,&quot; kata Nur Mutofa, Jumat (2/8).<br />\r\n<strong>(sip/sip)</strong></h1>', '1575305122_perkosa.jpg', '2019-12-02 09:45:22', '2019-12-02 09:45:22'),
(12, 'Pamit ke Kebun, Petani di Salatiga sudah 3 Hari Hilang', 'Olahraga', 'ol-1', 'Artikel ini berisikan tentang Pamit ke Kebun, Petani di Salatiga sudah 3 Hari Hilang', '<p><strong>Salatiga</strong>&nbsp;- Seorang petani di Salatiga diduga hilang saat pergi ke kebunnya. Korban sudah hilang sejak 3 hari yang lalu. Hingga kini tim SAR masih melakukan pencarian.<br />\r\n<br />\r\nKorban adalah Rusito Rusman (77), seorang petani asal Dusun Tetep Desa Wates, RT 1/6 Kumpulrejo Kecamatan Argomulyo Kota Salatiga. Pada hari Rabu (31/7/2019) lalu Mbah Rusito pamit kepada keluarga hendak bekerja menggarap ladangnya. Namun sampai hari ini belum juga pulang ke rumah. Keluarga pun mencarinya. Sedangkan jarak antara rumah dengan kebun milik korban sekitar 1,5 kilometer.<br />\r\n<br />\r\n&quot;Mbah Rusito saat ini diduga hilang di kebun Teteprandu Kelurahan Kumpulrejo, Kecamtan Argomulyo Kota Salatiga sejak Rabu (31/07/2019). Kami terus mencari bersama Tim SAR gabungan, tetapi juga belum ada tanda-tanda keberadaan survivor tersebut,&quot; ujar Humas Basarnas Jateng, Nur Mustofa saat dihubungi detikcom, Jumat (2/08/2019).<br />\r\n<br />\r\nIa menambahkan, dari data yang dikumpulkan Tim SAR di lapangan, Mbah Rusito pergi ke ladang untuk merawat tanaman dan membakar sampah. Bahkan pada hari itu, sempat ada warga yang melihat korban sedang bekerja di ladang garapannya.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Baca juga:&nbsp;</strong><a href=\"https://news.detik.com/read/2019/08/01/165849/4648503/475/3-hari-hilang-pencari-rumput-laut-ditemukan-tewas-mengambang\">3 Hari Hilang, Pencari Rumput Laut Ditemukan Tewas Mengambang</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\n&quot;Waktu sore hari, ada warga yang masih melihat korban di ladang, tetapi sampai malam hari, Rusito tidak kunjung pulang ke rumah. Warga setempat sudah berusaha mencari dengan menelusuri ladang dan memukuli peralatan dapur, sesuai kearifan masyarakat setempat. Namun sampai sekarang hasilnya masih nihil,&quot; imbuh Nur Mustofa.<br />\r\n<br />\r\nIa menambahkan, saat ini Basarnas Jateng, melalui instruksi Kasi Operasi dan Siaga Basarnas Jateng, Agung Hari Prabowo, telah memberangkatkan tim Rescuer untuk melaksanakan pencarian dengan membawa peralatan mountaineering.<br />\r\n<br />\r\n&quot;Ada empat SRU, yakni SRU 1 melaksakan penyisiran ke arah Timur dari LKK kurang lebih 1 KM. SRU 2 melaksanakan penyisiran ke arah Barat dari LKK kurang lebih 1 KM. SRU 3 dan SRU 4 menyisir tempat-tempat yang di curigai seperti jurang dan rumpun bambu dan sungai,&quot; tandas Nur Mustofa.</p>', '1575305201_cscsc.jpeg', '2019-12-02 09:46:41', '2019-12-02 09:46:41'),
(13, 'PKS Apresiasi Jokowi: Kalau Tidak Tegas, Isu Presiden 3 Periode Jadi Liar', 'Buisness', 'bs-1', 'Artikel ini berisikan tentang PKS Apresiasi Jokowi: Kalau Tidak Tegas, Isu Presiden 3 Periode Jadi Liar', '<p><strong>Jakarta</strong>&nbsp;- PKS mengapresiasi sikap&nbsp;<a href=\"https://www.detik.com/tag/presiden-joko-widodo\">Presiden Joko Widodo</a>&nbsp;(Jokowi) yang menyebut pihak yang memunculkan wacana masa jabatan presiden 3 periode hendak mencari muka ke dirinya. Sebab, menurut&nbsp;<a href=\"https://www.detik.com/tag/pks\">PKS</a>, jika dibiarkan wacana tersebut akan menjadi bencana bagi demokrasi Indonesia.<br />\r\n<br />\r\n&quot;Bravo untuk Pak Jokowi yang sudah bicara keras dan tegas karena ini masalah yang sangat fundamental, kalau Pak Jokowi nggak punya sikap tegas maka ini akan terus berkembang menjadi sesuatu yang bencana. Karena jadi liar ini, awalnya GBHN, presiden dipilih MPR, tiga periode. Nah, saya apresiasi Pak Jokowi,&quot; kata Ketua DPP PKS,&nbsp;<a href=\"https://www.detik.com/tag/mardani-ali-sera\">Mardani Ali Sera</a>, di kompleks Parlemen, Senayan, Jakarta, Senin (2/12/2019).<br />\r\n<br />\r\nMardani mengatakan isu penambahan masa jabatan presiden ini memang memberi &#39;getah&#39; pada Jokowi. Sebab, publik akan menafsirkan wacana ini digulirkan agar Jokowi tetap bisa duduk di bangku nomor satu di Indonesia.<br />\r\n&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Baca juga:&nbsp;</strong><a href=\"https://news.detik.com/read/2019/12/02/193254/4807150/10/isu-presiden-3-periode-mengemuka-jokowi-sindir-pencari-muka\">Isu Presiden 3 Periode Mengemuka, Jokowi Sindir Pencari Muka</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\n&quot;Isu ini memang menohok Pak Jokowi. Karena publik menafsirkan Pak Jokowi yang mau 3 periode karena beliau yang lagi berkuasa. Jadi cari muka atau tidak, pokoknya Pak Jokowi yang kena getahnya. Makanya dia harus secara tegas menegasikan itu. Saya apresiasi tetapi tindak lanjuti dan usahakan,&quot; ujarnya.<br />\r\n<br />\r\nAnggota DPR itu pun meminta Jokowi untuk menindaklanjuti siapa pihak yang mencari muka tersebut. Sebab, menurut Mardani, wacana tersebut berbahaya bagi Jokowi.</p>', '1575305308_1.png', '2019-12-02 09:48:28', '2019-12-02 09:48:28'),
(15, 'Berita tentang ekonomi', 'Ekonomi', 'ek-1', 'Artikel ini berisikan tentang Berita ekonomi', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '1575344345_rpl1.PNG', '2019-12-02 20:39:05', '2019-12-02 20:39:05'),
(16, 'Berita Bola', 'Olahraga', 'ol-1', 'Messi tidak suka griezman', '<p>Barcelona sukses mengamankan tiga poin penuh di markas Villarreal&nbsp;Stadion El Madrigal, pada pekan ke-34 LaLiga 2019/2020, Senin (06/07/20) dini hari WIB. Laga ini menjadi panggung Lionel Messi dan Antoine Griezmann. Sejak laga dimulai, Villarreal berusaha menggempur pertahanan Barcelona. Santi Cazorla dan kawan-kawan nampak menyajikan permainan cepat di laga ini. Namun Villarreal harus dikagetkan dengan gol cepat Blaugrana. Berawal dari serangan balik yang dirancang Luis Suarez dan Jordi Alba, Pau Torres justru membuat gol bunuh diri setelah salah mengantisipasi hasil umpan mendatar dari Alba.<br />\r\n<br />\r\n&nbsp;</p>', '1594039383_messi.jpg', '2020-07-06 05:43:03', '2020-07-06 05:43:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `idkategori` varchar(100) NOT NULL,
  `namaKategori` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`idkategori`, `namaKategori`, `created_at`, `updated_at`) VALUES
('bs-1', 'Buisness', '2019-11-29 15:54:12', '2019-11-29 15:54:12'),
('ek-1', 'Ekonomi', '2019-11-29 15:54:12', '2019-11-29 15:54:12'),
('ol-1', 'Olaharaga', '2019-11-29 15:54:12', '2019-11-29 15:54:12'),
('tk-1', 'Teknologi', '2019-11-29 15:54:12', '2019-11-29 15:54:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'philips', 'admin', '$2y$10$1dYUzmYAvb4.8SYgVJKhwe9eoYasf5t0xkacASpFPPnvhNwHJ9lSW', 'drLAztsfTG4SKIqfPRqJPQpFFGmnwH9wGEbaEJoLveewXCpFBSqGJJw7XEAK', '2019-12-01 07:05:27', '2019-12-01 07:05:27');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`(225));

--
-- Indeks untuk tabel `tb_artikel`
--
ALTER TABLE `tb_artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_artikel`
--
ALTER TABLE `tb_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_artikel`
--
ALTER TABLE `tb_artikel`
  ADD CONSTRAINT `tb_artikel_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`idkategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
