-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 08, 2020 at 03:12 PM
-- Server version: 10.1.41-MariaDB-0+deb9u1
-- PHP Version: 7.2.26-1+0~20191218.33+debian9~1.gbpb5a34b

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fpmoz102019`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookingtable`
--

CREATE TABLE `bookingtable` (
  `bookingID` int(11) NOT NULL,
  `movieName` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bookingTheatre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookingType` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bookingDate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookingTime` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookingFName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookingLName` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bookingPNumber` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookingtable`
--

INSERT INTO `bookingtable` (`bookingID`, `movieName`, `bookingTheatre`, `bookingType`, `bookingDate`, `bookingTime`, `bookingFName`, `bookingLName`, `bookingPNumber`) VALUES
(19, 'Captain Marvel', 'main-hall', '3d', '13-3', '15-00', 'Ahmed', 'Ismael', '010152658930'),
(22, 'The Lego Movie', 'vip-hall', 'imax', '13-3', '18-00', 'Kareem', 'Ahmed', '01589965'),
(24, 'Kapetanica Marvel', 'main-hall', '3d', '13-3', '15-00', 'Magdalena', 'Rajic', '+65765378'),
(25, '1917', 'VIP', '2d', '13-3', '15-00', 'Ana', 'Raji?', '063752001'),
(26, 'Joker', 'Velika', 'imax', '13-3', '12-00', 'Antonija', 'Peso', '003859102546');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacktable`
--

CREATE TABLE `feedbacktable` (
  `msgID` int(12) NOT NULL,
  `senderfName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senderlName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sendereMail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senderfeedback` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacktable`
--

INSERT INTO `feedbacktable` (`msgID`, `senderfName`, `senderlName`, `sendereMail`, `senderfeedback`) VALUES
(3, 'Ana', 'Raji?', 'ana.rajic@gmail.com', 'Odli?na stranica , samo tako naprijed\r\n#re?iprofesora');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id_korisnik` int(11) NOT NULL,
  `ime` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prezime` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lozinka` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id_korisnik`, `ime`, `prezime`, `email`, `lozinka`) VALUES
(108, 'Marija', 'Joipa', 'magi.rajic12@gmail.com', '123456'),
(109, 'Ivan', '765443', 'bvhjv@ht.rom', '765443'),
(110, 'Ana', 'FMJDSNJKF', 'ana17rajic@gmail.com', 'jsfcsedhjf'),
(111, 'Tea', 'Radic', 'trad@gmail.com', 'jhg654'),
(112, 'Ana', 'Pilic', 'apilic@hotmail.com', '1234567'),
(113, 'Marija', 'hireg', 'ivanr@hotmail.com', '52636'),
(114, 'Josip', 'Jo', 'ivajr@hotmail.com', '12345678'),
(115, 'Marija', 'fhr', 'bvhjbrev@ht.rom', '4357gng'),
(116, 'Iva', 'Ivic', 'ivic@gmai.com', 'iva123'),
(117, 'Ivan', 'ko', 'ivan@gmail.com', '12345'),
(118, 'Marija', 'Pilic', 'mpilic@hotmail.com', '12345'),
(119, 'Antonija', 'Pešo', 'apeso@hotmail.com', '12345'),
(120, 'marija', 'tolj', 'marijat@gmail.com', 'marijat');

-- --------------------------------------------------------

--
-- Table structure for table `movietable`
--

CREATE TABLE `movietable` (
  `movieID` int(11) NOT NULL,
  `movieImg` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movieTitle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movieGenre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movieDuration` int(11) NOT NULL,
  `movieRelDate` date NOT NULL,
  `movieDirector` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movieActors` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movietable`
--

INSERT INTO `movietable` (`movieID`, `movieImg`, `movieTitle`, `movieGenre`, `movieDuration`, `movieRelDate`, `movieDirector`, `movieActors`) VALUES
(1, 'img/movie-poster-1.jpg', 'Kapetanica Marvel', ' Akcijski, Avanturisticki', 124, '2020-01-03', 'Anna Boden, Ryan Fleck', 'Brie Larson, Samuel L. Jackson, Ben Mendelsohn'),
(2, 'img/joker.jpg', 'Joker', 'Drama, Kriminalisticki,Triler', 122, '2020-02-11', 'Todd Philips', 'Joaquin Phoenix, Robert De Niro, Zazie Beetz'),
(3, 'img/gospoda.jpg', 'Gospoda', 'Kriminalisticki', 113, '2020-02-13', 'Guy Ritchie', 'Matthew McConaughey, Charlie Hunnam, Michelle Dockery'),
(12, 'img/1917.jpg', '1917', 'Kriminalistički', 113, '2020-01-23', 'Guy Ritchie', 'Matthew McConaughey, Charlie Hunnam, Michelle Dockery'),
(14, 'img/opsjednutost.jpg', 'Opsjednutost', 'Horor', 94, '2020-01-30', ' Floria Sigismondi', ' Mackenzie Davis, Finn Wolfhard, Brooklynn Prince');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingtable`
--
ALTER TABLE `bookingtable`
  ADD PRIMARY KEY (`bookingID`),
  ADD UNIQUE KEY `bookingID` (`bookingID`),
  ADD KEY `bookingID_2` (`bookingID`),
  ADD KEY `bookingID_3` (`bookingID`),
  ADD KEY `bookingID_4` (`bookingID`);

--
-- Indexes for table `feedbacktable`
--
ALTER TABLE `feedbacktable`
  ADD PRIMARY KEY (`msgID`),
  ADD UNIQUE KEY `msgID` (`msgID`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id_korisnik`);

--
-- Indexes for table `movietable`
--
ALTER TABLE `movietable`
  ADD PRIMARY KEY (`movieID`),
  ADD UNIQUE KEY `movieID` (`movieID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookingtable`
--
ALTER TABLE `bookingtable`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `feedbacktable`
--
ALTER TABLE `feedbacktable`
  MODIFY `msgID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id_korisnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `movietable`
--
ALTER TABLE `movietable`
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
