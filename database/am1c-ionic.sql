-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 11 jun 2018 om 07:26
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `am1c-ionic`
--
CREATE DATABASE IF NOT EXISTS `am1c-ionic` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `am1c-ionic`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `infix` varchar(20) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `residence` varchar(200) NOT NULL,
  `absence` varchar(20) NOT NULL,
  `birthday` datetime NOT NULL,
  `photoPath` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `infix`, `lastname`, `residence`, `absence`, `birthday`, `photoPath`) VALUES
(1, 'Dagobertus', '', 'Duck', 'Utrecht test', '635/700', '1900-05-30 00:00:00', './assets/imgs/dagobert.png'),
(2, 'Zwarte', '', 'Magica', 'Rotterdam', '635/20', '1905-08-30 00:00:00', './assets/imgs/magica.png'),
(3, 'Zware', '', 'Jongen', 'Amsterdam', '635/635', '1930-05-27 00:00:00', './assets/imgs/zwarejongen.jpg'),
(4, 'Kwik', 'Kwek', 'Kwak', 'Utrecht', '636/150', '1990-05-30 00:00:00', './assets/imgs/kwikkwekkwak.png'),
(5, 'Madam', '', 'Mikmak', 'Maastricht', '634/634', '1880-04-12 00:00:00', './assets/imgs/mikmak.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
