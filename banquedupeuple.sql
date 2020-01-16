-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 16 jan. 2020 à 10:59
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `banquedupeuple`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `cni` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `tel` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `cni`, `nom`, `prenom`, `adresse`, `tel`) VALUES
(1, '456723', 'Ndiaye', 'Moustapha', 'parcel', ''),
(2, '456287', 'Ndoye', 'Abdou', 'dakar', '772255547'),
(3, '45875', 'Dieng', 'Abdou', 'poste', '771412587'),
(4, '9999', 'Ndiaye', 'Zahra', 'rufisque', '77444444'),
(5, '271500', 'Diagne', 'Aicha', 'Dakar', '776515042'),
(6, '152378', 'Diop', 'Dabakh', 'Rufisque', '771215248'),
(7, '888855', 'Dieng', 'Modou', 'parcel', '772255185'),
(8, '888855', 'Niang', 'Mbaye', 'parcel', '772255185'),
(9, '1111', 'Diop', 'Babacar', 'Rufisque', '774521128'),
(10, '123456', 'Seck', 'Fatima', 'Dakar', '784345560'),
(11, '123456', 'Seck', 'Fatima', 'Dakar', '784345560'),
(12, 'kia5', 'Ndiaye', 'Fatima', 'Diop', '781435698'),
(13, '19876', 'Seck', 'Maguette', 'Kaolack', '772162287'),
(14, '2000', 'Diop', 'Alima', 'Saint-Louis', '705171586'),
(15, '20001', 'Ndiaye', 'Alpha', 'Oukam', '777012443'),
(16, '20010', 'Diop', 'Rokhaya', 'StLouis', '778144028'),
(17, '', '', '', '', ''),
(18, '123456780', 'SDFGH', 'ERTYUI', 'ZERTYHUJ', '765434567'),
(19, '199087', 'Diagne', 'Mor', 'Rufisque', '778765436'),
(20, '19087', 'Sylla', 'Hamidou', 'Parcelle', '771347689'),
(21, '1234567890', 'Mbow', 'Momar', 'parcelle', '776543897'),
(22, '1562373838', 'Ndiaye', 'Soukeyna', 'Oukam', '78254679'),
(23, '5667489909', 'Diop', 'Layata', 'grd medine', '777073687'),
(24, '1893039', 'Fall', 'Bamba', 'sl', '778654567'),
(25, '28902394', 'Ndiaye', 'Fatou', 'KDK', '77877783'),
(26, '0987654', 'Seck', 'Ftim', 'ghj', '76546789'),
(27, '12345678', 'Sarr', 'fatou', 'ertyu', '34567890'),
(28, '', '', '', '', ''),
(29, '093873', 'Sow', 'Baba', 'Camberene', '778765498');

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `id` int(11) NOT NULL,
  `numero` varchar(25) NOT NULL,
  `dateCreation` varchar(10) NOT NULL,
  `solde` int(11) NOT NULL DEFAULT 0,
  `idClient` int(11) NOT NULL,
  `idGestCompte` int(11) NOT NULL,
  `etat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`id`, `numero`, `dateCreation`, `solde`, `idClient`, `idGestCompte`, `etat`) VALUES
(1, 'FSN_06042019_C1', '06-04-2019', 839, 1, 1, 1),
(2, 'FSN_06042019_C2', '06-04-2019', 500, 2, 1, 1),
(3, 'FSN_10042019_C3', '10-04-2019', 10000, 3, 1, 1),
(4, 'FSN_10042019_C4', '10-04-2019', 3000, 4, 1, 1),
(5, 'FSN_11042019_C5', '11-04-2019', 11000, 5, 1, 1),
(6, 'FSN_11042019_C6', '11-04-2019', 1, 6, 1, 1),
(7, 'FSN_11042019_C7', '11-04-2019', 0, 7, 1, 1),
(9, 'FSN_11042019_C8', '11-04-2019', 1, 9, 1, 1),
(10, 'FSN_22062019_C10', '22-06-2019', 10000, 10, 1, 1),
(11, 'FSN_22062019_C11', '22-06-2019', 10000, 11, 1, 1),
(12, 'FSN_22062019_C12', '22-06-2019', 1997, 12, 1, 1),
(13, 'FSN_26062019_C13', '26-06-2019', 10000, 13, 1, 1),
(14, 'FSN_26062019_C14', '26-06-2019', 5000, 14, 1, 0),
(15, 'FSN_27062019_C15', '27-06-2019', 20000, 15, 1, 1),
(16, 'FSN_28062019_C16', '28-06-2019', 10000, 16, 1, 0),
(18, 'FSN_28062019_C18', '28-06-2019', 20000, 18, 1, 1),
(19, 'FSN_28062019_C19', '28-06-2019', 25000, 19, 1, 1),
(20, 'FSN_28062019_C20', '28-06-2019', 25000, 20, 1, 1),
(21, 'FSN_29062019_C21', '29-06-2019', 15000, 21, 1, 1),
(22, 'FSN_29062019_C22', '29-06-2019', 100000, 4, 1, 1),
(23, 'FSN_29062019_C23', '29-06-2019', 50000, 3, 1, 1),
(24, 'FSN_01122019_C24', '01-12-2019', 100000, 22, 1, 1),
(25, 'FSN_02122019_C25', '02-12-2019', 0, 23, 1, 1),
(26, 'FSN_04122019_C26', '04-12-2019', 0, 24, 1, 1),
(27, 'FSN_04122019_C27', '04-12-2019', 0, 25, 1, 1),
(28, 'FSN_04122019_C28', '04-12-2019', 20000, 1, 1, 1),
(29, 'FSN_04122019_C29', '04-12-2019', 30000, 25, 1, 1),
(30, 'FSN_04122019_C30', '04-12-2019', 500000, 2, 1, 1),
(31, 'FSN_04122019_C31', '04-12-2019', 200000, 5, 1, 1),
(32, 'FSN_04122019_C32', '04-12-2019', 0, 26, 1, 0),
(33, 'FSN_04122019_C33', '04-12-2019', 960000, 1, 1, 1),
(34, 'FSN_04122019_C34', '04-12-2019', 0, 27, 1, 1),
(35, 'FSN_04122019_C35', '04-12-2019', 10000000, 1, 1, 1),
(36, 'FSN_04122019_C36', '04-12-2019', 0, 28, 1, 1),
(37, 'FSN_04122019_C37', '04-12-2019', 1000000, 1, 1, 1),
(38, 'FSN_04122019_C38', '04-12-2019', 0, 29, 1, 1),
(39, 'FSN_04122019_C39', '04-12-2019', 4000000, 2, 1, 1),
(40, 'FSN_04122019_C40', '04-12-2019', 20000000, 23, 1, 1),
(41, 'FSN_08012020_C41', '08-01-2020', 1000000, 2, 65, 1);

-- --------------------------------------------------------

--
-- Structure de la table `operation`
--

CREATE TABLE `operation` (
  `id` int(11) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `dateOperation` varchar(10) NOT NULL,
  `montant` int(11) NOT NULL,
  `idCompte` int(11) NOT NULL,
  `idTypeOpe` int(11) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `operation`
--

INSERT INTO `operation` (`id`, `numero`, `dateOperation`, `montant`, `idCompte`, `idTypeOpe`, `idUser`) VALUES
(1, 'FSN_06042019_OP1', '06-04-2019', 50000, 1, 1, 1),
(2, 'FSN_06042019_OP2', '06-04-2019', 10000, 2, 1, 1),
(3, 'FSN_06042019_OP3', '06-04-2019', 10000, 2, 1, 1),
(4, 'FSN_10042019_OP4', '10-04-2019', 222, 1, 1, 1),
(5, 'FSN_10042019_OP5', '10-04-2019', 222, 1, 1, 1),
(6, 'FSN_10042019_OP6', '10-04-2019', 10000, 1, 1, 1),
(7, 'FSN_10042019_OP7', '10-04-2019', 10000, 1, 1, 1),
(8, 'FSN_10042019_OP8', '10-04-2019', 150000, 1, 1, 1),
(9, 'FSN_10042019_OP9', '10-04-2019', 150000, 1, 1, 1),
(10, 'FSN_11042019_OP10', '11-04-2019', 100, 1, 1, 1),
(11, 'FSN_11042019_OP11', '11-04-2019', 10, 1, 2, 1),
(12, 'FSN_11042019_OP12', '11-04-2019', 150, 1, 1, 1),
(13, 'FSN_11042019_OP13', '11-04-2019', 10000, 5, 1, 1),
(14, 'FSN_11042019_OP14', '11-04-2019', 10000, 5, 1, 1),
(15, 'FSN_11042019_OP15', '11-04-2019', 1, 6, 1, 1),
(16, 'FSN_11042019_OP16', '11-04-2019', 0, 7, 1, 1),
(18, 'FSN_11042019_OP17', '11-04-2019', 1, 9, 1, 1),
(20, 'FSN_12042019_OP20', '12-04-2019', 155, 1, 1, 1),
(21, 'FSN_02062019_OP21', '02-06-2019', 15000, 1, 1, 1),
(22, 'FSN_02062019_OP22', '02-06-2019', 300000, 1, 1, 1),
(23, 'FSN_02062019_OP23', '02-06-2019', 300000, 1, 2, 1),
(24, 'FSN_02062019_OP24', '02-06-2019', 300000, 1, 2, 1),
(25, 'FSN_02062019_OP25', '02-06-2019', 80000, 1, 2, 1),
(26, 'FSN_02062019_OP26', '02-06-2019', 10000, 1, 1, 1),
(27, 'FSN_02062019_OP27', '02-06-2019', 10000, 1, 2, 1),
(28, 'FSN_02062019_OP28', '02-06-2019', 10000, 1, 1, 1),
(29, 'FSN_02062019_OP29', '02-06-2019', 16000, 1, 1, 1),
(30, 'FSN_02062019_OP30', '02-06-2019', 16000, 1, 2, 1),
(34, 'FSN_02062019_OP31', '02-06-2019', 15000, 1, 2, 1),
(35, 'FSN_02062019_OP35', '02-06-2019', 15000, 2, 2, 1),
(36, 'FSN_02062019_OP36', '02-06-2019', 15000, 5, 2, 1),
(37, 'FSN_02062019_OP37', '02-06-2019', 2500, 2, 2, 1),
(38, 'FSN_02062019_OP38', '02-06-2019', 2500, 2, 2, 1),
(39, 'FSN_02062019_OP39', '02-06-2019', 2500, 5, 2, 1),
(40, 'FSN_02062019_OP40', '02-06-2019', 500, 2, 3, 1),
(41, 'FSN_02062019_OP41', '02-06-2019', 500, 2, 3, 1),
(42, 'FSN_02062019_OP42', '02-06-2019', 500, 2, 3, 1),
(43, 'FSN_02062019_OP43', '02-06-2019', 500, 2, 3, 1),
(44, 'FSN_02062019_OP44', '02-06-2019', 500, 2, 3, 1),
(45, 'FSN_02062019_OP45', '02-06-2019', 500, 2, 3, 1),
(46, 'FSN_02062019_OP46', '02-06-2019', 500, 2, 3, 1),
(47, 'FSN_02062019_OP47', '02-06-2019', 500, 2, 3, 1),
(48, 'FSN_02062019_OP48', '02-06-2019', 500, 5, 3, 1),
(49, 'FSN_02062019_OP49', '02-06-2019', 500, 5, 3, 1),
(50, 'FSN_02062019_OP50', '02-06-2019', 500, 5, 3, 1),
(51, 'FSN_02062019_OP51', '02-06-2019', 10000, 4, 1, 1),
(52, 'FSN_02062019_OP52', '02-06-2019', 10000, 3, 1, 1),
(53, 'FSN_02062019_OP53', '02-06-2019', 5000, 3, 3, 1),
(54, 'FSN_02062019_OP54', '02-06-2019', 5000, 3, 1, 1),
(55, 'FSN_02062019_OP55', '02-06-2019', 5000, 3, 3, 1),
(56, 'FSN_02062019_OP56', '02-06-2019', 5000, 3, 3, 1),
(57, 'FSN_02062019_OP57', '02-06-2019', 2500, 3, 3, 1),
(58, 'FSN_02062019_OP58', '02-06-2019', 5000, 3, 3, 1),
(59, 'FSN_02062019_OP59', '02-06-2019', 2000, 3, 3, 1),
(60, 'FSN_02062019_OP60', '02-06-2019', 2000, 4, 3, 1),
(61, 'FSN_02062019_OP61', '02-06-2019', 1000, 3, 3, 1),
(62, 'FSN_22062019_OP62', '22-06-2019', 10000, 10, 1, 1),
(63, 'FSN_22062019_OP63', '22-06-2019', 10000, 11, 1, 1),
(64, 'FSN_22062019_OP64', '22-06-2019', 1997, 12, 1, 1),
(65, 'FSN_26062019_OP65', '26-06-2019', 10000, 13, 1, 1),
(66, 'FSN_26062019_OP66', '26-06-2019', 5000, 14, 1, 1),
(67, 'FSN_27062019_OP67', '27-06-2019', 20000, 15, 1, 1),
(68, 'FSN_27062019_OP68', '27-06-2019', 10000, 5, 1, 1),
(69, 'FSN_28062019_OP69', '28-06-2019', 10000, 16, 1, 1),
(70, 'FSN_28062019_OP70', '28-06-2019', 20000, 18, 1, 1),
(71, 'FSN_28062019_OP71', '28-06-2019', 25000, 19, 1, 1),
(72, 'FSN_28062019_OP72', '28-06-2019', 25000, 20, 1, 1),
(73, 'FSN_29062019_OP73', '29-06-2019', 25000, 21, 1, 1),
(74, 'FSN_29062019_OP74', '29-06-2019', 10000, 21, 2, 1),
(75, 'FSN_01122019_OP75', '01-12-2019', 100000, 24, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `typeoperation`
--

CREATE TABLE `typeoperation` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typeoperation`
--

