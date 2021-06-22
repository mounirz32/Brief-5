-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2021 at 10:23 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brief5`
--

-- --------------------------------------------------------

--
-- Table structure for table `cours`
--

CREATE TABLE `cours` (
  `id` int(4) NOT NULL,
  `dateSéance` date DEFAULT NULL,
  `creneauHoraire` varchar(50) DEFAULT NULL,
  `idG` int(11) DEFAULT NULL,
  `idS` int(11) DEFAULT NULL,
  `idUser` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cours`
--

INSERT INTO `cours` (`id`, `dateSéance`, `creneauHoraire`, `idG`, `idS`, `idUser`) VALUES
(34, '2021-05-07', '10 - 12', 9, 116, 13),
(35, '2021-05-20', '10 - 12', 9, 114, 13),
(36, '2021-05-08', '10 - 12', 10, 116, 13),
(37, '2021-05-12', '8 - 10', 10, 115, 13),
(42, '2021-05-25', '8 - 10', 9, 114, 25),
(43, '2021-05-27', '8 - 10', 9, 114, 25);

-- --------------------------------------------------------

--
-- Table structure for table `enseignant`
--

CREATE TABLE `enseignant` (
  `idUser` int(10) NOT NULL,
  `idMatiere` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enseignant`
--

INSERT INTO `enseignant` (`idUser`, `idMatiere`) VALUES
(23, 4),
(23, 5),
(24, 3),
(25, 5),
(26, 3);

-- --------------------------------------------------------

--
-- Table structure for table `groupe`
--

CREATE TABLE `groupe` (
  `id` int(4) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `effectif` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groupe`
--

INSERT INTO `groupe` (`id`, `libelle`, `effectif`) VALUES
(9, 'groue 5', 5),
(10, 'groue 15', 15),
(15, 'EZRE', 4);

-- --------------------------------------------------------

--
-- Table structure for table `matiere`
--

CREATE TABLE `matiere` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matiere`
--

INSERT INTO `matiere` (`id`, `libelle`) VALUES
(3, 'Francais'),
(4, 'Englais'),
(5, 'Arabe');

-- --------------------------------------------------------

--
-- Table structure for table `salle`
--

CREATE TABLE `salle` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  `capacity` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salle`
--

INSERT INTO `salle` (`id`, `libelle`, `capacity`) VALUES
(114, 'Sall 10', '10'),
(115, 'Sall 20', '20'),
(116, 'Sall 30', '30'),
(117, 'ER', '3');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(4) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `email`, `pwd`, `role`) VALUES
(1, 'othmane', 'rhazlani', 'oghazlani0@gmail.com', '$2y$10$6dkKkEFLmbD9MZc1E7k.eONanD0pQd1tPiAQfjnwOdNQ.hHNtLldS', 'admin'),
(13, 'othm', 'rhaz', 'AA@gmail.com', '123', 'enseignant'),
(20, 'othmane', 'rhazlani', 'AB@gmail.com', '123', 'enseignant'),
(21, 'othmane', 'rhazlani', 'AB@gmail.com', '123', 'enseignant'),
(22, 'othmane', 'rhazlani', 'AB@gmail.com', '123', 'enseignant'),
(23, 'othmane', 'rhazlani', 'oghazlani0@gmail.com', 'AA11', 'enseignant'),
(24, 'otmane ', 'hash', 'hash1@gmail.com', '$2y$10$6dkKkEFLmbD9MZc1E7k.eONanD0pQd1tPiAQfjnwOdNQ.hHNtLldS', 'enseignant'),
(25, 'otmane ', 'hash', 'hash@gmail.com', '$2y$10$6dkKkEFLmbD9MZc1E7k.eONanD0pQd1tPiAQfjnwOdNQ.hHNtLldS', 'enseignant'),
(26, 'otmane ', 'fgyy', 'xxxx@gmail.com', '$2y$10$6dkKkEFLmbD9MZc1E7k.eONanD0pQd1tPiAQfjnwOdNQ.hHNtLldS', 'enseignant');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idG` (`idG`),
  ADD KEY `idS` (`idS`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `enseignant`
--
ALTER TABLE `enseignant`
  ADD KEY `enseignantUser` (`idUser`),
  ADD KEY `enseignantMatiere` (`idMatiere`);

--
-- Indexes for table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `groupe`
--
ALTER TABLE `groupe`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `salle`
--
ALTER TABLE `salle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_ibfk_1` FOREIGN KEY (`idG`) REFERENCES `groupe` (`id`),
  ADD CONSTRAINT `cours_ibfk_3` FOREIGN KEY (`idS`) REFERENCES `salle` (`id`),
  ADD CONSTRAINT `cours_ibfk_4` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

--
-- Constraints for table `enseignant`
--
ALTER TABLE `enseignant`
  ADD CONSTRAINT `enseignantMatiere` FOREIGN KEY (`idMatiere`) REFERENCES `matiere` (`id`),
  ADD CONSTRAINT `enseignantUser` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
