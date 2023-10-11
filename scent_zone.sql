-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 10, 2023 at 02:15 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scent_zone`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `userId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `description`, `price`, `userId`, `createdAt`, `updatedAt`) VALUES
(2, 'COCO MADEMOISELLE', '1696876594465.jpg', 'Parfum aroma amber yang segar dan feminin dengan karakter khas. Dua nama yang melambangkan dua persona. Wanita yang jahil dan provokatif sekaligus mandiri dan menawan, wanita yang bebas menemukan jati dirinya yang baru. COCO MADEMOISELLE tersedia dalam pilihan EAU DE PARFUM INTENSE, EAU DE PARFUM, EAU DE TOILETTE, EAU POUR LA NUIT, produk perawatan tubuh, serta produk dengan botol spray kecil.', '20000.00', 1, '2023-10-09 18:36:34', '2023-10-09 18:36:34'),
(3, 'BVLGARI MAN In Black ', '1696876764123.jpg', 'Bvlgari merayakan 130 tahun keberadaannya dan peluncuran parfum baru Bvlgari Man In Black, sebagai koleksi tambahan dari Bvlgari Man asli dari 2010. Parfum ini diumumkan sebagai aroma yang berani dan karismatik, terinspirasi oleh mitos kelahiran Vulcan, dewa bumi , ditafsirkan dengan cara yang sesuai untuk manusia modern.', '845000.00', 1, '2023-10-09 18:39:24', '2023-10-09 18:39:24'),
(4, 'MISS Dior Eau de Parfum', '1696876900409.jpg', 'Miss Dior Eau de Parfum yang baru secara spektakuler diciptakan kembali dengan setumpuk penuh warna-warni, sensual velvety flower, dan segar seperti mutiara. Aromanya powdery, fruity, lembut, segar, tapi juga tajam. Dikreasikan oleh François Demachy, parfum ini masih identik dengan wangi bunga mawar.', '2120000.00', 1, '2023-10-09 18:41:40', '2023-10-09 18:41:40'),
(5, 'GRIS DIOR Chirstian Dior Paris', '1696877185369.jpg', 'Gris Dior adalah ekspresi penciuman abu-abu, warna ikonik House of Dior yang mewujudkan semangat berani Christian Dior. Sebuah eau de parfum unisex yang menentang gender, Gris Dior adalah wewangian chypre intens yang memberikan pernyataan yang kuat dan mudah dikenali, wewangian yang Anda adopsi dan tafsirkan sesuai aturan Anda sendiri. ', '4369000.00', 1, '2023-10-09 18:46:25', '2023-10-09 18:46:25'),
(6, 'LUCKY Christian Dior Paris', '1696877339579.jpg', 'Merasa sangat beruntung hari ini di rumah bersama Maison Christian Dior. Kami mendoakan Anda beruntung dan bahagia dengan jimat keberuntungan kami sendiri, Lucky, dengan aroma lily of the valley, bunga favorit Christian Dior yang membawa keberuntungan.', '2250000.00', 1, '2023-10-09 18:48:59', '2023-10-09 18:48:59'),
(7, 'OUD ISPAHAN Christian Dior Paris', '1696877411159.jpg', 'Oud Ispahan oleh Christian Dior adalah wewangian Oriental Floral untuk wanita dan pria. Oud Ispahan diluncurkan pada tahun 2012. Pencipta wewangian ini adalah Francois Demachy. Nada teratas adalah labdanum; nada tengahnya adalah nilam; nada dasar adalah kayu cendana, mawar dan gaharu (oud). ', '6549000.00', 1, '2023-10-09 18:50:11', '2023-10-09 18:50:11'),
(8, 'AMBRE NUIT Christian Dior Paris', '1696877504782.jpg', 'Ambre Nuit adalah wewangian oriental. Kekuatan instan dari wewangian, yang lahir dari aroma binatang Amber, diperhalus oleh aksen sensual dan lembut. Karakter yang terus terang dan tertutup.', '5650000.00', 1, '2023-10-09 18:51:44', '2023-10-09 18:51:44'),
(10, 'CHANEL Coco Noir ', '1696896740375.jpg', 'COCO NOIR adalah wujud sebuah paradoks. Warna gelapnya kian mempertegas sisi femininitas. Parfum amber modern dengan aroma penuh daya pikat.', '3250000.00', 1, '2023-10-10 00:12:20', '2023-10-10 00:12:20'),
(11, 'BVLGARI MEN Terrae Essence ', '1696897791966.jpg', 'Wangi pembuka: Citron dan Calamansi Nada inti: Vetiver dan Orris Catatan dasar: Catatan Bumi dan Styrax.', '2480000.00', 4, '2023-10-10 00:29:51', '2023-10-10 00:29:51'),
(12, 'BVLGARI MEN Wood Neroli', '1696897852702.jpg', 'Bvlgari Man Wood Neroli oleh Bvlgari adalah wewangian Woody Floral Musk untuk pria. Bvlgari Man Wood Neroli diluncurkan pada tahun 2019. Pencipta wewangian ini adalah Alberto Morillas. Wangi pembukanya adalah Neroli dan Bergamot; nada tengahnya adalah Orange Blossom, Virginia Cedar dan Cypriol Oil atau Nagarmotha; base notenya adalah Woody Notes, White Musk, Ambergris, Amber dan Leather.', '2359000.00', 4, '2023-10-10 00:30:52', '2023-10-10 00:30:52'),
(13, 'Zara Black Amber ', '1696897890336.jpg', 'Black Amber by Zara adalah wewangian Amber Floral untuk wanita. Black Amber diluncurkan pada tahun 2016. Aroma utamanya adalah Mandarin Orange; aroma tengahnya adalah Markisa dan Bunga Tiare; nada dasar adalah Musk dan Vanila', '300000.00', 4, '2023-10-10 00:31:30', '2023-10-10 00:31:30'),
(14, 'GUCCI Intens Oud ', '1696897927804.jpg', 'Gucci Intense Oud adalah parfum populer dari Gucci untuk wanita dan pria dan dirilis pada tahun 2015. Aromanya bernuansa kayu-oriental. Proyeksi dan umur panjangnya di atas rata-rata. Terakhir dipasarkan oleh Coty.', '1950000.00', 4, '2023-10-10 00:32:07', '2023-10-10 00:32:07'),
(15, 'CHANEL Bleu De ', '1696897963015.jpg', 'Bleu de Chanel by Chanel adalah wewangian Woody Aromatic untuk pria. Bleu de Chanel diluncurkan pada tahun 2010. Pencipta wewangian ini adalah Jacques Polge. Wangi pembukanya adalah Grapefruit, Lemon, Mint, dan Pink Pepper; nada tengahnya adalah Jahe, Pala, Melati dan Iso E Super; base notenya adalah Dupa, Vetiver, Cedar, Cendana, Nilam, Labdanum dan White Musk', '2340000.00', 4, '2023-10-10 00:32:43', '2023-10-10 00:32:43'),
(16, 'CHANEL Chance', '1696898001021.jpg', 'Chance Eau de Toilette by Chanel adalah wewangian Chypre Floral untuk wanita. Chance Eau de Toilette diluncurkan pada tahun 2002. Pencipta wewangian ini adalah Jacques Polge. Wangi pembukanya adalah Nilam, Lada Merah Muda, Nanas, Hiacynth, dan Iris; nada tengahnya adalah Lemon, Melati dan Mawar; base notenya adalah Nilam, Musk, Vetiver dan Vanilla', '28790000.00', 4, '2023-10-10 00:33:21', '2023-10-10 00:33:21'),
(17, 'DIOR Sauvage ', '1696898033180.jpg', 'Sauvage by Dior adalah wewangian Aromatic Fougere untuk pria. Sauvage diluncurkan pada tahun 2015. Pencipta wewangian ini adalah François Demachy. Wangi pembukanya adalah bergamot Calabria dan Lada; aroma tengahnya adalah Lada Sichuan, Lavender, Lada Merah Muda, Vetiver, Nilam, Geranium dan elemi; base notenya adalah Ambroxan, Cedar dan Labdanum.', '1659000.00', 4, '2023-10-10 00:33:53', '2023-10-10 00:33:53'),
(18, 'PRADA Paradaxe ', '1696898065597.jpg', 'Prada Paradoxe oleh Prada adalah wewangian Amber Floral untuk wanita. Ini adalah wewangian baru. Prada Paradoxe diluncurkan pada tahun 2022. Prada Paradoxe diciptakan oleh Nadège Le Garlantezec, Antoine Maisondieu dan Shyamala Maisondieu. Wangi pembukanya adalah Pir, Tangerine dan Bergamot; aroma tengahnya adalah Orange Blossom, Neroli Essence, Neroli dan Jasmine Sambac; base notenya adalah Bourbon Vanilla, White Musk, Amber dan Benzoin', '2989000.00', 4, '2023-10-10 00:34:25', '2023-10-10 00:34:25'),
(19, 'OUD ISPAHAN Christion Dior Paris ', '1696898105886.jpg', 'Oud Ispahan oleh Dior adalah wewangian Amber Floral untuk wanita dan pria. Oud Ispahan diluncurkan pada tahun 2012. Pencipta wewangian ini adalah François Demachy. Nada teratas adalah Labdanum; nada tengahnya adalah Mawar, Nilam dan Saffron; base notenya adalah Gaharu (Oud), Cendana dan Cedar.', '5784000.00', 4, '2023-10-10 00:35:05', '2023-10-10 00:35:05'),
(20, 'CHANEL Gabrielle ', '1696898131749.jpg', 'Gabrielle by Chanel adalah wewangian Bunga untuk wanita. Gabrielle diluncurkan pada tahun 2017. Pencipta wewangian ini adalah Olivier Polge. Wangi pembukanya adalah Grapefruit, Mandarin Orange, dan Black Currant; aroma tengahnya adalah Bunga Jeruk, Melati, Ylang-Ylang, Sedap Malam, Lily-of-the-Valley, Pir, dan Lada Merah Muda; base notenya adalah Musk, Cendana, Cashmeran dan Orris', '1500000.00', 4, '2023-10-10 00:35:31', '2023-10-10 00:35:31'),
(21, 'Terre D HERMES ', '1696898160342.jpg', 'Terre d\'Hermès dari Hermès adalah wewangian Woody Spicy untuk pria. Terre d\'Hermès diluncurkan pada tahun 2006. Pencipta wewangian ini adalah Jean-Claude Ellena. Wangi pembukanya adalah Jeruk dan Grapefruit; nada tengahnya adalah Pepper, Pelargonium dan Flint; base notenya adalah Vetiver, Cedar, Patchouli dan Benzoin. Parfum ini merupakan pemenang penghargaan FiFi Award Fragrance Of The Year Men`s Luxe 2007.', '1370000.00', 4, '2023-10-10 00:36:00', '2023-10-10 00:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20231009151724-create-user.js'),
('20231009162744-create-product.js');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'developer', 'developer@testing.com', '$2b$10$d2zmmY9k0ZAECCczXmU8W.hm4iLxHDXHjhLVAa3RK/Siy7ux94c1W', '2023-10-09 18:36:21', '2023-10-09 18:36:21'),
(4, 'user', 'user@testing.com', '$2b$10$Cd.dP8cRQsxCxDJ1t7.GnOArKrLkpoKYpILaUNorsHzmCGNbrIYhy', '2023-10-10 00:28:28', '2023-10-10 00:28:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