INSERT INTO `typeoperation` (`id`, `nom`) VALUES
(1, 'depot'),
(2, 'retrait'),
(3, 'transfert');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profil` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `login`, `password`, `profil`) VALUES
(1, 'Rokhaya', 'Diop', 'dabadiop', 'passer', 'admin'),
(2, 'Ndiaye', 'Fatima', 'zahra', 'alpha', 'caissier'),
(4, 'Diop', 'Abdoulaye', 'layata', 'layediop', 'admin'),
(65, '', '', '', '', ''),
(71, 'seck', 'Fatou', 'tima', '2020', 'admin'),
(80, 'Fall', 'Amina', 'ecobank', '2019', 'admin'),
(85, 'Gueye', 'MOUHAMED', 'orbit', 'turner', 'Gestionnaire de comptes'),
(92, 'Gueye', 'MOUHAMED', 'moh', 'turner', 'Gestionnaire de comptes');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero` (`numero`),
  ADD KEY `idClient` (`idClient`),
  ADD KEY `idGestCompte` (`idGestCompte`);

--
-- Index pour la table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero` (`numero`),
  ADD KEY `idCompte` (`idCompte`),
  ADD KEY `idTypeOpe` (`idTypeOpe`),
  ADD KEY `idUser` (`idUser`);

--
-- Index pour la table `typeoperation`
--
ALTER TABLE `typeoperation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `operation`
--
ALTER TABLE `operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `typeoperation`
--
ALTER TABLE `typeoperation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `compte_ibfk_1` FOREIGN KEY (`idClient`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `compte_ibfk_2` FOREIGN KEY (`idGestCompte`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `operation`
--
ALTER TABLE `operation`
  ADD CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`idCompte`) REFERENCES `compte` (`id`),
  ADD CONSTRAINT `operation_ibfk_3` FOREIGN KEY (`idUser`) REFERENCES `utilisateur` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
