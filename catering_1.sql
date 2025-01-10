-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2024 at 07:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catering`
--
CREATE DATABASE IF NOT EXISTS `catering` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `catering`;

-- --------------------------------------------------------

--
-- Table structure for table `kategorije`
--

CREATE TABLE IF NOT EXISTS `kategorije` (
  `KategorijaID` int(11) NOT NULL AUTO_INCREMENT,
  `NazivKategorije` varchar(30) NOT NULL,
  `Program` varchar(10) NOT NULL,
  PRIMARY KEY (`KategorijaID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategorije`
--

INSERT INTO `kategorije` (`KategorijaID`, `NazivKategorije`, `Program`) VALUES
(0, 'Izbrisana', 'Rezervisan'),
(13, 'Pizze', 'slani'),
(15, 'Kolači', 'slatki'),
(16, 'Torte', 'slatki'),
(18, 'Salate', 'slani');

--
-- Triggers `kategorije`
--
DELIMITER $$
CREATE TRIGGER `IzbrisiKategorijeProizvoda` BEFORE DELETE ON `kategorije` FOR EACH ROW UPDATE `proizvodi` SET `KategorijaID` = 0 WHERE OLD.`KategorijaID` = proizvodi.KategorijaID
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE IF NOT EXISTS `korisnici` (
  `KorisnickoIme` varchar(50) NOT NULL,
  `Ime` varchar(30) NOT NULL,
  `Prezime` varchar(30) NOT NULL,
  `Adresa` varchar(30) NOT NULL,
  `Poeni` int(11) NOT NULL,
  `PasswordHash` varchar(50) NOT NULL,
  `RolaID` int(11) NOT NULL,
  PRIMARY KEY (`KorisnickoIme`),
  KEY `FK_Korisnik_Rola` (`RolaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`KorisnickoIme`, `Ime`, `Prezime`, `Adresa`, `Poeni`, `PasswordHash`, `RolaID`) VALUES
('aa', 'aa', 'aa', 'aab', 0, 'd41d8cd98f00b204e9800998ecf8427e', 2),
('dada', 'dada', 'dada', 'dada', 0, '44f21d5190b5a6df8089f54799628d7e', 2),
('dfdf', 'dfdf', 'dfdfh', 'dfdf', 55, 'd41d8cd98f00b204e9800998ecf8427e', 3),
('fafa', 'fafa', 'fafa', 'fafa', 67, 'd926d7bb9ccf46fc04a61bd65d87b9b3', 2),
('gaga', 'gaga', 'gaga', 'gaga', 45, '811584043b844704c9bb9a6e99dd05d3', 3),
('izbrisani', 'Rezervisan', 'Korisnik', 'Nema', 0, 'Nema', 1),
('mm', 'mm', 'mm', 'mm', 0, 'b3cd915d758008bd19d0f2428fbb354a', 3),
('tt', 'tt', 'ttrr', 'tt', 95, 'd41d8cd98f00b204e9800998ecf8427e', 3),
('ttt', 'tt', 'ttrr', 'tt', 50, '9990775155c3518a0d7917f7780b24aa', 1),
('uu', 'uu', 'uu', 'uu', 0, '6277e2a7446059985dc9bcf0a4ac1a8f', 3),
('zaza', 'zaza', 'zaza', 'zaza', 25, '107030ca685076c0ed5e054e2c3ed940', 3);

--
-- Triggers `korisnici`
--
DELIMITER $$
CREATE TRIGGER `IzbrisiNarudzbe` BEFORE DELETE ON `korisnici` FOR EACH ROW UPDATE narudzbine SET narudzbine.KorisnickoIme = 'izbrisani' WHERE narudzbine.KorisnickoIme = OLD.KorisnickoIme
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `narudzbine`
--

