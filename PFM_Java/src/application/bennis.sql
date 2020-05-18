-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  lun. 06 avr. 2020 à 06:46
-- Version du serveur :  10.1.34-MariaDB
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bennis`
--

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `num` int(11) NOT NULL,
  `couleur` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `chambre`
--

INSERT INTO `chambre` (`num`, `couleur`) VALUES
(1, 'Jaune'),
(2, 'Mauve'),
(3, 'Vert');

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `num` int(11) NOT NULL,
  `nom` text NOT NULL,
  `niveau` int(11) NOT NULL,
  `outils` longtext NOT NULL,
  `chambre` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `p_ouvertes` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`num`, `nom`, `niveau`, `outils`, `chambre`, `position`, `p_ouvertes`) VALUES
(1, 'M.BENNIS', 1, '{\"1\":\"true\",\"2\":\"true\",\"3\":\"true\",\"4\":\"false\",\"5\":\"false\",\"6\":\"false\",\"7\":\"false\",\"8\":\"false\",\"9\":\"false\",\"10\":\"false\",\"11\":\"false\",\"12\":\"false\",\"13\":\"false\",\"14\":\"false\",\"15\":\"false\",\"16\":\"false\",\"17\":\"false\",\"18\":\"false\",\"19\":\"false\",\"20\":\"false\",\"21\":\"false\",\"22\":\"false\",\"23\":\"false\",\"24\":\"false\",\"25\":\"false\",\"26\":\"false\",\"27\":\"false\"}', 0, 1, '{\"1\":\"true\",\"2\":\"true\",\"3\":\"false\",\"4\":\"false\"}');

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `num` int(11) NOT NULL,
  `libelle` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`num`, `libelle`) VALUES
(1, 'Pour avoir les portes ouvertes et passer au 2éme niveau;\nvous devez ramasser tout les outils situent dans les 3 chambres'),
(2, 'Pour avoir les portes ouvertes et passer au 3éme niveau;\nvous devez ramasser tout les outils situent dans les 3 chambres'),
(3, 'Pour avoir les portes ouvertes et attient l\'objetif final;\nvous devez ramasser tout les outils situent dans les 3 chambres');

-- --------------------------------------------------------

--
-- Structure de la table `outil`
--

CREATE TABLE `outil` (
  `num` int(11) NOT NULL,
  `niveau` int(11) NOT NULL,
  `nom` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `outil`
--

INSERT INTO `outil` (`num`, `niveau`, `nom`) VALUES
(1, 1, 'clef'),
(2, 1, 'carte'),
(3, 1, 'couteau'),
(4, 2, 'marteau'),
(5, 2, 'tourne vice');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `outil`
--
ALTER TABLE `outil`
  ADD PRIMARY KEY (`num`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `joueur`
--
ALTER TABLE `joueur`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `outil`
--
ALTER TABLE `outil`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;