CREATE TABLE IF NOT EXISTS `narudzbine` (
  `NarudzbinaID` int(11) NOT NULL AUTO_INCREMENT,
  `KorisnickoIme` varchar(50) NOT NULL,
  `DatumKreiranja` date NOT NULL,
  `DatumOstvarivanja` date DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `UkupnaCena` int(11) NOT NULL,
  `Popust` int(11) NOT NULL,
  PRIMARY KEY (`NarudzbinaID`) USING BTREE,
  KEY `FK_Narudzbina_Korisnik` (`KorisnickoIme`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `narudzbine`
--

INSERT INTO `narudzbine` (`NarudzbinaID`, `KorisnickoIme`, `DatumKreiranja`, `DatumOstvarivanja`, `Status`, `UkupnaCena`, `Popust`) VALUES
(30, 'izbrisani', '2024-05-25', '2024-05-26', 2, 33000, 0),
(31, 'fafa', '2024-05-25', NULL, 2, 63000, 0),
(32, 'fafa', '2024-05-25', NULL, 0, 15464, 0),
(33, 'fafa', '2024-05-25', '2024-05-26', 1, 63000, 0),
(34, 'fafa', '2024-05-25', NULL, 2, 77000, 0),
(35, 'fafa', '2024-05-25', '2024-05-26', 1, 1776, 0),
(36, 'fafa', '2024-05-25', NULL, 2, 13376, 0),
(37, 'fafa', '2024-05-26', NULL, 0, 93408, 0),
(38, 'fafa', '2024-05-26', NULL, 0, 14600, 0),
(39, 'fafa', '2024-05-26', '2024-05-26', 1, 3700, 0),
(40, 'fafa', '2024-05-26', NULL, 2, 5500, 0),
(41, 'aa', '2024-05-26', NULL, 0, 2220, 0),
(42, 'aa', '2024-05-26', '2024-05-26', 1, 1776, 0),
(43, 'aa', '2024-05-26', NULL, 0, 21980, 10),
(44, 'aa', '2024-05-26', NULL, 0, 9640, 0),
(45, 'aa', '2024-05-26', NULL, 0, 15320, 0),
(46, 'aa', '2024-05-26', NULL, 0, 1776, 0),
(47, 'izbrisani', '2024-05-26', NULL, 2, 91720, 0),
(48, 'izbrisani', '2024-05-26', NULL, 2, 77440, 0),
(49, 'izbrisani', '2024-05-26', NULL, 2, 16720, 0),
(50, 'izbrisani', '2024-05-26', NULL, 2, 1776, 0),
(51, 'izbrisani', '2024-05-26', NULL, 2, 5200, 0),
(52, 'izbrisani', '2024-05-26', '2024-05-26', 1, 17600, 0),
(53, 'izbrisani', '2024-05-26', NULL, 2, 2220, 0),
(54, 'izbrisani', '2024-05-26', NULL, 2, 1780, 20),
(55, 'izbrisani', '2024-05-26', NULL, 0, 2220, 0),
(56, 'aa', '2024-05-26', NULL, 0, 3000, 0),
(57, 'izbrisani', '2024-05-27', '2024-05-27', 1, 40000, 0),
(58, 'izbrisani', '2024-05-27', NULL, 0, 1072, 20),
(59, 'tt', '2024-05-27', '2024-05-27', 1, 97000, 0),
(60, 'tt', '2024-05-27', NULL, 0, 15636, 20),
(61, 'ttt', '2024-05-29', NULL, 2, 29304, 0),
(62, 'ttt', '2024-05-29', '2024-05-29', 1, 29304, 0),
(63, 'ttt', '2024-05-29', '2024-05-29', 1, 23444, 20),
(64, 'ttt', '2024-05-29', NULL, 0, 29304, 0),
(65, 'uu', '2024-05-29', NULL, 2, 317544, 0),
(66, 'uu', '2024-05-29', NULL, 2, 1776, 0),
(67, 'uu', '2024-05-29', NULL, 2, 317544, 0);

-- --------------------------------------------------------

--
-- Table structure for table `proizvodi`
--

CREATE TABLE IF NOT EXISTS `proizvodi` (
  `ProizvodID` int(11) NOT NULL AUTO_INCREMENT,
  `NazivProizvoda` varchar(30) NOT NULL,
  `Opis` varchar(256) NOT NULL,
  `Slika` varchar(50) NOT NULL,
  `CenaPoPorciji` int(11) NOT NULL,
  `KategorijaID` int(11) NOT NULL,
  PRIMARY KEY (`ProizvodID`),
  KEY `FK_Proizvodi_Kategorije` (`KategorijaID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proizvodi`
--

INSERT INTO `proizvodi` (`ProizvodID`, `NazivProizvoda`, `Opis`, `Slika`, `CenaPoPorciji`, `KategorijaID`) VALUES
(1, 'Cezar Salata', 'Salata od pileceg belog mesa, zelene salate,paradajiza,sosa', 'Caesar.jpg', 1000, 18),
(8, 'Morska pizza', 'Poznata italijanska pica sa skoljkama,skampima i rakcicima', 'pizzamorska.jpg', 444, 13),
(20, 'Čokoladna torta', 'Torta sa prelivom od crne čokolade i filom od bele čokolade', 'cokotorta.jpg', 550, 16),
(24, 'Cokoladni kolaci', 'Ukusni cokoladni kolaci,20 komada', 'cokoladni.jpg', 1500, 15),
(25, 'Grcka salata', 'Poznata grcka salata sa mnostvo svezeg povrca i sira', 'Grcka.jpg', 450, 18),
(26, 'Morska salata', 'Sveza salata sa skoljkama, skampima i racicima', 'morskasalata.jpg', 470, 18),
(27, 'Tuna pizza-POSNO', 'Pizza bogata tunom , maslinama i posnim prelivom', 'pizzatuna.jpeg', 1400, 13),
(28, 'Vocni kolaci', 'Razni kolaci sa vocnim punjenjem,20 komada', 'vocni.jpg', 1300, 15),
(29, 'Coko vocni kolaci', 'Spoj cokoladnih i vocnik kolaca,100 komada', 'svizajedno.jpg', 3000, 15),
(30, 'Torta jagodica', 'Torta sa kit-ket cokoladom punjena jagodama', 'jagodatorta.jpg', 500, 16),
(31, 'Torta pita', 'Torta od karamele i bundeve', 'tortapita.jpg', 900, 16),
(32, 'Capricciosa', 'Najpoznatija pizza ikada!', 'pizzakapricoza.jpg', 1500, 13);

--
-- Triggers `proizvodi`
--
DELIMITER $$
CREATE TRIGGER `IzbrisiStavke` BEFORE DELETE ON `proizvodi` FOR EACH ROW UPDATE stavkenarudzbine SET `ProizvodID` = 0 WHERE OLD.`ProizvodID` = stavkenarudzbine.ProizvodID
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `RolaID` int(11) NOT NULL AUTO_INCREMENT,
  `NazivRole` varchar(50) NOT NULL,
  PRIMARY KEY (`RolaID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`RolaID`, `NazivRole`) VALUES
(1, 'Administrator'),
(2, 'Menadzer'),
(3, 'Klijent');

-- --------------------------------------------------------

--
-- Table structure for table `stavkenarudzbine`
--

CREATE TABLE IF NOT EXISTS `stavkenarudzbine` (
  `ProizvodID` int(11) NOT NULL,
  `NarudzbinaID` int(11) NOT NULL,
  `Kolicina` int(11) NOT NULL,
  PRIMARY KEY (`ProizvodID`,`NarudzbinaID`) USING BTREE,
  KEY `FK_Stavke_Narudzbe` (`NarudzbinaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stavkenarudzbine`
--

INSERT INTO `stavkenarudzbine` (`ProizvodID`, `NarudzbinaID`, `Kolicina`) VALUES
(8, 32, 6),
(8, 35, 4),
(8, 36, 4),
(8, 37, 32),
(8, 41, 5),
(8, 42, 4),
(8, 43, 55),
(8, 44, 10),
(8, 45, 5),
(8, 46, 4),
(8, 47, 5),
(8, 48, 10),
(8, 49, 5),
(8, 50, 4),
(8, 53, 5),
(8, 54, 5),
(8, 55, 5),
(8, 58, 3),
(8, 60, 44),
(8, 61, 66),
(8, 62, 66),
(8, 63, 66),
(8, 64, 66),
(8, 65, 676),
(8, 66, 4),
(8, 67, 676),
(20, 39, 2),
(24, 30, 22),
(24, 38, 2),
(24, 52, 4),
(24, 56, 2),
(24, 57, 22),
(24, 59, 55),
(27, 31, 45),
(27, 32, 7),
(27, 33, 45),
(27, 34, 55),
(27, 36, 4),
(27, 37, 33),
(27, 45, 4),
(27, 47, 5),
(27, 48, 5),
(27, 49, 5),
(27, 52, 4),
(27, 57, 5),
(27, 59, 5),
(27, 65, 6),
(27, 67, 6),
(28, 38, 2),
(28, 39, 2),
(28, 44, 4),
(28, 51, 4),
(29, 38, 3),
(30, 32, 6),
(30, 40, 2),
(32, 36, 4),
(32, 37, 22),
(32, 40, 3),
(32, 45, 5),
(32, 47, 55),
(32, 48, 44),
(32, 49, 5),
(32, 52, 4),
(32, 59, 5),
(32, 65, 6),
(32, 67, 6);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD CONSTRAINT `FK_Korisnik_Rola` FOREIGN KEY (`RolaID`) REFERENCES `role` (`RolaID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `narudzbine`
--
ALTER TABLE `narudzbine`
  ADD CONSTRAINT `FK_Narudzbina_Korisnik` FOREIGN KEY (`KorisnickoIme`) REFERENCES `korisnici` (`KorisnickoIme`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `proizvodi`
--
ALTER TABLE `proizvodi`
  ADD CONSTRAINT `FK_Proizvodi_Kategorije` FOREIGN KEY (`KategorijaID`) REFERENCES `kategorije` (`KategorijaID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `stavkenarudzbine`
--
ALTER TABLE `stavkenarudzbine`
  ADD CONSTRAINT `FK_Stavke_Narudzbe` FOREIGN KEY (`NarudzbinaID`) REFERENCES `narudzbine` (`NarudzbinaID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Stavke_Proizvodi` FOREIGN KEY (`ProizvodID`) REFERENCES `proizvodi` (`ProizvodID`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
